uint64_t sub_2148C3430(uint64_t a1, uint64_t a2)
{
  v3 = sub_21498E690();
  MEMORY[0x28223BE20](v3);
  type metadata accessor for OBKLiftUIButton(0);
  v4 = type metadata accessor for OBKLiftUIView(0);
  if (!*(a2 + *(v4 + 52)))
  {
    sub_21498E8C0();
    sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
    sub_21498ED10();
    __break(1u);
    goto LABEL_7;
  }

  if (!*(a2 + *(v4 + 56)))
  {
LABEL_7:
    sub_21498E870();
    sub_2148BCAE8(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  sub_21498FA10();
}

uint64_t sub_2148C37E0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x65546C6961746564;
    if (a1 != 2)
    {
      v6 = 0x6D49726564616568;
    }

    if (a1)
    {
      v5 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6E6F6974706163;
    v2 = 0x427972616D697270;
    if (a1 != 7)
    {
      v2 = 0x7261646E6F636573;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746E65746E6F63;
    if (a1 != 4)
    {
      v3 = 0x4C746E65746E6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2148C3928()
{
  v1 = *v0;
  sub_214990160();
  sub_2148DAA28(v3, v1);
  return sub_214990190();
}

uint64_t sub_2148C3978(uint64_t a1)
{
  v2 = *v1;
  sub_214990160();
  sub_2148DAA28(v4, v2);
  return sub_214990190();
}

unint64_t sub_2148C39BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148C702C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2148C39EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2148C37E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2148C3A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148C702C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148C3A5C(uint64_t a1)
{
  v2 = sub_2148C6CD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148C3A98(uint64_t a1)
{
  v2 = sub_2148C6CD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148C3AD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC8, qword_214993E50);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v60 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v61 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC0, &qword_214993E48);
  MEMORY[0x28223BE20](v7 - 8);
  v62 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  MEMORY[0x28223BE20](v9 - 8);
  v63 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB0, &qword_214993E38);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  MEMORY[0x28223BE20](v13 - 8);
  v65 = &v57 - v14;
  v15 = sub_21498E900();
  v67 = *(v15 - 8);
  v68 = v15;
  MEMORY[0x28223BE20](v15);
  v66 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21498E350();
  v69 = *(v17 - 8);
  v70 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADD8, &qword_2149940E8);
  v71 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - v21;
  v23 = type metadata accessor for OBKLiftUIView(0);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = (&v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = (v26 + *(v24 + 52));
  sub_21498E8C0();
  v28 = MEMORY[0x277D233A0];
  sub_2148BCAE8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v73 = sub_21498ED20();
  *v27 = v73;
  v27[1] = v29;
  v30 = (v26 + v23[14]);
  sub_21498E870();
  sub_2148BCAE8(&qword_27CA1AC08, MEMORY[0x277D232E8], v28);
  v72 = sub_21498ED20();
  *v30 = v72;
  v30[1] = v31;
  v32 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_2148C6CD8();
  v33 = v74;
  sub_2149901B0();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1(v75);
LABEL_4:
  }

  v34 = v69;
  v35 = v70;
  LOBYTE(v76) = 0;
  v36 = sub_21498FF20();
  v58 = 0;
  v74 = v22;
  v39 = v20;
  if (!v37)
  {
    sub_21498E340();
    v40 = sub_21498E330();
    v42 = v41;
    (*(v34 + 8))(v19, v35);
    v37 = v42;
    v36 = v40;
  }

  v43 = v26;
  *v26 = v36;
  v26[1] = v37;
  LOBYTE(v76) = 1;
  sub_2148BCAE8(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  v44 = v66;
  v45 = v68;
  v46 = v74;
  v47 = v58;
  sub_21498FFA0();
  if (v47)
  {
    (*(v71 + 8))(v46, v39);
    __swift_destroy_boxed_opaque_existential_1(v75);

    goto LABEL_4;
  }

  (*(v67 + 32))(v43 + v23[5], v44, v45);
  LOBYTE(v76) = 2;
  v48 = v39;
  v49 = v65;
  v50 = v48;
  v70 = 0;
  sub_21498FF40();
  sub_2148B4C68(v49, v43 + v23[6], &qword_27CA1A800, &unk_214993100);
  type metadata accessor for HeaderImage(0);
  LOBYTE(v76) = 3;
  sub_2148BCAE8(&qword_27CA1ADE8, type metadata accessor for HeaderImage, &unk_214993E90);
  v51 = v64;
  sub_21498FF40();
  sub_2148B4C68(v51, v43 + v23[7], &qword_27CA1ABB0, &qword_214993E38);
  type metadata accessor for OBKLiftUIContent(0);
  LOBYTE(v76) = 4;
  sub_2148BCAE8(&qword_27CA1ADF0, type metadata accessor for OBKLiftUIContent, &unk_214998084);
  v52 = v63;
  sub_21498FF40();
  sub_2148B4C68(v52, v43 + v23[8], &qword_27CA1ABB8, &qword_214993E40);
  type metadata accessor for OBWelcomeContentViewLayout(0);
  v78 = 5;
  sub_2148BCAE8(&qword_27CA1ADF8, type metadata accessor for OBWelcomeContentViewLayout, &protocol conformance descriptor for OBWelcomeContentViewLayout);
  sub_21498FF40();
  v53 = v76;
  if (v77)
  {
    v53 = 2;
  }

  *(v43 + v23[9]) = v53;
  type metadata accessor for OBKLiftUICaption(0);
  LOBYTE(v76) = 6;
  sub_2148BCAE8(&qword_27CA1AE00, type metadata accessor for OBKLiftUICaption, &unk_2149980AC);
  v54 = v62;
  sub_21498FF40();
  sub_2148B4C68(v54, v43 + v23[10], &qword_27CA1ABC0, &qword_214993E48);
  type metadata accessor for OBKLiftUIButton(0);
  LOBYTE(v76) = 7;
  sub_2148BCAE8(&qword_27CA1AE08, type metadata accessor for OBKLiftUIButton, &unk_2149980D4);
  v55 = v61;
  sub_21498FF40();
  sub_2148B4C68(v55, v43 + v23[11], &qword_27CA1ABC8, qword_214993E50);
  LOBYTE(v76) = 8;
  v56 = v60;
  sub_21498FF40();
  (*(v71 + 8))(v46, v50);
  sub_2148B4C68(v56, v43 + v23[12], &qword_27CA1ABC8, qword_214993E50);
  sub_2148C5ED8(v43, v59, type metadata accessor for OBKLiftUIView);
  __swift_destroy_boxed_opaque_existential_1(v75);
  return sub_2148C69F4(v43, type metadata accessor for OBKLiftUIView);
}

uint64_t sub_2148C4710(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148BCAE8(&qword_27CA1AC30, type metadata accessor for OBKLiftUIView, &unk_214993F90);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2148C4794(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148BCAE8(&qword_27CA1AC38, type metadata accessor for OBKLiftUIView, &unk_214993F40);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2148C4810(uint64_t a1)
{
  v2 = sub_2148BCAE8(&qword_27CA1AC38, type metadata accessor for OBKLiftUIView, &unk_214993F40);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2148C488C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148BCAE8(&qword_27CA1AC50, type metadata accessor for OBKLiftUIView, &unk_214993F08);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2148C492C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6567616D69;
  if (v2 != 1)
  {
    v4 = 2003134838;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6F626D7973;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6567616D69;
  if (*a2 != 1)
  {
    v8 = 2003134838;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6F626D7973;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_2148C4A14()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148C4AA8(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148C4B28(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148C4BB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148C7078(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148C4BE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6567616D69;
  if (v2 != 1)
  {
    v5 = 2003134838;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6F626D7973;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2148C4C38()
{
  v1 = 0x6567616D69;
  if (*v0 != 1)
  {
    v1 = 2003134838;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

unint64_t sub_2148C4C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148C7078(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148C4CAC(uint64_t a1)
{
  v2 = sub_2148C6D2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148C4CE8(uint64_t a1)
{
  v2 = sub_2148C6D2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148C4D24@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v82 = a2;
  v74 = sub_21498E6A0();
  v70 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21498E900();
  v75 = *(v79 - 8);
  v4 = MEMORY[0x28223BE20](v79);
  v77 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v78 = &v66 - v6;
  v7 = sub_21498E690();
  v8 = *(v7 - 8);
  v80 = v7;
  v81 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v71 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v72 = &v66 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v76 = &v66 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v66 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE10, &qword_2149940F0);
  v83 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - v18;
  v20 = type metadata accessor for HeaderImage(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148C6D2C();
  v23 = v84;
  sub_2149901B0();
  if (v23)
  {
    goto LABEL_30;
  }

  v67 = v22;
  v69 = v20;
  v68 = 0;
  v24 = v81;
  v25 = v82;
  v84 = a1;
  v26 = sub_21498FFB0();
  if (!*(v26 + 16))
  {

    v31 = v24;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v82 = v19;
    v32 = v80;
    v33 = __swift_project_value_buffer(v80, qword_281194E18);
    (*(v24 + 16))(v16, v33, v32);
    v34 = sub_21498E670();
    v35 = sub_21498FBB0();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v83;
    if (v36)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_21488E000, v34, v35, "Unable to decode header image", v38, 2u);
      MEMORY[0x216059AC0](v38, -1, -1);
    }

    (*(v31 + 8))(v16, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_214991720;
    *(inited + 32) = sub_21498F870();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v40;
    *(inited + 48) = 0xD000000000000015;
    *(inited + 56) = 0x80000002149A1760;
    sub_2148E0B1C(inited);
    swift_setDeallocating();
    sub_21489DFCC(inited + 32, &qword_27CA1A4C8, &unk_214992030);
    v41 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v42 = sub_21498F840();
    v43 = sub_21498F7D0();

    [v41 initWithDomain:v42 code:-1 userInfo:v43];

    swift_willThrow();
    (*(v37 + 8))(v82, v17);
    goto LABEL_29;
  }

  v27 = *(v26 + 32);

  v28 = v24;
  if (!v27)
  {
    v29 = v25;
    v30 = v68;
    goto LABEL_14;
  }

  v29 = v25;
  v30 = v68;
  if (v27 == 1)
  {
    if ((sub_214990080() & 1) == 0)
    {

      goto LABEL_21;
    }

LABEL_14:

    v85 = 0;
    sub_2148BCAE8(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    sub_21498FFA0();
    if (!v30)
    {
      v44 = v83;
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v45 = v80;
      v46 = __swift_project_value_buffer(v80, qword_281194E18);
      (*(v24 + 16))(v76, v46, v45);
      v47 = sub_21498E670();
      v48 = sub_21498FBD0();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_21488E000, v47, v48, "symbolName decoded", v49, 2u);
        MEMORY[0x216059AC0](v49, -1, -1);
      }

      (*(v28 + 8))(v76, v80);
      (*(v44 + 8))(v19, v17);
      v50 = v67;
      (*(v75 + 32))(v67, v78, v79);
      v51 = v84;
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  if (sub_214990080())
  {
    goto LABEL_14;
  }

  v52 = sub_214990080();

  if (v52)
  {
LABEL_21:
    v85 = 1;
    sub_2148BCAE8(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    sub_21498FFA0();
    if (!v30)
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v53 = v80;
      v54 = __swift_project_value_buffer(v80, qword_281194E18);
      v55 = v72;
      (*(v24 + 16))(v72, v54, v53);
      v56 = sub_21498E670();
      v57 = sub_21498FBD0();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_21488E000, v56, v57, "uiImage decoded", v58, 2u);
        MEMORY[0x216059AC0](v58, -1, -1);
      }

      (*(v28 + 8))(v55, v80);
      (*(v83 + 8))(v19, v17);
      v50 = v67;
      (*(v75 + 32))(v67, v77, v79);
      v51 = v84;
LABEL_37:
      swift_storeEnumTagMultiPayload();
      sub_2148C5F40(v50, v29, type metadata accessor for HeaderImage);
      v59 = v51;
      return __swift_destroy_boxed_opaque_existential_1(v59);
    }

    goto LABEL_28;
  }

  v85 = 2;
  sub_2148BCAE8(&qword_27CA1B770, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
  sub_21498FFA0();
  if (!v30)
  {
    v61 = v83;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v80, qword_281194E18);
    v62 = v71;
    (*(v24 + 16))();
    v63 = sub_21498E670();
    v64 = sub_21498FBD0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_21488E000, v63, v64, "view decoded", v65, 2u);
      v62 = v71;
      MEMORY[0x216059AC0](v65, -1, -1);
    }

    (*(v28 + 8))(v62, v80);
    (*(v61 + 8))(v19, v17);
    v50 = v67;
    (*(v70 + 32))(v67, v73, v74);
    v51 = v84;
    goto LABEL_37;
  }

LABEL_28:
  (*(v83 + 8))(v19, v17);
LABEL_29:
  a1 = v84;
LABEL_30:
  v59 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_2148C59C4(uint64_t a1, uint64_t a2)
{
  sub_2148BCAE8(&qword_27CA1AC30, type metadata accessor for OBKLiftUIView, &unk_214993F90);
  sub_2148BCAE8(&qword_27CA1AC38, type metadata accessor for OBKLiftUIView, &unk_214993F40);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_2148C5B0C()
{
  result = qword_27CA1AC90;
  if (!qword_27CA1AC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AC80, &qword_214994000);
    sub_2148C5BC4();
    sub_2148B4C20(&qword_27CA1ACF8, &qword_27CA1AD00, &qword_214994038, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AC90);
  }

  return result;
}

unint64_t sub_2148C5BC4()
{
  result = qword_27CA1AC98;
  if (!qword_27CA1AC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1ACA0, &qword_214994008);
    sub_2148C5C50();
    sub_2148C5D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AC98);
  }

  return result;
}

unint64_t sub_2148C5C50()
{
  result = qword_27CA1ACA8;
  if (!qword_27CA1ACA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1ACB0, &qword_214994010);
    v1 = MEMORY[0x277D24540];
    sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018, MEMORY[0x277D24540]);
    sub_2148B4C20(&qword_27CA1ACC8, &qword_27CA1ACD0, &qword_214994020, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1ACA8);
  }

  return result;
}

unint64_t sub_2148C5D30()
{
  result = qword_27CA1ACD8;
  if (!qword_27CA1ACD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1ACE0, &qword_214994028);
    v1 = MEMORY[0x277D24540];
    sub_2148B4C20(&qword_27CA1ACE8, &qword_27CA1ACF0, &qword_214994030, MEMORY[0x277D24540]);
    sub_2148B4C20(&qword_27CA1ACB8, &qword_27CA1ACC0, &qword_214994018, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1ACD8);
  }

  return result;
}

uint64_t sub_2148C5E10(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_21498F470();
}

uint64_t sub_2148C5ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2148C5F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2148C5FA8()
{
  result = qword_27CA1AD48;
  if (!qword_27CA1AD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AD40, &qword_214994078);
    sub_2148C602C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AD48);
  }

  return result;
}

unint64_t sub_2148C602C()
{
  result = qword_27CA1AD50;
  if (!qword_27CA1AD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AD58, &qword_214994080);
    sub_2148BCAE8(&qword_27CA1AD60, MEMORY[0x277D231A8], MEMORY[0x277D231A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AD50);
  }

  return result;
}

uint64_t sub_2148C60E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21498E6A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for OBKLiftUIView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v45 = *(*(v1 - 1) + 64);
  v46 = v0;
  v4 = v0 + v3;

  v5 = v1[5];
  v6 = sub_21498E900();
  v7 = *(v6 - 8);
  v47 = *(v7 + 8);
  v47(v4 + v5, v6);
  v8 = v1[6];
  if (!(*(v7 + 48))(v4 + v8, 1, v6))
  {
    v47(v4 + v8, v6);
  }

  v9 = v1[7];
  v10 = type metadata accessor for HeaderImage(0);
  if (!(*(*(v10 - 8) + 48))(v4 + v9, 1, v10))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v12 = sub_21498E6A0();
      (*(*(v12 - 8) + 8))(v4 + v9, v12);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v47(v4 + v9, v6);
    }
  }

  v13 = v4 + v1[8];
  v14 = type metadata accessor for OBKLiftUIContent(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    v33 = swift_getEnumCaseMultiPayload();
    switch(v33)
    {
      case 2:
        v35 = sub_21498E6A0();
        (*(*(v35 - 8) + 8))(v13, v35);
        v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v13 + v36, 1, v37))
        {
          (*(v38 + 8))(v13 + v36, v37);
        }

        break;
      case 1:
        v34 = sub_21498E6A0();
        (*(*(v34 - 8) + 8))(v13, v34);
        break;
      case 0:

        break;
    }
  }

  v15 = v4 + v1[10];
  v16 = type metadata accessor for OBKLiftUICaption(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v17 = swift_getEnumCaseMultiPayload();
    if (v17 >= 2)
    {
      if (v17 != 2)
      {
        goto LABEL_14;
      }

      v47(v15, v6);
      v15 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD38, &qword_214994070) + 64);
    }

    v47(v15, v6);
  }

LABEL_14:
  v18 = v4 + v1[11];
  v19 = type metadata accessor for OBKLiftUIButton(0);
  v20 = *(*(v19 - 8) + 48);
  if (!v20(v18, 1, v19))
  {
    v41 = v1;
    v42 = v2;
    v43 = (v2 + 16) & ~v2;
    v47(v18, v6);
    v21 = *(v19 + 20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v23 = *(v22 - 8);
    v24 = *(v23 + 48);
    if (!v24(v18 + v21, 1, v22))
    {
      (*(v23 + 8))(v18 + v21, v22);
    }

    v40 = v23;
    v25 = *(v19 + 24);
    if (!v24(v18 + v25, 1, v22))
    {
      (*(v40 + 8))(v18 + v25, v22);
    }

    v2 = v42;
    v3 = v43;
    v1 = v41;
  }

  v26 = v4 + v1[12];
  if (!v20(v26, 1, v19))
  {
    v44 = v3;
    v27 = v2;
    v47(v26, v6);
    v28 = *(v19 + 20);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (!v31(v26 + v28, 1, v29))
    {
      (*(v30 + 8))(v26 + v28, v29);
    }

    v32 = *(v19 + 24);
    if (!v31(v26 + v32, 1, v29))
    {
      (*(v30 + 8))(v26 + v32, v29);
    }

    v2 = v27;
    v3 = v44;
  }

  return MEMORY[0x2821FE8E8](v46, v3 + v45, v2 | 7);
}

uint64_t sub_2148C6828()
{
  v1 = *(type metadata accessor for OBKLiftUIView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2148C2A0C(v2);
}

uint64_t sub_2148C6898@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_21498E900() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for OBKLiftUIView(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2148C283C(v7, a1);
}

unint64_t sub_2148C6970()
{
  result = qword_27CA1AD70;
  if (!qword_27CA1AD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AD68, &qword_214994088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AD70);
  }

  return result;
}

uint64_t sub_2148C69F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2148C6A54()
{
  v1 = *(type metadata accessor for OBKLiftUIButton(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for OBKLiftUIView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2148C3430(v0 + v2, v5);
}

uint64_t sub_2148C6B20(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2148C6BA4()
{
  result = qword_27CA1ADA0;
  if (!qword_27CA1ADA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AC68, &qword_214993FE8);
    sub_2148BCAE8(&qword_27CA1ADA8, MEMORY[0x277D24590], MEMORY[0x277D24588]);
    sub_2148B4C20(&qword_27CA1ACF8, &qword_27CA1AD00, &qword_214994038, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1ADA0);
  }

  return result;
}

unint64_t sub_2148C6C8C()
{
  result = qword_27CA1ADC8;
  if (!qword_27CA1ADC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA1ADC8);
  }

  return result;
}

unint64_t sub_2148C6CD8()
{
  result = qword_27CA1ADE0;
  if (!qword_27CA1ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1ADE0);
  }

  return result;
}

unint64_t sub_2148C6D2C()
{
  result = qword_27CA1AE18;
  if (!qword_27CA1AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE18);
  }

  return result;
}

unint64_t sub_2148C6DA0()
{
  result = qword_27CA1AE30;
  if (!qword_27CA1AE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AE38, &qword_214994108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE30);
  }

  return result;
}

unint64_t sub_2148C6E20()
{
  result = qword_27CA1AE40;
  if (!qword_27CA1AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE40);
  }

  return result;
}

unint64_t sub_2148C6E78()
{
  result = qword_27CA1AE48;
  if (!qword_27CA1AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE48);
  }

  return result;
}

unint64_t sub_2148C6ED0()
{
  result = qword_27CA1AE50;
  if (!qword_27CA1AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE50);
  }

  return result;
}

unint64_t sub_2148C6F28()
{
  result = qword_27CA1AE58;
  if (!qword_27CA1AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE58);
  }

  return result;
}

unint64_t sub_2148C6F80()
{
  result = qword_27CA1AE60;
  if (!qword_27CA1AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE60);
  }

  return result;
}

unint64_t sub_2148C6FD8()
{
  result = qword_27CA1AE68;
  if (!qword_27CA1AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE68);
  }

  return result;
}

unint64_t sub_2148C702C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2148C7078(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148C70D4(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2148C7130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

double sub_2148C71AC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
    if (swift_dynamicCast())
    {

      if ((v18 & 1) == 0 && !v17)
      {
        sub_2148C770C();
        sub_21498EE90();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE88, &unk_214994440);
        sub_2148C7688();
        sub_2148C7760();
        sub_21498EE90();

LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE70, &qword_214994438);
        sub_2148C7658();
        sub_2148C7760();
        sub_21498EE90();

        goto LABEL_17;
      }
    }

    v6 = a1;
    sub_2148C77B4();
    if (!swift_dynamicCast())
    {
LABEL_15:

      swift_getErrorValue();
      sub_214990100();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE88, &unk_214994440);
      sub_2148C7688();
      sub_2148C7760();
      sub_21498EE90();
      goto LABEL_16;
    }

    v7 = [a1 domain];
    v8 = sub_21498F870();
    v10 = v9;

    if (v8 == sub_21498F870() && v10 == v11)
    {
    }

    else
    {
      v14 = sub_214990080();

      if ((v14 & 1) == 0)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    if ([a1 code] == -1009)
    {
      sub_2148C770C();
      sub_21498EE90();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE88, &unk_214994440);
      sub_2148C7688();
      sub_2148C7760();
      sub_21498EE90();

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  *&v16 = 2777980912;
  *(&v16 + 1) = 0xA400000000000000;
  MEMORY[0x2160589C0](0xD000000000000015, 0x80000002149A0E50);
  MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
  sub_21498E0A0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AE70, &qword_214994438);
  sub_2148C7658();
  sub_2148C7760();
  sub_21498EE90();
LABEL_17:
  result = *&v16;
  *a2 = v16;
  *(a2 + 16) = v17;
  return result;
}

unint64_t sub_2148C7688()
{
  result = qword_27CA1AE80;
  if (!qword_27CA1AE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AE88, &unk_214994440);
    sub_2148C770C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE80);
  }

  return result;
}

unint64_t sub_2148C770C()
{
  result = qword_27CA1AE90;
  if (!qword_27CA1AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE90);
  }

  return result;
}

unint64_t sub_2148C7760()
{
  result = qword_27CA1AE98;
  if (!qword_27CA1AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AE98);
  }

  return result;
}

unint64_t sub_2148C77B4()
{
  result = qword_281190CA8;
  if (!qword_281190CA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281190CA8);
  }

  return result;
}

