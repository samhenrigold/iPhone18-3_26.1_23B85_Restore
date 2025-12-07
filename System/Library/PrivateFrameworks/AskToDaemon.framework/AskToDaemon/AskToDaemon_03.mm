uint64_t sub_241143810()
{
  if (qword_27E530628 != -1)
  {
    swift_once();
  }

  v0 = qword_27E533BD8;
  v20 = type metadata accessor for PendingAskStore();
  v21 = &off_2852EBB00;
  v19[0] = v0;
  v1 = type metadata accessor for ResponseHandler();
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  MEMORY[0x28223BE20](v3);
  v5 = (&v19[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;

  v8 = sub_2411312A0(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(v19);
  v20 = v1;
  v21 = &off_2852EBCD0;
  v19[0] = v8;
  type metadata accessor for AskToIDSController();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v19, v1);
  MEMORY[0x28223BE20](v10);
  v12 = (&v19[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;

  sub_2411474A4(v14, v9);
  v16 = v15;

  result = __swift_destroy_boxed_opaque_existential_1(v19);
  qword_27E533BE8 = v16;
  return result;
}

void sub_241143A68(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void *), uint64_t a6)
{
  if (qword_27E5305C8 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E533AC8);

  v9 = sub_241165268();
  v10 = sub_241166068();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
    v14 = MEMORY[0x245CDB850](a1, v13);
    v16 = sub_241156B38(v14, v15, aBlock);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_2410F8000, v9, v10, "Validating destinations for sending. destinations: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  if (a1 >> 62)
  {
    if (sub_2411661F8())
    {
LABEL_7:
      v17 = [objc_opt_self() sharedInstance];
      if (v17)
      {
        v18 = v17;
        v19 = [objc_opt_self() refreshIDInfo];
        [v19 setForceRefresh_];
        sub_241142FF4(a1);
        v47 = sub_241165EE8();

        v46 = sub_241165DA8();
        v20 = v19;
        v21 = sub_241165DA8();
        v45 = *(v49 + 32);
        v22 = swift_allocObject();
        v22[2] = v49;
        v22[3] = a4;
        v22[4] = a5;
        v22[5] = a6;
        aBlock[4] = sub_24114B314;
        aBlock[5] = v22;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24114498C;
        aBlock[3] = &block_descriptor_26;
        v23 = _Block_copy(aBlock);

        v50 = a5;
        sub_24114B20C(a5);

        LOBYTE(v19) = [v18 idInfoForDestinations:v47 service:v46 infoTypes:1 options:v20 listenerID:v21 queue:v45 completionBlock:v23];
        _Block_release(v23);

        if (v19)
        {
          goto LABEL_13;
        }

        v24 = sub_241165268();
        v25 = sub_241166048();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          aBlock[0] = v27;
          *v26 = 136315138;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
          v29 = MEMORY[0x245CDB850](a1, v28);
          v31 = sub_241156B38(v29, v30, aBlock);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_2410F8000, v24, v25, "Failed to perform IDQuery {destinations: %s}", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v27);
          MEMORY[0x245CDC5E0](v27, -1, -1);
          MEMORY[0x245CDC5E0](v26, -1, -1);
        }

        if (!v50)
        {
LABEL_13:
        }

        else
        {
          sub_24114B270();
          v32 = swift_allocError();
          *v33 = 4;
          v50(MEMORY[0x277D84FA0], v32);
        }

        return;
      }

      v34 = sub_241165268();
      v35 = sub_241166048();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        aBlock[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_241156B38(0xD00000000000005ALL, 0x800000024116C390, aBlock);
        _os_log_impl(&dword_2410F8000, v34, v35, "%s query controller was nil", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v37);
        MEMORY[0x245CDC5E0](v37, -1, -1);
        MEMORY[0x245CDC5E0](v36, -1, -1);
      }

      if (a5)
      {
        sub_24114B270();
        v38 = swift_allocError();
        *v39 = 1;
LABEL_23:
        a5(MEMORY[0x277D84FA0], v38);

        return;
      }

      return;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_7;
  }

  v40 = sub_241165268();
  v41 = sub_241166048();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_241156B38(0xD00000000000005ALL, 0x800000024116C390, aBlock);
    _os_log_impl(&dword_2410F8000, v40, v41, "%s called with no destinations", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x245CDC5E0](v43, -1, -1);
    MEMORY[0x245CDC5E0](v42, -1, -1);
  }

  if (a5)
  {
    sub_24114B270();
    v38 = swift_allocError();
    *v44 = 0;
    goto LABEL_23;
  }
}

void sub_2411441A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void *))
{
  if (!a1)
  {
    v62 = a5;
    if (a2)
    {
      sub_24114B270();
      v61 = swift_allocError();
      *v64 = a2;
      v65 = a2;
    }

    else
    {
      sub_24114B270();
      v61 = swift_allocError();
      *v66 = 5;
    }

    v60 = MEMORY[0x277D84FA0];
    if (v62)
    {
      goto LABEL_43;
    }

    goto LABEL_44;
  }

  v5 = a1;
  v70 = sub_2410FBB10(MEMORY[0x277D84F90]);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v71 = v5;
  if (!v9)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v11;
LABEL_16:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v12 << 6);
    sub_2410FC7CC(*(v5 + 48) + 40 * v16, &v74);
    sub_241100374(*(v5 + 56) + 32 * v16, v73);
    v77 = v74;
    v78 = v75;
    *&v79 = v76;
    sub_2410FC87C(v73, (&v79 + 8));
    v14 = v12;
LABEL_17:
    v84[0] = v79;
    v84[1] = v80;
    v85 = v81;
    v82 = v77;
    v83 = v78;
    if (!*(&v78 + 1))
    {
      break;
    }

    v77 = v82;
    v78 = v83;
    *&v79 = *&v84[0];
    sub_2410FC87C((v84 + 8), v73);
    sub_2410FC7CC(&v77, &v74);
    if (swift_dynamicCast())
    {
      v18 = v72[0];
      v17 = v72[1];
      sub_241100374(v73, &v74);
      sub_2410FCF28(0, &qword_27E530FA0, 0x277D189D0);
      if (!swift_dynamicCast())
      {

        if (qword_27E5305C8 != -1)
        {
          swift_once();
        }

        v19 = sub_241165288();
        __swift_project_value_buffer(v19, qword_27E533AC8);
        sub_241100374(v73, &v74);
        v20 = sub_241165268();
        v21 = sub_241166048();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v72[0] = v23;
          *v22 = 136315394;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F90, &qword_241169258);
          v24 = sub_241165DE8();
          v26 = sub_241156B38(v24, v25, v72);

          *(v22 + 4) = v26;
          *(v22 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
          swift_getDynamicType();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531130, &qword_241169260);
          v27 = sub_241165DE8();
          v29 = v28;
          __swift_destroy_boxed_opaque_existential_1(&v74);
          v30 = sub_241156B38(v27, v29, v72);

          *(v22 + 14) = v30;
          v5 = v71;
          v31 = v21;
          v32 = v20;
          v33 = "value in IDS query results was not IDSIDInfoResult. Skipping. key type: %s, value type: %s";
LABEL_28:
          _os_log_impl(&dword_2410F8000, v32, v31, v33, v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x245CDC5E0](v23, -1, -1);
          MEMORY[0x245CDC5E0](v22, -1, -1);

          goto LABEL_7;
        }

        goto LABEL_6;
      }

      v67 = v72[0];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v74 = v70;
      v45 = sub_2410FAD78(v18, v17);
      v46 = *(v70 + 16);
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_51;
      }

      v49 = v44;
      if (*(v70 + 24) >= v48)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2411548F0();
        }
      }

      else
      {
        sub_241152C60(v48, isUniquelyReferenced_nonNull_native);
        v50 = sub_2410FAD78(v18, v17);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_53;
        }

        v45 = v50;
      }

      if (v49)
      {

        v70 = v74;
        v52 = *(v74 + 56);
        v53 = *(v52 + 8 * v45);
        *(v52 + 8 * v45) = v67;

        __swift_destroy_boxed_opaque_existential_1(v73);
        sub_2410FC828(&v77);
      }

      else
      {
        v54 = v74;
        *(v74 + 8 * (v45 >> 6) + 64) |= 1 << v45;
        v55 = (v54[6] + 16 * v45);
        *v55 = v18;
        v55[1] = v17;
        *(v54[7] + 8 * v45) = v67;

        __swift_destroy_boxed_opaque_existential_1(v73);
        sub_2410FC828(&v77);
        v56 = v54[2];
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_52;
        }

        v70 = v54;
        v54[2] = v58;
      }

      v5 = v71;
      v11 = v14;
      if (!v9)
      {
LABEL_9:
        if (v10 <= v11 + 1)
        {
          v13 = v11 + 1;
        }

        else
        {
          v13 = v10;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            v9 = 0;
            v81 = 0;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            goto LABEL_17;
          }

          v9 = *(v6 + 8 * v12);
          ++v11;
          if (v9)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        sub_241166428();
        __break(1u);
        return;
      }
    }

    else
    {
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v34 = sub_241165288();
      __swift_project_value_buffer(v34, qword_27E533AC8);
      sub_241100374(v73, &v74);
      v20 = sub_241165268();
      v35 = sub_241166048();
      if (os_log_type_enabled(v20, v35))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v72[0] = v23;
        *v22 = 136315394;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F90, &qword_241169258);
        v36 = sub_241165DE8();
        v38 = sub_241156B38(v36, v37, v72);

        *(v22 + 4) = v38;
        *(v22 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
        swift_getDynamicType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531130, &qword_241169260);
        v39 = sub_241165DE8();
        v41 = v40;
        __swift_destroy_boxed_opaque_existential_1(&v74);
        v42 = sub_241156B38(v39, v41, v72);

        *(v22 + 14) = v42;
        v5 = v71;
        v31 = v35;
        v32 = v20;
        v33 = "key in IDS query results was not a String. Skipping. key type: %s, value type: %s";
        goto LABEL_28;
      }

LABEL_6:

      __swift_destroy_boxed_opaque_existential_1(&v74);
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(v73);
      sub_2410FC828(&v77);
      v11 = v14;
      if (!v9)
      {
        goto LABEL_9;
      }
    }
  }

  sub_2411477D4(v70, a4);
  v60 = v59;

  v61 = 0;
  v62 = a5;
  if (!a5)
  {
    goto LABEL_44;
  }

LABEL_43:
  v62(v60, v61);
LABEL_44:
}

uint64_t sub_24114498C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_241165D18();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_241144A38(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  v6 = v5;
  if (qword_27E5305C8 != -1)
  {
    swift_once();
  }

  v12 = sub_241165288();
  __swift_project_value_buffer(v12, qword_27E533AC8);

  v13 = sub_241165268();
  v14 = sub_241166068();

  if (os_log_type_enabled(v13, v14))
  {
    v33 = a4;
    v15 = swift_slowAlloc();
    v34 = a5;
    v35 = swift_slowAlloc();
    v16 = v35;
    *v15 = 136315394;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
    v18 = MEMORY[0x245CDB850](a2, v17);
    v20 = sub_241156B38(v18, v19, &v35);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = sub_241165D28();
    v23 = sub_241156B38(v21, v22, &v35);

    *(v15 + 14) = v23;
    v6 = v5;
    _os_log_impl(&dword_2410F8000, v13, v14, "Sending message {destinations: %s, message: %s}", v15, 0x16u);
    swift_arrayDestroy();
    v24 = v16;
    a5 = v34;
    MEMORY[0x245CDC5E0](v24, -1, -1);
    v25 = v15;
    a4 = v33;
    MEMORY[0x245CDC5E0](v25, -1, -1);
  }

  if (a2 >> 62)
  {
    if (sub_2411661F8())
    {
      goto LABEL_7;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v26 = swift_allocObject();
    v26[2] = a4;
    v26[3] = a5;
    v26[4] = v6;
    v26[5] = a1;

    sub_24114B20C(a4);

    sub_241143A68(a2, 0xD00000000000001DLL, 0x800000024116C330, a3, sub_24114B200, v26);

    return;
  }

  v27 = sub_241165268();
  v28 = sub_241166048();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_241156B38(0xD00000000000003ELL, 0x800000024116C350, &v35);
    _os_log_impl(&dword_2410F8000, v27, v28, "%s called with no destinations", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x245CDC5E0](v30, -1, -1);
    MEMORY[0x245CDC5E0](v29, -1, -1);
  }

  if (a4)
  {
    sub_24114B21C();
    v31 = swift_allocError();
    *v32 = 0;
    a4(0, v31);
  }
}

void sub_241144E5C(uint64_t a1, id a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16))
  {
    if (qword_27E5305C8 != -1)
    {
      v58 = a3;
      swift_once();
      a3 = v58;
    }

    v60 = a3;
    v8 = sub_241165288();
    __swift_project_value_buffer(v8, qword_27E533AC8);

    v9 = sub_241165268();
    v10 = sub_241166068();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v62 = v12;
      *v11 = 136315138;
      v13 = sub_241165FE8();
      v15 = sub_241156B38(v13, v14, &v62);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_2410F8000, v9, v10, "Sending to valid destinations %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDC5E0](v12, -1, -1);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FC0, &qword_241169270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2411673F0;
    *(inited + 32) = sub_241165DD8();
    *(inited + 40) = v17;
    *(inited + 48) = 1;
    v18 = sub_2410FC120(inited);
    swift_setDeallocating();
    sub_2410FB29C(inited + 32, &qword_27E530FC8, &qword_241169278);
    v19 = *(a5 + 16);
    sub_241142774(a6);
    v20 = sub_241165D08();

    v21 = sub_241165FB8();
    sub_241142A3C(v18);

    v22 = sub_241165D08();

    v61 = 0;
    v62 = 0;
    LODWORD(inited) = [v19 sendMessage:v20 toDestinations:v21 priority:300 options:v22 identifier:&v62 error:&v61];

    v23 = v62;
    if (inited)
    {
      if (v62)
      {
        v62 = 0;
        v63 = 0;
        v24 = v61;
        v25 = v23;
        sub_241165DC8();
        v26 = v63;
        if (v63)
        {
          if (v60)
          {
            v27 = v62;
            sub_24114B20C(v60);

            v28 = sub_241165268();
            v29 = sub_241166068();

            if (os_log_type_enabled(v28, v29))
            {
              v30 = swift_slowAlloc();
              v31 = swift_slowAlloc();
              v62 = v31;
              *v30 = 136315138;
              *(v30 + 4) = sub_241156B38(v27, v26, &v62);
              _os_log_impl(&dword_2410F8000, v28, v29, "Caching completion block for IDS message send identifier: %s", v30, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v31);
              MEMORY[0x245CDC5E0](v31, -1, -1);
              MEMORY[0x245CDC5E0](v30, -1, -1);
            }

            v32 = *(a5 + 24);
            v33 = swift_allocObject();
            *(v33 + 16) = v60;
            *(v33 + 24) = a4;
            v34 = OBJC_IVAR____TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate_pendingSendCompletions;
            swift_beginAccess();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v61 = *(v32 + v34);
            *(v32 + v34) = 0x8000000000000000;
            sub_241153FE8(sub_24114B3D8, v33, v27, v26, isUniquelyReferenced_nonNull_native);

            *(v32 + v34) = v61;
            swift_endAccess();
            sub_241100400(v60, a4);
          }

          else
          {
          }

          return;
        }
      }

      else
      {
        v49 = v61;
      }

      v50 = sub_241165268();
      v51 = sub_241166048();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_2410F8000, v50, v51, "The IDS message send identifier was nil. Calling completion early and assuming the send was unsuccessful.", v52, 2u);
        MEMORY[0x245CDC5E0](v52, -1, -1);
      }

      if (v60)
      {
        sub_24114B21C();
        v53 = swift_allocError();
        *v54 = 2;
        v60(0, v53);
      }
    }

    else
    {
      v38 = v61;
      v39 = v23;
      v40 = sub_241165058();

      swift_willThrow();
      v41 = v40;
      v42 = sub_241165268();
      v43 = sub_241166048();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v40;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_2410F8000, v42, v43, "IDS failed to process the message send. error: %@", v44, 0xCu);
        sub_2410FB29C(v45, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v45, -1, -1);
        MEMORY[0x245CDC5E0](v44, -1, -1);
      }

      if (v60)
      {
        v48 = v40;
        v60(0, v40);
      }
    }
  }

  else if (a3)
  {
    v36 = a3;
    if (a2)
    {
      v37 = a2;
    }

    else
    {
      sub_24114B21C();
      v37 = swift_allocError();
      v56 = v55;
      a2 = 0;
      *v56 = 1;
    }

    v57 = a2;
    v36(0, v37);
  }
}

