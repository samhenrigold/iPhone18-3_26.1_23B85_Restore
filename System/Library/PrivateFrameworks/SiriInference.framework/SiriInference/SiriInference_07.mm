unint64_t sub_1DD41B22C()
{
  result = qword_1ECCDC730;
  if (!qword_1ECCDC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC730);
  }

  return result;
}

uint64_t sub_1DD41B280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DD41B2C8()
{
  result = qword_1ECCDC748;
  if (!qword_1ECCDC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC748);
  }

  return result;
}

uint64_t sub_1DD41B31C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DD41B388@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD5F8668(*a1, *(v3 + 24), 2);
  *a2 = result;
  return result;
}

uint64_t sub_1DD41B3D0()
{
  v1 = OUTLINED_FUNCTION_43();
  v2(v1);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1DD41B424(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD41B494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC700, &qword_1DD64AE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD41B520(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverCache(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD41B584(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v4(v3);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return a2;
}

unint64_t sub_1DD41B5DC()
{
  result = qword_1ECCDC758;
  if (!qword_1ECCDC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC758);
  }

  return result;
}

void sub_1DD41B664(uint64_t a1, void **a2, uint64_t *a3, void *a4)
{
  if (*a2)
  {
    v6 = *a2;
    v7 = sub_1DD63FDD8();
    v9 = v8;

    *a3 = v7;
    *a4 = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD41B6C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE16F0C0;
  v8 = &v6[*(v4 + 20)];
  *v8 = "ContactPermissionChecker";
  *(v8 + 1) = 24;
  v8[16] = 2;
  v9 = v7;
  sub_1DD63F9B8();
  *&v6[*(v4 + 24)] = v9;
  v9;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v28 = v6;
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v14 = v28;
  sub_1DD63F998();

  aBlock = a1;
  v30 = a2;
  v35 = 0x6C7070612E6D6F63;
  v36 = 0xEA00000000002E65;
  sub_1DD3B52B8();
  sub_1DD3B530C();
  if (sub_1DD63FD48())
  {
    v15 = 1;
LABEL_19:
    sub_1DD6404C8();
    sub_1DD63F9A8();
    sub_1DD41BFFC(v14);
    return v15;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  result = tcc_message_options_create();
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  tcc_message_options_set_reply_handler_policy();
  v27 = a1;
  sub_1DD63FE68();
  v18 = tcc_identity_create();

  if (!v18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = tcc_server_create();
  if (result)
  {
    v33 = sub_1DD41BFDC;
    v34 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1DD41BF5C;
    v32 = &block_descriptor_2;
    v19 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    tcc_server_message_get_authorization_records_by_identity();
    _Block_release(v19);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_beginAccess();
    if (*(v16 + 16) == 1)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
      }

      v20 = sub_1DD63F9F8();
      __swift_project_value_buffer(v20, qword_1EE16F068);

      v21 = sub_1DD63F9D8();
      v22 = sub_1DD640368();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_18;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *(v23 + 4) = OUTLINED_FUNCTION_1_27(4.8149e-34);
      v25 = "%s has permission to access 1p contacts";
    }

    else
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_5(&qword_1EE165FB0);
      }

      v26 = sub_1DD63F9F8();
      __swift_project_value_buffer(v26, qword_1EE16F068);

      v21 = sub_1DD63F9D8();
      v22 = sub_1DD640368();

      if (!os_log_type_enabled(v21, v22))
      {
        goto LABEL_18;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *(v23 + 4) = OUTLINED_FUNCTION_1_27(4.8149e-34);
      v25 = "%s does not have permission to access 1p contacts";
    }

    _os_log_impl(&dword_1DD38D000, v21, v22, v25, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12B3DA0](v24, -1, -1);
    MEMORY[0x1E12B3DA0](v23, -1, -1);
LABEL_18:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v14 = v28;
    v15 = *(v16 + 16);

    goto LABEL_19;
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_1DD41BC30(uint64_t a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    if (tcc_authorization_record_get_service())
    {
      tcc_service_get_name();
      v5 = sub_1DD63FF68();
      v7 = v6;
      if (qword_1ECCDB060 != -1)
      {
        swift_once();
      }

      v8 = v5 == qword_1ECD0DD50 && v7 == *algn_1ECD0DD58;
      if (v8 || (sub_1DD640CD8() & 1) != 0)
      {
        goto LABEL_20;
      }

      if (qword_1ECCDB058 != -1)
      {
        swift_once();
      }

      if (v5 == qword_1ECD0DD40 && v7 == *algn_1ECD0DD48)
      {
LABEL_20:
      }

      else
      {
        v10 = sub_1DD640CD8();

        if ((v10 & 1) == 0)
        {
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return;
        }
      }

      authorization_right = tcc_authorization_record_get_authorization_right();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_beginAccess();
      *(a3 + 16) = authorization_right == 2;
      return;
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v12 = qword_1EE165FB0;
    v13 = a2;
    if (v12 != -1)
    {
      swift_once();
    }

    v14 = sub_1DD63F9F8();
    __swift_project_value_buffer(v14, qword_1EE16F068);
    v15 = v13;
    oslog = sub_1DD63F9D8();
    v16 = sub_1DD640378();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 136315138;
      v24[3] = v15;
      type metadata accessor for CFError(0);
      v19 = v15;
      v20 = sub_1DD63FE38();
      v22 = sub_1DD39565C(v20, v21, v24);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1DD38D000, oslog, v16, "error when checking tcc: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
      MEMORY[0x1E12B3DA0](v17, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1DD41BF5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD41BFFC(uint64_t a1)
{
  v2 = type metadata accessor for Signpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContactQuery.toUsoPerson()()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(v15, v0, sizeof(v15));
  sub_1DD41C264();
  MEMORY[0x1E12B09F0]();
  sub_1DD63E6B8();
  sub_1DD63E7D8();
  v1 = v15[0];
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  sub_1DD3C9478(__dst, v15);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  sub_1DD3C9580(__dst);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    memcpy(v13, __dst, sizeof(v13));
    v7 = sub_1DD3C9478(__dst, v15);
    v8 = ContactQuery.description.getter(v7);
    v10 = v9;
    memcpy(v15, v13, sizeof(v15));
    sub_1DD3C9580(v15);
    v11 = sub_1DD39565C(v8, v10, &v14);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1DD38D000, v3, v4, "Converted ContactQuery %s to UsoEntity_common_person", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  return v1;
}

uint64_t sub_1DD41C264()
{
  v1 = sub_1DD63E658();
  v57 = *(v1 - 8);
  v58 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v56 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DD63E448();
  v86 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1DD63DEA8();
  v59 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v67 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = *(v0 + 16);
  v7 = *(v0 + 24);
  v69 = *(v0 + 32);
  v70 = v7;
  v8 = *(v0 + 40);
  v78 = *(v0 + 48);
  v79 = v8;
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 80);
  v13 = *(v0 + 96);
  v77 = *(v0 + 88);
  v14 = *(v0 + 120);
  v80 = *(v0 + 128);
  v15 = *(v0 + 144);
  v85 = *(v0 + 136);
  v83 = v14;
  v84 = v15;
  v16 = *(v0 + 152);
  v71 = *(v0 + 160);
  v72 = v16;
  v17 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(v0 + 192);
  v73 = *(v0 + 184);
  v74 = v17;
  v60 = v18;
  v61 = v19;
  v20 = *(v0 + 200);
  v75 = *(v0 + 208);
  v21 = *(v0 + 224);
  v22 = *(v0 + 232);
  v62 = v20;
  v63 = v21;
  v23 = *(v0 + 240);
  v64 = v22;
  v65 = v23;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v68 = v5;
  v66 = v3;
  v24 = sub_1DD63F9F8();
  __swift_project_value_buffer(v24, qword_1EE16F068);
  v25 = sub_1DD63F9D8();
  v26 = sub_1DD640368();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DD38D000, v25, v26, "Converting ContactQuery to Converting UsoEntity_common_Person", v27, 2u);
    MEMORY[0x1E12B3DA0](v27, -1, -1);
  }

  sub_1DD63EBD8();
  swift_allocObject();
  v28 = sub_1DD63EBC8();
  v29 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v29 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    sub_1DD63EB98();
  }

  v30 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v30 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    sub_1DD63EBB8();
  }

  v31 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v31 = v77 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    sub_1DD63EBA8();
  }

  v32 = (v78 >> 56) & 0xF;
  if ((v78 & 0x2000000000000000) == 0)
  {
    v32 = v79 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {
    sub_1DD63EB68();
  }

  v33 = HIBYTE(v80) & 0xF;
  if ((v80 & 0x2000000000000000) == 0)
  {
    v33 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    sub_1DD63EB78();
  }

  v34 = HIBYTE(v84) & 0xF;
  if ((v84 & 0x2000000000000000) == 0)
  {
    v34 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v34)
  {
    sub_1DD63EB88();
  }

  v35 = v66;
  v36 = *(v65 + 16);
  v37 = v67;
  v38 = v68;
  if (v36)
  {
    LODWORD(v80) = *MEMORY[0x1E69D1B30];
    v39 = *(v86 + 104);
    v78 = (v86 + 8);
    v79 = v39;
    v77 = (v59 + 8);
    v40 = (v65 + 72);
    v81 = v28;
    do
    {
      v85 = *(v40 - 4);
      v86 = v36;
      v41 = *(v40 - 2);
      v42 = *v40;
      v40 += 6;
      v83 = v41;
      v84 = v42;
      (v79)(v38, v80, v35);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_1DD63E438();
      (*v78)(v38, v35);
      sub_1DD63DE78();

      sub_1DD63DD38();
      (*v77)(v37, v82);
      v36 = v86 - 1;
    }

    while (v86 != 1);
  }

  sub_1DD63E9E8();
  swift_allocObject();
  v43 = sub_1DD63E9D8();

  sub_1DD63E978();

  v44 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v44 = v70 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    sub_1DD63E9C8();
  }

  v45 = HIBYTE(v71) & 0xF;
  if ((v71 & 0x2000000000000000) == 0)
  {
    v45 = v72 & 0xFFFFFFFFFFFFLL;
  }

  v46 = v74;
  v47 = v75;
  v48 = v73;
  if (v45)
  {
    sub_1DD63ED38();
    swift_allocObject();
    sub_1DD63ED28();
    sub_1DD63ED18();

    sub_1DD63E988();
  }

  v49 = v47;
  if (v48)
  {
    sub_1DD63EDD8();
    swift_allocObject();

    sub_1DD63EDC8();
    v50 = v60;
    sub_1DD63EDA8();
    if (v46)
    {
      memcpy(v88, (v46 + 16), sizeof(v88));
      memcpy(v87, (v46 + 16), sizeof(v87));

      sub_1DD3C9478(v88, v89);
      sub_1DD41C264();
      memcpy(v89, v87, 0x108uLL);
      sub_1DD3C9580(v89);

      sub_1DD63EDB8();
    }

    sub_1DD63E998();

    sub_1DD4178B4(v46, v50, v48);
  }

  if (v49)
  {
    if (v61 == 1)
    {
      sub_1DD63ED08();
      swift_allocObject();
      sub_1DD63ECF8();
      sub_1DD63ECD8();
      sub_1DD63ECE8();
    }

    else
    {
      if (v61 == 2)
      {
        sub_1DD63ECA8();
        swift_allocObject();
        sub_1DD63EC98();
        sub_1DD63EC78();
        sub_1DD63EC88();
      }

      else
      {
        sub_1DD63ED78();
        swift_allocObject();
        sub_1DD63ED68();
        sub_1DD63ED48();
        sub_1DD63ED58();
      }
    }

    sub_1DD63E9A8();
  }

  if (v76)
  {
    v52 = v56;
    v51 = v57;
    v53 = v58;
    (*(v57 + 104))(v56, *MEMORY[0x1E69D1BE0], v58);
    sub_1DD63E968();

    (*(v51 + 8))(v52, v53);
  }

  else
  {
  }

  return v43;
}

uint64_t sub_1DD41CAB4(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v3);
  v1 = sub_1DD640278();

  return v1;
}

uint64_t sub_1DD41CB3C(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3)
{
  a1(&v6);
  v4 = MEMORY[0x1E12B2430](v6, a3);

  return v4;
}

uint64_t sub_1DD41CBA4(void *(*a1)(void *__return_ptr))
{
  v1 = a1(v4);
  v2 = ContactQuery.description.getter(v1);
  memcpy(__dst, v4, sizeof(__dst));
  sub_1DD3C9580(__dst);
  return v2;
}

uint64_t sub_1DD41CC10(uint64_t a1)
{
  memcpy(__dst, (v1 + 16), sizeof(__dst));
  memcpy(__src, (v1 + 16), sizeof(__src));
  sub_1DD3C9478(__dst, v6);
  ContactQuery.hash(into:)(a1);
  memcpy(v6, __src, sizeof(v6));
  return sub_1DD3C9580(v6);
}

uint64_t sub_1DD41CC90()
{
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  memcpy(__src, (v0 + 16), sizeof(__src));
  v1 = sub_1DD3C9478(__dst, v6);
  v2 = ContactQuery.description.getter(v1);
  memcpy(v6, __src, sizeof(v6));
  sub_1DD3C9580(v6);
  return v2;
}

uint64_t ContactQuery.id.setter()
{
  OUTLINED_FUNCTION_14_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t ContactQuery.fullName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t ContactQuery.namePrefix.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t ContactQuery.givenName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t ContactQuery.middleName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t ContactQuery.familyName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t ContactQuery.previousFamilyName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t ContactQuery.nameSuffix.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t ContactQuery.nickname.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t ContactQuery.organizationName.setter()
{
  OUTLINED_FUNCTION_14_1();

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t ContactQuery.relationship.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[23];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_1DD41D254(v2, v3, v4);
}

uint64_t sub_1DD41D254(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return v3;
}

__n128 ContactQuery.relationship.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];
  sub_1DD4178B4(v1[21], v1[22], v1[23]);
  result = v4;
  *(v1 + 21) = v4;
  v1[23] = v2;
  return result;
}

uint64_t ContactQuery.handle.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[24];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[27];
  v6 = v1[28];
  v7 = v1[29];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1DD4178F8(v2, v3, v4);
}

__n128 ContactQuery.handle.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_1DD3FAA54(v1[24], v1[25], v1[26]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 12) = *a1;
  *(v1 + 13) = v6;
  v1[28] = v3;
  v1[29] = v4;
  return result;
}

double ContactQuery.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xE000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0xE000000000000000;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0xE000000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xE000000000000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 168) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = v2;
  *(a1 + 248) = 1;
  *(a1 + 256) = 0;
  return result;
}

uint64_t sub_1DD41D418@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = *a1;
  v30 = *(a1 + 16);
  v4 = a1[4];
  v40 = a1[3];
  v5 = a1[6];
  v38 = a1[5];
  v36 = a1[7];
  v34 = a1[9];
  v6 = a1[14];
  v7 = a1[16];
  v42 = a1[15];
  v43 = a1[13];
  v8 = a1[18];
  v41 = a1[17];
  v9 = a1[27];
  v35 = a1[8];
  v33 = a1[10];
  v31 = a1[1];
  if (v9[2])
  {
    v10 = v9[7];
    v29 = v9[6];

    v28 = v10;

    v11 = OUTLINED_FUNCTION_24_5();
    sub_1DD4178B4(v11, v12, v13);
  }

  else
  {

    v28 = 0;
    v29 = 0;
  }

  v14 = v5;
  v15 = v4;
  v39 = v8;
  v37 = v7;
  v16 = v6;
  v17 = *(a1 + *(type metadata accessor for Contact(0) + 80));
  if (*(v17 + 16))
  {
    v18 = *(v17 + 48);
    v20 = *(v17 + 56);
    v19 = *(v17 + 64);
    v22 = *(v17 + 72);
    v21 = *(v17 + 80);

    sub_1DD415B40(a1);
    v23 = OUTLINED_FUNCTION_24_5();
    result = sub_1DD3FAA54(v23, v24, v25);
    v27 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    result = sub_1DD415B40(a1);
    v18 = 0;
    v20 = 0;
    v19 = 0;
    v27 = 0;
    v22 = 0;
    v21 = 0;
  }

  *a2 = v32;
  *(a2 + 8) = v31;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = v40;
  *(a2 + 48) = v15;
  *(a2 + 56) = v38;
  *(a2 + 64) = v14;
  *(a2 + 72) = v36;
  *(a2 + 80) = v35;
  *(a2 + 88) = v34;
  *(a2 + 96) = v33;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0xE000000000000000;
  *(a2 + 120) = v43;
  *(a2 + 128) = v16;
  *(a2 + 136) = v42;
  *(a2 + 144) = v37;
  *(a2 + 152) = v41;
  *(a2 + 160) = v39;
  *(a2 + 168) = 0;
  *(a2 + 176) = v29;
  *(a2 + 184) = v28;
  *(a2 + 192) = v18;
  *(a2 + 200) = v20;
  *(a2 + 208) = v19;
  *(a2 + 216) = v27;
  *(a2 + 224) = v22;
  *(a2 + 232) = v21;
  *(a2 + 240) = MEMORY[0x1E69E7CC0];
  *(a2 + 248) = 1;
  *(a2 + 256) = 0;
  return result;
}

