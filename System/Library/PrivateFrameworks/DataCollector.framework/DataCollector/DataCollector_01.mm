uint64_t sub_2485BAE28(uint64_t a1, uint64_t (*a2)())
{
  sub_2485AA9DC(a1, v6);
  type metadata accessor for MessageWrapper();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v3 = a2();

  return v3;
}

uint64_t sub_2485BAEBC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = a1();
  result = type metadata accessor for MessageWrapper();
  a2[3] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_2485BAEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 152) = v14;
  *(v8 + 160) = v7;
  *(v8 + 216) = a7;
  *(v8 + 136) = a4;
  *(v8 + 144) = a5;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  *(v8 + 112) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  OUTLINED_FUNCTION_0_10(v9);
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v11 + 64);
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2485BAFD8, 0, 0);
}

uint64_t sub_2485BAFD8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v14 = *(v0 + 216);
  v3 = *(v0 + 152);
  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v11 = *(v0 + 120);
  sub_2485BB6E8(*(v0 + 112), (v0 + 16));
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v10 = OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config;
  sub_2485BDC88(v3, v1);
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_4_4(v4);
  sub_2485BDC88(v3, v1);
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_4_4(v5);
  sub_2485BAAA4(v11, (v2 + v10), sub_2485BDCFC, v4, sub_2485BDE48, v5, (v0 + 56));

  v6 = swift_task_alloc();
  *(v0 + 192) = v6;
  *(v6 + 16) = v0 + 56;
  *(v6 + 24) = v3;
  *(v6 + 32) = v0 + 16;
  *(v6 + 40) = v12;
  *(v6 + 48) = v13;
  *(v6 + 56) = v14;
  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  *v7 = v0;
  v7[1] = sub_2485BB218;
  v8 = MEMORY[0x277CC9318];

  return MEMORY[0x2822008A0](v0 + 96, 0, 0, 0xD00000000000005FLL, 0x80000002485CC440, sub_2485BDED4, v6, v8);
}

uint64_t sub_2485BB218()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_2485BB3C0;
  }

  else
  {

    v2 = sub_2485BB334;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2485BB334()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_2485BB3C0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2485BB43C()
{
  sub_2485BDC2C(v0 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_factory));
  sub_2485B9C68(v0 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_protectedURLChannelMap + 8, &qword_27EE9CA30, &qword_2485CB878);
  return v0;
}

uint64_t sub_2485BB498()
{
  sub_2485BB43C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AttestedRPCService(uint64_t a1)
{
  result = qword_27EE9C990;
  if (!qword_27EE9C990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2485BB544(uint64_t a1)
{
  result = type metadata accessor for RPCConfig(319);
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

uint64_t sub_2485BB5E8()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C9A0, &qword_2485CB808);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_2485BB618(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9C768, &qword_2485CB3D8);
  sub_2485C8E40();
  sub_2485C8EF0();
  result = sub_2485C8AC0();
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

void sub_2485BB6E8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_protectedURLChannelMap;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_protectedURLChannelMap));
  sub_2485BB75C((v5 + 8), a1, v2, a2);

  os_unfair_lock_unlock(v5);
}

void sub_2485BB75C(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a4;
  v8 = sub_2485C8980();
  v71 = *(v8 - 8);
  v72 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v61[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v61[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v61[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v61[-v21];
  v23 = *a1;
  v70 = a2;
  sub_2485BBDF4(v23, &v73, a2);
  if (v74)
  {
    sub_2485A9F84(&v73, v75);
    v24 = a3 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config;
    v25 = type metadata accessor for RPCConfig(0);
    sub_2485BDC88(v24 + *(v25 + 36), v20);
    v26 = sub_2485C8D00();
    if (__swift_getEnumTagSinglePayload(v20, 1, v26) == 1)
    {
      sub_2485B9C68(v20, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v69 = v4;
      v34 = v71;
      v35 = v72;
      (*(v71 + 16))(v16, v70, v72);
      v36 = sub_2485C8CE0();
      v37 = sub_2485C8EC0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v68 = v38;
        v70 = swift_slowAlloc();
        *&v73 = v70;
        *v38 = 136315138;
        sub_2485BE8EC(&qword_27EE9CA78, MEMORY[0x277CC9290]);
        v39 = sub_2485C9020();
        v41 = v40;
        (*(v34 + 8))(v16, v35);
        v42 = sub_2485B936C(v39, v41, &v73);

        v43 = v68;
        *(v68 + 4) = v42;
        v44 = v43;
        _os_log_impl(&dword_2485A5000, v36, v37, "Reusing existing channel for URL: %s", v43, 0xCu);
        v45 = v70;
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x24C1D3660](v45, -1, -1);
        MEMORY[0x24C1D3660](v44, -1, -1);
      }

      else
      {

        (*(v34 + 8))(v16, v35);
      }

      (*(*(v26 - 8) + 8))(v20, v26);
    }

    sub_2485A9F84(v75, v76);
  }

  else
  {
    v67 = v11;
    v68 = a1;
    v69 = v4;
    sub_2485B9C68(&v73, &qword_27EE9CA70, &qword_2485CB8D0);
    v27 = a3 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_config;
    v28 = type metadata accessor for RPCConfig(0);
    sub_2485BDC88(v27 + *(v28 + 36), v22);
    v29 = sub_2485C8D00();
    v30 = a3;
    if (__swift_getEnumTagSinglePayload(v22, 1, v29) == 1)
    {
      sub_2485B9C68(v22, &qword_27EE9C6C0, &unk_2485CB130);
      v31 = v67;
      v33 = v70;
      v32 = v71;
    }

    else
    {
      v33 = v70;
      v32 = v71;
      v46 = v72;
      (*(v71 + 16))(v14, v70, v72);
      v47 = sub_2485C8CE0();
      v48 = sub_2485C8EC0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v63 = v30;
        v50 = v49;
        v65 = v49;
        v66 = swift_slowAlloc();
        *&v75[0] = v66;
        *v50 = 136315138;
        sub_2485BE8EC(&qword_27EE9CA78, MEMORY[0x277CC9290]);
        v64 = v47;
        v51 = sub_2485C9020();
        v62 = v48;
        v53 = v52;
        (*(v32 + 8))(v14, v46);
        v54 = sub_2485B936C(v51, v53, v75);
        v30 = v63;

        v56 = v64;
        v55 = v65;
        *(v65 + 4) = v54;
        v57 = v55;
        _os_log_impl(&dword_2485A5000, v56, v62, "Creating new channel for URL: %s", v55, 0xCu);
        v58 = v66;
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x24C1D3660](v58, -1, -1);
        MEMORY[0x24C1D3660](v57, -1, -1);
      }

      else
      {

        (*(v32 + 8))(v14, v46);
      }

      (*(*(v29 - 8) + 8))(v22, v29);
      v31 = v67;
    }

    v59 = [objc_opt_self() ephemeralSessionConfiguration];
    [v59 setTLSMinimumSupportedProtocolVersion_];
    __swift_project_boxed_opaque_existential_1((v30 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_factory), *(v30 + OBJC_IVAR____TtC13DataCollector18AttestedRPCService_factory + 24));
    v60 = v76;
    sub_2485BA1C0(v33, v59, v76);
    (*(v32 + 16))(v31, v33, v72);
    sub_2485BDEE8(v60, v75);
    sub_2485BBE4C(v75, v31);
  }
}

double sub_2485BBDF4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_2485C75E4(a3), (v6 & 1) != 0))
  {
    sub_2485BDEE8(*(a1 + 56) + 40 * v5, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2485BBE4C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2485A9F84(a1, v12);
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
    MEMORY[0x28223BE20](v4);
    v6 = (&v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    sub_2485BE7C4(*v6, a2, v2);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = sub_2485C8980();
    return (*(*(v8 - 8) + 8))(a2, v8);
  }

  else
  {
    sub_2485B9C68(a1, &qword_27EE9CA70, &qword_2485CB8D0);
    sub_2485BDAD0(v12, a2);
    v10 = sub_2485C8980();
    (*(*(v10 - 8) + 8))(a2, v10);
    return sub_2485B9C68(v12, &qword_27EE9CA70, &qword_2485CB8D0);
  }
}

uint64_t sub_2485BBFF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = a1 + OBJC_IVAR____TtC13DataCollector14MessageWrapper_message;
  v8 = *(a1 + OBJC_IVAR____TtC13DataCollector14MessageWrapper_message);
  v9 = *(v7 + 8);
  sub_2485BDC88(a2, v6);
  v10 = sub_2485C8D00();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v10);
  sub_2485A9304(v8, v9);
  if (EnumTagSinglePayload == 1)
  {
    sub_2485B9C68(v6, &qword_27EE9C6C0, &unk_2485CB130);
  }

  else
  {
    sub_2485A9304(v8, v9);
    v12 = sub_2485C8CE0();
    v13 = sub_2485C8EC0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v15 = v14;
      v16 = 0;
      switch(v9 >> 62)
      {
        case 1uLL:
          LODWORD(v16) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            __break(1u);
LABEL_14:
            __break(1u);
            JUMPOUT(0x2485BC220);
          }

          v16 = v16;
LABEL_10:
          *(v14 + 4) = v16;
          sub_2485ABB18(v8, v9);
          _os_log_impl(&dword_2485A5000, v12, v13, "Serialized request to %ld bytes", v15, 0xCu);
          MEMORY[0x24C1D3660](v15, -1, -1);
          break;
        case 2uLL:
          v18 = *(v8 + 16);
          v17 = *(v8 + 24);
          v19 = __OFSUB__(v17, v18);
          v16 = v17 - v18;
          if (!v19)
          {
            goto LABEL_10;
          }

          goto LABEL_14;
        case 3uLL:
          goto LABEL_10;
        default:
          v16 = BYTE6(v9);
          goto LABEL_10;
      }
    }

    else
    {
      sub_2485ABB18(v8, v9);
    }

    (*(*(v10 - 8) + 8))(v6, v10);
  }

  return v8;
}

id sub_2485BC230(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for MessageWrapper();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC13DataCollector14MessageWrapper_message];
  *v11 = a1;
  *(v11 + 1) = a2;
  sub_2485A9304(a1, a2);
  v18.receiver = v10;
  v18.super_class = v9;
  v12 = objc_msgSendSuper2(&v18, sel_init);
  sub_2485BDC88(a3, v8);
  v13 = sub_2485C8D00();
  if (__swift_getEnumTagSinglePayload(v8, 1, v13) == 1)
  {
    sub_2485B9C68(v8, &qword_27EE9C6C0, &unk_2485CB130);
  }

  else
  {
    v14 = sub_2485C8CE0();
    v15 = sub_2485C8EC0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2485A5000, v14, v15, "Deserialize response complete", v16, 2u);
      MEMORY[0x24C1D3660](v16, -1, -1);
    }

    (*(*(v13 - 8) + 8))(v8, v13);
  }

  return v12;
}

uint64_t sub_2485BC3EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int a7)
{
  v49 = a7;
  v48 = a6;
  v47 = a5;
  v42 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA38, &qword_2485CB890);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  (*(v20 + 16))(&v42 - v18, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA40, &qword_2485CB898);
  swift_allocObject();
  v21 = sub_2485BD124(v19);
  v45 = a2[3];
  v43 = a2[4];
  v44 = __swift_project_boxed_opaque_existential_1(a2, v45);
  sub_2485BDC88(a3, v16);
  sub_2485BDEE8(a4, &v54);
  sub_2485BDEE8(a2, v53);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = (v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 47) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_2485BE174(v16, v26 + v22, &qword_27EE9C6C0, &unk_2485CB130);
  *(v26 + v23) = v21;
  sub_2485A9F84(&v54, v26 + v24);
  sub_2485A9F84(v53, v26 + v25);
  v27 = v46;
  sub_2485BDC88(v42, v46);
  sub_2485BDEE8(a4, v52);
  sub_2485BDEE8(a2, v51);
  v28 = swift_allocObject();
  sub_2485BE174(v27, v28 + v22, &qword_27EE9C6C0, &unk_2485CB130);
  *(v28 + v23) = v21;
  sub_2485A9F84(v52, v28 + v24);
  sub_2485A9F84(v51, v28 + v25);
  v29 = v43;
  v30 = *(v43 + 8);
  swift_retain_n();
  v30(v56, sub_2485BDF4C, v26, sub_2485BE0E8, v28, v45, v29);

  v31 = v57;
  v32 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  v33 = type metadata accessor for MessageWrapper();
  v34 = objc_allocWithZone(v33);
  v35 = &v34[OBJC_IVAR____TtC13DataCollector14MessageWrapper_message];
  v36 = v47;
  v37 = v48;
  *v35 = v47;
  v35[1] = v37;
  sub_2485A9304(v36, v37);
  v50.receiver = v34;
  v50.super_class = v33;
  v38 = objc_msgSendSuper2(&v50, sel_init);
  v55 = v33;
  *&v54 = v38;
  (*(v32 + 8))(&v54, v49, v31, v32);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  v39 = v57;
  v40 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  (*(v40 + 16))(v39, v40);

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