uint64_t sub_2148C7820(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2148C7760();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2148C78C0(void *a1@<X8>)
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v84 = ObjCClassFromMetadata;
  v3 = [v2 bundleForClass_];
  MEMORY[0x2160589C0](0x5F454E494C46464FLL, 0xED0000454C544954);
  MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
  v4 = sub_21498E0A0() >> 32;
  v6 = v5;

  HIDWORD(v133) = v4;
  v134 = v6;
  sub_21489CA00();
  v7 = sub_21498F100();
  v9 = v8;
  v11 = v10;
  sub_21498F050();
  sub_21498F030();
  sub_21498F060();

  v12 = sub_21498F0E0();
  v14 = v13;
  v16 = v15;

  sub_2148C85D4(v7, v9, v11 & 1);

  LODWORD(v133) = sub_21498EF00();
  v17 = sub_21498F0B0();
  v19 = v18;
  LOBYTE(v7) = v20;
  v22 = v21;
  sub_2148C85D4(v12, v14, v16 & 1);

  v23 = sub_21498EFE0();
  sub_21498EB50();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7 & 1;
  LOBYTE(v125) = v7 & 1;
  LOBYTE(v98[0]) = 0;
  v33 = sub_21498F000();
  sub_21498EB50();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  LOBYTE(v133) = 0;
  v42 = MobileGestalt_get_current_device();
  if (v42)
  {
    v43 = v42;
    v86 = v41;
    v87 = v39;
    v88 = v37;
    v89 = v35;
    v90 = v33;
    v91 = v31;
    v92 = v29;
    v93 = v27;
    v94 = v25;
    v95 = v23;
    v96 = v19;
    v97 = v17;
    v83 = v22;
    MobileGestalt_get_wapiCapability();

    v44 = objc_opt_self();
    v45 = sub_21498F840();

    v46 = [v44 modelSpecificLocalizedStringKeyForKey_];

    if (v46)
    {
      v47 = sub_21498F870();
      v49 = v48;

      v50 = [v2 bundleForClass_];
      MEMORY[0x2160589C0](v47, v49);
      MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
      sub_21498E0A0();

      v51 = sub_21498F100();
      v53 = v52;
      LOBYTE(v47) = v54;
      sub_21498F010();
      v55 = sub_21498F0E0();
      v57 = v56;
      v59 = v58;

      sub_2148C85D4(v51, v53, v47 & 1);

      sub_21498EF00();
      v60 = sub_21498F0B0();
      v62 = v61;
      LOBYTE(v51) = v63;
      v65 = v64;
      sub_2148C85D4(v55, v57, v59 & 1);

      LOBYTE(v55) = sub_21498EFE0();
      sub_21498EB50();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      LOBYTE(v57) = v51 & 1;
      v159 = v51 & 1;
      v156 = 0;
      LOBYTE(v51) = sub_21498F000();
      sub_21498EB50();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v160 = 0;
      KeyPath = swift_getKeyPath();
      *&v118 = v97;
      *(&v118 + 1) = v96;
      LOBYTE(v119) = v32;
      *(&v119 + 1) = *v165;
      DWORD1(v119) = *&v165[3];
      *(&v119 + 1) = v83;
      LOBYTE(v120) = v95;
      *(&v120 + 1) = *v164;
      DWORD1(v120) = *&v164[3];
      *(&v120 + 1) = v94;
      *&v121 = v93;
      *(&v121 + 1) = v92;
      *&v122 = v91;
      BYTE8(v122) = 0;
      *(&v122 + 9) = v167[0];
      HIDWORD(v122) = *(v167 + 3);
      LOBYTE(v123) = v90;
      DWORD1(v123) = *&v166[3];
      *(&v123 + 1) = *v166;
      *(&v123 + 1) = v89;
      *v124 = v88;
      *&v124[8] = v87;
      *&v124[16] = v86;
      v124[24] = 0;
      __src[2] = v120;
      __src[3] = v121;
      __src[0] = v118;
      __src[1] = v119;
      *(&__src[6] + 9) = *&v124[9];
      __src[4] = v122;
      __src[5] = v123;
      *&v125 = v60;
      *(&v125 + 1) = v62;
      LOBYTE(v126) = v57;
      DWORD1(v126) = *&v158[3];
      *(&v126 + 1) = *v158;
      *(&v126 + 1) = v65;
      LOBYTE(v127) = v55;
      DWORD1(v127) = *&v157[3];
      *(&v127 + 1) = *v157;
      *(&v127 + 1) = v67;
      *&v128 = v69;
      *(&v128 + 1) = v71;
      *&v129 = v73;
      BYTE8(v129) = 0;
      HIDWORD(v129) = *&v162[3];
      *(&v129 + 9) = *v162;
      LOBYTE(v130) = v51;
      DWORD1(v130) = *&v161[3];
      *(&v130 + 1) = *v161;
      *(&v130 + 1) = v75;
      *&v131 = v77;
      *(&v131 + 1) = v79;
      *v132 = v81;
      v132[8] = 0;
      *&v132[12] = *(v163 + 3);
      *&v132[9] = v163[0];
      *&v132[16] = KeyPath;
      v132[24] = 1;
      __src[6] = *v124;
      __src[8] = v125;
      __src[9] = v126;
      __src[11] = v128;
      __src[12] = v129;
      __src[10] = v127;
      *(&__src[15] + 9) = *&v132[9];
      __src[14] = v131;
      __src[15] = *v132;
      __src[13] = v130;
      memcpy(a1, __src, 0x109uLL);
      v133 = v60;
      v134 = v62;
      v135 = v57;
      *v136 = *v158;
      *&v136[3] = *&v158[3];
      v137 = v65;
      v138 = v55;
      *v139 = *v157;
      *&v139[3] = *&v157[3];
      v140 = v67;
      v141 = v69;
      v142 = v71;
      v143 = v73;
      v144 = 0;
      *&v145[3] = *&v162[3];
      *v145 = *v162;
      v146 = v51;
      *&v147[3] = *&v161[3];
      *v147 = *v161;
      v148 = v75;
      v149 = v77;
      v150 = v79;
      v151 = v81;
      v152 = 0;
      *v153 = v163[0];
      *&v153[3] = *(v163 + 3);
      v154 = KeyPath;
      v155 = 1;
      sub_2148AA824(&v118, v98, &qword_27CA1AEB8, qword_21499CF20);
      sub_2148AA824(&v125, v98, &qword_27CA1AEC0, &qword_214994590);
      sub_21489DFCC(&v133, &qword_27CA1AEC0, &qword_214994590);
      v98[0] = v97;
      v98[1] = v96;
      v99 = v32;
      *v100 = *v165;
      *&v100[3] = *&v165[3];
      v101 = v83;
      v102 = v95;
      *v103 = *v164;
      *&v103[3] = *&v164[3];
      v104 = v94;
      v105 = v93;
      v106 = v92;
      v107 = v91;
      v108 = 0;
      *&v109[3] = *(v167 + 3);
      *v109 = v167[0];
      v110 = v90;
      *&v111[3] = *&v166[3];
      *v111 = *v166;
      v112 = v89;
      v113 = v88;
      v114 = v87;
      v115 = v86;
      v116 = 0;
      sub_21489DFCC(v98, &qword_27CA1AEB8, qword_21499CF20);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_2148C8134@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21498EE70();
  v8 = 1;
  sub_2148C78C0(__src);
  memcpy(__dst, __src, 0x109uLL);
  memcpy(v10, __src, 0x109uLL);
  sub_2148AA824(__dst, v5, &qword_27CA1AEB0, &qword_214994550);
  sub_21489DFCC(v10, &qword_27CA1AEB0, &qword_214994550);
  memcpy(&v7[7], __dst, 0x109uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x110uLL);
}

void sub_2148C8208(uint64_t a3@<X8>)
{
  sub_21489CA00();

  v4 = sub_21498F100();
  v6 = v5;
  v8 = v7;
  sub_21498F010();
  v9 = sub_21498F0E0();
  v11 = v10;
  v13 = v12;

  sub_2148C85D4(v4, v6, v8 & 1);

  sub_21498EF00();
  v14 = sub_21498F0B0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2148C85D4(v9, v11, v13 & 1);

  v21 = sub_21498EFE0();
  sub_21498EB50();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  LOBYTE(v11) = v18 & 1;
  KeyPath = swift_getKeyPath();
  LOBYTE(v9) = sub_21498F000();
  sub_21498EB50();
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v11;
  *(a3 + 24) = v20;
  *(a3 + 32) = v21;
  *(a3 + 40) = v23;
  *(a3 + 48) = v25;
  *(a3 + 56) = v27;
  *(a3 + 64) = v29;
  *(a3 + 72) = 0;
  *(a3 + 80) = KeyPath;
  *(a3 + 88) = 1;
  *(a3 + 96) = v9;
  *(a3 + 104) = v31;
  *(a3 + 112) = v32;
  *(a3 + 120) = v33;
  *(a3 + 128) = v34;
  *(a3 + 136) = 0;
}

double sub_2148C83D0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_21498EE70();
  v19 = 1;
  sub_2148C8208(&v10);
  v25 = v15;
  v26 = v16;
  v27[0] = v17[0];
  *(v27 + 9) = *(v17 + 9);
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v20 = v10;
  v21 = v11;
  v28[5] = v15;
  v28[6] = v16;
  v29[0] = v17[0];
  *(v29 + 9) = *(v17 + 9);
  v28[2] = v12;
  v28[3] = v13;
  v28[4] = v14;
  v28[0] = v10;
  v28[1] = v11;
  sub_2148AA824(&v20, &v9, &qword_27CA1AEC8, &qword_214994598);
  sub_21489DFCC(v28, &qword_27CA1AEC8, &qword_214994598);
  *(&v18[6] + 7) = v26;
  *(&v18[5] + 7) = v25;
  *(&v18[2] + 7) = v22;
  *(&v18[1] + 7) = v21;
  *(&v18[7] + 7) = v27[0];
  v18[8] = *(v27 + 9);
  *(&v18[3] + 7) = v23;
  *(&v18[4] + 7) = v24;
  *(v18 + 7) = v20;
  v3 = v18[4];
  *(a1 + 97) = v18[5];
  v4 = v18[7];
  *(a1 + 113) = v18[6];
  *(a1 + 129) = v4;
  *(a1 + 145) = v18[8];
  v5 = v18[0];
  *(a1 + 33) = v18[1];
  result = *&v18[2];
  v7 = v18[3];
  *(a1 + 49) = v18[2];
  *(a1 + 65) = v7;
  *(a1 + 81) = v3;
  v8 = v19;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 17) = v5;
  return result;
}

uint64_t sub_2148C85D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2148C85E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2148C8640(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v29 = MEMORY[0x277D84F90];
    sub_2148A9BB8(0, v2, 0);
    v26 = v29;
    v4 = a1 + 64;
    result = sub_21498FD70();
    v5 = result;
    v6 = 0;
    v7 = *(a1 + 36);
    v23 = v2;
    v24 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v25 = v6;
      v10 = (*(a1 + 48) + 16 * v5);
      v27 = *v10;
      v28 = v10[1];
      swift_bridgeObjectRetain_n();
      MEMORY[0x2160589C0](8250, 0xE200000000000000);
      v11 = sub_214990050();
      MEMORY[0x2160589C0](v11);

      v12 = v26;
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_2148A9BB8((v13 > 1), v14 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 16 * v14;
      *(v15 + 32) = v27;
      *(v15 + 40) = v28;
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_25;
      }

      v4 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v9);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      v26 = v12;
      v7 = v24;
      if (v24 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v8 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v9 << 6;
        v19 = v9 + 1;
        v20 = (a1 + 72 + 8 * v9);
        while (v19 < (v8 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_2148DA17C(v5, v24, 0);
            v8 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        result = sub_2148DA17C(v5, v24, 0);
      }

LABEL_4:
      v6 = v25 + 1;
      v5 = v8;
      if (v25 + 1 == v23)
      {
        return v26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t MAInternalSettingsView.init(appleAccount:accountStore:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *(**a3)()@<X8>)
{
  v47 = a1;
  v49 = a3;
  v4 = sub_21498F710();
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21498E350();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21498E690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_281194E18);
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_21498E670();
  v16 = sub_21498FBA0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21488E000, v15, v16, "[MAInternalSettingsView] init()", v17, 2u);
    MEMORY[0x216059AC0](v17, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v18 = type metadata accessor for MARepositoryDefault();
  v19 = swift_allocObject();
  v20 = a2;
  v21 = v47;
  sub_21498E340();
  v22 = sub_21498E330();
  v24 = v23;
  v25 = *(v7 + 8);
  v25(v9, v6);
  v46 = v19;
  v19[2] = v22;
  v19[3] = v24;
  v19[4] = v20;
  v19[5] = v21;
  v26 = swift_allocObject();
  v27 = v20;
  v28 = v21;
  sub_21498E340();
  v29 = sub_21498E330();
  v31 = v30;
  v25(v9, v6);
  v26[2] = v29;
  v26[3] = v31;
  v26[4] = v27;
  v26[5] = v28;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v33 = v32;
  v34 = [objc_opt_self() defaultCenter];
  v35 = v48;
  sub_21496BCB8(v48);
  type metadata accessor for NetworkStatusProvider(0);
  swift_allocObject();
  v36 = sub_214988258();
  v50[3] = v18;
  v50[4] = &off_2826CB168;
  v50[0] = v26;
  type metadata accessor for iCloudMailAssistantProviderSwift();
  v37 = swift_allocObject();
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v50, v18);
  MEMORY[0x28223BE20](v38);
  v40 = (&v45 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40);
  v42 = sub_2148D72D0(v28, v27, *v40, v33, v34, v35, v36, 0x3FE0000000000000, 0, v37);
  __swift_destroy_boxed_opaque_existential_1(v50);
  result = swift_allocObject();
  *(result + 16) = v46;
  *(result + 24) = v42;
  v44 = v49;
  *v49 = sub_2148D836C;
  v44[1] = result;
  *(v44 + 16) = 0;
  return result;
}

char *sub_2148C8D9C(uint64_t a1, uint64_t a2)
{
  v14 = type metadata accessor for MARepositoryDefault();
  v15 = &off_2826CB168;
  v13[0] = a1;
  _s9ViewModelCMa(0);
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  MEMORY[0x28223BE20](v5);
  v7 = (&v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;

  v10 = sub_2148D6198(v9, a2, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t MAInternalSettingsView.init(provider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21498E690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v5 + 16))(v7, v8, v4);
  v9 = sub_21498E670();
  v10 = sub_21498FBA0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21488E000, v9, v10, "[MAInternalSettingsView] init()", v11, 2u);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2148994D0(*(a1 + 64) + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository, v15);
  v12 = swift_allocObject();
  result = sub_2148AAE3C(v15, v12 + 16);
  *(v12 + 56) = a1;
  *a2 = sub_2148D8374;
  *(a2 + 8) = v12;
  *(a2 + 16) = 0;
  return result;
}

char *sub_2148C90D0(uint64_t a1, uint64_t a2)
{
  sub_2148994D0(a1, v18);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v18, v18[3]);
  MEMORY[0x28223BE20](v3);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for MARepositoryDefault();
  v17[3] = v8;
  v17[4] = &off_2826CB168;
  v17[0] = v7;
  _s9ViewModelCMa(0);
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v17, v8);
  MEMORY[0x28223BE20](v10);
  v12 = (v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;

  v15 = sub_2148D6198(v14, a2, v9);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v15;
}

uint64_t MAInternalSettingsView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_2148C9358(v3, v4, v5, a1);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AEF0, &qword_2149946B0) + 36));
  *v7 = sub_2148D8380;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;

  return sub_214897F3C(v3, v4);
}

uint64_t sub_2148C9358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v143 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF28, &qword_2149947E0);
  MEMORY[0x28223BE20](v7 - 8);
  v142 = &v127 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF30, &qword_2149947E8);
  MEMORY[0x28223BE20](v9 - 8);
  v139 = &v127 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF38, &qword_2149947F0);
  v12 = *(v11 - 8);
  v130 = v11;
  v131 = v12;
  MEMORY[0x28223BE20](v11);
  v129 = &v127 - v13;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF40, &qword_2149947F8);
  v132 = *(v149 - 1);
  MEMORY[0x28223BE20](v149);
  v148 = &v127 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF48, &qword_214994800);
  v16 = *(v15 - 8);
  v133 = v15;
  v134 = v16;
  MEMORY[0x28223BE20](v15);
  v150 = &v127 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF50, &qword_214994808);
  v19 = *(v18 - 8);
  v135 = v18;
  v136 = v19;
  MEMORY[0x28223BE20](v18);
  v152 = &v127 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF58, &qword_214994810);
  v22 = *(v21 - 8);
  v137 = v21;
  v138 = v22;
  MEMORY[0x28223BE20](v21);
  v156 = &v127 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF60, &qword_214994818);
  v25 = *(v24 - 8);
  v140 = v24;
  v141 = v25;
  MEMORY[0x28223BE20](v24);
  v154 = &v127 - v26;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF68, &qword_214994820);
  v191 = *(v179 - 8);
  v27 = MEMORY[0x28223BE20](v179);
  v181 = &v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v178 = &v127 - v29;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF70, &qword_214994828);
  v190 = *(v176 - 8);
  v30 = MEMORY[0x28223BE20](v176);
  v180 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v175 = &v127 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF78, &qword_214994830);
  v34 = *(v33 - 8);
  v127 = v33;
  v128 = v34;
  MEMORY[0x28223BE20](v33);
  v147 = &v127 - v35;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF80, &qword_214994838);
  v189 = *(v171 - 8);
  v36 = MEMORY[0x28223BE20](v171);
  v177 = &v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v172 = &v127 - v38;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF88, &qword_214994840);
  v188 = *(v167 - 8);
  v39 = MEMORY[0x28223BE20](v167);
  v174 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v157 = &v127 - v41;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF90, &qword_214994848);
  v187 = *(v169 - 8);
  v42 = MEMORY[0x28223BE20](v169);
  v173 = &v127 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v158 = &v127 - v44;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AF98, &qword_214994850);
  v186 = *(v166 - 8);
  v45 = MEMORY[0x28223BE20](v166);
  v170 = &v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v159 = &v127 - v47;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFA0, &qword_214994858);
  v185 = *(v164 - 8);
  v48 = MEMORY[0x28223BE20](v164);
  v168 = &v127 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v160 = &v127 - v50;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFA8, &qword_214994860);
  v184 = *(v162 - 8);
  v51 = MEMORY[0x28223BE20](v162);
  v165 = &v127 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v151 = &v127 - v53;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFB0, &qword_214994868);
  v155 = *(v161 - 8);
  v54 = MEMORY[0x28223BE20](v161);
  v163 = &v127 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v153 = &v127 - v56;
  v223 = a1;
  v224 = a2;
  v57 = a3 & 1;
  v225 = a3 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFB8, &qword_214994870);
  sub_2148B4C20(&qword_27CA1AFC0, &qword_27CA1AFB8, &qword_214994870, MEMORY[0x277CDF028]);
  sub_21498F4C0();
  v220 = a1;
  v221 = a2;
  v58 = a2;
  v222 = a3 & 1;
  v231[0] = xmmword_2149945B0;
  v59 = MEMORY[0x277D84F90];
  LOBYTE(v231[1]) = 0;
  *(&v231[1] + 1) = MEMORY[0x277D84F90];
  *&v227[0] = 0xD000000000000059;
  *(&v227[0] + 1) = 0x80000002149A17C0;
  LOBYTE(v227[1]) = 0;
  *(&v227[1] + 1) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFC8, &qword_214994878);
  v146 = MEMORY[0x277CE14C0];
  sub_2148B4C20(&qword_27CA1AFD0, &qword_27CA1AFC8, &qword_214994878, MEMORY[0x277CE14C0]);
  sub_21498F4B0();
  v217 = a1;
  v218 = v58;
  v219 = a3 & 1;
  v231[0] = xmmword_2149945C0;
  LOBYTE(v231[1]) = 0;
  *(&v231[1] + 1) = v59;
  *&v227[0] = 0xD00000000000002DLL;
  *(&v227[0] + 1) = 0x80000002149A1820;
  LOBYTE(v227[1]) = 0;
  *(&v227[1] + 1) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFD8, &qword_214994880);
  sub_2148D8738(&qword_27CA1AFE0, &qword_27CA1AFD8, &qword_214994880, sub_2148D8590);
  sub_21498F4B0();
  v214 = a1;
  v215 = v58;
  v216 = a3 & 1;
  v231[0] = xmmword_2149945D0;
  LOBYTE(v231[1]) = 0;
  *(&v231[1] + 1) = v59;
  *&v227[0] = 0xD000000000000016;
  *(&v227[0] + 1) = 0x80000002149A1850;
  LOBYTE(v227[1]) = 0;
  *(&v227[1] + 1) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B048, &qword_2149948B8);
  sub_2148D8738(&qword_27CA1B050, &qword_27CA1B048, &qword_2149948B8, sub_2148D87E8);
  sub_21498F4B0();
  v211 = a1;
  v212 = v58;
  v213 = a3 & 1;
  v231[0] = xmmword_2149945E0;
  LOBYTE(v231[1]) = 0;
  *(&v231[1] + 1) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B078, &qword_2149948D0);
  v60 = v146;
  sub_2148B4C20(&qword_27CA1B080, &qword_27CA1B078, &qword_2149948D0, v146);
  sub_21498F4A0();
  v208 = a1;
  v209 = v58;
  v210 = v57;
  *&v231[0] = 0xD000000000000019;
  *(&v231[0] + 1) = 0x80000002149A1870;
  LOBYTE(v231[1]) = 0;
  v61 = MEMORY[0x277D84F90];
  *(&v231[1] + 1) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B088, &qword_2149948D8);
  sub_2148B4C20(&qword_27CA1B090, &qword_27CA1B088, &qword_2149948D8, v60);
  sub_21498F4A0();
  v205 = a1;
  v206 = v58;
  v207 = v57;
  v231[0] = xmmword_2149945F0;
  LOBYTE(v231[1]) = 0;
  *(&v231[1] + 1) = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B098, &qword_2149948E0);
  sub_2148B4C20(&qword_27CA1B0A0, &qword_27CA1B098, &qword_2149948E0, v60);
  sub_21498F4A0();
  v183 = _s9ViewModelCMa(0);
  v192 = sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v62 = swift_allocObject();
  *(v62 + 16) = a1;
  *(v62 + 24) = v58;
  *(v62 + 32) = v57;
  sub_214897F3C(a1, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0A8, &qword_214994910);
  sub_2148D88D0();
  sub_2148D8994();
  v63 = v127;
  v64 = v147;
  sub_21498F1E0();

  (*(v128 + 8))(v64, v63);
  v202 = a1;
  v203 = v58;
  v204 = v57;
  v231[0] = xmmword_214994600;
  LOBYTE(v231[1]) = 0;
  *(&v231[1] + 1) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C0, &qword_214994918);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B0C8, &qword_214994920);
  v66 = sub_2148B4C20(&qword_27CA1B0D0, &qword_27CA1B0C8, &qword_214994920, MEMORY[0x277CDF068]);
  *&v227[0] = v65;
  *(&v227[0] + 1) = MEMORY[0x277D839B0];
  *&v227[1] = v66;
  *(&v227[1] + 1) = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  sub_21498F4A0();
  v199 = a1;
  v200 = v58;
  v201 = v57;
  *&v231[0] = 0xD000000000000012;
  *(&v231[0] + 1) = 0x80000002149A15F0;
  LOBYTE(v231[1]) = 0;
  *(&v231[1] + 1) = MEMORY[0x277D84F90];
  *&v227[0] = 0xD00000000000004FLL;
  *(&v227[0] + 1) = 0x80000002149A1890;
  LOBYTE(v227[1]) = 0;
  *(&v227[1] + 1) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0D8, &qword_214994928);
  sub_2148B4C20(&qword_27CA1B0E0, &qword_27CA1B0D8, &qword_214994928, v146);
  v67 = v129;
  sub_21498F4B0();
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v227[4] = v231[4];
  v227[5] = v231[5];
  v227[6] = v231[6];
  LOBYTE(v227[7]) = v231[7];
  v227[0] = v231[0];
  v227[1] = v231[1];
  v227[2] = v231[2];
  v227[3] = v231[3];
  v68 = swift_allocObject();
  *(v68 + 16) = a1;
  *(v68 + 24) = v58;
  v144 = v58;
  LODWORD(v182) = v57;
  *(v68 + 32) = v57;
  v69 = a1;
  sub_214897F3C(a1, v58);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0E8, &qword_214994958);
  v146 = sub_2148D8A74();
  v70 = sub_2148D8B30();
  v147 = sub_2148D8B84();
  v71 = v130;
  sub_21498F1F0();

  v228[4] = v227[4];
  v228[5] = v227[5];
  v228[6] = v227[6];
  v229 = v227[7];
  v228[0] = v227[0];
  v228[1] = v227[1];
  v228[2] = v227[2];
  v228[3] = v227[3];
  sub_21489DFCC(v228, &qword_27CA1B118, &qword_214994968);
  (*(v131 + 8))(v67, v71);
  v72 = v69;
  v73 = v144;
  v74 = v182;
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v75 = swift_allocObject();
  *(v75 + 16) = v72;
  *(v75 + 24) = v73;
  *(v75 + 32) = v74;
  sub_214897F3C(v72, v73);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B120, &qword_214994998);
  *&v231[0] = v71;
  *(&v231[0] + 1) = &type metadata for AutomationRecommendation;
  *&v231[1] = v128;
  *(&v231[1] + 1) = v146;
  *&v231[2] = v70;
  *(&v231[2] + 1) = v147;
  v147 = MEMORY[0x277CDEE40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v77 = sub_2148D8C48();
  v78 = v149;
  v79 = v148;
  sub_21498F1E0();

  (*(v132 + 8))(v79, v78);
  v80 = v144;
  LOBYTE(v71) = v182;
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v227[4] = v231[4];
  v227[5] = v231[5];
  v227[6] = v231[6];
  v227[7] = v231[7];
  v227[0] = v231[0];
  v227[1] = v231[1];
  v227[2] = v231[2];
  v227[3] = v231[3];
  v81 = swift_allocObject();
  *(v81 + 16) = v72;
  *(v81 + 24) = v80;
  v82 = v80;
  LOBYTE(v80) = v71;
  *(v81 + 32) = v71;
  v83 = v82;
  sub_214897F3C(v72, v82);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B140, &qword_2149949D0);
  v226[0] = v149;
  v226[1] = v131;
  v226[2] = OpaqueTypeConformance2;
  v226[3] = v77;
  v148 = swift_getOpaqueTypeConformance2();
  v149 = sub_2148D8D0C();
  v84 = sub_2148D8D60();
  v85 = v133;
  v86 = v150;
  sub_21498F1F0();

  v230[4] = v227[4];
  v230[5] = v227[5];
  v230[6] = v227[6];
  v230[7] = v227[7];
  v230[0] = v227[0];
  v230[1] = v227[1];
  v230[2] = v227[2];
  v230[3] = v227[3];
  sub_21489DFCC(v230, &qword_27CA1B168, &qword_2149949E0);
  (*(v134 + 8))(v86, v85);
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  memcpy(v226, v227, 0x189uLL);
  v87 = swift_allocObject();
  v145 = v72;
  *(v87 + 16) = v72;
  *(v87 + 24) = v83;
  *(v87 + 32) = v80;
  v88 = v72;
  v89 = v83;
  sub_214897F3C(v88, v83);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B170, &qword_214994A10);
  *&v231[0] = v85;
  *(&v231[0] + 1) = &type metadata for UnifiedRule;
  *&v231[1] = v146;
  *(&v231[1] + 1) = v148;
  *&v231[2] = v149;
  *(&v231[2] + 1) = v84;
  v149 = swift_getOpaqueTypeConformance2();
  v150 = sub_2148D8E24();
  v126 = sub_2148D8E78(&qword_27CA1B180, &qword_27CA1B170, &qword_214994A10, sub_2148D8EFC);
  v90 = v135;
  v91 = v152;
  sub_21498F1F0();

  memcpy(v231, v226, 0x189uLL);
  sub_21489DFCC(v231, &qword_27CA1B190, &qword_214994A18);
  (*(v136 + 8))(v91, v90);
  v92 = v145;
  LOBYTE(v85) = v182;
  sub_21498EB90();
  swift_getKeyPath();
  v93 = v139;
  sub_21498EC90();

  v196 = v92;
  v197 = v89;
  v198 = v85;
  v152 = type metadata accessor for ErrorContainer(0);
  *&v227[0] = v90;
  *(&v227[0] + 1) = &type metadata for MATip;
  *&v227[1] = v134;
  *(&v227[1] + 1) = v149;
  *&v227[2] = v150;
  *(&v227[2] + 1) = v126;
  v150 = swift_getOpaqueTypeConformance2();
  v94 = sub_2148D8F68(&qword_27CA1B198, type metadata accessor for ErrorContainer, &unk_2149936A4);
  v95 = v137;
  v96 = v156;
  sub_21498F1D0();
  sub_21489DFCC(v93, &qword_27CA1AF30, &qword_2149947E8);
  v97 = v95;
  (*(v138 + 8))(v96, v95);
  v98 = v145;
  v99 = v89;
  LOBYTE(v89) = v182;
  sub_21498EB90();
  swift_getKeyPath();
  v100 = v142;
  sub_21498EC90();

  v193 = v98;
  v194 = v99;
  v195 = v89;
  type metadata accessor for ResultContainer(0);
  *&v227[0] = v97;
  *(&v227[0] + 1) = v152;
  *&v227[1] = v150;
  *(&v227[1] + 1) = v94;
  swift_getOpaqueTypeConformance2();
  sub_2148D8F68(&qword_27CA1B1A0, type metadata accessor for ResultContainer, &unk_2149936DC);
  v101 = v140;
  v102 = v154;
  sub_21498F1D0();
  sub_21489DFCC(v100, &qword_27CA1AF28, &qword_2149947E0);
  (*(v141 + 8))(v102, v101);
  v148 = *(v155 + 16);
  (v148)(v163, v153, v161);
  v103 = *(v184 + 16);
  v183 = (v184 + 16);
  v192 = v103;
  v103(v165, v151, v162);
  v182 = *(v185 + 16);
  v182(v168, v160, v164);
  v156 = *(v186 + 16);
  (v156)(v170, v159, v166);
  v154 = *(v187 + 16);
  (v154)(v173, v158, v169);
  v152 = *(v188 + 16);
  (v152)(v174, v157, v167);
  v150 = *(v189 + 16);
  (v150)(v177, v172, v171);
  v149 = *(v190 + 16);
  (v149)(v180, v175, v176);
  v147 = *(v191 + 16);
  (v147)(v181, v178, v179);
  v104 = v143;
  (v148)(v143, v163, v161);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1A8, &qword_214994A70);
  v192(v104 + v105[12], v165, v162);
  v182((v104 + v105[16]), v168, v164);
  (v156)(v104 + v105[20], v170, v166);
  (v154)(v104 + v105[24], v173, v169);
  v106 = v167;
  (v152)(v104 + v105[28], v174, v167);
  v107 = v171;
  (v150)(v104 + v105[32], v177, v171);
  v108 = v176;
  (v149)(v104 + v105[36], v180, v176);
  v109 = v104 + v105[40];
  v110 = v179;
  (v147)(v109, v181, v179);
  v111 = *(v191 + 8);
  v191 += 8;
  v192 = v111;
  (v111)(v178, v110);
  v112 = *(v190 + 8);
  v190 += 8;
  v183 = v112;
  v112(v175, v108);
  v113 = *(v189 + 8);
  v189 += 8;
  v182 = v113;
  (v113)(v172, v107);
  v114 = *(v188 + 8);
  v188 += 8;
  v178 = v114;
  (v114)(v157, v106);
  v115 = *(v187 + 8);
  v187 += 8;
  v175 = v115;
  v116 = v169;
  (v115)(v158, v169);
  v117 = *(v186 + 8);
  v186 += 8;
  v172 = v117;
  v118 = v166;
  (v117)(v159, v166);
  v119 = *(v185 + 8);
  v185 += 8;
  v120 = v164;
  v119(v160, v164);
  v121 = *(v184 + 8);
  v184 += 8;
  v122 = v162;
  v121(v151, v162);
  v123 = *(v155 + 8);
  v124 = v161;
  v123(v153, v161);
  (v192)(v181, v179);
  v183(v180, v176);
  (v182)(v177, v171);
  (v178)(v174, v167);
  (v175)(v173, v116);
  (v172)(v170, v118);
  v119(v168, v120);
  v121(v165, v122);
  return (v123)(v163, v124);
}