uint64_t ContactRelationshipQuery.init(label:fromContact:)(uint64_t a1, uint64_t a2, const void *a3)
{
  OUTLINED_FUNCTION_14_1();
  v7 = v6;
  memcpy(__dst, v8, sizeof(__dst));
  result = sub_1DD3C94D4(__dst);
  if (result == 1)
  {
    v10 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC760, &qword_1DD648250);
    v10 = swift_allocObject();
    result = memcpy((v10 + 16), a3, 0x108uLL);
  }

  *v7 = v10;
  v7[1] = v4;
  v7[2] = v3;
  return result;
}

void __swiftcall ContactHandleQuery.init(type:label:value:)(SiriInference::ContactHandleQuery *__return_ptr retstr, SiriInference::ContactHandle::HandleType type, Swift::String label, Swift::String value)
{
  retstr->type = *type;
  retstr->label = label;
  retstr->normalizedLabels._rawValue = MEMORY[0x1E69E7CC0];
  retstr->value = value;
}

uint64_t ContactQuery.description.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v37 = *(v1 + 16);
  v4 = v1[4];
  v38 = v1[3];
  v39 = v1[20];
  v40 = v1[19];
  v5 = *(v1 + 13);
  v43 = v1[30];
  v6 = *(v1 + 248);
  if (v1[23])
  {
    v36 = *(v1 + 13);
    v7 = ContactRelationshipQuery.description.getter();
    *&v5 = v36;
    v41 = v7;
    v42 = v8;
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  v9 = 0xE000000000000000;
  if (v5)
  {
    v10 = ContactHandleQuery.description.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001DLL, 0x80000001DD66B620);
  LOBYTE(v44[0]) = v6;
  sub_1DD6409F8();
  v13 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v13 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v44[0] = 1029990688;
    v44[1] = 0xE400000000000000;
    MEMORY[0x1E12B2260](v2, v3);
    v14 = 1029990688;
    v9 = 0xE400000000000000;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x1E12B2260](v14, v9);

  if (v37)
  {
    v15 = 0x72743D654D736920;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v37)
  {
    v17 = 0xEA00000000006575;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v15, v17);

  v18 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v18 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    strcpy(v44, " fullName=");
    BYTE3(v44[1]) = 0;
    HIDWORD(v44[1]) = -369098752;
    MEMORY[0x1E12B2260]();
    v19 = v44[0];
    v16 = v44[1];
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x1E12B2260](v19, v16);

  OUTLINED_FUNCTION_1_25();
  if (v20)
  {
    strcpy(v44, " namePrefix=");
    BYTE5(v44[1]) = 0;
    HIWORD(v44[1]) = -5120;
    MEMORY[0x1E12B2260]();
    v21 = v44[0];
    v22 = v44[1];
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v21, v22);

  OUTLINED_FUNCTION_1_25();
  if (v23)
  {
    strcpy(v44, " givenName=");
    HIDWORD(v44[1]) = -352321536;
    MEMORY[0x1E12B2260]();
    v24 = v44[0];
    v25 = v44[1];
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v24, v25);

  OUTLINED_FUNCTION_1_25();
  if (v26)
  {
    strcpy(v44, " middleName=");
    BYTE5(v44[1]) = 0;
    HIWORD(v44[1]) = -5120;
    MEMORY[0x1E12B2260]();
  }

  else
  {
    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  OUTLINED_FUNCTION_1_25();
  if (v27)
  {
    strcpy(v44, " familyName=");
    BYTE5(v44[1]) = 0;
    HIWORD(v44[1]) = -5120;
    MEMORY[0x1E12B2260]();
  }

  else
  {
    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  OUTLINED_FUNCTION_1_25();
  if (v28)
  {
    strcpy(v44, " nameSuffix=");
    BYTE5(v44[1]) = 0;
    HIWORD(v44[1]) = -5120;
    MEMORY[0x1E12B2260]();
  }

  else
  {
    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  OUTLINED_FUNCTION_1_25();
  if (v29)
  {
    strcpy(v44, " nickname=");
    BYTE3(v44[1]) = 0;
    HIDWORD(v44[1]) = -369098752;
    MEMORY[0x1E12B2260]();
  }

  else
  {
    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  v30 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v30 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    sub_1DD6408D8();

    v44[0] = 0xD000000000000012;
    v44[1] = 0x80000001DD66B640;
    MEMORY[0x1E12B2260](v40, v39);
  }

  OUTLINED_FUNCTION_43_4();

  v31 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v31 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v31)
  {
    sub_1DD6408D8();

    strcpy(v44, " relationship=");
    HIBYTE(v44[1]) = -18;
    v32 = OUTLINED_FUNCTION_15();
    MEMORY[0x1E12B2260](v32);
  }

  else
  {

    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  v33 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v33 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    strcpy(v44, " handle=");
    BYTE1(v44[1]) = 0;
    WORD1(v44[1]) = 0;
    HIDWORD(v44[1]) = -402653184;
    MEMORY[0x1E12B2260](v10, v12);
  }

  else
  {

    OUTLINED_FUNCTION_31_6();
  }

  OUTLINED_FUNCTION_43_4();

  if (*(v43 + 16))
  {
    sub_1DD6408D8();

    v44[0] = 0xD000000000000015;
    v44[1] = 0x80000001DD66B660;
    v34 = MEMORY[0x1E12B2430](v43, &unk_1F58B3190);
    MEMORY[0x1E12B2260](v34);
  }

  OUTLINED_FUNCTION_43_4();

  OUTLINED_FUNCTION_65();
  return 0;
}

uint64_t ContactRelationshipQuery.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  if (*v0)
  {
    v3 = sub_1DD41CC90();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_25_4();
    MEMORY[0x1E12B2260](v1, v2);
    v7 = v12;
    v8 = v13;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  MEMORY[0x1E12B2260](v7, v8);

  v9 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    MEMORY[0x1E12B2260](v3, v5);

    v10 = 0x3D6D6F726620;
    v5 = 0xE600000000000000;
  }

  else
  {

    v10 = OUTLINED_FUNCTION_31_6();
  }

  MEMORY[0x1E12B2260](v10, v5);

  OUTLINED_FUNCTION_65();
  return 40;
}

uint64_t ContactHandleQuery.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = 0xE000000000000000;
  LOBYTE(v16) = *v0;
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](40, 0xE100000000000000);
  v7 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    OUTLINED_FUNCTION_25_4();
    MEMORY[0x1E12B2260](v1, v2);
    v8 = v16;
    v6 = v17;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1E12B2260](v8, v6);

  v9 = 0xE000000000000000;
  if (*(v4 + 16))
  {
    sub_1DD6408D8();

    v16 = 0xD000000000000012;
    v17 = 0x80000001DD66B680;
    v10 = MEMORY[0x1E12B2430](v4, MEMORY[0x1E69E6158]);
    MEMORY[0x1E12B2260](v10);

    v11 = 0xD000000000000012;
    v9 = 0x80000001DD66B680;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1E12B2260](v11, v9);

  v12 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v12 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    OUTLINED_FUNCTION_25_4();
    v13 = OUTLINED_FUNCTION_63_0();
    MEMORY[0x1E12B2260](v13);
    v14 = v16;
    v3 = v17;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_31_6();
  }

  MEMORY[0x1E12B2260](v14, v3);

  OUTLINED_FUNCTION_65();
  return 0;
}

void sub_1DD41E024()
{
  v2 = v0[3];
  v1 = v0[4];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[11];
  v5 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 64) = v6;
  *(inited + 72) = v5;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v10 = (inited + 40 + 16 * v8);
  while (1)
  {
    if (v8 == 3)
    {
      swift_setDeallocating();
      sub_1DD46CAFC();
      return;
    }

    if (v8 > 2)
    {
      break;
    }

    ++v8;
    v12 = *(v10 - 1);
    v11 = *v10;
    v10 += 2;
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD42A2D4(0, *(v9 + 16) + 1, 1, v14, v15, v16, v17);
      }

      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DD42A2D4(v18 > 1, v19 + 1, 1, v14, v15, v16, v17);
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v12;
      *(v20 + 40) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
}

BOOL sub_1DD41E198()
{
  v1 = v0[4];
  v2 = v0[3] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {
    return 1;
  }

  v3 = v0[6];
  if ((v3 & 0x2000000000000000) != 0 ? HIBYTE(v3) & 0xF : v0[5] & 0xFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v5 = v0[8];
  v6 = v0[7] & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6)
  {
    return 1;
  }

  v7 = v0[10];
  v8 = v0[9] & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  if (v8)
  {
    return 1;
  }

  v9 = v0[12];
  v10 = v0[11] & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v9) & 0xF;
  }

  if (v10)
  {
    return 1;
  }

  v12 = v0[16];
  v13 = v0[18];
  v14 = v0[15] & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v12) & 0xF;
  }

  v15 = v0[17] & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v13) & 0xF;
  }

  v16 = v15 != 0;
  return v14 || v16;
}

