uint64_t sub_24F225E08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_24F225E50(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F225EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *TodayCardMediaGrid.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v78 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v77 = &v65 - v6;
  v88 = sub_24F92AC28();
  v76 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v84 = &v65 - v9;
  v86 = sub_24F9285B8();
  v10 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v71 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v85 = &v65 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v65 - v15;
  v89 = sub_24F928388();
  v83 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v70 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v66 = &v65 - v19;
  MEMORY[0x28223BE20](v20);
  v75 = &v65 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v65 - v26;
  sub_24F929608();
  sub_24F928398();
  v80 = v10;
  v28 = *(v10 + 16);
  v29 = v86;
  v28(v16, a2, v86);
  v79 = v27;
  v74 = v24;
  v69 = v16;
  v30 = v85;
  sub_24F929548();
  v81 = a2;
  v68 = v10 + 16;
  v67 = v28;
  v28(v30, a2, v29);
  v31 = v75;
  v87 = a1;
  sub_24F928398();
  v32 = v77;
  sub_24F9282B8();
  v33 = (v83 + 8);
  v34 = *(v83 + 8);
  v34(v31, v89);
  v35 = v76;
  if ((*(v76 + 48))(v32, 1, v88) == 1)
  {
    sub_24E601704(v32, &qword_27F2213B0, &qword_24F965EC0);
    v36 = v30;
    v37 = sub_24F92AC38();
    sub_24E9321A0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v38 = 0x7370756B636F6CLL;
    v38[1] = 0xE700000000000000;
    v38[2] = v78;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    v39 = *(v80 + 8);
    v40 = v86;
    (v39)(v81, v86);
    v34(v87, v89);
    (v39)(v36, v40);
LABEL_5:
    sub_24E601704(v79, &qword_27F213E68, &unk_24F93BC80);
    swift_deallocPartialClassInstance();
    return v39;
  }

  v41 = v78;
  v42 = v34;
  v43 = v35;
  (*(v35 + 32))(v84, v32, v88);
  v44 = v74;
  sub_24F928398();
  sub_24F0DE890();
  sub_24F928248();
  v77 = v33;
  v75 = v42;
  (v42)(v44, v89);
  v45 = v90;
  if (v90 == 4)
  {
    v46 = sub_24F92AC38();
    sub_24E9321A0(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v47 = 0x476B726F77747261;
    v47[1] = 0xEF65707954646972;
    v47[2] = v41;
    (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D22530], v46);
    swift_willThrow();
    v39 = *(v80 + 8);
    v48 = v86;
    (v39)(v81, v86);
    (v75)(v87, v89);
    (*(v35 + 8))(v84, v88);
    (v39)(v85, v48);
    goto LABEL_5;
  }

  v50 = v66;
  sub_24F928398();
  v51 = sub_24F928258();
  v53 = v52;
  (v75)(v50, v89);
  v54 = 3;
  if ((v53 & 1) == 0)
  {
    v54 = v51;
  }

  v55 = v82;
  *(v82 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockupImpressionLimit) = v54;
  (*(v43 + 16))(v72, v84, v88);
  v56 = v86;
  v57 = v67;
  v67(v69, v85, v86);
  type metadata accessor for Lockup(0);
  sub_24E9321A0(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v55 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockups) = sub_24F92B6A8();
  *(v55 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_artworkGridType) = v45;
  v58 = v70;
  (*(v83 + 16))(v70, v87, v89);
  v59 = v71;
  v60 = v81;
  v57(v71, v81, v56);
  v61 = v73;
  v62 = TodayCardMedia.init(deserializing:using:)(v58, v59);
  if (v61)
  {
    v39 = *(v80 + 8);
    (v39)(v60, v56);
    (v75)(v87, v89);
    (*(v43 + 8))(v84, v88);
    (v39)(v85, v56);
  }

  else
  {
    v39 = v62;
    v63 = v56;
    v64 = *(v80 + 8);
    v64(v60, v63);
    (v75)(v87, v89);
    (*(v43 + 8))(v84, v88);
    v64(v85, v63);
  }

  sub_24E601704(v79, &qword_27F213E68, &unk_24F93BC80);
  return v39;
}

uint64_t TodayCardMediaGrid.__allocating_init(lockups:artworkGridType:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockups) = a1;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_artworkGridType) = v13;
  *(v12 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockupImpressionLimit) = a3;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_24E60169C(a4, v12 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v23, &v20, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v21 + 1))
  {
    v14 = v21;
    *(v12 + 32) = v20;
    *(v12 + 48) = v14;
    *(v12 + 64) = v22;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v9 + 8))(v11, v8);
    v19[1] = v15;
    v19[2] = v17;
    sub_24F92C7F8();
    sub_24E601704(&v20, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a4, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v23, &qword_27F235830, &qword_24F93B8C0);
  *(v12 + 16) = 7;
  *(v12 + 24) = 1;
  return v12;
}

uint64_t TodayCardMediaGrid.init(lockups:artworkGridType:lockupImpressionLimit:impressionMetrics:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v21[0] = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v21 - v14;
  LOBYTE(v14) = *a2;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockups) = a1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_artworkGridType) = v14;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockupImpressionLimit) = a3;
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_24E60169C(a4, v15, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v28, &v22, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v23 + 1))
  {
    v25 = v22;
    v26 = v23;
    v27 = v24;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v18 = v17;
    (*(v21[0] + 8))(v12, v10);
    v21[1] = v16;
    v21[2] = v18;
    sub_24F92C7F8();
    sub_24E601704(&v22, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(a4, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v28, &qword_27F235830, &qword_24F93B8C0);
  v19 = v26;
  *(v5 + 32) = v25;
  *(v5 + 48) = v19;
  *(v5 + 64) = v27;
  sub_24E65E0D4(v15, v5 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics);
  *(v5 + 16) = 7;
  *(v5 + 24) = 1;
  return v5;
}

double TodayCardMediaGrid.lockups.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t TodayCardMediaGrid.lockups.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockups;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void TodayCardMediaGrid.artworkGridType.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_artworkGridType;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void TodayCardMediaGrid.artworkGridType.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_artworkGridType;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

char *TodayCardMediaGrid.offerAdamIds.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit18TodayCardMediaGrid_lockups;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x253052270](v4, v2);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v4 + 32);

        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v3 = sub_24F92C738();
          goto LABEL_3;
        }
      }

      v9 = *(v6 + 16);
      v8 = *(v6 + 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_24E6164C0(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_24E6164C0((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      ++v4;
      if (v7 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_18:

  return v5;
}

uint64_t TodayCardMediaGrid.deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t TodayCardMediaGrid.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 32);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit14TodayCardMedia_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TodayCardMediaGrid(uint64_t a1)
{
  result = qword_27F23C980;
  if (!qword_27F23C980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F22749C(uint64_t a1)
{
  sub_24F227524();
  if (v1 <= 0x3F)
  {
    sub_24EAC9FA8();
    if (v2 <= 0x3F)
    {
      sub_24EAC9FF0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24F227524()
{
  if (!qword_27F23C9A0)
  {
    sub_24F22B7CC(0, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27F23C9A0);
    }
  }
}

uint64_t sub_24F22759C(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9A8, &qword_24F9D7B70);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v29 = &v28 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9B0, &qword_24F9D7B78);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v30 = &v28 - v3;
  v4 = sub_24F9289E8();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9B8, &qword_24F9D7B80);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for OverlayButtonLabelAccessory(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9C0, &qword_24F9D7B88);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F228740();
  sub_24F92D128();
  sub_24F22BD78(v37, v12, type metadata accessor for OverlayButtonLabelAccessory);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = v31;
      v17 = v32;
      (*(v31 + 32))(v6, v12, v32);
      v42 = 1;
      sub_24F2287E8();
      v19 = v30;
      v20 = v39;
      sub_24F92CC98();
      sub_24F22BE48(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
      v21 = v36;
      sub_24F92CD48();
      (*(v34 + 8))(v19, v21);
      (*(v18 + 8))(v6, v17);
      return (*(v38 + 8))(v15, v20);
    }

    else
    {
      v43 = 2;
      sub_24F228794();
      v25 = v29;
      v26 = v39;
      sub_24F92CC98();
      v27 = v35;
      sub_24F92CD08();

      (*(v33 + 8))(v25, v27);
      return (*(v38 + 8))(v15, v26);
    }
  }

  else
  {
    v23 = *v12;
    v41 = 0;
    sub_24F22883C();
    v24 = v39;
    sub_24F92CC98();
    v40 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
    sub_24F228890(&qword_27F218A30, &qword_27F218A38, &protocol conformance descriptor for PlayerAvatar, MEMORY[0x277D83948]);
    sub_24F92CD48();
    (*(v28 + 8))(v9, v7);
    (*(v38 + 8))(v15, v24);
  }
}

uint64_t sub_24F227BC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9E8, &qword_24F9D7B98);
  v61 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v62 = &v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9F0, &qword_24F9D7BA0);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x28223BE20](v4);
  v64 = &v53 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23C9F8, &qword_24F9D7BA8);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CA00, &unk_24F9D7BB0);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for OverlayButtonLabelAccessory(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v23 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F228740();
  v24 = v68;
  sub_24F92D108();
  if (!v24)
  {
    v53 = v13;
    v54 = v19;
    v55 = v16;
    v25 = v63;
    v26 = v64;
    v68 = v22;
    v27 = v11;
    v28 = v65;
    v29 = v67;
    v30 = sub_24F92CC78();
    v31 = (2 * *(v30 + 16)) | 1;
    v70 = v30;
    v71 = v30 + 32;
    v72 = 0;
    v73 = v31;
    v32 = sub_24E643434();
    if (v32 != 3 && v72 == v73 >> 1)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          LOBYTE(v74) = 1;
          sub_24F2287E8();
          sub_24F92CBA8();
          sub_24F9289E8();
          sub_24F22BE48(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
          v33 = v55;
          v34 = v60;
          sub_24F92CC68();
          v35 = v26;
          v36 = v66;
          (*(v59 + 8))(v35, v34);
          (*(v36 + 8))(v10, v67);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v33;
LABEL_12:
          v52 = v68;
          sub_24F22BDE0(v49, v68, type metadata accessor for OverlayButtonLabelAccessory);
          sub_24F22BDE0(v52, v28, type metadata accessor for OverlayButtonLabelAccessory);
          return __swift_destroy_boxed_opaque_existential_1(v69);
        }

        LOBYTE(v74) = 2;
        sub_24F228794();
        v44 = v62;
        sub_24F92CBA8();
        v45 = v44;
        v46 = v56;
        v47 = sub_24F92CC28();
        v64 = v48;
        v50 = v47;
        (*(v61 + 8))(v45, v46);
        (*(v66 + 8))(v10, v29);
        swift_unknownObjectRelease();
        v43 = v53;
        v51 = v64;
        *v53 = v50;
        v43[1] = v51;
      }

      else
      {
        LOBYTE(v74) = 0;
        sub_24F22883C();
        sub_24F92CBA8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
        sub_24F228890(&qword_27F218598, &qword_27F2185A0, &protocol conformance descriptor for PlayerAvatar, MEMORY[0x277D83978]);
        v42 = v58;
        sub_24F92CC68();
        (*(v57 + 8))(v25, v42);
        (*(v66 + 8))(v10, v29);
        swift_unknownObjectRelease();
        v43 = v54;
        *v54 = v74;
      }

      swift_storeEnumTagMultiPayload();
      v49 = v43;
      goto LABEL_12;
    }

    v37 = v29;
    v38 = sub_24F92C918();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
    *v40 = v27;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    (*(v66 + 8))(v10, v37);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_24F2283E8(uint64_t a1)
{
  v2 = sub_24F2287E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F228424(uint64_t a1)
{
  v2 = sub_24F2287E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F228460()
{
  v1 = 0x6B726F77747261;
  if (*v0 != 1)
  {
    v1 = 0x614E6C6F626D7973;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7641726579616C70;
  }
}

uint64_t sub_24F2284CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F22B3C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F2284F4(uint64_t a1)
{
  v2 = sub_24F228740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F228530(uint64_t a1)
{
  v2 = sub_24F228740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F228590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7641726579616C70 && a2 == 0xED00007372617461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F228620(uint64_t a1)
{
  v2 = sub_24F22883C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F22865C(uint64_t a1)
{
  v2 = sub_24F22883C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F228698(uint64_t a1)
{
  v2 = sub_24F228794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2286D4(uint64_t a1)
{
  v2 = sub_24F228794();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F228740()
{
  result = qword_27F23C9C8;
  if (!qword_27F23C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C9C8);
  }

  return result;
}

unint64_t sub_24F228794()
{
  result = qword_27F23C9D0;
  if (!qword_27F23C9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C9D0);
  }

  return result;
}

unint64_t sub_24F2287E8()
{
  result = qword_27F23C9D8;
  if (!qword_27F23C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C9D8);
  }

  return result;
}

unint64_t sub_24F22883C()
{
  result = qword_27F23C9E0;
  if (!qword_27F23C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23C9E0);
  }

  return result;
}

uint64_t sub_24F228890(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F218590, &qword_24F9D7B90);
    sub_24F22BE48(a2, type metadata accessor for PlayerAvatar, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F228970()
{
  result = qword_27F23CA08;
  if (!qword_27F23CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA08);
  }

  return result;
}

unint64_t sub_24F2289C8()
{
  result = qword_27F23CA10;
  if (!qword_27F23CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA10);
  }

  return result;
}

unint64_t sub_24F228A20()
{
  result = qword_27F23CA18;
  if (!qword_27F23CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA18);
  }

  return result;
}

unint64_t sub_24F228A78()
{
  result = qword_27F23CA20;
  if (!qword_27F23CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA20);
  }

  return result;
}

unint64_t sub_24F228AD0()
{
  result = qword_27F23CA28;
  if (!qword_27F23CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA28);
  }

  return result;
}

unint64_t sub_24F228B28()
{
  result = qword_27F23CA30;
  if (!qword_27F23CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA30);
  }

  return result;
}

unint64_t sub_24F228B80()
{
  result = qword_27F23CA38;
  if (!qword_27F23CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA38);
  }

  return result;
}

unint64_t sub_24F228BD8()
{
  result = qword_27F23CA40;
  if (!qword_27F23CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA40);
  }

  return result;
}

unint64_t sub_24F228C30()
{
  result = qword_27F23CA48;
  if (!qword_27F23CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA48);
  }

  return result;
}

unint64_t sub_24F228C88()
{
  result = qword_27F23CA50;
  if (!qword_27F23CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA50);
  }

  return result;
}

unint64_t sub_24F228CE0()
{
  result = qword_27F23CA58;
  if (!qword_27F23CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA58);
  }

  return result;
}

unint64_t sub_24F228D38()
{
  result = qword_27F23CA60;
  if (!qword_27F23CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA60);
  }

  return result;
}

uint64_t sub_24F228D8C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAA8, &qword_24F9D8160);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAB0, &qword_24F9D8168);
  MEMORY[0x28223BE20](v56);
  v58 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = &v54 - v8;
  MEMORY[0x28223BE20](v9);
  v57 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAB8, &qword_24F9D8170);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAC0, &qword_24F9D8178);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAC8, &qword_24F9D8180);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v54 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v54 - v26;
  v54 = a1;
  sub_24F2292B0(a1, v13);
  LODWORD(a1) = *a1;
  sub_24F927618();
  v28 = a1 == 0;
  if (a1)
  {
    v29 = 0x4030000000000000;
  }

  else
  {
    v29 = 0x402C000000000000;
  }

  if (v28)
  {
    v30 = 0x4020000000000000;
  }

  else
  {
    v30 = 0x4024000000000000;
  }

  sub_24F9238C8();
  sub_24E6009C8(v13, v17, &qword_27F23CAB8, &qword_24F9D8170);
  v31 = &v17[*(v15 + 44)];
  v32 = v61;
  *v31 = v60;
  *(v31 + 1) = v32;
  *(v31 + 2) = v62;
  v33 = sub_24F925808();
  sub_24E6009C8(v17, v24, &qword_27F23CAC0, &qword_24F9D8178);
  v34 = &v24[*(v19 + 44)];
  *v34 = v33;
  *(v34 + 1) = v29;
  *(v34 + 2) = v29;
  *(v34 + 3) = v29;
  *(v34 + 4) = v30;
  v34[40] = 0;
  sub_24E6009C8(v24, v27, &qword_27F23CAC8, &qword_24F9D8180);
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAD0, &qword_24F9D8188);
  sub_24F22AA4C(v54, &v5[*(v35 + 44)]);
  v36 = sub_24F925858();
  v37 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v36)
  {
    v37 = sub_24F925848();
  }

  sub_24F923318();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v55;
  sub_24E6009C8(v5, v55, &qword_27F23CAA8, &qword_24F9D8160);
  v47 = v57;
  v48 = v46 + *(v56 + 36);
  *v48 = v37;
  *(v48 + 8) = v39;
  *(v48 + 16) = v41;
  *(v48 + 24) = v43;
  *(v48 + 32) = v45;
  *(v48 + 40) = 0;
  sub_24E6009C8(v46, v47, &qword_27F23CAB0, &qword_24F9D8168);
  sub_24E60169C(v27, v21, &qword_27F23CAC8, &qword_24F9D8180);
  v49 = v58;
  sub_24E60169C(v47, v58, &qword_27F23CAB0, &qword_24F9D8168);
  v50 = v59;
  sub_24E60169C(v21, v59, &qword_27F23CAC8, &qword_24F9D8180);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAD8, &qword_24F9D8190);
  sub_24E60169C(v49, v50 + *(v51 + 48), &qword_27F23CAB0, &qword_24F9D8168);
  v52 = v50 + *(v51 + 64);
  *v52 = 0;
  *(v52 + 8) = 0;
  sub_24E601704(v47, &qword_27F23CAB0, &qword_24F9D8168);
  sub_24E601704(v27, &qword_27F23CAC8, &qword_24F9D8180);
  sub_24E601704(v49, &qword_27F23CAB0, &qword_24F9D8168);
  return sub_24E601704(v21, &qword_27F23CAC8, &qword_24F9D8180);
}

