uint64_t sub_214644804(uint64_t a1)
{
  v2 = sub_214644A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214644840(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9175B0, &qword_214771DD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214644A08();
  sub_2146DAA28();
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688, byte_214738EE8);
  sub_2146DA388();
  if (!v2)
  {
    v9 = *(v3 + 472);
    v10 = *(v3 + 456);
    v13 = *(v3 + 440);
    v14 = v10;
    v15 = v9;
    v12[15] = 1;
    sub_2142FCF88();
    sub_2146DA308();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_214644A08()
{
  result = qword_27C9175B8;
  if (!qword_27C9175B8)
  {
    result = swift_getWitnessTable(byte_214772470, &type metadata for WalletOrderPreview.Thumbnail.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9175B8);
  }

  return result;
}

uint64_t sub_214644A5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9175C0, &qword_214771DD8);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_214061854(v31);
  v25 = v31[9];
  v26 = v31[10];
  v27 = v31[11];
  v21 = v31[5];
  v22 = v31[6];
  v23 = v31[7];
  v24 = v31[8];
  v17 = v31[1];
  v18 = v31[2];
  v19 = v31[3];
  v20 = v31[4];
  v16 = v31[0];
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v28 = 0u;
  v29 = 0u;
  v30 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214644A08();
  sub_2146DAA08();
  if (!v2)
  {
    v7 = v10;
    v8 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    v11 = 0;
    sub_2140A4DD4(&qword_280B30CB8, aI_83);
    sub_2146DA1C8();
    sub_2140A4E24(v12, v14);
    v11 = 1;
    sub_2142FCE0C();
    sub_2146DA148();
    (*(v7 + 8))(v6, v4);
    v28 = v12[0];
    v29 = v12[1];
    v30 = v13;
    sub_214644D3C(v14, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_214644D0C(v14);
}

void sub_214644DA4(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 56);
  v6 = *(v1 + 80);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 72) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_214644EE0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214090D48;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214644F78(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2140910D8;
}

void sub_214645018(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040F0, &qword_2146EAA40);
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  v16[2] = sub_213FB7994;
  v16[3] = 0;
  v16[4] = 10;
  v16[5] = sub_21403C354;
  v16[6] = 0;
  *(v15 + 16) = sub_2146452D4;
  *(v15 + 24) = v16;
  *(inited + 32) = v15;
  sub_214044818(inited, a7 + 56);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  sub_21402D9F8(a1, a2);
  sub_21402D9F8(a3, a4);
  sub_21402D9F8(a5, a6);
  v17 = MEMORY[0x277D84F90];
  *(a7 + 48) = sub_214046C88(MEMORY[0x277D84F90]);
  v18 = sub_214046D9C(v17);
  v23 = v18;
  v19 = *(a7 + 56);
  v22 = *(a7 + 80);
  v21[0] = 0x6E776F6E6B6E753CLL;
  v21[1] = 0xE90000000000003ELL;
  v21[2] = 0xD00000000000001CLL;
  v21[3] = 0x800000021478A360;
  if (v19(&v23, &v22, v21))
  {

    *(a7 + 72) = v18;

    sub_213FB54FC(a5, a6);
    sub_213FB54FC(a3, a4);
    sub_213FB54FC(a1, a2);
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v20 = 0x6E776F6E6B6E753CLL;
    v20[1] = 0xE90000000000003ELL;
    v20[2] = 0xD00000000000001CLL;
    v20[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

unint64_t sub_2146452E0()
{
  result = qword_27C9175C8;
  if (!qword_27C9175C8)
  {
    result = swift_getWitnessTable(asc_214771DE0, &type metadata for WalletOrderPreview.Context, v0, v1);
    atomic_store(result, &qword_27C9175C8);
  }

  return result;
}

unint64_t sub_214645338()
{
  result = qword_27C9175D0;
  if (!qword_27C9175D0)
  {
    result = swift_getWitnessTable(byte_214771E08, &type metadata for WalletOrderPreview.Context, v0, v1);
    atomic_store(result, &qword_27C9175D0);
  }

  return result;
}

unint64_t sub_21464538C(uint64_t a1)
{
  result = sub_2146453B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2146453B4()
{
  result = qword_27C9175D8;
  if (!qword_27C9175D8)
  {
    result = swift_getWitnessTable(byte_214771E9C, &type metadata for WalletOrderPreview, v0, v1);
    atomic_store(result, &qword_27C9175D8);
  }

  return result;
}

unint64_t sub_214645408(uint64_t a1)
{
  *(a1 + 8) = sub_214645438();
  result = sub_21464548C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214645438()
{
  result = qword_27C9175E0;
  if (!qword_27C9175E0)
  {
    result = swift_getWitnessTable(aM_129, &type metadata for WalletOrderPreview, v0, v1);
    atomic_store(result, &qword_27C9175E0);
  }

  return result;
}

unint64_t sub_21464548C()
{
  result = qword_27C9175E8;
  if (!qword_27C9175E8)
  {
    result = swift_getWitnessTable(byte_2146FDB28, &type metadata for WalletOrderPreview, v0, v1);
    atomic_store(result, &qword_27C9175E8);
  }

  return result;
}

uint64_t sub_2146454E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214645528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2146455D4()
{
  result = qword_27C9175F0;
  if (!qword_27C9175F0)
  {
    result = swift_getWitnessTable(a9_14, &type metadata for WalletOrderPreview.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9175F0);
  }

  return result;
}

unint64_t sub_21464562C()
{
  result = qword_27C9175F8;
  if (!qword_27C9175F8)
  {
    result = swift_getWitnessTable(byte_214772448, &type metadata for WalletOrderPreview.Thumbnail.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C9175F8);
  }

  return result;
}

unint64_t sub_214645684()
{
  result = qword_27C917600;
  if (!qword_27C917600)
  {
    result = swift_getWitnessTable(aM_130, &type metadata for WalletOrderPreview.Thumbnail.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917600);
  }

  return result;
}

unint64_t sub_2146456DC()
{
  result = qword_27C917608;
  if (!qword_27C917608)
  {
    result = swift_getWitnessTable(byte_2147723E0, &type metadata for WalletOrderPreview.Thumbnail.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917608);
  }

  return result;
}

unint64_t sub_214645734()
{
  result = qword_27C917610;
  if (!qword_27C917610)
  {
    result = swift_getWitnessTable(byte_214772300, &type metadata for WalletOrderPreview.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917610);
  }

  return result;
}

unint64_t sub_21464578C()
{
  result = qword_27C917618;
  if (!qword_27C917618)
  {
    result = swift_getWitnessTable(byte_214772328, &type metadata for WalletOrderPreview.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917618);
  }

  return result;
}

uint64_t sub_2146457E0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v55 = sub_2146D8E38();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0);
  MEMORY[0x28223BE20](v50);
  v51 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 12);
  v76 = *(v1 + 13);
  v5 = *(v1 + 15);
  v77 = *(v1 + 14);
  v78 = v5;
  v6 = *(v1 + 11);
  v73 = *(v1 + 10);
  v7 = *v1;
  v9 = *(v1 + 3);
  v8 = *(v1 + 4);
  v10 = *(v1 + 8);
  v12 = *(v1 + 12);
  v11 = *(v1 + 13);
  LODWORD(v3) = v1[114];
  v57 = v1[113];
  v58 = v3;
  v74 = v6;
  v13 = *(v1 + 17);
  v14 = v1[144];
  v59 = v1[145];
  v60 = v14;
  v15 = *(v1 + 19);
  v79 = *(v1 + 32);
  v75 = v4;
  v16 = *(v1 + 35);
  v61 = v15;
  v62 = v16;
  memcpy(v80, v1 + 296, 0xB81uLL);
  v54 = *(v1 + 408);
  v63 = *(v1 + 409);
  v56 = *(v1 + 413);
  v17 = v1[3312];
  v64 = v1[3313];
  v65 = v17;
  *(&v72[1] + 1) = MEMORY[0x277D83B88];
  *&v72[0] = v7;
  sub_213FDC730(v72, v71);
  v18 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v18;
  sub_2140524DC(v71, 0xD000000000000015, 0x80000002147A6270, isUniquelyReferenced_nonNull_native);
  if (!v8)
  {
    goto LABEL_21;
  }

  v20 = *v70;
  v7 = MEMORY[0x277D837D0];
  *(&v72[1] + 1) = MEMORY[0x277D837D0];
  *&v72[0] = v9;
  *(&v72[0] + 1) = v8;
  sub_213FDC730(v72, v71);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v20;
  sub_2140524DC(v71, 0xD000000000000012, 0x80000002147A6290, v21);
  if (!v10)
  {
    goto LABEL_21;
  }

  v22 = *v70;
  *(&v72[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v72[0] = v10;
  sub_213FDC730(v72, v71);

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v22;
  sub_2140524DC(v71, 0xD000000000000017, 0x80000002147A62B0, v23);
  if (!v11)
  {
    goto LABEL_21;
  }

  v24 = *v70;
  *(&v72[1] + 1) = v7;
  *&v72[0] = v12;
  *(&v72[0] + 1) = v11;
  sub_213FDC730(v72, v71);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v24;
  sub_2140524DC(v71, 115, 0xE100000000000000, v25);
  v26 = *v70;
  v27 = MEMORY[0x277D839B0];
  *(&v72[1] + 1) = MEMORY[0x277D839B0];
  LOBYTE(v72[0]) = v57;
  sub_213FDC730(v72, v71);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v26;
  sub_2140524DC(v71, 0xD000000000000010, 0x80000002147A62D0, v28);
  v29 = *v70;
  if (v58 != 2)
  {
    *(&v72[1] + 1) = v27;
    LOBYTE(v72[0]) = v58 & 1;
    sub_213FDC730(v72, v71);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    *v70 = v29;
    sub_2140524DC(v71, 0xD000000000000011, 0x80000002147A6370, v30);
    v29 = *v70;
  }

  if (v59)
  {
    goto LABEL_21;
  }

  if ((v60 & 1) == 0)
  {
    *(&v72[1] + 1) = MEMORY[0x277D839F8];
    *&v72[0] = v13;
    sub_213FDC730(v72, v71);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *v70 = v29;
    sub_2140524DC(v71, 7627363, 0xE300000000000000, v31);
    v29 = *v70;
  }

  *(&v72[1] + 1) = MEMORY[0x277D84D38];
  *&v72[0] = v61;
  sub_213FDC730(v72, v71);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v29;
  sub_2140524DC(v71, 0xD000000000000012, 0x80000002147A62F0, v32);
  v33 = *v70;
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();
  v72[4] = v77;
  v72[5] = v78;
  *&v72[6] = v79;
  v72[0] = v73;
  v72[1] = v74;
  v72[2] = v75;
  v72[3] = v76;
  sub_2146479C8();
  v34 = sub_2146D87A8();
  v36 = v35;

  v37 = MEMORY[0x277CC9318];
  *(&v72[1] + 1) = MEMORY[0x277CC9318];
  *&v72[0] = v34;
  *(&v72[0] + 1) = v36;
  sub_213FDC730(v72, v71);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v33;
  sub_2140524DC(v71, 0xD000000000000014, 0x80000002147A6310, v38);
  v39 = *v70;
  v40 = v62;
  if (v62)
  {
    if (v62 == 1)
    {
LABEL_21:
      sub_2146DA018();
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      (*(v53 + 8))(v12, v55);
      sub_214648D0C(v7, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    *(&v72[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907260, &qword_2146F4990);
    *&v72[0] = v40;
    sub_213FDC730(v72, v71);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    *v70 = v39;
    sub_2140524DC(v71, 0xD000000000000019, 0x80000002147A6350, v41);
    v39 = *v70;
  }

  memcpy(v71, v80, 0xB81uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(v71) != 1)
  {
    v42 = memcpy(v72, v71, 0xB81uLL);
    MEMORY[0x28223BE20](v42);
    memcpy(v70, v80, sizeof(v70));
    sub_2142E8A8C(v70, &v68);
    sub_214648CC4(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto, aQd_0);
    v7 = v51;
    sub_2146D9018();
    v12 = v52;
    sub_2146D8E28();
    v43 = MEMORY[0x277CC9318];
    sub_2146D8FE8();
    (*(v53 + 8))(v12, v55);
    sub_214648D0C(v7, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
    v69 = v43;
    v68 = v67[0];
    sub_213FDC730(&v68, v67);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v39;
    sub_2140524DC(v67, 0xD000000000000017, 0x80000002147A6330, v44);
    sub_213FB2DF4(v80, &qword_27C907278, &qword_2146F49A0);
    v39 = v66;
  }

  v45 = v63;
  if (v63 >> 60 == 11)
  {
    goto LABEL_21;
  }

  if (v63 >> 60 != 15)
  {
    *&v70[24] = v37;
    v46 = v54;
    *v70 = v54;
    *&v70[8] = v63;
    sub_213FDC730(v70, &v68);
    sub_21404F7E0(v46, v45);
    sub_213FDCA18(v46, v45);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *&v67[0] = v39;
    sub_2140524DC(&v68, 0x6B706D7472, 0xE500000000000000, v47);
    sub_214032564(v46, v45);
    v39 = *&v67[0];
  }

  if (v64)
  {
    goto LABEL_21;
  }

  if ((v65 & 1) == 0)
  {
    *&v70[24] = MEMORY[0x277D83B88];
    *v70 = v56;
    sub_213FDC730(v70, &v68);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *&v67[0] = v39;
    sub_2140524DC(&v68, 0x6D77706D7472, 0xE600000000000000, v48);
    return *&v67[0];
  }

  return v39;
}

uint64_t sub_2146461DC()
{
  v1 = sub_2146D8E38();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x28223BE20](v1);
  v45 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for CSDMConversationParticipantDidLeaveContextProto(0);
  MEMORY[0x28223BE20](v43);
  v44 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  v52 = *(v0 + 4);
  v51 = *(v0 + 1);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v9 = *(v0 + 14);
  v10 = *(v0 + 16);
  v11 = v0[136];
  v12 = v0[137];
  v13 = *(v0 + 20);
  v50 = v0[168];
  v14 = v0[169];
  v48 = v11;
  v49 = v14;
  v56 = MEMORY[0x277D83B88];
  *&v55 = v4;
  sub_213FDC730(&v55, v54);
  v15 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v15;
  sub_2140524DC(v54, 0xD000000000000015, 0x80000002147A6270, isUniquelyReferenced_nonNull_native);
  if (v6 && (v17 = v57, v18 = MEMORY[0x277D837D0], v56 = MEMORY[0x277D837D0], *&v55 = v5, *(&v55 + 1) = v6, sub_213FDC730(&v55, v54), , v19 = swift_isUniquelyReferenced_nonNull_native(), v53 = v17, sub_2140524DC(v54, 115, 0xE100000000000000, v19), v20 = v53, v57 = v53, v8) && (v56 = v18, *&v55 = v7, *(&v55 + 1) = v8, sub_213FDC730(&v55, v54), , v21 = swift_isUniquelyReferenced_nonNull_native(), v53 = v20, sub_2140524DC(v54, 0xD000000000000012, 0x80000002147A6290, v21), v9) && ((v22 = v53, v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0), *&v55 = v9, sub_213FDC730(&v55, v54), , v23 = swift_isUniquelyReferenced_nonNull_native(), v53 = v22, sub_2140524DC(v54, 0xD000000000000017, 0x80000002147A62B0, v23), v24 = v53, v56 = MEMORY[0x277D84D38], *&v55 = v10, sub_213FDC730(&v55, v54), v25 = swift_isUniquelyReferenced_nonNull_native(), v53 = v24, sub_2140524DC(v54, 0xD000000000000012, 0x80000002147A62F0, v25), v26 = v53, v27 = MEMORY[0x277D839B0], v56 = MEMORY[0x277D839B0], LOBYTE(v55) = v48, sub_213FDC730(&v55, v54), v28 = swift_isUniquelyReferenced_nonNull_native(), v53 = v26, sub_2140524DC(v54, 0xD000000000000010, 0x80000002147A62D0, v28), v29 = v53, v57 = v53, v7 = "uri-to-participant-id-key", v12 != 2) ? (v56 = v27, LOBYTE(v55) = v12 & 1, sub_213FDC730(&v55, v54), v31 = swift_isUniquelyReferenced_nonNull_native(), v53 = v29, v30 = sub_2140524DC(v54, 0xD000000000000011, 0x80000002147A6370, v31), v57 = v53) : (sub_2144AEF6C(0xD000000000000011, 0x80000002147A6370, &v55), v30 = sub_213FB2DF4(&v55, &qword_27C913170, &qword_2146EAB20)), (v49 & 1) == 0))
  {
    v32 = v51 | (v52 << 32);
    if ((v50 & 1) == 0)
    {
      v56 = MEMORY[0x277D839F8];
      *&v55 = v13;
      sub_213FDC730(&v55, v54);
      v33 = v57;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v33;
      v30 = sub_2140524DC(v54, 7627363, 0xE300000000000000, v34);
      v57 = v53;
    }

    if ((v32 & 0xFF0000000000) == 0x50000000000)
    {
      return v57;
    }

    else
    {
      MEMORY[0x28223BE20](v30);
      sub_214648CC4(&qword_27C903BF0, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto, byte_2146E95C8);
      v36 = v44;
      sub_2146D9018();
      v37 = v36;
      v38 = v45;
      sub_2146D8E28();
      v39 = MEMORY[0x277CC9318];
      sub_2146D8FE8();
      (*(v46 + 8))(v38, v47);
      sub_214648D0C(v37, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
      v56 = v39;
      sub_213FDC730(&v55, v54);
      v40 = v57;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      v53 = v40;
      sub_2140524DC(v54, 0xD000000000000017, 0x80000002147A6330, v41);
      return v53;
    }
  }

  else
  {
    sub_2146DA018();
    __break(1u);
    (*(v46 + 8))(v12, v47);
    sub_214648D0C(v7, type metadata accessor for CSDMConversationParticipantDidLeaveContextProto);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_214646870(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = sub_2146D8E38();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for CSDMConversationParticipantDidJoinContextProto(0);
  MEMORY[0x28223BE20](v44);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v8 = *(v2 + 3);
  v7 = *(v2 + 4);
  v9 = *(v2 + 8);
  v10 = *(v2 + 12);
  v11 = *(v2 + 13);
  v49 = v2[113];
  v12 = *(v2 + 31);
  v50 = *(v2 + 15);
  v51 = v12;
  memcpy(v59, v2 + 264, 0xB81uLL);
  v13 = "ession+Bridging.swift";
  *&v58[24] = MEMORY[0x277D83B88];
  *v58 = v6;
  sub_213FDC730(v58, v57);
  v14 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v14;
  sub_2140524DC(v57, 0xD000000000000015, 0x80000002147A6270, isUniquelyReferenced_nonNull_native);
  if (!v7)
  {
    goto LABEL_10;
  }

  v16 = v56[0];
  v13 = MEMORY[0x277D837D0];
  *&v58[24] = MEMORY[0x277D837D0];
  *v58 = v8;
  *&v58[8] = v7;
  sub_213FDC730(v58, v57);

  v17 = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v16;
  sub_2140524DC(v57, 0xD000000000000012, 0x80000002147A6290, v17);
  if (!v9)
  {
    goto LABEL_10;
  }

  v18 = v56[0];
  *&v58[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *v58 = v9;
  sub_213FDC730(v58, v57);

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v18;
  sub_2140524DC(v57, 0xD000000000000017, 0x80000002147A62B0, v19);
  if (!v11)
  {
    goto LABEL_10;
  }

  v20 = v56[0];
  *&v58[24] = v13;
  *v58 = v10;
  *&v58[8] = v11;
  sub_213FDC730(v58, v57);

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v20;
  sub_2140524DC(v57, 115, 0xE100000000000000, v21);
  v22 = v56[0];
  *&v58[24] = MEMORY[0x277D839B0];
  v58[0] = v49;
  sub_213FDC730(v58, v57);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v22;
  sub_2140524DC(v57, 0xD000000000000010, 0x80000002147A62D0, v23);
  v24 = v56[0];
  *&v58[24] = MEMORY[0x277D84D38];
  *v58 = v50;
  sub_213FDC730(v58, v57);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v24;
  sub_2140524DC(v57, 0xD000000000000012, 0x80000002147A62F0, v25);
  v26 = v56[0];
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();
  v27 = *(v2 + 13);
  *&v58[64] = *(v2 + 12);
  *&v58[80] = v27;
  *&v58[96] = *(v2 + 28);
  v28 = *(v2 + 9);
  *v58 = *(v2 + 8);
  *&v58[16] = v28;
  v29 = *(v2 + 11);
  *&v58[32] = *(v2 + 10);
  *&v58[48] = v29;
  sub_2146479C8();
  v30 = sub_2146D87A8();
  v32 = v31;

  *&v58[24] = MEMORY[0x277CC9318];
  v13 = "participant-id-key";
  *v58 = v30;
  *&v58[8] = v32;
  sub_213FDC730(v58, v57);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v56[0] = v26;
  sub_2140524DC(v57, 0xD000000000000014, 0x80000002147A6310, v33);
  v34 = v56[0];
  v35 = v51;
  if (v51)
  {
    if (v51 != 1)
    {
      *&v58[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907260, &qword_2146F4990);
      *v58 = v35;
      sub_213FDC730(v58, v57);

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v56[0] = v34;
      sub_2140524DC(v57, 0xD000000000000019, 0x80000002147A6350, v36);
      v34 = v56[0];
      goto LABEL_7;
    }

LABEL_10:
    sub_2146DA018();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    (*(v47 + 8))(v13, v48);
    sub_214648D0C(v10, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

LABEL_7:
  memcpy(v57, v59, 0xB81uLL);
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(v57) != 1)
  {
    v37 = memcpy(v58, v57, sizeof(v58));
    MEMORY[0x28223BE20](v37);
    memcpy(v56, v59, 0xB81uLL);
    sub_2142E8A8C(v56, &v54);
    sub_214648CC4(&qword_27C903C08, type metadata accessor for CSDMConversationParticipantDidJoinContextProto, aQd_0);
    v38 = v45;
    sub_2146D9018();
    v39 = v46;
    sub_2146D8E28();
    v40 = MEMORY[0x277CC9318];
    sub_2146D8FE8();
    (*(v47 + 8))(v39, v48);
    sub_214648D0C(v38, type metadata accessor for CSDMConversationParticipantDidJoinContextProto);
    v55 = v40;
    v54 = v53[0];
    sub_213FDC730(&v54, v53);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v52 = v34;
    sub_2140524DC(v53, 0xD000000000000017, 0x80000002147A6330, v41);
    sub_213FB2DF4(v59, &qword_27C907278, &qword_2146F49A0);
    return v52;
  }

  return v34;
}

uint64_t sub_214647040()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  v7 = *(v0 + 105);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v18 = MEMORY[0x277D837D0];
  *&v17 = v2;
  *(&v17 + 1) = v1;
  sub_213FDC730(&v17, v16);

  v10 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 0xD000000000000012, 0x80000002147A6290, isUniquelyReferenced_nonNull_native);
  if (v4 >> 60 == 15)
  {
    goto LABEL_8;
  }

  v18 = MEMORY[0x277CC9318];
  *&v17 = v3;
  *(&v17 + 1) = v4;
  sub_213FDC730(&v17, v16);
  sub_21402D9F8(v3, v4);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v16, 0x6B706D7472, 0xE500000000000000, v12);
  if (v7)
  {
    goto LABEL_8;
  }

  if ((v6 & 1) == 0)
  {
    v18 = MEMORY[0x277D83B88];
    *&v17 = v5;
    sub_213FDC730(&v17, v16);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 0x6D77706D7472, 0xE600000000000000, v13);
  }

  if (!v8)
  {
LABEL_8:
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v18 = MEMORY[0x277D837D0];
    *&v17 = v9;
    *(&v17 + 1) = v8;
    sub_213FDC730(&v17, v16);

    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v16, 115, 0xE100000000000000, v14);
    return v10;
  }

  return result;
}

uint64_t sub_21464724C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 96);
  v6 = *(v0 + 128);
  v7 = *(v0 + 256);
  v78 = *(v0 + 240);
  v79[0] = v7;
  *(v79 + 15) = *(v0 + 271);
  v8 = *(v0 + 192);
  v74 = *(v0 + 176);
  v75 = v8;
  v9 = *(v0 + 224);
  v76 = *(v0 + 208);
  v77 = v9;
  v10 = *(v0 + 160);
  v72 = *(v0 + 144);
  v73 = v10;
  v11 = *(v0 + 392);
  v86 = *(v0 + 376);
  v87[0] = v11;
  *(v87 + 15) = *(v0 + 407);
  v12 = *(v0 + 328);
  v82 = *(v0 + 312);
  v83 = v12;
  v13 = *(v0 + 360);
  v84 = *(v0 + 344);
  v85 = v13;
  v14 = *(v0 + 296);
  v80 = *(v0 + 280);
  v81 = v14;
  if (!v2)
  {
    goto LABEL_18;
  }

  v15 = MEMORY[0x277D837D0];
  *(&v63 + 1) = MEMORY[0x277D837D0];
  *&v62 = v1;
  *(&v62 + 1) = v2;
  sub_213FDC730(&v62, &v54);

  v16 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v16;
  sub_2140524DC(&v54, 0xD000000000000012, 0x80000002147A6290, isUniquelyReferenced_nonNull_native);
  if (!v3)
  {
    goto LABEL_18;
  }

  *(&v63 + 1) = v15;
  *&v62 = v4;
  *(&v62 + 1) = v3;
  sub_213FDC730(&v62, &v54);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(&v54, 115, 0xE100000000000000, v18);
  v19 = v46;
  if (v5)
  {
    if (v5 == 1)
    {
LABEL_18:
      result = sub_2146DA018();
      __break(1u);
      return result;
    }

    v20 = *(v5 + 16);
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      *&v54 = MEMORY[0x277D84F90];

      sub_2140A0040(0, v20, 0);
      v21 = v54;
      v22 = v5 + 32;
      do
      {
        v67 = *(v22 + 80);
        v68 = *(v22 + 96);
        v69[0] = *(v22 + 112);
        *(v69 + 15) = *(v22 + 127);
        v63 = *(v22 + 16);
        v64 = *(v22 + 32);
        v65 = *(v22 + 48);
        v66 = *(v22 + 64);
        v62 = *v22;
        v23 = sub_2146485D4();
        *&v54 = v21;
        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        if (v25 >= v24 >> 1)
        {
          v26 = v23;
          sub_2140A0040((v24 > 1), v25 + 1, 1);
          v23 = v26;
          v21 = v54;
        }

        *(v21 + 16) = v25 + 1;
        *(v21 + 8 * v25 + 32) = v23;
        v22 += 136;
        --v20;
      }

      while (v20);
      sub_21403261C(v5);
    }

    *(&v63 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9050E8, &qword_2147726C0);
    *&v62 = v21;
    sub_213FDC730(&v62, &v54);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = v19;
    sub_2140524DC(&v54, 0x6D6B6D6C6C617472, 0xE800000000000000, v27);
  }

  if (!v6)
  {
    goto LABEL_18;
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  *&v70 = v6;
  sub_213FDC730(&v70, &v62);

  v28 = swift_isUniquelyReferenced_nonNull_native();
  *&v54 = v19;
  sub_2140524DC(&v62, 0x6D6B6D6C6C617472, 0xEB00000000697275, v28);
  v29 = v54;
  v68 = v78;
  v69[0] = v79[0];
  *(v69 + 15) = *(v79 + 15);
  v64 = v74;
  v65 = v75;
  v66 = v76;
  v67 = v77;
  v62 = v72;
  v63 = v73;
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v62) != 1)
  {
    v52 = v68;
    v53[0] = v69[0];
    *(v53 + 15) = *(v69 + 15);
    v48 = v64;
    v49 = v65;
    v50 = v66;
    v51 = v67;
    v46 = v62;
    v47 = v63;
    v60 = v78;
    v61[0] = v79[0];
    *(v61 + 15) = *(v79 + 15);
    v56 = v74;
    v57 = v75;
    v58 = v76;
    v59 = v77;
    v54 = v72;
    v55 = v73;
    sub_2142F30BC(&v54, &v38);
    v30 = sub_2146485D4();
    *(&v39 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v38 = v30;
    sub_213FDC730(&v38, &v36);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&v35[0] = v29;
    sub_2140524DC(&v36, 0x6D6B6D7472, 0xE500000000000000, v31);
    sub_213FB2DF4(&v72, &qword_27C907388, &qword_2147519C0);
  }

  v60 = v86;
  v61[0] = v87[0];
  *(v61 + 15) = *(v87 + 15);
  v56 = v82;
  v57 = v83;
  v58 = v84;
  v59 = v85;
  v54 = v80;
  v55 = v81;
  if (get_enum_tag_for_layout_string_9BlastDoor23CSDMConversationMessageVSg_0(&v54) != 1)
  {
    v44 = v60;
    v45[0] = v61[0];
    *(v45 + 15) = *(v61 + 15);
    v40 = v56;
    v41 = v57;
    v42 = v58;
    v43 = v59;
    v38 = v54;
    v39 = v55;
    v52 = v86;
    v53[0] = v87[0];
    *(v53 + 15) = *(v87 + 15);
    v48 = v82;
    v49 = v83;
    v50 = v84;
    v51 = v85;
    v46 = v80;
    v47 = v81;
    sub_2142F30BC(&v46, &v36);
    v32 = sub_2146485D4();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    *&v36 = v32;
    sub_213FDC730(&v36, v35);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v35, 0x6D6B737472, 0xE500000000000000, v33);
    sub_213FB2DF4(&v80, &qword_27C907388, &qword_2147519C0);
  }

  return v29;
}

uint64_t sub_214647800()
{
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();
  sub_2146479C8();
  v0 = sub_2146D87A8();
  v2 = v1;

  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

uint64_t sub_2146478E4()
{
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();
  sub_2146479C8();
  v0 = sub_2146D87A8();
  v2 = v1;

  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  return v3;
}

unint64_t sub_2146479C8()
{
  result = qword_27C917620;
  if (!qword_27C917620)
  {
    result = swift_getWitnessTable(byte_214772518, &type metadata for GroupSessionParticipant, v0, v1);
    atomic_store(result, &qword_27C917620);
  }

  return result;
}

uint64_t sub_214647A1C(uint64_t a1)
{
  sub_2146457E0(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214647A70(uint64_t a1)
{
  sub_2146457E0(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214647AC4()
{
  sub_2146461DC();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647B18()
{
  sub_2146461DC();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647B6C(uint64_t a1)
{
  sub_2146485D4();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t KeyMaterial.bridgedToObjectiveC.getter(uint64_t a1)
{
  sub_2146485D4();
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214647C14()
{
  sub_21464724C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647C68()
{
  sub_21464724C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647CBC()
{
  sub_214647040();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647D10()
{
  sub_214647040();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214647D64(uint64_t a1)
{
  sub_214646870(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214647DB8(uint64_t a1)
{
  sub_214646870(a1);
  v1 = sub_2146D9468();

  return v1;
}

uint64_t sub_214647E18()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214647EF4(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_214647FBC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_214648094@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214648C78(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2146480C4(unint64_t *a1@<X8>)
{
  v2 = 7221858;
  v3 = *v1;
  v4 = 0xE300000000000000;
  if (v3 != 3)
  {
    v2 = 7811682;
    v4 = 0xE300000000000000;
  }

  if (v3 == 2)
  {
    v2 = 0xD000000000000023;
    v4 = 0x80000002147884A0;
  }

  v5 = 0xD00000000000001BLL;
  v6 = 0x8000000214788450;
  if (*v1)
  {
    v5 = 0xD000000000000020;
    v6 = 0x8000000214788470;
  }

  if (*v1 > 1u)
  {
    v7 = v4;
  }

  else
  {
    v2 = v5;
    v7 = v6;
  }

  *a1 = v2;
  a1[1] = v7;
}

unint64_t sub_21464815C()
{
  v1 = 7221858;
  v2 = *v0;
  if (v2 != 3)
  {
    v1 = 7811682;
  }

  if (v2 == 2)
  {
    v1 = 0xD000000000000023;
  }

  v3 = 0xD00000000000001BLL;
  if (*v0)
  {
    v3 = 0xD000000000000020;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2146481F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214648C78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214648218(uint64_t a1)
{
  v2 = sub_214648AFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214648254(uint64_t a1)
{
  v2 = sub_214648AFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214648290(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917628, &qword_214772510);
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v18 = v1[6];
  v19 = v8;
  v9 = v1[7];
  v16 = v1[8];
  v17 = v9;
  v11 = v1[9];
  v10 = v1[10];
  v12 = v1[12];
  v21 = v1[11];
  v22 = v10;
  v20 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214648AFC();
  sub_2146DAA28();
  if (v7 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    LOBYTE(v25) = 0;

    v13 = v23;
    sub_2146DA2B8();
    if (v13)
    {
      (*(v24 + 8))(v5, v3);
      return sub_213FDC6D0(v6, v7);
    }

    else
    {
      sub_213FDC6D0(v6, v7);
      v25 = v11;
      v26 = v22;
      v27 = 3;
      sub_213FDCA18(v11, v22);
      sub_214061684();
      sub_2146DA308();
      sub_213FDC6BC(v25, v26);
      v25 = v21;
      v26 = v20;
      v27 = 4;
      sub_213FDCA18(v21, v20);
      sub_2146DA308();
      sub_213FDC6BC(v25, v26);
      v25 = v19;
      v26 = v18;
      v27 = 1;
      sub_213FDCA18(v19, v18);
      sub_2146DA308();
      sub_213FDC6BC(v25, v26);
      v25 = v17;
      v26 = v16;
      v27 = 2;
      sub_213FDCA18(v17, v16);
      sub_2146DA308();
      sub_213FDC6BC(v25, v26);
      return (*(v24 + 8))(v5, v3);
    }
  }

  return result;
}

uint64_t sub_2146485D4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 84);
  v36 = *(v0 + 113);
  v37 = *(v0 + 112);
  v33 = *(v0 + 104);
  v34 = *(v0 + 120);
  v35 = *(v0 + 129);
  v38 = *(v0 + 128);
  v39 = *(v0 + 130);
  if (*v0)
  {
    if (v2 >> 60 != 15)
    {
      v9 = MEMORY[0x277CC9318];
      v43 = MEMORY[0x277CC9318];
      *&v42 = v1;
      *(&v42 + 1) = v2;
      sub_213FDC730(&v42, v41);
      sub_21402D9F8(v1, v2);
      v10 = MEMORY[0x277D84F98];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v10;
      sub_2140524DC(v41, 6908787, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      v12 = v44;
      v43 = v9;
      *&v42 = v4;
      *(&v42 + 1) = v3;
      sub_213FDC730(&v42, v41);
      sub_21402D9F8(v4, v3);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v44 = v12;
      sub_2140524DC(v41, 7170931, 0xE300000000000000, v13);
      v14 = v44;
      v43 = v9;
      *&v42 = v6;
      *(&v42 + 1) = v5;
      sub_213FDC730(&v42, v41);
      sub_21402D9F8(v6, v5);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      sub_2140524DC(v41, 7564147, 0xE300000000000000, v15);
      v44 = v14;
      if (v8)
      {
        sub_2144AEF6C(1667722099, 0xE400000000000000, &v42);
        v16 = &v42;
LABEL_8:
        sub_213FB2DF4(v16, &qword_27C913170, &qword_2146EAB20);
        goto LABEL_12;
      }

      v43 = MEMORY[0x277D84CC0];
      LODWORD(v42) = v7;
      sub_213FDC730(&v42, v41);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v14;
      v25 = 1667722099;
      goto LABEL_11;
    }

LABEL_21:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

  if (v2 >> 60 == 15)
  {
    goto LABEL_21;
  }

  v17 = MEMORY[0x277CC9318];
  v43 = MEMORY[0x277CC9318];
  *&v42 = v1;
  *(&v42 + 1) = v2;
  sub_213FDC730(&v42, v41);
  sub_21402D9F8(v1, v2);
  v18 = MEMORY[0x277D84F98];
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v18;
  sub_2140524DC(v41, 6908781, 0xE300000000000000, v19);
  v20 = v44;
  v43 = v17;
  *&v42 = v4;
  *(&v42 + 1) = v3;
  sub_213FDC730(&v42, v41);
  sub_21402D9F8(v4, v3);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v20;
  sub_2140524DC(v41, 7170925, 0xE300000000000000, v21);
  v22 = v44;
  v43 = v17;
  *&v42 = v6;
  *(&v42 + 1) = v5;
  sub_213FDC730(&v42, v41);
  sub_21402D9F8(v6, v5);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v41, 7564141, 0xE300000000000000, v23);
  v44 = v22;
  if (v8)
  {
    sub_2144AEF6C(1667722093, 0xE400000000000000, v41);
    v16 = v41;
    goto LABEL_8;
  }

  v43 = MEMORY[0x277D84CC0];
  LODWORD(v42) = v7;
  sub_213FDC730(&v42, v41);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v40 = v22;
  v25 = 1667722093;
LABEL_11:
  sub_2140524DC(v41, v25, 0xE400000000000000, v24);
  v44 = v40;
LABEL_12:
  if (v36)
  {
    goto LABEL_21;
  }

  if (v37)
  {
    if (v38)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v43 = MEMORY[0x277D83B88];
    *&v42 = v33;
    sub_213FDC730(&v42, v41);
    v27 = v44;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v41, 0x6D77706D7472, 0xE600000000000000, v28);
    v44 = v27;
    if (v38)
    {
LABEL_15:
      if (v39)
      {
        return v44;
      }

      goto LABEL_19;
    }
  }

  v43 = MEMORY[0x277D84D38];
  *&v42 = v34;
  sub_213FDC730(&v42, v41);
  v29 = v44;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v41, 0x7069636974726170, 0xED00004449746E61, v30);
  v44 = v29;
  if (v39)
  {
    return v44;
  }

LABEL_19:
  v43 = MEMORY[0x277D84B78];
  LOBYTE(v42) = v35;
  sub_213FDC730(&v42, v41);
  v31 = v44;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v41, 0x6C696B6D73, 0xE500000000000000, v32);
  return v31;
}

unint64_t sub_214648AFC()
{
  result = qword_27C917630;
  if (!qword_27C917630)
  {
    result = swift_getWitnessTable(aO_6, &_s21EncodingConfigurationV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_27C917630);
  }

  return result;
}

unint64_t sub_214648B74()
{
  result = qword_27C917638;
  if (!qword_27C917638)
  {
    result = swift_getWitnessTable(byte_21477263C, &_s21EncodingConfigurationV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_27C917638);
  }

  return result;
}

unint64_t sub_214648BCC()
{
  result = qword_27C917640;
  if (!qword_27C917640)
  {
    result = swift_getWitnessTable(asc_214772574, &_s21EncodingConfigurationV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_27C917640);
  }

  return result;
}

unint64_t sub_214648C24()
{
  result = qword_27C917648;
  if (!qword_27C917648)
  {
    result = swift_getWitnessTable(asc_21477259C, &_s21EncodingConfigurationV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_27C917648);
  }

  return result;
}

unint64_t sub_214648C78(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214648CC4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214648D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PreviewImage.image.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_214648EBC()
{
  v1 = *v0;
  v2 = 0x656C616373;
  v3 = 0x7865646E69;
  v4 = 0x746E756F4378616DLL;
  if (v1 != 3)
  {
    v4 = 0x49696A6F6D457369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214648F5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21464AD84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214648F84(uint64_t a1)
{
  v2 = sub_214649208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214648FC0(uint64_t a1)
{
  v2 = sub_214649208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreviewImage.Constraints.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917650, &qword_2147726C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  v8 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v8;
  v10[1] = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214649208();
  sub_2146DAA28();
  v17 = 0;
  sub_2146DA368();
  if (!v2)
  {
    v16 = 1;
    sub_2146DA348();
    v15 = 2;
    sub_2146DA368();
    v14 = 3;
    sub_2146DA368();
    v13 = 4;
    sub_2146DA338();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_214649208()
{
  result = qword_280B32358;
  if (!qword_280B32358)
  {
    result = swift_getWitnessTable(asc_214772C58, &type metadata for PreviewImage.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B32358);
  }

  return result;
}

uint64_t PreviewImage.Constraints.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917658, &qword_2147726D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214649208();
  sub_2146DAA08();
  if (!v2)
  {
    v23 = 0;
    v9 = sub_2146DA1A8();
    v22 = 1;
    sub_2146DA188();
    v11 = v10;
    v21 = 2;
    v12 = sub_2146DA1A8();
    v20 = 3;
    v18 = sub_2146DA1A8();
    v19 = 4;
    v17 = sub_2146DA178();
    (*(v6 + 8))(v8, v5);
    v14 = v17 & 1;
    *a2 = v9;
    *(a2 + 8) = v11;
    v15 = v18;
    *(a2 + 16) = v12;
    *(a2 + 24) = v15;
    *(a2 + 32) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 PreviewImage.image.setter(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void (*PreviewImage.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *PreviewImage.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

void (*PreviewImage.$image.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

uint64_t PreviewImage.frameDuration.setter(uint64_t result, char a2)
{
  *(v2 + 448) = result;
  *(v2 + 456) = a2 & 1;
  return result;
}

uint64_t PreviewImage.utTypeString.getter()
{
  v1 = *(v0 + 464);

  return v1;
}

void PreviewImage.utTypeString.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 464) = a1;
  *(v2 + 472) = a2;
}

uint64_t sub_2146498E4()
{
  v1 = *v0;
  v2 = 0x6567616D69;
  v3 = 0x6B736F6E6F4D7369;
  if (v1 != 6)
  {
    v3 = 0x6E656D6E67696C61;
  }

  v4 = 0x4572656B63697473;
  if (v1 != 4)
  {
    v4 = 0x7453657079547475;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x727544656D617266;
  if (v1 != 2)
  {
    v5 = 0x6E65657263537369;
  }

  if (*v0)
  {
    v2 = 0x756F43656D617266;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_214649A20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21464AAC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214649A48(uint64_t a1)
{
  v2 = sub_214649DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214649A84(uint64_t a1)
{
  v2 = sub_214649DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreviewImage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917660, &qword_2147726D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214649DEC();
  sub_2146DAA28();
  LOBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
  sub_2140A4DD4(qword_280B2E688, byte_214738EE8);
  sub_2146DA388();
  if (!v2)
  {
    LOBYTE(v10) = 1;
    sub_2146DA368();
    LOBYTE(v10) = 2;
    sub_2146DA2D8();
    LOBYTE(v10) = 3;
    sub_2146DA338();
    LOBYTE(v10) = *(v3 + 458);
    v11 = 4;
    sub_214097618();
    sub_2146DA388();
    LOBYTE(v10) = 5;
    sub_2146DA2B8();
    LOBYTE(v10) = 6;
    sub_2146DA338();
    v10 = *(v3 + 488);
    v11 = 7;
    type metadata accessor for CGSize(0);
    sub_21464A290(&qword_280B2E368, MEMORY[0x277CBF288]);
    sub_2146DA388();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_214649DEC()
{
  result = qword_280B32370[0];
  if (!qword_280B32370[0])
  {
    result = swift_getWitnessTable(asc_214772C08, &type metadata for PreviewImage.CodingKeys, v0, v1);
    atomic_store(result, qword_280B32370);
  }

  return result;
}

void PreviewImage.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C917668, &qword_2147726E0);
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v12 - v5;
  LOWORD(v37[0]) = 0;
  sub_2140615D0(v37);
  v28 = v37[9];
  v29 = v37[10];
  v30 = v37[11];
  v24 = v37[5];
  v25 = v37[6];
  v26 = v37[7];
  v27 = v37[8];
  v20 = v37[1];
  v21 = v37[2];
  v22 = v37[3];
  v23 = v37[4];
  v19 = v37[0];
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214649DEC();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_213FB2DF4(v17, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    v15 = 0;
    sub_2140A4DD4(&qword_280B30CB8, aI_83);
    v8 = v38;
    sub_2146DA1C8();
    sub_2140A4E24(v16, v17);
    LOBYTE(v16[0]) = 1;
    v31 = sub_2146DA1A8();
    LOBYTE(v16[0]) = 2;
    v32 = sub_2146DA118();
    v13 = v33;
    v33[0] = v9 & 1;
    LOBYTE(v16[0]) = 3;
    v33[1] = sub_2146DA178() & 1;
    v15 = 4;
    sub_2140975C4();
    sub_2146DA1C8();
    v33[2] = v16[0];
    LOBYTE(v16[0]) = 5;
    v34 = sub_2146DA0F8();
    v35 = v10;
    LOBYTE(v16[0]) = 6;
    v36 = sub_2146DA178() & 1;
    type metadata accessor for CGSize(0);
    v15 = 7;
    sub_21464A290(&qword_280B30B88, MEMORY[0x277CBF2A0]);
    sub_2146DA1C8();
    (*(v7 + 8))(v6, v8);
    v11 = v14;
    *(v13 + 2) = v16[0];
    sub_214592A08(v17, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_214592A64(v17);
  }
}

uint64_t sub_21464A290(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

__n128 PreviewImage.init(image:frameCount:frameDuration:isScreenshot:stickerEffect:utTypeString:isMonoskiAsset:alignmentInset:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char a12)
{
  v22 = *a6;
  LOWORD(v40[0]) = 0;
  sub_2140615D0(v40);
  v23 = v40[8];
  v24 = v40[10];
  v25 = v40[11];
  *(a9 + 392) = v40[9];
  *(a9 + 408) = v24;
  *(a9 + 424) = v25;
  v26 = v40[4];
  v27 = v40[6];
  v28 = v40[7];
  *(a9 + 328) = v40[5];
  *(a9 + 344) = v27;
  *(a9 + 360) = v28;
  *(a9 + 376) = v23;
  v29 = v40[1];
  *(a9 + 248) = v40[0];
  v30 = v40[2];
  v31 = v40[3];
  *(a9 + 264) = v29;
  *(a9 + 280) = v30;
  *(a9 + 296) = v31;
  *(a9 + 312) = v26;
  *(a9 + 240) = 0;
  *(a9 + 208) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 192) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0u;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *a9 = 0u;
  *(a9 + 440) = a2;
  *(a9 + 448) = a3;
  *(a9 + 456) = a4 & 1;
  *(a9 + 457) = a5;
  *(a9 + 464) = a7;
  *(a9 + 472) = a8;
  *(a9 + 458) = v22;
  *(a9 + 480) = a12;
  *(a9 + 488) = a10;
  *(a9 + 496) = a11;
  sub_213FB2DF4(a9, &qword_27C904858, &qword_214736F00);
  v32 = *(a1 + 208);
  *(a9 + 192) = *(a1 + 192);
  *(a9 + 208) = v32;
  *(a9 + 224) = *(a1 + 224);
  *(a9 + 240) = *(a1 + 240);
  v33 = *(a1 + 144);
  *(a9 + 128) = *(a1 + 128);
  *(a9 + 144) = v33;
  v34 = *(a1 + 176);
  *(a9 + 160) = *(a1 + 160);
  *(a9 + 176) = v34;
  v35 = *(a1 + 80);
  *(a9 + 64) = *(a1 + 64);
  *(a9 + 80) = v35;
  v36 = *(a1 + 112);
  *(a9 + 96) = *(a1 + 96);
  *(a9 + 112) = v36;
  v37 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v37;
  result = *(a1 + 32);
  v39 = *(a1 + 48);
  *(a9 + 32) = result;
  *(a9 + 48) = v39;
  return result;
}

void __swiftcall PreviewImage.Constraints.init(maxPixelDimension:scaleFactor:index:maxCount:isEmojiImage:)(BlastDoor::PreviewImage::Constraints *__return_ptr retstr, Swift::Int maxPixelDimension, Swift::Double scaleFactor, Swift::Int index, Swift::Int maxCount, Swift::Bool isEmojiImage)
{
  retstr->maxPixelDimension = maxPixelDimension;
  retstr->scale = scaleFactor;
  retstr->index = index;
  retstr->maxCount = maxCount;
  retstr->isEmojiImage = isEmojiImage;
}

unint64_t sub_21464A49C()
{
  result = qword_280B32338;
  if (!qword_280B32338)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewImage.Constraints, &type metadata for PreviewImage.Constraints, v0, v1);
    atomic_store(result, &qword_280B32338);
  }

  return result;
}

unint64_t sub_21464A4F4()
{
  result = qword_280B32340;
  if (!qword_280B32340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewImage.Constraints, &type metadata for PreviewImage.Constraints, v0, v1);
    atomic_store(result, &qword_280B32340);
  }

  return result;
}

unint64_t sub_21464A548(uint64_t a1)
{
  result = sub_21464A570();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21464A570()
{
  result = qword_280B32320;
  if (!qword_280B32320)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewImage, &type metadata for PreviewImage, v0, v1);
    atomic_store(result, &qword_280B32320);
  }

  return result;
}

unint64_t sub_21464A5C4(uint64_t a1)
{
  *(a1 + 8) = sub_21464A5F4();
  result = sub_21464A648();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21464A5F4()
{
  result = qword_280B32328;
  if (!qword_280B32328)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewImage, &type metadata for PreviewImage, v0, v1);
    atomic_store(result, &qword_280B32328);
  }

  return result;
}

unint64_t sub_21464A648()
{
  result = qword_280B32330;
  if (!qword_280B32330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PreviewImage, &type metadata for PreviewImage, v0, v1);
    atomic_store(result, &qword_280B32330);
  }

  return result;
}

uint64_t sub_21464A6A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 504))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21464A6F4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 504) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 504) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21464A7E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_21464A83C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21464A8B8()
{
  result = qword_27C917670;
  if (!qword_27C917670)
  {
    result = swift_getWitnessTable(byte_214772B28, &type metadata for PreviewImage.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917670);
  }

  return result;
}

unint64_t sub_21464A910()
{
  result = qword_27C917678;
  if (!qword_27C917678)
  {
    result = swift_getWitnessTable(byte_214772BE0, &type metadata for PreviewImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C917678);
  }

  return result;
}

unint64_t sub_21464A968()
{
  result = qword_280B32360;
  if (!qword_280B32360)
  {
    result = swift_getWitnessTable(aQ_41, &type metadata for PreviewImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B32360);
  }

  return result;
}

unint64_t sub_21464A9C0()
{
  result = qword_280B32368;
  if (!qword_280B32368)
  {
    result = swift_getWitnessTable(aA_49, &type metadata for PreviewImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B32368);
  }

  return result;
}

unint64_t sub_21464AA18()
{
  result = qword_280B32348;
  if (!qword_280B32348)
  {
    result = swift_getWitnessTable(asc_214772A98, &type metadata for PreviewImage.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B32348);
  }

  return result;
}

unint64_t sub_21464AA70()
{
  result = qword_280B32350;
  if (!qword_280B32350)
  {
    result = swift_getWitnessTable(byte_214772AC0, &type metadata for PreviewImage.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B32350);
  }

  return result;
}

uint64_t sub_21464AAC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F43656D617266 && a2 == 0xEA0000000000746ELL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727544656D617266 && a2 == 0xED00006E6F697461 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E65657263537369 && a2 == 0xEC000000746F6873 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4572656B63697473 && a2 == 0xED00007463656666 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7453657079547475 && a2 == 0xEC000000676E6972 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6B736F6E6F4D7369 && a2 == 0xEE00746573734169 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xEE007465736E4974)
  {

    return 7;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_21464AD84(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000021478C740 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x49696A6F6D457369 && a2 == 0xEC0000006567616DLL)
  {

    return 4;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_21464AF3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v5 = result;
    [result writeUint32:v1 forTag:1];
    if ((v3 & 1) == 0)
    {
      [v5 writeUint32:v2 forTag:2];
    }

    result = [v5 immutableData];
    if (result)
    {
      v6 = result;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21464B03C(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

id sub_21464B06C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  result = [objc_allocWithZone(MEMORY[0x277D43178]) init];
  if (result)
  {
    v5 = result;
    [result writeUint32:v1 forTag:1];
    if ((v3 & 1) == 0)
    {
      [v5 writeUint32:v2 forTag:2];
    }

    result = [v5 immutableData];
    if (result)
    {
      v6 = result;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_21464B11C(uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = objc_allocWithZone(MEMORY[0x277D43170]);
  v5 = sub_2146D8A38();
  v6 = [v4 initWithData_];

  v7 = [v6 position];
  if (v7 >= [v6 length])
  {
LABEL_47:
    v33 = 1;
LABEL_48:
    sub_2140861C4();
    swift_allocError();
    *v34 = v33;
    swift_willThrow();
  }

  else
  {
    v35 = a3;
    LODWORD(v8) = 0;
    v36 = 0;
    v9 = 1;
    v10 = 1;
    do
    {
      if ([v6 hasError])
      {
        break;
      }

      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v37 = 0;
        v15 = [v6 position] + 1;
        if (v15 >= [v6 position] && (v16 = objc_msgSend(v6, "position") + 1, v16 <= objc_msgSend(v6, "length")))
        {
          v17 = [v6 data];
          [v17 getBytes:&v37 range:{objc_msgSend(v6, "position"), 1}];

          [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
        }

        else
        {
          [v6 _setError];
        }

        v14 |= (v37 & 0x7F) << v12;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v12 += 7;
        if (v13++ >= 9)
        {
          v19 = 0;
          goto LABEL_18;
        }
      }

      if ([v6 hasError])
      {
        v19 = 0;
      }

      else
      {
        v19 = v14;
      }

LABEL_18:
      if ([v6 hasError])
      {
        v33 = 0;
        goto LABEL_48;
      }

      if ((v19 >> 3) == 1)
      {
        v27 = 0;
        v28 = 0;
        v8 = 0;
        while (1)
        {
          v38 = 0;
          v29 = [v6 position] + 1;
          if (v29 >= [v6 position] && (v30 = objc_msgSend(v6, "position") + 1, v30 <= objc_msgSend(v6, "length")))
          {
            v31 = [v6 data];
            [v31 getBytes:&v38 range:{objc_msgSend(v6, "position"), 1}];

            [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
          }

          else
          {
            [v6 _setError];
          }

          v8 |= (v38 & 0x7F) << v27;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v26 = v28++ > 8;
          if (v26)
          {
            LODWORD(v8) = 0;
            v9 = 0;
            goto LABEL_4;
          }
        }

        v9 = 0;
        if ([v6 hasError])
        {
          LODWORD(v8) = 0;
        }
      }

      else if ((v19 >> 3) == 2)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        while (1)
        {
          v39 = 0;
          v23 = [v6 position] + 1;
          if (v23 >= [v6 position] && (v24 = objc_msgSend(v6, "position") + 1, v24 <= objc_msgSend(v6, "length")))
          {
            v25 = [v6 data];
            [v25 getBytes:&v39 range:{objc_msgSend(v6, "position"), 1}];

            [v6 setPosition:{objc_msgSend(v6, "position") + 1}];
          }

          else
          {
            [v6 _setError];
          }

          v22 |= (v39 & 0x7F) << v20;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v26 = v21++ > 8;
          if (v26)
          {
            v36 = 0;
            v10 = 0;
            goto LABEL_4;
          }
        }

        v10 = 0;
        v32 = [v6 hasError] ? 0 : v22;
        v36 = v32;
      }

      else
      {
        PBReaderSkipValueWithTag();
      }

LABEL_4:
      v11 = [v6 position];
    }

    while (v11 < [v6 length]);
    if (v9)
    {
      goto LABEL_47;
    }

    *v35 = v8;
    *(v35 + 4) = v36;
    *(v35 + 8) = v10 & 1;
  }
}

unint64_t sub_21464B564(uint64_t a1)
{
  *(a1 + 8) = sub_2143206C4();
  result = sub_214320520();
  *(a1 + 16) = result;
  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for WalletRemoteRegistrationRequestResultMessage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

BlastDoor::ChangeEvent::Trigger __swiftcall ChangeEvent.Trigger.init(defaultingRawValue:defaultValue:)(Swift::Int_optional defaultingRawValue, BlastDoor::ChangeEvent::Trigger defaultValue)
{
  v3 = *defaultValue;
  if (defaultingRawValue.is_nil)
  {
    value = *defaultValue;
  }

  else
  {
    value = defaultingRawValue.value;
  }

  if (value < 3)
  {
    v3 = value;
  }

  *v2 = v3;
  return defaultingRawValue.value;
}

BlastDoor::ChangeEvent::Trigger_optional __swiftcall ChangeEvent.Trigger.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t MentionEvent.mentionedPersonHandle.getter()
{
  v1 = *v0;

  return v1;
}

void MentionEvent.mentionedPersonHandle.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MentionEvent.mentionedPersonIdentity.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return sub_2142EC784(v2, v3, v4, v5, v6);
}

__n128 MentionEvent.mentionedPersonIdentity.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_2142EC728(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  return result;
}

uint64_t MentionEvent.highlightURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MentionEvent(0) + 24);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MentionEvent.highlightURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MentionEvent(0) + 24);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_21464BAF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_2146D8958();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21464BBAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_2146D8958();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t sub_21464BC74@<X0>(unint64_t result@<X0>, char a2@<W1>, char *a3@<X2>, unsigned __int8 *a4@<X8>)
{
  v4 = *a3;
  if (a2)
  {
    v5 = *a3;
  }

  else
  {
    v5 = result;
  }

  if (v5 < 5)
  {
    v4 = v5;
  }

  *a4 = v4;
  return result;
}

unint64_t sub_21464BC90@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_21464BE44()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_21464BE74(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_21464BECC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CollaborationNotice(0) + 24);

  return sub_21464BF30(v3, a1);
}

uint64_t sub_21464BF30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationHighlightEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21464BFB4(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CollaborationNotice(0) + 24);

  return sub_21464BFF8(a1, v3);
}

uint64_t sub_21464BFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollaborationHighlightEvent(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21464C0A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CollaborationNotice(0) + 28);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21464C120(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaborationNotice(0) + 28);
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_21464C1E8()
{
  result = qword_27C917680;
  if (!qword_27C917680)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChangeEvent.Trigger, &type metadata for ChangeEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C917680);
  }

  return result;
}

uint64_t sub_21464C268(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C90C870, type metadata accessor for ChangeEvent, protocol conformance descriptor for ChangeEvent);
  result = sub_21464C2EC(&qword_27C90C840, type metadata accessor for ChangeEvent, protocol conformance descriptor for ChangeEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21464C2EC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21464C334(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C90C868, type metadata accessor for MentionEvent, protocol conformance descriptor for MentionEvent);
  result = sub_21464C2EC(&qword_27C90C838, type metadata accessor for MentionEvent, protocol conformance descriptor for MentionEvent);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21464C3BC()
{
  result = qword_27C917688;
  if (!qword_27C917688)
  {
    result = swift_getWitnessTable(aEr_0, &type metadata for MembershipEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C917688);
  }

  return result;
}

uint64_t sub_21464C43C(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C90C860, type metadata accessor for MembershipEvent, aI_51);
  result = sub_21464C2EC(&qword_27C90C830, type metadata accessor for MembershipEvent, byte_2146F8BC8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21464C4C4()
{
  result = qword_27C917690;
  if (!qword_27C917690)
  {
    result = swift_getWitnessTable(byte_214772FAC, &type metadata for PersistenceEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C917690);
  }

  return result;
}

uint64_t sub_21464C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21464C580(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C90C858, type metadata accessor for PersistenceEvent, byte_2146F8BF0);
  result = sub_21464C2EC(&qword_27C90C828, type metadata accessor for PersistenceEvent, byte_2146F8C18);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21464C604(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C906648, type metadata accessor for CollaborationHighlightEvent, aYw);
  result = sub_21464C2EC(&qword_27C906658, type metadata accessor for CollaborationHighlightEvent, byte_214702AD8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21464C688(uint64_t a1)
{
  *(a1 + 8) = sub_21464C2EC(&qword_27C917698, type metadata accessor for CollaborationNotice, byte_2146F8C40);
  result = sub_21464C2EC(&qword_27C9176A0, type metadata accessor for CollaborationNotice, aQ_42);
  *(a1 + 16) = result;
  return result;
}

void sub_21464C778(uint64_t a1)
{
  sub_21464C80C();
  if (v1 <= 0x3F)
  {
    sub_2146D8958();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21464C80C()
{
  if (!qword_280B2E978)
  {
    v0 = sub_2146D9D38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E978);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_2146D8958();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *__swift_store_extra_inhabitant_indexTm_3(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_2146D8958();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21464CA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D8958();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21464CA9C(uint64_t a1)
{
  result = type metadata accessor for ChangeEvent(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MentionEvent(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MembershipEvent(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for PersistenceEvent(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_21464CB60(uint64_t a1)
{
  result = type metadata accessor for CollaborationHighlightEvent(319);
  if (v2 <= 0x3F)
  {
    result = sub_2146D8B08();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21464CBFC()
{
  result = qword_27C9176A8;
  if (!qword_27C9176A8)
  {
    result = swift_getWitnessTable(byte_214773014, &type metadata for PersistenceEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C9176A8);
  }

  return result;
}

unint64_t sub_21464CC50()
{
  result = qword_27C9176B0;
  if (!qword_27C9176B0)
  {
    result = swift_getWitnessTable(byte_214772EEC, &type metadata for MembershipEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C9176B0);
  }

  return result;
}

unint64_t sub_21464CCA4()
{
  result = qword_27C9176B8;
  if (!qword_27C9176B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChangeEvent.Trigger, &type metadata for ChangeEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C9176B8);
  }

  return result;
}

unint64_t sub_21464CD1C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 100;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403254C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

__n128 sub_21464CE68@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >> 60 == 15)
  {
    *a3 = 1;
    result.n128_u64[0] = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0;
  }

  else
  {
    sub_2146D85C8();
    swift_allocObject();
    sub_21402D9F8(a1, a2);
    sub_2146D85B8();
    sub_21464CF74();
    sub_2146D8598();

    sub_213FDC6BC(a1, a2);
    sub_213FDC6BC(a1, a2);
    if (!v3)
    {
      *(a3 + 32) = v10;
      *(a3 + 48) = v11;
      *(a3 + 64) = v12;
      result = v9;
      *a3 = v8;
      *(a3 + 16) = v9;
    }
  }

  return result;
}

unint64_t sub_21464CF74()
{
  result = qword_27C9176C0;
  if (!qword_27C9176C0)
  {
    result = swift_getWitnessTable(byte_2146F1518, &type metadata for MBDPersistentMenu, v0, v1);
    atomic_store(result, &qword_27C9176C0);
  }

  return result;
}

uint64_t sub_21464D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21464D05C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21464D0B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_21464D140(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_21464D1A4()
{
  if (*v0)
  {
    return 0x6574697277;
  }

  else
  {
    return 1684104562;
  }
}

void sub_21464D1D4(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21464D234(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v5 = 13;
  if (v4 < 0xD)
  {
    v5 = v4;
  }

  *a3 = v5;
}

unint64_t sub_21464D290()
{
  result = 0x726566736E617274;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      return result;
    case 5:
      result = 0x726F707075736E75;
      break;
    case 6:
      result = 0x4964696C61766E69;
      break;
    case 7:
      result = 0x41657361426C696ELL;
      break;
    case 8:
      result = 0x6863617474416F6ELL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 0xA:
      result = 0x64616552626F6FLL;
      break;
    case 0xB:
      result = 0x4864696C61766E69;
      break;
    case 0xC:
      result = 0x6574707572726F63;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_21464D458()
{
  v0 = sub_21464D290();
  v2 = v1;
  if (v0 == sub_21464D290() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_21464D4F4()
{
  sub_2146DA958();
  sub_21464D290();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21464D55C(uint64_t a1)
{
  sub_21464D290();
  sub_2146D9698();

  return result;
}

uint64_t sub_21464D5C0(uint64_t a1)
{
  sub_2146DA958();
  sub_21464D290();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_21464D630@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21464D290();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_21464D67C()
{
  result = qword_27C9176C8;
  if (!qword_27C9176C8)
  {
    result = swift_getWitnessTable(aM_131, &type metadata for PixelBufferHelperError.ErrorKind, v0, v1);
    atomic_store(result, &qword_27C9176C8);
  }

  return result;
}

unint64_t sub_21464D6D4()
{
  result = qword_27C9176D0;
  if (!qword_27C9176D0)
  {
    result = swift_getWitnessTable(aIl, &type metadata for PixelBufferHelperError.Description, v0, v1);
    atomic_store(result, &qword_27C9176D0);
  }

  return result;
}

uint64_t sub_21464D764@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (result == -1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_21464D784()
{
  result = qword_27C9176D8;
  if (!qword_27C9176D8)
  {
    result = swift_getWitnessTable(byte_2147735E0, &type metadata for MBDActionDeviceType, v0, v1);
    atomic_store(result, &qword_27C9176D8);
  }

  return result;
}

uint64_t sub_21464D8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21464D93C()
{
  result = qword_27C9176E0;
  if (!qword_27C9176E0)
  {
    result = swift_getWitnessTable(aYk, &type metadata for MBDActionDeviceType, v0, v1);
    atomic_store(result, &qword_27C9176E0);
  }

  return result;
}

unint64_t sub_21464D990(uint64_t a1)
{
  *(a1 + 8) = sub_21431E99C();
  result = sub_21431DE30();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_21464D9FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_21464DA44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21464DAC4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_214741330;
  *(v4 + 16) = sub_214442A04;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E04E4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904128, qword_2147557C0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21464DFB4;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_21404441C(inited, a1);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_214741340;
  *(v11 + 16) = sub_214442A14;
  *(v11 + 24) = v12;
  *(v10 + 32) = v11;
  v13 = sub_2142E04E4(v10);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_21464DFBC;
  *(v14 + 24) = v15;
  *(v9 + 32) = v14;
  sub_21404441C(v9, a1 + 32);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = 200;
  *(v18 + 16) = sub_214084D54;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  v20 = sub_2142E0070(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = sub_21403254C;
  *(v21 + 24) = v22;
  *(v16 + 32) = v21;
  sub_214042A28(v16, a1 + 64);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_2146E9BF0;
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = 100;
  *(v26 + 24) = 0;
  *(v25 + 16) = sub_21406418C;
  *(v25 + 24) = v26;
  *(v24 + 32) = v25;
  v27 = sub_2142E0070(v24);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v28 + 16) = sub_214032610;
  *(v28 + 24) = v29;
  *(v23 + 32) = v28;
  sub_214042A28(v23, a1 + 104);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_2146E9BF0;
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_2146E9BF0;
  v32 = sub_214069764(&unk_282653CE0);
  v33 = swift_allocObject();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v33 + 16) = sub_214059810;
  *(v33 + 24) = v34;
  *(v31 + 32) = v33;
  v35 = sub_2142E0070(v31);
  v36 = swift_allocObject();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v36 + 16) = sub_214032610;
  *(v36 + 24) = v37;
  *(v30 + 32) = v36;
  return sub_214042A28(v30, a1 + 144);
}

unint64_t sub_21464DFC0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21464E158@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21464E1B0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_21464E218@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 73);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21464E23C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u8[8] = v4;
  v1[4].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21464E294@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 105);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21464E2B8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  v1[6].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21464E310@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 137);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21464E334(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u8[8] = v4;
  v1[8].n128_u8[9] = v5;
  return result;
}

uint64_t sub_21464E38C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v4 = *(v1 + 160);
  v3 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21464E3D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[9] = *a1;
  v1[10].n128_u64[0] = v3;
  v1[10].n128_u64[1] = v4;
  v1[11].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21464E434@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v4 = *(v1 + 232);
  v3 = *(v1 + 240);
  v5 = *(v1 + 248);
  *a1 = *(v1 + 216);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21464E480(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 216) = *a1;
  *(v1 + 232) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  return result;
}

uint64_t sub_21464E4DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 280);
  v3 = *(v1 + 288);
  v4 = *(v1 + 296);
  v5 = *(v1 + 297);
  v6 = *(v1 + 298);
  *a1 = *(v1 + 272);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21464E508(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  v1[17] = *a1;
  v1[18].n128_u64[0] = v3;
  v1[18].n128_u8[8] = v4;
  v1[18].n128_u8[9] = v5;
  v1[18].n128_u8[10] = v6;
  return result;
}

uint64_t sub_21464E568@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 312);
  v3 = *(v1 + 320);
  v4 = *(v1 + 328);
  v5 = *(v1 + 329);
  v6 = *(v1 + 330);
  *a1 = *(v1 + 304);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_21464E594(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];

  result = *a1;
  v1[19] = *a1;
  v1[20].n128_u64[0] = v3;
  v1[20].n128_u8[8] = v4;
  v1[20].n128_u8[9] = v5;
  v1[20].n128_u8[10] = v6;
  return result;
}

uint64_t sub_21464E5F4()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t sub_21464E674()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21464E6D8()
{
  if ((*(v0 + 104) & 1) == 0)
  {
    return *(v0 + 96);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21464E73C()
{
  if ((*(v0 + 136) & 1) == 0)
  {
    return *(v0 + 128);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21464E7A0()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 160);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21464E81C()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 232);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21464E898()
{
  if ((*(v0 + 297) & 1) == 0)
  {
    return *(v0 + 288);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21464E904()
{
  if ((*(v0 + 329) & 1) == 0)
  {
    return *(v0 + 320);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

void sub_21464E9A8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 24), *(v2 + 32));

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21464EAEC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void (*sub_21464EBC4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

uint64_t sub_21464EC94@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 64);
  }

  return result;
}

uint64_t (*sub_21464ED18(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 72))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 64);
    return sub_21464EDA0;
  }

  return result;
}

void (*sub_21464EDC8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 73);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_21448855C;
}

uint64_t sub_21464EE60@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 104))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 96);
  }

  return result;
}

uint64_t (*sub_21464EEE4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 104))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 96);
    return sub_21464EF6C;
  }

  return result;
}

uint64_t sub_21464EF94(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  *(a2 + 80) = v4;
  *(a2 + 88) = v3;
  *(a2 + 96) = v5;
  *(a2 + 104) = v6;
  *(a2 + 105) = v7;
  return result;
}

void (*sub_21464F000(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  v8 = *(v1 + 105);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_21464F098;
}

void sub_21464F098(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  if (a2)
  {

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    *(v3 + 105) = v8;
  }

  else
  {

    *(v3 + 80) = v5;
    *(v3 + 88) = v4;
    *(v3 + 96) = v6;
    *(v3 + 104) = v7;
    *(v3 + 105) = v8;
  }

  free(v2);
}

uint64_t sub_21464F144@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 136))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 128);
  }

  return result;
}

uint64_t (*sub_21464F1C8(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  if (*(v1 + 136))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 128);
    return sub_21464F250;
  }

  return result;
}

uint64_t sub_21464F278(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  *(a2 + 128) = v5;
  *(a2 + 136) = v6;
  *(a2 + 137) = v7;
  return result;
}

void (*sub_21464F2E4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 137);
  *v4 = *(v1 + 112);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_21464F37C;
}

void sub_21464F37C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  if (a2)
  {

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
    *(v3 + 137) = v8;
  }

  else
  {

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
    *(v3 + 137) = v8;
  }

  free(v2);
}

void sub_21464F428(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 168);
  if (v4)
  {
    *a2 = *(a1 + 160);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21464F498(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21464F548(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 144);
  v8 = *(v2 + 176);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 160) = a1;
    *(v2 + 168) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21464F690(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 168);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 160);
    a1[1] = v3;

    return sub_21464F72C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21464F72C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 144);
    v10 = *(v3 + 176);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 160) = v4;
      *(v3 + 168) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 144);
  v10 = *(v3 + 176);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 160) = v4;
  *(v3 + 168) = v2;
}

void sub_21464F94C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 144) = v4;
  *(a2 + 152) = v3;
  *(a2 + 160) = v6;
  *(a2 + 168) = v5;
  *(a2 + 176) = v7;
}

void (*sub_21464F9C4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 152);
  v7 = *(v1 + 160);
  v6 = *(v1 + 168);
  v8 = *(v1 + 176);
  *v4 = *(v1 + 144);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21464FA5C;
}

void sub_21464FA5C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = v7;
    *(v3 + 168) = v6;
    *(v3 + 176) = v8;
  }

  else
  {

    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = v7;
    *(v3 + 168) = v6;
    *(v3 + 176) = v8;
  }

  free(v2);
}

uint64_t sub_21464FB2C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  *a1 = *(v1 + 184);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_21464FB78(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *(v1 + 184) = *a1;
  *(v1 + 200) = v3;
  *(v1 + 208) = v4;
  return result;
}

void sub_21464FBF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 240);
  if (v4)
  {
    *a2 = *(a1 + 232);
    a2[1] = v4;
  }

  else
  {
    sub_2146DA018();
    __break(1u);
  }
}