uint64_t sub_2411455D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_241145648(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FF8, &unk_2411692A0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  (*(v11 + 16))(&v17 - v12, a1, v10);
  v14 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v15 = swift_allocObject();
  (*(v11 + 32))(v15 + v14, v13, v10);
  sub_241143A68(a3, a4, a5, v18, sub_24114B4A0, v15);
}

uint64_t sub_2411457BC(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v4 = sub_241165288();
    __swift_project_value_buffer(v4, qword_27E533AC8);
    v5 = a2;
    v6 = sub_241165268();
    v7 = sub_241166048();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_2410F8000, v6, v7, "Could not fetch valid destinations. Error: %@", v8, 0xCu);
      sub_2410FB29C(v9, &qword_27E530E30, &qword_2411676F0);
      MEMORY[0x245CDC5E0](v9, -1, -1);
      MEMORY[0x245CDC5E0](v8, -1, -1);
    }

    else
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FF8, &unk_2411692A0);
  return sub_241165F78();
}

uint64_t sub_241145974(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_241144A38(a3, a4, a5, sub_24114B124, v14);
}

uint64_t sub_241145ADC(char a1, id a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
    return sub_241165F78();
  }

  else
  {
    if (a2)
    {
      v3 = a2;
    }

    else
    {
      sub_24114B21C();
      swift_allocError();
      *v4 = 3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
    return sub_241165F68();
  }
}

void sub_241145B84(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530770, &unk_241167470);
    v2 = sub_241166378();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_2410FC7CC(*(a1 + 48) + 40 * v11, v27);
    sub_241100374(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_2410FC7CC(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_241100374(v25 + 8, v20);
    sub_2410FB29C(v24, &qword_27E530FF0, &qword_241169298);
    v21 = v18;
    sub_2410FC87C(v20, v22);
    v12 = v21;
    sub_2410FC87C(v22, v23);
    sub_2410FC87C(v23, &v21);
    v13 = sub_2410FAD78(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_1(v9);
      sub_2410FC87C(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_2410FC87C(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_2410FB29C(v24, &qword_27E530FF0, &qword_241169298);
}

uint64_t sub_241145E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_2411651A8();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241145F28, 0, 0);
}

uint64_t sub_241145F28()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 40), *(v0[2] + 64));
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_241145FD4;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_24113CC4C(v4, v2, v3);
}

uint64_t sub_241145FD4()
{

  return MEMORY[0x2822009F8](sub_2411460D0, 0, 0);
}

uint64_t sub_2411460D0(uint64_t a1)
{
  v3 = v1[8];
  v2 = v1[9];
  v4 = v1[7];
  v5 = sub_241165CC8();
  sub_2411653D8();

  v6 = sub_241165188();
  v8 = v7;
  v9 = *(v3 + 8);
  v1[11] = v9;
  v1[12] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v4);
  v10 = sub_241136F68(v6, v8);
  v12 = v11;

  v1[13] = v10;
  v1[14] = v12;
  v13 = sub_241165C78();
  v15 = v14;
  v1[15] = v14;
  v16 = swift_task_alloc();
  v1[16] = v16;
  *v16 = v1;
  v16[1] = sub_241146228;
  v17 = v1[4];
  v18 = v1[5];
  v19 = v1[3];

  return sub_241149588(v19, v10, v12, v17, v18, v13, v15);
}

uint64_t sub_241146228()
{

  return MEMORY[0x2822009F8](sub_241146340, 0, 0);
}

