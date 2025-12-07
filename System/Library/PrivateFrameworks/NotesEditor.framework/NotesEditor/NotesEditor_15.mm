uint64_t sub_215436458@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v63 = sub_2154A051C();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SummaryView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCC0, &qword_2154C4878);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCB8, &qword_2154C4870);
  v56 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v48 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCB0, &qword_2154C4868);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v53 = &v48 - v11;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDB8, &qword_2154C4A28);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v54 = &v48 - v12;
  v13 = v2[1];
  v14 = v2[2];
  v15 = v2[3];
  sub_2154A0FAC();
  sub_21549FE4C();
  v50 = v13;

  v49 = v15;
  v48 = sub_2154A0CAC();
  KeyPath = swift_getKeyPath(aH_3);
  sub_2153F0A20(v2, &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  sub_215439764(&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = &v9[*(v7 + 36)];
  sub_21549FBCC();
  sub_2154A200C();
  *v19 = &unk_2154C4A68;
  *(v19 + 1) = v18;
  v20 = v73;
  *(v9 + 72) = v74;
  v21 = v76;
  *(v9 + 88) = v75;
  *(v9 + 104) = v21;
  *(v9 + 120) = v77;
  v22 = v72;
  *(v9 + 24) = v71;
  *(v9 + 40) = v22;
  *v9 = v50;
  *(v9 + 1) = v14;
  *(v9 + 2) = v49;
  *(v9 + 56) = v20;
  v23 = v48;
  *(v9 + 17) = KeyPath;
  *(v9 + 18) = v23;
  sub_2153F0A20(v2, &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = swift_allocObject();
  sub_215439764(&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v17);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCC8, &qword_2154C4880);
  v26 = sub_215439470();
  v27 = sub_2151ACC5C(&qword_27CA5DCF8, &qword_27CA5DCC8, &qword_2154C4880, MEMORY[0x277CDDF68]);
  v28 = v52;
  v29 = v51;
  sub_2154A0BEC();
  sub_2151ADCD8(v9, &qword_27CA5DCC0, &qword_2154C4878);

  v30 = [objc_opt_self() mainBundle];
  v31 = sub_2154A1D2C();
  v32 = [v30 localizedStringForKey:v31 value:0 table:0];

  v33 = sub_2154A1D6C();
  v35 = v34;

  v69 = v33;
  v70 = v35;
  v65 = v29;
  v66 = v25;
  v67 = v26;
  v68 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = sub_215324954();
  v38 = MEMORY[0x277D837D0];
  v39 = v53;
  v40 = v55;
  sub_2154A0A7C();

  (*(v56 + 8))(v28, v40);
  v41 = v61;
  sub_2154A050C();
  v65 = v40;
  v66 = v38;
  v67 = OpaqueTypeConformance2;
  v68 = v37;
  swift_getOpaqueTypeConformance2();
  v42 = v54;
  v43 = v57;
  sub_2154A0B3C();
  (*(v62 + 8))(v41, v63);
  (*(v58 + 8))(v39, v43);
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DCA0, &qword_2154C4860) + 36);
  v45 = swift_getKeyPath(a0_2);
  v46 = v64;
  *(v64 + v44) = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0, &qword_2154C0AD8);
  swift_storeEnumTagMultiPayload();
  return (*(v59 + 32))(v46, v42, v60);
}

uint64_t sub_215436C24(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_2154A040C();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DC90, &qword_2154C4858);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  sub_2154A03FC();
  v12 = a1;
  sub_21543A420();
  sub_21549FE3C();
  v9 = sub_2151ACC5C(&qword_27CA5DC98, &qword_27CA5DC90, &qword_2154C4858, MEMORY[0x277CDDB60]);
  MEMORY[0x216066FF0](v8, v5, v9);
  return (*(v6 + 8))(v8, v5);
}

void sub_215436DC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summaryViewed;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    *(v1 + v2) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2154C4960);
    MEMORY[0x28223BE20](KeyPath);
    sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel, &protocol conformance descriptor for SummaryViewModel);
    sub_21549ED8C();
  }

  v4 = [objc_opt_self() sharedReachabilityForInternetConnection];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 currentReachabilityStatus];

    if (!v6)
    {
      swift_getKeyPath(byte_2154C4988);
      sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel, &protocol conformance descriptor for SummaryViewModel);
      sub_21549ED9C();

      v7 = (v1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary);
      swift_beginAccess();
      v8 = v7[1];
      v9 = *v7 & 0xFFFFFFFFFFFFLL;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(v8) & 0xF;
      }

      if (!v9)
      {
        v10 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
        swift_beginAccess();
        if (*(v1 + v10) != 1)
        {
          v11 = swift_getKeyPath(byte_2154C48B8);
          MEMORY[0x28223BE20](v11);
          sub_21549ED8C();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CA40, &unk_2154BFA90);
        sub_2154A0DFC();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2154370D8(uint64_t *a1)
{
  v2 = sub_21549EA1C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if (*(*a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summarizationTask))
  {
    KeyPath = swift_getKeyPath(a8_0, v4);
    MEMORY[0x28223BE20](KeyPath);
    v12[-2] = v7;
    v12[-1] = 0;
    v12[3] = v7;
    sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel, &protocol conformance descriptor for SummaryViewModel);
    sub_21549ED8C();
  }

  else
  {
    sub_21535A0A4(0);
  }

  v9 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__currentSummaryAlertType;
  swift_beginAccess();
  if (*(v7 + v9) != 2)
  {
    v10 = swift_getKeyPath(byte_2154C48B8);
    MEMORY[0x28223BE20](v10);
    v12[-2] = v7;
    LOBYTE(v12[-1]) = 2;
    v12[2] = v7;
    sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel, &protocol conformance descriptor for SummaryViewModel);
    sub_21549ED8C();
  }

  (*(v3 + 104))(v6, *MEMORY[0x277D35A38], v2);
  sub_21535D26C(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_21543747C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v16[2] = a2;
  v3 = sub_2154A0C7C();
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for SummaryAlert(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v10 = *(v9 + 28);

  sub_2154350C4((v7 + v10));
  *v7 = v8;
  v17 = sub_215353C44();
  v18 = v11;
  sub_215324954();
  v12 = sub_2154A092C();
  v16[0] = v13;
  v16[1] = v12;
  v17 = sub_215353D90();
  v18 = v14;
  sub_2154A092C();
  sub_215353F40();
  sub_215354328();
  sub_2154A0C4C();
  return sub_215439E04(v7);
}

uint64_t sub_215437630(uint64_t a1)
{
  *(v1 + 64) = a1;
  sub_2154A1FFC();
  *(v1 + 72) = sub_2154A1FEC();
  v3 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_2154376C8, v3, v2);
}

uint64_t sub_2154376C8()
{
  v1 = v0[8];

  v2 = *v1;
  swift_getKeyPath(byte_2154C4AD8);
  v0[2] = v2;
  sub_215439670(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel, &protocol conformance descriptor for SummaryViewModel);
  sub_21549ED9C();

  v3 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__isSummarizing;
  swift_beginAccess();
  if ((*(v2 + v3) & 1) == 0)
  {
    swift_getKeyPath(byte_2154C4988);
    v0[5] = v2;
    sub_21549ED9C();

    v4 = (v2 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary);
    swift_beginAccess();
    v5 = v4[1];
    v6 = *v4 & 0xFFFFFFFFFFFFLL;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(v5) & 0xF;
    }

    if (!v6)
    {
      sub_21535B270();
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_215437848@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDC0, &qword_2154C4AA0);
  MEMORY[0x28223BE20](v75);
  v74 = &v58 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDC8, &qword_2154C4AA8);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v71 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDD0, &qword_2154C4AB0);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v58 - v6;
  v7 = sub_2154A040C();
  MEMORY[0x28223BE20](v7 - 8);
  v69 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDD8, &unk_2154C4AB8);
  v61 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v60 = &v58 - v9;
  v10 = sub_2154A04CC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE40, &unk_2154C1C80);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8, &qword_2154C4E80);
  MEMORY[0x28223BE20](v17 - 8);
  v63 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = (&v58 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DDE0, &unk_2154C4AC8);
  MEMORY[0x28223BE20](v25 - 8);
  v64 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v65 = &v58 - v28;
  v70 = v1;
  sub_215434EEC(v24);
  (*(v11 + 104))(v21, *MEMORY[0x277CE0558], v10);
  (*(v11 + 56))(v21, 0, 1, v10);
  v29 = *(v14 + 56);
  sub_215324EEC(v24, v16, &qword_27CA5BDE8, &qword_2154C4E80);
  sub_215324EEC(v21, &v16[v29], &qword_27CA5BDE8, &qword_2154C4E80);
  v30 = *(v11 + 48);
  if (v30(v16, 1, v10) == 1)
  {
    sub_2151ADCD8(v21, &qword_27CA5BDE8, &qword_2154C4E80);
    sub_2151ADCD8(v24, &qword_27CA5BDE8, &qword_2154C4E80);
    if (v30(&v16[v29], 1, v10) == 1)
    {
      sub_2151ADCD8(v16, &qword_27CA5BDE8, &qword_2154C4E80);
      v31 = v65;
LABEL_9:
      v47 = v68;
      v48 = v64;
      (*(v67 + 56))(v64, 1, 1, v68);
      v49 = sub_2151ACC5C(&qword_27CA5DDE8, &qword_27CA5DDD8, &unk_2154C4AB8, MEMORY[0x277CDD7A8]);
      v77 = v66;
      v78 = v49;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x216067020](v48, v47, OpaqueTypeConformance2);
      v42 = sub_2151ADCD8(v48, &qword_27CA5DDE0, &unk_2154C4AC8);
      v33 = v70;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_215324EEC(v16, v63, &qword_27CA5BDE8, &qword_2154C4E80);
  if (v30(&v16[v29], 1, v10) == 1)
  {
    sub_2151ADCD8(v21, &qword_27CA5BDE8, &qword_2154C4E80);
    sub_2151ADCD8(v24, &qword_27CA5BDE8, &qword_2154C4E80);
    (*(v11 + 8))(v63, v10);
LABEL_6:
    sub_2151ADCD8(v16, &qword_27CA5BE40, &unk_2154C1C80);
    v31 = v65;
    goto LABEL_7;
  }

  v43 = v59;
  (*(v11 + 32))(v59, &v16[v29], v10);
  sub_215439670(&qword_27CA5CF70, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v44 = v63;
  v45 = sub_2154A1D1C();
  v46 = *(v11 + 8);
  v46(v43, v10);
  sub_2151ADCD8(v21, &qword_27CA5BDE8, &qword_2154C4E80);
  sub_2151ADCD8(v24, &qword_27CA5BDE8, &qword_2154C4E80);
  v46(v44, v10);
  sub_2151ADCD8(v16, &qword_27CA5BDE8, &qword_2154C4E80);
  v31 = v65;
  if (v45)
  {
    goto LABEL_9;
  }

LABEL_7:
  v32 = sub_2154A03BC();
  MEMORY[0x28223BE20](v32);
  v33 = v70;
  *(&v58 - 2) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED0, &unk_2154C04E0);
  sub_2151ACC5C(&qword_27CA5D540, &qword_27CA5CED0, &unk_2154C04E0, MEMORY[0x277CDF028]);
  v34 = v60;
  sub_21549FA4C();
  v35 = sub_2151ACC5C(&qword_27CA5DDE8, &qword_27CA5DDD8, &unk_2154C4AB8, MEMORY[0x277CDD7A8]);
  v36 = v62;
  v37 = v66;
  MEMORY[0x216066FF0](v34, v66, v35);
  v39 = v67;
  v38 = v68;
  v40 = v64;
  (*(v67 + 16))(v64, v36, v68);
  (*(v39 + 56))(v40, 0, 1, v38);
  v77 = v37;
  v78 = v35;
  v41 = swift_getOpaqueTypeConformance2();
  MEMORY[0x216067020](v40, v38, v41);
  sub_2151ADCD8(v40, &qword_27CA5DDE0, &unk_2154C4AC8);
  (*(v39 + 8))(v36, v38);
  v42 = (*(v61 + 8))(v34, v37);
LABEL_10:
  MEMORY[0x28223BE20](v42);
  *(&v58 - 2) = v33;
  sub_2154A03EC();
  sub_21543A5C8();
  v51 = v71;
  sub_21549FE3C();
  v52 = v74;
  v53 = *(v75 + 48);
  sub_215324EEC(v31, v74, &qword_27CA5DDE0, &unk_2154C4AC8);
  v54 = v72;
  v55 = v52 + v53;
  v56 = v73;
  (*(v72 + 16))(v55, v51, v73);
  sub_2154A029C();
  (*(v54 + 8))(v51, v56);
  return sub_2151ADCD8(v31, &qword_27CA5DDE0, &unk_2154C4AC8);
}

uint64_t sub_2154382C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE10, &qword_2154C4BA8);
  MEMORY[0x28223BE20](v51);
  v47 = &v45 - v2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE18, &qword_2154C4BB0);
  MEMORY[0x28223BE20](v49);
  v50 = &v45 - v3;
  v4 = sub_2154A04CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BE40, &unk_2154C1C80);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8, &qword_2154C4E80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - v18;
  sub_21543A0D4((&v45 - v18));
  (*(v5 + 104))(v16, *MEMORY[0x277CE0558], v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v20 = *(v8 + 56);
  sub_215324EEC(v19, v10, &qword_27CA5BDE8, &qword_2154C4E80);
  sub_215324EEC(v16, &v10[v20], &qword_27CA5BDE8, &qword_2154C4E80);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) != 1)
  {
    sub_215324EEC(v10, v13, &qword_27CA5BDE8, &qword_2154C4E80);
    if (v21(&v10[v20], 1, v4) != 1)
    {
      v40 = &v10[v20];
      v41 = v46;
      (*(v5 + 32))(v46, v40, v4);
      sub_215439670(&qword_27CA5CF70, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v42 = sub_2154A1D1C();
      v43 = *(v5 + 8);
      v43(v41, v4);
      sub_2151ADCD8(v16, &qword_27CA5BDE8, &qword_2154C4E80);
      sub_2151ADCD8(v19, &qword_27CA5BDE8, &qword_2154C4E80);
      v43(v13, v4);
      sub_2151ADCD8(v10, &qword_27CA5BDE8, &qword_2154C4E80);
      if (v42)
      {
        goto LABEL_9;
      }

LABEL_7:
      v22 = sub_2154A06CC();
      sub_21549F99C();
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE20, &qword_2154C4BB8);
      v32 = v47;
      (*(*(v31 - 8) + 16))(v47, v48, v31);
      v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE28, &qword_2154C4BC0) + 36);
      *v33 = v22;
      *(v33 + 8) = v24;
      *(v33 + 16) = v26;
      *(v33 + 24) = v28;
      *(v33 + 32) = v30;
      *(v33 + 40) = 0;
      KeyPath = swift_getKeyPath(aX_3);
      v35 = (v32 + *(v51 + 36));
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE30, &unk_2154C4BF8) + 28);
      v37 = *MEMORY[0x277CE02A0];
      v38 = sub_2154A023C();
      (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
      *v35 = KeyPath;
      sub_215324EEC(v32, v50, &qword_27CA5DE10, &qword_2154C4BA8);
      swift_storeEnumTagMultiPayload();
      sub_2151ACC5C(&qword_27CA5DE38, &qword_27CA5DE20, &qword_2154C4BB8, MEMORY[0x277CE04B0]);
      sub_21543A754();
      sub_2154A039C();
      return sub_2151ADCD8(v32, &qword_27CA5DE10, &qword_2154C4BA8);
    }

    sub_2151ADCD8(v16, &qword_27CA5BDE8, &qword_2154C4E80);
    sub_2151ADCD8(v19, &qword_27CA5BDE8, &qword_2154C4E80);
    (*(v5 + 8))(v13, v4);
LABEL_6:
    sub_2151ADCD8(v10, &qword_27CA5BE40, &unk_2154C1C80);
    goto LABEL_7;
  }

  sub_2151ADCD8(v16, &qword_27CA5BDE8, &qword_2154C4E80);
  sub_2151ADCD8(v19, &qword_27CA5BDE8, &qword_2154C4E80);
  if (v21(&v10[v20], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_2151ADCD8(v10, &qword_27CA5BDE8, &qword_2154C4E80);
LABEL_9:
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE20, &qword_2154C4BB8);
  (*(*(v44 - 8) + 16))(v50, v48, v44);
  swift_storeEnumTagMultiPayload();
  sub_2151ACC5C(&qword_27CA5DE38, &qword_27CA5DE20, &qword_2154C4BB8, MEMORY[0x277CE04B0]);
  sub_21543A754();
  return sub_2154A039C();
}

uint64_t sub_215438A34(uint64_t a1)
{
  v2 = type metadata accessor for SummaryView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CE08, &qword_2154C36C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_21549F96C();
  v8 = sub_21549F98C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_2153F0A20(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_215439764(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0, &qword_2154C1E80);
  sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0, &qword_2154C1E80, MEMORY[0x277CDEFF0]);
  return sub_2154A0E2C();
}

uint64_t sub_215438C38(uint64_t a1)
{
  v16 = sub_2154A00DC();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00, &qword_2154C0AD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21549FB6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SummaryView(0);
  sub_215324EEC(a1 + *(v12 + 40), v7, &unk_27CA5CA00, &qword_2154C0AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_2154A227C();
    v13 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21549FB5C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_215438EC0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

void *sub_215438FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DD80, &qword_2154C4930);
  result = sub_2154A0DEC();
  *a2 = v3;
  a2[1] = v5;
  return result;
}

unint64_t sub_215439018()
{
  result = qword_27CA5DC68;
  if (!qword_27CA5DC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC60, &qword_2154C4840);
    sub_2154390A4();
    sub_2154396D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DC68);
  }

  return result;
}

unint64_t sub_2154390A4()
{
  result = qword_27CA5DC70;
  if (!qword_27CA5DC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC78, &qword_2154C4848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC80, &qword_2154C4850);
    sub_215439230();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC90, &qword_2154C4858);
    sub_2151ACC5C(&qword_27CA5DC98, &qword_27CA5DC90, &qword_2154C4858, MEMORY[0x277CDDB60]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCA0, &qword_2154C4860);
    sub_215439284();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DC70);
  }

  return result;
}

unint64_t sub_215439230()
{
  result = qword_27CA5DC88;
  if (!qword_27CA5DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DC88);
  }

  return result;
}

unint64_t sub_215439284()
{
  result = qword_27CA5DCA8;
  if (!qword_27CA5DCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCA0, &qword_2154C4860);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCB0, &qword_2154C4868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCB8, &qword_2154C4870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCC0, &qword_2154C4878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCC8, &qword_2154C4880);
    sub_215439470();
    sub_2151ACC5C(&qword_27CA5DCF8, &qword_27CA5DCC8, &qword_2154C4880, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_215324954();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_215439670(&qword_27CA5DD00, type metadata accessor for SummaryView.SizeViewModifier, &unk_2154C4B54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DCA8);
  }

  return result;
}

unint64_t sub_215439470()
{
  result = qword_27CA5DCD0;
  if (!qword_27CA5DCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCC0, &qword_2154C4878);
    sub_21543952C();
    sub_215439670(&unk_27CA5C970, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DCD0);
  }

  return result;
}

unint64_t sub_21543952C()
{
  result = qword_27CA5DCD8;
  if (!qword_27CA5DCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCE0, &qword_2154C4888);
    sub_2154395E4();
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030, &qword_2154BFD50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DCD8);
  }

  return result;
}

unint64_t sub_2154395E4()
{
  result = qword_27CA5DCE8;
  if (!qword_27CA5DCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DCF0, &unk_2154C4890);
    sub_2153B66BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DCE8);
  }

  return result;
}

uint64_t sub_215439670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2154396D8()
{
  result = qword_27CA5DD08;
  if (!qword_27CA5DD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DD10, &qword_2154C48A0);
    sub_215439230();
    sub_215439284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DD08);
  }

  return result;
}

uint64_t sub_215439764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for SummaryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0, &qword_2154C0AD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2154A04CC();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  v9 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CA00, &qword_2154C0AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21549FB6C();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_215439A20(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SummaryView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_215439AC4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for SummaryView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_215439B50()
{
  result = qword_27CA5DD30;
  if (!qword_27CA5DD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DC50, &qword_2154C4830);
    sub_215439C08();
    sub_2151ACC5C(&qword_27CA5DD70, &qword_27CA5DD78, &qword_2154C4928, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DD30);
  }

  return result;
}

unint64_t sub_215439C08()
{
  result = qword_27CA5DD38;
  if (!qword_27CA5DD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DD28, &qword_2154C48E0);
    sub_215439CC0();
    sub_2151ACC5C(&qword_27CA5DD60, &qword_27CA5DD68, &qword_2154C4920, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DD38);
  }

  return result;
}

unint64_t sub_215439CC0()
{
  result = qword_27CA5DD40;
  if (!qword_27CA5DD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DD20, &qword_2154C48B0);
    sub_215439D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DD40);
  }

  return result;
}

unint64_t sub_215439D4C()
{
  result = qword_27CA5DD48;
  if (!qword_27CA5DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DD18, &qword_2154C48A8);
    sub_2151ACC5C(&qword_27CA5DD50, &qword_27CA5DD58, &qword_2154C4918, MEMORY[0x277CDDA18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DD48);
  }

  return result;
}

uint64_t sub_215439E04(uint64_t a1)
{
  v2 = type metadata accessor for SummaryAlert(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215439ED0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a4@<X8>)
{
  v8 = v4;
  v10 = sub_2154A00DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_215324EEC(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_2154A227C();
    v19 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_21543A0D4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_2154A00DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0, &qword_2154C0AD8);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_215324EEC(v2, &v13 - v9, &qword_27CA5B7C0, &qword_2154C0AD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21543A634(v10, a1);
  }

  sub_2154A227C();
  v12 = sub_2154A068C();
  sub_21549F07C();

  sub_2154A00CC();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21543A2C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8, &qword_2154C4E80);
  MEMORY[0x28223BE20](v2 - 8);
  sub_215324EEC(a1, &v5 - v3, &qword_27CA5BDE8, &qword_2154C4E80);
  return sub_21549FF8C();
}

unint64_t sub_21543A420()
{
  result = qword_27CA5DDB0;
  if (!qword_27CA5DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DDB0);
  }

  return result;
}

uint64_t sub_21543A474()
{
  v2 = *(type metadata accessor for SummaryView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2151BD278;

  return sub_215437630(v0 + v3);
}

unint64_t sub_21543A5C8()
{
  result = qword_27CA5DDF0;
  if (!qword_27CA5DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DDF0);
  }

  return result;
}

uint64_t sub_21543A634(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BDE8, &qword_2154C4E80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21543A6CC(uint64_t a1)
{
  sub_2153BB10C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21543A754()
{
  result = qword_27CA5DE40;
  if (!qword_27CA5DE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DE10, &qword_2154C4BA8);
    sub_21543A80C();
    sub_2151ACC5C(&qword_27CA5DE50, &qword_27CA5DE30, &unk_2154C4BF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DE40);
  }

  return result;
}

unint64_t sub_21543A80C()
{
  result = qword_27CA5DE48;
  if (!qword_27CA5DE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DE28, &qword_2154C4BC0);
    sub_2151ACC5C(&qword_27CA5DE38, &qword_27CA5DE20, &qword_2154C4BB8, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DE48);
  }

  return result;
}

unint64_t sub_21543A8C4()
{
  result = qword_27CA5DE58;
  if (!qword_27CA5DE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DE60, &qword_2154C4C08);
    sub_2151ACC5C(&qword_27CA5DE38, &qword_27CA5DE20, &qword_2154C4BB8, MEMORY[0x277CE04B0]);
    sub_21543A754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DE58);
  }

  return result;
}

id sub_21543A9BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_2154A0FAC();
  v7 = v6;
  v8 = sub_2154A025C();
  v23 = 0;
  sub_21543AB4C(a1, &v18);
  v24 = v18;
  v25 = v19;
  v26 = v20;
  v27 = v21;
  v28[0] = v18;
  v28[1] = v19;
  v28[2] = v20;
  v28[3] = v21;
  sub_21543C664(&v24, v17);
  sub_2151ADCD8(v28, &qword_27CA5DE68, &qword_2154C4D18);
  *&v22[7] = v24;
  *&v22[23] = v25;
  *&v22[39] = v26;
  *&v22[55] = v27;
  v9 = v23;
  KeyPath = swift_getKeyPath(a0_3);
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE70, &unk_2154C4D50) + 36));
  *v11 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B7C0, &qword_2154C0AD8);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for ErrorPlaceHolderViewModifier(0);
  *(v11 + *(v12 + 20)) = a1;
  *(v11 + *(v12 + 24)) = a2;
  v13 = *v22;
  *(a3 + 49) = *&v22[16];
  v14 = *&v22[48];
  *(a3 + 65) = *&v22[32];
  *(a3 + 81) = v14;
  *a3 = v5;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = 0x4030000000000000;
  *(a3 + 32) = v9;
  *(a3 + 96) = *&v22[63];
  *(a3 + 33) = v13;

  return a2;
}