uint64_t sub_2148CB520(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3 & 1;
  sub_214897F3C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B3C8, &qword_214995230);
  sub_2148B4C20(&qword_27CA1B3D0, &qword_27CA1B3C8, &qword_214995230, MEMORY[0x277CE1138]);

  return sub_21498F450();
}

uint64_t sub_2148CB620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  sub_21498FAB0();
  *(v6 + 32) = sub_21498FAA0();
  v8 = sub_21498FA50();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return MEMORY[0x2822009F8](sub_2148CB6BC, v8, v7);
}

uint64_t sub_2148CB6BC()
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  *(v0 + 56) = sub_21498EB80();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2148CB7CC;

  return sub_2148BBBB8();
}

uint64_t sub_2148CB7CC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2148DA43C, v3, v2);
}

__n128 sub_2148CB910@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_21498EE10();
  v13 = 1;
  sub_2148CB984(v9);
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v7 = v9[0];
  result = v9[1];
  v8 = v13;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
  *(a1 + 24) = v7;
  *(a1 + 40) = result;
  *(a1 + 56) = v3;
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  return result;
}

uint64_t sub_2148CB984@<X0>(uint64_t a1@<X8>)
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_21498F3F0();
  v5 = sub_21498F370();
  KeyPath = swift_getKeyPath();
  *a1 = v4;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v5;
  *(a1 + 24) = xmmword_214994610;
  *(a1 + 40) = 0;
  *(a1 + 48) = MEMORY[0x277D84F90];

  sub_2148D9930(0x64615220656C6946, 0xEA00000000007261, 0);

  sub_2148C85D4(0x64615220656C6946, 0xEA00000000007261, 0);
}

uint64_t sub_2148CBACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v132 = a4;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B010, &qword_214994898);
  MEMORY[0x28223BE20](v123);
  v116 = &v113 - v7;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B040, &qword_2149948B0);
  MEMORY[0x28223BE20](v131);
  v114 = (&v113 - v8);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B340, &qword_2149950B0);
  MEMORY[0x28223BE20](v125);
  v129 = &v113 - v9;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B348, &qword_2149950B8);
  MEMORY[0x28223BE20](v120);
  v122 = &v113 - v10;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B350, &qword_2149950C0);
  MEMORY[0x28223BE20](v127);
  v124 = &v113 - v11;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B358, &qword_2149950C8);
  MEMORY[0x28223BE20](v121);
  v119 = (&v113 - v12);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B360, &qword_2149950D0);
  v142 = *(v135 - 8);
  v13 = MEMORY[0x28223BE20](v135);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v113 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B368, &qword_2149950D8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v130 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v113 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B370, &qword_2149950E0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v117 = &v113 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B378, &qword_2149950E8);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v126 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v113 - v29;
  v31 = _s9ViewModelCMa(0);
  v32 = sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  v139 = a3;
  v140 = a1;
  v141 = a2;
  v136 = v32;
  v137 = v31;
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v33 = v150;
  v133 = v23;
  v128 = v22;
  v138 = v30;
  v134 = v17;
  v118 = v15;
  if (!v150)
  {
    (*(v24 + 56))(v30, 1, 1, v23);
    v59 = v140;
    v60 = v141;
    v61 = v139;
LABEL_26:
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v73 = v150;
    if (v150)
    {
      if (*(v150 + 16))
      {
        v148 = 0;
        v149 = 0;
        v74 = 0;
        v75 = 0;
        v147 = 0;
      }

      else
      {
        v149 = sub_21498EE10();
        v147 = 0x80000002149A1A30;
        v75 = 0xD000000000000018;
        v148 = MEMORY[0x277D84F90];
        v74 = 1;
      }

      v88 = v141;
      v150 = v73;
      v89 = swift_allocObject();
      v90 = v140;
      *(v89 + 16) = v140;
      *(v89 + 24) = v88;
      *(v89 + 32) = v139 & 1;
      sub_214897F3C(v90, v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B398, &qword_214995188);
      sub_2148B4C20(&qword_27CA1B3A0, &qword_27CA1B398, &qword_214995188, MEMORY[0x277D83980]);
      sub_2148DA05C();
      v111 = sub_2148D8B30();
      v91 = v134;
      sub_21498F490();
      v92 = *(v142 + 16);
      v93 = v118;
      v94 = v135;
      v92(v118, v91, v135);
      v96 = v148;
      v95 = v149;
      v97 = v119;
      *v119 = v149;
      v97[1] = 0;
      v97[2] = v74;
      v97[3] = v75;
      v98 = v147;
      v97[4] = v147;
      v97[5] = 0;
      v97[6] = v96;
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B3C0, &unk_214995198);
      v92(v97 + *(v99 + 48), v93, v94);
      v149 = v95;
      v146 = v74;
      sub_2148D9AE0(v95, 0, v74, v75, v98, 0, v96);
      v100 = *(v142 + 8);
      v142 += 8;
      v100(v93, v94);
      sub_2148D9B2C(v95, 0, v74, v75, v98, 0, v96);
      sub_2148AA824(v97, v122, &qword_27CA1B358, &qword_2149950C8);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1B388, &qword_27CA1B358, &qword_2149950C8, MEMORY[0x277CE14C0]);
      sub_2148D8648();
      v101 = v124;
      sub_21498EE90();
      sub_2148AA824(v101, v129, &qword_27CA1B350, &qword_2149950C0);
      swift_storeEnumTagMultiPayload();
      sub_2148D9F2C();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
      v84 = v128;
      sub_21498EE90();
      sub_2148D9B2C(v149, 0, v146, v75, v98, 0, v96);
      sub_21489DFCC(v101, &qword_27CA1B350, &qword_2149950C0);
      sub_21489DFCC(v97, &qword_27CA1B358, &qword_2149950C8);
      v100(v134, v135);
    }

    else
    {
      sub_21498EB80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21498EA10();

      v76 = v150;
      if (v150)
      {
        v77 = swift_allocObject();
        *(v77 + 16) = v59;
        *(v77 + 24) = v60;
        *(v77 + 32) = v61 & 1;
        *(v77 + 40) = v76;
        sub_214897F3C(v59, v60);
        v78 = v76;
        v79 = v116;
        sub_21498F450();
        v80 = sub_21498F2A0();
        KeyPath = swift_getKeyPath();
        v82 = (v79 + *(v123 + 36));
        *v82 = KeyPath;
        v82[1] = v80;
        sub_2148AA824(v79, v122, &qword_27CA1B010, &qword_214994898);
        swift_storeEnumTagMultiPayload();
        sub_2148B4C20(&qword_27CA1B388, &qword_27CA1B358, &qword_2149950C8, MEMORY[0x277CE14C0]);
        sub_2148D8648();
        v83 = v124;
        sub_21498EE90();
        sub_2148AA824(v83, v129, &qword_27CA1B350, &qword_2149950C0);
        swift_storeEnumTagMultiPayload();
        sub_2148D9F2C();
        sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
        v84 = v128;
        sub_21498EE90();

        sub_21489DFCC(v83, &qword_27CA1B350, &qword_2149950C0);
        v85 = v79;
        v86 = &qword_27CA1B010;
        v87 = &qword_214994898;
      }

      else
      {
        v102 = sub_21498EE10();
        v103 = v114;
        *v114 = v102;
        *(v103 + 8) = 0;
        *(v103 + 16) = 1;
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B200, &qword_214994CF8);
        sub_2148D2D14(v103 + *(v104 + 44));
        sub_2148AA824(v103, v129, &qword_27CA1B040, &qword_2149948B0);
        swift_storeEnumTagMultiPayload();
        sub_2148D9F2C();
        sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
        v84 = v128;
        sub_21498EE90();
        v85 = v103;
        v86 = &qword_27CA1B040;
        v87 = &qword_2149948B0;
      }

      sub_21489DFCC(v85, v86, v87);
    }

    v105 = v138;
    v106 = v126;
    sub_2148AA824(v138, v126, &qword_27CA1B378, &qword_2149950E8);
    v107 = v130;
    sub_2148AA824(v84, v130, &qword_27CA1B368, &qword_2149950D8);
    v108 = v132;
    sub_2148AA824(v106, v132, &qword_27CA1B378, &qword_2149950E8);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B390, &qword_214995180);
    sub_2148AA824(v107, v108 + *(v109 + 48), &qword_27CA1B368, &qword_2149950D8);
    sub_21489DFCC(v84, &qword_27CA1B368, &qword_2149950D8);
    sub_21489DFCC(v105, &qword_27CA1B378, &qword_2149950E8);
    sub_21489DFCC(v107, &qword_27CA1B368, &qword_2149950D8);
    return sub_21489DFCC(v106, &qword_27CA1B378, &qword_2149950E8);
  }

  v115 = v24;
  v144 = *(v150 + 16);
  if (!v144)
  {
    v36 = MEMORY[0x277D84F98];
LABEL_21:

    v62 = sub_2148C8640(v36);

    v150 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
    sub_2148B4C20(&qword_281190CF0, &qword_27CA1A378, &qword_214993B80, MEMORY[0x277D83958]);
    v63 = sub_21498F810();
    v65 = v64;

    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    if (v150 == 2 || (v150 & 1) == 0)
    {
      v66 = 0x80000002149A1A50;
      v67 = 0xD000000000000010;
    }

    else
    {
      v66 = 0xE900000000000029;
      v67 = 0x656E696C6E492820;
    }

    v68 = swift_allocObject();
    v149 = &v113;
    v59 = v140;
    v60 = v141;
    *(v68 + 16) = v140;
    *(v68 + 24) = v60;
    v61 = v139;
    *(v68 + 32) = v139 & 1;
    MEMORY[0x28223BE20](v68);
    *(&v113 - 4) = v67;
    *(&v113 - 3) = v66;
    v111 = v63;
    v112 = v65;
    sub_214897F3C(v59, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B228, &qword_214994D68);
    sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68, MEMORY[0x277CE1138]);
    v69 = v117;
    sub_21498F450();

    v70 = sub_21498EEF0();
    v71 = v133;
    *(v69 + *(v133 + 36)) = v70;
    v72 = v138;
    sub_2148B4C68(v69, v138, &qword_27CA1B370, &qword_2149950E0);
    (*(v115 + 56))(v72, 0, 1, v71);
    goto LABEL_26;
  }

  v34 = 0;
  v35 = (v150 + 72);
  v36 = MEMORY[0x277D84F98];
  v143 = v150;
  while (v34 < *(v33 + 16))
  {
    v37 = *(v35 - 4);
    v39 = v35[6];
    v38 = v35[7];
    v40 = v35[2];
    v41 = *v35;
    v42 = *(v35 - 2);
    v145 = v35[5];

    swift_bridgeObjectRetain_n();
    v149 = v37;

    v148 = v42;

    v147 = v41;

    v146 = v40;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v150 = v36;
    v45 = sub_214907F9C(v39, v38);
    v46 = v36[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_37;
    }

    v49 = v44;
    if (v36[3] >= v48)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v44)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_214985948();
        v36 = v150;
        if (v49)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_21495622C(v48, isUniquelyReferenced_nonNull_native);
      v36 = v150;
      v50 = sub_214907F9C(v39, v38);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_40;
      }

      v45 = v50;
      if (v49)
      {
LABEL_12:

        goto LABEL_16;
      }
    }

    v36[(v45 >> 6) + 8] |= 1 << v45;
    v52 = (v36[6] + 16 * v45);
    *v52 = v39;
    v52[1] = v38;
    *(v36[7] + 8 * v45) = 0;
    v53 = v36[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_39;
    }

    v36[2] = v55;
LABEL_16:
    v56 = v36[7];
    v57 = *(v56 + 8 * v45);
    v54 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v54)
    {
      goto LABEL_38;
    }

    ++v34;
    *(v56 + 8 * v45) = v58;

    v35 += 13;
    v33 = v143;
    if (v144 == v34)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_2149900F0();
  __break(1u);
  return result;
}

double sub_2148CCD8C@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_21498EE10();
  v20 = 1;
  sub_2148CCEB4(a3, a4, &v14);
  v23 = v16;
  v24 = v17;
  v21 = v14;
  v22 = v15;
  v26[2] = v16;
  v26[3] = v17;
  v26[4] = v18;
  v26[1] = v15;
  v25 = v18;
  v26[0] = v14;
  sub_2148AA824(&v21, &v13, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(v26, &qword_27CA1B220, &qword_214994D60);
  *&v19[7] = v21;
  *&v19[71] = v25;
  *&v19[55] = v24;
  *&v19[39] = v23;
  *&v19[23] = v22;
  v9 = *&v19[48];
  *(a5 + 49) = *&v19[32];
  *(a5 + 65) = v9;
  *(a5 + 81) = *&v19[64];
  result = *v19;
  v11 = *&v19[16];
  *(a5 + 17) = *v19;
  v12 = v20;
  *a5 = v8;
  *(a5 + 8) = 0;
  *(a5 + 16) = v12;
  *(a5 + 96) = *&v19[79];
  *(a5 + 33) = v11;
  return result;
}

uint64_t sub_2148CCEB4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{

  sub_21498F070();
  v6 = sub_21498F0E0();
  v8 = v7;
  v10 = v9;

  sub_21498F3A0();
  v11 = sub_21498F0A0();
  v13 = v12;
  v15 = v14;

  sub_2148C85D4(v6, v8, v10 & 1);

  v16 = MEMORY[0x277D84F90];
  v17 = sub_21498F0C0();
  v19 = v18;
  LOBYTE(v8) = v20;
  v22 = v21;
  sub_2148C85D4(v11, v13, v15 & 1);

  *a5 = v17;
  *(a5 + 8) = v19;
  *(a5 + 16) = v8 & 1;
  *(a5 + 24) = v22;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = 0;
  *(a5 + 72) = v16;

  sub_2148D9930(v17, v19, v8 & 1);

  sub_2148D9930(a3, a4, 0);

  sub_2148C85D4(a3, a4, 0);

  sub_2148C85D4(v17, v19, v8 & 1);
}

uint64_t sub_2148CD0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21 = *(a1 + 96);
  v10 = *(a1 + 80);
  v20[4] = *(a1 + 64);
  v20[5] = v10;
  v11 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v11;
  v12 = *(a1 + 48);
  v20[2] = *(a1 + 32);
  v20[3] = v12;
  v13 = swift_allocObject();
  v14 = *(a1 + 32);
  *(v13 + 88) = *(a1 + 48);
  v15 = *(a1 + 80);
  *(v13 + 104) = *(a1 + 64);
  *(v13 + 120) = v15;
  v16 = *(a1 + 16);
  *(v13 + 40) = *a1;
  *(v13 + 56) = v16;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4 & 1;
  *(v13 + 136) = *(a1 + 96);
  *(v13 + 72) = v14;
  sub_214897F3C(a2, a3);
  sub_2148D93C8(v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B228, &qword_214994D68);
  sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68, MEMORY[0x277CE1138]);
  sub_21498F450();

  v17 = sub_21498EEF0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B370, &qword_2149950E0);
  *(a5 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_2148CD29C(uint64_t a1, uint64_t a2, char a3, __int128 *a4)
{
  v5 = a4[5];
  v14 = a4[4];
  v15 = v5;
  v16 = *(a4 + 96);
  v6 = a4[1];
  v10 = *a4;
  v11 = v6;
  v7 = a4[3];
  v12 = a4[2];
  v13 = v7;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148D93C8(a4, v9);
  return sub_21498EA20();
}

double sub_2148CD3A0@<D0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_21498EE10();
  v18 = 1;
  sub_2148CD4C0(a1, &v12);
  v21 = v14;
  v22 = v15;
  v19 = v12;
  v20 = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  v24[1] = v13;
  v23 = v16;
  v24[0] = v12;
  sub_2148AA824(&v19, &v11, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(v24, &qword_27CA1B220, &qword_214994D60);
  *&v17[7] = v19;
  *&v17[71] = v23;
  *&v17[55] = v22;
  *&v17[39] = v21;
  *&v17[23] = v20;
  v7 = *&v17[48];
  *(a4 + 49) = *&v17[32];
  *(a4 + 65) = v7;
  *(a4 + 81) = *&v17[64];
  result = *v17;
  v9 = *&v17[16];
  *(a4 + 17) = *v17;
  v10 = v18;
  *a4 = v6;
  *(a4 + 8) = 0;
  *(a4 + 16) = v10;
  *(a4 + 96) = *&v17[79];
  *(a4 + 33) = v9;
  return result;
}

uint64_t sub_2148CD4C0@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{

  sub_21498F070();
  v5 = sub_21498F0E0();
  v7 = v6;
  v9 = v8;

  sub_21498F3A0();
  v10 = sub_21498F0A0();
  v12 = v11;
  v14 = v13;

  sub_2148C85D4(v5, v7, v9 & 1);

  v15 = sub_21498F0C0();
  v17 = v16;
  LOBYTE(v7) = v18;
  v20 = v19;
  sub_2148C85D4(v10, v12, v14 & 1);

  v21 = a1[10];
  v22 = a1[11];
  *a4 = v15;
  *(a4 + 8) = v17;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v20;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v21;
  *(a4 + 56) = v22;
  *(a4 + 64) = 0;
  *(a4 + 72) = MEMORY[0x277D84F90];

  sub_2148D9930(v15, v17, v7 & 1);

  sub_2148D9930(v21, v22, 0);

  sub_2148C85D4(v21, v22, 0);

  sub_2148C85D4(v15, v17, v7 & 1);
}

uint64_t sub_2148CD6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v67 = a4;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B010, &qword_214994898);
  MEMORY[0x28223BE20](v60);
  v62 = &v52 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B040, &qword_2149948B0);
  MEMORY[0x28223BE20](v66);
  v55[1] = &v52 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2D8, &qword_214994FB8);
  MEMORY[0x28223BE20](v63);
  v65 = &v52 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2E0, &qword_214994FC0);
  MEMORY[0x28223BE20](v57);
  v59 = &v52 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AFF0, &qword_214994888);
  MEMORY[0x28223BE20](v64);
  v61 = &v52 - v11;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B000, &qword_214994890);
  MEMORY[0x28223BE20](v58);
  v13 = (&v52 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2E8, &qword_214994FC8);
  v15 = *(v14 - 8);
  v69 = v14;
  v70 = v15;
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = &v52 - v18;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  v19 = a1;
  v20 = a2;
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v21 = v71;
  if (v71)
  {
    if (v71[2])
    {
      v22 = 0;
      v53 = 0;
      v54 = 0;
      v55[0] = 0;
      v55[1] = 0;
    }

    else
    {
      HIBYTE(v55[1]) = -18;
      v54 = MEMORY[0x277D84F90];
      strcpy(v55, "No Rules Found");
      v53 = 1;
      v22 = sub_21498EE10();
    }

    v71 = v21;
    v36 = swift_allocObject();
    *(v36 + 16) = a1;
    *(v36 + 24) = v20;
    *(v36 + 32) = a3 & 1;
    sub_214897F3C(a1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A368, &qword_214991810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2F0, &qword_214995068);
    sub_2148B4C20(&qword_27CA1B2F8, &qword_27CA1A368, &qword_214991810, MEMORY[0x277D83980]);
    sub_2148D9CC8();
    sub_2148D8D0C();
    v37 = v68;
    sub_21498F490();
    v39 = v69;
    v38 = v70;
    v40 = *(v70 + 16);
    v41 = v56;
    v40(v56, v37, v69);
    v62 = v22;
    *v13 = v22;
    v13[1] = 0;
    v42 = v53;
    v43 = v54;
    v44 = v55[0];
    v45 = v55[1];
    v13[2] = v53;
    v13[3] = v44;
    v13[4] = v45;
    v13[5] = 0;
    v13[6] = v43;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B318, &qword_214995078);
    v40(v13 + *(v46 + 48), v41, v39);
    v47 = v62;
    sub_2148D9AE0(v62, 0, v42, v44, v45, 0, v43);
    v48 = *(v38 + 8);
    v70 = v38 + 8;
    v52 = v48;
    v48(v41, v39);
    sub_2148D9B2C(v47, 0, v42, v44, v45, 0, v43);
    sub_2148AA824(v13, v59, &qword_27CA1B000, &qword_214994890);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1AFF8, &qword_27CA1B000, &qword_214994890, MEMORY[0x277CE14C0]);
    sub_2148D8648();
    v49 = v61;
    sub_21498EE90();
    sub_2148AA824(v49, v65, &qword_27CA1AFF0, &qword_214994888);
    swift_storeEnumTagMultiPayload();
    sub_2148D8590();
    sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
    sub_21498EE90();
    sub_2148D9B2C(v62, 0, v42, v44, v45, 0, v43);
    sub_21489DFCC(v49, &qword_27CA1AFF0, &qword_214994888);
    sub_21489DFCC(v13, &qword_27CA1B000, &qword_214994890);
    return v52(v68, v69);
  }

  else
  {
    v23 = v55[1];
    v24 = v62;
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v25 = v71;
    if (v71)
    {
      v26 = swift_allocObject();
      *(v26 + 16) = v19;
      *(v26 + 24) = v20;
      *(v26 + 32) = a3 & 1;
      *(v26 + 40) = v25;
      sub_214897F3C(v19, v20);
      v27 = v25;
      sub_21498F450();
      v28 = sub_21498F2A0();
      KeyPath = swift_getKeyPath();
      v30 = v59;
      v31 = (v24 + *(v60 + 36));
      *v31 = KeyPath;
      v31[1] = v28;
      v32 = &qword_214994898;
      sub_2148AA824(v24, v30, &qword_27CA1B010, &qword_214994898);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1AFF8, &qword_27CA1B000, &qword_214994890, MEMORY[0x277CE14C0]);
      sub_2148D8648();
      v33 = v61;
      sub_21498EE90();
      sub_2148AA824(v33, v65, &qword_27CA1AFF0, &qword_214994888);
      swift_storeEnumTagMultiPayload();
      sub_2148D8590();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
      sub_21498EE90();

      sub_21489DFCC(v33, &qword_27CA1AFF0, &qword_214994888);
      v34 = v24;
      v35 = &qword_27CA1B010;
    }

    else
    {
      *v23 = sub_21498EE10();
      *(v23 + 8) = 0;
      *(v23 + 16) = 1;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B200, &qword_214994CF8);
      sub_2148D2D14(v23 + *(v51 + 44));
      v32 = &qword_2149948B0;
      sub_2148AA824(v23, v65, &qword_27CA1B040, &qword_2149948B0);
      swift_storeEnumTagMultiPayload();
      sub_2148D8590();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
      sub_21498EE90();
      v34 = v23;
      v35 = &qword_27CA1B040;
    }

    return sub_21489DFCC(v34, v35, v32);
  }
}