uint64_t sub_241146340()
{
  v23 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_2411465C0;
    v3 = v0[13];
    v4 = v0[6];

    return sub_2411575C0(v3, v1, v4);
  }

  else
  {
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v6 = v0[6];
    v7 = sub_241165288();
    __swift_project_value_buffer(v7, qword_27E533AC8);
    v8 = v6;
    v9 = sub_241165268();
    v10 = sub_241166048();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[11];
      v12 = v0[9];
      v13 = v0[7];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = sub_241165CC8();
      sub_2411653D8();

      v17 = sub_241165188();
      v19 = v18;
      v11(v12, v13);
      v20 = sub_241156B38(v17, v19, &v22);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_2410F8000, v9, v10, "Did not find message GUID for question with identifier %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245CDC5E0](v15, -1, -1);
      MEMORY[0x245CDC5E0](v14, -1, -1);
    }

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_2411465C0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_241146740;
  }

  else
  {
    v2 = sub_2411466D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2411466D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241146740()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2411467B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2410FC88C(a3, v22 - v9, &unk_27E530F50, &qword_241167C20);
  v11 = sub_241165FA8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2410FB29C(v10, &unk_27E530F50, &qword_241167C20);
  }

  else
  {
    sub_241165F98();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_241165F58();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_241165DF8() + 32;

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

      sub_2410FB29C(a3, &unk_27E530F50, &qword_241167C20);

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

  sub_2410FB29C(a3, &unk_27E530F50, &qword_241167C20);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_241146D08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_241166228();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_2410FC7CC(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x245CDBB80](v16, a2);
      sub_2410FC828(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_2410FC828(a2);
    sub_2410FC7CC(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2410FC7CC(a2, v16);
    v15 = *v3;
    sub_241146E54(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_241146E54(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v54 = *(i + 48) + 40 * a2;
      v55 = *(v6 + 16);
      *v54 = *v6;
      *(v54 + 16) = v55;
      *(v54 + 32) = *(v6 + 32);
      v56 = *(i + 16);
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (!v57)
      {
        *(i + 16) = v58;
        return result;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FB8, &qword_241169268);
      v59 = sub_241166268();
      i = v59;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v60 = (v59 + 56);
    v61 = v7 + 56;
    v62 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v60 >= v61 + 8 * v62)
    {
      memmove(v60, (v7 + 56), 8 * v62);
    }

    v63 = 0;
    *(i + 16) = *(v7 + 16);
    v64 = 1 << *(v7 + 32);
    v65 = *(v7 + 56);
    v66 = -1;
    if (v64 < 64)
    {
      v66 = ~(-1 << v64);
    }

    v67 = v66 & v65;
    v68 = (v64 + 63) >> 6;
    if ((v66 & v65) != 0)
    {
      do
      {
        v69 = __clz(__rbit64(v67));
        v67 &= v67 - 1;
LABEL_81:
        v72 = 40 * (v69 | (v63 << 6));
        sub_2410FC7CC(*(v7 + 48) + v72, &v78);
        v73 = *(i + 48) + v72;
        v74 = v78;
        v75 = v79;
        *(v73 + 32) = v80;
        *v73 = v74;
        *(v73 + 16) = v75;
      }

      while (v67);
    }

    v70 = v63;
    while (1)
    {
      v63 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v63 >= v68)
      {
        goto LABEL_83;
      }

      v71 = *(v61 + 8 * v63);
      ++v70;
      if (v71)
      {
        v69 = __clz(__rbit64(v71));
        v67 = (v71 - 1) & v71;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FB8, &qword_241169268);
  if ((a3 & 1) == 0)
  {
    v30 = sub_241166278();
    i = v30;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v77 = v4;
    v31 = 0;
    a2 = v7 + 56;
    v32 = 1 << *(v7 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v7 + 56);
    v4 = (v32 + 63) >> 6;
    v35 = v30 + 56;
    while (1)
    {
      if (v34)
      {
        v40 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
      }

      else
      {
        v41 = v31;
        do
        {
          v31 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_64;
          }

          if (v31 >= v4)
          {

            v4 = v77;
            goto LABEL_57;
          }

          v42 = *(a2 + 8 * v31);
          ++v41;
        }

        while (!v42);
        v40 = __clz(__rbit64(v42));
        v34 = (v42 - 1) & v42;
      }

      sub_2410FC7CC(*(v7 + 48) + 40 * (v40 | (v31 << 6)), &v78);
      v43 = sub_241166228();
      v44 = -1 << *(i + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v35 + 8 * (v45 >> 6))) != 0)
      {
        v36 = __clz(__rbit64((-1 << v45) & ~*(v35 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        do
        {
          if (++v46 == v48 && (v47 & 1) != 0)
          {
            goto LABEL_66;
          }

          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v35 + 8 * v46);
        }

        while (v50 == -1);
        v36 = __clz(__rbit64(~v50)) + (v46 << 6);
      }

      *(v35 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v37 = *(i + 48) + 40 * v36;
      v38 = v78;
      v39 = v79;
      *(v37 + 32) = v80;
      *v37 = v38;
      *(v37 + 16) = v39;
      ++*(i + 16);
    }
  }

  v10 = sub_241166278();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v76 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v78 = *v21;
      v79 = *(v21 + 16);
      v80 = *(v21 + 32);
      v22 = sub_241166228();
      v23 = -1 << *(i + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        do
        {
          if (++v25 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_65;
          }

          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
        }

        while (v29 == -1);
        v16 = __clz(__rbit64(~v29)) + (v25 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v78;
      *(v17 + 16) = v79;
      *(v17 + 32) = v80;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v51 = 1 << *(v7 + 32);
  if (v51 >= 64)
  {
    bzero((v7 + 56), ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v51;
  }

  v4 = v76;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  result = sub_241166228();
  v52 = -1 << *(i + 32);
  a2 = result & ~v52;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v52;
  while (1)
  {
    sub_2410FC7CC(*(i + 48) + 40 * a2, &v78);
    v53 = MEMORY[0x245CDBB80](&v78, v6);
    result = sub_2410FC828(&v78);
    if (v53)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  result = sub_241166418();
  __break(1u);
  return result;
}

void sub_2411474A4(uint64_t a1, uint64_t a2)
{
  v13 = sub_2411660B8();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2411660E8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_241165618();
  MEMORY[0x28223BE20](v8 - 8);
  v15[3] = type metadata accessor for ResponseHandler();
  v15[4] = &off_2852EBCD0;
  v15[0] = a1;
  *(a2 + 24) = [objc_allocWithZone(type metadata accessor for AskToIDSServiceDelegate()) init];
  sub_241135730(v15, a2 + 40);
  sub_2410FCF28(0, &qword_27E531010, 0x277D85C90);
  sub_241165608();
  v14 = MEMORY[0x277D84F90];
  sub_24114B59C(&qword_27E531018, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531020, &qword_2411692B8);
  sub_24114B5E4();
  sub_2411661B8();
  (*(v4 + 104))(v6, *MEMORY[0x277D85268], v13);
  *(a2 + 32) = sub_2411660F8();
  v9 = objc_allocWithZone(MEMORY[0x277D18778]);
  v10 = sub_241165DA8();
  v11 = [v9 initWithService_];

  if (v11)
  {
    *(a2 + 16) = v11;
    *(*(a2 + 24) + OBJC_IVAR____TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate_relay + 8) = &off_2852EBEB0;
    swift_unknownObjectWeakAssign();
    [*(a2 + 16) addDelegate:*(a2 + 24) queue:*(a2 + 32)];
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_2411477D4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 64);
  v86 = a1 + 64;
  v102[5] = MEMORY[0x277D84FA0];
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v91 = v5 & v3;
  v85 = (v4 + 63) >> 6;
  v6 = a2 + 56;

  v7 = 0;
  v96 = v2;
  v99 = v6;
  while (1)
  {
    v8 = v91;
    if (!v91)
    {
      break;
    }

LABEL_10:
    v91 = (v8 - 1) & v8;
    v89 = v7;
    v10 = __clz(__rbit64(v8)) | (v7 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v90 = v14;
    v15 = [v90 status];
    if (v15 != 1)
    {
      v68 = v15;
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v69 = sub_241165288();
      __swift_project_value_buffer(v69, qword_27E533AC8);

      v70 = sub_241165268();
      v71 = sub_241166068();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v102[0] = v73;
        *v72 = 136315394;
        v74 = sub_241156B38(v12, v13, v102);

        *(v72 + 4) = v74;
        *(v72 + 12) = 2048;
        *(v72 + 14) = v68;
        _os_log_impl(&dword_2410F8000, v70, v71, "Status for handle %s is %ld. Not sending message to this destination.", v72, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v73);
        MEMORY[0x245CDC5E0](v73, -1, -1);
        v75 = v72;
        goto LABEL_50;
      }

      goto LABEL_59;
    }

    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v16 = sub_241165288();
    __swift_project_value_buffer(v16, qword_27E533AC8);

    v17 = sub_241165268();
    v18 = sub_241166068();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v102[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_241156B38(v12, v13, v102);
      _os_log_impl(&dword_2410F8000, v17, v18, "Status for handle %s is valid.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x245CDC5E0](v20, -1, -1);
      MEMORY[0x245CDC5E0](v19, -1, -1);
    }

    v21 = *(v2 + 16);

    if (v21)
    {

      v22 = sub_241165268();
      v23 = sub_241166068();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v102[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_241156B38(v12, v13, v102);
        *(v24 + 12) = 2080;
        v26 = sub_241165FE8();
        v28 = v12;
        v29 = sub_241156B38(v26, v27, v102);

        *(v24 + 14) = v29;
        v12 = v28;
        _os_log_impl(&dword_2410F8000, v22, v23, "Checking endpoints for handle %s for reg caps %s", v24, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v25, -1, -1);
        MEMORY[0x245CDC5E0](v24, -1, -1);
      }

      v30 = [v90 endpoints];
      if (v30)
      {
        v31 = v30;
        sub_2410FCF28(0, &qword_27E530FA8, 0x277D189C0);
        v32 = sub_241165EF8();

        if (!(v32 >> 62))
        {
          goto LABEL_20;
        }
      }

      else
      {
        v32 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
LABEL_20:
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v33)
          {
            goto LABEL_57;
          }

          goto LABEL_21;
        }
      }

      v33 = sub_2411661F8();
      if (!v33)
      {
LABEL_57:

        v70 = sub_241165268();
        v80 = sub_241166048();

        if (os_log_type_enabled(v70, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v102[0] = v82;
          *v81 = 136315138;
          v83 = sub_241156B38(v12, v13, v102);

          *(v81 + 4) = v83;
          _os_log_impl(&dword_2410F8000, v70, v80, "No endpoints for handle %s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v82);
          MEMORY[0x245CDC5E0](v82, -1, -1);
          v75 = v81;
LABEL_50:
          MEMORY[0x245CDC5E0](v75, -1, -1);
LABEL_60:

          goto LABEL_61;
        }

LABEL_59:

        goto LABEL_60;
      }

LABEL_21:

      v34 = 0;
      v93 = v32;
      v94 = v32 & 0xC000000000000001;
      v87 = v32 + 32;
      v88 = v32 & 0xFFFFFFFFFFFFFF8;
      v92 = v33;
      while (2)
      {
        if (v94)
        {
          v35 = MEMORY[0x245CDBC20](v34, v32);
        }

        else
        {
          if (v34 >= *(v88 + 16))
          {
            goto LABEL_66;
          }

          v35 = *(v87 + 8 * v34);
        }

        v100 = v35;
        v36 = __OFADD__(v34, 1);
        v37 = v34 + 1;
        if (v36)
        {
          goto LABEL_65;
        }

        v95 = v37;
        v38 = 1 << *(v2 + 32);
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        else
        {
          v39 = -1;
        }

        v40 = v39 & *(v2 + 56);
        v41 = (v38 + 63) >> 6;

        v42 = 0;
        while (v40)
        {
LABEL_39:
          v45 = __clz(__rbit64(v40));
          v40 &= v40 - 1;
          v46 = (*(v2 + 48) + ((v42 << 10) | (16 * v45)));
          v47 = *v46;
          v48 = v46[1];

          v49 = [v100 capabilities];
          v50 = sub_241165DA8();
          v51 = [v49 valueForCapability_];

          v52 = v100;
          v53 = sub_241165268();
          v54 = sub_241166068();

          v55 = os_log_type_enabled(v53, v54);
          if (v51)
          {
            if (v55)
            {
              v56 = swift_slowAlloc();
              log = v53;
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v102[0] = v58;
              *v56 = 138412546;
              v59 = [v52 URI];
              *(v56 + 4) = v59;
              *v57 = v59;
              *(v56 + 12) = 2080;
              v60 = sub_241156B38(v47, v48, v102);

              *(v56 + 14) = v60;
              _os_log_impl(&dword_2410F8000, log, v54, "Endpoint %@ supports %s", v56, 0x16u);
              sub_2410FB29C(v57, &qword_27E530E30, &qword_2411676F0);
              MEMORY[0x245CDC5E0](v57, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v58);
              MEMORY[0x245CDC5E0](v58, -1, -1);
              v61 = v56;
              v2 = v96;
              MEMORY[0x245CDC5E0](v61, -1, -1);
            }

            else
            {
            }

            v6 = v99;
            sub_2410FCF28(0, &qword_27E530FA8, 0x277D189C0);
            sub_24114B338();
            v43 = v52;
            sub_241166258();
            sub_241146D08(v102, v101);
            sub_241166248();
            sub_2410FC828(v102);
            __swift_destroy_boxed_opaque_existential_1(v101);
          }

          else
          {
            if (v55)
            {
              v62 = swift_slowAlloc();
              loga = v53;
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              v102[0] = v64;
              *v62 = 138412546;
              v65 = [v52 URI];
              *(v62 + 4) = v65;
              *v63 = v65;
              *(v62 + 12) = 2080;
              v66 = sub_241156B38(v47, v48, v102);

              *(v62 + 14) = v66;
              _os_log_impl(&dword_2410F8000, loga, v54, "Endpoint %@ does NOT support reg cap %s", v62, 0x16u);
              sub_2410FB29C(v63, &qword_27E530E30, &qword_2411676F0);
              MEMORY[0x245CDC5E0](v63, -1, -1);
              __swift_destroy_boxed_opaque_existential_1(v64);
              MEMORY[0x245CDC5E0](v64, -1, -1);
              v67 = v62;
              v2 = v96;
              MEMORY[0x245CDC5E0](v67, -1, -1);
            }

            else
            {
            }

            v6 = v99;
          }
        }

        while (1)
        {
          v44 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            __break(1u);
            goto LABEL_64;
          }

          if (v44 >= v41)
          {
            break;
          }

          v40 = *(v6 + 8 * v44);
          ++v42;
          if (v40)
          {
            v42 = v44;
            goto LABEL_39;
          }
        }

        v32 = v93;
        v34 = v95;
        if (v95 != v92)
        {
          continue;
        }

        break;
      }

LABEL_61:

      v7 = v89;
    }

    else
    {
      v76 = sub_241165268();
      v77 = sub_241166068();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v102[0] = v79;
        *v78 = 136315138;
        *(v78 + 4) = sub_241156B38(v12, v13, v102);
        _os_log_impl(&dword_2410F8000, v76, v77, "No required reg caps. Returning handle %s as valid send destination", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v79);
        MEMORY[0x245CDC5E0](v79, -1, -1);
        MEMORY[0x245CDC5E0](v78, -1, -1);
      }

      sub_241166258();
      sub_241146D08(v102, v101);
      sub_241166248();

      sub_2410FC828(v102);
      swift_dynamicCast();

      v7 = v89;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v85)
    {

      return;
    }

    v8 = *(v86 + 8 * v9);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

uint64_t sub_2411483A4(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_241104184();
  if (v7)
  {
    v8 = v7;
    v34 = a2;
    v35 = a3;
    v9 = v6;
    sub_241139978();
    if (sub_241166198())
    {
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v10 = sub_241165288();
      __swift_project_value_buffer(v10, qword_27E533AC8);

      v11 = sub_241165268();
      v12 = sub_241166068();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v34 = v14;
        *v13 = 136315394;
        v15 = sub_241156B38(v9, v8, &v34);

        *(v13 + 4) = v15;
        *(v13 + 12) = 2080;
        *(v13 + 14) = sub_241156B38(a2, a3, &v34);
        _os_log_impl(&dword_2410F8000, v11, v12, "Message is from self %s %s", v13, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v14, -1, -1);
        MEMORY[0x245CDC5E0](v13, -1, -1);
      }

      else
      {
      }

      return 0;
    }
  }

  if (qword_27E5305C8 != -1)
  {
LABEL_32:
    swift_once();
  }

  v16 = sub_241165288();
  __swift_project_value_buffer(v16, qword_27E533AC8);

  v17 = sub_241165268();
  v18 = sub_241166068();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_241156B38(a2, a3, &v34);
    _os_log_impl(&dword_2410F8000, v17, v18, "Receiving acknowledgement from  %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x245CDC5E0](v20, -1, -1);
    MEMORY[0x245CDC5E0](v19, -1, -1);
  }

  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 64);
  v24 = (v21 + 63) >> 6;

  v25 = 0;
  a3 = &qword_27E530FD8;
  a2 = &unk_241169288;
  while (1)
  {
    if (!v23)
    {
      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v26 >= v24)
        {

          return 0;
        }

        v23 = *(a1 + 64 + 8 * v26);
        ++v25;
        if (v23)
        {
          v25 = v26;
          goto LABEL_19;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_19:
    v27 = __clz(__rbit64(v23)) | (v25 << 6);
    v28 = (*(a1 + 48) + 16 * v27);
    v30 = *v28;
    v29 = v28[1];
    sub_241100374(*(a1 + 56) + 32 * v27, &v36);
    v34 = v30;
    v35 = v29;
    if (v30 == 0xD000000000000017 && 0x800000024116AA90 == v29)
    {
      break;
    }

    v23 &= v23 - 1;
    v32 = sub_2411663E8();

    sub_2410FB29C(&v34, &qword_27E530FD8, &unk_241169288);
    if (v32)
    {
      goto LABEL_30;
    }
  }

  sub_2410FB29C(&v34, &qword_27E530FD8, &unk_241169288);
LABEL_30:

  return 1;
}

void sub_2411487F4(uint64_t a1, NSObject *a2, uint64_t *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  MEMORY[0x28223BE20](v8 - 8);
  v89 = &v86 - v9;
  v10 = sub_241165848();
  v87 = *(v10 - 8);
  v88 = v10;
  MEMORY[0x28223BE20](v10);
  v86 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E5305C8 != -1)
  {
    swift_once();
  }

  v12 = sub_241165288();
  __swift_project_value_buffer(v12, qword_27E533AC8);

  v13 = sub_241165268();
  v14 = sub_241166068();

  v15 = os_log_type_enabled(v13, v14);
  v90 = a2;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v91[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_241156B38(a2, a3, v91);
    *(v16 + 12) = 2080;
    v18 = sub_241165D28();
    v20 = sub_241156B38(v18, v19, v91);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_2410F8000, v13, v14, "Swift received bridged message {fromID: %s, message: %s}", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v17, -1, -1);
    MEMORY[0x245CDC5E0](v16, -1, -1);
  }

  sub_241145B84(a1);
  if (!v21)
  {

    v90 = sub_241165268();
    v34 = sub_241166048();

    if (!os_log_type_enabled(v90, v34))
    {
      goto LABEL_46;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v91[0] = v36;
    *v35 = 136315138;
    v37 = sub_241165D28();
    v39 = sub_241156B38(v37, v38, v91);

    *(v35 + 4) = v39;
    v40 = "Message was not of type [String: Any]. Bailing receive. message: %s";
    goto LABEL_34;
  }

  v22 = v21;
  if ((sub_2411483A4(v21, v90, a3) & 1) == 0)
  {
    sub_241165CE8();

    v41 = sub_241165CA8();
    if (v41)
    {
      v46 = v41;
      v47 = v41;

      v90 = v47;
      v48 = sub_241165268();
      v49 = sub_241166068();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v90;
        *(v50 + 4) = v90;
        *v51 = v46;
        v53 = v52;
        _os_log_impl(&dword_2410F8000, v48, v49, "Got ATPayload from IDS message: %@", v50, 0xCu);
        sub_2410FB29C(v51, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v51, -1, -1);
        MEMORY[0x245CDC5E0](v50, -1, -1);
      }

      v54 = sub_241165CD8();
      if (v54)
      {
        v55 = v54;
        v56 = v54;
        v57 = sub_241165268();
        v58 = sub_241166068();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v59 = 138412290;
          *(v59 + 4) = v56;
          *v60 = v55;
          v61 = v56;
          _os_log_impl(&dword_2410F8000, v57, v58, "Got ATResponse from IDS message: %@", v59, 0xCu);
          sub_2410FB29C(v60, &qword_27E530E30, &qword_2411676F0);
          MEMORY[0x245CDC5E0](v60, -1, -1);
          MEMORY[0x245CDC5E0](v59, -1, -1);
        }

        v62 = sub_241165C98();
        if (v63)
        {
          v64 = v62;
          v65 = v63;
          v66 = sub_241165FA8();
          v67 = v89;
          (*(*(v66 - 8) + 56))(v89, 1, 1, v66);
          v68 = swift_allocObject();
          v68[2] = 0;
          v68[3] = 0;
          v68[4] = v4;
          v68[5] = v56;
          v68[6] = v64;
          v68[7] = v65;
          v68[8] = v90;
          v69 = v56;

          sub_2411467B0(0, 0, v67, &unk_241169230, v68);

LABEL_35:
          return;
        }

        v79 = sub_241165268();
        v80 = sub_241166048();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_2410F8000, v79, v80, "Client bundle identifier was nil.", v81, 2u);
          MEMORY[0x245CDC5E0](v81, -1, -1);
        }
      }

      else
      {
        v90 = v90;
        v74 = sub_241165268();
        v75 = sub_241166048();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *v76 = 138412290;
          v78 = v90;
          *(v76 + 4) = v90;
          *v77 = v46;
          v90 = v78;
          _os_log_impl(&dword_2410F8000, v74, v75, "Received payload, but it had no associated response: %@", v76, 0xCu);
          sub_2410FB29C(v77, &qword_27E530E30, &qword_2411676F0);
          MEMORY[0x245CDC5E0](v77, -1, -1);
          MEMORY[0x245CDC5E0](v76, -1, -1);
        }
      }

LABEL_46:
      v82 = v90;

      return;
    }

    v90 = sub_241165268();
    v34 = sub_241166048();

    if (!os_log_type_enabled(v90, v34))
    {

      goto LABEL_46;
    }

    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v91[0] = v36;
    *v35 = 136315138;
    v70 = sub_241165D28();
    v72 = v71;

    v73 = sub_241156B38(v70, v72, v91);

    *(v35 + 4) = v73;
    v40 = "Failed to derive ATPayload from IDS message: %s";
LABEL_34:
    _os_log_impl(&dword_2410F8000, v90, v34, v40, v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x245CDC5E0](v36, -1, -1);
    MEMORY[0x245CDC5E0](v35, -1, -1);
    goto LABEL_35;
  }

  if (!*(v22 + 16) || (v23 = sub_2410FAD78(0x6369706F74, 0xE500000000000000), (v24 & 1) == 0) || (sub_241100374(*(v22 + 56) + 32 * v23, v91), (swift_dynamicCast() & 1) == 0))
  {

    v42 = sub_241165268();
    v43 = sub_241166048();
    if (!os_log_type_enabled(v42, v43))
    {
LABEL_23:

      return;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Unable to decode acknowledgement message because topic was missing";
LABEL_22:
    _os_log_impl(&dword_2410F8000, v42, v43, v45, v44, 2u);
    MEMORY[0x245CDC5E0](v44, -1, -1);
    goto LABEL_23;
  }

  if (!*(v22 + 16) || (v25 = sub_2410FAD78(0xD000000000000010, 0x800000024116AA70), (v26 & 1) == 0) || (sub_241100374(*(v22 + 56) + 32 * v25, v91), (swift_dynamicCast() & 1) == 0))
  {

    v42 = sub_241165268();
    v43 = sub_241166048();
    if (!os_log_type_enabled(v42, v43))
    {
      goto LABEL_23;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "Unable to decode acknowledgement message because question system identifier was missing";
    goto LABEL_22;
  }

  v27 = objc_allocWithZone(sub_241165378());
  v28 = sub_241165358();
  if (*(v22 + 16) && (v29 = sub_2410FAD78(0x696669746E656469, 0xEA00000000007265), (v30 & 1) != 0))
  {
    sub_241100374(*(v22 + 56) + 32 * v29, v91);

    if (swift_dynamicCast())
    {
      sub_241165858();
      v32 = v86;
      v31 = v87;
      v33 = v88;
      (*(v87 + 104))(v86, *MEMORY[0x277CEEC18], v88);
      sub_24114B59C(&qword_27E530D38, MEMORY[0x277CEEC28], MEMORY[0x277CEEC20]);
      sub_241165C28();

      (*(v31 + 8))(v32, v33);
      return;
    }
  }

  else
  {
  }

  v83 = sub_241165268();
  v84 = sub_241166048();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_2410F8000, v83, v84, "Unable to log ack response journey metric because identifier was missing", v85, 2u);
    MEMORY[0x245CDC5E0](v85, -1, -1);
  }
}

uint64_t sub_241149588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  return MEMORY[0x2822009F8](sub_2411495B4, 0, 0);
}