double sub_21543AB4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21549EA1C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_2154C4D60, v6);
  v30 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel___observationRegistrar;
  v37 = a1;
  v29 = sub_21543C95C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel, &protocol conformance descriptor for SummaryViewModel);
  sub_21549ED9C();

  v9 = OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__errorState;
  swift_beginAccess();
  v28 = *(v5 + 16);
  v28(v8, a1 + v9, v4);
  sub_21549E9EC();
  v27 = *(v5 + 8);
  v27(v8, v4);
  v34 = sub_2154A0D8C();
  sub_2154A077C();
  sub_2154A07AC();
  v33 = sub_2154A080C();

  KeyPath = swift_getKeyPath(byte_2154C4D88);
  v31 = sub_2154A04BC();
  swift_getKeyPath(byte_2154C4D60);
  v35 = a1;
  sub_21549ED9C();

  v28(v8, a1 + v9, v4);
  v10 = sub_21549E9FC();
  v12 = v11;
  v27(v8, v4);
  v35 = v10;
  v36 = v12;
  sub_215324954();
  v13 = sub_2154A092C();
  v15 = v14;
  LOBYTE(v8) = v16;
  LODWORD(v35) = sub_2154A04BC();
  v17 = sub_2154A08DC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_215354880(v13, v15, v8 & 1);

  LOBYTE(v13) = v21 & 1;
  LOBYTE(v35) = v21 & 1;
  v24 = v33;
  v25 = KeyPath;
  *a2 = v34;
  *(a2 + 8) = v25;
  *(a2 + 16) = v24;
  *(a2 + 24) = v31;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v13;
  *(a2 + 56) = v23;

  sub_21539227C(v17, v19, v13);

  sub_215354880(v17, v19, v13);

  return result;
}

uint64_t sub_21543AEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = sub_2154A051C();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DEF8, &qword_2154C4EE8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF00, &qword_2154C4EF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF08, &qword_2154C4EF8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - v14;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF10, &qword_2154C4F00);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - v16;
  v17 = sub_2154A06DC();
  sub_21549F99C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF18, &qword_2154C4F08);
  (*(*(v26 - 8) + 16))(v8, a1, v26);
  v27 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF20, &qword_2154C4F10) + 36)];
  *v27 = v17;
  *(v27 + 1) = v19;
  *(v27 + 2) = v21;
  *(v27 + 3) = v23;
  *(v27 + 4) = v25;
  v27[40] = 0;
  KeyPath = swift_getKeyPath(byte_2154C4F18);
  v29 = &v8[*(v6 + 44)];
  *v29 = KeyPath;
  v29[8] = 1;
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21543C9C0(v8, v11);
  v30 = &v11[*(v9 + 36)];
  v31 = v68;
  *(v30 + 4) = v67;
  *(v30 + 5) = v31;
  *(v30 + 6) = v69;
  v32 = v64;
  *v30 = v63;
  *(v30 + 1) = v32;
  v33 = v66;
  *(v30 + 2) = v65;
  *(v30 + 3) = v33;
  v34 = [objc_opt_self() mainBundle];
  v35 = sub_2154A1D2C();
  v36 = [v34 localizedStringForKey:v35 value:0 table:0];

  v37 = sub_2154A1D6C();
  v39 = v38;

  v59 = v37;
  v60 = v39;
  v40 = sub_21543CA30();
  v41 = sub_215324954();
  v42 = MEMORY[0x277D837D0];
  sub_2154A0A7C();

  sub_2151ADCD8(v11, &qword_27CA5DF00, &qword_2154C4EF0);
  sub_2154A050C();
  v59 = v9;
  v60 = v42;
  v61 = v40;
  v62 = v41;
  swift_getOpaqueTypeConformance2();
  v43 = v53;
  sub_2154A0B3C();
  (*(v56 + 8))(v4, v57);
  (*(v13 + 8))(v15, v12);
  v44 = swift_getKeyPath(byte_2154C4F50);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DF48, &unk_2154C4F80);
  v46 = v58;
  v47 = (v58 + *(v45 + 36));
  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE30, &unk_2154C4BF8) + 28);
  v49 = *MEMORY[0x277CE02A0];
  v50 = sub_2154A023C();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = v44;
  return (*(v54 + 32))(v46, v43, v55);
}

uint64_t sub_21543B4EC@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v84 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE88, &qword_2154C4DD0);
  v5 = *(v4 - 8);
  v77 = v4;
  v78 = v5;
  MEMORY[0x28223BE20](v4);
  v74 = &v63 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE90, &qword_2154C4DD8);
  v81 = *(v7 - 8);
  v82 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v63 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE98, &unk_2154C4DE0) - 8;
  MEMORY[0x28223BE20](v79);
  v83 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v76 = &v63 - v11;
  MEMORY[0x28223BE20](v12);
  v73 = &v63 - v13;
  v85 = sub_2154A014C();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5CED0, &unk_2154C04E0);
  v16 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B600, &qword_2154C4DF0);
  v71 = *(v19 - 8);
  v72 = v19;
  MEMORY[0x28223BE20](v19);
  v65 = &v63 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DEA0, &qword_2154C4DF8);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v80 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v63 - v25;
  MEMORY[0x28223BE20](v27);
  v86 = &v63 - v28;
  swift_retain_n();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0, &qword_2154C1E80);
  v68 = sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0, &qword_2154C1E80, MEMORY[0x277CDEFF0]);
  sub_2154A0E3C();
  sub_2154A013C();
  sub_2151ACC5C(&qword_27CA5D540, &qword_27CA5CED0, &unk_2154C04E0, MEMORY[0x277CDF028]);
  v69 = sub_21543C95C(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v29 = v66;
  v30 = v85;
  sub_2154A09CC();
  v31 = v87[1];
  ++v87;
  v67 = v31;
  v31(v15, v30);
  (*(v16 + 8))(v18, v29);
  swift_getKeyPath(aH_4);
  v89 = a1;
  sub_21543C95C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel, &protocol conformance descriptor for SummaryViewModel);
  sub_21549ED9C();

  v32 = &a1[OBJC_IVAR____TtC11NotesEditor16SummaryViewModel__summary];
  swift_beginAccess();
  v33 = *(v32 + 1);
  v34 = *v32 & 0xFFFFFFFFFFFFLL;
  if ((v33 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v33) & 0xF;
  }

  v35 = v34 == 0;
  KeyPath = swift_getKeyPath(aH_5);
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  (*(v71 + 32))(v26, v65, v72);
  v38 = &v26[*(v22 + 44)];
  *v38 = KeyPath;
  v38[1] = sub_2153A1B68;
  v38[2] = v37;
  sub_21533FB7C(v26, v86, &qword_27CA5DEA0, &qword_2154C4DF8);
  swift_getKeyPath(aH_4);
  v88 = a1;
  sub_21549ED9C();

  v39 = v74;
  sub_2154A100C();
  sub_2154A013C();
  sub_2151ACC5C(&qword_27CA5DEA8, &qword_27CA5DE88, &qword_2154C4DD0, MEMORY[0x277CDF188]);
  v40 = v75;
  v41 = v77;
  v42 = v85;
  sub_2154A09CC();
  v67(v15, v42);
  (*(v78 + 8))(v39, v41);
  swift_getKeyPath(aH_4);
  v88 = a1;
  sub_21549ED9C();

  v43 = *(v32 + 1);
  v44 = *v32 & 0xFFFFFFFFFFFFLL;
  if ((v43 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v43) & 0xF;
  }

  v45 = v44 == 0;
  v46 = swift_getKeyPath(aH_5);
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  v48 = v76;
  (*(v81 + 32))(v76, v40, v82);
  v49 = (v48 + *(v79 + 44));
  *v49 = v46;
  v49[1] = sub_2153BC05C;
  v49[2] = v47;
  v50 = v73;
  sub_21533FB7C(v48, v73, &qword_27CA5DE98, &unk_2154C4DE0);
  if (ICInternalSettingsIsFCSReportAConcernEnabled())
  {
    v51 = v64;
    v52 = v64;
    v87 = a1;

    v53 = v52;
  }

  else
  {

    v87 = 0;
    v51 = 0;
  }

  v54 = v86;
  v55 = v80;
  sub_215324EEC(v86, v80, &qword_27CA5DEA0, &qword_2154C4DF8);
  v56 = v50;
  v57 = v83;
  sub_215324EEC(v50, v83, &qword_27CA5DE98, &unk_2154C4DE0);
  v58 = v84;
  sub_215324EEC(v55, v84, &qword_27CA5DEA0, &qword_2154C4DF8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DEB0, &qword_2154C4E58);
  sub_215324EEC(v57, v58 + *(v59 + 48), &qword_27CA5DE98, &unk_2154C4DE0);
  v60 = (v58 + *(v59 + 64));
  v61 = v87;
  sub_21543C730(v87, v51);
  sub_21543C770(v61, v51);
  *v60 = v61;
  v60[1] = v51;
  sub_2151ADCD8(v56, &qword_27CA5DE98, &unk_2154C4DE0);
  sub_2151ADCD8(v54, &qword_27CA5DEA0, &qword_2154C4DF8);
  sub_21543C770(v61, v51);
  sub_2151ADCD8(v57, &qword_27CA5DE98, &unk_2154C4DE0);
  return sub_2151ADCD8(v55, &qword_27CA5DEA0, &qword_2154C4DF8);
}

double sub_21543BF28(uint64_t a1)
{
  v2 = [objc_opt_self() generalPasteboard];
  swift_getKeyPath(aH_4);
  sub_21543C95C(&qword_27CA5E9E0, type metadata accessor for SummaryViewModel, &protocol conformance descriptor for SummaryViewModel);
  sub_21549ED9C();

  swift_beginAccess();

  v3 = sub_2154A1D2C();

  [v2 setString_];

  return sub_21535DB90(*(a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_summaryTarget), *(a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_summaryTarget + 8), *(a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_copyActionType), *(a1 + OBJC_IVAR____TtC11NotesEditor16SummaryViewModel_copyActionType + 8));
}

uint64_t sub_21543C078()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

uint64_t sub_21543C16C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

uint64_t sub_21543C264()
{
  v0 = sub_2154A014C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0, &qword_2154C1E80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_2154A01BC();
  sub_2154A0DBC();
  sub_2154A013C();
  sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0, &qword_2154C1E80, MEMORY[0x277CDEFF0]);
  sub_21543C95C(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_2154A09CC();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21543C498()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF48, &qword_2154C1E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE78, &unk_2154C4DC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA5CEE0, &qword_2154C1E80);
  sub_2154A014C();
  sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0, &qword_2154C1E80, MEMORY[0x277CDEFF0]);
  sub_21543C95C(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  swift_getOpaqueTypeConformance2();
  sub_2151ACC5C(&qword_27CA5DE80, &qword_27CA5DE78, &unk_2154C4DC0, MEMORY[0x277CE14C0]);
  return sub_2154A087C();
}

uint64_t sub_21543C664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DE68, &qword_2154C4D18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ErrorPlaceHolderViewModifier(uint64_t a1)
{
  result = qword_27CA5DEB8;
  if (!qword_27CA5DEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_21543C730(id result, void *a2)
{
  if (result)
  {

    return a2;
  }

  return result;
}

void sub_21543C770(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

void sub_21543C7D8(uint64_t a1)
{
  sub_2153BB10C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SummaryViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_2154A11FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21543C874()
{
  result = qword_27CA5DEC8;
  if (!qword_27CA5DEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DE70, &unk_2154C4D50);
    sub_2151ACC5C(&qword_27CA5DED0, &qword_27CA5DED8, &qword_2154C4E88, MEMORY[0x277CE11A8]);
    sub_21543C95C(&qword_27CA5DEE0, type metadata accessor for ErrorPlaceHolderViewModifier, &unk_2154C4E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DEC8);
  }

  return result;
}

uint64_t sub_21543C95C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21543C9C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DEF8, &qword_2154C4EE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21543CA30()
{
  result = qword_27CA5DF28;
  if (!qword_27CA5DF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DF00, &qword_2154C4EF0);
    sub_21543CABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DF28);
  }

  return result;
}

unint64_t sub_21543CABC()
{
  result = qword_27CA5DF30;
  if (!qword_27CA5DF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DEF8, &qword_2154C4EE8);
    sub_21543CB74();
    sub_2151ACC5C(&qword_27CA5D458, &qword_27CA5D460, &qword_2154C3C58, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DF30);
  }

  return result;
}

unint64_t sub_21543CB74()
{
  result = qword_27CA5DF38;
  if (!qword_27CA5DF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DF20, &qword_2154C4F10);
    sub_2151ACC5C(&qword_27CA5DF40, &qword_27CA5DF18, &qword_2154C4F08, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DF38);
  }

  return result;
}

unint64_t sub_21543CC2C()
{
  result = qword_27CA5DF50;
  if (!qword_27CA5DF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DF48, &unk_2154C4F80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DF08, &qword_2154C4EF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DF00, &qword_2154C4EF0);
    sub_21543CA30();
    sub_215324954();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5DE50, &qword_27CA5DE30, &unk_2154C4BF8, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5DF50);
  }

  return result;
}

double sub_21543CDB8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aX_4);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;

  return result;
}

double sub_21543CE64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_215388154(v1, v2);
}

__n128 sub_21543CEA4@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a8_1);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v4 = v3[9].n128_u8[0];
  result = v3[8];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

double sub_21543CF88@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aX_5);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v4 = *(v3 + 160);
  *a2 = *(v3 + 152);
  a2[1] = v4;

  return result;
}

double sub_21543D034(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_215389728(v1, v2);
}

uint64_t sub_21543D0C4()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5DF58);
  __swift_project_value_buffer(v0, qword_27CA5DF58);
  return sub_21549F0BC();
}

double sub_21543D110()
{
  result = 327.0;
  xmmword_27CA5DF70 = xmmword_2154C4F90;
  return result;
}

uint64_t sub_21543D160(uint64_t a1, void *a2, SEL *a3, uint64_t *a4)
{
  v5 = [objc_opt_self() *a3];
  result = sub_2154A0C8C();
  *a4 = result;
  return result;
}

uint64_t sub_21543D1CC()
{
  type metadata accessor for AudioAttachmentView();

  return swift_getObjCClassFromMetadata();
}

CGSize __swiftcall ICAudioTextAttachment.attachmentSize(for:)(NSTextContainer *a1)
{
  v3 = [(NSTextContainer *)a1 textLayoutManager];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = v5;
    v7 = [v1 viewIdentifier];
    if (!v7)
    {
      sub_2154A1D6C();
      v7 = sub_2154A1D2C();
    }

    v8 = [v6 existingAttachmentViewForIdentifier_];

    if (v8)
    {
      type metadata accessor for AudioAttachmentView();
      if (swift_dynamicCastClass())
      {
        v9 = sub_21543D38C(a1);
        v11 = v10;

        v12 = v9;
        goto LABEL_14;
      }
    }

    else
    {
LABEL_8:
      v8 = v4;
    }
  }

  if (qword_27CA598F0 != -1)
  {
    swift_once();
  }

  v11 = *(&xmmword_27CA5DF70 + 1);
  v13 = *&xmmword_27CA5DF70;
  [(NSTextContainer *)a1 size];
  v15 = v14;
  [(NSTextContainer *)a1 lineFragmentPadding];
  v12 = v15 - (v16 + v16);
  if (v13 < v12)
  {
    v12 = v13;
  }

LABEL_14:
  v17 = v11;
  result.height = v17;
  result.width = v12;
  return result;
}

double sub_21543D38C(void *a1)
{
  v2 = v1;
  [a1 size];
  v5 = v4;
  [a1 lineFragmentPadding];
  v7 = v5 - (v6 + v6);
  if (qword_27CA598F0 != -1)
  {
    swift_once();
  }

  v8 = *(&xmmword_27CA5DF70 + 1);
  if (*&xmmword_27CA5DF70 < v7)
  {
    v7 = *&xmmword_27CA5DF70;
  }

  v9 = *(v2 + OBJC_IVAR___ICAudioAttachmentView_brickDelegate);
  if (*(v9 + 24) == v7)
  {
    *(v9 + 24) = v7;
  }

  else
  {
    KeyPath = swift_getKeyPath(a0_4);
    MEMORY[0x28223BE20](KeyPath);
    sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
    sub_21549ED8C();
  }

  v11 = *(v2 + OBJC_IVAR___ICAudioAttachmentView_hostingView);
  if (v11)
  {
    v12 = v11;
    [v12 invalidateIntrinsicContentSize];
    [v12 systemLayoutSizeFittingSize_];
    v13 = [v12 window];

    if (v13)
    {
    }

    *(v2 + OBJC_IVAR___ICAudioAttachmentView_needsRelayoutWhenMovingToWindow) = v13 == 0;
  }

  return v7;
}

double sub_21543D5B4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  *&v6 = *&ICAudioTextAttachment.attachmentSize(for:)(v4);

  return v6;
}

id sub_21543D614()
{
  v1 = type metadata accessor for AudioPlayerView(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AudioAttachmentView();
  v28.receiver = v0;
  v28.super_class = v10;
  result = objc_msgSendSuper2(&v28, sel_didChangeMedia);
  v12 = *&v0[OBJC_IVAR___ICAudioAttachmentView_hostingView];
  if (v12)
  {
    v13 = v12;
    sub_21549FCEC();

    sub_21543D898(v3, v6);
    sub_21543D898(v6, v9);
    v14 = *(v9 + 3);
    aBlock = *(v9 + 2);
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
    sub_2154A0DEC();
    v15 = v27;
    sub_21538BF80();
    if (qword_27CA59870 != -1)
    {
      swift_once();
    }

    v16 = qword_27CA5B4F8;
    if (qword_27CA5B4F8)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = v15;
      v25 = sub_21538C30C;
      v26 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = sub_2151BD7E4;
      v24 = &block_descriptor_31;
      v18 = _Block_copy(&aBlock);
      v19 = v16;

      [v19 performBlock_];

      _Block_release(v18);
    }

    else
    {
    }

    return sub_21544C7F4(v9, type metadata accessor for AudioPlayerView);
  }

  return result;
}

uint64_t sub_21543D898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlayerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21543D9C0()
{
  v1 = v0;
  v2 = sub_2154A250C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AudioPlayerView(0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 attachment];
  if (v10)
  {
    v47 = v10;
    v11 = [v10 audioModel];
    if (v11)
    {
      v12 = v11;
      v44 = v5;
      v45 = v3;
      v46 = v2;
      v42 = OBJC_IVAR___ICAudioAttachmentView_hostingView;
      v13 = *&v1[OBJC_IVAR___ICAudioAttachmentView_hostingView];
      if (v13)
      {
        [v13 removeFromSuperview];
      }

      type metadata accessor for SummaryViewModel(0);
      swift_allocObject();
      v14 = v12;
      v43 = v14;
      v15 = sub_21535EFE4(v14, 0);

      *&v1[OBJC_IVAR___ICAudioAttachmentView_summaryViewModel] = v15;

      v16 = *&v1[OBJC_IVAR___ICAudioAttachmentView_brickDelegate];
      *(v9 + 1) = 0x4018000000000000;
      LOBYTE(v48) = 0;
      v17 = v15;
      v41[1] = v15;

      v18 = v47;
      sub_2154A0DDC();
      v19 = v50;
      v9[32] = v49;
      *(v9 + 5) = v19;
      v20 = v6[8];
      *&v9[v20] = swift_getKeyPath(byte_2154C5A20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C0, &qword_2154C5648);
      swift_storeEnumTagMultiPayload();
      v21 = &v9[v6[10]];
      *v21 = 0xD00000000000003DLL;
      *(v21 + 1) = 0x80000002154DB870;
      v22 = &v9[v6[11]];
      *v22 = 0xD00000000000003BLL;
      *(v22 + 1) = 0x80000002154DB8B0;
      type metadata accessor for AudioPlayerView.AudioPlayerViewModel(0);
      swift_allocObject();
      v23 = v18;
      v48 = sub_215388E18(v23);
      sub_2154A0DDC();
      v24 = v49;
      v25 = v50;
      *(v9 + 2) = v49;
      *(v9 + 3) = v25;
      *v9 = v16;
      *&v9[v6[9]] = v17;
      v49 = v24;
      v50 = v25;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
      sub_2154A0DEC();
      v26 = v48;
      v27 = swift_allocObject();
      swift_weakInit();
      v28 = swift_allocObject();
      *(v28 + 16) = v27;
      *(v28 + 24) = v23;
      KeyPath = swift_getKeyPath(aH_6);
      v47 = v41;
      MEMORY[0x28223BE20](KeyPath);
      v41[-4] = v26;
      v41[-3] = sub_21544F8E4;
      v41[-2] = v28;
      v49 = v26;
      sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
      v30 = v23;

      sub_21549ED8C();

      v31 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5E8, &qword_2154C5A78));
      v32 = sub_21549FCDC();
      [v1 addSubview_];
      [v32 ic_addAnchorsToFillSuperview];
      v33 = *&v1[v42];
      *&v1[v42] = v32;
      v34 = v32;

      v35 = [objc_opt_self() defaultCenter];
      v36 = [v30 managedObjectContext];
      v37 = v44;
      sub_2154A251C();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21544CBEC(&qword_281199588, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
      v38 = v46;
      v39 = sub_21549F3EC();

      (*(v45 + 8))(v37, v38);
      *&v1[OBJC_IVAR___ICAudioAttachmentView_attachmentObserver] = v39;
    }

    else
    {
      v40 = v47;
    }
  }
}

void sub_21543E004(uint64_t a1, uint64_t a2)
{
  v2 = sub_2154A10EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A110C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v12 = [Strong attachment];
  if (!v12)
  {

    return;
  }

  v13 = v12;
  v14 = sub_21549E18C();
  if (!v14)
  {

    v32 = 0u;
    v33 = 0u;
    goto LABEL_16;
  }

  v15 = v14;
  aBlock[6] = sub_2154A1D6C();
  aBlock[7] = v16;
  sub_2154A2D3C();
  if (!*(v15 + 16) || (v17 = sub_2153B1010(aBlock), (v18 & 1) == 0))
  {

    sub_21533FC34(aBlock);
    v32 = 0u;
    v33 = 0u;
    goto LABEL_14;
  }

  sub_21533FC88(*(v15 + 56) + 32 * v17, &v32);
  sub_21533FC34(aBlock);

  if (!*(&v33 + 1))
  {
LABEL_14:

LABEL_16:
    sub_2151ADCD8(&v32, &qword_27CA5ABC0, &unk_2154BE110);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ABC8, &qword_2154C5A80);
  if (swift_dynamicCast() & 1) != 0 && (v19 = sub_21542E878(v13, aBlock[0]), , (v19) && (v20 = [v11 textView]) != 0 && (v21 = v20, v22 = objc_msgSend(v20, sel_icTextLayoutManager), v21, v22))
  {
    sub_2151A6C9C(0, &unk_2811995C0, 0x277D85C78);
    v30 = sub_2154A245C();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v13;
    aBlock[4] = sub_21544F914;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_222;
    v27 = _Block_copy(aBlock);
    v29 = v22;
    v28 = v13;

    sub_2154A10FC();
    aBlock[0] = MEMORY[0x277D84F90];
    v26[1] = sub_21544CBEC(&qword_281199700, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00, &unk_2154BDB90);
    sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00, &unk_2154BDB90, MEMORY[0x277D83970]);
    sub_2154A2BEC();
    v24 = v27;
    v25 = v30;
    MEMORY[0x216069000](0, v9, v5, v27);
    _Block_release(v24);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
  }
}

void sub_21543E4D0(void *a1, id a2)
{
  v3 = [a2 rangeInNote];
  v5 = [a1 ic:v3 textRangeForRange:v4];
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BDB20;
    *(inited + 32) = v6;
    v8 = v6;
    sub_21532B7F0(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_2151A6C9C(0, &qword_27CA5A7F0, 0x277D742D0);
    sub_21544F87C();
    v9 = sub_2154A20BC();

    [a1 invalidateLayoutForRanges_];
  }
}

id sub_21543E610(void *a1, uint64_t a2, SEL *a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for AudioAttachmentView();
  v4 = objc_msgSendSuper2(&v6, *a3);

  return v4;
}

id sub_21543E8F8()
{
  result = *(v0 + OBJC_IVAR___ICAudioAttachmentView_hostingView);
  if (result)
  {
    result = [result snapshotViewAfterScreenUpdates_];
    if (result)
    {
      v2 = result;
      v3 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
      [v3 setView_];
      [v2 bounds];
      [v3 setPreferredContentSize_];

      return v3;
    }
  }

  return result;
}

void sub_21543E9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [v5 textView];
  if (v10)
  {
    v22 = v10;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11 && (v12 = v11, (v13 = [v5 attachment]) != 0))
    {
      v14 = v13;
      v15 = [v13 rangeInNote];
      v17 = v16;
      sub_215324EEC(a1, v24, &qword_27CA5ABC0, &unk_2154BE110);
      v18 = swift_allocObject();
      v19 = v24[1];
      *(v18 + 24) = v24[0];
      *(v18 + 16) = v5;
      *(v18 + 40) = v19;
      aBlock[4] = a3;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2153DF054;
      aBlock[3] = a4;
      v20 = _Block_copy(aBlock);
      v21 = v5;

      [v12 showRemoveAttachmentAlertIfNecessaryForOperation:a5 selectedRange:v15 completionHandler:{v17, v20}];
      _Block_release(v20);
    }

    else
    {
    }
  }
}