double sub_21464FC60(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21464FD10(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 216);
  v8 = *(v2 + 248);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 232) = a1;
    *(v2 + 240) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21464FE58(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 240);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 232);
    a1[1] = v3;

    return sub_21464FEF4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21464FEF4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 216);
    v10 = *(v3 + 248);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 232) = v4;
      *(v3 + 240) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 216);
  v10 = *(v3 + 248);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 232) = v4;
  *(v3 + 240) = v2;
}

void sub_214650114(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 216) = v4;
  *(a2 + 224) = v3;
  *(a2 + 232) = v6;
  *(a2 + 240) = v5;
  *(a2 + 248) = v7;
}

void (*sub_21465018C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 224);
  v7 = *(v1 + 232);
  v6 = *(v1 + 240);
  v8 = *(v1 + 248);
  *v4 = *(v1 + 216);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214650224;
}

void sub_214650224(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
  }

  else
  {

    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
  }

  free(v2);
}

double sub_2146502F4@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 256);

  return result;
}

void sub_214650300(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 256) = v2;
}

uint64_t sub_21465037C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 297))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 296);
    *a2 = *(result + 288);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_214650410(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 297))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 296);
    *a1 = *(v1 + 288);
    *(a1 + 8) = v2 & 1;
    return sub_2146504A4;
  }

  return result;
}

