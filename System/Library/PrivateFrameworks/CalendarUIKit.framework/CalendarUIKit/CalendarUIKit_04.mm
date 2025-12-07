id sub_1CABEF0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_1CAD4DF54();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = sub_1CAD4DF54();

  if (!a6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v10 = sub_1CAD4DF54();

LABEL_8:
  v11 = [swift_getObjCClassFromMetadata() shareeWithName:v8 emailAddress:v9 phoneNumber:v10];

  return v11;
}

uint64_t sub_1CABEF1A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16[2] = a1;
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView(0);
  v4 = FamilyCalendarShareeView - 8;
  v5 = *(FamilyCalendarShareeView - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](FamilyCalendarShareeView);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642C0, &qword_1CAD5C418);
  v16[1] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v16 - v8;
  *v9 = sub_1CAD4CD94();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642C8, &qword_1CAD5C420);
  sub_1CABEF4C8(v2, &v9[*(v10 + 44)]);
  sub_1CABF15E0(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_1CABF1644(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  v13 = &v9[*(v7 + 36)];
  sub_1CAD4C824();
  sub_1CAD4E2E4();
  *v13 = &unk_1CAD5C430;
  *(v13 + 1) = v12;
  v17 = *&v2[*(v4 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642D0, &qword_1CAD5C438);
  sub_1CAD4D9B4();
  sub_1CABF15E0(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_1CABF1644(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v11);
  type metadata accessor for EKShareeWithData(0);
  type metadata accessor for EditShareeView(0);
  sub_1CABF178C();
  sub_1CABF252C(&qword_1EC4642F8, type metadata accessor for EKShareeWithData, &unk_1CAD67154);
  sub_1CABF252C(&qword_1EC464300, type metadata accessor for EditShareeView, &unk_1CAD64BD0);
  sub_1CAD4D6F4();

  return sub_1CAB2CA14(v9);
}

uint64_t sub_1CABEF4C8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView(0);
  v75 = *(FamilyCalendarShareeView - 8);
  MEMORY[0x1EEE9AC00](FamilyCalendarShareeView - 8);
  v76 = v4;
  v77 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464320, &qword_1CAD5C4D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v82 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v81 = &v65 - v8;
  v72 = sub_1CAD4C944();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464328, &qword_1CAD5C4D8);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v11 = &v65 - v10;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464330, &qword_1CAD5C4E0);
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v65 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464338, &qword_1CAD5C4E8);
  v73 = *(v80 - 8);
  v13 = MEMORY[0x1EEE9AC00](v80);
  v74 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v88 = &v65 - v15;
  v16 = sub_1CAD4CC04();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1CAD4DF24();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v22 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v91 = sub_1CAD4D8F4();
  v90 = sub_1CAD4D244();
  sub_1CAD4DEE4();
  v23 = CUIKBundle();
  sub_1CAD4C184();
  v87 = sub_1CAD4DFC4();
  v86 = v24;
  sub_1CAD4DF14();
  sub_1CAD4DF04();
  v25 = *a1;
  v79 = a1;
  if (a1[8] == 1)
  {
    v113 = v25;
  }

  else
  {

    sub_1CAD4E3F4();
    v26 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v25 = v113;
  }

  swift_getKeyPath(byte_1CAD5C450);
  v99 = v25;
  sub_1CABF252C(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel, &unk_1CAD5F2F0);
  sub_1CAD4C424();

  sub_1CAD4DEF4();

  sub_1CAD4DF04();
  sub_1CAD4DF34();
  v27 = CUIKBundle();
  sub_1CAD4C184();
  v85 = sub_1CAD4DFC4();
  v84 = v28;
  v83 = sub_1CAD4D1F4();
  v29 = sub_1CAD4C5F4();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v114 = 0;
  MEMORY[0x1EEE9AC00](v29);
  v38 = v79;
  *(&v65 - 2) = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464340, &qword_1CAD5C520);
  sub_1CABF2258();
  sub_1CAD4D354();
  v39 = v69;
  sub_1CAD4DCF4();
  v40 = sub_1CAB23B0C(&qword_1EC464390, &qword_1EC464328, &qword_1CAD5C4D8, MEMORY[0x1E697CCF8]);
  v41 = sub_1CABF252C(&qword_1EC464398, MEMORY[0x1E697C1F8], MEMORY[0x1E697C1E0]);
  v42 = v65;
  v43 = v68;
  v44 = v72;
  sub_1CAD4D794();
  (*(v71 + 8))(v39, v44);
  (*(v66 + 8))(v11, v43);
  v99 = v43;
  v100 = v44;
  v101 = v40;
  v102 = v41;
  swift_getOpaqueTypeConformance2();
  v45 = v88;
  v46 = v70;
  sub_1CAD4D664();
  (*(v67 + 8))(v42, v46);
  v47 = v77;
  sub_1CABF15E0(v38, v77);
  v48 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v49 = swift_allocObject();
  sub_1CABF1644(v47, v49 + v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643A0, &qword_1CAD5C548);
  sub_1CABF25D0();
  v50 = v81;
  sub_1CAD4D9E4();
  v51 = v73;
  v52 = *(v73 + 16);
  v53 = v74;
  v54 = v45;
  v55 = v80;
  v52(v74, v54, v80);
  v56 = v82;
  sub_1CAB23A9C(v50, v82, &qword_1EC464320, &qword_1CAD5C4D0);
  *&v92 = v91;
  *(&v92 + 1) = KeyPath;
  *&v93 = v90;
  *(&v93 + 1) = v87;
  *&v94 = v86;
  *(&v94 + 1) = v85;
  *&v95 = v84;
  BYTE8(v95) = v83;
  HIDWORD(v95) = *&v115[3];
  *(&v95 + 9) = *v115;
  *&v96 = v31;
  *(&v96 + 1) = v33;
  *&v97 = v35;
  *(&v97 + 1) = v37;
  v98 = 0;
  v57 = v97;
  v58 = v78;
  *(v78 + 64) = v96;
  *(v58 + 80) = v57;
  *(v58 + 96) = 0;
  v59 = v93;
  *v58 = v92;
  *(v58 + 16) = v59;
  v60 = v95;
  *(v58 + 32) = v94;
  *(v58 + 48) = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643B0, &unk_1CAD5C550);
  v52((v58 + v61[12]), v53, v55);
  v62 = v58 + v61[16];
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_1CAB23A9C(v56, v58 + v61[20], &qword_1EC464320, &qword_1CAD5C4D0);
  sub_1CAB23A9C(&v92, &v99, &qword_1EC4643B8, &qword_1CAD5E010);
  sub_1CAB21B68(v50, &qword_1EC464320, &qword_1CAD5C4D0);
  v63 = *(v51 + 8);
  v63(v88, v55);
  sub_1CAB21B68(v56, &qword_1EC464320, &qword_1CAD5C4D0);
  v63(v53, v55);
  v99 = v91;
  v100 = KeyPath;
  v101 = v90;
  v102 = v87;
  v103 = v86;
  v104 = v85;
  v105 = v84;
  v106 = v83;
  *v107 = *v115;
  *&v107[3] = *&v115[3];
  v108 = v31;
  v109 = v33;
  v110 = v35;
  v111 = v37;
  v112 = 0;
  return sub_1CAB21B68(&v99, &qword_1EC4643B8, &qword_1CAD5E010);
}

uint64_t sub_1CABF0210(uint64_t a1)
{
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView(0);
  v3 = *(FamilyCalendarShareeView - 8);
  v4 = *(v3 + 64);
  v5 = (a1 + *(MEMORY[0x1EEE9AC00](FamilyCalendarShareeView - 8) + 32));
  v7 = *v5;
  v6 = v5[1];
  v11[2] = v7;
  v11[3] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464310, &qword_1CAD5C448);
  sub_1CAD4D994();
  swift_getKeyPath(byte_1CAD5C560);
  sub_1CABF15E0(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1CABF1644(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642A0, &qword_1CAD5C380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464358, &qword_1CAD5C528);
  sub_1CAB23B0C(&qword_1EC4643C0, &qword_1EC4642A0, &qword_1CAD5C380, MEMORY[0x1E69E6338]);
  sub_1CABF2864();
  sub_1CABF22DC();
  return sub_1CAD4DB64();
}

void sub_1CABF03F0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 emailAddress];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1CAD4DF94();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

uint64_t sub_1CABF0458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[0] = a3;
  v5 = sub_1CAD4CF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView(0);
  v10 = *(FamilyCalendarShareeView - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](FamilyCalendarShareeView - 8);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464360, &qword_1CAD5C530);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - v14;
  v16 = *a1;
  sub_1CABF15E0(a2, v12);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1CABF1644(v12, v19 + v17);
  *(v19 + v18) = v16;
  sub_1CABF2B0C();

  sub_1CAD4D9E4();
  v20 = [objc_opt_self() cuik_tertiaryGroupedBackgroundColor];
  v22[1] = sub_1CAD4D7D4();
  *&v15[*(v13 + 36)] = sub_1CAD4DAA4();
  sub_1CAD4CF54();
  sub_1CABF23F4();
  sub_1CABF252C(&qword_1EC464380, MEMORY[0x1E697C728], MEMORY[0x1E697C710]);
  sub_1CAD4D4E4();
  (*(v6 + 8))(v8, v5);
  return sub_1CAB21B68(v15, &qword_1EC464360, &qword_1CAD5C530);
}

uint64_t sub_1CABF0768(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CreateFamilyCalendarShareeView(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642D0, &qword_1CAD5C438);
  return sub_1CAD4D9A4();
}

id sub_1CABF07D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[2];
  result = [v4 name];
  if (result)
  {
    v6 = result;
    v7 = sub_1CAD4DF94();
    v9 = v8;

    v11 = a1[3];
    v10 = a1[4];
    sub_1CABF2B60(v11, v10);
    result = [v4 shareeAccessLevel];
    *a2 = v7;
    a2[1] = v9;
    a2[2] = v11;
    a2[3] = v10;
    a2[4] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1CABF0870@<Q0>(uint64_t a1@<X8>)
{
  sub_1CAD4CD04();
  v2 = CUIKBundle();
  v3 = sub_1CAD4D434();
  v5 = v4;
  v7 = v6;
  v8 = sub_1CAD4D414();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1CABA6128(v3, v5, v7 & 1);

  sub_1CAD4DC94();
  sub_1CAD4C9A4();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 96) = v20;
  *(a1 + 112) = v21;
  *(a1 + 128) = v22;
  *(a1 + 32) = v16;
  *(a1 + 48) = v17;
  result = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v19;
  return result;
}

uint64_t sub_1CABF09E8(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1CAD4CC04();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  sub_1CAD4E2C4();
  v1[10] = sub_1CAD4E2B4();
  v4 = sub_1CAD4E2A4();

  return MEMORY[0x1EEE6DFA0](sub_1CABF0ADC, v4, v3);
}

uint64_t sub_1CABF0ADC()
{
  v1 = v0[6];

  sub_1CABEEA74();
  v2 = *v1;
  v3 = *(v1 + 8);

  v4 = v2;
  if ((v3 & 1) == 0)
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = v0[7];
    sub_1CAD4E3F4();
    v8 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    (*(v6 + 8))(v5, v7);
    v4 = v0[2];
  }

  swift_getKeyPath(byte_1CAD5C450);
  v0[3] = v4;
  sub_1CABF252C(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel, &unk_1CAD5F2F0);
  sub_1CAD4C424();

  v9 = *(v4 + 40);
  v10 = *(v4 + 48);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    if (v3)
    {
    }

    else
    {
      v13 = v0[8];
      v12 = v0[9];
      v14 = v0[7];
      sub_1CAD4E3F4();
      v15 = sub_1CAD4D184();
      sub_1CAD4C534();

      sub_1CAD4CBF4();
      swift_getAtKeyPath();

      v16 = *(v13 + 8);
      v16(v12, v14);

      sub_1CAD4E3F4();
      v17 = sub_1CAD4D184();
      sub_1CAD4C534();

      sub_1CAD4CBF4();
      swift_getAtKeyPath();

      v16(v12, v14);
      v2 = v0[5];
    }

    v18 = *(v2 + 24);
    v19 = *(v2 + 32);

    sub_1CAC3671C(v18, v19);
  }

  v20 = v0[1];

  return v20();
}

void *sub_1CABF0DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView(0);
  v7 = *(FamilyCalendarShareeView - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](FamilyCalendarShareeView - 8);
  v9 = *a1;
  sub_1CABF15E0(a2, &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1CABF1644(&v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  *a3 = swift_getKeyPath("P&q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0, &qword_1CAD5C410);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for EditShareeView(0);
  type metadata accessor for EKShareeWithData(0);
  sub_1CABF252C(&qword_1EC464308, type metadata accessor for EKShareeWithData, &unk_1CAD67138);
  swift_retain_n();
  sub_1CAD4DC14();
  v13 = (a3 + *(v12 + 24));
  *v13 = sub_1CABF1874;
  v13[1] = v11;
  v14 = a3 + *(v12 + 28);
  v17[15] = 0;
  result = sub_1CAD4D984();
  v16 = v18;
  *v14 = v17[16];
  *(v14 + 1) = v16;
  return result;
}

uint64_t sub_1CABF0FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C784();
  v15[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for CreateFamilyCalendarShareeView(0) + 24));
  v8 = *v7;
  v9 = v7[1];
  v18 = *v7;
  v19 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464310, &qword_1CAD5C448);
  sub_1CAD4D994();
  v10 = sub_1CABF1D84(&v20, a2);

  if (!(v20 >> 62))
  {
    v11 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = sub_1CAD4E604();
  if (v11 < v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_1CABF20F4(v10, v11);
  v16 = v8;
  v17 = v9;
  v15[1] = v20;
  sub_1CAD4D9A4();

  v18 = v8;
  v19 = v9;
  sub_1CAD4D994();
  if (!(v16 >> 62))
  {
    v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v12)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  v14 = sub_1CAD4E604();

  if (!v14)
  {
LABEL_5:
    sub_1CABF18DC(&qword_1EC4632B0, &qword_1CAD5C410, MEMORY[0x1E697BF88], v6);
    sub_1CAD4C774();
    return (*(v15[0] + 8))(v6, v4);
  }

  return result;
}

double sub_1CABF1238@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for CreateFamilyCalendarViewModel(0);
  sub_1CABF252C(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel, &unk_1CAD5F2F0);
  *a1 = sub_1CAD4C6D4();
  *(a1 + 8) = v2 & 1;
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView(0);
  v4 = FamilyCalendarShareeView[5];
  *(a1 + v4) = swift_getKeyPath("P&q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0, &qword_1CAD5C410);
  swift_storeEnumTagMultiPayload();
  v5 = (a1 + FamilyCalendarShareeView[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642A0, &qword_1CAD5C380);
  sub_1CAD4D984();
  *v5 = v8;
  v6 = FamilyCalendarShareeView[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4642B0, &qword_1CAD5C388);
  sub_1CAD4D984();
  result = *&v8;
  *(a1 + v6) = v8;
  return result;
}

uint64_t sub_1CABF1380@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1CAD5C4A8);
  sub_1CABF252C(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel, &unk_1CAD5F2F0);
  sub_1CAD4C424();

  *a2 = *(v3 + 112);
  return swift_unknownObjectRetain();
}

uint64_t sub_1CABF142C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_1CAD5C4A8);
  sub_1CABF252C(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel, &unk_1CAD5F2F0);
  sub_1CAD4C414();
}

id sub_1CABF14F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_1CAD5C478);
  sub_1CABF252C(&qword_1EC4642B8, type metadata accessor for CreateFamilyCalendarViewModel, &unk_1CAD5F2F0);
  sub_1CAD4C424();

  v4 = *(v3 + 120);
  *a2 = v4;

  return v4;
}

void sub_1CABF15B0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1CAC36BD0(v1);
}

uint64_t sub_1CABF15E0(uint64_t a1, uint64_t a2)
{
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView(0);
  (*(*(FamilyCalendarShareeView - 8) + 16))(a2, a1, FamilyCalendarShareeView);
  return a2;
}

uint64_t sub_1CABF1644(uint64_t a1, uint64_t a2)
{
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView(0);
  (*(*(FamilyCalendarShareeView - 8) + 32))(a2, a1, FamilyCalendarShareeView);
  return a2;
}

uint64_t sub_1CABF16A8()
{
  v2 = *(type metadata accessor for CreateFamilyCalendarShareeView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1CABCCCB0;

  return sub_1CABF09E8(v0 + v3);
}

unint64_t sub_1CABF178C()
{
  result = qword_1EC4642D8;
  if (!qword_1EC4642D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4642C0, &qword_1CAD5C418);
    sub_1CAB23B0C(&qword_1EC4642E0, &qword_1EC4642E8, &qword_1CAD5C440, MEMORY[0x1E6981868]);
    sub_1CABF252C(&qword_1EC4642F0, MEMORY[0x1E697C020], MEMORY[0x1E697C018]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4642D8);
  }

  return result;
}

uint64_t sub_1CABF18DC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1CAD4CC04();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1CAB23A9C(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1CAD4E3F4();
    v19 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_1CABF1AF0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1CAD4E604();
  }

  return sub_1CAD4E6D4();
}

uint64_t sub_1CABF1BE0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1CAD4E604();
LABEL_9:
  result = sub_1CAD4E6D4();
  *v2 = result;
  return result;
}

unint64_t sub_1CABF1C80(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = sub_1CAD4E604();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1CCAA7940](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
    }

    v8 = [*(v7 + 16) isEqualToSharee_];

    if (v8)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_1CABF1D84(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1CABF1C80(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return sub_1CAD4E604();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v18 = a1;
  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == sub_1CAD4E604())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1CCAA7940](v9, v5);
      goto LABEL_15;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_15:
    v12 = [*(v11 + 16) isEqualToSharee_];

    if ((v12 & 1) == 0)
    {
      if (v8 != v9)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1CCAA7940](v8, v5);
          v14 = MEMORY[0x1CCAA7940](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v15)
          {
            goto LABEL_45;
          }

          if (v9 >= v15)
          {
            goto LABEL_46;
          }

          v13 = *(v5 + 32 + 8 * v8);
          v14 = *(v5 + 32 + 8 * v9);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1CABF1AF0(v5);
          v16 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v17 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

        if ((v5 & 0x8000000000000000) != 0 || v16)
        {
          v5 = sub_1CABF1AF0(v5);
          v17 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v9 >= *(v17 + 16))
        {
          goto LABEL_43;
        }

        *(v17 + 8 * v9 + 32) = v13;

        *v18 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return sub_1CAD4E604();
}

uint64_t sub_1CABF1FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for EKShareeWithData(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1CAD4E604();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1CAD4E604();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CABF20F4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1CAD4E604();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1CAD4E604();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1CABF1BE0(result, 1);

  return sub_1CABF1FF4(v5, v3, 0);
}

unint64_t sub_1CABF21E8()
{
  result = qword_1EC464318;
  if (!qword_1EC464318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC464318);
  }

  return result;
}

unint64_t sub_1CABF2258()
{
  result = qword_1EC464348;
  if (!qword_1EC464348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464340, &qword_1CAD5C520);
    sub_1CABF22DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464348);
  }

  return result;
}

unint64_t sub_1CABF22DC()
{
  result = qword_1EC464350;
  if (!qword_1EC464350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464358, &qword_1CAD5C528);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464360, &qword_1CAD5C530);
    sub_1CAD4CF64();
    sub_1CABF23F4();
    sub_1CABF252C(&qword_1EC464380, MEMORY[0x1E697C728], MEMORY[0x1E697C710]);
    swift_getOpaqueTypeConformance2();
    sub_1CABF24D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464350);
  }

  return result;
}

unint64_t sub_1CABF23F4()
{
  result = qword_1EC464368;
  if (!qword_1EC464368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464360, &qword_1CAD5C530);
    sub_1CAB23B0C(&qword_1EC464370, &qword_1EC464378, &qword_1CAD5C538, MEMORY[0x1E697D678]);
    sub_1CAB23B0C(&qword_1EC464168, &qword_1EC464170, &qword_1CAD5C540, MEMORY[0x1E697FDC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464368);
  }

  return result;
}

unint64_t sub_1CABF24D8()
{
  result = qword_1EC464388;
  if (!qword_1EC464388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464388);
  }

  return result;
}