uint64_t sub_21543EBA0(uint64_t result, void *a2, uint64_t a3, SEL *a4)
{
  if (result)
  {
    sub_215324EEC(a3, v15, &qword_27CA5ABC0, &unk_2154BE110);
    v6 = v16;
    if (v16)
    {
      v7 = __swift_project_boxed_opaque_existential_0Tm(v15, v16);
      v8 = *(v6 - 8);
      v9 = MEMORY[0x28223BE20](v7);
      v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      v12 = sub_2154A2F8C();
      (*(v8 + 8))(v11, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    else
    {
      v12 = 0;
    }

    v13 = type metadata accessor for AudioAttachmentView();
    v14.receiver = a2;
    v14.super_class = v13;
    objc_msgSendSuper2(&v14, *a4, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21543ED38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v12 = a1;
    swift_unknownObjectRetain();
    sub_2154A2BCC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    v13 = a1;
  }

  sub_21543E9D4(v15, a4, a5, a6, a7);

  return sub_2151ADCD8(v15, &qword_27CA5ABC0, &unk_2154BE110);
}

void sub_21543EDE8()
{
  v1 = [v0 attachment];
  if (v1)
  {
    v13 = v1;
    v2 = [v0 textView];
    if (v2 && (v3 = v2, v12 = [v2 icTextLayoutManager], v3, v12))
    {
      v4 = [v13 rangeInNote];
      v6 = [v12 ic:v4 textRangeForRange:v5];
      if (v6)
      {
        v7 = v6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2154BDB20;
        *(inited + 32) = v7;
        v9 = v7;
        sub_21532B7F0(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_2151A6C9C(0, &qword_27CA5A7F0, 0x277D742D0);
        sub_21544F87C();
        v10 = sub_2154A20BC();

        [v12 invalidateLayoutForRanges_];

        return;
      }

      v11 = v12;
    }

    else
    {
      v11 = v13;
    }
  }
}

id sub_21543EFFC()
{
  result = *(v0 + OBJC_IVAR___ICAudioAttachmentView_hostingView);
  if (result)
  {
    result = [result accessibilityElements];
    if (result)
    {
      v2 = result;
      v3 = sub_2154A1F4C();

      if (*(v3 + 16) == 1)
      {
        sub_21533FC88(v3 + 32, v5);

        sub_2151A6C9C(0, &qword_281199490, 0x277D82BB8);
        if (swift_dynamicCast())
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

id AudioAttachmentView.__allocating_init(frame:textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v10 = [objc_allocWithZone(v7) initWithFrame:a1 textAttachment:a2 textContainer:a3 & 1 forManualRendering:{a4, a5, a6, a7}];

  return v10;
}

id AudioAttachmentView.init(frame:textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3, double a4, double a5, double a6, double a7)
{
  v9 = sub_21544C5BC(a1, a2, a3, a4, a5, a6, a7);

  return v9;
}

id AudioAttachmentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id AudioAttachmentView.init(coder:)(void *a1)
{
  v1[OBJC_IVAR___ICAudioAttachmentView_needsRelayoutWhenMovingToWindow] = 0;
  *&v1[OBJC_IVAR___ICAudioAttachmentView_hostingView] = 0;
  *&v1[OBJC_IVAR___ICAudioAttachmentView_attachmentObserver] = 0;
  v3 = OBJC_IVAR___ICAudioAttachmentView_brickDelegate;
  type metadata accessor for AttachmentBrickDelegate(0);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v4 + 24) = 0x4074700000000000;
  *(v4 + 32) = sub_2154A0D1C();
  sub_21549EDCC();
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR___ICAudioAttachmentView_summaryViewModel] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for AudioAttachmentView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id AudioAttachmentView.__allocating_init(textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3)
{
  v6 = [objc_allocWithZone(v3) initWithTextAttachment:a1 textContainer:a2 forManualRendering:a3 & 1];

  return v6;
}

id AudioAttachmentView.init(textAttachment:textContainer:forManualRendering:)(void *a1, void *a2, char a3)
{
  v5 = sub_21544C700(a1, a2, a3);

  return v5;
}

id AudioAttachmentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAttachmentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21543F55C()
{
  swift_getKeyPath(byte_2154C55A0);
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
  sub_21549ED9C();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_21543F600@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath(byte_2154C55A0);
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
  sub_21549ED9C();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_21543F6AC(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath(byte_2154C55A0);
    MEMORY[0x28223BE20](KeyPath);
    sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
    sub_21549ED8C();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_2151A6C9C(0, &unk_2811996C0, 0x277D75C40);
  v3 = v2;
  v4 = sub_2154A291C();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

double sub_21543F854()
{
  swift_getKeyPath(a0_4);
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
  sub_21549ED9C();

  return *(v0 + 24);
}

double sub_21543F8F4@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(a0_4);
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
  sub_21549ED9C();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

void sub_21543F99C(double a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a0_4);
    MEMORY[0x28223BE20](KeyPath);
    sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
    sub_21549ED8C();
  }
}

double sub_21543FAB4()
{
  swift_getKeyPath(byte_2154C5060);
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
  sub_21549ED9C();

  return result;
}

double sub_21543FB58@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2154C5060);
  sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
  sub_21549ED9C();

  *a2 = *(v3 + 32);

  return result;
}

double sub_21543FC04(uint64_t a1)
{

  v3 = sub_2154A0CEC();

  if (v3)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2154C5060);
    MEMORY[0x28223BE20](KeyPath);
    sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
    sub_21549ED8C();
  }

  return result;
}

uint64_t objectdestroy_2Tm_1()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21543FDF0()
{
  MEMORY[0x21606B640](v0 + 16);

  v1 = OBJC_IVAR____TtC11NotesEditor23AttachmentBrickDelegate___observationRegistrar;
  v2 = sub_21549EDDC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21543FE9C@<X0>(void *a1@<X8>)
{
  v3 = sub_2154A00DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C0, &qword_2154C5648);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AudioPlayerView(0);
  sub_215324EEC(v1 + *(v10 + 32), v9, &qword_27CA5E2C0, &qword_2154C5648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2154A023C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2154A227C();
    v13 = sub_2154A068C();
    sub_21549F07C();

    sub_2154A00CC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_2154400A4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath(byte_2154C55A0);
    sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
    sub_21549ED9C();

    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v6 = [v5 textLayoutManager];

      if (v6)
      {
        v7 = [a2 rangeInNote];
        v9 = [v6 ic:v7 textRangeForRange:v8];
        if (v9)
        {
          v10 = v9;
          [v6 invalidateLayoutForRange_];

          v6 = v10;
        }
      }
    }
  }
}

uint64_t sub_2154401FC()
{
  v1 = sub_21549E5CC();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21549E5FC();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21549E6AC();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60, &qword_2154BF4E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  MEMORY[0x28223BE20](v17);
  v48 = &v40 - v18;
  v20 = *(v0 + 16);
  v19 = *(v0 + 24);
  v52 = v20;
  v53 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v21 = v51;
  swift_getKeyPath(byte_2154C55F0);
  v52 = v21;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v22 = *(v21 + 16);

  if (v22 == 1)
  {
    v52 = v20;
    v53 = v19;
    sub_2154A0DEC();
    v23 = *(v51 + 24);

    v24 = [v23 creationDate];

    if (v24)
    {
      sub_21549E66C();

      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v30 = v49;
    v29 = v50;
    v31 = v48;
    (*(v50 + 56))(v16, v25, 1, v4);
  }

  else
  {
    v52 = v20;
    v53 = v19;
    sub_2154A0DEC();
    v26 = *(v51 + 24);

    v27 = [v26 modificationDate];

    if (v27)
    {
      sub_21549E66C();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v30 = v49;
    v29 = v50;
    v31 = v48;
    (*(v50 + 56))(v13, v28, 1, v4);
    v16 = v13;
  }

  sub_21533FB7C(v16, v31, &unk_27CA5EA60, &qword_2154BF4E0);
  sub_215324EEC(v31, v10, &unk_27CA5EA60, &qword_2154BF4E0);
  if ((*(v29 + 48))(v10, 1, v4) == 1)
  {
    sub_2151ADCD8(v31, &unk_27CA5EA60, &qword_2154BF4E0);
    v32 = v10;
LABEL_14:
    sub_2151ADCD8(v32, &unk_27CA5EA60, &qword_2154BF4E0);
    return 0;
  }

  (*(v29 + 32))(v30, v10, v4);
  v33 = v47;
  sub_21549E60C();
  sub_21544CBEC(&qword_27CA5AEC8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v34 = sub_2154A1D1C();
  v35 = *(v29 + 8);
  v35(v33, v4);
  if (v34)
  {
    v35(v30, v4);
    v32 = v31;
    goto LABEL_14;
  }

  v37 = v41;
  sub_21549E5DC();
  v38 = v43;
  sub_21549E5BC();
  v39 = sub_21549E68C();
  (*(v45 + 8))(v38, v46);
  (*(v42 + 8))(v37, v44);
  v35(v30, v4);
  sub_2151ADCD8(v31, &unk_27CA5EA60, &qword_2154BF4E0);
  return v39;
}

id sub_215440890(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v5 setAllowedUnits_];
  result = [v5 setUnitsStyle_];
  *a3 = v5;
  return result;
}

uint64_t sub_215440900(double a1)
{
  if (a1 >= 60.0)
  {
    if (qword_27CA59908 != -1)
    {
      swift_once();
    }

    v1 = [qword_27CA5DF90 stringFromTimeInterval_];
    if (v1)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (qword_27CA59910 != -1)
  {
    swift_once();
  }

  v1 = [qword_27CA5DF98 stringFromTimeInterval_];
  if (!v1)
  {
    return 0;
  }

LABEL_5:
  v2 = v1;
  v3 = sub_2154A1D6C();

  return v3;
}

uint64_t sub_215440A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  swift_getKeyPath(a8_1);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v0 = *(v30 + 128);
  v1 = *(v30 + 144);

  if (v1 > 2)
  {
    if ((v1 - 3) >= 2)
    {
      v20 = sub_2154401FC();
      if (v22)
      {
        sub_2153A24C8(v20, v21, 0, v22);
        return 0;
      }

      v24 = objc_opt_self();
      v25 = sub_2154A1D2C();
      v26 = [v24 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:1];

      sub_2154A1D6C();
    }

    else
    {
      sub_2154A317C();
      sub_2154A316C();
    }

    sub_215324954();
  }

  else if ((v1 - 1) >= 2)
  {
    v15 = sub_215440900(v0);
    v17 = v16;
    sub_2154A0DEC();
    swift_getKeyPath(byte_2154C55F0);
    sub_21549ED9C();

    v18 = *(v30 + 16);

    if (v18 == 1)
    {
      sub_2154A0DEC();
      swift_getKeyPath(byte_2154C59F0);
      sub_21549ED9C();
    }

    v19 = objc_opt_self();
    v27 = sub_2154A1D2C();
    v28 = [v19 localizedFrameworkStringForKey:v27 value:0 table:0 allowSiri:1];

    sub_2154A1D6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0, &qword_2154BE5B0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_2154BDB50;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_215333D20();
    *(v29 + 32) = v15;
    *(v29 + 40) = v17;
    sub_2154A1D3C();

    sub_215324954();
  }

  else
  {
    sub_2154A317C();
    v2 = sub_2154A316C();
    v4 = v3;
    sub_2154A317C();
    v5 = sub_2154A316C();
    v7 = v6;
    v8 = objc_opt_self();
    v9 = sub_2154A1D2C();
    v10 = sub_2154A1D2C();
    v11 = [v8 localizedFrameworkStringForKey:v9 value:v10 table:0 allowSiri:1];

    sub_2154A1D6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A6D0, &qword_2154BE5B0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2154BDB40;
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = sub_215333D20();
    *(v12 + 32) = v2;
    *(v12 + 40) = v4;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = v5;
    *(v12 + 80) = v7;
    sub_2154A1D3C();

    sub_215324954();
  }

  return sub_2154A092C();
}

uint64_t sub_215440FB0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  swift_getKeyPath(aX_4);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v0 = *(v7 + 88);

  if (!v0 || (, (sub_2154411E8() & 1) == 0))
  {
    sub_2154A0DEC();
    swift_getKeyPath(byte_2154C55C8);
    sub_21549ED9C();

    v1 = *(v7 + 104);

    if (!v1)
    {
      return 0;
    }

    if (!sub_215441418())
    {
      return 0;
    }
  }

  v2 = objc_opt_self();
  v3 = sub_2154A1D2C();
  v4 = [v2 localizedFrameworkStringForKey:v3 value:0 table:0 allowSiri:1];

  v5 = sub_2154A1D6C();
  return v5;
}

uint64_t sub_2154411E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  swift_getKeyPath(a8_1);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v0 = *(v11 + 128);
  v1 = *(v11 + 136);
  v2 = *(v11 + 144);

  if (v2 == 5 && (v1 | v0) == 0)
  {
    return 0;
  }

  sub_2154A0DEC();
  swift_getKeyPath(a8_1);
  sub_21549ED9C();

  v4 = *(v11 + 144);

  if ((v4 - 3) < 2)
  {
    return 0;
  }

  sub_2154A0DEC();
  swift_getKeyPath(aX_4);
  sub_21549ED9C();

  v6 = *(v11 + 80);
  v5 = *(v11 + 88);

  if (!v5)
  {
    return 0;
  }

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v7 && (v8 = [objc_opt_self() sharedInstance], v9 = objc_msgSend(v8, sel_supportsOnDeviceSummary), v8, (v9 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_215441418()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 supportsGeneralASR];

  if ((v1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
    sub_2154A0DEC();
    swift_getKeyPath(byte_2154C55F0);
    sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
    sub_21549ED9C();

    v2 = *(v11 + 16);

    if (v2 != 1)
    {
      return 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  swift_getKeyPath(a8_1);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v3 = *(v11 + 128);
  v4 = *(v11 + 136);
  v5 = *(v11 + 144);

  if (v5 == 5 && !(v4 | v3))
  {
    return 0;
  }

  sub_2154A0DEC();
  swift_getKeyPath(a8_1);
  sub_21549ED9C();

  v6 = *(v11 + 144);

  if ((v6 - 3) < 2)
  {
    return 0;
  }

  sub_2154A0DEC();
  swift_getKeyPath(byte_2154C55C8);
  sub_21549ED9C();

  v8 = *(v11 + 96);
  v7 = *(v11 + 104);

  if (!v7)
  {
    return 0;
  }

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  return v9 != 0;
}

void sub_2154416EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E488, &qword_2154C5878);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v39[-v9];
  v42 = sub_215440FB0();
  v43 = v11;
  sub_215324954();
  v12 = sub_2154A092C();
  v14 = v13;
  v40 = v15;
  v17 = v16;
  sub_2154A0D5C();
  v41 = a1;
  sub_2154A041C();
  KeyPath = swift_getKeyPath(asc_2154C5880);
  v19 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E490, &qword_2154C58B0) + 36)];
  *v19 = KeyPath;
  *(v19 + 1) = 5;
  v19[16] = 0;
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E498, &qword_2154C58B8) + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70, &qword_2154C1EB0) + 28);
  v22 = *MEMORY[0x277CE1050];
  v23 = sub_2154A0D9C();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  *v20 = swift_getKeyPath(aX_6);
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4A0, &qword_2154C58C0) + 36)] = 256;
  LOBYTE(v22) = sub_2154A072C();
  sub_21549F99C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4A8, &qword_2154C58C8) + 36)];
  *v32 = v22;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  LOBYTE(v22) = sub_2154A06FC();
  sub_21549F99C();
  v33 = &v10[*(v5 + 44)];
  *v33 = v22;
  *(v33 + 1) = v34;
  *(v33 + 2) = v35;
  *(v33 + 3) = v36;
  *(v33 + 4) = v37;
  v33[40] = 0;
  sub_215324EEC(v10, v7, &qword_27CA5E488, &qword_2154C5878);
  *a2 = v12;
  *(a2 + 8) = v14;
  LOBYTE(v22) = v40 & 1;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v17;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4B0, &qword_2154C58D0);
  sub_215324EEC(v7, a2 + *(v38 + 48), &qword_27CA5E488, &qword_2154C5878);
  sub_21539227C(v12, v14, v22);

  sub_2151ADCD8(v10, &qword_27CA5E488, &qword_2154C5878);
  sub_2151ADCD8(v7, &qword_27CA5E488, &qword_2154C5878);
  sub_215354880(v12, v14, v22);
}

uint64_t sub_215441A20(uint64_t a1, uint64_t a2)
{
  v2 = sub_2154A01AC();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_2154A042C();
  v5 = v4;
  v7 = v6;
  sub_2154A019C();
  sub_2154A018C();
  sub_2154A015C();
  sub_2154A018C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  swift_getKeyPath(aX_4);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  sub_2154A017C();

  sub_2154A018C();
  sub_2154A01CC();
  v8 = sub_2154A090C();
  sub_215354880(v3, v5, v7 & 1);

  return v8;
}

void sub_215441C54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4B8, &qword_2154C58D8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v36[-v9];
  v38 = sub_215440FB0();
  v39 = v11;
  sub_215324954();
  v12 = sub_2154A092C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_2154A0D5C();
  v37 = a1;
  sub_2154A041C();
  KeyPath = swift_getKeyPath(asc_2154C5880);
  v20 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E490, &qword_2154C58B0) + 36)];
  *v20 = KeyPath;
  *(v20 + 1) = 2;
  v20[16] = 0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4C0, &qword_2154C58E0) + 36)] = 256;
  LOBYTE(KeyPath) = sub_2154A072C();
  sub_21549F99C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4C8, &qword_2154C58E8) + 36)];
  *v29 = KeyPath;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  LOBYTE(KeyPath) = sub_2154A06FC();
  sub_21549F99C();
  v30 = &v10[*(v5 + 44)];
  *v30 = KeyPath;
  *(v30 + 1) = v31;
  *(v30 + 2) = v32;
  *(v30 + 3) = v33;
  *(v30 + 4) = v34;
  v30[40] = 0;
  sub_215324EEC(v10, v7, &qword_27CA5E4B8, &qword_2154C58D8);
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4D0, &qword_2154C58F0);
  sub_215324EEC(v7, a2 + *(v35 + 48), &qword_27CA5E4B8, &qword_2154C58D8);
  sub_21539227C(v12, v14, v16 & 1);

  sub_2151ADCD8(v10, &qword_27CA5E4B8, &qword_2154C58D8);
  sub_2151ADCD8(v7, &qword_27CA5E4B8, &qword_2154C58D8);
  sub_215354880(v12, v14, v16 & 1);
}

uint64_t sub_215441EF4()
{
  v0 = sub_2154A01AC();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_2154A042C();
  v3 = v2;
  v5 = v4;
  sub_2154A019C();
  sub_2154A018C();
  sub_21544204C();
  sub_2154A017C();

  sub_2154A018C();
  sub_2154A01CC();
  v6 = sub_2154A090C();
  sub_215354880(v1, v3, v5 & 1);

  return v6;
}

void sub_21544204C()
{
  v1 = sub_21549E15C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  v22 = *(v0 + 16);
  v23 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v6 = v26;
  swift_getKeyPath(byte_2154C55C8);
  v22 = v6;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v7 = *(v6 + 104);

  if (!v7)
  {
    return;
  }

  v8 = sub_2154A1DBC();
  v10 = v9;

  v22 = v8;
  v23 = v10;
  sub_21549E14C();
  sub_215324954();
  v11 = sub_2154A2B8C();
  v13 = v12;
  (*(v2 + 8))(v4, v1);

  v27 = v11;
  v28 = v13;
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v22 = v11;
  v23 = v13;
  v24 = 0;
  v25 = v14;

  v15 = 0;
  v16 = 0;
  do
  {
    while (1)
    {
      v17 = sub_2154A1E8C();
      if (!v18)
      {
        goto LABEL_19;
      }

      if (v17 == 10 && v18 == 0xE100000000000000)
      {

        goto LABEL_13;
      }

      v19 = sub_2154A2FAC();

      if ((v19 & 1) == 0)
      {
        break;
      }

LABEL_13:
      sub_2154A1E3C();
      sub_2154A1E7C();

      if (v16)
      {
        sub_2154A1E3C();
        sub_2154A1E6C();
      }

      else
      {
        v20 = __OFSUB__(v15--, 1);
        if (v20)
        {
          goto LABEL_21;
        }
      }

      v16 ^= 1u;
      v20 = __OFADD__(v15++, 1);
      if (v20)
      {
        __break(1u);
LABEL_19:

        return;
      }
    }

    v20 = __OFADD__(v15++, 1);
  }

  while (!v20);
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_215442328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0C8, &qword_2154C5130);
  MEMORY[0x28223BE20](v49);
  v50 = &v48 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E538, &qword_2154C5948);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v48 - v4;
  v5 = sub_2154A023C();
  v52 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E540, &qword_2154C5950);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E548, &qword_2154C5958);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E550, &qword_2154C5960);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v48 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  *v15 = sub_2154A026C();
  *(v15 + 8) = 0x4000000000000000;
  *(v15 + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E558, &qword_2154C5968);
  sub_215442940(a1, v15 + *(v26 + 44));
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v15, v22, &qword_27CA5E548, &qword_2154C5958);
  v27 = &v22[*(v17 + 44)];
  v28 = v62;
  *(v27 + 4) = v61;
  *(v27 + 5) = v28;
  *(v27 + 6) = v63;
  v29 = v58;
  *v27 = v57;
  *(v27 + 1) = v29;
  v30 = v60;
  *(v27 + 2) = v59;
  *(v27 + 3) = v30;
  sub_21533FB7C(v22, v25, &qword_27CA5E550, &qword_2154C5960);
  v31 = a1;
  v32 = v52;
  sub_21543FE9C(v7);
  LOBYTE(v15) = sub_2154A022C();
  v33 = *(v32 + 8);
  v33(v7, v5);
  v34 = 1;
  if ((v15 & 1) == 0)
  {
    v35 = v50;
    sub_215446BA8(v31, v50);
    (*(v32 + 104))(v7, *MEMORY[0x277CE0278], v5);
    sub_21544CD68();
    v36 = v51;
    sub_2154A093C();
    v33(v7, v5);
    sub_2151ADCD8(v35, &qword_27CA5E0C8, &qword_2154C5130);
    *(v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E560, &qword_2154C5970) + 36)) = 0x3FF0000000000000;
    v37 = sub_2154A06FC();
    sub_21549F99C();
    v38 = v36 + *(v56 + 36);
    *v38 = v37;
    *(v38 + 8) = v39;
    *(v38 + 16) = v40;
    *(v38 + 24) = v41;
    *(v38 + 32) = v42;
    *(v38 + 40) = 0;
    sub_21533FB7C(v36, v12, &qword_27CA5E538, &qword_2154C5948);
    v34 = 0;
  }

  (*(v54 + 56))(v12, v34, 1, v56);
  sub_215324EEC(v25, v19, &qword_27CA5E550, &qword_2154C5960);
  v43 = v53;
  sub_215324EEC(v12, v53, &qword_27CA5E540, &qword_2154C5950);
  v44 = v55;
  sub_215324EEC(v19, v55, &qword_27CA5E550, &qword_2154C5960);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E568, &qword_2154C5978);
  v46 = v44 + *(v45 + 48);
  *v46 = 0;
  *(v46 + 8) = 1;
  sub_215324EEC(v43, v44 + *(v45 + 64), &qword_27CA5E540, &qword_2154C5950);
  sub_2151ADCD8(v12, &qword_27CA5E540, &qword_2154C5950);
  sub_2151ADCD8(v25, &qword_27CA5E550, &qword_2154C5960);
  sub_2151ADCD8(v43, &qword_27CA5E540, &qword_2154C5950);
  return sub_2151ADCD8(v19, &qword_27CA5E550, &qword_2154C5960);
}