void sub_2485BC870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v40[-v14];
  sub_2485AA9DC(a1, v40);
  type metadata accessor for MessageWrapper();
  if (swift_dynamicCast())
  {
    v16 = v42;
    v17 = &v42[OBJC_IVAR____TtC13DataCollector14MessageWrapper_message];
    v18 = *&v42[OBJC_IVAR____TtC13DataCollector14MessageWrapper_message];
    v19 = *&v42[OBJC_IVAR____TtC13DataCollector14MessageWrapper_message + 8];
    sub_2485A9304(v18, v19);
    sub_2485BCD30(v18, v19);
    sub_2485ABB18(v18, v19);
    sub_2485BDC88(a2, v13);
    v20 = sub_2485C8D00();
    if (__swift_getEnumTagSinglePayload(v13, 1, v20) == 1)
    {

      sub_2485B9C68(v13, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v22 = v16;
      v23 = sub_2485C8CE0();
      v24 = sub_2485C8EB0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        v26 = *v17;
        v27 = *(v17 + 1);
        v28 = v25;
        v29 = 0;
        switch(v27 >> 62)
        {
          case 1uLL:
            LODWORD(v29) = HIDWORD(v26) - v26;
            if (__OFSUB__(HIDWORD(v26), v26))
            {
              __break(1u);
LABEL_22:
              __break(1u);
              JUMPOUT(0x2485BCC9CLL);
            }

            v29 = v29;
LABEL_17:
            *(v25 + 4) = v29;

            _os_log_impl(&dword_2485A5000, v23, v24, "Response successfully recieved - %ld bytes", v28, 0xCu);
            MEMORY[0x24C1D3660](v28, -1, -1);
            break;
          case 2uLL:
            v38 = v26 + 16;
            v37 = *(v26 + 16);
            v36 = *(v38 + 8);
            v39 = __OFSUB__(v36, v37);
            v29 = v36 - v37;
            if (!v39)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          case 3uLL:
            goto LABEL_17;
          default:
            v29 = BYTE6(v27);
            goto LABEL_17;
        }
      }

      else
      {

        v23 = v22;
      }

      (*(*(v20 - 8) + 8))(v13, v20);
    }

    sub_2485BDEE8(a4, v40);
    sub_2485BDEE8(a5, v41);
    v41[5] = a3;

    sub_2485B9C68(v40, &qword_27EE9CA48, &unk_2485CB8A0);
  }

  else
  {
    sub_2485BDC88(a2, v15);
    v21 = sub_2485C8D00();
    if (__swift_getEnumTagSinglePayload(v15, 1, v21) == 1)
    {
      sub_2485B9C68(v15, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v30 = sub_2485C8CE0();
      v31 = sub_2485C8ED0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2485A5000, v30, v31, "Reponse failed due to empty message or incorrect type", v32, 2u);
        MEMORY[0x24C1D3660](v32, -1, -1);
      }

      (*(*(v21 - 8) + 8))(v15, v21);
    }

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    sub_2485B9C14();
    v34 = swift_allocError();
    *v35 = DynamicType;
    sub_2485BCCAC(v34);
  }
}

void sub_2485BCCAC(void *a1)
{
  v3 = (v1 + *(*v1 + 88));
  os_unfair_lock_lock(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA50, &qword_2485CB8B0);
  sub_2485BD310(v3 + *(v4 + 28), a1);
  os_unfair_lock_unlock(v3);
}

void sub_2485BCD30(uint64_t a1, unint64_t a2)
{
  v5 = (v2 + *(*v2 + 88));
  os_unfair_lock_lock(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA50, &qword_2485CB8B0);
  sub_2485BD468(v5 + *(v6 + 28), a1, a2);
  os_unfair_lock_unlock(v5);
}

uint64_t sub_2485BCDBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11);
  v15 = &v31[-v14 - 8];
  if (a1)
  {
    sub_2485BDC88(a2, v13);
    v16 = sub_2485C8D00();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v16);
    v18 = a1;
    if (EnumTagSinglePayload == 1)
    {
      sub_2485B9C68(v13, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v20 = sub_2485C8CE0();
      v21 = sub_2485C8ED0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = a1;
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v25;
        *v23 = v25;
        _os_log_impl(&dword_2485A5000, v20, v21, "Response failed with error: %@", v22, 0xCu);
        sub_2485B9C68(v23, &qword_27EE9C848, &qword_2485CB668);
        MEMORY[0x24C1D3660](v23, -1, -1);
        MEMORY[0x24C1D3660](v22, -1, -1);
      }

      (*(*(v16 - 8) + 8))(v13, v16);
    }

    sub_2485BCCAC(a1);
  }

  else
  {
    sub_2485BDC88(a2, &v31[-v14 - 8]);
    v19 = sub_2485C8D00();
    if (__swift_getEnumTagSinglePayload(v15, 1, v19) == 1)
    {
      sub_2485B9C68(v15, &qword_27EE9C6C0, &unk_2485CB130);
    }

    else
    {
      v26 = sub_2485C8CE0();
      v27 = sub_2485C8EB0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2485A5000, v26, v27, "Response with zero bytes received", v28, 2u);
        MEMORY[0x24C1D3660](v28, -1, -1);
      }

      (*(*(v19 - 8) + 8))(v15, v19);
    }

    sub_2485BCD30(0, 0xC000000000000000);
  }

  sub_2485BDEE8(a4, v31);
  sub_2485BDEE8(a5, v32);
  v32[5] = a3;

  return sub_2485B9C68(v31, &qword_27EE9CA48, &unk_2485CB8A0);
}

uint64_t sub_2485BD124(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA58, &qword_2485CB8B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA50, &qword_2485CB8B0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v16 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA38, &qword_2485CB890);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5, a1, v11);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v11);
  *v10 = 0;
  v13 = *(v7 + 36);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA60, &qword_2485CB8C0);
  bzero(v10 + v13, *(*(v14 - 8) + 64));
  sub_2485BE174(v5, v10 + v13, &qword_27EE9CA58, &qword_2485CB8B8);
  (*(v12 + 8))(a1, v11);
  memcpy((v1 + *(*v1 + 88)), v10, v8);
  return v1;
}

uint64_t sub_2485BD310(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA38, &qword_2485CB890);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  if (!__swift_getEnumTagSinglePayload(a1, 1, v4))
  {
    (*(v5 + 16))(v7, a1, v4);
    v10[1] = a2;
    v8 = a2;
    sub_2485C8E20();
    (*(v5 + 8))(v7, v4);
  }

  sub_2485B9C68(a1, &qword_27EE9CA58, &qword_2485CB8B8);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
}

uint64_t sub_2485BD468(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA38, &qword_2485CB890);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  if (!__swift_getEnumTagSinglePayload(a1, 1, v6))
  {
    (*(v7 + 16))(v9, a1, v6);
    v11[0] = a2;
    v11[1] = a3;
    sub_2485A9304(a2, a3);
    sub_2485C8E30();
    (*(v7 + 8))(v9, v6);
  }

  sub_2485B9C68(a1, &qword_27EE9CA58, &qword_2485CB8B8);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
}

uint64_t sub_2485BD5D0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9C768, &qword_2485CB3D8);
  sub_2485C8E40();
  sub_2485C8EF0();
  sub_2485C8AC0();
  v1 = sub_2485C8AD0();
  sub_2485BDC1C(v1);
  return v0;
}

uint64_t sub_2485BD68C()
{
  v0 = sub_2485BD5D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2485BD6F8(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9C768, &qword_2485CB3D8);
  sub_2485C8E40();
  sub_2485C8EF0();
  return sub_2485C8AC0();
}

id sub_2485BD7BC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2485BD82C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;

  swift_unknownObjectRetain();
  v4 = v3(v9);
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_2485C8990();
    sub_2485BE468(v4, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(v9);

  return v7;
}

id sub_2485BD8EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_2485C89B0();
  v7 = v6;

  v3(v15, v5, v7);
  sub_2485ABB18(v5, v7);

  v8 = v16;
  if (v16)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v10 = *(v8 - 8);
    MEMORY[0x28223BE20](v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_2485C9030();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_2485BDA68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double sub_2485BDAD0@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v4 = sub_2485C75E4(a2);
  if (v5)
  {
    v6 = v4;
    swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA80, &qword_2485CB8D8);
    sub_2485C8FA0();
    v7 = *(v10 + 48);
    v8 = sub_2485C8980();
    (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v6, v8);
    sub_2485A9F84((*(v10 + 56) + 40 * v6), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C8, &qword_2485CB140);
    sub_2485BE8EC(&qword_27EE9C6D0, MEMORY[0x277CC9270]);
    sub_2485C8FB0();
    *v2 = v10;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2485BDC2C(uint64_t a1)
{
  v2 = type metadata accessor for RPCConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2485BDC88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2485BDCFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  v0 = OUTLINED_FUNCTION_3_4();

  return sub_2485BBFF8(v0, v1);
}

uint64_t objectdestroyTm()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  OUTLINED_FUNCTION_0_10(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_2485C8D00();
  if (!OUTLINED_FUNCTION_5_4(v8))
  {
    OUTLINED_FUNCTION_2_5();
    (*(v9 + 8))(v1 + v5, v0);
  }

  return MEMORY[0x2821FE8E8](v1, v5 + v7, v4 | 7);
}

id sub_2485BDE48(uint64_t a1, unint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2485BC230(a1, a2, v6);
}

uint64_t sub_2485BDEE8(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_2_5();
  (*v3)(a2);
  return a2;
}

void sub_2485BDF4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  OUTLINED_FUNCTION_0_10(v0);
  v1 = OUTLINED_FUNCTION_1_6();

  sub_2485BC870(v1, v2, v3, v4, v5);
}