uint64_t sub_2146504D8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 272) = v4;
  *(a2 + 280) = v3;
  *(a2 + 288) = v5;
  *(a2 + 296) = v6;
  *(a2 + 297) = v7;
  *(a2 + 298) = v8;
  return result;
}

void (*sub_21465054C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 280);
  v6 = *(v1 + 288);
  v7 = *(v1 + 296);
  v8 = *(v1 + 297);
  v9 = *(v1 + 298);
  *v4 = *(v1 + 272);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2146505EC;
}

void sub_2146505EC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  if (a2)
  {

    *(v3 + 272) = v5;
    *(v3 + 280) = v4;
    *(v3 + 288) = v6;
    *(v3 + 296) = v7;
    *(v3 + 297) = v8;
    *(v3 + 298) = v9;
  }

  else
  {

    *(v3 + 272) = v5;
    *(v3 + 280) = v4;
    *(v3 + 288) = v6;
    *(v3 + 296) = v7;
    *(v3 + 297) = v8;
    *(v3 + 298) = v9;
  }

  free(v2);
}

uint64_t sub_2146506AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 329))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 328);
    *a2 = *(result + 320);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_214650740(uint64_t a1))()
{
  *(a1 + 16) = v1;
  if (*(v1 + 329))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 328);
    *a1 = *(v1 + 320);
    *(a1 + 8) = v2 & 1;
    return sub_2146507D4;
  }

  return result;
}