uint64_t sub_215442940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E570, &qword_2154C5980);
  v131 = *(v3 - 8);
  v132 = v3;
  MEMORY[0x28223BE20](v3);
  v110 = (&v104 - v4);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0C8, &qword_2154C5130);
  MEMORY[0x28223BE20](v104);
  v105 = &v104 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0B8, &qword_2154C5128);
  v108 = *(v6 - 8);
  v109 = v6;
  MEMORY[0x28223BE20](v6);
  v107 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v106 = &v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E578, &qword_2154C5988);
  MEMORY[0x28223BE20](v10 - 8);
  v133 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v141 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E580, &qword_2154C5990);
  v118 = *(v14 - 8);
  v119 = v14;
  MEMORY[0x28223BE20](v14);
  v117 = &v104 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E588, &qword_2154C5998);
  MEMORY[0x28223BE20](v16 - 8);
  v130 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v127 = &v104 - v19;
  MEMORY[0x28223BE20](v20);
  v143 = &v104 - v21;
  v22 = sub_2154A023C();
  v135 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = (&v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E590, &qword_2154C59A0);
  *&v139 = *(v25 - 8);
  *(&v139 + 1) = v25;
  MEMORY[0x28223BE20](v25);
  v138 = &v104 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E598, &qword_2154C59A8);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v140 = &v104 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v104 - v31;
  MEMORY[0x28223BE20](v33);
  v142 = &v104 - v34;
  v35 = *(a1 + 16);
  v115 = *(a1 + 24);
  v116 = v35;
  *&v149 = v35;
  *(&v149 + 1) = v115;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v36 = v145;
  swift_getKeyPath(aX_5);
  *&v149 = v36;
  v113 = sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v38 = *(v36 + 152);
  v37 = *(v36 + 160);

  sub_21543FE9C(v24);
  v39 = sub_2154A022C();
  v40 = *(v135 + 8);
  v128 = v24;
  v129 = v22;
  v120 = v40;
  v121 = v135 + 8;
  v40(v24, v22);
  if (v39)
  {
    v41 = 2;
  }

  else
  {
    v41 = 1;
  }

  KeyPath = swift_getKeyPath(asc_2154C5880);
  v43 = sub_2154A075C();
  v44 = swift_getKeyPath(byte_2154C54D0);
  v160 = 0;
  v159 = 0;
  *&v149 = v38;
  *(&v149 + 1) = v37;
  LOBYTE(v150) = 0;
  *(&v150 + 1) = MEMORY[0x277D84F90];
  *&v151 = KeyPath;
  *(&v151 + 1) = v41;
  LOBYTE(v152) = 0;
  *(&v152 + 1) = v44;
  v153 = v43;
  sub_2154A07CC();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5A0, &qword_2154C59B0);
  v46 = sub_21544F6EC();
  v47 = v138;
  v111 = v46;
  v112 = v45;
  sub_2154A09BC();
  v157[2] = v151;
  v157[3] = v152;
  v158 = v153;
  v157[0] = v149;
  v157[1] = v150;
  sub_2151ADCD8(v157, &qword_27CA5E5A0, &qword_2154C59B0);
  LODWORD(KeyPath) = sub_2154A049C();
  (*(v139 + 32))(v32, v47, *(&v139 + 1));
  v48 = a1;
  *&v32[*(v28 + 44)] = KeyPath;
  sub_21533FB7C(v32, v142, &qword_27CA5E598, &qword_2154C59A8);
  v49 = sub_2154401FC();
  v126 = v51;
  if (v51)
  {
    v124 = v50;
    v125 = v49;
    v123 = swift_getKeyPath(asc_2154C5880);
    v122 = sub_2154A082C();
    v52 = swift_getKeyPath(byte_2154C54D0);
    LOBYTE(v149) = 0;
    LOBYTE(v145) = 0;
    v137 = 0;
    *&v139 = 0;
    *(&v139 + 1) = v52;
    LODWORD(v138) = sub_2154A04BC();
    v136 = 1;
  }

  else
  {
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v136 = 0;
    v137 = 0;
    v139 = 0uLL;
    LODWORD(v138) = 0;
  }

  v53 = sub_215440A14();
  v57 = v129;
  if (v56)
  {
    v58 = v53;
    v59 = v54;
    v60 = v55;
    v61 = v56;
    v62 = swift_getKeyPath(asc_2154C5880);
    v63 = sub_2154A082C();
    v64 = swift_getKeyPath(byte_2154C54D0);
    v156 = v60 & 1;
    v155 = 0;
    *&v145 = v58;
    *(&v145 + 1) = v59;
    LOBYTE(v146) = v60 & 1;
    *(&v146 + 1) = v61;
    *&v147 = v62;
    *(&v147 + 1) = 1;
    LOBYTE(v148[0]) = 0;
    *(&v148[0] + 1) = v64;
    *&v148[1] = v63;
    v65 = v117;
    sub_2154A0A6C();
    v152 = v148[0];
    v153 = *&v148[1];
    v150 = v146;
    v151 = v147;
    v149 = v145;
    sub_2151ADCD8(&v149, &qword_27CA5E5A0, &qword_2154C59B0);
    *&v145 = v116;
    *(&v145 + 1) = v115;
    sub_2154A0DEC();
    v66 = v144;
    swift_getKeyPath(a8_1);
    *&v145 = v66;
    sub_21549ED9C();

    LODWORD(v58) = *(v66 + 144);

    if (v58 == 3)
    {
      v67 = sub_2154A0CFC();
    }

    else
    {
      v67 = sub_2154A0D5C();
    }

    v71 = v67;
    v69 = v127;
    v70 = v128;
    (*(v118 + 32))(v127, v65, v119);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5C0, &qword_2154C59C8);
    *(v69 + *(v72 + 36)) = v71;
    (*(*(v72 - 8) + 56))(v69, 0, 1, v72);
  }

  else
  {
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5C0, &qword_2154C59C8);
    v69 = v127;
    (*(*(v68 - 8) + 56))(v127, 1, 1, v68);
    v70 = v128;
  }

  sub_21533FB7C(v69, v143, &qword_27CA5E588, &qword_2154C5998);
  sub_21543FE9C(v70);
  v73 = sub_2154A022C();
  v74 = v120;
  v120(v70, v57);
  if (v73)
  {
    v75 = v105;
    sub_215446BA8(v48, v105);
    (*(v135 + 104))(v70, *MEMORY[0x277CE0278], v57);
    sub_21544CD68();
    v76 = v106;
    sub_2154A093C();
    v74(v70, v57);
    sub_2151ADCD8(v75, &qword_27CA5E0C8, &qword_2154C5130);
    v78 = v107;
    v77 = v108;
    v79 = *(v108 + 16);
    v80 = v109;
    v79(v107, v76, v109);
    v81 = v110;
    *v110 = 0x4010000000000000;
    *(v81 + 8) = 0;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5D8, &unk_2154C59E0);
    v79(v81 + *(v82 + 48), v78, v80);
    v83 = v81 + *(v82 + 64);
    *v83 = 0x4010000000000000;
    v83[8] = 0;
    v84 = *(v77 + 8);
    v84(v76, v80);
    v84(v78, v80);
    v85 = v81;
    v86 = v141;
    sub_21533FB7C(v85, v141, &qword_27CA5E570, &qword_2154C5980);
    v87 = 0;
  }

  else
  {
    v87 = 1;
    v86 = v141;
  }

  (*(v131 + 56))(v86, v87, 1, v132);
  v88 = v140;
  sub_215324EEC(v142, v140, &qword_27CA5E598, &qword_2154C59A8);
  v89 = v130;
  sub_215324EEC(v143, v130, &qword_27CA5E588, &qword_2154C5998);
  v90 = v86;
  v91 = v133;
  sub_215324EEC(v90, v133, &qword_27CA5E578, &qword_2154C5988);
  v92 = v134;
  sub_215324EEC(v88, v134, &qword_27CA5E598, &qword_2154C59A8);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E5C8, &qword_2154C59D0);
  v94 = (v92 + v93[12]);
  v95 = v124;
  v96 = v125;
  *&v145 = v125;
  *(&v145 + 1) = v124;
  v97 = v126;
  *&v146 = v137;
  *(&v146 + 1) = v126;
  v99 = v122;
  v98 = v123;
  *&v147 = v123;
  *(&v147 + 1) = v136;
  v148[0] = v139;
  *&v148[1] = v122;
  DWORD2(v148[1]) = v138;
  v100 = v146;
  *v94 = v145;
  v94[1] = v100;
  v101 = v148[0];
  v94[2] = v147;
  v94[3] = v101;
  *(v94 + 60) = *(v148 + 12);
  sub_215324EEC(v89, v92 + v93[16], &qword_27CA5E588, &qword_2154C5998);
  v102 = v92 + v93[20];
  *v102 = 0;
  *(v102 + 8) = 0;
  sub_215324EEC(v91, v92 + v93[24], &qword_27CA5E578, &qword_2154C5988);
  sub_215324EEC(&v145, &v149, &qword_27CA5E5D0, &qword_2154C59D8);
  sub_2151ADCD8(v141, &qword_27CA5E578, &qword_2154C5988);
  sub_2151ADCD8(v143, &qword_27CA5E588, &qword_2154C5998);
  sub_2151ADCD8(v142, &qword_27CA5E598, &qword_2154C59A8);
  sub_2151ADCD8(v91, &qword_27CA5E578, &qword_2154C5988);
  sub_2151ADCD8(v89, &qword_27CA5E588, &qword_2154C5998);
  *&v149 = v96;
  *(&v149 + 1) = v95;
  *&v150 = v137;
  *(&v150 + 1) = v97;
  *&v151 = v98;
  *(&v151 + 1) = v136;
  v152 = v139;
  v153 = v99;
  v154 = v138;
  sub_2151ADCD8(&v149, &qword_27CA5E5D0, &qword_2154C59D8);
  return sub_2151ADCD8(v140, &qword_27CA5E598, &qword_2154C59A8);
}

uint64_t AudioPlayerView.body.getter@<X0>(char *a1@<X8>)
{
  v149 = a1;
  v142 = sub_2154A021C();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v127 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v138 = &v127 - v4;
  v152 = sub_2154A059C();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v135 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21549FE2C();
  MEMORY[0x28223BE20](v6);
  v130 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFD8, &qword_2154C4FB0);
  MEMORY[0x28223BE20](v132);
  v9 = &v127 - v8;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFE0, &qword_2154C4FB8);
  v134 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v131 = &v127 - v10;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFE8, &qword_2154C4FC0);
  MEMORY[0x28223BE20](v156);
  v133 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v153 = &v127 - v13;
  MEMORY[0x28223BE20](v14);
  v137 = &v127 - v15;
  MEMORY[0x28223BE20](v16);
  v150 = &v127 - v17;
  MEMORY[0x28223BE20](v18);
  v139 = &v127 - v19;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFF0, &qword_2154C4FC8);
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v155 = &v127 - v20;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFF8, &qword_2154C4FD0);
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v143 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v144 = &v127 - v23;
  *v9 = sub_2154A026C();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E000, &qword_2154C4FD8);
  sub_215444934(v1, &v9[*(v24 + 44)]);
  v154 = v1;
  v25 = *v1;
  swift_getKeyPath(a0_4);
  v26 = OBJC_IVAR____TtC11NotesEditor23AttachmentBrickDelegate___observationRegistrar;
  *&v159 = v25;
  v27 = sub_21544CBEC(&qword_27CA5E008, type metadata accessor for AttachmentBrickDelegate, &unk_2154C540C);
  v129 = v26;
  v128 = v27;
  sub_21549ED9C();

  sub_2154A0FAC();
  sub_21549FAFC();
  v28 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E010, &qword_2154C5008) + 36)];
  v29 = v160;
  *v28 = v159;
  *(v28 + 1) = v29;
  *(v28 + 2) = v161;
  v30 = sub_2154A0D4C();
  KeyPath = swift_getKeyPath(asc_2154C5010);
  v32 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E018, &qword_2154C5040) + 36)];
  *v32 = KeyPath;
  v32[1] = v30;
  if (qword_27CA59900 != -1)
  {
    swift_once();
  }

  v33 = qword_27CA5DF88;
  v34 = sub_2154A06DC();
  v35 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E020, &qword_2154C5048) + 36)];
  *v35 = v33;
  v35[8] = v34;
  v36 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E028, &unk_2154C5050) + 36)];
  v37 = *(v6 + 20);
  v38 = *MEMORY[0x277CE0118];
  v39 = sub_2154A01DC();
  v40 = *(*(v39 - 8) + 104);
  v40(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #16.0 }

  v127 = _Q0;
  *v36 = _Q0;
  *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B9E8, &qword_2154C1E70) + 36)] = 256;
  v46 = v130;
  v40(&v130[*(v6 + 20)], v38, v39);
  *v46 = v127;
  swift_getKeyPath(byte_2154C5060);
  v165 = v25;

  sub_21549ED9C();

  v47 = *(v25 + 32);

  sub_21549FA3C();
  v48 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E030, &qword_2154C5088) + 36)];
  sub_21544E284(v46, v48, MEMORY[0x277CDFC08]);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E038, &qword_2154C5090) + 36);
  v50 = v163;
  *v49 = v162;
  *(v49 + 16) = v50;
  *(v49 + 32) = v164;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E040, &qword_2154C5098);
  *(v48 + *(v51 + 52)) = v47;
  *(v48 + *(v51 + 56)) = 256;
  v52 = sub_2154A0FAC();
  v54 = v53;
  sub_21544C7F4(v46, MEMORY[0x277CDFC08]);
  v55 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E048, &qword_2154C50A0) + 36));
  *v55 = v52;
  v55[1] = v54;
  v56 = sub_2154A0FAC();
  v58 = v57;
  v59 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E050, &qword_2154C50A8) + 36));
  *v59 = v56;
  v59[1] = v58;
  LOBYTE(v56) = sub_2154A06FC();
  sub_21549F99C();
  v60 = v132;
  v61 = &v9[*(v132 + 36)];
  *v61 = v56;
  *(v61 + 1) = v62;
  *(v61 + 2) = v63;
  *(v61 + 3) = v64;
  *(v61 + 4) = v65;
  v61[40] = 0;
  v66 = v135;
  sub_2154A058C();
  v67 = sub_21544F1A4(&qword_27CA5E058, &qword_27CA5DFD8, &qword_2154C4FB0, sub_21544C854);
  v68 = v131;
  sub_2154A0B0C();
  (*(v151 + 8))(v66, v152);
  sub_2151ADCD8(v9, &qword_27CA5DFD8, &qword_2154C4FB0);
  v69 = v154;
  v165 = sub_215445E38();
  v166 = v70;
  v157 = v60;
  v158 = v67;
  swift_getOpaqueTypeConformance2();
  v71 = sub_215324954();
  v72 = v133;
  v73 = v136;
  v152 = v71;
  sub_2154A0AAC();

  (*(v134 + 8))(v68, v73);
  v165 = sub_2154464A8();
  v166 = v74;
  sub_21549FD7C();

  sub_2151ADCD8(v72, &qword_27CA5DFE8, &qword_2154C4FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0, &qword_2154BE098);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_2154BDB50;
  v77 = v69[3];
  v165 = v69[2];
  v76 = v165;
  v166 = v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v79 = v157;
  swift_getKeyPath(aX_5);
  v165 = v79;
  v80 = sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v81 = *(v79 + 152);
  v82 = *(v79 + 160);

  *(v75 + 32) = v81;
  *(v75 + 40) = v82;
  v83 = v137;
  v84 = v153;
  sub_21549FD9C();

  sub_2151ADCD8(v84, &qword_27CA5DFE8, &qword_2154C4FC0);
  v165 = v76;
  v166 = v77;
  v153 = v77;
  v152 = v78;
  sub_2154A0DEC();
  v85 = v157;
  swift_getKeyPath(a8_1);
  v165 = v85;
  v151 = v80;
  sub_21549ED9C();

  v86 = *(v85 + 128);
  v87 = *(v85 + 136);
  v88 = *(v85 + 144);

  v89 = v83;
  if (v88 > 3)
  {
    v90 = v142;
    if (v88 != 4 && (v88 != 5 || v87 | v86))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v90 = v142;
    if (v88 && v88 != 2)
    {
LABEL_10:
      v91 = v138;
      sub_2154A01EC();
      goto LABEL_12;
    }
  }

  v165 = MEMORY[0x277D84F90];
  sub_21544CBEC(&qword_27CA5E0A0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0A8, &qword_2154C5120);
  sub_2151ACC5C(&qword_27CA5E0B0, &qword_27CA5E0A8, &qword_2154C5120, MEMORY[0x277D83970]);
  v91 = v138;
  sub_2154A2BEC();
LABEL_12:
  v92 = v141;
  v93 = v150;
  v94 = v89;
  sub_21549FD8C();
  v95 = *(v92 + 8);
  v95(v91, v90);
  sub_2151ADCD8(v94, &qword_27CA5DFE8, &qword_2154C4FC0);
  v165 = v76;
  v166 = v153;
  sub_2154A0DEC();
  v96 = v157;
  swift_getKeyPath(a8_1);
  v165 = v96;
  sub_21549ED9C();

  v97 = *(v96 + 128);
  v98 = *(v96 + 136);
  v99 = *(v96 + 144);

  v136 = v76;
  if (v99 > 3)
  {
    if (v99 != 4 && (v99 != 5 || v98 | v97))
    {
      goto LABEL_19;
    }
  }

  else if (v99 && v99 != 2)
  {
LABEL_19:
    v165 = MEMORY[0x277D84F90];
    sub_21544CBEC(&qword_27CA5E0A0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0A8, &qword_2154C5120);
    sub_2151ACC5C(&qword_27CA5E0B0, &qword_27CA5E0A8, &qword_2154C5120, MEMORY[0x277D83970]);
    v100 = v140;
    v93 = v150;
    sub_2154A2BEC();
    goto LABEL_21;
  }

  v100 = v140;
  sub_2154A01EC();
LABEL_21:
  v101 = v139;
  sub_21549FDAC();
  v95(v100, v90);
  v102 = sub_2151ADCD8(v93, &qword_27CA5DFE8, &qword_2154C4FC0);
  MEMORY[0x28223BE20](v102);
  *(&v127 - 2) = v154;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0B8, &qword_2154C5128);
  v104 = sub_21544CC3C();
  v105 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0C8, &qword_2154C5130);
  v106 = sub_21544CD68();
  v165 = v105;
  v166 = v106;
  v107 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v109 = v103;
  sub_2154A0AFC();
  sub_2151ADCD8(v101, &qword_27CA5DFE8, &qword_2154C4FC0);
  if ((sub_2154411E8() & 1) == 0)
  {
    v107 = sub_215441418();
  }

  v110 = v107;
  v111 = sub_215440FB0();
  v113 = v112;
  v165 = v136;
  v166 = v153;
  sub_2154A0DEC();
  v114 = v157;
  swift_getKeyPath(aX_4);
  v165 = v114;
  sub_21549ED9C();

  v116 = *(v114 + 80);
  v115 = *(v114 + 88);

  if (!v115)
  {
    sub_21544204C();
    v116 = v117;
    v115 = v118;
  }

  v165 = v156;
  v166 = v109;
  v167 = v104;
  v168 = OpaqueTypeConformance2;
  v119 = swift_getOpaqueTypeConformance2();
  LOBYTE(v165) = v110;
  v166 = v111;
  v167 = v113;
  v168 = v116;
  v169 = v115;
  v120 = v143;
  v121 = v148;
  v122 = v155;
  MEMORY[0x216067790](&v165, v148, &type metadata for AccessibilityConditionalCustomContent, v119);

  (*(v146 + 8))(v122, v121);
  sub_21544D844();
  v123 = *(v145 + 16);
  v124 = v144;
  v125 = v147;
  v123(v144, v120, v147);
  sub_2151ADCD8(v120, &qword_27CA5DFF8, &qword_2154C4FD0);
  v123(v149, v124, v125);
  return sub_2151ADCD8(v124, &qword_27CA5DFF8, &qword_2154C4FD0);
}

uint64_t sub_215444934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E378, &qword_2154C57C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E380, &qword_2154C57C8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E388, &qword_2154C57D0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  *v11 = sub_2154A026C();
  *(v11 + 1) = 0x4010000000000000;
  v11[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E390, &qword_2154C57D8);
  sub_215444CA4(a1, &v11[*(v22 + 44)]);
  sub_2154A0FAC();
  sub_21549FE4C();
  sub_21533FB7C(v11, v18, &qword_27CA5E380, &qword_2154C57C8);
  v23 = &v18[*(v13 + 44)];
  v24 = v38;
  *(v23 + 4) = v37;
  *(v23 + 5) = v24;
  *(v23 + 6) = v39;
  v25 = v34;
  *v23 = v33;
  *(v23 + 1) = v25;
  v26 = v36;
  *(v23 + 2) = v35;
  *(v23 + 3) = v26;
  sub_21533FB7C(v18, v21, &qword_27CA5E388, &qword_2154C57D0);
  *v8 = sub_2154A026C();
  *(v8 + 1) = 0x4010000000000000;
  v8[16] = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E398, &qword_2154C57E0);
  sub_2154457FC(a1, &v8[*(v27 + 44)]);
  sub_215324EEC(v21, v15, &qword_27CA5E388, &qword_2154C57D0);
  sub_215324EEC(v8, v5, &qword_27CA5E378, &qword_2154C57C0);
  v28 = v32;
  sub_215324EEC(v15, v32, &qword_27CA5E388, &qword_2154C57D0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3A0, &qword_2154C57E8);
  sub_215324EEC(v5, v28 + *(v29 + 48), &qword_27CA5E378, &qword_2154C57C0);
  sub_2151ADCD8(v8, &qword_27CA5E378, &qword_2154C57C0);
  sub_2151ADCD8(v21, &qword_27CA5E388, &qword_2154C57D0);
  sub_2151ADCD8(v5, &qword_27CA5E378, &qword_2154C57C0);
  return sub_2151ADCD8(v15, &qword_27CA5E388, &qword_2154C57D0);
}

uint64_t sub_215444CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4D8, &qword_2154C58F8);
  MEMORY[0x28223BE20](v127);
  v128 = &v114 - v3;
  v125 = sub_2154A0F3C();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v114 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v118 = &v114 - v6;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4E0, &qword_2154C5900);
  MEMORY[0x28223BE20](v123);
  v117 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v120 = &v114 - v9;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4E8, &qword_2154C5908);
  MEMORY[0x28223BE20](v126);
  v115 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v116 = &v114 - v12;
  MEMORY[0x28223BE20](v13);
  v119 = &v114 - v14;
  MEMORY[0x28223BE20](v15);
  v121 = &v114 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4F0, &qword_2154C5910);
  MEMORY[0x28223BE20](v17 - 8);
  v131 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v130 = &v114 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E4F8, &qword_2154C5918);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v114 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E500, &qword_2154C5920);
  MEMORY[0x28223BE20](v25);
  v129 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v114 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v114 - v31;
  *v24 = sub_2154A011C();
  *(v24 + 1) = 0;
  v24[16] = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E508, &qword_2154C5928);
  sub_215442328(a1, &v24[*(v33 + 44)]);
  v34 = sub_2154A06EC();
  sub_21549F99C();
  v35 = &v24[*(v22 + 44)];
  *v35 = v34;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B2A8, &qword_2154C5930);
  inited = swift_initStackObject();
  v122 = xmmword_2154BDB40;
  *(inited + 16) = xmmword_2154BDB40;
  v41 = sub_2154A070C();
  *(inited + 32) = v41;
  v42 = sub_2154A072C();
  *(inited + 33) = v42;
  v43 = sub_2154A071C();
  sub_2154A071C();
  if (sub_2154A071C() != v41)
  {
    v43 = sub_2154A071C();
  }

  sub_2154A071C();
  if (sub_2154A071C() != v42)
  {
    v43 = sub_2154A071C();
  }

  sub_21549F99C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_21533FB7C(v24, v29, &qword_27CA5E4F8, &qword_2154C5918);
  v52 = &v29[*(v25 + 36)];
  *v52 = v43;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  v53 = v29;
  v54 = v32;
  sub_21533FB7C(v53, v32, &qword_27CA5E500, &qword_2154C5920);
  if (sub_2154411E8())
  {
    v55 = v118;
    sub_2154A0F2C();
    sub_2154A0FAC();
    sub_21549FE4C();
    v56 = v120;
    (*(v124 + 32))(v120, v55, v125);
    v57 = (v56 + *(v123 + 36));
    v58 = v136;
    v59 = v138;
    v60 = v139;
    v57[4] = v137;
    v57[5] = v59;
    v57[6] = v60;
    v61 = v134;
    v62 = v135;
    *v57 = v133;
    v57[1] = v61;
    v57[2] = v62;
    v57[3] = v58;
    v63 = swift_initStackObject();
    *(v63 + 16) = v122;
    v64 = sub_2154A070C();
    *(v63 + 32) = v64;
    v65 = sub_2154A072C();
    *(v63 + 33) = v65;
    v66 = sub_2154A071C();
    sub_2154A071C();
    v67 = sub_2154A071C();
    v68 = v130;
    if (v67 != v64)
    {
      v66 = sub_2154A071C();
    }

    sub_2154A071C();
    v69 = sub_2154A071C();
    v70 = v126;
    v71 = v121;
    if (v69 != v65)
    {
      v66 = sub_2154A071C();
    }

    sub_21549F99C();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v119;
    sub_21533FB7C(v56, v119, &qword_27CA5E4E0, &qword_2154C5900);
    v81 = v80 + *(v70 + 36);
    *v81 = v66;
    *(v81 + 8) = v73;
    *(v81 + 16) = v75;
    *(v81 + 24) = v77;
    *(v81 + 32) = v79;
    *(v81 + 40) = 0;
    sub_21533FB7C(v80, v71, &qword_27CA5E4E8, &qword_2154C5908);
LABEL_17:
    sub_215324EEC(v71, v128, &qword_27CA5E4E8, &qword_2154C5908);
    swift_storeEnumTagMultiPayload();
    sub_21544F1A4(&qword_27CA5E520, &qword_27CA5E4E8, &qword_2154C5908, sub_21544F630);
    sub_2154A039C();
    sub_2151ADCD8(v71, &qword_27CA5E4E8, &qword_2154C5908);
    v83 = 0;
    goto LABEL_18;
  }

  v82 = sub_215441418();
  v83 = 1;
  v68 = v130;
  if (v82)
  {
    v84 = v114;
    sub_2154A0F2C();
    sub_2154A0FAC();
    sub_21549FE4C();
    v85 = v117;
    (*(v124 + 32))(v117, v84, v125);
    v86 = (v85 + *(v123 + 36));
    v87 = v136;
    v88 = v138;
    v89 = v139;
    v86[4] = v137;
    v86[5] = v88;
    v86[6] = v89;
    v90 = v134;
    v91 = v135;
    *v86 = v133;
    v86[1] = v90;
    v86[2] = v91;
    v86[3] = v87;
    v92 = swift_initStackObject();
    *(v92 + 16) = v122;
    v93 = sub_2154A070C();
    *(v92 + 32) = v93;
    v94 = sub_2154A072C();
    *(v92 + 33) = v94;
    v95 = sub_2154A071C();
    sub_2154A071C();
    if (sub_2154A071C() != v93)
    {
      v95 = sub_2154A071C();
    }

    sub_2154A071C();
    v96 = sub_2154A071C();
    v97 = v126;
    if (v96 != v94)
    {
      v95 = sub_2154A071C();
    }

    sub_21549F99C();
    v99 = v98;
    v101 = v100;
    v103 = v102;
    v105 = v104;
    v106 = v115;
    sub_21533FB7C(v85, v115, &qword_27CA5E4E0, &qword_2154C5900);
    v107 = v106 + *(v97 + 36);
    *v107 = v95;
    *(v107 + 8) = v99;
    *(v107 + 16) = v101;
    *(v107 + 24) = v103;
    *(v107 + 32) = v105;
    *(v107 + 40) = 0;
    v71 = v116;
    sub_21533FB7C(v106, v116, &qword_27CA5E4E8, &qword_2154C5908);
    goto LABEL_17;
  }

LABEL_18:
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E510, &qword_2154C5938);
  (*(*(v108 - 8) + 56))(v68, v83, 1, v108);
  v109 = v129;
  sub_215324EEC(v54, v129, &qword_27CA5E500, &qword_2154C5920);
  v110 = v131;
  sub_215324EEC(v68, v131, &qword_27CA5E4F0, &qword_2154C5910);
  v111 = v132;
  sub_215324EEC(v109, v132, &qword_27CA5E500, &qword_2154C5920);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E518, &qword_2154C5940);
  sub_215324EEC(v110, v111 + *(v112 + 48), &qword_27CA5E4F0, &qword_2154C5910);
  sub_2151ADCD8(v68, &qword_27CA5E4F0, &qword_2154C5910);
  sub_2151ADCD8(v54, &qword_27CA5E500, &qword_2154C5920);
  sub_2151ADCD8(v110, &qword_27CA5E4F0, &qword_2154C5910);
  return sub_2151ADCD8(v109, &qword_27CA5E500, &qword_2154C5920);
}