uint64_t objectdestroy_14Tm()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  OUTLINED_FUNCTION_0_10(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = sub_2485C8D00();
  if (!OUTLINED_FUNCTION_5_4(v8))
  {
    OUTLINED_FUNCTION_2_5();
    (*(v9 + 8))(v1 + v5, v0);
  }

  v10 = (((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 47) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1((v1 + v10));
  __swift_destroy_boxed_opaque_existential_1((v1 + v11));

  return MEMORY[0x2821FE8E8](v1, v11 + 40, v4 | 7);
}

uint64_t sub_2485BE0E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
  OUTLINED_FUNCTION_0_10(v0);
  v1 = OUTLINED_FUNCTION_1_6();

  return sub_2485BCDBC(v1, v2, v3, v4, v5);
}

uint64_t sub_2485BE174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2_5();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2485BE1D8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2485BE220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RPCConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2485BE284()
{
  v1 = type metadata accessor for RPCConfig(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_2485C8980();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    OUTLINED_FUNCTION_2_5();
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v1 + 36);
  v9 = sub_2485C8D00();
  if (!__swift_getEnumTagSinglePayload(v5 + v8, 1, v9))
  {
    OUTLINED_FUNCTION_2_5();
    (*(v10 + 8))(v5 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_2485BE3EC()
{
  type metadata accessor for RPCConfig(0);
  v0 = OUTLINED_FUNCTION_3_4();

  sub_2485BA2D8(v0, v1);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2485BE468(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2485ABB18(result, a2);
  }

  return result;
}

uint64_t sub_2485BE47C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = type metadata accessor for OspreyRPCChannel();
  v16 = &off_285ACDE08;
  *&v14 = a3;
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2485C8980();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_2485A9F84(&v14, a4[7] + 40 * a1);
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

uint64_t sub_2485BE558(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = sub_2485C8980();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for OspreyRPCChannel();
  v28 = &off_285ACDE08;
  *&v26 = a1;
  v11 = *a4;
  v12 = sub_2485C75E4(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CA80, &qword_2485CB8D8);
  if ((sub_2485C8FA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_2485C75E4(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_10:
    result = sub_2485C9070();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *a4;
  if (v15)
  {
    v19 = (v18[7] + 40 * v14);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return sub_2485A9F84(&v26, v19);
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v27);
    MEMORY[0x28223BE20](v21);
    v23 = (&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23);
    sub_2485BE47C(v14, v10, *v23, v18);
    return __swift_destroy_boxed_opaque_existential_1(&v26);
  }
}

uint64_t sub_2485BE7C4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = type metadata accessor for OspreyRPCChannel();
  v14 = &off_285ACDE08;
  v12[0] = a1;
  LOBYTE(a1) = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a3;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
  MEMORY[0x28223BE20](v6);
  v8 = (&v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  sub_2485BE558(*v8, a2, a1, &v11);
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  *a3 = v11;
  return result;
}

uint64_t sub_2485BE8EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2485C8980();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1)
{

  return sub_2485BE174(v4, a1 + v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_5_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t sub_2485BE9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C3B0, &qword_2485CA0A0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_2485BEAE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C3B0, &qword_2485CA0A0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20) + 8) = (a2 - 1);
      return result;
    }

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9C6C0, &unk_2485CB130);
    v10 = a1 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t type metadata accessor for RPCConfig(uint64_t a1)
{
  result = qword_27EE9CA88;
  if (!qword_27EE9CA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2485BEC1C(uint64_t a1)
{
  sub_2485BED64(319, &qword_27EE9CA98, MEMORY[0x277CC9260]);
  if (v1 <= 0x3F)
  {
    sub_2485BED08();
    if (v2 <= 0x3F)
    {
      sub_2485BED64(319, &qword_27EE9CAA8, MEMORY[0x277D85B28]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2485BED08()
{
  if (!qword_27EE9CAA0)
  {
    v0 = sub_2485C8D20();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE9CAA0);
    }
  }
}

void sub_2485BED64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2485C8EF0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RPCError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for RPCError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

double sub_2485BEE6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  v4 = sub_2485C8A20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BasicUploadMetrics(0);
  sub_2485BF578(v0 + *(v8 + 52), v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2485C8A10();
    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      sub_2485BF5E8(v3);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  sub_2485C89F0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_2485BF018(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  if (!*(v1 + 56))
  {
    *(v1 + 56) = 2;
  }

  v9 = type metadata accessor for BasicUploadMetrics(0);
  v10 = *(v9 + 60);
  v11 = *(v1 + v10);
  *(v1 + v10) = a1;
  v12 = a1;

  if (!*(v1 + 56))
  {
    *(v1 + 56) = 3;
  }

  v13 = *(v9 + 52);
  sub_2485BF578(v1 + v13, v8);
  v14 = sub_2485C8A20();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v14);
  result = sub_2485BF5E8(v8);
  if (EnumTagSinglePayload == 1)
  {
    sub_2485C8A10();
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v14);
    return sub_2485BF650(v6, v1 + v13);
  }

  return result;
}

uint64_t sub_2485BF16C(uint64_t result)
{
  v2 = v1[3];
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  v1[3] = v4;
  OUTLINED_FUNCTION_1_7(result);
  v6 = OUTLINED_FUNCTION_0_11();
  result = v7(v6);
  if (result < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v1[4];
  v3 = __CFADD__(v8, result);
  v9 = v8 + result;
  if (v3)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v1[4] = v9;
  OUTLINED_FUNCTION_1_7(v5);
  v10 = OUTLINED_FUNCTION_0_11();
  result = v11(v10);
  if (result < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v1[5];
  v3 = __CFADD__(v12, result);
  v13 = v12 + result;
  if (!v3)
  {
    v1[5] = v13;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2485BF228(uint64_t result)
{
  if (*v1 == -1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = result;
  ++*v1;
  OUTLINED_FUNCTION_1_7(result);
  v3 = OUTLINED_FUNCTION_0_11();
  *&result = COERCE_DOUBLE(v4(v3));
  if (result < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v1[1];
  v6 = __CFADD__(v5, result);
  v7 = v5 + result;
  if (v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v1[1] = v7;
  OUTLINED_FUNCTION_1_7(v2);
  v8 = OUTLINED_FUNCTION_0_11();
  *&result = COERCE_DOUBLE(v9(v8));
  if (result < 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v1[2];
  v6 = __CFADD__(v10, result);
  v11 = v10 + result;
  if (v6)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v1[2] = v11;
  Current = CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_1_7(v2);
  v13 = OUTLINED_FUNCTION_0_11();
  *&result = COERCE_DOUBLE(v14(v13));
  v15 = 0.0;
  if ((v16 & 1) == 0 && Current >= *&result)
  {
    v15 = (Current - *&result) / 3600.0;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_18;
  }

  if (v15 <= -1.0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 < 1.84467441e19)
  {
    v17 = v15;
    v18 = *(type metadata accessor for BasicUploadMetrics(0) + 56);
    sub_2485BF4BC(sub_2485B590C);
    v19 = *(*(v1 + v18) + 16);
    *&result = COERCE_DOUBLE(sub_2485BF530(v19, sub_2485B590C));
    v20 = *(v1 + v18);
    *(v20 + 16) = v19 + 1;
    *(v20 + 8 * v19 + 32) = v17;
    *(v1 + v18) = v20;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for BasicUploadMetrics(uint64_t a1)
{
  result = qword_27EE9CAB0;
  if (!qword_27EE9CAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2485BF468(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));
  v3 = v2;
  return v2;
}

uint64_t sub_2485BF4BC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_2485BF530(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_2485BF578(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2485BF5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2485BF650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2485BF6D4(uint64_t a1, uint64_t a2, int *a3)
{
  sub_2485C8A20();
  OUTLINED_FUNCTION_2_6();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a3[12];
LABEL_5:

    return __swift_getEnumTagSinglePayload(a1 + v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  OUTLINED_FUNCTION_2_6();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a3[13];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[14]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_2485BF7E0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_2485C8A20();
  OUTLINED_FUNCTION_2_6();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a4[12];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
    OUTLINED_FUNCTION_2_6();
    if (*(v13 + 84) != a3)
    {
      *(a1 + a4[14]) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a4[13];
  }

  __swift_storeEnumTagSinglePayload(a1 + v11, a2, a2, v10);
}

void sub_2485BF8D4(uint64_t a1)
{
  sub_2485C8A20();
  if (v1 <= 0x3F)
  {
    sub_2485BF9B0(319);
    if (v2 <= 0x3F)
    {
      sub_2485BFA08();
      if (v3 <= 0x3F)
      {
        sub_2485BFA58(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2485BF9B0(uint64_t a1)
{
  if (!qword_27EE9CAC0)
  {
    sub_2485C8A20();
    v1 = sub_2485C8EF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE9CAC0);
    }
  }
}

void sub_2485BFA08()
{
  if (!qword_27EE9CAC8)
  {
    v0 = sub_2485C8E00();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE9CAC8);
    }
  }
}

void sub_2485BFA58(uint64_t a1)
{
  if (!qword_27EE9CAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9C768, &qword_2485CB3D8);
    v1 = sub_2485C8EF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE9CAD0);
    }
  }
}

uint64_t sub_2485BFAF4(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return OUTLINED_FUNCTION_6_3(sub_2485BFB10, v1);
}

uint64_t sub_2485BFB10()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v2 = *(v0[23] + 120);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 8);
    v0[25] = v4;
    (*(v4 + 56))(ObjectType, v4);
    v5 = v0[11];
    v6 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v5);
    (*(v4 + 16))(ObjectType, v4);
    v13 = (*(v6 + 8) + **(v6 + 8));
    v7 = swift_task_alloc();
    v0[26] = v7;
    *v7 = v0;
    v7[1] = sub_2485BFD10;

    return v13(v0 + 18, v0 + 2, v5, v6);
  }

  else
  {
    v9 = sub_2485B2100();
    v10 = OUTLINED_FUNCTION_10_2(&type metadata for UploaderError, v9);
    OUTLINED_FUNCTION_8_1(v10, v11);
    OUTLINED_FUNCTION_3_0();

    return v12();
  }
}

uint64_t sub_2485BFD10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;

  sub_2485B0C20(v2 + 16);

  return MEMORY[0x2822009F8](sub_2485BFE14, v5, 0);
}

uint64_t sub_2485BFE14()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 216) = *(v0 + 144);
  *(v0 + 232) = *(v0 + 160);
  *(v0 + 57) = *(v0 + 168);
  *(v0 + 58) = *(v0 + 169);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_2485BFED0;

  return sub_2485B1900(v0 + 104);
}

uint64_t sub_2485BFED0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v0;

  v5 = *(v2 + 184);
  if (v0)
  {
    v6 = sub_2485C00F4;
  }

  else
  {
    v6 = sub_2485BFFF8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2485BFFF8()
{
  v15 = v0;
  v1 = *(v0 + 58);
  v2 = *(v0 + 57);
  v3 = *(v0 + 232);
  v10 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1((v0 + 104), v6);
  v11 = v10;
  v12 = v3;
  v13 = v2;
  v14 = v1;
  (*(v7 + 16))(v4, v5, &v11, v6, v7);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t sub_2485C00F4()
{
  OUTLINED_FUNCTION_1_0();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_2485C0150(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_6_3(sub_2485C0170, v2);
}

uint64_t sub_2485C0170()
{
  v23 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (!Strong)
  {
    v12 = sub_2485B2100();
    v13 = OUTLINED_FUNCTION_10_2(&type metadata for UploaderError, v12);
    OUTLINED_FUNCTION_8_1(v13, v14);
LABEL_12:
    OUTLINED_FUNCTION_3_0();

    return v20();
  }

  v2 = Strong;
  v3 = *(v0[14] + 120);
  ObjectType = swift_getObjectType();
  (*(*(v3 + 8) + 24))(v22, ObjectType);
  if (LOBYTE(v22[0]) == 1)
  {
    sub_2485AC61C(v2 + 320, (v0 + 7));
    v5 = v0[10];
    v6 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if ((v7 & 1) == 0)
    {
      v19 = sub_2485B2100();
      OUTLINED_FUNCTION_10_2(&type metadata for UploaderError, v19);
      v11 = 3;
      goto LABEL_11;
    }
  }

  v8 = v0[14];
  if (*(v8 + 128))
  {
    v9 = sub_2485B2100();
    OUTLINED_FUNCTION_10_2(&type metadata for UploaderError, v9);
    v11 = 4;
LABEL_11:
    *v10 = v11;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  *(v8 + 128) = 1;
  OUTLINED_FUNCTION_4_5(qword_2485CBA90);
  v21 = v15;
  v16 = swift_task_alloc();
  v0[16] = v16;
  *v16 = v0;
  v16[1] = sub_2485C0378;
  v17 = v0[13];

  return v21(v0 + 2, v17);
}

uint64_t sub_2485C0378()
{
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_4_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[17] = v0;

  if (v0)
  {
    v7 = v3[14];

    return MEMORY[0x2822009F8](sub_2485C0684, v7, 0);
  }

  else
  {
    v8 = v3[5];
    v9 = v3[6];
    v10 = __swift_project_boxed_opaque_existential_1(v3 + 2, v8);
    OUTLINED_FUNCTION_4_5(&qword_2485CB148);
    v15 = v11;
    v12 = swift_task_alloc();
    v3[18] = v12;
    *v12 = v5;
    v12[1] = sub_2485C0514;
    v13 = v3[15];

    return v15(v10, v13, v8, v9);
  }
}

uint64_t sub_2485C0514()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2485C0614, v2, 0);
}

uint64_t sub_2485C0614()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  swift_unknownObjectRelease();
  sub_2485A9F84((v0 + 16), v2);
  *(v1 + 128) = 0;
  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_2485C0684()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  *(v1 + 128) = 0;
  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_2485C06E4(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  v3[40] = type metadata accessor for BasicUploadMetrics(0);
  v3[41] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[42] = v4;
  *v4 = v3;
  v4[1] = sub_2485C07B0;

  return sub_2485B1900((v3 + 22));
}

uint64_t sub_2485C07B0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 344) = v0;

  if (v0)
  {
    v7 = sub_2485C0B14;
  }

  else
  {
    v7 = sub_2485C08B0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2485C08B0()
{
  v2 = v0[40];
  v1 = v0[41];
  v3 = v0[38];
  v4 = v0[39];
  v5 = *(v4 + 184);
  sub_2485B12E0(v4 + 240, (v0 + 27), &qword_27EE9C678, &unk_2485CAF80);
  sub_2485B12E0(v4 + 280, (v0 + 32), &qword_27EE9C680, &qword_2485CBAA0);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *(v1 + 41) = 0u;
  sub_2485C8A10();
  v6 = v2[13];
  v7 = sub_2485C8A20();
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  *(v1 + v2[14]) = MEMORY[0x277D84F90];
  *(v1 + v2[15]) = 0;
  v8 = v3[3];
  v9 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v8);
  result = (*(v9 + 24))(v8, v9);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[38];
    *(v0[41] + 48) = result;
    v13 = v3[3];
    v12 = v3[4];
    v14 = __swift_project_boxed_opaque_existential_1(v11, v13);
    if ((v12[3])(v13, v12) < 1)
    {
      OUTLINED_FUNCTION_9_2();
      v12[3] = v13;
      v12[4] = &off_285ACE180;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
      sub_2485C131C(v14, boxed_opaque_existential_1);
      __swift_destroy_boxed_opaque_existential_1(v0 + 22);
      OUTLINED_FUNCTION_5_5();
      v0[11] = v0[31];
      sub_2485B1014((v0 + 2), &qword_27EE9CAD8, &qword_2485CBAA8);

      OUTLINED_FUNCTION_3_0();

      return v20();
    }

    else
    {
      if (v5 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v5;
      }

      OUTLINED_FUNCTION_4_5(&qword_2485CBB20);
      v21 = v16;
      v17 = swift_task_alloc();
      v0[44] = v17;
      *v17 = v0;
      v17[1] = sub_2485C0B70;
      v18 = v0[38];

      return v21(v18, v0 + 22, v15);
    }
  }

  return result;
}

uint64_t sub_2485C0B14()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_2485C0B70(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v6 = *v1;
  *v5 = *v1;
  *(v4 + 360) = a1;

  OUTLINED_FUNCTION_4_5(&qword_2485CBB28);
  v12 = v7;
  v8 = swift_task_alloc();
  *(v4 + 368) = v8;
  *v8 = v6;
  v8[1] = sub_2485C0CF0;
  v9 = *(v3 + 328);
  v10 = *(v3 + 304);

  return v12(a1, v10, v9);
}

uint64_t sub_2485C0CF0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 376) = v0;

  if (v0)
  {
    v7 = sub_2485C0EB0;
  }

  else
  {
    v7 = sub_2485C0DF0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2485C0DF0()
{
  sub_2485C1380(*(v3 + 360));
  OUTLINED_FUNCTION_9_2();
  v0[3] = v2;
  v0[4] = &off_285ACE180;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0);
  sub_2485C131C(v1, boxed_opaque_existential_1);
  __swift_destroy_boxed_opaque_existential_1((v3 + 176));
  OUTLINED_FUNCTION_5_5();
  *(v3 + 88) = *(v3 + 248);
  sub_2485B1014(v3 + 16, &qword_27EE9CAD8, &qword_2485CBAA8);

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_2485C0EB0()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *(v0 + 328);
  sub_2485C1380(*(v0 + 360));
  sub_2485C0FD0(v1, v0 + 256);
  sub_2485C1390(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v2 = *(v0 + 272);
  *(v0 + 96) = *(v0 + 256);
  *(v0 + 112) = v2;
  *(v0 + 128) = *(v0 + 288);
  *(v0 + 136) = *(v0 + 216);
  *(v0 + 152) = *(v0 + 232);
  *(v0 + 168) = *(v0 + 248);
  sub_2485B1014(v0 + 96, &qword_27EE9CAD8, &qword_2485CBAA8);

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_2485C0F74()
{
  sub_2485C1450(v0 + 112);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2485C0FD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  if (!*(a1 + 56))
  {
    *(a1 + 56) = 3;
  }

  v10 = type metadata accessor for BasicUploadMetrics(0);
  v11 = *(v10 + 52);
  sub_2485B12E0(a1 + v11, v9, qword_27EE9C508, &unk_2485CB9D0);
  v12 = sub_2485C8A20();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v12);
  sub_2485B1014(v9, qword_27EE9C508, &unk_2485CB9D0);
  if (EnumTagSinglePayload == 1)
  {
    sub_2485C8A10();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
    sub_2485BF650(v7, a1 + v11);
  }

  sub_2485B12E0(a2, v19, &qword_27EE9C680, &qword_2485CBAA0);
  v14 = v20;
  if (!v20)
  {
    return sub_2485B1014(v19, &qword_27EE9C680, &qword_2485CBAA0);
  }

  v15 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v18[3] = v10;
  v18[4] = &off_285ACE180;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_2485C13EC(a1, boxed_opaque_existential_1);
  (*(v15 + 24))(v18, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_2485C11D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2485B6248;

  return sub_2485C0150(a1, a2);
}

uint64_t sub_2485C1280(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2485B35C0;

  return sub_2485BFAF4(a1);
}

uint64_t sub_2485C131C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicUploadMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2485C1380(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_2485C1390(uint64_t a1)
{
  v2 = type metadata accessor for BasicUploadMetrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2485C13EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicUploadMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_5_5()
{
  v1 = *(v0 + 272);
  *(v0 + 16) = *(v0 + 256);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 288);
  *(v0 + 56) = *(v0 + 216);
  result = *(v0 + 232);
  *(v0 + 72) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_1(uint64_t a1, void *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  v2 = *(v0 + 328);

  return sub_2485C0FD0(v2, v0 + 256);
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

BOOL sub_2485C150C(unint64_t a1, unint64_t a2, double a3, double a4)
{
  if (a4 == a3)
  {
    return a2 >= a1;
  }

  else
  {
    return a4 >= a3;
  }
}

uint64_t sub_2485C1524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[29] = a3;
  v4[30] = v3;
  v4[27] = a1;
  v4[28] = a2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_2485C153C()
{
  OUTLINED_FUNCTION_9();
  sub_2485B12E0(*(v0 + 240) + 200, v0 + 56, &qword_27EE9C6B0, &qword_2485CB118);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 216);
    sub_2485A9F84((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    LOBYTE(v1) = (*(v3 + 8))(v1, v2, v3);
    result = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if ((v1 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    result = sub_2485B1014(v0 + 56, &qword_27EE9C6B0, &qword_2485CB118);
  }

  v5 = *(v0 + 232);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  if (v5)
  {
    v6 = *(v0 + 240);
    *(v0 + 264) = 0;
    *(v0 + 272) = 0;
    OUTLINED_FUNCTION_68(&qword_27EE9C680, &qword_2485CBAA0, v6);
    if (*(v0 + 120))
    {
      OUTLINED_FUNCTION_4_6((v0 + 96));
      OUTLINED_FUNCTION_5_0();
      v24 = (v7 + *v7);
      v8 = swift_task_alloc();
      v9 = OUTLINED_FUNCTION_59(v8);
      *v9 = v10;
      v11 = OUTLINED_FUNCTION_1_8(v9);
      v12 = v24;
    }

    else
    {
      sub_2485B1014(v0 + 96, &qword_27EE9C680, &qword_2485CBAA0);
      OUTLINED_FUNCTION_4_6(*(v0 + 224));
      OUTLINED_FUNCTION_5_0();
      v26 = (v19 + *v19);
      v20 = swift_task_alloc();
      v21 = OUTLINED_FUNCTION_55(v20);
      *v21 = v22;
      v11 = OUTLINED_FUNCTION_0_12(v21);
      v12 = v26;
    }

    return v12(v11);
  }

  else
  {
    *(v0 + 248) = 0;
    OUTLINED_FUNCTION_66(&qword_27EE9C678, &unk_2485CAF80, *(v0 + 240));
    if (!*(v0 + 200))
    {
      sub_2485B1014(v0 + 176, &qword_27EE9C678, &unk_2485CAF80);
LABEL_19:
      OUTLINED_FUNCTION_15();

      return v23();
    }

    sub_2485A9F84((v0 + 176), v0 + 136);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    OUTLINED_FUNCTION_5_6((v0 + 136));
    OUTLINED_FUNCTION_5_0();
    v25 = (v15 + *v15);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_58(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_3_5(v17);

    return (v25)(0, v13, v14);
  }
}

uint64_t sub_2485C1928()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 312) = v3;

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2485C1A18()
{
  OUTLINED_FUNCTION_1_0();
  if (*(v0 + 312) == 1)
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  OUTLINED_FUNCTION_15();

  return v1();
}

uint64_t sub_2485C1AA4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2485C1BA0()
{
  OUTLINED_FUNCTION_9();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  OUTLINED_FUNCTION_4_6(*(v0 + 224));
  OUTLINED_FUNCTION_5_0();
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_55(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_12(v3);

  return v7(v5);
}

void sub_2485C1C88()
{
  OUTLINED_FUNCTION_9();

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v1 = *(v0 + 288);
  OUTLINED_FUNCTION_38();
  if (!v3)
  {
    *(v0 + 264) = v1;
    *(v0 + 272) = v2;
    OUTLINED_FUNCTION_68(&qword_27EE9C680, &qword_2485CBAA0, *(v0 + 240));
    if (*(v0 + 120))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      OUTLINED_FUNCTION_2_7();
      v9 = swift_task_alloc();
      v10 = OUTLINED_FUNCTION_59(v9);
      *v10 = v11;
      OUTLINED_FUNCTION_1_8(v10);
      OUTLINED_FUNCTION_57();

      __asm { BRAA            X3, X16 }
    }

    sub_2485B1014(v0 + 96, &qword_27EE9C680, &qword_2485CBAA0);
    __swift_project_boxed_opaque_existential_1(*(v0 + 224), *(*(v0 + 224) + 24));
    OUTLINED_FUNCTION_2_7();
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_55(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_0_12(v17);
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X3, X16 }
  }

  *(v0 + 248) = v1;
  OUTLINED_FUNCTION_66(&qword_27EE9C678, &unk_2485CAF80, *(v0 + 240));
  if (*(v0 + 200))
  {
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_11_0();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_58(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_3_5(v5);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X3, X16 }
  }

  sub_2485B1014(v0 + 176, &qword_27EE9C678, &unk_2485CAF80);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2485C1FCC()
{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v5 + 304) = v0;

  if (!v0)
  {
    *(v5 + 313) = v3 & 1;
  }

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_2485C20DC()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 264);
  if (*(v0 + 313))
  {
  }

  else
  {
    OUTLINED_FUNCTION_38();
    if (!v5)
    {
      *(v0 + 272) = v4;
      OUTLINED_FUNCTION_68(&qword_27EE9C680, &qword_2485CBAA0, *(v0 + 240));
      if (*(v0 + 120))
      {
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        OUTLINED_FUNCTION_2_7();
        v11 = swift_task_alloc();
        v12 = OUTLINED_FUNCTION_59(v11);
        *v12 = v13;
        OUTLINED_FUNCTION_1_8(v12);
        OUTLINED_FUNCTION_57();

        __asm { BRAA            X3, X16 }
      }

      sub_2485B1014(v0 + 96, &qword_27EE9C680, &qword_2485CBAA0);
      __swift_project_boxed_opaque_existential_1(*(v0 + 224), *(*(v0 + 224) + 24));
      OUTLINED_FUNCTION_2_7();
      v16 = swift_task_alloc();
      v17 = OUTLINED_FUNCTION_55(v16);
      *v17 = v18;
      OUTLINED_FUNCTION_0_12(v17);
      OUTLINED_FUNCTION_57();

      __asm { BRAA            X3, X16 }
    }

    *(v0 + 248) = v1;
    OUTLINED_FUNCTION_66(&qword_27EE9C678, &unk_2485CAF80, *(v0 + 240));
    if (*(v0 + 200))
    {
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_11_0();
      v6 = swift_task_alloc();
      v7 = OUTLINED_FUNCTION_58(v6);
      *v7 = v8;
      OUTLINED_FUNCTION_3_5(v7);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_57();

      __asm { BRAA            X3, X16 }
    }

    sub_2485B1014(v0 + 176, &qword_27EE9C678, &unk_2485CAF80);
    OUTLINED_FUNCTION_51();
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X2, X16 }
}

void sub_2485C2428()
{
  OUTLINED_FUNCTION_9();

  v1 = *(v0 + 304);
  OUTLINED_FUNCTION_38();
  if (!v3)
  {
    *(v0 + 264) = v1;
    *(v0 + 272) = v2;
    OUTLINED_FUNCTION_68(&qword_27EE9C680, &qword_2485CBAA0, *(v0 + 240));
    if (*(v0 + 120))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      OUTLINED_FUNCTION_2_7();
      v9 = swift_task_alloc();
      v10 = OUTLINED_FUNCTION_59(v9);
      *v10 = v11;
      OUTLINED_FUNCTION_1_8(v10);
      OUTLINED_FUNCTION_57();

      __asm { BRAA            X3, X16 }
    }

    sub_2485B1014(v0 + 96, &qword_27EE9C680, &qword_2485CBAA0);
    __swift_project_boxed_opaque_existential_1(*(v0 + 224), *(*(v0 + 224) + 24));
    OUTLINED_FUNCTION_2_7();
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_55(v16);
    *v17 = v18;
    OUTLINED_FUNCTION_0_12(v17);
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X3, X16 }
  }

  *(v0 + 248) = v1;
  OUTLINED_FUNCTION_66(&qword_27EE9C678, &unk_2485CAF80, *(v0 + 240));
  if (*(v0 + 200))
  {
    OUTLINED_FUNCTION_34();
    OUTLINED_FUNCTION_11_0();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_58(v4);
    *v5 = v6;
    OUTLINED_FUNCTION_3_5(v5);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X3, X16 }
  }

  sub_2485B1014(v0 + 176, &qword_27EE9C678, &unk_2485CAF80);
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2485C2764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return OUTLINED_FUNCTION_0_4();
}

void sub_2485C277C()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 136);
  if (v1)
  {
    if (v1 == 1)
    {
      sub_2485BF228(*(v0 + 144));
    }

    else
    {
      if (v1 == 2)
      {
        v1 = 0;
      }

      sub_2485BF018(v1);
    }
  }

  else
  {
    sub_2485BF16C(*(v0 + 144));
  }

  sub_2485B12E0(*(v0 + 160) + 280, v0 + 56, &qword_27EE9C680, &qword_2485CBAA0);
  if (*(v0 + 80))
  {
    v2 = *(v0 + 152);
    sub_2485A9F84((v0 + 56), v0 + 16);
    OUTLINED_FUNCTION_14_0((v0 + 16));
    *(v0 + 120) = type metadata accessor for BasicUploadMetrics(0);
    *(v0 + 128) = &off_285ACE180;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    sub_2485C13EC(v2, boxed_opaque_existential_1);
    OUTLINED_FUNCTION_11_0();
    v4 = swift_task_alloc();
    *(v0 + 168) = v4;
    *v4 = v0;
    v4[1] = sub_2485C2978;
    OUTLINED_FUNCTION_57();

    __asm { BRAA            X4, X16 }
  }

  sub_2485B1014(v0 + 56, &qword_27EE9C680, &qword_2485CBAA0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_57();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2485C2978()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 96));
  }

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2485C2A78()
{
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_2485C2AD0()
{
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_2485C2B54()
{
  OUTLINED_FUNCTION_9();
  sub_2485B12E0(*(v0 + 96) + 240, v0 + 56, &qword_27EE9C678, &unk_2485CAF80);
  if (*(v0 + 80))
  {
    sub_2485A9F84((v0 + 56), v0 + 16);
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    OUTLINED_FUNCTION_4_6((v0 + 16));
    OUTLINED_FUNCTION_5_0();
    v9 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_2485C2CE4;

    return v9(v1, v2);
  }

  else
  {
    sub_2485B1014(v0 + 56, &qword_27EE9C678, &unk_2485CAF80);
    sub_2485C8E50();
    OUTLINED_FUNCTION_15();
    v8 = v7 & 1;

    return v6(v8);
  }
}

uint64_t sub_2485C2CE4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2485C2DD4()
{
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2485C8E50();
  OUTLINED_FUNCTION_15();

  return v1(v2 & 1);
}

uint64_t sub_2485C2E40()
{
  OUTLINED_FUNCTION_1_0();
  v1[166] = v0;
  v1[165] = v2;
  v1[164] = v3;
  v1[163] = v4;
  v1[167] = type metadata accessor for BasicUploadMetrics(0);
  v1[168] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v1[169] = swift_task_alloc();
  v1[170] = sub_2485C8A20();
  OUTLINED_FUNCTION_2_2();
  v1[171] = v5;
  v1[172] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2485C2F64()
{
  v20 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[173] = Strong;
  if (!Strong)
  {
    sub_2485B2100();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
LABEL_12:
    OUTLINED_FUNCTION_31();

    OUTLINED_FUNCTION_3_0();

    return v18();
  }

  v2 = Strong;
  v3 = *(v0[166] + 120);
  v0[174] = swift_getObjectType();
  v4 = *(v3 + 8);
  v0[175] = v4;
  v5 = *(v4 + 24);
  v0[176] = v5;
  v0[177] = (v4 + 24) & 0xFFFFFFFFFFFFLL | 0xD13B000000000000;
  v5(v19);
  if (LOBYTE(v19[0]) == 1)
  {
    sub_2485AC61C(v2 + 320, (v0 + 88));
    __swift_project_boxed_opaque_existential_1(v0 + 88, v0[91]);
    v6 = OUTLINED_FUNCTION_53();
    v8 = v7(v6);
    __swift_destroy_boxed_opaque_existential_1(v0 + 88);
    if ((v8 & 1) == 0)
    {
      sub_2485B2100();
      swift_allocError();
      v11 = 3;
      goto LABEL_11;
    }
  }

  v9 = v0[166];
  if (*(v9 + 128))
  {
    sub_2485B2100();
    swift_allocError();
    v11 = 4;
LABEL_11:
    *v10 = v11;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v13 = v0[165];
  *(v9 + 128) = 1;
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  OUTLINED_FUNCTION_2_7();
  swift_task_alloc();
  OUTLINED_FUNCTION_29();
  v0[178] = v14;
  *v14 = v15;
  v14[1] = sub_2485C3218;
  OUTLINED_FUNCTION_19_0();

  return v16();
}

uint64_t sub_2485C3218()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[179] = v0;

  if (v0)
  {
    v7 = v3[166];

    return MEMORY[0x2822009F8](sub_2485C5FA8, v7, 0);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    v3[180] = v8;
    *v8 = v9;
    v8[1] = sub_2485C3370;

    return sub_2485B1900((v3 + 138));
  }
}

uint64_t sub_2485C3370()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1448) = v0;

  v5 = *(v2 + 1328);
  if (v0)
  {
    v6 = sub_2485C385C;
  }

  else
  {
    v6 = sub_2485C3490;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

void *sub_2485C3490()
{
  v46 = v0;
  result = (*(v0 + 1408))(v44, *(v0 + 1392), *(v0 + 1400));
  if (v45 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v0 + 1376);
    v5 = *(v0 + 1368);
    v6 = *(v0 + 1360);
    v7 = -v45;
    v8 = *(v0 + 1352);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v6);
    sub_2485C7D14(v7, v8, v4);
    sub_2485B1014(v8, qword_27EE9C508, &unk_2485CB9D0);
    sub_2485C89E0();
    v10 = v9;
    v12 = *(v5 + 8);
    v11 = v5 + 8;
    v12(v4, v6);
    v13 = *(v0 + 1288);
    *(v0 + 1456) = v13;
    if (v13 >= v10)
    {
      *(v0 + 1488) = v13;
      v40 = *(v0 + 1408);
      OUTLINED_FUNCTION_62();
      v42 = v21;
      v22 = OUTLINED_FUNCTION_45();
      v23(v22);
      sub_2485AC61C(v1, v0 + 1064);
      v24 = OUTLINED_FUNCTION_37();
      v40(v24);
      OUTLINED_FUNCTION_41(v44[1]);
      v25 = OUTLINED_FUNCTION_60();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v42);
      *(v2 + *(v11 + 56)) = MEMORY[0x277D84F90];
      *(v2 + *(v11 + 60)) = 0;
      v28 = OUTLINED_FUNCTION_37();
      v29(v28);
      v30 = OUTLINED_FUNCTION_37();
      v31(v30);
      v32 = OUTLINED_FUNCTION_37();
      v33(v32);
      __swift_project_boxed_opaque_existential_1((v0 + 824), *(v0 + 848));
      v34 = OUTLINED_FUNCTION_37();
      v35(v34);
      OUTLINED_FUNCTION_2_2();
      v43 = (v36 + *v36);
      swift_task_alloc();
      OUTLINED_FUNCTION_29();
      *(v0 + 1504) = v37;
      *v37 = v38;
      v39 = OUTLINED_FUNCTION_28(v37);

      return v43(v39);
    }

    else
    {
      v14 = *(v0 + 1320);
      v15 = 0.0;
      if (v10 >= 0.0)
      {
        v15 = v10;
      }

      *(v0 + 1288) = v15;
      *(v0 + 1296) = 0;
      OUTLINED_FUNCTION_14_0(v14);
      v16 = *(v0 + 1288);
      *(v0 + 1464) = v16;
      v17 = *(v0 + 1296);
      *(v0 + 1272) = v16;
      *(v0 + 1280) = v17;
      OUTLINED_FUNCTION_2_2();
      v41 = (v18 + *v18);
      swift_task_alloc();
      OUTLINED_FUNCTION_29();
      *(v0 + 1472) = v19;
      *v19 = v20;
      v19[1] = sub_2485C38DC;
      OUTLINED_FUNCTION_20_0();

      return v41();
    }
  }

  return result;
}

uint64_t sub_2485C385C()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 1328);
  swift_unknownObjectRelease();
  *(v1 + 128) = 0;
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_2485C38DC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 1480) = v0;

  v7 = *(v3 + 1328);
  if (v0)
  {
    v8 = sub_2485C6028;
  }

  else
  {
    v8 = sub_2485C39DC;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

void sub_2485C39DC(uint64_t a1)
{
  v1[186] = v1[183];
  v24 = v1[176];
  OUTLINED_FUNCTION_62();
  v25 = v5;
  v6 = OUTLINED_FUNCTION_45();
  v7(v6);
  sub_2485AC61C(v3, (v1 + 133));
  v8 = OUTLINED_FUNCTION_37();
  v24(v8);
  OUTLINED_FUNCTION_41(v26);
  v9 = OUTLINED_FUNCTION_60();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v25);
  *(v4 + *(v2 + 56)) = MEMORY[0x277D84F90];
  *(v4 + *(v2 + 60)) = 0;
  v12 = OUTLINED_FUNCTION_37();
  v13(v12);
  v14 = OUTLINED_FUNCTION_37();
  v15(v14);
  v16 = OUTLINED_FUNCTION_37();
  v17(v16);
  __swift_project_boxed_opaque_existential_1(v1 + 103, v1[106]);
  v18 = OUTLINED_FUNCTION_37();
  v19(v18);
  OUTLINED_FUNCTION_5_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_29();
  v1[188] = v20;
  *v20 = v21;
  OUTLINED_FUNCTION_28(v20);
  OUTLINED_FUNCTION_42();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_2485C3BD0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v5 = *(v4 + 1328);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;

  sub_2485B0C20(v2 + 656);

  return MEMORY[0x2822009F8](sub_2485C3CD0, v5, 0);
}

uint64_t sub_2485C3CD0()
{
  v20 = v0;
  v1 = *(v0 + 1400);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1144);
  *(v0 + 1512) = v3;
  v4 = *(v0 + 1152);
  *(v0 + 1520) = v4;
  v5 = *(v0 + 1160);
  *(v0 + 1528) = v5;
  v6 = *(v0 + 1168);
  *(v0 + 697) = v6;
  v7 = *(v0 + 1169);
  *(v0 + 698) = v7;
  __swift_destroy_boxed_opaque_existential_1((v0 + 824));
  v8 = *(v0 + 1128);
  v9 = *(v0 + 1136);
  __swift_project_boxed_opaque_existential_1((v0 + 1104), v8);
  v17[0] = v3;
  v17[1] = v4;
  v17[2] = v5;
  v18 = v6;
  v19 = v7;
  (*(v9 + 16))(v2, v1, v17, v8, v9);
  v10 = *(v0 + 1488);
  if (v10 < 0.0)
  {
    v10 = 0.0;
  }

  *(v0 + 1576) = v10;
  *(v0 + 1568) = 0;
  *(v0 + 1560) = v10;
  *(v0 + 1544) = 0u;
  *(v0 + 1536) = v10;
  OUTLINED_FUNCTION_5_6(*(v0 + 1312));
  OUTLINED_FUNCTION_5_0();
  v16 = (v11 + *v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_29();
  *(v0 + 1584) = v12;
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_8_2(v12);

  return v16(v14);
}

uint64_t sub_2485C3E90()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[199] = v0;

  if (v0)
  {
    v7 = v3[166];
    __swift_destroy_boxed_opaque_existential_1(v3 + 133);
    v8 = sub_2485C60B0;
    v9 = v7;
  }

  else
  {
    v9 = v3[166];
    v8 = sub_2485C3FA0;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

void sub_2485C3FA0()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 760);
  *(v0 + 1600) = *(v0 + 744);
  *(v0 + 1616) = v1;
  v2 = *(v0 + 776);
  *(v0 + 1632) = v2;
  if (v2 == 1)
  {
    v3 = *(v0 + 808);
    v4 = *(v0 + 816);
    __swift_project_boxed_opaque_existential_1((v0 + 784), v3);
    if ((*(v4 + 24))(v3, v4) >= 1)
    {
      OUTLINED_FUNCTION_52();
      if (!v5)
      {
        OUTLINED_FUNCTION_4_5(&qword_2485CBB20);
        swift_task_alloc();
        OUTLINED_FUNCTION_29();
        *(v0 + 1728) = v19;
        *v19 = v20;
        OUTLINED_FUNCTION_17();
        *(v21 + 8) = v22;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_64();

        __asm { BR              X3 }
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
    v6 = *(v0 + 1344);
    v7 = *(v0 + 1336);
    v8 = *(v0 + 1328);
    v9 = *(v0 + 1304);
    OUTLINED_FUNCTION_35();
    sub_2485C6400(v6, v10);
    v9[3] = v7;
    v9[4] = &off_285ACE180;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_69(boxed_opaque_existential_1);
    swift_unknownObjectRelease();
    v12 = *(v0 + 880);
    *(v0 + 576) = *(v0 + 864);
    *(v0 + 592) = v12;
    *(v0 + 608) = *(v0 + 896);
    OUTLINED_FUNCTION_22_0(v0 + 616);
    *(v0 + 648) = v13;
    sub_2485B1014(v0 + 576, &qword_27EE9CAD8, &qword_2485CBAA8);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
    *(v8 + 128) = 0;

    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_4_5(&unk_2485CBB30);
  v16 = swift_task_alloc();
  *(v0 + 1640) = v16;
  *v16 = v0;
  v16[1] = sub_2485C41E4;
  OUTLINED_FUNCTION_64();

  __asm { BR              X0 }
}

uint64_t sub_2485C41E4()
{
  OUTLINED_FUNCTION_9_0();
  v3 = v2;
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v5 + 1648) = v0;

  if (v0)
  {
    v9 = *(v5 + 1328);
    __swift_destroy_boxed_opaque_existential_1((v5 + 1064));
    v10 = sub_2485C6180;
    v11 = v9;
  }

  else
  {
    v11 = *(v5 + 1328);
    *(v5 + 699) = v3 & 1;
    v10 = sub_2485C4310;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

void sub_2485C4310(uint64_t a1)
{
  v4 = (v1 + 864);
  v5 = (v1 + 944);
  if (*(v1 + 699))
  {
    v6 = OUTLINED_FUNCTION_6_4();
    v7 = *(v1 + 1344);
    sub_2485ABAD4(v6, v8, v9, v10, v11);
    if (!*(v7 + 56))
    {
      *(*(v1 + 1344) + 56) = 1;
    }

    __swift_project_boxed_opaque_existential_1((v1 + 784), *(v1 + 808));
    v12 = OUTLINED_FUNCTION_53();
    if (v13(v12) >= 1)
    {
      OUTLINED_FUNCTION_52();
      if (!v32)
      {
        OUTLINED_FUNCTION_4_5(&qword_2485CBB20);
        swift_task_alloc();
        OUTLINED_FUNCTION_29();
        *(v1 + 1728) = v40;
        *v40 = v41;
        OUTLINED_FUNCTION_17();
        goto LABEL_29;
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v1 + 1064));
    OUTLINED_FUNCTION_63();
    v14 = *(v1 + 1336);
    v15 = *(v1 + 1328);
    v16 = *(v1 + 1304);
    __swift_destroy_boxed_opaque_existential_1((v1 + 784));
    sub_2485C6400(v7, v1 + 864);
    v16[3] = v14;
    v16[4] = &off_285ACE180;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_69(boxed_opaque_existential_1);
    swift_unknownObjectRelease();
    v18 = *(v1 + 880);
    *(v1 + 576) = *v4;
    *(v1 + 592) = v18;
    *(v1 + 608) = *(v1 + 896);
    v19 = *(v1 + 960);
    *(v1 + 616) = *v5;
    *(v1 + 632) = v19;
    *(v1 + 648) = *(v1 + 976);
    sub_2485B1014(v1 + 576, &qword_27EE9CAD8, &qword_2485CBAA8);
    __swift_destroy_boxed_opaque_existential_1((v1 + 1104));
    *(v15 + 128) = 0;

    OUTLINED_FUNCTION_6();
LABEL_37:
    OUTLINED_FUNCTION_46();

    __asm { BRAA            X1, X16 }
  }

  if (*(v1 + 1456) <= 0.0)
  {
    v20 = *(v1 + 1560);
    v21 = *(v1 + 1552);
    goto LABEL_19;
  }

  v20 = *(v1 + 1576);
  v21 = *(v1 + 1568);
  v22 = *(v1 + 1488);
  v23 = *(v1 + 1296) < v21;
  if (v22 != v20)
  {
    v23 = v22 < v20;
  }

  if (v23)
  {
LABEL_19:
    v2 = *(v1 + 1632);
    v33 = *(v1 + 808);
    v34 = *(v1 + 816);
    v69 = *(v1 + 1616);
    v71 = *(v1 + 1600);
    __swift_project_boxed_opaque_existential_1((v1 + 784), v33);
    *(v1 + 920) = v69;
    *(v1 + 904) = v71;
    *(v1 + 936) = v2;
    if (((*(v34 + 48))(v1 + 904, v33, v34) & 1) == 0)
    {
      v35 = *(v1 + 808);
      v36 = *(v1 + 816);
      __swift_project_boxed_opaque_existential_1((v1 + 784), v35);
      if (!Batch.isEmpty.getter(v35, v36))
      {
        OUTLINED_FUNCTION_4_5(&qword_2485CBB20);
        swift_task_alloc();
        OUTLINED_FUNCTION_29();
        *(v1 + 1656) = v42;
        *v42 = v45;
        v43 = sub_2485C48AC;
LABEL_29:
        v42[1] = v43;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_46();

        __asm { BR              X3 }
      }
    }

    v37 = *(v1 + 1648);
    v38 = *(v1 + 1616);
    v30 = v38;
    if (v20 <= v38)
    {
      if (v20 != 0.0 && v20 == v38)
      {
        v2 = v21 + 1;
        if (v21 == -1)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        ++v21;
        v20 = *(v1 + 1616);
        v3 = v2;
      }

      else
      {
        OUTLINED_FUNCTION_61();
      }

      v39 = v30;
    }

    else
    {
      v39 = *(v1 + 1576);
      v3 = *(v1 + 1568);
      v2 = *(v1 + 1544);
      v30 = *(v1 + 1536);
    }

    *(v1 + 1024) = *(v1 + 1600);
    *(v1 + 1040) = v38;
    *(v1 + 1048) = *(v1 + 1624);
    OUTLINED_FUNCTION_65();
    v48 = OUTLINED_FUNCTION_48();
    v49(v48);
    if (v37)
    {
      OUTLINED_FUNCTION_54();
      v50 = *(v1 + 1344);
      v70 = *(v1 + 1328);
      __swift_destroy_boxed_opaque_existential_1((v1 + 1064));
      OUTLINED_FUNCTION_56();
      __swift_destroy_boxed_opaque_existential_1((v1 + 784));
      sub_2485C6400(v50, v1 + 864);
      swift_unknownObjectRelease();
      sub_2485C1390(v50);
      v51 = *(v1 + 880);
      *(v1 + 176) = *v4;
      *(v1 + 192) = v51;
      *(v1 + 208) = *(v1 + 896);
      v52 = *(v1 + 960);
      *(v1 + 216) = *v5;
      *(v1 + 232) = v52;
      *(v1 + 248) = *(v1 + 976);
      sub_2485B1014(v1 + 176, &qword_27EE9CAD8, &qword_2485CBAA8);
      __swift_destroy_boxed_opaque_existential_1((v1 + 1104));
      *(v70 + 128) = 0;

      OUTLINED_FUNCTION_3_0();
      goto LABEL_37;
    }

    v55 = OUTLINED_FUNCTION_6_4();
    v56 = *(v1 + 1344);
    sub_2485ABAD4(v55, v57, v58, v59, v60);
    v61 = *(v56 + 48);
    v62 = __CFADD__(v61, 1);
    v63 = v61 + 1;
    if (!v62)
    {
      *(*(v1 + 1344) + 48) = v63;
LABEL_45:
      *(v1 + 1576) = v39;
      *(v1 + 1568) = v3;
      *(v1 + 1560) = v20;
      *(v1 + 1552) = v21;
      *(v1 + 1544) = v2;
      *(v1 + 1536) = v30;
LABEL_46:
      OUTLINED_FUNCTION_5_6(*(v1 + 1312));
      OUTLINED_FUNCTION_2_2();
      swift_task_alloc();
      OUTLINED_FUNCTION_29();
      *(v1 + 1584) = v65;
      *v65 = v66;
      OUTLINED_FUNCTION_8_2(v65);
      OUTLINED_FUNCTION_46();

      __asm { BRAA            X3, X16 }
    }

    __break(1u);
    goto LABEL_50;
  }

  v24 = OUTLINED_FUNCTION_6_4();
  v26 = *&v25;
  sub_2485ABAD4(v24, v27, v25, v28, v29);
  if (v20 > v26)
  {
    goto LABEL_46;
  }

  v30 = *(v1 + 1616);
  v31 = *(v1 + 1576);
  v32 = v31 != 0.0 && v31 == v30;
  if (!v32)
  {
    OUTLINED_FUNCTION_61();
LABEL_44:
    v39 = v30;
    goto LABEL_45;
  }

  v64 = *(v1 + 1568);
  v2 = v64 + 1;
  if (v64 != -1)
  {
    v21 = v64 + 1;
    v20 = *(v1 + 1616);
    v3 = v64 + 1;
    goto LABEL_44;
  }

LABEL_51:
  __break(1u);
}

uint64_t sub_2485C48AC()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1664) = v3;

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2485C499C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[208];
  if (!v1)
  {
    v7 = v0[193];
    v8 = v0[192];
    OUTLINED_FUNCTION_14_0(v0 + 133);
    v0[155] = v8;
    v0[156] = v7;
    OUTLINED_FUNCTION_7_2();
    v16 = (v9 + *v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    v0[211] = v10;
    *v10 = v11;
    v10[1] = sub_2485C4D3C;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = v0[193];
    v3 = v0[192];
    OUTLINED_FUNCTION_14_0(v0 + 133);
    v0[157] = v3;
    v0[158] = v2;
    OUTLINED_FUNCTION_7_2();
    v16 = (v4 + *v4);
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    v0[209] = v5;
    *v5 = v6;
    v5[1] = sub_2485C4BF4;
LABEL_5:
    OUTLINED_FUNCTION_20_0();

    return v16();
  }

  OUTLINED_FUNCTION_4_5(&qword_2485CBB28);
  v13 = swift_task_alloc();
  v0[213] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_13_0(v13);
  v14 = OUTLINED_FUNCTION_47(v0[208]);

  return v15(v14);
}

uint64_t sub_2485C4BF4()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[210] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_50();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_4_5(&qword_2485CBB28);
    v10 = swift_task_alloc();
    v3[213] = v10;
    *v10 = v5;
    OUTLINED_FUNCTION_13_0(v10);
    v11 = OUTLINED_FUNCTION_18(v3[208]);

    return v12(v11);
  }
}

uint64_t sub_2485C4D3C()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[212] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_50();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_4_5(&qword_2485CBB28);
    v10 = swift_task_alloc();
    v3[213] = v10;
    *v10 = v5;
    OUTLINED_FUNCTION_13_0(v10);
    v11 = OUTLINED_FUNCTION_18(v3[208]);

    return v12(v11);
  }
}

uint64_t sub_2485C4E84()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 1720) = *(v0 + 1680);
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2485C4EE4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[214] = v0;

  if (v0)
  {
    v7 = v3[166];
    __swift_destroy_boxed_opaque_existential_1(v3 + 133);
    v8 = sub_2485C6250;
    v9 = v7;
  }

  else
  {
    v9 = v3[166];
    v8 = sub_2485C513C;
  }

  return MEMORY[0x2822009F8](v8, v9, 0);
}

uint64_t sub_2485C4FF4()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v1, v3);
  swift_unknownObjectRelease();
  sub_2485C1390(v1);
  v4 = *(v0 + 880);
  *(v0 + 96) = *(v0 + 864);
  *(v0 + 112) = v4;
  *(v0 + 128) = *(v0 + 896);
  v5 = *(v0 + 960);
  *(v0 + 136) = *(v0 + 944);
  *(v0 + 152) = v5;
  *(v0 + 168) = *(v0 + 976);
  sub_2485B1014(v0 + 96, &qword_27EE9CAD8, &qword_2485CBAA8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  *(v2 + 128) = 0;
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_2485C50DC()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 1720) = *(v0 + 1696);
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_2485C513C()
{
  v57 = (v0 + 864);
  v58 = (v0 + 944);
  v1 = *(v0 + 1664);
  v2 = *(v0 + 698);
  v3 = *(v0 + 697);
  v4 = *(v0 + 1528);
  v59 = *(v0 + 1512);
  v5 = *(v0 + 1400);
  v6 = *(v0 + 1384);
  v60 = *(v0 + 1344);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1136);
  v9 = __swift_project_boxed_opaque_existential_1((v0 + 1104), v7);
  *(v0 + 1176) = v59;
  *(v0 + 1192) = v4;
  *(v0 + 1200) = v3;
  *(v0 + 1201) = v2;
  v10 = v9;
  (*(v8 + 16))(v6, v5, v0 + 1176, v7, v8);
  sub_2485C1380(v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + 784));
  sub_2485A9F84((v0 + 984), v0 + 784);
  if (*(v60 + 56))
  {
    v11 = *(v60 + 56) == 3;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v17 = OUTLINED_FUNCTION_6_4();
    sub_2485ABAD4(v17, v18, v19, v20, v21);
    __swift_project_boxed_opaque_existential_1((v0 + 784), *(v0 + 808));
    v22 = OUTLINED_FUNCTION_53();
    if (v23(v22) > 0)
    {
      OUTLINED_FUNCTION_52();
      if (!v11)
      {
        OUTLINED_FUNCTION_4_5(&qword_2485CBB20);
        swift_task_alloc();
        OUTLINED_FUNCTION_29();
        *(v0 + 1728) = v51;
        *v51 = v52;
        OUTLINED_FUNCTION_17();
        *(v53 + 8) = v54;
        OUTLINED_FUNCTION_30();
        OUTLINED_FUNCTION_42();

        __asm { BR              X3 }
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
    OUTLINED_FUNCTION_63();
    v24 = *(v0 + 1336);
    v25 = *(v0 + 1328);
    v26 = *(v0 + 1304);
    __swift_destroy_boxed_opaque_existential_1((v0 + 784));
    sub_2485C6400(v10, v57);
    v26[3] = v24;
    v26[4] = &off_285ACE180;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_69(boxed_opaque_existential_1);
    swift_unknownObjectRelease();
    v28 = *(v0 + 880);
    *(v0 + 576) = *v57;
    *(v0 + 592) = v28;
    *(v0 + 608) = *(v0 + 896);
    v29 = *(v0 + 960);
    *(v0 + 616) = *v58;
    *(v0 + 632) = v29;
    *(v0 + 648) = *(v0 + 976);
    sub_2485B1014(v0 + 576, &qword_27EE9CAD8, &qword_2485CBAA8);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
    *(v25 + 128) = 0;

    OUTLINED_FUNCTION_6();
LABEL_20:
    OUTLINED_FUNCTION_42();

    __asm { BRAA            X1, X16 }
  }

  v12 = *(v0 + 1536);
  v13 = *(v0 + 1544);
  v14 = *(v0 + 1712);
  v15 = *(v0 + 1616);
  if (v12 <= v15)
  {
    if (v12 != 0.0 && v12 == v15)
    {
      v30 = __CFADD__(v13++, 1);
      if (v30)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v13 = 0;
    }

    v12 = *(v0 + 1616);
  }

  *(v0 + 1024) = *(v0 + 1600);
  *(v0 + 1040) = v15;
  *(v0 + 1048) = *(v0 + 1624);
  OUTLINED_FUNCTION_65();
  v31 = OUTLINED_FUNCTION_48();
  v32(v31);
  if (v14)
  {
    OUTLINED_FUNCTION_54();
    v33 = *(v0 + 1344);
    v34 = *(v0 + 1328);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
    OUTLINED_FUNCTION_56();
    __swift_destroy_boxed_opaque_existential_1((v0 + 784));
    sub_2485C6400(v33, v57);
    swift_unknownObjectRelease();
    sub_2485C1390(v33);
    v35 = *(v0 + 880);
    *(v0 + 176) = *v57;
    *(v0 + 192) = v35;
    *(v0 + 208) = *(v0 + 896);
    v36 = *(v0 + 960);
    *(v0 + 216) = *v58;
    *(v0 + 232) = v36;
    *(v0 + 248) = *(v0 + 976);
    sub_2485B1014(v0 + 176, &qword_27EE9CAD8, &qword_2485CBAA8);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
    *(v34 + 128) = 0;

    OUTLINED_FUNCTION_3_0();
    goto LABEL_20;
  }

  v39 = OUTLINED_FUNCTION_6_4();
  v40 = *(v0 + 1344);
  sub_2485ABAD4(v39, v41, v42, v43, v44);
  v45 = *(v40 + 48);
  v30 = __CFADD__(v45, 1);
  v46 = v45 + 1;
  if (!v30)
  {
    *(*(v0 + 1344) + 48) = v46;
    *(v0 + 1576) = v12;
    *(v0 + 1568) = v13;
    *(v0 + 1560) = v12;
    *(v0 + 1552) = v13;
    *(v0 + 1544) = v13;
    *(v0 + 1536) = v12;
    OUTLINED_FUNCTION_5_6(*(v0 + 1312));
    OUTLINED_FUNCTION_2_2();
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    *(v0 + 1584) = v47;
    *v47 = v48;
    OUTLINED_FUNCTION_8_2(v47);
    OUTLINED_FUNCTION_42();

    __asm { BRAA            X3, X16 }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t sub_2485C5600()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_4_3();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 1736) = v3;

  OUTLINED_FUNCTION_50();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2485C56F0()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[217];
  if (!v1)
  {
    v7 = v0[193];
    v8 = v0[192];
    OUTLINED_FUNCTION_14_0(v0 + 133);
    v0[151] = v8;
    v0[152] = v7;
    OUTLINED_FUNCTION_7_2();
    v16 = (v9 + *v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    v0[220] = v10;
    *v10 = v11;
    v10[1] = sub_2485C5AA0;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v2 = v0[193];
    v3 = v0[192];
    OUTLINED_FUNCTION_14_0(v0 + 133);
    v0[153] = v3;
    v0[154] = v2;
    OUTLINED_FUNCTION_7_2();
    v16 = (v4 + *v4);
    swift_task_alloc();
    OUTLINED_FUNCTION_29();
    v0[218] = v5;
    *v5 = v6;
    v5[1] = sub_2485C5950;
LABEL_5:
    OUTLINED_FUNCTION_20_0();

    return v16();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 133);
  OUTLINED_FUNCTION_4_5(&qword_2485CBB28);
  v13 = swift_task_alloc();
  v0[222] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_12_0(v13);
  v14 = OUTLINED_FUNCTION_47(v0[217]);

  return v15(v14);
}

uint64_t sub_2485C5950()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[219] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_50();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 133);
    OUTLINED_FUNCTION_4_5(&qword_2485CBB28);
    v10 = swift_task_alloc();
    v3[222] = v10;
    *v10 = v5;
    OUTLINED_FUNCTION_12_0(v10);
    v11 = OUTLINED_FUNCTION_18(v3[217]);

    return v12(v11);
  }
}