void sub_1DD41E258()
{
  v1 = v0[4];
  v2 = v0[6];
  v3 = v0[8];
  v29 = v0[7];
  v30 = v0[5];
  v4 = v0[10];
  v5 = v0[12];
  v27 = v0[11];
  v28 = v0[9];
  v6 = v0[14];
  v25 = v0[3];
  v26 = v0[13];
  v31 = v0[16];
  v32 = v0[15];
  v7 = v0[18];
  v8 = v0[20];
  v23 = v0[19];
  v24 = v0[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD648240;
  *(inited + 32) = v25;
  *(inited + 40) = v1;
  *(inited + 48) = v30;
  *(inited + 56) = v2;
  *(inited + 64) = v29;
  *(inited + 72) = v3;
  *(inited + 80) = v28;
  *(inited + 88) = v4;
  *(inited + 96) = v27;
  *(inited + 104) = v5;
  *(inited + 112) = v26;
  *(inited + 120) = v6;
  *(inited + 128) = v24;
  *(inited + 136) = v7;
  *(inited + 144) = v23;
  *(inited + 152) = v8;
  *(inited + 160) = v32;
  *(inited + 168) = v31;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v12 = (inited + 40 + 16 * v10);
  while (1)
  {
    if (v10 == 9)
    {
      swift_setDeallocating();
      sub_1DD46CAFC();
      return;
    }

    if (v10 > 8)
    {
      break;
    }

    ++v10;
    v14 = *(v12 - 1);
    v13 = *v12;
    v12 += 2;
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD42A2D4(0, *(v11 + 16) + 1, 1, v16, v17, v18, v19);
      }

      v21 = *(v11 + 16);
      v20 = *(v11 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1DD42A2D4(v20 > 1, v21 + 1, 1, v16, v17, v18, v19);
      }

      *(v11 + 16) = v21 + 1;
      v22 = v11 + 16 * v21;
      *(v22 + 32) = v14;
      *(v22 + 40) = v13;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t static ContactQuery.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v164 = *(a1 + 64);
  v165 = *(a1 + 56);
  v162 = *(a1 + 80);
  v163 = *(a1 + 72);
  v160 = *(a1 + 96);
  v161 = *(a1 + 88);
  v156 = *(a1 + 112);
  v157 = *(a1 + 104);
  v152 = *(a1 + 128);
  v153 = *(a1 + 120);
  v148 = *(a1 + 144);
  v149 = *(a1 + 136);
  v144 = *(a1 + 160);
  v145 = *(a1 + 152);
  v140 = *(a1 + 168);
  v141 = *(a1 + 176);
  v139 = *(a1 + 184);
  v128 = *(a1 + 192);
  v126 = *(a1 + 208);
  v129 = *(a1 + 200);
  v130 = *(a1 + 224);
  v135 = *(a1 + 232);
  v125 = *(a1 + 240);
  v123 = *(a1 + 248);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  v13 = *(a2 + 56);
  v12 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v158 = *(a2 + 96);
  v159 = *(a2 + 88);
  v154 = *(a2 + 112);
  v155 = *(a2 + 104);
  v151 = *(a2 + 120);
  v150 = *(a2 + 128);
  v146 = *(a2 + 144);
  v147 = *(a2 + 136);
  v142 = *(a2 + 160);
  v143 = *(a2 + 152);
  v136 = *(a2 + 176);
  v137 = *(a2 + 184);
  v138 = *(a2 + 168);
  v132 = *(a2 + 192);
  v133 = *(a2 + 208);
  v134 = *(a2 + 200);
  v124 = *(a2 + 240);
  v127 = *(a2 + 232);
  v131 = *(a2 + 224);
  if (v6)
  {
    if (*(a1 + 16) != v7)
    {
      return 0;
    }
  }

  else
  {
    v119 = *(a1 + 16);
    v121 = *(a2 + 64);
    v122 = *(a2 + 40);
    v120 = *(a2 + 56);
    v16 = *(a1 + 48);
    v17 = *(a2 + 48);
    v18 = *(a2 + 72);
    v19 = *(a1 + 32);
    v20 = *(a2 + 24);
    v21 = sub_1DD640CD8();
    v8 = v20;
    v2 = v19;
    v14 = v18;
    v11 = v17;
    v4 = v16;
    v13 = v120;
    v12 = v121;
    v10 = v122;
    if (v21 & 1) == 0 || ((v119 ^ v7))
    {
      return 0;
    }
  }

  if (v3 != v8 || v2 != v9)
  {
    v23 = v4;
    v24 = sub_1DD640CD8();
    v4 = v23;
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v25 = v5 == v10 && v4 == v11;
  if (!v25 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v26 = v165 == v13 && v164 == v12;
  if (!v26 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (v163 != v14 || v162 != v15)
  {
    OUTLINED_FUNCTION_40_4();
    if ((sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  v28 = v161 == v159 && v160 == v158;
  if (!v28 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v29 = v157 == v155 && v156 == v154;
  if (!v29 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v30 = v153 == v151 && v152 == v150;
  if (!v30 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v31 = v149 == v147 && v148 == v146;
  if (!v31 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v32 = v145 == v143 && v144 == v142;
  if (!v32 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  if (!v139)
  {
    sub_1DD41D254(v140, v141, 0);
    if (!v137)
    {
      sub_1DD41D254(v138, v136, 0);
      sub_1DD4178B4(v140, v141, 0);
      goto LABEL_63;
    }

    v46 = OUTLINED_FUNCTION_36_3();
    sub_1DD41D254(v46, v47, v48);
    goto LABEL_61;
  }

  v168[0] = v140;
  v168[1] = v141;
  v168[2] = v139;
  if (!v137)
  {
    v49 = OUTLINED_FUNCTION_12_13();
    sub_1DD41D254(v49, v50, v51);
    sub_1DD41D254(v138, v136, 0);
    v52 = OUTLINED_FUNCTION_12_13();
    sub_1DD41D254(v52, v53, v54);

LABEL_61:
    v55 = OUTLINED_FUNCTION_12_13();
    sub_1DD4178B4(v55, v56, v57);
    v58 = OUTLINED_FUNCTION_36_3();
    sub_1DD4178B4(v58, v59, v60);
    return 0;
  }

  v167[0] = v138;
  v167[1] = v136;
  v167[2] = v137;
  v33 = OUTLINED_FUNCTION_12_13();
  sub_1DD41D254(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_36_3();
  sub_1DD41D254(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_12_13();
  sub_1DD41D254(v39, v40, v41);
  v42 = static ContactRelationshipQuery.== infix(_:_:)(v168, v167);

  v43 = OUTLINED_FUNCTION_12_13();
  sub_1DD4178B4(v43, v44, v45);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_63:
  if (!v126)
  {
    sub_1DD4178F8(v128, v129, 0);
    v72 = v133;
    if (!v133)
    {
      v101 = OUTLINED_FUNCTION_15_0();
      sub_1DD4178F8(v101, v102, 0);
LABEL_86:
      v103 = OUTLINED_FUNCTION_10_17();
      sub_1DD3FAA54(v103, v104, v105);
      goto LABEL_87;
    }

    v73 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_49_4(v73, v74, v133);
    goto LABEL_70;
  }

  if (!v133)
  {
    v75 = OUTLINED_FUNCTION_10_17();
    sub_1DD4178F8(v75, v76, v77);
    v78 = OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_49_4(v78, v79, 0);
    v80 = OUTLINED_FUNCTION_10_17();
    sub_1DD4178F8(v80, v81, v82);

    v72 = 0;

LABEL_70:
    v83 = OUTLINED_FUNCTION_10_17();
    sub_1DD3FAA54(v83, v84, v85);
    v69 = OUTLINED_FUNCTION_15_0();
    v71 = v72;
    goto LABEL_71;
  }

  if (v132 != v128 || (v129 == v134 ? (v87 = v126 == v133) : (v87 = 0), !v87 && (sub_1DD640CD8() & 1) == 0 || (sub_1DD3C3778(), (v88 & 1) == 0)))
  {
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_14_14();
    sub_1DD4178F8(v61, v62, v63);
    v64 = OUTLINED_FUNCTION_15_0();
    sub_1DD4178F8(v64, v65, v133);
    v66 = OUTLINED_FUNCTION_9_12();
    sub_1DD4178F8(v66, v67, v68);
    sub_1DD3FAA54(v132, v134, v133);

    v69 = OUTLINED_FUNCTION_9_12();
LABEL_71:
    sub_1DD3FAA54(v69, v70, v71);
    return 0;
  }

  if (v130 == v131 && v135 == v127)
  {
    OUTLINED_FUNCTION_10_17();
    OUTLINED_FUNCTION_14_14();
    sub_1DD4178F8(v107, v108, v109);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_60_3();
    sub_1DD4178F8(v110, v111, v112);
    v113 = OUTLINED_FUNCTION_9_12();
    sub_1DD4178F8(v113, v114, v115);
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_60_3();
    sub_1DD3FAA54(v116, v117, v118);

    goto LABEL_86;
  }

  v166 = sub_1DD640CD8();
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_14_14();
  sub_1DD4178F8(v90, v91, v92);
  v93 = OUTLINED_FUNCTION_15_0();
  sub_1DD4178F8(v93, v94, v133);
  v95 = OUTLINED_FUNCTION_9_12();
  sub_1DD4178F8(v95, v96, v97);
  sub_1DD3FAA54(v132, v134, v133);

  v98 = OUTLINED_FUNCTION_9_12();
  sub_1DD3FAA54(v98, v99, v100);
  if ((v166 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  sub_1DD3C4BBC(v125, v124);
  if ((v106 & 1) == 0)
  {
    return 0;
  }

  return sub_1DD3AFDCC(v123);
}

uint64_t sub_1DD41EBBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1699574633 && a2 == 0xE400000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x66657250656D616ELL && a2 == 0xEA00000000007869;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D614E6E65766967 && a2 == 0xE900000000000065;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x614E656C6464696DLL && a2 == 0xEA0000000000656DLL;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x614E796C696D6166 && a2 == 0xEA0000000000656DLL;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001DD66B460 == a2;
                if (v12 || (sub_1DD640CD8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x66667553656D616ELL && a2 == 0xEA00000000007869;
                  if (v13 || (sub_1DD640CD8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656D616E6B63696ELL && a2 == 0xE800000000000000;
                    if (v14 || (sub_1DD640CD8() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000010 && 0x80000001DD66B480 == a2;
                      if (v15 || (sub_1DD640CD8() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E6F6974616C6572 && a2 == 0xEC00000070696873;
                        if (v16 || (sub_1DD640CD8() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
                          if (v17 || (sub_1DD640CD8() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000013 && 0x80000001DD66B6A0 == a2;
                            if (v18 || (sub_1DD640CD8() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x79676F6C6F746E6FLL && a2 == 0xEE00656372756F53;
                              if (v19 || (sub_1DD640CD8() & 1) != 0)
                              {

                                return 14;
                              }

                              else if (a1 == 0x65646F4E6F7375 && a2 == 0xE700000000000000)
                              {

                                return 15;
                              }

                              else
                              {
                                v21 = sub_1DD640CD8();

                                if (v21)
                                {
                                  return 15;
                                }

                                else
                                {
                                  return 16;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DD41F0A8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 1699574633;
    case 2:
      v3 = 0x614E6C6C7566;
      goto LABEL_9;
    case 3:
      return 0x66657250656D616ELL;
    case 4:
      return 0x6D614E6E65766967;
    case 5:
      v4 = 0x656C6464696DLL;
      goto LABEL_16;
    case 6:
      v4 = 0x796C696D6166;
LABEL_16:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x614E000000000000;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x66667553656D616ELL;
      break;
    case 9:
      v3 = 0x616E6B63696ELL;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x6E6F6974616C6572;
      break;
    case 12:
      result = 0x656C646E6168;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0x79676F6C6F746E6FLL;
      break;
    case 15:
      result = 0x65646F4E6F7375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD41F25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD41EBBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD41F284@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD41F0A0();
  *a1 = result;
  return result;
}

uint64_t sub_1DD41F2AC(uint64_t a1)
{
  v2 = sub_1DD420E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD41F2E8(uint64_t a1)
{
  v2 = sub_1DD420E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactQuery.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v70 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC768, &qword_1DD648258);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = *(v0 + 24);
  v68 = *(v0 + 32);
  v69 = v10;
  v11 = *(v0 + 40);
  v66 = *(v0 + 48);
  v67 = v11;
  v12 = *(v0 + 56);
  v64 = *(v0 + 64);
  v65 = v12;
  v13 = *(v0 + 80);
  v62 = *(v0 + 72);
  v63 = v13;
  v14 = *(v0 + 96);
  v60 = *(v0 + 88);
  v61 = v14;
  v15 = *(v0 + 112);
  v58 = *(v0 + 104);
  v59 = v15;
  v16 = *(v0 + 128);
  v56 = *(v0 + 120);
  v57 = v16;
  v17 = *(v0 + 144);
  v54 = *(v0 + 136);
  v55 = v17;
  v18 = *(v0 + 160);
  v52 = *(v0 + 152);
  v53 = v18;
  v19 = *(v0 + 176);
  v49 = *(v0 + 168);
  v50 = v19;
  v20 = *(v0 + 192);
  v51 = *(v0 + 184);
  v43 = v20;
  v21 = *(v0 + 208);
  v44 = *(v0 + 200);
  v45 = v21;
  v22 = *(v0 + 224);
  v48 = *(v0 + 216);
  v47 = v22;
  v23 = *(v0 + 240);
  v46 = *(v0 + 232);
  v42 = v23;
  v41 = *(v0 + 248);
  v40 = *(v0 + 256);
  OUTLINED_FUNCTION_41_3(v3, v3[3]);
  sub_1DD420E48();
  sub_1DD640EF8();
  LOBYTE(v71) = 0;
  v24 = v70;
  sub_1DD640C18();
  if (v24)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    v26 = v68;
    v25 = v69;
    v27 = v66;
    v28 = v67;
    v29 = v65;
    v70 = v6;
    LOBYTE(v71) = 1;
    sub_1DD640C28();
    OUTLINED_FUNCTION_22_5(2);
    OUTLINED_FUNCTION_44_3(v25, v26, v30);
    OUTLINED_FUNCTION_22_5(3);
    OUTLINED_FUNCTION_44_3(v28, v27, v31);
    OUTLINED_FUNCTION_22_5(4);
    OUTLINED_FUNCTION_44_3(v29, v64, v32);
    OUTLINED_FUNCTION_22_5(5);
    OUTLINED_FUNCTION_44_3(v62, v63, v33);
    OUTLINED_FUNCTION_22_5(6);
    OUTLINED_FUNCTION_44_3(v60, v61, v34);
    OUTLINED_FUNCTION_22_5(7);
    OUTLINED_FUNCTION_44_3(v58, v59, v35);
    OUTLINED_FUNCTION_22_5(8);
    OUTLINED_FUNCTION_44_3(v56, v57, v36);
    OUTLINED_FUNCTION_22_5(9);
    OUTLINED_FUNCTION_44_3(v54, v55, v37);
    OUTLINED_FUNCTION_22_5(10);
    sub_1DD640C18();
    v71 = v49;
    v72 = v50;
    v73 = v51;
    sub_1DD41D254(v49, v50, v51);
    sub_1DD420E9C();
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_47();
    sub_1DD640C08();
    sub_1DD4178B4(v71, v72, v73);
    v71 = v43;
    v72 = v44;
    v73 = v45;
    v74 = v48;
    v75 = v47;
    v76 = v46;
    sub_1DD4178F8(v43, v44, v45);
    sub_1DD420EF0();
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_47();
    sub_1DD640C08();
    sub_1DD3FAA54(v71, v72, v73);
    v71 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC770, &qword_1DD648260);
    sub_1DD4234FC(&unk_1EE1638E8);
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_47();
    sub_1DD640C68();
    LOBYTE(v71) = v41;
    sub_1DD420F98();
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_47();
    sub_1DD640C68();
    v71 = v40;
    v38 = OUTLINED_FUNCTION_15_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
    sub_1DD424AF8(&unk_1EE165A90);
    OUTLINED_FUNCTION_16_9();
    OUTLINED_FUNCTION_47();
    sub_1DD640C68();
    (*(v70 + 8))(v9, v4);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t ContactQuery.hash(into:)(uint64_t a1)
{
  v11 = v1[21];
  v3 = v1[23];
  v12 = v1[24];
  v13 = v1[26];
  sub_1DD63FD28();
  sub_1DD640E48();
  sub_1DD63FD28();
  OUTLINED_FUNCTION_63_0();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  if (v3)
  {
    OUTLINED_FUNCTION_64();
    if (v11)
    {
      OUTLINED_FUNCTION_64();

      sub_1DD41CC10(a1);
    }

    else
    {
      OUTLINED_FUNCTION_66();
    }

    sub_1DD63FD28();
    v4 = OUTLINED_FUNCTION_12_13();
    sub_1DD4178B4(v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  if (v13)
  {
    OUTLINED_FUNCTION_64();
    MEMORY[0x1E12B3140](v12);

    sub_1DD63FD28();
    sub_1DD416068();
    sub_1DD63FD28();
    v7 = OUTLINED_FUNCTION_12_13();
    sub_1DD3FAA54(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  sub_1DD4160C8();

  return sub_1DD409A40();
}

uint64_t ContactQuery.hashValue.getter()
{
  OUTLINED_FUNCTION_79();
  ContactQuery.hash(into:)(v1);
  return sub_1DD640E78();
}

void ContactQuery.init(from:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC780, &qword_1DD648270);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_39_3();
  v7 = v2[3];
  v8 = v2[4];
  OUTLINED_FUNCTION_41_3(v2, v7);
  sub_1DD420E48();
  sub_1DD640ED8();
  if (v0)
  {
    OUTLINED_FUNCTION_18_11();
    OUTLINED_FUNCTION_62_3();
    OUTLINED_FUNCTION_37_7();
    OUTLINED_FUNCTION_0_36();
    OUTLINED_FUNCTION_21_6();
    v54 = v10;
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v93 = 0;
    *&v93[8] = 0xE000000000000000;
    v93[16] = 0;
    *&v93[17] = *v115;
    *&v93[20] = *&v115[3];
    v94 = v78;
    v95 = 0xE000000000000000;
    v96 = v76;
    v97 = 0xE000000000000000;
    v98 = v74;
    v99 = v8;
    v100 = v72;
    v101 = v7;
    v102 = v70;
    v103 = v5;
    OUTLINED_FUNCTION_30_7();
    v104 = v88;
    v105 = v86;
    v106 = v84;
    v107 = 0xE000000000000000;
    *(v11 + 176) = 0u;
    *(v11 + 192) = v54;
    v108 = v81;
    v109 = v60;
    v110 = v62;
    v111 = v64;
    OUTLINED_FUNCTION_45_3(v66);
    *(v13 + 249) = *v12;
    v112 = *(v12 + 3);
    v113 = 0;
  }

  else
  {
    v93[0] = 0;
    v9 = sub_1DD640B28();
    v52 = v14;
    v53 = v9;
    OUTLINED_FUNCTION_2_20(1);
    v51 = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_2_20(2);
    v15 = sub_1DD640B28();
    v50 = v16;
    v79 = v15;
    OUTLINED_FUNCTION_2_20(3);
    v17 = sub_1DD640B28();
    v49 = v18;
    v77 = v17;
    OUTLINED_FUNCTION_2_20(4);
    v19 = sub_1DD640B28();
    v48 = v20;
    v75 = v19;
    OUTLINED_FUNCTION_2_20(5);
    v21 = sub_1DD640B28();
    v47 = v22;
    v73 = v21;
    OUTLINED_FUNCTION_2_20(6);
    v23 = sub_1DD640B28();
    v46 = v24;
    v71 = v23;
    OUTLINED_FUNCTION_2_20(7);
    v25 = sub_1DD640B28();
    v59 = v26;
    v69 = v25;
    OUTLINED_FUNCTION_2_20(8);
    v27 = sub_1DD640B28();
    v58 = v28;
    v68 = v27;
    OUTLINED_FUNCTION_2_20(9);
    v29 = sub_1DD640B28();
    v87 = v30;
    v89 = v29;
    OUTLINED_FUNCTION_2_20(10);
    v31 = sub_1DD640B28();
    v83 = v32;
    v85 = v31;
    sub_1DD423454();
    OUTLINED_FUNCTION_13_11();
    sub_1DD640B18();
    v82 = *v93;
    v80 = *&v93[8];
    v33 = OUTLINED_FUNCTION_24_5();
    sub_1DD4178B4(v33, v34, v35);
    v90[0] = 12;
    sub_1DD4234A8();
    OUTLINED_FUNCTION_13_11();
    sub_1DD640B18();
    v55 = *v93;
    v61 = *&v93[16];
    v63 = v94;
    v65 = v95;
    v67 = v96;
    v36 = OUTLINED_FUNCTION_24_5();
    sub_1DD3FAA54(v36, v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC770, &qword_1DD648260);
    v90[0] = 13;
    v39 = sub_1DD4234FC(&unk_1EE160270);
    OUTLINED_FUNCTION_54_3(v39, v90);
    v57 = *v93;
    v90[0] = 14;
    sub_1DD4235C4();
    OUTLINED_FUNCTION_13_11();
    sub_1DD640B78();
    v56 = v93[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC778, &qword_1DD648268);
    v91 = 15;
    v40 = sub_1DD424AF8(&unk_1EE1632B0);
    OUTLINED_FUNCTION_54_3(v40, &v91);
    v41 = OUTLINED_FUNCTION_8_10();
    v42(v41);
    v45 = v92;
    *v90 = v53;
    *&v90[8] = v52;
    v90[16] = v51;
    *&v90[24] = v79;
    *&v90[32] = v50;
    *&v90[40] = v77;
    *&v90[48] = v49;
    *&v90[56] = v75;
    *&v90[64] = v48;
    *&v90[72] = v73;
    *&v90[80] = v47;
    *&v90[88] = v71;
    *&v90[96] = v46;
    *&v90[104] = v69;
    *&v90[112] = v59;
    *&v90[120] = v68;
    *&v90[128] = v58;
    *&v90[136] = v89;
    *&v90[144] = v87;
    *&v90[152] = v85;
    *&v90[160] = v83;
    *&v90[168] = v82;
    *&v90[176] = v80;
    *&v90[192] = v55;
    *&v90[208] = v61;
    *&v90[216] = v63;
    *&v90[224] = v65;
    *&v90[232] = v67;
    *&v90[240] = v57;
    v90[248] = v56;
    *&v90[249] = *v114;
    *&v90[252] = *&v114[3];
    *&v90[256] = v92;
    memcpy(v4, v90, 0x108uLL);
    sub_1DD3C9478(v90, v93);
    __swift_destroy_boxed_opaque_existential_1(v2);
    *v93 = v53;
    *&v93[8] = v52;
    v93[16] = v51;
    *&v93[17] = *v115;
    *&v93[20] = *&v115[3];
    v94 = v79;
    v95 = v50;
    v96 = v77;
    v97 = v49;
    v98 = v75;
    v99 = v48;
    v100 = v73;
    v101 = v47;
    v102 = v71;
    v103 = v46;
    OUTLINED_FUNCTION_30_7();
    v104 = v89;
    v105 = v87;
    v106 = v85;
    v107 = v83;
    *(v43 + 176) = v80;
    *(v43 + 192) = v55;
    v108 = v82;
    v109 = v61;
    v110 = v63;
    v111 = v65;
    OUTLINED_FUNCTION_45_3(v67);
    *(v44 + 249) = *v114;
    v112 = *&v114[3];
    v113 = v45;
  }

  sub_1DD3C9580(v93);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD42050C(uint64_t a1)
{
  sub_1DD640E28();
  ContactQuery.hash(into:)(v2);
  return sub_1DD640E78();
}

uint64_t static ContactRelationshipQuery.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if (!*a1)
  {
    if (!v6)
    {
      goto LABEL_4;
    }

LABEL_10:
    v10 = 0;
    return v10 & 1;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  memcpy(__dst, (v3 + 16), sizeof(__dst));
  memcpy(__src, (v3 + 16), sizeof(__src));
  memcpy(v15, (v6 + 16), sizeof(v15));
  memcpy(v12, (v6 + 16), sizeof(v12));
  sub_1DD3C9478(__dst, v17);
  sub_1DD3C9478(v15, v17);
  v8 = static ContactQuery.== infix(_:_:)(__src, v12);
  memcpy(v16, v12, sizeof(v16));
  sub_1DD3C9580(v16);
  memcpy(v17, __src, sizeof(v17));
  sub_1DD3C9580(v17);
  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v2 == v5 && v4 == v7)
  {
    v10 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_40_4();
    v10 = sub_1DD640CD8();
  }

  return v10 & 1;
}

uint64_t sub_1DD42066C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6F436D6F7266 && a2 == 0xEB00000000746361;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD420734(char a1)
{
  if (a1)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x746E6F436D6F7266;
  }
}

uint64_t sub_1DD420778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD42066C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4207A0(uint64_t a1)
{
  v2 = sub_1DD423618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4207DC(uint64_t a1)
{
  v2 = sub_1DD423618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactRelationshipQuery.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC788, &qword_1DD648278);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_41_3(v1, v1[3]);
  v3 = sub_1DD423618();

  sub_1DD640EF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC760, &qword_1DD648250);
  sub_1DD423714(&unk_1ECCDC798);
  OUTLINED_FUNCTION_32();
  sub_1DD640C08();

  if (!v3)
  {
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
  }

  v4 = OUTLINED_FUNCTION_15();
  v5(v4);
  OUTLINED_FUNCTION_86();
}

uint64_t ContactRelationshipQuery.hash(into:)(uint64_t a1)
{
  if (*v1)
  {
    OUTLINED_FUNCTION_64();
    sub_1DD41CC10(a1);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  OUTLINED_FUNCTION_63_0();

  return sub_1DD63FD28();
}

uint64_t ContactRelationshipQuery.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_79();
  sub_1DD640E48();
  if (v1)
  {
    sub_1DD41CC10(v3);
  }

  sub_1DD63FD28();
  return sub_1DD640E78();
}

void ContactRelationshipQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  v22 = v21;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC7A0, &qword_1DD648280);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_41_3(v22, v22[3]);
  v26 = sub_1DD423618();
  OUTLINED_FUNCTION_48_4(&type metadata for ContactRelationshipQuery.CodingKeys, v27, v26);
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC760, &qword_1DD648250);
    sub_1DD423714(&unk_1ECCDC7A8);
    OUTLINED_FUNCTION_35_4();
    sub_1DD640B18();
    OUTLINED_FUNCTION_35_4();
    v28 = sub_1DD640B28();
    v30 = v29;
    v31 = OUTLINED_FUNCTION_41();
    v32(v31);
    *v24 = a10;
    v24[1] = v28;
    v24[2] = v30;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD420CB4(uint64_t a1)
{
  v2 = *v1;
  sub_1DD640E28();
  sub_1DD640E48();
  if (v2)
  {
    sub_1DD41CC10(v4);
  }

  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t ContactHandleQuery.normalizedLabels.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t static ContactHandleQuery.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  sub_1DD3C3778();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_40_4();

  return sub_1DD640CD8();
}

unint64_t sub_1DD420E48()
{
  result = qword_1EE165A88;
  if (!qword_1EE165A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A88);
  }

  return result;
}

unint64_t sub_1DD420E9C()
{
  result = qword_1EE164078;
  if (!qword_1EE164078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE164078);
  }

  return result;
}

unint64_t sub_1DD420EF0()
{
  result = qword_1EE1654C0;
  if (!qword_1EE1654C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1654C0);
  }

  return result;
}

unint64_t sub_1DD420F44()
{
  result = qword_1EE163A70;
  if (!qword_1EE163A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163A70);
  }

  return result;
}

unint64_t sub_1DD420F98()
{
  result = qword_1EE1651F8;
  if (!qword_1EE1651F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1651F8);
  }

  return result;
}

uint64_t sub_1DD420FEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001DD66B6C0 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1DD42114C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4211CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD420FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4211F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD421144();
  *a1 = result;
  return result;
}

uint64_t sub_1DD42121C(uint64_t a1)
{
  v2 = sub_1DD423788();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD421258(uint64_t a1)
{
  v2 = sub_1DD423788();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactHandleQuery.encode(to:)()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC7B0, &qword_1DD648288);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_41_3(v2, v2[3]);
  sub_1DD423788();
  sub_1DD640EF8();
  sub_1DD415E20();
  OUTLINED_FUNCTION_32();
  sub_1DD640C68();
  if (!v0)
  {
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD417E00(&qword_1EE1638D0);
    OUTLINED_FUNCTION_32();
    sub_1DD640C68();
    OUTLINED_FUNCTION_32();
    sub_1DD640C18();
  }

  v4 = OUTLINED_FUNCTION_15();
  v5(v4);
  OUTLINED_FUNCTION_86();
}

uint64_t ContactHandleQuery.hash(into:)(uint64_t a1)
{
  MEMORY[0x1E12B3140](*v1);
  OUTLINED_FUNCTION_63_0();
  sub_1DD63FD28();
  sub_1DD416068();

  return sub_1DD63FD28();
}

uint64_t ContactHandleQuery.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_79();
  MEMORY[0x1E12B3140](v1);
  sub_1DD63FD28();
  sub_1DD416068();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

void ContactHandleQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_93();
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC7C0, &qword_1DD648298);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v46 - v35;
  OUTLINED_FUNCTION_41_3(v28, v28[3]);
  sub_1DD423788();
  sub_1DD640ED8();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_1DD415E74();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_57_4();
    sub_1DD640B78();
    OUTLINED_FUNCTION_57_4();
    v37 = sub_1DD640B28();
    v39 = v38;
    v48 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD417E00(&qword_1EE160268);
    OUTLINED_FUNCTION_57_4();
    sub_1DD640B78();
    v47 = a16;
    v40 = v49;
    OUTLINED_FUNCTION_57_4();
    v41 = sub_1DD640B28();
    v43 = v42;
    v44 = *(v33 + 8);
    v46 = v41;
    v44(v36, v31);
    *v30 = v47;
    *(v30 + 8) = v48;
    *(v30 + 16) = v39;
    v45 = v46;
    *(v30 + 24) = v40;
    *(v30 + 32) = v45;
    *(v30 + 40) = v43;

    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD4218B0(uint64_t a1)
{
  v2 = *v1;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v2);
  sub_1DD63FD28();
  sub_1DD416068();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD421948()
{
  v1 = v0;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](v1[1], v1[2]);
  MEMORY[0x1E12B2260](1029990696, 0xE400000000000000);
  MEMORY[0x1E12B2260](v1[3], v1[4]);
  MEMORY[0x1E12B2260](0x3D65726F637320, 0xE700000000000000);
  sub_1DD640228();
  OUTLINED_FUNCTION_65();
  return 0;
}

BOOL sub_1DD4219FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v5 || (sub_1DD640CD8()) && (*(a1 + 3) == *(a2 + 3) ? (v6 = *(a1 + 4) == *(a2 + 4)) : (v6 = 0), v6 || (sub_1DD640CD8()))
  {
    return *(a1 + 5) == *(a2 + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD421A98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449707061 && a2 == 0xE500000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DD640CD8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1DD421BE0(char a1)
{
  result = 0x72656469766F7270;
  switch(a1)
  {
    case 1:
      result = 0x6449707061;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x65726F6373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD421C50(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC820, &qword_1DD648C98);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_21_5();
  OUTLINED_FUNCTION_41_3(a1, a1[3]);
  sub_1DD424114();
  sub_1DD640EF8();
  sub_1DD424168();
  OUTLINED_FUNCTION_56();
  sub_1DD640C68();
  if (!v1)
  {
    OUTLINED_FUNCTION_56();
    sub_1DD640C18();
    OUTLINED_FUNCTION_56();
    sub_1DD640C18();
    OUTLINED_FUNCTION_56();
    sub_1DD640C38();
  }

  v4 = OUTLINED_FUNCTION_15();
  return v5(v4);
}

uint64_t sub_1DD421DEC(uint64_t a1)
{
  MEMORY[0x1E12B3140](*v1);
  sub_1DD63FD28();
  sub_1DD63FD28();
  v2 = v1[5];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1E12B3170](*&v2);
}

uint64_t sub_1DD421E48()
{
  OUTLINED_FUNCTION_79();
  sub_1DD421DEC(v1);
  return sub_1DD640E78();
}

uint64_t sub_1DD421E80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC828, &unk_1DD648CA0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41_3(a1, a1[3]);
  v6 = sub_1DD424114();
  OUTLINED_FUNCTION_48_4(&type metadata for ContactId.CodingKeys, v7, v6);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1DD4241BC();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_35_4();
  sub_1DD640B78();
  OUTLINED_FUNCTION_35_4();
  v8 = sub_1DD640B28();
  v10 = v9;
  v20 = v8;
  OUTLINED_FUNCTION_35_4();
  v11 = sub_1DD640B28();
  v13 = v12;
  v19 = v11;
  OUTLINED_FUNCTION_35_4();
  sub_1DD640B48();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_0_0();
  v17(v16);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v10;
  *(a2 + 24) = v19;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_1DD4220C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61636F5669726973 && a2 == 0xE900000000000062;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1935894896 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD422198(char a1)
{
  if (a1)
  {
    return 1935894896;
  }

  else
  {
    return 0x61636F5669726973;
  }
}

void sub_1DD4221CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_93();
  v46 = v25;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC840, &qword_1DD648E88);
  OUTLINED_FUNCTION_0();
  v44 = v29;
  v45 = v28;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v43 - v31;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC848, &qword_1DD648E90);
  OUTLINED_FUNCTION_0();
  v34 = v33;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_39_3();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC850, &qword_1DD648E98);
  OUTLINED_FUNCTION_0();
  v38 = v37;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v43 - v40;
  OUTLINED_FUNCTION_41_3(v27, v27[3]);
  sub_1DD424530();
  sub_1DD640EF8();
  v42 = (v38 + 8);
  if (v46)
  {
    sub_1DD424584();
    OUTLINED_FUNCTION_58_2();
    sub_1DD640BB8();
    (*(v44 + 8))(v32, v45);
  }

  else
  {
    sub_1DD4245D8();
    OUTLINED_FUNCTION_58_2();
    sub_1DD640BB8();
    (*(v34 + 8))(v24, v43);
  }

  (*v42)(v41, v36);
  OUTLINED_FUNCTION_86();
}

void sub_1DD422434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  a22 = v25;
  a23 = v26;
  v64 = v23;
  v28 = v27;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC860, &qword_1DD648EA0);
  OUTLINED_FUNCTION_0();
  v61 = v29;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v57 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC868, &qword_1DD648EA8);
  OUTLINED_FUNCTION_0();
  v60 = v34;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_39_3();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC870, &unk_1DD648EB0);
  OUTLINED_FUNCTION_0();
  v62 = v37;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v57 - v39;
  OUTLINED_FUNCTION_41_3(v28, v28[3]);
  sub_1DD424530();
  v41 = v64;
  sub_1DD640ED8();
  if (v41)
  {
    goto LABEL_8;
  }

  v58 = v33;
  v59 = v24;
  v64 = v28;
  v42 = v63;
  sub_1DD640B98();
  sub_1DD418088();
  if (v44 == v45 >> 1)
  {
LABEL_7:
    v51 = sub_1DD640938();
    swift_allocError();
    v53 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC5C8, &qword_1DD6559A0);
    *v53 = &unk_1F58B32C0;
    sub_1DD640AC8();
    sub_1DD640928();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v40, v36);
    v28 = v64;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_9:
    OUTLINED_FUNCTION_86();
    return;
  }

  v57 = 0;
  if (v44 < (v45 >> 1))
  {
    v46 = *(v43 + v44);
    sub_1DD41805C();
    v48 = v47;
    v50 = v49;
    swift_unknownObjectRelease();
    if (v48 == v50 >> 1)
    {
      if (v46)
      {
        LODWORD(v60) = v46;
        a13 = 1;
        sub_1DD424584();
        OUTLINED_FUNCTION_53_3(&type metadata for ContactIdProvider.PicsCodingKeys, &a13);
        swift_unknownObjectRelease();
        (*(v61 + 8))(v32, v42);
      }

      else
      {
        a12 = 0;
        sub_1DD4245D8();
        v54 = v59;
        OUTLINED_FUNCTION_53_3(&type metadata for ContactIdProvider.SiriVocabCodingKeys, &a12);
        swift_unknownObjectRelease();
        (*(v60 + 8))(v54, v58);
      }

      v55 = OUTLINED_FUNCTION_27_7();
      v56(v55);
      __swift_destroy_boxed_opaque_existential_1(v64);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DD4228A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD421A98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4228CC(uint64_t a1)
{
  v2 = sub_1DD424114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD422908(uint64_t a1)
{
  v2 = sub_1DD424114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD422944@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DD421E80(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1DD4229AC(uint64_t a1)
{
  sub_1DD640E28();
  sub_1DD421DEC(v2);
  return sub_1DD640E78();
}

uint64_t sub_1DD4229F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4220C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD422A1C(uint64_t a1)
{
  v2 = sub_1DD424530();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD422A58(uint64_t a1)
{
  v2 = sub_1DD424530();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD422A94(uint64_t a1)
{
  v2 = sub_1DD424584();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD422AD0(uint64_t a1)
{
  v2 = sub_1DD424584();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD422B0C(uint64_t a1)
{
  v2 = sub_1DD4245D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD422B48(uint64_t a1)
{
  v2 = sub_1DD4245D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD422BD0()
{
  v1 = *v0;
  v2 = 1;
  switch(*v0)
  {
    case 3:
      goto LABEL_6;
    default:
      v3 = sub_1DD640CD8();

      if (v3)
      {
        v2 = 1;
      }

      else
      {
        v2 = 1;
        switch(v1)
        {
          case 0:
          case 1:
          case 3:
          case 4:
            v2 = sub_1DD640CD8();
            break;
          case 2:
            break;
          default:
            JUMPOUT(0);
        }

LABEL_6:
      }

      return v2 & 1;
  }
}

SiriInference::ContactOntologySource_optional __swiftcall ContactOntologySource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContactOntologySource.rawValue.getter()
{
  result = 0x6E6F737265506E69;
  switch(*v0)
  {
    case 1:
      result = 0x7372655033766C6ELL;
      break;
    case 2:
      result = 0x746E6567416F7375;
      break;
    case 3:
      result = 0x6F737265506F7375;
      break;
    case 4:
      result = 0x6863726165536669;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD422E94@<X0>(uint64_t *a1@<X8>)
{
  result = ContactOntologySource.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD422F70(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_1DD41E198();
  if (__dst[23])
  {
    if ((__dst[23] & 0x2000000000000000) != 0 ? HIBYTE(__dst[23]) & 0xFLL : __dst[22] & 0xFFFFFFFFFFFFLL)
    {
      v1 |= 2uLL;
    }
  }

  v3 = __dst[26];
  if (__dst[26])
  {
    v5 = __dst[28];
    v4 = __dst[29];
    v7 = __dst[24];
    v6 = __dst[25];

    sub_1DD3C9580(__dst);
    v8 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v1 |= 4uLL;
    }

    sub_1DD3FAA54(v7, v6, v3);
    v9 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v9 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return v1 | 8;
    }
  }

  else
  {
    sub_1DD3C9580(__dst);
  }

  return v1;
}

uint64_t sub_1DD423088(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1DD3BE2A4();
  v2 = v3;
  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_28_4();
    v2 = v14;
  }

  *(v2 + 16) = v4 + 1;
  v5 = v2 + 16 * v4;
  *(v5 + 32) = 1701667182;
  *(v5 + 40) = 0xE400000000000000;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v2 = v15;
    }

    v6 = *(v2 + 16);
    if (v6 >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_28_4();
      v2 = v16;
    }

    *(v2 + 16) = v6 + 1;
    v7 = v2 + 16 * v6;
    strcpy((v7 + 32), "relationship");
    *(v7 + 45) = 0;
    *(v7 + 46) = -5120;
  }

LABEL_12:
  if ((a1 & 4) == 0)
  {
    if ((a1 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_23();
    v2 = v17;
  }

  v8 = *(v2 + 16);
  if (v8 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_28_4();
    v2 = v18;
  }

  *(v2 + 16) = v8 + 1;
  v9 = v2 + 16 * v8;
  *(v9 + 32) = 0x614C656C646E6168;
  *(v9 + 40) = 0xEB000000006C6562;
  if ((a1 & 8) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
      v2 = v19;
    }

    v10 = *(v2 + 16);
    if (v10 >= *(v2 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v2 = v20;
    }

    *(v2 + 16) = v10 + 1;
    v11 = v2 + 16 * v10;
    *(v11 + 32) = 0x6156656C646E6168;
    *(v11 + 40) = 0xEB0000000065756CLL;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD424AF8(qword_1EE166498);
  v12 = sub_1DD63FD58();

  return v12;
}

uint64_t sub_1DD4232DC@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_14_23();
  *a1 = result;
  return result;
}

uint64_t sub_1DD423304@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD455C34(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DD423334@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD587164(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DD423364@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD455C58(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DD423394@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD455C2C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DD4233C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DD455C28(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DD4233FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD455C48(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DD42342C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD455C50();
  *a1 = result;
  return result;
}

unint64_t sub_1DD423454()
{
  result = qword_1EE161740;
  if (!qword_1EE161740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161740);
  }

  return result;
}

unint64_t sub_1DD4234A8()
{
  result = qword_1EE1623E0;
  if (!qword_1EE1623E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1623E0);
  }

  return result;
}

unint64_t sub_1DD4234FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC770, &qword_1DD648260);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD423570()
{
  result = qword_1EE160370;
  if (!qword_1EE160370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160370);
  }

  return result;
}

unint64_t sub_1DD4235C4()
{
  result = qword_1EE161BE0;
  if (!qword_1EE161BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE161BE0);
  }

  return result;
}

unint64_t sub_1DD423618()
{
  result = qword_1ECCDC790;
  if (!qword_1ECCDC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC790);
  }

  return result;
}

unint64_t sub_1DD42366C()
{
  result = qword_1EE163298;
  if (!qword_1EE163298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163298);
  }

  return result;
}

unint64_t sub_1DD4236C0()
{
  result = qword_1EE165A70;
  if (!qword_1EE165A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A70);
  }

  return result;
}

unint64_t sub_1DD423714(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC760, &qword_1DD648250);
    sub_1DD42366C();
    sub_1DD4236C0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1DD423788()
{
  result = qword_1ECCDC7B8;
  if (!qword_1ECCDC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7B8);
  }

  return result;
}

unint64_t sub_1DD4237E0()
{
  result = qword_1EE1632A0;
  if (!qword_1EE1632A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1632A0);
  }

  return result;
}

unint64_t sub_1DD423838()
{
  result = qword_1ECCDC7C8;
  if (!qword_1ECCDC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7C8);
  }

  return result;
}

unint64_t sub_1DD423890()
{
  result = qword_1ECCDC7D0;
  if (!qword_1ECCDC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7D0);
  }

  return result;
}

unint64_t sub_1DD4238E8()
{
  result = qword_1ECCDC7D8;
  if (!qword_1ECCDC7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7D8);
  }

  return result;
}

uint64_t sub_1DD423944(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 264))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD423984(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 264) = 1;
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

    *(result + 264) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactOntologySource(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContactQuery.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF1)
  {
    if (a2 + 15 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 15) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 16;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v5 = v6 - 16;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD423D0C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD423D4C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1DD423DA8()
{
  result = qword_1ECCDC7E0;
  if (!qword_1ECCDC7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7E0);
  }

  return result;
}

unint64_t sub_1DD423E00()
{
  result = qword_1ECCDC7E8;
  if (!qword_1ECCDC7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7E8);
  }

  return result;
}

unint64_t sub_1DD423E58()
{
  result = qword_1ECCDC7F0;
  if (!qword_1ECCDC7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7F0);
  }

  return result;
}

unint64_t sub_1DD423EB0()
{
  result = qword_1ECCDC7F8;
  if (!qword_1ECCDC7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC7F8);
  }

  return result;
}

unint64_t sub_1DD423F08()
{
  result = qword_1ECCDC800;
  if (!qword_1ECCDC800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC800);
  }

  return result;
}

unint64_t sub_1DD423F60()
{
  result = qword_1ECCDC808;
  if (!qword_1ECCDC808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC808);
  }

  return result;
}

unint64_t sub_1DD423FB8()
{
  result = qword_1ECCDC810;
  if (!qword_1ECCDC810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC810);
  }

  return result;
}

unint64_t sub_1DD424010()
{
  result = qword_1ECCDC818;
  if (!qword_1ECCDC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC818);
  }

  return result;
}

unint64_t sub_1DD424068()
{
  result = qword_1EE165A78;
  if (!qword_1EE165A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A78);
  }

  return result;
}

unint64_t sub_1DD4240C0()
{
  result = qword_1EE165A80;
  if (!qword_1EE165A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165A80);
  }

  return result;
}

unint64_t sub_1DD424114()
{
  result = qword_1EE163A88[0];
  if (!qword_1EE163A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE163A88);
  }

  return result;
}

unint64_t sub_1DD424168()
{
  result = qword_1EE165510;
  if (!qword_1EE165510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165510);
  }

  return result;
}

unint64_t sub_1DD4241BC()
{
  result = qword_1EE162668;
  if (!qword_1EE162668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE162668);
  }

  return result;
}

unint64_t sub_1DD424210()
{
  result = qword_1EE1651F0;
  if (!qword_1EE1651F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1651F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecommendationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1DD4242EC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_82_1(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4243D4()
{
  result = qword_1ECCDC830;
  if (!qword_1ECCDC830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC830);
  }

  return result;
}

unint64_t sub_1DD42442C()
{
  result = qword_1ECCDC838;
  if (!qword_1ECCDC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC838);
  }

  return result;
}

unint64_t sub_1DD424484()
{
  result = qword_1EE163A78;
  if (!qword_1EE163A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163A78);
  }

  return result;
}

unint64_t sub_1DD4244DC()
{
  result = qword_1EE163A80;
  if (!qword_1EE163A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163A80);
  }

  return result;
}

unint64_t sub_1DD424530()
{
  result = qword_1EE165538;
  if (!qword_1EE165538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165538);
  }

  return result;
}

unint64_t sub_1DD424584()
{
  result = qword_1ECCDC858;
  if (!qword_1ECCDC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC858);
  }

  return result;
}

unint64_t sub_1DD4245D8()
{
  result = qword_1EE165550;
  if (!qword_1EE165550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165550);
  }

  return result;
}