uint64_t sub_2154457FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3A8, &qword_2154C57F0);
  MEMORY[0x28223BE20](v4);
  v6 = &v74 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3B0, &qword_2154C57F8);
  MEMORY[0x28223BE20](v7);
  v9 = &v74 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3B8, &qword_2154C5800);
  MEMORY[0x28223BE20](v10);
  v12 = &v74 - v11;
  if (sub_2154411E8())
  {
    *v12 = sub_2154A026C();
    *(v12 + 1) = 0x4018000000000000;
    v12[16] = 0;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E480, &qword_2154C5870);
    sub_2154416EC(a1, &v12[*(v13 + 44)]);
    v14 = sub_2154A082C();
    KeyPath = swift_getKeyPath(byte_2154C54D0);
    v16 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E430, &qword_2154C5850) + 36)];
    *v16 = KeyPath;
    v16[1] = v14;
    LODWORD(v14) = sub_2154A04BC();
    *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E420, &qword_2154C5848) + 36)] = v14;
    LOBYTE(v14) = sub_2154A070C();
    sub_21549F99C();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v25 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E410, &qword_2154C5840) + 36)];
    *v25 = v14;
    *(v25 + 1) = v18;
    *(v25 + 2) = v20;
    *(v25 + 3) = v22;
    *(v25 + 4) = v24;
    v25[40] = 0;
    LOBYTE(v14) = sub_2154A06FC();
    sub_21549F99C();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E400, &qword_2154C5838) + 36)];
    *v34 = v14;
    *(v34 + 1) = v27;
    *(v34 + 2) = v29;
    *(v34 + 3) = v31;
    *(v34 + 4) = v33;
    v34[40] = 0;
    LOBYTE(v14) = sub_2154A06EC();
    sub_21549F99C();
    v35 = &v12[*(v10 + 36)];
    *v35 = v14;
    *(v35 + 1) = v36;
    *(v35 + 2) = v37;
    *(v35 + 3) = v38;
    *(v35 + 4) = v39;
    v35[40] = 0;
    sub_215324EEC(v12, v9, &qword_27CA5E3B8, &qword_2154C5800);
    swift_storeEnumTagMultiPayload();
    sub_21544F1A4(&qword_27CA5E3F0, &qword_27CA5E3B8, &qword_2154C5800, sub_21544F228);
    sub_21544F1A4(&qword_27CA5E448, &qword_27CA5E3A8, &qword_2154C57F0, sub_21544F424);
    sub_2154A039C();
    v40 = v12;
    v41 = &qword_27CA5E3B8;
    v42 = &qword_2154C5800;
LABEL_5:
    sub_2151ADCD8(v40, v41, v42);
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3C0, &qword_2154C5808);
    return (*(*(v70 - 8) + 56))(a2, 0, 1, v70);
  }

  if (sub_215441418())
  {
    *v6 = sub_2154A026C();
    *(v6 + 1) = 0x4018000000000000;
    v6[16] = 0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3C8, &qword_2154C5810);
    sub_215441C54(a1, &v6[*(v43 + 44)]);
    v44 = sub_2154A082C();
    v45 = swift_getKeyPath(byte_2154C54D0);
    v46 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3D0, &qword_2154C5818) + 36)];
    *v46 = v45;
    v46[1] = v44;
    LODWORD(v44) = sub_2154A04BC();
    *&v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3D8, &qword_2154C5820) + 36)] = v44;
    LOBYTE(v44) = sub_2154A070C();
    sub_21549F99C();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3E0, &qword_2154C5828) + 36)];
    *v55 = v44;
    *(v55 + 1) = v48;
    *(v55 + 2) = v50;
    *(v55 + 3) = v52;
    *(v55 + 4) = v54;
    v55[40] = 0;
    LOBYTE(v44) = sub_2154A06FC();
    sub_21549F99C();
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3E8, &qword_2154C5830) + 36)];
    *v64 = v44;
    *(v64 + 1) = v57;
    *(v64 + 2) = v59;
    *(v64 + 3) = v61;
    *(v64 + 4) = v63;
    v64[40] = 0;
    LOBYTE(v44) = sub_2154A06EC();
    sub_21549F99C();
    v65 = &v6[*(v4 + 36)];
    *v65 = v44;
    *(v65 + 1) = v66;
    *(v65 + 2) = v67;
    *(v65 + 3) = v68;
    *(v65 + 4) = v69;
    v65[40] = 0;
    sub_215324EEC(v6, v9, &qword_27CA5E3A8, &qword_2154C57F0);
    swift_storeEnumTagMultiPayload();
    sub_21544F1A4(&qword_27CA5E3F0, &qword_27CA5E3B8, &qword_2154C5800, sub_21544F228);
    sub_21544F1A4(&qword_27CA5E448, &qword_27CA5E3A8, &qword_2154C57F0, sub_21544F424);
    sub_2154A039C();
    v40 = v6;
    v41 = &qword_27CA5E3A8;
    v42 = &qword_2154C57F0;
    goto LABEL_5;
  }

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E3C0, &qword_2154C5808);
  v73 = *(*(v72 - 8) + 56);

  return v73(a2, 1, 1, v72);
}

uint64_t sub_215445E38()
{
  v1 = sub_21549E6AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v52[0] = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5EA60, &qword_2154BF4E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v52 - v8;
  v11 = *(v0 + 24);
  v56 = *(v0 + 16);
  v10 = v56;
  v57 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v13 = v55;
  swift_getKeyPath(aX_5);
  v56 = v13;
  v52[1] = sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v15 = *(v13 + 152);
  v14 = *(v13 + 160);

  v59 = v15;
  v60 = v14;
  v53 = v10;
  v54 = v11;
  v56 = v10;
  v57 = v11;
  v16 = v12;
  sub_2154A0DEC();
  v17 = *(v55 + 24);

  v18 = [v17 modificationDate];

  if (v18)
  {
    sub_21549E66C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  (*(v2 + 56))(v6, v19, 1, v1);
  sub_21533FB7C(v6, v9, &unk_27CA5EA60, &qword_2154BF4E0);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_2151ADCD8(v9, &unk_27CA5EA60, &qword_2154BF4E0);
    v20 = 0;
    v21 = 0;
  }

  else
  {
    v22 = v52[0];
    (*(v2 + 16))(v52[0], v9, v1);
    sub_2151ADCD8(v9, &unk_27CA5EA60, &qword_2154BF4E0);
    v20 = sub_21549E63C();
    v21 = v23;
    (*(v2 + 8))(v22, v1);
  }

  v61 = v20;
  v62 = v21;
  v24 = objc_opt_self();
  v25 = sub_2154A1D2C();
  v26 = [v24 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:1];

  v27 = sub_2154A1D6C();
  v29 = v28;

  v30 = 0;
  v63 = v27;
  v64 = v29;
  v31 = MEMORY[0x277D84F90];
LABEL_8:
  if (v30 <= 3)
  {
    v32 = 3;
  }

  else
  {
    v32 = v30;
  }

  v33 = v32 + 1;
  v34 = 16 * v30 + 40;
  while (v30 != 3)
  {
    if (v33 == ++v30)
    {
      __break(1u);
LABEL_31:
      v31 = sub_215317E44(0, *(v31 + 2) + 1, 1, v31);
      goto LABEL_26;
    }

    v35 = v34 + 16;
    v26 = *&v58[v34];
    v34 += 16;
    if (v26)
    {
      v36 = *(&v55 + v35);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_215317E44(0, *(v31 + 2) + 1, 1, v31);
      }

      v38 = *(v31 + 2);
      v37 = *(v31 + 3);
      if (v38 >= v37 >> 1)
      {
        v31 = sub_215317E44((v37 > 1), v38 + 1, 1, v31);
      }

      *(v31 + 2) = v38 + 1;
      v39 = &v31[16 * v38];
      *(v39 + 4) = v36;
      *(v39 + 5) = v26;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5ADE0, qword_2154BF060);
  swift_arrayDestroy();
  v56 = v53;
  v57 = v54;
  sub_2154A0DEC();
  v40 = v55;
  swift_getKeyPath(a8_1);
  v56 = v40;
  sub_21549ED9C();

  v41 = *(v40 + 128);
  v42 = *(v40 + 144);

  if (v42)
  {
    goto LABEL_29;
  }

  v43 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:1 ignoreFractionalSeconds:v41];
  if (v43 && (v44 = v43, v45 = [v43 durationDescription], v44, v45))
  {
    v16 = sub_2154A1D6C();
    v26 = v46;
  }

  else
  {
    v16 = 0;
    v26 = 0xE000000000000000;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  v48 = *(v31 + 2);
  v47 = *(v31 + 3);
  if (v48 >= v47 >> 1)
  {
    v31 = sub_215317E44((v47 > 1), v48 + 1, 1, v31);
  }

  *(v31 + 2) = v48 + 1;
  v49 = &v31[16 * v48];
  *(v49 + 4) = v16;
  *(v49 + 5) = v26;
LABEL_29:
  v56 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F0, &qword_2154C2A70);
  sub_2151ACC5C(&qword_2811996E8, &qword_27CA5E9F0, &qword_2154C2A70, MEMORY[0x277D83958]);
  v50 = sub_2154A1CBC();

  return v50;
}

uint64_t sub_2154464A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  swift_getKeyPath(a8_1);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v0 = *(v41 + 128);
  v1 = *(v41 + 136);
  v2 = *(v41 + 144);

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0, &qword_2154BE098);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2154BDB40;
      v17 = objc_opt_self();
      v18 = sub_2154A1D2C();
      v19 = [v17 localizedFrameworkStringForKey:v18 value:0 table:0 allowSiri:1];

      v20 = sub_2154A1D6C();
      v22 = v21;

      *(inited + 32) = v20;
      *(inited + 40) = v22;
      v15 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:0 ignoreFractionalSeconds:v16];
      if (!v15)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v2 != 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0, &qword_2154BE098);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2154BDB50;
        v33 = objc_opt_self();
        v34 = sub_2154A1D2C();
        v35 = [v33 localizedFrameworkStringForKey:v34 value:0 table:0 allowSiri:1];

        v36 = sub_2154A1D6C();
        v38 = v37;

        *(inited + 32) = v36;
        *(inited + 40) = v38;
        goto LABEL_14;
      }

      v8 = v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0, &qword_2154BE098);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2154BDB40;
      v9 = objc_opt_self();
      v10 = sub_2154A1D2C();
      v11 = [v9 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

      v12 = sub_2154A1D6C();
      v14 = v13;

      *(inited + 32) = v12;
      *(inited + 40) = v14;
      v15 = [objc_allocWithZone(MEMORY[0x277D36850]) initWithSeconds:0 ignoreFractionalSeconds:v8];
      if (!v15)
      {
        goto LABEL_11;
      }
    }

    v23 = v15;
    v24 = [v15 durationDescription];

    if (v24)
    {
      v25 = sub_2154A1D6C();
      v27 = v26;

LABEL_12:
      *(inited + 48) = v25;
      *(inited + 56) = v27;
      goto LABEL_14;
    }

LABEL_11:
    v25 = 0;
    v27 = 0xE000000000000000;
    goto LABEL_12;
  }

  if (v2)
  {
    v3 = v0;
    v4 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A2B0, &qword_2154BE098);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2154BDB40;
    v6 = objc_opt_self();
    v7 = sub_2154A1D2C();
    v28 = [v6 localizedFrameworkStringForKey:v7 value:0 table:0 allowSiri:1];

    v29 = sub_2154A1D6C();
    v31 = v30;

    *(inited + 32) = v29;
    *(inited + 40) = v31;
    *(inited + 48) = _sSd11NotesEditorE34accessibilityElapsedAndTotalString7elapsed5totalSSSd_SdtFZ_0(round(v3), round(v4));
    *(inited + 56) = v32;
LABEL_14:
    sub_21547EDC8(inited);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E9F0, &qword_2154C2A70);
  sub_2151ACC5C(&qword_2811996E8, &qword_27CA5E9F0, &qword_2154C2A70, MEMORY[0x277D83958]);
  v39 = sub_2154A1CBC();

  return v39;
}

uint64_t sub_215446A14(uint64_t a1)
{
  v2 = sub_2154A023C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0C8, &qword_2154C5130);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_215446BA8(a1, &v10 - v7);
  (*(v3 + 104))(v5, *MEMORY[0x277CE0278], v2);
  sub_21544CD68();
  sub_2154A093C();
  (*(v3 + 8))(v5, v2);
  return sub_2151ADCD8(v8, &qword_27CA5E0C8, &qword_2154C5130);
}

uint64_t sub_215446BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v85 = sub_2154A014C();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5CEE0, &qword_2154C1E80);
  v82 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v81 = &v79 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E1C8, &qword_2154C51B8);
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v80 = &v79 - v5;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E1B8, &qword_2154C51B0);
  MEMORY[0x28223BE20](v119);
  v94 = &v79 - v6;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E1A8, &qword_2154C51A8);
  MEMORY[0x28223BE20](v103);
  v92 = (&v79 - v7);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E290, &qword_2154C5618);
  MEMORY[0x28223BE20](v100);
  v101 = &v79 - v8;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E178, &qword_2154C5190);
  MEMORY[0x28223BE20](v115);
  v104 = &v79 - v9;
  v99 = sub_2154A03AC();
  v89 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v88 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E180, &qword_2154C5198);
  MEMORY[0x28223BE20](v98);
  v87 = &v79 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E298, &qword_2154C5620);
  v91 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v90 = &v79 - v12;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E128, &qword_2154C5160);
  MEMORY[0x28223BE20](v110);
  v105 = &v79 - v13;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2A0, &qword_2154C5628);
  MEMORY[0x28223BE20](v117);
  v118 = &v79 - v14;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2A8, &qword_2154C5630);
  MEMORY[0x28223BE20](v111);
  v113 = &v79 - v15;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2B0, &qword_2154C5638);
  MEMORY[0x28223BE20](v107);
  v108 = &v79 - v16;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E100, &qword_2154C5148);
  MEMORY[0x28223BE20](v112);
  v109 = &v79 - v17;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0F0, &qword_2154C5140);
  MEMORY[0x28223BE20](v116);
  v114 = &v79 - v18;
  v19 = type metadata accessor for AudioPlayerView(0);
  v97 = *(v19 - 8);
  v20 = *(v97 + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E110, &unk_2154C5150);
  MEMORY[0x28223BE20](v106);
  v86 = &v79 - v21;
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  v121 = v22;
  v122 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v24 = v125;
  swift_getKeyPath(a8_1);
  v121 = v24;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v25 = *(v24 + 144);

  if (v25 > 2)
  {
    if (v25 == 3)
    {
      sub_21544E284(a1, &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlayerView);
      v47 = (*(v97 + 80) + 16) & ~*(v97 + 80);
      v48 = swift_allocObject();
      v49 = sub_21543D898(&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47);
      MEMORY[0x28223BE20](v49);
      *(&v79 - 2) = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C8, &unk_2154C5650);
      sub_2151ACC5C(&qword_27CA5E2D0, &qword_27CA5E2C8, &unk_2154C5650, MEMORY[0x277CDEFF0]);
      v50 = v87;
      sub_2154A0E3C();
      v51 = sub_2154A0CFC();
      v52 = v98;
      *(v50 + *(v98 + 36)) = v51;
      v53 = v88;
      sub_21549FEAC();
      v54 = sub_21544D590();
      v55 = sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
      v56 = v90;
      v57 = v99;
      sub_2154A09FC();
      (*(v89 + 8))(v53, v57);
      sub_2151ADCD8(v50, &qword_27CA5E180, &qword_2154C5198);
      v58 = v91;
      v59 = v102;
      (*(v91 + 16))(v101, v56, v102);
      swift_storeEnumTagMultiPayload();
      v121 = v52;
      v122 = v57;
      v123 = v54;
      v124 = v55;
      swift_getOpaqueTypeConformance2();
      sub_2151ACC5C(&qword_27CA5E1A0, &qword_27CA5E1A8, &qword_2154C51A8, MEMORY[0x277CE1138]);
      v60 = v104;
      sub_2154A039C();
      sub_215324EEC(v60, v113, &qword_27CA5E178, &qword_2154C5190);
      swift_storeEnumTagMultiPayload();
      sub_21544CF04();
      sub_21544D44C();
      v61 = v114;
      sub_2154A039C();
      sub_2151ADCD8(v60, &qword_27CA5E178, &qword_2154C5190);
      sub_215324EEC(v61, v118, &qword_27CA5E0F0, &qword_2154C5140);
      swift_storeEnumTagMultiPayload();
      sub_21544CE78();
      sub_21544D648();
      sub_2154A039C();
      sub_2151ADCD8(v61, &qword_27CA5E0F0, &qword_2154C5140);
      return (*(v58 + 8))(v56, v59);
    }

    if (v25 == 4)
    {
      v32 = sub_2154A011C();
      v33 = v92;
      *v92 = v32;
      *(v33 + 8) = 0x4030000000000000;
      *(v33 + 16) = 0;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2B8, &qword_2154C5640);
      sub_215448088(a1, (v33 + *(v34 + 44)));
      v35 = &qword_27CA5E1A8;
      v36 = &qword_2154C51A8;
      sub_215324EEC(v33, v101, &qword_27CA5E1A8, &qword_2154C51A8);
      swift_storeEnumTagMultiPayload();
      v37 = sub_21544D590();
      v38 = sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
      v121 = v98;
      v122 = v99;
      v123 = v37;
      v124 = v38;
      swift_getOpaqueTypeConformance2();
      sub_2151ACC5C(&qword_27CA5E1A0, &qword_27CA5E1A8, &qword_2154C51A8, MEMORY[0x277CE1138]);
      v39 = v104;
      sub_2154A039C();
      sub_215324EEC(v39, v113, &qword_27CA5E178, &qword_2154C5190);
      swift_storeEnumTagMultiPayload();
      sub_21544CF04();
      sub_21544D44C();
      v40 = v114;
      sub_2154A039C();
      sub_2151ADCD8(v39, &qword_27CA5E178, &qword_2154C5190);
      sub_215324EEC(v40, v118, &qword_27CA5E0F0, &qword_2154C5140);
      swift_storeEnumTagMultiPayload();
      sub_21544CE78();
      sub_21544D648();
      sub_2154A039C();
      sub_2151ADCD8(v40, &qword_27CA5E0F0, &qword_2154C5140);
      v29 = v33;
    }

    else
    {
      v121 = v22;
      v122 = v23;
      sub_2154A0DEC();
      v62 = v125;
      swift_getKeyPath(byte_2154C55F0);
      v121 = v62;
      sub_21549ED9C();

      v63 = *(v62 + 16);

      if (v63 == 1)
      {
        v64 = objc_opt_self();
        v65 = sub_2154A1D2C();
        v66 = [v64 localizedFrameworkStringForKey:v65 value:0 table:0 allowSiri:1];

        v67 = sub_2154A1D6C();
        v69 = v68;

        v121 = v67;
        v122 = v69;
        sub_215324954();
        v70 = v81;
        sub_2154A0DCC();
        v71 = v83;
        sub_2154A013C();
        sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0, &qword_2154C1E80, MEMORY[0x277CDEFF0]);
        sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
        v72 = v80;
        v73 = v96;
        v74 = v85;
        sub_2154A09CC();
        (*(v84 + 8))(v71, v74);
        (*(v82 + 8))(v70, v73);
        v75 = sub_2154A0CBC();
        v76 = v95;
        *(v72 + *(v95 + 36)) = v75;
        v77 = v94;
        sub_21533FB7C(v72, v94, &qword_27CA5E1C8, &qword_2154C51B8);
        v78 = 0;
      }

      else
      {
        v78 = 1;
        v76 = v95;
        v77 = v94;
      }

      (*(v93 + 56))(v77, v78, 1, v76);
      v35 = &qword_27CA5E1B8;
      v36 = &qword_2154C51B0;
      sub_215324EEC(v77, v118, &qword_27CA5E1B8, &qword_2154C51B0);
      swift_storeEnumTagMultiPayload();
      sub_21544CE78();
      sub_21544D648();
      sub_2154A039C();
      v29 = v77;
    }

    v30 = v35;
    v31 = v36;
  }

  else
  {
    if ((v25 - 1) >= 2)
    {
      sub_21544E284(a1, &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlayerView);
      v41 = (*(v97 + 80) + 16) & ~*(v97 + 80);
      v42 = swift_allocObject();
      sub_21543D898(&v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v41);
      sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0, &qword_2154C1E80, MEMORY[0x277CDEFF0]);
      v43 = v86;
      sub_2154A0E3C();
      *(v43 + *(v106 + 36)) = 0;
      sub_215324EEC(v43, v108, &qword_27CA5E110, &unk_2154C5150);
      swift_storeEnumTagMultiPayload();
      sub_21544CF90();
      sub_21544D09C();
      v44 = v109;
      sub_2154A039C();
      sub_215324EEC(v44, v113, &qword_27CA5E100, &qword_2154C5148);
      swift_storeEnumTagMultiPayload();
      sub_21544CF04();
      sub_21544D44C();
      v45 = v114;
      sub_2154A039C();
      sub_2151ADCD8(v44, &qword_27CA5E100, &qword_2154C5148);
      sub_215324EEC(v45, v118, &qword_27CA5E0F0, &qword_2154C5140);
      swift_storeEnumTagMultiPayload();
      sub_21544CE78();
      sub_21544D648();
      sub_2154A039C();
      sub_2151ADCD8(v45, &qword_27CA5E0F0, &qword_2154C5140);
      return sub_2151ADCD8(v43, &qword_27CA5E110, &unk_2154C5150);
    }

    v26 = v105;
    sub_215448D18(v105);
    sub_215324EEC(v26, v108, &qword_27CA5E128, &qword_2154C5160);
    swift_storeEnumTagMultiPayload();
    sub_21544CF90();
    sub_21544D09C();
    v27 = v109;
    sub_2154A039C();
    sub_215324EEC(v27, v113, &qword_27CA5E100, &qword_2154C5148);
    swift_storeEnumTagMultiPayload();
    sub_21544CF04();
    sub_21544D44C();
    v28 = v114;
    sub_2154A039C();
    sub_2151ADCD8(v27, &qword_27CA5E100, &qword_2154C5148);
    sub_215324EEC(v28, v118, &qword_27CA5E0F0, &qword_2154C5140);
    swift_storeEnumTagMultiPayload();
    sub_21544CE78();
    sub_21544D648();
    sub_2154A039C();
    sub_2151ADCD8(v28, &qword_27CA5E0F0, &qword_2154C5140);
    v29 = v26;
    v30 = &qword_27CA5E128;
    v31 = &qword_2154C5160;
  }

  return sub_2151ADCD8(v29, v30, v31);
}

uint64_t sub_215448088@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = sub_2154A03AC();
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  MEMORY[0x28223BE20](v3);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AudioPlayerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E180, &qword_2154C5198);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E298, &qword_2154C5620);
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x28223BE20](v12);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E338, &qword_2154C5780);
  v43 = *(v17 - 8);
  v18 = v43;
  v44 = v17;
  MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  v42 = &v40 - v22;
  sub_2154485E8(&v40 - v22);
  sub_21544E284(a1, &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlayerView);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  sub_21543D898(&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  v52 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C8, &unk_2154C5650);
  sub_2151ACC5C(&qword_27CA5E2D0, &qword_27CA5E2C8, &unk_2154C5650, MEMORY[0x277CDEFF0]);
  sub_2154A0E3C();
  *&v11[*(v9 + 36)] = sub_2154A0CFC();
  v26 = v45;
  sub_21549FEAC();
  sub_21544D590();
  sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  v40 = v16;
  v27 = v49;
  sub_2154A09FC();
  (*(v50 + 8))(v26, v27);
  sub_2151ADCD8(v11, &qword_27CA5E180, &qword_2154C5198);
  v28 = *(v18 + 16);
  v41 = v20;
  v29 = v44;
  v28(v20, v23, v44);
  v31 = v46;
  v30 = v47;
  v32 = *(v47 + 16);
  v33 = v16;
  v34 = v48;
  v32(v46, v33, v48);
  v35 = v51;
  v28(v51, v20, v29);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E340, &qword_2154C5788);
  v32(&v35[*(v36 + 48)], v31, v34);
  v37 = *(v30 + 8);
  v37(v40, v34);
  v38 = *(v43 + 8);
  v38(v42, v29);
  v37(v31, v34);
  return (v38)(v41, v29);
}