uint64_t sub_2411495B4()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[20];
    v3 = swift_task_alloc();
    v0[29] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    v4 = swift_task_alloc();
    v0[30] = v4;
    *v4 = v0;
    v4[1] = sub_241149C5C;
    v5 = MEMORY[0x277D839B0];

    return MEMORY[0x2822007B8](v0 + 31, 0, 0, 0xD000000000000028, 0x800000024116C300, sub_24114B108, v3, v5);
  }

  else
  {
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v6 = sub_241165288();
    v0[26] = __swift_project_value_buffer(v6, qword_27E533AC8);
    v7 = sub_241165268();
    v8 = sub_241166068();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2410F8000, v7, v8, "AskToIDSController.notifyIfNeeded messageGUID is nil checking is a child or teen", v9, 2u);
      MEMORY[0x245CDC5E0](v9, -1, -1);
    }

    v10 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
    v0[27] = v10;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_241149874;
    v11 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F60, &qword_241168050);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_241142CF4;
    v0[13] = &block_descriptor_9;
    v0[14] = v11;
    [v10 startRequestWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_241149874()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_241149F10;
  }

  else
  {
    v2 = sub_241149984;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241149984()
{
  v1 = *(v0 + 144);
  v2 = [v1 me];
  if (v2)
  {
    v3 = v2;
    v4 = sub_241166088();
  }

  else
  {
    v4 = 0;
  }

  v5 = v1;
  v6 = sub_241165268();
  v7 = sub_241166068();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 216);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 67109379;
    *(v10 + 4) = v4 & 1;
    *(v10 + 8) = 2113;
    *(v10 + 10) = v5;
    *v11 = v5;
    v12 = v5;
    _os_log_impl(&dword_2410F8000, v6, v7, "AskToIDSController.notifyIfNeeded fetch family isOriginalRequester: %{BOOL}d %{private}@", v10, 0x12u);
    sub_2410FB29C(v11, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v13 = sub_2411656A8();
  sub_241165438();

  LODWORD(v13) = sub_241165428();
  if (v13 == sub_241165428())
  {
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v14 = sub_241165288();
    __swift_project_value_buffer(v14, qword_27E533AC8);
    v15 = sub_241165268();
    v16 = sub_241166068();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2410F8000, v15, v16, "AskToIDSController.notifyIfNeeded notifying...", v17, 2u);
      MEMORY[0x245CDC5E0](v17, -1, -1);
    }

    if (qword_27E530648 != -1)
    {
      swift_once();
    }

    sub_241163738(*(v0 + 152), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200));
  }

LABEL_16:
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_241149C5C()
{

  return MEMORY[0x2822009F8](sub_241149D74, 0, 0);
}

uint64_t sub_241149D74(uint64_t a1)
{
  if (*(v1 + 248) == 1)
  {
    v2 = sub_2411656A8();
    sub_241165438();

    LODWORD(v2) = sub_241165428();
    if (v2 == sub_241165428())
    {
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v3 = sub_241165288();
      __swift_project_value_buffer(v3, qword_27E533AC8);
      v4 = sub_241165268();
      v5 = sub_241166068();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_2410F8000, v4, v5, "AskToIDSController.notifyIfNeeded notifying...", v6, 2u);
        MEMORY[0x245CDC5E0](v6, -1, -1);
      }

      if (qword_27E530648 != -1)
      {
        swift_once();
      }

      sub_241163738(*(v1 + 152), *(v1 + 176), *(v1 + 184), *(v1 + 192), *(v1 + 200));
    }
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_241149F10(uint64_t a1)
{
  v2 = v1[28];
  swift_willThrow();
  v3 = v2;
  v4 = sub_241165268();
  v5 = sub_241166048();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v1[27];
  v7 = v1[28];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_2410F8000, v4, v5, "AskToIDSController.notifyIfNeeded Failed to fetch family circle: %@ defaulting to no notification", v9, 0xCu);
    sub_2410FB29C(v10, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  else
  {
  }

  v13 = v1[1];

  return v13();
}

void sub_24114A088(void *a1, uint64_t a2, NSObject *a3, uint64_t *a4)
{
  if (qword_27E5305C8 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E533AC8);

  v9 = sub_241165268();
  v10 = sub_241166068();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32 = v13;
    *v11 = 138412546;
    if (a4)
    {
      sub_24110412C();
      swift_allocError();
      *v14 = a3;
      v14[1] = a4;

      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    v31 = a3;
    *(v11 + 4) = v15;
    *v12 = v16;
    *(v11 + 12) = 2080;
    if (!a2)
    {
      __break(1u);
      return;
    }

    v23 = sub_241165D28();
    v25 = sub_241156B38(v23, v24, &v32);

    *(v11 + 14) = v25;
    _os_log_impl(&dword_2410F8000, v9, v10, "Received message {fromID: %@, message: %s}", v11, 0x16u);
    sub_2410FB29C(v12, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);

    a3 = v31;
    if (!a1)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (!a2)
    {
      v30 = sub_241165268();
      v26 = sub_241166048();
      if (os_log_type_enabled(v30, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_241156B38(0xD000000000000032, 0x800000024116C2C0, &v32);
        v29 = "IDS called %s with nil message.";
        goto LABEL_22;
      }

LABEL_28:

      goto LABEL_26;
    }

    if (!a1)
    {
LABEL_18:
      v30 = sub_241165268();
      v26 = sub_241166048();
      if (os_log_type_enabled(v30, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_241156B38(0xD000000000000032, 0x800000024116C2C0, &v32);
        v29 = "IDS called %s with nil service.";
LABEL_22:
        _os_log_impl(&dword_2410F8000, v30, v26, v29, v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x245CDC5E0](v28, -1, -1);
        MEMORY[0x245CDC5E0](v27, -1, -1);
LABEL_26:

        return;
      }

      goto LABEL_28;
    }
  }

  if (!a4)
  {
    v30 = a1;
    v18 = sub_241165268();
    v19 = sub_241166048();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_241156B38(0xD000000000000032, 0x800000024116C2C0, &v32);
      v22 = "IDS called %s with nil fromID.";
LABEL_25:
      _os_log_impl(&dword_2410F8000, v18, v19, v22, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245CDC5E0](v21, -1, -1);
      MEMORY[0x245CDC5E0](v20, -1, -1);

      goto LABEL_26;
    }

LABEL_27:

    goto LABEL_28;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v30 = a1;
  if (!Strong)
  {
    v18 = sub_241165268();
    v19 = sub_241166048();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_241156B38(0xD000000000000032, 0x800000024116C2C0, &v32);
      v22 = "%s IDSRelay was nil";
      goto LABEL_25;
    }

    goto LABEL_27;
  }

  sub_2411487F4(a2, a3, a4);

  swift_unknownObjectRelease();
}

void sub_24114A63C(uint64_t a1, unint64_t a2, char a3, id a4)
{
  if (a2)
  {
    v7 = v4;
    v10 = 0x27E530000uLL;
    if (a4)
    {
      v11 = a4;
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v12 = sub_241165288();
      __swift_project_value_buffer(v12, qword_27E533AC8);
      v13 = a4;

      v14 = sub_241165268();
      v15 = sub_241166068();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v68[0] = v18;
        *v16 = 136315650;
        *(v16 + 4) = sub_241156B38(a1, a2, v68);
        *(v16 + 12) = 1024;
        *(v16 + 14) = a3 & 1;
        *(v16 + 18) = 2112;
        v19 = a4;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 20) = v20;
        *v17 = v20;
        _os_log_impl(&dword_2410F8000, v14, v15, "Send message delegate callback {identifier: %s, success: %{BOOL}d, error: %@}", v16, 0x1Cu);
        sub_2410FB29C(v17, &qword_27E530E30, &qword_2411676F0);
        v21 = v17;
        v10 = 0x27E530000;
        MEMORY[0x245CDC5E0](v21, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x245CDC5E0](v18, -1, -1);
        MEMORY[0x245CDC5E0](v16, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v31 = sub_241165288();
      __swift_project_value_buffer(v31, qword_27E533AC8);

      v32 = sub_241165268();
      v33 = sub_241166068();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v68[0] = v35;
        *v34 = 136315394;
        *(v34 + 4) = sub_241156B38(a1, a2, v68);
        *(v34 + 12) = 1024;
        *(v34 + 14) = a3 & 1;
        _os_log_impl(&dword_2410F8000, v32, v33, "Send message delegate callback {identifier: %s, success: %{BOOL}d, error: nil}", v34, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x245CDC5E0](v35, -1, -1);
        MEMORY[0x245CDC5E0](v34, -1, -1);
      }
    }

    v36 = OBJC_IVAR____TtC11AskToDaemonP33_D5D2E3A5CDD8E512D4F6A05865E285B023AskToIDSServiceDelegate_pendingSendCompletions;
    swift_beginAccess();
    v37 = *(v7 + v36);
    if (*(v37 + 16) && (v38 = sub_2410FAD78(a1, a2), (v39 & 1) != 0))
    {
      v40 = *(*(v37 + 56) + 16 * v38);
      swift_endAccess();
      v41 = *(v10 + 1480);

      if (v41 != -1)
      {
        swift_once();
      }

      v42 = sub_241165288();
      __swift_project_value_buffer(v42, qword_27E533AC8);

      v43 = sub_241165268();
      v44 = sub_241166068();

      if (os_log_type_enabled(v43, v44))
      {
        v64 = v40;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v68[0] = v46;
        *v45 = 136315138;
        *(v45 + 4) = sub_241156B38(a1, a2, v68);
        _os_log_impl(&dword_2410F8000, v43, v44, "Calling completion for IDS message send identifier %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x245CDC5E0](v46, -1, -1);
        v47 = v45;
        v40 = v64;
        MEMORY[0x245CDC5E0](v47, -1, -1);
      }

      v67 = a3 & 1;
      v68[0] = a4;
      v40(&v67, v68);

      swift_beginAccess();
      v48 = sub_24115215C(a1, a2);
      v50 = v49;
      swift_endAccess();
      sub_241100400(v48, v50);
    }

    else
    {
      swift_endAccess();
      if (*(v10 + 1480) != -1)
      {
        swift_once();
      }

      v51 = sub_241165288();
      __swift_project_value_buffer(v51, qword_27E533AC8);

      v52 = sub_241165268();
      v53 = sub_241166048();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v68[0] = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_241156B38(a1, a2, v68);
        _os_log_impl(&dword_2410F8000, v52, v53, "Got delegate callback for message send from IDS, but completion for identifier %s was nil.", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x245CDC5E0](v55, -1, -1);
        MEMORY[0x245CDC5E0](v54, -1, -1);
      }
    }
  }

  else
  {
    if (a4)
    {
      v22 = a4;
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v23 = sub_241165288();
      __swift_project_value_buffer(v23, qword_27E533AC8);
      v24 = a4;
      v25 = sub_241165268();
      v26 = sub_241166068();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 67109378;
        *(v27 + 4) = a3 & 1;
        *(v27 + 8) = 2112;
        v29 = a4;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 10) = v30;
        *v28 = v30;
        _os_log_impl(&dword_2410F8000, v25, v26, "Send message delegate callback {identifier: nil, success: %{BOOL}d, error: %@}", v27, 0x12u);
        sub_2410FB29C(v28, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v28, -1, -1);
        MEMORY[0x245CDC5E0](v27, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_27E5305C8 != -1)
      {
        swift_once();
      }

      v56 = sub_241165288();
      __swift_project_value_buffer(v56, qword_27E533AC8);
      v57 = sub_241165268();
      v58 = sub_241166068();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 67109120;
        *(v59 + 4) = a3 & 1;
        _os_log_impl(&dword_2410F8000, v57, v58, "Send message delegate callback {identifier: nil, success: %{BOOL}d, error: nil}", v59, 8u);
        MEMORY[0x245CDC5E0](v59, -1, -1);
      }
    }

    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v60 = sub_241165288();
    __swift_project_value_buffer(v60, qword_27E533AC8);
    osloga = sub_241165268();
    v61 = sub_241166048();
    if (os_log_type_enabled(osloga, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v68[0] = v63;
      *v62 = 136315138;
      *(v62 + 4) = sub_241156B38(0xD000000000000037, 0x800000024116C280, v68);
      _os_log_impl(&dword_2410F8000, osloga, v61, "IDS called %s with nil identifier.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x245CDC5E0](v63, -1, -1);
      MEMORY[0x245CDC5E0](v62, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_24114AFA8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24114B000(uint64_t a1)
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
  v11[1] = sub_241106740;

  return sub_241145E60(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_24114B124(char a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);

  return sub_241145ADC(a1, a2);
}

uint64_t sub_24114B1B0()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24114B20C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_24114B21C()
{
  result = qword_27E530F78;
  if (!qword_27E530F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530F78);
  }

  return result;
}

unint64_t sub_24114B270()
{
  result = qword_27E530F88;
  if (!qword_27E530F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530F88);
  }

  return result;
}

uint64_t sub_24114B2C4()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24114B338()
{
  result = qword_27E530FB0;
  if (!qword_27E530FB0)
  {
    sub_2410FCF28(255, &qword_27E530FA8, 0x277D189C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530FB0);
  }

  return result;
}

uint64_t sub_24114B3A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_16Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_24114B4A0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530FF8, &unk_2411692A0);

  return sub_2411457BC(a1, a2);
}

uint64_t sub_24114B52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24114B59C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24114B5E4()
{
  result = qword_27E531028;
  if (!qword_27E531028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E531020, &qword_2411692B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531028);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon0aB13IDSControllerC15ValidationErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24114B660(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24114B6B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AskToIDSController.SendError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AskToIDSController.SendError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24114B870()
{
  result = qword_27E531030;
  if (!qword_27E531030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531030);
  }

  return result;
}

unint64_t sub_24114B8C8()
{
  result = qword_27E531038;
  if (!qword_27E531038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531038);
  }

  return result;
}

unint64_t sub_24114B91C()
{
  result = qword_27E531040[0];
  if (!qword_27E531040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E531040);
  }

  return result;
}

uint64_t sub_24114B9C0()
{
  v1 = *(v0 + 16);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  sub_241165F38();
  v2 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v2));
  sub_24114C978(&v4);
  os_unfair_lock_unlock((v1 + v2));

  return v4;
}