uint64_t sub_24F2292B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a1;
  v151 = a2;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB08, &qword_24F9D8228);
  MEMORY[0x28223BE20](v168);
  v167 = &v129 - v2;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB10, &unk_24F9D8230);
  MEMORY[0x28223BE20](v150);
  v4 = &v129 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214698, &unk_24F95F810);
  MEMORY[0x28223BE20](v5 - 8);
  v139 = &v129 - v6;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234CE0, &qword_24F9D8240);
  MEMORY[0x28223BE20](v169);
  v140 = (&v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v154 = (&v129 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v136 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v138 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v11;
  MEMORY[0x28223BE20](v12);
  v134 = &v129 - v13;
  v155 = sub_24F9289E8();
  v166 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v135 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = v14;
  MEMORY[0x28223BE20](v15);
  v165 = &v129 - v16;
  v164 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v131 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v152 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v18 - 8);
  v163 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v162 = &v129 - v21;
  v22 = type metadata accessor for PlayerAvatarView(0);
  v161 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v160 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v172 = (&v129 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB18, &qword_24F9D8248);
  MEMORY[0x28223BE20](v26);
  v28 = &v129 - v27;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB20, &qword_24F9D8250);
  MEMORY[0x28223BE20](v144);
  v147 = (&v129 - v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB28, &qword_24F9D8258);
  MEMORY[0x28223BE20](v30);
  v148 = &v129 - v31;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v145);
  v141 = &v129 - v32;
  v149 = type metadata accessor for OverlappingPlayerAvatarsView(0);
  MEMORY[0x28223BE20](v149);
  v143 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2344F8, &qword_24F9B2ED0);
  v132 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v142 = &v129 - v34;
  v159 = type metadata accessor for PlayerAvatar(0);
  v35 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v171 = (&v129 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v158 = (&v129 - v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0, &qword_24F9AB010);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v129 - v43;
  v45 = type metadata accessor for OverlayButtonLabelView(0);
  sub_24E60169C(v170 + *(v45 + 20), v44, &qword_27F232DC0, &qword_24F9AB010);
  v46 = type metadata accessor for OverlayButtonLabelAccessory(0);
  if ((*(*(v46 - 8) + 48))(v44, 1, v46) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_24EF69974();
    sub_24F924E28();
    sub_24E60169C(v4, v28, &qword_27F23CB10, &unk_24F9D8230);
    swift_storeEnumTagMultiPayload();
    sub_24F22B9A8();
    sub_24F22BB20();
    sub_24F924E28();
    v47 = v4;
    v48 = &qword_27F23CB10;
    v49 = &unk_24F9D8230;
    goto LABEL_18;
  }

  v50 = v169;
  sub_24E60169C(v44, v41, &qword_27F232DC0, &qword_24F9AB010);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v157 = v44;
  v130 = v28;
  v129 = v30;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v52 = v165;
      v53 = v166;
      v172 = *(v166 + 32);
      v54 = v155;
      v172(v165, v41, v155);
      v55 = sub_24F922348();
      v56 = v134;
      (*(*(v55 - 8) + 56))(v134, 1, 1, v55);
      v57 = *MEMORY[0x277CEE240];
      v58 = v135;
      (*(v53 + 16))(v135, v52, v54);
      v59 = v138;
      sub_24E6009C8(v56, v138, &qword_27F214148, &qword_24F93C520);
      v60 = (*(v53 + 80) + 16) & ~*(v53 + 80);
      v156 = v26;
      v61 = (v133 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = (*(v136 + 80) + v61 + 8) & ~*(v136 + 80);
      v63 = v62 + v137;
      v64 = swift_allocObject();
      v65 = v64 + v60;
      v44 = v157;
      v172(v65, v58, v54);
      *(v64 + v61) = v57;
      sub_24E6009C8(v59, v64 + v62, &qword_27F214148, &qword_24F93C520);
      *(v64 + v63) = 0;
      v66 = v147;
      *v147 = sub_24E623C20;
      v66[1] = v64;
      swift_storeEnumTagMultiPayload();
      v67 = v57;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0, &qword_24F93C5B0);
      v68 = sub_24F22BE48(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView, &unk_24FA0B6F0);
      v69 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
      *&v175 = v149;
      *(&v175 + 1) = v145;
      *&v176 = v68;
      *(&v176 + 1) = v69;
      swift_getOpaqueTypeConformance2();
      sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
      v70 = v148;
      sub_24F924E28();
      sub_24E60169C(v70, v130, &qword_27F23CB28, &qword_24F9D8258);
      swift_storeEnumTagMultiPayload();
      sub_24F22B9A8();
      sub_24F22BB20();
      sub_24F924E28();

      sub_24E601704(v70, &qword_27F23CB28, &qword_24F9D8258);
      (*(v166 + 8))(v165, v54);
      return sub_24E601704(v44, &qword_27F232DC0, &qword_24F9AB010);
    }

    v102 = sub_24F926E48();
    sub_24F925958();
    v103 = sub_24F925908();
    v104 = v139;
    (*(*(v103 - 8) + 56))(v139, 1, 1, v103);
    v105 = sub_24F925968();
    sub_24E601704(v104, &qword_27F214698, &unk_24F95F810);
    KeyPath = swift_getKeyPath();
    v107 = *(v50 + 36);
    v108 = v140;
    v109 = (v140 + v107);
    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2365A0, &unk_24F9B4DB0) + 28);
    sub_24F924CF8();
    v111 = sub_24F924D08();
    (*(*(v111 - 8) + 56))(v109 + v110, 0, 1, v111);
    *v109 = swift_getKeyPath();
    *v108 = v102;
    v108[1] = KeyPath;
    v108[2] = v105;
    v112 = v154;
    sub_24E6009C8(v108, v154, &qword_27F234CE0, &qword_24F9D8240);
    sub_24E60169C(v112, v167, &qword_27F234CE0, &qword_24F9D8240);
    swift_storeEnumTagMultiPayload();
    sub_24EF69974();
    sub_24F924E28();
    sub_24E60169C(v4, v130, &qword_27F23CB10, &unk_24F9D8230);
    swift_storeEnumTagMultiPayload();
    sub_24F22B9A8();
    sub_24F22BB20();
    sub_24F924E28();
    sub_24E601704(v4, &qword_27F23CB10, &unk_24F9D8230);
    v47 = v112;
    v48 = &qword_27F234CE0;
    v49 = &qword_24F9D8240;
LABEL_18:
    sub_24E601704(v47, v48, v49);
    return sub_24E601704(v44, &qword_27F232DC0, &qword_24F9AB010);
  }

  v71 = *v41;
  v72 = *(*v41 + 16);
  if (v72)
  {
    v73 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v140 = *v41;
    v74 = v71 + v73;
    v155 = *(v35 + 72);
    v154 = (v131 + 56);
    v75 = MEMORY[0x277D84F90];
    v76 = &unk_24F942E50;
    v156 = v26;
    v153 = v22;
    do
    {
      v169 = v75;
      v170 = v72;
      v168 = v74;
      v77 = v158;
      sub_24F22BD78(v74, v158, type metadata accessor for PlayerAvatar);
      v78 = v77[1];
      v165 = *v77;
      v79 = type metadata accessor for PlayerAvatar.Overlay(0);
      v167 = *(v79 - 8);
      v80 = *(v167 + 56);
      v81 = v162;
      v166 = v79;
      v80(v162, 1, 1, v79);
      v177 = 0;
      v175 = 0u;
      v176 = 0u;
      v82 = v76;
      v83 = v159;
      v84 = *(v159 + 20);
      v85 = v171;
      v80(v171 + v84, 1, 1, v79);
      v86 = v85 + *(v83 + 24);
      v174 = 0;
      memset(v173, 0, sizeof(v173));
      *v86 = 0u;
      *(v86 + 16) = 0u;
      *(v86 + 32) = 0;

      sub_24E61DA68(v173, v86, qword_27F21B590, &unk_24F93BE30);
      *v85 = v165;
      v85[1] = v78;

      v87 = v81;
      v88 = v153;
      sub_24E61DA68(v87, v85 + v84, &qword_27F22DF80, v82);
      v76 = v82;
      sub_24E61DA68(&v175, v86, qword_27F21B590, &unk_24F93BE30);
      v89 = v160;
      sub_24F928948();
      sub_24F22BE90(v77, type metadata accessor for PlayerAvatar);
      type metadata accessor for PlayerAvatarView.AvatarType(0);
      swift_storeEnumTagMultiPayload();
      v90 = v163;
      sub_24E60169C(v85 + v84, v163, &qword_27F22DF80, v76);
      v91 = v88[5];
      if ((*(v167 + 48))(v90, 1, v166) == 1)
      {
        sub_24E601704(v90, &qword_27F22DF80, v76);
        v92 = 1;
        v93 = v164;
      }

      else
      {
        v94 = v152;
        sub_24F22BDE0(v90, v152, type metadata accessor for PlayerAvatar.Overlay);
        v93 = v164;
        v95 = v94 + *(v164 + 20);
        *v95 = 0;
        *(v95 + 8) = 1;
        v96 = (v94 + *(v93 + 24));
        *v96 = 0;
        v96[1] = 0;
        sub_24F22BDE0(v94, v89 + v91, type metadata accessor for PlayerAvatarView.Overlay);
        v92 = 0;
      }

      (*v154)(v89 + v91, v92, 1, v93);
      v97 = v89 + v88[6];
      sub_24E60169C(v86, &v175, qword_27F24EC90, &unk_24F93C1D0);
      sub_24F22BE90(v171, type metadata accessor for PlayerAvatar);
      v98 = v176;
      *v97 = v175;
      *(v97 + 16) = v98;
      *(v97 + 32) = v177;
      *(v89 + v88[7]) = 7;
      sub_24F22BDE0(v89, v172, type metadata accessor for PlayerAvatarView);
      v75 = v169;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v157;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = sub_24E619074(0, v75[2] + 1, 1, v75);
      }

      v101 = v75[2];
      v100 = v75[3];
      if (v101 >= v100 >> 1)
      {
        v75 = sub_24E619074((v100 > 1), v101 + 1, 1, v75);
      }

      v75[2] = v101 + 1;
      sub_24F22BDE0(v172, v75 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v101, type metadata accessor for PlayerAvatarView);
      v74 = v168 + v155;
      v72 = v170 - 1;
    }

    while (v170 != 1);
  }

  else
  {

    v75 = MEMORY[0x277D84F90];
  }

  v114 = v149;
  v115 = v143;
  *&v175 = 0x4010000000000000;
  sub_24E66ED98();
  sub_24F9237C8();
  *&v115[v114[5]] = v75;
  v116 = &v115[v114[6]];
  *v116 = 0;
  v116[8] = 2;
  v115[v114[7]] = 5;
  v117 = *MEMORY[0x277CDFA10];
  v118 = sub_24F923E98();
  v119 = v141;
  (*(*(v118 - 8) + 104))(v141, v117, v118);
  sub_24F22BE48(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24F92AFF8();
  if (result)
  {
    v120 = sub_24F22BE48(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView, &unk_24FA0B6F0);
    v121 = sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    v122 = v142;
    v123 = v145;
    v124 = v143;
    sub_24F9263F8();
    sub_24E601704(v119, &qword_27F21CCC8, &qword_24F957520);
    sub_24F22BE90(v124, type metadata accessor for OverlappingPlayerAvatarsView);
    v125 = v132;
    v126 = v122;
    v127 = v146;
    (*(v132 + 16))(v147, v126, v146);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2141C0, &qword_24F93C5B0);
    *&v175 = v114;
    *(&v175 + 1) = v123;
    *&v176 = v120;
    *(&v176 + 1) = v121;
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
    v128 = v148;
    sub_24F924E28();
    sub_24E60169C(v128, v130, &qword_27F23CB28, &qword_24F9D8258);
    swift_storeEnumTagMultiPayload();
    sub_24F22B9A8();
    sub_24F22BB20();
    sub_24F924E28();
    sub_24E601704(v128, &qword_27F23CB28, &qword_24F9D8258);
    (*(v125 + 8))(v142, v127);
    return sub_24E601704(v44, &qword_27F232DC0, &qword_24F9AB010);
  }

  __break(1u);
  return result;
}

uint64_t sub_24F22AA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v92 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAE0, &qword_24F9D8198);
  MEMORY[0x28223BE20](v80);
  v78 = &v76 - v3;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAE8, &qword_24F9D81A0);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v82 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v76 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAF0, &qword_24F9D81A8);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = &v76 - v10;
  v11 = type metadata accessor for OverlayButtonLabelView(0);
  v12 = (a1 + *(v11 + 24));
  v13 = v12[1];
  v101 = *v12;
  v102 = v13;
  v14 = sub_24E600AEC();

  v77 = v14;
  v15 = sub_24F925E18();
  v17 = v16;
  v19 = v18;
  sub_24F925898();
  v20 = sub_24F925C98();
  v22 = v21;
  LOBYTE(v14) = v23;

  sub_24E600B40(v15, v17, v19 & 1);

  sub_24F925938();
  v87 = sub_24F925B78();
  v86 = v24;
  v26 = v25;
  v28 = v27;
  sub_24E600B40(v20, v22, v14 & 1);

  KeyPath = swift_getKeyPath();
  v85 = swift_getKeyPath();
  v83 = v26 & 1;
  v116 = v26 & 1;
  v114 = 0;
  v84 = sub_24F925198();
  v79 = v11;
  v29 = (v94 + *(v11 + 28));
  v30 = v29[1];
  v93 = v28;
  if (v30)
  {
    v101 = *v29;
    v102 = v30;

    v31 = sub_24F925E18();
    v33 = v32;
    v35 = v34;
    sub_24F925898();
    v36 = sub_24F925C98();
    v38 = v37;
    v40 = v39;

    sub_24E600B40(v31, v33, v35 & 1);

    sub_24F925948();
    v77 = sub_24F925B78();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    sub_24E600B40(v36, v38, v40 & 1);

    v47 = swift_getKeyPath();
    v48 = swift_getKeyPath();
    v49 = v44 & 1;
    LOBYTE(v101) = v44 & 1;
    LOBYTE(v96) = 0;
    v50 = sub_24F9251C8();
    v51 = v78;
    v52 = &v78[*(v80 + 36)];
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v54 = *MEMORY[0x277CE13B8];
    v55 = sub_24F927748();
    (*(*(v55 - 8) + 104))(&v52[v53], v54, v55);
    *v52 = v50;
    *v51 = v77;
    *(v51 + 8) = v42;
    *(v51 + 16) = v49;
    *(v51 + 24) = v46;
    *(v51 + 32) = v47;
    *(v51 + 40) = 0x3FD0000000000000;
    *(v51 + 48) = v48;
    *(v51 + 56) = 1;
    *(v51 + 64) = 0;
    v56 = *(v94 + *(v79 + 32));
    if (v56 == 2 || (v57 = 0.0, (v56 & 1) == 0))
    {
      v57 = 1.0;
    }

    v58 = v82;
    sub_24E6009C8(v51, v82, &qword_27F23CAE0, &qword_24F9D8198);
    v59 = v89;
    *(v58 + *(v89 + 36)) = v57;
    v60 = v58;
    v61 = v81;
    sub_24E6009C8(v60, v81, &qword_27F23CAE8, &qword_24F9D81A0);
    v62 = v90;
    sub_24E6009C8(v61, v90, &qword_27F23CAE8, &qword_24F9D81A0);
    (*(v88 + 56))(v62, 0, 1, v59);
    v28 = v93;
  }

  else
  {
    v62 = v90;
    (*(v88 + 56))(v90, 1, 1, v89);
  }

  v63 = v91;
  sub_24E60169C(v62, v91, &qword_27F23CAF0, &qword_24F9D81A8);
  v64 = v87;
  *&v96 = v87;
  v65 = v86;
  *(&v96 + 1) = v86;
  v66 = v83;
  LOBYTE(v97) = v83;
  *(&v97 + 1) = *v115;
  DWORD1(v97) = *&v115[3];
  *(&v97 + 1) = v28;
  *&v98 = KeyPath;
  v67 = v85;
  *(&v98 + 1) = 0x3FD0000000000000;
  *&v99 = v85;
  *(&v99 + 1) = 1;
  LOBYTE(v100) = 0;
  *(&v100 + 1) = v117;
  BYTE3(v100) = v118;
  v68 = v84;
  HIDWORD(v100) = v84;
  v69 = v96;
  v70 = v97;
  v71 = v98;
  v72 = v99;
  v73 = v92;
  *(v92 + 64) = v100;
  v73[2] = v71;
  v73[3] = v72;
  *v73 = v69;
  v73[1] = v70;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CAF8, &qword_24F9D8210);
  sub_24E60169C(v63, v73 + *(v74 + 48), &qword_27F23CAF0, &qword_24F9D81A8);
  sub_24E60169C(&v96, &v101, &qword_27F23CB00, &unk_24F9D8218);
  sub_24E601704(v62, &qword_27F23CAF0, &qword_24F9D81A8);
  sub_24E601704(v63, &qword_27F23CAF0, &qword_24F9D81A8);
  v101 = v64;
  v102 = v65;
  v103 = v66;
  *v104 = *v115;
  *&v104[3] = *&v115[3];
  v105 = v93;
  v106 = KeyPath;
  v107 = 0x3FD0000000000000;
  v108 = v67;
  v109 = 1;
  v110 = 0;
  v111 = v117;
  v112 = v118;
  v113 = v68;
  return sub_24E601704(&v101, &qword_27F23CB00, &unk_24F9D8218);
}

uint64_t sub_24F22B228()
{
  v1 = sub_24F9248C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CA80, &qword_24F9D8140);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CA88, &qword_24F9D8148);
  sub_24F228D8C(v0, &v7[*(v8 + 44)]);
  sub_24F9248B8();
  sub_24F22B8B4();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v2 + 8))(v4, v1);
  return sub_24E601704(v7, &qword_27F23CA80, &qword_24F9D8140);
}

uint64_t sub_24F22B3C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7641726579616C70 && a2 == 0xED00007372617461;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24F22B500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0, &qword_24F9AB010);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24F22B5E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232DC0, &qword_24F9AB010);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24F22B6D0(uint64_t a1)
{
  sub_24F22B7CC(319, &qword_27F232DF0, type metadata accessor for OverlayButtonLabelAccessory, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F2169A0, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F22B7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F22B844()
{
  result = qword_27F23CA78;
  if (!qword_27F23CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA78);
  }

  return result;
}

unint64_t sub_24F22B8B4()
{
  result = qword_27F23CA90;
  if (!qword_27F23CA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CA80, &qword_24F9D8140);
    sub_24E602068(&qword_27F23CA98, &qword_27F23CAA0, &unk_24F9D8150, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CA90);
  }

  return result;
}

unint64_t sub_24F22B9A8()
{
  result = qword_27F23CB30;
  if (!qword_27F23CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CB28, &qword_24F9D8258);
    type metadata accessor for OverlappingPlayerAvatarsView(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8, &qword_24F957520);
    sub_24F22BE48(&qword_27F234500, type metadata accessor for OverlappingPlayerAvatarsView, &unk_24FA0B6F0);
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CB30);
  }

  return result;
}

unint64_t sub_24F22BB20()
{
  result = qword_27F23CB38;
  if (!qword_27F23CB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CB10, &unk_24F9D8230);
    sub_24EF69974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CB38);
  }

  return result;
}

uint64_t sub_24F22BBBC()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24F22BD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F22BDE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F22BE48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F22BE90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F22BEF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CA80, &qword_24F9D8140);
  sub_24F22B8B4();
  return swift_getOpaqueTypeConformance2();
}

CGSize __swiftcall CGSize.fitting(_:mode:)(CGSize _, UIViewContentMode mode)
{
  if (_.width != 0.0 || (width = 0.0, height = 0.0, _.height != 0.0))
  {
    v6 = _.width / v2;
    if (v2 == 0.0)
    {
      v6 = 0.0;
    }

    v7 = _.height / v3;
    if (v3 == 0.0)
    {
      v7 = 0.0;
    }

    v8 = v7 * v2;
    v9 = v6 * v3;
    if ((mode - 3) < 0xA || mode == UIViewContentModeScaleAspectFit)
    {
      v10 = v6 < v7;
      if (v6 >= v7)
      {
        width = v8;
      }

      else
      {
        width = _.width;
      }

      if (v10)
      {
        height = v9;
      }

      else
      {
        height = _.height;
      }
    }

    else if (mode == UIViewContentModeScaleAspectFill)
    {
      v13 = v6 < v7;
      if (v6 >= v7)
      {
        width = _.width;
      }

      else
      {
        width = v8;
      }

      if (v13)
      {
        height = _.height;
      }

      else
      {
        height = v9;
      }
    }

    else
    {
      width = _.width;
      height = _.height;
    }
  }

  v11 = width;
  v12 = height;
  result.height = v12;
  result.width = v11;
  return result;
}

uint64_t Review.__allocating_init(id:title:date:dateText:badge:contents:rating:reviewerName:dateAuthorText:response:moreAction:flowPreviewActionsConfiguration:impressionMetrics:voteActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v57 = a7;
  v58 = a8;
  v56 = a6;
  v55 = a5;
  v60 = a4;
  v22 = sub_24F91F6B8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);

  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC12GameStoreKit6Review_id;
  v59 = a1;
  sub_24E60169C(a1, &v63, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v64 + 1))
  {
    v28 = v64;
    *v27 = v63;
    *(v27 + 16) = v28;
    *(v27 + 32) = v65;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v23 + 8))(v25, v22);
    v61 = v29;
    v62 = v31;
    sub_24F92C7F8();
    sub_24E601704(&v63, &qword_27F235830, &qword_24F93B8C0);
  }

  swift_beginAccess();
  v32 = byte_27F236A28;
  v33 = type metadata accessor for LanguageAwareString();
  v34 = objc_allocWithZone(v33);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v36 = (*(ObjectType + 504))(a2, a3, 0, v32, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v36 = 0;
  }

  *(v26 + 16) = v36;
  sub_24E60169C(v60, v26 + OBJC_IVAR____TtC12GameStoreKit6Review_date, &unk_27F22EC30, &qword_24F939880);
  v37 = (v26 + OBJC_IVAR____TtC12GameStoreKit6Review_dateText);
  v38 = v56;
  *v37 = v55;
  v37[1] = v38;
  v39 = (v26 + OBJC_IVAR____TtC12GameStoreKit6Review_badge);
  v40 = v58;
  *v39 = v57;
  v39[1] = v40;
  v41 = &qword_27F236000;
  v42 = byte_27F236A28;
  v43 = objc_allocWithZone(v33);
  if (a10)
  {
    v44 = swift_getObjectType();
    swift_beginAccess();
    v41 = &qword_27F236000;
    v45 = (*(v44 + 504))(a9, a10, 0, v42, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v45 = 0;
  }

  v58 = a19;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_contents) = v45;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_rating) = a11;
  v46 = *(v41 + 2600);
  v47 = objc_allocWithZone(v33);
  if (a13)
  {
    v48 = swift_getObjectType();
    swift_beginAccess();
    v49 = (*(v48 + 504))(a12, a13, 0, v46, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v49 = 0;
  }

  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_reviewerName) = v49;
  v50 = *(v41 + 2600);
  v51 = objc_allocWithZone(v33);
  if (a15)
  {
    v52 = swift_getObjectType();
    swift_beginAccess();
    v53 = (*(v52 + 504))(a14, a15, 0, v50, byte_27F236A29);
    sub_24E601704(v60, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v59, &qword_27F235830, &qword_24F93B8C0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24E601704(v60, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v59, &qword_27F235830, &qword_24F93B8C0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v53 = 0;
  }

  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_dateAuthorText) = v53;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_response) = a16;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction) = a17;
  *(v26 + OBJC_IVAR____TtC12GameStoreKit6Review_flowPreviewActionsConfiguration) = a18;
  sub_24E6009C8(v58, v26 + OBJC_IVAR____TtC12GameStoreKit6Review_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v26;
}