uint64_t sub_1CABF252C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CABF25D0()
{
  result = qword_1EC4643A8;
  if (!qword_1EC4643A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4643A0, &qword_1CAD5C548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4643A8);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView(0);
  v2 = *(*(FamilyCalendarShareeView - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(FamilyCalendarShareeView - 8) + 64);

  v5 = *(FamilyCalendarShareeView + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0, &qword_1CAD5C410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1CAD4C784();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CABF27D0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CreateFamilyCalendarShareeView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1CABF2864()
{
  result = qword_1EC4643C8;
  if (!qword_1EC4643C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4643D0, &unk_1CAD5C590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4643C8);
  }

  return result;
}

uint64_t objectdestroy_7Tm()
{
  FamilyCalendarShareeView = type metadata accessor for CreateFamilyCalendarShareeView(0);
  v2 = *(*(FamilyCalendarShareeView - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(FamilyCalendarShareeView - 8) + 64);

  v5 = *(FamilyCalendarShareeView + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0, &qword_1CAD5C410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1CAD4C784();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1CABF2A64(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CreateFamilyCalendarShareeView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_1CABF2B0C()
{
  result = qword_1EC4643D8;
  if (!qword_1EC4643D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4643D8);
  }

  return result;
}

uint64_t sub_1CABF2B60(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CABB8BB4(result, a2);
  }

  return result;
}

unint64_t sub_1CABF2B74(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1CABF2C1C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1CAD351C8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1CABF2D08(v6, a2, 0, type metadata accessor for EventAlarmModelObject);
  *v2 = v4;
  return result;
}

unint64_t sub_1CABF2D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1CABF2E54(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 80 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 80 * a3;
  v13 = (v7 + 32 + 80 * a2);
  if (result != v13 || result >= v13 + 80 * v12)
  {
    result = memmove(result, v13, 80 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_1CABF2F64(uint64_t a1, uint64_t a2, int a3)
{
  v30 = a3;
  v28 = a2;
  v29 = sub_1CAD4C6A4();
  v3 = *(v29 - 8);
  v4 = MEMORY[0x1EEE9AC00](v29);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - v7;
  v9 = sub_1CAD4C1B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464710, &unk_1CAD67BD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = sub_1CAC929E8(&unk_1F4A9FD10);
  swift_arrayDestroy();
  sub_1CAD4C1C4();
  sub_1CAD4C1A4();
  (*(v10 + 8))(v12, v9);
  v17 = sub_1CAD4C174();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) == 1)
  {

    sub_1CAB21B68(v15, &qword_1EC464710, &unk_1CAD67BD0);
    if (v30)
    {
      return sub_1CAD4D874();
    }

LABEL_8:
    v24 = v29;
    (*(v3 + 104))(v6, *MEMORY[0x1E697DBB0], v29);
    v25 = sub_1CAD4C694();
    (*(v3 + 8))(v6, v24);
    if (v25)
    {
      return sub_1CAD4D844();
    }

    return sub_1CAD4D874();
  }

  v19 = sub_1CAD4C164();
  v21 = v20;
  (*(v18 + 8))(v15, v17);
  if ((sub_1CABF3384(v19, v21, v16) & 1) == 0)
  {

    if ((v30 & 1) == 0)
    {
      goto LABEL_8;
    }

    return sub_1CAD4D874();
  }

  v22 = v29;
  (*(v3 + 16))(v8, v28, v29);
  v23 = (*(v3 + 88))(v8, v22);
  if (v23 == *MEMORY[0x1E697DBC0])
  {

    return sub_1CAD4D874();
  }

  if (v23 == *MEMORY[0x1E697DBB0])
  {

    return sub_1CAD4D844();
  }

  else
  {
    result = sub_1CAD4E794();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CABF3384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1CAD4EA84();
  sub_1CAD4E054();
  v6 = sub_1CAD4EAC4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1CAD4E9E4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1CABF347C(uint64_t a1, uint64_t a2)
{
  v21[1] = a2;
  v2 = sub_1CAD4C6A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CAD4C1B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464710, &unk_1CAD67BD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v21 - v11;
  v13 = sub_1CAC929E8(&unk_1F4A9FD50);
  swift_arrayDestroy();
  sub_1CAD4C1C4();
  sub_1CAD4C1A4();
  (*(v7 + 8))(v9, v6);
  v14 = sub_1CAD4C174();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {

    sub_1CAB21B68(v12, &qword_1EC464710, &unk_1CAD67BD0);
  }

  else
  {
    v16 = sub_1CAD4C164();
    v18 = v17;
    (*(v15 + 8))(v12, v14);
    LOBYTE(v16) = sub_1CABF3384(v16, v18, v13);

    if (v16)
    {
      return sub_1CAD4D824();
    }
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E697DBB0], v2);
  v20 = sub_1CAD4C694();
  (*(v3 + 8))(v5, v2);
  if (v20)
  {
    return sub_1CAD4D874();
  }

  else
  {
    return sub_1CAD4D844();
  }
}

uint64_t CUIKMonthDimmingMode.hashValue.getter()
{
  v1 = *v0;
  sub_1CAD4EA84();
  MEMORY[0x1CCAA7D10](v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABF3818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 *a10)
{
  LODWORD(v240) = a8;
  v234 = a7;
  v218 = a6;
  v249 = a4;
  v233 = a3;
  v232 = a2;
  v224 = a1;
  v11 = sub_1CAD4C354();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v250 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1CAD4C404();
  v248 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v217 = &v204 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_1CAD4C374();
  v244 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v225 = &v204 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0, &qword_1CAD599B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v261 = &v204 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645F0, &qword_1CAD5CCE0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v260 = &v204 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70, &unk_1CAD61F00);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v268 = &v204 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v235 = &v204 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v231 = &v204 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v258 = (&v204 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v271 = &v204 - v29;
  v30 = sub_1CAD4C0F4();
  v222 = *(v30 - 8);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v269 = &v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v215 = &v204 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v214 = &v204 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v270 = (&v204 - v38);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v207 = &v204 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v213 = &v204 - v41;
  v259 = sub_1CAD4BDC4();
  v247 = *(v259 - 8);
  v42 = MEMORY[0x1EEE9AC00](v259);
  v264 = &v204 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  *&v243 = &v204 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v245 = &v204 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v212 = &v204 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v265 = &v204 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v209 = &v204 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v204 - v54;
  v56 = type metadata accessor for WeekDayViewModel(0);
  v226 = *(v56 - 8);
  v57 = MEMORY[0x1EEE9AC00](v56 - 8);
  v246 = (&v204 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v204 - v59;
  v230 = *a10;
  v61 = sub_1CAD4C274();
  v62 = [v61 daysInWeek];

  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  v229 = v63;
  v228 = v65;
  v227 = v64 + 56;
  v65(v60, 1, 1);
  v256 = sub_1CABF5398(v60, v62);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464230, &unk_1CAD5E3B0);
  v67 = *(v12 + 72);
  v68 = v55;
  v69 = *(v12 + 80);
  v70 = (v69 + 32) & ~v69;
  v211 = 3 * v67;
  v253 = v69;
  v255 = v66;
  v71 = swift_allocObject();
  v210 = xmmword_1CAD5A590;
  *(v71 + 16) = xmmword_1CAD5A590;
  v252 = v70;
  v72 = v71 + v70;
  v73 = *MEMORY[0x1E6969A78];
  v239 = v12;
  v74 = *(v12 + 104);
  v223 = v73;
  v74(v72);
  v75 = *MEMORY[0x1E6969A68];
  v254 = v67;
  (v74)(v72 + v67, v75, v11);
  v76 = *MEMORY[0x1E6969A50];
  v251 = 2 * v67;
  v77 = v12 + 104;
  v78 = v11;
  v262 = v74;
  (v74)(v72 + 2 * v67, v76, v11);
  sub_1CAC926C8(v71);
  swift_setDeallocating();
  v79 = a5;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1CAD4C244();
  v80 = v222;

  v81 = v271;
  sub_1CAD4C2A4();
  v82 = v81;
  v83 = (v80 + 48);
  v84 = *(v80 + 48);
  v85 = v30;
  if (v84(v82, 1, v30) == 1)
  {
    sub_1CAB21B68(v82, &unk_1EC465A70, &unk_1CAD61F00);
    v86 = sub_1CAD4E3E4();
    v87 = v247;
    v88 = v264;
    v89 = v259;
    (*(v247 + 16))(v264, v68, v259);
    sub_1CABD4070(0, &qword_1EC464738, 0x1E69E9BF8);
    v90 = sub_1CAD4E4C4();
    if (os_log_type_enabled(v90, v86))
    {
      v91 = swift_slowAlloc();
      v92 = v68;
      v93 = swift_slowAlloc();
      v272 = v93;
      *v91 = 136315138;
      sub_1CAC038CC(&qword_1EC464740, MEMORY[0x1E6968278], MEMORY[0x1E69682A0]);
      v94 = sub_1CAD4E9B4();
      v95 = v88;
      v97 = v96;
      v98 = *(v87 + 8);
      v98(v95, v89);
      v99 = sub_1CAD39738(v94, v97, &v272);

      *(v91 + 4) = v99;
      _os_log_impl(&dword_1CAB19000, v90, v86, "Couldn't generate startOfMonth from components: %s", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v93);
      MEMORY[0x1CCAA9440](v93, -1, -1);
      MEMORY[0x1CCAA9440](v91, -1, -1);

      v98(v92, v89);
      return v256;
    }

    v124 = *(v87 + 8);
    v124(v88, v89);
    v125 = v68;
    v126 = v89;
LABEL_8:
    v124(v125, v126);
    return v256;
  }

  v257 = v77;
  v100 = v80 + 32;
  v263 = *(v80 + 32);
  v263(v213, v82, v85);
  (v244[7])(v260, 1, 1, v216);
  (*(v248 + 56))(v261, 1, 1, v237);
  v271 = sub_1CAD4BD14();
  v238 = v101;
  v242 = sub_1CAD4BD44();
  v264 = v79;
  v204 = v68;
  v241 = sub_1CAD4BD64();
  sub_1CAD4C214();
  v102 = v209;
  sub_1CAD4BDB4();
  v103 = v258;
  sub_1CAD4C2A4();
  v260 = v84;
  v261 = v83;
  if (v84(v103, 1, v85) == 1)
  {
    v104 = v102;
    sub_1CAB21B68(v103, &unk_1EC465A70, &unk_1CAD61F00);
    v105 = sub_1CAD4E3E4();
    v106 = v247;
    v107 = v243;
    v108 = v259;
    (*(v247 + 16))(v243, v104, v259);
    v109 = v222;
    v110 = v213;
    (*(v222 + 16))(v269, v213, v85);
    sub_1CABD4070(0, &qword_1EC464738, 0x1E69E9BF8);
    v111 = sub_1CAD4E4C4();
    if (!os_log_type_enabled(v111, v105))
    {

      v199 = *(v109 + 8);
      v199(v269, v85);
      v200 = *(v106 + 8);
      v200(v107, v108);
      v200(v104, v108);
      v199(v110, v85);
      v200(v204, v108);
      return v256;
    }

    v112 = swift_slowAlloc();
    v271 = swift_slowAlloc();
    v272 = v271;
    *v112 = 136315394;
    sub_1CAC038CC(&qword_1EC464740, MEMORY[0x1E6968278], MEMORY[0x1E69682A0]);
    v113 = sub_1CAD4E9B4();
    LODWORD(v268) = v105;
    v115 = v114;
    v270 = *(v106 + 8);
    v270(v107, v108);
    v116 = sub_1CAD39738(v113, v115, &v272);

    *(v112 + 4) = v116;
    *(v112 + 12) = 2080;
    sub_1CAC038CC(&qword_1EC464748, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v117 = v269;
    v118 = sub_1CAD4E9B4();
    v120 = v119;
    v121 = *(v109 + 8);
    v121(v117, v85);
    v122 = sub_1CAD39738(v118, v120, &v272);

    *(v112 + 14) = v122;
    _os_log_impl(&dword_1CAB19000, v111, v268, "Couldn't find a week starting with components: %s after date: %s", v112, 0x16u);
    v123 = v271;
    swift_arrayDestroy();
    MEMORY[0x1CCAA9440](v123, -1, -1);
    MEMORY[0x1CCAA9440](v112, -1, -1);

    v124 = v270;
    v270(v209, v108);
    v121(v213, v85);
    v125 = v204;
    v126 = v108;
    goto LABEL_8;
  }

  v127 = v207;
  v263(v207, v103, v85);
  v128 = v222;
  v129 = *(v222 + 16);
  v130 = v270;
  v221 = v222 + 16;
  v220 = v129;
  v129(v270, v127, v85);
  v131 = v252;
  v132 = swift_allocObject();
  v243 = xmmword_1CAD5A0D0;
  *(v132 + 16) = xmmword_1CAD5A0D0;
  v133 = v132 + v131;
  LODWORD(v269) = *MEMORY[0x1E6969A48];
  v134 = v85;
  v135 = v262;
  v262(v133);
  LODWORD(v242) = *MEMORY[0x1E6969A20];
  v135(v133 + v254);
  v136 = v130;
  sub_1CAC926C8(v132);
  swift_setDeallocating();
  v137 = v264;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v138 = v265;
  sub_1CAD4C244();

  v241 = *(v256 + 16);
  v267 = v134;
  if (!v241)
  {
    v195 = *(v247 + 8);
    v198 = v259;
    v197 = v204;
LABEL_44:
    v195(v138, v198);
    v201 = *(v222 + 8);
    v202 = v136;
    v203 = v267;
    v201(v202, v267);
    v201(v207, v203);
    v195(v209, v198);
    v201(v213, v203);
    v195(v197, v198);
    return v256;
  }

  v271 = 0;
  v236 = a9;
  v258 = (v128 + 8);
  v208 = (v248 + 8);
  v248 = v247 + 8;
  v206 = v244 + 1;
  v205 = *MEMORY[0x1E6969A18];
  v244 = (v239 + 1);
  v219 = v240 & 1;
  v239 = (v247 + 32);
  v266 = v78;
  v240 = v100;
  while (1)
  {
    v139 = sub_1CAD4BCE4() == v249;
    if ((v139 & ~v140 & 1) == 0 && (v236 & 1) == 0)
    {
      v141 = v271;
      v142 = v262;
      v143 = v269;
      goto LABEL_39;
    }

    v144 = v231;
    sub_1CAB23A9C(v232, v231, &unk_1EC465A70, &unk_1CAD61F00);
    v145 = v267;
    v146 = v260;
    if ((v260)(v144, 1, v267) == 1)
    {
      sub_1CAB21B68(v144, &unk_1EC465A70, &unk_1CAD61F00);
      LODWORD(v247) = 0;
    }

    else
    {
      v148 = v214;
      v263(v214, v144, v145);
      LODWORD(v247) = sub_1CAD4C2F4();
      (*v258)(v148, v145);
    }

    v147 = v235;
    sub_1CAB23A9C(v233, v235, &unk_1EC465A70, &unk_1CAD61F00);
    v149 = (v146)(v147, 1, v145);
    v150 = v237;
    if (v149 == 1)
    {
      sub_1CAB21B68(v147, &unk_1EC465A70, &unk_1CAD61F00);
      v238 = v247;
    }

    else
    {
      v151 = v215;
      v263(v215, v147, v145);
      v238 = sub_1CAD4C2F4();
      (*v258)(v151, v145);
    }

    v152 = v266;
    if (v234)
    {
      v153 = objc_opt_self();
      v154 = sub_1CAD4DF54();
      v155 = v217;
      sub_1CAD4C334();
      v156 = sub_1CAD4C3D4();
      (*v208)(v155, v150);
      v157 = [v153 overlayCalendarForCalendarIdentifier:v154 timezone:v156];

      if (v157)
      {
        sub_1CAD4C294();

        v158 = v252;
        v159 = swift_allocObject();
        *(v159 + 16) = v210;
        v160 = v262;
        (v262)(v159 + v158, v269, v152);
        v160(v159 + v158 + v254, v223, v152);
        v160(v159 + v158 + v251, v205, v152);
        sub_1CAC926C8(v159);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v161 = v212;
        sub_1CAD4C244();

        v162 = sub_1CAD4BCF4() == 1;
        v164 = v162 & ~v163;
        if (v164 == 1 && (v165 = sub_1CAD4BD64(), (v166 & 1) == 0) && v165 == 1)
        {
          v167 = sub_1CAD4BCD4();
          (*v248)(v161, v259);
          (*v206)(v225, v216);
          v168 = v167 ^ 1;
          LOBYTE(v164) = 1;
        }

        else
        {
          (*v248)(v161, v259);
          (*v206)(v225, v216);
          v168 = 0;
        }
      }

      else
      {
        v168 = 0;
        LOBYTE(v164) = 0;
      }
    }

    else
    {
      v168 = 0;
      LOBYTE(v164) = 0;
    }

    if (v230 == 2)
    {
      v175 = 1;
    }

    else if (v230 == 1)
    {
      v169 = v250;
      v170 = v223;
      v171 = v262;
      (v262)(v250, v223, v152);
      v172 = sub_1CAD4C364();
      v173 = *v244;
      (*v244)(v169, v266);
      v171(v169, v170, v266);
      v174 = sub_1CAD4C364();
      v173(v169, v266);
      v175 = v172 != v174;
    }

    else
    {
      v175 = 0;
    }

    result = sub_1CAD4BCF4();
    v143 = v269;
    if (v177)
    {
      goto LABEL_48;
    }

    v178 = v229;
    v179 = *(v229 + 160);
    v180 = v246;
    *v246 = result;
    v181 = v270;
    v180[8] = sub_1CAD4C254() & 1;
    v180[9] = v247 & 1;
    v180[10] = v238 & 1;
    v180[11] = v219;
    v180[12] = v164;
    v180[13] = v168 & 1;
    v180[14] = v175;
    v220(&v180[v179], v181, v267);
    v228(v180, 0, 1, v178);
    v182 = v256;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CABF1B54(v182);
      v182 = result;
    }

    v142 = v262;
    v137 = v264;
    if (v271 >= v182[2])
    {
      break;
    }

    v183 = (*(v226 + 80) + 32) & ~*(v226 + 80);
    v256 = v182;
    v141 = v271;
    sub_1CAC05904(v246, v182 + v183 + *(v226 + 72) * v271);
LABEL_39:
    v184 = v250;
    v185 = v143;
    v186 = v266;
    v142(v250, v185, v266);
    v187 = v142;
    v188 = v270;
    sub_1CAD4C2C4();
    v189 = v268;
    (*v244)(v184, v186);
    v190 = v267;
    result = (v260)(v189, 1, v267);
    if (result == 1)
    {
      goto LABEL_47;
    }

    v191 = v137;
    v271 = v141 + 1;
    (*v258)(v188, v190);
    v263(v188, v189, v190);
    v192 = v252;
    v193 = swift_allocObject();
    *(v193 + 16) = v243;
    v187(v193 + v192, v269, v186);
    v187(v193 + v192 + v254, v242, v186);
    sub_1CAC926C8(v193);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v194 = v245;
    sub_1CAD4C244();

    v195 = *v248;
    v138 = v265;
    v196 = v259;
    (*v248)(v265, v259);
    (*v239)(v138, v194, v196);
    v137 = v191;
    if (v241 == v271)
    {
      v197 = v204;
      v198 = v259;
      v136 = v270;
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_1CABF5398(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for WeekDayViewModel(0);
      v5 = sub_1CAD4E244();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      sub_1CAC024DC(v3, v5 + v7, type metadata accessor for WeekDayViewModel);
      v8 = a2 - 1;
      if (a2 != 1)
      {
        v9 = *(v6 + 72);
        v10 = v5 + v9 + v7;
        do
        {
          sub_1CAC024DC(v3, v10, type metadata accessor for WeekDayViewModel);
          v10 += v9;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1CAC04D8C(v3, type metadata accessor for WeekDayViewModel);
    return v5;
  }

  return result;
}

id sub_1CABF54B8()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  qword_1EC47E038 = result;
  return result;
}

id sub_1CABF54EC()
{
  v1 = type metadata accessor for WeekDayViewModel(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC024DC(v0, v3, type metadata accessor for WeekDayViewModel);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    return 0;
  }

  v6 = *(v4 + 160);
  if (v3[11])
  {
    v5 = 9666786;
LABEL_9:
    v10 = sub_1CAD4C0F4();
    (*(*(v10 - 8) + 8))(&v3[v6], v10);
    return v5;
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  if (qword_1EC462F00 != -1)
  {
    swift_once();
  }

  result = [qword_1EC47E038 stringFromNumber_];
  if (result)
  {
    v9 = result;
    v5 = sub_1CAD4DF94();

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CABF56D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8, &qword_1CAD59BA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for WeekDayViewModel(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC024DC(v3, v11, type metadata accessor for WeekDayViewModel);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    return sub_1CAD4D854();
  }

  v14 = *(v12 + 160);
  if (v11[9] != 1 || (v11[11] & 1) != 0)
  {
    if (v11[11] & 1 | ((v11[10] & 1) == 0))
    {
      v18 = sub_1CAD4D854();
    }

    else
    {
      v18 = sub_1CABF347C(a1, a2);
    }

    v17 = v18;
  }

  else
  {
    v15 = sub_1CAD4C1D4();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v8, a1, v15);
    (*(v16 + 56))(v8, 0, 1, v15);
    v17 = sub_1CACE0510(v8);
    sub_1CAB21B68(v8, &qword_1EC4636A8, &qword_1CAD59BA0);
  }

  v19 = sub_1CAD4C0F4();
  (*(*(v19 - 8) + 8))(&v11[v14], v19);
  return v17;
}

uint64_t sub_1CABF5944()
{
  v1 = type metadata accessor for WeekDayViewModel(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC024DC(v0, v3, type metadata accessor for WeekDayViewModel);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    return 0;
  }

  v6 = v3[9];
  v7 = v3[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464728, &unk_1CAD5CE20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1CAD58380;
  *(v8 + 32) = 0x62616C2D65746164;
  *(v8 + 40) = 0xEA00000000006C65;
  if (v6 == 1)
  {
    v9 = 2;
    v8 = sub_1CAD3461C(1, 2, 1, v8);
    *(v8 + 16) = 2;
    *(v8 + 48) = 0x7961646F74;
    *(v8 + 56) = 0xE500000000000000;
    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_7:
    v10 = *(v8 + 24);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v17[0] = v9 + 1;
      v16 = sub_1CAD3461C((v10 > 1), v9 + 1, 1, v8);
      v11 = v17[0];
      v8 = v16;
    }

    *(v8 + 16) = v11;
    v12 = v8 + 16 * v9;
    *(v12 + 32) = 0x64657463656C6573;
    *(v12 + 40) = 0xE800000000000000;
    goto LABEL_10;
  }

  v9 = 1;
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_10:
  v13 = *(v4 + 160);
  v17[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464730, &qword_1CAD5D970);
  sub_1CAB23B0C(&qword_1EC461F38, &qword_1EC464730, &qword_1CAD5D970, MEMORY[0x1E69E6310]);
  v14 = sub_1CAD4DEC4();

  v15 = sub_1CAD4C0F4();
  (*(*(v15 - 8) + 8))(&v3[v13], v15);
  return v14;
}

void sub_1CABF5BEC()
{
  v1 = v0;
  v2 = sub_1CAD4C0F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeekDayViewModel(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC024DC(v1, v8, type metadata accessor for WeekDayViewModel);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) != 1)
  {
    (*(v3 + 32))(v5, &v8[*(v9 + 160)], v2);
    v10 = sub_1CAD4C084();
    v11 = sub_1CAD4DF54();
    v12 = AXDateStringForFormat();

    if (v12)
    {
      v13 = sub_1CAD4DF94();
      v15 = v14;

      v16[0] = v13;
      v16[1] = v15;
      sub_1CAD4E154();
      (*(v3 + 8))(v5, v2);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1CABF5E34()
{
  v1 = v0;
  v2 = sub_1CAD4C1D4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1CAD4DF44();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for WeekDayViewModel(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC024DC(v1, v6, type metadata accessor for WeekDayViewModel);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    return 0;
  }

  if (v6[9] == 1)
  {
    sub_1CAD4DEE4();
    v9 = CUIKBundle();
    sub_1CAD4C184();
    v8 = sub_1CAD4DFC4();
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v7 + 160);
  v11 = sub_1CAD4C0F4();
  (*(*(v11 - 8) + 8))(&v6[v10], v11);
  return v8;
}

uint64_t sub_1CABF6070()
{
  v1 = type metadata accessor for WeekDayViewModel(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC024DC(v0, v3, type metadata accessor for WeekDayViewModel);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_1CAD4CD54();
    v11 = MEMORY[0x1E69E7CC0];
    sub_1CAC038CC(&qword_1EC4620B8, MEMORY[0x1E697F5D8], MEMORY[0x1E697F5E8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464720, &qword_1CAD5CE18);
    sub_1CAB23B0C(&qword_1EC461F48, &qword_1EC464720, &qword_1CAD5CE18, MEMORY[0x1E69E6328]);
    return sub_1CAD4E5B4();
  }

  else
  {
    v6 = v3[10];
    v7 = *(v4 + 160);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464718, &qword_1CAD5CE10);
    sub_1CAD4CD54();
    v8 = swift_allocObject();
    if (v6 == 1)
    {
      *(v8 + 16) = xmmword_1CAD5A0D0;
      sub_1CAD4CD34();
    }

    else
    {
      *(v8 + 16) = xmmword_1CAD58380;
    }

    sub_1CAD4CD44();
    v11 = v8;
    sub_1CAC038CC(&qword_1EC4620B8, MEMORY[0x1E697F5D8], MEMORY[0x1E697F5E8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464720, &qword_1CAD5CE18);
    sub_1CAB23B0C(&qword_1EC461F48, &qword_1EC464720, &qword_1CAD5CE18, MEMORY[0x1E69E6328]);
    sub_1CAD4E5B4();
    v9 = sub_1CAD4C0F4();
    return (*(*(v9 - 8) + 8))(&v3[v7], v9);
  }
}

unint64_t sub_1CABF63D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x6F706D6F43796164;
    v5 = 0x7961646F547369;
    if (a1 != 2)
    {
      v5 = 0x7463656C65537369;
    }

    if (a1)
    {
      v4 = 0x6E656B6565576E69;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x747865546D6964;
    if (a1 != 7)
    {
      v1 = 1702125924;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000011;
    if (a1 == 4)
    {
      v2 = 0x686563616C507369;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1CABF650C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4647B0, &qword_1CAD5CF58);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = v29 - v3;
  v37 = sub_1CAD4C0F4();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4647B8, &qword_1CAD5CF60);
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v7 = v29 - v6;
  v8 = type metadata accessor for WeekDayViewModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4647C0, &qword_1CAD5CF68);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v29 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC06450();
  sub_1CAD4EB04();
  sub_1CAC024DC(v33, v10, type metadata accessor for WeekDayViewModel);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    v39 = 0;
    sub_1CAC064F8();
    sub_1CAD4E8F4();
    (*(v5 + 8))(v7, v30);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v33 = v12;
    v17 = v10[8];
    v29[7] = v10[9];
    LODWORD(v30) = v17;
    v18 = v10[10];
    v29[5] = v10[11];
    v29[6] = v18;
    v19 = v10[12];
    v20 = v10[13];
    v21 = v10[14];
    (*(v35 + 32))(v34, &v10[*(v15 + 160)], v37);
    v49 = 1;
    sub_1CAC064A4();
    sub_1CAD4E8F4();
    v48 = 0;
    v22 = v32;
    v23 = v36;
    sub_1CAD4E964();
    if (v23)
    {
      (*(v31 + 8))(v38, v22);
      (*(v35 + 8))(v34, v37);
      return (*(v33 + 8))(v14, v11);
    }

    else
    {
      v36 = v11;
      v29[3] = v20;
      v29[4] = v19;
      v29[2] = v21;
      v25 = v34;
      v24 = v35;
      v47 = 1;
      sub_1CAD4E944();
      v26 = v33;
      v46 = 2;
      sub_1CAD4E944();
      v45 = 3;
      sub_1CAD4E944();
      v44 = 4;
      sub_1CAD4E944();
      v43 = 5;
      sub_1CAD4E944();
      v27 = v14;
      v42 = 6;
      sub_1CAD4E944();
      v41 = 7;
      sub_1CAD4E944();
      v28 = v37;
      v40 = 8;
      sub_1CAC038CC(&qword_1EC462400, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
      sub_1CAD4E984();
      (*(v31 + 8))(v38, v32);
      (*(v24 + 8))(v25, v28);
      return (*(v26 + 8))(v27, v36);
    }
  }
}

uint64_t sub_1CABF6BCC(uint64_t a1)
{
  v2 = sub_1CAD4C0F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WeekDayViewModel(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC024DC(v1, v8, type metadata accessor for WeekDayViewModel);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    return MEMORY[0x1CCAA7D10](0);
  }

  v11 = *v8;
  v12 = v8[12];
  v14[0] = v8[11];
  v14[1] = v12;
  v13 = v8[14];
  v14[2] = v8[13];
  v14[3] = v13;
  (*(v3 + 32))(v5, &v8[*(v9 + 160)], v2);
  MEMORY[0x1CCAA7D10](1);
  MEMORY[0x1CCAA7D10](v11);
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAD4EAA4();
  sub_1CAC038CC(&qword_1EC4623F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1CAD4DEB4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1CABF6E48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CAD4CC04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CUIKWeekLabelRow(0);
  sub_1CAB23A9C(v1 + *(v10 + 24), v9, &qword_1EC464238, &qword_1CAD5C5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C374();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1CABF7050@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CAD4CC04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CUIKWeekLabelRow(0);
  sub_1CAB23A9C(v1 + *(v10 + 28), v9, &qword_1EC4643E0, &qword_1CAD5C628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C964();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1CABF7258()
{
  if (*v0)
  {
    return 0x656C6269736956;
  }

  else
  {
    return 0x6E6564646948;
  }
}

uint64_t sub_1CABF7290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6564646948 && a2 == 0xE600000000000000;
  if (v6 || (sub_1CAD4E9E4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C6269736956 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CAD4E9E4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1CABF7368(uint64_t a1)
{
  v2 = sub_1CAC06450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CABF73A4(uint64_t a1)
{
  v2 = sub_1CAC06450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CABF73EC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1CABF741C(uint64_t a1)
{
  v2 = sub_1CAC064F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CABF7458(uint64_t a1)
{
  v2 = sub_1CAC064F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CABF749C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CAC05E20(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CABF74D0(uint64_t a1)
{
  v2 = sub_1CAC064A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CABF750C(uint64_t a1)
{
  v2 = sub_1CAC064A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CABF7548()
{
  sub_1CAD4EA84();
  sub_1CABF6BCC(v1);
  return sub_1CAD4EAC4();
}

uint64_t sub_1CABF758C(uint64_t a1)
{
  sub_1CAD4EA84();
  sub_1CABF6BCC(v2);
  return sub_1CAD4EAC4();
}

__n128 CUIKWeekLabelRow.init(currentDate:styling:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CUIKWeekLabelRow(0);
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath(byte_1CAD5C5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
  swift_storeEnumTagMultiPayload();
  v8 = v6[7];
  *(a3 + v8) = swift_getKeyPath("p$q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
  swift_storeEnumTagMultiPayload();
  v9 = sub_1CAD4C0F4();
  (*(*(v9 - 8) + 32))(a3, a1, v9);
  v10 = a3 + v6[5];
  v11 = *(a2 + 144);
  *(v10 + 128) = *(a2 + 128);
  *(v10 + 144) = v11;
  *(v10 + 160) = *(a2 + 160);
  v12 = *(a2 + 80);
  *(v10 + 64) = *(a2 + 64);
  *(v10 + 80) = v12;
  v13 = *(a2 + 112);
  *(v10 + 96) = *(a2 + 96);
  *(v10 + 112) = v13;
  v14 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v14;
  result = *(a2 + 48);
  *(v10 + 32) = *(a2 + 32);
  *(v10 + 48) = result;
  return result;
}

void sub_1CABF7738()
{
  v1 = sub_1CAD4C0F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v76 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WeekDayViewModel(0);
  v84 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v82 = v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v85 = v72 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v87 = v72 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v86 = v72 - v11;
  v81 = sub_1CAD4C964();
  v12 = *(v81 - 8);
  v13 = MEMORY[0x1EEE9AC00](v81);
  v15 = v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v72 - v16;
  v18 = sub_1CAD4C374();
  v88 = *(v18 - 8);
  v89 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70, &unk_1CAD61F00);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v72 - v25;
  (*(v2 + 16))(v72 - v25, v0, v1);
  v75 = v2;
  v27 = *(v2 + 56);
  v27(v26, 0, 1, v1);
  v83 = v1;
  v27(v24, 1, 1, v1);
  sub_1CABF6E48(v20);
  v28 = (v0 + *(type metadata accessor for CUIKWeekLabelRow(0) + 20));
  v29 = v28[11];
  v80 = v28[10];
  v78 = v0;
  v79 = v29;
  sub_1CABF7050(v17);
  sub_1CAD4C954();
  sub_1CAC038CC(&qword_1EC4620C8, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v30 = v81;
  v31 = sub_1CAD4E5A4();
  v32 = *(v12 + 8);
  v32(v15, v30);
  v32(v17, v30);
  LOBYTE(v90[0]) = 0;
  v33 = sub_1CABF3818(v78, v26, v24, 2, v20, v80, v79, v31 & 1, 0, v90);
  (*(v88 + 8))(v20, v89);
  sub_1CAB21B68(v24, &unk_1EC465A70, &unk_1CAD61F00);
  sub_1CAB21B68(v26, &unk_1EC465A70, &unk_1CAD61F00);
  v34 = sub_1CAC3BEDC();
  v35 = v28[17];
  v36 = v28[18];
  v37 = v28[19];
  v38 = v28[20];
  v39 = v28[21];
  v81 = v34[2];
  if (v81)
  {
    v40 = v84;
    v80 = v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v77 = (v75 + 1);
    v75 += 4;
    v72[3] = v35;

    v72[2] = v36;

    v72[1] = v37;

    v74 = v38;

    v73 = v39;

    v41 = 0;
    v42 = v34 + 5;
    v43 = MEMORY[0x1E69E7CC0];
    v44 = v40;
    v78 = v34;
    v79 = v33;
    while (v41 < v34[2])
    {
      if (v41 >= *(v33 + 16))
      {
        goto LABEL_26;
      }

      v45 = *v42;
      v89 = *(v42 - 1);
      v46 = v80 + *(v44 + 72) * v41;
      v47 = v86;
      sub_1CAC024DC(v46, v86, type metadata accessor for WeekDayViewModel);
      v48 = v87;
      sub_1CAC024DC(v47, v87, type metadata accessor for WeekDayViewModel);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
      v50 = *(*(v49 - 8) + 48);
      if (v50(v48, 1, v49) == 1)
      {

        v88 = sub_1CAD4D854();
        sub_1CAC04D8C(v47, type metadata accessor for WeekDayViewModel);
      }

      else
      {
        v51 = *(v48 + 8);
        v52 = *(v49 + 160);

        if (v51)
        {
          v53 = v73;
          if (!v73)
          {
            v53 = sub_1CAD4D8B4();
          }
        }

        else
        {
          v53 = v74;
          if (!v74)
          {
            v53 = sub_1CAD4D8A4();
          }
        }

        v88 = v53;

        sub_1CAC04D8C(v86, type metadata accessor for WeekDayViewModel);
        (*v77)(v87 + v52, v83);
      }

      v54 = v85;
      sub_1CAC024DC(v46, v85, type metadata accessor for WeekDayViewModel);
      v55 = v82;
      sub_1CAC024DC(v54, v82, type metadata accessor for WeekDayViewModel);
      if (v50(v55, 1, v49) == 1)
      {
        sub_1CAC04D8C(v54, type metadata accessor for WeekDayViewModel);
        v56 = 0;
        v57 = 0xE000000000000000;
      }

      else
      {
        v58 = v76;
        v59 = v83;
        (*v75)(v76, v55 + *(v49 + 160), v83);
        v60 = sub_1CAD4C084();
        v61 = sub_1CAD4DF54();
        v62 = AXDateStringForFormat();

        if (!v62)
        {
          goto LABEL_27;
        }

        v63 = sub_1CAD4DF94();
        v65 = v64;

        v90[0] = v63;
        v90[1] = v65;
        v56 = sub_1CAD4E154();
        v57 = v66;
        (*v77)(v58, v59);
        sub_1CAC04D8C(v85, type metadata accessor for WeekDayViewModel);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v78;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = sub_1CAD34B10(0, *(v43 + 2) + 1, 1, v43);
      }

      v69 = *(v43 + 2);
      v68 = *(v43 + 3);
      if (v69 >= v68 >> 1)
      {
        v43 = sub_1CAD34B10((v68 > 1), v69 + 1, 1, v43);
      }

      v70 = &v43[48 * v69];
      v71 = v89;
      *(v70 + 6) = v88;
      *(v70 + 7) = v41;
      *(v43 + 2) = v69 + 1;
      *(v70 + 4) = v71;
      *(v70 + 5) = v45;
      *(v70 + 8) = v56;
      *(v70 + 9) = v57;
      v42 += 2;
      ++v41;
      v44 = v84;
      v33 = v79;
      if (v81 == v41)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {

LABEL_24:
  }
}

double CUIKWeekLabelRow.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CUIKWeekLabelRow(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1CAC024DC(v1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUIKWeekLabelRow);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1CAC02544(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CUIKWeekLabelRow);
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a1 = sub_1CAC02428;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  result = *&v17;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_1CABF8238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a1;
  v5 = sub_1CAD4C7A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = type metadata accessor for CUIKWeekLabelRow(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_1CAD4CC94();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464750, &qword_1CAD5CE30) + 44);
  sub_1CABF7738();
  v27 = v12;
  sub_1CAC024DC(a2, v11, type metadata accessor for CUIKWeekLabelRow);
  (*(v6 + 16))(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v5);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + *(v6 + 80) + v13) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_1CAC02544(v11, v15 + v13, type metadata accessor for CUIKWeekLabelRow);
  (*(v6 + 32))(v15 + v14, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464758, &qword_1CAD5CE38);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464760, &qword_1CAD5CE40);
  v18 = sub_1CAB23B0C(&qword_1EC461F80, &qword_1EC464758, &qword_1CAD5CE38, MEMORY[0x1E69E6338]);
  v19 = sub_1CAC053C8(&qword_1EC4620D0, &qword_1EC464760, &qword_1CAD5CE40, sub_1CAC05A5C);
  v20 = sub_1CAC05DCC();
  sub_1CAD4DB74(&v27, sub_1CAC05978, v15, v16, MEMORY[0x1E69E6530], v17, v18, v19, v20);
  KeyPath = swift_getKeyPath(a0_2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464790, &qword_1CAD5CEA0);
  v23 = (a3 + *(result + 36));
  *v23 = KeyPath;
  v23[1] = 0x3FE0000000000000;
  return result;
}

uint64_t sub_1CABF8560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v72 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646B8, &qword_1CAD5CDB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v68 = &v52 - v7;
  v8 = sub_1CAD4C964();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464798, &qword_1CAD5CEA8);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v16 = &v52 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464788, &qword_1CAD5CE68);
  MEMORY[0x1EEE9AC00](v55);
  v60 = &v52 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464780, &qword_1CAD5CE60);
  MEMORY[0x1EEE9AC00](v58);
  v64 = &v52 - v18;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464778, &qword_1CAD5CE58);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v52 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464770, &qword_1CAD5CE50);
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v52 - v20;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464768, &qword_1CAD5CE48);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v52 - v21;
  v22 = *a1;
  v23 = a1[1];
  v53 = a1[2];
  v71 = a2;
  sub_1CABF7050(v14);
  sub_1CAD4C954();
  v54 = sub_1CAC038CC(&qword_1EC4620C8, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  LOBYTE(a1) = sub_1CAD4E5A4();
  v24 = *(v9 + 8);
  v24(v12, v8);
  v59 = v8;
  v69 = v9 + 8;
  v24(v14, v8);
  if (a1)
  {
    v23 = 0xA300000000000000;
    v22 = 9666786;
  }

  else
  {
  }

  *&v73 = v22;
  *(&v73 + 1) = v23;
  sub_1CABA6054();
  v25 = sub_1CAD4D444();
  v27 = v26;
  *&v73 = v25;
  *(&v73 + 1) = v26;
  v29 = v28 & 1;
  LOBYTE(v74) = v28 & 1;
  *(&v74 + 1) = v30;
  sub_1CAD4D4D4();
  sub_1CABA6128(v25, v27, v29);

  KeyPath = swift_getKeyPath(asc_1CAD5CB68);
  v32 = v60;
  (*(v56 + 32))(v60, v16, v57);
  v33 = (v32 + *(v55 + 36));
  *v33 = KeyPath;
  v33[1] = v53;
  type metadata accessor for CUIKWeekLabelRow(0);

  sub_1CAD4D2B4();
  v34 = *MEMORY[0x1E6980E18];
  v35 = sub_1CAD4D284();
  v36 = *(v35 - 8);
  v37 = v68;
  (*(v36 + 104))(v68, v34, v35);
  (*(v36 + 56))(v37, 0, 1, v35);
  v38 = sub_1CAD4D2C4();
  sub_1CAB21B68(v37, &qword_1EC4646B8, &qword_1CAD5CDB0);
  v39 = swift_getKeyPath(byte_1CAD5CAB8);
  v40 = v64;
  sub_1CABA62E4(v32, v64, &qword_1EC464788, &qword_1CAD5CE68);
  v41 = (v40 + *(v58 + 36));
  *v41 = v39;
  v41[1] = v38;
  sub_1CABF7050(v14);
  sub_1CAD4C954();
  v42 = v59;
  LOBYTE(v38) = sub_1CAD4E5A4();
  v24(v12, v42);
  v24(v14, v42);
  if (v38)
  {
    v43 = 0.8;
  }

  else
  {
    v43 = 1.0;
  }

  v44 = v62;
  sub_1CABA62E4(v40, v62, &qword_1EC464780, &qword_1CAD5CE60);
  *(v44 + *(v63 + 36)) = v43;
  v45 = swift_getKeyPath(byte_1CAD5CB00);
  v46 = v65;
  sub_1CABA62E4(v44, v65, &qword_1EC464778, &qword_1CAD5CE58);
  v47 = v46 + *(v61 + 36);
  *v47 = v45;
  *(v47 + 8) = 1;
  *(v47 + 16) = 0;
  sub_1CAD4C794();
  sub_1CABF7738();

  sub_1CAD4DC94();
  sub_1CAD4C744();
  v48 = v66;
  sub_1CABA62E4(v46, v66, &qword_1EC464770, &qword_1CAD5CE50);
  v49 = (v48 + *(v67 + 36));
  v50 = v74;
  *v49 = v73;
  v49[1] = v50;
  v49[2] = v75;
  sub_1CAC05A5C();
  sub_1CAD4D604();
  return sub_1CAB21B68(v48, &qword_1EC464768, &qword_1CAD5CE48);
}

double sub_1CABF8D50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1CAC024DC(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUIKWeekLabelRow);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1CAC02544(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CUIKWeekLabelRow);
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a2 = sub_1CAC06990;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  result = *&v17;
  *(a2 + 48) = v17;
  return result;
}

uint64_t View.reverseMask<A>(alignment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1CAD4DC94();
  sub_1CAD4C994();
  sub_1CAD4C904();
  swift_getWitnessTable();
  sub_1CAD4C9B4();
  sub_1CAD4C904();
  sub_1CAC02468();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1CAD4D6B4();
}

uint64_t sub_1CABF9024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v26 = a7;
  v27 = a4;
  v24 = a5;
  v25 = a3;
  v28 = a1;
  v29 = a2;
  v30 = a9;
  sub_1CAD4C994();
  sub_1CAD4C904();
  v39 = a8;
  v40 = MEMORY[0x1E697EBC0];
  swift_getWitnessTable();
  sub_1CAD4C9B4();
  v11 = sub_1CAD4C904();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v31 = v24;
  v32 = a6;
  v33 = v26;
  v34 = a8;
  v35 = v25;
  v36 = v27;
  v18 = sub_1CAC02468();
  sub_1CAD4D714();
  WitnessTable = swift_getWitnessTable();
  v37 = v18;
  v38 = WitnessTable;
  swift_getWitnessTable();
  v20 = *(v12 + 16);
  v20(v17, v15, v11);
  v21 = *(v12 + 8);
  v21(v15, v11);
  v20(v30, v17, v11);
  return (v21)(v17, v11);
}

uint64_t sub_1CABF9274@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X5>, char *a4@<X8>)
{
  v26 = a1;
  v27 = a4;
  v6 = sub_1CAD4DCE4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAD4C994();
  v13 = sub_1CAD4C904();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v24 = &v24 - v19;
  v26(v18);
  (*(v7 + 104))(v10, *MEMORY[0x1E6981DC8], v6);
  sub_1CAD4D784();
  (*(v7 + 8))(v10, v6);
  (*(v25 + 8))(v12, a2);
  v28 = a3;
  v29 = MEMORY[0x1E697EBC0];
  swift_getWitnessTable();
  v20 = *(v14 + 16);
  v21 = v24;
  v20(v24, v17, v13);
  v22 = *(v14 + 8);
  v22(v17, v13);
  v20(v27, v21, v13);
  return (v22)(v21, v13);
}

__n128 CUIKWeekRow.init(displayedDate:currentDate:selectedDate:weekIndex:styling:tapAction:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for CUIKWeekRow(0);
  v17 = v16[10];
  *(a8 + v17) = swift_getKeyPath(byte_1CAD5C5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
  swift_storeEnumTagMultiPayload();
  v18 = v16[11];
  *(a8 + v18) = swift_getKeyPath("p$q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
  swift_storeEnumTagMultiPayload();
  v19 = v16[12];
  *(a8 + v19) = swift_getKeyPath("@$q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E80, &unk_1CAD5C660);
  swift_storeEnumTagMultiPayload();
  v20 = sub_1CAD4C0F4();
  (*(*(v20 - 8) + 32))(a8, a1, v20);
  sub_1CABA62E4(a2, a8 + v16[5], &unk_1EC465A70, &unk_1CAD61F00);
  sub_1CABA62E4(a3, a8 + v16[6], &unk_1EC465A70, &unk_1CAD61F00);
  *(a8 + v16[7]) = a4;
  v21 = a8 + v16[8];
  v22 = *(a5 + 144);
  *(v21 + 128) = *(a5 + 128);
  *(v21 + 144) = v22;
  *(v21 + 160) = *(a5 + 160);
  v23 = *(a5 + 80);
  *(v21 + 64) = *(a5 + 64);
  *(v21 + 80) = v23;
  v24 = *(a5 + 112);
  *(v21 + 96) = *(a5 + 96);
  *(v21 + 112) = v24;
  v25 = *(a5 + 16);
  *v21 = *a5;
  *(v21 + 16) = v25;
  result = *(a5 + 48);
  *(v21 + 32) = *(a5 + 32);
  *(v21 + 48) = result;
  v27 = (a8 + v16[9]);
  *v27 = a6;
  v27[1] = a7;
  return result;
}

uint64_t sub_1CABF9748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v287 = a1;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464690, &qword_1CAD5CD88);
  MEMORY[0x1EEE9AC00](v244);
  v277 = &v232 - v5;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A8, &qword_1CAD5CDA0);
  MEMORY[0x1EEE9AC00](v241);
  v243 = &v232 - v6;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464658, &qword_1CAD5CD48);
  MEMORY[0x1EEE9AC00](v242);
  v236 = &v232 - v7;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464650, &qword_1CAD5CD40);
  MEMORY[0x1EEE9AC00](v253);
  v245 = &v232 - v8;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646B0, &qword_1CAD5CDA8);
  MEMORY[0x1EEE9AC00](v251);
  v252 = &v232 - v9;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464638, &qword_1CAD5CD28);
  MEMORY[0x1EEE9AC00](v278);
  v237 = &v232 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464630, &qword_1CAD5CD20);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v254 = &v232 - v12;
  v13 = type metadata accessor for WeekDayViewModel(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v239 = &v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v232 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v235 = &v232 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v247 = &v232 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v246 = &v232 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v249 = &v232 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v279 = &v232 - v27;
  v281 = sub_1CAD4CD54();
  v276 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v273 = &v232 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1CAD4C964();
  v269 = *(v29 - 8);
  v270 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v267 = &v232 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v266 = &v232 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646B8, &qword_1CAD5CDB0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v257 = &v232 - v34;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464680, &unk_1CAD5CD70);
  MEMORY[0x1EEE9AC00](v258);
  v261 = &v232 - v35;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464678, &qword_1CAD5CD68);
  MEMORY[0x1EEE9AC00](v260);
  v259 = &v232 - v36;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464670, &qword_1CAD5CD60);
  MEMORY[0x1EEE9AC00](v263);
  v264 = &v232 - v37;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464668, &qword_1CAD5CD58);
  v38 = MEMORY[0x1EEE9AC00](v272);
  v265 = &v232 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v268 = &v232 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v271 = &v232 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v289 = &v232 - v44;
  v45 = sub_1CAD4C6A4();
  v280 = *(v45 - 8);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v283 = &v232 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v232 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8, &qword_1CAD59BA0);
  v51 = MEMORY[0x1EEE9AC00](v50 - 8);
  v234 = &v232 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v286 = &v232 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v232 - v55;
  v57 = sub_1CAD4C374();
  v58 = *(v57 - 8);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v233 = &v232 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v262 = &v232 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v232 - v63;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646C0, &qword_1CAD5CDB8);
  v282 = *(v250 - 8);
  MEMORY[0x1EEE9AC00](v250);
  v288 = &v232 - v65;
  v66 = (v3 + *(type metadata accessor for CUIKWeekRow(0) + 32));
  v284 = v58;
  v285 = v66;
  v240 = *v66;
  v255 = a2;
  v238 = v18;
  v275 = v57;
  v248 = v45;
  if (v240 == 1)
  {
    sub_1CABFCAF8(type metadata accessor for CUIKWeekRow, v64);
    sub_1CAD4C304();
    (*(v58 + 8))(v64, v57);
    v67 = sub_1CAD4C1D4();
    v68 = *(v67 - 8);
    result = (*(v68 + 48))(v56, 1, v67);
    if (result == 1)
    {
LABEL_56:
      __break(1u);
      return result;
    }

    v70 = v3;
    sub_1CABFCF18(&qword_1EC463E80, &unk_1CAD5C660, type metadata accessor for CUIKWeekRow, MEMORY[0x1E697DBC8], v49);
    v71 = sub_1CABF56D0(v56, v49);
    (*(v280 + 8))(v49, v45);
    (*(v68 + 8))(v56, v67);
  }

  else
  {
    v70 = v3;
    v71 = sub_1CAD4D8A4();
  }

  sub_1CAD4DC94();
  sub_1CAD4C744();
  *&v304[11] = *&v304[35];
  *&v304[19] = v305;
  *&v304[3] = *&v304[27];
  *(v298 + 10) = *v304;
  *(&v298[1] + 10) = *&v304[8];
  *(&v298[2] + 10) = *&v304[16];
  *(&v298[3] + 1) = *(&v305 + 1);
  *&v298[0] = v71;
  WORD4(v298[0]) = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646C8, &unk_1CAD5CDC0);
  sub_1CAC0584C();
  sub_1CAD4D474();
  v303[0] = v298[0];
  v303[1] = v298[1];
  v303[2] = v298[2];
  v303[3] = v298[3];
  sub_1CAB21B68(v303, &qword_1EC4646C8, &unk_1CAD5CDC0);
  *&v298[0] = sub_1CABF54EC();
  *(&v298[0] + 1) = v72;
  v256 = sub_1CABA6054();
  v73 = sub_1CAD4D444();
  v75 = v74;
  *&v298[0] = v73;
  *(&v298[0] + 1) = v74;
  v77 = v76 & 1;
  LOBYTE(v298[1]) = v76 & 1;
  *(&v298[1] + 1) = v78;
  v79 = v261;
  sub_1CAD4D4D4();
  sub_1CABA6128(v73, v75, v77);

  sub_1CAD4D2B4();
  v80 = *MEMORY[0x1E6980E18];
  v81 = sub_1CAD4D284();
  v82 = *(v81 - 8);
  v83 = v257;
  (*(v82 + 104))(v257, v80, v81);
  (*(v82 + 56))(v83, 0, 1, v81);
  v84 = sub_1CAD4D2C4();
  sub_1CAB21B68(v83, &qword_1EC4646B8, &qword_1CAD5CDB0);
  KeyPath = swift_getKeyPath(byte_1CAD5CAB8);
  v86 = &v79[*(v258 + 9)];
  *v86 = KeyPath;
  v86[1] = v84;
  v258 = type metadata accessor for CUIKWeekRow;
  v87 = v266;
  v274 = v70;
  sub_1CABFCD08(type metadata accessor for CUIKWeekRow, v266);
  v88 = v267;
  sub_1CAD4C954();
  sub_1CAC038CC(&qword_1EC4620C8, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v89 = v270;
  LOBYTE(v84) = sub_1CAD4E5A4();
  v90 = *(v269 + 1);
  v90(v88, v89);
  v90(v87, v89);
  if (v84)
  {
    v91 = 0.8;
  }

  else
  {
    v91 = 1.0;
  }

  v92 = v79;
  v93 = v287;
  v94 = v259;
  sub_1CABA62E4(v92, v259, &qword_1EC464680, &unk_1CAD5CD70);
  *(v94 + *(v260 + 36)) = v91;
  v95 = swift_getKeyPath(byte_1CAD5CB00);
  v96 = v94;
  v97 = v264;
  sub_1CABA62E4(v96, v264, &qword_1EC464678, &qword_1CAD5CD68);
  v98 = v97 + *(v263 + 36);
  *v98 = v95;
  *(v98 + 8) = 1;
  *(v98 + 16) = 0;
  sub_1CABF5944();
  sub_1CAC0547C();
  v99 = v265;
  sub_1CAD4D654();

  sub_1CAB21B68(v97, &qword_1EC464670, &qword_1CAD5CD60);
  sub_1CABF5BEC();
  *&v298[0] = v100;
  *(&v298[0] + 1) = v101;
  v102 = v268;
  sub_1CAD4C8C4();

  sub_1CAB21B68(v99, &qword_1EC464668, &qword_1CAD5CD58);
  *&v298[0] = sub_1CABF5E34();
  *(&v298[0] + 1) = v103;
  v104 = v271;
  sub_1CAD4C8D4();

  sub_1CAB21B68(v102, &qword_1EC464668, &qword_1CAD5CD58);
  v105 = v273;
  sub_1CABF6070();
  sub_1CAD4C8E4();
  (*(v276 + 8))(v105, v281);
  sub_1CAB21B68(v104, &qword_1EC464668, &qword_1CAD5CD58);
  v106 = v285[17];
  v107 = v285[18];
  v108 = v285[19];
  v109 = v285[20];
  v271 = v285[21];

  v273 = v106;

  v276 = v108;

  v272 = v109;

  v110 = v262;
  sub_1CABFCAF8(v258, v262);
  v111 = v286;
  sub_1CAD4C304();
  v112 = *(v284 + 8);
  v284 += 8;
  v112(v110, v275);
  v113 = sub_1CAD4C1D4();
  v114 = *(v113 - 8);
  result = (*(v114 + 48))(v111, 1, v113);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_56;
  }

  v269 = v112;
  sub_1CABFCF18(&qword_1EC463E80, &unk_1CAD5C660, type metadata accessor for CUIKWeekRow, MEMORY[0x1E697DBC8], v283);
  v115 = v279;
  sub_1CAC024DC(v93, v279, type metadata accessor for WeekDayViewModel);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  v117 = *(*(v116 - 8) + 48);
  v118 = v117(v115, 1, v116);
  v119 = v93;
  v270 = v107;
  if (v118 == 1)
  {
    v281 = sub_1CAD4D854();
    v120 = v283;
    v121 = v286;
  }

  else
  {
    v122 = v115[8];
    v123 = v115[9];
    v124 = v115[10];
    v125 = v115[14];
    v121 = v286;
    if (v124 != 1 || (v115[11] & 1) != 0)
    {
      if (v124 & 1 | ((v123 & 1) == 0) | v115[11] & 1)
      {
        v268 = *(v116 + 160);
        if (v125)
        {
          v281 = v276;
          if (!v276)
          {
            if (qword_1EC462F28 != -1)
            {
              swift_once();
            }

            v281 = qword_1EC47E070;
          }
        }

        else if (v122)
        {
          v281 = v107;
          if (!v107)
          {
            v281 = sub_1CAD4D8B4();
          }
        }

        else
        {
          v281 = v273;
          if (!v273)
          {
            v281 = sub_1CAD4D8A4();
          }
        }

        v136 = sub_1CAD4C0F4();
        v267 = *(*(v136 - 8) + 8);

        (v267)(&v279[v268], v136);
        v119 = v287;
        v120 = v283;
      }

      else
      {
        v131 = v283;
        v132 = v117;
        v133 = *(v116 + 160);
        v281 = sub_1CABF56D0(v286, v283);
        v134 = sub_1CAD4C0F4();
        v135 = &v279[v133];
        v117 = v132;
        (*(*(v134 - 8) + 8))(v135, v134);
        v120 = v131;
        v121 = v286;
      }
    }

    else
    {
      v126 = v283;
      v127 = v117;
      v128 = *(v116 + 160);
      v281 = sub_1CABF2F64(v286, v283, v123);
      v129 = sub_1CAD4C0F4();
      v130 = &v115[v128];
      v117 = v127;
      v121 = v286;
      (*(*(v129 - 8) + 8))(v130, v129);
      v120 = v126;
    }
  }

  (*(v280 + 8))(v120, v248);
  (*(v114 + 8))(v121, v113);
  v137 = v249;
  sub_1CAC024DC(v119, v249, type metadata accessor for WeekDayViewModel);
  if (v117(v137, 1, v116) == 1 || (v138 = *(v137 + 10), v139 = *(v116 + 160), v140 = sub_1CAD4C0F4(), (*(*(v140 - 8) + 8))(v137 + v139, v140), v240 & 1 | ((v138 & 1) == 0)))
  {
    v141 = v246;
    sub_1CAC024DC(v119, v246, type metadata accessor for WeekDayViewModel);
    if (v117(v141, 1, v116) != 1 && (v142 = *(v141 + 10), v143 = *(v116 + 160), v144 = sub_1CAD4C0F4(), (*(*(v144 - 8) + 8))(v141 + v143, v144), (v142 & 1) != 0) || (v145 = v247, sub_1CAC024DC(v119, v247, type metadata accessor for WeekDayViewModel), v117(v145, 1, v116) == 1) || (v176 = v247, v177 = v247[9], v178 = v247[11], v179 = v247[12], v180 = *(v116 + 160), v181 = sub_1CAD4C0F4(), v182 = &v176[v180], v183 = (*(v181 - 8) + 8), v184 = *v183, (*v183)(v182, v181), v156 = v179 == 1, v119 = v287, !v156) || (v178 & 1) != 0 || (v177 & 1) != 0)
    {
      v146 = v277;
      sub_1CAB23A9C(v289, v277, &qword_1EC464668, &qword_1CAD5CD58);
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464660, &qword_1CAD5CD50);
      *(v146 + *(v147 + 36)) = v281;

      v148 = sub_1CAD4DC94();
      v150 = v149;
      v151 = v238;
      sub_1CAC024DC(v119, v238, type metadata accessor for WeekDayViewModel);
      v152 = 0.5;
      if (v117(v151, 1, v116) != 1)
      {
        v153 = *(v151 + 10);
        v154 = *(v116 + 160);
        v155 = sub_1CAD4C0F4();
        (*(*(v155 - 8) + 8))(v151 + v154, v155);
        v156 = v153 == 0;
        v119 = v287;
        if (v156)
        {
          v152 = 0.5;
        }

        else
        {
          v152 = 1.0;
        }
      }

      v157 = v239;
      sub_1CAC024DC(v119, v239, type metadata accessor for WeekDayViewModel);
      v158 = v117(v157, 1, v116);
      v159 = 0.0;
      v160 = v255;
      v161 = v250;
      if (v158 != 1)
      {
        v162 = *(v157 + 10);
        v163 = *(v116 + 160);
        v164 = sub_1CAD4C0F4();
        (*(*(v164 - 8) + 8))(v157 + v163, v164);
        if (v162)
        {
          v159 = 1.0;
        }

        else
        {
          v159 = 0.0;
        }
      }

      v165 = v277;
      v166 = v277 + *(v244 + 36);
      sub_1CAD4DD84();
      v168 = v167;
      v170 = v169;
      (*(v282 + 16))(v166, v288, v161);
      v171 = v166 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646D8, &qword_1CAD5CDD0) + 36);
      *v171 = v152;
      *(v171 + 8) = v152;
      *(v171 + 16) = v168;
      *(v171 + 24) = v170;
      *(v166 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646E0, &qword_1CAD5CDD8) + 36)) = v159;
      v172 = (v166 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464698, &qword_1CAD5CD90) + 36));
      *v172 = v148;
      v172[1] = v150;
      sub_1CAB23A9C(v165, v243, &qword_1EC464690, &qword_1CAD5CD88);
      swift_storeEnumTagMultiPayload();
      sub_1CAC0522C();
      sub_1CAC056A8();
      v173 = v245;
      sub_1CAD4CE24();
      sub_1CAB21B68(v165, &qword_1EC464690, &qword_1CAD5CD88);
      v174 = v254;
      v175 = v252;
    }

    else
    {
      v185 = v235;
      sub_1CAC024DC(v287, v235, type metadata accessor for WeekDayViewModel);
      if (v117(v185, 1, v116) != 1)
      {
        v184(v185 + *(v116 + 160), v181);
      }

      v160 = v255;
      sub_1CAD4DC94();
      sub_1CAD4C744();
      v203 = v306;
      v204 = v307;
      v205 = v308;
      v206 = v309;
      v208 = v310;
      v207 = v311;
      if (v240)
      {
        v209 = v306;
        v210 = v233;
        sub_1CABFCAF8(type metadata accessor for CUIKWeekRow, v233);
        v287 = v207;
        v211 = v205;
        v212 = v234;
        sub_1CAD4C304();
        v213 = v210;
        v203 = v209;
        v269(v213, v275);
        v214 = sub_1CACE0510(v212);
        v215 = v212;
        v205 = v211;
        v207 = v287;
        sub_1CAB21B68(v215, &qword_1EC4636A8, &qword_1CAD59BA0);
      }

      else
      {
        v214 = sub_1CAD4D8A4();
      }

      v216 = swift_getKeyPath(asc_1CAD5CB68);
      v302 = v204;
      v301 = v206;
      *&v291 = v203;
      BYTE8(v291) = v204;
      *&v292 = v205;
      BYTE8(v292) = v206;
      *&v293 = v208;
      *(&v293 + 1) = v207;
      *&v294 = v216;
      *(&v294 + 1) = v214;
      v295 = xmmword_1CAD5C5B0;
      v217 = v236;
      sub_1CAB23A9C(v289, v236, &qword_1EC464668, &qword_1CAD5CD58);
      v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464660, &qword_1CAD5CD50);
      *(v217 + *(v218 + 36)) = v281;

      v219 = sub_1CAD4DC84();
      v221 = v294;
      v220 = v295;
      v223 = v294;
      v222 = v295;
      v296[3] = v294;
      v296[4] = v295;
      v225 = v292;
      v224 = v293;
      v227 = v292;
      v226 = v293;
      v296[1] = v292;
      v296[2] = v293;
      v228 = v291;
      v296[0] = v291;
      *&v297 = v219;
      *(&v297 + 1) = v229;
      v230 = (v217 + *(v242 + 36));
      *v230 = v291;
      v230[1] = v225;
      v231 = v297;
      v230[4] = v220;
      v230[5] = v231;
      v230[2] = v224;
      v230[3] = v221;
      v298[3] = v223;
      v298[4] = v222;
      v298[1] = v227;
      v298[2] = v226;
      v298[0] = v228;
      v299 = v219;
      v300 = v229;
      sub_1CAB23A9C(&v291, v290, &qword_1EC4646E8, &qword_1CAD5CDE0);
      sub_1CAB23A9C(v296, v290, &qword_1EC464688, &qword_1CAD5CD80);
      sub_1CAB21B68(v298, &qword_1EC464688, &qword_1CAD5CD80);
      sub_1CAB23A9C(v217, v243, &qword_1EC464658, &qword_1CAD5CD48);
      swift_storeEnumTagMultiPayload();
      sub_1CAC0522C();
      sub_1CAC056A8();
      v173 = v245;
      sub_1CAD4CE24();
      sub_1CAB21B68(&v291, &qword_1EC4646E8, &qword_1CAD5CDE0);
      sub_1CAB21B68(v217, &qword_1EC464658, &qword_1CAD5CD48);
      v174 = v254;
      v175 = v252;
      v161 = v250;
    }

    sub_1CAB23A9C(v173, v175, &qword_1EC464650, &qword_1CAD5CD40);
    swift_storeEnumTagMultiPayload();
    sub_1CAC0505C();
    sub_1CAC051A0();
    sub_1CAD4CE24();

    sub_1CAB21B68(v173, &qword_1EC464650, &qword_1CAD5CD40);
  }

  else
  {
    sub_1CAD4DC94();
    sub_1CAD4C744();
    v287 = *&v298[0];
    LODWORD(v286) = BYTE8(v298[0]);
    v285 = *&v298[1];
    LODWORD(v284) = BYTE8(v298[1]);
    v280 = *(&v298[2] + 1);
    v283 = *&v298[2];
    v279 = sub_1CAD4DC94();
    v277 = v186;
    v187 = v237;
    v188 = &v237[*(v278 + 36)];
    v275 = sub_1CAD4DC94();
    v190 = v189;
    v191 = sub_1CAD4DC94();
    v193 = v192;
    v194 = &v188[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646F0, &qword_1CAD5CDE8) + 36)];
    v195 = v194 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646F8, &qword_1CAD5CDF0) + 36);
    sub_1CAB23A9C(v289, v195, &qword_1EC464668, &qword_1CAD5CD58);
    v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464700, &qword_1CAD5CDF8) + 36);
    v197 = *MEMORY[0x1E6981DC8];
    v198 = sub_1CAD4DCE4();
    (*(*(v198 - 8) + 104))(v195 + v196, v197, v198);
    v199 = (v195 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464708, &unk_1CAD5CE00) + 36));
    *v199 = v275;
    v199[1] = v190;
    *v194 = v191;
    v194[1] = v193;
    v161 = v250;
    (*(v282 + 16))(v188, v288, v250);
    v200 = &v188[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464648, &qword_1CAD5CD38) + 36)];
    v201 = v277;
    *v200 = v279;
    *(v200 + 1) = v201;
    *v187 = v287;
    *(v187 + 8) = v286;
    *(v187 + 16) = v285;
    *(v187 + 24) = v284;
    v202 = v280;
    *(v187 + 32) = v283;
    *(v187 + 40) = v202;
    sub_1CAB23A9C(v187, v252, &qword_1EC464638, &qword_1CAD5CD28);
    swift_storeEnumTagMultiPayload();
    sub_1CAC0505C();
    sub_1CAC051A0();
    v174 = v254;
    sub_1CAD4CE24();

    sub_1CAB21B68(v187, &qword_1EC464638, &qword_1CAD5CD28);
    v160 = v255;
  }

  (*(v282 + 8))(v288, v161);
  sub_1CABA62E4(v174, v160, &qword_1EC464630, &qword_1CAD5CD20);
  return sub_1CAB21B68(v289, &qword_1EC464668, &qword_1CAD5CD58);
}