uint64_t sub_2148CE138@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a1[5];
  v20[4] = a1[4];
  v20[5] = v10;
  v20[6] = a1[6];
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v12 = a1[3];
  v20[2] = a1[2];
  v20[3] = v12;
  v13 = swift_allocObject();
  v14 = a1[2];
  *(v13 + 88) = a1[3];
  v15 = a1[5];
  *(v13 + 104) = a1[4];
  *(v13 + 120) = v15;
  *(v13 + 136) = a1[6];
  v16 = a1[1];
  *(v13 + 40) = *a1;
  *(v13 + 56) = v16;
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4 & 1;
  *(v13 + 72) = v14;
  sub_214897F3C(a2, a3);
  sub_2148D9164(v20, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B320, &qword_214995080);
  sub_2148D9DC4();
  sub_21498F450();
  v17 = sub_21498EEF0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2F0, &qword_214995068);
  *(a5 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_2148CE298(uint64_t a1, uint64_t a2, char a3, _OWORD *a4)
{
  v5 = a4[5];
  v9[11] = a4[4];
  v9[12] = v5;
  v9[13] = a4[6];
  v6 = a4[1];
  v9[7] = *a4;
  v9[8] = v6;
  v7 = a4[3];
  v9[9] = a4[2];
  v9[10] = v7;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148D9164(a4, v9);
  return sub_21498EA20();
}

__n128 sub_2148CE398@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  if (*(a1 + 32) && v4 != 1)
  {

    goto LABEL_7;
  }

  v5 = sub_214990080();

  if (v5)
  {
LABEL_7:
    v6 = sub_21497A644();
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0x6E776F6E6B6E55;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE700000000000000;
    }

    v10 = *(a1 + 64);
    v11 = *(a1 + 72);
    v12 = sub_21498EE10();
    LOBYTE(v29) = 1;
    sub_2148CEA50(v8, v9, v10, v11, v49);
    v37 = *&v49[32];
    v38 = *&v49[48];
    v35 = *v49;
    v36 = *&v49[16];
    v42 = *&v49[32];
    v43 = *&v49[48];
    v44 = *&v49[64];
    v41 = *&v49[16];
    v39 = *&v49[64];
    v40 = *v49;
    sub_2148AA824(&v35, &v22, &qword_27CA1B220, &qword_214994D60);
    sub_21489DFCC(&v40, &qword_27CA1B220, &qword_214994D60);

    *&v49[7] = v35;
    *&v49[23] = v36;
    *&v49[71] = v39;
    *&v49[55] = v38;
    *&v49[39] = v37;
    v45 = v12;
    v46[0] = v29;
    *&v46[17] = *&v49[16];
    *&v46[1] = *v49;
    *&v46[80] = *(&v39 + 1);
    *&v46[65] = *&v49[64];
    *&v46[49] = *&v49[48];
    *&v46[33] = *&v49[32];
    *&v49[64] = *&v46[48];
    *&v49[80] = *&v46[64];
    *&v49[96] = *&v46[80];
    *v49 = v12;
    *&v49[16] = *v46;
    *&v49[32] = *&v46[16];
    *&v49[48] = *&v46[32];
    v47 = 0;
    v49[104] = 0;
    sub_2148AA824(&v45, &v22, &qword_27CA1B228, &qword_214994D68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B228, &qword_214994D68);
    v13 = MEMORY[0x277CE1138];
    sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68, MEMORY[0x277CE1138]);
    sub_21498EE90();
    v26 = v33;
    *v27 = v34[0];
    *&v27[9] = *(v34 + 9);
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v25 = v32;
    v48 = 0;
    v28 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B338, &qword_214995088);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2C8, &qword_214994F80);
    sub_2148D9E7C();
    sub_2148B4C20(&qword_27CA1B2D0, &qword_27CA1B2C8, &qword_214994F80, v13);
    sub_21498EE90();
    sub_21489DFCC(&v45, &qword_27CA1B228, &qword_214994D68);
    v54 = *&v49[64];
    v55[0] = *&v49[80];
    v14 = *&v49[90];
    goto LABEL_18;
  }

  if (v4)
  {
  }

  else
  {
    v15 = sub_214990080();

    if ((v15 & 1) == 0)
    {
      LOBYTE(v22) = 1;
      LOBYTE(v29) = 0;
      LOBYTE(v45) = 1;
      *v49 = sub_21498EE10();
      v49[16] = 1;
      *&v49[24] = sub_21497BA1C();
      *&v49[32] = v21;
      v49[40] = 0;
      *&v49[48] = MEMORY[0x277D84F90];
      v49[105] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B338, &qword_214995088);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2C8, &qword_214994F80);
      sub_2148D9E7C();
      sub_2148B4C20(&qword_27CA1B2D0, &qword_27CA1B2C8, &qword_214994F80, MEMORY[0x277CE1138]);
      sub_21498EE90();
      goto LABEL_19;
    }
  }

  if (sub_21497A6F0())
  {
  }

  v16 = sub_21498EE10();
  LOBYTE(v29) = 1;
  sub_2148CEB44(v49);
  v37 = *&v49[32];
  v38 = *&v49[48];
  v35 = *v49;
  v36 = *&v49[16];
  v42 = *&v49[32];
  v43 = *&v49[48];
  v44 = *&v49[64];
  v41 = *&v49[16];
  v39 = *&v49[64];
  v40 = *v49;
  sub_2148AA824(&v35, &v22, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(&v40, &qword_27CA1B220, &qword_214994D60);
  *&v49[7] = v35;
  *&v49[23] = v36;
  *&v49[71] = v39;
  *&v49[55] = v38;
  *&v49[39] = v37;
  v45 = v16;
  v46[0] = v29;
  *&v46[17] = *&v49[16];
  *&v46[1] = *v49;
  *&v46[80] = *(&v39 + 1);
  *&v46[65] = *&v49[64];
  *&v46[49] = *&v49[48];
  *&v46[33] = *&v49[32];
  *&v49[64] = *&v46[48];
  *&v49[80] = *&v46[64];
  *&v49[96] = *&v46[80];
  *v49 = v16;
  *&v49[16] = *v46;
  *&v49[32] = *&v46[16];
  *&v49[48] = *&v46[32];
  v47 = 1;
  v49[104] = 1;
  sub_2148AA824(&v45, &v22, &qword_27CA1B228, &qword_214994D68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B228, &qword_214994D68);
  v17 = MEMORY[0x277CE1138];
  sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68, MEMORY[0x277CE1138]);
  sub_21498EE90();
  v26 = v33;
  *v27 = v34[0];
  *&v27[9] = *(v34 + 9);
  v22 = v29;
  v23 = v30;
  v24 = v31;
  v25 = v32;
  v48 = 0;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B338, &qword_214995088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2C8, &qword_214994F80);
  sub_2148D9E7C();
  sub_2148B4C20(&qword_27CA1B2D0, &qword_27CA1B2C8, &qword_214994F80, v17);
  sub_21498EE90();
  sub_21489DFCC(&v45, &qword_27CA1B228, &qword_214994D68);
  v54 = *&v49[64];
  v55[0] = *&v49[80];
  v14 = *&v49[90];
LABEL_18:
  *(v55 + 10) = v14;
  v50 = *v49;
  v51 = *&v49[16];
  v52 = *&v49[32];
  v53 = *&v49[48];
LABEL_19:
  v18 = v55[0];
  *(a2 + 64) = v54;
  *(a2 + 80) = v18;
  *(a2 + 90) = *(v55 + 10);
  v19 = v51;
  *a2 = v50;
  *(a2 + 16) = v19;
  result = v53;
  *(a2 + 32) = v52;
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_2148CEA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = 0;
  v9 = MEMORY[0x277D84F90];
  *(a5 + 24) = MEMORY[0x277D84F90];
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  *(a5 + 64) = 0;
  *(a5 + 72) = v9;

  sub_2148D9930(a1, a2, 0);

  sub_2148D9930(a3, a4, 0);

  sub_2148C85D4(a3, a4, 0);

  sub_2148C85D4(a1, a2, 0);
}

uint64_t sub_2148CEB44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21497BA1C();
  v4 = v3;
  v5 = sub_214990050();
  v7 = v6;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  v8 = MEMORY[0x277D84F90];
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = v8;
  sub_2148D9930(v2, v4, 0);

  sub_2148D9930(v5, v7, 0);

  sub_2148C85D4(v5, v7, 0);

  sub_2148C85D4(v2, v4, 0);
}

uint64_t sub_2148CEC50(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAD0, &qword_214994AB0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  sub_21498E340();
  v11 = type metadata accessor for ErrorContainer(0);
  *&v10[*(v11 + 20)] = a4;
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v10, v8, &qword_27CA1AAD0, &qword_214994AB0);
  v12 = a4;
  sub_21498EA20();
  return sub_21489DFCC(v10, &qword_27CA1AAD0, &qword_214994AB0);
}

uint64_t sub_2148CEE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v85 = a4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B010, &qword_214994898);
  MEMORY[0x28223BE20](v76);
  v93 = v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B040, &qword_2149948B0);
  MEMORY[0x28223BE20](v8);
  v92 = v69 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B258, &qword_214994E58);
  MEMORY[0x28223BE20](v81);
  v83 = v69 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B260, &qword_214994E60);
  MEMORY[0x28223BE20](v73);
  v75 = v69 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B060, &qword_2149948C0);
  MEMORY[0x28223BE20](v82);
  v77 = v69 - v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B070, &qword_2149948C8);
  MEMORY[0x28223BE20](v74);
  v72 = v69 - v13;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C8, &qword_214994920);
  v90 = *(v96 - 8);
  v14 = MEMORY[0x28223BE20](v96);
  v71 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = v69 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v89 = v69 - v19;
  MEMORY[0x28223BE20](v18);
  v88 = v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B268, &qword_214994E68);
  v95 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v86 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v94 = v69 - v24;
  v25 = _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  v26 = a3;
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v27 = v97;
  v84 = v8;
  if (v97)
  {
    v70 = v25;
    v28 = v97[2];
    v80 = v21;
    if (v28)
    {
      v79 = 0;
      v91 = 0;
      v92 = 0;
      v93 = 0;
      v78 = 0;
    }

    else
    {
      v79 = sub_21498EE10();
      v93 = 0x80000002149A1A10;
      v78 = MEMORY[0x277D84F90];
      v92 = 1;
      v91 = 0xD000000000000014;
    }

    v97 = v27;
    v41 = swift_allocObject();
    *(v41 + 16) = a1;
    *(v41 + 24) = a2;
    v69[1] = v26;
    *(v41 + 32) = v26 & 1;
    sub_214897F3C(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B270, &qword_214994F00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B278, &qword_214994F08);
    sub_2148B4C20(&qword_27CA1B280, &qword_27CA1B270, &qword_214994F00, MEMORY[0x277D83980]);
    sub_2148D9970();
    sub_2148D8E24();
    sub_21498F490();
    sub_21498EE40();
    sub_21498EB90();
    swift_getKeyPath();
    sub_21498EC90();

    v42 = v88;
    sub_21498F460();
    sub_21498EE40();
    sub_21498EB90();
    swift_getKeyPath();
    sub_21498EC90();

    v43 = v89;
    sub_21498F460();
    v44 = *(v95 + 16);
    v45 = v86;
    v46 = v80;
    v44(v86, v94, v80);
    v47 = *(v90 + 2);
    v48 = v87;
    v49 = v96;
    v47(v87, v42, v96);
    v50 = v71;
    v47(v71, v43, v49);
    v51 = v72;
    *v72 = v79;
    *(v51 + 1) = 0;
    v52 = v91;
    *(v51 + 2) = v92;
    *(v51 + 3) = v52;
    *(v51 + 4) = v93;
    *(v51 + 5) = 0;
    *(v51 + 6) = v78;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2C0, &qword_214994F78);
    v44(&v51[v53[12]], v45, v46);
    v54 = v96;
    v47(&v51[v53[16]], v48, v96);
    v47(&v51[v53[20]], v50, v54);
    v55 = v79;
    v57 = v91;
    v56 = v92;
    v58 = v93;
    v59 = v78;
    sub_2148D9AE0(v79, 0, v92, v91, v93, 0, v78);
    v60 = *(v90 + 1);
    v70 = v60;
    v61 = v50;
    v62 = v96;
    v60(v61, v96);
    v60(v87, v62);
    v63 = *(v95 + 8);
    v95 += 8;
    v90 = v63;
    v63(v86, v46);
    sub_2148D9B2C(v55, 0, v56, v57, v58, 0, v59);
    sub_2148AA824(v51, v75, &qword_27CA1B070, &qword_2149948C8);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1B068, &qword_27CA1B070, &qword_2149948C8, MEMORY[0x277CE14C0]);
    sub_2148D8648();
    v64 = v77;
    sub_21498EE90();
    sub_2148AA824(v64, v83, &qword_27CA1B060, &qword_2149948C0);
    swift_storeEnumTagMultiPayload();
    sub_2148D87E8();
    sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
    sub_21498EE90();
    sub_2148D9B2C(v55, 0, v92, v91, v93, 0, v59);
    sub_21489DFCC(v64, &qword_27CA1B060, &qword_2149948C0);
    sub_21489DFCC(v51, &qword_27CA1B070, &qword_2149948C8);
    v65 = v96;
    v66 = v70;
    v70(v89, v96);
    v66(v88, v65);
    return v90(v94, v80);
  }

  else
  {
    v30 = v92;
    v29 = v93;
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v31 = v97;
    if (v97)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = a1;
      *(v32 + 24) = a2;
      *(v32 + 32) = v26 & 1;
      *(v32 + 40) = v31;
      sub_214897F3C(a1, a2);
      v33 = v31;
      sub_21498F450();
      v34 = sub_21498F2A0();
      KeyPath = swift_getKeyPath();
      v36 = (v29 + *(v76 + 36));
      *v36 = KeyPath;
      v36[1] = v34;
      sub_2148AA824(v29, v75, &qword_27CA1B010, &qword_214994898);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1B068, &qword_27CA1B070, &qword_2149948C8, MEMORY[0x277CE14C0]);
      sub_2148D8648();
      v37 = v77;
      sub_21498EE90();
      sub_2148AA824(v37, v83, &qword_27CA1B060, &qword_2149948C0);
      swift_storeEnumTagMultiPayload();
      sub_2148D87E8();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
      sub_21498EE90();

      sub_21489DFCC(v37, &qword_27CA1B060, &qword_2149948C0);
      v38 = v29;
      v39 = &qword_27CA1B010;
      v40 = &qword_214994898;
    }

    else
    {
      *v30 = sub_21498EE10();
      *(v30 + 8) = 0;
      *(v30 + 16) = 1;
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B200, &qword_214994CF8);
      sub_2148D2D14(v30 + *(v68 + 44));
      sub_2148AA824(v30, v83, &qword_27CA1B040, &qword_2149948B0);
      swift_storeEnumTagMultiPayload();
      sub_2148D87E8();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
      sub_21498EE90();
      v38 = v30;
      v39 = &qword_27CA1B040;
      v40 = &qword_2149948B0;
    }

    return sub_21489DFCC(v38, v39, v40);
  }
}

uint64_t sub_2148CFC64@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B298, &qword_214994F10);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  memcpy(v19, a1, 0x179uLL);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4 & 1;
  memcpy((v14 + 40), a1, 0x179uLL);
  v17[2] = v19;
  sub_214897F3C(a2, a3);
  sub_2148D8FC8(v19, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B2C8, &qword_214994F80);
  sub_2148B4C20(&qword_27CA1B2D0, &qword_27CA1B2C8, &qword_214994F80, MEMORY[0x277CE1138]);
  sub_21498F450();
  *&v13[*(v11 + 44)] = sub_21498EEF0();
  if (v19[376])
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.5;
  }

  sub_2148B4C68(v13, a5, &qword_27CA1B298, &qword_214994F10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B278, &qword_214994F08);
  *(a5 + *(result + 36)) = v15;
  return result;
}

uint64_t sub_2148CFE60(uint64_t a1, uint64_t a2, char a3, const void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-v9];
  v11 = sub_21498FAE0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21498FAB0();
  v12 = a3 & 1;
  sub_214897F3C(a1, a2);
  sub_2148D8FC8(a4, v17);
  v13 = sub_21498FAA0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = v12;
  memcpy((v14 + 56), a4, 0x179uLL);
  sub_214926978(0, 0, v10, &unk_214994F90, v14);
}

uint64_t sub_2148CFFE4(int a1, int a2, int a3, uint64_t a4, uint64_t a5, char a6, void *__src)
{
  *(v7 + 1184) = __src;
  *(v7 + 393) = a6;
  *(v7 + 1176) = a5;
  *(v7 + 1168) = a4;
  memcpy((v7 + 16), __src, 0x179uLL);
  sub_21498FAB0();
  *(v7 + 1192) = sub_21498FAA0();
  v9 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148D0098, v9, v8);
}

uint64_t sub_2148D0098()
{
  v1 = v0[148];

  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  nullsub_1();
  swift_getKeyPath();
  swift_getKeyPath();
  memcpy(v0 + 50, v0 + 2, 0x179uLL);
  sub_2148D8FC8(v1, (v0 + 98));
  sub_21498EA20();
  v2 = v0[1];

  return v2();
}

uint64_t sub_2148D01CC@<X0>(_BYTE *a2@<X8>)
{

  sub_21498EB20();

  *a2 = v4;
  return result;
}

uint64_t sub_2148D0224(char *a1, uint64_t a2)
{

  sub_21498EB30();
}

uint64_t sub_2148D027C@<X0>(_BYTE *a2@<X8>)
{

  sub_21498EB20();

  *a2 = v4;
  return result;
}

uint64_t sub_2148D02D4(char *a1, uint64_t a2)
{

  sub_21498EB30();
}

uint64_t sub_2148D032C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C8, &qword_214994920);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  MEMORY[0x28223BE20](v8);
  v40 = v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C0, &qword_214994918);
  v44 = *(v11 - 8);
  v45 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v43 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = v39 - v14;
  v42 = sub_21498EE10();
  v50 = 1;
  v15 = a2;
  sub_2148D08B0(&v59);
  v53 = *&v60[16];
  v54 = *&v60[32];
  v51 = v59;
  v52 = *v60;
  v56[2] = *&v60[16];
  v56[3] = *&v60[32];
  v56[4] = *&v60[48];
  v56[1] = *v60;
  v55 = *&v60[48];
  v56[0] = v59;
  sub_2148AA824(&v51, v57, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(v56, &qword_27CA1B220, &qword_214994D60);
  *&v49[23] = v52;
  *&v49[39] = v53;
  *&v49[55] = v54;
  *&v49[71] = v55;
  *&v49[7] = v51;
  v41 = v50;
  v16 = sub_21498EE40();
  v39[1] = v17;
  v39[2] = v16;
  v39[0] = v18;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  v19 = a1;
  v20 = v15;
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v21 = v40;
  sub_21498F460();
  sub_21498EB80();

  sub_21498EB20();

  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v20;
  *(v22 + 32) = a3 & 1;
  sub_214897F3C(v19, v20);
  sub_2148B4C20(&qword_27CA1B0D0, &qword_27CA1B0C8, &qword_214994920, MEMORY[0x277CDF068]);
  v23 = v48;
  v24 = v46;
  sub_21498F220();

  (*(v47 + 8))(v21, v24);
  v26 = v43;
  v25 = v44;
  v27 = *(v44 + 16);
  v28 = v45;
  v27(v43, v23, v45);
  v29 = v42;
  v57[0] = v42;
  v57[1] = 0;
  LOBYTE(v23) = v41;
  v58[0] = v41;
  *&v58[1] = *v49;
  *&v58[17] = *&v49[16];
  *&v58[65] = *&v49[64];
  *&v58[49] = *&v49[48];
  *&v58[33] = *&v49[32];
  v30 = *&v49[79];
  *&v58[80] = *&v49[79];
  v31 = *v58;
  *a4 = v42;
  *(a4 + 16) = v31;
  v32 = *&v58[16];
  v33 = *&v58[32];
  v34 = *&v58[48];
  v35 = *&v58[64];
  *(a4 + 96) = v30;
  *(a4 + 64) = v34;
  *(a4 + 80) = v35;
  *(a4 + 32) = v32;
  *(a4 + 48) = v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B250, &qword_214994E08);
  v27((a4 + *(v36 + 48)), v26, v28);
  sub_2148AA824(v57, &v59, &qword_27CA1B228, &qword_214994D68);
  v37 = *(v25 + 8);
  v37(v48, v28);
  v37(v26, v28);
  *&v60[33] = *&v49[32];
  *&v60[49] = *&v49[48];
  *v61 = *&v49[64];
  *&v60[1] = *v49;
  v59 = v29;
  v60[0] = v23;
  *&v61[15] = *&v49[79];
  *&v60[17] = *&v49[16];
  return sub_21489DFCC(&v59, &qword_27CA1B228, &qword_214994D68);
}

uint64_t sub_2148D08B0@<X0>(uint64_t a4@<X8>)
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v5 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v5 setUnitsStyle_];
  [v5 setAllowedUnits_];
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v6 = [v5 stringFromTimeInterval_];
  if (v6)
  {
    v7 = v6;
    v8 = sub_21498F870();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  *a4 = xmmword_214994630;
  *(a4 + 16) = 0;
  v11 = MEMORY[0x277D84F90];
  *(a4 + 24) = MEMORY[0x277D84F90];
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v8;
  *(a4 + 56) = v10;
  *(a4 + 64) = 0;
  *(a4 + 72) = v11;
  sub_2148D9930(0x7544206568636143, 0xEE006E6F69746172, 0);

  sub_2148D9930(v8, v10, 0);

  sub_2148C85D4(v8, v10, 0);

  sub_2148C85D4(0x7544206568636143, 0xEE006E6F69746172, 0);
}

uint64_t sub_2148D0B5C@<X0>(_BYTE *a2@<X8>)
{

  sub_21498EB20();

  *a2 = v4;
  return result;
}

uint64_t sub_2148D0BB4(char *a1, uint64_t a2)
{

  sub_21498EB30();
}

uint64_t sub_2148D0C0C(uint64_t a1, uint64_t a2, char a3)
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  v3 = sub_21498EB80();
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_21493B060(0xD00000000000003BLL, 0x80000002149A15B0);
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_21498EA20();
}