uint64_t Review.init(id:title:date:dateText:badge:contents:rating:reviewerName:dateAuthorText:response:moreAction:flowPreviewActionsConfiguration:impressionMetrics:voteActions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v59 = a8;
  v58 = a7;
  v57 = a6;
  v56 = a5;
  v61 = a4;
  v24 = sub_24F91F6B8();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);

  v60 = a1;
  sub_24E60169C(a1, &v64, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v65 + 1))
  {
    v67 = v64;
    v68 = v65;
    v69 = v66;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v30 = v29;
    (*(v25 + 8))(v27, v24);
    v62 = v28;
    v63 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v64, &qword_27F235830, &qword_24F93B8C0);
  }

  v31 = v20 + OBJC_IVAR____TtC12GameStoreKit6Review_id;
  v32 = v68;
  *v31 = v67;
  *(v31 + 16) = v32;
  *(v31 + 32) = v69;
  swift_beginAccess();
  v33 = byte_27F236A28;
  v34 = type metadata accessor for LanguageAwareString();
  v35 = objc_allocWithZone(v34);
  if (a3)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v37 = (*(ObjectType + 504))(a2, a3, 0, v33, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v37 = 0;
  }

  *(v20 + 16) = v37;
  sub_24E60169C(v61, v20 + OBJC_IVAR____TtC12GameStoreKit6Review_date, &unk_27F22EC30, &qword_24F939880);
  v38 = (v20 + OBJC_IVAR____TtC12GameStoreKit6Review_dateText);
  v39 = v57;
  *v38 = v56;
  v38[1] = v39;
  v40 = (v20 + OBJC_IVAR____TtC12GameStoreKit6Review_badge);
  v41 = v59;
  *v40 = v58;
  v40[1] = v41;
  v42 = &qword_27F236000;
  v43 = byte_27F236A28;
  v44 = objc_allocWithZone(v34);
  if (a10)
  {
    v45 = swift_getObjectType();
    swift_beginAccess();
    v42 = &qword_27F236000;
    v46 = (*(v45 + 504))(a9, a10, 0, v43, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v46 = 0;
  }

  v59 = a19;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_contents) = v46;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_rating) = a11;
  v47 = *(v42 + 2600);
  v48 = objc_allocWithZone(v34);
  if (a13)
  {
    v49 = swift_getObjectType();
    swift_beginAccess();
    v50 = (*(v49 + 504))(a12, a13, 0, v47, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v50 = 0;
  }

  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_reviewerName) = v50;
  v51 = *(v42 + 2600);
  v52 = objc_allocWithZone(v34);
  if (a15)
  {
    v53 = swift_getObjectType();
    swift_beginAccess();
    v54 = (*(v53 + 504))(a14, a15, 0, v51, byte_27F236A29);
    sub_24E601704(v61, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v60, &qword_27F235830, &qword_24F93B8C0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24E601704(v61, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v60, &qword_27F235830, &qword_24F93B8C0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v54 = 0;
  }

  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_dateAuthorText) = v54;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_response) = a16;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction) = a17;
  *(v20 + OBJC_IVAR____TtC12GameStoreKit6Review_flowPreviewActionsConfiguration) = a18;
  sub_24E6009C8(v59, v20 + OBJC_IVAR____TtC12GameStoreKit6Review_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v20;
}

uint64_t Review.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v103 = &v97 - v4;
  v107 = sub_24F9285B8();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v102 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = &v97 - v7;
  v8 = sub_24F91F6B8();
  v113 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v101 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v100 = &v97 - v15;
  MEMORY[0x28223BE20](v16);
  v99 = &v97 - v17;
  MEMORY[0x28223BE20](v18);
  v97 = &v97 - v19;
  MEMORY[0x28223BE20](v20);
  v105 = &v97 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v97 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v97 - v26;
  sub_24F928398();
  v28 = sub_24F928348();
  v109 = a1;
  if (v29)
  {
    v30 = a1;
    v114 = v28;
    v115 = v29;
  }

  else
  {
    sub_24F91F6A8();
    v31 = sub_24F91F668();
    v33 = v32;
    (*(v113 + 8))(v10, v8);
    v114 = v31;
    v115 = v33;
    v30 = v109;
  }

  sub_24F92C7F8();
  v34 = *(v12 + 8);
  v35 = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v27, v11);
  v36 = v11;
  v37 = v108;
  v38 = v108 + OBJC_IVAR____TtC12GameStoreKit6Review_id;
  v39 = v117;
  *v38 = v116;
  *(v38 + 16) = v39;
  *(v38 + 32) = v118;
  sub_24F928398();
  v40 = sub_24F928348();
  v42 = v41;
  v113 = v35;
  v34(v24, v11);
  swift_beginAccess();
  v43 = byte_27F236A28;
  v110 = type metadata accessor for LanguageAwareString();
  v44 = objc_allocWithZone(v110);
  v111 = v34;
  v112 = v11;
  if (v42)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v46 = (*(ObjectType + 504))(v40, v42, 0, v43, byte_27F236A29);
    v34 = v111;
    v36 = v112;
    v30 = v109;
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v46 = 0;
  }

  *(v37 + 16) = v46;
  v47 = v105;
  sub_24F928398();
  v48 = v98;
  sub_24F928288();
  v34(v47, v36);
  sub_24E6009C8(v48, v37 + OBJC_IVAR____TtC12GameStoreKit6Review_date, &unk_27F22EC30, &qword_24F939880);
  sub_24F928398();
  v49 = sub_24F928348();
  v51 = v50;
  v34(v47, v36);
  v52 = (v37 + OBJC_IVAR____TtC12GameStoreKit6Review_dateText);
  *v52 = v49;
  v52[1] = v51;
  sub_24F928398();
  v53 = sub_24F928348();
  v55 = v54;
  v34(v47, v36);
  v56 = (v37 + OBJC_IVAR____TtC12GameStoreKit6Review_badge);
  *v56 = v53;
  v56[1] = v55;
  v57 = v97;
  sub_24F928398();
  v58 = sub_24F928348();
  v60 = v59;
  v34(v57, v36);
  v61 = byte_27F236A28;
  v62 = objc_allocWithZone(v110);
  if (v60)
  {
    v63 = swift_getObjectType();
    swift_beginAccess();
    v64 = (*(v63 + 504))(v58, v60, 0, v61, byte_27F236A29);
    v34 = v111;
    v36 = v112;
    v30 = v109;
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v64 = 0;
  }

  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_contents) = v64;
  v65 = v99;
  sub_24F928398();
  v66 = sub_24F9282A8();
  v68 = v67;
  v34(v65, v36);
  if (v68)
  {
    v69 = 0;
  }

  else
  {
    v69 = v66;
  }

  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_rating) = v69;
  v70 = v100;
  sub_24F928398();
  v71 = sub_24F928348();
  v73 = v72;
  v34(v70, v36);
  v74 = byte_27F236A28;
  v75 = objc_allocWithZone(v110);
  if (v73)
  {
    v76 = swift_getObjectType();
    swift_beginAccess();
    v77 = (*(v76 + 504))(v71, v73, 0, v74, byte_27F236A29);
    v34 = v111;
    v36 = v112;
    v30 = v109;
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v77 = 0;
  }

  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_reviewerName) = v77;
  v78 = v101;
  sub_24F928398();
  v79 = sub_24F928348();
  v81 = v80;
  v34(v78, v36);
  v82 = byte_27F236A28;
  v83 = objc_allocWithZone(v110);
  if (v81)
  {
    v84 = swift_getObjectType();
    swift_beginAccess();
    v85 = (*(v84 + 504))(v79, v81, 0, v82, byte_27F236A29);
    swift_deallocPartialClassInstance();
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v85 = 0;
  }

  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_dateAuthorText) = v85;
  type metadata accessor for Response(0);
  v86 = v105;
  sub_24F928398();
  v110 = *(v106 + 16);
  v87 = v102;
  v88 = v104;
  v89 = v107;
  (v110)(v102, v104, v107);
  sub_24F22D87C(&qword_27F23CB40, type metadata accessor for Response, &protocol conformance descriptor for Response);
  sub_24F929548();
  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_response) = v119;
  type metadata accessor for Action(0);
  sub_24F928398();
  v90 = static Action.tryToMakeInstance(byDeserializing:using:)(v86, v88);
  v111(v86, v112);
  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction) = v90;
  type metadata accessor for FlowPreviewActionsConfiguration();
  sub_24F928398();
  v91 = v89;
  v92 = v110;
  (v110)(v87, v88, v91);
  sub_24F22D87C(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration, &protocol conformance descriptor for FlowPreviewActionsConfiguration);
  sub_24F929548();
  *(v37 + OBJC_IVAR____TtC12GameStoreKit6Review_flowPreviewActionsConfiguration) = v119;
  sub_24F929608();
  sub_24F928398();
  v93 = v107;
  (v92)(v87, v88, v107);
  v94 = v103;
  sub_24F929548();
  (*(v106 + 8))(v88, v93);
  v111(v30, v112);
  v95 = v108;
  sub_24E6009C8(v94, v108 + OBJC_IVAR____TtC12GameStoreKit6Review_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v95;
}

uint64_t sub_24F22D87C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *Review.title.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t Review.dateText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_dateText);

  return v1;
}

uint64_t Review.badge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_badge);

  return v1;
}

void *Review.contents.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_contents);
  v2 = v1;
  return v1;
}

void *Review.reviewerName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_reviewerName);
  v2 = v1;
  return v1;
}

void *Review.dateAuthorText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_dateAuthorText);
  v2 = v1;
  return v1;
}

uint64_t sub_24F22DAB8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24F22D87C(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t Review.deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_date, &unk_27F22EC30, &qword_24F939880);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Review_id);
  return v0;
}

uint64_t Review.__deallocating_deinit()
{
  Review.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F22DCC4@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit6Review_moreAction);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24F22D87C(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t Response.__allocating_init(id:date:dateText:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = v14 + OBJC_IVAR____TtC12GameStoreKit8Response_id;
  v30 = a1;
  sub_24E60169C(a1, &v33, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v34 + 1))
  {
    v16 = v34;
    *v15 = v33;
    *(v15 + 16) = v16;
    *(v15 + 32) = v35;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v19 = v18;
    (*(v11 + 8))(v13, v10);
    v31 = v17;
    v32 = v19;
    sub_24F92C7F8();
    sub_24E601704(&v33, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E60169C(a2, v14 + OBJC_IVAR____TtC12GameStoreKit8Response_date, &unk_27F22EC30, &qword_24F939880);
  v20 = (v14 + OBJC_IVAR____TtC12GameStoreKit8Response_dateText);
  *v20 = a3;
  v20[1] = a4;
  swift_beginAccess();
  v21 = byte_27F236A28;
  v22 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  v23 = v29;
  if (v29)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v25 = (*(ObjectType + 504))(v28, v23, 0, v21, byte_27F236A29);
    sub_24E601704(a2, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24E601704(a2, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(v30, &qword_27F235830, &qword_24F93B8C0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v25 = 0;
  }

  *(v14 + OBJC_IVAR____TtC12GameStoreKit8Response_contents) = v25;
  return v14;
}

uint64_t Response.init(id:date:dateText:contents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v34 = a5;
  v13 = sub_24F91F6B8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E60169C(a1, &v37, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v38 + 1))
  {
    v40 = v37;
    v41 = v38;
    v42 = v39;
  }

  else
  {
    sub_24F91F6A8();
    v17 = sub_24F91F668();
    v33 = a2;
    v18 = a3;
    v19 = a1;
    v20 = a6;
    v21 = v17;
    v23 = v22;
    (*(v14 + 8))(v16, v13);
    v35 = v21;
    v36 = v23;
    a6 = v20;
    a1 = v19;
    a3 = v18;
    a2 = v33;
    sub_24F92C7F8();
    sub_24E601704(&v37, &qword_27F235830, &qword_24F93B8C0);
  }

  v24 = v7 + OBJC_IVAR____TtC12GameStoreKit8Response_id;
  v25 = v41;
  *v24 = v40;
  *(v24 + 16) = v25;
  *(v24 + 32) = v42;
  sub_24E60169C(a2, v7 + OBJC_IVAR____TtC12GameStoreKit8Response_date, &unk_27F22EC30, &qword_24F939880);
  v26 = (v7 + OBJC_IVAR____TtC12GameStoreKit8Response_dateText);
  *v26 = a3;
  v26[1] = a4;
  swift_beginAccess();
  v27 = byte_27F236A28;
  v28 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  if (a6)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v30 = (*(ObjectType + 504))(v34, a6, 0, v27, byte_27F236A29);
    sub_24E601704(a2, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_24E601704(a2, &unk_27F22EC30, &qword_24F939880);
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v30 = 0;
  }

  *(v7 + OBJC_IVAR____TtC12GameStoreKit8Response_contents) = v30;
  return v7;
}

uint64_t sub_24F22E448(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = swift_allocObject();
  a3(a1, a2);
  return v6;
}

uint64_t Response.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v46 - v4;
  v5 = sub_24F91F6B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_24F928388();
  v9 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - v16;
  v49 = a1;
  sub_24F928398();
  v18 = sub_24F928348();
  if (v19)
  {
    v51 = v18;
    v52 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v6 + 8))(v8, v5);
    v51 = v20;
    v52 = v22;
  }

  sub_24F92C7F8();
  v23 = *(v9 + 8);
  v23(v17, v56);
  v24 = v50;
  v25 = v50 + OBJC_IVAR____TtC12GameStoreKit8Response_id;
  v26 = v54;
  *v25 = v53;
  *(v25 + 16) = v26;
  *(v25 + 32) = v55;
  v27 = v49;
  sub_24F928398();
  v28 = v47;
  sub_24F928288();
  v29 = v56;
  v23(v14, v56);
  sub_24E6009C8(v28, v24 + OBJC_IVAR____TtC12GameStoreKit8Response_date, &unk_27F22EC30, &qword_24F939880);
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v33 = v14;
  v34 = v27;
  v23(v33, v29);
  v35 = (v24 + OBJC_IVAR____TtC12GameStoreKit8Response_dateText);
  *v35 = v30;
  v35[1] = v32;
  sub_24F928398();
  v36 = sub_24F928348();
  v38 = v37;
  v23(v11, v29);
  swift_beginAccess();
  v39 = byte_27F236A28;
  v40 = objc_allocWithZone(type metadata accessor for LanguageAwareString());
  if (v38)
  {
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v42 = (*(ObjectType + 504))(v36, v38, 0, v39, byte_27F236A29);
    v43 = sub_24F9285B8();
    (*(*(v43 - 8) + 8))(v48, v43);
    v23(v34, v56);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v44 = sub_24F9285B8();
    (*(*(v44 - 8) + 8))(v48, v44);
    v23(v27, v56);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    v42 = 0;
  }

  result = v50;
  *(v50 + OBJC_IVAR____TtC12GameStoreKit8Response_contents) = v42;
  return result;
}

uint64_t Response.dateText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_dateText);

  return v1;
}

void *Response.contents.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_contents);
  v2 = v1;
  return v1;
}

uint64_t Response.deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_date, &unk_27F22EC30, &qword_24F939880);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_id);
  return v0;
}

uint64_t Response.__deallocating_deinit()
{
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_date, &unk_27F22EC30, &qword_24F939880);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit8Response_id);

  return swift_deallocClassInstance();
}

uint64_t sub_24F22EC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X4>, uint64_t (*a4)(uint64_t, uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a3(0);
  v10 = swift_allocObject();
  result = a4(a1, a2);
  if (!v5)
  {
    *a5 = v10;
  }

  return result;
}