_BYTE *sub_1DD42462C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_82_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD424734()
{
  result = qword_1ECCDC878;
  if (!qword_1ECCDC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC878);
  }

  return result;
}

unint64_t sub_1DD42478C()
{
  result = qword_1ECCDC880;
  if (!qword_1ECCDC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC880);
  }

  return result;
}

unint64_t sub_1DD4247E4()
{
  result = qword_1ECCDC888;
  if (!qword_1ECCDC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC888);
  }

  return result;
}

unint64_t sub_1DD42483C()
{
  result = qword_1ECCDC890;
  if (!qword_1ECCDC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC890);
  }

  return result;
}

unint64_t sub_1DD424894()
{
  result = qword_1ECCDC898;
  if (!qword_1ECCDC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC898);
  }

  return result;
}

unint64_t sub_1DD4248EC()
{
  result = qword_1EE165540;
  if (!qword_1EE165540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165540);
  }

  return result;
}

unint64_t sub_1DD424944()
{
  result = qword_1EE165548;
  if (!qword_1EE165548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165548);
  }

  return result;
}

unint64_t sub_1DD42499C()
{
  result = qword_1EE165518;
  if (!qword_1EE165518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165518);
  }

  return result;
}

unint64_t sub_1DD4249F4()
{
  result = qword_1EE165520;
  if (!qword_1EE165520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165520);
  }

  return result;
}