uint64_t sub_2154485E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_2154A03AC();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  MEMORY[0x28223BE20](v3);
  v53 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A044C();
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  MEMORY[0x28223BE20](v6);
  v50 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2154A014C();
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioPlayerView(0);
  v43 = *(v13 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E348, &qword_2154C5790);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E350, &qword_2154C5798);
  v44 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E358, &qword_2154C57A0);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v22 = &v43 - v21;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E360, &qword_2154C57A8);
  MEMORY[0x28223BE20](v46);
  v24 = &v43 - v23;
  sub_21544E284(v2, &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioPlayerView);
  v25 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v26 = swift_allocObject();
  sub_21543D898(&v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F8, &qword_2154C56B8);
  sub_21544E680();
  sub_2154A0E3C();
  v27 = sub_2154A07FC();
  KeyPath = swift_getKeyPath(byte_2154C54D0);
  v29 = &v17[*(v15 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  sub_2154A07AC();
  v30 = sub_21544EDC0();
  sub_2154A09BC();
  sub_2151ADCD8(v17, &qword_27CA5E348, &qword_2154C5790);
  sub_2154A013C();
  v57 = v15;
  v58 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  v33 = v48;
  sub_2154A09CC();
  (*(v49 + 8))(v12, v33);
  (*(v44 + 8))(v20, v18);
  v34 = v50;
  sub_2154A043C();
  v57 = v18;
  v58 = v33;
  v59 = OpaqueTypeConformance2;
  v60 = v32;
  swift_getOpaqueTypeConformance2();
  sub_21544CBEC(&qword_27CA5E168, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v35 = v45;
  v36 = v51;
  sub_2154A09DC();
  (*(v52 + 8))(v34, v36);
  (*(v47 + 8))(v22, v35);
  v37 = sub_2154A0CFC();
  v38 = swift_getKeyPath(asc_2154C5010);
  v39 = &v24[*(v46 + 36)];
  *v39 = v38;
  v39[1] = v37;
  v40 = v53;
  sub_21549FEAC();
  sub_21544EEA4();
  sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  v41 = v54;
  sub_2154A09FC();
  (*(v55 + 8))(v40, v41);
  return sub_2151ADCD8(v24, &qword_27CA5E360, &qword_2154C57A8);
}

uint64_t sub_215448D18@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v47 = a1;
  v4 = sub_2154A044C();
  v5 = *(v4 - 8);
  v45 = v4;
  v46 = v5;
  MEMORY[0x28223BE20](v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2154A014C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E158, &unk_2154C5180);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E150, &qword_2154C5178);
  v41 = *(v14 - 8);
  v42 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E140, &qword_2154C5170);
  MEMORY[0x28223BE20](v43);
  v18 = &v40 - v17;
  *v13 = sub_2154A011C();
  *(v13 + 1) = 0x4028000000000000;
  v13[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2D8, &qword_2154C5668);
  sub_2154495E4(v3, &v13[*(v19 + 44)]);
  sub_2154A013C();
  v20 = sub_2151ACC5C(&qword_27CA5E160, &qword_27CA5E158, &unk_2154C5180, MEMORY[0x277CE1138]);
  v21 = sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
  sub_2154A09CC();
  (*(v8 + 8))(v10, v7);
  sub_2151ADCD8(v13, &qword_27CA5E158, &unk_2154C5180);
  v22 = v44;
  sub_2154A043C();
  v48 = v11;
  v49 = v7;
  v50 = v20;
  v51 = v21;
  swift_getOpaqueTypeConformance2();
  sub_21544CBEC(&qword_27CA5E168, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v23 = v42;
  v24 = v45;
  sub_2154A09DC();
  (*(v46 + 8))(v22, v24);
  (*(v41 + 8))(v16, v23);
  v25 = sub_2154A07EC();
  KeyPath = swift_getKeyPath(byte_2154C54D0);
  v27 = &v18[*(v43 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_2154A07AC();
  sub_21544D248();
  v28 = v47;
  sub_2154A09BC();
  sub_2151ADCD8(v18, &qword_27CA5E140, &qword_2154C5170);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E138, &qword_2154C5168) + 36));
  v30 = v28;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70, &qword_2154C1EB0) + 28);
  v32 = *MEMORY[0x277CE1058];
  v33 = sub_2154A0D9C();
  (*(*(v33 - 8) + 104))(&v29[v31], v32, v33);
  *v29 = swift_getKeyPath(aX_6);
  v34 = swift_getKeyPath(byte_2154C5670);
  v35 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E128, &qword_2154C5160) + 36));
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D0E0, &qword_2154C3988) + 28);
  v37 = *MEMORY[0x277CDFA88];
  v38 = sub_21549FD5C();
  result = (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = v34;
  return result;
}

uint64_t sub_2154492BC()
{
  v0 = objc_opt_self();
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  sub_215324954();
  return sub_2154A0DCC();
}

double sub_2154493F0@<D0>(uint64_t a5@<X8>)
{
  v6 = objc_opt_self();
  v7 = sub_2154A1D2C();
  v8 = [v6 localizedFrameworkStringForKey:v7 value:0 table:0 allowSiri:1];

  v9 = sub_2154A1D6C();
  v11 = v10;

  *&v14 = v9;
  *(&v14 + 1) = v11;
  sub_215324954();
  sub_2154A0DCC();
  sub_2154A0FAC();
  sub_21549FAFC();
  v12 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F8, &qword_2154C56B8) + 36));
  *v12 = v14;
  v12[1] = v15;
  result = *&v16;
  v12[2] = v16;
  return result;
}

double sub_215449514@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  *&v8 = a1();
  *(&v8 + 1) = v5;
  a2();
  sub_215324954();
  sub_2154A0DCC();
  sub_2154A0FAC();
  sub_21549FAFC();
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F8, &qword_2154C56B8) + 36));
  *v6 = v8;
  v6[1] = v9;
  result = *&v10;
  v6[2] = v10;
  return result;
}

uint64_t sub_2154495E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a1;
  v78 = a2;
  v75 = sub_2154A10BC();
  v72 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v68 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2154A109C();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2E0, &qword_2154C56A0) - 8;
  MEMORY[0x28223BE20](v76);
  v77 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v87 = &v60 - v7;
  v79 = sub_2154A03AC();
  v8 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2E8, &qword_2154C56A8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - v13;
  v15 = type metadata accessor for AudioPlayerView(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = v17;
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F0, &qword_2154C56B0);
  v91 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v90 = &v60 - v21;
  MEMORY[0x28223BE20](v22);
  v69 = &v60 - v23;
  MEMORY[0x28223BE20](v24);
  v89 = &v60 - v25;
  v86 = type metadata accessor for AudioPlayerView;
  sub_21544E284(a1, v18, type metadata accessor for AudioPlayerView);
  v84 = *(v16 + 80);
  v26 = (v84 + 16) & ~v84;
  v27 = swift_allocObject();
  sub_21543D898(v18, v27 + v26);

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F8, &qword_2154C56B8);
  v85 = sub_21544E680();
  sub_2154A0E3C();
  sub_21549FEAC();
  v82 = sub_2151ACC5C(&qword_27CA5E308, &qword_27CA5E2E8, &qword_2154C56A8, MEMORY[0x277CDF028]);
  v60 = sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  v28 = v79;
  sub_2154A09FC();

  v81 = *(v8 + 8);
  v81(v10, v28);
  v64 = v8 + 8;
  v29 = *(v12 + 8);
  v29(v14, v11);
  v62 = v29;
  v63 = v12 + 8;
  v99 = v80;
  v97 = v80;
  v65 = v18;
  sub_21544E284(v80, v18, v86);
  v66 = v26;
  v30 = swift_allocObject();
  sub_21543D898(v18, v30 + v26);
  v92 = sub_21544E738;
  v93 = &v98;
  v94 = sub_21544E740;
  v95 = &v96;

  sub_2154A0E3C();
  sub_21549FEAC();
  v31 = v87;
  v61 = v11;
  v32 = v79;
  sub_2154A09FC();

  v81(v10, v32);
  v29(v14, v11);
  v33 = v67;
  sub_2154A108C();
  v34 = v68;
  sub_2154A10AC();
  v35 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E310, &qword_2154C56C0) + 36));
  v36 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E318, &qword_2154C56C8);
  sub_21544CBEC(&qword_27CA5E320, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
  v37 = v70;
  sub_21549FE9C();
  (*(v72 + 8))(v34, v75);
  (*(v71 + 8))(v33, v37);
  *v35 = swift_getKeyPath(byte_2154C56D0);
  v38 = (v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E328, &qword_2154C5700) + 36));
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70, &qword_2154C1EB0) + 28);
  v40 = *MEMORY[0x277CE1048];
  v41 = sub_2154A0D9C();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  *v38 = swift_getKeyPath(aX_6);
  v42 = sub_2154A07FC();
  KeyPath = swift_getKeyPath(byte_2154C54D0);
  v44 = (v36 + *(v76 + 44));
  v45 = v36;
  *v44 = KeyPath;
  v44[1] = v42;
  v46 = v65;
  sub_21544E284(v80, v65, v86);
  v47 = v66;
  v48 = swift_allocObject();
  sub_21543D898(v46, v48 + v47);

  sub_2154A0E3C();
  sub_21549FEAC();
  v49 = v69;
  v50 = v61;
  sub_2154A09FC();

  v81(v10, v32);
  v62(v14, v50);
  v51 = v90;
  v52 = *(v91 + 16);
  v53 = v74;
  v52(v90, v89, v74);
  v54 = v77;
  sub_215324EEC(v45, v77, &qword_27CA5E2E0, &qword_2154C56A0);
  v55 = v73;
  v52(v73, v49, v53);
  v56 = v78;
  v52(v78, v51, v53);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E330, &qword_2154C5708);
  sub_215324EEC(v54, &v56[*(v57 + 48)], &qword_27CA5E2E0, &qword_2154C56A0);
  v52(&v56[*(v57 + 64)], v55, v53);
  v58 = *(v91 + 8);
  v58(v49, v53);
  sub_2151ADCD8(v87, &qword_27CA5E2E0, &qword_2154C56A0);
  v58(v89, v53);
  v58(v55, v53);
  sub_2151ADCD8(v54, &qword_27CA5E2E0, &qword_2154C56A0);
  return (v58)(v90, v53);
}

uint64_t sub_21544A1A0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  swift_getKeyPath(a8_1);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v1 = objc_opt_self();
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedFrameworkStringForKey:v2 value:0 table:0 allowSiri:1];

  v4 = sub_2154A1D6C();
  return v4;
}

uint64_t sub_21544A2FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  swift_getKeyPath(a8_1);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v1 = *(v3 + 144);

  if (v1 == 1)
  {
    return 0x69662E6573756170;
  }

  else
  {
    return 0x6C69662E79616C70;
  }
}

double sub_21544A408(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v6 = *(a1 + 24);
  v19 = *(a1 + 16);
  v5 = v19;
  v20 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v7 = v18;
  swift_getKeyPath(a8_1);
  v19 = v7;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  LODWORD(a1) = *(v7 + 144);

  v19 = v5;
  v20 = v6;
  sub_2154A0DEC();
  v8 = v18;
  v9 = sub_2154A202C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_2154A1FFC();

  if (a1 == 1)
  {
    v10 = sub_2154A1FEC();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v8;
    sub_2152F5364(0, 0, v4, &unk_2154C5720, v11);
  }

  else
  {
    v13 = sub_2154A1FEC();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v8;
    sub_2152F4D50(0, 0, v4, &unk_2154C5718, v14);
  }

  return result;
}

double sub_21544A6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, char *, uint64_t, void *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  v10 = *(a1 + 24);
  v17[2] = *(a1 + 16);
  v17[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v11 = v17[1];
  v12 = sub_2154A202C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_2154A1FFC();

  v13 = sub_2154A1FEC();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  a4(0, 0, v9, a3, v14);

  return result;
}

double sub_21544A834@<D0>(uint64_t a1@<X8>)
{
  sub_2154A01BC();
  sub_2154A0DBC();
  sub_2154A0FAC();
  sub_21549FAFC();
  v2 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2F8, &qword_2154C56B8) + 36));
  *v2 = v4;
  v2[1] = v5;
  result = *&v6;
  v2[2] = v6;
  return result;
}

double sub_21544A8F8(uint64_t a1)
{
  v2 = type metadata accessor for AudioPlayerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = *(a1 + 24);
  v20 = *(a1 + 16);
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v10 = v19[1];
  swift_getKeyPath(a8_1);
  v20 = v10;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v11 = *(v10 + 144);

  v12 = sub_2154A202C();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  sub_21544E284(a1, v5, type metadata accessor for AudioPlayerView);
  sub_2154A1FFC();
  v13 = sub_2154A1FEC();
  v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  if (v11 == 3)
  {
    v15 = &unk_2154C5748;
  }

  else
  {
    v15 = &unk_2154C5738;
  }

  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_21543D898(v5, v16 + v14);
  sub_2152F4D50(0, 0, v8, v15, v16);

  return result;
}

uint64_t sub_21544AB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v4[7] = sub_2154A1FFC();
  v4[8] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_21544AC38, v6, v5);
}

uint64_t sub_21544AC38()
{
  v1 = v0[6];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v0[11] = v0[4];
  v0[12] = sub_2154A1FEC();
  v5 = sub_2154A1FCC();
  v0[13] = v5;
  v0[14] = v4;

  return MEMORY[0x2822009F8](sub_21544ACF8, v5, v4);
}

uint64_t sub_21544ACF8()
{
  v1 = v0[11];
  swift_getKeyPath(aH_7);
  v0[5] = v1;
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v7 = (*MEMORY[0x277D36370] + MEMORY[0x277D36370]);
    v3 = swift_task_alloc();
    v0[16] = v3;
    *v3 = v0;
    v3[1] = sub_21544AE78;

    return v7();
  }

  else
  {

    v5 = v0[9];
    v6 = v0[10];

    return MEMORY[0x2822009F8](sub_21544AF94, v5, v6);
  }
}

uint64_t sub_21544AE78()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21544B060;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_21544AFF4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21544AF94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21544AFF4()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_21544AF94, v1, v2);
}

uint64_t sub_21544B060()
{
  v1 = v0[15];

  v2 = v0[9];
  v3 = v0[10];

  return MEMORY[0x2822009F8](sub_21544B0D4, v2, v3);
}

uint64_t sub_21544B0D4()
{

  if (qword_27CA598E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5DF58);
  v3 = v1;
  v4 = sub_21549F0FC();
  v5 = sub_2154A226C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2151A1000, v4, v5, "Error pausing recording: %@", v8, 0xCu);
    sub_2151ADCD8(v9, &unk_27CA59E90, &qword_2154BEB40);
    MEMORY[0x21606B520](v9, -1, -1);
    MEMORY[0x21606B520](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_21544B280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_2154A1FFC();
  v4[6] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_21544B318, v6, v5);
}

uint64_t sub_21544B318()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_21544B3DC;

  return sub_21538D47C();
}

uint64_t sub_21544B3DC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2152F465C, v3, v2);
}

uint64_t sub_21544B520@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5DFA8, &unk_2154C4FA0);
  sub_2154A0DEC();
  swift_getKeyPath(a8_1);
  sub_21544CBEC(&qword_27CA5B518, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, &protocol conformance descriptor for AudioPlayerView.AudioPlayerViewModel);
  sub_21549ED9C();

  v3 = objc_opt_self();
  v4 = sub_2154A1D2C();
  v5 = [v3 localizedFrameworkStringForKey:v4 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  sub_215324954();
  result = sub_2154A092C();
  *a2 = result;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v9;
  return result;
}

double sub_21544B6D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v53 = a3;
  v44[1] = a1;
  v3 = sub_2154A03AC();
  v4 = *(v3 - 8);
  v47 = v3;
  v48 = v4;
  MEMORY[0x28223BE20](v3);
  v46 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2154A05DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E218, &qword_2154C5428);
  MEMORY[0x28223BE20](v10);
  v12 = v44 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E220, &qword_2154C5430);
  MEMORY[0x28223BE20](v45);
  v14 = v44 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E228, &qword_2154C5438);
  MEMORY[0x28223BE20](v49);
  v16 = v44 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E230, &qword_2154C5440);
  MEMORY[0x28223BE20](v51);
  v50 = v44 - v17;
  sub_2154A05CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E238, &qword_2154C5448);
  sub_2151ACC5C(&qword_27CA5E240, &qword_27CA5E238, &qword_2154C5448, MEMORY[0x277CE04B0]);
  sub_21544CBEC(&qword_27CA5CFF0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  sub_2154A09DC();
  (*(v7 + 8))(v9, v6);
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E248, &unk_2154C5450) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B8E8, &qword_2154C3470);
  sub_21549FE7C();
  *v18 = swift_getKeyPath(byte_2154C5460);
  v19 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E250, &unk_2154C5490) + 36)];
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BBC8, &qword_2154C1640) + 28);
  v21 = *MEMORY[0x277CDF440];
  v22 = sub_21549FA0C();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  *v19 = swift_getKeyPath(byte_2154C54A0);
  v23 = sub_2154A075C();
  KeyPath = swift_getKeyPath(byte_2154C54D0);
  v25 = &v12[*(v10 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  sub_2154A07AC();
  sub_21544DE98();
  sub_2154A09BC();
  sub_2151ADCD8(v12, &qword_27CA5E218, &qword_2154C5428);
  v26 = &v14[*(v45 + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5BF70, &qword_2154C1EB0) + 28);
  v28 = *MEMORY[0x277CE1058];
  v29 = sub_2154A0D9C();
  (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
  *v26 = swift_getKeyPath(aX_6);
  v30 = v46;
  sub_21549FEAC();
  sub_21544E180();
  sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
  v31 = v47;
  sub_2154A09FC();
  (*(v48 + 8))(v30, v31);
  sub_2151ADCD8(v14, &qword_27CA5E220, &qword_2154C5430);
  sub_2154A0FAC();
  sub_21549FAFC();
  v32 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E278, &qword_2154C5530) + 36)];
  v33 = v56;
  *v32 = v55;
  *(v32 + 1) = v33;
  *(v32 + 2) = v57;
  if (qword_27CA598F8 != -1)
  {
    swift_once();
  }

  v34 = qword_27CA5DF80;
  v35 = swift_getKeyPath(asc_2154C5538);
  v54 = v34;

  v36 = sub_21549FB0C();
  v37 = &v16[*(v49 + 36)];
  *v37 = v35;
  v37[1] = v36;
  v38 = v52;
  if (!v52)
  {
    v38 = sub_2154A0D4C();
  }

  v39 = swift_getKeyPath(byte_2154C5568);
  v40 = v16;
  v41 = v50;
  sub_21533FB7C(v40, v50, &qword_27CA5E228, &qword_2154C5438);
  v42 = (v41 + *(v51 + 36));
  *v42 = v39;
  v42[1] = v38;
  sub_21533FB7C(v41, v53, &qword_27CA5E230, &qword_2154C5440);

  return result;
}

void sub_21544BDCC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2154A021C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21549E15C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    v13 = *(v2 + 16);
    if (v13)
    {
      v38 = a2;
      v39 = a1;
      v36 = v2;
      v40 = *(v2 + 8);
      v41 = v13;

      sub_21549E11C();
      v37 = sub_215324954();
      v14 = sub_2154A2B8C();
      v16 = v15;
      v17 = *(v10 + 8);
      v17(v12, v9);

      v18 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v18 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        v19 = *(v36 + 32);
        if (v19)
        {
          v35 = v14;
          v40 = *(v36 + 24);
          v41 = v19;

          sub_21549E11C();
          v36 = sub_2154A2B8C();
          v21 = v20;
          v17(v12, v9);
          v22 = v36;

          v23 = HIBYTE(v21) & 0xF;
          if ((v21 & 0x2000000000000000) == 0)
          {
            v23 = v22 & 0xFFFFFFFFFFFFLL;
          }

          if (v23)
          {
            v40 = v35;
            v41 = v16;
            v35 = sub_2154A092C();
            v25 = v24;
            v27 = v26;
            v40 = v22;
            v41 = v21;
            v28 = sub_2154A092C();
            v30 = v29;
            v32 = v31;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E280, &qword_2154C5598);
            sub_2151ACC5C(&qword_27CA5E288, &qword_27CA5E280, &qword_2154C5598, MEMORY[0x277CE04B0]);
            v33 = v35;
            sub_2154A0B4C();
            sub_215354880(v28, v30, v32 & 1);

            sub_215354880(v33, v25, v27 & 1);

            return;
          }
        }
      }
    }
  }

  v40 = MEMORY[0x277D84F90];
  sub_21544CBEC(&qword_27CA5E0A0, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E0A8, &qword_2154C5120);
  sub_2151ACC5C(&qword_27CA5E0B0, &qword_27CA5E0A8, &qword_2154C5120, MEMORY[0x277D83970]);
  sub_2154A2BEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E280, &qword_2154C5598);
  sub_2151ACC5C(&qword_27CA5E288, &qword_27CA5E280, &qword_2154C5598, MEMORY[0x277CE04B0]);
  sub_2154A0B1C();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_21544C29C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21549FF2C();
  *a1 = result;
  return result;
}

uint64_t sub_21544C2F4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x216066BD0]();
  *a1 = result;
  return result;
}

uint64_t sub_21544C3EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2154A001C();
  *a1 = result;
  return result;
}

uint64_t sub_21544C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_21544C564@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2154A00AC();
  *a1 = result;
  return result;
}

id sub_21544C5BC(uint64_t a1, uint64_t a2, char a3, double a4, double a5, double a6, double a7)
{
  v7[OBJC_IVAR___ICAudioAttachmentView_needsRelayoutWhenMovingToWindow] = 0;
  *&v7[OBJC_IVAR___ICAudioAttachmentView_hostingView] = 0;
  *&v7[OBJC_IVAR___ICAudioAttachmentView_attachmentObserver] = 0;
  v15 = OBJC_IVAR___ICAudioAttachmentView_brickDelegate;
  type metadata accessor for AttachmentBrickDelegate(0);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v16 + 24) = 0x4074700000000000;
  *(v16 + 32) = sub_2154A0D1C();
  sub_21549EDCC();
  *&v7[v15] = v16;
  *&v7[OBJC_IVAR___ICAudioAttachmentView_summaryViewModel] = 0;
  v18.receiver = v7;
  v18.super_class = type metadata accessor for AudioAttachmentView();
  return objc_msgSendSuper2(&v18, sel_initWithFrame_textAttachment_textContainer_forManualRendering_, a1, a2, a3 & 1, a4, a5, a6, a7);
}

id sub_21544C700(uint64_t a1, uint64_t a2, char a3)
{
  v3[OBJC_IVAR___ICAudioAttachmentView_needsRelayoutWhenMovingToWindow] = 0;
  *&v3[OBJC_IVAR___ICAudioAttachmentView_hostingView] = 0;
  *&v3[OBJC_IVAR___ICAudioAttachmentView_attachmentObserver] = 0;
  v7 = OBJC_IVAR___ICAudioAttachmentView_brickDelegate;
  type metadata accessor for AttachmentBrickDelegate(0);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v8 + 24) = 0x4074700000000000;
  *(v8 + 32) = sub_2154A0D1C();
  sub_21549EDCC();
  *&v3[v7] = v8;
  *&v3[OBJC_IVAR___ICAudioAttachmentView_summaryViewModel] = 0;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for AudioAttachmentView();
  return objc_msgSendSuper2(&v10, sel_initWithTextAttachment_textContainer_forManualRendering_, a1, a2, a3 & 1);
}

uint64_t sub_21544C7F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21544C854()
{
  result = qword_27CA5E060;
  if (!qword_27CA5E060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E030, &qword_2154C5088);
    sub_21544C90C();
    sub_2151ACC5C(&qword_27CA5E098, &qword_27CA5E050, &qword_2154C50A8, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E060);
  }

  return result;
}

unint64_t sub_21544C90C()
{
  result = qword_27CA5E068;
  if (!qword_27CA5E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E028, &unk_2154C5050);
    sub_21544C9C4();
    sub_2151ACC5C(&qword_27CA5B9E0, &qword_27CA5B9E8, &qword_2154C1E70, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E068);
  }

  return result;
}

unint64_t sub_21544C9C4()
{
  result = qword_27CA5E070;
  if (!qword_27CA5E070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E020, &qword_2154C5048);
    sub_21544CA7C();
    sub_2151ACC5C(&qword_27CA5BFB8, &qword_27CA5BFC0, &unk_2154C50C0, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E070);
  }

  return result;
}

unint64_t sub_21544CA7C()
{
  result = qword_27CA5E078;
  if (!qword_27CA5E078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E018, &qword_2154C5040);
    sub_21544CB34();
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030, &qword_2154BFD50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E078);
  }

  return result;
}

unint64_t sub_21544CB34()
{
  result = qword_27CA5E080;
  if (!qword_27CA5E080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E010, &qword_2154C5008);
    sub_2151ACC5C(&qword_27CA5E088, &qword_27CA5E090, &unk_2154C50B0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E080);
  }

  return result;
}

uint64_t sub_21544CBEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21544CC3C()
{
  result = qword_27CA5E0C0;
  if (!qword_27CA5E0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DFE8, &qword_2154C4FC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DFD8, &qword_2154C4FB0);
    sub_21544F1A4(&qword_27CA5E058, &qword_27CA5DFD8, &qword_2154C4FB0, sub_21544C854);
    swift_getOpaqueTypeConformance2();
    sub_21544CBEC(&qword_27CA5CD20, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E0C0);
  }

  return result;
}

unint64_t sub_21544CD68()
{
  result = qword_27CA5E0D0;
  if (!qword_27CA5E0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0C8, &qword_2154C5130);
    sub_21544CDEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E0D0);
  }

  return result;
}

unint64_t sub_21544CDEC()
{
  result = qword_27CA5E0D8;
  if (!qword_27CA5E0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0E0, &qword_2154C5138);
    sub_21544CE78();
    sub_21544D648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E0D8);
  }

  return result;
}

unint64_t sub_21544CE78()
{
  result = qword_27CA5E0E8;
  if (!qword_27CA5E0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0F0, &qword_2154C5140);
    sub_21544CF04();
    sub_21544D44C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E0E8);
  }

  return result;
}

unint64_t sub_21544CF04()
{
  result = qword_27CA5E0F8;
  if (!qword_27CA5E0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E100, &qword_2154C5148);
    sub_21544CF90();
    sub_21544D09C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E0F8);
  }

  return result;
}

unint64_t sub_21544CF90()
{
  result = qword_27CA5E108;
  if (!qword_27CA5E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E110, &unk_2154C5150);
    sub_2151ACC5C(&qword_27CA5D540, &qword_27CA5CED0, &unk_2154C04E0, MEMORY[0x277CDF028]);
    sub_21544D048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E108);
  }

  return result;
}

unint64_t sub_21544D048()
{
  result = qword_27CA5E118;
  if (!qword_27CA5E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E118);
  }

  return result;
}

unint64_t sub_21544D09C()
{
  result = qword_27CA5E120;
  if (!qword_27CA5E120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E128, &qword_2154C5160);
    sub_21544D154();
    sub_2151ACC5C(&qword_27CA5D118, &qword_27CA5D0E0, &qword_2154C3988, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E120);
  }

  return result;
}

