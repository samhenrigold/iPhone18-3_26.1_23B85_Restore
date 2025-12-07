uint64_t sub_267CEFA40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_22();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267CEFAA0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 88) = type metadata accessor for NetworkStatusProvider();
  *(a3 + 96) = &off_2878D2ED0;
  *(a3 + 64) = a2;
  *(a3 + 128) = &type metadata for CATProvider;
  *(a3 + 136) = &off_2878CE7A0;
  *(a3 + 56) = 1;
  sub_267B9A5E8(a1, a3 + 16);
  return a3;
}

uint64_t sub_267CEFB14(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v9[3] = &type metadata for CATProvider;
  v9[4] = &off_2878CE7A0;
  type metadata accessor for EditMessageRequestSupportCheckFlow(0);
  v6 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v9, &type metadata for CATProvider);
  v7 = v6 + OBJC_IVAR____TtC16SiriMessagesFlow34EditMessageRequestSupportCheckFlow_catProvider;
  *(v7 + 24) = &type metadata for CATProvider;
  *(v7 + 32) = &off_2878CE7A0;
  *(v6 + 56) = 1;
  sub_267B9A5E8(a1, v6 + 64);
  sub_267C1B4DC(a2, v6 + OBJC_IVAR____TtC16SiriMessagesFlow34EditMessageRequestSupportCheckFlow_sentMessageContext);
  sub_267B9A5E8(a3, v6 + 16);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

uint64_t sub_267CEFBDC()
{
  v2 = OUTLINED_FUNCTION_28_16();
  v3 = type metadata accessor for TimedSentMessageContext(v2);
  OUTLINED_FUNCTION_18(v3);
  v5 = *(v1 + 16);
  v6 = v1 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return sub_267CEDD90(v0, v5, v6);
}

uint64_t sub_267CEFC48(__int128 *a1, uint64_t a2)
{
  v15 = type metadata accessor for NetworkStatusProvider();
  v16 = &off_2878D2ED0;
  v14[0] = a2;
  v12 = &type metadata for CATProvider;
  v13 = &off_2878CE7A0;
  type metadata accessor for NetworkConnectivityCheckFlow();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  MEMORY[0x28223BE20](v5);
  v7 = (v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  v9 = sub_267CEFAA0(a1, *v7, v4);
  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v9;
}

uint64_t sub_267CEFD8C()
{
  v1 = OUTLINED_FUNCTION_28_16();
  v2(v1);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t objectdestroy_10Tm()
{
  type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_27_10();
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v6 = *(v5 + 64);

  sub_267EF2CC8();
  OUTLINED_FUNCTION_22();
  (*(v7 + 8))(v1 + v4);

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

uint64_t sub_267CEFEE0()
{
  v1 = type metadata accessor for TimedSentMessageContext(0);
  OUTLINED_FUNCTION_18(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_267CED854(v3, v4);
}

uint64_t sub_267CEFF68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_267CEFFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267EF8428();
  OUTLINED_FUNCTION_58();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  sub_267BA9F38(0, &unk_28022BC90, 0x277D5C220);
  (*(v6 + 104))(v10, *MEMORY[0x277D5D700], v4);
  v11 = sub_267EF8418();
  v13 = v12;
  (*(v6 + 8))(v10, v4);
  v14 = sub_267BEA93C(v11, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA78, &unk_267F08660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  v16 = MEMORY[0x277D837D0];
  sub_267EF9AE8();
  *(inited + 96) = v16;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  v17 = sub_267EF8F28();
  sub_267BEA9B0(v17, v14);
  return v14;
}

uint64_t sub_267CF0184(void *a1, char a2)
{
  v4 = sub_267EF4B68();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_0_0();
  v7 = (v6 - v5);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v8 = sub_267EF8A08();
  __swift_project_value_buffer(v8, qword_280240FB0);
  v9 = sub_267EF89F8();
  v10 = sub_267EF95D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_267B93000, v9, v10, "We're doing handle disambiguation, making handle disambiguation header item", v11, 2u);
    MEMORY[0x26D60A7B0](v11, -1, -1);
  }

  sub_267EF3A58();
  v12 = [a1 displayName];
  sub_267EF9028();

  sub_267EF39D8();

  v13 = sub_267EF3A38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267EFCA40;
  *(v14 + 32) = v13;

  INPerson.displayImage(isDeviceLocked:)(a2 & 1, v7);
  sub_267EF3928();
  swift_allocObject();
  v15 = sub_267EF38B8();

  return v15;
}

uint64_t sub_267CF0394(void *a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  if ((sub_267EE9580(2u, a2) & 1) == 0)
  {
    sub_267EF3A58();
    v6 = [a1 displayName];
    sub_267EF9028();

    sub_267EF39D8();

    sub_267EF3A38();

    MEMORY[0x26D608F90](v7);
    OUTLINED_FUNCTION_5_28();
    if (v9)
    {
      OUTLINED_FUNCTION_8_2(v8);
      sub_267EF9328();
    }

    sub_267EF9368();
    v5 = v25;
  }

  v10 = [a1 personHandle];
  if (v10)
  {
    v11 = v10;
    v12 = sub_267BC2AF0(v10);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      v16 = [v11 type];
      v17 = sub_267EE9580(4u, a2);
      sub_267CF05F0(v16, v14, v15, v17 & 1, 0);

      MEMORY[0x26D608F90](v18);
      OUTLINED_FUNCTION_5_28();
      if (v9)
      {
        OUTLINED_FUNCTION_8_2(v19);
        sub_267EF9328();
      }

      sub_267EF9368();
      v5 = v25;
    }

    if ((sub_267EE9580(2u, a2) & 1) != 0 && (v20 = [v11 label]) != 0)
    {
      v21 = v20;
      v22 = sub_267EE9580(1u, a2);
      sub_267CF09C0(v11, v21, v22 & 1);
      MEMORY[0x26D608F90]();
      v23 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v23 >> 1)
      {
        OUTLINED_FUNCTION_8_2(v23);
        sub_267EF9328();
      }

      sub_267EF9368();
      v5 = v25;
    }

    else
    {
      v21 = v11;
    }
  }

  return v5;
}

uint64_t sub_267CF05F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_267EF79B8();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - v14;
  MEMORY[0x28223BE20](v13);
  v18 = &v22 - v17;
  if (a1 == 2)
  {
    v19 = v16;
    sub_267EF90F8();
    (*(v19 + 16))(v12, v15, v9);
    sub_267EF74B8();
    swift_allocObject();
    sub_267EF7488();
    sub_267EF74E8();
    swift_allocObject();
    sub_267EF74C8();
    sub_267EF7468();
    sub_267EF74D8();

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      (*(v19 + 32))(v18, v15, v9);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        sub_267B9F98C(v8, &unk_28022AE30, &qword_267EFC0B0);
      }
    }

    else
    {
      (*(v19 + 8))(v15, v9);
      (*(v19 + 32))(v18, v8, v9);
    }

    sub_267EF3A58();
    sub_267EF7998();
    sub_267EF39D8();

    sub_267EF79A8();
    sub_267EF3A48();

    sub_267EF79A8();
    sub_267EF3A18();

    sub_267EF3A28();

    sub_267EF39F8();

    v20 = sub_267EF3A38();

    (*(v19 + 8))(v18, v9);
  }

  else
  {
    sub_267EF3A58();
    sub_267EF39D8();
    sub_267EF3A28();

    sub_267EF39F8();

    v20 = sub_267EF3A38();
  }

  return v20;
}

uint64_t sub_267CF09C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  sub_267EF2D48();
  v7 = sub_267EF41A8();
  v9 = v8;

  v17[0] = 11043298;
  v17[1] = 0xA300000000000000;
  MEMORY[0x26D608E60](v7, v9);

  MEMORY[0x26D608E60](11108834, 0xA300000000000000);
  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_267BBD44C();
  sub_267EF78A8();
  sub_267EF2D48();
  sub_267EF7858();
  sub_267EF74F8();
  sub_267EF7508();
  v10 = sub_267EF79B8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {

    sub_267B9F98C(v6, &unk_28022AE30, &qword_267EFC0B0);
LABEL_9:
    sub_267EF3A58();
    sub_267EF39D8();

    v15 = sub_267EF3A38();
    goto LABEL_10;
  }

  v11 = sub_267EF7998();
  v13 = v12;
  (*(*(v10 - 8) + 8))(v6, v10);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {

    goto LABEL_9;
  }

  sub_267EF3A58();
  sub_267EF39D8();

  sub_267EF3A08();

  sub_267EF3A48();

  sub_267EF3A18();

  v15 = sub_267EF3A38();

LABEL_10:

  return v15;
}

uint64_t sub_267CF0C8C(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v53 = a5;
  v54 = a6;
  v50 = a4;
  v58 = a2;
  v59 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - v9;
  sub_267EF4CC8();
  OUTLINED_FUNCTION_58();
  v56 = v12;
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_0();
  v55 = v14 - v13;
  v15 = sub_267EF4578();
  OUTLINED_FUNCTION_58();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_0();
  v21 = v20 - v19;
  v22 = sub_267EF4228();
  OUTLINED_FUNCTION_58();
  v24 = v23;
  v26 = MEMORY[0x28223BE20](v25);
  v51 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = &v48 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v30);
  v32 = (&v48 - v31);
  sub_267C6D464(a1, &v48 - v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v60 = *v32;
    v33 = v60;
    v63 = 1;
    v34 = v60;
    v58(&v60);
  }

  else
  {
    v35 = *(v24 + 32);
    v49 = v22;
    v35(v29, v32, v22);
    sub_267EF41E8();
    v36 = sub_267EF4218();
    v37 = sub_267EF4218();
    *&v60 = v36;
    sub_267C9B75C(v37);
    (*(v17 + 104))(v21, *MEMORY[0x277D5BF70], v15);
    v38 = v51;
    sub_267EF41D8();
    __swift_project_boxed_opaque_existential_0(v53, v53[3]);
    sub_267EF3BC8();
    v39 = sub_267EF4158();
    OUTLINED_FUNCTION_22();
    (*(v40 + 16))(v10, v52, v39);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v39);
    v62 = 0;
    v60 = 0u;
    v61 = 0u;
    v41 = v55;
    sub_267EF3F68();
    sub_267B9F98C(&v60, &unk_28022CF80, &unk_267EFED50);
    sub_267B9F98C(v10, &unk_28022AE40, &unk_267EFCB60);
    v42 = v57;
    *(&v61 + 1) = v57;
    v62 = MEMORY[0x277D5C1D8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v60);
    v44 = v56;
    (*(v56 + 16))(boxed_opaque_existential_0, v41, v42);
    v63 = 0;
    v58(&v60);
    (*(v44 + 8))(v41, v42);
    v45 = *(v24 + 8);
    v46 = v49;
    v45(v38, v49);
    v45(v29, v46);
  }

  return sub_267B9F98C(&v60, &unk_28022A480, &unk_267F029F0);
}

uint64_t sub_267CF1150(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v32 = sub_267EF79B8();
  OUTLINED_FUNCTION_58();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_0();
  v15 = v14 - v13;
  v16 = sub_267EF3988();
  v17 = v16;
  v31 = a5;
  if (*(v16 + 16) && (sub_267BA2E04(v16 + 32, v35), sub_267BA9F38(0, &qword_28022BB60, 0x277CD3E90), (swift_dynamicCast() & 1) != 0))
  {
    v18 = *(v17 + 16);

    if (v18 == 1 && (sub_267DEAE28() & 1) != 0)
    {
      v19 = sub_267E2E380(a4 & 1);

      a5 = v31;
      goto LABEL_11;
    }

    a5 = v31;
  }

  else
  {
  }

  if (sub_267E2E664())
  {
    __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v20 = sub_267DBF878();
    sub_267E2E6C0(v20 & 1);
    v19 = sub_267E2E380(a4 & 1);
  }

  else
  {
    v19 = sub_267EF3938();
  }

LABEL_11:
  v21 = *(v19 + 16);
  if (v21)
  {
    v30 = a6;
    v34 = MEMORY[0x277D84F90];
    sub_267C7220C(0, v21, 0);
    v22 = v34;
    v23 = (v19 + 40);
    do
    {
      v24 = *v23;
      v35[0] = *(v23 - 1);
      v35[1] = v24;
      swift_bridgeObjectRetain_n();
      MEMORY[0x26D608E60](0xD000000000000013, 0x8000000267F16640);
      sub_267EF7988();

      v26 = *(v34 + 16);
      v25 = *(v34 + 24);
      if (v26 >= v25 >> 1)
      {
        v27 = OUTLINED_FUNCTION_8_2(v25);
        sub_267C7220C(v27, v26 + 1, 1);
      }

      *(v34 + 16) = v26 + 1;
      (*(v11 + 32))(v34 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v26, v15, v32);
      v23 += 2;
      --v21;
    }

    while (v21);

    a6 = v30;
    a5 = v31;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v28 = swift_allocObject();
  *(v28 + 16) = a5;
  *(v28 + 24) = a6;

  sub_267CB3370(v22);
}

uint64_t sub_267CF14A8(uint64_t a1, void (*a2)(void *))
{
  v4 = sub_267EF4228();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v15 - v12);
  sub_267C6D464(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v13 = *v11;
  }

  else
  {
    (*(v5 + 32))(v7, v11, v4);
    sub_267CF168C(v13);
    (*(v5 + 8))(v7, v4);
  }

  swift_storeEnumTagMultiPayload();
  a2(v13);
  return sub_267B9F98C(v13, &qword_2802295B8, &qword_267EFDCB0);
}

uint64_t sub_267CF168C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AA80, &qword_267F029E8);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = v37 - v3;
  v54 = sub_267EF3F28();
  v58 = *(v54 - 8);
  v4 = MEMORY[0x28223BE20](v54);
  v52 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = v37 - v6;
  v7 = sub_267EF4378();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v51 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - v11;
  v13 = sub_267EF4578();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_267EF41E8();
  v19 = v18;
  v20 = sub_267EF4218();
  v21 = *(v20 + 16);
  if (v21)
  {
    v37[2] = v19;
    v37[3] = v17;
    v38 = v16;
    v39 = v14;
    v40 = v13;
    v41 = a1;
    v59 = v21;
    v60 = MEMORY[0x277D84F90];
    v22 = v20;
    sub_267C7254C(0, v21, 0);
    v23 = v60;
    v25 = *(v8 + 16);
    v24 = v8 + 16;
    v49 = v25;
    v26 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v37[1] = v22;
    v48 = v26;
    v27 = v22 + v26;
    v28 = *(v24 + 56);
    v46 = (v58 + 8);
    v47 = v28;
    v44 = (v24 - 8);
    v45 = (v58 + 16);
    v42 = v12;
    v43 = (v24 + 16);
    v50 = v24;
    v29 = v51;
    v30 = v54;
    do
    {
      v57 = v27;
      v58 = v23;
      v49(v29, v27, v7);
      v31 = v52;
      sub_267EF4368();
      sub_267EF3EF8();
      v56 = *v46;
      v56(v31, v30);
      v32 = v53;
      sub_267EF3F08();
      sub_267EF4358();
      (*v45)(v31, v32, v30);
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v30);
      v23 = v58;
      sub_267EF4348();
      v56(v32, v30);
      (*v44)(v29, v7);
      v60 = v23;
      v34 = *(v23 + 16);
      v33 = *(v23 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_267C7254C(v33 > 1, v34 + 1, 1);
        v23 = v60;
      }

      *(v23 + 16) = v34 + 1;
      v35 = v47;
      (*v43)(v23 + v48 + v34 * v47, v42, v7);
      v27 = v57 + v35;
      --v59;
    }

    while (v59);

    v13 = v40;
    v14 = v39;
    v16 = v38;
  }

  else
  {
  }

  (*(v14 + 104))(v16, *MEMORY[0x277D5BF60], v13);
  return sub_267EF41D8();
}

uint64_t sub_267CF1BD0(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  *(v4 + 24) = a1;
  sub_267BE58F4(a2, v4 + 32);
  v7 = OBJC_IVAR____TtC16SiriMessagesFlow25DisambiguationListAdapter_authenticationPolicy;
  sub_267EF43F8();
  OUTLINED_FUNCTION_22();
  (*(v8 + 32))(v4 + v7, a3);
  *(v4 + 16) = a4;
  return v4;
}

uint64_t sub_267CF1C54()
{
  v28 = sub_267EF39C8();
  OUTLINED_FUNCTION_58();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_0();
  v5 = v4 - v3;
  v6 = sub_267EF3988();
  v7 = 0;
  v8 = *(v6 + 16);
  v26 = v6 + 32;
  v27 = v6;
  for (i = MEMORY[0x277D84F90]; ; (*(v1 + 32))(i + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v5, v28))
  {
    if (v7 == v8)
    {
      v10 = 0;
      v11 = 0uLL;
      v7 = v8;
      v12 = 0uLL;
    }

    else
    {
      if (v7 >= *(v27 + 16))
      {
        goto LABEL_24;
      }

      *&v31[0] = v7;
      sub_267BA2E04(v26 + 32 * v7, v31 + 8);
      v11 = v31[0];
      v12 = v31[1];
      ++v7;
      v10 = v32;
    }

    v33[0] = v11;
    v33[1] = v12;
    v34 = v10;
    if (!v10)
    {

      return i;
    }

    v29 = v11;
    sub_267BA7F4C((v33 + 8), v31);
    v13 = sub_267EF3948();
    if (v13 >> 62)
    {
      v14 = sub_267EF9A68();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v29 >= v14)
    {
      goto LABEL_25;
    }

    sub_267BA2E04(v31, v30);
    v15 = sub_267EF3948();
    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x26D609870](v29, v15);
      goto LABEL_14;
    }

    if (v29 < 0)
    {
      break;
    }

    if (v29 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

LABEL_14:

    sub_267EF39A8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267C71AE0();
      i = v18;
    }

    v17 = *(i + 16);
    v16 = *(i + 24);
    if (v17 >= v16 >> 1)
    {
      OUTLINED_FUNCTION_8_2(v16);
      sub_267C71AE0();
      i = v19;
    }

    __swift_destroy_boxed_opaque_existential_0(v31);
    *(i + 16) = v17 + 1;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v21 = sub_267EF8A08();
  __swift_project_value_buffer(v21, qword_280240FB0);
  v22 = sub_267EF89F8();
  v23 = sub_267EF95E8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_267BA33E8(0xD00000000000004DLL, 0x8000000267F165C0, v30);
    _os_log_impl(&dword_267B93000, v22, v23, "Fatal error: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x26D60A7B0](v25, -1, -1);
    MEMORY[0x26D60A7B0](v24, -1, -1);
  }

  result = sub_267EF9C98();
  __break(1u);
  return result;
}