uint64_t sub_214650808(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);

  *(a2 + 304) = v4;
  *(a2 + 312) = v3;
  *(a2 + 320) = v5;
  *(a2 + 328) = v6;
  *(a2 + 329) = v7;
  *(a2 + 330) = v8;
  return result;
}

void (*sub_21465087C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 312);
  v6 = *(v1 + 320);
  v7 = *(v1 + 328);
  v8 = *(v1 + 329);
  v9 = *(v1 + 330);
  *v4 = *(v1 + 304);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_21465091C;
}

void sub_21465091C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  if (a2)
  {

    *(v3 + 304) = v5;
    *(v3 + 312) = v4;
    *(v3 + 320) = v6;
    *(v3 + 328) = v7;
    *(v3 + 329) = v8;
    *(v3 + 330) = v9;
  }

  else
  {

    *(v3 + 304) = v5;
    *(v3 + 312) = v4;
    *(v3 + 320) = v6;
    *(v3 + 328) = v7;
    *(v3 + 329) = v8;
    *(v3 + 330) = v9;
  }

  free(v2);
}

uint64_t sub_2146509DC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IMS3GPPCharacteristic(0) + 68);

  return sub_214650A6C(v3, a1);
}

uint64_t type metadata accessor for IMS3GPPCharacteristic(uint64_t a1)
{
  result = qword_27C9176E8;
  if (!qword_27C9176E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214650A6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909358, qword_214773860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214650ADC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IMS3GPPCharacteristic(0) + 68);

  return sub_214650B20(a1, v3);
}