uint64_t sub_24114BB10(uint64_t a1)
{
  v2 = v1;
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E533A08);
  swift_unknownObjectRetain_n();
  v4 = sub_241165268();
  v5 = sub_241166068();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315394;
    swift_getAssociatedTypeWitness();
    swift_getMetatypeMetadata();
    swift_getMetatypeMetadata();
    v8 = sub_241165DE8();
    v10 = sub_241156B38(v8, v9, v20);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_2411663B8();
    v13 = v12;
    swift_unknownObjectRelease_n();
    v14 = sub_241156B38(v11, v13, v20);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s connection interrupted. Removing client %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {

    v15 = swift_unknownObjectRelease_n();
  }

  v16 = *(v2 + 16);
  MEMORY[0x28223BE20](v15);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  v17 = *(*v16 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v16 + v18));
  sub_24114C9B4(v16 + v17);
  os_unfair_lock_unlock((v16 + v18));
}

uint64_t sub_24114BE40(uint64_t a1)
{
  v2 = v1;
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E533A08);
  swift_unknownObjectRetain_n();
  v4 = sub_241165268();
  v5 = sub_241166068();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315394;
    swift_getAssociatedTypeWitness();
    swift_getMetatypeMetadata();
    swift_getMetatypeMetadata();
    v8 = sub_241165DE8();
    v10 = sub_241156B38(v8, v9, v20);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_2411663B8();
    v13 = v12;
    swift_unknownObjectRelease_n();
    v14 = sub_241156B38(v11, v13, v20);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s connection invalidated. Removing client %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {

    v15 = swift_unknownObjectRelease_n();
  }

  v16 = *(v2 + 16);
  MEMORY[0x28223BE20](v15);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  v17 = *(*v16 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v16 + v18));
  sub_24114C9D4(v16 + v17);
  os_unfair_lock_unlock((v16 + v18));
}

uint64_t sub_24114C170(uint64_t a1)
{
  v2 = v1;
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E533A08);
  swift_unknownObjectRetain_n();
  v4 = sub_241165268();
  v5 = sub_241166068();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315394;
    swift_getAssociatedTypeWitness();
    swift_getMetatypeMetadata();
    swift_getMetatypeMetadata();
    v8 = sub_241165DE8();
    v10 = sub_241156B38(v8, v9, v20);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = sub_2411663B8();
    v13 = v12;
    swift_unknownObjectRelease_n();
    v14 = sub_241156B38(v11, v13, v20);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s connection activated. Tracking client %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  else
  {

    v15 = swift_unknownObjectRelease_n();
  }

  v16 = *(v2 + 16);
  MEMORY[0x28223BE20](v15);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  v17 = *(*v16 + *MEMORY[0x277D841D0] + 16);
  v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v16 + v18));
  sub_24114C994(v16 + v17);
  os_unfair_lock_unlock((v16 + v18));
}

uint64_t sub_24114C4A0@<X0>(uint64_t *a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_241165D58();

  swift_getWitnessTable();
  result = sub_241165F48();
  *a4 = result;
  return result;
}

uint64_t sub_24114C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_2411662C8();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  swift_unknownObjectRetain();
  return sub_241165D78();
}

void sub_24114C6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v18 - v7;
  v19 = a2;
  sub_2411662C8();
  swift_getAssociatedConformanceWitness();
  sub_241165D68();
  sub_241165D38();
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  if (v20)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27E530588 != -1)
    {
      swift_once();
    }

    v9 = sub_241165288();
    __swift_project_value_buffer(v9, qword_27E533A08);
    swift_unknownObjectRetain();
    v10 = sub_241165268();
    v11 = sub_241166048();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v19 = a2;
      v14 = sub_2411663B8();
      v16 = v15;
      swift_unknownObjectRelease();
      v17 = sub_241156B38(v14, v16, &v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2410F8000, v10, v11, "Attempted to remove client %s but it was not found in connected clients map", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245CDC5E0](v13, -1, -1);
      MEMORY[0x245CDC5E0](v12, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_24114C9EC@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v18 = sub_2411660A8();
  MEMORY[0x28223BE20](v18);
  v17 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_241165618();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2411660B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2411651A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241165198();
  (*(v9 + 16))(a1, v11, v8);
  v15 = sub_2410FCF28(0, &qword_27E5310D0, 0x277D85C78);
  v19 = 0xD000000000000014;
  v20 = 0x800000024116C690;
  v12 = sub_241165188();
  MEMORY[0x245CDB790](v12);

  (*(v5 + 104))(v7, *MEMORY[0x277D85268], v4);
  sub_2411655F8();
  v19 = MEMORY[0x277D84F90];
  sub_24114CD08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5310E0, &qword_241169588);
  sub_24114CD60();
  sub_2411661B8();
  v13 = sub_2411660D8();
  (*(v9 + 8))(v11, v8);
  result = type metadata accessor for IDSLookupController(0);
  *(v16 + *(result + 20)) = v13;
  return result;
}

unint64_t sub_24114CD08()
{
  result = qword_27E5310D8;
  if (!qword_27E5310D8)
  {
    sub_2411660A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5310D8);
  }

  return result;
}

unint64_t sub_24114CD60()
{
  result = qword_27E5310E8;
  if (!qword_27E5310E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5310E0, &qword_241169588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5310E8);
  }

  return result;
}

uint64_t type metadata accessor for IDSLookupController(uint64_t a1)
{
  result = qword_27E531140;
  if (!qword_27E531140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24114CE10(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24114CE30, 0, 0);
}

uint64_t sub_24114CE30()
{
  v26 = v0;
  v1 = v0[2];
  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_2411661F8();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v4 = v0[2];
      v24 = MEMORY[0x277D84F98];
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v4 + 32;
      do
      {
        if (v5)
        {
          v8 = MEMORY[0x245CDBC20](v3, v0[2]);
        }

        else
        {
          if (v3 >= *(v6 + 16))
          {
            goto LABEL_19;
          }

          v8 = *(v7 + 8 * v3);
        }

        v9 = v8;
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        v25 = v8;
        v1 = 0;
        sub_24114DC74(&v24, &v25);

        ++v3;
      }

      while (v10 != v2);
      v11 = v24;
      v0[4] = v24;
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = sub_24113031C(*(v11 + 16), 0);
        v14 = sub_241130FF4(&v25, v13 + 4, v12, v11);
        v15 = v25;

        sub_24111606C(v15);
        if (v14 == v12)
        {
LABEL_15:
          v0[5] = v13;
          v16 = swift_task_alloc();
          v0[6] = v16;
          *v16 = v0;
          v16[1] = sub_24114D15C;

          return sub_24114E13C(v13);
        }

        __break(1u);
      }

      v13 = MEMORY[0x277D84F90];
      goto LABEL_15;
    }
  }

  if (qword_27E5305A8 != -1)
  {
    swift_once();
  }

  v18 = sub_241165288();
  __swift_project_value_buffer(v18, qword_27E533A68);
  v19 = sub_241165268();
  v20 = sub_241166048();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2410F8000, v19, v20, "No family members to lookup, bailing early.", v21, 2u);
    MEMORY[0x245CDC5E0](v21, -1, -1);
  }

  v22 = sub_2410FBCF8(MEMORY[0x277D84F90]);
  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_24114D15C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_24114DC08;
  }

  else
  {
    v4 = sub_24114D270;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24114D270()
{
  v85 = v0;
  if (!*(v0[7] + 16))
  {

    if (qword_27E5305A8 != -1)
    {
      swift_once();
    }

    v65 = sub_241165288();
    __swift_project_value_buffer(v65, qword_27E533A68);

    v66 = sub_241165268();
    v67 = sub_241166068();

    v68 = os_log_type_enabled(v66, v67);
    v69 = v0[5];
    if (v68)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v84 = v71;
      *v70 = 136315138;
      v72 = MEMORY[0x245CDB850](v69, MEMORY[0x277D837D0]);
      v74 = v73;

      v0 = v83;
      v75 = sub_241156B38(v72, v74, &v84);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_2410F8000, v66, v67, "No results for ids lookup with destinations %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v71);
      MEMORY[0x245CDC5E0](v71, -1, -1);
      MEMORY[0x245CDC5E0](v70, -1, -1);
    }

    else
    {
    }

    v64 = sub_2410FBCF8(MEMORY[0x277D84F90]);
    goto LABEL_43;
  }

  if (qword_27E5305A8 != -1)
  {
LABEL_47:
    swift_once();
  }

  v1 = sub_241165288();
  __swift_project_value_buffer(v1, qword_27E533A68);

  v2 = sub_241165268();
  v3 = sub_241166068();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v84 = v5;
    *v4 = 136315138;
    sub_2410FCF28(0, &qword_27E530FA0, 0x277D189D0);
    v6 = sub_241165D48();
    v8 = sub_241156B38(v6, v7, &v84);
    v0 = v83;

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2410F8000, v2, v3, "Got result keys: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDC5E0](v5, -1, -1);
    MEMORY[0x245CDC5E0](v4, -1, -1);
  }

  v9 = v0[7];
  v79 = v0[4];
  v80 = sub_2410FBCF8(MEMORY[0x277D84F90]);
  v10 = v9 + 64;
  v11 = -1;
  v12 = -1 << *(v9 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v9 + 64);
  v14 = (63 - v12) >> 6;
  v82 = v9;

  v15 = 0;
  v16 = v14;
  v81 = v14;
  while (1)
  {
    v17 = v15;
    if (!v13)
    {
      break;
    }

LABEL_13:
    v18 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v19 = (*(v82 + 48) + ((v15 << 10) | (16 * v18)));
    v21 = *v19;
    v20 = v19[1];

    v22 = sub_241165DA8();
    v23 = [v22 _stripFZIDPrefix];

    if (v23)
    {
      v24 = v0[4];

      v25 = sub_241165DD8();
      v27 = v26;

      if (*(v24 + 16) && (v28 = sub_2410FAD78(v25, v27), (v29 & 1) != 0))
      {
        v42 = *(*(v79 + 56) + 8 * v28);

        v43 = sub_241165268();
        v44 = sub_241166068();

        if (os_log_type_enabled(v43, v44))
        {
          v78 = v42;
          v45 = v44;
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v84 = v47;
          *v46 = 136315138;
          *(v46 + 4) = sub_241156B38(v25, v27, &v84);
          v48 = v45;
          v42 = v78;
          _os_log_impl(&dword_2410F8000, v43, v48, "%s is eligible to receive iMessages", v46, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v47);
          MEMORY[0x245CDC5E0](v47, -1, -1);
          MEMORY[0x245CDC5E0](v46, -1, -1);
        }

        if (*(v80 + 16) && (v49 = sub_2410FADF0(v42), (v50 & 1) != 0))
        {
          v51 = *(*(v80 + 56) + 8 * v49);
        }

        else
        {
          v51 = MEMORY[0x277D84F90];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_2411608BC(0, *(v51 + 2) + 1, 1, v51);
        }

        v53 = *(v51 + 2);
        v52 = *(v51 + 3);
        if (v53 >= v52 >> 1)
        {
          v51 = sub_2411608BC((v52 > 1), v53 + 1, 1, v51);
        }

        *(v51 + 2) = v53 + 1;
        v54 = &v51[16 * v53];
        *(v54 + 4) = v25;
        *(v54 + 5) = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v80;
        sub_241153B7C(v51, v42, isUniquelyReferenced_nonNull_native);

        v0 = v83;
        v80 = v84;
      }

      else
      {

        v30 = sub_241165268();
        v31 = sub_241166048();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v84 = v33;
          *v32 = 136315138;
          v34 = sub_241156B38(v25, v27, &v84);

          *(v32 + 4) = v34;
          _os_log_impl(&dword_2410F8000, v30, v31, "Unable to find handle %s in handle to family member map.", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v33);
          v0 = v83;
          MEMORY[0x245CDC5E0](v33, -1, -1);
          v35 = v32;
          v16 = v81;
          goto LABEL_20;
        }

LABEL_8:
      }
    }

    else
    {

      v30 = sub_241165268();
      v36 = sub_241166048();

      if (!os_log_type_enabled(v30, v36))
      {
        goto LABEL_8;
      }

      v37 = swift_slowAlloc();
      v38 = v16;
      v39 = swift_slowAlloc();
      v84 = v39;
      *v37 = 136315138;
      v40 = sub_241156B38(v21, v20, &v84);

      *(v37 + 4) = v40;
      _os_log_impl(&dword_2410F8000, v30, v36, "Could not get normalized handle for key: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v41 = v39;
      v16 = v38;
      MEMORY[0x245CDC5E0](v41, -1, -1);
      v35 = v37;
      v0 = v83;
LABEL_20:
      MEMORY[0x245CDC5E0](v35, -1, -1);
    }
  }

  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v15 >= v16)
    {
      break;
    }

    v13 = *(v10 + 8 * v15);
    ++v17;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  v56 = sub_241165268();
  v57 = sub_241166068();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v84 = v59;
    *v58 = 136315138;
    sub_2410FCF28(0, &qword_27E5307A0, 0x277D08268);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5310F8, &qword_2411695A0);
    sub_24114FD84();
    v60 = sub_241165D28();
    v62 = v61;

    v63 = sub_241156B38(v60, v62, &v84);

    *(v58 + 4) = v63;
    _os_log_impl(&dword_2410F8000, v56, v57, "iMessageableHandles from IDS query controller: %s", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    v0 = v83;
    MEMORY[0x245CDC5E0](v59, -1, -1);
    MEMORY[0x245CDC5E0](v58, -1, -1);
  }

  v64 = v80;
LABEL_43:
  v76 = v0[1];

  return v76(v64);
}

uint64_t sub_24114DC08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24114DC74(uint64_t a1, id *a2)
{
  v4 = sub_241164E98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *a2;
  v8 = [v54 appleID];
  v53 = a1;
  if (!v8)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v10 = v8;
  v11 = sub_241165DD8();
  v13 = v12;

  v55[0] = v11;
  v55[1] = v13;
  sub_241164E88();
  sub_241139978();
  a1 = sub_241166188();
  v15 = v14;
  (*(v5 + 8))(v7, v4);

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    v17 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v17 = sub_2411608BC(0, 1, 1, MEMORY[0x277D84F90]);
  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    *(v17 + 2) = v20;
    v21 = &v17[16 * v19];
    *(v21 + 4) = a1;
    *(v21 + 5) = v15;
LABEL_9:
    a1 = v53;
LABEL_10:
    v51 = v17;
    v22 = *(v17 + 2);
    if (!v22)
    {
    }

    v19 = (v51 + 40);
    *&v9 = 138412546;
    v52 = v9;
    while (1)
    {
      v20 = *(v19 - 1);
      v29 = *v19;
      swift_bridgeObjectRetain_n();
      v30 = v54;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55[0] = *a1;
      v15 = v55[0];
      v32 = sub_2410FAD78(v20, v29);
      v34 = *(v15 + 16);
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v18 = v34 + v35;
      if (v36)
      {
        break;
      }

      v37 = v33;
      if (*(v15 + 24) >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v47 = v22;
          v48 = v32;
          sub_241154A84();
          v32 = v48;
          v22 = v47;
        }
      }

      else
      {
        sub_241152F2C(v18, isUniquelyReferenced_nonNull_native);
        v32 = sub_2410FAD78(v20, v29);
        if ((v37 & 1) != (v38 & 1))
        {
          result = sub_241166428();
          __break(1u);
          return result;
        }
      }

      v15 = v55[0];
      v56 = v22;
      if (v37)
      {
        v39 = *(v55[0] + 56);
        v40 = *(v39 + 8 * v32);
        *(v39 + 8 * v32) = v30;
      }

      else
      {
        *(v55[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
        v41 = (*(v15 + 48) + 16 * v32);
        *v41 = v20;
        v41[1] = v29;
        *(*(v15 + 56) + 8 * v32) = v30;
        v42 = *(v15 + 16);
        v36 = __OFADD__(v42, 1);
        v18 = v42 + 1;
        if (v36)
        {
          goto LABEL_30;
        }

        *(v15 + 16) = v18;
      }

      *a1 = v15;
      if (qword_27E5305A8 != -1)
      {
        swift_once();
      }

      v43 = sub_241165288();
      __swift_project_value_buffer(v43, qword_27E533A68);

      v44 = v30;
      v45 = sub_241165268();
      v46 = sub_241166068();

      if (os_log_type_enabled(v45, v46))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v55[0] = v25;
        *v23 = v52;
        *(v23 + 4) = v44;
        *v24 = v54;
        *(v23 + 12) = 2080;
        v26 = v44;
        v27 = sub_241156B38(v20, v29, v55);

        *(v23 + 14) = v27;
        _os_log_impl(&dword_2410F8000, v45, v46, "%@ registered %s", v23, 0x16u);
        sub_2410FDEB8(v24);
        v28 = v24;
        a1 = v53;
        MEMORY[0x245CDC5E0](v28, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x245CDC5E0](v25, -1, -1);
        MEMORY[0x245CDC5E0](v23, -1, -1);
      }

      else
      {
      }

      v19 += 2;
      v22 = v56 - 1;
      if (v56 == 1)
      {
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    v17 = sub_2411608BC((v18 > 1), v20, 1, v17);
  }
}

uint64_t sub_24114E13C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_24114E15C, 0, 0);
}