uint64_t sub_2485C5AA0()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[221] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_50();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 133);
    OUTLINED_FUNCTION_4_5(&qword_2485CBB28);
    v10 = swift_task_alloc();
    v3[222] = v10;
    *v10 = v5;
    OUTLINED_FUNCTION_12_0(v10);
    v11 = OUTLINED_FUNCTION_18(v3[217]);

    return v12(v11);
  }
}

uint64_t sub_2485C5BF0()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 1792) = *(v0 + 1752);
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_2485C5C50()
{
  OUTLINED_FUNCTION_9_0();
  v2 = *v1;
  OUTLINED_FUNCTION_10_3();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1784) = v0;

  v5 = *(v2 + 1328);
  if (v0)
  {
    v6 = sub_2485C6330;
  }

  else
  {
    v6 = sub_2485C5EA0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2485C5D70()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_39();
  sub_2485C1380(v2);
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v0, v3);
  swift_unknownObjectRelease();
  sub_2485C1390(v0);
  v4 = *(v1 + 880);
  *(v1 + 416) = *(v1 + 864);
  *(v1 + 432) = v4;
  *(v1 + 448) = *(v1 + 896);
  OUTLINED_FUNCTION_22_0(v1 + 456);
  *(v1 + 488) = v5;
  sub_2485B1014(v1 + 416, &qword_27EE9CAD8, &qword_2485CBAA8);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_2485C5E40()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 1792) = *(v0 + 1768);
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_2485C5EA0()
{
  OUTLINED_FUNCTION_49();
  sub_2485C1380(*(v0 + 1736));
  v1 = *(v0 + 1344);
  v2 = *(v0 + 1336);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1304);
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v1, v5);
  v4[3] = v2;
  v4[4] = &off_285ACE180;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  OUTLINED_FUNCTION_69(boxed_opaque_existential_1);
  swift_unknownObjectRelease();
  v7 = *(v0 + 880);
  *(v0 + 576) = *(v0 + 864);
  *(v0 + 592) = v7;
  *(v0 + 608) = *(v0 + 896);
  OUTLINED_FUNCTION_22_0(v0 + 616);
  *(v0 + 648) = v8;
  sub_2485B1014(v0 + 576, &qword_27EE9CAD8, &qword_2485CBAA8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  *(v3 + 128) = 0;

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2485C5FA8()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 1328);
  swift_unknownObjectRelease();
  *(v1 + 128) = 0;
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_2485C6028()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 1328);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  *(v1 + 128) = 0;
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v2();
}