uint64_t sub_214650B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909358, qword_214773860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214650BD8(uint64_t a1)
{
  *(a1 + 8) = sub_214650C40(&qword_27C909218, aGm_0);
  result = sub_214650C40(&qword_27C909228, byte_2146FCE08);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214650C40(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for IMS3GPPCharacteristic(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_214650CAC(uint64_t a1)
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v1 <= 0x3F)
  {
    sub_2140939D4(319, &qword_27C9050E0, MEMORY[0x277D83B88], type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      sub_2140939D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
      if (v3 <= 0x3F)
      {
        sub_2140939D4(319, &qword_27C9176F8, &type metadata for LBOPCSCFAddressCharacteristic, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
          if (v5 <= 0x3F)
          {
            sub_214650E5C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_214650E5C(uint64_t a1)
{
  if (!qword_27C917700)
  {
    type metadata accessor for IMS3GPPExtCharacteristic(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_27C917700);
    }
  }
}

unint64_t sub_214650EB4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B7AC;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214651068@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 3;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_2145B865C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2146511B4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B7AC;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t CSDMHandle.$genericHandle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CSDMHandle.$genericHandle.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t CSDMHandle.$phoneNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CSDMHandle.$phoneNumber.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[4].n128_i64[0];
  v7 = v1[4].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t CSDMHandle.$emailAddress.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  *a1 = *(v1 + 88);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CSDMHandle.$emailAddress.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 88) = *a1;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  return result;
}

uint64_t CSDMHandle.$isoCountryCode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 160);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CSDMHandle.$isoCountryCode.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[9].n128_i64[0];
  v7 = v1[9].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[8] = *a1;
  v1[9].n128_u64[0] = v3;
  v1[9].n128_u64[1] = v4;
  v1[10].n128_u8[0] = v5;
  return result;
}

uint64_t CSDMHandle.$siriDisplayName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  *a1 = *(v1 + 168);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 CSDMHandle.$siriDisplayName.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 168) = *a1;
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 200) = v5;
  return result;
}