double CUIKWeekRow.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CUIKWeekRow(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1CAC024DC(v1, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUIKWeekRow);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1CAC02544(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CUIKWeekRow);
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a1 = sub_1CAC025AC;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  result = *&v17;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_1CABFB824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v45 = a3;
  v4 = sub_1CAD4C7A4();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = v5;
  v42 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CUIKWeekRow(0);
  v7 = (v6 - 8);
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v38 = v8;
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CAD4C964();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v37 - v14;
  v51 = sub_1CAD4C374();
  v16 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v7[7];
  v48 = v7[8];
  v49 = v19;
  v50 = *(a1 + v7[9]);
  sub_1CABFCAF8(type metadata accessor for CUIKWeekRow, v18);
  v20 = a1 + v7[10];
  v21 = *(v20 + 80);
  v46 = *(v20 + 88);
  v47 = v21;
  sub_1CABFCD08(type metadata accessor for CUIKWeekRow, v15);
  sub_1CAD4C954();
  sub_1CAC038CC(&qword_1EC4620C8, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  v22 = sub_1CAD4E5A4();
  v23 = *(v10 + 8);
  v23(v13, v9);
  v23(v15, v9);
  v24 = *(v20 + 50);
  LOBYTE(v54[0]) = *(v20 + 128);
  v25 = sub_1CABF3818(a1, a1 + v49, a1 + v48, v50, v18, v47, v46, v22 & 1, v24, v54);
  result = (*(v16 + 8))(v18, v51);
  v27 = *(v25 + 16);
  if (v27)
  {
    v54[0] = 0;
    v54[1] = v27 - 1;
    swift_getKeyPath(byte_1CAD5CBF8);
    v28 = v39;
    sub_1CAC024DC(a1, v39, type metadata accessor for CUIKWeekRow);
    v30 = v42;
    v29 = v43;
    v31 = v44;
    (*(v43 + 16))(v42, v41, v44);
    v32 = (*(v37 + 80) + 24) & ~*(v37 + 80);
    v33 = (v38 + *(v29 + 80) + v32) & ~*(v29 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v25;
    sub_1CAC02544(v28, v34 + v32, type metadata accessor for CUIKWeekRow);
    (*(v29 + 32))(v34 + v33, v30, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464618, &qword_1CAD5CD08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464620, &qword_1CAD5CD10);
    sub_1CAC04ED4(&qword_1EC461F90, &qword_1EC464618, &qword_1CAD5CD08, MEMORY[0x1E69E5FC8]);
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464628, &qword_1CAD5CD18);
    v36 = sub_1CAC04F44();
    v52 = v35;
    v53 = v36;
    swift_getOpaqueTypeConformance2();
    return sub_1CAD4DB64();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CABFBD78@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[3] = a4;
  v28 = a3;
  v8 = type metadata accessor for WeekDayViewModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CUIKWeekRow(0);
  v27 = *(v12 - 8);
  v13 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464628, &qword_1CAD5CD18);
  result = MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - v16;
  v18 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v26[2] = v10;
    if (v18 < *(a2 + 16))
    {
      v26[1] = a5;
      v19 = *(v9 + 80);
      v20 = a2 + ((v19 + 32) & ~v19) + *(v9 + 72) * v18;
      v21 = v28;
      sub_1CABF9748(v20, v17);
      sub_1CAD4C794();
      sub_1CAD4DC94();
      sub_1CAD4C744();
      v22 = &v17[*(v14 + 36)];
      v23 = v30;
      *v22 = v29;
      *(v22 + 1) = v23;
      *(v22 + 2) = v31;
      sub_1CAC024DC(v21, v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUIKWeekRow);
      sub_1CAC024DC(v20, v11, type metadata accessor for WeekDayViewModel);
      v24 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v25 = swift_allocObject();
      sub_1CAC02544(v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for CUIKWeekRow);
      sub_1CAC02544(v11, v25 + ((v13 + v19 + v24) & ~v19), type metadata accessor for WeekDayViewModel);
      sub_1CAC04F44();
      sub_1CAD4D544();

      return sub_1CAB21B68(v17, &qword_1EC464628, &qword_1CAD5CD18);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CABFC09C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WeekDayViewModel(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CUIKWeekRow(0);
  v12 = a1 + *(result + 36);
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 8);
    sub_1CAC024DC(a2, v10, type metadata accessor for WeekDayViewModel);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
    result = (*(*(v15 - 8) + 48))(v10, 1, v15);
    if (result != 1)
    {
      v16 = v10[11];
      (*(v5 + 32))(v7, &v10[*(v15 + 160)], v4);
      if ((v16 & 1) == 0)
      {

        v13(v7);
        sub_1CABC6E64(v13, v14);
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

double sub_1CABFC28C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1CAC024DC(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUIKWeekRow);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1CAC02544(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CUIKWeekRow);
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a2 = sub_1CAC0698C;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  result = *&v17;
  *(a2 + 48) = v17;
  return result;
}

uint64_t sub_1CABFC404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a2;
  v5 = sub_1CAD4C884();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4644B8, &qword_1CAD5CB58);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4644C0, &qword_1CAD5CB60);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v34 - v13;
  v15 = *v3;
  KeyPath = swift_getKeyPath(asc_1CAD5CB68);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4644C8, &qword_1CAD5CB98);
  (*(*(v17 - 8) + 16))(v12, a1, v17);
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4644D0, &qword_1CAD5CBA0) + 36)];
  *v18 = KeyPath;
  v18[1] = v15;
  v19 = v3[1];
  v20 = swift_getKeyPath(byte_1CAD5CAB8);
  v21 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4644D8, &qword_1CAD5CBA8) + 36)];
  *v21 = v20;
  v21[1] = v19;
  v22 = swift_getKeyPath(byte_1CAD5CB00);
  v23 = &v12[*(v10 + 36)];
  *v23 = v22;
  *(v23 + 1) = 1;
  v23[16] = 0;
  v24 = type metadata accessor for MonthTextStyleModifier(0);
  sub_1CAC03914();

  sub_1CAD4D564();
  sub_1CAB21B68(v12, &qword_1EC4644B8, &qword_1CAD5CB58);
  v25 = (v3 + *(v24 + 28));
  v27 = *v25;
  v26 = v25[1];
  v28 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4644E8, &qword_1CAD5CBB8) + 52)];
  *v28 = v27;
  *(v28 + 1) = v26;

  sub_1CAD4C874();
  v29 = v37;
  v30 = v38;
  (*(v37 + 16))(v36, v9, v38);
  sub_1CAC038CC(&qword_1EC4621F8, MEMORY[0x1E697E468], MEMORY[0x1E697E458]);
  v31 = v30;
  v32 = sub_1CAD4C764();
  (*(v29 + 8))(v9, v31);
  *&v14[*(v35 + 36)] = v32;
  sub_1CAC03B68();
  sub_1CAD4D474();
  return sub_1CAB21B68(v14, &qword_1EC4644C0, &qword_1CAD5CB60);
}