uint64_t sub_2485C60B0()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v0, v2);
  swift_unknownObjectRelease();
  sub_2485C1390(v0);
  v3 = *(v1 + 880);
  *(v1 + 16) = *(v1 + 864);
  *(v1 + 32) = v3;
  *(v1 + 48) = *(v1 + 896);
  v4 = *(v1 + 960);
  *(v1 + 56) = *(v1 + 944);
  *(v1 + 72) = v4;
  *(v1 + 88) = *(v1 + 976);
  sub_2485B1014(v1 + 16, &qword_27EE9CAD8, &qword_2485CBAA8);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_2485C6180()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_39();
  sub_2485ABAD4(v2, v3, v4, v5, v6);
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v0, v7);
  swift_unknownObjectRelease();
  sub_2485C1390(v0);
  v8 = *(v1 + 880);
  *(v1 + 336) = *(v1 + 864);
  *(v1 + 352) = v8;
  *(v1 + 368) = *(v1 + 896);
  OUTLINED_FUNCTION_22_0(v1 + 376);
  *(v1 + 408) = v9;
  sub_2485B1014(v1 + 336, &qword_27EE9CAD8, &qword_2485CBAA8);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v10();
}

uint64_t sub_2485C6250()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v1, v3);
  swift_unknownObjectRelease();
  sub_2485C1390(v1);
  v4 = *(v0 + 880);
  *(v0 + 256) = *(v0 + 864);
  *(v0 + 272) = v4;
  *(v0 + 288) = *(v0 + 896);
  OUTLINED_FUNCTION_22_0(v0 + 296);
  *(v0 + 328) = v5;
  sub_2485B1014(v0 + 256, &qword_27EE9CAD8, &qword_2485CBAA8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  *(v2 + 128) = 0;
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_2485C6330()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_39();
  sub_2485C1380(v2);
  OUTLINED_FUNCTION_35();
  sub_2485C6400(v0, v3);
  swift_unknownObjectRelease();
  sub_2485C1390(v0);
  v4 = *(v1 + 880);
  *(v1 + 496) = *(v1 + 864);
  *(v1 + 512) = v4;
  *(v1 + 528) = *(v1 + 896);
  OUTLINED_FUNCTION_22_0(v1 + 536);
  *(v1 + 568) = v5;
  sub_2485B1014(v1 + 496, &qword_27EE9CAD8, &qword_2485CBAA8);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_3_0();

  return v6();
}