unint64_t sub_1DD424A4C()
{
  result = qword_1EE165528;
  if (!qword_1EE165528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165528);
  }

  return result;
}

unint64_t sub_1DD424AA4()
{
  result = qword_1EE165530;
  if (!qword_1EE165530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE165530);
  }

  return result;
}

unint64_t sub_1DD424AF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void OUTLINED_FUNCTION_28_4()
{

  sub_1DD3BE2A4();
}

void OUTLINED_FUNCTION_30_7()
{
  v0[83] = v0[21];
  v0[84] = v0[15];
  v0[85] = v0[20];
  v0[86] = v0[14];
}

void OUTLINED_FUNCTION_37_7()
{
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0;
  v0[26] = 0;
  v0[27] = 0;
}

void OUTLINED_FUNCTION_43_4()
{

  JUMPOUT(0x1E12B2260);
}

uint64_t OUTLINED_FUNCTION_44_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD640C18();
}

void OUTLINED_FUNCTION_45_3(uint64_t a1@<X8>)
{
  *(v1 + 792) = a1;
  *(v1 + 800) = *(v1 + 104);
  *(v1 + 808) = *(v1 + 100);
}

uint64_t OUTLINED_FUNCTION_49_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1DD4178F8(a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_53_3(uint64_t a1, uint64_t a2)
{

  return sub_1DD640AB8();
}

uint64_t OUTLINED_FUNCTION_54_3(uint64_t a1, uint64_t a2)
{

  return sub_1DD640B78();
}

void OUTLINED_FUNCTION_62_3()
{
  v0[30] = 0;
  v0[32] = 0;
  v0[34] = 0;
  v0[20] = 0;
  v0[21] = 0;
}

void sub_1DD424E0C(uint64_t a1)
{
  sub_1DD3C6C14();
  if (v1 <= 0x3F)
  {
    sub_1DD424EA8(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ContactResolverConfig(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD424EA8(uint64_t a1)
{
  if (!qword_1EE160138)
  {
    sub_1DD424F00();
    v1 = sub_1DD6405F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE160138);
    }
  }
}

unint64_t sub_1DD424F00()
{
  result = qword_1EE163870;
  if (!qword_1EE163870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE163870);
  }

  return result;
}

void sub_1DD424F6C(uint64_t a1)
{
  sub_1DD424FD4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1DD424FD4(uint64_t a1)
{
  if (!qword_1EE160510)
  {
    type metadata accessor for Contact(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE160510);
    }
  }
}

void sub_1DD4250A0(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_1_4();
  v44 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v43 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  v43 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  memcpy(v47, a1, 0x108uLL);
  if (sub_1DD4254CC(a1))
  {
    *v25 = 0;
    *(v25 + 1) = 0xE000000000000000;
    v25[16] = 2;
    *(v25 + 3) = 0;
    *(v25 + 4) = 0xE000000000000000;
    *(v25 + 7) = 0;
    *(v25 + 8) = 0xE000000000000000;
    *(v25 + 9) = 0;
    *(v25 + 10) = 0xE000000000000000;
    *(v25 + 11) = 0;
    *(v25 + 12) = 0xE000000000000000;
    *(v25 + 13) = 0;
    *(v25 + 14) = 0xE000000000000000;
    *(v25 + 15) = 0;
    *(v25 + 16) = 0xE000000000000000;
    *(v25 + 17) = 0;
    *(v25 + 18) = 0xE000000000000000;
    *(v25 + 19) = 0;
    *(v25 + 20) = 0xE000000000000000;
    *(v25 + 21) = 0;
    *(v25 + 22) = 0xE000000000000000;
    *(v25 + 23) = 0;
    *(v25 + 24) = 0xE000000000000000;
    *(v25 + 25) = 0;
    *(v25 + 26) = 0xE000000000000000;
    v26 = MEMORY[0x1E69E7CC0];
    *(v25 + 27) = MEMORY[0x1E69E7CC0];
    v27 = v13[19];
    v28 = sub_1DD63CBB8();
    __swift_storeEnumTagSinglePayload(&v25[v27], 1, 1, v28);
    *&v25[v13[20]] = v26;
    v25[v13[21]] = 0;
    v29 = &v25[v13[22]];
    *v29 = 0;
    *(v29 + 1) = 0;
    v25[v13[23]] = 2;
    v30 = &v25[v13[24]];
    *v30 = 0;
    *(v30 + 1) = 0xE000000000000000;
    *(v25 + 5) = 0xD000000000000012;
    *(v25 + 6) = 0x80000001DD66B6F0;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8A0, &qword_1DD649350) + 48);
    sub_1DD415D68(v25, a2);
    a2[v31] = 1;
    OUTLINED_FUNCTION_12_14();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1_28();
    sub_1DD3C4D54(v25, v32);
    return;
  }

  OUTLINED_FUNCTION_10_18();
  v33 = v48;
  sub_1DD4255F4(v46, v12);
  if (!v33)
  {
    OUTLINED_FUNCTION_7_16();
    if (v34)
    {
      sub_1DD425B4C(v12);
      OUTLINED_FUNCTION_10_18();
      v35 = v45;
      sub_1DD425BB4(v46, v45);
      OUTLINED_FUNCTION_7_16();
      if (v34)
      {
        sub_1DD425B4C(v35);
        OUTLINED_FUNCTION_10_18();
        v36 = v44;
        sub_1DD425E7C(v46, v44);
        OUTLINED_FUNCTION_7_16();
        if (v34)
        {
          sub_1DD425B4C(v36);
          memcpy(a2, v47, 0x108uLL);
          OUTLINED_FUNCTION_12_14();
          swift_storeEnumTagMultiPayload();
          sub_1DD3C9478(v47, v46);
          return;
        }

        OUTLINED_FUNCTION_0_37();
        v41 = v43;
        sub_1DD426A24(v36, v43, v42);
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8A0, &qword_1DD649350) + 48);
        sub_1DD426A24(v41, a2, v2);
        v39 = 4;
      }

      else
      {
        OUTLINED_FUNCTION_0_37();
        sub_1DD426A24(v35, v19, v40);
        v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8A0, &qword_1DD649350) + 48);
        sub_1DD426A24(v19, a2, v2);
        v39 = 3;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_37();
      sub_1DD426A24(v12, v22, v37);
      v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8A0, &qword_1DD649350) + 48);
      sub_1DD426A24(v22, a2, v2);
      v39 = 2;
    }

    a2[v38] = v39;
    OUTLINED_FUNCTION_12_14();
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1DD4254CC(void *a1)
{
  v2 = a1[3];
  if (v2 == 0xD000000000000012 && 0x80000001DD66B6F0 == a1[4])
  {
    return 1;
  }

  v4 = a1[7];
  v5 = a1[8];
  v6 = a1[11];
  v7 = a1[12];
  if (OUTLINED_FUNCTION_11_13(v2))
  {
    return 1;
  }

  v8 = v4 == 0xD000000000000012 && 0x80000001DD66B6F0 == v5;
  if (v8 || (OUTLINED_FUNCTION_11_13(v4) & 1) != 0)
  {
    return 1;
  }

  v9 = v4 == 0x636E656772656D65 && v5 == 0xE900000000000079;
  if (v9 || (v10 = sub_1DD640CD8(), result = 0, (v10 & 1) != 0))
  {
    if (v6 != 0x7365636976726573 || v7 != 0xE800000000000000)
    {

      return sub_1DD640CD8();
    }

    return 1;
  }

  return result;
}