unint64_t sub_21544D154()
{
  result = qword_27CA5E130;
  if (!qword_27CA5E130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E138, &qword_2154C5168);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E140, &qword_2154C5170);
    sub_21544D248();
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CE70, &qword_27CA5BF70, &qword_2154C1EB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E130);
  }

  return result;
}

unint64_t sub_21544D248()
{
  result = qword_27CA5E148;
  if (!qword_27CA5E148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E140, &qword_2154C5170);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E150, &qword_2154C5178);
    sub_2154A044C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E158, &unk_2154C5180);
    sub_2154A014C();
    sub_2151ACC5C(&qword_27CA5E160, &qword_27CA5E158, &unk_2154C5180, MEMORY[0x277CE1138]);
    sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    sub_21544CBEC(&qword_27CA5E168, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70, &qword_2154C3530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E148);
  }

  return result;
}

unint64_t sub_21544D44C()
{
  result = qword_27CA5E170;
  if (!qword_27CA5E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E178, &qword_2154C5190);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E180, &qword_2154C5198);
    sub_2154A03AC();
    sub_21544D590();
    sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5E1A0, &qword_27CA5E1A8, &qword_2154C51A8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E170);
  }

  return result;
}

unint64_t sub_21544D590()
{
  result = qword_27CA5E188;
  if (!qword_27CA5E188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E180, &qword_2154C5198);
    sub_2151ACC5C(&qword_27CA5E190, &qword_27CA5E198, &qword_2154C51A0, MEMORY[0x277CDF028]);
    sub_21544D048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E188);
  }

  return result;
}

unint64_t sub_21544D648()
{
  result = qword_27CA5E1B0;
  if (!qword_27CA5E1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E1B8, &qword_2154C51B0);
    sub_21544D6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E1B0);
  }

  return result;
}

unint64_t sub_21544D6CC()
{
  result = qword_27CA5E1C0;
  if (!qword_27CA5E1C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E1C8, &qword_2154C51B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CA5CEE0, &qword_2154C1E80);
    sub_2154A014C();
    sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0, &qword_2154C1E80, MEMORY[0x277CDEFF0]);
    sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5CD58, &unk_27CA5CD60, &qword_2154C3528, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E1C0);
  }

  return result;
}

unint64_t sub_21544D844()
{
  result = qword_27CA5E1D0;
  if (!qword_27CA5E1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DFF8, &qword_2154C4FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5DFE8, &qword_2154C4FC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0B8, &qword_2154C5128);
    sub_21544CC3C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E0C8, &qword_2154C5130);
    sub_21544CD68();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21544D97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E1D0);
  }

  return result;
}

unint64_t sub_21544D97C()
{
  result = qword_27CA5E1D8;
  if (!qword_27CA5E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E1D8);
  }

  return result;
}

uint64_t sub_21544DA40(uint64_t a1, __n128 a2)
{
  result = sub_21549EDDC();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21544DB20(uint64_t a1)
{
  type metadata accessor for AttachmentBrickDelegate(319);
  if (v1 <= 0x3F)
  {
    sub_21544DC64(319, &qword_27CA5E208, type metadata accessor for AudioPlayerView.AudioPlayerViewModel, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2153AD9F8();
      if (v3 <= 0x3F)
      {
        sub_21544DC64(319, &qword_27CA5E210, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SummaryViewModel(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21544DC64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21544DCDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_21544DD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_21544DDA4(uint64_t *a1, unsigned int a2)
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

uint64_t sub_21544DE00(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21544DE98()
{
  result = qword_27CA5E258;
  if (!qword_27CA5E258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E218, &qword_2154C5428);
    sub_21544DF50();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70, &qword_2154C3530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E258);
  }

  return result;
}

unint64_t sub_21544DF50()
{
  result = qword_27CA5E260;
  if (!qword_27CA5E260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E250, &unk_2154C5490);
    sub_21544E008();
    sub_2151ACC5C(&unk_27CA5D620, &qword_27CA5BBC8, &qword_2154C1640, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E260);
  }

  return result;
}

unint64_t sub_21544E008()
{
  result = qword_27CA5E268;
  if (!qword_27CA5E268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E248, &unk_2154C5450);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E238, &qword_2154C5448);
    sub_2154A05DC();
    sub_2151ACC5C(&qword_27CA5E240, &qword_27CA5E238, &qword_2154C5448, MEMORY[0x277CE04B0]);
    sub_21544CBEC(&qword_27CA5CFF0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CBE0, &qword_27CA5B8E8, &qword_2154C3470, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E268);
  }

  return result;
}

unint64_t sub_21544E180()
{
  result = qword_27CA5E270;
  if (!qword_27CA5E270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E220, &qword_2154C5430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E218, &qword_2154C5428);
    sub_21544DE98();
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&unk_27CA5CE70, &qword_27CA5BF70, &qword_2154C1EB0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E270);
  }

  return result;
}

double sub_21544E274()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

uint64_t sub_21544E284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_123Tm()
{
  v1 = type metadata accessor for AudioPlayerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C0, &qword_2154C5648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2154A023C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21544E598(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_21538C468(a1, v4, v5, v6);
}

unint64_t sub_21544E680()
{
  result = qword_27CA5E300;
  if (!qword_27CA5E300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E2F8, &qword_2154C56B8);
    sub_2151ACC5C(&qword_27CA5B5F8, &unk_27CA5CEE0, &qword_2154C1E80, MEMORY[0x277CDEFF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E300);
  }

  return result;
}

uint64_t sub_21544E760(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AudioPlayerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21544E814(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_21538CADC(a1, v4, v5, v6);
}

uint64_t sub_21544E8C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD36C;

  return sub_21538C5D0(a1, v4, v5, v6);
}

uint64_t sub_21544E97C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD278;

  return sub_21538C6F8(a1, v4, v5, v6);
}

uint64_t sub_21544EA38(uint64_t a1)
{
  v4 = *(type metadata accessor for AudioPlayerView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_21544B280(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroy_167Tm()
{
  v1 = type metadata accessor for AudioPlayerView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E2C0, &qword_2154C5648);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2154A023C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21544EC9C(uint64_t a1)
{
  v4 = *(type metadata accessor for AudioPlayerView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2151BD36C;

  return sub_21544AB9C(a1, v6, v7, v1 + v5);
}

unint64_t sub_21544EDC0()
{
  result = qword_27CA5E368;
  if (!qword_27CA5E368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E348, &qword_2154C5790);
    sub_2151ACC5C(&qword_27CA5E308, &qword_27CA5E2E8, &qword_2154C56A8, MEMORY[0x277CDF028]);
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70, &qword_2154C3530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E368);
  }

  return result;
}

unint64_t sub_21544EEA4()
{
  result = qword_27CA5E370;
  if (!qword_27CA5E370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E360, &qword_2154C57A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E358, &qword_2154C57A0);
    sub_2154A044C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E350, &qword_2154C5798);
    sub_2154A014C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E348, &qword_2154C5790);
    sub_21544EDC0();
    swift_getOpaqueTypeConformance2();
    sub_21544CBEC(&qword_27CA5B608, MEMORY[0x277CDDE78], MEMORY[0x277CDDE70]);
    swift_getOpaqueTypeConformance2();
    sub_21544CBEC(&qword_27CA5E168, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030, &qword_2154BFD50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E370);
  }

  return result;
}

uint64_t objectdestroy_129Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21544F0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2151BD278;

  return sub_21538CEAC(a1, v4, v5, v6);
}

uint64_t sub_21544F1A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_21544F288()
{
  result = qword_27CA5E418;
  if (!qword_27CA5E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E420, &qword_2154C5848);
    sub_21544F340();
    sub_2151ACC5C(&qword_27CA5CBC8, &qword_27CA5CBD0, &qword_2154C5860, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E418);
  }

  return result;
}

unint64_t sub_21544F340()
{
  result = qword_27CA5E428;
  if (!qword_27CA5E428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E430, &qword_2154C5850);
    sub_2151ACC5C(&qword_27CA5E438, &qword_27CA5E440, &qword_2154C5858, MEMORY[0x277CE1198]);
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70, &qword_2154C3530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E428);
  }

  return result;
}

unint64_t sub_21544F484()
{
  result = qword_27CA5E460;
  if (!qword_27CA5E460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E3D8, &qword_2154C5820);
    sub_21544F53C();
    sub_2151ACC5C(&qword_27CA5CBC8, &qword_27CA5CBD0, &qword_2154C5860, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E460);
  }

  return result;
}

unint64_t sub_21544F53C()
{
  result = qword_27CA5E468;
  if (!qword_27CA5E468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E3D0, &qword_2154C5818);
    sub_2151ACC5C(&qword_27CA5E470, &qword_27CA5E478, &qword_2154C5868, MEMORY[0x277CE1198]);
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70, &qword_2154C3530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E468);
  }

  return result;
}

unint64_t sub_21544F630()
{
  result = qword_27CA5E528;
  if (!qword_27CA5E528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E4E0, &qword_2154C5900);
    sub_21544CBEC(&qword_27CA5E530, MEMORY[0x277CDF088], MEMORY[0x277CDF080]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E528);
  }

  return result;
}

unint64_t sub_21544F6EC()
{
  result = qword_27CA5E5A8;
  if (!qword_27CA5E5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E5A0, &qword_2154C59B0);
    sub_21544F7A4();
    sub_2151ACC5C(&qword_27CA5BC60, &qword_27CA5CD70, &qword_2154C3530, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E5A8);
  }

  return result;
}

unint64_t sub_21544F7A4()
{
  result = qword_27CA5E5B0;
  if (!qword_27CA5E5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E5B8, &unk_2154C59B8);
    sub_2151ACC5C(&qword_27CA5D868, &qword_27CA5D870, &qword_2154C3FF0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E5B0);
  }

  return result;
}

unint64_t sub_21544F87C()
{
  result = qword_27CA5E5E0;
  if (!qword_27CA5E5E0)
  {
    sub_2151A6C9C(255, &qword_27CA5A7F0, 0x277D742D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E5E0);
  }

  return result;
}

unint64_t sub_21544F91C()
{
  result = qword_27CA5E5F0;
  if (!qword_27CA5E5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E230, &qword_2154C5440);
    sub_21544F9D4();
    sub_2151ACC5C(&qword_27CA5B338, &qword_27CA5D030, &qword_2154BFD50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E5F0);
  }

  return result;
}

unint64_t sub_21544F9D4()
{
  result = qword_27CA5E5F8;
  if (!qword_27CA5E5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E228, &qword_2154C5438);
    sub_21544FA8C();
    sub_2151ACC5C(&unk_27CA5CD00, &qword_27CA5B8D8, &unk_2154C3500, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E5F8);
  }

  return result;
}

unint64_t sub_21544FA8C()
{
  result = qword_27CA5E600;
  if (!qword_27CA5E600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E278, &qword_2154C5530);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E220, &qword_2154C5430);
    sub_2154A03AC();
    sub_21544E180();
    sub_21544CBEC(&qword_27CA5D888, MEMORY[0x277CDDFB0], MEMORY[0x277CDDFA8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E600);
  }

  return result;
}

unint64_t sub_21544FBA4()
{
  result = qword_27CA5E608;
  if (!qword_27CA5E608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA5E610, &qword_2154C5A88);
    sub_2151ACC5C(&qword_27CA5E288, &qword_27CA5E280, &qword_2154C5598, MEMORY[0x277CE04B0]);
    sub_21544CBEC(&qword_27CA5CD20, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA5E608);
  }

  return result;
}

uint64_t sub_21544FCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 > 6)
  {
    if (a1 > 9)
    {
      switch(a1)
      {
        case 10:
          v9 = MEMORY[0x277CD9528];
          break;
        case 11:
          v9 = MEMORY[0x277CD94E8];
          break;
        case 12:
          v9 = MEMORY[0x277CD94F0];
          break;
        default:
          goto LABEL_3;
      }
    }

    else if (a1 == 7)
    {
      v9 = MEMORY[0x277CD9500];
    }

    else if (a1 == 8)
    {
      v9 = MEMORY[0x277CD9508];
    }

    else
    {
      v9 = MEMORY[0x277CD9520];
    }
  }

  else
  {
    if (a1 <= 3)
    {
LABEL_3:
      v4 = sub_2154A16AC();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      goto LABEL_22;
    }

    if (a1 == 4)
    {
      v9 = MEMORY[0x277CD9518];
    }

    else if (a1 == 5)
    {
      v9 = MEMORY[0x277CD94F8];
    }

    else
    {
      v9 = MEMORY[0x277CD9510];
    }
  }

  v10 = *v9;
  v11 = sub_2154A16AC();
  v13 = *(v11 - 8);
  (*(v13 + 104))(a2, v10, v11);
  v5 = *(v13 + 56);
  v7 = a2;
  v8 = 0;
  v6 = v11;
LABEL_22:

  return v5(v7, v8, 1, v6);
}

uint64_t sub_21544FEA8()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5E618);
  __swift_project_value_buffer(v0, qword_27CA5E618);
  return sub_21549F09C();
}

uint64_t static ICSystemPaperDocumentHelper.drawing(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E638, &unk_2154C5A90);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v44 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E640, &unk_2154C6F90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E648, &unk_2154C5AA0);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D8, &qword_2154BE6E0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0, &qword_2154C5AB0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v39 - v18;
  v20 = objc_allocWithZone(sub_21549EADC());
  v21 = a1;
  v22 = sub_21549EAAC();
  v23 = sub_21549EABC();
  if (v23)
  {
    v24 = v23;
    MEMORY[0x216065660]();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      v25 = &qword_27CA5A7D8;
      v26 = &qword_2154BE6E0;
      v27 = v15;
    }

    else
    {
      (*(v17 + 32))(v19, v15, v16);
      swift_getKeyPath(asc_2154C5AB8);
      sub_2154A1B2C();

      v28 = v45;
      if ((*(v45 + 48))(v9, 1, v10) != 1)
      {
        (*(v28 + 32))(v12, v9, v10);
        sub_2151ACC5C(&qword_27CA5E650, &qword_27CA5E648, &unk_2154C5AA0, MEMORY[0x277CFB6C0]);
        v40 = v12;
        v33 = v44;
        sub_2154A1B1C();
        v34 = v42;
        v35 = v33;
        v36 = v43;
        (*(v42 + 16))(v41, v35, v43);
        v37 = objc_allocWithZone(sub_2154A177C());
        v38 = sub_2154A176C();
        v30 = v46;
        sub_2154A1C4C();

        (*(v34 + 8))(v44, v36);
        (*(v45 + 8))(v40, v10);
        (*(v17 + 8))(v19, v16);
        v29 = 0;
        goto LABEL_9;
      }

      (*(v17 + 8))(v19, v16);

      v25 = &qword_27CA5E640;
      v26 = &unk_2154C6F90;
      v27 = v9;
    }

    sub_2151ADCD8(v27, v25, v26);
  }

  else
  {
  }

  v29 = 1;
  v30 = v46;
LABEL_9:
  v31 = sub_2154A1C5C();
  return (*(*(v31 - 8) + 56))(v30, v29, 1, v31);
}

uint64_t sub_215450488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E640, &unk_2154C6F90);
  MEMORY[0x28223BE20](v2 - 8);
  sub_215324EEC(a1, &v5 - v3, &qword_27CA5E640, &unk_2154C6F90);
  return sub_2154A123C();
}

id ICSystemPaperDocumentHelper.__allocating_init(paperAttachment:textView:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___ICSystemPaperDocumentHelper_attachment] = a1;
  swift_unknownObjectWeakAssign();
  v9.receiver = v5;
  v9.super_class = v2;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

id ICSystemPaperDocumentHelper.init(paperAttachment:textView:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___ICSystemPaperDocumentHelper_attachment] = a1;
  swift_unknownObjectWeakAssign();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

Swift::Void __swiftcall ICSystemPaperDocumentHelper.add(itemProviders:itemsAnchor:)(Swift::OpaquePointer itemProviders, UIViewContentMode itemsAnchor)
{
  v81 = itemsAnchor;
  rawValue = itemProviders._rawValue;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5B6D8, &unk_2154C0570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v70 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D8, &qword_2154BE6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0, &qword_2154C5AB0);
  v84 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v83 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v70 - v15;
  v16 = sub_21549E56C();
  v17 = *(v16 - 1);
  v18 = v17[8];
  MEMORY[0x28223BE20](v16);
  v80 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  v85 = v2;
  v22 = *&v2[OBJC_IVAR___ICSystemPaperDocumentHelper_attachment];
  v23 = objc_allocWithZone(sub_21549EADC());
  v24 = v22;
  v87 = sub_21549EAAC();
  v86 = [v24 paperBundleModel];
  if (v86)
  {
    v78 = sub_21549EABC();
    if (v78)
    {
      v25 = [v86 paperBundleURL];
      sub_21549E51C();

      Strong = swift_unknownObjectWeakLoadStrong();
      v77 = v21;
      if (Strong)
      {
        v27 = Strong;
        v71 = v12;
        v74 = v5;
        v28 = [v24 identifier];
        v73 = v16;
        v72 = v17;
        if (v28)
        {
          v29 = v28;
          v30 = sub_2154A1D6C();
          v32 = v31;
        }

        else
        {
          v30 = 0;
          v32 = 0xE000000000000000;
        }

        v90 = 0;
        v17 = [v27 textStorage];
        v76 = *MEMORY[0x277D74060];
        v38 = [v27 textStorage];
        v75 = [v38 length];

        v39 = swift_allocObject();
        v39[2] = v30;
        v39[3] = v32;
        v39[4] = &v90;
        v39[5] = v27;
        v40 = swift_allocObject();
        *(v40 + 16) = sub_21532B770;
        *(v40 + 24) = v39;
        aBlock[4] = sub_21532B77C;
        v89 = v40;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_21532C43C;
        aBlock[3] = &block_descriptor_32;
        v16 = _Block_copy(aBlock);
        v21 = v89;

        v41 = v27;

        [v17 enumerateAttribute:v76 inRange:0 options:v75 usingBlock:{0, v16}];

        _Block_release(v16);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
LABEL_30:
          swift_once();
LABEL_23:
          v55 = sub_21549F11C();
          __swift_project_value_buffer(v55, qword_27CA5E618);
          v56 = sub_21549F0FC();
          v57 = sub_2154A226C();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_2151A1000, v56, v57, "Cannot add items because paper is not available", v58, 2u);
            MEMORY[0x21606B520](v58, -1, -1);
          }

          else
          {
          }

          goto LABEL_28;
        }

        v43 = v90;

        v16 = v73;
        v17 = v72;
        v21 = v77;
        v12 = v71;
        if (v43)
        {
          sub_2154A18EC();

          v44 = v84;
          v45 = (*(v84 + 48))(v11, 1, v12);
          v5 = v74;
          if (v45 != 1)
          {
            (*(v44 + 32))(v79, v11, v12);
            sub_21544FCD4(v81, v5);
            v83 = sub_2154A1BDC();
            v46 = v80;
            (v17[2])(v80, v21, v16);
            v47 = (*(v17 + 80) + 24) & ~*(v17 + 80);
            v48 = (v18 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
            v49 = swift_allocObject();
            v50 = v85;
            *(v49 + 16) = v85;
            (v17[4])(v49 + v47, v46, v16);
            v51 = v78;
            *(v49 + v48) = v78;
            v52 = v50;
            v53 = v51;
            v54 = v79;
            sub_2154A1B9C();

            sub_2151ADCD8(v5, &qword_27CA5B6D8, &unk_2154C0570);
            (*(v84 + 8))(v54, v12);
LABEL_28:
            (v17[1])(v21, v16);
            return;
          }

LABEL_21:
          sub_2151ADCD8(v11, &qword_27CA5A7D8, &qword_2154BE6E0);
          v11 = v78;
          MEMORY[0x216065660](v78);
          if ((*(v44 + 48))(v8, 1, v12) != 1)
          {
            (*(v44 + 32))(v83, v8, v12);
            sub_21544FCD4(v81, v5);
            v81 = sub_2154A1BDC();
            v59 = v16;
            v60 = v80;
            v61 = v21;
            v62 = v59;
            (v17[2])(v80, v61);
            v63 = (*(v17 + 80) + 24) & ~*(v17 + 80);
            v64 = (v18 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
            v65 = swift_allocObject();
            v66 = v85;
            *(v65 + 16) = v85;
            (v17[4])(v65 + v63, v60, v62);
            *(v65 + v64) = v11;
            v67 = v66;
            v68 = v11;
            v69 = v83;
            sub_2154A1B9C();

            sub_2151ADCD8(v5, &qword_27CA5B6D8, &unk_2154C0570);
            (*(v84 + 8))(v69, v12);
            (v17[1])(v77, v62);
            return;
          }

          sub_2151ADCD8(v8, &qword_27CA5A7D8, &qword_2154BE6E0);
          if (qword_27CA59918 == -1)
          {
            goto LABEL_23;
          }

          goto LABEL_30;
        }

        v5 = v74;
      }

      v44 = v84;
      (*(v84 + 56))(v11, 1, 1, v12);
      goto LABEL_21;
    }
  }

  if (qword_27CA59918 != -1)
  {
    swift_once();
  }

  v33 = sub_21549F11C();
  __swift_project_value_buffer(v33, qword_27CA5E618);
  v34 = sub_21549F0FC();
  v35 = sub_2154A226C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2151A1000, v34, v35, "Cannot add items to paper because the coherence context is not available", v36, 2u);
    MEMORY[0x21606B520](v36, -1, -1);
  }

  v37 = v87;
}

uint64_t sub_215451338(void *a1, void *a2, char *a3, void *a4)
{
  v47 = a2;
  v48 = a4;
  v46 = a3;
  v55 = a1;
  v4 = sub_2154A10EC();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2154A110C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_21549E56C();
  v7 = *(v45 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D8, &qword_2154BE6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0, &qword_2154C5AB0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  sub_215324EEC(v55, v11, &qword_27CA5A7D8, &qword_2154BE6E0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_2151ADCD8(v11, &qword_27CA5A7D8, &qword_2154BE6E0);
  }

  v41 = v8;
  v20 = v13;
  v42 = *(v13 + 32);
  v21 = v11;
  v22 = v12;
  v40 = v12;
  v42(v18, v21, v12);
  sub_2151A6C9C(0, &unk_2811995C0, 0x277D85C78);
  v55 = sub_2154A245C();
  v24 = v44;
  v23 = v45;
  (*(v7 + 16))(v44, v46, v45);
  v43 = v20;
  (*(v20 + 16))(v15, v18, v22);
  v25 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v26 = (v41 + *(v20 + 80) + v25) & ~*(v20 + 80);
  v27 = (v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v46 = v18;
  v29 = v47;
  *(v28 + 16) = v47;
  (*(v7 + 32))(v28 + v25, v24, v23);
  v30 = v40;
  v42((v28 + v26), v15, v40);
  v31 = v48;
  *(v28 + v27) = v48;
  aBlock[4] = sub_215451FA0;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151BD7E4;
  aBlock[3] = &block_descriptor_18;
  v32 = _Block_copy(aBlock);
  v33 = v29;
  v34 = v31;

  v35 = v49;
  sub_2154A10FC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2151B5F20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00, &unk_2154BDB90);
  sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00, &unk_2154BDB90, MEMORY[0x277D83970]);
  v36 = v51;
  v37 = v54;
  sub_2154A2BEC();
  v38 = v55;
  MEMORY[0x216069000](0, v35, v36, v32);
  _Block_release(v32);

  (*(v53 + 8))(v36, v37);
  (*(v50 + 8))(v35, v52);
  return (*(v43 + 8))(v46, v30);
}

void sub_215451908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21549E56C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v28[2] = a3;
    v13 = [Strong textStorage];
    v29 = [v13 length];

    v32 = 0;
    v31 = sub_21549E0EC();
    v14 = [v12 textStorage];
    v15 = *MEMORY[0x277D74060];
    v16 = *(v8 + 16);
    v28[1] = a2;
    v16(v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    (*(v8 + 32))(v19 + v17, v10, v7);
    *(v19 + v18) = &v32;
    *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v31;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_21539AC58;
    *(v20 + 24) = v19;
    aBlock[4] = sub_215384F20;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21532C43C;
    aBlock[3] = &block_descriptor_28_0;
    v21 = _Block_copy(aBlock);

    [v14 enumerateAttribute:v15 inRange:0 options:v29 usingBlock:{0, v21}];

    _Block_release(v21);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v23 = v32;
      if (v32)
      {

        sub_2154A215C();
      }

      else
      {

        v26 = objc_opt_self();
        v27 = sub_21549E49C();

        sub_2154A1BAC();
      }
    }
  }

  else
  {
    v24 = objc_opt_self();
    v25 = sub_21549E49C();

    sub_2154A1BAC();
  }
}

id ICSystemPaperDocumentHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICSystemPaperDocumentHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_21549E56C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_215451EB0(void *a1)
{
  v3 = *(sub_21549E56C() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_215451338(a1, v5, (v1 + v4), v6);
}

void sub_215451FA0()
{
  v1 = *(sub_21549E56C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A7D0, &qword_2154C5AB0) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_215451908(v6, v0 + v2, v0 + v5, v7);
}

void sub_2154520BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090, &qword_2154BE0D0);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v46 = sub_21549E56C();
  v8 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v39 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v38 = &v35 - v11;
  v41 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2154A2C3C();
    sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
    sub_21532210C(&qword_281199680, &qword_281199690, 0x277D35E00, MEMORY[0x277D85378]);
    sub_2154A20FC();
    a1 = v48;
    v12 = v49;
    v13 = v50;
    v14 = v51;
    v15 = v52;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v40 = v13;
  v44 = (v8 + 56);
  v45 = (v8 + 48);
  v36 = v8;
  v37 = (v8 + 32);
  v42 = MEMORY[0x277D84F90];
  while (a1 < 0)
  {
    v22 = sub_2154A2CDC();
    if (!v22 || (v47 = v22, sub_2151A6C9C(0, &qword_281199690, 0x277D35E00), swift_dynamicCast(), (v21 = v53) == 0))
    {
LABEL_30:
      sub_2151A66EC(a1);
      return;
    }

LABEL_17:
    v23 = [v21 media];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 mediaURL];

      if (v25)
      {
        v26 = v43;
        sub_21549E51C();

        v27 = 0;
      }

      else
      {
        v27 = 1;
        v26 = v43;
      }

      v28 = v46;
      (*v44)(v26, v27, 1, v46);
      sub_215323B30(v26, v7);
    }

    else
    {
      v28 = v46;
      (*v44)(v7, 1, 1, v46);
    }

    if ((*v45)(v7, 1, v28) == 1)
    {
      sub_2151ADCD8(v7, &unk_27CA5B090, &qword_2154BE0D0);
    }

    else
    {
      v29 = *v37;
      v30 = v46;
      (*v37)(v38, v7, v46);
      v29(v39, v38, v30);
      v31 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_215318180(0, *(v42 + 2) + 1, 1, v42);
      }

      v33 = *(v42 + 2);
      v32 = *(v42 + 3);
      if (v33 >= v32 >> 1)
      {
        v42 = sub_215318180((v32 > 1), v33 + 1, 1, v42);
      }

      v34 = v42;
      *(v42 + 2) = v33 + 1;
      v31(&v34[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v33], v39, v46);
    }
  }

  v19 = v14;
  v20 = v15;
  if (v15)
  {
LABEL_13:
    v15 = (v20 - 1) & v20;
    v21 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v20)))));
    if (!v21)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v14 >= ((v13 + 64) >> 6))
    {
      goto LABEL_30;
    }

    v20 = *(v12 + 8 * v14);
    ++v19;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_2154525D8(char a1)
{
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_2154A1D6C();
  return v4;
}

char *RecordingViewModel.__allocating_init(attachmentModel:liveTranscriptionCoordinator:summaryViewModel:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_215466468(a1, a2, a3);

  return v6;
}

void sub_21545275C(int a1)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090, &qword_2154BE0D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = sub_21549E56C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v39 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v41 = &v38 - v13;
  v14 = *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);
  v15 = [v14 attachment];
  if (!v15)
  {
    __break(1u);
    goto LABEL_23;
  }

  v16 = v15;
  v17 = [v15 subAttachments];

  if (v17 && (sub_2151A6C9C(0, &qword_281199690, 0x277D35E00), sub_21532210C(&qword_281199680, &qword_281199690, 0x277D35E00, MEMORY[0x277D85378]), v18 = sub_2154A20CC(), v17, v19 = sub_2153B1BA4(v18), , v19) && (v20 = [v19 media], v19, v20))
  {
    v21 = [v20 mediaURL];

    if (v21)
    {
      sub_21549E51C();

      (*(v9 + 56))(v4, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v4, 1, 1, v8);
    }

    sub_215323B30(v4, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v26 = *(v9 + 32);
      v26(v41, v7, v8);
      v27 = [v14 attachment];
      if (v27)
      {
        v28 = v27;
        v29 = [v27 note];

        if (v29)
        {
          v30 = [v29 managedObjectContext];
          if (v30)
          {
            v31 = v30;
            v32 = v39;
            (*(v9 + 16))(v39, v41, v8);
            v33 = (*(v9 + 80) + 32) & ~*(v9 + 80);
            v34 = swift_allocObject();
            *(v34 + 16) = v29;
            *(v34 + 24) = v31;
            v26((v34 + v33), v32, v8);
            *(v34 + v33 + v10) = v40 & 1;
            aBlock[4] = sub_215469870;
            aBlock[5] = v34;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2151BD7E4;
            aBlock[3] = &block_descriptor_189_0;
            v35 = _Block_copy(aBlock);
            v36 = v29;
            v37 = v31;

            [v37 performBlock_];
            _Block_release(v35);

            (*(v9 + 8))(v41, v8);
            return;
          }

          (*(v9 + 8))(v41, v8);
        }

        else
        {
          (*(v9 + 8))(v41, v8);
        }

        goto LABEL_9;
      }

LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_2151ADCD8(v7, &unk_27CA5B090, &qword_2154BE0D0);
LABEL_9:
  if (qword_27CA59920 != -1)
  {
    swift_once();
  }

  v22 = sub_21549F11C();
  __swift_project_value_buffer(v22, qword_27CA5E668);
  v23 = sub_21549F0FC();
  v24 = sub_2154A226C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_2151A1000, v23, v24, "no media or note found", v25, 2u);
    MEMORY[0x21606B520](v25, -1, -1);
  }
}

uint64_t RecordingViewModel.MicrophoneState.localizedTitle.getter()
{
  if (*v0 != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_2154A1D6C();
  return v4;
}

uint64_t RecordingViewModel.MicrophoneState.localizedMessage.getter()
{
  if (*v0 != 1)
  {
    return 0;
  }

  v1 = [objc_opt_self() mainBundle];
  v2 = sub_2154A1D2C();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = sub_2154A1D6C();
  return v4;
}

uint64_t sub_215452EC4(uint64_t a1, char a2)
{
  if (!a2)
  {
    swift_getKeyPath(byte_2154C5E38);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED9C();

    v3 = *(a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration + 8) ^ 1;
    return v3 & 1;
  }

  if (a2 != 1)
  {
    swift_getKeyPath(byte_2154C5C20);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED9C();

    v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__showTranscriptToggle;
    swift_beginAccess();
    if (*(a1 + v4) == 1)
    {
      v5 = *(sub_21549EC8C() + 16);

      v3 = v5 > 1;
      return v3 & 1;
    }

LABEL_8:
    v3 = 0;
    return v3 & 1;
  }

  swift_getKeyPath(byte_2154C5E38);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  if (*(a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration + 8))
  {
    goto LABEL_8;
  }

  v3 = *(a1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastKnownAssetDuration) > 15.0;
  return v3 & 1;
}

uint64_t sub_2154530F8()
{
  v0 = sub_21549F11C();
  __swift_allocate_value_buffer(v0, qword_27CA5E668);
  __swift_project_value_buffer(v0, qword_27CA5E668);
  return sub_21549F0BC();
}

uint64_t sub_2154531A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2154C5B30);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v5 = sub_21549E95C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21545329C(uint64_t a1)
{
  v2 = sub_21549E95C();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_215453460(v5);
}

uint64_t sub_215453368@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_2154C5B30);
  v6 = v1;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v3 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v4 = sub_21549E95C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_215453460(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_2154681B8(&qword_27CA5AE28, MEMORY[0x277D359F0], MEMORY[0x277D359F8]);
  v14[0] = a1;
  LOBYTE(a1) = sub_2154A1D1C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2154C5B30);
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }

  return (v10)(v14[0], v4);
}

double sub_215453700(uint64_t a1, uint64_t a2)
{
  v4 = sub_21549E95C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  swift_endAccess();
  return result;
}

uint64_t (*sub_21545381C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(byte_2154C5B30);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(byte_2154C5B30);
  sub_21549EDBC();

  v4[7] = sub_215453144(v4);
  return sub_215453954;
}

uint64_t (*sub_215453A38(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(byte_2154C5B58);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(byte_2154C5B58);
  sub_21549EDBC();

  v4[7] = sub_215453960(v4);
  return sub_215453B70;
}

uint64_t (*sub_215453C54(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(asc_2154C5B80);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(asc_2154C5B80);
  sub_21549EDBC();

  v4[7] = sub_215453B7C(v4);
  return sub_215453D8C;
}

void sub_215453E70(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__lastPlaybackTime;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_215453ED4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(asc_2154C5BA8);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(asc_2154C5BA8);
  sub_21549EDBC();

  v4[7] = sub_215453D98(v4);
  return sub_21545400C;
}

void sub_2154540F0(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__needsSeekToTime;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_21545414C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(asc_2154C5BD0);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(asc_2154C5BD0);
  sub_21549EDBC();

  v4[7] = sub_215454018(v4);
  return sub_215454284;
}

double sub_215454304@<D0>(uint64_t *a1@<X0>, const char *a2@<X3>, uint64_t *a3@<X4>, double *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath(a2);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v7 = *a3;
  swift_beginAccess();
  result = *(v6 + v7);
  *a4 = result;
  return result;
}

double sub_215454408(const char *a1, uint64_t *a2)
{
  swift_getKeyPath(a1);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void sub_2154544E4(uint64_t *a1, const char *a2, uint64_t a3, double a4)
{
  v7 = *a1;
  swift_beginAccess();
  if (*(v4 + v7) == a4)
  {
    *(v4 + v7) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath(a2);
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }
}

uint64_t (*sub_215454608(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(byte_2154C5BF8);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(byte_2154C5BF8);
  sub_21549EDBC();

  v4[7] = sub_215454290(v4);
  return sub_215454740;
}

uint64_t (*sub_215454824(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(byte_2154C5C20);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(byte_2154C5C20);
  sub_21549EDBC();

  v4[7] = sub_21545474C(v4);
  return sub_21545495C;
}

void sub_215454A40(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptViewed;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_215454A9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(byte_2154C5C48);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(byte_2154C5C48);
  sub_21549EDBC();

  v4[7] = sub_215454968(v4);
  return sub_215454BD4;
}

uint64_t (*sub_215454CBC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(byte_2154C5C70);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(byte_2154C5C70);
  sub_21549EDBC();

  v4[7] = sub_215454BE0(v4);
  return sub_215454DF4;
}

double sub_215454EDC(uint64_t a1, uint64_t *a2, const char *a3, uint64_t a4)
{
  v7 = *a2;
  swift_beginAccess();
  if (sub_2153556DC(*(v4 + v7), a1))
  {
    *(v4 + v7) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a3);
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t (*sub_215455014(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(byte_2154C5C98);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(byte_2154C5C98);
  sub_21549EDBC();

  v4[7] = sub_215454E00(v4);
  return sub_21545514C;
}

BOOL sub_215455158()
{
  v1 = v0;
  v2 = sub_21549E95C();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_2154C5B30, v4);
  v11 = v0;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingState;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v7, v2);
  v8 = (*(v3 + 88))(v6, v2) == *MEMORY[0x277D359D8];
  (*(v3 + 8))(v6, v2);
  return v8;
}

id sub_21545530C()
{
  swift_getKeyPath(byte_2154C5DA8);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);

  return v1;
}

id sub_2154553C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2154C5DA8);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v4 = *(v3 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
  *a2 = v4;

  return v4;
}

void sub_2154554B0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager;
  v5 = *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__recordingManager);
  sub_21549F77C();
  v6 = v5;
  v7 = sub_2154A291C();

  if (v7)
  {
    v8 = *(v2 + v4);
    *(v2 + v4) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2154C5DA8);
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }
}

double sub_215455628(const char *a1, uint64_t *a2)
{
  swift_getKeyPath(a1);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  swift_beginAccess();

  return result;
}

double sub_2154556E0@<D0>(uint64_t *a1@<X0>, const char *a2@<X3>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath(a2);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);

  return result;
}

double sub_2154557AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__observers;
  swift_beginAccess();

  sub_215465D50(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(aP_6);
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }

  return result;
}

uint64_t (*sub_2154559D4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(asc_2154C5CC0);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(asc_2154C5CC0);
  sub_21549EDBC();

  v4[7] = sub_2154558FC(v4);
  return sub_215455B0C;
}

void sub_215455B8C(uint64_t *a1@<X0>, const char *a2@<X3>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath(a2);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t sub_215455C90(const char *a1, uint64_t *a2)
{
  swift_getKeyPath(a1);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void sub_215455D6C(char a1, uint64_t *a2, const char *a3, uint64_t a4)
{
  v6 = a1 & 1;
  v7 = *a2;
  swift_beginAccess();
  if (*(v4 + v7) == v6)
  {
    *(v4 + v7) = v6;
  }

  else
  {
    KeyPath = swift_getKeyPath(a3);
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }
}

uint64_t (*sub_215455E88(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath(asc_2154C5CE8);
  v4[5] = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  *v4 = v1;
  swift_getKeyPath(asc_2154C5CE8);
  sub_21549EDBC();

  v4[7] = sub_215455B18(v4);
  return sub_215455FC0;
}

id sub_215455FCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090, &qword_2154BE0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  result = [objc_opt_self() isMainThread];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);
  result = [v8 attachment];
  if (!result)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = result;
  v10 = [result userTitle];

  if (v10)
  {
    goto LABEL_8;
  }

  result = [v8 attachment];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = result;
  v10 = [result title];

  if (v10)
  {
    goto LABEL_8;
  }

  result = [v8 attachment];
  if (result)
  {
    v12 = result;
    v10 = [result defaultTitle];

LABEL_8:
    v13 = sub_2154A1D6C();

    v14 = sub_2154A1D2C();
    v15 = [v14 pathExtension];

    v16 = sub_2154A1D6C();
    v18 = v17;

    result = [v8 attachment];
    if (result)
    {
      v19 = result;
      v20 = [result media];

      if (v20)
      {
        v21 = [v20 mediaURL];

        if (v21)
        {
          sub_21549E51C();

          v22 = sub_21549E56C();
          (*(*(v22 - 8) + 56))(v3, 0, 1, v22);
        }

        else
        {
          v22 = sub_21549E56C();
          (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
        }

        sub_215323B30(v3, v6);
        sub_21549E56C();
        v23 = *(v22 - 8);
        if ((*(v23 + 48))(v6, 1, v22) != 1)
        {
          v24 = sub_21549E44C();
          v26 = v25;
          (*(v23 + 8))(v6, v22);
          if (v16 == v24 && v18 == v26)
          {
          }

          else
          {
            v27 = sub_2154A2FAC();

            if ((v27 & 1) == 0)
            {
              return v13;
            }
          }

          v28 = sub_2154A1D2C();

          v29 = [v28 stringByDeletingPathExtension];

          v13 = sub_2154A1D6C();
          return v13;
        }

        sub_2151ADCD8(v6, &unk_27CA5B090, &qword_2154BE0D0);
      }

      return v13;
    }

    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_215456404()
{
  swift_getKeyPath(byte_2154C6110);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  return *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch);
}

void sub_2154564E8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__shouldShowTextViewOnFreshLaunch) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2154C6110);
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }
}

char *RecordingViewModel.init(attachmentModel:liveTranscriptionCoordinator:summaryViewModel:)(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = sub_215466468(a1, a2, a3);

  return v5;
}

void sub_215456650(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState))
  {
    *(v1 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__microphoneState) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_2154C5E60);
    MEMORY[0x28223BE20](KeyPath);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }
}

uint64_t sub_215456768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_2154A1FFC();
  v4[4] = sub_2154A1FEC();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_215456818;

  return sub_215457F18();
}

uint64_t sub_215456818()
{
  *(*v1 + 48) = v0;

  v3 = sub_2154A1FCC();
  if (v0)
  {
    v4 = sub_2154569DC;
  }

  else
  {
    v4 = sub_215456974;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_215456974()
{

  sub_215459FC0();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2154569DC()
{

  if (qword_27CA59920 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_27CA5E668);
  v3 = v1;
  v4 = sub_21549F0FC();
  v5 = sub_2154A226C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2151A1000, v4, v5, "could not check model download status: %@", v8, 0xCu);
    sub_2151ADCD8(v9, &unk_27CA59E90, &qword_2154BEB40);
    MEMORY[0x21606B520](v9, -1, -1);
    MEMORY[0x21606B520](v8, -1, -1);
  }

  else
  {
  }

  sub_215459FC0();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_215456B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  sub_2154A1FFC();
  v4[22] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x2822009F8](sub_215456C28, v6, v5);
}

uint64_t sub_215456C28()
{
  v1 = [objc_opt_self() isMainThread];
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v1 = [*(v0[21] + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (!v1)
  {
LABEL_14:
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  v3 = [v1 audioModel];
  v0[25] = v3;

  if (v3)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_215456EDC;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E7D0, &qword_2154C6150);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21537B6B0;
    v0[13] = &block_descriptor_297;
    v0[14] = v4;
    [v3 assetWithCompletion_];
    v1 = v0 + 2;

    return MEMORY[0x282200938](v1);
  }

  v5 = v0[21];
  v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
  swift_beginAccess();
  if (*(v5 + v6))
  {
    v7 = v0[21];
    swift_getKeyPath(asc_2154C5CC0);
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    v0[18] = v7;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }

  else
  {
    *(v5 + v6) = 0;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_215456EDC()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_215456FE4, v2, v1);
}

uint64_t sub_215456FE4()
{
  v1 = v0[25];

  v2 = v0[18];

  v3 = v0[21];
  if (v2)
  {

    v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
    swift_beginAccess();
    if (*(v3 + v4) == 1)
    {
      *(v3 + v4) = 1;
      goto LABEL_9;
    }

    v8 = v0[21];
    swift_getKeyPath(asc_2154C5CC0);
    v9 = swift_task_alloc();
    *(v9 + 16) = v8;
    *(v9 + 24) = 1;
    v0[10] = v8;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();

    goto LABEL_7;
  }

  v5 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__canBePlayedBack;
  swift_beginAccess();
  if (*(v3 + v5))
  {
    v6 = v0[21];
    swift_getKeyPath(asc_2154C5CC0);
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    v0[18] = v6;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();

LABEL_7:

    goto LABEL_9;
  }

  *(v3 + v5) = 0;
LABEL_9:
  v10 = v0[1];

  return v10();
}

uint64_t sub_21545724C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 supportsGeneralASR];

  if (!v4 || (swift_getKeyPath(asc_2154C5CE8), sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel), sub_21549ED9C(), , v5 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording, swift_beginAccess(), *(v1 + v5) == 1))
  {
    swift_getKeyPath(asc_2154C5CE8);
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED9C();

    v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
    swift_beginAccess();
    if (*(v1 + v6) != 1)
    {
      v9 = 0;
      return v9 & 1;
    }

    v7 = [v2 sharedInstance];
    v8 = [v7 supportsCallTranscription];

    if ((v8 & 1) == 0)
    {
      v9 = sub_215457DE8();
      return v9 & 1;
    }
  }

  v9 = 1;
  return v9 & 1;
}

id sub_215457438()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 supportsGeneralASR];

  if (!v2)
  {
    goto LABEL_6;
  }

  result = [*(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel) attachment];
  if (result)
  {
    v4 = result;
    v5 = [result note];

    if (v5)
    {
      v6 = [v5 isEditable];

      if (v6)
      {
        swift_getKeyPath(asc_2154C5CE8);
        sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
        sub_21549ED9C();

        v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
        swift_beginAccess();
        v8 = *(v0 + v7) ^ 1;
        return (v8 & 1);
      }
    }

LABEL_6:
    v8 = 0;
    return (v8 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_2154575A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_2154C5D18);
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v4 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  return sub_215324EEC(v3 + v4, a2, &qword_27CA5D410, &qword_2154C5D40);
}

uint64_t sub_215457680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410, &qword_2154C5D40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_215324EEC(a1, &v6 - v3, &qword_27CA5D410, &qword_2154C5D40);
  return sub_215457804(v4);
}

uint64_t sub_21545772C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_2154C5D18);
  v5 = v1;
  sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  sub_21549ED9C();

  v3 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  return sub_215324EEC(v5 + v3, a1, &qword_27CA5D410, &qword_2154C5D40);
}

uint64_t sub_215457804(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410, &qword_2154C5D40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  sub_215324EEC(v1 + v6, v5, &qword_27CA5D410, &qword_2154C5D40);
  v7 = sub_215466148(v5, a1);
  sub_2151ADCD8(v5, &qword_27CA5D410, &qword_2154C5D40);
  if (v7)
  {
    KeyPath = swift_getKeyPath(byte_2154C5D18);
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
    sub_21549ED8C();
  }

  else
  {
    sub_215324EEC(a1, v5, &qword_27CA5D410, &qword_2154C5D40);
    swift_beginAccess();
    sub_21546ABB0(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_2151ADCD8(a1, &qword_27CA5D410, &qword_2154C5D40);
}

double sub_215457A0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410, &qword_2154C5D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_215324EEC(a2, &v9 - v5, &qword_27CA5D410, &qword_2154C5D40);
  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  sub_21546ABB0(v6, a1 + v7);
  swift_endAccess();
  return result;
}

BOOL sub_215457AE8(__n128 a1)
{
  v1 = sub_21549E26C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  v8 = sub_21549E20C();
  v18 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21549E28C();
  v11 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549EC0C();
  sub_21549E1AC();
  sub_2154681B8(&qword_27CA5CF18, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  sub_2154A210C();
  sub_2154A212C();
  sub_2154681B8(&qword_27CA5CF20, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  v14 = sub_2154A1D1C();
  v15 = *(v2 + 8);
  v15(v4, v1);
  v15(v7, v1);
  (*(v18 + 8))(v10, v8);
  (*(v11 + 8))(v13, v17);
  return (v14 & 1) == 0;
}

uint64_t sub_215457DE8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11NotesEditor18RecordingViewModel_attachmentModel);
  result = [v1 audioDocument];
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result transcriptAsPlainText];

  v5 = sub_2154A1D6C();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    return 1;
  }

  result = [v1 audioDocument];
  if (!result)
  {
    goto LABEL_12;
  }

  v9 = result;
  v10 = sub_2154A23BC();

  v11 = *(v10 + 16);

  if (v11)
  {
    return 1;
  }

  v12 = *(sub_21549EC1C() + 16);

  if (v12)
  {
    return 1;
  }

  v13 = *(sub_21549EC7C() + 16);

  if (v13)
  {
    return 1;
  }

  v14 = *(sub_21549EC5C() + 16);

  return v14 != 0;
}

uint64_t sub_215457F18()
{
  v1[10] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090, &qword_2154BE0D0);
  v1[11] = swift_task_alloc();
  v2 = sub_21549F46C();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = sub_21549F48C();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v4 = sub_21549EB6C();
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5E6F0, qword_2154C5D50);
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5D410, &qword_2154C5D40);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  sub_2154A1FFC();
  v1[27] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v1[28] = v6;
  v1[29] = v5;

  return MEMORY[0x2822009F8](sub_215458194, v6, v5);
}

uint64_t sub_215458194()
{
  if ((sub_215457438() & 1) == 0)
  {
    goto LABEL_13;
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v32 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 80);
  swift_getKeyPath(byte_2154C5D18);
  *(v0 + 64) = v5;
  v6 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel___observationRegistrar;
  v30 = sub_2154681B8(&qword_27CA5C9F8, type metadata accessor for RecordingViewModel, &protocol conformance descriptor for RecordingViewModel);
  v31 = v6;
  sub_21549ED9C();

  v7 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__transcriptionModelState;
  swift_beginAccess();
  *(v0 + 336) = *MEMORY[0x277D35A80];
  v8 = v3[13];
  *(v0 + 240) = v8;
  *(v0 + 248) = (v3 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v1);
  v9 = v3[7];
  *(v0 + 256) = v9;
  *(v0 + 264) = (v3 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v1, 0, 1, v4);
  v10 = *(v32 + 48);
  sub_215324EEC(v5 + v7, v2, &qword_27CA5D410, &qword_2154C5D40);
  sub_215324EEC(v1, v2 + v10, &qword_27CA5D410, &qword_2154C5D40);
  v11 = v3[6];
  if (v11(v2, 1, v4) == 1)
  {
    v12 = *(v0 + 152);
    sub_2151ADCD8(*(v0 + 208), &qword_27CA5D410, &qword_2154C5D40);
    if (v11(v2 + v10, 1, v12) == 1)
    {
      v13 = *(v0 + 184);

      sub_2151ADCD8(v13, &qword_27CA5D410, &qword_2154C5D40);
LABEL_14:

      v28 = *(v0 + 8);

      return v28();
    }

    goto LABEL_7;
  }

  v14 = *(v0 + 152);
  sub_215324EEC(*(v0 + 184), *(v0 + 200), &qword_27CA5D410, &qword_2154C5D40);
  v15 = v11(v2 + v10, 1, v14);
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);
  if (v15 == 1)
  {
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    sub_2151ADCD8(*(v0 + 208), &qword_27CA5D410, &qword_2154C5D40);
    (*(v18 + 8))(v16, v19);
LABEL_7:
    sub_2151ADCD8(*(v0 + 184), &qword_27CA5E6F0, qword_2154C5D50);
    goto LABEL_8;
  }

  v33 = *(v0 + 184);
  v23 = *(v0 + 160);
  v24 = *(v0 + 168);
  v25 = *(v0 + 152);
  (*(v23 + 32))(v24, v2 + v10, v25);
  sub_2154681B8(&qword_27CA5E6F8, MEMORY[0x277D35AB0], MEMORY[0x277D35AB8]);
  v26 = sub_2154A1D1C();
  v27 = *(v23 + 8);
  v27(v24, v25);
  sub_2151ADCD8(v17, &qword_27CA5D410, &qword_2154C5D40);
  v27(v16, v25);
  sub_2151ADCD8(v33, &qword_27CA5D410, &qword_2154C5D40);
  if (v26)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = *(v0 + 80);
  swift_getKeyPath(asc_2154C5CE8, v30, v31);
  *(v0 + 72) = v20;
  sub_21549ED9C();

  v21 = OBJC_IVAR____TtC11NotesEditor18RecordingViewModel__isCallRecording;
  swift_beginAccess();
  if (*(v20 + v21))
  {
LABEL_13:

    goto LABEL_14;
  }

  *(v0 + 272) = sub_21549ED0C();
  v22 = swift_task_alloc();
  *(v0 + 280) = v22;
  *v22 = v0;
  v22[1] = sub_2154586A8;

  return MEMORY[0x2821951E0](0);
}