uint64_t sub_267CF2044()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  v1 = OBJC_IVAR____TtC16SiriMessagesFlow25DisambiguationListAdapter_authenticationPolicy;
  sub_267EF43F8();
  OUTLINED_FUNCTION_22();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_267CF20AC()
{
  sub_267CF2044();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DisambiguationListAdapter(uint64_t a1)
{
  result = qword_28022AA68;
  if (!qword_28022AA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_267CF2158(uint64_t a1)
{
  result = sub_267EF43F8();
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

uint64_t getEnumTagSinglePayload for DisambiguationListUtils.ViewOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DisambiguationListUtils.ViewOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267CF23D8()
{
  result = qword_28022AA88;
  if (!qword_28022AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AA88);
  }

  return result;
}

void sub_267CF242C(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_267EF2BA8();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_267CF2638(v10);
  if (!v2)
  {
    v11 = [a1 filename];
    sub_267EF9028();

    sub_267EF2B08();

    v20 = *(v7 + 8);
    v20(v10, v5);
    v12 = [objc_opt_self() defaultManager];
    sub_267EF2B68();
    v13 = sub_267EF8FF8();

    v14 = [a1 data];
    v15 = sub_267EF2BE8();
    v17 = v16;

    LOBYTE(v14) = sub_267CF2C74(v13, v15, v17, 0, v12);
    if ((v14 & 1) == 0)
    {
      sub_267CF2CF8();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();
      v20(a2, v5);
    }
  }
}

id sub_267CF2638@<X0>(char *a1@<X8>)
{
  v22 = a1;
  v24[2] = *MEMORY[0x277D85DE8];
  v1 = sub_267EF2AA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_267EF2BA8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v23 = objc_opt_self();
  v12 = [v23 defaultManager];
  v13 = [v12 temporaryDirectory];

  sub_267EF2B48();
  strcpy(v24, "SiriMessages");
  BYTE5(v24[1]) = 0;
  HIWORD(v24[1]) = -5120;
  (*(v2 + 104))(v4, *MEMORY[0x277CC91D8], v1);
  sub_267BB5034();
  sub_267EF2B98();
  (*(v2 + 8))(v4, v1);
  v21 = *(v6 + 8);
  v21(v11, v5);
  v14 = *(v6 + 32);
  v14(v11, v9, v5);
  v15 = [v23 defaultManager];
  v16 = sub_267EF2AF8();
  v24[0] = 0;
  LOBYTE(v4) = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v24];

  v17 = v24[0];
  if (v4)
  {
    v14(v22, v11, v5);
    return v17;
  }

  else
  {
    v19 = v24[0];
    sub_267EF2A78();

    swift_willThrow();
    return (v21)(v11, v5);
  }
}

id sub_267CF2988@<X0>(uint64_t a1@<X8>)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = sub_267EF2BA8();
  OUTLINED_FUNCTION_58();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  result = sub_267CF2638(v9);
  if (!v1)
  {
    v28 = a1;
    sub_267EF2AE8();
    sub_267EF2B08();

    v27 = v5;
    v29 = *(v5 + 8);
    v30 = v5 + 8;
    v29(v9, v3);
    v13 = objc_opt_self();
    v14 = [v13 defaultManager];
    sub_267EF2B68();
    v15 = sub_267EF8FF8();

    v16 = [v14 fileExistsAtPath_];

    if (v16)
    {
      v17 = [v13 defaultManager];
      v18 = sub_267EF2AF8();
      v31[0] = 0;
      v19 = [v17 removeItemAtURL:v18 error:v31];

      v20 = v31[0];
      if (!v19)
      {
LABEL_7:
        v26 = v20;
        sub_267EF2A78();

        swift_willThrow();
        return (v29)(v11, v3);
      }

      v21 = v31[0];
    }

    v22 = [v13 defaultManager];
    v23 = sub_267EF2AF8();
    v24 = sub_267EF2AF8();
    v31[0] = 0;
    v25 = [v22 copyItemAtURL:v23 toURL:v24 error:v31];

    v20 = v31[0];
    if (v25)
    {
      (*(v27 + 32))(v28, v11, v3);
      return v20;
    }

    goto LABEL_7;
  }

  return result;
}

id sub_267CF2C74(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_267EF2BB8();
  sub_267BBE0DC(a2, a3);
  v11 = [a5 createFileAtPath:a1 contents:v10 attributes:a4];

  return v11;
}

unint64_t sub_267CF2CF8()
{
  result = qword_28022AA90;
  if (!qword_28022AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AA90);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemporaryFileManager.TemporaryFileManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267CF2E2C()
{
  result = qword_28022AA98;
  if (!qword_28022AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AA98);
  }

  return result;
}

void sub_267CF2E80(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v14[2] = MEMORY[0x277D84F90];
  v6 = sub_267BAF0DC(a3);
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v12 = v4;
  v13 = v4 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v6 == v7)
    {

      return;
    }

    if (v8)
    {
      v9 = MEMORY[0x26D609870](v7, v4);
    }

    else
    {
      if (v7 >= *(v13 + 16))
      {
        goto LABEL_16;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    v14[0] = v9;
    v11 = a1(v14);
    if (v3)
    {

      return;
    }

    if (v11)
    {
      sub_267EF9BD8();
      sub_267EF9C08();
      v4 = v12;
      sub_267EF9C18();
      sub_267EF9BE8();
    }

    else
    {
    }

    ++v7;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_267CF2FFC()
{
  v0 = sub_267BFB6B4();
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = sub_267BFB6B4();
  v5 = *(v3 + 88);
  v4 = *(v3 + 96);

  if (v2 == v5 && v1 == v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_267EF9EA8();
  }

  return v7 & 1;
}

uint64_t sub_267CF30B8()
{
  OUTLINED_FUNCTION_12();
  v1[25] = v2;
  v1[26] = v0;
  MessageContextFlowResult = type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult(0);
  OUTLINED_FUNCTION_18(MessageContextFlowResult);
  v1[27] = OUTLINED_FUNCTION_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229228, &qword_267EFDD20);
  OUTLINED_FUNCTION_18(v4);
  v1[28] = OUTLINED_FUNCTION_2();
  v5 = type metadata accessor for TimedSentMessageContext(0);
  v1[29] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[30] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CF3184()
{
  OUTLINED_FUNCTION_62();
  v2 = v0[28];
  v1 = v0[29];
  sub_267C4C9C0(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_267B9F98C(v0[28], &qword_280229228, &qword_267EFDD20);
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v3 = sub_267EF8A08();
    v0[36] = __swift_project_value_buffer(v3, qword_280240FB0);
    v4 = sub_267EF89F8();
    v5 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_10_2(v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_0(&dword_267B93000, v6, v7, "#EditMessageFlow no sentMessageContext found");
      OUTLINED_FUNCTION_26();
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[37] = v8;
    *v8 = v9;
    v8[1] = sub_267CF38B0;

    return sub_267CF40EC();
  }

  else
  {
    sub_267C1B4DC(v0[28], v0[30]);
    if (sub_267EF96C8() & 1) != 0 && (sub_267EF9708())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v11 = sub_267EF8A08();
      __swift_project_value_buffer(v11, qword_280240FB0);
      v12 = sub_267EF89F8();
      v13 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v13))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v14, v15, "#EditMessageFlow fetched sent messages context");
        OUTLINED_FUNCTION_26();
      }

      v17 = v0[29];
      v16 = v0[30];
      v19 = v0[26];
      v18 = v0[27];

      sub_267CF5060(v16, v18, type metadata accessor for TimedSentMessageContext);
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v17);
      v20 = OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_exitValue;
      swift_beginAccess();
      sub_267CF50C0(v18, v19 + v20);
      swift_endAccess();
      sub_267EF4018();
      sub_267CF5008(v16, type metadata accessor for TimedSentMessageContext);
      OUTLINED_FUNCTION_22_13();

      OUTLINED_FUNCTION_17();

      return v21();
    }

    else
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v22 = sub_267EF8A08();
      v0[31] = __swift_project_value_buffer(v22, qword_280240FB0);
      v23 = sub_267EF89F8();
      v24 = sub_267EF95C8();
      if (OUTLINED_FUNCTION_10_2(v24))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_3_0(&dword_267B93000, v25, v26, "#EditMessageFlow asked to edit a message with no text content");
        OUTLINED_FUNCTION_26();
      }

      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[32] = v27;
      *v27 = v28;
      v27[1] = sub_267CF3558;

      return sub_267CF47E0();
    }
  }
}

uint64_t sub_267CF3558()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267CF3654()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_27_11((v0[26] + 16));
  v1 = OUTLINED_FUNCTION_38_0();
  v2(v1);
  v3 = v0[20];
  v4 = v0[21];
  __swift_project_boxed_opaque_existential_0(v0 + 17, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[34] = v5;
  *v5 = v6;
  v5[1] = sub_267CF3730;

  return MEMORY[0x2821BB5D0](v0 + 12, v3, v4);
}

uint64_t sub_267CF3730()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 280) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267CF382C()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  sub_267EF4018();
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267CF38B0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267CF39AC()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_27_11((v0[26] + 16));
  v1 = OUTLINED_FUNCTION_38_0();
  v2(v1);
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_0(v0 + 7, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[39] = v5;
  *v5 = v6;
  v5[1] = sub_267CF3A88;

  return MEMORY[0x2821BB5D0](v0 + 2, v3, v4);
}

uint64_t sub_267CF3A88()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 320) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267CF3B84()
{
  OUTLINED_FUNCTION_12();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_267EF4018();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267CF3C00()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 304);
  v2 = v1;
  v3 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v5);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v6, v7, "#EditMessageFlow failed to produce output: '%@'");
    sub_267B9F98C(v4, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  sub_267EF4018();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267CF3D18()
{
  OUTLINED_FUNCTION_62();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[40];
  v2 = v1;
  v3 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v5);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v6, v7, "#EditMessageFlow failed to produce output: '%@'");
    sub_267B9F98C(v4, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  sub_267EF4018();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267CF3E40()
{
  OUTLINED_FUNCTION_62();
  v1 = *(v0 + 264);
  v2 = v1;
  v3 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v5);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v6, v7, "#EditMessageFlow failed to produce output: '%@'");
    sub_267B9F98C(v4, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  sub_267EF4018();
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267CF3F60()
{
  OUTLINED_FUNCTION_62();
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  v1 = v0[35];
  v2 = v1;
  v3 = sub_267EF89F8();
  sub_267EF95E8();
  OUTLINED_FUNCTION_95();
  if (OUTLINED_FUNCTION_99())
  {
    OUTLINED_FUNCTION_48();
    v4 = OUTLINED_FUNCTION_40_2();
    OUTLINED_FUNCTION_120_1(5.7779e-34);
    v5 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_98_0(v5);
    OUTLINED_FUNCTION_29_2(&dword_267B93000, v6, v7, "#EditMessageFlow failed to produce output: '%@'");
    sub_267B9F98C(v4, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_18_2();
    OUTLINED_FUNCTION_29_1();
  }

  else
  {
  }

  sub_267EF4018();
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_22_13();

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_267CF40EC()
{
  OUTLINED_FUNCTION_12();
  v1[32] = v2;
  v1[33] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v1[34] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v4);
  v1[35] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CF41E8()
{
  OUTLINED_FUNCTION_12();
  type metadata accessor for EditMessageCATs(0);
  sub_267EF7B68();
  *(v0 + 312) = sub_267EF78E8();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 320) = v1;
  *v1 = v2;
  v1[1] = sub_267CF42A4;

  return sub_267D251A8();
}

uint64_t sub_267CF42A4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 328) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267CF43A8()
{
  v1 = *(v0 + 264);
  OUTLINED_FUNCTION_27_11((v1 + 16));
  v2 = OUTLINED_FUNCTION_38_0();
  v3(v2);
  __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_38_0();
  if (sub_267EF3C18())
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    OUTLINED_FUNCTION_27_11((v1 + 16));
    v4 = OUTLINED_FUNCTION_38_0();
    v5(v4);
    __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
    OUTLINED_FUNCTION_38_0();
    v6 = sub_267EF3BF8();
    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v7 = *(v0 + 328);
  v8 = *(v0 + 264);
  sub_267B9AFEC(v8 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_catProvider, v0 + 216);
  v9 = *(v8 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent + 24);
  v10 = *(v8 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent + 32);
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent), v9);
  v11 = (*(v10 + 368))(v9, v10);
  v13 = 0xD000000000000013;
  if (v12)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v14 = 0x8000000267F10280;
  }

  v15 = sub_267DA0F10((v0 + 216), v13, v14);
  if (v7)
  {
    v17 = *(v0 + 296);
    v16 = *(v0 + 304);
    v18 = *(v0 + 288);

    __swift_destroy_boxed_opaque_existential_0((v0 + 216));
    (*(v17 + 8))(v16, v18);

    OUTLINED_FUNCTION_17();
    goto LABEL_11;
  }

  v20 = v15;
  __swift_destroy_boxed_opaque_existential_0((v0 + 216));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_267EFCA40;
  *(v21 + 32) = v20;
LABEL_10:
  v22 = *(v0 + 296);
  v23 = *(v0 + 304);
  v34 = *(v0 + 288);
  v24 = *(v0 + 272);
  v25 = *(v0 + 256);
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v26 = OUTLINED_FUNCTION_31();
  v27(v26);
  __swift_project_boxed_opaque_existential_0((v1 + 16), *(v1 + 40));
  v28 = OUTLINED_FUNCTION_31();
  v29(v28);
  __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_31();
  sub_267EF3BC8();
  v30 = sub_267EF4158();
  v31 = OUTLINED_FUNCTION_32_1(v30);
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  v32 = MEMORY[0x277D5C1D8];
  v25[3] = v31;
  v25[4] = v32;
  __swift_allocate_boxed_opaque_existential_0(v25);
  sub_267EF3F98();

  sub_267B9F98C(v0 + 176, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v24, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  (*(v22 + 8))(v23, v34);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  OUTLINED_FUNCTION_17();
LABEL_11:

  return v19();
}

uint64_t sub_267CF4760()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267CF47E0()
{
  OUTLINED_FUNCTION_12();
  v1[17] = v2;
  v1[18] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  OUTLINED_FUNCTION_18(v3);
  v1[19] = OUTLINED_FUNCTION_2();
  v4 = sub_267EF7B88();
  OUTLINED_FUNCTION_18(v4);
  v1[20] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CF48DC()
{
  OUTLINED_FUNCTION_12();
  type metadata accessor for EditMessageCATs(0);
  sub_267EF7B68();
  *(v0 + 192) = sub_267EF78E8();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 200) = v1;
  *v1 = v2;
  v1[1] = sub_267CF4998;

  return sub_267D24EE8();
}

uint64_t sub_267CF4998()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_15_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v3 + 208) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267CF4A9C()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
  v7 = OUTLINED_FUNCTION_10_0();
  v8(v7);
  __swift_project_boxed_opaque_existential_0((v5 + 16), *(v5 + 40));
  v9 = OUTLINED_FUNCTION_10_0();
  v10(v9);
  __swift_project_boxed_opaque_existential_0((v0 + 56), *(v0 + 80));
  OUTLINED_FUNCTION_10_0();
  sub_267EF3BC8();
  v11 = sub_267EF4158();
  v12 = OUTLINED_FUNCTION_32_1(v11);
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 96) = 0u;
  v13 = MEMORY[0x277D5C1D8];
  v6[3] = v12;
  v6[4] = v13;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F98();
  sub_267B9F98C(v0 + 96, &unk_28022CF80, &unk_267EFED50);
  sub_267B9F98C(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_267CF4C70()
{
  OUTLINED_FUNCTION_8_24(OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_exitValue);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent));
  swift_unknownObjectRelease();
  v1 = (v0 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_catProvider);

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t sub_267CF4CCC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_8_24(OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_exitValue);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_smsIntent));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_catProvider));
  return v0;
}

uint64_t sub_267CF4D28()
{
  sub_267CF4CCC();

  return swift_deallocClassInstance();
}