uint64_t sub_1DD4255F4@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  memcpy(__dst, __src, 0x108uLL);
  memcpy(__srca, __src, sizeof(__srca));
  if (!sub_1DD41E198())
  {
    if (!__dst[23] || ((__dst[23] & 0x2000000000000000) != 0 ? (v7 = HIBYTE(__dst[23]) & 0xFLL) : (v7 = __dst[22] & 0xFFFFFFFFFFFFLL), !v7))
    {
      if (__dst[26])
      {
        v8 = HIBYTE(__dst[29]) & 0xFLL;
        if ((__dst[29] & 0x2000000000000000) == 0)
        {
          v8 = __dst[28] & 0xFFFFFFFFFFFFLL;
        }

        if (v8)
        {
          v9 = __dst[24];
          if (qword_1EE165FB0 != -1)
          {
            OUTLINED_FUNCTION_0_2();
            swift_once();
          }

          v10 = sub_1DD63F9F8();
          __dst[35] = __swift_project_value_buffer(v10, qword_1EE16F068);
          v11 = sub_1DD63F9D8();
          v12 = sub_1DD640368();
          if (os_log_type_enabled(v11, v12))
          {
            OUTLINED_FUNCTION_28();
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&dword_1DD38D000, v11, v12, "Resolving handle value request", v13, 2u);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          v14 = v4 + *(type metadata accessor for ContactQuickResolver(0) + 24);
          if ((v14[*(type metadata accessor for ContactResolverConfig(0) + 48)] & 1) == 0)
          {
            goto LABEL_35;
          }

          __swift_project_boxed_opaque_existential_1(v4, v4[3]);
          if (v9)
          {
            v15 = OUTLINED_FUNCTION_3_19();
            v17 = v16(v15);
            v25 = v3;
            if (!v3)
            {
              v26 = v17;
LABEL_28:
              if (sub_1DD3CC020())
              {
                sub_1DD408BFC();
                if ((v26 & 0xC000000000000001) != 0)
                {
                  MEMORY[0x1E12B2C10](0, v26);
                }

                else
                {
                  v38 = *(v26 + 32);
                }

                memcpy(__srca, __dst, sizeof(__srca));
                sub_1DD3C9478(__dst, v44);
                sub_1DD40F314();
                goto LABEL_36;
              }

              v39 = sub_1DD63F9D8();
              v40 = sub_1DD640368();
              if (os_log_type_enabled(v39, v40))
              {
                OUTLINED_FUNCTION_28();
                v41 = swift_slowAlloc();
                *v41 = 0;
                _os_log_impl(&dword_1DD38D000, v39, v40, "No matching contacts", v41, 2u);
                OUTLINED_FUNCTION_13_0();
                MEMORY[0x1E12B3DA0]();
              }

LABEL_35:
              memcpy(__srca, __dst, sizeof(__srca));
              sub_1DD3C9478(__dst, v44);
              sub_1DD40ED6C(__srca, a2);
LABEL_36:
              v18 = type metadata accessor for Contact(0);
              v19 = a2;
              v20 = 0;
              return __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
            }
          }

          else
          {
            v22 = OUTLINED_FUNCTION_3_19();
            v24 = v23(v22);
            v25 = v3;
            if (!v3)
            {
              v26 = v24;
              if (!sub_1DD3CC020())
              {
                __swift_project_boxed_opaque_existential_1(v4, v4[3]);
                v27 = OUTLINED_FUNCTION_3_19();
                v42 = v28(v27);

                v26 = v42;
              }

              goto LABEL_28;
            }
          }

          v26 = MEMORY[0x1E69E7CC0];
          v29 = v25;
          v30 = v25;
          v31 = sub_1DD63F9D8();
          v32 = sub_1DD640378();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v43 = swift_slowAlloc();
            v44[0] = v29;
            __srca[0] = v43;
            *v33 = 136315138;
            v34 = v29;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
            v35 = sub_1DD63FE38();
            v37 = sub_1DD39565C(v35, v36, __srca);

            *(v33 + 4) = v37;
            _os_log_impl(&dword_1DD38D000, v31, v32, "%s", v33, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v43);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          type metadata accessor for InferenceError();
          sub_1DD4DE46C(4, 0xD00000000000007ALL, 0x80000001DD66B710, 0xD000000000000028, 0x80000001DD66B7B0, 112);

          goto LABEL_28;
        }
      }
    }
  }

  v18 = type metadata accessor for Contact(0);
  v19 = a2;
  v20 = 1;
  return __swift_storeEnumTagSinglePayload(v19, v20, 1, v18);
}

uint64_t sub_1DD425B4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD425BB4@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  memcpy(v33, a1, 0x108uLL);
  if (LOBYTE(v33[2]) == 1 && v33[23] == 0)
  {
    v30 = a2;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v16 = sub_1DD63F9F8();
    __swift_project_value_buffer(v16, qword_1EE16F068);
    v17 = sub_1DD63F9D8();
    v18 = sub_1DD640368();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_28();
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DD38D000, v17, v18, "Resolving Me request", v19, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v20 = *(v3 + 40);
    if (v20)
    {
      memcpy(v32, a1, sizeof(v32));
      v21 = v20;
      sub_1DD3C9478(v33, &v31);
      sub_1DD40F314();
      sub_1DD42639C(v13, v10);

      OUTLINED_FUNCTION_1_28();
      sub_1DD3C4D54(v13, v22);
      OUTLINED_FUNCTION_0_37();
      sub_1DD426A24(v10, v13, v23);
      v13[16] = 1;
      v24 = v30;
      sub_1DD426A24(v13, v30, v3);
      return __swift_storeEnumTagSinglePayload(v24, 0, 1, v6);
    }

    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640378();
    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_28();
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DD38D000, v26, v27, "Me request but no MeCard", v28, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v15 = v30;
  }

  else
  {
    v15 = a2;
  }

  return __swift_storeEnumTagSinglePayload(v15, 1, 1, v6);
}

void sub_1DD425E7C(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v50, a1, 0x108uLL);
  v10 = v50[0];
  v11 = v50[1];
  v12 = HIBYTE(v50[1]) & 0xFLL;
  if ((v50[1] & 0x2000000000000000) == 0)
  {
    v12 = v50[0] & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (v13 = v3 + *(type metadata accessor for ContactQuickResolver(0) + 24), (*(v13 + *(type metadata accessor for ContactResolverConfig(0) + 48)) & 1) == 0))
  {
    v37 = OUTLINED_FUNCTION_16();
    v39 = v6;
LABEL_14:
    __swift_storeEnumTagSinglePayload(v37, v38, 1, v39);
    return;
  }

  v46 = a2;
  v47 = v6;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v14 = sub_1DD63F9F8();
  v50[35] = __swift_project_value_buffer(v14, qword_1EE16F068);
  v15 = sub_1DD63F9D8();
  v16 = sub_1DD640368();
  if (os_log_type_enabled(v15, v16))
  {
    OUTLINED_FUNCTION_28();
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1DD38D000, v15, v16, "resolving a query with a known contact ID", v17, 2u);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  MEMORY[0x1EEE9AC00](v18);
  v19 = sub_1DD425040(sub_1DD426930);
  v20 = v19;
  if ((v21 & 1) == 0)
  {
    if (v19)
    {
      memcpy(v49, v50, sizeof(v49));
      sub_1DD426950(v20);
      sub_1DD3C9478(v50, &v48);
      sub_1DD40F314();
      v40 = v46;
      sub_1DD42639C(v9, v46);
      sub_1DD42695C(v20);
      OUTLINED_FUNCTION_1_28();
      sub_1DD3C4D54(v9, v41);
      v37 = v40;
      v38 = 0;
      v39 = v47;
    }

    else
    {
      sub_1DD3C9478(v50, v49);
      v42 = sub_1DD63F9D8();
      v43 = sub_1DD640378();
      sub_1DD3C9580(v50);
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v49[0] = v45;
        *v44 = 136315138;
        *(v44 + 4) = sub_1DD39565C(v10, v11, v49);
        _os_log_impl(&dword_1DD38D000, v42, v43, "no CNContacts with id=%s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      sub_1DD42695C(0);
      v37 = v46;
      v39 = v47;
      v38 = 1;
    }

    goto LABEL_14;
  }

  v22 = OUTLINED_FUNCTION_16();
  sub_1DD426950(v22);
  v23 = v20;
  v24 = sub_1DD63F9D8();
  v25 = sub_1DD640378();
  v26 = OUTLINED_FUNCTION_16();
  sub_1DD42695C(v26);
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v49[0] = v28;
    *v27 = 136315138;
    v48 = v20;
    v29 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v30 = sub_1DD63FE38();
    v32 = sub_1DD39565C(v30, v31, v49);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_1DD38D000, v24, v25, "%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  type metadata accessor for InferenceError();
  swift_allocObject();
  v33 = sub_1DD4DE96C(4, 0, 0xE000000000000000, 0xD00000000000007ALL, 0x80000001DD66B710, 0xD00000000000001DLL, 0x80000001DD66B790, 143, MEMORY[0x1E69E7CC0], 1);
  sub_1DD426968();
  swift_allocError();
  *v34 = v33;
  swift_willThrow();
  v35 = OUTLINED_FUNCTION_16();
  sub_1DD42695C(v35);
  v36 = OUTLINED_FUNCTION_16();
  sub_1DD42695C(v36);
}

uint64_t sub_1DD42639C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v32 - v6;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v8 = (matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  OUTLINED_FUNCTION_1_4();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  sub_1DD415D68(a1, &v32 - v13);
  v36 = &v14[v8[7]];
  sub_1DD43038C(v36);
  sub_1DD3CE274();
  v15 = MEMORY[0x1E69E7CC0];
  v16 = sub_1DD63FC88();
  v17 = &v14[v8[8]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = v15;
  *&v14[v8[9]] = v16;
  *&v14[v8[10]] = 0;
  v14[v8[11]] = 1;
  v18 = v2 + *(type metadata accessor for ContactQuickResolver(0) + 24);
  v19 = *(v18 + *(type metadata accessor for ContactResolverConfig(0) + 60));
  v20 = *(a1 + *(type metadata accessor for Contact(0) + 80));
  v21 = *(v20 + 16);
  if (v21)
  {
    v32 = v11;
    v33 = v14;
    v34 = a2;
    v43 = v15;
    v35 = v19;
    v22 = sub_1DD42B5CC(0, v21, 0);
    v25 = v35;
    v26 = 0;
    v15 = v43;
    v27 = (v20 + 32);
    while (v26 < *(v20 + 16))
    {
      memcpy(__dst, v27, 0x4AuLL);
      memcpy(v41, v27, 0x4AuLL);
      sub_1DD426794(v41, v25, v38);
      memcpy(v40, v41, 0x4AuLL);
      sub_1DD3C6A40(__dst, v39);
      sub_1DD3C6A9C(v40);
      v43 = v15;
      v29 = *(v15 + 16);
      v28 = *(v15 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1DD42B5CC((v28 > 1), v29 + 1, 1);
        v25 = v35;
        v15 = v43;
      }

      ++v26;
      *(v15 + 16) = v29 + 1;
      v22 = sub_1DD3CD2CC(v38, v15 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29);
      v27 += 80;
      if (v21 == v26)
      {
        v14 = v33;
        a2 = v34;
        v11 = v32;
        goto LABEL_8;
      }
    }

    __break(1u);
    memcpy(v22, v23, v24);
    sub_1DD3C6A40(__dst, v39);
    sub_1DD3C6A9C(v40);

    __break(1u);
  }

  else
  {
LABEL_8:
    v30 = v36;

    *(v30 + 272) = v15;
    sub_1DD3CC39C(v14, 0, 0, 1, 100, v11);
    sub_1DD4269C0(v11, v14);
    sub_1DD415D68(v14, a2);
    return sub_1DD3C4D54(v14, type metadata accessor for ContactMatchRuntimeData);
  }

  return result;
}

uint64_t sub_1DD42670C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  result = (*(v9 + 24))(*a2, a2[1], v8, v9);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1DD426794@<X0>(const void *a1@<X0>, __int16 a2@<W1>, char *a3@<X8>)
{
  v6 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(__dst, a1, 0x4AuLL);
  *(v8 + 1) = 0;
  v9 = v6[9];
  v10 = sub_1DD63F148();
  __swift_storeEnumTagSinglePayload(&v8[v9], 1, 1, v10);
  v8[v6[10]] = 0;
  v11 = v6[12];
  v8[v11] = 0;
  v8[v6[13]] = 0;
  v8[v6[14]] = 0;
  *v8 = __dst[72];
  v12 = HIBYTE(a2);
  if (a2 == 2)
  {
    v13 = 3;
  }

  else
  {
    v13 = HIBYTE(a2);
  }

  v14 = __dst[16];
  if (__dst[16] == 3)
  {
    if (v13 == 3)
    {
      goto LABEL_12;
    }
  }

  else if (a2 == 2 || __dst[16] == v13)
  {
    goto LABEL_12;
  }

  if ((a2 & 1) == 0)
  {
LABEL_12:
    v8[v11] = 1;
    v12 = v13;
  }

  v8[v6[11]] = v12 == v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  sub_1DD426A24(v8, &a3[*(v16 + 36)], type metadata accessor for ContactResolver.HandleSignalSet);
  memcpy(a3, __dst, 0x4AuLL);
  return sub_1DD3C6A40(__dst, v18);
}

unint64_t sub_1DD426968()
{
  result = qword_1EE1663F0;
  if (!qword_1EE1663F0)
  {
    type metadata accessor for InferenceError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1663F0);
  }

  return result;
}

uint64_t sub_1DD4269C0(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  (*(*(matched - 8) + 40))(a2, a1, matched);
  return a2;
}