uint64_t CSDMHandle.genericHandle.getter()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t CSDMHandle.phoneNumber.getter()
{
  if (*(v0 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);

    return v1;
  }

  return result;
}

uint64_t CSDMHandle.emailAddress.getter()
{
  if (*(v0 + 112) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 104);

    return v1;
  }

  return result;
}

uint64_t CSDMHandle.isoCountryCode.getter()
{
  if (*(v0 + 152) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 144);

    return v1;
  }

  return result;
}

uint64_t CSDMHandle.siriDisplayName.getter()
{
  if (*(v0 + 192) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 184);

    return v1;
  }

  return result;
}

unint64_t sub_214651940@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_214651A8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 224);
  v3 = *(v1 + 232);
  v4 = *(v1 + 240);
  v5 = *(v1 + 248);
  *a1 = *(v1 + 216);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214651AE4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 216) = *a1;
  *(v1 + 232) = v3;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  return result;
}

uint64_t sub_214651B4C()
{
  if (*(v0 + 240) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 232);

    return v1;
  }

  return result;
}

uint64_t sub_214651C34@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214651C8C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214651CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214651D4C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_214651DB4()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_214651E34()
{
  if (*(v0 + 80) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 72);

    return v1;
  }

  return result;
}

uint64_t sub_214651EE8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 336);
  v3 = *(v1 + 344);
  v4 = *(v1 + 352);
  v5 = *(v1 + 360);
  *a1 = *(v1 + 328);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214651F40(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 344);
  v7 = *(v1 + 352);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 328) = *a1;
  *(v1 + 344) = v3;
  *(v1 + 352) = v4;
  *(v1 + 360) = v5;
  return result;
}