uint64_t sub_267CF4DA8(uint64_t a1)
{
  result = type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult(319);
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

uint64_t sub_267CF4E94(uint64_t a1)
{
  v1 = type metadata accessor for TimedSentMessageContext(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_267CF4EFC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267CF30B8();
}

uint64_t sub_267CF4F98@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow23FetchMessageContextFlow_exitValue;
  swift_beginAccess();
  return sub_267CF5060(v3 + v4, a1, type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult);
}

uint64_t sub_267CF5008(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_22();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_267CF5060(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_22();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_267CF50C0(uint64_t a1, uint64_t a2)
{
  MessageContextFlowResult = type metadata accessor for FetchMessageContextFlow.FetchMessageContextFlowResult(0);
  (*(*(MessageContextFlowResult - 8) + 40))(a2, a1, MessageContextFlowResult);
  return a2;
}

id sub_267CF5124(uint64_t a1)
{
  result = sub_267BAF0DC(a1);
  v3 = result;
  v4 = 0;
  v11 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v11)
    {
      result = MEMORY[0x26D609870](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * v4 + 32);
    }

    v5 = result;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v6 = [result identifier];
    v7 = sub_267EF9028();
    v9 = v8;

    sub_267D302A8(v10, v7, v9);

    ++v4;
  }

  return result;
}

uint64_t sub_267CF5230(uint64_t a1, uint64_t a2, unsigned int a3)
{

  v5 = sub_267D2F69C(v4);
  v6 = sub_267C73B04(v5);

  v18 = MEMORY[0x277D84F90];
  v7 = sub_267BAF0DC(v6);
  for (i = 0; ; ++i)
  {
    if (v7 == i)
    {

      v18 = sub_267BE512C(v14);
      sub_267CF6010(&v18);

      v15 = sub_267BDE080(v18, a2, a3);

      return v15;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D609870](i, v6);
    }

    else
    {
      if (i >= *(v6 + 16))
      {
        goto LABEL_15;
      }

      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v11 = [v9 sender];
    if (v11 && (v12 = v11, v13 = [v11 isMe], v12, (v13 & 1) != 0))
    {
    }

    else
    {
      sub_267EF9BD8();
      sub_267EF9C08();
      sub_267EF9C18();
      sub_267EF9BE8();
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_267CF53E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_267EF2D28();
  OUTLINED_FUNCTION_23();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_0();
  v10 = v9 - v8;
  v11 = sub_267E51BAC(a1);
  if (v11)
  {
    v12 = v11;
    if (sub_267BAF0DC(v11))
    {
      v26 = sub_267BAF0DC(v12);

      goto LABEL_8;
    }
  }

  v13 = [a1 numberOfAttachments];
  if (v13)
  {
    v14 = v13;
    v26 = [v13 integerValue];
  }

  else
  {
    v26 = 1;
  }

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFCA40;
  *(inited + 32) = a1;
  v16 = a1;
  v17 = sub_267BE2268(inited);
  v19 = v18;
  v20 = [v16 sender];
  v21 = [v16 messageEffectType];
  sub_267EF2D18();
  v22 = sub_267EF2CE8();
  v24 = v23;
  (*(v6 + 8))(v10, v4);
  a2[3] = &type metadata for GenericCountableComponent;
  a2[4] = sub_267C82888();
  result = swift_allocObject();
  *a2 = result;
  *(result + 16) = 8;
  *(result + 17) = *v27;
  *(result + 20) = *&v27[3];
  *(result + 24) = v26;
  *(result + 32) = v17;
  *(result + 40) = v19;
  *(result + 48) = v22;
  *(result + 56) = v24;
  *(result + 64) = v20;
  *(result + 72) = v21;
  *(result + 80) = 0;
  return result;
}

void sub_267CF5620(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = [a1 linkMetadata];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  sub_267E77D14(v9);
  if (!v11)
  {

    goto LABEL_6;
  }

  sub_267EF2B88();

  v12 = sub_267EF2BA8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {

    sub_267B9FF34(v8, &qword_280229E20, &unk_267EFDCC0);
LABEL_6:
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    __swift_project_value_buffer(v13, qword_280240FB0);
    v14 = sub_267EF89F8();
    v15 = sub_267EF95E8();
    if (OUTLINED_FUNCTION_27(v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_267B93000, v14, v8, "#ConversationStateBuilder URL missing", v16, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    goto LABEL_11;
  }

  sub_267B9FF34(v8, &qword_280229E20, &unk_267EFDCC0);
  sub_267B9AFEC(a2, v34);
  v17 = type metadata accessor for AppleMapsLinkParser();
  swift_allocObject();
  v18 = v10;
  v19 = sub_267C77354(v18, v34);
  if (v19)
  {
    v20 = v19;
    if (sub_267BF7B18())
    {
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v21 = sub_267EF8A08();
      __swift_project_value_buffer(v21, qword_280240FB0);
      v22 = sub_267EF89F8();
      v23 = sub_267EF95D8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_267B93000, v22, v23, "#ConversationStateBuilder valid apple maps location link", v24, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      *(a3 + 24) = v17;
      *(a3 + 32) = &off_2878CFD98;

      *a3 = v20;
      return;
    }
  }

  sub_267B9AFEC(a2, v34);
  v25 = type metadata accessor for GoogleMapsLinkParser();
  swift_allocObject();
  v26 = sub_267E76A44(v18, v34);
  if (!v26)
  {
LABEL_11:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v27 = v26;
  v28 = v18;
  if ((sub_267E76A70() & 1) == 0)
  {

    goto LABEL_11;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v29 = sub_267EF8A08();
  __swift_project_value_buffer(v29, qword_280240FB0);
  v30 = sub_267EF89F8();
  v31 = sub_267EF95D8();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_267B93000, v30, v31, "#ConversationStateBuilder valid google maps location link", v32, 2u);
    OUTLINED_FUNCTION_32_0();
  }

  *(a3 + 24) = v25;
  *(a3 + 32) = &off_2878D84A0;

  *a3 = v27;
}

id sub_267CF5A04(void *a1)
{
  v1 = [a1 reaction];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 reactionType];

  return v3;
}

void *sub_267CF5A70(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v35 = MEMORY[0x277D84F98];
  v3 = 0;
  v33 = a1 & 0xC000000000000001;
  v34 = sub_267BAF0DC(a1);
  v32 = xmmword_267EFCA40;
  while (1)
  {
    if (v34 == v3)
    {

      return v2;
    }

    if (v33)
    {
      v4 = MEMORY[0x26D609870](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = [v4 reaction];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 reactionType];
    }

    else
    {
      v8 = 0;
    }

    v16 = sub_267C94D00(v8, v7 == 0);
    v17 = v2[2];
    v18 = (v9 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_25;
    }

    v20 = v9;
    if (v2[3] < v19)
    {
      sub_267CFA788(v19, 1, v10, v11, v12, v13, v14, v15, v30, v31, v32, SBYTE4(v32));
      v2 = v35;
      v21 = sub_267C94D00(v8, v7 == 0);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_27;
      }

      v16 = v21;
    }

    if (v20)
    {
      v23 = (v2[7] + 8 * v16);
      MEMORY[0x26D608F90]();
      if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_267EF9328();
      }

      sub_267EF9368();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
      v24 = swift_allocObject();
      *(v24 + 16) = v32;
      *(v24 + 32) = v5;
      v2[(v16 >> 6) + 8] |= 1 << v16;
      v25 = v2[6] + 16 * v16;
      *v25 = v8;
      *(v25 + 8) = v7 == 0;
      *(v2[7] + 8 * v16) = v24;
      v26 = v2[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_26;
      }

      v2[2] = v28;
    }

    ++v3;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB00, &qword_267F02C78);
  result = sub_267EF9F28();
  __break(1u);
  return result;
}

void sub_267CF5CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(*v3 + 16);
  if (v4 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = *(a3 + 16);
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v4, v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_267CA1DE8(v4 + v8, 1);

  sub_267C72FA0();
}

uint64_t sub_267CF5D98(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_267CA1E00(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_267C71F84((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_267CF5E78(uint64_t result, uint64_t a2, char *a3)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  if (sub_267C705A8(*v3) < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(1, v8))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(sub_267BAF0DC(v7), 1 - v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_267CA5F78();

  sub_267C73744(result, a2, 1, a3);
}

uint64_t sub_267CF5F28()
{
  v1 = v0;
  v2 = sub_267BA9948();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AAF8, &qword_267F02C70);
  sub_267EF9C68();

  v5 = *(*(v7 + 56) + 8 * v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229968, &unk_267EFEBC0);
  sub_267EF9C88();
  *v1 = v7;
  return v5;
}

uint64_t sub_267CF6010(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_267BE6A4C();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_267CF608C(v6);
  return sub_267EF9BE8();
}

void sub_267CF608C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_267EF9E48();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_267D2FE1C(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_267CF6254(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_267CF616C(0, v3, 1, a1);
  }
}

void sub_267CF616C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_267CF6EB4();
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
    while (2)
    {
      v9 = *(v6 + 8 * v4);
      v10 = v8;
      v18 = v7;
      do
      {
        v11 = *v7;
        v12 = v9;
        v13 = v11;
        v14 = sub_267EA1418(v12, v13);

        if (!v14)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
      }

      while (!__CFADD__(v10++, 1));
      ++v4;
      v7 = v18 + 8;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_267CF6254(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_92:
    v105 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_94:
      v89 = v8 + 16;
      v88 = *(v8 + 2);
      while (v88 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_130;
        }

        v90 = v8;
        v8 += 16 * v88;
        v91 = *v8;
        v92 = &v89[2 * v88];
        v93 = *(v92 + 1);
        sub_267CF6898((*a3 + 8 * *v8), (*a3 + 8 * *v92), (*a3 + 8 * v93), v105);
        if (v5)
        {
          break;
        }

        if (v93 < v91)
        {
          goto LABEL_118;
        }

        if (v88 - 2 >= *v89)
        {
          goto LABEL_119;
        }

        *v8 = v91;
        *(v8 + 1) = v93;
        v94 = *v89 - v88;
        if (*v89 < v88)
        {
          goto LABEL_120;
        }

        v88 = *v89 - 1;
        sub_267EAAFF4(v92 + 16, v94, v92);
        *v89 = v88;
        v8 = v90;
      }

LABEL_102:

      return;
    }

LABEL_127:
    v8 = sub_267EAAFE0(v8);
    goto LABEL_94;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_22;
    }

    v96 = v8;
    v105 = v5;
    v11 = v7 + 1;
    v12 = *(*a3 + 8 * v10);
    v13 = (*a3 + 8 * v7);
    v14 = 8 * v7;
    v16 = *v13;
    v15 = v13 + 2;
    v101 = v6;
    sub_267CF6EB4();
    v8 = v9;
    v17 = v12;
    v5 = v16;
    v18 = sub_267EA1418(v17, v5);

    v19 = v101;
    v20 = v9 + 2;
    do
    {
      v21 = v20;
      if (v11 + 1 >= v19)
      {
        v11 = v19;
        if (v18)
        {
          goto LABEL_8;
        }

LABEL_20:
        v5 = v105;
        v8 = v96;
        v10 = v11;
        goto LABEL_22;
      }

      ++v11;
      v22 = *(v15 - 1);
      v23 = *v15;
      v5 = v22;
      v8 = sub_267EA1418(v23, v5);

      ++v15;
      v20 = v21 + 1;
      v19 = v101;
    }

    while (v18 == v8);
    if (!v18)
    {
      goto LABEL_20;
    }

LABEL_8:
    if (v11 < v9)
    {
      goto LABEL_124;
    }

    v10 = v11;
    if (v9 >= v11)
    {
      v5 = v105;
      v8 = v96;
    }

    else
    {
      v24 = v19 >= v21 ? v21 : v19;
      v25 = 8 * v24 - 8;
      v26 = v11;
      v27 = v9;
      v5 = v105;
      v8 = v96;
      do
      {
        if (v27 != --v26)
        {
          v28 = *a3;
          if (!*a3)
          {
            goto LABEL_131;
          }

          v29 = *(v28 + v14);
          *(v28 + v14) = *(v28 + v25);
          *(v28 + v25) = v29;
        }

        ++v27;
        v25 -= 8;
        v14 += 8;
      }

      while (v27 < v26);
    }

LABEL_22:
    v30 = a3[1];
    if (v10 < v30)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_123;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v10 < v9)
    {
      goto LABEL_122;
    }

    v103 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_267C70730(0, *(v8 + 2) + 1, 1, v8);
      v8 = v86;
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    v105 = v5;
    if (v45 >= v44 >> 1)
    {
      sub_267C70730(v44 > 1, v45 + 1, 1, v8);
      v8 = v87;
    }

    *(v8 + 2) = v46;
    v5 = (v8 + 32);
    v47 = &v8[16 * v45 + 32];
    *v47 = v9;
    *(v47 + 1) = v10;
    v100 = *a1;
    if (!*a1)
    {
      goto LABEL_132;
    }

    if (v45)
    {
      while (1)
      {
        v48 = v46 - 1;
        v49 = &v5[2 * v46 - 2];
        v50 = &v8[16 * v46];
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_59:
          if (v54)
          {
            goto LABEL_109;
          }

          v66 = *v50;
          v65 = *(v50 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_112;
          }

          v70 = v49[1];
          v71 = v70 - *v49;
          if (__OFSUB__(v70, *v49))
          {
            goto LABEL_115;
          }

          if (__OFADD__(v68, v71))
          {
            goto LABEL_117;
          }

          if (v68 + v71 >= v53)
          {
            if (v53 < v71)
            {
              v48 = v46 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v46 < 2)
        {
          goto LABEL_111;
        }

        v73 = *v50;
        v72 = *(v50 + 1);
        v61 = __OFSUB__(v72, v73);
        v68 = v72 - v73;
        v69 = v61;
LABEL_74:
        if (v69)
        {
          goto LABEL_114;
        }

        v75 = *v49;
        v74 = v49[1];
        v61 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v61)
        {
          goto LABEL_116;
        }

        if (v76 < v68)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v48 - 1 >= v46)
        {
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
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v80 = &v5[2 * v48 - 2];
        v81 = *v80;
        v82 = &v5[2 * v48];
        v83 = v82[1];
        sub_267CF6898((*a3 + 8 * *v80), (*a3 + 8 * *v82), (*a3 + 8 * v83), v100);
        if (v105)
        {
          goto LABEL_102;
        }

        if (v83 < v81)
        {
          goto LABEL_104;
        }

        v84 = v8;
        v8 = *(v8 + 2);
        if (v48 > v8)
        {
          goto LABEL_105;
        }

        *v80 = v81;
        v80[1] = v83;
        if (v48 >= v8)
        {
          goto LABEL_106;
        }

        v46 = (v8 - 1);
        sub_267EAAFF4(v82 + 16, &v8[-v48 - 1], &v5[2 * v48]);
        *(v84 + 2) = v8 - 1;
        v85 = v8 > 2;
        v8 = v84;
        if (!v85)
        {
          goto LABEL_88;
        }
      }

      v55 = &v5[2 * v46];
      v56 = *(v55 - 8);
      v57 = *(v55 - 7);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_107;
      }

      v60 = *(v55 - 6);
      v59 = *(v55 - 5);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_108;
      }

      v62 = *(v50 + 1);
      v63 = v62 - *v50;
      if (__OFSUB__(v62, *v50))
      {
        goto LABEL_110;
      }

      v61 = __OFADD__(v53, v63);
      v64 = v53 + v63;
      if (v61)
      {
        goto LABEL_113;
      }

      if (v64 >= v58)
      {
        v78 = *v49;
        v77 = v49[1];
        v61 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v53 < v79)
        {
          v48 = v46 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v7 = v103;
    v6 = a3[1];
    v5 = v105;
    if (v103 >= v6)
    {
      goto LABEL_92;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_125;
  }

  if (&v9[a4] >= v30)
  {
    v31 = a3[1];
  }

  else
  {
    v31 = &v9[a4];
  }

  if (v31 < v9)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v10 == v31)
  {
    goto LABEL_39;
  }

  v97 = v8;
  v105 = v5;
  v32 = *a3;
  sub_267CF6EB4();
  v33 = v32 + 8 * v10 - 8;
  v34 = &v9[-v10];
  v99 = v31;
LABEL_32:
  v102 = v10;
  v35 = *(v32 + 8 * v10);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *v37;
    v39 = v35;
    v40 = v38;
    v41 = sub_267EA1418(v39, v40);

    if (!v41)
    {
LABEL_37:
      v10 = v102 + 1;
      v33 += 8;
      --v34;
      if (v102 + 1 == v99)
      {
        v10 = v99;
        v5 = v105;
        v8 = v97;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v32)
    {
      break;
    }

    v42 = *v37;
    v35 = *(v37 + 8);
    *v37 = v35;
    *(v37 + 8) = v42;
    v37 -= 8;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_267CF6898(char *a1, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_267C74A34(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = v5;
      v13 = *v6;
      v14 = *v4;
      sub_267CF6EB4();
      v15 = v13;
      v16 = v14;
      v17 = sub_267EA1418(v15, v16);

      if (!v17)
      {
        break;
      }

      v18 = v6;
      v19 = v7 == v6++;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      v5 = v12;
    }

    v18 = v4;
    v19 = v7 == v4++;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v18;
    goto LABEL_13;
  }

  sub_267C74A34(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v37 = v4;
LABEL_15:
  v20 = v6 - 1;
  v21 = v5 - 1;
  while (v10 > v4 && v6 > v7)
  {
    v23 = v6;
    v24 = v21;
    v25 = v7;
    v26 = *(v10 - 1);
    v27 = v20;
    v28 = *v20;
    sub_267CF6EB4();
    v29 = v26;
    v30 = v28;
    v31 = sub_267EA1418(v29, v30);

    v5 = v24;
    v32 = v24 + 1;
    if (v31)
    {
      v33 = v27;
      v6 = v27;
      v7 = v25;
      v4 = v37;
      if (v32 != v23)
      {
        *v5 = *v33;
        v6 = v33;
      }

      goto LABEL_15;
    }

    if (v10 != v32)
    {
      *v24 = *(v10 - 1);
    }

    v21 = v24 - 1;
    --v10;
    v20 = v27;
    v7 = v25;
    v4 = v37;
  }

LABEL_28:
  v34 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v34])
  {
    memmove(v6, v4, 8 * v34);
  }

  return 1;
}

uint64_t sub_267CF6ABC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_267EF9FC8();
  sub_267EF9128();
  v6 = sub_267EFA018();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_267EF9EA8() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_267D31ABC();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_267CF6BE4(v8);
  *v2 = v15;
  return v13;
}

unint64_t sub_267CF6BE4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_267EF99E8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_267EF9FC8();

        sub_267EF9128();
        v10 = sub_267EFA018();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

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

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_267CF6D9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 1) == 0)
  {
    return 0;
  }

  sub_267EF9ED8();
  swift_unknownObjectRetain_n();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v7 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v8 != (a4 >> 1) - a3)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return 0;
  }

  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_267CF6E60()
{
  result = qword_28022AAF0;
  if (!qword_28022AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AAF0);
  }

  return result;
}

unint64_t sub_267CF6EB4()
{
  result = qword_28022A350;
  if (!qword_28022A350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28022A350);
  }

  return result;
}

unint64_t sub_267CF6EF8()
{
  result = qword_28022A360;
  if (!qword_28022A360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280229968, &unk_267EFEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022A360);
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

uint64_t sub_267CF6FC4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_267CF7004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_267CF7068@<X0>(char *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v134 = a3;
  v145 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022BBE0, qword_267EFD030);
  MEMORY[0x28223BE20](v6 - 8);
  v137 = &v131 - v7;
  v8 = type metadata accessor for DirectInvocationUseCases(0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6();
  v135 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v131 - v11;
  sub_267EF4C08();
  OUTLINED_FUNCTION_58();
  v142 = v14;
  v143 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_6();
  v140 = v15;
  MEMORY[0x28223BE20](v16);
  v141 = &v131 - v17;
  v18 = sub_267EF4BE8();
  OUTLINED_FUNCTION_58();
  v138 = v19;
  MEMORY[0x28223BE20](v20);
  v139 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_267EF4BA8();
  OUTLINED_FUNCTION_58();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v131 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v28 = sub_267EF8A08();
  v29 = __swift_project_value_buffer(v28, qword_280240FB0);
  v30 = *(v24 + 16);
  v144 = a1;
  v30(v27, a1, v22);
  v146 = v29;
  v31 = sub_267EF89F8();
  v32 = sub_267EF95C8();
  v33 = os_log_type_enabled(v31, v32);
  v136 = v8;
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_48();
    v132 = OUTLINED_FUNCTION_52();
    v150[0] = v132;
    *v34 = 136315138;
    sub_267CFB3F4(&qword_28022AF50, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v35 = sub_267EF9E58();
    v133 = v18;
    v36 = a2;
    v37 = v12;
    v39 = v38;
    (*(v24 + 8))(v27, v22);
    sub_267BA33E8(v35, v39, v150);
    OUTLINED_FUNCTION_43();
    v12 = v37;
    a2 = v36;
    v18 = v133;

    *(v34 + 4) = v35;
    _os_log_impl(&dword_267B93000, v31, v32, "GroupDisambiguation# received input: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v132);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {

    (*(v24 + 8))(v27, v22);
  }

  v40 = *(v147 + *a2);
  v41 = v143;
  v42 = v142;
  if (!v40)
  {
    v47 = sub_267EF89F8();
    v48 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v48))
    {
LABEL_19:
      v63 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v63);
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_26();
    }

LABEL_20:

    return sub_267EF3E68();
  }

  v43 = v141;
  sub_267EF4B88();
  if ((*(v42 + 88))(v43, v41) != *MEMORY[0x277D5C150])
  {
    (*(v42 + 8))(v43, v41);
    goto LABEL_13;
  }

  (*(v42 + 96))(v43, v41);
  v45 = v138;
  v44 = v139;
  (*(v138 + 32))(v139, v43, v18);
  v46 = v137;
  sub_267B9CC04(v44, v137);
  if (__swift_getEnumTagSinglePayload(v46, 1, v136) == 1)
  {
    (*(v45 + 8))(v44, v18);
    sub_267B9FF34(v46, &unk_28022BBE0, qword_267EFD030);
    goto LABEL_13;
  }

  sub_267CFB038(v46, v12);
  v81 = v135;
  sub_267CFB09C(v12, v135);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_267CCEDF4(v12);
    (*(v45 + 8))(v139, v18);
    sub_267CCEDF4(v81);