uint64_t sub_2148D0D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v64 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B020, &qword_2149948A0);
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v65 = v51 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1B8, &qword_214994B60);
  v9 = MEMORY[0x28223BE20](v57);
  v63 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v56 = v51 - v12;
  MEMORY[0x28223BE20](v11);
  v60 = v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C8, &qword_214994920);
  v15 = *(v14 - 8);
  v54 = v14;
  v55 = v15;
  MEMORY[0x28223BE20](v14);
  v52 = v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C0, &qword_214994918);
  v61 = *(v17 - 8);
  v62 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v66 = v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = v51 - v20;
  v21 = sub_21498EE40();
  v51[0] = v22;
  v51[1] = v21;
  _s9ViewModelCMa(0);
  v23 = sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  a3 &= 1u;
  sub_21498EB90();
  swift_getKeyPath();
  v53 = v23;
  sub_21498EC90();

  v24 = v52;
  sub_21498F460();
  sub_21498EB80();

  sub_21498EB20();

  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3;
  sub_214897F3C(a1, a2);
  sub_2148B4C20(&qword_27CA1B0D0, &qword_27CA1B0C8, &qword_214994920, MEMORY[0x277CDF068]);
  v26 = v54;
  sub_21498F220();

  (*(v55 + 8))(v24, v26);
  v55 = sub_21498EE10();
  v27 = 1;
  v74 = 1;
  sub_2148D17C4(&v70);
  v77 = *&v71[16];
  v78 = *&v71[32];
  v75 = v70;
  v76 = *v71;
  v80[2] = *&v71[16];
  v80[3] = *&v71[32];
  v80[4] = *&v71[48];
  v80[1] = *v71;
  v79 = *&v71[48];
  v80[0] = v70;
  sub_2148AA824(&v75, v68, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(v80, &qword_27CA1B220, &qword_214994D60);
  *&v73[23] = v76;
  *&v73[39] = v77;
  *&v73[55] = v78;
  *&v73[71] = v79;
  *&v73[7] = v75;
  LODWORD(v54) = v74;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  *(v28 + 24) = a2;
  *(v28 + 32) = a3;
  sub_214897F3C(a1, a2);
  sub_21498F450();
  sub_21498EB80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB20, &qword_214993BD0);
  sub_21498EB20();

  if ((BYTE8(v70) & 1) == 0)
  {
    sub_21498EB80();

    sub_21498EB20();

    v27 = (BYTE8(v70) & 1) == 0 && v70 == 0;
  }

  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  v31 = v56;
  (*(v58 + 32))(v56, v65, v59);
  v32 = (v31 + *(v57 + 36));
  *v32 = KeyPath;
  v32[1] = sub_2148DA434;
  v32[2] = v30;
  v33 = v60;
  sub_2148B4C68(v31, v60, &qword_27CA1B1B8, &qword_214994B60);
  v35 = v61;
  v34 = v62;
  v36 = *(v61 + 16);
  v37 = v66;
  v36(v66, v67, v62);
  v38 = v63;
  sub_2148AA824(v33, v63, &qword_27CA1B1B8, &qword_214994B60);
  v39 = v64;
  v36(v64, v37, v34);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B248, &qword_214994DD8);
  v41 = &v39[*(v40 + 48)];
  v42 = v55;
  v68[0] = v55;
  v68[1] = 0;
  LOBYTE(v37) = v54;
  v69[0] = v54;
  *&v69[1] = *v73;
  *&v69[17] = *&v73[16];
  *&v69[65] = *&v73[64];
  v43 = *&v73[79];
  *&v69[80] = *&v73[79];
  *&v69[49] = *&v73[48];
  *&v69[33] = *&v73[32];
  v44 = *v69;
  *v41 = v55;
  *(v41 + 1) = v44;
  v45 = *&v69[16];
  v46 = *&v69[32];
  v47 = *&v69[48];
  v48 = *&v69[64];
  *(v41 + 12) = v43;
  *(v41 + 4) = v47;
  *(v41 + 5) = v48;
  *(v41 + 2) = v45;
  *(v41 + 3) = v46;
  sub_2148AA824(v38, &v39[*(v40 + 64)], &qword_27CA1B1B8, &qword_214994B60);
  sub_2148AA824(v68, &v70, &qword_27CA1B228, &qword_214994D68);
  sub_21489DFCC(v33, &qword_27CA1B1B8, &qword_214994B60);
  v49 = *(v35 + 8);
  v49(v67, v34);
  sub_21489DFCC(v38, &qword_27CA1B1B8, &qword_214994B60);
  *&v71[33] = *&v73[32];
  *&v71[49] = *&v73[48];
  *v72 = *&v73[64];
  *&v71[1] = *v73;
  v70 = v42;
  v71[0] = v37;
  *&v72[15] = *&v73[79];
  *&v71[17] = *&v73[16];
  sub_21489DFCC(&v70, &qword_27CA1B228, &qword_214994D68);
  return (v49)(v66, v34);
}

uint64_t sub_2148D15E4@<X0>(_BYTE *a2@<X8>)
{

  sub_21498EB20();

  *a2 = v4;
  return result;
}

uint64_t sub_2148D163C(char *a1, uint64_t a2)
{

  sub_21498EB30();
}

void sub_2148D1694(uint64_t a1, uint64_t a2, char a3)
{
  v3 = [objc_opt_self() standardUserDefaults];
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();

  sub_21498EB20();

  v4 = sub_21498F840();
  [v3 setBool:v5 forKey:v4];
}

uint64_t sub_2148D17C4@<X0>(uint64_t a4@<X8>)
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  v5 = sub_2148B5D48();
  v7 = v6;

  *a4 = xmmword_214994640;
  *(a4 + 16) = 0;
  v8 = MEMORY[0x277D84F90];
  *(a4 + 24) = MEMORY[0x277D84F90];
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v5;
  *(a4 + 56) = v7;
  *(a4 + 64) = 0;
  *(a4 + 72) = v8;
  sub_2148D9930(0x20676E6974696157, 0xEE00646F69726570, 0);

  sub_2148D9930(v5, v7, 0);

  sub_2148C85D4(v5, v7, 0);

  sub_2148C85D4(0x20676E6974696157, 0xEE00646F69726570, 0);
}

uint64_t sub_2148D1948(uint64_t a1, uint64_t a2, char a3)
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  sub_2148B5F58();
}

double sub_2148D19EC@<D0>(uint64_t a1@<X8>)
{
  result = 3.25141735e161;
  *a1 = xmmword_214994650;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2148D1A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v99 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C8, &qword_214994920);
  v100 = *(v7 - 8);
  v101 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v98 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = v74 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B010, &qword_214994898);
  MEMORY[0x28223BE20](v91);
  v102 = v74 - v11;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B040, &qword_2149948B0);
  MEMORY[0x28223BE20](v95);
  v83 = (v74 - v12);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1D0, &qword_214994C38);
  MEMORY[0x28223BE20](v93);
  v92 = v74 - v13;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1D8, &qword_214994C40);
  MEMORY[0x28223BE20](v86);
  v88 = v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1E0, &qword_214994C48);
  MEMORY[0x28223BE20](v15);
  v89 = v74 - v16;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1E8, &qword_214994C50);
  MEMORY[0x28223BE20](v87);
  v18 = v74 - v17;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1F0, &qword_214994C58);
  v19 = MEMORY[0x28223BE20](v84);
  v85 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v90 = v74 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1F8, &qword_214994C60);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v96 = v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v106 = v74 - v25;
  v26 = _s9ViewModelCMa(0);
  v27 = sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  v28 = a3;
  v103 = a3 & 1;
  v104 = v26;
  v105 = v27;
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v29 = *&v124[8];
  v94 = v15;
  if (*&v124[8] == 2)
  {
    v30 = v91;
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v31 = *v124;
    if (*v124)
    {
      v32 = swift_allocObject();
      *(v32 + 16) = a1;
      *(v32 + 24) = a2;
      *(v32 + 32) = v28 & 1;
      *(v32 + 40) = v31;
      sub_214897F3C(a1, a2);
      v33 = v31;
      v34 = v102;
      sub_21498F450();
      v35 = sub_21498F2A0();
      KeyPath = swift_getKeyPath();
      v37 = (v34 + *(v30 + 36));
      *v37 = KeyPath;
      v37[1] = v35;
      sub_2148AA824(v34, v88, &qword_27CA1B010, &qword_214994898);
      swift_storeEnumTagMultiPayload();
      sub_2148B4C20(&qword_27CA1B210, &qword_27CA1B1E8, &qword_214994C50, MEMORY[0x277CE14C0]);
      sub_2148D8648();
      v38 = v89;
      sub_21498EE90();
      sub_2148AA824(v38, v92, &qword_27CA1B1E0, &qword_214994C48);
      swift_storeEnumTagMultiPayload();
      sub_2148D97E8();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
      sub_21498EE90();

      sub_21489DFCC(v38, &qword_27CA1B1E0, &qword_214994C48);
      v39 = v34;
      v40 = &qword_27CA1B010;
      v41 = &qword_214994898;
    }

    else
    {
      v61 = sub_21498EE10();
      v62 = v83;
      *v83 = v61;
      v62[1] = 0;
      *(v62 + 16) = 1;
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B200, &qword_214994CF8);
      sub_2148D2D14(v62 + *(v63 + 44));
      sub_2148AA824(v62, v92, &qword_27CA1B040, &qword_2149948B0);
      swift_storeEnumTagMultiPayload();
      sub_2148D97E8();
      sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
      sub_21498EE90();
      v39 = v62;
      v40 = &qword_27CA1B040;
      v41 = &qword_2149948B0;
    }
  }

  else
  {
    v102 = a2;
    v80 = *&v124[16];
    v81 = *v124;
    v78 = *&v124[32];
    v79 = *&v124[24];
    v77 = *&v124[40];
    v76 = v124[48];
    v126[0] = *v124;
    v126[1] = *&v124[16];
    v126[2] = *&v124[32];
    v127 = v124[48];
    v42 = sub_21498EE10();
    LOBYTE(v107) = 1;
    sub_2148D28E4(v126, v124);
    v116 = *&v124[32];
    v117 = *&v124[48];
    v114 = *v124;
    v115 = *&v124[16];
    v119[2] = *&v124[32];
    v119[3] = *&v124[48];
    v119[4] = *&v124[64];
    v119[1] = *&v124[16];
    v118 = *&v124[64];
    v119[0] = *v124;
    sub_2148AA824(&v114, v122, &qword_27CA1B220, &qword_214994D60);
    sub_21489DFCC(v119, &qword_27CA1B220, &qword_214994D60);
    *&v124[7] = v114;
    *&v124[23] = v115;
    *&v124[71] = v118;
    *&v124[55] = v117;
    *&v124[39] = v116;
    v120 = v42;
    v121[0] = v107;
    *&v121[17] = *&v124[16];
    *&v121[1] = *v124;
    *&v121[80] = *(&v118 + 1);
    *&v121[65] = *&v124[64];
    *&v121[49] = *&v124[48];
    *&v121[33] = *&v124[32];
    v43 = swift_allocObject();
    v74[1] = v74;
    v44 = v102;
    *(v43 + 16) = a1;
    *(v43 + 24) = v44;
    *(v43 + 32) = v103;
    v45 = MEMORY[0x28223BE20](a1);
    v74[-2] = v126;
    v82 = a1;
    sub_214897F3C(v45, v102);
    v75 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B228, &qword_214994D68);
    v83 = MEMORY[0x277CE1138];
    sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68, MEMORY[0x277CE1138]);
    v46 = v90;
    sub_21498F450();
    sub_2148D98D8(v81, v29, v80, v79, v78);
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v47 = v124[0];
    v48 = swift_getKeyPath();
    v49 = swift_allocObject();
    *(v49 + 16) = v47;
    v50 = (v46 + *(v84 + 36));
    *v50 = v48;
    v50[1] = sub_2148DA434;
    v50[2] = v49;
    v111 = *&v121[48];
    v112 = *&v121[64];
    v113 = *&v121[80];
    v107 = v120;
    v108 = *v121;
    v109 = *&v121[16];
    v110 = *&v121[32];
    v51 = v85;
    sub_2148AA824(v46, v85, &qword_27CA1B1F0, &qword_214994C58);
    v52 = v111;
    v53 = v112;
    v122[4] = v111;
    v122[5] = v112;
    v54 = v113;
    v123 = v113;
    v55 = v108;
    v122[0] = v107;
    v122[1] = v108;
    v57 = v109;
    v56 = v110;
    v122[2] = v109;
    v122[3] = v110;
    v58 = v75;
    *v75 = v107;
    *(v58 + 16) = v55;
    *(v58 + 96) = v54;
    *(v58 + 32) = v57;
    *(v58 + 48) = v56;
    *(v58 + 64) = v52;
    *(v58 + 80) = v53;
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B238, &qword_214994D70);
    sub_2148AA824(v51, v58 + *(v59 + 48), &qword_27CA1B1F0, &qword_214994C58);
    sub_2148AA824(&v120, v124, &qword_27CA1B228, &qword_214994D68);
    sub_2148AA824(v122, v124, &qword_27CA1B228, &qword_214994D68);
    sub_21489DFCC(v51, &qword_27CA1B1F0, &qword_214994C58);
    *&v124[64] = v111;
    *&v124[80] = v112;
    v125 = v113;
    *v124 = v107;
    *&v124[16] = v108;
    *&v124[32] = v109;
    *&v124[48] = v110;
    sub_21489DFCC(v124, &qword_27CA1B228, &qword_214994D68);
    sub_2148AA824(v58, v88, &qword_27CA1B1E8, &qword_214994C50);
    swift_storeEnumTagMultiPayload();
    sub_2148B4C20(&qword_27CA1B210, &qword_27CA1B1E8, &qword_214994C50, MEMORY[0x277CE14C0]);
    sub_2148D8648();
    v60 = v89;
    sub_21498EE90();
    sub_2148AA824(v60, v92, &qword_27CA1B1E0, &qword_214994C48);
    swift_storeEnumTagMultiPayload();
    sub_2148D97E8();
    sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, v83);
    sub_21498EE90();
    sub_21489DFCC(&v120, &qword_27CA1B228, &qword_214994D68);
    sub_21489DFCC(v60, &qword_27CA1B1E0, &qword_214994C48);
    sub_21489DFCC(v58, &qword_27CA1B1E8, &qword_214994C50);
    v39 = v90;
    v40 = &qword_27CA1B1F0;
    v41 = &qword_214994C58;
  }

  sub_21489DFCC(v39, v40, v41);
  sub_21498EE40();
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  v64 = v97;
  sub_21498F460();
  v65 = v96;
  sub_2148AA824(v106, v96, &qword_27CA1B1F8, &qword_214994C60);
  v67 = v100;
  v66 = v101;
  v68 = *(v100 + 16);
  v69 = v98;
  v68(v98, v64, v101);
  v70 = v99;
  sub_2148AA824(v65, v99, &qword_27CA1B1F8, &qword_214994C60);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B218, &qword_214994D28);
  v68((v70 + *(v71 + 48)), v69, v66);
  v72 = *(v67 + 8);
  v72(v64, v66);
  sub_21489DFCC(v106, &qword_27CA1B1F8, &qword_214994C60);
  v72(v69, v66);
  return sub_21489DFCC(v65, &qword_27CA1B1F8, &qword_214994C60);
}

uint64_t sub_2148D28E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  if (v3 >= 2)
  {
    v4 = *a1;
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 4271950;
  }

  *a2 = xmmword_214994660;
  *(a2 + 16) = 0;
  v5 = MEMORY[0x277D84F90];
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v4;
  *(a2 + 56) = v3;
  *(a2 + 64) = 0;
  *(a2 + 72) = v5;
  sub_2148D9930(0x69726F6765746143, 0xEE006E6F6974617ALL, 0);

  sub_2148D9930(v4, v3, 0);

  sub_2148C85D4(v4, v3, 0);

  sub_2148C85D4(0x69726F6765746143, 0xEE006E6F6974617ALL, 0);
}

uint64_t sub_2148D2A0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_21498EA20();
}

double sub_2148D2AE0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21498EE10();
  v16 = 1;
  sub_2148D2BE8(a1, &v10);
  v19 = v12;
  v20 = v13;
  v17 = v10;
  v18 = v11;
  v22[2] = v12;
  v22[3] = v13;
  v22[4] = v14;
  v22[1] = v11;
  v21 = v14;
  v22[0] = v10;
  sub_2148AA824(&v17, &v9, &qword_27CA1B220, &qword_214994D60);
  sub_21489DFCC(v22, &qword_27CA1B220, &qword_214994D60);
  *&v15[7] = v17;
  *&v15[71] = v21;
  *&v15[55] = v20;
  *&v15[39] = v19;
  *&v15[23] = v18;
  v5 = *&v15[48];
  *(a2 + 49) = *&v15[32];
  *(a2 + 65) = v5;
  *(a2 + 81) = *&v15[64];
  result = *v15;
  v7 = *&v15[16];
  *(a2 + 17) = *v15;
  v8 = v16;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 96) = *&v15[79];
  *(a2 + 33) = v7;
  return result;
}

uint64_t sub_2148D2BE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  if (a1[1] == 1 || v3 == 0)
  {
    v3 = 0xE300000000000000;
    v5 = 4271950;
  }

  else
  {
    v5 = a1[3];
  }

  *a2 = xmmword_214994670;
  *(a2 + 16) = 0;
  v6 = MEMORY[0x277D84F90];
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v5;
  *(a2 + 56) = v3;
  *(a2 + 64) = 0;
  *(a2 + 72) = v6;
  sub_2148D9930(0x656C43206C69614DLL, 0xEC00000070756E61, 0);

  sub_2148D9930(v5, v3, 0);

  sub_2148C85D4(v5, v3, 0);

  sub_2148C85D4(0x656C43206C69614DLL, 0xEC00000070756E61, 0);
}

uint64_t sub_2148D2D14@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A8E8, &qword_2149933C8);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_21498EBC0();
  v9 = *(v3 + 16);
  v9(v6, v8, v2);
  *a1 = xmmword_214994680;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B240, &qword_214994DA0);
  v9((a1 + *(v10 + 64)), v6, v2);
  sub_2148D9930(0xE2676E6964616F4CLL, 0xAA0000000000A680, 0);
  v11 = *(v3 + 8);

  v11(v8, v2);
  v11(v6, v2);
  sub_2148C85D4(0xE2676E6964616F4CLL, 0xAA0000000000A680, 0);
}

uint64_t sub_2148D2EE4@<X0>(_BYTE *a2@<X8>)
{

  sub_21498EB20();

  *a2 = v4;
  return result;
}

uint64_t sub_2148D2F3C(char *a1, uint64_t a2)
{

  sub_21498EB30();
}

id sub_2148D2F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v102 = a2;
  v98 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  MEMORY[0x28223BE20](v6 - 8);
  v99 = v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v80 - v9;
  v11 = sub_21498E510();
  v94 = *(v11 - 8);
  v95 = v11;
  MEMORY[0x28223BE20](v11);
  v93 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  MEMORY[0x28223BE20](v13 - 8);
  v96 = (v80 - v14);
  v15 = sub_21498E350();
  v90 = *(v15 - 1);
  v91 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TracingContext(0);
  MEMORY[0x28223BE20](v18);
  v97 = (v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = type metadata accessor for MALiftUISource(0);
  v92 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v21 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v80 - v23;
  v25 = sub_21498E1B0();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v101 = v80 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  result = [v28 aa_primaryAppleAccount];
  v89 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v86 = v10;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  v87 = a3;
  v88 = a1;
  v30 = sub_21498EB80();
  v31 = __swift_project_boxed_opaque_existential_1((v30 + 16), *(v30 + 40));
  *&v103[0] = sub_214933B00(*(*v31 + 40));
  *(&v103[0] + 1) = v32;

  MEMORY[0x2160589C0](0xD00000000000002DLL, 0x80000002149A1950);

  sub_21498E1A0();

  result = (*(v26 + 48))(v24, 1, v25);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v33 = v25;
  v34 = v101;
  (*(v26 + 32))(v101, v24, v33);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
  v36 = *(v35 + 48);
  v37 = &v21[*(v35 + 64)];
  (*(v26 + 16))(v21, v34, v33);
  *&v21[v36] = xmmword_214994690;
  *v37 = 0;
  *(v37 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v38 = *(v18 + 20);
  v82 = v38;
  v84 = sub_21498E5D0();
  v39 = *(v84 - 8);
  v83 = *(v39 + 56);
  v85 = v39 + 56;
  v40 = v97;
  v83(v97 + v38, 1, 1, v84);
  v41 = v28;
  v42 = v89;
  v89 = v33;
  v43 = v42;
  sub_21498E340();
  v44 = sub_21498E330();
  v46 = v45;
  v90[1](v17, v91);
  *v40 = v44;
  v40[1] = v46;
  v81 = v26;
  v47 = v21;
  v48 = v98;
  *v98 = v44;
  v48[1] = v46;
  v49 = type metadata accessor for MARemoteView(0);
  sub_2148D9620(v47, v48 + v49[5]);
  *(v48 + v49[9]) = v41;
  *(v48 + v49[10]) = v43;
  v50 = (v48 + v49[7]);
  sub_21498E8C0();
  *v50 = 0;
  v50[1] = 0;
  swift_allocObject();
  v91 = v41;
  v90 = v43;

  v51 = sub_21498E8B0();
  v80[1] = "Assistant19IntervalGuardAction";
  v52 = swift_allocObject();
  v53 = v93;
  v54 = v94;
  v55 = v95;
  (*(v94 + 104))(v93, *MEMORY[0x277D245A0], v95);
  LOBYTE(v34) = sub_21498E500();
  (*(v54 + 8))(v53, v55);
  v56 = v34 & 1;
  v57 = v40;
  v58 = v47;
  *(v52 + 16) = v56;
  v59 = v96;
  *v96 = v52;
  v60 = *MEMORY[0x277D23258];
  v61 = sub_21498E7C0();
  v62 = v81;
  v63 = *(v61 - 8);
  (*(v63 + 104))(v59, v60, v61);
  (*(v63 + 56))(v59, 0, 1, v61);
  sub_21498E8E0();
  v96 = v58;
  v64 = v86;
  sub_2148D9620(v58, v86);
  (*(v92 + 56))(v64, 0, 1, v100);
  type metadata accessor for MARemoteViewModel(0);
  memset(v103, 0, sizeof(v103));
  v104 = 0;
  swift_allocObject();
  v65 = v90;

  v100 = v51;
  v66 = sub_21490B164(v65, v64, v51, v103);
  v67 = v48 + v49[6];
  *v67 = sub_21489B760;
  *(v67 + 1) = v66;
  v67[16] = 0;
  v95 = v49;
  v68 = v82;
  sub_2148AA824(v57 + v82, v48 + v49[11], &qword_27CA1A320, &unk_2149916D0);
  v69 = v99;
  sub_2148AA824(v57 + v68, v99, &qword_27CA1A320, &unk_2149916D0);
  type metadata accessor for MARemoteViewDelegate(0);
  v70 = swift_allocObject();
  v71 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  v83((v70 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID), 1, 1, v84);
  v72 = qword_281190DA8;

  if (v72 != -1)
  {
    swift_once();
  }

  v73 = v91;

  sub_2148D9684(v57, type metadata accessor for TracingContext);
  sub_2148D9684(v96, type metadata accessor for MALiftUISource);
  (*(v62 + 8))(v101, v89);
  v74 = sub_21498E600();
  __swift_project_value_buffer(v74, qword_281194E30);
  *(v70 + 16) = "LoadRemoteView";
  *(v70 + 24) = 14;
  *(v70 + 32) = 2;
  swift_beginAccess();
  sub_21489B818(v69, v70 + v71);
  swift_endAccess();
  v75 = (v70 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
  *v75 = sub_21489B7D8;
  v75[1] = v66;
  *(v48 + *(v95 + 32)) = v70;
  v76 = swift_allocObject();
  v77 = v88;
  v78 = v102;
  *(v76 + 16) = v88;
  *(v76 + 24) = v78;
  *(v76 + 32) = v87 & 1;
  v79 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0A8, &qword_214994910) + 36));
  *v79 = 0;
  v79[1] = 0;
  v79[2] = sub_2148D96E4;
  v79[3] = v76;
  return sub_214897F3C(v77, v78);
}

uint64_t sub_2148D3A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  sub_21498FAB0();
  *(v6 + 32) = sub_21498FAA0();
  v8 = sub_21498FA50();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return MEMORY[0x2822009F8](sub_2148D3B18, v8, v7);
}

uint64_t sub_2148D3B18()
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  *(v0 + 56) = sub_21498EB80();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2148CB7CC;

  return sub_2148B8444();
}

uint64_t sub_2148D3C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v16 = a4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B0C8, &qword_214994920);
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = v14 - v7;
  v9 = sub_21498EE40();
  v14[0] = v10;
  v14[1] = v9;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB90();
  swift_getKeyPath();
  sub_21498EC90();

  sub_21498F460();
  sub_21498EB80();

  sub_21498EB20();

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  sub_214897F3C(a1, a2);
  sub_2148B4C20(&qword_27CA1B0D0, &qword_27CA1B0C8, &qword_214994920, MEMORY[0x277CDF068]);
  v12 = v15;
  sub_21498F220();

  return (*(v17 + 8))(v8, v12);
}

uint64_t sub_2148D3ED8@<X0>(_BYTE *a2@<X8>)
{

  sub_21498EB20();

  *a2 = v4;
  return result;
}

uint64_t sub_2148D3F30(char *a1, uint64_t a2)
{

  sub_21498EB30();
}