uint64_t sub_214651FAC()
{
  if (*(v0 + 352) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 344);

    return v1;
  }

  return result;
}

unint64_t sub_21465202C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B7AC;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214652178@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2146522C4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21465231C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214652384@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146523DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214652444()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2146524C4()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

unint64_t sub_214652544@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214652690@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2146527DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214652834(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t sub_21465289C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146528F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[5].n128_i64[0];
  v7 = v1[5].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[4] = *a1;
  v1[5].n128_u64[0] = v3;
  v1[5].n128_u64[1] = v4;
  v1[6].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21465295C()
{
  if (*(v0 + 48) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 40);

    return v1;
  }

  return result;
}

uint64_t sub_2146529DC()
{
  if (*(v0 + 88) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 80);

    return v1;
  }

  return result;
}

unint64_t sub_214652A5C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B7AC;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  sub_214042A28(inited, a1);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = 256;
  *(v12 + 24) = 0;
  *(v11 + 16) = sub_21438F518;
  *(v11 + 24) = v12;
  *(v10 + 32) = v11;
  v13 = sub_2142E0070(v10);
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v14 + 16) = sub_214032610;
  *(v14 + 24) = v15;
  *(v9 + 32) = v14;
  sub_214042A28(v9, a1 + 40);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_2146E9BF0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = 256;
  *(v19 + 24) = 0;
  *(v18 + 16) = sub_21438F518;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  v20 = sub_2142E0070(v17);
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = sub_214032610;
  *(v21 + 24) = v22;
  *(v16 + 32) = v21;
  sub_214042A28(v16, a1 + 80);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_2146E9BF0;
  v25 = swift_allocObject();
  v26 = swift_allocObject();
  *(v26 + 16) = 256;
  *(v26 + 24) = 0;
  *(v25 + 16) = sub_21438F518;
  *(v25 + 24) = v26;
  *(v24 + 32) = v25;
  v27 = sub_2142E0070(v24);
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v28 + 16) = sub_214032610;
  *(v28 + 24) = v29;
  *(v23 + 32) = v28;
  return sub_214042A28(v23, a1 + 120);
}

uint64_t sub_214652E5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214652EB4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214652F1C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214652F74(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214652FDC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214653034(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_i64[0];
  v7 = v1[6].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21465309C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146530F4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_21465315C()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2146531DC()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

uint64_t sub_21465325C()
{
  if (*(v0 + 104) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 96);

    return v1;
  }

  return result;
}

uint64_t sub_2146532DC()
{
  if (*(v0 + 144) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 136);

    return v1;
  }

  return result;
}

unint64_t sub_2146533CC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 128;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B7AC;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214653518@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 128;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21407B588;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_2146536A0@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 4096;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142E00AC(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_214042E28(inited, a5);
}

unint64_t sub_2146537D8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 128;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_214653924@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21465397C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146539E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_214653A3C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214653AA4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214653AFC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_i64[0];
  v7 = v1[6].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214653B64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214653BBC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_214653C24@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_214653C7C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[11].n128_i64[0];
  v7 = v1[11].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214653CE4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 592);
  v3 = *(v1 + 600);
  v4 = *(v1 + 608);
  v5 = *(v1 + 616);
  *a1 = *(v1 + 584);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214653D44(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 600);
  v7 = *(v1 + 608);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 584) = *a1;
  *(v1 + 600) = v3;
  *(v1 + 608) = v4;
  *(v1 + 616) = v5;
  return result;
}

uint64_t sub_214653DB8()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_214653E38()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_214653EC0()
{
  if (*(v0 + 104) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 96);

    return v1;
  }

  return result;
}

uint64_t sub_214653F40()
{
  if (*(v0 + 144) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 136);

    return v1;
  }

  return result;
}

uint64_t sub_214653FC0()
{
  v1 = *(v0 + 184);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 176);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_214654048()
{
  if (*(v0 + 608) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 600);

    return v1;
  }

  return result;
}

uint64_t sub_2146540FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214654154(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2146541BC()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

unint64_t sub_2146542AC@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 1024;
  *(v10 + 16) = a2;
  *(v10 + 24) = v11;
  *(v9 + 32) = v10;
  v12 = sub_2142E00AC(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v13 = swift_allocObject();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v13 + 16) = a4;
  *(v13 + 24) = v14;
  *(inited + 32) = v13;
  return sub_214042E28(inited, a5);
}

uint64_t sub_214654454@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146544AC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214654514@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_21465456C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);

  sub_214032564(v6, v7);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2146545D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_21465462C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_i64[0];
  v7 = v1[6].n128_u64[1];

  sub_214032564(v6, v7);
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214654694@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(v1 + 176);
  *a1 = *(v1 + 144);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146546EC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[10].n128_i64[0];
  v7 = v1[10].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[9] = *a1;
  v1[10].n128_u64[0] = v3;
  v1[10].n128_u64[1] = v4;
  v1[11].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214654754()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2146547D4()
{
  v1 = *(v0 + 64);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 56);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_21465485C()
{
  v1 = *(v0 + 104);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 96);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2146548E4()
{
  if (*(v0 + 168) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 160);

    return v1;
  }

  return result;
}

unint64_t sub_2146549CC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 64;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21438F518;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214654B18@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = sub_21438EDCC;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_214654C88@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214654CE0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[2].n128_i64[0];
  v7 = v1[2].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214654D48@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214654DA0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  return result;
}

uint64_t sub_214654E08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214654E60(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_214654EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 736);
  v3 = *(v1 + 744);
  v4 = *(v1 + 752);
  v5 = *(v1 + 760);
  *a1 = *(v1 + 728);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214654F28(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 744);
  v7 = *(v1 + 752);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 728) = *a1;
  *(v1 + 744) = v3;
  *(v1 + 752) = v4;
  *(v1 + 760) = v5;
  return result;
}

uint64_t sub_214654F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 776);
  v3 = *(v1 + 784);
  v4 = *(v1 + 792);
  v5 = *(v1 + 800);
  *a1 = *(v1 + 768);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214654FFC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[49].n128_i64[0];
  v7 = v1[49].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[48] = *a1;
  v1[49].n128_u64[0] = v3;
  v1[49].n128_u64[1] = v4;
  v1[50].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21465506C()
{
  if (*(v0 + 40) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);

    return v1;
  }

  return result;
}

uint64_t sub_2146550EC()
{
  if (*(v0 + 96) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 88);

    return v1;
  }

  return result;
}

uint64_t sub_21465516C()
{
  if (*(v0 + 144) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 136);

    return v1;
  }

  return result;
}

uint64_t sub_2146551EC()
{
  if (*(v0 + 752) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 744);

    return v1;
  }

  return result;
}

uint64_t sub_21465526C()
{
  if (*(v0 + 792) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 784);

    return v1;
  }

  return result;
}

unint64_t sub_214655320@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 128;
  *(v5 + 24) = 0;
  *(v4 + 16) = sub_21406418C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214032610;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2146554D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1808);
  v3 = *(v1 + 1816);
  v4 = *(v1 + 1824);
  v5 = *(v1 + 1832);
  *a1 = *(v1 + 1800);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214655534(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 1816);
  v7 = *(v1 + 1824);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 1800) = *a1;
  *(v1 + 1816) = v3;
  *(v1 + 1824) = v4;
  *(v1 + 1832) = v5;
  return result;
}

uint64_t sub_2146555A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1848);
  v3 = *(v1 + 1856);
  v4 = *(v1 + 1864);
  v5 = *(v1 + 1872);
  *a1 = *(v1 + 1840);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214655608(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[116].n128_i64[0];
  v7 = v1[116].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[115] = *a1;
  v1[116].n128_u64[0] = v3;
  v1[116].n128_u64[1] = v4;
  v1[117].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214655678@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2856);
  v3 = *(v1 + 2864);
  v4 = *(v1 + 2872);
  v5 = *(v1 + 2880);
  *a1 = *(v1 + 2848);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146556D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[179].n128_i64[0];
  v7 = v1[179].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[178] = *a1;
  v1[179].n128_u64[0] = v3;
  v1[179].n128_u64[1] = v4;
  v1[180].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214655748@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2912);
  v3 = *(v1 + 2920);
  v4 = *(v1 + 2928);
  v5 = *(v1 + 2936);
  *a1 = *(v1 + 2904);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2146557A8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 2920);
  v7 = *(v1 + 2928);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 2904) = *a1;
  *(v1 + 2920) = v3;
  *(v1 + 2928) = v4;
  *(v1 + 2936) = v5;
  return result;
}

uint64_t sub_21465581C()
{
  if (*(v0 + 1824) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 1816);

    return v1;
  }

  return result;
}

uint64_t sub_21465589C()
{
  if (*(v0 + 1864) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 1856);

    return v1;
  }

  return result;
}

uint64_t sub_21465591C()
{
  if (*(v0 + 2872) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 2864);

    return v1;
  }

  return result;
}

uint64_t sub_21465599C()
{
  if (*(v0 + 2928) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 2920);

    return v1;
  }

  return result;
}

uint64_t sub_214655A50@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214655AA8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  return result;
}

uint64_t sub_214655B10()
{
  if (*(v0 + 96) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 88);

    return v1;
  }

  return result;
}

BlastDoor::CSDMHandle::HandleType_optional __swiftcall CSDMHandle.HandleType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_214655BAC@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 16;
  switch(result)
  {
    case 0:
      goto LABEL_31;
    case 1:
      v2 = 1;
      goto LABEL_31;
    case 2:
      v2 = 2;
      goto LABEL_31;
    case 3:
      v2 = 3;
      goto LABEL_31;
    case 4:
      v2 = 4;
      goto LABEL_31;
    case 5:
      v2 = 5;
      goto LABEL_31;
    case 6:
      v2 = 6;
      goto LABEL_31;
    case 8:
      v2 = 7;
      goto LABEL_31;
    case 9:
      v2 = 8;
      goto LABEL_31;
    case 10:
      v2 = 9;
      goto LABEL_31;
    case 11:
      v2 = 10;
      goto LABEL_31;
    case 12:
      v2 = 11;
      goto LABEL_31;
    case 13:
      v2 = 12;
      goto LABEL_31;
    case 14:
      v2 = 13;
      goto LABEL_31;
    case 15:
      v2 = 14;
      goto LABEL_31;
    case 16:
      v2 = 15;
LABEL_31:
      v3 = v2;
      goto LABEL_32;
    case 19:
LABEL_32:
      *a2 = v3;
      break;
    case 21:
      *a2 = 17;
      break;
    case 22:
      *a2 = 18;
      break;
    case 23:
      *a2 = 19;
      break;
    case 24:
      *a2 = 20;
      break;
    case 25:
      *a2 = 21;
      break;
    case 26:
      *a2 = 22;
      break;
    case 27:
      *a2 = 23;
      break;
    case 28:
      *a2 = 24;
      break;
    case 29:
      *a2 = 25;
      break;
    case 30:
      *a2 = 26;
      break;
    case 31:
      *a2 = 27;
      break;
    case 32:
      *a2 = 28;
      break;
    case 33:
      *a2 = 29;
      break;
    case 34:
      *a2 = 30;
      break;
    case 35:
      *a2 = 31;
      break;
    case 36:
      *a2 = 32;
      break;
    case 37:
      *a2 = 33;
      break;
    default:
      *a2 = 34;
      break;
  }

  return result;
}

unint64_t sub_214655D4C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void CSDMHandle.genericHandle.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 24), *(v2 + 32));

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*CSDMHandle.genericHandle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void (*CSDMHandle.$genericHandle.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

void CSDMHandle.phoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 48);
  v8 = *(v2 + 80);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 64), *(v2 + 72));

    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*CSDMHandle.phoneNumber.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 64);
  *(v3 + 24) = v5;
  v6 = *(v1 + 72);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054570;
  }

  return result;
}

void (*CSDMHandle.$phoneNumber.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21405497C;
}

void CSDMHandle.emailAddress.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 88);
  v8 = *(v2 + 120);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 104), *(v2 + 112));

    *(v2 + 104) = a1;
    *(v2 + 112) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*CSDMHandle.emailAddress.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 104);
  *(v3 + 24) = v5;
  v6 = *(v1 + 112);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054E1C;
  }

  return result;
}

void (*CSDMHandle.$emailAddress.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  *v4 = *(v1 + 88);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055228;
}

void CSDMHandle.isoCountryCode.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 128);
  v8 = *(v2 + 160);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 144), *(v2 + 152));

    *(v2 + 144) = a1;
    *(v2 + 152) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*CSDMHandle.isoCountryCode.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 144);
  *(v3 + 24) = v5;
  v6 = *(v1 + 152);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2140556C8;
  }

  return result;
}

void (*CSDMHandle.$isoCountryCode.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 136);
  v6 = *(v1 + 144);
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  *v4 = *(v1 + 128);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214055AD4;
}