LABEL_13:
    v49 = v140;
    sub_267EF4B88();
    v50 = sub_267E57DFC(v49, &v148);
    (*(v42 + 8))(v49, v41, v50);
    if (v149)
    {
      sub_267BE58F4(&v148, v150);
      v51 = v152;
      __swift_project_boxed_opaque_existential_0(v150, v151);
      v52 = OUTLINED_FUNCTION_43();
      if (v53(v52, v51))
      {

        v54 = sub_267EF89F8();
        v55 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v55))
        {
          v56 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v56);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v57, v58, v59, v60, v61, 2u);
          OUTLINED_FUNCTION_26();
        }

        sub_267EF3E48();
        return __swift_destroy_boxed_opaque_existential_0(v150);
      }

      v70 = v151;
      v71 = v152;
      __swift_project_boxed_opaque_existential_0(v150, v151);
      v72 = sub_267E58398(v70, v71);
      if (v72 && (v73 = v72, sub_267EC4D48(), v75 = v74, , v75))
      {
        v76 = OUTLINED_FUNCTION_3();
        sub_267C8ECF8(v76, v77, v40);
        OUTLINED_FUNCTION_54_1();

        v78 = *v134;
        v79 = v147;
        v80 = *(v147 + *v134);
        *(v147 + *v134) = v73;

        if (*(v79 + v78))
        {

          sub_267EF3E58();
          return __swift_destroy_boxed_opaque_existential_0(v150);
        }

        v124 = sub_267EF89F8();
        v125 = sub_267EF95D8();

        if (OUTLINED_FUNCTION_54_8())
        {
          OUTLINED_FUNCTION_48();
          *&v148 = OUTLINED_FUNCTION_55_0();
          *v79 = 136315138;
          v126 = OUTLINED_FUNCTION_3();
          v129 = sub_267BA33E8(v126, v127, v128);

          *(v79 + 4) = v129;
          OUTLINED_FUNCTION_6_20(&dword_267B93000, v130, v125, "GroupDisambiguation# Selected group %s not found in dictionary");
          OUTLINED_FUNCTION_26_4();
          OUTLINED_FUNCTION_29_1();
        }

        else
        {
        }
      }

      else
      {

        v109 = sub_267EF89F8();
        v110 = sub_267EF95D8();
        if (OUTLINED_FUNCTION_36(v110))
        {
          v111 = OUTLINED_FUNCTION_32();
          OUTLINED_FUNCTION_42(v111);
          OUTLINED_FUNCTION_64_1();
          _os_log_impl(v112, v113, v114, v115, v116, 2u);
          OUTLINED_FUNCTION_26();
        }
      }

      sub_267EF3E68();
      return __swift_destroy_boxed_opaque_existential_0(v150);
    }

    sub_267B9FF34(&v148, &unk_28022BBF0, &unk_267F01C60);
    v47 = sub_267EF89F8();
    v62 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_36(v62))
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v82 = v18;
  v144 = v12;

  v83 = sub_267EF89F8();
  v84 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_54_8())
  {
    v85 = OUTLINED_FUNCTION_48();
    v86 = OUTLINED_FUNCTION_52();
    v150[0] = v86;
    *v85 = 136315138;
    v87 = OUTLINED_FUNCTION_3();
    *(v85 + 4) = sub_267BA33E8(v87, v88, v89);
    _os_log_impl(&dword_267B93000, v83, v84, "GroupDisambiguation# Item selection direct action with itemIdentifier=%s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v90 = OUTLINED_FUNCTION_3();
  sub_267C8ECF8(v90, v91, v40);
  OUTLINED_FUNCTION_54_1();

  v92 = *v134;
  v93 = v147;
  v94 = *(v147 + *v134);
  *(v147 + *v134) = v83;

  if (*(v93 + v92))
  {

    v95 = sub_267EF89F8();
    v96 = sub_267EF95D8();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = OUTLINED_FUNCTION_48();
      v98 = OUTLINED_FUNCTION_52();
      v150[0] = v98;
      *v97 = 136315138;
      *&v148 = *(v147 + v92);
      v99 = v148;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A8B0, &unk_267F01FD0);
      v100 = sub_267EF9098();
      v102 = sub_267BA33E8(v100, v101, v150);

      *(v97 + 4) = v102;
      OUTLINED_FUNCTION_64_1();
      _os_log_impl(v103, v104, v105, v106, v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_26();
    }

    v108 = v139;
    sub_267EF3E58();
    sub_267CCEDF4(v144);
    return (*(v138 + 8))(v108, v82);
  }

  else
  {

    v117 = sub_267EF89F8();
    v118 = sub_267EF95E8();

    if (OUTLINED_FUNCTION_54_8())
    {
      OUTLINED_FUNCTION_48();
      v150[0] = OUTLINED_FUNCTION_55_0();
      *v92 = 136315138;
      v119 = OUTLINED_FUNCTION_3();
      v122 = sub_267BA33E8(v119, v120, v121);

      *(v92 + 4) = v122;
      OUTLINED_FUNCTION_6_20(&dword_267B93000, v123, v118, "GroupDisambiguation# Item %s not found");
      OUTLINED_FUNCTION_26_4();
      OUTLINED_FUNCTION_29_1();
    }

    else
    {
    }

    sub_267EF3E68();
    sub_267CCEDF4(v144);
    return (*(v138 + 8))(v139, v82);
  }
}

uint64_t sub_267CF7BA4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = sub_267EF2D28();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267CF7C64, 0, 0);
}

char *sub_267CF7C64()
{
  v33 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  v3 = sub_267EF4928();
  v4 = [v3 disambiguationItems];

  v5 = sub_267EF92F8();
  v32 = MEMORY[0x277D84F90];
  v6 = v5[2];
  if (v6)
  {
    v31 = v5;
    v1 = (v5 + 4);
    v7 = MEMORY[0x277D84F90];
    v2 = &qword_280229ED0;
    do
    {
      sub_267BA2E04(v1, (v0 + 2));
      v8 = OUTLINED_FUNCTION_57_7();
      if ((OUTLINED_FUNCTION_42_11(v8) & 1) != 0 && v0[10])
      {
        MEMORY[0x26D608F90]();
        OUTLINED_FUNCTION_48_12();
        if (v9)
        {
          OUTLINED_FUNCTION_41_9();
        }

        v5 = &v32;
        sub_267EF9368();
        v7 = v32;
      }

      v1 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v10 = sub_267BAF0DC(v7);
  if (v10)
  {
    result = OUTLINED_FUNCTION_35_12(v10);
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_27_12();
    do
    {
      if (v30)
      {
        MEMORY[0x26D609870](v2, v31);
      }

      else
      {
        v12 = v31[v2 + 4];
      }

      OUTLINED_FUNCTION_53_7();
      sub_267EF2CE8();

      (*v1)(v5, 0);
      OUTLINED_FUNCTION_45_10();
      if (v9)
      {
        v5 = &v32;
        sub_267BC7934((v13 > 1), v7, 1);
      }

      OUTLINED_FUNCTION_40_9();
    }

    while (!v14);
    v7 = v31;
  }

  v15 = v0[13];

  v17 = sub_267CF83FC(v16, v7);
  v18 = OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict;
  *(v15 + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict) = v17;

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v19 = v0[13];
  v20 = sub_267EF8A08();
  __swift_project_value_buffer(v20, qword_280240FB0);
  OUTLINED_FUNCTION_54_1();

  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_48();
    v32 = OUTLINED_FUNCTION_55_0();
    *v19 = 136315138;
    v0[11] = *(v15 + v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB38, &qword_267F02E68);
    v23 = sub_267EF9098();
    v25 = sub_267BA33E8(v23, v24, &v32);

    *(v19 + 4) = v25;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v26, v22, "GroupDisambiguation# Disambiguatuon dictionary: %s");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB28, qword_267F02D58);
  OUTLINED_FUNCTION_97(v27);
  OUTLINED_FUNCTION_43();
  sub_267EF4AF8();

  v28 = OUTLINED_FUNCTION_18_7();

  return v29(v28);
}

uint64_t sub_267CF7FDC()
{
  OUTLINED_FUNCTION_12();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_267EF2D28();
  v1[14] = v3;
  OUTLINED_FUNCTION_30_0(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

char *sub_267CF8080()
{
  v33 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229770, &unk_267EFE4A0);
  v3 = sub_267EF4928();
  v4 = [v3 disambiguationItems];

  v5 = sub_267EF92F8();
  v32 = MEMORY[0x277D84F90];
  v6 = v5[2];
  if (v6)
  {
    v31 = v5;
    v1 = (v5 + 4);
    v7 = MEMORY[0x277D84F90];
    v2 = &qword_280229ED0;
    do
    {
      sub_267BA2E04(v1, (v0 + 2));
      v8 = OUTLINED_FUNCTION_57_7();
      if ((OUTLINED_FUNCTION_42_11(v8) & 1) != 0 && v0[10])
      {
        MEMORY[0x26D608F90]();
        OUTLINED_FUNCTION_48_12();
        if (v9)
        {
          OUTLINED_FUNCTION_41_9();
        }

        v5 = &v32;
        sub_267EF9368();
        v7 = v32;
      }

      v1 += 4;
      --v6;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v10 = sub_267BAF0DC(v7);
  if (v10)
  {
    result = OUTLINED_FUNCTION_35_12(v10);
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_27_12();
    do
    {
      if (v30)
      {
        MEMORY[0x26D609870](v2, v31);
      }

      else
      {
        v12 = v31[v2 + 4];
      }

      OUTLINED_FUNCTION_53_7();
      sub_267EF2CE8();

      (*v1)(v5, 0);
      OUTLINED_FUNCTION_45_10();
      if (v9)
      {
        v5 = &v32;
        sub_267BC7934((v13 > 1), v7, 1);
      }

      OUTLINED_FUNCTION_40_9();
    }

    while (!v14);
    v7 = v31;
  }

  v15 = v0[13];

  v17 = sub_267CF83FC(v16, v7);
  v18 = OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict;
  *(v15 + OBJC_IVAR____TtC16SiriMessagesFlow47SendMessageGroupNeedsDisambiguationFlowStrategy_randomIdToGroupDict) = v17;

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v19 = v0[13];
  v20 = sub_267EF8A08();
  __swift_project_value_buffer(v20, qword_280240FB0);
  OUTLINED_FUNCTION_54_1();

  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_48();
    v32 = OUTLINED_FUNCTION_55_0();
    *v19 = 136315138;
    v0[11] = *(v15 + v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB38, &qword_267F02E68);
    v23 = sub_267EF9098();
    v25 = sub_267BA33E8(v23, v24, &v32);

    *(v19 + 4) = v25;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v26, v22, "GroupDisambiguation# Disambiguatuon dictionary: %s");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB28, qword_267F02D58);
  OUTLINED_FUNCTION_97(v27);
  OUTLINED_FUNCTION_43();
  sub_267EF4AF8();

  v28 = OUTLINED_FUNCTION_18_7();

  return v29(v28);
}

uint64_t sub_267CF83FC(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = sub_267BAF0DC(a2);
  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB40, &qword_267F02E70);
    v6 = sub_267EF9CF8();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;

  sub_267CFACAC(a1, a2, 1, &v8);

  return v8;
}

uint64_t sub_267CF8504()
{
  OUTLINED_FUNCTION_12();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A858, &unk_267F06BC0);
  v1[5] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267CF85B8()
{
  v1 = *(v0[4] + OBJC_IVAR____TtC16SiriMessagesFlow53SearchForMessagesGroupNeedsDisambiguationFlowStrategy_selectedGroupName);
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
    sub_267EF4918();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_267EFCA40;
    *(v6 + 32) = v5;
    v7 = v5;
    sub_267DE8E14();
    v9 = v8;
    sub_267BA9F38(0, &qword_280229ED0, 0x277CD4188);
    v10 = v7;
    v11 = v9;
    sub_267EF4388();
    sub_267EF4508();

    (*(v3 + 8))(v2, v4);
  }

  else
  {
    sub_267C266B0();
    swift_allocError();
    *v13 = 0xD000000000000016;
    v13[1] = 0x8000000267F167C0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_267CF87B8()
{
  OUTLINED_FUNCTION_12();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v1[36] = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE40, &unk_267EFCB60);
  v1[37] = OUTLINED_FUNCTION_2();
  v5 = sub_267EF4228();
  v1[38] = v5;
  OUTLINED_FUNCTION_30_0(v5);
  v1[39] = v6;
  v1[40] = OUTLINED_FUNCTION_2();
  v7 = sub_267EF53D8();
  v1[41] = v7;
  OUTLINED_FUNCTION_30_0(v7);
  v1[42] = v8;
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v9 = sub_267EF4158();
  v1[46] = v9;
  OUTLINED_FUNCTION_30_0(v9);
  v1[47] = v10;
  v1[48] = OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267CF8970()
{
  v45 = v0;
  v1 = v0[35];
  sub_267EB946C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A850, &unk_267F01E10);
  sub_267EF4908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB88, &qword_267F02ED0);
  v2 = sub_267EF4698();
  sub_267DA874C(v2);

  v3 = sub_267EF3998();
  OUTLINED_FUNCTION_97(v3);
  sub_267EF3978();
  v5 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v5);
  (*(v4 + 8))(v5, v4);
  sub_267DA149C();
  v0[49] = v6;

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8, v7);
  sub_267EB99B8((v0 + 7));
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v10 = sub_267EF4698();
  sub_267CF929C(v10);

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v11 = v0[44];
  v12 = v0[45];
  v13 = v0[41];
  v14 = v0[42];
  v15 = sub_267EF8A08();
  v16 = __swift_project_value_buffer(v15, qword_280240FB0);
  v17 = *(v14 + 16);
  v17(v11, v12, v13);
  v18 = sub_267EF89F8();
  v19 = sub_267EF95D8();
  v20 = OUTLINED_FUNCTION_36(v19);
  v21 = v0[44];
  if (v20)
  {
    v22 = v0[42];
    v23 = v0[43];
    v24 = v0[41];
    buf = OUTLINED_FUNCTION_48();
    v42 = OUTLINED_FUNCTION_52();
    v44 = v42;
    *buf = 136315138;
    v17(v23, v21, v24);
    sub_267EF5458();
    v40 = v16;
    v0[30] = v24;
    v0[31] = sub_267CFB3F4(&qword_28022BAF0, MEMORY[0x277D5DC70], MEMORY[0x277D5DC50]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 27);
    v17(boxed_opaque_existential_0, v23, v24);
    v26 = sub_267EF5448();
    v43 = v17;
    v28 = v27;
    v29 = *(v22 + 8);
    v29(v23, v24);
    v29(v21, v24);
    __swift_destroy_boxed_opaque_existential_0(v0 + 27);
    v30 = sub_267BA33E8(v26, v28, &v44);
    v17 = v43;

    *(buf + 4) = v30;
    _os_log_impl(&dword_267B93000, v18, v40, "#SearchForMessagesGroupNeedsDisambiguationFlowStrategy submitting NLv4 dialog act: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    v31 = v0[41];
    v32 = v0[42];

    v29 = *(v32 + 8);
    v29(v21, v31);
  }

  v0[50] = v29;
  v33 = v0[45];
  v34 = v0[41];
  v35 = v0[42];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022CF30, &unk_267EFCF80);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_267EFC020;
  v17((v37 + v36), v33, v34);
  sub_267EF4088();
  v38 = swift_task_alloc();
  v0[51] = v38;
  *v38 = v0;
  v38[1] = sub_267CF8E10;

  return sub_267CE9268();
}

uint64_t sub_267CF8E10()
{
  OUTLINED_FUNCTION_12();
  v5 = *v1;
  OUTLINED_FUNCTION_5();
  *v2 = v5;
  *(v5 + 416) = v0;

  if (v0)
  {

    v3 = sub_267CF91B4;
  }

  else
  {
    v3 = sub_267CF8F20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_267CF8F20()
{
  v1 = *(v0 + 376);
  v17 = *(v0 + 384);
  v2 = *(v0 + 368);
  v21 = *(v0 + 360);
  v22 = *(v0 + 400);
  v20 = *(v0 + 328);
  v3 = *(v0 + 312);
  v18 = *(v0 + 320);
  v4 = *(v0 + 296);
  v19 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v8 = OUTLINED_FUNCTION_54_1();
  v9(v8, v7);
  v10 = v5[6];
  __swift_project_boxed_opaque_existential_0(v5 + 2, v5[5]);
  v11 = OUTLINED_FUNCTION_54_1();
  v12(v11, v10);
  __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
  OUTLINED_FUNCTION_54_1();
  sub_267EF3BC8();
  (*(v1 + 16))(v4, v17, v2);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v2);
  v13 = sub_267EF4CC8();
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0;
  *(v0 + 176) = 0u;
  v14 = MEMORY[0x277D5C1D8];
  v6[3] = v13;
  v6[4] = v14;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_267EF3F68();

  sub_267B9FF34(v0 + 176, &unk_28022CF80, &unk_267EFED50);
  sub_267B9FF34(v4, &unk_28022AE40, &unk_267EFCB60);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  (*(v3 + 8))(v18, v19);
  v22(v21, v20);
  (*(v1 + 8))(v17, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 136));

  OUTLINED_FUNCTION_17();

  return v15();
}

uint64_t sub_267CF91B4()
{
  v2 = *(v0 + 376);
  v1 = *(v0 + 384);
  v3 = *(v0 + 368);
  (*(v0 + 400))(*(v0 + 360), *(v0 + 328));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267CF929C(uint64_t a1)
{
  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v3 = sub_267EF8A08();
  __swift_project_value_buffer(v3, qword_280240FB0);

  v4 = sub_267EF89F8();
  v5 = sub_267EF95D8();

  if (OUTLINED_FUNCTION_54_8())
  {
    OUTLINED_FUNCTION_48();
    v17 = OUTLINED_FUNCTION_55_0();
    *v1 = 136315138;
    v6 = MEMORY[0x26D609000](a1, MEMORY[0x277D837D0]);
    v8 = sub_267BA33E8(v6, v7, &v17);

    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_6_20(&dword_267B93000, v9, v5, "#SearchForMessagesGroupNeedsDisambiguationFlowStrategy creating SDAs for groups %s");
    OUTLINED_FUNCTION_26_4();
    OUTLINED_FUNCTION_29_1();
  }

  v17 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  for (i = a1 + 40; v10; --v10)
  {
    v12 = sub_267EF6268();
    OUTLINED_FUNCTION_97(v12);

    sub_267EF6258();
    v13 = sub_267EF6058();
    OUTLINED_FUNCTION_97(v13);
    sub_267EF6048();
    sub_267EF6038();

    sub_267EF6218();

    v14 = sub_267EF6428();
    OUTLINED_FUNCTION_97(v14);
    sub_267EF6418();
    sub_267EF63E8();

    MEMORY[0x26D608F90](v15);
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_267EF9328();
    }

    sub_267EF9368();
    i += 16;
  }

  sub_267BC8938();
}

uint64_t sub_267CF94F4()
{
}

uint64_t sub_267CF9534()
{
  v0 = sub_267C4779C();

  return v0;
}

uint64_t sub_267CF957C()
{
  sub_267CF9534();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy(uint64_t a1)
{
  result = qword_28022AB08;
  if (!qword_28022AB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267CF9668()
{
  type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy(0);

  JUMPOUT(0x26D602E30);
}

uint64_t sub_267CF96F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_267CF97A8;

  return sub_267CF7BA4(a2);
}

uint64_t sub_267CF97A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_5();
  *v6 = v5;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_267CF98B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CFB43C;

  return sub_267CF8504();
}

uint64_t sub_267CF995C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267CFB43C;

  return sub_267CF87B8();
}

uint64_t sub_267CF9A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F38](a1, a2, a3, v11, a5);
}

uint64_t sub_267CF9AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy(0);
  *v10 = v5;
  v10[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F48](a1, a2, a3, v11, a5);
}

uint64_t sub_267CF9BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267BF1CB4;

  return MEMORY[0x2821B9F40](a1, a2, v9, a4);
}

uint64_t sub_267CF9C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_267CFB43C;

  return MEMORY[0x2821B9F58](a1, a2, v9, a4);
}

uint64_t sub_267CF9D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy(0);

  return MEMORY[0x2821B9F50](a1, v5, a3);
}

uint64_t sub_267CF9D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy(0);
  *v12 = v6;
  v12[1] = sub_267CFB43C;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_267CF9E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  v15 = type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy(0);
  *v14 = v7;
  v14[1] = sub_267CFB43C;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, v15, a7);
}

unint64_t sub_267CF9FA4()
{
  result = qword_28022AB20;
  if (!qword_28022AB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022AB28, qword_267F02D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AB20);
  }

  return result;
}