void sub_24F22ECF8(uint64_t a1)
{
  sub_24F22EEE8(319, &qword_27F21A4A0, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    sub_24F22EEE8(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24F22EEE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24F22EF44(uint64_t a1)
{
  sub_24F22EEE8(319, &qword_27F21A4A0, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double CGRect.rounded(originRule:sizeRule:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = CGPoint.rounded(_:)(a1, a3, a4);
  CGSize.rounded(_:)(a2, a5, a6);
  return v9;
}

double CGRect.rounded(_:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = CGPoint.rounded(_:)(a1, a2, a3);
  CGSize.rounded(_:)(a1, a4, a5);
  return v8;
}

double CGRect.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3, double a4, double a5, double a6)
{
  [a2 displayScale];
  if (v12 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v13 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  v14 = CGFloat.rounded(_:toScale:)(a1, v13, a3);
  [a2 displayScale];
  if (v15 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v16 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v16, a4);
  [a2 displayScale];
  if (v17 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v18 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v18, a5);
  [a2 displayScale];
  if (v19 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v20 = *&qword_27F23DC18;
  }

  else
  {
    [a2 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v20, a6);
  return v14;
}

{
  v12 = [a2 traitCollection];
  [v12 displayScale];
  if (v13 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v14 = *&qword_27F23DC18;
  }

  else
  {
    [v12 displayScale];
  }

  v15 = CGFloat.rounded(_:toScale:)(a1, v14, a3);
  [v12 displayScale];
  if (v16 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v17 = *&qword_27F23DC18;
  }

  else
  {
    [v12 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v17, a4);

  v18 = [a2 traitCollection];
  [v18 displayScale];
  if (v19 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v20 = *&qword_27F23DC18;
  }

  else
  {
    [v18 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v20, a5);
  [v18 displayScale];
  if (v21 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v22 = *&qword_27F23DC18;
  }

  else
  {
    [v18 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v22, a6);

  return v15;
}

double CGRect.rounded(originRule:sizeRule:toScaleOf:)(uint64_t a1, uint64_t a2, id a3, double a4, double a5, double a6, double a7)
{
  v14 = [a3 traitCollection];
  [v14 displayScale];
  if (v15 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v16 = *&qword_27F23DC18;
  }

  else
  {
    [v14 displayScale];
  }

  v17 = CGFloat.rounded(_:toScale:)(a1, v16, a4);
  [v14 displayScale];
  if (v18 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v19 = *&qword_27F23DC18;
  }

  else
  {
    [v14 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v19, a5);

  v20 = [a3 traitCollection];
  [v20 displayScale];
  if (v21 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v22 = *&qword_27F23DC18;
  }

  else
  {
    [v20 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v22, a6);
  [v20 displayScale];
  if (v23 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v24 = *&qword_27F23DC18;
  }

  else
  {
    [v20 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v24, a7);

  return v17;
}

{
  [a3 displayScale];
  if (v14 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v15 = *&qword_27F23DC18;
  }

  else
  {
    [a3 displayScale];
  }

  v16 = CGFloat.rounded(_:toScale:)(a1, v15, a4);
  [a3 displayScale];
  if (v17 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v18 = *&qword_27F23DC18;
  }

  else
  {
    [a3 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a1, v18, a5);
  [a3 displayScale];
  if (v19 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v20 = *&qword_27F23DC18;
  }

  else
  {
    [a3 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v20, a6);
  [a3 displayScale];
  if (v21 <= 0.0)
  {
    if (qword_27F211070 != -1)
    {
      swift_once();
    }

    v22 = *&qword_27F23DC18;
  }

  else
  {
    [a3 displayScale];
  }

  CGFloat.rounded(_:toScale:)(a2, v22, a7);
  return v16;
}

uint64_t AccountSectionInfoListItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AccountSectionInfoListItem.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t AccountSectionInfoListItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AccountSectionInfoListItem.value.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AccountSectionInfoListItem.__allocating_init(id:title:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  sub_24E65E064(a1, &v25);
  if (*(&v26 + 1))
  {
    sub_24E9BBAA8(a1);
    v28 = v25;
    v29 = v26;
    v30 = v27;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v24[0] = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = v15;
    v21 = v20;
    (*(v11 + 8))(v13, v10);
    v24[1] = v19;
    v24[2] = v21;
    a5 = v18;
    a4 = v17;
    a3 = v16;
    a2 = v24[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v25);
  }

  v22 = v29;
  *(v14 + 48) = v28;
  *(v14 + 64) = v22;
  *(v14 + 80) = v30;
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a4;
  *(v14 + 40) = a5;
  return v14;
}

uint64_t AccountSectionInfoListItem.init(id:title:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v26);
  if (*(&v27 + 1))
  {
    sub_24E9BBAA8(a1);
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v26);
  }

  v23 = v30;
  *(v6 + 48) = v29;
  *(v6 + 64) = v23;
  *(v6 + 80) = v31;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  return v6;
}

uint64_t *AccountSectionInfoListItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v50 = a2;
  v6 = *v4;
  v47 = v3;
  v48 = v6;
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v44 - v18;
  v56 = a1;
  sub_24F928398();
  v20 = sub_24F928348();
  if (v21)
  {
    v51 = v20;
    v52 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v23 = v8;
    v25 = v24;
    (*(v23 + 8))(v10, v7);
    v51 = v22;
    v52 = v25;
  }

  sub_24F92C7F8();
  v26 = *(v12 + 8);
  v26(v19, v11);
  v27 = 0x656C746974;
  v28 = v54;
  *(v4 + 3) = v53;
  *(v4 + 4) = v28;
  v4[10] = v55;
  v29 = v56;
  sub_24F928398();
  v30 = sub_24F928348();
  v32 = v31;
  v26(v16, v11);
  if (!v32)
  {
    goto LABEL_8;
  }

  v45 = v30;
  v46 = v4;
  v27 = 0x65756C6176;
  v33 = v26;
  v34 = v49;
  sub_24F928398();
  v35 = sub_24F928348();
  v37 = v36;
  v38 = v34;
  v26 = v33;
  v33(v38, v11);
  if (!v37)
  {

    v4 = v46;
LABEL_8:
    v40 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v41 = v27;
    v41[1] = 0xE500000000000000;
    v41[2] = v48;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    v42 = sub_24F9285B8();
    (*(*(v42 - 8) + 8))(v50, v42);
    v26(v56, v11);
    sub_24E6585F8((v4 + 6));
    type metadata accessor for AccountSectionInfoListItem();
    swift_deallocPartialClassInstance();
    return v4;
  }

  v39 = sub_24F9285B8();
  (*(*(v39 - 8) + 8))(v50, v39);
  v33(v29, v11);
  v4 = v46;
  v46[2] = v45;
  v4[3] = v32;
  v4[4] = v35;
  v4[5] = v37;
  return v4;
}

uint64_t AccountSectionInfoListItem.deinit()
{

  sub_24E6585F8(v0 + 48);
  return v0;
}

uint64_t AccountSectionInfoListItem.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t *sub_24F230290@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for AccountSectionInfoListItem();
  v7 = swift_allocObject();
  result = AccountSectionInfoListItem.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t FriendSuggestionSwooshShelfIntent.shelfID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FriendSuggestionSwooshShelfIntent.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void FriendSuggestionSwooshShelfIntent.orientation.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t sub_24F2303E4()
{
  v1 = 0x4449666C656873;
  v2 = 0x737265746C6966;
  if (*v0 != 2)
  {
    v2 = 0x7461746E6569726FLL;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_24F230464@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F230DC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F23048C(uint64_t a1)
{
  v2 = sub_24F230794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2304C8(uint64_t a1)
{
  v2 = sub_24F230794();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FriendSuggestionSwooshShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB78, &unk_24F9D8588);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = v7;
  v8 = *(v1 + 32);
  v15 = *(v1 + 40);
  v16 = v8;
  v22 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F230794();
  sub_24F92D128();
  LOBYTE(v20) = 0;
  v9 = v19;
  sub_24F92CD08();
  if (!v9)
  {
    v11 = v15;
    v12 = v16;
    v13 = v22;
    LOBYTE(v20) = 1;
    sub_24F92CD08();
    v20 = v12;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8, &qword_24F993850);
    sub_24F230B38(&qword_27F22D0C8, sub_24ECA4FDC, MEMORY[0x277D83948]);
    sub_24F92CCF8();
    v20 = v11;
    v21 = v13;
    v23 = 3;
    sub_24E77738C();
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F230794()
{
  result = qword_27F23CB80;
  if (!qword_27F23CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CB80);
  }

  return result;
}

uint64_t FriendSuggestionSwooshShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CB88, &qword_24F9D8598);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F230794();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v9 = sub_24F92CC28();
  v21 = v10;
  LOBYTE(v22) = 1;
  v11 = sub_24F92CC28();
  v20 = v12;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D0A8, &qword_24F993850);
  v24 = 2;
  sub_24F230B38(&qword_27F22D0B0, sub_24ECA4F58, MEMORY[0x277D83978]);
  sub_24F92CC18();
  v18 = v22;
  v24 = 3;
  sub_24E777594();
  sub_24F92CC18();
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  v14 = v22;
  v16 = v23;
  *a2 = v9;
  *(a2 + 8) = v15;
  v17 = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F230B38(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22D0A8, &qword_24F993850);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F230C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_24F230C48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F230CBC()
{
  result = qword_27F23CB90;
  if (!qword_27F23CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CB90);
  }

  return result;
}

unint64_t sub_24F230D14()
{
  result = qword_27F23CB98;
  if (!qword_27F23CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CB98);
  }

  return result;
}

unint64_t sub_24F230D6C()
{
  result = qword_27F23CBA0;
  if (!qword_27F23CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CBA0);
  }

  return result;
}

uint64_t sub_24F230DC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449666C656873 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t HttpAction.__allocating_init(url:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  HttpAction.init(url:presentationStyle:actionMetrics:)(a1, a2, a3);
  return v6;
}

uint64_t HttpActionMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 5522759;
  v3 = 0x534E4F4954504FLL;
  if (v1 != 6)
  {
    v3 = 0x4543415254;
  }

  v4 = 0x4554454C4544;
  if (v1 != 4)
  {
    v4 = 0x5443454E4E4F43;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1145128264;
  if (v1 != 2)
  {
    v5 = 5526864;
  }

  if (*v0)
  {
    v2 = 1414745936;
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

GameStoreKit::HttpActionMethod_optional __swiftcall HttpActionMethod.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void sub_24F231134(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5522759;
  v5 = 0xE700000000000000;
  v6 = 0x534E4F4954504FLL;
  if (v2 != 6)
  {
    v6 = 0x4543415254;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x4554454C4544;
  if (v2 != 4)
  {
    v8 = 0x5443454E4E4F43;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1145128264;
  if (v2 != 2)
  {
    v10 = 5526864;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = 1414745936;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

void *HttpAction.init(url:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a2;
  v7 = sub_24F91F6B8();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_24F928AD8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_method) = 0;
  v16 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_headers;
  *(v4 + v16) = sub_24E6086DC(MEMORY[0x277D84F90]);
  v17 = (v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_successAction) = 0;
  *(v4 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_failureAction) = 0;
  v18 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_url;
  v19 = sub_24F91F4A8();
  v20 = *(v19 - 8);
  v21 = v4 + v18;
  v22 = v15;
  v23 = a1;
  (*(v20 + 16))(v21, a1, v19);
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  (*(v13 + 16))(v22, a3, v12);
  v24 = sub_24F929608();
  (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
  v25 = (v4 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v25 = 0u;
  v25[1] = 0u;
  sub_24E65E064(v51, &v45);
  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
  }

  else
  {
    v26 = v39;
    sub_24F91F6A8();
    v38 = v11;
    v37 = a3;
    v27 = v23;
    v28 = v22;
    v29 = sub_24F91F668();
    v31 = v30;
    (*(v40 + 8))(v26, v41);
    v43 = v29;
    v44 = v31;
    v22 = v28;
    v23 = v27;
    a3 = v37;
    v11 = v38;
    sub_24F92C7F8();
    sub_24E601704(&v45, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v13 + 8))(a3, v12);
  (*(v20 + 8))(v23, v19);
  sub_24E601704(v51, &qword_27F235830, &qword_24F93B8C0);
  v32 = v4 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v32 + 4) = v50;
  v33 = v49;
  *v32 = v48;
  *(v32 + 1) = v33;
  sub_24E65E0D4(v11, v4 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v4[2] = 0;
  v4[3] = 0;
  v34 = v42;
  v4[4] = 0;
  v4[5] = v34;
  (*(v13 + 32))(v4 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v22, v12);
  return v4;
}

uint64_t *HttpAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v126 = a2;
  v108 = *v3;
  v125 = sub_24F9285B8();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v117 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v6 - 8);
  v103 = &v94 - v7;
  v107 = sub_24F928E68();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v99 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v94 - v10;
  v128 = sub_24F928388();
  v12 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v116 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v114 = &v94 - v15;
  MEMORY[0x28223BE20](v16);
  v113 = &v94 - v17;
  MEMORY[0x28223BE20](v18);
  v112 = &v94 - v19;
  MEMORY[0x28223BE20](v20);
  v110 = &v94 - v21;
  MEMORY[0x28223BE20](v22);
  v105 = &v94 - v23;
  MEMORY[0x28223BE20](v24);
  v100 = &v94 - v25;
  MEMORY[0x28223BE20](v26);
  v119 = &v94 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v94 - v29;
  v31 = sub_24F91F4A8();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v122 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_method;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_method) = 0;
  v34 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_headers;
  v35 = sub_24E6086DC(MEMORY[0x277D84F90]);
  v118 = v34;
  *(v3 + v34) = v35;
  v36 = (v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body);
  *v36 = 0;
  v36[1] = 0;
  v101 = v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest) = 0;
  v102 = v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication) = 0;
  v104 = v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken) = 0;
  v109 = (v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount) = 0;
  v111 = v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache) = 0;
  v121 = (v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_successAction);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_successAction) = 0;
  v37 = v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_failureAction;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_failureAction) = 0;
  v120 = a1;
  sub_24F928398();
  sub_24F928268();
  v38 = v32;
  v115 = v12;
  v39 = (v12 + 8);
  v40 = *(v12 + 8);
  v40(v30, v128);
  if ((*(v38 + 48))(v11, 1, v31) == 1)
  {
    sub_24E601704(v11, &qword_27F228530, &unk_24F93C6E0);
    v41 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v42 = 7107189;
    v43 = v108;
    v42[1] = 0xE300000000000000;
    v42[2] = v43;
    (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D22530], v41);
    swift_willThrow();
    (*(v124 + 8))(v126, v125);
    v40(v120, v128);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v95 = v36;
    v96 = v37;
    v44 = v122;
    (*(v38 + 32))(v122, v11, v31);
    v97 = v38;
    v45 = *(v38 + 16);
    v108 = v31;
    v45(v3 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_url, v44, v31);
    v46 = v119;
    v47 = v120;
    sub_24F928398();
    sub_24EC26FC8();
    sub_24F928248();
    v40(v46, v128);
    v48 = v127;
    v49 = v47;
    if (v127 != 8)
    {
      v50 = v98;
      swift_beginAccess();
      *(v3 + v50) = v48;
    }

    v51 = v100;
    v52 = v49;
    sub_24F928398();
    v53 = v103;
    sub_24F9281F8();
    v100 = v39;
    v40(v51, v128);
    v54 = v106;
    v55 = v107;
    v56 = (*(v106 + 48))(v53, 1, v107);
    v94 = v3;
    if (v56 == 1)
    {
      sub_24E601704(v53, qword_27F221C40, &unk_24F967D80);
    }

    else
    {
      v57 = v99;
      (*(v54 + 32))(v99, v53, v55);
      v58 = v54;
      v59 = v123;
      v60 = sub_24F928E38();
      v123 = v59;
      (*(v58 + 8))(v57, v55);
      v61 = v118;
      swift_beginAccess();
      *(v3 + v61) = v60;
    }

    v62 = v95;
    v63 = v119;
    sub_24F928398();
    v64 = sub_24F928348();
    v66 = v65;
    v67 = v128;
    v68 = v40;
    v40(v63, v128);
    swift_beginAccess();
    *v62 = v64;
    v62[1] = v66;

    v69 = v105;
    sub_24F928398();
    LOBYTE(v64) = sub_24F928278();
    v40(v69, v67);
    v70 = v101;
    swift_beginAccess();
    *v70 = v64 & 1;
    v71 = v110;
    sub_24F928398();
    LOBYTE(v64) = sub_24F928278();
    v40(v71, v67);
    v72 = v102;
    swift_beginAccess();
    *v72 = v64 & 1;
    v73 = v112;
    sub_24F928398();
    LOBYTE(v64) = sub_24F928278();
    v40(v73, v67);
    v74 = v104;
    swift_beginAccess();
    *v74 = v64 & 1;
    v75 = v113;
    sub_24F928398();
    v76 = sub_24F928258();
    LOBYTE(v66) = v77;
    v40(v75, v67);
    if (v66)
    {
      v76 = 0;
    }

    v78 = v109;
    swift_beginAccess();
    *v78 = v76;
    v79 = v114;
    sub_24F928398();
    v80 = sub_24F928278();
    v40(v79, v67);
    v81 = v111;
    swift_beginAccess();
    *v81 = v80 & 1;
    type metadata accessor for Action(0);
    v3 = v63;
    sub_24F928398();
    v82 = v126;
    v83 = static Action.tryToMakeInstance(byDeserializing:using:)(v63, v126);
    v68(v63, v67);
    v84 = v121;
    swift_beginAccess();
    *v84 = v83;

    sub_24F928398();
    v85 = static Action.tryToMakeInstance(byDeserializing:using:)(v3, v82);
    v121 = v68;
    v68(v3, v67);
    v86 = v96;
    swift_beginAccess();
    *v86 = v85;

    v87 = v116;
    (*(v115 + 16))(v116, v52, v67);
    v88 = v124;
    v89 = v117;
    v90 = v125;
    (*(v124 + 16))(v117, v82, v125);
    v91 = v123;
    v92 = Action.init(deserializing:using:)(v87, v89);
    if (!v91)
    {
      v3 = v92;
    }

    (*(v88 + 8))(v126, v90);
    (v121)(v52, v67);
    (*(v97 + 8))(v122, v108);
  }

  return v3;
}

void sub_24F232550(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_24F928348();
  v8 = v7;
  if (v7)
  {
    v9 = v6;
  }

  else
  {
    a1 = 0;
    a2 = 0;
    v9 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v9;
  a3[3] = v8;
}

uint64_t HttpAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_url;
  v4 = sub_24F91F4A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void HttpAction.method.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_method;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void HttpAction.method.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_method;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

double HttpAction.headers.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t HttpAction.headers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_headers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.body.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t HttpAction.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit10HttpAction_body);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t HttpAction.isStoreRequest.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

void HttpAction.isStoreRequest.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_isStoreRequest;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.needsAuthentication.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication;
  swift_beginAccess();
  return *(v0 + v1);
}

void HttpAction.needsAuthentication.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsAuthentication;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.needsMediaToken.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken;
  swift_beginAccess();
  return *(v0 + v1);
}

void HttpAction.needsMediaToken.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_needsMediaToken;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.retryCount.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void HttpAction.retryCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_retryCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.disableCache.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache;
  swift_beginAccess();
  return *(v0 + v1);
}

void HttpAction.disableCache.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_disableCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_24F232F3C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_url;
  v2 = sub_24F91F4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return result;
}

uint64_t HttpAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);
  v3 = OBJC_IVAR____TtC12GameStoreKit10HttpAction_url;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t HttpAction.__deallocating_deinit()
{
  HttpAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24F233198()
{
  result = qword_27F23CBA8;
  if (!qword_27F23CBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CBA8);
  }

  return result;
}

uint64_t type metadata accessor for HttpAction(uint64_t a1)
{
  result = qword_27F23CBB0;
  if (!qword_27F23CBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F233250(uint64_t a1)
{
  result = sub_24F91F4A8();
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

uint64_t sub_24F233394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924258();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v10 = sub_24F927618();
  v12 = v11;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CBC0, &unk_24F9D8990) + 36);
  v14 = *(v6 + 28);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24F924B38();
  (*(*(v16 - 8) + 104))(&v8[v14], v15, v16);
  *v8 = v9;
  *(v8 + 1) = v9;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  sub_24F923658();
  sub_24E6EB910(v8, v13);
  v18 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8, &qword_24FA00310) + 36);
  v19 = v29;
  *v18 = *&v28[8];
  *(v18 + 16) = v19;
  *(v18 + 32) = v30;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CBC8, &qword_24F9D89A0);
  *(v13 + *(v20 + 52)) = v17;
  *(v13 + *(v20 + 56)) = 256;
  v21 = sub_24F927618();
  v23 = v22;
  sub_24E6EB974(v8);
  v24 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CBD0, &qword_24F9D89A8) + 36));
  *v24 = v21;
  v24[1] = v23;
  v25 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CBD8, &qword_24F9D89B0) + 36));
  *v25 = v10;
  v25[1] = v12;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CBE0, &qword_24F9D89B8);
  return (*(*(v26 - 8) + 16))(a2, a1, v26);
}

unint64_t sub_24F2335EC()
{
  result = qword_27F23CBE8;
  if (!qword_27F23CBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23CBC0, &unk_24F9D8990);
    sub_24E602068(&qword_27F23CBF0, &qword_27F23CBE0, &qword_24F9D89B8, MEMORY[0x277CE04B0]);
    sub_24E602068(&qword_27F23CBF8, &qword_27F23CBD8, &qword_24F9D89B0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CBE8);
  }

  return result;
}

id UIColor.inverse.getter()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = 0.0;
  v6[0] = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  if ([v0 getRed:v6 green:&v5 blue:&v4 alpha:&v3])
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 - v6[0] green:1.0 - v5 blue:1.0 - v4 alpha:v3];
  }

  return v2;
}

GameStoreKit::ControllerRequirement_optional __swiftcall ControllerRequirement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ControllerRequirement.rawValue.getter()
{
  v1 = 0xD000000000000022;
  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_24F2338A8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F233954(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F2339EC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F233AA0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = 0xD000000000000022;
  v4 = "";
  v5 = "SIRI_REMOTE_REQUIRED";
  if (*v1 != 2)
  {
    v5 = "CONTROLLER_REQUIRED";
  }

  if (*v1)
  {
    v3 = 0xD000000000000014;
    v4 = "ONTROLLER_REQUIRED";
  }

  if (*v1 > 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v3;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

GameStoreKit::SpatialControllerRequirement_optional __swiftcall SpatialControllerRequirement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SpatialControllerRequirement.rawValue.getter()
{
  v1 = 0x4554524F50505553;
  if (*v0 != 1)
  {
    v1 = 0x505055535F544F4ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4445524955514552;
  }
}

unint64_t sub_24F233BD8()
{
  result = qword_27F23CC00;
  if (!qword_27F23CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CC00);
  }

  return result;
}

uint64_t sub_24F233C2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x4554524F50505553;
  v4 = 0xE900000000000044;
  if (v2 != 1)
  {
    v3 = 0x505055535F544F4ELL;
    v4 = 0xED0000444554524FLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4445524955514552;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x4554524F50505553;
  v8 = 0xE900000000000044;
  if (*a2 != 1)
  {
    v7 = 0x505055535F544F4ELL;
    v8 = 0xED0000444554524FLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4445524955514552;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

unint64_t sub_24F233D54()
{
  result = qword_27F23CC08;
  if (!qword_27F23CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23CC08);
  }

  return result;
}

uint64_t sub_24F233DA8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F233E5C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F233EFC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F233FB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE900000000000044;
  v5 = 0x4554524F50505553;
  if (v2 != 1)
  {
    v5 = 0x505055535F544F4ELL;
    v4 = 0xED0000444554524FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4445524955514552;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_24F23404C(char a1)
{
  v2 = *(v1 + qword_27F22F1D0);
  *(v1 + qword_27F22F1D0) = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + qword_27F22F1F0);
    if (a1)
    {
      if (v3)
      {
        v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v5 = *(v4 + 48);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          *(v4 + 48) = v7;
          v8 = v7 == 0;
          swift_beginAccess();
          *(v4 + 40) = v8;
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_24EA6BFA0();
          }
        }
      }
    }

    else if (v3)
    {
      sub_24ED6F318();
    }
  }
}

void sub_24F234130(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v27 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      v12 = qword_27F210788;

      if (v12 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_27F230F98;
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    sub_24F236D8C();
    if ((*(v2 + qword_27F39C790) & 1) != 0 || (v16 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v17 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v18 = *(v17 + 48);
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          __break(1u);
          return;
        }

        *(v17 + 48) = v20;
        v21 = v20 == 0;
        swift_beginAccess();
        *(v17 + 40) = v21;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v22 = v27;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v27);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v22);
      }

      v23 = swift_allocObject();
      swift_weakInit();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = v3;
      swift_allocObject();
      swift_weakInit();
      v25 = sub_24E74EC40();

      v26 = sub_24F92BEF8();
      v28[3] = v25;
      v28[4] = MEMORY[0x277D225C0];
      v28[0] = v26;
      sub_24F92A958();
      sub_24E824448(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }
}