void CSDMHandle.siriDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 168);
  v8 = *(v2 + 200);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 184), *(v2 + 192));

    *(v2 + 184) = a1;
    *(v2 + 192) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*CSDMHandle.siriDisplayName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 184);
  *(v3 + 24) = v5;
  v6 = *(v1 + 192);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2143DF7BC;
  }

  return result;
}

void (*CSDMHandle.$siriDisplayName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 176);
  v6 = *(v1 + 184);
  v7 = *(v1 + 192);
  v8 = *(v1 + 200);
  *v4 = *(v1 + 168);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2143DFB08;
}

uint64_t sub_214656D74(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214656DA4@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 184);
  v16[10] = *(v1 + 168);
  v17[0] = v3;
  *(v17 + 9) = *(v1 + 193);
  v4 = *(v1 + 88);
  v5 = *(v1 + 120);
  v16[6] = *(v1 + 104);
  v16[7] = v5;
  v16[8] = *(v1 + 136);
  v16[9] = v2;
  v6 = *(v1 + 24);
  v7 = *(v1 + 56);
  v16[2] = *(v1 + 40);
  v16[3] = v7;
  v16[4] = *(v1 + 72);
  v16[5] = v4;
  v16[0] = *(v1 + 8);
  v16[1] = v6;
  v8 = *(v1 + 152);
  v9 = *(v1 + 184);
  a1[10] = *(v1 + 168);
  a1[11] = v9;
  *(a1 + 185) = *(v1 + 193);
  v10 = *(v1 + 88);
  v11 = *(v1 + 120);
  a1[6] = *(v1 + 104);
  a1[7] = v11;
  a1[8] = *(v1 + 136);
  a1[9] = v8;
  v12 = *(v1 + 24);
  v13 = *(v1 + 56);
  a1[2] = *(v1 + 40);
  a1[3] = v13;
  a1[4] = *(v1 + 72);
  a1[5] = v10;
  *a1 = *(v1 + 8);
  a1[1] = v12;
  return sub_213FB2E54(v16, &v15, &qword_27C905AD0, &unk_214759900);
}

__n128 sub_214656E88(__int128 *a1)
{
  v3 = *(v1 + 152);
  v4 = *(v1 + 184);
  v16[10] = *(v1 + 168);
  v17[0] = v4;
  *(v17 + 9) = *(v1 + 193);
  v5 = *(v1 + 88);
  v6 = *(v1 + 120);
  v16[6] = *(v1 + 104);
  v16[7] = v6;
  v16[8] = *(v1 + 136);
  v16[9] = v3;
  v7 = *(v1 + 24);
  v8 = *(v1 + 56);
  v16[2] = *(v1 + 40);
  v16[3] = v8;
  v16[4] = *(v1 + 72);
  v16[5] = v5;
  v16[0] = *(v1 + 8);
  v16[1] = v7;
  sub_213FB2DF4(v16, &qword_27C905AD0, &unk_214759900);
  v9 = a1[8];
  *(v1 + 152) = a1[9];
  v10 = a1[11];
  *(v1 + 168) = a1[10];
  *(v1 + 184) = v10;
  *(v1 + 193) = *(a1 + 185);
  v11 = a1[4];
  *(v1 + 88) = a1[5];
  v12 = a1[7];
  *(v1 + 104) = a1[6];
  *(v1 + 120) = v12;
  *(v1 + 136) = v9;
  v13 = *a1;
  *(v1 + 24) = a1[1];
  result = a1[2];
  v15 = a1[3];
  *(v1 + 40) = result;
  *(v1 + 56) = v15;
  *(v1 + 72) = v11;
  *(v1 + 8) = v13;
  return result;
}

void sub_214656F88(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 240);
  if (v4 == 1)
  {
    sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 232);
    a2[1] = v4;
  }
}

double sub_214656FFC(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2146570AC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 216);
  v8 = *(v2 + 248);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 232), *(v2 + 240));

    *(v2 + 232) = a1;
    *(v2 + 240) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146571F0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 232);
  *(v3 + 24) = v5;
  v6 = *(v1 + 240);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2146572C8;
  }

  return result;
}

void sub_2146572C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 216);
    v13 = *(v3 + 248);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 232) = v5;
      *(v9 + 240) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 216);
  v13 = *(v3 + 248);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 232) = v5;
  *(v7 + 240) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214657498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 224);
  v3 = *(a1 + 232);
  v4 = *(a1 + 240);
  v5 = *(a1 + 248);
  *a2 = *(a1 + 216);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2146574EC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 232);
  v9 = *(a2 + 240);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 216) = v4;
  *(a2 + 224) = v3;
  *(a2 + 232) = v5;
  *(a2 + 240) = v6;
  *(a2 + 248) = v7;
  return result;
}

void (*sub_214657574(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 224);
  v6 = *(v1 + 232);
  v7 = *(v1 + 240);
  v8 = *(v1 + 248);
  *v4 = *(v1 + 216);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214657614;
}

void sub_214657614(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 232);
  v10 = *(v3 + 240);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 216) = v5;
    *(v3 + 224) = v4;
    *(v3 + 232) = v7;
    *(v3 + 240) = v6;
    *(v3 + 248) = v8;
  }

  free(v2);
}

uint64_t sub_2146576F4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[25];
  v3 = v1[27];
  v30 = v1[26];
  v31[0] = v3;
  v4 = v1[21];
  v5 = v1[23];
  v26 = v1[22];
  v6 = v26;
  v27 = v5;
  v7 = v1[23];
  v8 = v1[25];
  v28 = v1[24];
  v9 = v28;
  v29 = v8;
  v10 = v1[17];
  v11 = v1[19];
  v22 = v1[18];
  v12 = v22;
  v23 = v11;
  v13 = v1[19];
  v14 = v1[21];
  v24 = v1[20];
  v15 = v24;
  v25 = v14;
  v16 = v1[17];
  v21[0] = v1[16];
  v17 = v21[0];
  v21[1] = v16;
  *(v31 + 9) = *(v1 + 441);
  v18 = v1[27];
  a1[10] = v30;
  a1[11] = v18;
  *(a1 + 185) = *(v1 + 441);
  a1[6] = v6;
  a1[7] = v7;
  a1[8] = v9;
  a1[9] = v2;
  a1[2] = v12;
  a1[3] = v13;
  a1[4] = v15;
  a1[5] = v4;
  *a1 = v17;
  a1[1] = v10;
  return sub_213FB2E54(v21, &v20, &qword_27C905AD0, &unk_214759900);
}

__n128 sub_2146577B0(uint64_t a1)
{
  v3 = v1[27];
  v15[10] = v1[26];
  v16[0] = v3;
  v4 = v1[23];
  v15[6] = v1[22];
  v15[7] = v4;
  v5 = v1[25];
  v15[8] = v1[24];
  v15[9] = v5;
  v6 = v1[19];
  v15[2] = v1[18];
  v15[3] = v6;
  v7 = v1[21];
  v15[4] = v1[20];
  v15[5] = v7;
  v8 = v1[17];
  v15[0] = v1[16];
  v15[1] = v8;
  *(v16 + 9) = *(v1 + 441);
  sub_213FB2DF4(v15, &qword_27C905AD0, &unk_214759900);
  v9 = *(a1 + 176);
  v1[26] = *(a1 + 160);
  v1[27] = v9;
  *(v1 + 441) = *(a1 + 185);
  v10 = *(a1 + 112);
  v1[22] = *(a1 + 96);
  v1[23] = v10;
  v11 = *(a1 + 144);
  v1[24] = *(a1 + 128);
  v1[25] = v11;
  v12 = *(a1 + 48);
  v1[18] = *(a1 + 32);
  v1[19] = v12;
  v13 = *(a1 + 80);
  v1[20] = *(a1 + 64);
  v1[21] = v13;
  result = *(a1 + 16);
  v1[16] = *a1;
  v1[17] = result;
  return result;
}

uint64_t sub_214657898(uint64_t result, char a2)
{
  *(v2 + 464) = result;
  *(v2 + 472) = a2 & 1;
  return result;
}

uint64_t sub_2146578C8()
{
  v1 = *(v0 + 480);

  return v1;
}

void sub_2146578F8(uint64_t a1, uint64_t a2)
{

  *(v2 + 480) = a1;
  *(v2 + 488) = a2;
}

void sub_214657950(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214657A94(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

void (*sub_214657B6C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439DFB4;
}

uint64_t sub_214657C18(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

void sub_214657C48(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 56);
  v8 = *(v2 + 88);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 72), *(v2 + 80));

    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214657D8C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21447871C;
  }

  return result;
}

void (*sub_214657E64(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214478A68;
}

uint64_t sub_214657F24(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214657F60(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t sub_214657F90@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 200);
  v16[10] = *(v1 + 184);
  v17[0] = v3;
  *(v17 + 9) = *(v1 + 209);
  v4 = *(v1 + 104);
  v5 = *(v1 + 136);
  v16[6] = *(v1 + 120);
  v16[7] = v5;
  v16[8] = *(v1 + 152);
  v16[9] = v2;
  v6 = *(v1 + 40);
  v7 = *(v1 + 72);
  v16[2] = *(v1 + 56);
  v16[3] = v7;
  v16[4] = *(v1 + 88);
  v16[5] = v4;
  v16[0] = *(v1 + 24);
  v16[1] = v6;
  v8 = *(v1 + 168);
  v9 = *(v1 + 200);
  a1[10] = *(v1 + 184);
  a1[11] = v9;
  *(a1 + 185) = *(v1 + 209);
  v10 = *(v1 + 104);
  v11 = *(v1 + 136);
  a1[6] = *(v1 + 120);
  a1[7] = v11;
  a1[8] = *(v1 + 152);
  a1[9] = v8;
  v12 = *(v1 + 40);
  v13 = *(v1 + 72);
  a1[2] = *(v1 + 56);
  a1[3] = v13;
  a1[4] = *(v1 + 88);
  a1[5] = v10;
  *a1 = *(v1 + 24);
  a1[1] = v12;
  return sub_213FB2E54(v16, &v15, &qword_27C905AD0, &unk_214759900);
}

__n128 sub_214658074(__int128 *a1)
{
  v3 = *(v1 + 168);
  v4 = *(v1 + 200);
  v16[10] = *(v1 + 184);
  v17[0] = v4;
  *(v17 + 9) = *(v1 + 209);
  v5 = *(v1 + 104);
  v6 = *(v1 + 136);
  v16[6] = *(v1 + 120);
  v16[7] = v6;
  v16[8] = *(v1 + 152);
  v16[9] = v3;
  v7 = *(v1 + 40);
  v8 = *(v1 + 72);
  v16[2] = *(v1 + 56);
  v16[3] = v8;
  v16[4] = *(v1 + 88);
  v16[5] = v5;
  v16[0] = *(v1 + 24);
  v16[1] = v7;
  sub_213FB2DF4(v16, &qword_27C905AD0, &unk_214759900);
  v9 = a1[8];
  *(v1 + 168) = a1[9];
  v10 = a1[11];
  *(v1 + 184) = a1[10];
  *(v1 + 200) = v10;
  *(v1 + 209) = *(a1 + 185);
  v11 = a1[4];
  *(v1 + 104) = a1[5];
  v12 = a1[7];
  *(v1 + 120) = a1[6];
  *(v1 + 136) = v12;
  *(v1 + 152) = v9;
  v13 = *a1;
  *(v1 + 40) = a1[1];
  result = a1[2];
  v15 = a1[3];
  *(v1 + 56) = result;
  *(v1 + 72) = v15;
  *(v1 + 88) = v11;
  *(v1 + 24) = v13;
  return result;
}

uint64_t sub_214658174()
{
  v1 = *(v0 + 232);
  sub_213FDCA18(v1, *(v0 + 240));
  return v1;
}

uint64_t sub_2146581A8(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 232), *(v2 + 240));
  *(v2 + 232) = a1;
  *(v2 + 240) = a2;
  return result;
}

uint64_t sub_214658310(uint64_t result)
{
  *(v1 + 256) = result;
  *(v1 + 260) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214658360(uint64_t result)
{
  *(v1 + 264) = result;
  *(v1 + 268) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2146584B8()
{
  v1 = *(v0 + 280);
  sub_213FDCA18(v1, *(v0 + 288));
  return v1;
}

uint64_t sub_2146584EC(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 280), *(v2 + 288));
  *(v2 + 280) = a1;
  *(v2 + 288) = a2;
  return result;
}

uint64_t sub_2146585C4(uint64_t result)
{
  *(v1 + 300) = result;
  *(v1 + 304) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_214658614(uint64_t result)
{
  *(v1 + 308) = result;
  *(v1 + 312) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2146586C4(uint64_t result)
{
  *(v1 + 316) = result;
  *(v1 + 320) = BYTE4(result) & 1;
  return result;
}

void sub_21465875C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 328);
  v8 = *(v2 + 360);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 344), *(v2 + 352));

    *(v2 + 344) = a1;
    *(v2 + 352) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2146588A0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 344);
  *(v3 + 24) = v5;
  v6 = *(v1 + 352);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214492CD4;
  }

  return result;
}

void (*sub_214658978(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 336);
  v6 = *(v1 + 344);
  v7 = *(v1 + 352);
  v8 = *(v1 + 360);
  *v4 = *(v1 + 328);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214493020;
}

void sub_214658A48(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214658B8C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

void (*sub_214658C64(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21439DFB4;
}

void sub_214658D34(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 56), *(v2 + 64));

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214658E78(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145DF56C;
  }

  return result;
}

uint64_t (*sub_214658F50(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21466431C;
}