uint64_t sub_1CABFC7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v30 = a2;
  v5 = sub_1CAD4C884();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464460, &qword_1CAD5CAB0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = *v3;
  KeyPath = swift_getKeyPath(byte_1CAD5CAB8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464468, &qword_1CAD5CAE8);
  (*(*(v17 - 8) + 16))(v14, a1, v17);
  v18 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464470, &qword_1CAD5CAF0) + 36)];
  *v18 = KeyPath;
  v18[1] = v15;

  LODWORD(v15) = sub_1CAD4CFE4();
  *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464478, &qword_1CAD5CAF8) + 36)] = v15;
  v19 = swift_getKeyPath(byte_1CAD5CB00);
  v20 = &v14[*(v12 + 36)];
  *v20 = v19;
  *(v20 + 1) = 1;
  v20[16] = 0;
  v21 = type metadata accessor for AltCalendarDateStyleModifier(0);
  sub_1CAC03678();
  v22 = v30;
  sub_1CAD4D564();
  sub_1CAB21B68(v14, &qword_1EC464460, &qword_1CAD5CAB0);
  v23 = (v3 + *(v21 + 24));
  v25 = *v23;
  v24 = v23[1];
  v26 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4644A8, &qword_1CAD5CB48) + 52));
  *v26 = v25;
  v26[1] = v24;

  sub_1CAD4C874();
  (*(v6 + 16))(v9, v11, v5);
  sub_1CAC038CC(&qword_1EC4621F8, MEMORY[0x1E697E468], MEMORY[0x1E697E458]);
  v27 = sub_1CAD4C764();
  (*(v6 + 8))(v11, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4644B0, &qword_1CAD5CB50);
  *(v22 + *(result + 36)) = v27;
  return result;
}