void sub_24F234574(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v28 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      v12 = qword_27F210788;

      if (v12 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_27F230F98;
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    sub_24F237D10(sub_24E94E5C8, sub_24E94E5C8, type metadata accessor for ArcadePage, sub_24F24771C, v16);
    if (*(v2 + qword_27F39C790) == 1 || (v17 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v19 = *(v18 + 48);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return;
        }

        *(v18 + 48) = v21;
        v22 = v21 == 0;
        swift_beginAccess();
        *(v18 + 40) = v22;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v23 = v28;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v28);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v23);
      }

      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v3;
      swift_allocObject();
      swift_weakInit();
      v26 = sub_24E74EC40();

      v27 = sub_24F92BEF8();
      v29[3] = v26;
      v29[4] = MEMORY[0x277D225C0];
      v29[0] = v27;
      sub_24F92A958();
      sub_24E824448(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

void sub_24F234A0C(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v28 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      v12 = qword_27F210788;

      if (v12 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_27F230F98;
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    sub_24F23756C(v16);
    if (*(v2 + qword_27F39C790) == 1 || (v17 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v19 = *(v18 + 48);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return;
        }

        *(v18 + 48) = v21;
        v22 = v21 == 0;
        swift_beginAccess();
        *(v18 + 40) = v22;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v23 = v28;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v28);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v23);
      }

      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v3;
      swift_allocObject();
      swift_weakInit();
      v26 = sub_24E74EC40();

      v27 = sub_24F92BEF8();
      v29[3] = v26;
      v29[4] = MEMORY[0x277D225C0];
      v29[0] = v27;
      sub_24F92A958();
      sub_24E824448(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

void sub_24F234E54(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v28 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      v12 = qword_27F210788;

      if (v12 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_27F230F98;
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    sub_24F237D10(sub_24E94E5C8, sub_24E94E5C8, type metadata accessor for ReviewsPage, sub_24F249298, v16);
    if (*(v2 + qword_27F39C790) == 1 || (v17 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v19 = *(v18 + 48);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return;
        }

        *(v18 + 48) = v21;
        v22 = v21 == 0;
        swift_beginAccess();
        *(v18 + 40) = v22;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v23 = v28;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v28);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v23);
      }

      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v3;
      swift_allocObject();
      swift_weakInit();
      v26 = sub_24E74EC40();

      v27 = sub_24F92BEF8();
      v29[3] = v26;
      v29[4] = MEMORY[0x277D225C0];
      v29[0] = v27;
      sub_24F92A958();
      sub_24E824448(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

void sub_24F2352EC(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v28 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      v12 = qword_27F210788;

      if (v12 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_27F230F98;
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    sub_24F237D10(sub_24E94E5C8, sub_24E94E5C8, type metadata accessor for SearchFocusPage, sub_24F249408, v16);
    if (*(v2 + qword_27F39C790) == 1 || (v17 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v19 = *(v18 + 48);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return;
        }

        *(v18 + 48) = v21;
        v22 = v21 == 0;
        swift_beginAccess();
        *(v18 + 40) = v22;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v23 = v28;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v28);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v23);
      }

      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v3;
      swift_allocObject();
      swift_weakInit();
      v26 = sub_24E74EC40();

      v27 = sub_24F92BEF8();
      v29[3] = v26;
      v29[4] = MEMORY[0x277D225C0];
      v29[0] = v27;
      sub_24F92A958();
      sub_24E824448(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

void sub_24F235784(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v28 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      v12 = qword_27F210788;

      if (v12 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_27F230F98;
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    sub_24F238564(v16);
    if (*(v2 + qword_27F39C790) == 1 || (v17 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v19 = *(v18 + 48);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return;
        }

        *(v18 + 48) = v21;
        v22 = v21 == 0;
        swift_beginAccess();
        *(v18 + 40) = v22;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v23 = v28;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v28);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v23);
      }

      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v3;
      swift_allocObject();
      swift_weakInit();
      v26 = sub_24E74EC40();

      v27 = sub_24F92BEF8();
      v29[3] = v26;
      v29[4] = MEMORY[0x277D225C0];
      v29[0] = v27;
      sub_24F92A958();
      sub_24E824448(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

void sub_24F235BCC(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v28 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      v12 = qword_27F210788;

      if (v12 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_27F230F98;
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    sub_24F237D10(sub_24E94E5C8, sub_24E94E5C8, type metadata accessor for SearchLandingPage, sub_24F24A354, v16);
    if (*(v2 + qword_27F39C790) == 1 || (v17 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v19 = *(v18 + 48);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return;
        }

        *(v18 + 48) = v21;
        v22 = v21 == 0;
        swift_beginAccess();
        *(v18 + 40) = v22;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v23 = v28;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v28);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v23);
      }

      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v3;
      swift_allocObject();
      swift_weakInit();
      v26 = sub_24E74EC40();

      v27 = sub_24F92BEF8();
      v29[3] = v26;
      v29[4] = MEMORY[0x277D225C0];
      v29[0] = v27;
      sub_24F92A958();
      sub_24E824448(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

void sub_24F236064(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v28 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      v12 = qword_27F210788;

      if (v12 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_27F230F98;
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    sub_24F238D08(v16);
    if (*(v2 + qword_27F39C790) == 1 || (v17 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v19 = *(v18 + 48);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return;
        }

        *(v18 + 48) = v21;
        v22 = v21 == 0;
        swift_beginAccess();
        *(v18 + 40) = v22;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v23 = v28;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v28);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v23);
      }

      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v3;
      swift_allocObject();
      swift_weakInit();
      v26 = sub_24E74EC40();

      v27 = sub_24F92BEF8();
      v29[3] = v26;
      v29[4] = MEMORY[0x277D225C0];
      v29[0] = v27;
      sub_24F92A958();
      sub_24E824448(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

void sub_24F2364AC(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v28 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      v12 = qword_27F210788;

      if (v12 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_27F230F98;
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    sub_24F239498(v16);
    if (*(v2 + qword_27F39C790) == 1 || (v17 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v19 = *(v18 + 48);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return;
        }

        *(v18 + 48) = v21;
        v22 = v21 == 0;
        swift_beginAccess();
        *(v18 + 40) = v22;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v23 = v28;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v28);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v23);
      }

      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v3;
      swift_allocObject();
      swift_weakInit();
      v26 = sub_24E74EC40();

      v27 = sub_24F92BEF8();
      v29[3] = v26;
      v29[4] = MEMORY[0x277D225C0];
      v29[0] = v27;
      sub_24F92A958();
      sub_24E824448(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

void sub_24F2368F4(__n128 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_24F92A088();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 160;
  v9 = *(v1 + qword_27F22F1A8);
  if (v9)
  {
    v28 = v6;
    v10 = *(v1 + qword_27F22F1A8 + 8);
    v11 = *(v1 + qword_27F22F1F0);
    if (v11)
    {
      v12 = qword_27F210788;

      if (v12 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v13 = qword_27F230F98;
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_requestedTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequestedTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    else
    {
    }

    sub_24F237D10(sub_24E94E5C8, sub_24E94E5C8, type metadata accessor for ArcadeSeeAllGamesPage, sub_24F24A7A4, v16);
    if (*(v2 + qword_27F39C790) == 1 || (v17 & 1) == 0)
    {
      sub_24E824448(v9, v10);
    }

    else
    {
      *(v2 + qword_27F39C790) = 1;
      v9(v2 + qword_27F39C7D0);
      if (v11)
      {
        v18 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v19 = *(v18 + 48);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return;
        }

        *(v18 + 48) = v21;
        v22 = v21 == 0;
        swift_beginAccess();
        *(v18 + 40) = v22;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_24EA6BFA0();
        }
      }

      if (*(v2 + qword_27F39C7D8))
      {
        *v8 = 1;
        v23 = v28;
        (*(v5 + 104))(v8, *MEMORY[0x277D222A0], v28);
        sub_24F92A0D8();
        (*(v5 + 8))(v8, v23);
      }

      v24 = swift_allocObject();
      swift_weakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v3;
      swift_allocObject();
      swift_weakInit();
      v26 = sub_24E74EC40();

      v27 = sub_24F92BEF8();
      v29[3] = v26;
      v29[4] = MEMORY[0x277D225C0];
      v29[0] = v27;
      sub_24F92A958();
      sub_24E824448(v9, v10);

      __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }
}

void sub_24F236D8C()
{
  v1 = v0;
  v2 = sub_24F92A078();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A088();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v1 + qword_27F22F1B0);
  v12 = *(v1 + qword_27F22F1B0);
  if (!v12)
  {
    v19 = 0;
LABEL_7:
    v20 = v11[1];
LABEL_8:
    *v11 = 0;
    v11[1] = 0;
    sub_24E824448(v19, v20);
    return;
  }

  v69 = v8;
  v70 = v2;
  v13 = v11[1];

  v15 = v12(v14);
  sub_24E824448(v12, v13);
  v71 = v15;
  if (!v15)
  {
    v19 = *v11;
    goto LABEL_7;
  }

  v16 = *(v1 + qword_27F22F1B8);
  if (v16)
  {
    v17 = *(v1 + qword_27F22F1B8 + 8);

    v18 = v16(v71);
    sub_24E824448(v16, v17);
  }

  else
  {
    v18 = v71;
  }

  v21 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v18 + v21) + 16))
  {

    v19 = *v11;
    v20 = v11[1];
    goto LABEL_8;
  }

  v63 = v3;
  *(v1 + qword_27F22F198) = v18;

  v22 = *(v18 + v21);
  v68 = qword_27F22F1A0;
  *(v1 + qword_27F22F1A0) = v22;

  v23 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
  swift_beginAccess();
  v65 = v23;
  v24 = *(v18 + v23);
  v25 = qword_27F39C780;
  swift_beginAccess();
  *(v1 + v25) = v24;

  v67 = *(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
  if ((v67 & 1) == 0)
  {
    v26 = *(v1 + qword_27F22F1F0);
    if (v26)
    {
      v27 = *(v26 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v28 = *(v27 + 48);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
LABEL_44:
        __break(1u);
        return;
      }

      *(v27 + 48) = v30;
      v31 = v30 == 0;
      swift_beginAccess();
      *(v27 + 40) = v31;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v1 + qword_27F39C7D8))
    {
      *v10 = 1;
      v32 = v69;
      (*(v7 + 104))(v10, *MEMORY[0x277D222A0], v69);
      sub_24F92A0D8();
      (*(v7 + 8))(v10, v32);
    }

    sub_24E60169C(v18 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &v73, &qword_27F2129B0, &unk_24F945320);
    v76 = 0;
    v77 = 0;
    v33 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v73, v1 + v33);
    swift_endAccess();
    sub_24E9B7D88(v1 + v33, v72);
    sub_24F92AD88();
    sub_24E94E128(v72);
    sub_24E94E128(&v73);
  }

  v64 = v5;
  v69 = v11;
  v34 = *(v1 + qword_27F39C7A0);
  v35 = v18;
  v36 = *&v68[v1];
  v37 = MEMORY[0x277D84F90];
  v72[0] = MEMORY[0x277D84F90];
  v38 = *(v36 + 16);
  v68 = v35;

  if (!v38)
  {
    goto LABEL_30;
  }

  v39 = 0;
  v40 = v36 + 32;
  v61 = v38 - 1;
  v62 = v36 + 32;
  v66 = v34;
  do
  {
    v41 = v40 + 40 * v39;
    v42 = v39;
    while (1)
    {
      if (v42 >= *(v36 + 16))
      {
        __break(1u);
        goto LABEL_44;
      }

      sub_24E65864C(v41, &v73);
      if (*(*(v1 + v25) + 16))
      {
        break;
      }

LABEL_22:
      ++v42;
      sub_24E6585F8(&v73);
      v41 += 40;
      if (v38 == v42)
      {
        goto LABEL_30;
      }
    }

    sub_24E76D934(&v73);
    if ((v43 & 1) == 0)
    {

      goto LABEL_22;
    }

    v44 = sub_24E6585F8(&v73);
    MEMORY[0x253050F00](v44);
    if (*((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v39 = v42 + 1;
    sub_24F92B638();
    v37 = v72[0];
    v40 = v62;
  }

  while (v61 != v42);
LABEL_30:

  v45 = v68;
  v73 = v68;
  v74 = v37;
  v46 = v67;
  v75 = v67;
  sub_24F92AD88();
  sub_24F24D968(v73, v74, v75);
  if (v46)
  {

    v47 = v69;
  }

  else
  {

    sub_24F24697C(v48, 0, v1);

    v49 = *(v1 + qword_27F22F1F0);
    v47 = v69;
    v50 = v70;
    v51 = v64;
    if (v49)
    {
      v52 = *(v49 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v53 = *(v52 + 48);
      if (v53 <= 0)
      {
        goto LABEL_38;
      }

      v54 = v53 - 1;
      *(v52 + 48) = v54;
      v55 = v54 == 0;
      swift_beginAccess();
      *(v52 + 40) = v55;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }

      if (!*(v52 + 48))
      {
LABEL_38:
        PendingPageRender.tryToEstablishUserReadyTime()();
      }
    }

    if (*(v1 + qword_27F39C7D8))
    {
      v56 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
      swift_beginAccess();
      v57 = sub_24F928818();
      (*(*(v57 - 8) + 16))(v51, &v45[v56], v57);
      v58 = v63;
      (*(v63 + 104))(v51, *MEMORY[0x277D22290], v50);
      sub_24F92A0C8();

      (*(v58 + 8))(v51, v50);
    }

    else
    {
    }
  }

  v59 = *v47;
  v60 = v47[1];
  *v47 = 0;
  v47[1] = 0;
  sub_24E824448(v59, v60);
}

void sub_24F23756C(__n128 a1)
{
  v2 = v1;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A078();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v1 + qword_27F22F1B0);
  v13 = *(v1 + qword_27F22F1B0);
  if (!v13)
  {
    v20 = 0;
LABEL_7:
    v21 = v12[1];
LABEL_8:
    *v12 = 0;
    v12[1] = 0;
    sub_24E824448(v20, v21);
    return;
  }

  v68 = v9;
  v14 = v12[1];

  v16 = v13(v15);
  sub_24E824448(v13, v14);
  v69 = v16;
  if (!v16)
  {
    v20 = *v12;
    goto LABEL_7;
  }

  v17 = *(v2 + qword_27F22F1B8);
  v65 = v11;
  if (v17)
  {
    v18 = *(v2 + qword_27F22F1B8 + 8);

    v19 = v17(v69);
    sub_24E824448(v17, v18);
  }

  else
  {
    v19 = v69;
  }

  v22 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v19 + v22) + 16))
  {

    v20 = *v12;
    v21 = v12[1];
    goto LABEL_8;
  }

  v63 = v8;
  *(v2 + qword_27F22F198) = v19;

  v23 = *(v19 + v22);
  v24 = qword_27F22F1A0;
  *(v2 + qword_27F22F1A0) = v23;

  v25 = OBJC_IVAR____TtC12GameStoreKit11ArticlePage_shelfMapping;
  swift_beginAccess();
  v62 = v25;
  v26 = *(v19 + v25);
  v27 = qword_27F39C780;
  swift_beginAccess();
  *(v2 + v27) = v26;

  v67 = *(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_isIncomplete);
  if ((v67 & 1) == 0)
  {
    v28 = *(v2 + qword_27F22F1F0);
    if (v28)
    {
      v29 = v19;
      v30 = *(v28 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v31 = *(v30 + 48);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_39:
        __break(1u);
        return;
      }

      *(v30 + 48) = v33;
      v34 = v33 == 0;
      swift_beginAccess();
      *(v30 + 40) = v34;
      swift_beginAccess();
      v19 = v29;
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v2 + qword_27F39C7D8))
    {
      *v6 = 1;
      (*(v4 + 104))(v6, *MEMORY[0x277D222A0], v3);
      sub_24F92A0D8();
      (*(v4 + 8))(v6, v3);
    }

    sub_24E60169C(v19 + OBJC_IVAR____TtC12GameStoreKit11ArticlePage_nextPage, &v71, &qword_27F2129B0, &unk_24F945320);
    v74 = 0;
    v75 = 0;
    v35 = v19;
    v36 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v71, v2 + v36);
    swift_endAccess();
    v37 = v2 + v36;
    v19 = v35;
    sub_24E9B7D88(v37, v70);
    sub_24F92AD88();
    sub_24E94E128(v70);
    sub_24E94E128(&v71);
  }

  v38 = *(v2 + qword_27F39C7A0);
  v39 = *(v2 + v24);
  v40 = MEMORY[0x277D84F90];
  v70[0] = MEMORY[0x277D84F90];
  v41 = *(v39 + 16);
  v66 = v19;

  if (!v41)
  {
    goto LABEL_30;
  }

  v42 = 0;
  v43 = v39 + 32;
  v60 = v41 - 1;
  v64 = v38;
  v61 = v39 + 32;
  do
  {
    v44 = v43 + 40 * v42;
    v45 = v42;
    while (1)
    {
      if (v45 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      sub_24E65864C(v44, &v71);
      if (*(*(v2 + v27) + 16))
      {
        break;
      }

LABEL_22:
      ++v45;
      sub_24E6585F8(&v71);
      v44 += 40;
      if (v41 == v45)
      {
        goto LABEL_30;
      }
    }

    sub_24E76D934(&v71);
    if ((v46 & 1) == 0)
    {

      goto LABEL_22;
    }

    v47 = sub_24E6585F8(&v71);
    MEMORY[0x253050F00](v47);
    if (*((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v42 = v45 + 1;
    sub_24F92B638();
    v40 = v70[0];
    v43 = v61;
  }

  while (v60 != v45);
LABEL_30:

  v48 = v66;
  v71 = v66;
  v72 = v40;
  v49 = v67;
  v73 = v67;
  sub_24F92AD88();
  sub_24F24D968(v71, v72, v73);
  if (v49)
  {
    goto LABEL_35;
  }

  sub_24F2484E8(v50, 0, v2);

  if (*(v2 + qword_27F22F1F0))
  {
    sub_24ED6F318();
  }

  v51 = v63;
  if (!*(v2 + qword_27F39C7D8))
  {
LABEL_35:
  }

  else
  {
    v52 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v53 = sub_24F928818();
    v54 = &v48[v52];
    v55 = v65;
    (*(*(v53 - 8) + 16))(v65, v54, v53);
    v56 = v68;
    (*(v51 + 104))(v55, *MEMORY[0x277D22290], v68);
    sub_24F92A0C8();

    (*(v51 + 8))(v55, v56);
  }

  v57 = *v12;
  v58 = v12[1];
  *v12 = 0;
  v12[1] = 0;
  sub_24E824448(v57, v58);
}

void sub_24F237D10(void (*a1)(uint64_t (*)(uint64_t), uint64_t), void (*a2)(uint64_t (*)(uint64_t), uint64_t), uint64_t (*a3)(void), void (*a4)(void), __n128 a5)
{
  v10 = v5;
  v11 = sub_24F92A088();
  v78 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F92A078();
  v15 = *(v14 - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v19 = (v10 + qword_27F22F1B0);
  v20 = *(v10 + qword_27F22F1B0);
  if (!v20)
  {
    v27 = 0;
LABEL_7:
    v28 = v19[1];
    *v19 = 0;
    v19[1] = 0;
    (a1)(v27, v28, v18);
    return;
  }

  v75 = v11;
  v76 = a4;
  v73 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v16;
  v21 = v19[1];

  v23 = v20(v22);
  a1(v20, v21);
  v79 = v23;
  if (!v23)
  {
    v27 = *v19;
    goto LABEL_7;
  }

  v77 = a1;
  v24 = *(v10 + qword_27F22F1B8);
  v72 = v15;
  if (v24)
  {
    v25 = *(v10 + qword_27F22F1B8 + 8);

    v26 = v24(v79);
    a2(v24, v25);
  }

  else
  {
    v26 = v79;
  }

  v29 = off_28620C6F8[0];
  v30 = a3(0);
  v29(v30, &protocol witness table for GenericPage);
  v32 = *(v31 + 16);

  if (!v32)
  {

    v58 = *v19;
    v59 = v19[1];
    *v19 = 0;
    v19[1] = 0;
    (v77)(v58, v59);
    return;
  }

  *(v10 + qword_27F22F198) = v26;

  v29(v30, &protocol witness table for GenericPage);
  v33 = qword_27F22F1A0;
  *(v10 + qword_27F22F1A0) = v34;

  v70 = v30;
  v69 = off_28620C700;
  off_28620C700(v30, &protocol witness table for GenericPage);
  v36 = v35;
  v37 = qword_27F39C780;
  swift_beginAccess();
  *(v10 + v37) = v36;

  LODWORD(v30) = *(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_isIncomplete);
  if ((v30 & 1) == 0)
  {
    v38 = *(v10 + qword_27F22F1F0);
    if (v38)
    {
      v39 = *(v38 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v40 = *(v39 + 48);
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
LABEL_42:
        __break(1u);
        return;
      }

      *(v39 + 48) = v42;
      v43 = v42 == 0;
      swift_beginAccess();
      *(v39 + 40) = v43;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v10 + qword_27F39C7D8))
    {
      *v13 = 1;
      v44 = v78;
      v45 = v75;
      (v78)[13](v13, *MEMORY[0x277D222A0], v75);
      sub_24F92A0D8();
      (v44[1])(v13, v45);
    }

    sub_24E60169C(v26 + OBJC_IVAR____TtC12GameStoreKit11GenericPage_nextPage, &v81, &qword_27F2129B0, &unk_24F945320);
    v84 = 0;
    v85 = 0;
    v46 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v81, v10 + v46);
    swift_endAccess();
    sub_24E9B7D88(v10 + v46, v80);
    sub_24F92AD88();
    sub_24E94E128(v80);
    sub_24E94E128(&v81);
  }

  v75 = *(v10 + qword_27F39C7A0);
  v47 = *(v10 + v33);
  v48 = MEMORY[0x277D84F90];
  v80[0] = MEMORY[0x277D84F90];
  v49 = *(v47 + 16);
  v78 = v26;

  if (v49)
  {
    v50 = 0;
    v51 = v47 + 32;
    v67 = v49 - 1;
    v71 = v30;
    v68 = v47 + 32;
    while (1)
    {
      v52 = v51 + 40 * v50;
      v30 = v50;
      while (1)
      {
        if (v30 >= *(v47 + 16))
        {
          __break(1u);
          goto LABEL_42;
        }

        sub_24E65864C(v52, &v81);
        if (*(*(v10 + v37) + 16))
        {
          break;
        }

LABEL_21:
        ++v30;
        sub_24E6585F8(&v81);
        v52 += 40;
        if (v49 == v30)
        {
          LOBYTE(v30) = v71;
          goto LABEL_32;
        }
      }

      sub_24E76D934(&v81);
      if ((v53 & 1) == 0)
      {
        break;
      }

      v54 = sub_24E6585F8(&v81);
      MEMORY[0x253050F00](v54);
      if (*((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v50 = v30 + 1;
      sub_24F92B638();
      v48 = v80[0];
      v55 = v67 == v30;
      LOBYTE(v30) = v71;
      v51 = v68;
      if (v55)
      {
        goto LABEL_32;
      }
    }

    goto LABEL_21;
  }

LABEL_32:

  v56 = v78;
  v81 = v78;
  v82 = v48;
  v83 = v30;
  sub_24F92AD88();
  sub_24F24D968(v81, v82, v83);
  if (v30)
  {

    v57 = v77;
  }

  else
  {
    v69(v70);
    v76();

    v57 = v77;
    if (*(v10 + qword_27F22F1F0))
    {
      sub_24ED6F318();
    }

    if (*(v10 + qword_27F39C7D8))
    {
      v60 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
      swift_beginAccess();
      v61 = sub_24F928818();
      v62 = v73;
      (*(*(v61 - 8) + 16))(v73, v56 + v60, v61);
      v63 = v72;
      v64 = v74;
      (*(v72 + 104))(v62, *MEMORY[0x277D22290], v74);
      sub_24F92A0C8();

      (*(v63 + 8))(v62, v64);
    }

    else
    {
    }
  }

  v65 = *v19;
  v66 = v19[1];
  *v19 = 0;
  v19[1] = 0;
  (v57)(v65, v66);
}

void sub_24F238564(__n128 a1)
{
  v2 = v1;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A078();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v1 + qword_27F22F1B0);
  v13 = *(v1 + qword_27F22F1B0);
  if (!v13)
  {
    v20 = 0;
LABEL_7:
    v21 = v12[1];
LABEL_8:
    *v12 = 0;
    v12[1] = 0;
    sub_24E824448(v20, v21);
    return;
  }

  v68 = v9;
  v14 = v12[1];

  v16 = v13(v15);
  sub_24E824448(v13, v14);
  v69 = v16;
  if (!v16)
  {
    v20 = *v12;
    goto LABEL_7;
  }

  v17 = *(v2 + qword_27F22F1B8);
  v65 = v11;
  if (v17)
  {
    v18 = *(v2 + qword_27F22F1B8 + 8);

    v19 = v17(v69);
    sub_24E824448(v17, v18);
  }

  else
  {
    v19 = v69;
  }

  v22 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v19 + v22) + 16))
  {

    v20 = *v12;
    v21 = v12[1];
    goto LABEL_8;
  }

  v63 = v8;
  *(v2 + qword_27F22F198) = v19;

  v23 = *(v19 + v22);
  v24 = qword_27F22F1A0;
  *(v2 + qword_27F22F1A0) = v23;

  v25 = OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_shelfMapping;
  swift_beginAccess();
  v62 = v25;
  v26 = *(v19 + v25);
  v27 = qword_27F39C780;
  swift_beginAccess();
  *(v2 + v27) = v26;

  v67 = *(v19 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_isIncomplete);
  if ((v67 & 1) == 0)
  {
    v28 = *(v2 + qword_27F22F1F0);
    if (v28)
    {
      v29 = v19;
      v30 = *(v28 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v31 = *(v30 + 48);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
LABEL_39:
        __break(1u);
        return;
      }

      *(v30 + 48) = v33;
      v34 = v33 == 0;
      swift_beginAccess();
      *(v30 + 40) = v34;
      swift_beginAccess();
      v19 = v29;
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v2 + qword_27F39C7D8))
    {
      *v6 = 1;
      (*(v4 + 104))(v6, *MEMORY[0x277D222A0], v3);
      sub_24F92A0D8();
      (*(v4 + 8))(v6, v3);
    }

    sub_24E60169C(v19 + OBJC_IVAR____TtC12GameStoreKit15TopChartSegment_nextPage, &v71, &qword_27F2129B0, &unk_24F945320);
    v74 = 0;
    v75 = 0;
    v35 = v19;
    v36 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v71, v2 + v36);
    swift_endAccess();
    v37 = v2 + v36;
    v19 = v35;
    sub_24E9B7D88(v37, v70);
    sub_24F92AD88();
    sub_24E94E128(v70);
    sub_24E94E128(&v71);
  }

  v38 = *(v2 + qword_27F39C7A0);
  v39 = *(v2 + v24);
  v40 = MEMORY[0x277D84F90];
  v70[0] = MEMORY[0x277D84F90];
  v41 = *(v39 + 16);
  v66 = v19;

  if (!v41)
  {
    goto LABEL_30;
  }

  v42 = 0;
  v43 = v39 + 32;
  v60 = v41 - 1;
  v64 = v38;
  v61 = v39 + 32;
  do
  {
    v44 = v43 + 40 * v42;
    v45 = v42;
    while (1)
    {
      if (v45 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      sub_24E65864C(v44, &v71);
      if (*(*(v2 + v27) + 16))
      {
        break;
      }

LABEL_22:
      ++v45;
      sub_24E6585F8(&v71);
      v44 += 40;
      if (v41 == v45)
      {
        goto LABEL_30;
      }
    }

    sub_24E76D934(&v71);
    if ((v46 & 1) == 0)
    {

      goto LABEL_22;
    }

    v47 = sub_24E6585F8(&v71);
    MEMORY[0x253050F00](v47);
    if (*((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v42 = v45 + 1;
    sub_24F92B638();
    v40 = v70[0];
    v43 = v61;
  }

  while (v60 != v45);
LABEL_30:

  v48 = v66;
  v71 = v66;
  v72 = v40;
  v49 = v67;
  v73 = v67;
  sub_24F92AD88();
  sub_24F24D968(v71, v72, v73);
  if (v49)
  {
    goto LABEL_35;
  }

  sub_24F24A1E4(v50, 0, v2);

  if (*(v2 + qword_27F22F1F0))
  {
    sub_24ED6F318();
  }

  v51 = v63;
  if (!*(v2 + qword_27F39C7D8))
  {
LABEL_35:
  }

  else
  {
    v52 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v53 = sub_24F928818();
    v54 = &v48[v52];
    v55 = v65;
    (*(*(v53 - 8) + 16))(v65, v54, v53);
    v56 = v68;
    (*(v51 + 104))(v55, *MEMORY[0x277D22290], v68);
    sub_24F92A0C8();

    (*(v51 + 8))(v55, v56);
  }

  v57 = *v12;
  v58 = v12[1];
  *v12 = 0;
  v12[1] = 0;
  sub_24E824448(v57, v58);
}

void sub_24F238D08(__n128 a1)
{
  v2 = v1;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A078();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v1 + qword_27F22F1B0);
  v12 = *(v1 + qword_27F22F1B0);
  if (!v12)
  {
    v21 = 0;
LABEL_7:
    v22 = v11[1];
LABEL_8:
    *v11 = 0;
    v11[1] = 0;
    sub_24E824448(v21, v22);
    return;
  }

  v13 = v11[1];

  v15 = v12(v14);
  v16 = v12;
  v17 = v15;
  sub_24E824448(v16, v13);
  if (!v17)
  {
    v21 = *v11;
    goto LABEL_7;
  }

  v66 = v10;
  v67 = v8;
  v18 = *(v2 + qword_27F22F1B8);
  v65 = v7;
  if (v18)
  {
    v19 = *(v2 + qword_27F22F1B8 + 8);

    v20 = v18(v17);
    sub_24E824448(v18, v19);
  }

  else
  {

    v20 = v17;
  }

  v23 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfOrdering;
  swift_beginAccess();
  if (!*(*(v20 + v23) + 16))
  {

    v21 = *v11;
    v22 = v11[1];
    goto LABEL_8;
  }

  *(v2 + qword_27F22F198) = v20;

  v24 = *(v20 + v23);
  v64 = qword_27F22F1A0;
  *(v2 + qword_27F22F1A0) = v24;

  v25 = OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_shelfMapping;
  swift_beginAccess();
  v63 = v25;
  v26 = *(v20 + v25);
  v27 = qword_27F39C780;
  swift_beginAccess();
  *(v2 + v27) = v26;

  v28 = *(v2 + qword_27F22F1F0);
  v68 = v20;
  if (v28)
  {
    v29 = *(v28 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
    swift_beginAccess();
    v30 = *(v29 + 48);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
LABEL_39:
      __break(1u);
      return;
    }

    *(v29 + 48) = v32;
    v33 = v32 == 0;
    swift_beginAccess();
    *(v29 + 40) = v33;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v20 = v68;
    if (Strong)
    {
      sub_24EA6BFA0();
    }
  }

  v61 = v28;
  v35 = *(v2 + qword_27F39C7D8);
  if (v35)
  {
    *v6 = 1;
    (*(v4 + 104))(v6, *MEMORY[0x277D222A0], v3);
    sub_24F92A0D8();
    (*(v4 + 8))(v6, v3);
  }

  v60 = v35;
  v62 = v17;
  sub_24E60169C(v20 + OBJC_IVAR____TtC12GameStoreKit17SearchResultsPage_nextPage, &v70, &qword_27F2129B0, &unk_24F945320);
  v73 = 0;
  v74 = 0;
  v36 = qword_27F39C788;
  swift_beginAccess();
  sub_24EBD46D4(&v70, v2 + v36);
  swift_endAccess();
  v37 = v2 + v36;
  v38 = v68;
  sub_24E9B7D88(v37, v69);
  sub_24F92AD88();
  sub_24E94E128(v69);
  sub_24E94E128(&v70);
  v39 = *(v2 + qword_27F39C7A0);
  v40 = *(v2 + v64);
  v41 = MEMORY[0x277D84F90];
  v69[0] = MEMORY[0x277D84F90];
  v42 = *(v40 + 16);

  if (v42)
  {
    v43 = 0;
    v44 = v40 + 32;
    v59[0] = v42 - 1;
    v59[1] = v39;
    v64 = v40 + 32;
    while (1)
    {
      v45 = v44 + 40 * v43;
      v46 = v43;
      while (1)
      {
        if (v46 >= *(v40 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        sub_24E65864C(v45, &v70);
        if (*(*(v2 + v27) + 16))
        {
          break;
        }

LABEL_20:
        ++v46;
        sub_24E6585F8(&v70);
        v45 += 40;
        if (v42 == v46)
        {
          v38 = v68;
          goto LABEL_31;
        }
      }

      sub_24E76D934(&v70);
      if ((v47 & 1) == 0)
      {
        break;
      }

      v48 = sub_24E6585F8(&v70);
      MEMORY[0x253050F00](v48);
      if (*((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      v43 = v46 + 1;
      sub_24F92B638();
      v41 = v69[0];
      v49 = v59[0] == v46;
      v38 = v68;
      v44 = v64;
      if (v49)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_20;
  }

LABEL_31:

  v70 = v38;
  v71 = v41;
  v72 = 0;
  sub_24F92AD88();
  sub_24F24D968(v70, v71, v72);

  sub_24F24A4C4(v50, 0, v2);

  if (v61)
  {
    sub_24ED6F318();
  }

  v51 = v67;
  v52 = v66;
  if (v60)
  {
    v53 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    v54 = v68;
    swift_beginAccess();
    v55 = sub_24F928818();
    (*(*(v55 - 8) + 16))(v52, v54 + v53, v55);
    v56 = v65;
    (*(v51 + 104))(v52, *MEMORY[0x277D22290], v65);
    sub_24F92A0C8();

    (*(v51 + 8))(v52, v56);
  }

  else
  {
  }

  v57 = *v11;
  v58 = v11[1];
  *v11 = 0;
  v11[1] = 0;
  sub_24E824448(v57, v58);
}

void sub_24F239498(__n128 a1)
{
  v2 = v1;
  v3 = sub_24F92A088();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A078();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v1 + qword_27F22F1B0);
  v13 = *(v1 + qword_27F22F1B0);
  if (!v13)
  {
    v20 = 0;
LABEL_7:
    v21 = v12[1];
LABEL_17:
    *v12 = 0;
    v12[1] = 0;
    sub_24E824448(v20, v21);
    return;
  }

  v88 = v9;
  v14 = v12[1];

  v16 = v13(v15);
  sub_24E824448(v13, v14);
  if (!v16)
  {
    v20 = *v12;
    goto LABEL_7;
  }

  v85 = v6;
  v84 = v11;
  v17 = *(v2 + qword_27F22F1B8);
  v81 = v8;
  v89 = v16;
  v86 = v2;
  v83 = v3;
  v82 = v4;
  if (v17)
  {
    v18 = *(v2 + qword_27F22F1B8 + 8);

    v19 = v17(v16);
    sub_24E824448(v17, v18);
  }

  else
  {

    v19 = v16;
  }

  v22 = sub_24F24DA18(&qword_27F23CC60, type metadata accessor for SearchChartsAndCategoriesPage, &protocol conformance descriptor for DynamicPage<A>);
  v23 = *(v22 + 56);
  v87 = type metadata accessor for SearchChartsAndCategoriesPage(0);
  v24 = v23(v87, v22);
  v25 = *(*v19 + 184);
  v90 = v19;
  v26 = (v19 + v25);
  swift_beginAccess();
  if (!*(v24 + 16) || (v28 = *v26, v27 = v26[1], , v29 = sub_24E7728F0(v28, v27), v31 = v30, , (v31 & 1) == 0))
  {

LABEL_16:

    v20 = *v12;
    v21 = v12[1];
    goto LABEL_17;
  }

  v32 = *(*(v24 + 56) + 8 * v29);

  v33 = *(v32 + 16);

  if (!v33)
  {

    goto LABEL_16;
  }

  v34 = v86;
  *(v86 + qword_27F22F198) = v90;

  v35 = v23(v87, v22);
  v36 = MEMORY[0x277D84F90];
  if (*(v35 + 16))
  {
    v38 = *v26;
    v37 = v26[1];

    v39 = sub_24E7728F0(v38, v37);
    LOBYTE(v38) = v40;

    if (v38)
    {
      v41 = *(*(v35 + 56) + 8 * v39);
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v42 = qword_27F22F1A0;
  *(v34 + qword_27F22F1A0) = v41;

  v43 = off_28620E0A8;
  v44 = v90;
  off_28620E0A8();
  v46 = v45;
  v47 = qword_27F39C780;
  swift_beginAccess();
  *(v34 + v47) = v46;

  v80 = v44[*(*v44 + 200)];
  v48 = v85;
  if ((v80 & 1) == 0)
  {
    v49 = *(v34 + qword_27F22F1F0);
    if (v49)
    {
      v50 = *(v49 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v51 = *(v50 + 48);
      v52 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
LABEL_51:
        __break(1u);
        return;
      }

      *(v50 + 48) = v53;
      v54 = v53 == 0;
      swift_beginAccess();
      *(v50 + 40) = v54;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }
    }

    if (*(v34 + qword_27F39C7D8))
    {
      *v48 = 1;
      v55 = v36;
      v56 = v82;
      v57 = v83;
      (*(v82 + 13))(v48, *MEMORY[0x277D222A0], v83);
      sub_24F92A0D8();
      (*(v56 + 1))(v48, v57);
      v36 = v55;
    }

    v44 = v90;
    sub_24E60169C(&v90[*(*v90 + 192)], &v92, &qword_27F2129B0, &unk_24F945320);
    v95 = 0;
    v96 = 0;
    v58 = qword_27F39C788;
    swift_beginAccess();
    sub_24EBD46D4(&v92, v34 + v58);
    swift_endAccess();
    sub_24E9B7D88(v34 + v58, v91);
    sub_24F92AD88();
    sub_24E94E128(v91);
    sub_24E94E128(&v92);
  }

  v82 = v43;
  v83 = *(v34 + qword_27F39C7A0);
  v59 = *(v34 + v42);
  v91[0] = v36;
  v60 = *(v59 + 16);

  if (!v60)
  {
    v85 = v36;
    goto LABEL_43;
  }

  v61 = 0;
  v62 = v59 + 32;
  v78 = v60 - 1;
  v85 = MEMORY[0x277D84F90];
  v79 = v59 + 32;
  do
  {
    v63 = v62 + 40 * v61;
    v64 = v61;
    while (1)
    {
      if (v64 >= *(v59 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      sub_24E65864C(v63, &v92);
      if (*(*(v34 + v47) + 16))
      {
        break;
      }

LABEL_32:
      ++v64;
      sub_24E6585F8(&v92);
      v63 += 40;
      if (v60 == v64)
      {
        v44 = v90;
        goto LABEL_43;
      }
    }

    sub_24E76D934(&v92);
    if ((v65 & 1) == 0)
    {

      goto LABEL_32;
    }

    v66 = sub_24E6585F8(&v92);
    MEMORY[0x253050F00](v66);
    if (*((v91[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    v61 = v64 + 1;
    sub_24F92B638();
    v85 = v91[0];
    v44 = v90;
    v62 = v79;
  }

  while (v78 != v64);
LABEL_43:

  v92 = v44;
  v93 = v85;
  v67 = v80;
  v94 = v80;
  sub_24F92AD88();
  sub_24F24D968(v92, v93, v94);
  if (v67)
  {
    goto LABEL_48;
  }

  v68 = (v82)(v87);
  sub_24F24A634(v68, 0, v34);

  if (*(v34 + qword_27F22F1F0))
  {
    sub_24ED6F318();
  }

  v69 = *(v34 + qword_27F39C7D8);
  v70 = v84;
  if (!v69)
  {
LABEL_48:
  }

  else
  {
    v71 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
    swift_beginAccess();
    v72 = sub_24F928818();
    (*(*(v72 - 8) + 16))(v70, &v44[v71], v72);
    v73 = v81;
    v74 = v88;
    (*(v81 + 104))(v70, *MEMORY[0x277D22290], v88);
    sub_24F92A0C8();

    (*(v73 + 8))(v70, v74);
  }

  v75 = *v12;
  v76 = v12[1];
  *v12 = 0;
  v12[1] = 0;
  sub_24E824448(v75, v76);
}

uint64_t sub_24F239E3C(unint64_t a1, uint64_t (*a2)(void))
{
  v20[0] = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253052270](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(a1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v9 = OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics;
    swift_beginAccess();
    v10 = *(v7 + v9);

    ++v5;
    if (v10)
    {
      MEMORY[0x253050F00](v11);
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v6 = v20[0];
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    v12 = v16;
    if (!sub_24F92C738())
    {
    }
  }

  else
  {
    v12 = v16;
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }
  }

  v13 = *(v12 + qword_27F22F198);
  if (v13)
  {
    v18 = a2(0);
    v19 = &protocol witness table for BasePage;
    *&v17 = v13;
    sub_24E612C80(&v17, v20);

    sub_24F24A914(v6, v20, v12);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }
}

uint64_t sub_24F23A070(unint64_t a1, uint64_t (*a2)(void))
{
  v20[0] = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_24F92C738();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x253052270](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(a1 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v9 = OBJC_IVAR____TtC12GameStoreKit5Shelf_pageChangeMetrics;
    swift_beginAccess();
    v10 = *(v7 + v9);

    ++v5;
    if (v10)
    {
      MEMORY[0x253050F00](v11);
      if (*((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      sub_24F92B638();
      v6 = v20[0];
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    v12 = v16;
    if (!sub_24F92C738())
    {
    }
  }

  else
  {
    v12 = v16;
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }
  }

  v13 = *(v12 + qword_27F22F198);
  if (v13)
  {
    v18 = a2(0);
    v19 = &protocol witness table for BasePage;
    *&v17 = v13;
    sub_24E612C80(&v17, v20);

    sub_24F24A914(v6, v20, v12);

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }
}

void sub_24F23A2A4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v30 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_24E65864C(*(a1 + 48) + 40 * v17, v27);
    v29 = *(*(a1 + 56) + 8 * v17);

    v18 = sub_24ED78FB8();
    v25 = v27[1];
    v26 = v28;
    v24 = v27[0];
    v19 = *(v2 + 16);
    if (*(v2 + 24) <= v19)
    {
      sub_24E899884(v19 + 1, 1);
      v2 = v30;
    }

    v9 = sub_24F92C7B8();
    v10 = v2 + 64;
    v11 = -1 << *(v2 + 32);
    v12 = v9 & ~v11;
    v13 = v12 >> 6;
    if (((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v11) >> 6;
      while (++v13 != v21 || (v20 & 1) == 0)
      {
        v22 = v13 == v21;
        if (v13 == v21)
        {
          v13 = 0;
        }

        v20 |= v22;
        v23 = *(v10 + 8 * v13);
        if (v23 != -1)
        {
          v14 = __clz(__rbit64(~v23)) + (v13 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_25;
    }

    v14 = __clz(__rbit64((-1 << v12) & ~*(v2 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    v6 &= v6 - 1;
    *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v2 + 48) + 40 * v14;
    *v15 = v24;
    *(v15 + 16) = v25;
    *(v15 + 32) = v26;
    *(*(v2 + 56) + 8 * v14) = v18;
    ++*(v2 + 16);
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v16);
    ++v8;
    if (v6)
    {
      v8 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_24F23A4D8(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84F98];
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v42 = MEMORY[0x277D84F98];
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = qword_27F39C780;

  v43 = v10;
  swift_beginAccess();
  v11 = 0;
  v12 = (v7 + 63) >> 6;
  if (!v9)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = v14 | (v11 << 6);
      sub_24E65864C(*(a1 + 48) + 40 * v15, v40);
      *(&v41 + 1) = *(*(a1 + 56) + 8 * v15);
      v38 = v40[1];
      v39 = v41;
      v37 = v40[0];
      v16 = *(a2 + v43);
      if (*(v16 + 16))
      {
        break;
      }

LABEL_7:
      sub_24E601704(&v37, &qword_27F222718, &qword_24F9C4E00);
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    v17 = *(&v39 + 1);
    v18 = OBJC_IVAR____TtC12GameStoreKit5Shelf_id;

    v19 = sub_24E76D934(v17 + v18);
    if ((v20 & 1) == 0)
    {

      goto LABEL_7;
    }

    v21 = *(*(v16 + 56) + 8 * v19);

    v35 = v38;
    v36 = v39;
    v34 = v37;
    v22 = *(v4 + 16);
    if (*(v4 + 24) <= v22)
    {
      sub_24E899884(v22 + 1, 1);
      v4 = v42;
    }

    v23 = sub_24F92C7B8();
    v24 = v4 + 64;
    v25 = -1 << *(v4 + 32);
    v26 = v23 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v4 + 64 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v24 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v4 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = *(v4 + 48) + 40 * v28;
    *v33 = v34;
    *(v33 + 16) = v35;
    *(v33 + 32) = v36;
    *(*(v4 + 56) + 8 * v28) = v21;
    ++*(v4 + 16);
  }

  while (v9);
LABEL_8:
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
}

double sub_24F23A7C4(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(v4);
      swift_beginAccess();
      v5 = v1[3];

      v6.n128_f64[0] = sub_24EBD8B98(0);
      v7 = (*(*v1 + 1112))(0, v6);
      sub_24F23BC74(v5);

      v8 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v7;

      sub_24EBC0494(v8);

      v4.n128_f64[0] = sub_24F23A7C4(1);
    }
  }

  else
  {
    sub_24F2FA72C(v4);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F234130(v9);
    }
  }

  return v4.n128_f64[0];
}

double sub_24F23A970(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!*(v3 + 24) || *(v3 + 24) == 1 || *(v3 + 8) | *(v3 + 16) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(v4);
      v5 = sub_24F23BB28();
      v6 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v5;

      sub_24EBC1940(v6);

      (*(*v1 + 544))(1);
    }
  }

  else
  {
    sub_24F2FA72C(v4);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F234574(v7);
    }
  }

  return v4.n128_f64[0];
}

double sub_24F23AADC(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(v4);
      swift_beginAccess();
      v5 = v1[3];

      v6.n128_f64[0] = sub_24EBD8C34(0);
      v7 = (*(*v1 + 1112))(0, v6);
      sub_24F23BC74(v5);

      v8 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v7;

      sub_24EBC2DEC(v8);

      v4.n128_f64[0] = sub_24F23AADC(1);
    }
  }

  else
  {
    sub_24F2FA72C(v4);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F234A0C(v9);
    }
  }

  return v4.n128_f64[0];
}

double sub_24F23AC88(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(v4);
      swift_beginAccess();
      v5 = v1[3];

      v6.n128_f64[0] = sub_24EBD8C68(0);
      v7 = (*(*v1 + 1112))(0, v6);
      sub_24F23BC74(v5);

      v8 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v7;

      sub_24EBC4298(v8);

      v4.n128_f64[0] = sub_24F23AC88(1);
    }
  }

  else
  {
    sub_24F2FA72C(v4);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F234E54(v9);
    }
  }

  return v4.n128_f64[0];
}

double sub_24F23AE34(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(v4);
      swift_beginAccess();
      v5 = v1[3];

      v6.n128_f64[0] = sub_24EBD8C9C(0);
      v7 = (*(*v1 + 1112))(0, v6);
      sub_24F23BC74(v5);

      v8 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v7;

      sub_24EBC5778(v8);

      v4.n128_f64[0] = sub_24F23AE34(1);
    }
  }

  else
  {
    sub_24F2FA72C(v4);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F2352EC(v9);
    }
  }

  return v4.n128_f64[0];
}

double sub_24F23AFE0(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(v4);
      swift_beginAccess();
      v5 = v1[3];

      v6.n128_f64[0] = sub_24EBD8CD0(0);
      v7 = (*(*v1 + 1112))(0, v6);
      sub_24F23BC74(v5);

      v8 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v7;

      sub_24EBC6C24(v8);

      v4.n128_f64[0] = sub_24F23AFE0(1);
    }
  }

  else
  {
    sub_24F2FA72C(v4);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F235784(v9);
    }
  }

  return v4.n128_f64[0];
}

double sub_24F23B18C(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(v4);
      swift_beginAccess();
      v5 = v1[3];

      v6.n128_f64[0] = sub_24EBD8D04(0);
      v7 = (*(*v1 + 1112))(0, v6);
      sub_24F23BC74(v5);

      v8 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v7;

      sub_24EBC80D0(v8);

      v4.n128_f64[0] = sub_24F23B18C(1);
    }
  }

  else
  {
    sub_24F2FA72C(v4);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F235BCC(v9);
    }
  }

  return v4.n128_f64[0];
}

double sub_24F23B338(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(v4);
      swift_beginAccess();
      v5 = v1[3];

      v6.n128_f64[0] = sub_24EBD8D38(0);
      v7 = (*(*v1 + 1112))(0, v6);
      sub_24F23BC74(v5);

      v8 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v7;

      sub_24EBC957C(v8);

      v4.n128_f64[0] = sub_24F23B338(1);
    }
  }

  else
  {
    sub_24F2FA72C(v4);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F236064(v9);
    }
  }

  return v4.n128_f64[0];
}