uint64_t sub_267CFA008(uint64_t a1)
{
  result = sub_267CFB3F4(&qword_28022AB30, type metadata accessor for SearchForMessagesGroupNeedsDisambiguationFlowStrategy, &unk_267F02D98);
  *(a1 + 8) = result;
  return result;
}

void sub_267CFA060()
{
  OUTLINED_FUNCTION_4_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB80, &unk_267F02EC0);
  v3 = OUTLINED_FUNCTION_10_23();
  if (!*(v1 + 16))
  {
LABEL_28:

    *v0 = v3;
    return;
  }

  v4 = 0;
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_14_21();
  if (!v2)
  {
LABEL_4:
    v5 = v4;
    while (1)
    {
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v5;
      if (*(v1 + 8 * v4))
      {
        OUTLINED_FUNCTION_12_5();
        v2 = v7 & v6;
        goto LABEL_9;
      }
    }

    if (v25)
    {
      OUTLINED_FUNCTION_18_14();
      if (v23 != v24)
      {
        OUTLINED_FUNCTION_17_14(v22);
      }

      else
      {
        OUTLINED_FUNCTION_11_24(v22);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_21();
LABEL_9:
    OUTLINED_FUNCTION_31_11();
    v9 = *v8;
    v10 = v8[1];
    v13 = (v12 + 32 * v11);
    if (v25)
    {
      v14 = sub_267BA7F4C(v13, v26);
    }

    else
    {
      sub_267BA2E04(v13, v26);
    }

    OUTLINED_FUNCTION_55_8(v14, v15, v16);
    sub_267EF9128();
    sub_267EFA018();
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_28_17();
    if (v17)
    {
      break;
    }

    OUTLINED_FUNCTION_5_5();
LABEL_20:
    OUTLINED_FUNCTION_2_30(v18);
    *v20 = v9;
    v20[1] = v10;
    sub_267BA7F4C(v26, (*(v3 + 56) + 32 * v21));
    OUTLINED_FUNCTION_19_12();
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_4();
  while (1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v17)
    {
      if (v19)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_34_10();
    if (!v17)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_267CFA20C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB40, &qword_267F02E70);
  v35 = v4;
  result = sub_267EF9CE8();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v34 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_267D2FEFC(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v35 & 1) == 0)
    {

      v23 = v22;
    }

    sub_267EF9FC8();
    sub_267EF9128();
    result = sub_267EFA018();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    *(*(v7 + 56) + 8 * v27) = v22;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_267CFA4AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB58, &qword_267F02E98);
  v36 = v4;
  result = sub_267EF9CE8();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_267D2FEFC(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 16 * v18);
    v23 = v22[1];
    v37 = *v22;
    if ((v36 & 1) == 0)
    {
    }

    sub_267EF9FC8();
    sub_267EF9128();
    result = sub_267EFA018();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = (*(v7 + 56) + 16 * v27);
    *v33 = v37;
    v33[1] = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_267CFA788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_4_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB68, &qword_267F02EA8);
  v15 = OUTLINED_FUNCTION_10_23();
  if (!*(v13 + 16))
  {
LABEL_29:

    *v12 = v15;
    OUTLINED_FUNCTION_41_0();
    return;
  }

  v38 = v13;
  v16 = 0;
  v17 = v13;
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_14_21();
  if (!v14)
  {
LABEL_4:
    v18 = v16;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v16 >= v12)
      {
        break;
      }

      ++v18;
      if (*(v17 + 8 * v16))
      {
        OUTLINED_FUNCTION_12_5();
        v14 = v20 & v19;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_18_14();
      if (v36 != v37)
      {
        OUTLINED_FUNCTION_17_14(v35);
      }

      else
      {
        OUTLINED_FUNCTION_11_24(v35);
      }

      *(v13 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_21();
LABEL_9:
    OUTLINED_FUNCTION_31_11();
    v25 = *v24;
    v26 = *(v24 + 8);
    v29 = *(v28 + 8 * v27);
    if ((a12 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_55_8(v21, v22, v23);
    sub_267EF9FE8();
    if (!v26)
    {
      MEMORY[0x26D609CA0](v25);
    }

    sub_267EFA018();
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_28_17();
    if (v30)
    {
      break;
    }

    OUTLINED_FUNCTION_5_5();
LABEL_21:
    OUTLINED_FUNCTION_2_30(v31);
    *v33 = v25;
    *(v33 + 8) = v26;
    *(*(v15 + 56) + 8 * v34) = v29;
    OUTLINED_FUNCTION_19_12();
    v13 = v38;
    if (!v14)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_4();
  while (1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v30)
    {
      if (v32)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_34_10();
    if (!v30)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_267CFA938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_52_6();
  v33 = v32;
  v34 = *v32;
  v72 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  v38 = sub_267EF9CE8();
  if (!v34[2])
  {
LABEL_29:

LABEL_30:
    *v33 = v38;
    OUTLINED_FUNCTION_41_0();
    return;
  }

  v71 = v34;
  v39 = 0;
  v40 = v34;
  OUTLINED_FUNCTION_1_33();
  v46 = v45 & v44;
  v48 = (v47 + 63) >> 6;
  v49 = v38 + 64;
  if ((v45 & v44) == 0)
  {
LABEL_4:
    v51 = v39;
    while (1)
    {
      v39 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v39 >= v48)
      {
        break;
      }

      ++v51;
      if (v40[v39])
      {
        OUTLINED_FUNCTION_12_5();
        v46 = v53 & v52;
        goto LABEL_9;
      }
    }

    if ((v72 & 1) == 0)
    {

      v33 = v32;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_18_14();
    v33 = v32;
    if (v69 != v70)
    {
      OUTLINED_FUNCTION_17_14(v68);
    }

    else
    {
      OUTLINED_FUNCTION_11_24(v68);
    }

    v34[2] = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v50 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
LABEL_9:
    v54 = v50 | (v39 << 6);
    v55 = (v34[6] + 16 * v54);
    v56 = *v55;
    v57 = v55[1];
    v58 = *(v34[7] + 8 * v54);
    if ((v72 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_55_8(v41, v42, v43);
    sub_267EF9128();
    sub_267EFA018();
    OUTLINED_FUNCTION_3_28();
    if (((v61 << v60) & ~*(v49 + 8 * v59)) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_5_5();
LABEL_21:
    *(v49 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
    v67 = (*(v38 + 48) + 16 * v62);
    *v67 = v56;
    v67[1] = v57;
    *(*(v38 + 56) + 8 * v62) = v58;
    OUTLINED_FUNCTION_19_12();
    v34 = v71;
    if (!v46)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_4();
  while (1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v66)
    {
      if (v64)
      {
        break;
      }
    }

    if (v63 == v65)
    {
      v63 = 0;
    }

    if (*(v49 + 8 * v63) != -1)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_267CFAB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_52_6();
  OUTLINED_FUNCTION_4_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB90, &qword_267F02ED8);
  v37 = OUTLINED_FUNCTION_10_23();
  if (!*(v35 + 16))
  {
LABEL_27:

    *v34 = v37;
    OUTLINED_FUNCTION_41_0();
    return;
  }

  v60 = v35;
  v38 = 0;
  v39 = v35;
  OUTLINED_FUNCTION_1_33();
  OUTLINED_FUNCTION_14_21();
  if (!v36)
  {
LABEL_4:
    v40 = v38;
    while (1)
    {
      v38 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v38 >= v34)
      {
        break;
      }

      ++v40;
      if (*(v39 + 8 * v38))
      {
        OUTLINED_FUNCTION_12_5();
        v36 = v42 & v41;
        goto LABEL_9;
      }
    }

    if (a12)
    {
      OUTLINED_FUNCTION_18_14();
      if (v58 != v59)
      {
        OUTLINED_FUNCTION_17_14(v57);
      }

      else
      {
        OUTLINED_FUNCTION_11_24(v57);
      }

      *(v35 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_21();
LABEL_9:
    OUTLINED_FUNCTION_31_11();
    v47 = *v46;
    v48 = v46[1];
    v51 = *(v50 + 8 * v49);
    if ((a12 & 1) == 0)
    {
    }

    OUTLINED_FUNCTION_55_8(v43, v44, v45);
    sub_267EF9128();
    sub_267EFA018();
    OUTLINED_FUNCTION_3_28();
    OUTLINED_FUNCTION_28_17();
    if (v52)
    {
      break;
    }

    OUTLINED_FUNCTION_5_5();
LABEL_19:
    OUTLINED_FUNCTION_2_30(v53);
    *v55 = v47;
    v55[1] = v48;
    *(*(v37 + 56) + 8 * v56) = v51;
    OUTLINED_FUNCTION_19_12();
    v35 = v60;
    if (!v36)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_7_4();
  while (1)
  {
    OUTLINED_FUNCTION_46_8();
    if (v52)
    {
      if (v54)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_34_10();
    if (!v52)
    {
      OUTLINED_FUNCTION_6_23();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_267CFACAC(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v34 = a2 & 0xC000000000000001;

  v9 = 0;
  v36 = a2;
  v37 = a1;
  v10 = (a1 + 40);
  v35 = a2 >> 62;
  for (i = v8; ; v8 = i)
  {
    v11 = *(v37 + 16);
    if (v9 == v11)
    {
LABEL_24:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      return;
    }

    if (v9 >= v11)
    {
      break;
    }

    v12 = *(v10 - 1);
    v13 = *v10;
    if (v35)
    {
      v14 = sub_267EF9A68();
    }

    else
    {
      v14 = *(v8 + 16);
    }

    if (v9 == v14)
    {
      goto LABEL_24;
    }

    if (v34)
    {

      v16 = MEMORY[0x26D609870](v9, v36);
    }

    else
    {
      if (v9 >= *(v8 + 16))
      {
        goto LABEL_27;
      }

      v15 = *(v36 + 8 * v9 + 32);

      v16 = v15;
    }

    v38 = v16;
    v17 = *a4;
    v19 = sub_267BA9948();
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_26;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if (a3)
      {
        if (v18)
        {
          goto LABEL_22;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB48, &qword_267F02E78);
        sub_267EF9C78();
        if (v23)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_267CFA20C(v22, a3 & 1);
      v24 = sub_267BA9948();
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_29;
      }

      v19 = v24;
      if (v23)
      {
LABEL_22:
        v31 = swift_allocError();
        swift_willThrow();
        v32 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();

          return;
        }

        goto LABEL_30;
      }
    }

    v26 = *a4;
    *(*a4 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v27 = (v26[6] + 16 * v19);
    *v27 = v12;
    v27[1] = v13;
    *(v26[7] + 8 * v19) = v38;
    v28 = v26[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_28;
    }

    v26[2] = v30;
    v10 += 2;
    ++v9;
    a3 = 1;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_267EF9F28();
  __break(1u);
LABEL_30:
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD00000000000001BLL, 0x8000000267F167A0);
  sub_267EF9C58();
  MEMORY[0x26D608E60](39, 0xE100000000000000);
  sub_267EF9C98();
  __break(1u);
}

uint64_t sub_267CFB038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationUseCases(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_267CFB09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectInvocationUseCases(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_267CFB100(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_267EF9F28();
      __break(1u);
      goto LABEL_22;
    }

    v29 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = sub_267BA9948();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AB60, &qword_267F02EA0);
      sub_267EF9C78();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    v21 = (v19[7] + 16 * v12);
    *v21 = v9;
    v21[1] = v8;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v19[2] = v24;
    v4 = v29 + 1;
    a2 = 1;
  }

  sub_267CFA4AC(v15, a2 & 1);
  v17 = sub_267BA9948();
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A2D0, &unk_267EFCDB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_267EF9B68();
  MEMORY[0x26D608E60](0xD00000000000001BLL, 0x8000000267F167A0);
  sub_267EF9C58();
  MEMORY[0x26D608E60](39, 0xE100000000000000);
  sub_267EF9C98();
  __break(1u);
}

uint64_t sub_267CFB3F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267CFB440(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v5 = OBJC_IVAR____TtC16SiriMessagesFlow26OfferTransitionActionGroup_transition;
  v6 = sub_267EF4548();
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  type metadata accessor for FunctionAction();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = sub_267CFB92C;
  v9[5] = v8;
  v10 = sub_267CFB938(qword_28022A590, type metadata accessor for FunctionAction, &unk_267F00EF0);
  *(v2 + 16) = v9;
  *(v2 + 24) = v10;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_267CFB558(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *), uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;

  a3(sub_267CFB980, v9);
}

uint64_t sub_267CFB64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229110, &unk_267F08700);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_267EF4548();
    (*(*(v10 - 8) + 16))(v7, a1, v10);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v10);
    v11 = OBJC_IVAR____TtC16SiriMessagesFlow26OfferTransitionActionGroup_transition;
    swift_beginAccess();
    sub_267C13844(v7, v9 + v11);
    swift_endAccess();
  }

  return a3(0);
}

uint64_t type metadata accessor for OfferTransitionActionGroup(uint64_t a1)
{
  result = qword_28022ABA0;
  if (!qword_28022ABA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_267CFB7EC(uint64_t a1)
{
  sub_267C4C258(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_267CFB888@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow26OfferTransitionActionGroup_transition;
  swift_beginAccess();
  return sub_267C4C358(v1 + v3, a1);
}

uint64_t sub_267CFB938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267CFB98C(void *a1, uint64_t a2, void (*a3)(void), void *a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229558, &unk_267F02FE0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v9);
  v11 = (&v51 - v10);
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = v12;
    v14 = a1;
    v15 = sub_267D2904C(v14);
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v19 = [v13 speakableGroupName];
      if (v19)
      {

        if (qword_280228818 != -1)
        {
          OUTLINED_FUNCTION_0(&qword_280228818);
        }

        v20 = sub_267EF8A08();
        __swift_project_value_buffer(v20, qword_280240FB0);

        v21 = sub_267EF89F8();
        v22 = sub_267EF95D8();

        if (!os_log_type_enabled(v21, v22))
        {
          goto LABEL_21;
        }

        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v51 = a4;
        v52 = v24;
        v25 = a3;
        v26 = v14;
        v27 = v24;
        *v23 = 136315138;
        *(v23 + 4) = sub_267BA33E8(v17, v18, &v52);
        _os_log_impl(&dword_267B93000, v21, v22, "#GroupAppResolver: received an intent with appIdentifier: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        v14 = v26;
        a3 = v25;
        OUTLINED_FUNCTION_32_0();
        goto LABEL_20;
      }
    }

    v37 = *(v5 + 16);
    if (!v37 || (v38 = *(v37 + 272)) == 0)
    {
      v48 = *MEMORY[0x277D553B0];
      sub_267EF7CC8();
      OUTLINED_FUNCTION_22();
      (*(v49 + 104))(v11, v48);
      goto LABEL_23;
    }

    v39 = *(v37 + 264);
    v40 = qword_280228818;

    if (v40 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v41 = sub_267EF8A08();
    __swift_project_value_buffer(v41, qword_280240FB0);

    v21 = sub_267EF89F8();
    v42 = sub_267EF95D8();

    if (!os_log_type_enabled(v21, v42))
    {
LABEL_21:

      sub_267EF7C38();
      *v11 = sub_267EF7C08();
      v46 = *MEMORY[0x277D55428];
      sub_267EF7D48();
      OUTLINED_FUNCTION_22();
      (*(v47 + 104))(v11, v46);
LABEL_23:
      swift_storeEnumTagMultiPayload();
      a3(v11);

      return sub_267B9F98C(v11, &qword_280229558, &unk_267F02FE0);
    }

    v43 = swift_slowAlloc();
    v51 = v14;
    v44 = v43;
    v45 = swift_slowAlloc();
    v52 = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_267BA33E8(v39, v38, &v52);
    _os_log_impl(&dword_267B93000, v21, v42, "#GroupAppResolver: received an message state with appIdentifier: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_32_0();
    v14 = v51;
LABEL_20:
    OUTLINED_FUNCTION_32_0();
    goto LABEL_21;
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v28 = sub_267EF8A08();
  __swift_project_value_buffer(v28, qword_280240FB0);
  v29 = a1;
  v30 = sub_267EF89F8();
  v31 = sub_267EF95E8();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412290;
    *(v32 + 4) = v29;
    *v33 = v29;
    v34 = v29;
    _os_log_impl(&dword_267B93000, v30, v31, "#GroupAppResolver: It's not INSendMessageIntent: %@", v32, 0xCu);
    sub_267B9F98C(v33, &unk_280229E30, &unk_267EFC270);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_32_0();
  }

  v35 = *MEMORY[0x277D553B0];
  sub_267EF7CC8();
  OUTLINED_FUNCTION_22();
  (*(v36 + 104))(v11, v35);
  swift_storeEnumTagMultiPayload();
  a3(v11);
  return sub_267B9F98C(v11, &qword_280229558, &unk_267F02FE0);
}

void sub_267CFBF20(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABC0, &unk_267F030D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_267BB16A4(a1, &v10 - v5, &qword_28022ABC0, &unk_267F030D0);
  v7 = sub_267EF43D8();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    sub_267CFC804(&unk_28022AE10, 255, MEMORY[0x277D5BE90], MEMORY[0x277D5BE98]);
    v8 = swift_allocError();
    (*(*(v7 - 8) + 32))(v9, v6, v7);
  }

  a2(v8);
}

uint64_t sub_267CFC084(uint64_t a1, uint64_t a2)
{
  v5 = sub_267EF2E38();
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[5];
  if (v11 && (v12 = sub_267DE1A4C()) != 0)
  {
    v13 = v12;
    v14 = v2[6];
    v24 = a1;
    v25 = v14;
    v15 = v2[4];
    v17 = v15[5];
    v16 = v15[6];
    __swift_project_boxed_opaque_existential_0(v15 + 2, v17);
    (*(v16 + 8))(v26, v17, v16);
    __swift_project_boxed_opaque_existential_0(v26, v26[3]);
    sub_267EF3B68();
    v18 = sub_267BC20F4(v10, 0, 0, v11, v13);
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_94();
    v19 = swift_allocObject();
    v20 = v24;
    v19[2] = v2;
    v19[3] = v20;
    v19[4] = a2;

    sub_267CEAD3C(v18);
  }

  else
  {
    OUTLINED_FUNCTION_94();
    v22 = swift_allocObject();
    v22[2] = v2;
    v22[3] = a1;
    v22[4] = a2;

    sub_267CE88DC();
  }
}

void sub_267CFC2E0(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, const char *a5)
{
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v9 = sub_267EF8A08();
  __swift_project_value_buffer(v9, qword_280240FB0);
  v10 = sub_267EF89F8();
  v11 = sub_267EF95D8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_267B93000, v10, v11, a5, v12, 2u);
    MEMORY[0x26D60A7B0](v12, -1, -1);
  }

  sub_267CFC3EC(a1, a3, a4);
}

void sub_267CFC3EC(uint64_t a1, void (*a2)(id), uint64_t a3)
{
  v26 = a3;
  v6 = sub_267EF4228();
  OUTLINED_FUNCTION_58();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802295B8, &qword_267EFDCB0);
  MEMORY[0x28223BE20](v12);
  v14 = (v25 - v13);
  sub_267BB16A4(a1, v25 - v13, &qword_2802295B8, &qword_267EFDCB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    v16 = *v14;
    a2(v15);
  }

  else
  {
    (*(v8 + 32))(v11, v14, v6);
    v17 = sub_267DA1B74();
    v18 = *(v3 + 32);
    v19 = v18[5];
    v20 = v18[6];
    __swift_project_boxed_opaque_existential_0(v18 + 2, v19);
    (*(v20 + 16))(v27, v19, v20);
    v25[1] = v27[4];
    __swift_project_boxed_opaque_existential_0(v27, v27[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022A270, &qword_267EFCB70);
    OUTLINED_FUNCTION_94();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_267EFCA40;
    *(v21 + 32) = v17;
    v22 = swift_allocObject();
    v23 = v26;
    *(v22 + 16) = a2;
    *(v22 + 24) = v23;
    v24 = v17;

    sub_267EF4238();

    (*(v8 + 8))(v11, v6);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }
}

uint64_t sub_267CFC694()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_267CFC6CC()
{
  sub_267CFC694();

  return swift_deallocClassInstance();
}

uint64_t sub_267CFC804(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_267CFC89C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABC8, &unk_267F030E0);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v8);
  v9 = sub_267EF89E8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = swift_allocObject();
  v36 = a2;
  v37 = v16;
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  sub_267BA9F38(0, &qword_28022ABD0, 0x277CD97D8);
  v38 = a3;

  v17 = a1;
  v18 = sub_267CFCE24(v17);
  v34 = v10;
  v35 = a4;
  v19 = objc_allocWithZone(MEMORY[0x277CD97E0]);
  v36 = v18;
  v20 = [v19 init];
  [v20 setTreatLivePhotoAsStill_];
  [v20 setShouldBundleComplexAssetResources_];
  v33 = v20;
  [v20 setVariant_];
  if (qword_280228820 != -1)
  {
    swift_once();
  }

  v21 = qword_280240FC8;
  sub_267EF89C8();
  sub_267EF9698();
  sub_267EF89B8();
  v22 = v34;
  (*(v34 + 16))(v13, v15, v9);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v22 + 32))(v25 + v23, v13, v9);
  v26 = (v25 + v24);
  v27 = v37;
  *v26 = sub_267CFDE70;
  v26[1] = v27;
  *(v25 + ((v24 + 23) & 0xFFFFFFFFFFFFFFF8)) = v17;
  aBlock[4] = sub_267CFDE7C;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_267CFD794;
  aBlock[3] = &block_descriptor_10;
  v28 = _Block_copy(aBlock);
  v29 = v17;

  v30 = v36;
  v31 = v33;
  [v36 exportWithOptions:v33 completionHandler:v28];

  _Block_release(v28);
  (*(v22 + 8))(v15, v9);
}

id sub_267CFCE24(void *a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() exportRequestForAsset:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_267EF2A78();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_267CFCEF8(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5, void *a6)
{
  v68 = a5;
  v69 = a4;
  v66 = a3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABC8, &unk_267F030E0);
  MEMORY[0x28223BE20](v67);
  v10 = &v60 - v9;
  v11 = sub_267EF2BA8();
  v65 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v60 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229E20, &unk_267EFDCC0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v60 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  if (a2 || !a1)
  {
    if (qword_280228818 != -1)
    {
      swift_once();
    }

    v31 = sub_267EF8A08();
    __swift_project_value_buffer(v31, qword_280240FB0);
    v32 = a2;
    v33 = sub_267EF89F8();
    v34 = sub_267EF95E8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v70 = a2;
      v71 = v36;
      *v35 = 136315138;
      v37 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229D18, &qword_267EFF3E0);
      v38 = sub_267EF9098();
      v40 = sub_267BA33E8(v38, v39, &v71);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_267B93000, v33, v34, "Error in creating exporting PHAsset: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x26D60A7B0](v36, -1, -1);
      MEMORY[0x26D60A7B0](v35, -1, -1);
    }

    if (a2)
    {
      v41 = sub_267EF2A68();
      v42 = [v41 code];
    }

    else
    {
      v42 = 0;
    }

    sub_267EF9688();
    if (qword_280228820 != -1)
    {
      swift_once();
    }

    sub_267EF89B8();
    *v10 = v42;
    v10[8] = a2 == 0;
    v10[9] = 0;
    swift_storeEnumTagMultiPayload();
    v69(v10);
    v56 = &qword_28022ABC8;
    v57 = &unk_267F030E0;
    v58 = v10;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(&v60 - v24, 1, 1, v11);
    v26 = [a6 playbackStyle] - 1;
    if (v26 <= 4)
    {
      sub_267C8EDD0(a1, v23, **(&unk_279C2E530 + v26));
      sub_267B9F98C(v25, &qword_280229E20, &unk_267EFDCC0);
      sub_267C26704(v23, v25);
    }

    sub_267BB3794(v25, v20);
    if (__swift_getEnumTagSinglePayload(v20, 1, v11) == 1)
    {
      sub_267B9F98C(v20, &qword_280229E20, &unk_267EFDCC0);
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v27 = sub_267EF8A08();
      __swift_project_value_buffer(v27, qword_280240FB0);
      v28 = sub_267EF89F8();
      v29 = sub_267EF95E8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_267B93000, v28, v29, "#SharableMediaAttachmentUtils Failed to retrieve file URL for PHAsset", v30, 2u);
        MEMORY[0x26D60A7B0](v30, -1, -1);
      }

      sub_267EF9688();
      if (qword_280228820 != -1)
      {
        swift_once();
      }

      sub_267EF89B8();
      *v10 = 0;
      *(v10 + 4) = 1;
      swift_storeEnumTagMultiPayload();
      v69(v10);
      sub_267B9F98C(v10, &qword_28022ABC8, &unk_267F030E0);
    }

    else
    {
      v43 = v65;
      (*(v65 + 32))(v16, v20, v11);
      if (qword_280228818 != -1)
      {
        swift_once();
      }

      v44 = sub_267EF8A08();
      __swift_project_value_buffer(v44, qword_280240FB0);
      v64 = *(v43 + 16);
      v64(v14, v16, v11);
      v45 = sub_267EF89F8();
      v46 = sub_267EF95D8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v63 = v43 + 16;
        v48 = v47;
        v62 = swift_slowAlloc();
        v71 = v62;
        *v48 = 136315138;
        v61 = sub_267EF2AC8();
        v50 = v49;
        v51 = *(v65 + 8);
        v51(v14, v11);
        v52 = sub_267BA33E8(v61, v50, &v71);

        *(v48 + 4) = v52;
        v53 = v46;
        v54 = v51;
        _os_log_impl(&dword_267B93000, v45, v53, "#SharableMediaAttachmentUtils fetchSharableMediaContent downloaded an asset and local URL is now: %s", v48, 0xCu);
        v55 = v62;
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x26D60A7B0](v55, -1, -1);
        MEMORY[0x26D60A7B0](v48, -1, -1);
      }

      else
      {

        v54 = *(v43 + 8);
        v54(v14, v11);
      }

      sub_267EF9688();
      if (qword_280228820 != -1)
      {
        swift_once();
      }

      sub_267EF89B8();
      v64(v10, v16, v11);
      swift_storeEnumTagMultiPayload();
      v69(v10);
      sub_267B9F98C(v10, &qword_28022ABC8, &unk_267F030E0);
      v54(v16, v11);
    }

    v56 = &qword_280229E20;
    v57 = &unk_267EFDCC0;
    v58 = v25;
  }

  return sub_267B9F98C(v58, v56, v57);
}