uint64_t sub_24114E15C()
{
  v23 = v0;
  v1 = [objc_opt_self() sharedInstance];
  v0[5] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[3];
    if (*(v3 + 16))
    {
      v4 = v0[4];
      v5 = swift_task_alloc();
      v0[6] = v5;
      v5[2] = v2;
      v5[3] = v3;
      v5[4] = v4;
      v6 = swift_task_alloc();
      v0[7] = v6;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531118, &qword_2411695A8);
      *v6 = v0;
      v6[1] = sub_24114E524;

      return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000025, 0x800000024116C6B0, sub_24114FE40, v5, v7);
    }

    else
    {
      if (qword_27E5305A8 != -1)
      {
        swift_once();
      }

      v15 = sub_241165288();
      __swift_project_value_buffer(v15, qword_27E533A68);
      v16 = sub_241165268();
      v17 = sub_241166048();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2410F8000, v16, v17, "No handles to lookup, bailing early.", v18, 2u);
        MEMORY[0x245CDC5E0](v18, -1, -1);
      }

      v19 = sub_2410FBB10(MEMORY[0x277D84F90]);
      v20 = v0[1];

      return v20(v19);
    }
  }

  else
  {
    if (qword_27E5305A8 != -1)
    {
      swift_once();
    }

    v8 = sub_241165288();
    __swift_project_value_buffer(v8, qword_27E533A68);
    v9 = sub_241165268();
    v10 = sub_241166048();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_241156B38(0xD000000000000025, 0x800000024116C6B0, &v22);
      _os_log_impl(&dword_2410F8000, v9, v10, "%s The IDS query controller was nil, bailing early.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDC5E0](v12, -1, -1);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    sub_24114FDEC();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24114E524()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24114E814;
  }

  else
  {

    v2 = sub_24114E640;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24114E640()
{
  v15 = v0;
  v1 = v0[2];
  if (qword_27E5305A8 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A68);

  v3 = sub_241165268();
  v4 = sub_241166068();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    sub_2410FCF28(0, &qword_27E530FA0, 0x277D189D0);
    v9 = sub_241165D28();
    v11 = sub_241156B38(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2410F8000, v3, v4, "Got results from IDS query: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v12 = v0[1];

  return v12(v1);
}

uint64_t sub_24114E814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24114E880(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_24114E918;

  return sub_24114E13C(a2);
}

uint64_t sub_24114E918(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24114EA4C, 0, 0);
  }
}

uint64_t sub_24114EA4C()
{
  v82 = v0;
  v1 = *(v0 + 40);
  if (!*(v1 + 16))
  {

    if (qword_27E5305A8 != -1)
    {
      swift_once();
    }

    v52 = sub_241165288();
    __swift_project_value_buffer(v52, qword_27E533A68);

    v53 = sub_241165268();
    v54 = sub_241166068();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = *(v0 + 24);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v81[0] = v57;
      *v56 = 136315138;
      v58 = MEMORY[0x245CDB850](v55, MEMORY[0x277D837D0]);
      v60 = sub_241156B38(v58, v59, v81);

      *(v56 + 4) = v60;
      _os_log_impl(&dword_2410F8000, v53, v54, "No results for ids lookup with destinations %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x245CDC5E0](v57, -1, -1);
      MEMORY[0x245CDC5E0](v56, -1, -1);
    }

    v51 = MEMORY[0x277D84F90];
    goto LABEL_61;
  }

  v2 = 0;
  v3 = v1 + 64;
  v4 = -1 << *(v1 + 32);
  v5 = *(v0 + 16);
  if (-v4 < 64)
  {
    v6 = ~(-1 << -v4);
  }

  else
  {
    v6 = -1;
  }

  v80 = MEMORY[0x277D84F90];
  v7 = v6 & *(v1 + 64);
  v8 = (63 - v4) >> 6;
  v78 = *(v0 + 16);
  v9 = v5 + 56;
  v66 = MEMORY[0x277D84F90];
  v71 = *(v0 + 40);
  v72 = v8;
  v73 = v1 + 64;
  v77 = v5 + 56;
LABEL_6:
  v10 = v2;
  while (v7)
  {
    v2 = v10;
LABEL_15:
    v11 = __clz(__rbit64(v7)) | (v2 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v1 + 56) + 8 * v11);

    v76 = v15;
    v16 = [v76 endpoints];
    if (v16)
    {
      v17 = v16;
      sub_2410FCF28(0, &qword_27E530FA8, 0x277D189C0);
      v0 = sub_241165EF8();

      if (!(v0 >> 62))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v0 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_17:
        v18 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_18;
      }
    }

    v18 = sub_2411661F8();
LABEL_18:
    v7 &= v7 - 1;
    if (v18)
    {
      v68 = v18;

      v25 = 0;
      v69 = v0;
      v70 = v0 & 0xC000000000000001;
      v64 = v0 + 32;
      v65 = v0 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v70)
        {
          v26 = MEMORY[0x245CDBC20](v25, v0);
        }

        else
        {
          if (v25 >= *(v65 + 16))
          {
            goto LABEL_67;
          }

          v26 = *(v64 + 8 * v25);
        }

        v79 = v26;
        v27 = __OFADD__(v25, 1);
        v28 = v25 + 1;
        if (v27)
        {
          goto LABEL_66;
        }

        v74 = v28;
        v29 = -1 << *(v78 + 32);
        if (-v29 < 64)
        {
          v30 = ~(-1 << -v29);
        }

        else
        {
          v30 = -1;
        }

        v31 = v30 & *(v78 + 56);
        v32 = (63 - v29) >> 6;

        v33 = 0;
        if (v31)
        {
          while (1)
          {
            v34 = v33;
LABEL_41:
            v35 = (*(v78 + 48) + ((v34 << 10) | (16 * __clz(__rbit64(v31)))));
            v36 = *v35;
            v37 = v35[1];

            v38 = [v79 capabilities];
            v39 = sub_241165DA8();
            v0 = [v38 valueForCapability_];

            if (!v0)
            {
              break;
            }

            v31 &= v31 - 1;
            v33 = v34;
            v9 = v77;
            if (!v31)
            {
              goto LABEL_38;
            }
          }

          if (qword_27E5305A8 != -1)
          {
            swift_once();
          }

          v40 = sub_241165288();
          __swift_project_value_buffer(v40, qword_27E533A68);

          v41 = v79;
          v42 = sub_241165268();
          v43 = sub_241166068();

          v25 = v74;
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            log = v42;
            v45 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v81[0] = v67;
            *v44 = 138412546;
            v46 = [v41 URI];
            *(v44 + 4) = v46;
            *v45 = v46;
            *(v44 + 12) = 2080;
            v47 = sub_241156B38(v36, v37, v81);
            v48 = v41;
            v49 = v47;

            *(v44 + 14) = v49;
            v41 = v48;
            _os_log_impl(&dword_2410F8000, log, v43, "Endpoint %@ does not support %s", v44, 0x16u);
            sub_2410FDEB8(v45);
            MEMORY[0x245CDC5E0](v45, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v67);
            MEMORY[0x245CDC5E0](v67, -1, -1);
            MEMORY[0x245CDC5E0](v44, -1, -1);
          }

          else
          {
          }

          v9 = v77;
          v50 = v41;
          MEMORY[0x245CDB820]();
          if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_241165F18();
          }

          sub_241165F28();

          v66 = v80;
        }

        else
        {
          while (1)
          {
LABEL_38:
            v34 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            if (v34 >= v32)
            {
              break;
            }

            v31 = *(v9 + 8 * v34);
            ++v33;
            if (v31)
            {
              goto LABEL_41;
            }
          }

          v25 = v74;
        }

        v0 = v69;
      }

      while (v25 != v68);

      v1 = v71;
      v8 = v72;
      v3 = v73;
      goto LABEL_6;
    }

    if (qword_27E5305A8 != -1)
    {
      swift_once();
    }

    v19 = sub_241165288();
    __swift_project_value_buffer(v19, qword_27E533A68);

    v20 = sub_241165268();
    v21 = sub_241166048();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v81[0] = v23;
      *v22 = 136315138;
      v24 = sub_241156B38(v14, v13, v81);

      *(v22 + 4) = v24;
      v1 = v71;
      _os_log_impl(&dword_2410F8000, v20, v21, "No endpoints for handle %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x245CDC5E0](v23, -1, -1);
      MEMORY[0x245CDC5E0](v22, -1, -1);
    }

    else
    {
    }

    v10 = v2;
    v8 = v72;
    v3 = v73;
  }

  v0 = v75;
  while (1)
  {
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_65;
    }

    if (v2 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v2);
    ++v10;
    if (v7)
    {
      goto LABEL_15;
    }
  }

  if (!(v66 >> 62))
  {

    sub_2411663F8();
    v51 = v66;
    goto LABEL_55;
  }

LABEL_68:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F80, &qword_241169250);
  v51 = sub_241166338();

LABEL_55:

LABEL_61:
  v61 = *(v0 + 8);

  return v61(v51);
}

void sub_24114F318(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531120, &unk_2411695B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = [objc_opt_self() refreshIDInfo];
  [v11 setForceRefresh_];
  sub_2411431EC(a3);
  v12 = sub_241165EE8();

  v13 = sub_241165DA8();
  v14 = v11;
  v15 = sub_241165DA8();
  v19 = *(a4 + *(type metadata accessor for IDSLookupController(0) + 20));
  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v16, v10, v7);
  aBlock[4] = sub_24114FEE0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24114498C;
  aBlock[3] = &block_descriptor_10;
  v18 = _Block_copy(aBlock);

  [v20 idInfoForDestinations:v12 service:v13 infoTypes:1 options:v14 listenerID:v15 queue:v19 completionBlock:v18];
  _Block_release(v18);
}

uint64_t sub_24114F5C4(uint64_t a1, void *a2)
{
  if (!a1)
  {
    if (a2)
    {
      sub_24114FDEC();
      v58 = swift_allocError();
      *v59 = a2;
      *&v76 = v58;
      v60 = a2;
    }

    else
    {
      sub_24114FDEC();
      v61 = swift_allocError();
      *v62 = 2;
      *&v76 = v61;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531120, &unk_2411695B0);
    return sub_241165F68();
  }

  v2 = a1;
  v64 = sub_2410FBB10(MEMORY[0x277D84F90]);
  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v65 = v2;
  if (!v6)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v9 = v8;
LABEL_16:
      v12 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v13 = v12 | (v9 << 6);
      sub_2410FC7CC(*(v2 + 48) + 40 * v13, &v68);
      sub_241100374(*(v2 + 56) + 32 * v13, v67);
      v71 = v68;
      v72 = v69;
      *&v73 = v70;
      sub_2410FC87C(v67, (&v73 + 8));
      v11 = v9;
LABEL_17:
      v78[0] = v73;
      v78[1] = v74;
      v79 = v75;
      v76 = v71;
      v77 = v72;
      if (!*(&v72 + 1))
      {

        *&v76 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531120, &unk_2411695B0);
        return sub_241165F78();
      }

      v71 = v76;
      v72 = v77;
      *&v73 = *&v78[0];
      sub_2410FC87C((v78 + 8), v67);
      sub_2410FC7CC(&v71, &v68);
      if (swift_dynamicCast())
      {
        break;
      }

      if (qword_27E5305A8 != -1)
      {
        swift_once();
      }

      v31 = sub_241165288();
      __swift_project_value_buffer(v31, qword_27E533A68);
      sub_241100374(v67, &v68);
      v17 = sub_241165268();
      v32 = sub_241166048();
      if (os_log_type_enabled(v17, v32))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v66[0] = v20;
        *v19 = 136315394;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F90, &qword_241169258);
        v33 = sub_241165DE8();
        v35 = sub_241156B38(v33, v34, v66);

        *(v19 + 4) = v35;
        *(v19 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
        swift_getDynamicType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531130, &qword_241169260);
        v36 = sub_241165DE8();
        v38 = v37;
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v39 = sub_241156B38(v36, v38, v66);

        *(v19 + 14) = v39;
        v2 = v65;
        v28 = v32;
        v29 = v17;
        v30 = "key in IDS query results was not a String. Skipping. key type: %s, value type: %s";
        goto LABEL_28;
      }

LABEL_6:

      __swift_destroy_boxed_opaque_existential_1(&v68);
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(v67);
      sub_2410FC828(&v71);
      v8 = v11;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    v14 = v66[0];
    v15 = v66[1];
    sub_241100374(v67, &v68);
    sub_2410FCF28(0, &qword_27E530FA0, 0x277D189D0);
    if (!swift_dynamicCast())
    {

      if (qword_27E5305A8 != -1)
      {
        swift_once();
      }

      v16 = sub_241165288();
      __swift_project_value_buffer(v16, qword_27E533A68);
      sub_241100374(v67, &v68);
      v17 = sub_241165268();
      v18 = sub_241166048();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v66[0] = v20;
        *v19 = 136315394;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F90, &qword_241169258);
        v21 = sub_241165DE8();
        v23 = sub_241156B38(v21, v22, v66);

        *(v19 + 4) = v23;
        *(v19 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(&v68, *(&v69 + 1));
        swift_getDynamicType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531130, &qword_241169260);
        v24 = sub_241165DE8();
        v26 = v25;
        __swift_destroy_boxed_opaque_existential_1(&v68);
        v27 = sub_241156B38(v24, v26, v66);

        *(v19 + 14) = v27;
        v2 = v65;
        v28 = v18;
        v29 = v17;
        v30 = "value in IDS query results was not IDSIDInfoResult. Skipping. key type: %s, value type: %s";