void sub_2148D3F88(uint64_t a1, uint64_t a2, char a3)
{
  v3 = [objc_opt_self() standardUserDefaults];
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();

  sub_21498EB20();

  v4 = sub_21498F840();
  [v3 setBool:v5 forKey:v4];
}

uint64_t sub_2148D40B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v38 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1B8, &qword_214994B60);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v36 = &v34 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v35 = &v34 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3 & 1;
  sub_214897F3C(a1, a2);
  sub_21498F450();
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v18 = v40;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = &v16[*(v8 + 44)];
  *v21 = KeyPath;
  v21[1] = sub_2148D9528;
  v21[2] = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3 & 1;
  sub_214897F3C(a1, a2);
  v23 = v35;
  sub_21498F450();
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v24 = v39;
  v25 = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  v27 = v23;
  v28 = &v23[*(v8 + 44)];
  *v28 = v25;
  v28[1] = sub_2148DA434;
  v28[2] = v26;
  v29 = v36;
  sub_2148AA824(v16, v36, &qword_27CA1B1B8, &qword_214994B60);
  v30 = v37;
  sub_2148AA824(v27, v37, &qword_27CA1B1B8, &qword_214994B60);
  v31 = v38;
  sub_2148AA824(v29, v38, &qword_27CA1B1B8, &qword_214994B60);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C0, &qword_214994BE0);
  sub_2148AA824(v30, v31 + *(v32 + 48), &qword_27CA1B1B8, &qword_214994B60);
  sub_21489DFCC(v27, &qword_27CA1B1B8, &qword_214994B60);
  sub_21489DFCC(v16, &qword_27CA1B1B8, &qword_214994B60);
  sub_21489DFCC(v30, &qword_27CA1B1B8, &qword_214994B60);
  return sub_21489DFCC(v29, &qword_27CA1B1B8, &qword_214994B60);
}

uint64_t sub_2148D4538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 136) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = sub_21498E690();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  sub_21498FAB0();
  *(v6 + 56) = sub_21498FAA0();
  v9 = sub_21498FA50();
  *(v6 + 64) = v9;
  *(v6 + 72) = v8;

  return MEMORY[0x2822009F8](sub_2148D4630, v9, v8);
}

uint64_t sub_2148D4630()
{
  v0[10] = _s9ViewModelCMa(0);
  v0[11] = sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  v0[12] = sub_21498EB80();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_2148D4734;

  return sub_2148B614C();
}

uint64_t sub_2148D4734(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return MEMORY[0x2822009F8](sub_2148D4880, v4, v3);
}

uint64_t sub_2148D4880()
{
  v22 = v0;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v3, qword_281194E18);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_21498E670();
  v6 = sub_21498FB90();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];
  if (v7)
  {
    v20 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    v14 = MEMORY[0x216058A90](v8, MEMORY[0x277D837D0]);
    v16 = v15;

    v17 = sub_2149079F4(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_21488E000, v5, v6, "Result: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x216059AC0](v13, -1, -1);
    MEMORY[0x216059AC0](v12, -1, -1);

    (*(v9 + 8))(v20, v11);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v0[15] = sub_21498EB80();
  v18 = swift_task_alloc();
  v0[16] = v18;
  *v18 = v0;
  v18[1] = sub_2148D4AE0;

  return sub_2148B8444();
}

uint64_t sub_2148D4AE0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_2148D4C24, v3, v2);
}

uint64_t sub_2148D4C24()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2148D4C8C(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000012;
  *(a1 + 8) = 0x80000002149A15F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_2148D4CBC(uint64_t a1, uint64_t a2, char a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAE0, qword_214993660);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();

  sub_2148B67EC(0x41455050415F4E4FLL, 0xE900000000000052);
  sub_2148B67EC(0x4B43494C435F4E4FLL, 0xE800000000000000);
  sub_21498EB80();
  sub_21498E340();
  v9 = type metadata accessor for ResultContainer(0);
  v10 = &v8[*(v9 + 20)];
  *v10 = 0xD000000000000019;
  *(v10 + 1) = 0x80000002149A18E0;
  v11 = &v8[*(v9 + 24)];
  *v11 = 0x63206E6F69746341;
  *(v11 + 1) = 0xEF6574656C706D6FLL;
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v8, v6, &qword_27CA1AAE0, qword_214993660);
  sub_21498EA20();
  return sub_21489DFCC(v8, &qword_27CA1AAE0, qword_214993660);
}

void sub_2148D4F20(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000019;
  *(a1 + 8) = 0x80000002149A18E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_2148D4F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 80);
  v22 = *(a1 + 64);
  v23 = v9;
  v24 = *(a1 + 96);
  v10 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v10;
  v11 = *(a1 + 48);
  v20 = *(a1 + 32);
  v21 = v11;
  v25 = v19[0];
  v26 = v10;
  v27 = v20;
  v28 = v11;
  v29 = v22;
  v30 = v9;
  LOBYTE(v31) = v24;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4 & 1;
  v13 = v30;
  *(a5 + 64) = v29;
  *(a5 + 80) = v13;
  v14 = v31;
  v15 = v26;
  *a5 = v25;
  *(a5 + 16) = v15;
  v16 = v28;
  *(a5 + 32) = v27;
  *(a5 + 48) = v16;
  *(a5 + 104) = 0;
  *(a5 + 112) = 0;
  *(a5 + 96) = v14;
  *(a5 + 120) = sub_2148D938C;
  *(a5 + 128) = v12;
  sub_2148D93C8(v19, v18);
  return sub_214897F3C(a2, a3);
}

uint64_t sub_2148D503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  sub_21498FAB0();
  *(v6 + 32) = sub_21498FAA0();
  v8 = sub_21498FA50();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return MEMORY[0x2822009F8](sub_2148D50D8, v8, v7);
}

uint64_t sub_2148D50D8()
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  *(v0 + 56) = sub_21498EB80();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2148D51D4;

  return sub_2148B8444();
}

uint64_t sub_2148D51D4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2148D5318, v3, v2);
}

uint64_t sub_2148D5318()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2148D5378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = v10;
  a4[3] = sub_2148D9288;
  a4[4] = v8;
  return sub_214897F3C(a1, a2);
}

uint64_t sub_2148D54BC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = a1[5];
  v19[4] = a1[4];
  v19[5] = v10;
  v19[6] = a1[6];
  v11 = a1[1];
  v19[0] = *a1;
  v19[1] = v11;
  v12 = a1[3];
  v19[2] = a1[2];
  v19[3] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4 & 1;
  v14 = a1[5];
  *(a5 + 64) = a1[4];
  *(a5 + 80) = v14;
  *(a5 + 96) = a1[6];
  v15 = a1[1];
  *a5 = *a1;
  *(a5 + 16) = v15;
  v16 = a1[3];
  *(a5 + 32) = a1[2];
  *(a5 + 48) = v16;
  *(a5 + 112) = 0;
  *(a5 + 120) = 0;
  *(a5 + 128) = sub_2148D9128;
  *(a5 + 136) = v13;
  sub_2148D9164(v19, &v18);
  return sub_214897F3C(a2, a3);
}

uint64_t sub_2148D5598@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  memcpy(v12, __src, 0x179uLL);
  sub_2148D8FC8(v12, __dst);
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  v9 = sub_21498EB80();
  memcpy(__dst, v12, 0x179uLL);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4 & 1;
  memcpy(a5, __dst, 0x180uLL);
  a5[49] = 0;
  a5[50] = 0;
  a5[48] = v9;
  a5[51] = sub_2148D9024;
  a5[52] = v10;
  return sub_214897F3C(a2, a3);
}

uint64_t sub_2148D56CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1B0, &unk_214994A78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - v9;
  v14[4] = 0;
  v14[5] = 0xE000000000000000;
  v14[3] = *(a1 + *(type metadata accessor for ErrorContainer(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  sub_21498FE70();
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4 & 1;
  sub_214897F3C(a2, a3);
  sub_21498F250();

  v12 = sub_21498F260();
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  return sub_21498F240();
}

uint64_t sub_2148D58A4(uint64_t a1, uint64_t a2, char a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAD0, &qword_214994AB0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  v9 = type metadata accessor for ErrorContainer(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v8, v6, &qword_27CA1AAD0, &qword_214994AB0);
  sub_21498EA20();
  return sub_21489DFCC(v8, &qword_27CA1AAD0, &qword_214994AB0);
}

uint64_t sub_2148D5A54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1B0, &unk_214994A78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  type metadata accessor for ResultContainer(0);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4 & 1;

  sub_214897F3C(a2, a3);
  sub_21498F250();

  v11 = sub_21498F260();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  return sub_21498F240();
}

uint64_t sub_2148D5C08(uint64_t a1, uint64_t a2, char a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAE0, qword_214993660);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  sub_21498EB80();
  v9 = type metadata accessor for ResultContainer(0);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2148AA824(v8, v6, &qword_27CA1AAE0, qword_214993660);
  sub_21498EA20();
  return sub_21489DFCC(v8, &qword_27CA1AAE0, qword_214993660);
}

uint64_t sub_2148D5DB8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_21498FAE0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21498FAB0();
  v13 = a3 & 1;
  sub_214897F3C(a1, a2);
  v14 = sub_21498FAA0();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = v13;
  sub_214926978(0, 0, v11, a5, v15);
}

uint64_t sub_2148D5EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  sub_21498FAB0();
  *(v6 + 32) = sub_21498FAA0();
  v8 = sub_21498FA50();
  *(v6 + 40) = v8;
  *(v6 + 48) = v7;

  return MEMORY[0x2822009F8](sub_2148D5F98, v8, v7);
}

uint64_t sub_2148D5F98()
{
  _s9ViewModelCMa(0);
  sub_2148D8F68(&qword_27CA1AF20, _s9ViewModelCMa, &unk_214993714);
  *(v0 + 56) = sub_21498EB80();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_2148CB7CC;

  return sub_2148B5834();
}

uint64_t sub_2148D6094@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  sub_2148C9358(v3, v4, v5, a1);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AEF0, &qword_2149946B0) + 36));
  *v7 = sub_2148DA430;
  v7[1] = v6;
  v7[2] = 0;
  v7[3] = 0;

  return sub_214897F3C(v3, v4);
}

uint64_t sub_2148D614C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_2148D6198(uint64_t a1, uint64_t a2, char *a3)
{
  v141 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB98, &qword_214993DF8);
  v139 = *(v5 - 8);
  v140 = v5;
  MEMORY[0x28223BE20](v5);
  v138 = &v98 - v6;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAE0, qword_214993660);
  v7 = MEMORY[0x28223BE20](v137);
  v136 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v135 = &v98 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB90, &qword_214993DF0);
  v133 = *(v10 - 8);
  v134 = v10;
  MEMORY[0x28223BE20](v10);
  v132 = &v98 - v11;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAD0, &qword_214994AB0);
  v12 = MEMORY[0x28223BE20](v131);
  v130 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v129 = &v98 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB88, &qword_214993DE8);
  v127 = *(v15 - 8);
  v128 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v98 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB80, &qword_214993DE0);
  v125 = *(v18 - 8);
  v126 = v18;
  MEMORY[0x28223BE20](v18);
  v124 = &v98 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB78, &qword_214993DD8);
  v122 = *(v20 - 8);
  v123 = v20;
  MEMORY[0x28223BE20](v20);
  v121 = &v98 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB70, &qword_214993DD0);
  v119 = *(v22 - 8);
  v120 = v22;
  MEMORY[0x28223BE20](v22);
  v118 = &v98 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB68, &qword_214993DC8);
  v116 = *(v24 - 8);
  v117 = v24;
  MEMORY[0x28223BE20](v24);
  v115 = &v98 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB60, &qword_214993DC0);
  v113 = *(v26 - 8);
  v114 = v26;
  MEMORY[0x28223BE20](v26);
  v112 = &v98 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB58, &qword_214993DB8);
  v110 = *(v28 - 8);
  v111 = v28;
  MEMORY[0x28223BE20](v28);
  v109 = &v98 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB50, &qword_214993DB0);
  v107 = *(v30 - 8);
  v108 = v30;
  MEMORY[0x28223BE20](v30);
  v106 = &v98 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB48, &qword_214993DA8);
  v104 = *(v32 - 8);
  v105 = v32;
  MEMORY[0x28223BE20](v32);
  v103 = &v98 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB40, &qword_214993DA0);
  v101 = *(v34 - 8);
  v102 = v34;
  MEMORY[0x28223BE20](v34);
  v100 = &v98 - v35;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB38, &qword_214993D98);
  v36 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v38 = &v98 - v37;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AB30, &qword_214993D90);
  v39 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v41 = &v98 - v40;
  v42 = type metadata accessor for MARepositoryDefault();
  v144[4] = &off_2826CB168;
  v144[3] = v42;
  v144[0] = a1;
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v44 = v43;

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 7) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v46 = v45;

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 8) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v48 = v47;

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 9) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v50 = v49;

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 10) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v52 = v51;

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 11) = sub_21498EB40();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v54 = v53;

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 12) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v56 = v55;

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 13) = sub_21498EB10();
  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  v58 = v57;

  _sSo14NSUserDefaultsC19iCloudMailAssistantE11mailCleanupAbCE0dg4UserB0CvgZ_0();
  *(a3 + 14) = sub_21498EB10();
  v59 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unsubscribeRecommendations;
  *&v145[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA20, &qword_214993608);
  sub_21498E9F0();
  (*(v39 + 32))(&a3[v59], v41, v98);
  v60 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__automationRecommendations;
  *&v145[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA30, &qword_214993610);
  sub_21498E9F0();
  (*(v36 + 32))(&a3[v60], v38, v99);
  v61 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__showUnsubscribeInMessageList;
  LOBYTE(v145[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA40, &qword_214993618);
  v62 = v100;
  sub_21498E9F0();
  (*(v101 + 32))(&a3[v61], v62, v102);
  v63 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unifiedRules;
  *&v145[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA50, &qword_214993620);
  v64 = v103;
  sub_21498E9F0();
  (*(v104 + 32))(&a3[v63], v64, v105);
  v65 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__inlineTips;
  *&v145[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA60, &qword_214993628);
  v66 = v106;
  sub_21498E9F0();
  (*(v107 + 32))(&a3[v65], v66, v108);
  v67 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__preferences;
  v145[0] = xmmword_2149946A0;
  memset(&v145[1], 0, 33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA70, &qword_214993630);
  v68 = v109;
  sub_21498E9F0();
  (*(v110 + 32))(&a3[v67], v68, v111);
  v69 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__cacheTTL;
  *&v145[0] = 0;
  v70 = v112;
  sub_21498E9F0();
  (*(v113 + 32))(&a3[v69], v70, v114);
  v71 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedAutomationRecommendation;
  memset(v145, 0, 97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AA88, &qword_214993638);
  v72 = v115;
  sub_21498E9F0();
  (*(v116 + 32))(&a3[v71], v72, v117);
  v73 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedUnsubscribeRecommendations;
  LOBYTE(v145[0]) = 0;
  v74 = v118;
  sub_21498E9F0();
  v75 = v120;
  v76 = *(v119 + 32);
  v76(&a3[v73], v74, v120);
  v77 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedUnifiedRule;
  memset(v145, 0, 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAA0, &qword_214993640);
  v78 = v121;
  sub_21498E9F0();
  (*(v122 + 32))(&a3[v77], v78, v123);
  v79 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__selectedInlineTip;
  sub_2148DA328(v145);
  memcpy(v143, v145, 0x179uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAB0, &qword_214993648);
  v80 = v124;
  sub_21498E9F0();
  (*(v125 + 32))(&a3[v79], v80, v126);
  v81 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__isResettingMailCleanup;
  LOBYTE(v143[0]) = 0;
  sub_21498E9F0();
  v76(&a3[v81], v74, v75);
  v82 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__shouldShowOnboardingScreen;
  LOBYTE(v143[0]) = 0;
  sub_21498E9F0();
  v76(&a3[v82], v74, v75);
  v83 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__recommendationsError;
  v143[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AAC0, &unk_214993650);
  sub_21498E9F0();
  v84 = v128;
  v85 = *(v127 + 32);
  v85(&a3[v83], v17, v128);
  v86 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__unifiedRulesError;
  v143[0] = 0;
  sub_21498E9F0();
  v85(&a3[v86], v17, v84);
  v87 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__inlineTipsError;
  v143[0] = 0;
  sub_21498E9F0();
  v85(&a3[v87], v17, v84);
  v88 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__preferencesError;
  v143[0] = 0;
  sub_21498E9F0();
  v85(&a3[v88], v17, v84);
  v89 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__errorToPresent;
  v90 = type metadata accessor for ErrorContainer(0);
  v91 = v129;
  (*(*(v90 - 8) + 56))(v129, 1, 1, v90);
  sub_2148AA824(v91, v130, &qword_27CA1AAD0, &qword_214994AB0);
  v92 = v132;
  sub_21498E9F0();
  sub_21489DFCC(v91, &qword_27CA1AAD0, &qword_214994AB0);
  (*(v133 + 32))(&a3[v89], v92, v134);
  v93 = OBJC_IVAR____TtCV19iCloudMailAssistant22MAInternalSettingsView9ViewModel__resultToPresent;
  v94 = type metadata accessor for ResultContainer(0);
  v95 = v135;
  (*(*(v94 - 8) + 56))(v135, 1, 1, v94);
  sub_2148AA824(v95, v136, &qword_27CA1AAE0, qword_214993660);
  v96 = v138;
  sub_21498E9F0();
  sub_21489DFCC(v95, &qword_27CA1AAE0, qword_214993660);
  (*(v139 + 32))(&a3[v93], v96, v140);
  sub_2148994D0(v144, (a3 + 16));
  swift_beginAccess();
  v142 = v141;
  type metadata accessor for iCloudMailAssistantProviderSwift();
  sub_21498E9F0();
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v144);
  return a3;
}

void *sub_2148D72D0(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, void *a10)
{
  v119 = a8;
  v142 = a7;
  v143 = a6;
  v136 = a5;
  v129 = a4;
  v138 = a2;
  v137 = a1;
  v121 = sub_21498E610();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v130 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v12 - 8);
  v118 = &v118 - v13;
  v14 = sub_21498F710();
  v146 = *(v14 - 8);
  v147 = v14;
  MEMORY[0x28223BE20](v14);
  v135 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21498E600();
  v145 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v131 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v134 = &v118 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v118 - v21;
  v141 = sub_21498E5D0();
  v140 = *(v141 - 8);
  v23 = MEMORY[0x28223BE20](v141);
  v133 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v132 = &v118 - v26;
  MEMORY[0x28223BE20](v25);
  v139 = &v118 - v27;
  v28 = sub_21498E690();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v118 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v118 - v33;
  v35 = type metadata accessor for MARepositoryDefault();
  v150[3] = v35;
  v150[4] = &off_2826CB168;
  v150[0] = a3;
  a10[2] = 0;
  a10[3] = 0;
  a10[9] = MEMORY[0x277D84FA0];
  v144 = a10;
  swift_unknownObjectWeakInit();
  if (qword_281191830 != -1)
  {
    swift_once();
  }

  if ((byte_281194E48 & 1) == 0)
  {
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v28, qword_281194E18);
    (*(v29 + 16))(v34, v36, v28);
    v37 = sub_21498E670();
    v38 = sub_21498FBA0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v16;
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_21488E000, v37, v38, "[iCloudMailAssistantProviderSwift] init - isMailCleanupFeatureAvailable is false", v40, 2u);
      v41 = v40;
      v16 = v39;
      MEMORY[0x216059AC0](v41, -1, -1);
    }

    (*(v29 + 8))(v34, v28);
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v28, qword_281194E18);
  (*(v29 + 16))(v32, v42, v28);
  v43 = sub_21498E670();
  v44 = sub_21498FBA0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_21488E000, v43, v44, "[iCloudMailAssistantProviderSwift] init()", v45, 2u);
    MEMORY[0x216059AC0](v45, -1, -1);
  }

  (*(v29 + 8))(v32, v28);
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v124 = a9;
  v46 = __swift_project_value_buffer(v16, qword_281194E30);
  v47 = v145;
  v48 = v145 + 16;
  v49 = *(v145 + 16);
  v49(v22, v46, v16);
  sub_21498E5F0();
  v50 = v139;
  sub_21498E5B0();
  v53 = *(v47 + 8);
  v51 = v47 + 8;
  v52 = v53;
  v53(v22, v16);
  v54 = v134;
  v126 = v46;
  v127 = v48;
  v125 = v49;
  v49(v134, v46, v16);
  v55 = sub_21498E5F0();
  v56 = sub_21498FC80();
  if (sub_21498FCE0())
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = sub_21498E5C0();
    _os_signpost_emit_with_name_impl(&dword_21488E000, v55, v56, v58, "InitiCloudMailAssistantProviderSwift", "", v57, 2u);
    MEMORY[0x216059AC0](v57, -1, -1);
  }

  (*(v140 + 16))(v132, v50, v141);
  sub_21498E650();
  swift_allocObject();
  v132 = sub_21498E640();
  v134 = v16;
  v145 = v51;
  v128 = v52;
  v52(v54, v16);
  v59 = v144;
  v60 = v138;
  v144[6] = v137;
  v59[7] = v60;
  v61 = v129;
  v62 = v136;
  v59[4] = v129;
  v59[5] = v62;
  sub_2148994D0(v150, v149);
  (*(v146 + 16))(v135, v143, v147);
  v63 = __swift_mutable_project_boxed_opaque_existential_1(v149, v149[3]);
  v123 = &v118;
  MEMORY[0x28223BE20](v63);
  v65 = (&v118 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v66 + 16))(v65);
  v67 = *v65;
  v148[3] = v35;
  v148[4] = &off_2826CB168;
  v148[0] = v67;
  type metadata accessor for iCloudMailAssistantProviderSwift.ProviderModel(0);
  v68 = swift_allocObject();
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v148, v35);
  v122 = &v118;
  MEMORY[0x28223BE20](v69);
  v71 = (&v118 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = *v71;
  v74 = (v68 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_repository);
  v74[3] = v35;
  v74[4] = &off_2826CB168;
  *v74 = v73;
  v75 = v68 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state;
  v76 = MEMORY[0x277D84F90];
  *(v68 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_state) = MEMORY[0x277D84F90];
  v77 = type metadata accessor for MailCleanupState(0);
  v78 = v77[5];
  v79 = sub_21498E320();
  v80 = *(*(v79 - 8) + 56);
  v80(v75 + v78, 1, 1, v79);
  *(v75 + v77[6]) = v76;
  *(v75 + v77[7]) = 2;
  *(v75 + v77[8]) = 2;
  *(v75 + v77[9]) = 3;
  v80(v75 + v77[10], 1, 1, v79);
  *(v75 + v77[11]) = v76;
  *(v75 + v77[12]) = v76;
  v80(v75 + v77[13], 1, 1, v79);
  *(v75 + v77[14]) = v76;
  v81 = (v75 + v77[15]);
  *v81 = 0;
  v81[1] = 0;
  v80(v75 + v77[16], 1, 1, v79);
  *(v68 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_shouldSyncWhenOnline) = 0;
  *(v68 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel__dataStore) = 0;
  *(v68 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_userDefaults) = v61;
  v82 = v136;
  *(v68 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_notificationCenter) = v136;
  (*(v146 + 32))(v68 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_modelConfiguration, v135, v147);
  v83 = (v68 + OBJC_IVAR____TtCC19iCloudMailAssistant32iCloudMailAssistantProviderSwift13ProviderModel_networkStatusProvider);
  v84 = v142;
  *v83 = v142;
  v83[1] = &off_2826CD668;
  *(v84 + 32) = &off_2826CBF68;
  swift_unknownObjectWeakAssign();
  v85 = v61;
  v86 = v82;
  v87 = v85;
  v88 = v86;
  v137 = v137;
  v138 = v138;

  __swift_destroy_boxed_opaque_existential_1(v148);
  __swift_destroy_boxed_opaque_existential_1(v149);
  v59[8] = v68;
  sub_21495E748();
  sub_21495CFF0();
  sub_21495CC30();
  if ((v124 & 1) == 0)
  {
    v89 = sub_21498FAE0();
    v90 = v118;
    (*(*(v89 - 8) + 56))(v118, 1, 1, v89);
    v91 = swift_allocObject();
    swift_weakInit();
    v92 = swift_allocObject();
    v92[2] = 0;
    v92[3] = 0;
    v92[4] = v119;
    v92[5] = v91;
    sub_214926978(0, 0, v90, &unk_214995248, v92);
  }

  v93 = v131;
  v94 = v134;
  v125(v131, v126, v134);
  v95 = sub_21498E5F0();
  v96 = v133;
  sub_21498E630();
  v97 = sub_21498FC70();
  v98 = sub_21498FCE0();
  v99 = v130;
  if (v98)
  {
    v136 = v87;

    sub_21498E660();

    v100 = v120;
    v101 = v121;
    v102 = v88;
    if ((*(v120 + 88))(v99, v121) == *MEMORY[0x277D85B00])
    {
      v103 = 0;
      v104 = 0;
      v105 = "[Error] Interval already ended";
    }

    else
    {
      (*(v100 + 8))(v99, v101);
      v105 = "%s";
      v104 = 2;
      v103 = 1;
    }

    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v149[0] = v111;
    *v110 = v104;
    *(v110 + 1) = v103;
    *(v110 + 2) = 2080;
    v112 = sub_21498FE10();
    v114 = sub_2149079F4(v112, v113, v149);

    *(v110 + 4) = v114;
    v115 = v133;
    v116 = sub_21498E5C0();
    _os_signpost_emit_with_name_impl(&dword_21488E000, v95, v97, v116, "InitiCloudMailAssistantProviderSwift", v105, v110, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v111);
    MEMORY[0x216059AC0](v111, -1, -1);
    MEMORY[0x216059AC0](v110, -1, -1);

    (*(v146 + 8))(v143, v147);
    v106 = *(v140 + 8);
    v107 = v141;
    v106(v115, v141);
    v108 = v93;
    v109 = v134;
  }

  else
  {

    (*(v146 + 8))(v143, v147);
    v106 = *(v140 + 8);
    v107 = v141;
    v106(v96, v141);
    v108 = v93;
    v109 = v94;
  }

  v128(v108, v109);
  v106(v139, v107);
  __swift_destroy_boxed_opaque_existential_1(v150);
  return v144;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_2148D83F4()
{
  result = qword_27CA1AF00;
  if (!qword_27CA1AF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AF08, &qword_2149947B8);
    sub_2148B4C20(&qword_27CA1AF10, &qword_27CA1AF18, &unk_2149947C0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AF00);
  }

  return result;
}