uint64_t sub_267CFD794(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    type metadata accessor for PHAssetExportRequestFileURLKey(0);
    sub_267EF2BA8();
    sub_267CFDF38();
    v4 = sub_267EF8EF8();
  }

  v6 = a3;
  v5(v4, a3);
}

BOOL sub_267CFD844(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_allocWithZone(MEMORY[0x277CD97E0]) init];
  [v2 setTreatLivePhotoAsStill_];
  [v2 setShouldBundleComplexAssetResources_];
  [v2 setVariant_];
  sub_267BA9F38(0, &qword_28022ABD0, 0x277CD97D8);
  v3 = sub_267CFCE24(a1);
  v17[0] = 1;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  [v3 preflightExportWithOptions:v2 assetAvailability:v17 isProcessingRequired:&v15 fileURLs:&v16 info:&v14];
  v4 = v17[0] == 0;
  if (v17[0])
  {
    v5 = v14;
  }

  else
  {
    v6 = v16;
    v7 = qword_280228818;
    v8 = v14;
    v9 = v6;
    if (v7 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v10 = sub_267EF8A08();
    __swift_project_value_buffer(v10, qword_280240FB0);
    v5 = sub_267EF89F8();
    v11 = sub_267EF95D8();
    if (os_log_type_enabled(v5, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_267B93000, v5, v11, "#SharableMediaAttachmentUtils asset is available locally", v12, 2u);
      OUTLINED_FUNCTION_32_0();
    }
  }

  return v4;
}

void sub_267CFDB98(int a1)
{
  v1 = 0xE500000000000000;
  v2 = 0x6F65646976;
  switch(a1)
  {
    case 1:
      v2 = 0x6F746F6870;
      break;
    case 2:
      v1 = 0xE90000000000006FLL;
      v2 = 0x746F68506576696CLL;
      break;
    case 3:
      break;
    case 4:
      v1 = 0xE400000000000000;
      v2 = 1802398060;
      break;
    default:
      v1 = 0xE700000000000000;
      v2 = 0x6E776F6E6B6E75;
      break;
  }

  v3 = sub_267EF8FF8();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v6[4] = sub_267CFDF90;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_267CFDDD4;
  v6[3] = &block_descriptor_9_0;
  v5 = _Block_copy(v6);

  AnalyticsSendEventLazy();
  _Block_release(v5);
}

uint64_t sub_267CFDD0C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABE0, &unk_267F030F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_267EFC020;
  strcpy((inited + 32), "attachmentType");
  *(inited + 47) = -18;
  *(inited + 48) = sub_267EF8FF8();
  sub_267BA9F38(0, &qword_28022ABD8, 0x277D82BB8);
  return sub_267EF8F28();
}

id sub_267CFDDD4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_267BA9F38(0, &qword_28022ABD8, 0x277D82BB8);
    v4 = sub_267EF8EE8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_267CFDE7C(uint64_t a1, void *a2)
{
  v5 = *(sub_267EF89E8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);

  return sub_267CFCEF8(a1, a2, v2 + v6, v10, v11, v12);
}

unint64_t sub_267CFDF38()
{
  result = qword_280228BC8;
  if (!qword_280228BC8)
  {
    type metadata accessor for PHAssetExportRequestFileURLKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280228BC8);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SharingMediaAttachmentError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SharingMediaAttachmentError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_267CFDFFC(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267CFE018(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 9) = v2;
  return result;
}

double sub_267CFE084@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0x646E657070417369 && a2 == 0xEA00000000006465;
  if (v6 || (OUTLINED_FUNCTION_2_6(0x646E657070417369, 0xEA00000000006465) & 1) != 0)
  {
    v9 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  v10 = a1 == 0xD00000000000001ALL && 0x8000000267F10470 == a2;
  if (v10 || (OUTLINED_FUNCTION_2_6(0xD00000000000001ALL, 0x8000000267F10470) & 1) != 0)
  {
    v9 = v3[25];
    goto LABEL_7;
  }

  v11 = a1 == 0xD000000000000019 && 0x8000000267F10490 == a2;
  if (v11 || (OUTLINED_FUNCTION_2_6(0xD000000000000019, 0x8000000267F10490) & 1) != 0)
  {
    v9 = v3[26];
    goto LABEL_7;
  }

  v12 = a1 == 0xD00000000000001DLL && 0x8000000267F104B0 == a2;
  if (v12 || (OUTLINED_FUNCTION_2_6(0xD00000000000001DLL, 0x8000000267F104B0) & 1) != 0)
  {
    v9 = v3[27];
    goto LABEL_7;
  }

  v13 = a1 == 0xD000000000000016 && 0x8000000267F104D0 == a2;
  if (v13 || (OUTLINED_FUNCTION_2_6(0xD000000000000016, 0x8000000267F104D0) & 1) != 0)
  {
    v9 = v3[28];
    goto LABEL_7;
  }

  v14 = a1 == 0xD000000000000021 && 0x8000000267F104F0 == a2;
  if (v14 || (OUTLINED_FUNCTION_2_6(0xD000000000000021, 0x8000000267F104F0) & 1) != 0)
  {
    v9 = v3[29];
    goto LABEL_7;
  }

  v15 = OUTLINED_FUNCTION_3_29();
  v17 = a1 == v15 && a2 == v16;
  if (v17 || (OUTLINED_FUNCTION_2_6(v15, v16) & 1) != 0)
  {
    v9 = v3[30];
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_4_30();
  v20 = a1 == v18 && a2 == v19;
  if (v20 || (OUTLINED_FUNCTION_2_6(v18, v19) & 1) != 0)
  {
    v9 = v3[31];
    goto LABEL_7;
  }

  v21 = a1 == 0xD000000000000011 && 0x8000000267F101F0 == a2;
  if (v21 || (OUTLINED_FUNCTION_2_6(0xD000000000000011, 0x8000000267F101F0) & 1) != 0)
  {
    v9 = v3[32];
    goto LABEL_7;
  }

  v22 = a1 == 0xD000000000000012 && 0x8000000267F10210 == a2;
  if (v22 || (OUTLINED_FUNCTION_2_6(0xD000000000000012, 0x8000000267F10210) & 1) != 0)
  {
    v9 = v3[33];
    goto LABEL_7;
  }

  v23 = a1 == 0xD000000000000014 && 0x8000000267F10230 == a2;
  if (v23 || (OUTLINED_FUNCTION_2_6(0xD000000000000014, 0x8000000267F10230) & 1) != 0)
  {
    v9 = v3[34];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

unint64_t sub_267CFE2DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_267EF9D38();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_267CFE354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_267CFE2DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_267CFE384@<X0>(uint64_t *a1@<X8>)
{
  result = sub_267BDACF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_267CFE3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_267CFE328(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_267CFE3E4(uint64_t a1)
{
  v2 = sub_267BD2758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_267CFE420(uint64_t a1)
{
  v2 = sub_267BD2758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_267CFE45C(void *a1)
{
  v2 = swift_allocObject();
  sub_267CFE4AC(a1);
  return v2;
}

uint64_t sub_267CFE4AC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022ABF8, &qword_267F03330);
  OUTLINED_FUNCTION_58();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_267BD2758();
  sub_267EFA078();
  if (v2)
  {

    type metadata accessor for MessagesMessageComponentDialogContext();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_2_31(&v24) & 1;
    v23 = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_2_31(&v23) & 1;
    v22 = 2;
    *(v1 + 26) = OUTLINED_FUNCTION_2_31(&v22) & 1;
    v21 = 3;
    *(v1 + 27) = OUTLINED_FUNCTION_2_31(&v21) & 1;
    v20 = 4;
    *(v1 + 28) = OUTLINED_FUNCTION_2_31(&v20) & 1;
    v19 = 5;
    *(v1 + 29) = OUTLINED_FUNCTION_2_31(&v19) & 1;
    v18 = 6;
    *(v1 + 30) = OUTLINED_FUNCTION_2_31(&v18) & 1;
    v17 = 7;
    *(v1 + 31) = OUTLINED_FUNCTION_2_31(&v17) & 1;
    v16 = 8;
    *(v1 + 32) = OUTLINED_FUNCTION_2_31(&v16) & 1;
    v15 = 9;
    *(v1 + 33) = OUTLINED_FUNCTION_2_31(&v15) & 1;
    v14 = 10;
    v12 = OUTLINED_FUNCTION_2_31(&v14);
    (*(v7 + 8))(v10, v5);
    *(v3 + 34) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_267CFE7C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_267CFE45C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_267CFE854(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MessagesMessageComponentDialogContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessagesMessageComponentDialogContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MessagesMessageComponentDialogContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267CFE9FC()
{
  result = qword_28022AC10;
  if (!qword_28022AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC10);
  }

  return result;
}

unint64_t sub_267CFEA54()
{
  result = qword_28022AC18;
  if (!qword_28022AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC18);
  }

  return result;
}

unint64_t sub_267CFEAAC()
{
  result = qword_28022AC20;
  if (!qword_28022AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC20);
  }

  return result;
}

uint64_t sub_267CFEB28@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_267EF2FC8();
  OUTLINED_FUNCTION_23();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
  swift_beginAccess();
  sub_267D013F0(v1 + v12, v5);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v13 = *(v8 + 32);
    v13(v11, v5, v6);
    return (v13)(a1, v11, v6);
  }

  else
  {
    sub_267D01394(v5);
    sub_267C4BE60();
    v15 = swift_allocError();
    *v16 = 0;
    v16[1] = 0;
    *a1 = v15;
    *(a1 + 8) = 0;
    return (*(v8 + 104))(a1, *MEMORY[0x277D5B408], v6);
  }
}

uint64_t sub_267CFED44()
{
  OUTLINED_FUNCTION_12();
  v1[35] = v2;
  v1[36] = v0;
  v1[37] = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267CFEDD8()
{
  v33 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 288);
  v3 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
  *(v0 + 320) = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
  swift_beginAccess();
  sub_267D013F0(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v0 + 312);
      v10 = *v8;
      v9 = *(v8 + 8);
      if (qword_280228818 != -1)
      {
        OUTLINED_FUNCTION_0(&qword_280228818);
      }

      v11 = sub_267EF8A08();
      OUTLINED_FUNCTION_30_1(v11, qword_280240FB0);
      v12 = sub_267EF89F8();
      v13 = sub_267EF95C8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_32();
        *v14 = 0;
        _os_log_impl(&dword_267B93000, v12, v13, "#SendMessageAppResolutionBeforeNextResolveFlow pushing unlock check flow", v14, 2u);
        OUTLINED_FUNCTION_32_0();
      }

      v15 = *(v0 + 304);
      v16 = *(v0 + 288);

      sub_267B9B050(v16 + 16, v0 + 16);
      type metadata accessor for SiriKitFlowFactoryImpl();
      v17 = swift_allocObject();
      v18 = v10;
      v19 = sub_267BCD068(v18, (v0 + 16), v17);
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_267D01454(v15, v2 + v3);
      swift_endAccess();
      *(v0 + 256) = v19;
      OUTLINED_FUNCTION_62_0();
      v20 = swift_allocObject();
      *(v20 + 16) = v16;
      *(v20 + 24) = v9;
      type metadata accessor for SendMessageUnlockCheckFlow();
      sub_267D014C0(&qword_28022AC80, type metadata accessor for SendMessageUnlockCheckFlow, &unk_267F0AD00);

      sub_267EF3FC8();

      goto LABEL_18;
    }

    if (!EnumCaseMultiPayload)
    {
      v5 = *(v0 + 312);
      *(v0 + 328) = *v5;
      *(v0 + 336) = v5[1];
      v6 = swift_task_alloc();
      *(v0 + 344) = v6;
      *v6 = v0;
      v6[1] = sub_267CFF238;

      return sub_267CFFF94();
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v21 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v21, qword_280240FB0);

    v22 = sub_267EF89F8();
    v23 = sub_267EF95E8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 304);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      sub_267D013F0(v2 + v3, v24);
      v27 = sub_267EF9098();
      v29 = sub_267BA33E8(v27, v28, &v32);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_267B93000, v22, v23, "#SendMessageAppResolutionBeforeNextResolveFlow execute() called in %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();
    }
  }

  v30 = *(v0 + 312);
  sub_267EF4018();
  sub_267D01394(v30);
LABEL_18:

  OUTLINED_FUNCTION_17();

  return v31();
}