uint64_t sub_2485C6400(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  if (!*(a1 + 56))
  {
    *(a1 + 56) = 3;
  }

  v10 = type metadata accessor for BasicUploadMetrics(0);
  v11 = *(v10 + 52);
  sub_2485B12E0(a1 + v11, v9, qword_27EE9C508, &unk_2485CB9D0);
  v12 = sub_2485C8A20();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v12);
  sub_2485B1014(v9, qword_27EE9C508, &unk_2485CB9D0);
  if (EnumTagSinglePayload == 1)
  {
    sub_2485C8A10();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
    sub_2485BF650(v7, a1 + v11);
  }

  sub_2485B12E0(a2, v19, &qword_27EE9C680, &qword_2485CBAA0);
  v14 = v20;
  if (!v20)
  {
    return sub_2485B1014(v19, &qword_27EE9C680, &qword_2485CBAA0);
  }

  v15 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v18[3] = v10;
  v18[4] = &off_285ACE180;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  sub_2485C13EC(a1, boxed_opaque_existential_1);
  (*(v15 + 24))(v18, v14, v15);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_2485C6628()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2485B35C0;

  return sub_2485C2E40();
}

__n128 OUTLINED_FUNCTION_22_0@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 944);
  v3 = *(v1 + 960);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_31()
{
}