uint64_t sub_2148D84A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D5EFC(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2148D8590()
{
  result = qword_27CA1AFE8;
  if (!qword_27CA1AFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AFF0, &qword_214994888);
    sub_2148B4C20(&qword_27CA1AFF8, &qword_27CA1B000, &qword_214994890, MEMORY[0x277CE14C0]);
    sub_2148D8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1AFE8);
  }

  return result;
}

unint64_t sub_2148D8648()
{
  result = qword_27CA1B008;
  if (!qword_27CA1B008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B010, &qword_214994898);
    sub_2148B4C20(&qword_27CA1B018, &qword_27CA1B020, &qword_2149948A0, MEMORY[0x277CDF028]);
    sub_2148B4C20(&qword_27CA1B028, &qword_27CA1B030, &qword_2149948A8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B008);
  }

  return result;
}

uint64_t sub_2148D8738(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2148B4C20(&qword_27CA1B038, &qword_27CA1B040, &qword_2149948B0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2148D87E8()
{
  result = qword_27CA1B058;
  if (!qword_27CA1B058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B060, &qword_2149948C0);
    sub_2148B4C20(&qword_27CA1B068, &qword_27CA1B070, &qword_2149948C8, MEMORY[0x277CE14C0]);
    sub_2148D8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B058);
  }

  return result;
}

unint64_t sub_2148D88D0()
{
  result = qword_27CA1B0B0;
  if (!qword_27CA1B0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AF78, &qword_214994830);
    sub_2148B4C20(&qword_27CA1B0A0, &qword_27CA1B098, &qword_2149948E0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B0B0);
  }

  return result;
}

unint64_t sub_2148D8994()
{
  result = qword_27CA1B0B8;
  if (!qword_27CA1B0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B0A8, &qword_214994910);
    sub_2148D8F68(&qword_27CA1A340, type metadata accessor for MARemoteView, &unk_214999710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B0B8);
  }

  return result;
}

unint64_t sub_2148D8A74()
{
  result = qword_27CA1B0F0;
  if (!qword_27CA1B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AF38, &qword_2149947F0);
    sub_2148B4C20(&qword_27CA1B0E0, &qword_27CA1B0D8, &qword_214994928, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B0F0);
  }

  return result;
}

unint64_t sub_2148D8B30()
{
  result = qword_27CA1B0F8;
  if (!qword_27CA1B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B0F8);
  }

  return result;
}

unint64_t sub_2148D8B84()
{
  result = qword_27CA1B100;
  if (!qword_27CA1B100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B0E8, &qword_214994958);
    sub_2148B4C20(&qword_27CA1B108, &qword_27CA1B110, &qword_214994960, &unk_21499BD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B100);
  }

  return result;
}

unint64_t sub_2148D8C48()
{
  result = qword_27CA1B128;
  if (!qword_27CA1B128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B120, &qword_214994998);
    sub_2148B4C20(&qword_27CA1B130, &qword_27CA1B138, &qword_2149949A0, &unk_21499BD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B128);
  }

  return result;
}

unint64_t sub_2148D8D0C()
{
  result = qword_27CA1B148;
  if (!qword_27CA1B148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B148);
  }

  return result;
}

unint64_t sub_2148D8D60()
{
  result = qword_27CA1B150;
  if (!qword_27CA1B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B140, &qword_2149949D0);
    sub_2148B4C20(&qword_27CA1B158, &qword_27CA1B160, &qword_2149949D8, &unk_21499BD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B150);
  }

  return result;
}

unint64_t sub_2148D8E24()
{
  result = qword_27CA1B178;
  if (!qword_27CA1B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B178);
  }

  return result;
}

uint64_t sub_2148D8E78(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2148D8EFC()
{
  result = qword_27CA1B188;
  if (!qword_27CA1B188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B188);
  }

  return result;
}

uint64_t sub_2148D8F68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2148D9060(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D3A7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2148D91C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D3A7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2148D92C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D3A7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2148D9424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D503C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2148D954C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D4538(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2148D9620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MALiftUISource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148D9684(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2148D9720(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148D3A7C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_2148D97E8()
{
  result = qword_27CA1B208;
  if (!qword_27CA1B208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B1E0, &qword_214994C48);
    sub_2148B4C20(&qword_27CA1B210, &qword_27CA1B1E8, &qword_214994C50, MEMORY[0x277CE14C0]);
    sub_2148D8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B208);
  }

  return result;
}

void sub_2148D98D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 2)
  {
    sub_2148D98E8(a1, a2, a3, a4, a5);
  }
}

void sub_2148D98E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_2148D9930(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2148D9970()
{
  result = qword_27CA1B288;
  if (!qword_27CA1B288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B278, &qword_214994F08);
    sub_2148D99FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B288);
  }

  return result;
}

unint64_t sub_2148D99FC()
{
  result = qword_27CA1B290;
  if (!qword_27CA1B290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B298, &qword_214994F10);
    sub_2148B4C20(&qword_27CA1B2A0, &qword_27CA1B2A8, &qword_214994F18, MEMORY[0x277CDF028]);
    sub_2148B4C20(&qword_27CA1B2B0, &qword_27CA1B2B8, &qword_214994F20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B290);
  }

  return result;
}

void sub_2148D9AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a7)
  {
    sub_2148D9930(a4, a5, a6 & 1);
  }
}

void sub_2148D9B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a7)
  {
    sub_2148C85D4(a4, a5, a6 & 1);
  }
}

uint64_t sub_2148D9B88@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = sub_21498EE10();
  v7 = *v4;
  v6 = v4[1];
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0;
  *(a2 + 48) = MEMORY[0x277D84F90];
}

uint64_t sub_2148D9BE8(int a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148CFFE4(a1, v4, v5, v6, v7, v8, (v1 + 56));
}

unint64_t sub_2148D9CC8()
{
  result = qword_27CA1B300;
  if (!qword_27CA1B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B2F0, &qword_214995068);
    sub_2148B4C20(&qword_27CA1B308, &qword_27CA1B310, &qword_214995070, MEMORY[0x277CDF028]);
    sub_2148B4C20(&qword_27CA1B2B0, &qword_27CA1B2B8, &qword_214994F20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B300);
  }

  return result;
}

unint64_t sub_2148D9DC4()
{
  result = qword_27CA1B328;
  if (!qword_27CA1B328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B320, &qword_214995080);
    sub_2148D9E7C();
    sub_2148B4C20(&qword_27CA1B2D0, &qword_27CA1B2C8, &qword_214994F80, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B328);
  }

  return result;
}

unint64_t sub_2148D9E7C()
{
  result = qword_27CA1B330;
  if (!qword_27CA1B330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B338, &qword_214995088);
    sub_2148B4C20(&qword_27CA1B230, &qword_27CA1B228, &qword_214994D68, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B330);
  }

  return result;
}

unint64_t sub_2148D9F2C()
{
  result = qword_27CA1B380;
  if (!qword_27CA1B380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B350, &qword_2149950C0);
    sub_2148B4C20(&qword_27CA1B388, &qword_27CA1B358, &qword_2149950C8, MEMORY[0x277CE14C0]);
    sub_2148D8648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B380);
  }

  return result;
}