uint64_t sub_267CFF238()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  *(v1 + 352) = v0;

  v2 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267CFF328()
{
  v39 = v0;
  v1 = *(v0 + 352);
  if (v1)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v2 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v2, qword_280240FB0);
    v3 = sub_267EF89F8();
    v4 = sub_267EF95C8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_32();
      *v5 = 0;
      _os_log_impl(&dword_267B93000, v3, v4, "#SendMessageAppResolutionBeforeNextResolveFlow pushing app resolution flow", v5, 2u);
      OUTLINED_FUNCTION_32_0();
    }

    v6 = *(v0 + 288);

    v7 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride;
    swift_beginAccess();
    sub_267D01324(v6 + v7, v0 + 96);
    if (*(v0 + 120))
    {
      sub_267B9A5E8((v0 + 96), v0 + 56);
      v8 = sub_267EF89F8();
      v9 = sub_267EF95D8();
      if (OUTLINED_FUNCTION_27(v9))
      {
        *OUTLINED_FUNCTION_32() = 0;
        OUTLINED_FUNCTION_6_24(&dword_267B93000, v10, v11, "#SendMessageAppResolutionBeforeNextResolveFlow overriding protected app client");
        OUTLINED_FUNCTION_29_1();
      }

      sub_267EF30B8();
      __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    }

    else
    {
      sub_267B9FED8(v0 + 96, &qword_28022AC78, &unk_267F09F80);
    }

    v31 = *(v0 + 328);
    v32 = *(v0 + 320);
    v33 = *(v0 + 304);
    v34 = *(v0 + 288);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_267D01454(v33, v34 + v32);
    swift_endAccess();
    *(v0 + 272) = v1;
    OUTLINED_FUNCTION_62_0();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v31;

    v36 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC88, &unk_267F03600);
    sub_267D01510();
    sub_267EF3FC8();

    OUTLINED_FUNCTION_17();

    return v37();
  }

  else
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);

    v13 = sub_267EF89F8();
    v14 = sub_267EF95C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 336);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38 = v17;
      *v16 = 136446210;
      *(v0 + 264) = v15;
      sub_267EF7C38();
      sub_267D014C0(&qword_28022A060, MEMORY[0x277D55380], MEMORY[0x277D55390]);
      v18 = sub_267EF9E58();
      v20 = sub_267BA33E8(v18, v19, &v38);

      *(v16 + 4) = v20;
      OUTLINED_FUNCTION_17_3(&dword_267B93000, v21, v22, "#SendMessageAppResolutionBeforeNextResolveFlow no app resolution flow, returning previously resolved app: %{public}s");
      __swift_destroy_boxed_opaque_existential_0(v17);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_29_1();
    }

    v24 = *(v0 + 328);
    v23 = *(v0 + 336);
    v25 = *(v0 + 320);
    v26 = *(v0 + 304);
    v27 = *(v0 + 288);
    *v26 = v24;
    v26[1] = v23;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v28 = v24;

    sub_267D01454(v26, v27 + v25);
    swift_endAccess();
    v29 = swift_task_alloc();
    *(v0 + 360) = v29;
    *v29 = v0;
    v29[1] = sub_267CFF7C0;

    return sub_267CFED44();
  }
}

uint64_t sub_267CFF7C0()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267CFF8A4()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 328);

  OUTLINED_FUNCTION_17();

  return v2();
}

uint64_t sub_267CFF910(uint64_t a1, uint64_t a2, void *a3)
{
  v46 = a3;
  v47 = a2;
  v50 = a1;
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  MEMORY[0x28223BE20](Resolve);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_267EF2FC8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = &v44 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - v11;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v13 = sub_267EF8A08();
  __swift_project_value_buffer(v13, qword_280240FB0);
  v14 = sub_267EF89F8();
  v15 = sub_267EF95C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v6;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_267B93000, v14, v15, "#SendMessageAppResolutionBeforeNextResolveFlow app resolution flow completed", v17, 2u);
    v18 = v17;
    v6 = v16;
    MEMORY[0x26D60A7B0](v18, -1, -1);
  }

  v19 = *(v6 + 16);
  v20 = v50;
  v19(v12, v50, v5);
  v21 = sub_267EF89F8();
  v22 = sub_267EF95D8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v45 = v6;
    v25 = v24;
    v51[0] = v24;
    *v23 = 136315138;
    v19(v44, v12, v5);
    v26 = sub_267EF9098();
    v27 = v12;
    v28 = v26;
    v44 = v4;
    v30 = v29;
    v31 = *(v45 + 8);
    v31(v27, v5);
    v32 = sub_267BA33E8(v28, v30, v51);
    v4 = v44;

    *(v23 + 4) = v32;
    _os_log_impl(&dword_267B93000, v21, v22, "#SendMessageAppResolutionBeforeNextResolveFlow app resolution flow completed with %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v33 = v25;
    v6 = v45;
    MEMORY[0x26D60A7B0](v33, -1, -1);
    v34 = v23;
    v20 = v50;
    MEMORY[0x26D60A7B0](v34, -1, -1);
  }

  else
  {

    v31 = *(v6 + 8);
    v31(v12, v5);
  }

  v35 = v48;
  v19(v48, v20, v5);
  if ((*(v6 + 88))(v35, v5) == *MEMORY[0x277D5B410])
  {
    (*(v6 + 96))(v35, v5);
    v36 = *v35;
    v37 = v46;
    *v4 = v46;
    *(v4 + 1) = v36;
    swift_storeEnumTagMultiPayload();
    v38 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
    v39 = v47;
    swift_beginAccess();
    v40 = v37;
    sub_267D01454(v4, v39 + v38);
    return swift_endAccess();
  }

  else
  {
    v19(v4, v20, v5);
    swift_storeEnumTagMultiPayload();
    v42 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
    v43 = v47;
    swift_beginAccess();
    sub_267D01454(v4, v43 + v42);
    swift_endAccess();
    return (v31)(v35, v5);
  }
}

uint64_t sub_267CFFDC0(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  MEMORY[0x28223BE20](Resolve);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    sub_267C4BE60();
    v9 = swift_allocError();
    *v10 = xmmword_267F00050;
    *v8 = v9;
    v8[8] = 0;
    v11 = *MEMORY[0x277D5B408];
    v12 = sub_267EF2FC8();
    (*(*(v12 - 8) + 104))(v8, v11, v12);
    swift_storeEnumTagMultiPayload();
    v13 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
    swift_beginAccess();
  }

  else
  {
    *v8 = a3;
    v14 = *MEMORY[0x277D5B410];
    v15 = sub_267EF2FC8();
    (*(*(v15 - 8) + 104))(v8, v14, v15);
    swift_storeEnumTagMultiPayload();
    v13 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state;
    swift_beginAccess();
  }

  sub_267D01454(v8, a2 + v13);
  return swift_endAccess();
}

uint64_t sub_267CFFF94()
{
  OUTLINED_FUNCTION_12();
  v1[66] = v0;
  v1[65] = v2;
  v1[64] = v3;
  v4 = sub_267EF4C08();
  v1[67] = v4;
  OUTLINED_FUNCTION_30_0(v4);
  v1[68] = v5;
  v1[69] = OUTLINED_FUNCTION_2();
  v6 = sub_267EF4BA8();
  v1[70] = v6;
  OUTLINED_FUNCTION_30_0(v6);
  v1[71] = v7;
  v1[72] = OUTLINED_FUNCTION_2();
  v8 = sub_267EF2D28();
  v1[73] = v8;
  OUTLINED_FUNCTION_30_0(v8);
  v1[74] = v9;
  v1[75] = OUTLINED_FUNCTION_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229430, &qword_267EFD2C0);
  v1[76] = OUTLINED_FUNCTION_2();
  v10 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_267D00108()
{
  v42 = v0;
  v1 = v0[66];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  (*(v3 + 8))(v2, v3);
  v5 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v5);
  if ((sub_267DBF838(v5, v4) & 1) == 0)
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v12 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v12, qword_280240FB0);
    v8 = sub_267EF89F8();
    v13 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_27(v13))
    {
      goto LABEL_12;
    }

    v10 = OUTLINED_FUNCTION_32();
    *v10 = 0;
    v11 = "#SendMessageAppResolutionBeforeNextResolveFlow - skipping app resolution before next resolve flow on an unsupported SeAS device";
    goto LABEL_11;
  }

  v6 = *(v0[66] + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_sendMessageState);
  v0[77] = v6;
  if (*(v6 + 96))
  {
    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v7 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v7, qword_280240FB0);
    v8 = sub_267EF89F8();
    v9 = sub_267EF95C8();
    if (!OUTLINED_FUNCTION_27(v9))
    {
      goto LABEL_12;
    }

    v10 = OUTLINED_FUNCTION_32();
    *v10 = 0;
    v11 = "#SendMessageAppResolutionBeforeNextResolveFlow - skipping app resolution since app is already selected by user";
LABEL_11:
    _os_log_impl(&dword_267B93000, v8, v3, v11, v10, 2u);
    OUTLINED_FUNCTION_32_0();
LABEL_12:

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v14 = v0[1];

    return v14(0);
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_280228818);
  }

  v16 = v0[64];
  v17 = sub_267EF8A08();
  v0[78] = OUTLINED_FUNCTION_30_1(v17, qword_280240FB0);
  v18 = v16;
  v19 = sub_267EF89F8();
  v20 = sub_267EF95D8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[76];
    v22 = v0[73];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v41 = v24;
    *v23 = 136315138;
    sub_267D293AC(v21);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v22);
    v26 = v0[76];
    if (EnumTagSinglePayload)
    {
      sub_267B9FED8(v0[76], &qword_280229430, &qword_267EFD2C0);
      v27 = 0;
      v28 = 0;
    }

    else
    {
      v29 = v0[75];
      v30 = v0[74];
      v31 = v0[73];
      (*(v30 + 16))(v29, v0[76], v31);
      sub_267B9FED8(v26, &qword_280229430, &qword_267EFD2C0);
      v27 = sub_267EF2CE8();
      v28 = v32;
      (*(v30 + 8))(v29, v31);
    }

    v0[62] = v27;
    v0[63] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A300, &qword_267EFEEE0);
    v33 = sub_267EF9098();
    v35 = sub_267BA33E8(v33, v34, &v41);

    *(v23 + 4) = v35;
    OUTLINED_FUNCTION_17_3(&dword_267B93000, v36, v37, "#SendMessageAppResolutionBeforeNextResolveFlow - invoking app selection with carried crrCommsAppSelectionJointId: %s");
    __swift_destroy_boxed_opaque_existential_0(v24);
    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_29_1();
  }

  v38 = v0[66];
  v39 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_smartAppSelectionFeature;
  if (qword_280228730 != -1)
  {
    swift_once();
  }

  v0[79] = qword_280240A10;
  __swift_project_boxed_opaque_existential_0((v38 + v39), *(v38 + v39 + 24));
  v40 = swift_task_alloc();
  v0[80] = v40;
  *v40 = v0;
  v40[1] = sub_267D005C8;

  return sub_267DF6BFC();
}

uint64_t sub_267D005C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  *(v1 + 648) = v0;

  v2 = OUTLINED_FUNCTION_4();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_267D006B8(uint64_t a1)
{
  if (v1[81])
  {
    v63 = (v1 + 42);
    v2 = sub_267EF89F8();
    v3 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_27(v3))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v4, v5, "#SendMessageAppResolutionBeforeNextResolveFlow app selection experiment is running, running app resolution flow before next resolve flow");
      OUTLINED_FUNCTION_29_1();
    }

    v6 = v1[79];
    v60 = v1[77];
    v7 = v1[66];
    v8 = v1[65];
    v9 = v1[64];

    v11 = v7[5];
    v10 = v7[6];
    __swift_project_boxed_opaque_existential_0(v7 + 2, v11);
    v12 = *(v10 + 8);

    v12(v11, v10);
    v13 = sub_267DF5E80(v9, v8, v60, (v1 + 32), v6);
    __swift_destroy_boxed_opaque_existential_0(v1 + 32);
    sub_267B9B050((v7 + 2), (v1 + 37));
    v14 = qword_2802286F0;
    v61 = v13;

    if (v14 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_2802286F0);
    }

    v58 = v1[77];
    v59 = v1[79];
    v57 = v1[64];
    v15 = v1 + 42;
    sub_267B9B050(qword_2802405A0, v63);
    v16 = type metadata accessor for AppInfoBuilder();
    v17 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1(v63, v1[45]);
    v1[50] = &type metadata for CATProvider;
    v1[51] = &off_2878CE7A0;
    v1[55] = &type metadata for MessagesFeatureFlagsImpl;
    v1[56] = off_2878D1228;
    v1[60] = v16;
    v1[61] = &off_2878D24C8;
    v1[57] = v17;
    type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy(0);
    v18 = swift_allocObject();
    v19 = v1 + 47;
    __swift_mutable_project_boxed_opaque_existential_1((v1 + 47), &type metadata for CATProvider);
    v20 = v1 + 52;
    __swift_mutable_project_boxed_opaque_existential_1((v1 + 52), &type metadata for MessagesFeatureFlagsImpl);
    v21 = v1 + 57;
    v22 = __swift_mutable_project_boxed_opaque_existential_1((v1 + 57), v16);
    OUTLINED_FUNCTION_23();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_2();
    (*(v24 + 16))(v25, v22, v16);
    v26 = *v25;
    v27 = v57;

    v28 = sub_267DF6184(v27, 0, v58, v1 + 37, v26, v61, v59, v18);
  }

  else
  {
    v15 = v1 + 12;
    v29 = sub_267EF89F8();
    v30 = sub_267EF95C8();
    if (OUTLINED_FUNCTION_27(v30))
    {
      *OUTLINED_FUNCTION_32() = 0;
      OUTLINED_FUNCTION_6_24(&dword_267B93000, v31, v32, "#SendMessageAppResolutionBeforeNextResolveFlow - running app resolution flow before next resolve flow");
      OUTLINED_FUNCTION_29_1();
    }

    v33 = v1[66];

    sub_267B9B050(v33 + 16, (v1 + 7));
    v34 = qword_2802286F0;

    if (v34 != -1)
    {
      OUTLINED_FUNCTION_4_0(&qword_2802286F0);
    }

    v64 = v1[79];
    v65 = v1[77];
    v62 = v1[64];
    sub_267B9B050(qword_2802405A0, (v1 + 12));
    v35 = type metadata accessor for AppInfoBuilder();
    v36 = swift_allocObject();
    __swift_mutable_project_boxed_opaque_existential_1((v1 + 12), v1[15]);
    v1[20] = &type metadata for CATProvider;
    v1[21] = &off_2878CE7A0;
    v1[25] = &type metadata for MessagesFeatureFlagsImpl;
    v1[26] = off_2878D1228;
    v1[30] = v35;
    v1[31] = &off_2878D24C8;
    v1[27] = v36;
    type metadata accessor for SendMessageAppResolutionOnDeviceFlowStrategy(0);
    v37 = swift_allocObject();
    v19 = v1 + 17;
    __swift_mutable_project_boxed_opaque_existential_1((v1 + 17), &type metadata for CATProvider);
    v20 = v1 + 22;
    __swift_mutable_project_boxed_opaque_existential_1((v1 + 22), &type metadata for MessagesFeatureFlagsImpl);
    v21 = v1 + 27;
    v38 = __swift_mutable_project_boxed_opaque_existential_1((v1 + 27), v35);
    OUTLINED_FUNCTION_23();
    v40 = v39;
    v41 = OUTLINED_FUNCTION_2();
    (*(v40 + 16))(v41, v38, v35);
    v42 = *v41;
    v43 = v62;

    v28 = sub_267DF6184(v43, 0, v65, v1 + 7, v42, 0, v64, v37);
  }

  __swift_destroy_boxed_opaque_existential_0(v21);

  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v19);
  __swift_destroy_boxed_opaque_existential_0(v15);
  v44 = qword_280228908;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = v1[72];
  v46 = v1[71];
  v47 = v1[70];
  v48 = v1[69];
  v49 = v1[68];
  v50 = v1[67];
  v51 = v1[66];
  v52 = sub_267EF6718();
  __swift_project_value_buffer(v52, qword_2802410C0);
  OUTLINED_FUNCTION_5_0();
  (*(v53 + 16))(v48);
  (*(v49 + 104))(v48, *MEMORY[0x277D5C128], v50);
  sub_267EF4B98();
  __swift_project_boxed_opaque_existential_0((v51 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_siriKitFlowFactory), *(v51 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_siriKitFlowFactory + 24));
  v54 = sub_267DF1758(v28, v45);

  (*(v46 + 8))(v45, v47);
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);

  v55 = v1[1];

  return v55(v54);
}

uint64_t sub_267D00D4C()
{
  sub_267D01394(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_smartAppSelectionFeature));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_siriKitFlowFactory));
  return sub_267B9FED8(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride, &qword_28022AC78, &unk_267F09F80);
}

uint64_t sub_267D00DC0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_267D01394(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_state);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_smartAppSelectionFeature));
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_siriKitFlowFactory));
  sub_267B9FED8(v0 + OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride, &qword_28022AC78, &unk_267F09F80);
  return v0;
}

uint64_t sub_267D00E40()
{
  sub_267D00DC0();

  return swift_deallocClassInstance();
}

uint64_t sub_267D00EC0(uint64_t a1)
{
  result = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(319);
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

void sub_267D00F94(uint64_t a1)
{
  sub_267D01008(319);
  if (v1 <= 0x3F)
  {
    sub_267EF2FC8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_267D01008(uint64_t a1)
{
  if (!qword_28022AC68)
  {
    sub_267BB7170();
    sub_267EF7C38();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28022AC68);
    }
  }
}

uint64_t sub_267D01078@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride;
  swift_beginAccess();
  return sub_267D01324(v3 + v4, a1);
}

uint64_t sub_267D010D4(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC16SiriMessagesFlow45SendMessageAppResolutionBeforeNextResolveFlow_protectedAppClientOverride;
  swift_beginAccess();
  sub_267D012B4(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_267D011AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_267BAEBEC;

  return sub_267CFED44();
}

uint64_t sub_267D012B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC78, &unk_267F09F80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D01324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022AC78, &unk_267F09F80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_267D01394(uint64_t a1)
{
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  (*(*(Resolve - 8) + 8))(a1, Resolve);
  return a1;
}

uint64_t sub_267D013F0(uint64_t a1, uint64_t a2)
{
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  (*(*(Resolve - 8) + 16))(a2, a1, Resolve);
  return a2;
}

uint64_t sub_267D01454(uint64_t a1, uint64_t a2)
{
  Resolve = type metadata accessor for SendMessageAppResolutionBeforeNextResolveFlow.State(0);
  (*(*(Resolve - 8) + 40))(a2, a1, Resolve);
  return a2;
}

uint64_t sub_267D014C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267D01510()
{
  result = qword_28022AC90;
  if (!qword_28022AC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28022AC88, &unk_267F03600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC90);
  }

  return result;
}

uint64_t sub_267D01574()
{
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D015DC()
{
  OUTLINED_FUNCTION_56();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_15_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_5();
  *v10 = v9;
  v7[34] = v0;

  if (v0)
  {
  }

  else
  {
    v7[35] = v3;
    v7[36] = v5;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_267D01B50()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_5();
  *v5 = v3;
  *v5 = *v2;
  v3[39] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_68_5();
  }

  else
  {

    v3[40] = v0;
    v3[41] = v4;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D020C4()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_5();
  *v5 = v3;
  *v5 = *v2;
  v3[44] = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_68_5();
  }

  else
  {

    v3[45] = v0;
    v3[46] = v4;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_267D02638()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 168);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_73_4();

  OUTLINED_FUNCTION_17();

  return v4();
}

uint64_t sub_267D026D0()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_73_4();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267D02748()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_73_4();

  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_267D027C0(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  sub_267EF7B88();
  v1[5] = swift_task_alloc();
  v2 = sub_267EF4228();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D02914, 0, 0);
}