uint64_t sub_1DD426A24(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void *OUTLINED_FUNCTION_10_18()
{

  return memcpy((v0 + 24), (v0 + 288), 0x108uLL);
}

uint64_t OUTLINED_FUNCTION_11_13(uint64_t a1)
{

  return sub_1DD640CD8();
}

double sub_1DD426AF4@<D0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a3;
  v71 = a4;
  v8 = type metadata accessor for Contact(0);
  v76 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  v68 = (v65 - v12);
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v14 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v16 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v74 = v65 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v65 - v20;
  v69 = *a2;
  v22 = sub_1DD3CC024(a1, 0, 0, 1, 100);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = a5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_21:
    sub_1DD5869D0();
    v22 = v64;
  }

  v24 = *(v22 + 16);
  v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v78[0] = v22 + v25;
  v78[1] = v24;
  sub_1DD5261D8(v78);
  v79 = v22;
  sub_1DD42711C(&v79);
  v26 = 0;
  v27 = v79;
  v28 = *(v79 + 16);
  v73 = v25;
  v75 = MEMORY[0x1E69E7CC0];
  while (v28 != v26)
  {
    if (v26 >= *(v27 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_3_3();
    sub_1DD4278F8(v29, v21, v30);
    if (v21[*(matched + 36)] == 1)
    {
      v66 = v10;
      OUTLINED_FUNCTION_3_3();
      sub_1DD427958(v21, v74, v31);
      v32 = v75;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v78[0] = v32;
      if ((v33 & 1) == 0)
      {
        v34 = *(v32 + 16) + 1;
        v75 = v27;
        sub_1DD42B564(0, v34, 1);
        v27 = v75;
        v32 = v78[0];
      }

      v36 = *(v32 + 16);
      v35 = *(v32 + 24);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v75 = v27;
        v41 = v36 + 1;
        v65[1] = v36;
        sub_1DD42B564(v35 > 1, v36 + 1, 1);
        v37 = v41;
        v27 = v75;
        v32 = v78[0];
      }

      ++v26;
      *(v32 + 16) = v37;
      v75 = v32;
      OUTLINED_FUNCTION_3_3();
      sub_1DD427958(v38, v39, v40);
      v10 = v66;
    }

    else
    {
      sub_1DD3C4D54(v21, type metadata accessor for ContactMatchRuntimeData);
      ++v26;
    }
  }

  v42 = v27;
  v43 = v75;
  v44 = *(v75 + 16);
  if (v44)
  {
    v78[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42B5EC(0, v44, 0);
    v45 = v78[0];
    v46 = v72;
    v47 = v43 + v73;
    v48 = *(v14 + 72);
    do
    {
      sub_1DD4278F8(v47, v16, type metadata accessor for ContactMatchRuntimeData);
      OUTLINED_FUNCTION_0_38();
      sub_1DD4278F8(v16, v10, v49);
      sub_1DD3C4D54(v16, type metadata accessor for ContactMatchRuntimeData);
      v78[0] = v45;
      v51 = *(v45 + 16);
      v50 = *(v45 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1DD42B5EC(v50 > 1, v51 + 1, 1);
        v45 = v78[0];
      }

      *(v45 + 16) = v51 + 1;
      OUTLINED_FUNCTION_0_38();
      sub_1DD427958(v10, v52, v53);
      v47 += v48;
      --v44;
    }

    while (v44);
  }

  else
  {

    v45 = MEMORY[0x1E69E7CC0];
    v46 = v72;
  }

  sub_1DD427294(v42);
  v54 = v68;
  sub_1DD4273F4(v45, v68);

  v55 = type metadata accessor for ContactResolverRunTimeData(0);
  sub_1DD4279B8(v54, v46 + v55[10]);
  __swift_storeEnumTagSinglePayload(v46 + v55[14], 1, 1, v67);
  v56 = v55[19];
  v57 = sub_1DD63D0F8();
  __swift_storeEnumTagSinglePayload(v46 + v56, 1, 1, v57);
  v58 = v71;

  sub_1DD63D0E8();
  sub_1DD427A28(v54);
  *v46 = 0;
  *(v46 + 8) = 0xE000000000000000;
  *(v46 + 16) = 0;
  *(v46 + 17) = v78[0];
  *(v46 + 20) = *(v78 + 3);
  *(v46 + 24) = 0;
  *(v46 + 32) = 0xE000000000000000;
  *(v46 + 40) = 0;
  *(v46 + 48) = 0xE000000000000000;
  *(v46 + 56) = 0;
  *(v46 + 64) = 0xE000000000000000;
  *(v46 + 72) = 0;
  *(v46 + 80) = 0xE000000000000000;
  *(v46 + 88) = 0;
  *(v46 + 96) = 0xE000000000000000;
  *(v46 + 104) = 0;
  *(v46 + 112) = 0xE000000000000000;
  *(v46 + 120) = 0;
  *(v46 + 128) = 0xE000000000000000;
  *(v46 + 136) = 0;
  *(v46 + 144) = 0xE000000000000000;
  *(v46 + 152) = 0;
  *(v46 + 160) = 0xE000000000000000;
  *(v46 + 216) = 0u;
  *(v46 + 200) = 0u;
  *(v46 + 184) = 0u;
  *(v46 + 168) = 0u;
  *(v46 + 232) = 0;
  *(v46 + 240) = MEMORY[0x1E69E7CC0];
  *(v46 + 248) = 1;
  *(v46 + 249) = v77[0];
  *(v46 + 252) = *(v77 + 3);
  *(v46 + 256) = 0;
  *(v46 + 264) = v69;
  *(v46 + 272) = v70;
  *(v46 + 280) = v58;
  *(v46 + 288) = 0;
  *(v46 + 296) = v42;
  *(v46 + v55[11]) = 0;
  *(v46 + v55[12]) = 0;
  *(v46 + v55[13]) = 5;
  v59 = (v46 + v55[15]);
  v59[1] = 0u;
  v59[2] = 0u;
  *v59 = xmmword_1DD642F70;
  v60 = v46 + v55[16];
  *&result = 0x100000001;
  *v60 = 1;
  *(v60 + 4) = 2;
  v62 = (v46 + v55[17]);
  *v62 = 0;
  v62[1] = 0;
  *(v46 + v55[20]) = 0;
  v63 = (v46 + v55[21]);
  *v63 = 0;
  v63[1] = 0;
  return result;
}

void sub_1DD42711C(uint64_t *result)
{
  v6 = *result;
  v7 = *(*result + 16);
  if (v7)
  {
    if (v7 != 1)
    {
      matched = type metadata accessor for ContactMatchRuntimeData(0);
      v2 = *(matched - 8);
      v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v4 = *(v6 + v3 + *(matched + 32));
      v5 = -0.5;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_13;
    }

    while (!*(v6 + 16))
    {
      __break(1u);
LABEL_15:
      sub_1DD5869D0();
      v6 = v12;
LABEL_7:
      v10 = 0;
      while (v10 < *(v6 + 16))
      {
        *(v6 + v3 + *(v2 + 72) * v10 + *(matched + 36)) = v4 + v5 < *(v6 + v3 + *(v2 + 72) * v10 + *(matched + 32));
        if (v7 == ++v10)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_13:
      sub_1DD5869D0();
      v6 = v11;
    }

    v9 = type metadata accessor for ContactMatchRuntimeData(0);
    *(v6 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)) + *(v9 + 36)) = 1;
LABEL_10:
    *result = v6;
  }
}

uint64_t sub_1DD427294(uint64_t a1)
{
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  MEMORY[0x1EEE9AC00](matched);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return 0;
  }

  v8 = 0;
  v9 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v10 = *(v3 + 32);
  v11 = *(v9 + v10);
  v12 = *(v4 + 72);
  do
  {
    sub_1DD4278F8(v9, v6, type metadata accessor for ContactMatchRuntimeData);
    v13 = *&v6[v10];
    result = sub_1DD3C4D54(v6, type metadata accessor for ContactMatchRuntimeData);
    if (v11 + -1.0 <= v13 && __OFADD__(v8++, 1))
    {
      __break(1u);
      return result;
    }

    v9 += v12;
    --v7;
  }

  while (v7);
  return v11 >= 0.5 && v8 == 1;
}

uint64_t sub_1DD4273F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Contact(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    OUTLINED_FUNCTION_0_38();
    sub_1DD4278F8(a1 + v8, v6, v9);
    if (v7 == 1)
    {
      OUTLINED_FUNCTION_0_38();
      sub_1DD427958(v6, a2, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      sub_1DD3C4D54(v6, type metadata accessor for Contact);
      *a2 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);

    return swift_storeEnumTagMultiPayload();
  }
}

SiriInference::ModelType_optional __swiftcall ModelType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ModelType.rawValue.getter()
{
  result = 0x64657355656E6F6ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      return result;
    case 4:
      result = 0x616974696E696E75;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

unint64_t sub_1DD4276E8@<X0>(unint64_t *a1@<X8>)
{
  result = ModelType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DD4277C8()
{
  result = qword_1ECCDC8A8;
  if (!qword_1ECCDC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModelType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD4278F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD427958(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DD4279B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD427A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DD427A90()
{
  result = qword_1EE163A60;
  if (!qword_1EE163A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163A60);
  }

  return result;
}

uint64_t ContactResolver.Domain.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1DD640AA8();

  v6 = 5;
  if (v4 < 5)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t ContactResolver.Domain.rawValue.getter()
{
  result = 0x736567617373656DLL;
  switch(*v0)
  {
    case 1:
      result = 0x656E6F6870;
      break;
    case 2:
      result = 0x73746361746E6F63;
      break;
    case 3:
      result = 0x794D646E6966;
      break;
    case 4:
      result = 0x6669636570736E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD427C24@<X0>(uint64_t *a1@<X8>)
{
  result = ContactResolver.Domain.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DD427D08()
{
  v2 = v0;
  v3 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_5();
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000001ELL, 0x80000001DD66B7E0);
  v7 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  (*(v5 + 16))(v1, v2 + v7, v3);
  v8 = sub_1DD63D118();
  v10 = v9;
  (*(v5 + 8))(v1, v3);
  MEMORY[0x1E12B2260](v8, v10);

  MEMORY[0x1E12B2260](0xD000000000000015, 0x80000001DD66B800);
  v11 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v37 = MEMORY[0x1E69E7CC0];

    sub_1DD42A2D4(0, v12, 0, v14, v15, v16, v17);
    v13 = v37;
    v18 = (v11 + 40);
    do
    {
      v20 = *(v18 - 1);
      v19 = *v18;
      v21 = *(v37 + 16);
      v22 = *(v37 + 24);

      if (v21 >= v22 >> 1)
      {
        sub_1DD42A2D4(v22 > 1, v21 + 1, 1, v23, v24, v25, v26);
      }

      *(v37 + 16) = v21 + 1;
      v27 = v37 + 16 * v21;
      *(v27 + 32) = v20;
      *(v27 + 40) = v19;
      v18 += 3;
      --v12;
    }

    while (v12);
  }

  v28 = MEMORY[0x1E12B2430](v13, MEMORY[0x1E69E6158]);
  v30 = v29;

  MEMORY[0x1E12B2260](v28, v30);

  MEMORY[0x1E12B2260](0x6F64202020200A2CLL, 0xEE00203A6E69616DLL);
  sub_1DD6409F8();
  MEMORY[0x1E12B2260](0x6E69202020200A2CLL, 0xEE00203A746E6574);
  v31 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  v32 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent + 8);

  MEMORY[0x1E12B2260](v31, v32);

  MEMORY[0x1E12B2260](0xD000000000000010, 0x80000001DD66B820);
  v33 = v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId;
  v34 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
  v35 = *(v33 + 8);

  MEMORY[0x1E12B2260](v34, v35);

  return 0;
}

uint64_t ContactResolver.RequestContext.__allocating_init()()
{
  v0 = swift_allocObject();
  ContactResolver.RequestContext.init()();
  return v0;
}

uint64_t ContactResolver.RequestContext.init()()
{
  v1 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  sub_1DD63D158();
  (*(v3 + 32))(v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale, v7, v1);
  *(v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain) = 4;
  v8 = (v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  return v0;
}

void sub_1DD42818C()
{
  OUTLINED_FUNCTION_61_4();
  v2 = v0;
  v3 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_5();
  type metadata accessor for ContactResolver.RequestContext(0);
  v7 = swift_allocObject();
  ContactResolver.RequestContext.init()();
  v8 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  (*(v5 + 16))(v1, v2 + v8, v3);
  v9 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  swift_beginAccess();
  (*(v5 + 40))(v7 + v9, v1, v3);
  swift_endAccess();
  *(v7 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates) = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates);

  *(v7 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain) = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain);
  v10 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent + 8);
  v11 = (v7 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  *v11 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  v11[1] = v10;

  v12 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId + 8);
  v13 = (v7 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
  *v13 = *(v2 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
  v13[1] = v12;

  OUTLINED_FUNCTION_25_1();
}

uint64_t static ContactResolver.RequestContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v35 - v11;
  v13 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v14 = *(v6 + 16);
  v35[0] = a1;
  v14(v12, a1 + v13, v4);
  v15 = sub_1DD63D118();
  v17 = v16;
  v18 = *(v6 + 8);
  v18(v12, v4);
  v19 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  v35[1] = a2;
  v14(v9, a2 + v19, v4);
  v20 = sub_1DD63D118();
  v22 = v21;
  v18(v9, v4);
  v23 = v15 == v20 && v17 == v22;
  if (v23)
  {
  }

  else
  {
    v24 = sub_1DD640CD8();

    if ((v24 & 1) == 0)
    {
LABEL_20:
      v33 = 0;
      return v33 & 1;
    }
  }

  v25 = v35[0];
  sub_1DD3C4B10();
  if ((v26 & 1) == 0 || (sub_1DD3B0974(*(v25 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain)) & 1) == 0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_45_4(OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
  v29 = v23 && v27 == v28;
  if (!v29 && (sub_1DD640CD8() & 1) == 0)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_45_4(OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
  if (v23 && v30 == v31)
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_1DD640CD8();
  }

  return v33 & 1;
}

double sub_1DD42859C(uint64_t a1)
{
  v4 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_43_5();
  (*(v6 + 16))(v2, a1, v4);
  v8 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  swift_beginAccess();
  (*(v6 + 40))(v1 + v8, v2, v4);
  swift_endAccess();

  return result;
}

double sub_1DD42869C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates) = a1;

  return result;
}

double sub_1DD428714(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  *v4 = a1;
  v4[1] = a2;

  return result;
}

uint64_t sub_1DD428764(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69646E6143707061 && a2 == 0xED00007365746164;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6449746E65746E69 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD640CD8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1DD428910(char a1)
{
  result = 0x656C61636F6CLL;
  switch(a1)
  {
    case 1:
      result = 0x69646E6143707061;
      break;
    case 2:
      result = 0x6E69616D6F64;
      break;
    case 3:
      result = 0x746E65746E69;
      break;
    case 4:
      result = 0x6449746E65746E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD4289AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD428764(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4289D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DD428908();
  *a1 = result;
  return result;
}

uint64_t sub_1DD4289FC(uint64_t a1)
{
  v2 = sub_1DD42A35C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD428A38(uint64_t a1)
{
  v2 = sub_1DD42A35C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContactResolver.RequestContext.deinit()
{
  v1 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  v2 = sub_1DD63D168();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ContactResolver.RequestContext.__deallocating_deinit()
{
  ContactResolver.RequestContext.deinit();

  return swift_deallocClassInstance();
}

void sub_1DD428B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  v41 = v20;
  v42 = v21;
  v23 = v22;
  v24 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8B0, &qword_1DD6494D0);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v41 - v35;
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1DD42A35C();
  v37 = v41;
  sub_1DD640EF8();
  v38 = OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale;
  OUTLINED_FUNCTION_113();
  swift_beginAccess();
  (*(v26 + 16))(v30, v37 + v38, v24);
  sub_1DD42A458(&qword_1EE165CB8, MEMORY[0x1E6969778]);
  v39 = v42;
  sub_1DD640C68();
  if (v39)
  {
    (*(v26 + 8))(v30, v24);
    (*(v33 + 8))(v36, v31);
  }

  else
  {
    (*(v26 + 8))(v30, v24);
    v43 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8C0, &qword_1DD6494D8);
    sub_1DD42A49C(&qword_1ECCDC8C8, sub_1DD42A3B0, MEMORY[0x1E69E6300]);
    sub_1DD640C68();
    v43 = 2;
    sub_1DD42A404();
    sub_1DD640C68();
    v40 = *(v37 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);

    OUTLINED_FUNCTION_40_5();
    if (!v40)
    {

      OUTLINED_FUNCTION_40_5();
    }

    (*(v33 + 8))(v36, v31);
  }

  OUTLINED_FUNCTION_86();
}

void ContactResolver.RequestContext.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_93();
  v57 = v26;
  v29 = v28;
  v30 = sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2();
  v36 = v35 - v34;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8E0, &qword_1DD6494E0);
  OUTLINED_FUNCTION_0();
  v38 = v37;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v55 - v40;
  v42 = v29[3];
  v58 = v29;
  __swift_project_boxed_opaque_existential_1(v29, v42);
  sub_1DD42A35C();
  sub_1DD640ED8();
  if (v27)
  {
    type metadata accessor for ContactResolver.RequestContext(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v43 = v38;
    v44 = v32;
    sub_1DD42A458(&qword_1EE1637F0, MEMORY[0x1E6969790]);
    v45 = v56;
    OUTLINED_FUNCTION_56_4();
    sub_1DD640B78();
    v46 = *(v44 + 32);
    v47 = v57;
    v55[1] = v30;
    v46(v57 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_locale, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC8C0, &qword_1DD6494D8);
    sub_1DD42A49C(&qword_1ECCDC8E8, sub_1DD42A514, MEMORY[0x1E69E6330]);
    OUTLINED_FUNCTION_56_4();
    sub_1DD640B78();
    *(v47 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_appCandidates) = v59;
    sub_1DD42A568();
    sub_1DD640B78();
    *(v47 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_domain) = a14;
    OUTLINED_FUNCTION_56_4();
    v48 = sub_1DD640B28();
    v49 = (v47 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intent);
    *v49 = v48;
    v49[1] = v50;
    OUTLINED_FUNCTION_56_4();
    v51 = sub_1DD640B28();
    v53 = v52;
    (*(v43 + 8))(v41, v45);
    v54 = (v47 + OBJC_IVAR____TtCC13SiriInference15ContactResolver14RequestContext_intentId);
    *v54 = v51;
    v54[1] = v53;
  }

  __swift_destroy_boxed_opaque_existential_1(v58);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD429360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactResolver.RequestContext.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t ContactResolver.AppCandidate.bundleId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactResolver.AppCandidate.init(bundleId:type:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

BOOL static ContactResolver.AppCandidate.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1DD640CD8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1DD4294A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD42956C(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_1DD4295A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4294A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4295CC(uint64_t a1)
{
  v2 = sub_1DD42A5BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD429608(uint64_t a1)
{
  v2 = sub_1DD42A5BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ContactResolver.AppCandidate.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_93();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC900, &qword_1DD6494E8);
  OUTLINED_FUNCTION_0();
  v30 = v28;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_43_5();
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  sub_1DD42A5BC();
  sub_1DD640EF8();
  sub_1DD640C18();
  if (!v23)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DD42A610();
    OUTLINED_FUNCTION_57_5();
    sub_1DD640C68();
  }

  (*(v30 + 8))(v24, v27);
  OUTLINED_FUNCTION_86();
}

void ContactResolver.AppCandidate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_93();
  v14 = v13;
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC918, &qword_1DD6494F0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  __swift_project_boxed_opaque_existential_1(v14, v14[3]);
  v18 = sub_1DD42A5BC();
  OUTLINED_FUNCTION_51_4(&_s14descr1F58A7859O12AppCandidateV10CodingKeysON, v19, v18);
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    OUTLINED_FUNCTION_44_4();
    v20 = sub_1DD640B28();
    v22 = v21;
    OUTLINED_FUNCTION_59_2();
    sub_1DD42A664();
    OUTLINED_FUNCTION_39_4(&type metadata for ContactResolver.AppCandidateType);
    v23 = OUTLINED_FUNCTION_41();
    v24(v23);
    *v16 = v20;
    *(v16 + 8) = v22;
    *(v16 + 16) = a12;

    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  OUTLINED_FUNCTION_86();
}

unint64_t ContactResolver.AppCandidateType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1DD429AD0()
{
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000002BLL, 0x80000001DD66B840);
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v1, v2);

  MEMORY[0x1E12B2260](0xD00000000000001ELL, 0x80000001DD66B870);
  sub_1DD6409F8();
  return 0;
}

uint64_t ContactResolver.Spec.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 513;
  return result;
}

uint64_t ContactResolver.Spec.init()()
{
  result = v0;
  *(v0 + 16) = 513;
  return result;
}

uint64_t sub_1DD429C24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001DLL && 0x80000001DD66B930 == a2;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001DD66B950 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1DD429CF8(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_1DD429D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD429C24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD429D60(uint64_t a1)
{
  v2 = sub_1DD42A6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD429D9C(uint64_t a1)
{
  v2 = sub_1DD42A6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD429DF0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC928, &qword_1DD6494F8);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_43_5();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD42A6B8();
  sub_1DD640EF8();
  sub_1DD640C28();
  if (!v1)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DD42A70C();
    OUTLINED_FUNCTION_57_5();
    sub_1DD640C68();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t ContactResolver.Spec.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ContactResolver.Spec.init(from:)(a1, v3, v4, v5, v6, v7, v8, v9, v11, *v12, *&v12[4], v12[6]);
  return v2;
}

void ContactResolver.Spec.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12)
{
  OUTLINED_FUNCTION_93();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC940, &qword_1DD649500);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v16);
  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v17 = sub_1DD42A6B8();
  OUTLINED_FUNCTION_51_4(&_s14descr1F58A7859O4SpecC10CodingKeysON, v18, v17);
  if (v13)
  {
    type metadata accessor for ContactResolver.Spec();
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_44_4();
    *(v12 + 16) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_59_2();
    sub_1DD42A784();
    OUTLINED_FUNCTION_39_4(&type metadata for ContactResolver.AllowSuggestedContacts);
    v19 = OUTLINED_FUNCTION_41();
    v20(v19);
    *(v12 + 17) = a12;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD42A100@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ContactResolver.Spec.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD42A1EC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {

    return a2();
  }

  return result;
}

void sub_1DD42A2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_27_8();
  sub_1DD42D7EC();
  *v7 = v8;
}

uint64_t type metadata accessor for ContactResolver.RequestContext(uint64_t a1)
{
  result = qword_1EE162D78;
  if (!qword_1EE162D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DD42A35C()
{
  result = qword_1ECCDC8B8;
  if (!qword_1ECCDC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8B8);
  }

  return result;
}

unint64_t sub_1DD42A3B0()
{
  result = qword_1ECCDC8D0;
  if (!qword_1ECCDC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8D0);
  }

  return result;
}

unint64_t sub_1DD42A404()
{
  result = qword_1ECCDC8D8;
  if (!qword_1ECCDC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8D8);
  }

  return result;
}