uint64_t objectdestroy_172Tm()
{
  sub_214897F28(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_2148DA05C()
{
  result = qword_27CA1B3A8;
  if (!qword_27CA1B3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B370, &qword_2149950E0);
    sub_2148B4C20(&qword_27CA1B3B0, &qword_27CA1B3B8, &qword_214995190, MEMORY[0x277CDF028]);
    sub_2148B4C20(&qword_27CA1B2B0, &qword_27CA1B2B8, &qword_214994F20, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B3A8);
  }

  return result;
}

uint64_t sub_2148DA17C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t objectdestroy_5Tm()
{
  sub_214897F28(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();
  sub_214897F28(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2148DA260(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214899964;

  return sub_2148CB620(a1, v4, v5, v6, v7, v8);
}

double sub_2148DA328(_OWORD *a1)
{
  result = 0.0;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  *(a1 + 361) = 0u;
  return result;
}

uint64_t sub_2148DA368(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214899138;

  return sub_214959C34(v6, a1, v4, v5, v7);
}

uint64_t sub_2148DA440(unsigned __int8 a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DA554(unsigned __int8 a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DA644(unsigned __int8 a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DA734(uint64_t a1, unsigned __int8 a2)
{
  sub_21498F900();
}

uint64_t sub_2148DA890(uint64_t a1, unsigned __int8 a2)
{
  sub_21498F900();
}

uint64_t sub_2148DAA28(uint64_t a1, unsigned __int8 a2)
{
  sub_21498F900();
}

uint64_t sub_2148DAB98(uint64_t a1, unsigned __int8 a2)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DAC84(uint64_t a1, unsigned __int8 a2)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DAD94(uint64_t a1, unsigned __int8 a2)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DAEA4(uint64_t a1, unsigned __int8 a2)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DAFC4(uint64_t a1, unsigned __int8 a2)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148DB0B0(uint64_t a1, unsigned __int8 a2)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t static TapToRadarDraft.submitTapToRadar(title:problemDescription:deviceClasses:component:classification:reproducibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unsigned __int8 *a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>)
{
  v60 = a4;
  v61 = a5;
  v58 = a2;
  v59 = a3;
  v57 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = *a6;
  v55 = a6[1];
  v56 = v16;
  v17 = a6[2];
  v54 = a6[3];
  v50 = a6[4];
  v51 = v17;
  LODWORD(v16) = *a7;
  v52 = *a8;
  v53 = v16;

  v49 = v15;
  sub_21498E310();
  v18 = sub_21498E320();
  v19 = *(*(v18 - 8) + 56);
  v19(v15, 0, 1, v18);
  *a9 = 0x4449656C646E7542;
  *(a9 + 8) = 0xE800000000000000;
  *(a9 + 16) = 0u;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 88) = 10;
  *(a9 + 64) = 0;
  strcpy((a9 + 72), "Classification");
  *(a9 + 87) = -18;
  *(a9 + 112) = 6;
  *(a9 + 96) = 0x6375646F72706552;
  *(a9 + 104) = 0xEF7974696C696269;
  *(a9 + 120) = 0x656C746954;
  *(a9 + 128) = 0xE500000000000000;
  *(a9 + 136) = 0;
  *(a9 + 144) = 0;
  *(a9 + 152) = 0x7470697263736544;
  *(a9 + 160) = 0xEB000000006E6F69;
  *(a9 + 168) = 0;
  *(a9 + 176) = 0;
  *(a9 + 184) = 0x7364726F7779654BLL;
  *(a9 + 192) = 0xE800000000000000;
  v20 = MEMORY[0x277D84F90];
  *(a9 + 200) = MEMORY[0x277D84F90];
  v21 = type metadata accessor for TapToRadarDraft(0);
  v22 = (a9 + v21[11]);
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA8, &unk_214993E28) + 36);
  v19(&v22[v48], 1, 1, v18);
  *v22 = 0x7349664F656D6954;
  *(v22 + 1) = 0xEB00000000657573;
  v23 = (a9 + v21[12]);
  v46 = v23;
  v47 = v22;
  *v23 = 0x656D686361747441;
  v23[1] = 0xEB0000000073746ELL;
  v23[2] = v20;
  v24 = (a9 + v21[13]);
  v45 = v24;
  *v24 = 0xD000000000000011;
  v24[1] = 0x80000002149A1680;
  v24[2] = v20;
  v25 = (a9 + v21[14]);
  v44 = v25;
  *v25 = 0xD000000000000014;
  v25[1] = 0x80000002149A16A0;
  v25[2] = v20;
  v26 = (a9 + v21[15]);
  v43 = v26;
  strcpy(v26, "DeleteOnAttach");
  v26[15] = -18;
  v26[16] = 0;
  v27 = (a9 + v21[16]);
  v42 = v27;
  *v27 = 0x4449656369766544;
  v27[1] = 0xE900000000000073;
  v27[2] = v20;
  v28 = a9 + v21[17];
  strcpy(v28, "DeviceClasses");
  *(v28 + 14) = -4864;
  *(v28 + 16) = v20;
  v29 = a9 + v21[18];
  strcpy(v29, "DeviceModels");
  *(v29 + 13) = 0;
  *(v29 + 14) = -5120;
  *(v29 + 16) = v20;
  v30 = (a9 + v21[19]);
  *v30 = 0xD000000000000016;
  v30[1] = 0x8000000214995230;
  v30[2] = 0;
  v31 = a9 + v21[20];
  *v31 = 0xD00000000000001ALL;
  *(v31 + 8) = 0x80000002149A16E0;
  *(v31 + 16) = 0;
  v32 = a9 + v21[21];
  *(v32 + 16) = 0;
  *v32 = 0x676169446F747541;
  *(v32 + 8) = 0xEF73636974736F6ELL;
  v33 = (a9 + v21[22]);
  *v33 = 0xD00000000000001BLL;
  v33[1] = 0x80000002149A1700;
  v33[2] = v20;
  v34 = (a9 + v21[23]);
  *v34 = 0xD000000000000018;
  v34[1] = 0x80000002149A1720;
  v34[2] = 0;
  v34[3] = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0;
  sub_2148BC644(*(a9 + 32), *(a9 + 40), *(a9 + 48), *(a9 + 56), *(a9 + 64));
  v35 = v55;
  *(a9 + 32) = v56;
  *(a9 + 40) = v35;
  v36 = v54;
  *(a9 + 48) = v51;
  *(a9 + 56) = v36;
  *(a9 + 64) = v50;
  LOBYTE(v36) = v52;
  *(a9 + 88) = v53;
  *(a9 + 112) = v36;
  v37 = v58;
  *(a9 + 136) = v57;
  *(a9 + 144) = v37;
  v38 = v60;
  *(a9 + 168) = v59;
  *(a9 + 176) = v38;
  *(a9 + 200) = v20;

  sub_2148BC688(v49, &v47[v48]);
  v39 = v45;
  v46[2] = v20;
  v39[2] = v20;
  v40 = v43;
  v44[2] = v20;
  v40[16] = 0;
  v42[2] = v20;
  *(v28 + 16) = v61;
  *(v29 + 16) = v20;
  v30[2] = 32;
  *(v31 + 16) = 1;
  *(v32 + 16) = 0;
  v33[2] = v20;
  v34[2] = 0;
  v34[3] = 0;
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_27CA1B418;
  if (!qword_27CA1B418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TapToRadarDraft.open()()
{
  v1[18] = v0;
  v2 = sub_21498E1B0();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2148DB814, 0, 0);
}

uint64_t sub_2148DB814()
{
  sub_2148DBCA4(v0[21]);
  v0[22] = objc_opt_self();
  sub_21498FAB0();
  v0[23] = sub_21498FAA0();
  v2 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148DB914, v2, v1);
}

uint64_t sub_2148DB914()
{
  v1 = *(v0 + 176);

  *(v0 + 192) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](sub_2148DB998, 0, 0);
}

uint64_t sub_2148DB998(uint64_t a1)
{
  v2 = v1[24];
  v3 = sub_21498E140();
  v1[25] = v3;
  sub_2148E0E38(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2148E0F60();
  v4 = sub_21498F7D0();
  v1[26] = v4;

  v1[2] = v1;
  v1[7] = v1 + 27;
  v1[3] = sub_2148DBB28;
  v5 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B3D8, &qword_214995270);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_2148DE700;
  v1[13] = &block_descriptor_0;
  v1[14] = v5;
  [v2 openURL:v3 options:v4 completionHandler:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_2148DBB28()
{

  return MEMORY[0x2822009F8](sub_2148DBC08, 0, 0);
}

uint64_t sub_2148DBC08()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2148DBCA4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_21498E030();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21498E020();
  sub_21498E010();
  MEMORY[0x216057080](7824750, 0xE300000000000000);
  sub_2148DBEF4();
  sub_21498DFC0();
  sub_21498DFE0();
  v9 = sub_21498E1B0();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_21489DFCC(v4, &qword_27CA1A348, &qword_214991700);
    sub_2148E11E4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_2148DBEF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5C0, qword_214995B18);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v327 = &v292 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v326 = &v292 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v323 = &v292 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v320 = &v292 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v292 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v315 = &v292 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v314 = &v292 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v313 = &v292 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v348 = (&v292 - v20);
  MEMORY[0x28223BE20](v19);
  v22 = &v292 - v21;
  v23 = sub_21498DFB0();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x28223BE20](v23);
  v308 = &v292 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v307 = &v292 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v345 = &v292 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v306 = &v292 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v344 = &v292 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v325 = &v292 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v324 = &v292 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v322 = &v292 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v321 = &v292 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v343 = &v292 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v305 = &v292 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v342 = &v292 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v341 = &v292 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v304 = &v292 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v340 = &v292 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v339 = &v292 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v303 = &v292 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v338 = &v292 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v337 = &v292 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v302 = &v292 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v336 = &v292 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v319 = &v292 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v318 = &v292 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v335 = &v292 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v301 = &v292 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v334 = &v292 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v333 = &v292 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v300 = &v292 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v332 = &v292 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v331 = &v292 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v299 = &v292 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v330 = &v292 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v317 = &v292 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v316 = &v292 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v329 = &v292 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v298 = &v292 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v328 = &v292 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v297 = &v292 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v296 = &v292 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v295 = &v292 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v294 = &v292 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v312 = &v292 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v311 = &v292 - v110;
  v111 = MEMORY[0x28223BE20](v109);
  v310 = &v292 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v309 = &v292 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v117 = &v292 - v116;
  MEMORY[0x28223BE20](v115);
  v119 = &v292 - v118;
  v354 = MEMORY[0x277D84F90];
  v120 = *(v0 + 24);
  v349 = v24;
  v346 = v0;
  if (!v120)
  {
    v347 = *(v24 + 56);
    v347(v22, 1, 1, v23);
LABEL_5:
    sub_21489DFCC(v22, &qword_27CA1B5C0, qword_214995B18);
    v121 = v346;
    v122 = v348;
    v123 = *(v346 + 48);
    if (!v123)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v293 = v12;

  sub_21498DFA0();
  v347 = *(v24 + 56);
  v347(v22, 0, 1, v23);

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v12 = v293;
    goto LABEL_5;
  }

  v153 = *(v24 + 32);
  v153(v119, v22, v23);
  (*(v24 + 16))(v117, v119, v23);
  v154 = sub_2148A95DC(0, 1, 1, MEMORY[0x277D84F90]);
  v156 = *(v154 + 2);
  v155 = *(v154 + 3);
  if (v156 >= v155 >> 1)
  {
    v154 = sub_2148A95DC((v155 > 1), v156 + 1, 1, v154);
  }

  v122 = v348;
  v157 = v349 + 8;
  (*(v349 + 8))(v119, v23);
  *(v154 + 2) = v156 + 1;
  v158 = &v154[(*(v157 + 72) + 32) & ~*(v157 + 72)];
  v159 = *(v157 + 64);
  v24 = v349;
  v153(&v158[v159 * v156], v117, v23);
  v354 = v154;
  v121 = v346;
  v12 = v293;
  v123 = *(v346 + 48);
  if (v123)
  {
LABEL_6:
    v125 = *(v121 + 56);
    v124 = *(v121 + 64);
    v350 = *(v121 + 32);
    v351 = v123;
    v352 = v125;
    v353 = v124;
    v126 = sub_2148DE75C();
    sub_2148A8B0C(v126);
  }

LABEL_7:
  v127 = *(v121 + 88);

  sub_2148DFD6C(v127, v122);

  v348 = *(v24 + 48);
  if (v348(v122, 1, v23) == 1)
  {
    sub_21489DFCC(v122, &qword_27CA1B5C0, qword_214995B18);
  }

  else
  {
    v128 = *(v24 + 32);
    v129 = v309;
    v128(v309, v122, v23);
    (*(v24 + 16))(v310, v129, v23);
    v130 = v354;
    v131 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_2148A95DC(0, *(v130 + 2) + 1, 1, v130);
    }

    v133 = *(v130 + 2);
    v132 = *(v130 + 3);
    if (v133 >= v132 >> 1)
    {
      v130 = sub_2148A95DC((v132 > 1), v133 + 1, 1, v130);
    }

    (*(v24 + 8))(v309, v23);
    *(v130 + 2) = v133 + 1;
    v128(&v130[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v133], v310, v23);
    v354 = v130;
    v12 = v131;
  }

  v134 = *(v121 + 112);

  v135 = v313;
  sub_2148DFF60(v134, v313);

  if (v348(v135, 1, v23) == 1)
  {
    sub_21489DFCC(v135, &qword_27CA1B5C0, qword_214995B18);
    if (*(v121 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v137 = v349;
    v136 = v314;
    v347(v314, 1, 1, v23);
    goto LABEL_29;
  }

  v147 = v349;
  v148 = *(v349 + 32);
  v149 = v311;
  v148(v311, v135, v23);
  (*(v147 + 16))(v312, v149, v23);
  v150 = v354;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v150 = sub_2148A95DC(0, *(v150 + 2) + 1, 1, v150);
  }

  v152 = *(v150 + 2);
  v151 = *(v150 + 3);
  if (v152 >= v151 >> 1)
  {
    v150 = sub_2148A95DC((v151 > 1), v152 + 1, 1, v150);
  }

  (*(v147 + 8))(v311, v23);
  *(v150 + 2) = v152 + 1;
  v148(&v150[((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72) * v152], v312, v23);
  v354 = v150;
  if (!*(v121 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v136 = v314;
  sub_21498DFA0();
  v137 = v349;
  v347(v136, 0, 1, v23);

  if (v348(v136, 1, v23) != 1)
  {
    v138 = *(v137 + 32);
    v139 = v294;
    v138(v294, v136, v23);
    (*(v137 + 16))(v295, v139, v23);
    v140 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v140 = sub_2148A95DC(0, *(v140 + 2) + 1, 1, v140);
    }

    v142 = *(v140 + 2);
    v141 = *(v140 + 3);
    if (v142 >= v141 >> 1)
    {
      v140 = sub_2148A95DC((v141 > 1), v142 + 1, 1, v140);
    }

    v143 = v349 + 8;
    (*(v349 + 8))(v294, v23);
    *(v140 + 2) = v142 + 1;
    v144 = &v140[(*(v143 + 72) + 32) & ~*(v143 + 72)];
    v145 = *(v143 + 64);
    v137 = v349;
    v138(&v144[v145 * v142], v295, v23);
    v354 = v140;
    if (!*(v121 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_21489DFCC(v136, &qword_27CA1B5C0, qword_214995B18);
  if (!*(v121 + 176))
  {
LABEL_22:
    v146 = v315;
    v347(v315, 1, 1, v23);
LABEL_31:
    sub_21489DFCC(v146, &qword_27CA1B5C0, qword_214995B18);
    goto LABEL_41;
  }

LABEL_30:

  v146 = v315;
  sub_21498DFA0();
  v347(v146, 0, 1, v23);

  if (v348(v146, 1, v23) == 1)
  {
    goto LABEL_31;
  }

  v160 = *(v137 + 32);
  v161 = v296;
  v160(v296, v146, v23);
  (*(v137 + 16))(v297, v161, v23);
  v162 = v354;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v162 = sub_2148A95DC(0, *(v162 + 2) + 1, 1, v162);
  }

  v164 = *(v162 + 2);
  v163 = *(v162 + 3);
  if (v164 >= v163 >> 1)
  {
    v162 = sub_2148A95DC((v163 > 1), v164 + 1, 1, v162);
  }

  (*(v137 + 8))(v296, v23);
  *(v162 + 2) = v164 + 1;
  v160(&v162[((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v164], v297, v23);
  v354 = v162;
LABEL_41:

  sub_2148E0888(v165);
  if (v166)
  {
    v167 = v298;
    sub_21498DFA0();

    v168 = v349;
    v169 = *(v349 + 32);
    v170 = v328;
    v169(v328, v167, v23);
    (*(v168 + 16))(v329, v170, v23);
    v171 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v171 = sub_2148A95DC(0, *(v171 + 2) + 1, 1, v171);
    }

    v173 = *(v171 + 2);
    v172 = *(v171 + 3);
    if (v173 >= v172 >> 1)
    {
      v171 = sub_2148A95DC((v172 > 1), v173 + 1, 1, v171);
    }

    (*(v168 + 8))(v328, v23);
    *(v171 + 2) = v173 + 1;
    v169(&v171[((*(v168 + 80) + 32) & ~*(v168 + 80)) + *(v168 + 72) * v173], v329, v23);
    v354 = v171;
  }

  else
  {
  }

  v174 = type metadata accessor for TapToRadarDraft(0);
  sub_2148E00B8(v12);
  if (v348(v12, 1, v23) == 1)
  {
    sub_21489DFCC(v12, &qword_27CA1B5C0, qword_214995B18);
  }

  else
  {
    v175 = v349;
    v176 = *(v349 + 32);
    v177 = v316;
    v176(v316, v12, v23);
    (*(v175 + 16))(v317, v177, v23);
    v178 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v178 = sub_2148A95DC(0, *(v178 + 2) + 1, 1, v178);
    }

    v180 = *(v178 + 2);
    v179 = *(v178 + 3);
    if (v180 >= v179 >> 1)
    {
      v178 = sub_2148A95DC((v179 > 1), v180 + 1, 1, v178);
    }

    (*(v175 + 8))(v316, v23);
    *(v178 + 2) = v180 + 1;
    v176(&v178[((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v180], v317, v23);
    v354 = v178;
  }

  sub_2148E0674(v181);
  if (v182)
  {
    v183 = v299;
    sub_21498DFA0();

    v184 = v349;
    v185 = *(v349 + 32);
    v186 = v330;
    v185(v330, v183, v23);
    (*(v184 + 16))(v331, v186, v23);
    v187 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v187 = sub_2148A95DC(0, *(v187 + 2) + 1, 1, v187);
    }

    v189 = *(v187 + 2);
    v188 = *(v187 + 3);
    if (v189 >= v188 >> 1)
    {
      v187 = sub_2148A95DC((v188 > 1), v189 + 1, 1, v187);
    }

    (*(v184 + 8))(v330, v23);
    *(v187 + 2) = v189 + 1;
    v185(&v187[((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v189], v331, v23);
    v354 = v187;
  }

  else
  {
  }

  sub_2148E0674(v190);
  if (v191)
  {
    v192 = v300;
    sub_21498DFA0();

    v193 = v349;
    v194 = *(v349 + 32);
    v195 = v332;
    v194(v332, v192, v23);
    (*(v193 + 16))(v333, v195, v23);
    v196 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v196 = sub_2148A95DC(0, *(v196 + 2) + 1, 1, v196);
    }

    v198 = *(v196 + 2);
    v197 = *(v196 + 3);
    if (v198 >= v197 >> 1)
    {
      v196 = sub_2148A95DC((v197 > 1), v198 + 1, 1, v196);
    }

    (*(v193 + 8))(v332, v23);
    *(v196 + 2) = v198 + 1;
    v194(&v196[((*(v193 + 80) + 32) & ~*(v193 + 80)) + *(v193 + 72) * v198], v333, v23);
    v354 = v196;
  }

  else
  {
  }

  sub_2148E0544(v199);
  if (v200)
  {
    v201 = v301;
    sub_21498DFA0();

    v202 = v349;
    v203 = *(v349 + 32);
    v204 = v334;
    v203(v334, v201, v23);
    (*(v202 + 16))(v335, v204, v23);
    v205 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_2148A95DC(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_2148A95DC((v206 > 1), v207 + 1, 1, v205);
    }

    v208 = v349 + 8;
    (*(v349 + 8))(v334, v23);
    *(v205 + 2) = v207 + 1;
    v209 = &v205[(*(v208 + 72) + 32) & ~*(v208 + 72)];
    v210 = *(v208 + 64);
    v211 = v349;
    v203(&v209[v210 * v207], v335, v23);
    v354 = v205;
  }

  else
  {

    v211 = v349;
  }

  v212 = v320;
  sub_21498DFA0();

  v347(v212, 0, 1, v23);

  if (v348(v212, 1, v23) == 1)
  {
    sub_21489DFCC(v212, &qword_27CA1B5C0, qword_214995B18);
  }

  else
  {
    v213 = *(v211 + 32);
    v214 = v318;
    v213(v318, v212, v23);
    (*(v211 + 16))(v319, v214, v23);
    v215 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_2148A95DC(0, *(v215 + 2) + 1, 1, v215);
    }

    v217 = *(v215 + 2);
    v216 = *(v215 + 3);
    if (v217 >= v216 >> 1)
    {
      v215 = sub_2148A95DC((v216 > 1), v217 + 1, 1, v215);
    }

    (*(v211 + 8))(v318, v23);
    *(v215 + 2) = v217 + 1;
    v213(&v215[((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v217], v319, v23);
    v354 = v215;
    v121 = v346;
  }

  sub_2148E0544(v218);
  if (v219)
  {
    v220 = v302;
    sub_21498DFA0();

    v221 = v349;
    v222 = *(v349 + 32);
    v223 = v336;
    v222(v336, v220, v23);
    (*(v221 + 16))(v337, v223, v23);
    v224 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v224 = sub_2148A95DC(0, *(v224 + 2) + 1, 1, v224);
    }

    v226 = *(v224 + 2);
    v225 = *(v224 + 3);
    if (v226 >= v225 >> 1)
    {
      v224 = sub_2148A95DC((v225 > 1), v226 + 1, 1, v224);
    }

    (*(v221 + 8))(v336, v23);
    *(v224 + 2) = v226 + 1;
    v222(&v224[((*(v221 + 80) + 32) & ~*(v221 + 80)) + *(v221 + 72) * v226], v337, v23);
    v354 = v224;
    v121 = v346;
  }

  else
  {
  }

  sub_2148E0384(v227);
  if (v228)
  {
    v229 = v303;
    sub_21498DFA0();

    v230 = v349;
    v231 = *(v349 + 32);
    v232 = v338;
    v231(v338, v229, v23);
    (*(v230 + 16))(v339, v232, v23);
    v233 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v233 = sub_2148A95DC(0, *(v233 + 2) + 1, 1, v233);
    }

    v235 = *(v233 + 2);
    v234 = *(v233 + 3);
    if (v235 >= v234 >> 1)
    {
      v233 = sub_2148A95DC((v234 > 1), v235 + 1, 1, v233);
    }

    (*(v230 + 8))(v338, v23);
    *(v233 + 2) = v235 + 1;
    v231(&v233[((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v235], v339, v23);
    v354 = v233;
    v121 = v346;
  }

  else
  {
  }

  sub_2148E0544(v236);
  if (v237)
  {
    v238 = v304;
    sub_21498DFA0();

    v239 = v349;
    v240 = *(v349 + 32);
    v241 = v340;
    v240(v340, v238, v23);
    (*(v239 + 16))(v341, v241, v23);
    v242 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v242 = sub_2148A95DC(0, *(v242 + 2) + 1, 1, v242);
    }

    v244 = *(v242 + 2);
    v243 = *(v242 + 3);
    if (v244 >= v243 >> 1)
    {
      v242 = sub_2148A95DC((v243 > 1), v244 + 1, 1, v242);
    }

    (*(v239 + 8))(v340, v23);
    *(v242 + 2) = v244 + 1;
    v240(&v242[((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v244], v341, v23);
    v354 = v242;
    v121 = v346;
  }

  else
  {
  }

  v245 = *(v121 + v174[19] + 16);

  sub_2148DF500(v245);
  if (v246)
  {
    v247 = v305;
    sub_21498DFA0();

    v248 = v349;
    v249 = *(v349 + 32);
    v250 = v342;
    v249(v342, v247, v23);
    (*(v248 + 16))(v343, v250, v23);
    v251 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v251 = sub_2148A95DC(0, *(v251 + 2) + 1, 1, v251);
    }

    v253 = *(v251 + 2);
    v252 = *(v251 + 3);
    if (v253 >= v252 >> 1)
    {
      v251 = sub_2148A95DC((v252 > 1), v253 + 1, 1, v251);
    }

    (*(v248 + 8))(v342, v23);
    *(v251 + 2) = v253 + 1;
    v249(&v251[((*(v248 + 80) + 32) & ~*(v248 + 80)) + *(v248 + 72) * v253], v343, v23);
    v354 = v251;
    v121 = v346;
  }

  else
  {
  }

  v254 = v323;
  sub_21498DFA0();

  v347(v254, 0, 1, v23);

  if (v348(v254, 1, v23) == 1)
  {
    sub_21489DFCC(v254, &qword_27CA1B5C0, qword_214995B18);
  }

  else
  {
    v255 = v349;
    v256 = *(v349 + 32);
    v257 = v321;
    v256(v321, v254, v23);
    (*(v255 + 16))(v322, v257, v23);
    v258 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v258 = sub_2148A95DC(0, *(v258 + 2) + 1, 1, v258);
    }

    v260 = *(v258 + 2);
    v259 = *(v258 + 3);
    if (v260 >= v259 >> 1)
    {
      v258 = sub_2148A95DC((v259 > 1), v260 + 1, 1, v258);
    }

    (*(v255 + 8))(v321, v23);
    *(v258 + 2) = v260 + 1;
    v256(&v258[((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v260], v322, v23);
    v354 = v258;
    v121 = v346;
  }

  v261 = v326;
  v262 = (v121 + v174[21]);
  v264 = *v262;
  v263 = v262[1];
  LOBYTE(v262) = *(v262 + 16);
  *&v350 = v264;
  *(&v350 + 1) = v263;
  LOBYTE(v351) = v262;

  sub_2148DF768();
  if (v265)
  {
    sub_21498DFA0();

    v266 = 0;
  }

  else
  {

    v266 = 1;
  }

  v267 = v349;
  v347(v261, v266, 1, v23);
  if (v348(v261, 1, v23) == 1)
  {
    sub_21489DFCC(v261, &qword_27CA1B5C0, qword_214995B18);
  }

  else
  {
    v268 = v261;
    v269 = *(v267 + 32);
    v270 = v324;
    v269(v324, v268, v23);
    (*(v267 + 16))(v325, v270, v23);
    v271 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v271 = sub_2148A95DC(0, *(v271 + 2) + 1, 1, v271);
    }

    v273 = *(v271 + 2);
    v272 = *(v271 + 3);
    if (v273 >= v272 >> 1)
    {
      v271 = sub_2148A95DC((v272 > 1), v273 + 1, 1, v271);
    }

    (*(v267 + 8))(v324, v23);
    *(v271 + 2) = v273 + 1;
    v269(&v271[((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v273], v325, v23);
    v354 = v271;
    v121 = v346;
  }

  sub_2148E0544(v274);
  if (v275)
  {
    v276 = v306;
    sub_21498DFA0();

    v277 = v349;
    v278 = *(v349 + 32);
    v279 = v344;
    v278(v344, v276, v23);
    (*(v277 + 16))(v345, v279, v23);
    v280 = v354;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v280 = sub_2148A95DC(0, *(v280 + 2) + 1, 1, v280);
    }

    v282 = *(v280 + 2);
    v281 = *(v280 + 3);
    if (v282 >= v281 >> 1)
    {
      v280 = sub_2148A95DC((v281 > 1), v282 + 1, 1, v280);
    }

    (*(v277 + 8))(v344, v23);
    *(v280 + 2) = v282 + 1;
    v278(&v280[((*(v277 + 80) + 32) & ~*(v277 + 80)) + *(v277 + 72) * v282], v345, v23);
    v354 = v280;
    v121 = v346;
  }

  else
  {
  }

  v283 = v327;
  if (!*(v121 + v174[23] + 24))
  {
    v347(v327, 1, 1, v23);
    goto LABEL_143;
  }

  sub_21498DFA0();
  v347(v283, 0, 1, v23);

  if (v348(v283, 1, v23) == 1)
  {
LABEL_143:
    sub_21489DFCC(v283, &qword_27CA1B5C0, qword_214995B18);
    return v354;
  }

  v284 = *(v349 + 32);
  v285 = v307;
  v286 = v283;
  v287 = v349;
  v284(v307, v286, v23);
  (*(v287 + 16))(v308, v285, v23);
  v288 = v354;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v288 = sub_2148A95DC(0, *(v288 + 2) + 1, 1, v288);
  }

  v290 = *(v288 + 2);
  v289 = *(v288 + 3);
  if (v290 >= v289 >> 1)
  {
    v288 = sub_2148A95DC((v289 > 1), v290 + 1, 1, v288);
  }

  (*(v287 + 8))(v307, v23);
  *(v288 + 2) = v290 + 1;
  v284(&v288[((*(v287 + 80) + 32) & ~*(v287 + 80)) + *(v287 + 72) * v290], v308, v23);
  return v288;
}

uint64_t sub_2148DE700(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_2148DE75C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A380, &qword_214991820);
  sub_21498DFB0();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_214992710;
  sub_214990050();
  sub_21498DFA0();

  sub_21498DFA0();
  sub_21498DFA0();
  return v0;
}

uint64_t static TapToRadarDraft.Component.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_214990080();
}

uint64_t TapToRadarDraft.Component.hash(into:)(uint64_t a1)
{
  MEMORY[0x216059200](*v1);
  sub_21498F900();

  return sub_21498F900();
}

uint64_t TapToRadarDraft.Component.hashValue.getter()
{
  v1 = *v0;
  sub_214990160();
  MEMORY[0x216059200](v1);
  sub_21498F900();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148DEA90()
{
  v1 = *v0;
  sub_214990160();
  MEMORY[0x216059200](v1);
  sub_21498F900();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148DEB10(uint64_t a1)
{
  MEMORY[0x216059200](*v1);
  sub_21498F900();

  return sub_21498F900();
}

uint64_t sub_2148DEB80(uint64_t a1)
{
  v2 = *v1;
  sub_214990160();
  MEMORY[0x216059200](v2);
  sub_21498F900();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148DEBFC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_214990080();
}

unint64_t TapToRadarDraft.Classification.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x2065727574616546;
    v7 = 0x6D65636E61686E45;
    if (v1 != 8)
    {
      v7 = 1802723668;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x2073756F69726553;
    if (v1 != 5)
    {
      v8 = 0x754220726568744FLL;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x7974697275636553;
    v3 = 0x7265776F50;
    v4 = 0x616D726F66726550;
    if (v1 != 3)
    {
      v4 = 0x69626173552F4955;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
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
}

iCloudMailAssistant::TapToRadarDraft::Classification_optional __swiftcall TapToRadarDraft.Classification.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21498FEF0();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2148DEE7C()
{
  v1 = *v0;
  sub_214990160();
  sub_2148DA890(v3, v1);
  return sub_214990190();
}

uint64_t sub_2148DEECC(uint64_t a1)
{
  v2 = *v1;
  sub_214990160();
  sub_2148DA890(v4, v2);
  return sub_214990190();
}

unint64_t sub_2148DEF1C@<X0>(unint64_t *a1@<X8>)
{
  result = TapToRadarDraft.Classification.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TapToRadarDraft.Reproducibility.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737961776C41;
  v3 = 0x656C62616E55;
  v4 = 0x74276E6469442049;
  if (v1 != 4)
  {
    v4 = 0x6C70704120746F4ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656D6974656D6F53;
  if (v1 != 1)
  {
    v5 = 0x796C65726152;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

iCloudMailAssistant::TapToRadarDraft::Reproducibility_optional __swiftcall TapToRadarDraft.Reproducibility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21498FEF0();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2148DF07C(uint64_t a1)
{
  sub_21498F900();
}

void sub_2148DF18C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t TapToRadarDraft.DeviceClass.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656E6F685069;
  v3 = 0x5654656C707041;
  v4 = 0x646F50656D6F48;
  if (v1 != 4)
  {
    v4 = 6512973;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1684099177;
  if (v1 != 1)
  {
    v5 = 0x6863746157;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

iCloudMailAssistant::TapToRadarDraft::DeviceClass_optional __swiftcall TapToRadarDraft.DeviceClass.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21498FEF0();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2148DF36C(uint64_t a1)
{
  sub_21498F900();
}

void sub_2148DF458(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE700000000000000;
  v6 = 0x5654656C707041;
  v7 = 0xE700000000000000;
  v8 = 0x646F50656D6F48;
  if (v2 != 4)
  {
    v8 = 6512973;
    v7 = 0xE300000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1684099177;
  if (v2 != 1)
  {
    v10 = 0x6863746157;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2148DF500(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v2 = sub_21498F810();

  return v2;
}

uint64_t sub_2148DF598()
{
  v1 = *v0;
  sub_214990160();
  MEMORY[0x216059200](v1);
  return sub_214990190();
}

uint64_t sub_2148DF5E0(uint64_t a1)
{
  v2 = *v1;
  sub_214990160();
  MEMORY[0x216059200](v2);
  return sub_214990190();
}

void *sub_2148DF64C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_2148DF678@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_2148DF728@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2148E26AC(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_2148DF768()
{
  v1 = *v0;
  if (v1 <= 2 && !*v0)
  {

    return 0;
  }

  v2 = sub_214990080();

  if (v2)
  {
    return 0;
  }

  if (v1 > 3)
  {
    if (v1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (v1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (v1 == 1)
  {
    return 48;
  }

  else if (v1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t TapToRadarDraft.AutoDiagnostics.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 48;
    if (v1 != 1)
    {
      v4 = 12589;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 7105633;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    if (*v0 <= 4u)
    {
      return 0xD000000000000010;
    }

    else
    {
      return v2;
    }
  }
}

iCloudMailAssistant::TapToRadarDraft::AutoDiagnostics_optional __swiftcall TapToRadarDraft.AutoDiagnostics.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21498FEF0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2148DFA54(uint64_t a1)
{
  sub_21498F900();
}

void sub_2148DFB64(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000002149A0700;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000002149A0720;
    }

    v5 = 0x80000002149A06C0;
    if (v2 != 3)
    {
      v5 = 0x80000002149A06E0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

unint64_t TapToRadarDraft.TapToRadarError.errorDescription.getter()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t TapToRadarDraft.TapToRadarError.hashValue.getter()
{
  v1 = *v0;
  sub_214990160();
  MEMORY[0x216059200](v1);
  return sub_214990190();
}

unint64_t sub_2148DFD14()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_2148DFD6C@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v5 = 1;
  }

  else
  {
    sub_21498DFA0();

    v5 = 0;
  }

  v6 = sub_21498DFB0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_2148DFF60@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v5 = 1;
  }

  else
  {
    sub_21498DFA0();

    v5 = 0;
  }

  v6 = sub_21498DFB0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_2148E00B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_21498E320();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA8, &unk_214993E28);
  sub_2148AA824(v2 + *(v11 + 36), v6, &qword_27CA1ABA0, &qword_214993E20);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21489DFCC(v6, &qword_27CA1ABA0, &qword_214993E20);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_21498F840();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_21498E2B0();
    v16 = [v13 stringFromDate_];

    sub_21498F870();
    (*(v8 + 8))(v10, v7);
    sub_21498DFA0();

    v12 = 0;
  }

  v17 = sub_21498DFB0();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_2148E0384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = MEMORY[0x277D84F90];
  v3 = (a1 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    v6 = v5 == 4;
    v7 = 0x646F50656D6F48;
    if (v5 != 4)
    {
      v7 = 6512973;
    }

    v8 = 0xE300000000000000;
    if (v6)
    {
      v8 = 0xE700000000000000;
    }

    if (v4 == 3)
    {
      v7 = 0x5654656C707041;
      v8 = 0xE700000000000000;
    }

    v9 = 1684099177;
    if (v4 != 1)
    {
      v9 = 0x6863746157;
    }

    v10 = 0xE400000000000000;
    if (v4 != 1)
    {
      v10 = 0xE500000000000000;
    }

    if (!v4)
    {
      v9 = 0x656E6F685069;
      v10 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = v7;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2148A90C8(0, *(v2 + 2) + 1, 1, v2);
    }

    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = sub_2148A90C8((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v12;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v16 = sub_21498F810();

  return v16;
}

uint64_t sub_2148E0544(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2148A90C8(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_2148A90C8((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v9 = sub_21498F810();

  return v9;
}

uint64_t sub_2148E0674(uint64_t a1)
{
  v23 = sub_21498E1B0();
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_21498E170();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2148A90C8(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_2148A90C8((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v19 = sub_21498F810();

  return v19;
}

uint64_t sub_2148E0888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v4 = sub_214990050();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2148A90C8(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_2148A90C8((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
  sub_21489CA54();
  v10 = sub_21498F810();

  return v10;
}

unint64_t sub_2148E09E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B590, &unk_214995AD0);
    v3 = sub_21498FEC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2148AA824(v4, v13, &qword_27CA1A3B8, &qword_214991A68);
      result = sub_214908014(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2148A4198(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_2148E0B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4B8, &qword_214992020);
    v3 = sub_21498FEC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2148AA824(v4, &v13, &qword_27CA1A4C8, &unk_214992030);
      v5 = v13;
      v6 = v14;
      result = sub_214907F9C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2148A4198(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2148E0C4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A7C0, &unk_214995AE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B598, &qword_21499EFD0);
    v7 = sub_21498FEC0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2148AA824(v9, v5, &qword_27CA1A7C0, &unk_214995AE0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_214907F9C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_21498E7C0();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_2148E0E38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B5B0, &qword_214995B00);
    v3 = sub_21498FEC0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2148AA824(v4, &v11, &qword_27CA1B5B8, &unk_214995B08);
      v5 = v11;
      result = sub_214908058(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2148A4198(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_2148E0F60()
{
  result = qword_27CA1A020;
  if (!qword_27CA1A020)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A020);
  }

  return result;
}

unint64_t sub_2148E0FD4()
{
  result = qword_27CA1B3E0;
  if (!qword_27CA1B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B3E0);
  }

  return result;
}

unint64_t sub_2148E102C()
{
  result = qword_27CA1B3E8;
  if (!qword_27CA1B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B3E8);
  }

  return result;
}

unint64_t sub_2148E1084()
{
  result = qword_27CA1B3F0;
  if (!qword_27CA1B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B3F0);
  }

  return result;
}

unint64_t sub_2148E10DC()
{
  result = qword_27CA1B3F8;
  if (!qword_27CA1B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B3F8);
  }

  return result;
}

unint64_t sub_2148E1134()
{
  result = qword_27CA1B400;
  if (!qword_27CA1B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B400);
  }

  return result;
}

unint64_t sub_2148E118C()
{
  result = qword_27CA1B408;
  if (!qword_27CA1B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B408);
  }

  return result;
}

unint64_t sub_2148E11E4()
{
  result = qword_27CA1B410;
  if (!qword_27CA1B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B410);
  }

  return result;
}

void sub_2148E1260(uint64_t a1)
{
  sub_2148E16A0(319, &qword_27CA1B428, &qword_27CA1AB18, &unk_21499A610, sub_2148E15BC);
  if (v1 <= 0x3F)
  {
    sub_2148E1650();
    if (v2 <= 0x3F)
    {
      sub_2148E16A0(319, &qword_27CA1B440, &qword_27CA1B448, &qword_214995770, sub_2148E1710);
      if (v3 <= 0x3F)
      {
        sub_2148E16A0(319, &qword_27CA1B458, &qword_27CA1B460, &qword_214995778, sub_2148E178C);
        if (v4 <= 0x3F)
        {
          sub_2148E16A0(319, &qword_27CA1B470, &qword_27CA1B478, &qword_214995780, sub_2148E1808);
          if (v5 <= 0x3F)
          {
            sub_2148E16A0(319, &qword_27CA1B488, &qword_27CA1ABA0, &qword_214993E20, sub_2148E1884);
            if (v6 <= 0x3F)
            {
              sub_2148E16A0(319, &qword_27CA1B498, &qword_27CA1B4A0, &unk_214995788, sub_2148E1900);
              if (v7 <= 0x3F)
              {
                sub_2148E16A0(319, &qword_27CA1B4B0, &qword_27CA1A378, &qword_214993B80, sub_2148E197C);
                if (v8 <= 0x3F)
                {
                  sub_2148E1A74(319, &qword_27CA1B4C0, MEMORY[0x277D839B0], &off_2826C7C00);
                  if (v9 <= 0x3F)
                  {
                    sub_2148E16A0(319, &qword_27CA1B4C8, &qword_27CA1B4D0, &qword_214995798, sub_2148E19F8);
                    if (v10 <= 0x3F)
                    {
                      sub_2148E1A74(319, &qword_27CA1B4E0, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &off_2826C8028);
                      if (v11 <= 0x3F)
                      {
                        sub_2148E1A74(319, qword_27CA1B4E8, &type metadata for TapToRadarDraft.AutoDiagnostics, &off_2826C7BD0);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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

unint64_t sub_2148E15BC()
{
  result = qword_27CA1B430;
  if (!qword_27CA1B430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AB18, &unk_21499A610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B430);
  }

  return result;
}

void sub_2148E1650()
{
  if (!qword_27CA1B438)
  {
    v0 = sub_21498FCF0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1B438);
    }
  }
}

void sub_2148E16A0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_2148E1710()
{
  result = qword_27CA1B450;
  if (!qword_27CA1B450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B448, &qword_214995770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B450);
  }

  return result;
}

unint64_t sub_2148E178C()
{
  result = qword_27CA1B468;
  if (!qword_27CA1B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B460, &qword_214995778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1B468);
  }

  return result;
}