double sub_24F23B4E4(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  if (!v3[24] || v3[24] == 1 || *(v3 + 1) | *(v3 + 2) | *v3)
  {
    if (a1)
    {
      sub_24F2FA72C(v4);
      swift_beginAccess();
      v5 = v1[3];

      v6.n128_f64[0] = sub_24EBD8D6C(0);
      v7 = (*(*v1 + 1112))(0, v6);
      sub_24F23BC74(v5);

      v8 = *(v1 + qword_27F39CC00);
      *(v1 + qword_27F39CC00) = v7;

      sub_24EBCAA28(v8);

      v4.n128_f64[0] = sub_24F23B4E4(1);
    }
  }

  else
  {
    sub_24F2FA72C(v4);
    *(v1 + *(*v1 + 736)) = 0;

    if (*(v1 + qword_27F39CC00))
    {

      sub_24F2364AC(v9);
    }
  }

  return v4.n128_f64[0];
}

void sub_24F23B690(char a1)
{
  v3 = v1 + *(*v1 + 176);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[24];
  if (!v3[24] || v5 == 1 || *(v3 + 1) | *(v3 + 2) | v4)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    v6 = *(v3 + 1);
    v7 = *(v3 + 2);
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = 0;
    v3[24] = 2;
    sub_24F24D234(v4, v6, v7, v5);
    sub_24EBDED8C(v4, v6, v7, v5);
    v8 = *v3;
    v9 = v3[24];
    if (v3[24])
    {
      if (v9 != 1)
      {
        if (*(v3 + 1) | *(v3 + 2) | v8)
        {
          if (v5 == 2 && v4 == 1 && (v7 | v6) == 0)
          {
            goto LABEL_34;
          }
        }

        else if (v5 == 2 && (v7 | v6 | v4) == 0)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      if (v5)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == v4;
      }

      if (v12)
      {
        v13 = v4;
        v14 = v6;
        v15 = v7;
        v16 = 0;
LABEL_33:
        sub_24EBDED8C(v13, v14, v15, v16);
LABEL_34:
        swift_beginAccess();
        v21 = v1[3];

        v22.n128_f64[0] = sub_24EBD8DA0(0);
        v23 = (*(*v1 + 1112))(0, v22);
        sub_24F23BC74(v21);

        v24 = *(v1 + qword_27F39CC00);
        *(v1 + qword_27F39CC00) = v23;

        sub_24EBCBED4(v24);

        sub_24F23B690(1);
        return;
      }
    }

    v26 = *v3;
    v28 = *(v3 + 1);
    v30 = *(v3 + 2);
    v32 = v3[24];
    sub_24F24D234(v8, v28, v30, v9);
    sub_24F92AD88();
    sub_24EBDED8C(v4, v6, v7, v5);
    v13 = v26;
    v14 = v28;
    v15 = v30;
    v16 = v32;
    goto LABEL_33;
  }

  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 1;
  v3[24] = 2;
  sub_24F24D234(0, 0, 0, 2);
  sub_24EBDED8C(0, 0, 0, 2);
  v17 = *v3;
  v18 = v3[24];
  if (v18 < 2 || *(v3 + 1) | *(v3 + 2) | v17)
  {
    v25 = *v3;
    v27 = *(v3 + 1);
    v29 = *(v3 + 2);
    v31 = v3[24];
    sub_24F24D234(v17, v27, v29, v18);
    sub_24F92AD88();
    sub_24EBDED8C(0, 0, 0, 2);
    sub_24EBDED8C(v25, v27, v29, v31);
  }

  *(v1 + *(*v1 + 736)) = 0;

  if (*(v1 + qword_27F39CC00))
  {

    sub_24F2368F4(v19);
  }
}