void *OUTLINED_FUNCTION_34()
{
  sub_2485A9F84((v0 + 176), v0 + 136);
  v1 = *(v0 + 160);

  return __swift_project_boxed_opaque_existential_1((v0 + 136), v1);
}

void OUTLINED_FUNCTION_40()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = *(v0 + 1608);
  v5 = *(v0 + 1600);
  sub_2485C1380(*(v0 + 1664));

  sub_2485ABAD4(v5, v4, v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_41@<X0>(uint64_t a2@<X8>)
{
  if (a2 <= 1)
  {
    a2 = 1;
  }

  *(v2 + 1496) = a2;
  *(v3 + 41) = 0u;
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;

  return sub_2485C8A10();
}

uint64_t OUTLINED_FUNCTION_45()
{
  v1 = *(v0 + 1312);
  v2 = v1[3];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return v2;
}

void OUTLINED_FUNCTION_56()
{

  sub_2485ABAD4(v4, v3, v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_65()
{
  v2 = *(v0 + 808);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 784, v2);
}

uint64_t OUTLINED_FUNCTION_66@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2485B12E0(a3 + 240, v3 + 176, a1, a2);
}

uint64_t OUTLINED_FUNCTION_67()
{

  return __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
}

uint64_t OUTLINED_FUNCTION_68@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2485B12E0(a3 + 280, v3 + 96, a1, a2);
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1)
{

  return sub_2485C131C(v1, a1);
}