uint64_t sub_1CABFCAF8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CAD4CC04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = a1(0);
  sub_1CAB23A9C(v2 + *(v12 + 40), v11, &qword_1EC464238, &qword_1CAD5C5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1CAD4C374();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    sub_1CAD4E3F4();
    v15 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1CABFCD08@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CAD4CC04();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v12 = a1(0);
  sub_1CAB23A9C(v2 + *(v12 + 44), v11, &qword_1EC4643E0, &qword_1CAD5C628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1CAD4C964();
    return (*(*(v13 - 8) + 32))(a2, v11, v13);
  }

  else
  {
    sub_1CAD4E3F4();
    v15 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1CABFCF18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v22 = a5;
  v10 = sub_1CAD4CC04();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  v17 = a3(0);
  sub_1CAB23A9C(v5 + *(v17 + 48), v16, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = a4(0);
    return (*(*(v18 - 8) + 32))(v22, v16, v18);
  }

  else
  {
    sub_1CAD4E3F4();
    v20 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

__n128 CUIKMonthView.init(currentDate:styling:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  v25 = a2[7];
  v26 = a2[8];
  v27 = a2[9];
  v28 = a2[10];
  v22 = a2[4];
  v23 = a2[5];
  v24 = a2[6];
  v18 = *a2;
  v19 = a2[1];
  v20 = a2[2];
  v21 = a2[3];
  strcpy(&a3[11], "EEEE, MMMM dd");
  a3[11].n128_u16[7] = -4864;
  v5 = type metadata accessor for CUIKMonthView(0);
  v6 = (a3->n128_u64 + v5[9]);
  sub_1CAD4D984();
  *v6 = v16;
  v6[1] = v17;
  v7 = v5[10];
  *(a3->n128_u64 + v7) = swift_getKeyPath(byte_1CAD5C5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
  swift_storeEnumTagMultiPayload();
  v8 = v5[11];
  *(a3->n128_u64 + v8) = swift_getKeyPath("p$q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
  swift_storeEnumTagMultiPayload();
  v9 = v5[12];
  *(a3->n128_u64 + v9) = swift_getKeyPath("\b$q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E8, &qword_1CAD5C6A0);
  swift_storeEnumTagMultiPayload();
  v10 = v5[6];
  v11 = sub_1CAD4C0F4();
  v12 = *(v11 - 8);
  (*(v12 + 16))(a3 + v10, a1, v11);
  v13 = v5[7];
  (*(v12 + 32))(a3 + v13, a1, v11);
  (*(v12 + 56))(a3 + v13, 0, 1, v11);
  a3[8] = v26;
  a3[9] = v27;
  a3[10] = v28;
  a3[4] = v22;
  a3[5] = v23;
  a3[6] = v24;
  a3[7] = v25;
  *a3 = v18;
  a3[1] = v19;
  result = v21;
  a3[2] = v20;
  a3[3] = v21;
  v15 = (a3->n128_u64 + v5[8]);
  *v15 = 0;
  v15[1] = 0;
  return result;
}

uint64_t CUIKMonthView.init(displayedDate:todayDate:styling:tapAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a3[7];
  v30 = a3[8];
  v31 = a3[9];
  v32 = a3[10];
  v26 = a3[4];
  v27 = a3[5];
  v28 = a3[6];
  v22 = *a3;
  v23 = a3[1];
  v24 = a3[2];
  v25 = a3[3];
  strcpy((a6 + 176), "EEEE, MMMM dd");
  *(a6 + 190) = -4864;
  v11 = type metadata accessor for CUIKMonthView(0);
  v12 = (a6 + v11[9]);
  sub_1CAD4D984();
  *v12 = v20;
  v12[1] = v21;
  v13 = v11[10];
  *(a6 + v13) = swift_getKeyPath(byte_1CAD5C5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
  swift_storeEnumTagMultiPayload();
  v14 = v11[11];
  *(a6 + v14) = swift_getKeyPath("p$q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
  swift_storeEnumTagMultiPayload();
  v15 = v11[12];
  *(a6 + v15) = swift_getKeyPath("\b$q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E8, &qword_1CAD5C6A0);
  swift_storeEnumTagMultiPayload();
  v16 = v11[6];
  v17 = sub_1CAD4C0F4();
  (*(*(v17 - 8) + 32))(a6 + v16, a1, v17);
  *(a6 + 128) = v30;
  *(a6 + 144) = v31;
  *(a6 + 160) = v32;
  *(a6 + 64) = v26;
  *(a6 + 80) = v27;
  *(a6 + 96) = v28;
  *(a6 + 112) = v29;
  *a6 = v22;
  *(a6 + 16) = v23;
  *(a6 + 32) = v24;
  *(a6 + 48) = v25;
  result = sub_1CABA62E4(a2, a6 + v11[7], &unk_1EC465A70, &unk_1CAD61F00);
  v19 = (a6 + v11[8]);
  *v19 = a4;
  v19[1] = a5;
  return result;
}

double CUIKMonthView.Styling.init(fullColor:gridFontSize:gridRowHeight:todayCircleSize:dateLabelFont:dateLabelPadding:allowKashida:showHeader:showOutOfMonthDays:dividerPadding:dividerHeight:altCalendarUnderlineWidth:altCalendarID:altCalendarFont:hideAltCalendarLabel:monthNameFormat:dimmingMode:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, char a17, uint64_t a18, uint64_t a19, char *a20)
{
  v20 = *a20;
  *a9 = a1;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  *(a9 + 24) = a12;
  *(a9 + 32) = a2;
  *(a9 + 40) = a13;
  *(a9 + 48) = a3;
  *(a9 + 49) = a4;
  *(a9 + 50) = a5;
  *(a9 + 56) = a14;
  *(a9 + 64) = a15;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 72) = a16;
  *(a9 + 104) = a17;
  *(a9 + 112) = a18;
  *(a9 + 120) = a19;
  *(a9 + 128) = v20;
  *(a9 + 168) = 0;
  result = 0.0;
  *(a9 + 152) = 0u;
  *(a9 + 136) = 0u;
  return result;
}

uint64_t CUIKMonthView.Styling.init(fullColor:gridFontSize:gridRowHeight:todayCircleSize:dateLabelFont:dateLabelPadding:allowKashida:showHeader:showOutOfMonthDays:dividerPadding:dividerHeight:altCalendarUnderlineWidth:altCalendarID:altCalendarFont:hideAltCalendarLabel:monthNameFormat:dimmingMode:numberColor:weekendNumberColor:dimmedNumberColor:dayHeaderColor:dayHeaderWeekendColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, char a17, uint64_t a18, uint64_t a19, char *a20, __int128 a21, __int128 a22, uint64_t a23)
{
  v23 = *a20;
  *a9 = result;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  *(a9 + 24) = a12;
  *(a9 + 32) = a2;
  *(a9 + 40) = a13;
  *(a9 + 48) = a3;
  *(a9 + 49) = a4;
  *(a9 + 50) = a5;
  *(a9 + 56) = a14;
  *(a9 + 64) = a15;
  *(a9 + 80) = a6;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 72) = a16;
  *(a9 + 104) = a17;
  *(a9 + 112) = a18;
  *(a9 + 120) = a19;
  *(a9 + 128) = v23;
  *(a9 + 136) = a21;
  *(a9 + 152) = a22;
  *(a9 + 168) = a23;
  return result;
}

uint64_t sub_1CABFD678(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8, &qword_1CAD59BA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v31 - v3;
  v4 = sub_1CAD4C404();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CAD4C374();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1CABFCAF8(type metadata accessor for CUIKMonthView, v13);
  v15 = sub_1CAD4C274();
  v16 = *(v8 + 8);
  v16(v13, v7);
  [v14 setCalendar_];

  sub_1CABFCAF8(type metadata accessor for CUIKMonthView, v13);
  sub_1CAD4C334();
  v16(v13, v7);
  v17 = sub_1CAD4C3D4();
  (*(v32 + 8))(v6, v33);
  [v14 setTimeZone_];

  sub_1CABFCAF8(type metadata accessor for CUIKMonthView, v11);
  v18 = v34;
  sub_1CAD4C304();
  v16(v11, v7);
  v19 = v18;
  v20 = sub_1CAD4C1D4();
  v21 = *(v20 - 8);
  v22 = 0;
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v22 = sub_1CAD4C154();
    (*(v21 + 8))(v19, v20);
  }

  [v14 setLocale_];

  v23 = sub_1CAD4DF54();
  [v14 setLocalizedDateFormatFromTemplate_];

  type metadata accessor for CUIKMonthView(0);
  v24 = sub_1CAD4C084();
  v25 = [v14 stringFromDate_];

  v26 = sub_1CAD4DF94();
  v28 = v27;

  v37 = v26;
  v38 = v28;
  sub_1CABA6054();
  v29 = sub_1CAD4E534();

  return v29;
}

void sub_1CABFDA88(uint64_t a1, uint64_t a2)
{
  v34 = sub_1CAD4C404();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CAD4C374();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645F0, &qword_1CAD5CCE0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v33 - v16;
  v17 = objc_opt_self();
  v18 = sub_1CAD4DF54();
  v36 = v2;
  sub_1CABFCAF8(type metadata accessor for CUIKMonthView, v9);
  sub_1CAD4C334();
  v19 = *(v7 + 8);
  v37 = v6;
  v33 = v19;
  v19(v9, v6);
  v20 = sub_1CAD4C3D4();
  (*(v3 + 8))(v5, v34);
  v21 = [v17 overlayCalendarForCalendarIdentifier:v18 timezone:v20];

  if (v21)
  {
    sub_1CAD4C294();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = v37;
  (*(v7 + 56))(v15, v22, 1, v37);
  v24 = v15;
  v25 = v38;
  sub_1CABA62E4(v24, v38, &qword_1EC4645F0, &qword_1CAD5CCE0);
  type metadata accessor for CUIKMonthView(0);
  v26 = sub_1CAD4C084();
  v27 = v35;
  sub_1CAB23A9C(v25, v35, &qword_1EC4645F0, &qword_1CAD5CCE0);
  v28 = 0;
  if ((*(v7 + 48))(v27, 1, v23) != 1)
  {
    v28 = sub_1CAD4C274();
    v33(v27, v23);
  }

  v29 = [objc_opt_self() monthDayStringForDate:v26 inCalendar:v28];

  if (v29)
  {
    v30 = sub_1CAD4DF94();
    v32 = v31;

    v39 = v30;
    v40 = v32;
    sub_1CABA6054();
    sub_1CAD4E534();
    sub_1CAB21B68(v25, &qword_1EC4645F0, &qword_1CAD5CCE0);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1CABFDEA4()
{
  v1 = sub_1CAD4C354();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v26 = sub_1CAD4C374();
  v8 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CABFCAF8(type metadata accessor for CUIKMonthView, v10);
  v11 = *(v2 + 104);
  v11(v7, *MEMORY[0x1E6969A20], v1);
  v11(v5, *MEMORY[0x1E6969A78], v1);
  v24 = type metadata accessor for CUIKMonthView(0);
  v25 = v0;
  v12 = sub_1CAD4C2E4();
  v14 = v13;
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v5, v1);
  v17(v7, v1);
  result = (*(v8 + 8))(v10, v26);
  if (v16)
  {
    v19 = 0;
  }

  else
  {
    v19 = v14;
  }

  if (v16)
  {
    v20 = 0;
  }

  else
  {
    v20 = v12;
  }

  if (__OFSUB__(v19, v20))
  {
    __break(1u);
  }

  else if (*(v25 + 49) == 1)
  {
    v21 = (v25 + *(v24 + 36));
    v22 = *v21;
    v23 = v21[1];
    v27 = v22;
    v28 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464548, &qword_1CAD5CC38);
    return sub_1CAD4D994();
  }

  return result;
}

uint64_t sub_1CABFE17C()
{
  v0 = sub_1CAD4C144();
  v34 = *(v0 - 8);
  v35 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v32 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645F8, &qword_1CAD5CCE8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464600, &qword_1CAD5CCF0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = sub_1CAD4C1B4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1CAD4C1D4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v36 + 48) != 1)
  {
    v25 = 0;
    return v25 & 1;
  }

  sub_1CAD4C184();
  sub_1CAD4C1C4();
  (*(v18 + 8))(v20, v17);
  sub_1CAD4C194();
  (*(v14 + 8))(v16, v13);
  sub_1CAD4C134();
  v22 = v34;
  v21 = v35;
  (*(v34 + 56))(v10, 0, 1, v35);
  v23 = *(v2 + 48);
  sub_1CAB23A9C(v12, v4, &qword_1EC464600, &qword_1CAD5CCF0);
  sub_1CAB23A9C(v10, &v4[v23], &qword_1EC464600, &qword_1CAD5CCF0);
  v24 = *(v22 + 48);
  if (v24(v4, 1, v21) != 1)
  {
    v26 = v33;
    sub_1CAB23A9C(v4, v33, &qword_1EC464600, &qword_1CAD5CCF0);
    if (v24(&v4[v23], 1, v21) != 1)
    {
      v27 = v32;
      (*(v22 + 32))(v32, &v4[v23], v21);
      sub_1CAC038CC(&qword_1EC4623F0, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v28 = v26;
      v25 = sub_1CAD4DED4();
      v29 = *(v22 + 8);
      v29(v27, v21);
      sub_1CAB21B68(v10, &qword_1EC464600, &qword_1CAD5CCF0);
      sub_1CAB21B68(v12, &qword_1EC464600, &qword_1CAD5CCF0);
      v29(v28, v21);
      sub_1CAB21B68(v4, &qword_1EC464600, &qword_1CAD5CCF0);
      return v25 & 1;
    }

    sub_1CAB21B68(v10, &qword_1EC464600, &qword_1CAD5CCF0);
    sub_1CAB21B68(v12, &qword_1EC464600, &qword_1CAD5CCF0);
    (*(v22 + 8))(v26, v21);
    goto LABEL_8;
  }

  sub_1CAB21B68(v10, &qword_1EC464600, &qword_1CAD5CCF0);
  sub_1CAB21B68(v12, &qword_1EC464600, &qword_1CAD5CCF0);
  if (v24(&v4[v23], 1, v21) != 1)
  {
LABEL_8:
    sub_1CAB21B68(v4, &qword_1EC4645F8, &qword_1CAD5CCE8);
    v25 = 0;
    return v25 & 1;
  }

  sub_1CAB21B68(v4, &qword_1EC464600, &qword_1CAD5CCF0);
  v25 = 1;
  return v25 & 1;
}

double sub_1CABFE700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1CAD4D2E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CABFCF18(&qword_1EC4643E8, &qword_1CAD5C6A0, type metadata accessor for CUIKMonthView, MEMORY[0x1E6980E80], v6);
  v7 = sub_1CAD4D234();
  (*(v4 + 8))(v6, v3);
  v8 = CTFontCopyFontDescriptor(v7);
  Size = CTFontGetSize(v7);
  v10 = [objc_opt_self() fontWithDescriptor:v8 size:Size];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464550, &unk_1CAD5CC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CAD58380;
  v12 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  *(inited + 64) = sub_1CABD4070(0, &unk_1EC461E08, 0x1E69DB878);
  *(inited + 40) = v10;
  v13 = v12;
  v14 = v10;
  sub_1CAC28A38(inited);
  swift_setDeallocating();
  sub_1CAB21B68(inited + 32, &qword_1EC464558, &unk_1CAD5E410);
  v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v16 = sub_1CAD4DF54();
  type metadata accessor for Key(0);
  sub_1CAC038CC(&qword_1EC461E50, type metadata accessor for Key, &unk_1CAD593BC);
  v17 = sub_1CAD4DE84();

  v18 = [v15 initWithString:v16 attributes:v17];

  v19 = v18;
  v20 = CTFramesetterCreateWithAttributedString(v19);
  v21 = [(__CFAttributedString *)v19 length];

  v26.width = 1.79769313e308;
  v25.location = 0;
  v25.length = v21;
  v26.height = 1.79769313e308;
  *&v22 = *&CTFramesetterSuggestFrameSizeWithConstraints(v20, v25, 0, v26, 0);

  return v22;
}

uint64_t sub_1CABFEA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  *a6 = sub_1CAD4CC94();
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return a5(a2, a1);
}

uint64_t sub_1CABFEA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v122 = a2;
  v151 = a3;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464568, &qword_1CAD5CC58);
  v4 = MEMORY[0x1EEE9AC00](v124);
  v127 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v125 = &v116 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v126 = &v116 - v8;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464570, &qword_1CAD5CC60);
  MEMORY[0x1EEE9AC00](v138);
  v140 = (&v116 - v9);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464578, &qword_1CAD5CC68);
  MEMORY[0x1EEE9AC00](v134);
  v136 = &v116 - v10;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464580, &qword_1CAD5CC70);
  MEMORY[0x1EEE9AC00](v135);
  v121 = (&v116 - v11);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464588, &qword_1CAD5CC78);
  MEMORY[0x1EEE9AC00](v150);
  v137 = &v116 - v12;
  v132 = sub_1CAD4C884();
  v131 = *(v132 - 8);
  v13 = MEMORY[0x1EEE9AC00](v132);
  v129 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v130 = &v116 - v15;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464590, &qword_1CAD5CC80);
  v16 = MEMORY[0x1EEE9AC00](v128);
  v123 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v133 = &v116 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v141 = &v116 - v20;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464598, &qword_1CAD5CC88);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v116 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645A0, &qword_1CAD5CC90);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v149 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v148 = &v116 - v25;
  v152 = sub_1CAD4CC64();
  v155 = *(v152 - 8);
  v26 = MEMORY[0x1EEE9AC00](v152);
  v119 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v116 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8, &qword_1CAD59BA0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v116 - v31;
  v33 = sub_1CAD4C374();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645A8, &qword_1CAD5CC98);
  v37 = MEMORY[0x1EEE9AC00](v154);
  v120 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v139 = &v116 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v153 = &v116 - v41;
  v42 = *(a1 + 112);
  v43 = *(a1 + 120);
  *&v167 = sub_1CABFD678(v42, v43);
  *(&v167 + 1) = v44;
  v118 = sub_1CABA6054();
  v144 = sub_1CAD4D444();
  v143 = v45;
  LODWORD(v142) = v46;
  v145 = v47;
  if (*a1 == 1)
  {
    sub_1CABFCAF8(type metadata accessor for CUIKMonthView, v36);
    sub_1CAD4C304();
    (*(v34 + 8))(v36, v33);
    v48 = sub_1CACE0510(v32);
    sub_1CAB21B68(v32, &qword_1EC4636A8, &qword_1CAD59BA0);
  }

  else
  {
    v48 = sub_1CAD4D8A4();
  }

  v49 = *(a1 + 32);
  if (sub_1CABFE17C())
  {
    sub_1CAD4CC54();
  }

  else
  {
    sub_1CAD4CC44();
  }

  v50 = sub_1CABFD678(v42, v43);
  v52 = v51;
  v53 = v153;
  v54 = &v153[*(v154 + 36)];
  v55 = type metadata accessor for MonthTextStyleModifier(0);
  v56 = *(v155 + 32);
  v57 = v54 + *(v55 + 24);
  v155 += 32;
  v56(v57, v29, v152);
  *v54 = v48;
  v54[1] = v49;
  v58 = (v54 + *(v55 + 28));
  *v58 = v50;
  v58[1] = v52;
  v59 = v143;
  *v53 = v144;
  *(v53 + 8) = v59;
  *(v53 + 16) = v142 & 1;
  *(v53 + 24) = v145;
  v60 = *(a1 + 40);

  sub_1CAD4DC94();
  sub_1CAD4C744();
  v145 = v161;
  v144 = v163;
  v143 = v165;
  v142 = v166;
  v160 = 1;
  v159 = v162;
  v158 = v164;
  v61 = *(a1 + 88);
  if (v61 && *(a1 + 104) != 1)
  {
    sub_1CABFDA88(*(a1 + 80), v61);
    v117 = v64;
    v66 = v65;
    v67 = v141;
    sub_1CAD4DB44();
    sub_1CAD4DC94();
    sub_1CAD4C744();
    v68 = (v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645B8, &qword_1CAD5CCA8) + 36));
    v69 = v168;
    *v68 = v167;
    v68[1] = v69;
    v68[2] = v169;
    v70 = v130;
    sub_1CAD4C874();
    v71 = v131;
    v72 = v132;
    (*(v131 + 16))(v129, v70, v132);
    sub_1CAC038CC(&qword_1EC4621F8, MEMORY[0x1E697E468], MEMORY[0x1E697E458]);
    v73 = sub_1CAD4C764();
    (*(v71 + 8))(v70, v72);
    *(v67 + *(v128 + 36)) = v73;
    LOBYTE(v73) = sub_1CABFE17C();
    v74 = *(a1 + 56);
    v75 = sub_1CAD4CC94();
    if (v73)
    {
      v76 = v66;
      v77 = v121;
      *v121 = v75;
      *(v77 + 8) = v74;
      *(v77 + 16) = 0;
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645D0, &qword_1CAD5CCC0);
      sub_1CABFFC34(a1, v122, v67, v117, v76, v77 + *(v78 + 44));

      sub_1CAB23A9C(v77, v136, &qword_1EC464580, &qword_1CAD5CC70);
      swift_storeEnumTagMultiPayload();
      v79 = MEMORY[0x1E6981800];
      sub_1CAB23B0C(&qword_1EC461FE8, &qword_1EC464580, &qword_1CAD5CC70, MEMORY[0x1E6981800]);
      sub_1CAB23B0C(&qword_1EC461FF0, &qword_1EC464570, &qword_1CAD5CC60, v79);
      v80 = v137;
      sub_1CAD4CE24();
      sub_1CAB21B68(v77, &qword_1EC464580, &qword_1CAD5CC70);
    }

    else
    {
      v81 = v140;
      *v140 = v75;
      v81[1] = v74;
      *(v81 + 16) = 0;
      sub_1CAB23A9C(v53, v139, &qword_1EC4645A8, &qword_1CAD5CC98);
      sub_1CAB23A9C(v67, v133, &qword_1EC464590, &qword_1CAD5CC80);
      v82 = v117;
      v156 = v117;
      v157 = v66;
      v132 = v66;

      v130 = sub_1CAD4D444();
      v84 = v83;
      v86 = v85;
      v131 = v87;
      v88 = *(a1 + 96);
      v89 = sub_1CABFE17C();
      v116 = v60;
      v90 = v119;
      if (v89)
      {
        sub_1CAD4CC54();
      }

      else
      {
        sub_1CAD4CC44();
      }

      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645C0, &qword_1CAD5CCB0);
      v92 = v140 + *(v91 + 44);
      v93 = v125;
      v94 = &v125[*(v124 + 36)];
      v95 = type metadata accessor for AltCalendarDateStyleModifier(0);
      v56(&v94[*(v95 + 20)], v90, v152);
      v129 = v88;
      *v94 = v88;
      v96 = &v94[*(v95 + 24)];
      v97 = v132;
      *v96 = v82;
      v96[1] = v97;
      *v93 = v130;
      *(v93 + 1) = v84;
      v93[16] = v86 & 1;
      *(v93 + 3) = v131;
      v98 = v93;
      v99 = v126;
      sub_1CABA62E4(v98, v126, &qword_1EC464568, &qword_1CAD5CC58);
      v100 = v120;
      sub_1CAB23A9C(v139, v120, &qword_1EC4645A8, &qword_1CAD5CC98);
      v101 = v133;
      v102 = v123;
      sub_1CAB23A9C(v133, v123, &qword_1EC464590, &qword_1CAD5CC80);
      v103 = v127;
      sub_1CAB23A9C(v99, v127, &qword_1EC464568, &qword_1CAD5CC58);
      sub_1CAB23A9C(v100, v92, &qword_1EC4645A8, &qword_1CAD5CC98);
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645C8, &qword_1CAD5CCB8);
      sub_1CAB23A9C(v102, v92 + *(v104 + 48), &qword_1EC464590, &qword_1CAD5CC80);
      sub_1CAB23A9C(v103, v92 + *(v104 + 64), &qword_1EC464568, &qword_1CAD5CC58);

      sub_1CAB21B68(v99, &qword_1EC464568, &qword_1CAD5CC58);
      sub_1CAB21B68(v101, &qword_1EC464590, &qword_1CAD5CC80);
      sub_1CAB21B68(v139, &qword_1EC4645A8, &qword_1CAD5CC98);
      sub_1CAB21B68(v103, &qword_1EC464568, &qword_1CAD5CC58);
      sub_1CAB21B68(v102, &qword_1EC464590, &qword_1CAD5CC80);
      sub_1CAB21B68(v100, &qword_1EC4645A8, &qword_1CAD5CC98);

      v105 = v140;
      sub_1CAB23A9C(v140, v136, &qword_1EC464570, &qword_1CAD5CC60);
      swift_storeEnumTagMultiPayload();
      v106 = MEMORY[0x1E6981800];
      sub_1CAB23B0C(&qword_1EC461FE8, &qword_1EC464580, &qword_1CAD5CC70, MEMORY[0x1E6981800]);
      sub_1CAB23B0C(&qword_1EC461FF0, &qword_1EC464570, &qword_1CAD5CC60, v106);
      v80 = v137;
      sub_1CAD4CE24();
      sub_1CAB21B68(v105, &qword_1EC464570, &qword_1CAD5CC60);
      v67 = v141;
      v60 = v116;
    }

    sub_1CAB23A9C(v80, v147, &qword_1EC464588, &qword_1CAD5CC78);
    swift_storeEnumTagMultiPayload();
    sub_1CAC04BF0();
    sub_1CAC04CD0();
    v62 = v148;
    sub_1CAD4CE24();
    sub_1CAB21B68(v80, &qword_1EC464588, &qword_1CAD5CC78);
    sub_1CAB21B68(v67, &qword_1EC464590, &qword_1CAD5CC80);
    v63 = v153;
  }

  else
  {
    sub_1CAB23A9C(v53, v147, &qword_1EC4645A8, &qword_1CAD5CC98);
    swift_storeEnumTagMultiPayload();
    sub_1CAC04BF0();
    sub_1CAC04CD0();
    v62 = v148;
    sub_1CAD4CE24();
    v63 = v53;
  }

  v107 = v160;
  v108 = v159;
  v109 = v158;
  v110 = v149;
  sub_1CAB23A9C(v62, v149, &qword_1EC4645A0, &qword_1CAD5CC90);
  v111 = v151;
  *v151 = 0;
  *(v111 + 8) = v107;
  v111[2] = v145;
  *(v111 + 24) = v108;
  v111[4] = v144;
  *(v111 + 40) = v109;
  v112 = v142;
  v111[6] = v143;
  v111[7] = v112;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645B0, &qword_1CAD5CCA0);
  sub_1CAB23A9C(v110, v111 + *(v113 + 48), &qword_1EC4645A0, &qword_1CAD5CC90);
  v114 = v111 + *(v113 + 64);
  *v114 = v60;
  v114[8] = 0;
  sub_1CAB21B68(v62, &qword_1EC4645A0, &qword_1CAD5CC90);
  sub_1CAB21B68(v110, &qword_1EC4645A0, &qword_1CAD5CC90);
  return sub_1CAB21B68(v63, &qword_1EC4645A8, &qword_1CAD5CC98);
}

uint64_t sub_1CABFFC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v118 = a4;
  v101 = a3;
  v109 = a6;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645D8, &qword_1CAD5CCC8);
  v9 = MEMORY[0x1EEE9AC00](v105);
  v111 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v106 = &v90 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v90 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464590, &qword_1CAD5CC80);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v108 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v90 - v17;
  v114 = sub_1CAD4CC64();
  v116 = *(v114 - 8);
  v18 = MEMORY[0x1EEE9AC00](v114);
  v103 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v90 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4636A8, &qword_1CAD59BA0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v94 = &v90 - v23;
  v93 = sub_1CAD4C374();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v25 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645E0, &qword_1CAD5CCD0);
  v26 = MEMORY[0x1EEE9AC00](v99);
  v104 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v90 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v117 = &v90 - v31;
  v32 = *(a1 + 112);
  v33 = *(a1 + 120);
  *&v123 = sub_1CABFD678(v32, v33);
  *(&v123 + 1) = v34;
  v100 = sub_1CABA6054();
  v98 = sub_1CAD4D444();
  v97 = v35;
  LODWORD(v95) = v36;
  v96 = v37;
  v102 = a2;
  v38 = v32;
  sub_1CAD4C794();
  v39 = sub_1CABFD678(v32, v33);
  v113 = *(a1 + 32);
  sub_1CABFE700(v39, v40, v113);

  v41 = *(a1 + 80);
  v112 = *(a1 + 88);
  v110 = a5;
  if (v112 && (*(a1 + 104) & 1) == 0)
  {
    sub_1CABFDA88(v41, v112);
    sub_1CABFE700(v42, v43, *(a1 + 96));
  }

  v91 = v41;
  v44 = sub_1CABFD678(v32, v33);
  sub_1CABFE700(v44, v45, v113);

  sub_1CAD4DCA4();
  sub_1CAD4C744();
  v46 = v95 & 1;
  v126 = v95 & 1;
  if (*a1 == 1)
  {
    sub_1CABFCAF8(type metadata accessor for CUIKMonthView, v25);
    v47 = v94;
    sub_1CAD4C304();
    (*(v92 + 8))(v25, v93);
    v48 = sub_1CACE0510(v47);
    sub_1CAB21B68(v47, &qword_1EC4636A8, &qword_1CAD59BA0);
  }

  else
  {
    v48 = sub_1CAD4D8A4();
  }

  if (sub_1CABFE17C())
  {
    sub_1CAD4CC54();
  }

  else
  {
    sub_1CAD4CC44();
  }

  v49 = sub_1CABFD678(v38, v33);
  v51 = v50;
  v52 = *(v99 + 36);
  v95 = v33;
  v53 = v38;
  v54 = &v30[v52];
  v55 = type metadata accessor for MonthTextStyleModifier(0);
  v56 = *(v116 + 32);
  v57 = v54 + *(v55 + 24);
  v116 += 32;
  v99 = v56;
  v56(v57, v21, v114);
  *v54 = v48;
  v58 = v113;
  v54[1] = v113;
  v59 = (v54 + *(v55 + 28));
  *v59 = v49;
  v59[1] = v51;
  v60 = v97;
  *v30 = v98;
  *(v30 + 1) = v60;
  v30[16] = v46;
  *(v30 + 3) = v96;
  v61 = v125;
  *(v30 + 3) = v124;
  *(v30 + 4) = v61;
  *(v30 + 2) = v123;
  sub_1CABA62E4(v30, v117, &qword_1EC4645E0, &qword_1CAD5CCD0);
  sub_1CAB23A9C(v101, v115, &qword_1EC464590, &qword_1CAD5CC80);
  v62 = v110;
  *&v119 = v118;
  *(&v119 + 1) = v110;

  v101 = sub_1CAD4D444();
  v100 = v63;
  v65 = v64;
  v67 = v66;
  sub_1CAD4C794();
  v68 = sub_1CABFD678(v53, v95);
  sub_1CABFE700(v68, v69, v58);

  if (v112)
  {
    v70 = v103;
    if ((*(a1 + 104) & 1) == 0)
    {
      sub_1CABFDA88(v91, v112);
      sub_1CABFE700(v71, v72, *(a1 + 96));
    }
  }

  else
  {
    v70 = v103;
  }

  v73 = *(a1 + 96);
  sub_1CABFE700(v118, v62, v73);
  sub_1CAD4DCB4();
  sub_1CAD4C744();
  v122 = v65 & 1;
  if (sub_1CABFE17C())
  {
    sub_1CAD4CC54();
  }

  else
  {
    sub_1CAD4CC44();
  }

  v74 = v106;
  v75 = &v106[*(v105 + 36)];
  v76 = type metadata accessor for AltCalendarDateStyleModifier(0);
  (v99)(v75 + *(v76 + 20), v70, v114);
  v113 = v73;
  *v75 = v73;
  v77 = (v75 + *(v76 + 24));
  *v77 = v118;
  v77[1] = v62;
  v78 = v100;
  *v74 = v101;
  *(v74 + 1) = v78;
  v74[16] = v65 & 1;
  *(v74 + 3) = v67;
  v79 = v121;
  v80 = v119;
  *(v74 + 3) = v120;
  *(v74 + 4) = v79;
  *(v74 + 2) = v80;
  v81 = v74;
  v82 = v107;
  sub_1CABA62E4(v81, v107, &qword_1EC4645D8, &qword_1CAD5CCC8);
  v83 = v104;
  sub_1CAB23A9C(v117, v104, &qword_1EC4645E0, &qword_1CAD5CCD0);
  v84 = v115;
  v85 = v108;
  sub_1CAB23A9C(v115, v108, &qword_1EC464590, &qword_1CAD5CC80);
  v86 = v111;
  sub_1CAB23A9C(v82, v111, &qword_1EC4645D8, &qword_1CAD5CCC8);
  v87 = v109;
  sub_1CAB23A9C(v83, v109, &qword_1EC4645E0, &qword_1CAD5CCD0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4645E8, &qword_1CAD5CCD8);
  sub_1CAB23A9C(v85, v87 + *(v88 + 48), &qword_1EC464590, &qword_1CAD5CC80);
  sub_1CAB23A9C(v86, v87 + *(v88 + 64), &qword_1EC4645D8, &qword_1CAD5CCC8);

  sub_1CAB21B68(v82, &qword_1EC4645D8, &qword_1CAD5CCC8);
  sub_1CAB21B68(v84, &qword_1EC464590, &qword_1CAD5CC80);
  sub_1CAB21B68(v117, &qword_1EC4645E0, &qword_1CAD5CCD0);
  sub_1CAB21B68(v86, &qword_1EC4645D8, &qword_1CAD5CCC8);
  sub_1CAB21B68(v85, &qword_1EC464590, &qword_1CAD5CC80);
  return sub_1CAB21B68(v83, &qword_1EC4645E0, &qword_1CAD5CCD0);
}

uint64_t sub_1CAC0071C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = 0;
  if (v5 >= 1.0)
  {
    sub_1CAD4C794();
    sub_1CABFDEA4();
    v6 = v7;
  }

  *a3 = sub_1CAD4CD94();
  *(a3 + 8) = v6;
  *(a3 + 16) = v5 < 1.0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464500, &qword_1CAD5CBD0);
  return sub_1CAC007C0(a2, a3 + *(v8 + 44));
}