uint64_t sub_24F23B9E0()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = NSStringFromClass(ObjCClassFromMetadata);
  sub_24F92B0D8();

  return sub_24F92AAD8();
}

uint64_t sub_24F23BB28()
{
  swift_beginAccess();
  v1 = v0[3];

  v2.n128_f64[0] = sub_24EBD8BCC(0);
  v3 = (*(*v0 + 1112))(0, v2);
  if (v1)
  {
    swift_beginAccess();
    v4 = v1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    v5 = swift_beginAccess();
    if ((*(v4 + 8) & 1) == 0)
    {
      (*(*v0 + 1352))(v5);
    }
  }

  else
  {
    (*(*v0 + 1352))();
  }

  return v3;
}

void sub_24F23BC74(uint64_t a1)
{
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v21[-v8];
  if (!a1)
  {
    swift_beginAccess();
    v16 = *(v1 + 24);
    if (!v16)
    {
      return;
    }

    sub_24F91F638();
    sub_24F91F5E8();
    v18 = v17;
    (*(v4 + 8))(v9, v3);
    v19 = v16 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
    swift_beginAccess();
    *v19 = v18;
    *(v19 + 8) = 0;
    v20 = *(v16 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
    swift_beginAccess();
    *(v20 + 40) = 1;
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      goto LABEL_10;
    }

    sub_24EA6BFA0();
LABEL_9:

LABEL_10:

    return;
  }

  swift_beginAccess();
  v10 = a1 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
  swift_beginAccess();
  if ((*(v10 + 8) & 1) == 0)
  {
    swift_beginAccess();
    v11 = *(v1 + 24);
    if (v11)
    {

      sub_24F91F638();
      sub_24F91F5E8();
      v13 = v12;
      (*(v4 + 8))(v6, v3);
      v14 = v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_appearTime;
      swift_beginAccess();
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = *(v11 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasAppearTime);
      swift_beginAccess();
      *(v15 + 40) = 1;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }

      goto LABEL_9;
    }
  }
}

void sub_24F23BF64(char a1)
{
  if (*(v1 + qword_27F22F1D0) != (a1 & 1))
  {
    v2 = *(v1 + qword_27F22F1F0);
    if (*(v1 + qword_27F22F1D0))
    {
      if (v2)
      {
        v3 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
        swift_beginAccess();
        v4 = *(v3 + 48);
        v5 = __OFADD__(v4, 1);
        v6 = v4 + 1;
        if (v5)
        {
          __break(1u);
        }

        else
        {
          *(v3 + 48) = v6;
          v7 = v6 == 0;
          swift_beginAccess();
          *(v3 + 40) = v7;
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {
            sub_24EA6BFA0();
          }
        }
      }
    }

    else if (v2)
    {
      v8 = *(v2 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v9 = *(v8 + 48);
      if (v9 <= 0)
      {
        goto LABEL_12;
      }

      v10 = v9 - 1;
      *(v8 + 48) = v10;
      v11 = v10 == 0;
      swift_beginAccess();
      *(v8 + 40) = v11;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }

      if (!*(v8 + 48))
      {
LABEL_12:
        PendingPageRender.tryToEstablishUserReadyTime()();
      }
    }
  }
}

void sub_24F23C0D8(void *a1, uint64_t a2)
{
  v3 = sub_24F92A078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_27F39C790) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v20 = a1;
    v21 = 0;
    v22 = 0x80;
    v8 = a1;
    sub_24F92AD88();

    sub_24F24D968(v20, v21, v22);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + qword_27F22F1F0);

    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC12GameStoreKit17PendingPageRender_hasRequests);
      swift_beginAccess();
      v12 = *(v11 + 48);
      v13 = v12 < 1;
      v14 = v12 - 1;
      if (v13)
      {
        goto LABEL_11;
      }

      *(v11 + 48) = v14;
      v15 = v14 == 0;
      swift_beginAccess();
      *(v11 + 40) = v15;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_24EA6BFA0();
      }

      if (!*(v11 + 48))
      {
LABEL_11:
        PendingPageRender.tryToEstablishUserReadyTime()();
      }
    }
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = *(v16 + qword_27F39C7D8);

    if (v17)
    {
      *v6 = a1;
      (*(v4 + 104))(v6, *MEMORY[0x277D22280], v3);
      v18 = a1;
      sub_24F92A0C8();

      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_24F23C3C4(void *a1, uint64_t a2)
{
  v3 = sub_24F92A078();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_27F39C790) = 0;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v15 = a1;
    v16 = 0;
    v17 = 0x80;
    v8 = a1;
    sub_24F92AD88();

    sub_24F24D968(v15, v16, v17);
  }

  swift_beginAccess();
  v9 = swift_weakLoadStrong();
  if (v9)
  {
    v10 = *(v9 + qword_27F22F1F0);

    if (v10)
    {
      sub_24ED6F318();
    }
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    v12 = *(v11 + qword_27F39C7D8);

    if (v12)
    {
      *v6 = a1;
      (*(v4 + 104))(v6, *MEMORY[0x277D22280], v3);
      v13 = a1;
      sub_24F92A0C8();

      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_24F23C61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v148 = a3;
  v138 = a1;
  *&v147 = sub_24F92AAE8();
  v3 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F92A078();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = Strong;
  v11 = *(Strong + qword_27F22F198);
  if (!v11)
  {
LABEL_90:

    return;
  }

  v134 = qword_27F22F198;
  if (*(Strong + qword_27F39C7D8))
  {
    *v8 = 0;
    (*(v6 + 104))(v8, *MEMORY[0x277D22288], v5);

    sub_24F92A0C8();
    (*(v6 + 8))(v8, v5);
  }

  else
  {
  }

  v12 = MEMORY[0x277D84F90];
  v13 = sub_24E60986C(MEMORY[0x277D84F90]);
  v135 = sub_24E60ACC8(v12);
  v14 = *(v138 + 16);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 64);
  v19 = qword_27F39C780;
  v20 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
  v133 = qword_27F22F1D8;
  v132 = qword_27F22F1D0;
  v139 = v14;

  v149 = v11;
  v144 = v20;
  swift_beginAccess();
  v145 = v19;
  swift_beginAccess();
  v21 = 0;
  v136 = 0;
  v22 = (v16 + 63) >> 6;
  v143 = (v3 + 8);
  v142 = xmmword_24F93A400;
  v137 = v15;
LABEL_9:
  v141 = v13;
  if (v18)
  {
LABEL_10:
    v23 = v149;
    goto LABEL_16;
  }

  while (1)
  {
    v23 = v149;
    do
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_93;
      }

      if (v24 >= v22)
      {
        goto LABEL_34;
      }

      v18 = *(v15 + 8 * v24);
      ++v21;
    }

    while (!v18);
    v21 = v24;
LABEL_16:
    v25 = __clz(__rbit64(v18)) | (v21 << 6);
    v26 = v139;
    sub_24E65864C(*(v139 + 48) + 40 * v25, &v158);
    v27 = *(*(v26 + 56) + 8 * v25);
    v140 = v158;
    v28 = v160;
    v150 = v159;
    v29 = *(&v159 + 1);

    if (!v29)
    {
      break;
    }

    v18 &= v18 - 1;
    v158 = v140;
    v159 = v150;
    v160 = v28;
    if ((v27[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched] & 1) == 0)
    {
      v35 = *(v10 + v145);
      v36 = v141;
      if (*(v35 + 16))
      {

        v37 = sub_24E76D934(&v158);
        if (v38)
        {
          v39 = *(*(v35 + 56) + 8 * v37);

          sub_24E65864C(v39 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v151);

          v153 = v151[0];
          v154 = v151[1];
          v155 = v152;
          v40 = Shelf.withId(_:)(&v153);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v151[0] = v36;
          sub_24E81C630(v40, &v158, isUniquelyReferenced_nonNull_native);
          v42 = *&v151[0];
          sub_24E6585F8(&v153);
          goto LABEL_32;
        }
      }

      v48 = swift_isUniquelyReferenced_nonNull_native();
      *&v153 = v36;
      sub_24E81C630(v27, &v158, v48);
      goto LABEL_31;
    }

    if (*(*(v23 + v144) + 16))
    {

      sub_24E76D934(&v158);
      if (v30)
      {

        v43 = v136;
        v44 = Shelf.mergingWith(_:)(v27);
        v136 = v43;
        if (v43)
        {

          v51 = v135;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          *&v153 = v51;
          sub_24E81CAA8(v136, &v158, v52);

          v135 = v153;
          sub_24E6585F8(&v158);
          v136 = 0;
          v13 = v141;
          goto LABEL_9;
        }

        v45 = v44;
        v46 = v141;
        v47 = swift_isUniquelyReferenced_nonNull_native();
        *&v153 = v46;
        sub_24E81C630(v45, &v158, v47);

LABEL_31:
        v42 = v153;
LABEL_32:
        v141 = v42;
        v49 = v133;
        swift_beginAccess();
        sub_24F7A58DC(&v158, &v153);
        sub_24E601704(&v153, &qword_27F235830, &qword_24F93B8C0);
        swift_endAccess();
        v50 = *(v10 + v132);
        *(v10 + v132) = *(*(v10 + v49) + 16) != 0;
        sub_24F23BF64(v50);

        goto LABEL_22;
      }
    }

    v31 = v10;
    v32 = v146;
    sub_24F23B9E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = v142;
    sub_24F9283A8();
    *(&v154 + 1) = MEMORY[0x277D84030];
    *&v153 = swift_allocObject();
    sub_24E65864C(&v158, v153 + 16);
    sub_24F928438();
    sub_24E601704(&v153, &qword_27F2129B0, &unk_24F945320);
    v33 = v147;
    sub_24F92A5A8();

    v34 = v32;
    v10 = v31;
    v15 = v137;
    (*v143)(v34, v33);
LABEL_22:
    sub_24E6585F8(&v158);
    if (v18)
    {
      goto LABEL_10;
    }
  }