LABEL_28:
        _os_log_impl(&dword_2410F8000, v29, v28, v30, v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v20, -1, -1);
        MEMORY[0x245CDC5E0](v19, -1, -1);

        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v63 = v66[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v68 = v64;
    v42 = sub_2410FAD78(v14, v15);
    v43 = *(v64 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_49;
    }

    v46 = v41;
    if (*(v64 + 24) >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v41)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_2411548F0();
        if (v46)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      sub_241152C60(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_2410FAD78(v14, v15);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_51;
      }

      v42 = v47;
      if (v46)
      {
LABEL_37:

        v64 = v68;
        v49 = *(v68 + 56);
        v50 = *(v49 + 8 * v42);
        *(v49 + 8 * v42) = v63;

        __swift_destroy_boxed_opaque_existential_1(v67);
        sub_2410FC828(&v71);
        goto LABEL_41;
      }
    }

    v51 = v68;
    *(v68 + 8 * (v42 >> 6) + 64) |= 1 << v42;
    v52 = (v51[6] + 16 * v42);
    *v52 = v14;
    v52[1] = v15;
    *(v51[7] + 8 * v42) = v63;

    __swift_destroy_boxed_opaque_existential_1(v67);
    sub_2410FC828(&v71);
    v53 = v51[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_50;
    }

    v64 = v51;
    v51[2] = v55;
LABEL_41:
    v2 = v65;
    v8 = v11;
  }

  while (v6);
LABEL_9:
  if (v7 <= v8 + 1)
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {
      v6 = 0;
      v75 = 0;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      goto LABEL_17;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_241166428();
  __break(1u);
  return result;
}

unint64_t sub_24114FD84()
{
  result = qword_27E531100;
  if (!qword_27E531100)
  {
    sub_2410FCF28(255, &qword_27E5307A0, 0x277D08268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531100);
  }

  return result;
}

unint64_t sub_24114FDEC()
{
  result = qword_27E531110;
  if (!qword_27E531110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531110);
  }

  return result;
}

uint64_t sub_24114FE4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531120, &unk_2411695B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24114FEE0(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531120, &unk_2411695B0);

  return sub_24114F5C4(a1, a2);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon19IDSLookupControllerV5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24114FF9C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24114FFF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24115006C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2411651A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24115013C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2411651A8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2411501F4(uint64_t a1)
{
  result = sub_2411651A8();
  if (v2 <= 0x3F)
  {
    result = sub_2410FCF28(319, &qword_27E5310D0, 0x277D85C78);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_241150288(uint64_t a1)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_241165DE8();
}

uint64_t sub_2411502D8(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_2411502FC, 0, 0);
}

uint64_t sub_2411502FC()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
  v0[12] = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {
    v5 = v0[9];
    v4 = v0[10];

    v6 = sub_2410FAD78(v5, v4);
    if (v7)
    {
      v8 = *(*(v3 + 56) + 8 * v6);

      sub_2410FF8BC();

      v9 = v0[1];

      return v9(v8);
    }
  }

  v11 = *(v0[11] + 16);
  type metadata accessor for AppExtensionConnection();
  swift_allocObject();

  v12 = swift_task_alloc();
  v0[13] = v12;
  *v12 = v0;
  v12[1] = sub_24115060C;
  v13 = v0[11];

  return sub_2410FE348(v11, sub_241151EA4, v13);
}

uint64_t sub_24115060C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_241150A3C;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_24115073C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24115073C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v1[4] = &off_2852EC388;
  swift_unknownObjectWeakAssign();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v4;
  v8 = v1[8];
  v9 = v1[9];
  v1[8] = sub_241155EAC;
  v1[9] = v7;

  sub_241100400(v8, v9);

  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v5;
  v11[4] = v4;
  v12 = v1[10];
  v13 = v1[11];
  v1[10] = sub_241151F3C;
  v1[11] = v11;

  sub_241100400(v12, v13);

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v2 + v3);
  *(v2 + v3) = 0x8000000000000000;
  sub_2411539DC(v1, v5, v4, isUniquelyReferenced_nonNull_native);

  *(v2 + v3) = v22;
  swift_endAccess();
  v16 = *(v0 + 112);
  v15 = *(v0 + 120);

  sub_2410FF8BC();

  if (v16)
  {
    *(v0 + 64) = v16;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
    if (swift_dynamicCast() && *(v0 + 128) == 5)
    {

      sub_241100310();
      swift_allocError();
      *v18 = 5;
      swift_willThrow();
    }

    v19 = *(v0 + 8);

    return v19();
  }

  else
  {
    v21 = *(v0 + 8);

    return v21(v15);
  }
}

uint64_t sub_241150A3C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_241150AA0(void *a1)
{
  v2 = objc_opt_self();
  v3 = &unk_2852F14D0;
  v4 = [v2 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];
}

uint64_t sub_241150B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    sub_241151F5C(a2, a3);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_241150BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = swift_task_alloc();
  v4[26] = v5;
  *v5 = v4;
  v5[1] = sub_241150C7C;

  return sub_2411502D8(0xD000000000000018, 0x800000024116A380);
}

uint64_t sub_241150C7C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_241150DB0, 0, 0);
  }
}

uint64_t sub_241150DB0()
{
  if (*(v0[25] + 16))
  {
    v1 = swift_task_alloc();
    v0[30] = v1;
    *v1 = v0;
    v1[1] = sub_2411510DC;
    v2 = v0[27];
    v3 = v0[23];
    v4 = v0[24];

    return sub_241155874((v0 + 2), v2, v3, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[28] = v6;
    *v6 = v0;
    v6[1] = sub_241150ECC;
    v7 = v0[27];
    v8 = v0[23];
    v9 = v0[24];

    return sub_241155084((v0 + 12), v7, v8, v9);
  }
}

uint64_t sub_241150ECC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_241151078;
  }

  else
  {
    v2 = sub_241150FE0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241150FE0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 112);
  v5 = *(v0 + 136);
  v6 = *(v0 + 120);
  *v1 = *(v0 + 96);
  *(v1 + 16) = v4;
  *(v1 + 24) = v6;
  *(v1 + 40) = v5;
  *(v1 + 56) = v3;
  *(v1 + 72) = v2;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_241151078()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2411510DC()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_241151288;
  }

  else
  {
    v2 = sub_2411511F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2411511F0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 16) = v4;
  *(v1 + 24) = v6;
  *(v1 + 40) = v5;
  *(v1 + 56) = v3;
  *(v1 + 72) = v2;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_241151288()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2411512EC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = sub_241165078();
  v13 = sub_241165FB8();
  (*(v9 + 16))(v11, a1, v8);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a3;
  (*(v9 + 32))(v15 + v14, v11, v8);
  aBlock[4] = sub_241155CC4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241151668;
  aBlock[3] = &block_descriptor_11;
  v16 = _Block_copy(aBlock);

  v17 = a3;

  [v19 messagesDataPayloadFor:v17 messagesDetailsURL:v12 requiredRegistrationCapabilities:v13 reply:v16];
  _Block_release(v16);
}

uint64_t sub_241151500(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 60 == 15)
  {
    if (a1)
    {
      v4 = a1;
    }

    else
    {
      sub_241100310();
      swift_allocError();
      *v8 = 2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
    return sub_241165F68();
  }

  else
  {
    sub_2411351C8(a2, a3);

    sub_241165C98();
    v5 = sub_241165CC8();
    sub_2411653A8();

    v6 = sub_241165CC8();
    sub_241165328();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
    return sub_241165F78();
  }
}

void sub_241151668(uint64_t a1, void *a2, void *a3)
{
  v3 = a3;
  v4 = *(a1 + 32);
  if (a3)
  {

    v5 = a2;
    v6 = v3;
    v3 = sub_241165118();
    v8 = v7;
  }

  else
  {

    v9 = a2;
    v8 = 0xF000000000000000;
  }

  v4(a2, v3, v8);
  sub_241109164(v3, v8);
}

void sub_241151728(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v12 = sub_241165288();
  __swift_project_value_buffer(v12, qword_27E533A20);
  v13 = a2;
  v14 = sub_241165268();
  v15 = sub_241166068();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = a4;
    v19 = a1;
    v20 = v18;
    *v17 = 138412290;
    *(v17 + 4) = v13;
    *v18 = v13;
    v21 = v13;
    _os_log_impl(&dword_2410F8000, v14, v15, "Reaching out to AskTo extension with payload: %@", v17, 0xCu);
    sub_2410FB29C(v20, &qword_27E530E30, &qword_2411676F0);
    v22 = v20;
    a1 = v19;
    a4 = v29;
    MEMORY[0x245CDC5E0](v22, -1, -1);
    v23 = v17;
    a3 = v30;
    MEMORY[0x245CDC5E0](v23, -1, -1);
  }

  v24 = sub_241165FB8();
  (*(v9 + 16))(v11, a1, v8);
  v25 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = v13;
  (*(v9 + 32))(v26 + v25, v11, v8);
  aBlock[4] = sub_241155DD8;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241151668;
  aBlock[3] = &block_descriptor_42;
  v27 = _Block_copy(aBlock);
  v28 = v13;

  [a3 messagesDataPayloadFor:v28 requiredRegistrationCapabilities:v24 reply:v27];
  _Block_release(v27);
}

uint64_t sub_241151A50(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 60 == 15)
  {
    if (a1)
    {
      v4 = a1;
    }

    else
    {
      sub_241100310();
      swift_allocError();
      *v8 = 2;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
    return sub_241165F68();
  }

  else
  {
    sub_2411351C8(a2, a3);

    sub_241165C98();
    v5 = sub_241165CC8();
    sub_2411653A8();

    v6 = sub_241165CC8();
    sub_241165328();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
    return sub_241165F78();
  }
}