uint64_t sub_1CAC007C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v3 = sub_1CAD4C354();
  v118 = *(v3 - 8);
  v119 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v116 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v115 = &v93 - v6;
  v7 = sub_1CAD4C374();
  v113 = *(v7 - 8);
  v114 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464508, &qword_1CAD5CBD8);
  v122 = *(v9 - 8);
  v123 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v121 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464510, &qword_1CAD5CBE0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v93 - v15;
  v107 = type metadata accessor for CUIKWeekLabelRow(0);
  v17 = MEMORY[0x1EEE9AC00](v107);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v93 - v20;
  v125 = type metadata accessor for CUIKMonthView(0);
  v22 = *(v125 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v125);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464518, &unk_1CAD5CBE8);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v117 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v126 = &v93 - v27;
  v28 = *(a1 + 49);
  v110 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v22;
  v109 = v23;
  if (v28 == 1)
  {
    v100 = v13;
    v101 = v21;
    sub_1CAC024DC(a1, &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUIKMonthView);
    v29 = *(v22 + 80);
    v99 = v14;
    v30 = (v29 + 16) & ~v29;
    v97 = swift_allocObject();
    sub_1CAC02544(&v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v97 + v30, type metadata accessor for CUIKMonthView);
    v31 = *(a1 + 14);
    v32 = *(a1 + 15);
    v98 = v16;
    v33 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = sub_1CABFD678(v31, v32);
    v96 = v19;
    sub_1CABFE700(v34, v35, *(a1 + 4));

    sub_1CAD4DC94();
    sub_1CAD4C744();
    v103 = v160;
    v104 = v162;
    v105 = v165;
    v106 = v164;
    v142 = v161;
    v140 = v163;
    sub_1CAC024DC(a1, v33, type metadata accessor for CUIKMonthView);
    v102 = swift_allocObject();
    sub_1CAC02544(v33, v102 + v30, type metadata accessor for CUIKMonthView);
    v36 = v142;
    v37 = v140;
    v94 = v142;
    v95 = v140;
    v38 = *(v125 + 24);
    v39 = sub_1CAD4C0F4();
    v40 = v101;
    (*(*(v39 - 8) + 16))(v101, a1 + v38, v39);
    v41 = a1[6];
    v150 = a1[7];
    v42 = a1[9];
    v151 = a1[8];
    v152 = v42;
    v153 = a1[10];
    v43 = a1[2];
    v146 = a1[3];
    v44 = a1[5];
    v147 = a1[4];
    v148 = v44;
    v149 = v41;
    v45 = *a1;
    v144 = a1[1];
    v145 = v43;
    v143 = v45;
    v46 = v107;
    v47 = *(v107 + 24);
    *(v40 + v47) = swift_getKeyPath(byte_1CAD5C5C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
    swift_storeEnumTagMultiPayload();
    v48 = *(v46 + 28);
    *(v40 + v48) = swift_getKeyPath("p$q!");
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
    swift_storeEnumTagMultiPayload();
    v49 = (v40 + *(v46 + 20));
    v50 = v40;
    v51 = v150;
    v52 = v152;
    v49[8] = v151;
    v49[9] = v52;
    v49[10] = v153;
    v53 = v146;
    v54 = v148;
    v49[4] = v147;
    v49[5] = v54;
    v49[6] = v149;
    v49[7] = v51;
    v55 = v144;
    *v49 = v143;
    v49[1] = v55;
    v49[2] = v145;
    v49[3] = v53;
    v56 = v96;
    sub_1CAC024DC(v50, v96, type metadata accessor for CUIKWeekLabelRow);
    v57 = v97;
    *&v154 = sub_1CAC04658;
    *(&v154 + 1) = v97;
    *&v155 = v103;
    BYTE8(v155) = v36;
    HIDWORD(v155) = *&v141[3];
    *(&v155 + 9) = *v141;
    *&v156 = v104;
    BYTE8(v156) = v37;
    HIDWORD(v156) = *&v139[3];
    *(&v156 + 9) = *v139;
    *&v157 = v106;
    *(&v157 + 1) = v105;
    *&v158 = sub_1CAC013B4;
    *(&v158 + 1) = 0;
    *&v159 = sub_1CAC04694;
    *(&v159 + 1) = v102;
    v58 = v155;
    v59 = v98;
    *v98 = v154;
    v59[1] = v58;
    v60 = v156;
    v61 = v157;
    v62 = v159;
    v59[4] = v158;
    v59[5] = v62;
    v59[2] = v60;
    v59[3] = v61;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464538, &qword_1CAD5CC28);
    sub_1CAC024DC(v56, v59 + *(v63 + 48), type metadata accessor for CUIKWeekLabelRow);
    sub_1CAC04704(&v143, v127);
    sub_1CAB23A9C(&v154, v127, &qword_1EC464540, &qword_1CAD5CC30);
    sub_1CAC04D8C(v101, type metadata accessor for CUIKWeekLabelRow);
    sub_1CAC04D8C(v56, type metadata accessor for CUIKWeekLabelRow);
    v127[0] = sub_1CAC04658;
    v127[1] = v57;
    v127[2] = v103;
    v128 = v94;
    *v129 = *v141;
    *&v129[3] = *&v141[3];
    v130 = v104;
    v131 = v95;
    *v132 = *v139;
    *&v132[3] = *&v139[3];
    v133 = v106;
    v134 = v105;
    v135 = sub_1CAC013B4;
    v136 = 0;
    v137 = sub_1CAC04694;
    v138 = v102;
    sub_1CAB21B68(v127, &qword_1EC464540, &qword_1CAD5CC30);
    v64 = v126;
    sub_1CABA62E4(v59, v126, &qword_1EC464510, &qword_1CAD5CBE0);
    (*(v99 + 56))(v64, 0, 1, v100);
  }

  else
  {
    (*(v14 + 56))(v126, 1, 1, v13);
  }

  v65 = v112;
  v108 = a1;
  sub_1CABFCAF8(type metadata accessor for CUIKMonthView, v112);
  v66 = v118;
  v67 = v119;
  v68 = *(v118 + 104);
  v69 = v115;
  v68(v115, *MEMORY[0x1E6969A20], v119);
  v70 = v116;
  v68(v116, *MEMORY[0x1E6969A78], v67);
  v71 = sub_1CAD4C2E4();
  v73 = v72;
  v75 = v74;
  v76 = *(v66 + 8);
  v76(v70, v67);
  v76(v69, v67);
  (*(v113 + 8))(v65, v114);
  if (v75)
  {
    v77 = 0;
  }

  else
  {
    v77 = v73;
  }

  if (v75)
  {
    v78 = 0;
  }

  else
  {
    v78 = v71;
  }

  *&v143 = v78;
  *(&v143 + 1) = v77;
  swift_getKeyPath(byte_1CAD5CBF8);
  v79 = v110;
  sub_1CAC024DC(v108, v110, type metadata accessor for CUIKMonthView);
  v80 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v81 = swift_allocObject();
  sub_1CAC02544(v79, v81 + v80, type metadata accessor for CUIKMonthView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464520, &qword_1CAD5CC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464528, &qword_1CAD5CC18);
  sub_1CAC04ED4(&qword_1EC461F08, &qword_1EC464520, &qword_1CAD5CC10, MEMORY[0x1E69E66E8]);
  sub_1CAB23B0C(&qword_1EC461FC0, &qword_1EC464528, &qword_1CAD5CC18, MEMORY[0x1E6981F50]);
  v82 = v120;
  sub_1CAD4DB64();
  v83 = v126;
  v84 = v117;
  sub_1CAB23A9C(v126, v117, &qword_1EC464518, &unk_1CAD5CBE8);
  v86 = v121;
  v85 = v122;
  v87 = *(v122 + 16);
  v88 = v123;
  v87(v121, v82, v123);
  v89 = v124;
  sub_1CAB23A9C(v84, v124, &qword_1EC464518, &unk_1CAD5CBE8);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464530, &qword_1CAD5CC20);
  v87((v89 + *(v90 + 48)), v86, v88);
  v91 = *(v85 + 8);
  v91(v82, v88);
  sub_1CAB21B68(v83, &qword_1EC464518, &unk_1CAD5CBE8);
  v91(v86, v88);
  return sub_1CAB21B68(v84, &qword_1EC464518, &unk_1CAD5CBE8);
}

void sub_1CAC013B4(void *a2@<X8>)
{
  sub_1CAD4C794();
  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_1CAC013E0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CUIKMonthView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464548, &qword_1CAD5CC38);
  return sub_1CAD4D9A4();
}

uint64_t sub_1CAC01458@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = type metadata accessor for CUIKWeekRow(0);
  v6 = (v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v39 - v10;
  v12 = *a1;
  v13 = type metadata accessor for CUIKMonthView(0);
  v14 = v13[6];
  v15 = sub_1CAD4C0F4();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v11, &a2[v14], v15);
  sub_1CAB23A9C(&a2[v13[7]], &v11[v6[7]], &unk_1EC465A70, &unk_1CAD61F00);
  (*(v16 + 56))(&v11[v6[8]], 1, 1, v15);
  v17 = *(a2 + 5);
  v46 = *(a2 + 4);
  v47 = v17;
  v18 = *(a2 + 3);
  v44 = *(a2 + 2);
  v45 = v18;
  v19 = *(a2 + 10);
  v51 = *(a2 + 9);
  v52 = v19;
  v20 = *(a2 + 8);
  v49 = *(a2 + 7);
  v50 = v20;
  v48 = *(a2 + 6);
  v21 = *(a2 + 1);
  v42 = *a2;
  v43 = v21;
  v22 = *&v21;
  v23 = &a2[v13[8]];
  v24 = *v23;
  v25 = v23[1];
  v26 = v6[12];
  *&v11[v26] = swift_getKeyPath(byte_1CAD5C5C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
  swift_storeEnumTagMultiPayload();
  v27 = v6[13];
  *&v11[v27] = swift_getKeyPath("p$q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
  swift_storeEnumTagMultiPayload();
  v28 = v6[14];
  *&v11[v28] = swift_getKeyPath("@$q!");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E80, &unk_1CAD5C660);
  swift_storeEnumTagMultiPayload();
  *&v11[v6[9]] = v12;
  v29 = &v11[v6[10]];
  v30 = v51;
  *(v29 + 8) = v50;
  *(v29 + 9) = v30;
  *(v29 + 10) = v52;
  v31 = v47;
  *(v29 + 4) = v46;
  *(v29 + 5) = v31;
  v32 = v49;
  *(v29 + 6) = v48;
  *(v29 + 7) = v32;
  v33 = v43;
  *v29 = v42;
  *(v29 + 1) = v33;
  v34 = v45;
  *(v29 + 2) = v44;
  *(v29 + 3) = v34;
  v35 = &v11[v6[11]];
  *v35 = v24;
  v35[1] = v25;
  sub_1CAC024DC(v11, v9, type metadata accessor for CUIKWeekRow);
  v36 = v40;
  sub_1CAC024DC(v9, v40, type metadata accessor for CUIKWeekRow);
  v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464608, &qword_1CAD5CCF8) + 48);
  *v37 = 0;
  *(v37 + 8) = v22 < 1.0;
  *(v37 + 9) = v22 >= 1.0;
  sub_1CAC04704(&v42, &v41);
  sub_1CAB380F0(v24, v25);
  sub_1CAC04D8C(v11, type metadata accessor for CUIKWeekRow);
  return sub_1CAC04D8C(v9, type metadata accessor for CUIKWeekRow);
}

uint64_t CUIKMonthView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_1CAD4D074();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643F0, &qword_1CAD5C6A8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643F8, &qword_1CAD5C6B0);
  v10 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v12 = &v23 - v11;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464400, &qword_1CAD5C6B8);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v23 - v13;
  sub_1CAC01AF0(v2, v9);
  sub_1CAD4D064();
  v15 = sub_1CAC026A0();
  sub_1CAD4D624();
  (*(v4 + 8))(v6, v3);
  sub_1CAB21B68(v9, &qword_1EC4643F0, &qword_1CAD5C6A8);
  v26 = sub_1CABFD678(*(v2 + 176), *(v2 + 184));
  v27 = v16;
  sub_1CABA6054();
  v17 = sub_1CAD4D444();
  v19 = v18;
  LOBYTE(v2) = v20;
  v26 = v7;
  v27 = v15;
  swift_getOpaqueTypeConformance2();
  v21 = v23;
  sub_1CAD4D5F4();
  sub_1CABA6128(v17, v19, v2 & 1);

  (*(v10 + 8))(v12, v21);
  sub_1CAD4C8F4();
  return sub_1CAB21B68(v14, &qword_1EC464400, &qword_1CAD5C6B8);
}

uint64_t sub_1CAC01AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465450, &qword_1CAD5A1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v32 - v4;
  v5 = sub_1CAD4BFF4();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464418, &qword_1CAD5C6D0);
  v35 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v34 = &v32 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4644F8, &qword_1CAD5CBC8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = (&v32 - v8);
  v10 = type metadata accessor for CUIKMonthView(0);
  v11 = *(v10 - 8);
  v36 = v10;
  v37 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = sub_1CAD4C964();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v32 - v18;
  v20 = a1;
  sub_1CABFCD08(type metadata accessor for CUIKMonthView, &v32 - v18);
  sub_1CAD4C954();
  sub_1CAC038CC(&qword_1EC4620C8, MEMORY[0x1E697EA50], MEMORY[0x1E697EA70]);
  LOBYTE(a1) = sub_1CAD4E5A4();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v21(v19, v13);
  if (a1)
  {
    sub_1CAC024DC(v20, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUIKMonthView);
    v22 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v23 = swift_allocObject();
    sub_1CAC02544(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for CUIKMonthView);
    *v9 = sub_1CAC0423C;
    v9[1] = v23;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464410, &qword_1CAD5C6C8);
    sub_1CAB23B0C(&qword_1EC462208, &qword_1EC464410, &qword_1CAD5C6C8, MEMORY[0x1E697E370]);
    sub_1CAB23B0C(&qword_1EC462010, &qword_1EC464418, &qword_1CAD5C6D0, MEMORY[0x1E697CD08]);
    return sub_1CAD4CE24();
  }

  else
  {
    v25 = v43;
    v44 = 0;
    v45 = 0xE000000000000000;
    MEMORY[0x1CCAA7330](0x3A776F68736C6163, 0xE800000000000000);
    sub_1CAD4C044();
    sub_1CAD4E314();
    v26 = v40;
    sub_1CAD4BFE4();

    v28 = v38;
    v27 = v39;
    result = (*(v38 + 48))(v26, 1, v39);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v29 = (*(v28 + 32))(v33, v26, v27);
      MEMORY[0x1EEE9AC00](v29);
      *(&v32 - 2) = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464410, &qword_1CAD5C6C8);
      sub_1CAB23B0C(&qword_1EC462208, &qword_1EC464410, &qword_1CAD5C6C8, MEMORY[0x1E697E370]);
      v30 = v34;
      sub_1CAD4D364();
      v31 = v35;
      (*(v35 + 16))(v9, v30, v25);
      swift_storeEnumTagMultiPayload();
      sub_1CAB23B0C(&qword_1EC462010, &qword_1EC464418, &qword_1CAD5C6D0, MEMORY[0x1E697CD08]);
      sub_1CAD4CE24();
      return (*(v31 + 8))(v30, v25);
    }
  }

  return result;
}

uint64_t sub_1CAC021A0@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = type metadata accessor for CUIKMonthView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1CAC024DC(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CUIKMonthView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_1CAC02544(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for CUIKMonthView);
  *a2 = sub_1CAC06994;
  a2[1] = v8;
  return result;
}

uint64_t sub_1CAC02358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1CAC02468()
{
  result = qword_1EC461FC8;
  if (!qword_1EC461FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC461FC8);
  }

  return result;
}

uint64_t sub_1CAC024DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC02544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CAC026A0()
{
  result = qword_1EC462008;
  if (!qword_1EC462008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4643F0, &qword_1CAD5C6A8);
    sub_1CAC02724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462008);
  }

  return result;
}

unint64_t sub_1CAC02724()
{
  result = qword_1EC462080;
  if (!qword_1EC462080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464408, &qword_1CAD5C6C0);
    sub_1CAB23B0C(&qword_1EC462208, &qword_1EC464410, &qword_1CAD5C6C8, MEMORY[0x1E697E370]);
    sub_1CAB23B0C(&qword_1EC462010, &qword_1EC464418, &qword_1CAD5C6D0, MEMORY[0x1E697CD08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462080);
  }

  return result;
}

unint64_t sub_1CAC0280C()
{
  result = qword_1EC464420;
  if (!qword_1EC464420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464420);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CUIKMonthDimmingMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CUIKMonthDimmingMode(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1CAC02A2C(uint64_t a1)
{
  sub_1CAD4C0F4();
  if (v1 <= 0x3F)
  {
    sub_1CAC02FC0(319, &qword_1EC462238, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
    if (v2 <= 0x3F)
    {
      sub_1CAC02FC0(319, &qword_1EC462228, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CAC02B58(uint64_t a1)
{
  sub_1CAD4C0F4();
  if (v1 <= 0x3F)
  {
    sub_1CAC02FC0(319, &qword_1EDA5F8D8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1CAC02D10(319);
      if (v3 <= 0x3F)
      {
        sub_1CAC02FC0(319, &qword_1EC462238, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
        if (v4 <= 0x3F)
        {
          sub_1CAC02FC0(319, &qword_1EC462228, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            sub_1CAC02FC0(319, &qword_1EC462230, MEMORY[0x1E697DBC8], MEMORY[0x1E697DCC8]);
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

void sub_1CAC02D10(uint64_t a1)
{
  if (!qword_1EC461DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC463910, &qword_1CAD5A120);
    v1 = sub_1CAD4E4D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC461DE0);
    }
  }
}

void sub_1CAC02D9C(uint64_t a1)
{
  sub_1CAD4C0F4();
  if (v1 <= 0x3F)
  {
    sub_1CAC02FC0(319, &qword_1EDA5F8D8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1CAC02D10(319);
      if (v3 <= 0x3F)
      {
        sub_1CAC02F70();
        if (v4 <= 0x3F)
        {
          sub_1CAC02FC0(319, &qword_1EC462238, MEMORY[0x1E6969AE8], MEMORY[0x1E697DCC8]);
          if (v5 <= 0x3F)
          {
            sub_1CAC02FC0(319, &qword_1EC462228, MEMORY[0x1E697EA50], MEMORY[0x1E697DCC8]);
            if (v6 <= 0x3F)
            {
              sub_1CAC02FC0(319, &qword_1EC462220, MEMORY[0x1E6980E80], MEMORY[0x1E697DCC8]);
              if (v7 <= 0x3F)
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

void sub_1CAC02F70()
{
  if (!qword_1EC462000)
  {
    v0 = sub_1CAD4D9C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC462000);
    }
  }
}

void sub_1CAC02FC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1CAC03058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CAC030A0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_1CAC0311C()
{
  result = qword_1EC4621D0;
  if (!qword_1EC4621D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464440, &qword_1CAD5C938);
    sub_1CAB23B0C(&qword_1EC462218, &qword_1EC464448, &qword_1CAD5C940, MEMORY[0x1E697E370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621D0);
  }

  return result;
}

unint64_t sub_1CAC031D4()
{
  result = qword_1EC4621D8;
  if (!qword_1EC4621D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464450, &qword_1CAD5C948);
    sub_1CAB23B0C(&qword_1EC462210, &qword_1EC464458, &qword_1CAD5C950, MEMORY[0x1E697E370]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621D8);
  }

  return result;
}

unint64_t sub_1CAC0328C()
{
  result = qword_1EC462198;
  if (!qword_1EC462198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464400, &qword_1CAD5C6B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4643F0, &qword_1CAD5C6A8);
    sub_1CAC026A0();
    swift_getOpaqueTypeConformance2();
    sub_1CAC038CC(&qword_1EC462018, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462198);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1CAC03398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1CAC033E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1CAC03484(uint64_t a1)
{
  result = sub_1CAD4CC64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CAC03550(uint64_t a1)
{
  result = sub_1CAD4CC64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CAC03614@<X0>(uint64_t a1@<X8>)
{
  result = sub_1CAD4CBD4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1CAC03678()
{
  result = qword_1EC464480;
  if (!qword_1EC464480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464460, &qword_1CAD5CAB0);
    sub_1CAC03730();
    sub_1CAB23B0C(&qword_1EC462020, &qword_1EC4644A0, &qword_1CAD5CB40, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464480);
  }

  return result;
}

unint64_t sub_1CAC03730()
{
  result = qword_1EC464488;
  if (!qword_1EC464488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464478, &qword_1CAD5CAF8);
    sub_1CAC037E8();
    sub_1CAB23B0C(&qword_1EC462050, &qword_1EC4631C8, &qword_1CAD5D4C0, MEMORY[0x1E6980488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464488);
  }

  return result;
}

unint64_t sub_1CAC037E8()
{
  result = qword_1EC464490;
  if (!qword_1EC464490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464470, &qword_1CAD5CAF0);
    sub_1CAB23B0C(&qword_1EC464498, &qword_1EC464468, &qword_1CAD5CAE8, MEMORY[0x1E697FDF0]);
    sub_1CAB23B0C(&qword_1EC462030, &qword_1EC464008, &unk_1CAD5CB30, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464490);
  }

  return result;
}

uint64_t sub_1CAC038CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CAC03914()
{
  result = qword_1EC462128;
  if (!qword_1EC462128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4644B8, &qword_1CAD5CB58);
    sub_1CAC039CC();
    sub_1CAB23B0C(&qword_1EC462020, &qword_1EC4644A0, &qword_1CAD5CB40, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462128);
  }

  return result;
}

unint64_t sub_1CAC039CC()
{
  result = qword_1EC462158;
  if (!qword_1EC462158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4644D8, &qword_1CAD5CBA8);
    sub_1CAC03A84();
    sub_1CAB23B0C(&qword_1EC462030, &qword_1EC464008, &unk_1CAD5CB30, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462158);
  }

  return result;
}

unint64_t sub_1CAC03A84()
{
  result = qword_1EC4621E8;
  if (!qword_1EC4621E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4644D0, &qword_1CAD5CBA0);
    sub_1CAB23B0C(&qword_1EC462058, &qword_1EC4644C8, &qword_1CAD5CB98, MEMORY[0x1E697FDF0]);
    sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0, &qword_1CAD5CBB0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621E8);
  }

  return result;
}

unint64_t sub_1CAC03B68()
{
  result = qword_1EC462170;
  if (!qword_1EC462170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4644C0, &qword_1CAD5CB60);
    sub_1CAB23B0C(&qword_1EC461FD0, &qword_1EC4644E8, &qword_1CAD5CBB8, MEMORY[0x1E6981808]);
    sub_1CAB23B0C(&qword_1EC462060, &qword_1EC4644F0, &qword_1CAD5CBC0, MEMORY[0x1E697FDC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462170);
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{
  v1 = type metadata accessor for CUIKWeekRow(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  v19 = v0;
  v4 = v0 + v3;
  v5 = sub_1CAD4C0F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v3, v5);
  v8 = v1[5];
  v9 = *(v6 + 48);
  if (!v9(v4 + v8, 1, v5))
  {
    v7(v4 + v8, v5);
  }

  v10 = v1[6];
  if (!v9(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  if (*(v4 + v1[9]))
  {
  }

  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1CAD4C374();
    (*(*(v12 - 8) + 8))(v4 + v11, v12);
  }

  else
  {
  }

  v13 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1CAD4C964();
    (*(*(v14 - 8) + 8))(v4 + v13, v14);
  }

  else
  {
  }

  v15 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463E80, &unk_1CAD5C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_1CAD4C6A4();
    (*(*(v16 - 8) + 8))(v4 + v15, v16);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v19, v3 + v18, v2 | 7);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for CUIKWeekLabelRow(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_1CAD4C0F4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1CAD4C374();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1CAD4C964();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CAC0419C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_92Tm()
{
  v1 = type metadata accessor for CUIKMonthView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;

  v5 = v1[6];
  v6 = sub_1CAD4C0F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v1[7];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  if (*(v4 + v1[8]))
  {
  }

  v10 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464238, &qword_1CAD5C5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C374();
    (*(*(v11 - 8) + 8))(v4 + v10, v11);
  }

  else
  {
  }

  v12 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E0, &qword_1CAD5C628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1CAD4C964();
    (*(*(v13 - 8) + 8))(v4 + v12, v13);
  }

  else
  {
  }

  v14 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4643E8, &qword_1CAD5C6A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1CAD4D2E4();
    (*(*(v15 - 8) + 8))(v4 + v14, v15);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v17, v2 | 7);
}

uint64_t sub_1CAC04584@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CUIKMonthView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1CAC01458(a1, v6, a2);
}

unint64_t sub_1CAC04604()
{
  result = qword_1EC461F98;
  if (!qword_1EC461F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC461F98);
  }

  return result;
}

uint64_t sub_1CAC04694(uint64_t a1)
{
  v3 = *(type metadata accessor for CUIKMonthView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CAC013E0(a1, v4);
}

uint64_t sub_1CAC0473C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37[-v9];
  v11 = type metadata accessor for WeekDayViewModel(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4647C8, &qword_1CAD5CF70);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v37[-v16];
  v18 = &v37[*(v15 + 56) - v16];
  sub_1CAC024DC(a1, &v37[-v16], type metadata accessor for WeekDayViewModel);
  sub_1CAC024DC(a2, v18, type metadata accessor for WeekDayViewModel);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4646A0, &qword_1CAD5CD98);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v17, 1, v19) != 1)
  {
    v53 = v8;
    sub_1CAC024DC(v17, v13, type metadata accessor for WeekDayViewModel);
    v22 = v13[8];
    v51 = v13[9];
    v52 = v22;
    v23 = v13[10];
    v49 = v13[11];
    v50 = v23;
    v24 = v13[12];
    v47 = v13[13];
    v48 = v24;
    v46 = v13[14];
    v25 = *(v19 + 160);
    if (v20(v18, 1, v19) != 1)
    {
      v45 = *v13;
      v26 = *v18;
      v27 = v18[8];
      v43 = v18[9];
      v44 = v27;
      v28 = v18[10];
      v41 = v18[11];
      v42 = v28;
      v29 = v18[12];
      v39 = v18[13];
      v40 = v29;
      v38 = v18[14];
      v30 = *(v5 + 32);
      v30(v10, &v13[v25], v4);
      v31 = &v18[v25];
      v32 = v53;
      v30(v53, v31, v4);
      if (v45 == v26 && v52 == v44 && v51 == v43 && v50 == v42 && v49 == v41 && v48 == v40 && v47 == v39 && v46 == v38)
      {
        v21 = sub_1CAD4C0A4();
        v36 = *(v5 + 8);
        v36(v32, v4);
        v36(v10, v4);
        sub_1CAC04D8C(v17, type metadata accessor for WeekDayViewModel);
        return v21 & 1;
      }

      v33 = v32;
      v34 = *(v5 + 8);
      v34(v33, v4);
      v34(v10, v4);
      sub_1CAC04D8C(v17, type metadata accessor for WeekDayViewModel);
      goto LABEL_17;
    }

    (*(v5 + 8))(&v13[v25], v4);
LABEL_6:
    sub_1CAB21B68(v17, &qword_1EC4647C8, &qword_1CAD5CF70);
LABEL_17:
    v21 = 0;
    return v21 & 1;
  }

  if (v20(v18, 1, v19) != 1)
  {
    goto LABEL_6;
  }

  sub_1CAC04D8C(v17, type metadata accessor for WeekDayViewModel);
  v21 = 1;
  return v21 & 1;
}

unint64_t sub_1CAC04BF0()
{
  result = qword_1EC462078;
  if (!qword_1EC462078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464588, &qword_1CAD5CC78);
    v1 = MEMORY[0x1E6981800];
    sub_1CAB23B0C(&qword_1EC461FE8, &qword_1EC464580, &qword_1CAD5CC70, MEMORY[0x1E6981800]);
    sub_1CAB23B0C(&qword_1EC461FF0, &qword_1EC464570, &qword_1CAD5CC60, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462078);
  }

  return result;
}

unint64_t sub_1CAC04CD0()
{
  result = qword_1EC4621C8;
  if (!qword_1EC4621C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4645A8, &qword_1CAD5CC98);
    sub_1CAC038CC(&qword_1EC4622C0, type metadata accessor for MonthTextStyleModifier, &unk_1CAD5C9D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621C8);
  }

  return result;
}

uint64_t sub_1CAC04D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CAC04DEC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CUIKWeekRow(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1CAD4C7A4() - 8);
  v9 = *(v2 + 16);
  v10 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1CABFBD78(a1, v9, v2 + v6, v10, a2);
}

uint64_t sub_1CAC04ED4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1CAC04604();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CAC04F44()
{
  result = qword_1EC4621F0;
  if (!qword_1EC4621F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464628, &qword_1CAD5CD18);
    sub_1CAC04FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621F0);
  }

  return result;
}

unint64_t sub_1CAC04FD0()
{
  result = qword_1EC462098;
  if (!qword_1EC462098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464630, &qword_1CAD5CD20);
    sub_1CAC0505C();
    sub_1CAC051A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462098);
  }

  return result;
}

unint64_t sub_1CAC0505C()
{
  result = qword_1EC462130;
  if (!qword_1EC462130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464638, &qword_1CAD5CD28);
    sub_1CAC05114();
    sub_1CAB23B0C(&qword_1EC4620B0, &qword_1EC464648, &qword_1CAD5CD38, MEMORY[0x1E697F938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462130);
  }

  return result;
}

unint64_t sub_1CAC05114()
{
  result = qword_1EC462160;
  if (!qword_1EC462160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464640, &qword_1CAD5CD30);
    sub_1CAC02468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462160);
  }

  return result;
}

unint64_t sub_1CAC051A0()
{
  result = qword_1EC462088;
  if (!qword_1EC462088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464650, &qword_1CAD5CD40);
    sub_1CAC0522C();
    sub_1CAC056A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462088);
  }

  return result;
}

unint64_t sub_1CAC0522C()
{
  result = qword_1EC4620D8;
  if (!qword_1EC4620D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464658, &qword_1CAD5CD48);
    sub_1CAC052E4();
    sub_1CAB23B0C(&qword_1EC4620C0, &qword_1EC464688, &qword_1CAD5CD80, MEMORY[0x1E697EC10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4620D8);
  }

  return result;
}