uint64_t sub_1DD42A458(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DD63D168();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DD42A49C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDC8C0, &qword_1DD6494D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DD42A514()
{
  result = qword_1ECCDC8F0;
  if (!qword_1ECCDC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8F0);
  }

  return result;
}

unint64_t sub_1DD42A568()
{
  result = qword_1ECCDC8F8;
  if (!qword_1ECCDC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC8F8);
  }

  return result;
}

unint64_t sub_1DD42A5BC()
{
  result = qword_1ECCDC908;
  if (!qword_1ECCDC908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC908);
  }

  return result;
}

unint64_t sub_1DD42A610()
{
  result = qword_1ECCDC910;
  if (!qword_1ECCDC910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC910);
  }

  return result;
}

unint64_t sub_1DD42A664()
{
  result = qword_1ECCDC920;
  if (!qword_1ECCDC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC920);
  }

  return result;
}

unint64_t sub_1DD42A6B8()
{
  result = qword_1ECCDC930;
  if (!qword_1ECCDC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC930);
  }

  return result;
}

unint64_t sub_1DD42A70C()
{
  result = qword_1ECCDC938;
  if (!qword_1ECCDC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC938);
  }

  return result;
}

unint64_t sub_1DD42A784()
{
  result = qword_1ECCDC948;
  if (!qword_1ECCDC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC948);
  }

  return result;
}

unint64_t sub_1DD42A7DC()
{
  result = qword_1ECCDC950;
  if (!qword_1ECCDC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC950);
  }

  return result;
}

unint64_t sub_1DD42A834()
{
  result = qword_1ECCDC958;
  if (!qword_1ECCDC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC958);
  }

  return result;
}

unint64_t sub_1DD42A88C()
{
  result = qword_1ECCDC960;
  if (!qword_1ECCDC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC960);
  }

  return result;
}

uint64_t sub_1DD42A8F8(uint64_t a1)
{
  result = sub_1DD63D168();
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

uint64_t sub_1DD42AB8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_50_6(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_50_6(v8);
}

_BYTE *sub_1DD42AC10(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_49_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_47_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_48_5(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_82_1(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD42AE2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_50_6(-1);
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
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_50_6(v8);
}

_BYTE *sub_1DD42AEB0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_49_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_47_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_48_5(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_82_1(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD42AF7C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_50_6(-1);
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
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 5);
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

      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 5);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_50_6((*a1 | (v4 << 8)) - 5);
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

  return OUTLINED_FUNCTION_50_6(v8);
}

_BYTE *sub_1DD42B000(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_49_5(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_47_4(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_48_5(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_82_1(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD42B0D0()
{
  result = qword_1ECCDC968;
  if (!qword_1ECCDC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC968);
  }

  return result;
}

unint64_t sub_1DD42B128()
{
  result = qword_1ECCDC970;
  if (!qword_1ECCDC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC970);
  }

  return result;
}

unint64_t sub_1DD42B180()
{
  result = qword_1ECCDC978;
  if (!qword_1ECCDC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC978);
  }

  return result;
}

unint64_t sub_1DD42B1D8()
{
  result = qword_1ECCDC980;
  if (!qword_1ECCDC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC980);
  }

  return result;
}

unint64_t sub_1DD42B230()
{
  result = qword_1ECCDC988;
  if (!qword_1ECCDC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC988);
  }

  return result;
}

unint64_t sub_1DD42B288()
{
  result = qword_1ECCDC990;
  if (!qword_1ECCDC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC990);
  }

  return result;
}

unint64_t sub_1DD42B2E0()
{
  result = qword_1ECCDC998;
  if (!qword_1ECCDC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC998);
  }

  return result;
}

unint64_t sub_1DD42B338()
{
  result = qword_1ECCDC9A0;
  if (!qword_1ECCDC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC9A0);
  }

  return result;
}

unint64_t sub_1DD42B390()
{
  result = qword_1ECCDC9A8;
  if (!qword_1ECCDC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC9A8);
  }

  return result;
}

uint64_t sub_1DD42B3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42C228(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42C340(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42C450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42B444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_8();
  sub_1DD42E278();
  *v3 = v4;
}

void sub_1DD42B4BC()
{
  OUTLINED_FUNCTION_25_5();
  sub_1DD42F710(v1);
  *v0 = v2;
}

void sub_1DD42B564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_6();
  sub_1DD42F244(v4, v5, v6, v7, v8, v9, v10, sub_1DD3C1C14);
  *v3 = v11;
}

void *sub_1DD42B5CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42C808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42B688()
{
  OUTLINED_FUNCTION_23_9();
  sub_1DD42F244(v1, v2, v3, v4, v5, v6, v7, sub_1DD3C1C80);
  *v0 = v8;
}

uint64_t sub_1DD42B780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42CA10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42B7EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42CBC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42CD8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42CFF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42D0FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42D20C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42D324(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42B95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42D424(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42B97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_29_5();
  sub_1DD42D55C();
  *v3 = v4;
}

void *sub_1DD42BA08(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42D620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42BA74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42D8A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42DA74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42DCD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42BBC8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42DDE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42E09C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1DD42BCF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_26_8();
  sub_1DD42E278();
  *v3 = v4;
}

uint64_t sub_1DD42BD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42E3F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42E508(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BDE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42E620(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42E728(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42E87C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42E97C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42EC20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42BFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42EDE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DD42C01C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42EEF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42F3D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C10C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42F4E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C12C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42F5F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42F7B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42F8D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DD42FADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DD42C228(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEC0, &unk_1DD649F60);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2534((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEC8, &qword_1DD6441E8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42C340(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF8, &qword_1DD644040);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC00, &qword_1DD649DF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42C450(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA00, &qword_1DD649E98);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA08, &qword_1DD649EA0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42C5B8(uint64_t a1)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_38_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
    OUTLINED_FUNCTION_51(v7);
    v9 = *(v8 + 72);
    v10 = OUTLINED_FUNCTION_12_15();
    _swift_stdlib_malloc_size(v10);
    if (v9)
    {
      OUTLINED_FUNCTION_37_8();
      v12 = v12 && v9 == -1;
      if (!v12)
      {
        OUTLINED_FUNCTION_36_4(v11);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v2)
  {
    v14 = OUTLINED_FUNCTION_35_5(v13);
    sub_1DD3C1BE8(v14, v15, v16);
    *(v1 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_31_7();
  }

  OUTLINED_FUNCTION_25_1();
}

void sub_1DD42C748()
{
  OUTLINED_FUNCTION_16_1();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_6();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD60, &unk_1DD649EC0);
      v7 = OUTLINED_FUNCTION_21_0(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_5_22();
        sub_1DD3C1C2C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD68, &qword_1DD6440E8);
    OUTLINED_FUNCTION_11_14(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v4)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1DD42C808(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE0, &qword_1DD663660);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1C54(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DD42CA10(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAD0, &qword_1DD649FE0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1CF0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42CB18(uint64_t a1)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_8_11();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_5_8(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_35();
    if (v4)
    {
      v14 = OUTLINED_FUNCTION_53(v8, v9, v10, v11, v12, v13);
      v15 = OUTLINED_FUNCTION_52_1(v14);
      OUTLINED_FUNCTION_22_2(v15);
      OUTLINED_FUNCTION_48(v16);
      if (v3)
      {
LABEL_8:
        v17 = OUTLINED_FUNCTION_17_12();
        v2(v17);
        *(v1 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_25_1();
        return;
      }
    }

    else if (v3)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_13_12();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_6();
  if (!v6)
  {
    OUTLINED_FUNCTION_4_7();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1DD42CBC0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA20, &qword_1DD649ED8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD78, &unk_1DD644390) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD78, &unk_1DD644390) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DD3C1D14(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DD42CD8C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAB0, &qword_1DD649FA8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3AA4E0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAB8, &unk_1DD649FB0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1DD42CEA4(uint64_t a1)
{
  OUTLINED_FUNCTION_61_4();
  OUTLINED_FUNCTION_16_1();
  if (v4)
  {
    OUTLINED_FUNCTION_5_8();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_15_6();
      if (v5)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_4_7();
    }
  }

  OUTLINED_FUNCTION_38_4();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCAC0, &unk_1DD649FC0);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
    OUTLINED_FUNCTION_51(v7);
    v9 = *(v8 + 72);
    v10 = OUTLINED_FUNCTION_12_15();
    _swift_stdlib_malloc_size(v10);
    if (v9)
    {
      OUTLINED_FUNCTION_37_8();
      v12 = v12 && v9 == -1;
      if (!v12)
      {
        OUTLINED_FUNCTION_36_4(v11);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_24_0();
  if (v2)
  {
    v14 = OUTLINED_FUNCTION_35_5(v13);
    sub_1DD3C1D40(v14, v15, v16);
    *(v1 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_31_7();
  }

  OUTLINED_FUNCTION_25_1();
}

uint64_t sub_1DD42CFF8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB60, &qword_1DD64A0B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1DD3C1D6C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42D0FC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC70, &unk_1DD649E00);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1DD3C2520((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFD10, &qword_1DD6589F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD42D20C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9C0, &qword_1DD649E10);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1DD3AA4E0((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC9C8, &qword_1DD649E18);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}