uint64_t OUTLINED_FUNCTION_70()
{
  result = __swift_destroy_boxed_opaque_existential_1((v1 + 1104));
  *(v0 + 128) = 0;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceUserOptions(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2485C6E00);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2485C6E38@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (qword_27EE9C070 != -1)
  {
    swift_once();
  }

  if (byte_27EE9E438 != 1)
  {
    goto LABEL_9;
  }

  if (qword_27EE9C068 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE9E430;
  if (*(qword_27EE9E430 + 16) && (v5 = sub_2485C75A0(a1 & 1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = sub_2485C8D00();
    (*(*(v9 - 8) + 16))(a2, v8 + *(*(v9 - 8) + 72) * v7, v9);
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
LABEL_9:
    v12 = sub_2485C8D00();
    v10 = a2;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

uint64_t sub_2485C6F78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v6 = sub_2485C8D00();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v32 = v11;
  v33 = v30 - v10;
  v12 = (a1 + 32);
  v36 = (v11 + 32);
  v13 = *(a1 + 16);
  v30[1] = v11 + 40;
  v31 = a2;
  if (!v13)
  {
  }

  while (1)
  {
    v37 = v13;
    v38 = v12;
    v14 = *v12;

    v15 = v33;
    sub_2485C8CF0();
    v16 = *v36;
    v17 = v9;
    (*v36)(v9, v15, v6);
    swift_isUniquelyReferenced_nonNull_native();
    v39 = *a2;
    v18 = v39;
    v19 = sub_2485C75A0(v14);
    if (__OFADD__(v18[2], (v20 & 1) == 0))
    {
      break;
    }

    v21 = v19;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CAE8, &qword_2485CBB98);
    if (sub_2485C8FA0())
    {
      v23 = sub_2485C75A0(v14);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_14;
      }

      v21 = v23;
    }

    v25 = v39;
    if (v22)
    {
      v9 = v17;
      (*(v32 + 40))(v39[7] + *(v32 + 72) * v21, v17, v6);
    }

    else
    {
      v39[(v21 >> 6) + 8] |= 1 << v21;
      *(v25[6] + v21) = v14;
      v9 = v17;
      v16((v25[7] + *(v32 + 72) * v21), v17, v6);
      v26 = v25[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_13;
      }

      v25[2] = v28;
    }

    a2 = v31;
    *v31 = v25;
    v12 = v38 + 1;
    v13 = v37 - 1;
    if (v37 == 1)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  result = sub_2485C9070();
  __break(1u);
  return result;
}

uint64_t sub_2485C7270(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 28521;
  }

  else
  {
    v3 = 0x726564616F6C7075;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (a2)
  {
    v5 = 28521;
  }

  else
  {
    v5 = 0x726564616F6C7075;
  }

  if (a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2485C9040();
  }

  return v8 & 1;
}

uint64_t sub_2485C7304(uint64_t a1, uint64_t a2)
{
  v2 = sub_2485C8FD0();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2485C7358(char a1)
{
  if (a1)
  {
    return 28521;
  }

  else
  {
    return 0x726564616F6C7075;
  }
}

uint64_t sub_2485C7390@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2485C7304(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2485C73C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2485C7358(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2485C7408(uint64_t a1, char a2)
{
  sub_2485C8DA0();
}

uint64_t sub_2485C7470(uint64_t a1, char a2)
{
  sub_2485C90D0();
  sub_2485C8DA0();

  return sub_2485C9110();
}

uint64_t sub_2485C74F4()
{
  result = sub_2485C7514();
  qword_27EE9E430 = result;
  return result;
}

uint64_t sub_2485C7514()
{
  sub_2485C8D00();
  sub_2485C779C();
  v1 = sub_2485C8D10();
  sub_2485C6F78(&unk_285ACCB40, &v1, 0xD00000000000001CLL, 0x80000002485CC5A0);
  return v1;
}

unint64_t sub_2485C75A0(char a1)
{
  v3 = sub_2485C7470(*(v1 + 40), a1 & 1);

  return sub_2485C7668(a1 & 1, v3);
}

unint64_t sub_2485C75E4(uint64_t a1)
{
  sub_2485C8980();
  sub_2485BE8EC(&qword_27EE9C6D0, MEMORY[0x277CC9270]);
  v2 = sub_2485C8D30();

  return sub_2485C77F0(a1, v2);
}

unint64_t sub_2485C7668(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 28521;
    }

    else
    {
      v6 = 0x726564616F6C7075;
    }

    if (a1)
    {
      v7 = 0xE200000000000000;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 28521 : 0x726564616F6C7075;
      v9 = *(*(v2 + 48) + v4) ? 0xE200000000000000 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_2485C9040();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2485C779C()
{
  result = qword_27EE9CAE0;
  if (!qword_27EE9CAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9CAE0);
  }

  return result;
}

unint64_t sub_2485C77F0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_2485C8980();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_2485BE8EC(&qword_27EE9CAF0, MEMORY[0x277CC9278]);
    v9 = sub_2485C8D50();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

_BYTE *storeEnumTagSinglePayload for Logs(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2485C7A64);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2485C7AA0()
{
  result = qword_27EE9CAF8;
  if (!qword_27EE9CAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE9CB00, qword_2485CBBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9CAF8);
  }

  return result;
}

unint64_t sub_2485C7B08()
{
  result = qword_27EE9CB08;
  if (!qword_27EE9CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE9CB08);
  }

  return result;
}

uint64_t sub_2485C7B5C()
{
  result = sub_2485C7B84(5);
  byte_27EE9E438 = result & 1;
  return result;
}

uint64_t sub_2485C7B84(char a1)
{
  sub_2485C7C10(a1);
  v1 = sub_2485C8D60();

  v2 = MGCopyAnswer();

  if (!v2)
  {
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2485C7C10(char a1)
{
  result = 0x726556646C697542;
  switch(a1)
  {
    case 1:
      result = 0x4E746375646F7250;
      break;
    case 2:
      result = 0x54746375646F7250;
      break;
    case 3:
      result = 0x56746375646F7250;
      break;
    case 4:
      result = 0x6F436E6F69676552;
      break;
    case 5:
      result = 0x6C616E7265746E49;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2485C7D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2485C8AA0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_8();
  v68 = v10;
  v11 = sub_2485C8940();
  OUTLINED_FUNCTION_0();
  v64 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_8();
  v63 = v14;
  sub_2485C8AB0();
  OUTLINED_FUNCTION_0();
  v70 = v16;
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_8();
  v69 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE9C508, &unk_2485CB9D0);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_5_7();
  v67 = v19;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v20);
  v62 = &v56[-v21];
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v22);
  v24 = &v56[-v23];
  v25 = sub_2485C8A20();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_7();
  v66 = v29;
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v30);
  v65 = &v56[-v31];
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x28223BE20](v32);
  v34 = &v56[-v33];
  sub_2485BF578(a2, v24);
  OUTLINED_FUNCTION_1_9(v24);
  if (v35)
  {
    sub_2485C8A10();
    OUTLINED_FUNCTION_1_9(v24);
    if (!v35)
    {
      sub_2485BF5E8(v24);
    }

    if (!a1)
    {
      return (*(v27 + 32))(a3, v34, v25);
    }
  }

  else
  {
    (*(v27 + 32))(v34, v24, v25);
    if (!a1)
    {
      return (*(v27 + 32))(a3, v34, v25);
    }
  }

  v58 = v11;
  v60 = a1;
  v61 = a3;
  if (qword_27EE9C078 != -1)
  {
    swift_once();
  }

  v36 = v71;
  v37 = __swift_project_value_buffer(v71, qword_27EE9E440);
  (*(v70 + 16))(v69, v37, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CB10, &qword_2485CBCC0);
  v38 = *(v8 + 72);
  v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2485CBCB0;
  v41 = v40 + v39;
  v42 = *MEMORY[0x277CC9968];
  v59 = v8;
  v43 = *(v8 + 104);
  v57 = v42;
  v43(v41);
  (v43)(v41 + v38, *MEMORY[0x277CC9998], v6);
  (v43)(v41 + 2 * v38, *MEMORY[0x277CC9988], v6);
  (v43)(v41 + 3 * v38, *MEMORY[0x277CC99C0], v6);
  sub_2485C84A0(v40);
  v44 = v63;
  sub_2485C8A80();

  v45 = v62;
  sub_2485C8930();
  (*(v64 + 8))(v44, v58);
  if (__swift_getEnumTagSinglePayload(v45, 1, v25) == 1)
  {
    v46 = v65;
    (*(v27 + 16))(v65, v34, v25);
    OUTLINED_FUNCTION_1_9(v45);
    if (!v35)
    {
      sub_2485BF5E8(v45);
    }
  }

  else
  {
    v46 = v65;
    (*(v27 + 32))(v65, v45, v25);
  }

  v48 = v68;
  (v43)(v68, v57, v6);
  v49 = v67;
  v50 = v69;
  sub_2485C8A90();
  (*(v59 + 8))(v48, v6);
  (*(v70 + 8))(v50, v71);
  v51 = (v27 + 8);
  v52 = *(v27 + 8);
  v52(v34, v25);
  OUTLINED_FUNCTION_1_9(v49);
  if (v35)
  {
    v53 = OUTLINED_FUNCTION_3_6();
    v51(v53, v46, v25);
    OUTLINED_FUNCTION_1_9(v49);
    v55 = v61;
    if (!v35)
    {
      sub_2485BF5E8(v49);
    }
  }

  else
  {
    v52(v46, v25);
    v54 = OUTLINED_FUNCTION_3_6();
    v51(v54, v49, v25);
    v55 = v61;
  }

  return v51(v55, v48, v25);
}

uint64_t sub_2485C8348()
{
  v0 = sub_2485C8A60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2485C8AB0();
  __swift_allocate_value_buffer(v4, qword_27EE9E440);
  __swift_project_value_buffer(v4, qword_27EE9E440);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9830], v0);
  sub_2485C8A70();
  return (*(v1 + 8))(v3, v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2485C84A0(uint64_t a1)
{
  v2 = sub_2485C8AA0();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE9CB18, &qword_2485CBCC8);
  result = sub_2485C8F20();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_2485C87BC(&qword_27EE9CB20, MEMORY[0x277CC99D8]);
    v14 = sub_2485C8D30();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_2485C87BC(&qword_27EE9CB28, MEMORY[0x277CC99E0]);
      v21 = sub_2485C8D50();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2485C87BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2485C8AA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}