unint64_t sub_1CAC052E4()
{
  result = qword_1EC4620F0;
  if (!qword_1EC4620F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464660, &qword_1CAD5CD50);
    sub_1CAC053C8(&qword_1EC462100, &qword_1EC464668, &qword_1CAD5CD58, sub_1CAC0547C);
    sub_1CAB23B0C(&unk_1EC462040, &qword_1EC463760, qword_1CAD647B0, MEMORY[0x1E6980488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4620F0);
  }

  return result;
}

uint64_t sub_1CAC053C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1CAC038CC(&qword_1EC462018, MEMORY[0x1E697CBF0], MEMORY[0x1E697CBE0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CAC0547C()
{
  result = qword_1EC462118;
  if (!qword_1EC462118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464670, &qword_1CAD5CD60);
    sub_1CAC05534();
    sub_1CAB23B0C(&qword_1EC462020, &qword_1EC4644A0, &qword_1CAD5CB40, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462118);
  }

  return result;
}

unint64_t sub_1CAC05534()
{
  result = qword_1EC462148;
  if (!qword_1EC462148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464678, &qword_1CAD5CD68);
    sub_1CAC055C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462148);
  }

  return result;
}

unint64_t sub_1CAC055C0()
{
  result = qword_1EC4621B0;
  if (!qword_1EC4621B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464680, &unk_1CAD5CD70);
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC462030, &qword_1EC464008, &unk_1CAD5CB30, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621B0);
  }

  return result;
}

unint64_t sub_1CAC056A8()
{
  result = qword_1EC4620E0;
  if (!qword_1EC4620E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464690, &qword_1CAD5CD88);
    sub_1CAC052E4();
    sub_1CAB23B0C(&qword_1EC4620A8, &qword_1EC464698, &qword_1CAD5CD90, MEMORY[0x1E697F938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4620E0);
  }

  return result;
}

uint64_t sub_1CAC05780()
{
  v1 = *(type metadata accessor for CUIKWeekRow(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for WeekDayViewModel(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1CABFC09C(v0 + v2, v5);
}

unint64_t sub_1CAC0584C()
{
  result = qword_1EC4621E0;
  if (!qword_1EC4621E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4646C8, &unk_1CAD5CDC0);
    sub_1CAB23B0C(&qword_1EC462240, &qword_1EC4646D0, &qword_1CAD6ADD0, MEMORY[0x1E697DB70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621E0);
  }

  return result;
}

uint64_t sub_1CAC05904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeekDayViewModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC05978@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CUIKWeekLabelRow(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1CAD4C7A4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1CABF8560(a1, v2 + v6, v9, a2);
}

unint64_t sub_1CAC05A5C()
{
  result = qword_1EC4620E8;
  if (!qword_1EC4620E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464768, &qword_1CAD5CE48);
    sub_1CAC05AE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4620E8);
  }

  return result;
}

unint64_t sub_1CAC05AE8()
{
  result = qword_1EC4620F8;
  if (!qword_1EC4620F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464770, &qword_1CAD5CE50);
    sub_1CAC05BA0();
    sub_1CAB23B0C(&qword_1EC462020, &qword_1EC4644A0, &qword_1CAD5CB40, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4620F8);
  }

  return result;
}

unint64_t sub_1CAC05BA0()
{
  result = qword_1EC462110;
  if (!qword_1EC462110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464778, &qword_1CAD5CE58);
    sub_1CAC05C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462110);
  }

  return result;
}

unint64_t sub_1CAC05C2C()
{
  result = qword_1EC462140;
  if (!qword_1EC462140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464780, &qword_1CAD5CE60);
    sub_1CAC05CE4();
    sub_1CAB23B0C(&qword_1EC462030, &qword_1EC464008, &unk_1CAD5CB30, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462140);
  }

  return result;
}

unint64_t sub_1CAC05CE4()
{
  result = qword_1EC4621A8;
  if (!qword_1EC4621A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464788, &qword_1CAD5CE68);
    swift_getOpaqueTypeConformance2();
    sub_1CAB23B0C(&qword_1EC462028, &qword_1EC4644E0, &qword_1CAD5CBB0, MEMORY[0x1E6980A20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4621A8);
  }

  return result;
}

unint64_t sub_1CAC05DCC()
{
  result = qword_1EC462390;
  if (!qword_1EC462390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462390);
  }

  return result;
}

uint64_t sub_1CAC05E20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F706D6F43796164 && a2 == 0xEC000000746E656ELL;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656B6565576E69 && a2 == 0xE900000000000064 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961646F547369 && a2 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463656C65537369 && a2 == 0xEA00000000006465 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x686563616C507369 && a2 == 0xED00007265646C6FLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD74D90 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CAD74DB0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x747865546D6964 && a2 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1CAC06154(uint64_t a1)
{
  sub_1CAC061AC(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1CAC061AC(uint64_t a1)
{
  if (!qword_1EC461F10)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1CAD4C0F4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC461F10);
    }
  }
}

unint64_t sub_1CAC06324()
{
  result = qword_1EC4647A0;
  if (!qword_1EC4647A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4644B0, &qword_1CAD5CB50);
    sub_1CAB23B0C(&qword_1EC4647A8, &qword_1EC4644A8, &qword_1CAD5CB48, MEMORY[0x1E6981808]);
    sub_1CAB23B0C(&qword_1EC462060, &qword_1EC4644F0, &qword_1CAD5CBC0, MEMORY[0x1E697FDC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4647A0);
  }

  return result;
}

unint64_t sub_1CAC06450()
{
  result = qword_1EC462368;
  if (!qword_1EC462368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462368);
  }

  return result;
}

unint64_t sub_1CAC064A4()
{
  result = qword_1EC462338;
  if (!qword_1EC462338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462338);
  }

  return result;
}

unint64_t sub_1CAC064F8()
{
  result = qword_1EC462350;
  if (!qword_1EC462350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462350);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeekDayViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WeekDayViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CAC066C0()
{
  result = qword_1EC4647D0;
  if (!qword_1EC4647D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4647D0);
  }

  return result;
}

unint64_t sub_1CAC06718()
{
  result = qword_1EC4647D8;
  if (!qword_1EC4647D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4647D8);
  }

  return result;
}

unint64_t sub_1CAC06770()
{
  result = qword_1EC462340;
  if (!qword_1EC462340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462340);
  }

  return result;
}

unint64_t sub_1CAC067C8()
{
  result = qword_1EC462348;
  if (!qword_1EC462348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462348);
  }

  return result;
}

unint64_t sub_1CAC06820()
{
  result = qword_1EC462328;
  if (!qword_1EC462328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462328);
  }

  return result;
}

unint64_t sub_1CAC06878()
{
  result = qword_1EC462330;
  if (!qword_1EC462330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462330);
  }

  return result;
}

unint64_t sub_1CAC068D0()
{
  result = qword_1EC462358;
  if (!qword_1EC462358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462358);
  }

  return result;
}

unint64_t sub_1CAC06928()
{
  result = qword_1EC462360;
  if (!qword_1EC462360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC462360);
  }

  return result;
}

void sub_1CAC06998(void *a1)
{
  v17 = *(v1 + 24);
  LOBYTE(v18) = *(v1 + 40);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4631E0, &qword_1CAD595D0);
  MEMORY[0x1CCAA6D30](&v16, v3);
  if (v16 == 1)
  {
    sub_1CAC072C8();
    v17 = *v1;
    v18 = *(v1 + 2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464870, &qword_1CAD5D3E0);
    MEMORY[0x1CCAA6D30](&v16, v4);
    v5 = sub_1CAD4E464();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464878, &qword_1CAD5D3E8);
    sub_1CAD4D174();
    v6 = v17;
    v7 = [a1 view];
    if (v7)
    {
      v8 = v7;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC8A0]);
      v10 = v6;
      v11 = [v9 init];
      [v11 setSelectedColor_];
      [v11 setSupportsAlpha_];
      [v11 setDelegate_];
      v12 = v11;
      [v12 setModalPresentationStyle_];
      v13 = [v12 popoverPresentationController];
      if (v13)
      {
        v14 = v13;
        [v13 setSourceView_];
      }

      v15 = [v12 popoverPresentationController];

      if (v15)
      {
        [v15 setPermittedArrowDirections_];
      }

      [a1 presentViewController:v12 animated:1 completion:0];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1CAC06E58()
{
  v0 = objc_allocWithZone(type metadata accessor for ColorPickerViewController());

  return [v0 init];
}

void *sub_1CAC06E98@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + 40);
  v9 = type metadata accessor for ColorPickerView.ColorPickerCoordinator();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCV13CalendarUIKit15ColorPickerView22ColorPickerCoordinator_colorPickerView];
  *v11 = v3;
  *(v11 + 1) = v4;
  *(v11 + 2) = v5;
  *(v11 + 3) = v6;
  *(v11 + 4) = v7;
  v11[40] = v8;
  v13.receiver = v10;
  v13.super_class = v9;

  result = objc_msgSendSuper2(&v13, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1CAC06F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAC07314();

  return MEMORY[0x1EEDDB780](a1, a2, a3, v6);
}

uint64_t sub_1CAC06FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CAC07314();

  return MEMORY[0x1EEDDB738](a1, a2, a3, v6);
}

void sub_1CAC07058(uint64_t a1)
{
  sub_1CAC07314();
  sub_1CAD4D144();
  __break(1u);
}

id sub_1CAC07150(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CAC071C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1CAC07208(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CAC07274()
{
  result = qword_1EC464858;
  if (!qword_1EC464858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464858);
  }

  return result;
}

unint64_t sub_1CAC072C8()
{
  result = qword_1EC464868;
  if (!qword_1EC464868)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC464868);
  }

  return result;
}

unint64_t sub_1CAC07314()
{
  result = qword_1EC464880;
  if (!qword_1EC464880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC464880);
  }

  return result;
}

uint64_t type metadata accessor for CustomRepeatEditor(uint64_t a1)
{
  result = qword_1EC464890;
  if (!qword_1EC464890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CAC073DC(uint64_t a1)
{
  sub_1CAC074C0(319, &qword_1EC463100, type metadata accessor for RepeatViewModel, MEMORY[0x1E6981A98]);
  if (v1 <= 0x3F)
  {
    sub_1CAC074C0(319, &qword_1EC463A50, MEMORY[0x1E697BF88], MEMORY[0x1E697DCC8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CAC074C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1CAC07540@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CAD4CC04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4632B0, &qword_1CAD5C410);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CustomRepeatEditor(0);
  sub_1CAB23A9C(v1 + *(v10 + 20), v9, &qword_1EC4632B0, &qword_1CAD5C410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1CAD4C784();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1CAD4E3F4();
    v13 = sub_1CAD4D184();
    sub_1CAD4C534();

    sub_1CAD4CBF4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1CAC07748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_1CAD4CC34();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4648F8, &qword_1CAD5D4B0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4648E8, &qword_1CAD5D4A8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4648D8, &qword_1CAD5D4A0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v49 - v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4648C0, &qword_1CAD5D498);
  MEMORY[0x1EEE9AC00](v51);
  v16 = &v49 - v15;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4648B8, &qword_1CAD5D490);
  v53 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &v49 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4648A8, &qword_1CAD5D480);
  v57 = *(v18 - 8);
  v58 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v49 - v19;
  v63 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464938, &qword_1CAD5D4D8);
  sub_1CAB23B0C(&qword_1EC464940, &qword_1EC464938, &qword_1CAD5D4D8, MEMORY[0x1E6981F50]);
  sub_1CAD4D374();
  *&v8[*(v6 + 44)] = sub_1CAD4CFC4();
  v20 = sub_1CAD4DCD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0, &unk_1CAD5D400);
  sub_1CAD4DBF4();
  v21 = v64;
  swift_getKeyPath(aP);
  v64 = v21;
  sub_1CAC0FD7C(&qword_1EC463198, type metadata accessor for RepeatViewModel, &unk_1CAD63330);
  sub_1CAD4C424();

  v22 = v21 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v23 = *(v22 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 20));

  if (v23 >= 4)
  {
    LOBYTE(v23) = 0;
  }

  v24 = v8;
  v25 = v54;
  sub_1CABA62E4(v24, v54, &qword_1EC4648F8, &qword_1CAD5D4B0);
  v26 = v25 + *(v10 + 44);
  v27 = v25;
  *v26 = v20;
  *(v26 + 8) = v23;
  v28 = sub_1CAD4DCD4();
  sub_1CAD4DBF4();
  v29 = sub_1CAC89054();

  v30 = v50;
  sub_1CABA62E4(v27, v50, &qword_1EC4648E8, &qword_1CAD5D4A8);
  v31 = v30 + *(v13 + 44);
  *v31 = v28;
  *(v31 + 8) = v29;
  v32 = sub_1CAD4DCD4();
  v54 = a1;
  v33 = v51;
  sub_1CAD4DBF4();
  v34 = sub_1CAC87E9C();

  sub_1CABA62E4(v30, v16, &qword_1EC4648D8, &qword_1CAD5D4A0);
  v35 = &v16[*(v33 + 36)];
  *v35 = v32;
  v35[8] = v34;
  if (qword_1EC462DD0 != -1)
  {
    swift_once();
  }

  v64 = qword_1EC47DDD8;
  v65 = unk_1EC47DDE0;
  v36 = sub_1CAC0F1D4();
  v37 = sub_1CABA6054();
  v38 = MEMORY[0x1E69E6158];
  v39 = v52;
  sub_1CAD4D5D4();
  sub_1CAB21B68(v16, &qword_1EC4648C0, &qword_1CAD5D498);
  v41 = v59;
  v40 = v60;
  v42 = v61;
  (*(v60 + 104))(v59, *MEMORY[0x1E697C430], v61);
  v64 = v33;
  v65 = v38;
  v66 = v36;
  v67 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v55;
  v45 = v56;
  sub_1CAD4D694();
  (*(v40 + 8))(v41, v42);
  v46 = (*(v53 + 8))(v39, v45);
  MEMORY[0x1EEE9AC00](v46);
  *(&v49 - 2) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4648B0, &qword_1CAD5D488);
  v64 = v45;
  v65 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1CAB23B0C(&qword_1EC464930, &qword_1EC4648B0, &qword_1CAD5D488, MEMORY[0x1E697C5E8]);
  v47 = v58;
  sub_1CAD4D734();
  return (*(v57 + 8))(v44, v47);
}

uint64_t sub_1CAC07F00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v197 = a2;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464950, &qword_1CAD5D520);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v175 = &v156 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464958, &qword_1CAD5D528);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v196 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v211 = &v156 - v7;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464960, &qword_1CAD5D530);
  v191 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v174 = &v156 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464968, &qword_1CAD5D538);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v173 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v199 = &v156 - v12;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464970, &qword_1CAD5D540);
  v172 = *(v190 - 8);
  v13 = MEMORY[0x1EEE9AC00](v190);
  v189 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v204 = &v156 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464978, &qword_1CAD5D548);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v193 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v212 = &v156 - v19;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464980, &qword_1CAD5D550);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v170 = &v156 - v20;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464988, &qword_1CAD5D558);
  v171 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v157 = (&v156 - v21);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464990, &qword_1CAD5D560);
  MEMORY[0x1EEE9AC00](v166);
  v169 = &v156 - v22;
  v179 = sub_1CAD4CF74();
  MEMORY[0x1EEE9AC00](v179);
  v180 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464998, &qword_1CAD5D568);
  v181 = *(v203 - 8);
  v24 = MEMORY[0x1EEE9AC00](v203);
  v202 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v200 = &v156 - v26;
  v178 = sub_1CAD4DC44();
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v176 = (&v156 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649A0, &qword_1CAD5D570);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v168 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v167 = &v156 - v31;
  *&v198 = sub_1CAD4CEC4();
  v163 = *(v198 - 8);
  MEMORY[0x1EEE9AC00](v198);
  v162 = &v156 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0, &unk_1CAD5D400);
  v186 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v185 = &v156 - v34;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649A8, &qword_1CAD5D578);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v158 = &v156 - v35;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649B0, &qword_1CAD5D580);
  v164 = *(v165 - 8);
  v36 = MEMORY[0x1EEE9AC00](v165);
  v161 = &v156 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v182 = &v156 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649B8, &qword_1CAD5D588);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v210 = &v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v215 = &v156 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649C0, &qword_1CAD5D590);
  v44 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v156 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649C8, &qword_1CAD5D598);
  v48 = MEMORY[0x1EEE9AC00](v47 - 8);
  v213 = &v156 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v156 - v50;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649D0, &qword_1CAD5D5A0);
  v188 = *(v209 - 8);
  v52 = MEMORY[0x1EEE9AC00](v209);
  v208 = &v156 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v156 - v54;
  v216 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649D8, &qword_1CAD5D5A8);
  sub_1CAB23B0C(&qword_1EC4649E0, &qword_1EC4649D8, &qword_1CAD5D5A8, MEMORY[0x1E6981F50]);
  v206 = v55;
  sub_1CAD4DBC4();
  v205 = v33;
  v56 = a1;
  sub_1CAD4DBF4();
  v57 = v226;
  swift_getKeyPath(aP);
  v226 = v57;
  v58 = sub_1CAC0FD7C(&qword_1EC463198, type metadata accessor for RepeatViewModel, &unk_1CAD63330);
  sub_1CAD4C424();

  v59 = &qword_1EC465000;
  v60 = v57 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v61 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v62 = *(v60 + *(v61 + 20));

  if (v62 == 1)
  {
    MEMORY[0x1EEE9AC00](v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464A60, &qword_1CAD5D640);
    sub_1CAC0F7E8();
    sub_1CAD4DBC4();
    v59 = &qword_1EC465000;
    (*(v44 + 32))(v51, v46, v43);
    v64 = 0;
  }

  else
  {
    v64 = 1;
  }

  v65 = *(v44 + 56);
  v66 = 1;
  v207 = v51;
  v65(v51, v64, 1, v43);
  v67 = v205;
  v214 = v56;
  sub_1CAD4DBF4();
  v68 = v225;
  swift_getKeyPath(aP);
  v225 = v68;
  *&v201 = v58;
  sub_1CAD4C424();

  v69 = v68 + v59[502];
  swift_beginAccess();
  v70 = *(v69 + *(v61 + 20));

  if (v70 == 2)
  {
    if (qword_1EC462D60 != -1)
    {
      swift_once();
    }

    v220 = qword_1EC47DCF8;
    v221 = unk_1EC47DD00;

    v71 = v185;
    sub_1CAD4DC04();
    swift_getKeyPath(a8);
    sub_1CAD4DC24();

    (*(v186 + 8))(v71, v67);
    v217 = v222;
    v218 = v223;
    v219 = v224;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464A30, &qword_1CAD5D630);
    sub_1CAB23B0C(&qword_1EC464A38, &qword_1EC464A30, &qword_1CAD5D630, MEMORY[0x1E6981F50]);
    sub_1CABA6054();
    v72 = v158;
    sub_1CAD4DA44();
    v73 = v162;
    sub_1CAD4CEB4();
    sub_1CAB23B0C(&qword_1EC464A40, &qword_1EC4649A8, &qword_1CAD5D578, MEMORY[0x1E697D688]);
    v74 = v160;
    v75 = v198;
    sub_1CAD4D504();
    (*(v163 + 8))(v73, v75);
    (*(v159 + 8))(v72, v74);
    sub_1CAD4DBF4();
    v76 = v222;
    swift_getKeyPath(aP);
    v222 = v76;
    sub_1CAD4C424();

    v77 = v76 + v59[502];
    swift_beginAccess();
    v78 = *(v77 + *(v61 + 36));
    if (v78)
    {
    }

    else
    {
      v78 = MEMORY[0x1E69E7CC0];
    }

    v163 = v61;

    v79 = *(v78 + 16);

    if (v79)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649F0, &qword_1CAD5D5B8);
      sub_1CAD4DC54();
      *(swift_allocObject() + 16) = xmmword_1CAD5B6B0;
      v198 = xmmword_1CAD5D3F0;
      v80 = v176;
      *v176 = xmmword_1CAD5D3F0;
      v81 = *MEMORY[0x1E697D740];
      v82 = *(v177 + 104);
      v83 = v178;
      v82(v80, v81, v178);
      sub_1CAD4DC64();
      *v80 = v198;
      v82(v80, v81, v83);
      sub_1CAD4DC64();
      *v80 = v198;
      v82(v80, v81, v83);
      sub_1CAD4DC64();
      *v80 = v198;
      v82(v80, v81, v83);
      sub_1CAD4DC64();
      *v80 = v198;
      v82(v80, v81, v83);
      sub_1CAD4DC64();
      *v80 = v198;
      v82(v80, v81, v83);
      sub_1CAD4DC64();
      *v80 = v198;
      v82(v80, v81, v83);
      v84 = sub_1CAD4DC64();
      MEMORY[0x1EEE9AC00](v84);
      sub_1CAD4CD94();
      LODWORD(v222) = 0;
      sub_1CAC0FD7C(&qword_1EC4649F8, MEMORY[0x1E697FCA8], MEMORY[0x1E697FCD0]);
      sub_1CAD4EB84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464A00, &qword_1CAD5D5C0);
      sub_1CAC0F65C();
      v85 = v200;
      sub_1CAD4DD04();
      v86 = v181;
      v87 = v203;
      (*(v181 + 16))(v169, v85, v203);
      swift_storeEnumTagMultiPayload();
      sub_1CAB23B0C(&qword_1EC464A48, &qword_1EC464998, &qword_1CAD5D568, MEMORY[0x1E697D7B0]);
      sub_1CAB23B0C(&qword_1EC464A50, &qword_1EC464988, &qword_1CAD5D558, MEMORY[0x1E6981800]);
      v88 = v167;
      sub_1CAD4CE24();
      (*(v86 + 8))(v85, v87);
    }

    else
    {
      v89 = sub_1CAD4CC94();
      v90 = v157;
      *v157 = v89;
      *(v90 + 8) = 0;
      *(v90 + 16) = 1;
      v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464A28, &qword_1CAD5D600);
      sub_1CAC0D7BC(v214, sub_1CAC0C4D4, (v90 + *(v91 + 44)));
      sub_1CAB23A9C(v90, v169, &qword_1EC464988, &qword_1CAD5D558);
      swift_storeEnumTagMultiPayload();
      sub_1CAB23B0C(&qword_1EC464A48, &qword_1EC464998, &qword_1CAD5D568, MEMORY[0x1E697D7B0]);
      sub_1CAB23B0C(&qword_1EC464A50, &qword_1EC464988, &qword_1CAD5D558, MEMORY[0x1E6981800]);
      v88 = v167;
      sub_1CAD4CE24();
      sub_1CAB21B68(v90, &qword_1EC464988, &qword_1CAD5D558);
    }

    v92 = v164;
    v93 = *(v164 + 16);
    v94 = v161;
    v95 = v182;
    v96 = v165;
    v93(v161, v182, v165);
    v97 = v168;
    sub_1CAB23A9C(v88, v168, &qword_1EC4649A0, &qword_1CAD5D570);
    v98 = v170;
    v93(v170, v94, v96);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464A58, &qword_1CAD5D638);
    sub_1CAB23A9C(v97, v98 + *(v99 + 48), &qword_1EC4649A0, &qword_1CAD5D570);
    sub_1CAB21B68(v88, &qword_1EC4649A0, &qword_1CAD5D570);
    v100 = *(v92 + 8);
    v100(v95, v96);
    sub_1CAB21B68(v97, &qword_1EC4649A0, &qword_1CAD5D570);
    v100(v94, v96);
    sub_1CABA62E4(v98, v215, &qword_1EC464980, &qword_1CAD5D550);
    v66 = 0;
    v67 = v205;
    v59 = &qword_1EC465000;
    v61 = v163;
  }

  v101 = 1;
  (*(v183 + 56))(v215, v66, 1, v184);
  sub_1CAD4DBF4();
  v102 = v222;
  swift_getKeyPath(aP);
  v222 = v102;
  sub_1CAD4C424();

  v103 = v102 + v59[502];
  swift_beginAccess();
  v104 = *(v103 + *(v61 + 20));

  if (v104 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649F0, &qword_1CAD5D5B8);
    sub_1CAD4DC54();
    *(swift_allocObject() + 16) = xmmword_1CAD5B6C0;
    v201 = xmmword_1CAD5D3F0;
    v105 = v176;
    *v176 = xmmword_1CAD5D3F0;
    v106 = *MEMORY[0x1E697D740];
    v107 = *(v177 + 104);
    v108 = v67;
    v109 = v178;
    v107(v105, v106, v178);
    sub_1CAD4DC64();
    *v105 = v201;
    v107(v105, v106, v109);
    sub_1CAD4DC64();
    *v105 = v201;
    v107(v105, v106, v109);
    sub_1CAD4DC64();
    *v105 = v201;
    v107(v105, v106, v109);
    v110 = v214;
    v111 = sub_1CAD4DC64();
    MEMORY[0x1EEE9AC00](v111);
    sub_1CAD4CD94();
    LODWORD(v220) = 0;
    sub_1CAC0FD7C(&qword_1EC4649F8, MEMORY[0x1E697FCA8], MEMORY[0x1E697FCD0]);
    sub_1CAD4EB84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464A00, &qword_1CAD5D5C0);
    sub_1CAC0F65C();
    sub_1CAD4DD04();
    v112 = v185;
    sub_1CAD4DC04();
    swift_getKeyPath(aH_1);
    sub_1CAD4DC24();

    (*(v186 + 8))(v112, v108);
    sub_1CAD4DA64();
    sub_1CAD4DBF4();
    v113 = sub_1CAC89054();
    v114 = 1;

    if (v113)
    {
      v115 = sub_1CAD4CC94();
      v116 = v157;
      *v157 = v115;
      *(v116 + 8) = 0;
      *(v116 + 16) = 1;
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464A28, &qword_1CAD5D600);
      sub_1CAC0D7BC(v110, sub_1CAC0C4D4, (v116 + *(v117 + 44)));
      sub_1CABA62E4(v116, v199, &qword_1EC464988, &qword_1CAD5D558);
      v114 = 0;
    }

    v118 = v199;
    (*(v171 + 56))(v199, v114, 1, v187);
    v119 = v181;
    v120 = *(v181 + 16);
    v121 = v200;
    v120(v200, v202, v203);
    v122 = v172;
    v123 = *(v172 + 16);
    v124 = v189;
    v123(v189, v204, v190);
    v125 = v173;
    sub_1CAB23A9C(v118, v173, &qword_1EC464968, &qword_1CAD5D538);
    v126 = v174;
    v127 = v121;
    v128 = v203;
    v120(v174, v127, v203);
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464A20, &qword_1CAD5D5F8);
    v130 = v124;
    v131 = v190;
    v123((v126 + *(v129 + 48)), v130, v190);
    sub_1CAB23A9C(v125, v126 + *(v129 + 64), &qword_1EC464968, &qword_1CAD5D538);
    sub_1CAB21B68(v199, &qword_1EC464968, &qword_1CAD5D538);
    v132 = *(v122 + 8);
    v132(v204, v131);
    v133 = *(v119 + 8);
    v133(v202, v128);
    sub_1CAB21B68(v125, &qword_1EC464968, &qword_1CAD5D538);
    v132(v189, v131);
    v133(v200, v128);
    sub_1CABA62E4(v126, v212, &qword_1EC464960, &qword_1CAD5D530);
    v101 = 0;
  }

  v134 = 1;
  (*(v191 + 56))(v212, v101, 1, v192);
  sub_1CAD4DBF4();
  sub_1CAC83DB0();
  v136 = v135;

  if (v136)
  {
    MEMORY[0x1EEE9AC00](v137);
    v138 = v175;
    sub_1CAD4DBC4();

    v139 = v194;
    v140 = v211;
    v141 = v138;
    v142 = v195;
    (*(v194 + 32))(v211, v141, v195);
    v134 = 0;
  }

  else
  {
    v140 = v211;
    v142 = v195;
    v139 = v194;
  }

  (*(v139 + 56))(v140, v134, 1, v142);
  v143 = v188;
  v144 = *(v188 + 16);
  v145 = v208;
  v146 = v209;
  v144(v208, v206, v209);
  sub_1CAB23A9C(v207, v213, &qword_1EC4649C8, &qword_1CAD5D598);
  v147 = v210;
  sub_1CAB23A9C(v215, v210, &qword_1EC4649B8, &qword_1CAD5D588);
  v148 = v212;
  v149 = v193;
  sub_1CAB23A9C(v212, v193, &qword_1EC464978, &qword_1CAD5D548);
  v150 = v196;
  sub_1CAB23A9C(v140, v196, &qword_1EC464958, &qword_1CAD5D528);
  v151 = v197;
  v144(v197, v145, v146);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4649E8, &qword_1CAD5D5B0);
  sub_1CAB23A9C(v213, &v151[v152[12]], &qword_1EC4649C8, &qword_1CAD5D598);
  sub_1CAB23A9C(v147, &v151[v152[16]], &qword_1EC4649B8, &qword_1CAD5D588);
  sub_1CAB23A9C(v149, &v151[v152[20]], &qword_1EC464978, &qword_1CAD5D548);
  sub_1CAB23A9C(v150, &v151[v152[24]], &qword_1EC464958, &qword_1CAD5D528);
  sub_1CAB21B68(v211, &qword_1EC464958, &qword_1CAD5D528);
  sub_1CAB21B68(v148, &qword_1EC464978, &qword_1CAD5D548);
  sub_1CAB21B68(v215, &qword_1EC4649B8, &qword_1CAD5D588);
  sub_1CAB21B68(v207, &qword_1EC4649C8, &qword_1CAD5D598);
  v153 = *(v143 + 8);
  v154 = v209;
  v153(v206, v209);
  sub_1CAB21B68(v150, &qword_1EC464958, &qword_1CAD5D528);
  sub_1CAB21B68(v149, &qword_1EC464978, &qword_1CAD5D548);
  sub_1CAB21B68(v210, &qword_1EC4649B8, &qword_1CAD5D588);
  sub_1CAB21B68(v213, &qword_1EC4649C8, &qword_1CAD5D598);
  return (v153)(v208, v154);
}