uint64_t sub_241151BB8()
{
  sub_2410FB29C(v0 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_client, &qword_27E530658, &unk_241167410);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AppExtensionProxy(uint64_t a1)
{
  result = qword_27E531158;
  if (!qword_27E531158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_241151C90(uint64_t a1)
{
  sub_241151D38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_241151D38(uint64_t a1)
{
  if (!qword_27E531168)
  {
    sub_241165BD8();
    v1 = sub_241166168();
    if (!v2)
    {
      atomic_store(v1, &qword_27E531168);
    }
  }
}

unint64_t sub_241151DA4()
{
  result = qword_27E531170;
  if (!qword_27E531170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531170);
  }

  return result;
}

uint64_t sub_241151DF8(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_241150288(a1);
}

uint64_t sub_241151E4C(uint64_t a1)
{
  result = sub_241154D68(&qword_27E531178, type metadata accessor for AppExtensionProxy, &unk_241169768);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_241151EC0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_18Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_241151F5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2410FAD78(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_241154C08(&qword_27E5307F8, &qword_2411674C8);
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_241153490(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_241152004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2410FAD78(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24115436C();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for PendingAskStore.Metadata(0);
    v19 = *(v12 - 8);
    sub_2410FC768(v11 + *(v19 + 72) * v8, a3);
    sub_241153640(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for PendingAskStore.Metadata(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_24115215C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_2410FAD78(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_241154904();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 16 * v6);
  sub_24115382C(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_24115220C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307A8, &qword_241167490);
  result = sub_241166368();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
        v22 = v20;
      }

      result = sub_241166138();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24115247C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PendingAskStore.Metadata(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530690, &qword_241167450);
  v40 = v4;
  result = sub_241166368();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_2410FC768(v28, v41);
      }

      else
      {
        sub_241139C34(v28, v41);
      }

      sub_2411664A8();
      sub_241165E28();
      result = sub_2411664C8();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_2410FC768(v41, *(v9 + 56) + v27 * v17);
      ++*(v9 + 16);
      v7 = v38;
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

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2411527B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_2411659F8();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2411651A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530798, &qword_241167488);
  v47 = v4;
  result = sub_241166368();
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

      sub_241154D68(&qword_27E530780, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_241165D88();
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

uint64_t sub_241152C74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530698, &qword_241167458);
  v33 = v4;
  result = sub_241166368();
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
      }

      sub_2411664A8();
      sub_241165E28();
      result = sub_2411664C8();
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

uint64_t sub_241152F40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_241166368();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_2411664A8();
      sub_241165E28();
      result = sub_2411664C8();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_2411531F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_241166368();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_2411664A8();
      sub_241165E28();
      result = sub_2411664C8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_241153490(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2411661C8() + 1) & ~v5;
    do
    {
      sub_2411664A8();

      sub_241165E28();
      v9 = sub_2411664C8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_241153640(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2411661C8() + 1) & ~v5;
    while (1)
    {
      sub_2411664A8();

      sub_241165E28();
      v9 = sub_2411664C8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for PendingAskStore.Metadata(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
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

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24115382C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2411661C8() + 1) & ~v5;
    do
    {
      sub_2411664A8();

      sub_241165E28();
      v9 = sub_2411664C8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2411539DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2410FAD78(a2, a3);
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
      sub_2411531F0(v16, a4 & 1, &qword_27E5307F8, &qword_2411674C8);
      v11 = sub_2410FAD78(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_241166428();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_241154C08(&qword_27E5307F8, &qword_2411674C8);
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

uint64_t sub_241153B7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2410FADF0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_24115220C(v13, a3 & 1);
      v8 = sub_2410FADF0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_241115980();
        sub_241166428();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      v16 = v8;
      sub_241154208();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v20 = v18[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v18[2] = v21;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  *(v18[7] + 8 * v8) = a1;
}

void sub_241153CE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2410FAD78(a2, a3);
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
      sub_241152F40(v16, a4 & 1, &qword_27E5307B0, &qword_241167498);
      v11 = sub_2410FAD78(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_241166428();
        __break(1u);
_objc_release_x1:
        MEMORY[0x2821F96F8]();
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_241154A98(&qword_27E5307B0, &qword_241167498);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    goto _objc_release_x1;
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

void sub_241153E84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2410FAD78(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_24115436C();
      goto LABEL_7;
    }

    sub_24115247C(v15, a4 & 1);
    v21 = sub_2410FAD78(a2, a3);
    if ((v16 & 1) == (v22 & 1))
    {
      v12 = v21;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_241166428();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for PendingAskStore.Metadata(0) - 8) + 72) * v12;

    sub_241154DB0(a1, v20);
    return;
  }

LABEL_13:
  sub_241154170(v12, a2, a3, a1, v18);
}

void sub_241153FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2410FAD78(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_241152C74(v18, a5 & 1);
      v13 = sub_2410FAD78(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_241166428();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_241154904();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;
}

uint64_t sub_241154170(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PendingAskStore.Metadata(0);
  result = sub_2410FC768(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_241154208()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307A8, &qword_241167490);
  v2 = *v0;
  v3 = sub_241166358();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

void sub_24115436C()
{
  v1 = v0;
  v2 = type metadata accessor for PendingAskStore.Metadata(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530690, &qword_241167450);
  v4 = *v0;
  v5 = sub_241166358();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_241139C34(*(v4 + 56) + v26, v30);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_2410FC768(v25, *(v27 + 56) + v26);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

char *sub_24115459C()
{
  v1 = v0;
  v41 = sub_2411659F8();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2411651A8();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530798, &qword_241167488);
  v4 = *v0;
  v5 = sub_241166358();
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

void *sub_241154904()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530698, &qword_241167458);
  v2 = *v0;
  v3 = sub_241166358();
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
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

id sub_241154A98(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_241166358();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

void *sub_241154C08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_241166358();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

uint64_t sub_241154D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_241154DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingAskStore.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_241154E14(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_241165BD8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277CEED80], v5);
  v9 = sub_241165BC8();
  v10 = *(v6 + 8);
  v10(v8, v5);
  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (sub_241165368() != 0xD00000000000001DLL || 0x800000024116A040 != v11)
  {
    v13 = sub_2411663E8();

    v12 = 0;
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_6:
    v12 = 1;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  type metadata accessor for AppExtensionProxy(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
  v16 = sub_2410FB218(MEMORY[0x277D84F90]);
  v10(a1, v5);
  *(v14 + v15) = v16;
  *(v14 + 16) = v12;
  sub_2410FB22C(v4, v14 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_client);
  return v14;
}

uint64_t sub_241155084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a3;
  v4[34] = a4;
  v4[31] = a1;
  v4[32] = a2;
  v4[35] = type metadata accessor for MessagesBackwardCompatibilityURLProvider(0);
  v4[36] = swift_task_alloc();
  v5 = sub_2411650D8();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241155178, 0, 0);
}

uint64_t sub_241155178()
{
  sub_2410FFE1C();
  sub_241100374((v0 + 22), (v0 + 26));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531188, &qword_2411697F0);
  if (swift_dynamicCast())
  {
    v1 = v0[36];
    v2 = v0[33];
    v0[40] = v0[30];
    *v1 = v2;
    v3 = v2;
    sub_241165778();
    v4 = swift_task_alloc();
    v0[41] = v4;
    *v4 = v0;
    v4[1] = sub_24115530C;
    v5 = v0[39];

    return sub_241106CDC(v5);
  }

  else
  {
    sub_241100310();
    swift_allocError();
    *v7 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v0 + 22);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_24115530C()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  sub_241155C58(*(v2 + 288));
  if (v0)
  {
    v3 = sub_241155750;
  }

  else
  {
    v3 = sub_241155440;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241155440()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[33];
  v3 = v0[34];
  v5 = swift_task_alloc();
  v0[43] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[44] = v6;
  *v6 = v0;
  v6[1] = sub_241155548;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000061, 0x800000024116C740, sub_241155CB4, v5, &type metadata for MessagesPayload);
}

uint64_t sub_241155548()
{
  *(*v1 + 360) = v0;

  if (v0)
  {

    v2 = sub_2411557D0;
  }

  else
  {
    v2 = sub_241155664;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241155664()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 248);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v5 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v5;
  *(v0 + 160) = *(v0 + 80);
  v6 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v6;
  (*(v3 + 8))(v1, v2);
  *v4 = *(v0 + 96);
  v7 = *(v0 + 112);
  v8 = *(v0 + 128);
  v9 = *(v0 + 160);
  v4[3] = *(v0 + 144);
  v4[4] = v9;
  v4[1] = v7;
  v4[2] = v8;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_241155750()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2411557D0()
{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[38];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_241155874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2822009F8](sub_241155898, 0, 0);
}

uint64_t sub_241155898()
{
  sub_2410FFE1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531188, &qword_2411697F0);
  if (swift_dynamicCast())
  {
    v2 = v0[19];
    v1 = v0[20];
    v3 = v0[16];
    v0[21] = v3;
    v4 = swift_task_alloc();
    v0[22] = v4;
    v4[2] = v2;
    v4[3] = v3;
    v4[4] = v1;
    v5 = swift_task_alloc();
    v0[23] = v5;
    *v5 = v0;
    v5[1] = sub_241155A50;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000060, 0x800000024116C800, sub_241155CF4, v4, &type metadata for MessagesPayload);
  }

  else
  {
    sub_241100310();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_241155A50()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_241155BEC;
  }

  else
  {
    v2 = sub_241155B64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241155B64()
{
  v1 = *(v0 + 136);
  swift_unknownObjectRelease();
  *v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 80);
  v1[3] = *(v0 + 64);
  v1[4] = v4;
  v1[1] = v2;
  v1[2] = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_241155BEC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_241155C58(uint64_t a1)
{
  v2 = type metadata accessor for MessagesBackwardCompatibilityURLProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_33Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241155DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8) - 8);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9, v10, v11);
}

char *sub_241155EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5311B8, &qword_241169848);
  v7 = swift_allocObject();
  v8 = sub_2410FC338(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5311C0, &unk_241169850);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  v10 = (v9 + 24);
  *(v9 + 16) = v8;
  v11 = v9 + 16;
  *(v7 + 16) = v9;

  os_unfair_lock_lock(v10);
  sub_2411570BC(v11);
  v12 = qword_27E530B10;
  os_unfair_lock_unlock(v10);

  *&v3[v12] = v7;
  v13 = &v3[qword_27E530B00];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = objc_allocWithZone(MEMORY[0x277CCAE98]);

  v15 = sub_241165DA8();

  v16 = [v14 initWithMachServiceName_];

  *&v3[qword_27E530B08] = v16;
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  [*&v17[qword_27E530B08] setDelegate_];
  return v17;
}

uint64_t sub_241156068(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 >> 62)
  {
LABEL_27:
    result = sub_2411661F8();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v24 = v2;
      v25 = v2 & 0xC000000000000001;
      v22 = v2 & 0xFFFFFFFFFFFFFF8;
      v23 = v4;
      do
      {
        if (v25)
        {
          v7 = MEMORY[0x245CDBC20](v5, v2);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v5 >= *(v22 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v2 + 8 * v5 + 32);

          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v26 = v8;
        sub_241165C18();
        sub_2411570D8();
        sub_2411662C8();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = v3;
        v11 = *v3;
        v27 = *v3;
        v2 = sub_2410FAD78(v28, v29);
        v13 = v11[2];
        v14 = (v12 & 1) == 0;
        v15 = v13 + v14;
        if (__OFADD__(v13, v14))
        {
          goto LABEL_24;
        }

        v3 = v12;
        if (v11[3] >= v15)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v12)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_241154BF4();
            if (v3)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_2411531DC(v15, isUniquelyReferenced_nonNull_native);
          v16 = sub_2410FAD78(v28, v29);
          if ((v3 & 1) != (v17 & 1))
          {
            result = sub_241166428();
            __break(1u);
            return result;
          }

          v2 = v16;
          if (v3)
          {
LABEL_4:

            v6 = v27;
            *(v27[7] + 8 * v2) = v7;

            goto LABEL_5;
          }
        }

        v6 = v27;
        v27[(v2 >> 6) + 8] |= 1 << v2;
        v18 = (v27[6] + 16 * v2);
        *v18 = v28;
        v18[1] = v29;
        *(v27[7] + 8 * v2) = v7;

        v19 = v27[2];
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          goto LABEL_25;
        }

        v27[2] = v21;
LABEL_5:
        v3 = v10;
        *v10 = v6;
        ++v5;
        v2 = v24;
      }

      while (v26 != v23);
    }
  }

  return result;
}

uint64_t Daemon.__allocating_init()()
{
  v0 = swift_allocObject();
  Daemon.init()();
  return v0;
}

uint64_t Daemon.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = sub_241165268();
  v4 = sub_241166068();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2410F8000, v3, v4, "Initializing daemon", v5, 2u);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  v6 = sub_241165268();
  v7 = sub_241166068();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2410F8000, v6, v7, "Daemon entering sandbox", v8, 2u);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  if (_set_user_dir_suffix())
  {
    v9 = sub_241165268();
    v10 = sub_241166068();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2410F8000, v9, v10, "Creating IDS service and adding service delegate", v11, 2u);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    if (qword_27E530638 != -1)
    {
      swift_once();
    }

    *(v0 + 24) = qword_27E533BE8;

    v12 = sub_241165268();
    v13 = sub_241166068();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2410F8000, v12, v13, "Creating Biome listener", v14, 2u);
      MEMORY[0x245CDC5E0](v14, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5311A8, &qword_241169800);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2411673F0;
    type metadata accessor for ScreenTimeRequestBiomeEventHandler();
    *(v15 + 32) = sub_2411042F4();
    *(v15 + 40) = &off_281A914D8;
    *(v1 + 32) = v15;
    return v1;
  }

  else
  {
    result = sub_241166328();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Daemon.startup()()
{
  v1 = v0;
  v3 = qword_27E531198;
  v2 = off_27E5311A0;
  v4 = qword_27E530580;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_241165288();
  __swift_project_value_buffer(v5, qword_27E5339F0);

  v6 = sub_241165268();
  v7 = sub_241166068();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_241156B38(v3, v2, &v28);
    _os_log_impl(&dword_2410F8000, v6, v7, "Starting daemon - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  v10 = sub_241165268();
  v11 = sub_241166068();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2410F8000, v10, v11, "Creating and resuming client connection listener", v12, 2u);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5311B0, &qword_241169808));

  v14 = sub_241155EB0(v3, v2);
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27E533A08);
  v15 = v14;
  v16 = sub_241165268();
  v17 = sub_241166068();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_241156B38(*&v15[qword_27E530B00], *&v15[qword_27E530B00 + 8], &v28);
    _os_log_impl(&dword_2410F8000, v16, v17, "Resuming XPC listener for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CDC5E0](v19, -1, -1);
    MEMORY[0x245CDC5E0](v18, -1, -1);
  }

  [*&v15[qword_27E530B08] resume];
  v20 = *(v1 + 16);
  *(v1 + 16) = v15;
  v26 = v15;

  if (qword_27E530648 != -1)
  {
    swift_once();
  }

  [*(qword_27E533C00 + OBJC_IVAR____TtC11AskToDaemon23NotificationsController_userNotificationCenter) setWantsNotificationResponsesDelivered];

  v21 = sub_241165268();
  v22 = sub_241166068();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315138;
    v25 = sub_241156B38(v3, v2, &v28);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_2410F8000, v21, v22, "Daemon started - %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x245CDC5E0](v24, -1, -1);
    MEMORY[0x245CDC5E0](v23, -1, -1);
  }

  else
  {
  }
}

uint64_t Daemon.deinit()
{

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_241156B38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_241156C04(v11, 0, 0, 1, a1, a2);
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
    sub_241100374(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_241156C04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_241156D10(a5, a6);
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
    result = sub_2411662F8();
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

void *sub_241156D10(uint64_t a1, unint64_t a2)
{
  v3 = sub_241156D5C(a1, a2);
  sub_241156E8C(&unk_2852EA840);
  return v3;
}

void *sub_241156D5C(uint64_t a1, unint64_t a2)
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

  v6 = sub_241130428(v5, 0);
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

  result = sub_2411662F8();
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
        v10 = sub_241165E58();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_241130428(v10, 0);
        result = sub_2411662A8();
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

uint64_t sub_241156E8C(uint64_t result)
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

  result = sub_241156F78(result, v11, 1, v3);
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

char *sub_241156F78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D30, &unk_241168530);
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

unint64_t sub_2411570D8()
{
  result = qword_27E5311C8;
  if (!qword_27E5311C8)
  {
    sub_241165C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5311C8);
  }

  return result;
}

uint64_t sub_241157198()
{
  sub_2411003D8(v0 + 16);

  return v0;
}

uint64_t sub_2411571C8()
{
  sub_241157198();

  return swift_deallocClassInstance();
}

unint64_t sub_241157228()
{
  result = qword_27E5312B0;
  if (!qword_27E5312B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5312B8, qword_241169968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312B0);
  }

  return result;
}

uint64_t sub_24115728C()
{
  sub_2411664A8();
  sub_241165E28();
  return sub_2411664C8();
}

uint64_t sub_241157300(uint64_t a1)
{
  sub_2411664A8();
  sub_241165E28();
  return sub_2411664C8();
}

uint64_t sub_241157354@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_241166388();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_2411573F8()
{
  result = qword_27E5312C0;
  if (!qword_27E5312C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312C0);
  }

  return result;
}

unint64_t sub_24115744C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  sub_241157F70();
  v1 = sub_241164F88();
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v2)
  {
    sub_241166318();
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v3;
}

uint64_t sub_241157548(uint64_t a1)
{
  v2 = sub_241157F1C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241157584(uint64_t a1)
{
  v2 = sub_241157F1C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2411575C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241157660, 0, 0);
}

uint64_t sub_241157660()
{
  v1 = v0[21];
  v2 = sub_241165BD8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  type metadata accessor for AppExtensionProxy(0);
  v3 = swift_allocObject();
  v0[22] = v3;
  v4 = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
  *(v3 + v4) = sub_2410FB218(MEMORY[0x277D84F90]);
  *(v3 + 16) = 1;
  sub_2410FB22C(v1, v3 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_client);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v6;
  v7 = sub_2410FB2FC(inited);
  v0[23] = v7;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_241157804;
  v9 = v0[20];

  return sub_241150BD0((v0 + 2), v9, v7);
}

uint64_t sub_241157804()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_241157CB4;
  }

  else
  {
    v2 = sub_241157938;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_241157938()
{
  v27 = v0;
  v1 = v0[2];
  v2 = v0[3];
  if (v2 >> 60 == 15)
  {
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v3 = sub_241165288();
    __swift_project_value_buffer(v3, qword_27E533AC8);
    v4 = sub_241165268();
    v5 = sub_241166048();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2410F8000, v4, v5, "The data for the messages paylaod obtained from the extension was nil.", v6, 2u);
      MEMORY[0x245CDC5E0](v6, -1, -1);
    }

    sub_241157E5C();
    swift_allocError();
    swift_willThrow();
    sub_241102CC0((v0 + 2));

    v7 = v0[1];
  }

  else
  {
    sub_241134D44(v0[2], v0[3]);
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v8 = v0[20];
    v9 = sub_241165288();
    __swift_project_value_buffer(v9, qword_27E533AC8);

    v10 = v8;
    v11 = sub_241165268();
    v12 = sub_241166068();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v0[19];
      v14 = v0[18];
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26[0] = v25;
      *v15 = 136315394;
      *(v15 + 4) = sub_241156B38(v14, v13, v26);
      *(v15 + 12) = 2080;
      v16 = sub_241165CD8();
      if (v16)
      {
        v17 = v16;
        v18 = sub_241165698();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = sub_241156B38(v18, v20, v26);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_2410F8000, v11, v12, "Updating message with GUID %s in Messages with response: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v25, -1, -1);
      MEMORY[0x245CDC5E0](v15, -1, -1);
    }

    v22 = sub_241165DA8();
    v23 = sub_2411650F8();
    IMSPIUpdatePluginMessageWithGUID();
    sub_241102CC0((v0 + 2));
    sub_241109164(v1, v2);

    v7 = v0[1];
  }

  return v7();
}