LABEL_34:

  v53 = *(v138 + 24);
  v56 = *(v53 + 64);
  v55 = v53 + 64;
  v54 = v56;
  v57 = 1 << *(*(v138 + 24) + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & v54;
  v60 = (v57 + 63) >> 6;
  *&v140 = *(v138 + 24);

  v61 = 0;
  *&v150 = v10;
  v139 = v55;
  v137 = v60;
  if (v59)
  {
    while (1)
    {
LABEL_41:
      v63 = __clz(__rbit64(v59)) | (v61 << 6);
      v64 = (*(v140 + 48) + 16 * v63);
      v66 = *v64;
      v65 = v64[1];
      v67 = *(*(v140 + 56) + 8 * v63);
      v68 = *(v149 + v144);
      v59 &= v59 - 1;
      *&v153 = *v64;
      *(&v153 + 1) = v65;
      swift_bridgeObjectRetain_n();
      v69 = v67;

      sub_24F92C7F8();
      if (*(v68 + 16))
      {
        sub_24E76D934(&v158);
        v71 = v70;
        sub_24E6585F8(&v158);

        if (v71)
        {
          *&v153 = v66;
          *(&v153 + 1) = v65;

          sub_24F92C7F8();
          v72 = v67;
          v73 = v135;
          v74 = swift_isUniquelyReferenced_nonNull_native();
          *&v153 = v73;
          v131 = v67;
          sub_24E81CAA8(v67, &v158, v74);
          sub_24E6585F8(&v158);
          v75 = v153;
          swift_beginAccess();
          *&v158 = v66;
          *(&v158 + 1) = v65;

          sub_24F92C7F8();
          sub_24F24655C(&v153, &v158);
          sub_24E6585F8(&v153);
          v135 = v75;
          if (*(&v159 + 1))
          {
            v153 = v158;
            v154 = v159;
            v155 = v160;
            sub_24F92C7D8();
            sub_24E6585F8(&v153);
            swift_dynamicCast();
          }

          else
          {
            v156 = 0;
            v157 = 0;
          }

          swift_endAccess();

          v80 = *(v10 + v132);
          *(v10 + v132) = *(*(v10 + v133) + 16) != 0;
          sub_24F23BF64(v80);

          goto LABEL_47;
        }
      }

      else
      {
        sub_24E6585F8(&v158);
      }

      v76 = v146;
      sub_24F23B9E0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      v77 = v67;
      *(swift_allocObject() + 16) = v142;
      sub_24F9283A8();
      *(&v159 + 1) = MEMORY[0x277D837D0];
      *&v158 = v66;
      *(&v158 + 1) = v65;
      v10 = v150;
      sub_24F928458();
      sub_24E601704(&v158, &qword_27F2129B0, &unk_24F945320);
      v78 = v147;
      sub_24F92A5A8();

      v79 = v77;
      v60 = v137;

      (*v143)(v76, v78);
LABEL_47:
      v55 = v139;
      if (!v59)
      {
        goto LABEL_37;
      }
    }
  }

  while (1)
  {
LABEL_37:
    v62 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    if (v62 >= v60)
    {
      break;
    }

    v59 = *(v55 + 8 * v62);
    ++v61;
    if (v59)
    {
      v61 = v62;
      goto LABEL_41;
    }
  }

  v81 = v141 + 64;
  v82 = 1 << *(v141 + 32);
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v141 + 64);
  v85 = (v82 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v86 = 0;
  while (1)
  {
    if (!v84)
    {
      while (1)
      {
        v87 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_94;
        }

        if (v87 >= v85)
        {
          goto LABEL_72;
        }

        v84 = *(v81 + 8 * v87);
        ++v86;
        if (v84)
        {
          v86 = v87;
          break;
        }
      }
    }

    v88 = __clz(__rbit64(v84)) | (v86 << 6);
    v89 = v141;
    sub_24E65864C(*(v141 + 48) + 40 * v88, &v158);
    v90 = *(*(v89 + 56) + 8 * v88);
    v147 = v158;
    v91 = v160;
    v148 = v159;
    v92 = *(&v159 + 1);

    if (!v92)
    {
      break;
    }

    v158 = v147;
    v159 = v148;
    v160 = v91;
    v10 = v150;
    v93 = v145;
    swift_beginAccess();

    v94 = swift_isUniquelyReferenced_nonNull_native();
    *&v151[0] = *(v10 + v93);
    v95 = *&v151[0];
    *(v10 + v93) = 0x8000000000000000;
    v96 = sub_24E76D934(&v158);
    v98 = *(v95 + 16);
    v99 = (v97 & 1) == 0;
    v100 = __OFADD__(v98, v99);
    v101 = v98 + v99;
    if (v100)
    {
      goto LABEL_96;
    }

    v102 = v97;
    if (*(v95 + 24) >= v101)
    {
      if ((v94 & 1) == 0)
      {
        v108 = v96;
        sub_24E8ADF84();
        v96 = v108;
      }
    }

    else
    {
      sub_24E899884(v101, v94);
      v96 = sub_24E76D934(&v158);
      if ((v102 & 1) != (v103 & 1))
      {
        goto LABEL_98;
      }
    }

    v104 = *&v151[0];
    if (v102)
    {
      *(*(*&v151[0] + 56) + 8 * v96) = v90;

      sub_24E6585F8(&v158);
    }

    else
    {
      *(*&v151[0] + 8 * (v96 >> 6) + 64) |= 1 << v96;
      v105 = v96;
      sub_24E65864C(&v158, v104[6] + 40 * v96);
      *(v104[7] + 8 * v105) = v90;
      sub_24E6585F8(&v158);
      v106 = v104[2];
      v100 = __OFADD__(v106, 1);
      v107 = v106 + 1;
      if (v100)
      {
        goto LABEL_97;
      }

      v104[2] = v107;
      v10 = v150;
    }

    v84 &= v84 - 1;
    *(v10 + v145) = v104;
    swift_endAccess();
  }

  v10 = v150;
LABEL_72:

  v109 = *(v10 + v134);
  if (v109)
  {
    v110 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
    swift_beginAccess();

    v112 = v136;
    sub_24F23A4D8(v111, v150);
    v114 = v113;
    v136 = v112;

    *(v109 + v110) = v114;
    v10 = v150;
  }

  v115 = *(v10 + qword_27F22F1A0);
  v116 = MEMORY[0x277D84F90];
  *&v151[0] = MEMORY[0x277D84F90];
  v117 = *(v115 + 16);

  if (!v117)
  {
LABEL_85:

    v124 = v141;
    *&v158 = v116;
    *(&v158 + 1) = v141;
    *&v159 = v135;
    *(&v159 + 1) = v138;
    v160 = 0;

    sub_24F92AD88();
    v125 = v160;

    v126 = *(v124 + 16);
    if (v126)
    {
      v127 = sub_24EAEACA0(*(v124 + 16), 0);
      v128 = sub_24EAEAC98();
      v129 = v158;

      sub_24E6586B4(v129);
      if (v128 == v126)
      {
LABEL_89:
        sub_24F239E3C(v127, type metadata accessor for GenericPage);

        goto LABEL_90;
      }

      __break(1u);
    }

    v127 = MEMORY[0x277D84F90];
    goto LABEL_89;
  }

  v118 = 0;
  *&v150 = v117 - 1;
LABEL_76:
  v119 = v115 + 32 + 40 * v118;
  v120 = v118;
  v121 = v145;
  while (v120 < *(v115 + 16))
  {
    sub_24E65864C(v119, &v158);
    if (*(*(v10 + v121) + 16))
    {

      sub_24E76D934(&v158);
      if (v122)
      {

        v123 = sub_24E6585F8(&v158);
        MEMORY[0x253050F00](v123);
        if (*((*&v151[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v151[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v118 = v120 + 1;
        sub_24F92B638();
        v116 = *&v151[0];
        if (v150 != v120)
        {
          goto LABEL_76;
        }

        goto LABEL_85;
      }
    }

    ++v120;
    sub_24E6585F8(&v158);
    v119 += 40;
    if (v117 == v120)
    {
      goto LABEL_85;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  sub_24F92CF88();
  __break(1u);
}

void sub_24F23D884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  *&v159 = a4;
  *&v158 = a3;
  v157 = sub_24F92AAE8();
  v9 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v156 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92A078();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*(Strong + qword_27F22F198))
  {
LABEL_85:

    return;
  }

  v144 = qword_27F22F198;
  v155 = Strong;
  v16 = *(Strong + qword_27F39C7D8);
  v143 = a6;
  v142 = a5;
  if (v16)
  {
    *v14 = 0;
    (*(v12 + 104))(v14, *MEMORY[0x277D22288], v11);

    sub_24F92A0C8();
    (*(v12 + 8))(v14, v11);
  }

  else
  {
  }

  v17 = MEMORY[0x277D84F90];
  v151 = sub_24E60986C(MEMORY[0x277D84F90]);
  v145 = sub_24E60ACC8(v17);
  v147 = a1;
  v18 = *(a1 + 16);
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = qword_27F39C780;
  v141 = qword_27F22F1D8;
  v24 = v18;

  v154 = v23;
  swift_beginAccess();
  v25 = 0;
  v146 = 0;
  v26 = (v20 + 63) >> 6;
  v153 = (v9 + 8);
  v152 = xmmword_24F93A400;
  while (1)
  {
    if (!v22)
    {
      do
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_88;
        }

        if (v27 >= v26)
        {
          goto LABEL_30;
        }

        v22 = *(v19 + 8 * v27);
        ++v25;
      }

      while (!v22);
      v25 = v27;
    }

    v28 = __clz(__rbit64(v22)) | (v25 << 6);
    sub_24E65864C(*(v24 + 48) + 40 * v28, &v168);
    v29 = *(*(v24 + 56) + 8 * v28);
    v149 = v168;
    v30 = v170;
    v150 = v169;
    v31 = *(&v169 + 1);

    if (!v31)
    {
      break;
    }

    v22 &= v22 - 1;
    v168 = v149;
    v169 = v150;
    v170 = v30;
    if (v29[OBJC_IVAR____TtC12GameStoreKit5Shelf_mergeWhenFetched])
    {
      v32 = off_28620C700;
      v33 = (v159)(0);
      v32(v33, &protocol witness table for GenericPage);
      if (!*(v34 + 16) || (sub_24E76D934(&v168), (v35 & 1) == 0))
      {

        v36 = v156;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = v152;
        sub_24F9283A8();
        *(&v164 + 1) = MEMORY[0x277D84030];
        *&v163 = swift_allocObject();
        sub_24E65864C(&v168, v163 + 16);
        sub_24F928438();
        sub_24E601704(&v163, &qword_27F2129B0, &unk_24F945320);
        v37 = v157;
        sub_24F92A5A8();

        (*v153)(v36, v37);
        goto LABEL_19;
      }

      v45 = v146;
      v46 = Shelf.mergingWith(_:)(v29);
      v146 = v45;
      if (!v45)
      {
        v47 = v46;
        v48 = v151;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v163 = v48;
        sub_24E81C630(v47, &v168, isUniquelyReferenced_nonNull_native);

        goto LABEL_27;
      }

      v54 = v145;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *&v163 = v54;
      sub_24E81CAA8(v146, &v168, v55);

      v145 = v163;
      sub_24E6585F8(&v168);
      v146 = 0;
    }

    else
    {
      v38 = *(v155 + v154);
      if (!*(v38 + 16))
      {
        goto LABEL_26;
      }

      v39 = sub_24E76D934(&v168);
      if ((v40 & 1) == 0)
      {

LABEL_26:

        v50 = v151;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        *&v163 = v50;
        sub_24E81C630(v29, &v168, v51);
LABEL_27:
        v151 = v163;
        goto LABEL_28;
      }

      v41 = *(*(v38 + 56) + 8 * v39);

      sub_24E65864C(v41 + OBJC_IVAR____TtC12GameStoreKit5Shelf_id, v161);

      v163 = v161[0];
      v164 = v161[1];
      v165 = v162;
      v42 = Shelf.withId(_:)(&v163);
      v43 = v151;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      *&v161[0] = v43;
      sub_24E81C630(v42, &v168, v44);
      v151 = *&v161[0];
      sub_24E6585F8(&v163);
LABEL_28:
      v52 = v155;
      v53 = v141;
      swift_beginAccess();
      sub_24F7A58DC(&v168, &v163);
      sub_24E601704(&v163, &qword_27F235830, &qword_24F93B8C0);
      swift_endAccess();
      sub_24F23404C(*(*(v52 + v53) + 16) != 0);

LABEL_19:
      sub_24E6585F8(&v168);
    }
  }

LABEL_30:

  v56 = *(v147 + 24);
  v59 = *(v56 + 64);
  v58 = v56 + 64;
  v57 = v59;
  v60 = 1 << *(*(v147 + 24) + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & v57;
  v63 = (v60 + 63) >> 6;
  *&v150 = *(v147 + 24);

  v64 = 0;
  v65 = v155;
  *&v149 = v58;
  v148 = v63;
  if (v62)
  {
    while (1)
    {
LABEL_40:
      while (1)
      {
        v71 = __clz(__rbit64(v62));
        v62 &= v62 - 1;
        v72 = v71 | (v64 << 6);
        v73 = (*(v150 + 48) + 16 * v72);
        v74 = *v73;
        v75 = v73[1];
        v76 = *(*(v150 + 56) + 8 * v72);
        v77 = off_28620C700;
        v78 = (v159)(0);
        v77(v78, &protocol witness table for GenericPage);
        v80 = v79;
        *&v163 = v74;
        *(&v163 + 1) = v75;
        swift_bridgeObjectRetain_n();
        v81 = v76;
        sub_24F92C7F8();
        if (*(v80 + 16))
        {
          break;
        }

        sub_24E6585F8(&v168);

LABEL_35:
        v66 = v76;
        v67 = v156;
        sub_24F23B9E0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = v152;
        sub_24F9283A8();
        *(&v169 + 1) = MEMORY[0x277D837D0];
        *&v168 = v74;
        *(&v168 + 1) = v75;
        sub_24F928458();
        sub_24E601704(&v168, &qword_27F2129B0, &unk_24F945320);
        v68 = v157;
        sub_24F92A5A8();

        v69 = v66;
        v63 = v148;

        (*v153)(v67, v68);
        v65 = v155;
        v58 = v149;
        if (!v62)
        {
          goto LABEL_36;
        }
      }

      sub_24E76D934(&v168);
      v83 = v82;
      sub_24E6585F8(&v168);

      if ((v83 & 1) == 0)
      {
        goto LABEL_35;
      }

      *&v163 = v74;
      *(&v163 + 1) = v75;

      sub_24F92C7F8();
      v84 = v76;
      v85 = v145;
      v86 = swift_isUniquelyReferenced_nonNull_native();
      *&v163 = v85;
      v140 = v76;
      sub_24E81CAA8(v76, &v168, v86);
      sub_24E6585F8(&v168);
      v87 = v163;
      v65 = v155;
      swift_beginAccess();
      *&v168 = v74;
      *(&v168 + 1) = v75;

      sub_24F92C7F8();
      sub_24F24655C(&v163, &v168);
      sub_24E6585F8(&v163);
      v145 = v87;
      if (*(&v169 + 1))
      {
        v163 = v168;
        v164 = v169;
        v165 = v170;
        sub_24F92C7D8();
        sub_24E6585F8(&v163);
        swift_dynamicCast();
      }

      else
      {
        v166 = 0;
        v167 = 0;
      }

      v58 = v149;

      swift_endAccess();

      sub_24F23404C(*(*(v65 + v141) + 16) != 0);

      if (!v62)
      {
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
LABEL_36:
    v70 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    if (v70 >= v63)
    {
      break;
    }

    v62 = *(v58 + 8 * v70);
    ++v64;
    if (v62)
    {
      v64 = v70;
      goto LABEL_40;
    }
  }

  v88 = v151 + 64;
  v89 = 1 << *(v151 + 32);
  v90 = -1;
  if (v89 < 64)
  {
    v90 = ~(-1 << v89);
  }

  v91 = v90 & *(v151 + 64);
  v92 = (v89 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v93 = 0;
  while (1)
  {
    if (!v91)
    {
      while (1)
      {
        v94 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          goto LABEL_89;
        }

        if (v94 >= v92)
        {
          goto LABEL_67;
        }

        v91 = *(v88 + 8 * v94);
        ++v93;
        if (v91)
        {
          v93 = v94;
          break;
        }
      }
    }

    v95 = __clz(__rbit64(v91)) | (v93 << 6);
    v96 = v151;
    sub_24E65864C(*(v151 + 48) + 40 * v95, &v168);
    v97 = *(*(v96 + 56) + 8 * v95);
    v158 = v168;
    v98 = v170;
    v159 = v169;
    v99 = *(&v169 + 1);

    if (!v99)
    {
      break;
    }

    v168 = v158;
    v169 = v159;
    v170 = v98;
    v100 = v154;
    swift_beginAccess();

    v101 = swift_isUniquelyReferenced_nonNull_native();
    *&v161[0] = *(v65 + v100);
    v102 = *&v161[0];
    *(v65 + v100) = 0x8000000000000000;
    v103 = sub_24E76D934(&v168);
    v105 = *(v102 + 16);
    v106 = (v104 & 1) == 0;
    v107 = __OFADD__(v105, v106);
    v108 = v105 + v106;
    if (v107)
    {
      goto LABEL_91;
    }

    v109 = v104;
    if (*(v102 + 24) >= v108)
    {
      if ((v101 & 1) == 0)
      {
        v115 = v103;
        sub_24E8ADF84();
        v103 = v115;
      }
    }

    else
    {
      sub_24E899884(v108, v101);
      v103 = sub_24E76D934(&v168);
      if ((v109 & 1) != (v110 & 1))
      {
        goto LABEL_93;
      }
    }

    v111 = *&v161[0];
    if (v109)
    {
      *(*(*&v161[0] + 56) + 8 * v103) = v97;

      sub_24E6585F8(&v168);
    }

    else
    {
      *(*&v161[0] + 8 * (v103 >> 6) + 64) |= 1 << v103;
      v112 = v103;
      sub_24E65864C(&v168, v111[6] + 40 * v103);
      *(v111[7] + 8 * v112) = v97;
      sub_24E6585F8(&v168);
      v113 = v111[2];
      v107 = __OFADD__(v113, 1);
      v114 = v113 + 1;
      if (v107)
      {
        goto LABEL_92;
      }

      v111[2] = v114;
    }

    v91 &= v91 - 1;
    *(v65 + v154) = v111;
    swift_endAccess();
  }

LABEL_67:

  v116 = *(v65 + v144);
  if (v116)
  {
    v117 = OBJC_IVAR____TtC12GameStoreKit11GenericPage_shelfMapping;
    swift_beginAccess();

    v119 = v146;
    sub_24F23A4D8(v118, v155);
    v121 = v120;
    v146 = v119;

    *(v116 + v117) = v121;
    v65 = v155;
  }

  v122 = *(v65 + qword_27F22F1A0);
  v123 = MEMORY[0x277D84F90];
  *&v161[0] = MEMORY[0x277D84F90];
  v124 = *(v122 + 16);

  if (!v124)
  {
LABEL_80:

    *&v168 = v123;
    v131 = v151;
    *(&v168 + 1) = v151;
    *&v169 = v145;
    *(&v169 + 1) = v147;
    v170 = 0;

    sub_24F92AD88();
    v132 = v170;

    v133 = *(v131 + 16);
    if (v133)
    {
      v134 = sub_24EAEACA0(*(v131 + 16), 0);
      v135 = sub_24EAEAC98();
      v136 = v168;

      sub_24E6586B4(v136);
      v137 = v143;
      v138 = v142;
      if (v135 == v133)
      {
LABEL_84:
        v137(v134, v138);

        goto LABEL_85;
      }

      __break(1u);
    }

    v134 = MEMORY[0x277D84F90];
    v137 = v143;
    v138 = v142;
    goto LABEL_84;
  }

  v125 = 0;
  *&v159 = v124 - 1;
LABEL_71:
  v126 = v122 + 32 + 40 * v125;
  v127 = v125;
  v128 = v154;
  while (v127 < *(v122 + 16))
  {
    sub_24E65864C(v126, &v168);
    if (*(*(v65 + v128) + 16))
    {

      sub_24E76D934(&v168);
      if (v129)
      {

        v130 = sub_24E6585F8(&v168);
        MEMORY[0x253050F00](v130);
        if (*((*&v161[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v161[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        v125 = v127 + 1;
        sub_24F92B638();
        v123 = *&v161[0];
        if (v159 != v127)
        {
          goto LABEL_71;
        }

        goto LABEL_80;
      }
    }

    ++v127;
    sub_24E6585F8(&v168);
    v126 += 40;
    if (v124 == v127)
    {
      goto LABEL_80;
    }
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  sub_24F92CF88();
  __break(1u);
}