uint64_t sub_1CAC0A20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0, &unk_1CAD5D400);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - v6;
  if (qword_1EC462D30 != -1)
  {
    swift_once();
  }

  v8 = unk_1EC47DCA0;
  v33 = qword_1EC47DC98;

  v34 = a1;
  sub_1CAD4DC04();
  swift_getKeyPath(aH_2);
  sub_1CAD4DC24();

  (*(v5 + 8))(v7, v4);
  v9 = v52;
  v10 = v53[0];
  v11 = qword_1EC465F80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C08, &qword_1CAD5D858);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 32) = v10;
  *(v12 + 40) = v33;
  *(v12 + 48) = v8;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 0;
  *(v12 + 80) = v11;
  *(v12 + 88) = 4;

  v13 = sub_1CAD4CC94();
  v35[0] = 1;
  sub_1CAC0A674(&v52);
  v45 = *&v53[112];
  v46 = *&v53[128];
  v41 = *&v53[48];
  v42 = *&v53[64];
  v43 = *&v53[80];
  v44 = *&v53[96];
  v37 = v52;
  v38 = *v53;
  v39 = *&v53[16];
  v40 = *&v53[32];
  v48[8] = *&v53[112];
  v48[9] = *&v53[128];
  v48[4] = *&v53[48];
  v48[5] = *&v53[64];
  v48[6] = *&v53[80];
  v48[7] = *&v53[96];
  v48[0] = v52;
  v48[1] = *v53;
  v47 = v53[144];
  v49 = v53[144];
  v48[2] = *&v53[16];
  v48[3] = *&v53[32];
  sub_1CAB23A9C(&v37, &v50, &qword_1EC464C10, &qword_1CAD5D860);
  sub_1CAB21B68(v48, &qword_1EC464C10, &qword_1CAD5D860);
  *&v36[119] = v44;
  *&v36[135] = v45;
  *&v36[151] = v46;
  v36[167] = v47;
  *&v36[55] = v40;
  *&v36[71] = v41;
  *&v36[87] = v42;
  *&v36[103] = v43;
  *&v36[7] = v37;
  *&v36[23] = v38;
  *&v36[39] = v39;
  v14 = v35[0];
  v50 = v13;
  LOBYTE(v51[0]) = v35[0];
  v15 = *&v36[112];
  *(&v51[7] + 1) = *&v36[112];
  v16 = *&v36[128];
  *(&v51[8] + 1) = *&v36[128];
  v17 = *&v36[144];
  *(&v51[9] + 1) = *&v36[144];
  v18 = *&v36[160];
  *(&v51[10] + 1) = *&v36[160];
  v19 = *&v36[48];
  *(&v51[3] + 1) = *&v36[48];
  v20 = *&v36[64];
  *(&v51[4] + 1) = *&v36[64];
  v21 = *&v36[80];
  *(&v51[5] + 1) = *&v36[80];
  v22 = *&v36[96];
  *(&v51[6] + 1) = *&v36[96];
  v23 = *v36;
  *(v51 + 1) = *v36;
  v24 = *&v36[16];
  *(&v51[1] + 1) = *&v36[16];
  v25 = *&v36[32];
  *(&v51[2] + 1) = *&v36[32];
  v26 = v51[8];
  *(a2 + 136) = v51[7];
  *(a2 + 152) = v26;
  *(a2 + 168) = v51[9];
  *(a2 + 177) = *(&v51[9] + 9);
  v27 = v51[4];
  *(a2 + 72) = v51[3];
  *(a2 + 88) = v27;
  v28 = v51[6];
  *(a2 + 104) = v51[5];
  *(a2 + 120) = v28;
  v29 = v51[0];
  *(a2 + 8) = v50;
  *(a2 + 24) = v29;
  v30 = v51[2];
  *(a2 + 40) = v51[1];
  *(a2 + 56) = v30;
  *&v53[113] = v15;
  *&v53[129] = v16;
  *&v53[145] = v17;
  *&v53[49] = v19;
  *&v53[65] = v20;
  *&v53[81] = v21;
  *&v53[97] = v22;
  *&v53[1] = v23;
  *&v53[17] = v24;
  *a2 = v12;
  v52 = v13;
  v53[0] = v14;
  v54 = v18;
  *&v53[33] = v25;

  sub_1CAB23A9C(&v50, v35, &qword_1EC464C18, &qword_1CAD5D868);
  sub_1CAB21B68(&v52, &qword_1EC464C18, &qword_1CAD5D868);
}

uint64_t sub_1CAC0A674@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0, &unk_1CAD5D400);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - v4;
  if (qword_1EC462D38 != -1)
  {
    swift_once();
  }

  v66 = qword_1EC47DCA8;
  v67 = unk_1EC47DCB0;
  sub_1CABA6054();

  v6 = sub_1CAD4D444();
  v51 = v7;
  v52 = v6;
  v47 = v8;
  v10 = v9;
  sub_1CAD4DC04();
  swift_getKeyPath(byte_1CAD5D870);
  sub_1CAD4DC24();

  (*(v3 + 8))(v5, v2);
  v11 = v79;
  v48 = v81;
  v49 = v80;
  sub_1CAD4DBF4();
  v12 = v66;
  swift_getKeyPath(aP);
  v66 = v12;
  v46 = sub_1CAC0FD7C(&qword_1EC463198, type metadata accessor for RepeatViewModel, &unk_1CAD63330);
  sub_1CAD4C424();

  v13 = v12 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v14 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v15 = *(v13 + *(v14 + 20));
  v53 = v10;
  v50 = v11;
  switch(v15)
  {
    case 3:
      if (qword_1EC462D58 != -1)
      {
        swift_once();
      }

      v16 = &qword_1EC47DCE8;
      break;
    case 2:
      if (qword_1EC462D50 != -1)
      {
        swift_once();
      }

      v16 = &qword_1EC47DCD8;
      break;
    case 1:
      if (qword_1EC462D48 != -1)
      {
        swift_once();
      }

      v16 = &qword_1EC47DCC8;
      break;
    default:
      if (qword_1EC462D40 != -1)
      {
        swift_once();
      }

      v16 = &qword_1EC47DCB8;
      break;
  }

  v18 = *v16;
  v17 = v16[1];

  sub_1CAD4DBF4();
  v19 = *(v66 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_prohibitsYearlyRecurrenceInterval);

  if (v19 == 1)
  {
    sub_1CAD4DBF4();
    v20 = v66;
    swift_getKeyPath(aP);
    v66 = v20;
    sub_1CAD4C424();

    v21 = v20 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
    swift_beginAccess();
    v22 = *(v21 + *(v14 + 20));

    v23 = v22 == 3;
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_1CAD4C654();
  v25 = v47 & 1;
  v57 = v47 & 1;
  v56 = 1;
  v27 = v49;
  v26 = v50;
  *&v58 = v50;
  *(&v58 + 1) = v49;
  v28 = v48;
  *&v59 = v48;
  *(&v59 + 1) = v18;
  *&v60 = v17;
  BYTE8(v60) = v23;
  __asm { FMOV            V0.2D, #8.0 }

  v61 = _Q0;
  v62 = xmmword_1CAD58390;
  *&v63 = 0x4041000000000000;
  *(&v63 + 1) = 9999;
  LOBYTE(v64) = v24 & 1;
  *(&v64 + 1) = v34;
  v65 = v35 & 1;
  *&v55[55] = _Q0;
  *&v55[39] = v60;
  *&v55[23] = v59;
  *&v55[7] = v58;
  v55[119] = v35 & 1;
  *&v55[103] = v64;
  *&v55[87] = v63;
  *&v55[71] = xmmword_1CAD58390;
  v36 = v47 & 1;
  v38 = v51;
  v37 = v52;
  *a1 = v52;
  *(a1 + 8) = v38;
  *(a1 + 16) = v36;
  *(a1 + 24) = v53;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v39 = *v55;
  v40 = *&v55[16];
  v41 = *&v55[32];
  *(a1 + 89) = *&v55[48];
  *(a1 + 73) = v41;
  *(a1 + 57) = v40;
  *(a1 + 41) = v39;
  v42 = *&v55[64];
  v43 = *&v55[80];
  v44 = *&v55[96];
  *(a1 + 153) = *&v55[112];
  *(a1 + 137) = v44;
  *(a1 + 121) = v43;
  *(a1 + 105) = v42;
  v66 = v26;
  v67 = v27;
  v68 = v28;
  v69 = v18;
  v70 = v17;
  v71 = v23;
  v72 = _Q0;
  v73 = xmmword_1CAD58390;
  v74 = 0x4041000000000000;
  v75 = 9999;
  v76 = v24 & 1;
  v77 = v34;
  v78 = v35 & 1;
  sub_1CABA4F48(v37, v38, v25);

  sub_1CABA634C(&v58, &v54);
  sub_1CABA63A8(&v66);
  sub_1CABA6128(v37, v38, v25);
}

uint64_t sub_1CAC0AC04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(aP);
  sub_1CAC0FD7C(&qword_1EC463198, type metadata accessor for RepeatViewModel, &unk_1CAD63330);
  sub_1CAD4C424();

  v4 = v3 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  result = type metadata accessor for EventRecurrenceRuleModelObject(0);
  *a2 = *(v4 + *(result + 24));
  return result;
}

uint64_t sub_1CAC0ACD8(uint64_t a1)
{
  v2 = type metadata accessor for CustomRepeatEditor(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0, &unk_1CAD5D400);
  sub_1CAD4DBF4();
  v5 = sub_1CAC879EC();

  v9[1] = v5;
  swift_getKeyPath(byte_1CAD5D668);
  sub_1CAC0F518(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CustomRepeatEditor);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1CAC10448(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CustomRepeatEditor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464AA0, &qword_1CAD5D680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464A78, &qword_1CAD5D648);
  sub_1CAB23B0C(&qword_1EC464AA8, &qword_1EC464AA0, &qword_1CAD5D680, MEMORY[0x1E69E6338]);
  sub_1CAC0FD7C(&qword_1EC464AB0, type metadata accessor for EKWeekday, &unk_1CAD58C98);
  sub_1CAC0F86C();
  return sub_1CAD4DB64();
}

uint64_t sub_1CAC0AF18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *a3 = sub_1CAD4CC94();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464AB8, &qword_1CAD5D688);
  sub_1CAC0AF9C(a2, v5, (a3 + *(v6 + 44)));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464A78, &qword_1CAD5D648);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1CAC0AF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v33 = a3;
  v5 = type metadata accessor for CustomRepeatEditor(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463258, &qword_1CAD59640);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  sub_1CAC0F518(a1, v8, type metadata accessor for CustomRepeatEditor);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_1CAC10448(v8, v18 + v16, type metadata accessor for CustomRepeatEditor);
  *(v18 + v17) = a2;
  v34 = a2;
  sub_1CAD4D9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0, &unk_1CAD5D400);
  sub_1CAD4DBF4();
  v19 = sub_1CAC87B70();

  v20 = *(v19 + 16);
  v21 = 32;
  while (v20)
  {
    v22 = *(v19 + v21);
    v21 += 8;
    --v20;
    if (v22 == a2)
    {

      v23 = sub_1CAD4D8F4();
      v24 = sub_1CAD4D804();

      goto LABEL_6;
    }
  }

  v23 = 0;
  v24 = 0;
LABEL_6:
  v25 = *(v10 + 16);
  v25(v13, v15, v9);
  v26 = v33;
  v25(v33, v13, v9);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464AC0, &qword_1CAD5D690);
  v28 = &v26[*(v27 + 48)];
  *v28 = 0;
  v28[8] = 1;
  v29 = &v26[*(v27 + 64)];
  sub_1CAC0F9F0(v23, v24);
  sub_1CAC0FA30(v23, v24);
  *v29 = v23;
  v29[1] = v24;
  v30 = *(v10 + 8);
  v30(v15, v9);
  sub_1CAC0FA30(v23, v24);
  return (v30)(v13, v9);
}

uint64_t sub_1CAC0B324(uint64_t a1, int64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0, &unk_1CAD5D400);
  sub_1CAD4DBF4();
  v4 = sub_1CAC87B70();

  v5 = *(v4 + 16);
  v6 = 32;
  while (v5)
  {
    v7 = *(v4 + v6);
    v6 += 8;
    --v5;
    if (v7 == a2)
    {

      sub_1CAD4DBF4();
      v8 = v22;
      v9 = v22;
      v10 = sub_1CAC87B70();
      v11 = v10;
      v12 = *(v10 + 16);
      if (v12)
      {
        v13 = 0;
        v2 = -40;
        do
        {
          if (*(v10 + 8 * v13 + 32) == a2)
          {
            v9 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              goto LABEL_42;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_43;
            }

            goto LABEL_15;
          }

          ++v13;
          v2 -= 8;
        }

        while (v12 != v13);
      }

      v13 = *(v10 + 16);
LABEL_19:
      a2 = v13;
      if (!__OFADD__(v12, v13 - v12))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v13 > *(v11 + 3) >> 1)
        {
          if (v12 <= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = v12;
          }

          v11 = sub_1CAD34C30(isUniquelyReferenced_nonNull_native, v17, 1, v11);
        }

        sub_1CABF2B74(v13, v12, 0);
        sub_1CAC87CCC(v11);
      }

      __break(1u);
LABEL_40:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v11 = sub_1CABF1B68(v11);
LABEL_15:
        v12 = *(v11 + 2);
        if (v9 != v12)
        {
          break;
        }

        v12 = v9;
LABEL_17:
        if (v12 < v13)
        {
          goto LABEL_40;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }
      }

      v19 = v11 + 32;
      v20 = &v11[-v2];
      while (v9 < v12)
      {
        if (*v20 != a2)
        {
          if (v9 != v13)
          {
            if (v13 >= v12)
            {
              __break(1u);
              break;
            }

            v21 = *&v19[8 * v13];
            *&v19[8 * v13] = *v20;
            *v20 = v21;
            v12 = *(v11 + 2);
          }

          ++v13;
        }

        ++v9;
        v20 += 8;
        if (v9 == v12)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      goto LABEL_38;
    }
  }

  sub_1CAD4DBF4();
  v8 = sub_1CAC87B70();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_10;
  }

LABEL_38:
  v8 = sub_1CAD34C30(0, *(v8 + 16) + 1, 1, v8);
LABEL_10:
  v15 = *(v8 + 16);
  v14 = *(v8 + 24);
  if (v15 >= v14 >> 1)
  {
    v8 = sub_1CAD34C30((v14 > 1), v15 + 1, 1, v8);
  }

  *(v8 + 16) = v15 + 1;
  *(v8 + 8 * v15 + 32) = a2;
  sub_1CAC87CCC(v8);
}

uint64_t sub_1CAC0B5D0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  if ((a1 - 1) < 7)
  {
    v3 = CUIKStringForDayOfWeek(a1 - 1);
    if (v3)
    {
      v4 = v3;
      sub_1CAD4DF94();

      sub_1CABA6054();
      result = sub_1CAD4D444();
      *a2 = result;
      *(a2 + 8) = v6;
      *(a2 + 16) = v7 & 1;
      *(a2 + 24) = v8;
      return result;
    }

    __break(1u);
  }

  type metadata accessor for EKWeekday(0);
  result = sub_1CAD4EA14();
  __break(1u);
  return result;
}

uint64_t sub_1CAC0B68C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464BF8, &qword_1CAD5D820);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  if (qword_1EC462D68 != -1)
  {
    swift_once();
  }

  v25 = qword_1EC47DD08;
  v26 = unk_1EC47DD10;
  sub_1CABA6054();

  *v14 = sub_1CAD4D444();
  *(v14 + 1) = v15;
  v14[16] = v16 & 1;
  *(v14 + 3) = v17;
  *(v14 + 16) = 256;
  if (qword_1EC462D70 != -1)
  {
    swift_once();
  }

  v25 = qword_1EC47DD18;
  v26 = unk_1EC47DD20;

  *v12 = sub_1CAD4D444();
  *(v12 + 1) = v18;
  v12[16] = v19 & 1;
  *(v12 + 3) = v20;
  *(v12 + 16) = 257;
  v21 = *(v3 + 16);
  v21(v9, v14, v2);
  v21(v6, v12, v2);
  v21(a1, v9, v2);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464C00, &qword_1CAD5D828);
  v21(&a1[*(v22 + 48)], v6, v2);
  v23 = *(v3 + 8);
  v23(v12, v2);
  v23(v14, v2);
  v23(v6, v2);
  return (v23)(v9, v2);
}

uint64_t sub_1CAC0B978(uint64_t a1, int64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0, &unk_1CAD5D400);
  sub_1CAD4DBF4();
  swift_getKeyPath(aP);
  sub_1CAC0FD7C(&qword_1EC463198, type metadata accessor for RepeatViewModel, &unk_1CAD63330);
  sub_1CAD4C424();

  v3 = v33 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v4 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v5 = *(v3 + *(v4 + 36));
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v5 + 16);
  v8 = 32;
  do
  {
    if (!v7)
    {

      sub_1CAD4DBF4();
      v13 = *(v32 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_prohibitsMultipleDaysInMonthlyRecurrence);

      if (v13 == 1)
      {
        sub_1CAD4DBF4();
        swift_getKeyPath(aP);
        sub_1CAD4C424();

        sub_1CAC885A0(MEMORY[0x1E69E7CC0]);
      }

      sub_1CAD4DBF4();
      swift_getKeyPath(aP);
      sub_1CAD4C424();

      v14 = v32 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
      swift_beginAccess();
      v15 = *(v4 + 36);
      if (*(v14 + v15))
      {
        v16 = *(v14 + v15);
      }

      else
      {
        v16 = v6;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_53:
        v16 = sub_1CAD34D40(0, *(v16 + 2) + 1, 1, v16);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1CAD34D40((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      *&v16[8 * v18 + 32] = a2;
      v19 = v16;
LABEL_42:
      sub_1CAC885A0(v19);
    }

    v9 = *(v5 + v8);
    v8 += 8;
    --v7;
  }

  while (v9 != a2);

  sub_1CAD4DBF4();
  swift_getKeyPath(aP);
  sub_1CAD4C424();

  v10 = v32 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v11 = *(v10 + *(v4 + 36));
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v20 = *(v11 + 16);

  if (v20 >= 2)
  {
    sub_1CAD4DBF4();
    swift_getKeyPath(aP);
    sub_1CAD4C424();

    v16 = (v31 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule);
    swift_beginAccess();
    v22 = *(v4 + 36);
    if (*&v16[v22])
    {
      v23 = *&v16[v22];
    }

    else
    {
      v23 = v12;
    }

    v24 = *(v23 + 2);
    if (v24)
    {
      v25 = 0;
      v20 = -40;
      while (*&v23[8 * v25 + 32] != a2)
      {
        ++v25;
        v20 -= 8;
        if (v24 == v25)
        {
          goto LABEL_27;
        }
      }

      v16 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        goto LABEL_58;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
LABEL_59:
        v23 = sub_1CABF1B7C(v23);
      }

      v24 = *(v23 + 2);
      if (v16 != v24)
      {
        v28 = v23 + 32;
        v29 = &v23[-v20];
        while (1)
        {
          if (v16 >= v24)
          {
            __break(1u);
            goto LABEL_53;
          }

          if (*v29 != a2)
          {
            if (v16 != v25)
            {
              if (v25 >= v24)
              {
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              v30 = *&v28[8 * v25];
              *&v28[8 * v25] = *v29;
              *v29 = v30;
              v24 = *(v23 + 2);
            }

            ++v25;
          }

          ++v16;
          v29 += 8;
          if (v16 == v24)
          {
            goto LABEL_32;
          }
        }
      }

      v24 = v16;
LABEL_32:
      if (v24 < v25)
      {
        goto LABEL_56;
      }

      if (v25 < 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
LABEL_27:

      v25 = v24;
    }

    a2 = v25;
    if (__OFADD__(v24, v25 - v24))
    {
      goto LABEL_55;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v25 > *(v23 + 3) >> 1)
    {
      if (v24 <= v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = v24;
      }

      v23 = sub_1CAD34D40(isUniquelyReferenced_nonNull_native, v27, 1, v23);
    }

    sub_1CABF2B74(v25, v24, 0);
    v19 = v23;
    goto LABEL_42;
  }

  return result;
}

uint64_t sub_1CAC0BEDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B48, &qword_1CAD5D6F8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = (&v46 - v3);
  v4 = sub_1CAD4CCF4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464AF8, &qword_1CAD5D6C8);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v46 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4630E0, &unk_1CAD5D400);
  sub_1CAD4DBF4();
  v7 = v50;
  swift_getKeyPath(aP);
  *&v50 = v7;
  sub_1CAC0FD7C(&qword_1EC463198, type metadata accessor for RepeatViewModel, &unk_1CAD63330);
  sub_1CAD4C424();

  v8 = v7 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v9 = *(v8 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 36));
  if (v9)
  {
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);
  v11 = 32;
  while (v10)
  {
    v12 = *(v9 + v11);
    v11 += 8;
    --v10;
    if (v12 == a1)
    {

      v13 = *MEMORY[0x1E697F470];
      v14 = sub_1CAD4CD24();
      (*(*(v14 - 8) + 104))(v6, v13, v14);
      sub_1CAD4CCE4();
      sub_1CAD4CCD4();
      *&v50 = a1;
      sub_1CAD4CCA4();
      sub_1CAD4CCD4();
      sub_1CAD4CD14();
      v15 = sub_1CAD4D434();
      v17 = v16;
      v19 = v18;
      sub_1CAD4D874();
      v20 = sub_1CAD4D3D4();
      v22 = v21;
      v24 = v23;
      v26 = v25;

      sub_1CABA6128(v15, v17, v19 & 1);

      v27 = sub_1CAD4DC94();
      v29 = v28;
      v30 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B18, &qword_1CAD5D6D8) + 36)];
      *v30 = v20;
      *(v30 + 1) = v22;
      v30[16] = v24 & 1;
      *(v30 + 3) = v26;
      *(v30 + 4) = v27;
      *(v30 + 5) = v29;
      v31 = sub_1CAD4D804();
      KeyPath = swift_getKeyPath(aX);
      v33 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B08, &qword_1CAD5D6D0) + 36)];
      *v33 = KeyPath;
      v33[1] = v31;
      sub_1CAD4DC94();
      sub_1CAD4C744();
      v34 = &v6[*(v48 + 36)];
      v35 = v51;
      *v34 = v50;
      *(v34 + 1) = v35;
      *(v34 + 2) = v52;
      sub_1CAB23A9C(v6, v46, &qword_1EC464AF8, &qword_1CAD5D6C8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B40, &qword_1CAD5D6F0);
      sub_1CAC0FB50();
      sub_1CAC0FDC4();
      sub_1CAD4CE24();
      return sub_1CAB21B68(v6, &qword_1EC464AF8, &qword_1CAD5D6C8);
    }
  }

  sub_1CAD4CCE4();
  sub_1CAD4CCD4();
  *&v50 = a1;
  sub_1CAD4CCA4();
  sub_1CAD4CCD4();
  sub_1CAD4CD14();
  v37 = sub_1CAD4D434();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_1CAD4DC94();
  sub_1CAD4C744();
  v44 = v46;
  *v46 = v37;
  v44[1] = v39;
  *(v44 + 16) = v41 & 1;
  v44[3] = v43;
  v45 = v51;
  *(v44 + 2) = v50;
  *(v44 + 3) = v45;
  *(v44 + 4) = v52;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464B40, &qword_1CAD5D6F0);
  sub_1CAC0FB50();
  sub_1CAC0FDC4();
  return sub_1CAD4CE24();
}