uint64_t sub_267D02914()
{
  OUTLINED_FUNCTION_62();
  v2 = sub_267E0A09C(v1);
  v3 = sub_267EF2B78();
  if (v4)
  {
    if (v3 == 1918985330 && v4 == 0xE400000000000000)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_267EF9EA8();
    }
  }

  else
  {
    v6 = 0;
  }

  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  v0[12] = sub_267EF78E8();
  if (v6)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[13] = v7;
    *v7 = v8;
    v7[1] = sub_267D02BB8;
    OUTLINED_FUNCTION_30_2();

    return sub_267CEAC8C();
  }

  else
  {
    v11 = sub_267EF2AF8();
    v12 = [v11 _lp_simplifiedDisplayString];

    sub_267EF9028();
    if (v2)
    {
      OUTLINED_FUNCTION_52_7();
      v13 = sub_267EF79B8();
      OUTLINED_FUNCTION_36_10(v13);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[15] = v14;
      *v14 = v15;
      v14[1] = sub_267D02EA8;
      OUTLINED_FUNCTION_30_2();

      return sub_267CEA86C();
    }

    else
    {
      OUTLINED_FUNCTION_52_7();
      v17 = sub_267EF79B8();
      OUTLINED_FUNCTION_36_10(v17);
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[17] = v18;
      *v18 = v19;
      v18[1] = sub_267D031C8;
      OUTLINED_FUNCTION_30_2();

      return sub_267CEB630();
    }
  }
}

uint64_t sub_267D02BB8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_267D02EA8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_267B9FF34(v5, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D031C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_267B9FF34(v5, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_267D034F0()
{
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_13_22();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D03598()
{
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_13_22();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D03640()
{
  OUTLINED_FUNCTION_29();

  OUTLINED_FUNCTION_13_22();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D036E8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v2[4] = swift_task_alloc();
  sub_267EF7B88();
  v2[5] = swift_task_alloc();
  v3 = sub_267EF4228();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D03818, 0, 0);
}

uint64_t sub_267D03818()
{
  OUTLINED_FUNCTION_62();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  v1 = v0[4];
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  v0[10] = sub_267EF78E8();
  sub_267EF74B8();
  swift_allocObject();
  sub_267EF74A8();
  sub_267EF90F8();
  v2 = sub_267EF79B8();
  OUTLINED_FUNCTION_36_10(v2);
  sub_267EF7498();

  sub_267B9FF34(v1, &unk_28022AE30, &qword_267EFC0B0);
  v0[11] = sub_267EF7478();

  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[12] = v3;
  *v3 = v4;
  v3[1] = sub_267D0398C;
  OUTLINED_FUNCTION_30_2();

  return sub_267CEAA2C(v5, v6);
}

uint64_t sub_267D0398C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_267D03AA4()
{
  v1 = v0[9];
  v2 = OUTLINED_FUNCTION_24_9();
  v3(v2);
  sub_267EF4208();
  OUTLINED_FUNCTION_51_8();
  if (v4)
  {
    v5 = *(v1 + 32);

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v6 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95D8();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[9];
    v12 = v0[6];
    v11 = v0[7];
    if (v9)
    {
      OUTLINED_FUNCTION_48();
      v35 = OUTLINED_FUNCTION_53_8();
      *(v5 + 4) = OUTLINED_FUNCTION_67_4(4.8149e-34, v35, v13);
      OUTLINED_FUNCTION_66_7(&dword_267B93000, v14, v15, "#MessageReadingDataDetector Test: %s");
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      (*(v11 + 8))(v34, v12);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_64_3();

    __asm { BRAA            X3, X16 }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v16 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
  v17 = sub_267EF89F8();
  v18 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_10_2(v18))
  {
    v19 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v19);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_26();
  }

  v25 = sub_267D044B0();
  v26 = OUTLINED_FUNCTION_61_1(&type metadata for DataDetectorError, v25);
  OUTLINED_FUNCTION_31_12(v26, v27);

  v28 = OUTLINED_FUNCTION_19_13();
  v29(v28);
  OUTLINED_FUNCTION_71_4();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D03D70()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_71_4();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_267D03DF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28022AE30, &qword_267EFC0B0);
  v2[4] = swift_task_alloc();
  sub_267EF7B88();
  v2[5] = swift_task_alloc();
  v3 = sub_267EF4228();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_267D03F20, 0, 0);
}

uint64_t sub_267D03F20()
{
  OUTLINED_FUNCTION_62();
  if (qword_2802286F0 != -1)
  {
    OUTLINED_FUNCTION_4_0(&qword_2802286F0);
  }

  v1 = v0[4];
  type metadata accessor for SearchForMessagesCATs(0);
  sub_267EF7B68();
  v0[10] = sub_267EF78E8();
  sub_267EF90F8();
  v2 = sub_267EF79B8();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[11] = v3;
  *v3 = v4;
  v3[1] = sub_267D0403C;
  OUTLINED_FUNCTION_30_2();

  return sub_267CE9810();
}

uint64_t sub_267D0403C()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_0();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v8 + 96) = v0;

  sub_267B9FF34(v5, &unk_28022AE30, &qword_267EFC0B0);
  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_267D04164()
{
  v1 = v0[9];
  v2 = OUTLINED_FUNCTION_24_9();
  v3(v2);
  sub_267EF4208();
  OUTLINED_FUNCTION_51_8();
  if (v4)
  {
    v5 = *(v1 + 32);

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v6 = sub_267EF8A08();
    OUTLINED_FUNCTION_30_1(v6, qword_280240FB0);

    v7 = sub_267EF89F8();
    v8 = sub_267EF95D8();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[9];
    v12 = v0[6];
    v11 = v0[7];
    if (v9)
    {
      OUTLINED_FUNCTION_48();
      v35 = OUTLINED_FUNCTION_53_8();
      *(v5 + 4) = OUTLINED_FUNCTION_67_4(4.8149e-34, v35, v13);
      OUTLINED_FUNCTION_66_7(&dword_267B93000, v14, v15, "#MessageReadingDataDetector Test: %s");
      __swift_destroy_boxed_opaque_existential_0(v35);
      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_32_0();

      (*(v11 + 8))(v34, v12);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    OUTLINED_FUNCTION_23_12();
    OUTLINED_FUNCTION_64_3();

    __asm { BRAA            X3, X16 }
  }

  if (qword_280228818 != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v16 = sub_267EF8A08();
  OUTLINED_FUNCTION_30_1(v16, qword_280240FB0);
  v17 = sub_267EF89F8();
  v18 = sub_267EF95E8();
  if (OUTLINED_FUNCTION_10_2(v18))
  {
    v19 = OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_42(v19);
    OUTLINED_FUNCTION_21();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    OUTLINED_FUNCTION_26();
  }

  v25 = sub_267D044B0();
  v26 = OUTLINED_FUNCTION_61_1(&type metadata for DataDetectorError, v25);
  OUTLINED_FUNCTION_31_12(v26, v27);

  v28 = OUTLINED_FUNCTION_19_13();
  v29(v28);
  OUTLINED_FUNCTION_71_4();

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_3();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_267D04430()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_71_4();

  OUTLINED_FUNCTION_17();

  return v0();
}

unint64_t sub_267D044B0()
{
  result = qword_28022AC98;
  if (!qword_28022AC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022AC98);
  }

  return result;
}

uint64_t sub_267D04504(void *a1)
{
  v1 = [a1 phoneNumber];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_267EF9028();

  return v3;
}

unint64_t sub_267D04568()
{
  result = qword_28022ACA0;
  if (!qword_28022ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022ACA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataDetectorError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_267D0469C()
{
  result = qword_28022ACA8;
  if (!qword_28022ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28022ACA8);
  }

  return result;
}

uint64_t sub_267D046F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_267EF2E98();
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_267EF2778();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x28223BE20](v8);
  v65 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_267EF2CC8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v63 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v61 - v14;
  if (qword_280228818 != -1)
  {
    swift_once();
  }

  v16 = sub_267EF8A08();
  v17 = __swift_project_value_buffer(v16, qword_280240FB0);
  v18 = *(v11 + 16);
  v69 = a3;
  v18(v15, a3, v10);
  v71 = v17;
  v19 = sub_267EF89F8();
  v20 = sub_267EF95D8();
  v21 = os_log_type_enabled(v19, v20);
  v64 = v11;
  if (v21)
  {
    v61 = v6;
    v22 = a2;
    v23 = 0x6C6F72746E6F63;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v72 = v25;
    *v24 = 136315650;
    v26 = a1;
    v27 = 0xE700000000000000;
    v62 = v26;
    v28 = v25;
    switch(v26)
    {
      case 1:
        v29 = 1701998445;
        goto LABEL_10;
      case 2:
        v23 = 0xD000000000000011;
        v27 = 0x8000000267F0F8F0;
        break;
      case 3:
        v29 = 1936942444;
LABEL_10:
        v23 = v29 | 0x746E694800000000;
        v27 = 0xE900000000000073;
        break;
      default:
        break;
    }

    v31 = sub_267BA33E8(v23, v27, &v72);

    *(v24 + 4) = v31;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v22;
    *(v24 + 22) = 2080;
    sub_267D0B70C(&qword_28022BDE0, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v32 = sub_267EF9E58();
    a1 = v33;
    v30 = *(v11 + 8);
    v30(v15, v10);
    v34 = sub_267BA33E8(v32, a1, &v72);

    *(v24 + 24) = v34;
    _os_log_impl(&dword_267B93000, v19, v20, "#AnnounceHintExperimentController getExperimentHint hintPolicy %s, shortMessageHintUsageCount %ld, shortMessageHintLastUsageDate %s", v24, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D60A7B0](v28, -1, -1);
    v35 = v24;
    a2 = v22;
    MEMORY[0x26D60A7B0](v35, -1, -1);

    v6 = v61;
    LOBYTE(a1) = v62;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v30 = *(v11 + 8);
  v30(v15, v10);
  if (a2)
  {
LABEL_15:
    v37 = v66;
    sub_267EF2E78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802294F8, &qword_267F038D0);
    v38 = sub_267EF2E88();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_267EFC020;
    (*(v39 + 104))(v41 + v40, *MEMORY[0x277CC9968], v38);
    sub_267E6EAA0();
    v42 = v63;
    sub_267EF2CB8();
    v43 = v65;
    sub_267EF2E48();

    v30(v42, v10);
    (*(v70 + 8))(v37, v6);
    v44 = sub_267EF2758();
    LOBYTE(v42) = v45;
    (*(v67 + 8))(v43, v68);
    v46 = sub_267EF89F8();
    v47 = sub_267EF95D8();
    v48 = os_log_type_enabled(v46, v47);
    if (v42)
    {
      if (v48)
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_267B93000, v46, v47, "#AnnounceHintExperimentController Unable to get daysSinceLastHint", v49, 2u);
        MEMORY[0x26D60A7B0](v49, -1, -1);
      }

      return 7;
    }

    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = v44;
      _os_log_impl(&dword_267B93000, v46, v47, "#AnnounceHintExperimentController daysSinceLastHint: %ld", v50, 0xCu);
      MEMORY[0x26D60A7B0](v50, -1, -1);
    }

    switch(a1)
    {
      case 1:
        switch(a2)
        {
          case 1:
            if (v44 >= 1)
            {
              return 6;
            }

            break;
          case 2:
            if (v44 >= 3)
            {
              return 5;
            }

            break;
          case 3:
            if (v44 >= 8)
            {
              return 6;
            }

            break;
          case 4:
            if (v44 >= 11)
            {
              return 5;
            }

            break;
          case 5:
            if (v44 >= 18)
            {
              return 6;
            }

            break;
          case 6:
            if (v44 >= 25)
            {
              return 5;
            }

            break;
          case 7:
            if (v44 > 31)
            {
              return 6;
            }

            break;
          default:
            break;
        }

        v51 = sub_267EF89F8();
        v56 = sub_267EF95D8();
        if (!os_log_type_enabled(v51, v56))
        {
          goto LABEL_61;
        }

        v53 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v72 = v57;
        *v53 = 136315138;
        v58 = 1701998445;
        goto LABEL_58;
      case 2:
        if (a2 == 1)
        {
          if (v44 >= 7)
          {
            return 6;
          }
        }

        else if (a2 == 2)
        {
          if (v44 >= 14)
          {
            return 5;
          }
        }

        else if (a2 == 3 && v44 > 34)
        {
          return 6;
        }

        v51 = sub_267EF89F8();
        v56 = sub_267EF95D8();
        if (os_log_type_enabled(v51, v56))
        {
          v53 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v72 = v57;
          *v53 = 136315138;
          v59 = 0x8000000267F0F8F0;
          v60 = 0xD000000000000011;
LABEL_59:
          *(v53 + 4) = sub_267BA33E8(v60, v59, &v72);
          _os_log_impl(&dword_267B93000, v51, v56, "#AnnounceHintExperimentController No hint for user with hintPolicy '%s'", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x26D60A7B0](v57, -1, -1);
LABEL_60:
          MEMORY[0x26D60A7B0](v53, -1, -1);
        }

LABEL_61:

        return 7;
      case 3:
        if (a2 == 1 && v44 >= 1)
        {
          return 6;
        }

        v51 = sub_267EF89F8();
        v56 = sub_267EF95D8();
        if (!os_log_type_enabled(v51, v56))
        {
          goto LABEL_61;
        }

        v53 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v72 = v57;
        *v53 = 136315138;
        v58 = 1936942444;
LABEL_58:
        v60 = v58 | 0x746E694800000000;
        v59 = 0xE900000000000073;
        goto LABEL_59;
      default:
        v51 = sub_267EF89F8();
        v52 = sub_267EF95E8();
        if (!os_log_type_enabled(v51, v52))
        {
          goto LABEL_61;
        }

        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_267B93000, v51, v52, "#AnnounceHintExperimentController control policy should have already created hint", v53, 2u);
        goto LABEL_60;
    }
  }

LABEL_12:
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
      v36 = sub_267EF9EA8();

      if (v36)
      {
        goto LABEL_15;
      }

      result = 4;
      break;
    default:

      goto LABEL_15;
  }

  return result;
}

uint64_t sub_267D05134(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  *(v5 + 40) = a3;
  sub_267B9A5E8(a4, v5 + 64);
  v7 = *(a5 + 16);
  *(v5 + 104) = *a5;
  *(v5 + 120) = v7;
  *(v5 + 136) = *(a5 + 32);
  return v5;
}

uint64_t sub_267D05188(uint64_t a1)
{
  *(v2 + 752) = v1;
  *(v2 + 744) = a1;
  v3 = OUTLINED_FUNCTION_4();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_267D051B4()
{
  OUTLINED_FUNCTION_90();
  v1 = *(*(v0 + 752) + 56);
  OUTLINED_FUNCTION_83(v1 + 24, v0 + 712);
  sub_267C8F7C0(*(v1 + 24), v0 + 352);
  sub_267BC9B04(v0 + 352, v0 + 392, &qword_280229910, &unk_267EFEB70);
  if (*(v0 + 416))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 168);
      v3 = *(v0 + 224);
LABEL_8:

      v4 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    sub_267B9FED8(v0 + 392, &qword_280229910, &unk_267EFEB70);
  }

  sub_267BC9B04(v0 + 352, v0 + 432, &qword_280229910, &unk_267EFEB70);
  if (*(v0 + 456))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280229250, &qword_267EFFBF0);
    if (swift_dynamicCast())
    {
      v2 = *(v0 + 48);
      v3 = *(v0 + 104);
      goto LABEL_8;
    }
  }

  else
  {
    sub_267B9FED8(v0 + 432, &qword_280229910, &unk_267EFEB70);
  }

  sub_267BC9B04(v0 + 352, v0 + 472, &qword_280229910, &unk_267EFEB70);
  v2 = *(v0 + 496);
  if (v2)
  {
    __swift_project_boxed_opaque_existential_0((v0 + 472), *(v0 + 496));
    v5 = swift_task_alloc();
    *(v0 + 760) = v5;
    *v5 = v0;
    v5[1] = sub_267D05778;
    OUTLINED_FUNCTION_46_10();

    __asm { BRAA            X3, X16 }
  }

  sub_267B9FED8(v0 + 472, &qword_280229910, &unk_267EFEB70);
  v4 = 1;
LABEL_15:
  OUTLINED_FUNCTION_50_11();
  *(v0 + 130) = sub_267C5E360();
  sub_267B9EF14(v0 + 256);
  if (v4)
  {
    sub_267EF3D38();
    sub_267EF3D28();
    sub_267B9B050(v0 + 512, v0 + 552);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28022A470, &unk_267EFDC70);
    if (swift_dynamicCast())
    {

      goto LABEL_27;
    }

    if (*(v0 + 130))
    {
LABEL_27:
      v27 = *(v0 + 744);
      sub_267B9A5E8((v0 + 512), v27);
      sub_267B9FED8(v0 + 352, &qword_280229910, &unk_267EFEB70);
      v28 = MEMORY[0x277D84F90];
      *(v27 + 40) = MEMORY[0x277D84F90];
      *(v27 + 48) = v28;
      OUTLINED_FUNCTION_1();
      OUTLINED_FUNCTION_46_10();

      __asm { BRAA            X1, X16 }
    }

    if (qword_280228818 != -1)
    {
      OUTLINED_FUNCTION_0(&qword_280228818);
    }

    v13 = sub_267EF8A08();
    v14 = OUTLINED_FUNCTION_13_8(v13, qword_280240FB0);
    v15 = sub_267EF95D8();
    if (OUTLINED_FUNCTION_10_2(v15))
    {
      v16 = OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_42(v16);
      OUTLINED_FUNCTION_21();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_26();
    }

    v22 = *(v0 + 752);

    sub_267B9B050(v22 + 64, v0 + 592);
    __swift_project_boxed_opaque_existential_0((v0 + 592), *(v0 + 616));
    sub_267BA9F38(0, &qword_280229118, 0x277CD4048);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = sub_267BB41B0(ObjCClassFromMetadata);
    if (v25)
    {
      sub_267EF3B18();
      v26 = OUTLINED_FUNCTION_22_15();
      OUTLINED_FUNCTION_64_6(v26);

      __swift_destroy_boxed_opaque_existential_0((v0 + 592));
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    sub_267BC9B04(v0 + 352, v0 + 632, &qword_280229910, &unk_267EFEB70);
    v8 = *(v0 + 656);
    if (v8)
    {
      __swift_project_boxed_opaque_existential_0((v0 + 632), *(v0 + 656));
      v9 = OUTLINED_FUNCTION_7_1();
      v8 = v10(v9);
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_0((v0 + 632));
    }

    else
    {
      sub_267B9FED8(v0 + 632, &qword_280229910, &unk_267EFEB70);
      v12 = 0xE000000000000000;
    }

    sub_267D0B0B4(v8, v12, v2);

    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 784) = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_24_10(v31);
    OUTLINED_FUNCTION_46_10();

    return sub_267D063B8();
  }

  return result;
}

uint64_t sub_267D05778(char a1)
{
  OUTLINED_FUNCTION_14();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5();
  *v7 = v6;
  *(v5 + 768) = v1;

  if (!v1)
  {
    *(v5 + 129) = a1 & 1;
  }

  OUTLINED_FUNCTION_22_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}