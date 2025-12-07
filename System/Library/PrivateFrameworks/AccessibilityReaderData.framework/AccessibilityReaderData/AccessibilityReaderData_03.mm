id AXRViewInReaderService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AXRViewInReaderService.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AXRViewInReaderService();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t _s23AccessibilityReaderData09AXRViewInB7ServiceC04vieweB07appName8bundleID7content5titleySS_S3SSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_23D793F04(MEMORY[0x277D84F90]);
  v15 = MEMORY[0x277D837D0];
  sub_23D80E21C();
  v27 = v15;
  *&v26 = a1;
  *(&v26 + 1) = a2;
  sub_23D794258(&v26, v25);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v14;
  sub_23D7AD818(v25, v28, isUniquelyReferenced_nonNull_native);
  sub_23D7AF764(v28);
  v17 = v29;
  *&v26 = 0xD000000000000021;
  *(&v26 + 1) = 0x800000023D816550;
  sub_23D80E21C();
  v27 = v15;
  *&v26 = a3;
  *(&v26 + 1) = a4;
  sub_23D794258(&v26, v25);

  v18 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v17;
  sub_23D7AD818(v25, v28, v18);
  sub_23D7AF764(v28);
  v19 = v29;
  *&v26 = 0xD000000000000020;
  *(&v26 + 1) = 0x800000023D816580;
  sub_23D80E21C();
  v27 = v15;
  *&v26 = a5;
  *(&v26 + 1) = a6;
  sub_23D794258(&v26, v25);

  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_23D7AD818(v25, v28, v20);
  sub_23D7AF764(v28);
  v29 = v19;
  *&v26 = 0xD00000000000001ELL;
  *(&v26 + 1) = 0x800000023D8165B0;
  sub_23D80E21C();
  if (a8)
  {
    v27 = v15;
    *&v26 = a7;
    *(&v26 + 1) = a8;
    sub_23D794258(&v26, v25);

    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_23D7AD818(v25, v28, v21);
  }

  else
  {
    sub_23D80C420(v28, &v26);
    sub_23D7D1020(&v26);
  }

  sub_23D7AF764(v28);
}

uint64_t sub_23D7D0FB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D7D1020(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E45A0, &qword_23D810320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AXRTextBlock.__allocating_init(id:blockText:containsSelection:selectedLocalTextRange:languageRanges:playbackSpeed:isHeader:headingLevel:isLink:isListElement:indexPath:attributedBlockText:preferredSpeakingLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, int a7, uint64_t a8, int *a9, unsigned __int8 a10, uint64_t a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v71 = a8;
  v69 = a7;
  v70 = a6;
  v68 = a5;
  v63 = a3;
  v82 = a2;
  v83 = a1;
  v66 = 0;
  v73 = a11;
  LODWORD(v80) = a10;
  v62 = a4 & 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v18 - 8);
  v77 = &v61[-v19];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  MEMORY[0x28223BE20](v20 - 8);
  v76 = &v61[-v21];
  v22 = sub_23D80D67C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v61[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = swift_allocObject();
  v65 = *a9;
  v64 = *(a9 + 4);
  sub_23D80D66C();
  v27 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v28 = *(v23 + 32);
  v28(v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id, v25, v22);
  v29 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  *(v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection) = 0;
  v30 = v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  *(v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges) = MEMORY[0x277D84F90];
  v31 = v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  *v31 = 4;
  *(v31 + 4) = 1;
  v32 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
  *(v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader) = 0;
  v33 = v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  *v33 = 0;
  *(v33 + 8) = 1;
  v67 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  *(v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement) = 0;
  v72 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
  *(v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink) = 0;
  v34 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  v35 = sub_23D80D6CC();
  (*(*(v35 - 8) + 56))(v26 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  v37 = sub_23D80D5BC();
  (*(*(v37 - 8) + 56))(v26 + v36, 1, 1, v37);
  *(v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress) = 0;
  *(v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__hasBeenSpokenBefore) = 0;
  v74 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
  *(v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL) = 0;
  v38 = (v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  sub_23D80D72C();
  (*(v23 + 16))(v25, v83, v22);
  v40 = *(v23 + 8);
  v78 = v23 + 8;
  v75 = v40;
  v40(v26 + v27, v22);
  v79 = v22;
  v28(v26 + v27, v25, v22);
  v41 = v62;
  v42 = v63;
  v43 = (v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  *v43 = v82;
  v43[1] = v42;

  *(v26 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount) = sub_23D80DDBC();
  swift_beginAccess();
  v44 = *(v26 + v29);
  v81 = v39;
  if (v44 == v41)
  {
    *(v26 + v29) = v41;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v61[-16] = v26;
    v61[-8] = v41;
    v88 = v26;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  sub_23D7D2E58(v68, v70, v69 & 1);
  sub_23D7D339C(v71);
  LODWORD(v88) = v65;
  BYTE4(v88) = v64;
  sub_23D7D37C0(&v88);
  swift_beginAccess();
  v46 = v80 & 1;
  if (*(v26 + v32) == (v80 & 1))
  {
    *(v26 + v32) = v46;
  }

  else
  {
    v47 = swift_getKeyPath();
    MEMORY[0x28223BE20](v47);
    *&v61[-16] = v26;
    v61[-8] = v46;
    v87 = v26;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v48 = v67;
  v80 = a16;
  v71 = a15;
  sub_23D7D42EC(v73, a12 & 1);
  swift_beginAccess();
  v49 = a14 & 1;
  if (*(v26 + v48) == (a14 & 1))
  {
    *(v26 + v48) = v49;
  }

  else
  {
    v50 = swift_getKeyPath();
    MEMORY[0x28223BE20](v50);
    *&v61[-16] = v26;
    v61[-8] = v49;
    v86 = v26;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v51 = v72;
  v73 = a18;
  swift_beginAccess();
  v52 = a13 & 1;
  if (*(v26 + v51) == (a13 & 1))
  {
    *(v26 + v51) = v52;
  }

  else
  {
    v53 = swift_getKeyPath();
    MEMORY[0x28223BE20](v53);
    *&v61[-16] = v26;
    v61[-8] = v52;
    v85 = v26;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v54 = v74;
  v55 = v71;
  v56 = v76;
  sub_23D790648(v71, v76, &qword_27E2E43F8, &qword_23D811650);
  sub_23D7D4AF8(v56);
  v57 = v77;
  sub_23D790648(v80, v77, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D7D512C(v57);
  v58 = sub_23D7A1CF4(v82, v42);

  swift_beginAccess();
  if (v58 == *(v26 + v54))
  {
    *(v26 + v54) = v58;
  }

  else
  {
    v59 = swift_getKeyPath();
    MEMORY[0x28223BE20](v59);
    *&v61[-16] = v26;
    v61[-8] = v58;
    v84 = v26;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  sub_23D7D6068(a17, v73);
  sub_23D790730(v80, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D790730(v55, &qword_27E2E43F8, &qword_23D811650);
  v75(v83, v79);
  return v26;
}

uint64_t sub_23D7D1B38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v5 = sub_23D80D67C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_23D7D1C30(uint64_t a1)
{
  v2 = sub_23D80D67C();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return sub_23D7D1DF4(v4);
}

uint64_t sub_23D7D1CFC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v3 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v4 = sub_23D80D67C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_23D7D1DF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23D80D67C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_23D7DB084(&qword_27E2E4B48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v14[0] = a1;
  LOBYTE(a1) = sub_23D80DD3C();
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
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_23D7D2094(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D80D67C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t (*sub_23D7D21B0(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D1AD8(v4);
  return sub_23D7D22E8;
}

uint64_t sub_23D7D2354()
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_23D7D2424(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v6 = *v5 == a1 && v5[1] == a2;
  if (v6 || (sub_23D80E4DC() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }
}

uint64_t sub_23D7D2584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t (*sub_23D7D25F8(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D22F4(v4);
  return sub_23D7D2730;
}

uint64_t sub_23D7D279C()
{
  swift_getKeyPath();
  v3 = v0;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
  swift_beginAccess();
  return *(v3 + v1);
}

uint64_t sub_23D7D2858(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
  result = swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  return result;
}

uint64_t (*sub_23D7D2978(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D273C(v4);
  return sub_23D7D2AB0;
}

uint64_t sub_23D7D2B94(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_23D7D2BF0(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D2ABC(v4);
  return sub_23D7D2D28;
}

uint64_t sub_23D7D2D94()
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23D7D2E58(unint64_t a1, unint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  result = swift_beginAccess();
  if ((*(v7 + 16) & 1) == 0)
  {
    if ((a3 & 1) != 0 || (*v7 ^ a1) >> 14 || (*(v7 + 8) ^ a2) >= 0x4000)
    {
      goto LABEL_8;
    }

LABEL_7:
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = a3 & 1;
    return result;
  }

  if (a3)
  {
    goto LABEL_7;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6EC();
}

uint64_t sub_23D7D2FD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  result = swift_beginAccess();
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4 & 1;
  return result;
}

uint64_t (*sub_23D7D3044(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D2D34(v4);
  return sub_23D7D317C;
}

double sub_23D7D31E8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double sub_23D7D32DC()
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  swift_beginAccess();

  return result;
}

uint64_t sub_23D7D339C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  if (sub_23D7D9400(*(v1 + v3), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }
}

uint64_t sub_23D7D34DC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_23D7D354C(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D3188(v4);
  return sub_23D7D3684;
}

uint64_t sub_23D7D36F0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v3 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  result = swift_beginAccess();
  v5 = *(v3 + 4);
  *a1 = *v3;
  *(a1 + 4) = v5;
  return result;
}

uint64_t sub_23D7D37C0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  result = swift_beginAccess();
  if (*(v4 + 4) == 1)
  {
    switch(*v4)
    {
      case 1:
        v6 = LODWORD(v2) == 1;
        break;
      case 2:
        v6 = LODWORD(v2) == 2;
        break;
      case 3:
        v6 = LODWORD(v2) == 3;
        break;
      case 4:
        v6 = LODWORD(v2) == 4;
        break;
      case 5:
        v6 = LODWORD(v2) == 5;
        break;
      case 6:
        v6 = LODWORD(v2) == 6;
        break;
      case 7:
        v6 = LODWORD(v2) == 7;
        break;
      case 8:
        v6 = LODWORD(v2) == 8;
        break;
      case 9:
        v6 = LODWORD(v2) == 9;
        break;
      case 0xA:
        v6 = LODWORD(v2) == 10;
        break;
      case 0xB:
        v6 = LODWORD(v2) == 11;
        break;
      case 0xC:
        v6 = LODWORD(v2) == 12;
        break;
      case 0xD:
        v6 = LODWORD(v2) == 13;
        break;
      case 0xE:
        v6 = LODWORD(v2) == 14;
        break;
      case 0xF:
        v6 = LODWORD(v2) == 15;
        break;
      case 0x10:
        if (LODWORD(v2) > 0xF)
        {
          v9 = v3;
        }

        else
        {
          v9 = 0;
        }

        if (v9)
        {
          goto LABEL_33;
        }

        goto LABEL_8;
      default:
        v6 = LODWORD(v2) == 0;
        break;
    }

    if (v6)
    {
      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      goto LABEL_33;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  if (*v4 == v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_8;
  }

LABEL_33:
  *v4 = v2;
  *(v4 + 4) = v3;
  return result;
}

uint64_t sub_23D7D3A0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  result = swift_beginAccess();
  *v3 = a2;
  *(v3 + 4) = BYTE4(a2) & 1;
  return result;
}

uint64_t (*sub_23D7D3A70(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D3690(v4);
  return sub_23D7D3BA8;
}

uint64_t sub_23D7D3C28@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v7 = *a3;
  result = swift_beginAccess();
  *a4 = *(v6 + v7);
  return result;
}

uint64_t sub_23D7D3D2C(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t sub_23D7D3E08(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  result = swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  return result;
}

uint64_t sub_23D7D3F24(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_23D7D3F80(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D3BB4(v4);
  return sub_23D7D40B8;
}

uint64_t sub_23D7D4124@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_23D7D4228()
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_23D7D42EC(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  result = swift_beginAccess();
  if ((*(v5 + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v5 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v5 = a1;
    *(v5 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6EC();
}

uint64_t (*sub_23D7D4440(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D40C4(v4);
  return sub_23D7D4578;
}

uint64_t sub_23D7D465C(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_23D7D46B8(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D4584(v4);
  return sub_23D7D47F0;
}

uint64_t sub_23D7D48D4(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_23D7D4930(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D47FC(v4);
  return sub_23D7D4A68;
}

uint64_t sub_23D7D4AF8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  swift_beginAccess();
  sub_23D790648(v1 + v6, v5, &qword_27E2E43F8, &qword_23D811650);
  v7 = sub_23D7D96F4(v5, a1);
  sub_23D790730(v5, &qword_27E2E43F8, &qword_23D811650);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  else
  {
    sub_23D790648(a1, v5, &qword_27E2E43F8, &qword_23D811650);
    swift_beginAccess();
    sub_23D7D9FE8(v5, v1 + v6, &qword_27E2E43F8, &qword_23D811650);
    swift_endAccess();
  }

  return sub_23D790730(a1, &qword_27E2E43F8, &qword_23D811650);
}

uint64_t (*sub_23D7D4D00(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D4A74(v4);
  return sub_23D7D4E38;
}

uint64_t sub_23D7D4EA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  swift_beginAccess();
  return sub_23D790648(v3 + v4, a2, &qword_27E2E43F0, &unk_23D811FD0);
}

uint64_t sub_23D7D4F7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_23D790648(a1, &v6 - v3, &qword_27E2E43F0, &unk_23D811FD0);
  return sub_23D7D512C(v4);
}

uint64_t sub_23D7D504C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v10 = *a2;
  swift_beginAccess();
  return sub_23D790648(v12 + v10, a5, a3, a4);
}

uint64_t sub_23D7D512C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  swift_beginAccess();
  sub_23D790648(v1 + v6, v5, &qword_27E2E43F0, &unk_23D811FD0);
  v7 = sub_23D7D9A14(v5, a1);
  sub_23D790730(v5, &qword_27E2E43F0, &unk_23D811FD0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  else
  {
    sub_23D790648(a1, v5, &qword_27E2E43F0, &unk_23D811FD0);
    swift_beginAccess();
    sub_23D7D9FE8(v5, v1 + v6, &qword_27E2E43F0, &unk_23D811FD0);
    swift_endAccess();
  }

  return sub_23D790730(a1, &qword_27E2E43F0, &unk_23D811FD0);
}

uint64_t sub_23D7D5334(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - v11;
  sub_23D790648(a2, &v15 - v11, a3, a4);
  v13 = *a5;
  swift_beginAccess();
  sub_23D7D9FE8(v12, a1 + v13, a3, a4);
  return swift_endAccess();
}

uint64_t (*sub_23D7D5418(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D4E44(v4);
  return sub_23D7D5550;
}

id sub_23D7D555C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_23D80D5BC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  swift_getKeyPath();
  v18 = v0;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v12 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  swift_beginAccess();
  sub_23D790648(v1 + v12, v4, &qword_27E2E43F0, &unk_23D811FD0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_23D790730(v4, &qword_27E2E43F0, &unk_23D811FD0);
    swift_getKeyPath();
    v17[0] = v1;
    sub_23D80D6FC();

    swift_beginAccess();
    v13 = objc_allocWithZone(MEMORY[0x277CCA898]);

    v14 = sub_23D80DD4C();

    v15 = [v13 initWithString_];
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    sub_23D7DA084();
    (*(v6 + 16))(v9, v11, v5);
    v15 = sub_23D80E0EC();
    (*(v6 + 8))(v11, v5);
  }

  return v15;
}

uint64_t (*sub_23D7D5960(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D5888(v4);
  return sub_23D7D5A98;
}

uint64_t (*sub_23D7D5B7C(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D5AA4(v4);
  return sub_23D7D5CB4;
}

uint64_t sub_23D7D5D98(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
  result = swift_beginAccess();
  *(a1 + v4) = a2;
  return result;
}

uint64_t (*sub_23D7D5DF4(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D5CC0(v4);
  return sub_23D7D5F2C;
}

uint64_t sub_23D7D5F98()
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v1 = (v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_23D7D6068(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  swift_beginAccess();
  v6 = v5[1];
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_23D80E4DC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *v5 = a1;
    v5[1] = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6EC();
}

uint64_t sub_23D7D61D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  swift_beginAccess();
  *v5 = a2;
  v5[1] = a3;
}

uint64_t (*sub_23D7D624C(uint64_t *a1))()
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
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  *v4 = v1;
  swift_getKeyPath();
  sub_23D80D71C();

  v4[7] = sub_23D7D5F38(v4);
  return sub_23D7D6384;
}

void sub_23D7D6390(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_23D80D70C();

  free(v3);
}

uint64_t AXRTextBlock.init(id:blockText:containsSelection:selectedLocalTextRange:languageRanges:playbackSpeed:isHeader:headingLevel:isLink:isListElement:indexPath:attributedBlockText:preferredSpeakingLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, int a7, uint64_t a8, int *a9, unsigned __int8 a10, uint64_t a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v72 = a8;
  v69 = a7;
  v70 = a6;
  v68 = a5;
  v64 = a3;
  v83 = a2;
  v84 = a1;
  v67 = 0;
  v74 = a11;
  LODWORD(v81) = a10;
  v63 = a4 & 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v20 - 8);
  v78 = &v62[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  MEMORY[0x28223BE20](v22 - 8);
  v77 = &v62[-v23];
  v24 = sub_23D80D67C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v62[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = *a9;
  v65 = *(a9 + 4);
  sub_23D80D66C();
  v28 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v29 = *(v25 + 32);
  v29(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id, v27, v24);
  v30 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection) = 0;
  v31 = v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges) = MEMORY[0x277D84F90];
  v32 = v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  *v32 = 4;
  *(v32 + 4) = 1;
  v33 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isHeader) = 0;
  v34 = v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  *v34 = 0;
  *(v34 + 8) = 1;
  v71 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isListElement) = 0;
  v73 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isLink) = 0;
  v35 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath;
  v36 = sub_23D80D6CC();
  (*(*(v36 - 8) + 56))(v19 + v35, 1, 1, v36);
  v37 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText;
  v38 = sub_23D80D5BC();
  (*(*(v38 - 8) + 56))(v19 + v37, 1, 1, v38);
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress) = 0;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__hasBeenSpokenBefore) = 0;
  v75 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL;
  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__isRTL) = 0;
  v39 = (v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  sub_23D80D72C();
  (*(v25 + 16))(v27, v84, v24);
  v41 = *(v25 + 8);
  v79 = v25 + 8;
  v76 = v41;
  v41(v19 + v28, v24);
  v80 = v24;
  v29(v19 + v28, v27, v24);
  v42 = v63;
  v43 = v64;
  v44 = (v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  *v44 = v83;
  v44[1] = v43;

  *(v19 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount) = sub_23D80DDBC();
  swift_beginAccess();
  v45 = *(v19 + v30);
  v82 = v40;
  if (v45 == v42)
  {
    *(v19 + v30) = v42;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v62[-16] = v19;
    v62[-8] = v42;
    v89 = v19;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  sub_23D7D2E58(v68, v70, v69 & 1);
  sub_23D7D339C(v72);
  LODWORD(v89) = v66;
  BYTE4(v89) = v65;
  sub_23D7D37C0(&v89);
  swift_beginAccess();
  v47 = v81 & 1;
  if (*(v19 + v33) == (v81 & 1))
  {
    *(v19 + v33) = v47;
  }

  else
  {
    v48 = swift_getKeyPath();
    MEMORY[0x28223BE20](v48);
    *&v62[-16] = v19;
    v62[-8] = v47;
    v88 = v19;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v49 = v71;
  v81 = a16;
  v72 = a15;
  sub_23D7D42EC(v74, a12 & 1);
  swift_beginAccess();
  v50 = a14 & 1;
  if (*(v19 + v49) == (a14 & 1))
  {
    *(v19 + v49) = v50;
  }

  else
  {
    v51 = swift_getKeyPath();
    MEMORY[0x28223BE20](v51);
    *&v62[-16] = v19;
    v62[-8] = v50;
    v87 = v19;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v52 = v73;
  v74 = a18;
  swift_beginAccess();
  v53 = a13 & 1;
  if (*(v19 + v52) == (a13 & 1))
  {
    *(v19 + v52) = v53;
  }

  else
  {
    v54 = swift_getKeyPath();
    MEMORY[0x28223BE20](v54);
    *&v62[-16] = v19;
    v62[-8] = v53;
    v86 = v19;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v55 = v75;
  v56 = v72;
  v57 = v77;
  sub_23D790648(v72, v77, &qword_27E2E43F8, &qword_23D811650);
  sub_23D7D4AF8(v57);
  v58 = v78;
  sub_23D790648(v81, v78, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D7D512C(v58);
  v59 = sub_23D7A1CF4(v83, v43);

  swift_beginAccess();
  if (v59 == *(v19 + v55))
  {
    *(v19 + v55) = v59;
  }

  else
  {
    v60 = swift_getKeyPath();
    MEMORY[0x28223BE20](v60);
    *&v62[-16] = v19;
    v62[-8] = v59;
    v85 = v19;
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  sub_23D7D6068(a17, v74);
  sub_23D790730(v81, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D790730(v56, &qword_27E2E43F8, &qword_23D811650);
  v76(v84, v80);
  return v19;
}

uint64_t type metadata accessor for AXRTextBlock(uint64_t a1)
{
  result = qword_27E2E4B60;
  if (!qword_27E2E4B60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D7D6FDC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23D80D67C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v1;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v7 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v7, v3);
  sub_23D7DB084(&qword_27E2E4820, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23D80DD0C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D7D71A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_23D80D97C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v31 - v9;
  swift_getKeyPath();
  v32 = v2;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v11 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  if (*(*(v3 + v11) + 16))
  {
    if (qword_27E2E4248 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v4, qword_27E2E5348);
    swift_beginAccess();
    (*(v5 + 16))(v8, v12, v4);
    v13 = sub_23D80D95C();
    v14 = sub_23D80E06C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23D78A000, v13, v14, "Using existing languageRanges", v15, 2u);
      MEMORY[0x23EEED790](v15, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    if (qword_27E2E4248 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_27E2E5348);
    swift_beginAccess();
    (*(v5 + 16))(v10, v17, v4);
    v18 = sub_23D80D95C();
    v19 = sub_23D80E06C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_23D78A000, v18, v19, "Language Tagging as languageRanges is Empty", v20, 2u);
      MEMORY[0x23EEED790](v20, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    swift_getKeyPath();
    v31[3] = v3;
    sub_23D80D6FC();

    v21 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__preferredSpeakingLanguage);
    swift_beginAccess();
    v22 = v21[1];
    if (v22)
    {
      v23 = *v21;
      swift_getKeyPath();
      v31[0] = v3;

      sub_23D80D6FC();

      v24 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
      swift_beginAccess();
      v25 = _sSS23AccessibilityReaderDataE25getLanguageAndRangeMapFor9substring04withE0SayAA013AXRTextLocalefG0VGSS_SStFZ_0(*v24, v24[1], v23, v22);

      v26 = v25;
    }

    else
    {
      swift_getKeyPath();
      v31[0] = v3;
      sub_23D80D6FC();

      v27 = (v3 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
      swift_beginAccess();
      v29 = *v27;
      v28 = v27[1];

      v30 = static String.getLanguageAndRangeMapFor(substring:)(v29, v28);

      v26 = v30;
    }

    return sub_23D7D339C(v26);
  }
}

uint64_t sub_23D7D7664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_23D7D71A4(a1, a2);
  v5 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress;
  swift_beginAccess();
  if (*(v3 + v5) == 1)
  {
    *(v3 + v5) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  swift_beginAccess();
  v7 = sub_23D80D92C();
  v8 = MEMORY[0x277D703A0];
  a3[3] = v7;
  a3[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(a3);

  return sub_23D80D93C();
}

uint64_t sub_23D7D787C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = a3;
  v30 = sub_23D80D90C();
  v29 = *(v30 - 8);
  v5 = MEMORY[0x28223BE20](v30);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v28 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[3];
  v28[1] = a1[2];
  v28[0] = v12;
  swift_getKeyPath();
  v36[0] = a2;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  swift_getKeyPath();
  v36[0] = a2;
  sub_23D80D6FC();

  v13 = (a2 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__blockText);
  swift_beginAccess();
  v14 = v13[1];
  v15 = *v13 & 0xFFFFFFFFFFFFLL;
  if ((v14 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v14) & 0xF;
  }

  if (v10 >> 14 <= 4 * v15 && v10 >> 14 >= v11 >> 14)
  {
    swift_getKeyPath();
    v36[0] = a2;
    sub_23D80D6FC();

    v17 = sub_23D80DE8C();
    v19 = v18;
    v21 = v20;
    v23 = v22;

    MEMORY[0x23EEEC6B0](v17, v19, v21, v23);

    sub_23D80D91C();

    sub_23D80D8FC();

    v24 = *(v29 + 8);
    v25 = v7;
    v26 = v30;
    v24(v25, v30);
    sub_23D80D7AC();
    v24(v9, v26);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    swift_getKeyPath();
    *&v34[0] = a2;
    sub_23D80D6FC();

    swift_beginAccess();
    LOBYTE(v34[0]) = 0;
    sub_23D80D79C();
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_23D80D78C();
    sub_23D80D8AC();
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_23D80D8AC();
    sub_23D7CEA08(v33, v32);
    sub_23D80D8EC();
    sub_23D790730(v32, &qword_27E2E4A88, &qword_23D811E88);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_23D80D8EC();
    sub_23D790730(v34, &qword_27E2E4A88, &qword_23D811E88);
  }

  sub_23D80D8AC();
  return __swift_destroy_boxed_opaque_existential_1(v36);
}

uint64_t sub_23D7D7D24(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v8 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress;
  result = swift_beginAccess();
  if (*(a5 + v8) == 1)
  {
    sub_23D7D2E58(a1, a2, 0);
    v10 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
    result = swift_beginAccess();
    if (*(a5 + v10) == 1)
    {
      *(a5 + v10) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_23D80D6EC();
    }
  }

  return result;
}

void sub_23D7D7ED0(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_23D7D71A4(a1, a2);
  v7 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress;
  swift_beginAccess();
  v35 = a3;
  if (*(v3 + v7) == 1)
  {
    *(v3 + v7) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v9 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__languageRanges;
  swift_beginAccess();
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  if (v11)
  {
    v12 = 0;
    v13 = a1 >> 14;
    v14 = a2 >> 14;
    v15 = -v11;
    v16 = v10 + 56;
    v17 = MEMORY[0x277D84F90];
    v31 = v10 + 56;
    v32 = v10;
    do
    {
      v18 = *(v10 + 16);
      if (v12 > v18)
      {
        v18 = v12;
      }

      v19 = -v18;
      v20 = (v16 + 32 * v12++);
      while (1)
      {
        if (v19 + v12 == 1)
        {
          __break(1u);
          return;
        }

        v21 = *(v20 - 3);
        v22 = *(v20 - 2);
        if (v21 >> 14 >= v13)
        {
          break;
        }

        v23 = v21 >> 14 >= v14 || v13 == v14;
        if (!v23 && v13 < v22 >> 14)
        {
          break;
        }

        ++v12;
        v20 += 4;
        if (v15 + v12 == 1)
        {
          goto LABEL_26;
        }
      }

      v33 = *(v20 - 1);
      v34 = *v20;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_23D795438(0, *(v17 + 16) + 1, 1);
      }

      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_23D795438((v25 > 1), v26 + 1, 1);
      }

      *(v17 + 16) = v26 + 1;
      v27 = (v17 + 32 * v26);
      v27[4] = v21;
      v27[5] = v22;
      v27[6] = v33;
      v27[7] = v34;
      v16 = v31;
      v10 = v32;
    }

    while (v15 + v12);
  }

LABEL_26:

  swift_getKeyPath();
  sub_23D80D6FC();

  swift_beginAccess();
  swift_getKeyPath();

  sub_23D80D6FC();

  sub_23D80DE1C();

  MEMORY[0x28223BE20](v28);
  v29 = sub_23D80D92C();
  v30 = MEMORY[0x277D703A0];
  v35[3] = v29;
  v35[4] = v30;
  __swift_allocate_boxed_opaque_existential_1(v35);
  sub_23D80D93C();
}

uint64_t sub_23D7D8318@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v39 = a4;
  v9 = sub_23D80D90C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v36 - v15;
  v17 = a1[2];
  v18 = a1[3];
  v19 = *a1 >> 14;
  v20 = a2 >> 14;
  v21 = a1[1] >> 14;
  if (v19 < a2 >> 14)
  {
    if (v21 >= v20)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v20 = v19;
LABEL_5:
  v36[1] = v18;
  v36[2] = v17;
  v37 = v14;
  v38 = a5;
  swift_getKeyPath();
  v22 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  v43[0] = a3;
  v23 = sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  v36[3] = v22;
  v36[0] = v23;
  sub_23D80D6FC();

  result = swift_beginAccess();
  if (v21 < v20)
  {
    __break(1u);
  }

  else
  {

    v25 = sub_23D80DE8C();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    MEMORY[0x23EEEC6B0](v25, v27, v29, v31);

    sub_23D80D91C();
    v32 = swift_allocObject();
    v33 = v39;
    *(v32 + 16) = a3;
    *(v32 + 24) = v33;

    sub_23D80D8FC();

    v34 = *(v10 + 8);
    v35 = v37;
    v34(v13, v37);
    sub_23D80D7AC();
    v34(v16, v35);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    swift_getKeyPath();
    v43[0] = a3;
    sub_23D80D6FC();

    swift_beginAccess();
    LOBYTE(v43[0]) = 0;
    sub_23D80D79C();
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    sub_23D80D78C();
    sub_23D80D8AC();
    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_23D80D8AC();
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  return result;
}

uint64_t sub_23D7D8730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v7 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress;
  result = swift_beginAccess();
  if (*(a5 + v7) == 1)
  {
    swift_getKeyPath();
    sub_23D80D6FC();

    swift_beginAccess();
    swift_getKeyPath();
    sub_23D80D6FC();

    v9 = sub_23D80DDCC();
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      swift_getKeyPath();
      sub_23D80D6FC();

      v12 = sub_23D80DDCC();
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        if (v12 >> 14 < v9 >> 14)
        {
          __break(1u);
        }

        else
        {
          sub_23D7D2E58(v9, v12, 0);
          v15 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
          result = swift_beginAccess();
          if (*(a5 + v15) == 1)
          {
            *(a5 + v15) = 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            sub_23D80D6EC();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_23D7D8A48()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__speechInProgress;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  v4 = v1 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  swift_beginAccess();
  if (*(v4 + 16) == 1)
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 1;
  }

  else
  {
    v5 = swift_getKeyPath();
    MEMORY[0x28223BE20](v5);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  v6 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__containsSelection;
  result = swift_beginAccess();
  if (*(v1 + v6))
  {
    v8 = swift_getKeyPath();
    MEMORY[0x28223BE20](v8);
    sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
    sub_23D80D6EC();
  }

  else
  {
    *(v1 + v6) = 0;
  }

  return result;
}

uint64_t sub_23D7D8D54(int *a1)
{
  v1 = *(a1 + 4);
  v3 = *a1;
  v4 = v1;
  return sub_23D7D37C0(&v3);
}

uint64_t AXRTextBlock.deinit()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v2 = sub_23D80D67C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath, &qword_27E2E43F8, &qword_23D811650);
  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText, &qword_27E2E43F0, &unk_23D811FD0);

  v3 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  v4 = sub_23D80D73C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AXRTextBlock.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  v2 = sub_23D80D67C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__indexPath, &qword_27E2E43F8, &qword_23D811650);
  sub_23D790730(v0 + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__attributedBlockText, &qword_27E2E43F0, &unk_23D811FD0);

  v3 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock___observationRegistrar;
  v4 = sub_23D80D73C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_23D7D8FF4()
{
  sub_23D80E58C();
  type metadata accessor for AXRTextBlock(0);
  sub_23D7DB084(&qword_27E2E4B50, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D7D9084@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v4 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v5 = sub_23D80D67C();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_23D7D917C(uint64_t a1, uint64_t a2)
{
  sub_23D80E58C();
  type metadata accessor for AXRTextBlock(0);
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D7D91DC(uint64_t a1)
{
  v2 = sub_23D80D67C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  swift_getKeyPath();
  v9[1] = v6;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v7 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  (*(v3 + 16))(v5, v6 + v7, v2);
  sub_23D7DB084(&qword_27E2E4820, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23D80DD0C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23D7D93A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23D80E58C();
  sub_23D80DD0C();
  return sub_23D80E5CC();
}

uint64_t sub_23D7D9400(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); !((*(i - 3) ^ *(v3 - 3)) >> 14) && !((*(i - 2) ^ *(v3 - 2)) >> 14); i += 4)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_23D80E4DC() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _s23AccessibilityReaderData12AXRTextBlockC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D80D67C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  swift_getKeyPath();
  v16[3] = a1;
  sub_23D7DB084(&qword_27E2E4400, type metadata accessor for AXRTextBlock, &protocol conformance descriptor for AXRTextBlock);
  sub_23D80D6FC();

  v11 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, a1 + v11, v4);
  swift_getKeyPath();
  v16[0] = a2;
  sub_23D80D6FC();

  v13 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__id;
  swift_beginAccess();
  v12(v8, a2 + v13, v4);
  LOBYTE(v13) = _s23AccessibilityReaderData10AXRArticleV2eeoiySbAC_ACtFZ_0();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  return v13 & 1;
}

uint64_t sub_23D7D96F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D80D6CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F8, &qword_23D811650);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4B90, &unk_23D812418);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_23D790648(a1, &v21 - v13, &qword_27E2E43F8, &qword_23D811650);
  sub_23D790648(a2, &v14[v15], &qword_27E2E43F8, &qword_23D811650);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_23D790648(v14, v10, &qword_27E2E43F8, &qword_23D811650);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_23D7DB084(&qword_27E2E4B98, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
      v18 = sub_23D80DD3C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_23D790730(v14, &qword_27E2E43F8, &qword_23D811650);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_23D790730(v14, &qword_27E2E4B90, &unk_23D812418);
    v17 = 1;
    return v17 & 1;
  }

  sub_23D790730(v14, &qword_27E2E43F8, &qword_23D811650);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_23D7D9A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_23D80D5BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E43F0, &unk_23D811FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4B80, &qword_23D812410);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_23D790648(a1, &v21 - v13, &qword_27E2E43F0, &unk_23D811FD0);
  sub_23D790648(a2, &v14[v15], &qword_27E2E43F0, &unk_23D811FD0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_23D790648(v14, v10, &qword_27E2E43F0, &unk_23D811FD0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_23D7DB084(&qword_27E2E4B88, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
      v18 = sub_23D80DD3C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_23D790730(v14, &qword_27E2E43F0, &unk_23D811FD0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_23D790730(v14, &qword_27E2E4B80, &qword_23D812410);
    v17 = 1;
    return v17 & 1;
  }

  sub_23D790730(v14, &qword_27E2E43F0, &unk_23D811FD0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_23D7D9DD4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__characterCount;
  result = swift_beginAccess();
  *(v2 + v3) = v1;
  return result;
}

uint64_t sub_23D7D9EA0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 28);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__playbackSpeed;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 4) = v2;
  return result;
}

uint64_t sub_23D7D9F40()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__headingLevel;
  result = swift_beginAccess();
  *v3 = v1;
  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_23D7D9FE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_23D7DA084()
{
  result = qword_27E2E49C8;
  if (!qword_27E2E49C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2E49C8);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23D7DA1E8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + OBJC_IVAR____TtC23AccessibilityReaderData12AXRTextBlock__selectedLocalTextRange;
  result = swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

void sub_23D7DA2F0(uint64_t a1)
{
  sub_23D80D67C();
  if (v1 <= 0x3F)
  {
    sub_23D7DAF90(319, &qword_27E2E4B70, MEMORY[0x277CC9AF8]);
    if (v2 <= 0x3F)
    {
      sub_23D7DAF90(319, &qword_27E2E4B78, MEMORY[0x277CC8C40]);
      if (v3 <= 0x3F)
      {
        sub_23D80D73C();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_23D7DAF90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23D80E15C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23D7DAFE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D7DB02C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

uint64_t sub_23D7DB084(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AXRPlaybackSpeed.id.getter()
{
  v0 = sub_23D80D67C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D80D66C();
  v4 = sub_23D80D64C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double static AXRPlaybackSpeed.allCases.getter()
{
  swift_beginAccess();

  return result;
}

char *sub_23D7DB32C()
{
  result = sub_23D7DB3A8(0.8, 2.0, 0.1);
  qword_27E2E4BA8 = result;
  return result;
}

void AXRPlaybackSpeed.init(rawValue:)(uint64_t a1@<X8>, float a2@<S0>)
{
  if (a2 <= 0.8)
  {
    a2 = 0.8;
  }

  if (a2 > 2.0)
  {
    a2 = 2.0;
  }

  *a1 = a2;
  *(a1 + 4) = 0;
}

char *sub_23D7DB3A8(float a1, float a2, float a3)
{
  v6 = sub_23D7DF350(a1, a2, a3);
  v28 = MEMORY[0x277D84F90];
  result = sub_23D795458(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_57;
  }

  result = v28;
  v8 = 0;
  v9 = 0;
  if (!v6)
  {
    v10 = a1;
    goto LABEL_32;
  }

  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0.0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v16 = __OFADD__(v9++, 1);
    if (v16)
    {
      goto LABEL_56;
    }

    v17 = 0.8;
    if (v10 > 0.8)
    {
      v17 = v10;
    }

    v10 = a1 + (v9 * a3);
    if (v17 <= 2.0)
    {
      v15 = v17;
    }

    else
    {
      v15 = 2.0;
    }

LABEL_27:
    v29 = result;
    v19 = *(result + 2);
    v18 = *(result + 3);
    if (v19 >= v18 >> 1)
    {
      sub_23D795458((v18 > 1), v19 + 1, 1);
      result = v29;
    }

    *(result + 2) = v19 + 1;
    v20 = &result[8 * v19];
    *(v20 + 8) = v15;
    v20[36] = 0;
    if (!--v6)
    {
      while (1)
      {
LABEL_32:
        v21 = v10 <= a2;
        if (a3 > 0.0)
        {
          v21 = v10 >= a2;
        }

        if (v21)
        {
          if ((v10 != a2) | v8 & 1 || v9 == 0x8000000000000000)
          {
            return result;
          }

          if (v10 <= 2.0)
          {
            v22 = v10;
          }

          else
          {
            v22 = 2.0;
          }

          if (v10 > 0.8)
          {
            v23 = v22;
          }

          else
          {
            v23 = 0.8;
          }

          LOBYTE(v8) = 1;
        }

        else
        {
          v16 = __OFADD__(v9++, 1);
          if (v16)
          {
            __break(1u);
            goto LABEL_55;
          }

          v24 = 0.8;
          if (v10 > 0.8)
          {
            v24 = v10;
          }

          v10 = a1 + (v9 * a3);
          if (v24 <= 2.0)
          {
            v23 = v24;
          }

          else
          {
            v23 = 2.0;
          }
        }

        v30 = result;
        v26 = *(result + 2);
        v25 = *(result + 3);
        if (v26 >= v25 >> 1)
        {
          sub_23D795458((v25 > 1), v26 + 1, 1);
          result = v30;
        }

        *(result + 2) = v26 + 1;
        v27 = &result[8 * v26];
        *(v27 + 8) = v23;
        v27[36] = 0;
      }
    }
  }

  v13 = v10 != a2 || v9 == 0x8000000000000000;
  if (((v8 | v13) & 1) == 0)
  {
    if (v10 <= 2.0)
    {
      v14 = v10;
    }

    else
    {
      v14 = 2.0;
    }

    if (v10 > 0.8)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0.8;
    }

    v8 = 1;
    goto LABEL_27;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

double static AXRPlaybackSpeed.customCases.getter()
{
  if (qword_27E2E4238 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

uint64_t static AXRPlaybackSpeed.customCases.setter(uint64_t a1)
{
  if (qword_27E2E4238 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27E2E4BA8 = a1;
}

uint64_t (*static AXRPlaybackSpeed.customCases.modify(uint64_t a1))(void)
{
  if (qword_27E2E4238 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_23D7DB790@<D0>(void *a1@<X8>)
{
  if (qword_27E2E4238 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27E2E4BA8;

  return result;
}

uint64_t sub_23D7DB810(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27E2E4238;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27E2E4BA8 = v1;
}

double static AXRPlaybackSpeed.pickerCases.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_23D7DB8EC(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  *a2 = a1;
}

uint64_t sub_23D7DB990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a1;

  swift_beginAccess();
  *a5 = v6;
}

float AXRPlaybackSpeed.floatValue.getter()
{
  if (v0[4])
  {
    return flt_23D813668[*v0];
  }

  else
  {
    return *v0;
  }
}

uint64_t AXRPlaybackSpeed.hash(into:)()
{
  if (*(v0 + 4) != 1)
  {
    return sub_23D80E5AC();
  }

  switch(*v0)
  {
    case 1:
      v1 = 0x3FE999999999999ALL;
      break;
    case 2:
      v1 = 0x3FE8000000000000;
      break;
    case 3:
      v1 = 0x3FECCCCCCCCCCCCDLL;
      break;
    case 4:
      v1 = 0x3FF0000000000000;
      break;
    case 5:
      v1 = 0x3FF199999999999ALL;
      break;
    case 6:
      v1 = 0x3FF3333333333333;
      break;
    case 7:
      v1 = 0x3FF4000000000000;
      break;
    case 8:
      v1 = 0x3FF4CCCCCCCCCCCDLL;
      break;
    case 9:
      v1 = 0x3FF6666666666666;
      break;
    case 0xA:
      v1 = 0x3FF8000000000000;
      break;
    case 0xB:
      v1 = 0x3FF999999999999ALL;
      break;
    case 0xC:
      v1 = 0x3FFB333333333333;
      break;
    case 0xD:
      v1 = 0x3FFC000000000000;
      break;
    case 0xE:
      v1 = 0x3FFCCCCCCCCCCCCDLL;
      break;
    case 0xF:
      v1 = 0x3FFE666666666666;
      break;
    case 0x10:
      v1 = 0x4000000000000000;
      break;
    default:
      v1 = 0x3FE0000000000000;
      break;
  }

  return MEMORY[0x23EEECED0](v1);
}

unint64_t sub_23D7DBB7C(char a1)
{
  result = 1718378856;
  switch(a1)
  {
    case 1:
      result = 0x6E65547468676965;
      break;
    case 2:
      result = 0x6175516565726874;
      break;
    case 3:
      result = 0x746E6554656E696ELL;
      break;
    case 4:
      result = 0x6C616D726F6ELL;
      break;
    case 5:
      result = 0x6E4F646E41656E6FLL;
      break;
    case 6:
      result = 0x7754646E41656E6FLL;
      break;
    case 7:
      result = 0x5141646E41656E6FLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x6F46646E41656E6FLL;
      break;
    case 10:
      result = 0x4841646E41656E6FLL;
      break;
    case 11:
      result = 0x6953646E41656E6FLL;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0x694E646E41656E6FLL;
      break;
    case 16:
      result = 0x656C62756F64;
      break;
    case 17:
      result = 0x6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23D7DBE04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23D7E0E38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23D7DBE38(uint64_t a1)
{
  v2 = sub_23D7DF5B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DBE74(uint64_t a1)
{
  v2 = sub_23D7DF5B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DBEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23D80E4DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23D7DBF3C(uint64_t a1)
{
  v2 = sub_23D7DF608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DBF78(uint64_t a1)
{
  v2 = sub_23D7DF608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DBFC0@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_23D7DBFF0(uint64_t a1)
{
  v2 = sub_23D7DF65C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC02C(uint64_t a1)
{
  v2 = sub_23D7DF65C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC068(uint64_t a1)
{
  v2 = sub_23D7DFB48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC0A4(uint64_t a1)
{
  v2 = sub_23D7DFB48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC0E0(uint64_t a1)
{
  v2 = sub_23D7DFB9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC11C(uint64_t a1)
{
  v2 = sub_23D7DFB9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC158(uint64_t a1)
{
  v2 = sub_23D7DFAA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC194(uint64_t a1)
{
  v2 = sub_23D7DFAA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC1D0(uint64_t a1)
{
  v2 = sub_23D7DFA4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC20C(uint64_t a1)
{
  v2 = sub_23D7DFA4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC248(uint64_t a1)
{
  v2 = sub_23D7DF854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC284(uint64_t a1)
{
  v2 = sub_23D7DF854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC2C0(uint64_t a1)
{
  v2 = sub_23D7DF950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC2FC(uint64_t a1)
{
  v2 = sub_23D7DF950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC338(uint64_t a1)
{
  v2 = sub_23D7DF704();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC374(uint64_t a1)
{
  v2 = sub_23D7DF704();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC3B0(uint64_t a1)
{
  v2 = sub_23D7DF8A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC3EC(uint64_t a1)
{
  v2 = sub_23D7DF8A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC428(uint64_t a1)
{
  v2 = sub_23D7DF6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC464(uint64_t a1)
{
  v2 = sub_23D7DF6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC4A0(uint64_t a1)
{
  v2 = sub_23D7DF9F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC4DC(uint64_t a1)
{
  v2 = sub_23D7DF9F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC518(uint64_t a1)
{
  v2 = sub_23D7DF7AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC554(uint64_t a1)
{
  v2 = sub_23D7DF7AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC590(uint64_t a1)
{
  v2 = sub_23D7DF800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC5CC(uint64_t a1)
{
  v2 = sub_23D7DF800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC608(uint64_t a1)
{
  v2 = sub_23D7DF758();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC644(uint64_t a1)
{
  v2 = sub_23D7DF758();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC680(uint64_t a1)
{
  v2 = sub_23D7DF8FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC6BC(uint64_t a1)
{
  v2 = sub_23D7DF8FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC6F8(uint64_t a1)
{
  v2 = sub_23D7DF9A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC734(uint64_t a1)
{
  v2 = sub_23D7DF9A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23D7DC770(uint64_t a1)
{
  v2 = sub_23D7DFAF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23D7DC7AC(uint64_t a1)
{
  v2 = sub_23D7DFAF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AXRPlaybackSpeed.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BB8, &qword_23D8124B0);
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x28223BE20](v3);
  v101 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BC0, &qword_23D8124B8);
  v99 = *(v5 - 8);
  v100 = v5;
  MEMORY[0x28223BE20](v5);
  v98 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BC8, &qword_23D8124C0);
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x28223BE20](v7);
  v95 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BD0, &qword_23D8124C8);
  v93 = *(v9 - 8);
  v94 = v9;
  MEMORY[0x28223BE20](v9);
  v92 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BD8, &qword_23D8124D0);
  v90 = *(v11 - 8);
  v91 = v11;
  MEMORY[0x28223BE20](v11);
  v89 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BE0, &qword_23D8124D8);
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x28223BE20](v13);
  v86 = &v51 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BE8, &qword_23D8124E0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v51 - v15;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BF0, &qword_23D8124E8);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = &v51 - v16;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4BF8, &qword_23D8124F0);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v51 - v17;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C00, &qword_23D8124F8);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v51 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C08, &qword_23D812500);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v51 - v19;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C10, &qword_23D812508);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v51 - v20;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C18, &qword_23D812510);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v51 - v21;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C20, &qword_23D812518);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v51 - v22;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C28, &qword_23D812520);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v51 - v23;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C30, &qword_23D812528);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v56 = &v51 - v24;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C38, &qword_23D812530);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v51 - v25;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C40, &qword_23D812538);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v27 = &v51 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4C48, &qword_23D812540);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v51 - v30;
  v32 = *v1;
  v33 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D7DF5B4();
  sub_23D80E5EC();
  if (v33 == 1)
  {
    switch(v32)
    {
      case 1:
        v104 = 1;
        sub_23D7DFB48();
        v46 = v53;
        sub_23D80E42C();
        (*(v54 + 8))(v46, v55);
        return (*(v29 + 8))(v31, v28);
      case 2:
        v104 = 2;
        sub_23D7DFAF4();
        v43 = v56;
        sub_23D80E42C();
        (*(v57 + 8))(v43, v58);
        return (*(v29 + 8))(v31, v28);
      case 3:
        v104 = 3;
        sub_23D7DFAA0();
        v44 = v59;
        sub_23D80E42C();
        (*(v60 + 8))(v44, v61);
        return (*(v29 + 8))(v31, v28);
      case 4:
        v104 = 4;
        sub_23D7DFA4C();
        v41 = v62;
        sub_23D80E42C();
        (*(v63 + 8))(v41, v64);
        return (*(v29 + 8))(v31, v28);
      case 5:
        v104 = 5;
        sub_23D7DF9F8();
        v47 = v65;
        sub_23D80E42C();
        (*(v66 + 8))(v47, v67);
        return (*(v29 + 8))(v31, v28);
      case 6:
        v104 = 6;
        sub_23D7DF9A4();
        v48 = v68;
        sub_23D80E42C();
        (*(v69 + 8))(v48, v70);
        return (*(v29 + 8))(v31, v28);
      case 7:
        v104 = 7;
        sub_23D7DF950();
        v45 = v71;
        sub_23D80E42C();
        (*(v72 + 8))(v45, v73);
        return (*(v29 + 8))(v31, v28);
      case 8:
        v104 = 8;
        sub_23D7DF8FC();
        v50 = v74;
        sub_23D80E42C();
        (*(v75 + 8))(v50, v76);
        return (*(v29 + 8))(v31, v28);
      case 9:
        v104 = 9;
        sub_23D7DF8A8();
        v42 = v77;
        sub_23D80E42C();
        (*(v78 + 8))(v42, v79);
        return (*(v29 + 8))(v31, v28);
      case 10:
        v104 = 10;
        sub_23D7DF854();
        v49 = v80;
        sub_23D80E42C();
        (*(v81 + 8))(v49, v82);
        return (*(v29 + 8))(v31, v28);
      case 11:
        v104 = 11;
        sub_23D7DF800();
        v40 = v83;
        sub_23D80E42C();
        (*(v84 + 8))(v40, v85);
        return (*(v29 + 8))(v31, v28);
      case 12:
        v104 = 12;
        sub_23D7DF7AC();
        v37 = v86;
        sub_23D80E42C();
        v39 = v87;
        v38 = v88;
        goto LABEL_18;
      case 13:
        v104 = 13;
        sub_23D7DF758();
        v37 = v89;
        sub_23D80E42C();
        v39 = v90;
        v38 = v91;
        goto LABEL_18;
      case 14:
        v104 = 14;
        sub_23D7DF704();
        v37 = v92;
        sub_23D80E42C();
        v39 = v93;
        v38 = v94;
        goto LABEL_18;
      case 15:
        v104 = 15;
        sub_23D7DF6B0();
        v37 = v95;
        sub_23D80E42C();
        v39 = v96;
        v38 = v97;
        goto LABEL_18;
      case 16:
        v104 = 16;
        sub_23D7DF65C();
        v37 = v98;
        sub_23D80E42C();
        v39 = v99;
        v38 = v100;
LABEL_18:
        (*(v39 + 8))(v37, v38);
        break;
      default:
        v104 = 0;
        sub_23D7DFB9C();
        sub_23D80E42C();
        (*(v51 + 8))(v27, v52);
        break;
    }

    return (*(v29 + 8))(v31, v28);
  }

  else
  {
    v104 = 17;
    sub_23D7DF608();
    v34 = v101;
    sub_23D80E42C();
    v35 = v103;
    sub_23D80E47C();
    (*(v102 + 8))(v34, v35);
    return (*(v29 + 8))(v31, v28);
  }
}

uint64_t AXRPlaybackSpeed.hashValue.getter()
{
  sub_23D80E58C();
  AXRPlaybackSpeed.hash(into:)();
  return sub_23D80E5CC();
}

uint64_t AXRPlaybackSpeed.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4CE8, &qword_23D812548);
  v138 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v134 = v83 - v3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4CF0, &qword_23D812550);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v133 = v83 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4CF8, &qword_23D812558);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v132 = v83 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D00, &qword_23D812560);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v131 = v83 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D08, &qword_23D812568);
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v130 = v83 - v7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D10, &qword_23D812570);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v129 = v83 - v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D18, &qword_23D812578);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v128 = v83 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D20, &qword_23D812580);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v127 = v83 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D28, &qword_23D812588);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v126 = v83 - v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D30, &qword_23D812590);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v125 = v83 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D38, &qword_23D812598);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v124 = v83 - v13;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D40, &qword_23D8125A0);
  v100 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v137 = v83 - v14;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D48, &qword_23D8125A8);
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v136 = v83 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D50, &qword_23D8125B0);
  v96 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v123 = v83 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D58, &qword_23D8125B8);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v122 = v83 - v17;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D60, &qword_23D8125C0);
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v135 = v83 - v18;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D68, &qword_23D8125C8);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v20 = v83 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D70, &qword_23D8125D0);
  v88 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v83 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D78, &qword_23D8125D8);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v83 - v26;
  v28 = a1[3];
  v140 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_23D7DF5B4();
  v29 = v141;
  sub_23D80E5DC();
  if (v29)
  {
LABEL_43:
    v82 = v140;
    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v85 = v23;
  v84 = v21;
  v86 = v20;
  v30 = v135;
  v31 = v136;
  v32 = v137;
  v33 = v138;
  v87 = 0;
  v141 = v25;
  v34 = v139;
  v35 = sub_23D80E41C();
  if (*(v35 + 16) != 1 || (v36 = *(v35 + 32), v36 == 18))
  {
    v41 = sub_23D80E29C();
    swift_allocError();
    v42 = v27;
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4D80, &qword_23D8125E0);
    *v44 = &type metadata for AXRPlaybackSpeed;
    sub_23D80E38C();
    sub_23D80E28C();
    (*(*(v41 - 8) + 104))(v44, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v141 + 8))(v42, v24);
LABEL_42:
    swift_unknownObjectRelease();
    goto LABEL_43;
  }

  v83[1] = v35;
  switch(v36)
  {
    case 1:
      v142 = 1;
      sub_23D7DFB48();
      v65 = v86;
      v66 = v87;
      sub_23D80E37C();
      if (v66)
      {
        goto LABEL_41;
      }

      (*(v89 + 8))(v65, v90);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v40 = 1;
      goto LABEL_47;
    case 2:
      v142 = 2;
      sub_23D7DFAF4();
      v58 = v87;
      sub_23D80E37C();
      if (v58)
      {
        goto LABEL_41;
      }

      (*(v92 + 8))(v30, v93);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 2;
      goto LABEL_46;
    case 3:
      v142 = 3;
      sub_23D7DFAA0();
      v61 = v122;
      v62 = v87;
      sub_23D80E37C();
      if (v62)
      {
        goto LABEL_41;
      }

      (*(v94 + 8))(v61, v95);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 3;
      goto LABEL_46;
    case 4:
      v142 = 4;
      sub_23D7DFA4C();
      v52 = v123;
      v53 = v87;
      sub_23D80E37C();
      if (v53)
      {
        goto LABEL_41;
      }

      (*(v96 + 8))(v52, v91);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 4;
      goto LABEL_46;
    case 5:
      v142 = 5;
      sub_23D7DF9F8();
      v72 = v87;
      sub_23D80E37C();
      if (v72)
      {
        goto LABEL_41;
      }

      (*(v98 + 8))(v31, v97);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 5;
      goto LABEL_46;
    case 6:
      v142 = 6;
      sub_23D7DF9A4();
      v75 = v87;
      sub_23D80E37C();
      if (v75)
      {
        goto LABEL_41;
      }

      (*(v100 + 8))(v32, v99);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 6;
      goto LABEL_46;
    case 7:
      v142 = 7;
      sub_23D7DF950();
      v63 = v124;
      v64 = v87;
      sub_23D80E37C();
      if (v64)
      {
        goto LABEL_41;
      }

      (*(v101 + 8))(v63, v102);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 7;
      goto LABEL_46;
    case 8:
      v142 = 8;
      sub_23D7DF8FC();
      v78 = v125;
      v79 = v87;
      sub_23D80E37C();
      if (v79)
      {
        goto LABEL_41;
      }

      (*(v103 + 8))(v78, v104);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 8;
      goto LABEL_46;
    case 9:
      v142 = 9;
      sub_23D7DF8A8();
      v56 = v126;
      v57 = v87;
      sub_23D80E37C();
      if (v57)
      {
        goto LABEL_41;
      }

      (*(v105 + 8))(v56, v106);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 9;
      goto LABEL_46;
    case 10:
      v142 = 10;
      sub_23D7DF854();
      v76 = v127;
      v77 = v87;
      sub_23D80E37C();
      if (v77)
      {
        goto LABEL_41;
      }

      (*(v107 + 8))(v76, v108);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 10;
      goto LABEL_46;
    case 11:
      v142 = 11;
      sub_23D7DF800();
      v50 = v128;
      v51 = v87;
      sub_23D80E37C();
      if (v51)
      {
        goto LABEL_41;
      }

      (*(v109 + 8))(v50, v110);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 11;
      goto LABEL_46;
    case 12:
      v142 = 12;
      sub_23D7DF7AC();
      v54 = v129;
      v55 = v87;
      sub_23D80E37C();
      if (v55)
      {
        goto LABEL_41;
      }

      (*(v111 + 8))(v54, v112);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 12;
      goto LABEL_46;
    case 13:
      v142 = 13;
      sub_23D7DF758();
      v73 = v130;
      v74 = v87;
      sub_23D80E37C();
      if (v74)
      {
        goto LABEL_41;
      }

      (*(v113 + 8))(v73, v114);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 13;
      goto LABEL_46;
    case 14:
      v142 = 14;
      sub_23D7DF704();
      v48 = v131;
      v49 = v87;
      sub_23D80E37C();
      if (v49)
      {
        goto LABEL_41;
      }

      (*(v115 + 8))(v48, v116);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 14;
      goto LABEL_46;
    case 15:
      v142 = 15;
      sub_23D7DF6B0();
      v59 = v132;
      v60 = v87;
      sub_23D80E37C();
      if (v60)
      {
        goto LABEL_41;
      }

      (*(v117 + 8))(v59, v118);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 15;
      goto LABEL_46;
    case 16:
      v142 = 16;
      sub_23D7DF65C();
      v45 = v133;
      v46 = v87;
      sub_23D80E37C();
      if (v46)
      {
        goto LABEL_41;
      }

      (*(v119 + 8))(v45, v120);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v47 = 16;
LABEL_46:
      v40 = v47;
      goto LABEL_47;
    case 17:
      v142 = 17;
      sub_23D7DF608();
      v67 = v134;
      v68 = v87;
      sub_23D80E37C();
      if (v68)
      {
        goto LABEL_41;
      }

      v69 = v121;
      sub_23D80E3EC();
      v70 = v140;
      v71 = v141;
      v40 = v81;
      (*(v33 + 8))(v67, v69);
      (*(v71 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 0;
      v82 = v70;
      goto LABEL_48;
    default:
      v142 = 0;
      sub_23D7DFB9C();
      v37 = v85;
      v38 = v87;
      sub_23D80E37C();
      if (v38)
      {
LABEL_41:
        (*(v141 + 8))(v27, v24);
        goto LABEL_42;
      }

      (*(v88 + 8))(v37, v84);
      (*(v141 + 8))(v27, v24);
      swift_unknownObjectRelease();
      v39 = 1;
      v40 = 0;
LABEL_47:
      v82 = v140;
LABEL_48:
      *v34 = v40;
      *(v34 + 4) = v39;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

double sub_23D7DF148@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_27E2E4BA0;

  return result;
}

uint64_t sub_23D7DF19C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23D80D67C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D80D66C();
  v6 = sub_23D80D64C();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_23D7DF2A8()
{
  sub_23D80E58C();
  AXRPlaybackSpeed.hash(into:)();
  return sub_23D80E5CC();
}

uint64_t sub_23D7DF300(uint64_t a1)
{
  sub_23D80E58C();
  AXRPlaybackSpeed.hash(into:)();
  return sub_23D80E5CC();
}

uint64_t sub_23D7DF350(float a1, float a2, float a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + (v5 * a3);
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

BOOL _s23AccessibilityReaderData16AXRPlaybackSpeedO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  if (*(a1 + 4) == 1)
  {
    switch(*a1)
    {
      case 1:
        if (LODWORD(v2) != 1)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 2:
        if (LODWORD(v2) != 2)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 3:
        if (LODWORD(v2) != 3)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 4:
        if (LODWORD(v2) != 4)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 5:
        if (LODWORD(v2) != 5)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 6:
        if (LODWORD(v2) != 6)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 7:
        if (LODWORD(v2) != 7)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 8:
        if (LODWORD(v2) != 8)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 9:
        if (LODWORD(v2) != 9)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xA:
        if (LODWORD(v2) != 10)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xB:
        if (LODWORD(v2) != 11)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xC:
        if (LODWORD(v2) != 12)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xD:
        if (LODWORD(v2) != 13)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xE:
        if (LODWORD(v2) != 14)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0xF:
        if (LODWORD(v2) != 15)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      case 0x10:
        if (LODWORD(v2) <= 0xF)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
      default:
        if (v2 != 0.0)
        {
          v3 = 0;
        }

        if ((v3 & 1) == 0)
        {
          return 0;
        }

        result = 1;
        break;
    }
  }

  else
  {
    return (*(a2 + 4) & 1) == 0 && *a1 == v2;
  }

  return result;
}

unint64_t sub_23D7DF5B4()
{
  result = qword_27E2E4C50;
  if (!qword_27E2E4C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C50);
  }

  return result;
}

unint64_t sub_23D7DF608()
{
  result = qword_27E2E4C58;
  if (!qword_27E2E4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C58);
  }

  return result;
}

unint64_t sub_23D7DF65C()
{
  result = qword_27E2E4C60;
  if (!qword_27E2E4C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C60);
  }

  return result;
}

unint64_t sub_23D7DF6B0()
{
  result = qword_27E2E4C68;
  if (!qword_27E2E4C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C68);
  }

  return result;
}

unint64_t sub_23D7DF704()
{
  result = qword_27E2E4C70;
  if (!qword_27E2E4C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C70);
  }

  return result;
}

unint64_t sub_23D7DF758()
{
  result = qword_27E2E4C78;
  if (!qword_27E2E4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C78);
  }

  return result;
}

unint64_t sub_23D7DF7AC()
{
  result = qword_27E2E4C80;
  if (!qword_27E2E4C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C80);
  }

  return result;
}

unint64_t sub_23D7DF800()
{
  result = qword_27E2E4C88;
  if (!qword_27E2E4C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C88);
  }

  return result;
}

unint64_t sub_23D7DF854()
{
  result = qword_27E2E4C90;
  if (!qword_27E2E4C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C90);
  }

  return result;
}

unint64_t sub_23D7DF8A8()
{
  result = qword_27E2E4C98;
  if (!qword_27E2E4C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4C98);
  }

  return result;
}

unint64_t sub_23D7DF8FC()
{
  result = qword_27E2E4CA0;
  if (!qword_27E2E4CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CA0);
  }

  return result;
}

unint64_t sub_23D7DF950()
{
  result = qword_27E2E4CA8;
  if (!qword_27E2E4CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CA8);
  }

  return result;
}

unint64_t sub_23D7DF9A4()
{
  result = qword_27E2E4CB0;
  if (!qword_27E2E4CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CB0);
  }

  return result;
}

unint64_t sub_23D7DF9F8()
{
  result = qword_27E2E4CB8;
  if (!qword_27E2E4CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CB8);
  }

  return result;
}

unint64_t sub_23D7DFA4C()
{
  result = qword_27E2E4CC0;
  if (!qword_27E2E4CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CC0);
  }

  return result;
}

unint64_t sub_23D7DFAA0()
{
  result = qword_27E2E4CC8;
  if (!qword_27E2E4CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CC8);
  }

  return result;
}

unint64_t sub_23D7DFAF4()
{
  result = qword_27E2E4CD0;
  if (!qword_27E2E4CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CD0);
  }

  return result;
}

unint64_t sub_23D7DFB48()
{
  result = qword_27E2E4CD8;
  if (!qword_27E2E4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CD8);
  }

  return result;
}

unint64_t sub_23D7DFB9C()
{
  result = qword_27E2E4CE0;
  if (!qword_27E2E4CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4CE0);
  }

  return result;
}

unint64_t sub_23D7DFBF4()
{
  result = qword_27E2E4D88;
  if (!qword_27E2E4D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2E4D90, &qword_23D8125E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4D88);
  }

  return result;
}

unint64_t sub_23D7DFC5C()
{
  result = qword_27E2E4D98;
  if (!qword_27E2E4D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4D98);
  }

  return result;
}

double keypath_getTm@<D0>(uint64_t *a1@<X3>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AXRPlaybackSpeed(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AXRPlaybackSpeed(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_23D7DFDBC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23D7DFDD8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AXRPlaybackSpeed.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AXRPlaybackSpeed.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D7E007C()
{
  result = qword_27E2E4DA0;
  if (!qword_27E2E4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DA0);
  }

  return result;
}

unint64_t sub_23D7E00D4()
{
  result = qword_27E2E4DA8;
  if (!qword_27E2E4DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DA8);
  }

  return result;
}

unint64_t sub_23D7E012C()
{
  result = qword_27E2E4DB0;
  if (!qword_27E2E4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DB0);
  }

  return result;
}

unint64_t sub_23D7E0184()
{
  result = qword_27E2E4DB8;
  if (!qword_27E2E4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DB8);
  }

  return result;
}

unint64_t sub_23D7E01DC()
{
  result = qword_27E2E4DC0;
  if (!qword_27E2E4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DC0);
  }

  return result;
}

unint64_t sub_23D7E0234()
{
  result = qword_27E2E4DC8;
  if (!qword_27E2E4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DC8);
  }

  return result;
}

unint64_t sub_23D7E028C()
{
  result = qword_27E2E4DD0;
  if (!qword_27E2E4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DD0);
  }

  return result;
}

unint64_t sub_23D7E02E4()
{
  result = qword_27E2E4DD8;
  if (!qword_27E2E4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DD8);
  }

  return result;
}

unint64_t sub_23D7E033C()
{
  result = qword_27E2E4DE0;
  if (!qword_27E2E4DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DE0);
  }

  return result;
}

unint64_t sub_23D7E0394()
{
  result = qword_27E2E4DE8;
  if (!qword_27E2E4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DE8);
  }

  return result;
}

unint64_t sub_23D7E03EC()
{
  result = qword_27E2E4DF0;
  if (!qword_27E2E4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DF0);
  }

  return result;
}

unint64_t sub_23D7E0444()
{
  result = qword_27E2E4DF8;
  if (!qword_27E2E4DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4DF8);
  }

  return result;
}

unint64_t sub_23D7E049C()
{
  result = qword_27E2E4E00;
  if (!qword_27E2E4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E00);
  }

  return result;
}

unint64_t sub_23D7E04F4()
{
  result = qword_27E2E4E08;
  if (!qword_27E2E4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E08);
  }

  return result;
}

unint64_t sub_23D7E054C()
{
  result = qword_27E2E4E10;
  if (!qword_27E2E4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E10);
  }

  return result;
}

unint64_t sub_23D7E05A4()
{
  result = qword_27E2E4E18;
  if (!qword_27E2E4E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E18);
  }

  return result;
}

unint64_t sub_23D7E05FC()
{
  result = qword_27E2E4E20;
  if (!qword_27E2E4E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E20);
  }

  return result;
}

unint64_t sub_23D7E0654()
{
  result = qword_27E2E4E28;
  if (!qword_27E2E4E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E28);
  }

  return result;
}

unint64_t sub_23D7E06AC()
{
  result = qword_27E2E4E30;
  if (!qword_27E2E4E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E30);
  }

  return result;
}

unint64_t sub_23D7E0704()
{
  result = qword_27E2E4E38;
  if (!qword_27E2E4E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E38);
  }

  return result;
}

unint64_t sub_23D7E075C()
{
  result = qword_27E2E4E40;
  if (!qword_27E2E4E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E40);
  }

  return result;
}

unint64_t sub_23D7E07B4()
{
  result = qword_27E2E4E48;
  if (!qword_27E2E4E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E48);
  }

  return result;
}

unint64_t sub_23D7E080C()
{
  result = qword_27E2E4E50;
  if (!qword_27E2E4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E50);
  }

  return result;
}

unint64_t sub_23D7E0864()
{
  result = qword_27E2E4E58;
  if (!qword_27E2E4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E58);
  }

  return result;
}

unint64_t sub_23D7E08BC()
{
  result = qword_27E2E4E60;
  if (!qword_27E2E4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E60);
  }

  return result;
}

unint64_t sub_23D7E0914()
{
  result = qword_27E2E4E68;
  if (!qword_27E2E4E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E68);
  }

  return result;
}

unint64_t sub_23D7E096C()
{
  result = qword_27E2E4E70;
  if (!qword_27E2E4E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E70);
  }

  return result;
}

unint64_t sub_23D7E09C4()
{
  result = qword_27E2E4E78;
  if (!qword_27E2E4E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E78);
  }

  return result;
}

unint64_t sub_23D7E0A1C()
{
  result = qword_27E2E4E80;
  if (!qword_27E2E4E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E80);
  }

  return result;
}

unint64_t sub_23D7E0A74()
{
  result = qword_27E2E4E88;
  if (!qword_27E2E4E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E88);
  }

  return result;
}

unint64_t sub_23D7E0ACC()
{
  result = qword_27E2E4E90;
  if (!qword_27E2E4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E90);
  }

  return result;
}

unint64_t sub_23D7E0B24()
{
  result = qword_27E2E4E98;
  if (!qword_27E2E4E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4E98);
  }

  return result;
}

unint64_t sub_23D7E0B7C()
{
  result = qword_27E2E4EA0;
  if (!qword_27E2E4EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EA0);
  }

  return result;
}

unint64_t sub_23D7E0BD4()
{
  result = qword_27E2E4EA8;
  if (!qword_27E2E4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EA8);
  }

  return result;
}

unint64_t sub_23D7E0C2C()
{
  result = qword_27E2E4EB0;
  if (!qword_27E2E4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EB0);
  }

  return result;
}

unint64_t sub_23D7E0C84()
{
  result = qword_27E2E4EB8;
  if (!qword_27E2E4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EB8);
  }

  return result;
}

unint64_t sub_23D7E0CDC()
{
  result = qword_27E2E4EC0;
  if (!qword_27E2E4EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EC0);
  }

  return result;
}

unint64_t sub_23D7E0D34()
{
  result = qword_27E2E4EC8;
  if (!qword_27E2E4EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4EC8);
  }

  return result;
}

unint64_t sub_23D7E0D8C()
{
  result = qword_27E2E4ED0;
  if (!qword_27E2E4ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4ED0);
  }

  return result;
}

unint64_t sub_23D7E0DE4()
{
  result = qword_27E2E4ED8;
  if (!qword_27E2E4ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2E4ED8);
  }

  return result;
}

uint64_t sub_23D7E0E38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1718378856 && a2 == 0xE400000000000000;
  if (v3 || (sub_23D80E4DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65547468676965 && a2 == 0xEA00000000006874 || (sub_23D80E4DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6175516565726874 && a2 == 0xED00007372657472 || (sub_23D80E4DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E6554656E696ELL && a2 == 0xE900000000000068 || (sub_23D80E4DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E4F646E41656E6FLL && a2 == 0xEE0068746E655465 || (sub_23D80E4DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7754646E41656E6FLL && a2 == 0xEE0068746E65546FLL || (sub_23D80E4DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5141646E41656E6FLL && a2 == 0xEE00726574726175 || (sub_23D80E4DC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023D816790 == a2 || (sub_23D80E4DC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F46646E41656E6FLL && a2 == 0xEF68746E65547275 || (sub_23D80E4DC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4841646E41656E6FLL && a2 == 0xEB00000000666C61 || (sub_23D80E4DC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6953646E41656E6FLL && a2 == 0xEE0068746E655478 || (sub_23D80E4DC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023D8167B0 == a2 || (sub_23D80E4DC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023D8167D0 == a2 || (sub_23D80E4DC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x800000023D8167F0 == a2 || (sub_23D80E4DC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x694E646E41656E6FLL && a2 == 0xEF68746E6554656ELL || (sub_23D80E4DC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_23D80E4DC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 17;
  }

  else
  {
    v6 = sub_23D80E4DC();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_23D7E1424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a4;
  v27 = a5;
  v23[3] = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v24 = *(v9 - 8);
  v25 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = sub_23D80D97C();
  MEMORY[0x28223BE20](v12);
  v32 = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27E2E4618;
  v28 = a2;
  v29 = a3;
  v14 = sub_23D80DD4C();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    v16 = sub_23D80D62C();
    v18 = v17;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4750, "@~");
    sub_23D800378(&qword_27E2E5280, sub_23D7FCC14, MEMORY[0x277D84F58]);
    sub_23D80D44C();

    v30[0] = v31;

    sub_23D80D9CC();
    sub_23D7AE088(v16, v18);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4750, "@~");
    sub_23D80D9CC();
  }

  v19 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  v20 = swift_allocObject();
  *(v20 + 16) = v28;
  *(v20 + 24) = v19;
  sub_23D7CE9C0(&qword_27E2E5278, &qword_27E2E4EF8, &qword_23D813700, MEMORY[0x277CBCEC8]);
  v21 = v25;
  sub_23D80DA3C();

  (*(v24 + 8))(v11, v21);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(v26, v27);
}

uint64_t sub_23D7E1A08@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v25 = a6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  v12 = sub_23D80D97C();
  MEMORY[0x28223BE20](v12);
  v29[87] = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27E2E4618;
  v28 = a2;
  v14 = sub_23D80DD4C();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    v16 = sub_23D80D62C();
    v18 = v17;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7AE034();
    sub_23D80D44C();

    v29[0] = v29[32];
    sub_23D80D9CC();
    sub_23D7AE088(v16, v18);
  }

  else
  {
    sub_23D80D9CC();
  }

  v19 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9DC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E5270, &qword_27E2E4648, &qword_23D8104E8, MEMORY[0x277CBCEC8]);
  v21 = v26;
  sub_23D80DA3C();

  (*(v24 + 8))(v11, v21);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a4, v27);
}

uint64_t sub_23D7E1F6C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v25 = a6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  v12 = sub_23D80D97C();
  MEMORY[0x28223BE20](v12);
  v29[87] = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27E2E4618;
  v28 = a2;
  v14 = sub_23D80DD4C();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    v16 = sub_23D80D62C();
    v18 = v17;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D80D44C();

    v29[0] = v29[32];
    sub_23D80D9CC();
    sub_23D7AE088(v16, v18);
  }

  else
  {
    sub_23D80D9CC();
  }

  v19 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E5268, &qword_27E2E4978, &qword_23D811980, MEMORY[0x277CBCEC8]);
  v21 = v26;
  sub_23D80DA3C();

  (*(v24 + 8))(v11, v21);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a4, v27);
}

uint64_t sub_23D7E24D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v27 = a4;
  v25 = a5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  v12 = sub_23D80D97C();
  MEMORY[0x28223BE20](v12);
  *&v29[10] = a6;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27E2E4618;
  v28 = a1;
  v14 = sub_23D80DD4C();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    v16 = sub_23D80D62C();
    v18 = v17;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D80D44C();

    v29[0] = v29[4];
    sub_23D80D9CC();
    sub_23D7AE088(v16, v18);
  }

  else
  {
    sub_23D80D9CC();
  }

  v19 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a2;
  sub_23D7CE9C0(&qword_27E2E5260, &qword_27E2E4988, &qword_23D811990, MEMORY[0x277CBCEC8]);
  v21 = v26;
  sub_23D80DA3C();

  (*(v24 + 8))(v11, v21);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a3, v27);
}

uint64_t sub_23D7E2A3C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v25 = a6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  v12 = sub_23D80D97C();
  MEMORY[0x28223BE20](v12);
  v29[87] = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27E2E4618;
  v28 = a2;
  v14 = sub_23D80DD4C();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    v16 = sub_23D80D62C();
    v18 = v17;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7FCC68();
    sub_23D80D44C();

    v29[0] = v29[32];
    sub_23D80D9CC();
    sub_23D7AE088(v16, v18);
  }

  else
  {
    sub_23D80D9CC();
  }

  v19 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9DC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E5258, &qword_27E2E4F68, &qword_23D813A80, MEMORY[0x277CBCEC8]);
  v21 = v26;
  sub_23D80DA3C();

  (*(v24 + 8))(v11, v21);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a4, v27);
}

uint64_t sub_23D7E2FA0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v25 = a6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F98, &qword_23D813BB0);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  v12 = sub_23D80D97C();
  MEMORY[0x28223BE20](v12);
  v29[87] = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27E2E4618;
  v28 = a2;
  v14 = sub_23D80DD4C();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    v16 = sub_23D80D62C();
    v18 = v17;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7FCCBC();
    sub_23D80D44C();

    v29[0] = v29[32];
    sub_23D80D9CC();
    sub_23D7AE088(v16, v18);
  }

  else
  {
    sub_23D80D9CC();
  }

  v19 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  sub_23D80D9DC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E5250, &qword_27E2E4F98, &qword_23D813BB0, MEMORY[0x277CBCEC8]);
  v21 = v26;
  sub_23D80DA3C();

  (*(v24 + 8))(v11, v21);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a4, v27);
}

uint64_t sub_23D7E3504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a4;
  v26 = a5;
  v23[5] = a6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FB0, &qword_23D813C08);
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = v23 - v10;
  v12 = sub_23D80D97C();
  v23[4] = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v28[10] = a1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27E2E4618;
  v27 = a2;
  v14 = sub_23D80DD4C();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    v16 = sub_23D80D62C();
    v18 = v17;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7FCC14();
    sub_23D80D44C();

    v28[0] = v28[4];

    sub_23D80D9CC();
    sub_23D7AE088(v16, v18);
  }

  else
  {
    sub_23D80D9CC();
  }

  v19 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  sub_23D80D9DC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E5248, &qword_27E2E4FB0, &qword_23D813C08, MEMORY[0x277CBCEC8]);
  v21 = v24;
  sub_23D80DA3C();

  (*(v9 + 8))(v11, v21);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(v25, v26);
}

uint64_t sub_23D7E3AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v29 = a6;
  v27 = a7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FD0, &qword_23D813CA8);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v13 = &v25 - v12;
  v14 = sub_23D80D97C();
  MEMORY[0x28223BE20](v14);
  v35 = a1;
  v36 = a2;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v30 = a3;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7FCD10();
    sub_23D80D44C();

    v31 = v33;
    v32 = v34;

    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    sub_23D80D9CC();
  }

  v21 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  sub_23D80D9DC();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a4;
  sub_23D7CE9C0(&qword_27E2E5240, &qword_27E2E4FD0, &qword_23D813CA8, MEMORY[0x277CBCEC8]);
  v23 = v28;
  sub_23D80DA3C();

  (*(v26 + 8))(v13, v23);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a5, v29);
}

uint64_t sub_23D7E4024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a5;
  v28 = a6;
  v25[4] = a7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v11 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v13 = v25 - v12;
  v14 = sub_23D80D97C();
  v25[3] = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v34 = a1;
  v35 = a2;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v29 = a3;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D80D44C();

    v30 = v32;
    v31 = v33;

    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    sub_23D80D9CC();
  }

  v21 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9DC();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a4;
  sub_23D7CE9C0(&qword_27E2E5238, &qword_27E2E4FE8, &qword_23D813D00, MEMORY[0x277CBCEC8]);
  v23 = v26;
  sub_23D80DA3C();

  (*(v11 + 8))(v13, v23);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(v27, v28);
}

uint64_t sub_23D7E45C8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v27 = a6;
  v24[5] = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5218, &unk_23D8147A8);
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = sub_23D80D97C();
  MEMORY[0x28223BE20](v14);
  v34 = a1;
  v35 = a2 & 1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_27E2E4618;
  v28 = a3;
  v29 = a4;
  v16 = sub_23D80DD4C();
  v17 = [v15 dataForKey_];

  if (v17)
  {
    v18 = sub_23D80D62C();
    v20 = v19;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5178, &qword_23D814578);
    sub_23D8001F8(&qword_27E2E5228, sub_23D7FCD64, MEMORY[0x277D84F58]);
    sub_23D80D44C();

    v30 = v32;
    v31 = v33;
    sub_23D80D9CC();
    sub_23D7AE088(v18, v20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5178, &qword_23D814578);
    sub_23D80D9CC();
  }

  v21 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5048, &qword_23D813F20);
  sub_23D80D9DC();
  v22 = swift_allocObject();
  *(v22 + 16) = v28;
  *(v22 + 24) = v21;
  sub_23D7CE9C0(&qword_27E2E5220, &qword_27E2E5218, &unk_23D8147A8, MEMORY[0x277CBCEC8]);
  sub_23D80DA3C();

  (*(v25 + 8))(v13, v11);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(v26, v27);
}

uint64_t sub_23D7E4BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v27 = a4;
  v25 = a5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5000, &qword_23D813D58);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  v12 = sub_23D80D97C();
  MEMORY[0x28223BE20](v12);
  *&v29[10] = a6;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27E2E4618;
  v28 = a1;
  v14 = sub_23D80DD4C();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    v16 = sub_23D80D62C();
    v18 = v17;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D7FCD64();
    sub_23D80D44C();

    v29[0] = v29[4];
    sub_23D80D9CC();
    sub_23D7AE088(v16, v18);
  }

  else
  {
    sub_23D80D9CC();
  }

  v19 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  sub_23D80D9DC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a2;
  sub_23D7CE9C0(&qword_27E2E5210, &qword_27E2E5000, &qword_23D813D58, MEMORY[0x277CBCEC8]);
  v21 = v26;
  sub_23D80DA3C();

  (*(v24 + 8))(v11, v21);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a3, v27);
}

uint64_t sub_23D7E511C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a4;
  v36 = a5;
  v39 = a1;
  v32 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5040, &qword_23D813F18);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v31 = &v29[-v9];
  v30 = sub_23D80D97C();
  MEMORY[0x28223BE20](v30);
  v10 = sub_23D80DAAC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v29[-v15];
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = qword_27E2E4618;
  v37 = a2;
  v38 = a3;
  v18 = sub_23D80DD4C();
  v19 = [v17 dataForKey_];

  if (v19)
  {
    v20 = sub_23D80D62C();
    v22 = v21;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D800130(&qword_27E2E50B8, MEMORY[0x277CDFA28], &protocol conformance descriptor for DynamicTypeSize);
    sub_23D80D44C();

    (*(v11 + 16))(v14, v16, v10);
    sub_23D80D9CC();
    sub_23D7AE088(v20, v22);
    (*(v11 + 8))(v16, v10);
  }

  else
  {
    (*(v11 + 16))(v14, v39, v10);
    sub_23D80D9CC();
  }

  v23 = v38;
  v24 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  v25 = v31;
  sub_23D80D9DC();
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v23;
  sub_23D7CE9C0(&qword_27E2E5208, &qword_27E2E5040, &qword_23D813F18, MEMORY[0x277CBCEC8]);
  v27 = v34;
  sub_23D80DA3C();

  (*(v33 + 8))(v25, v27);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  sub_23D7A055C(v35, v36);
  return (*(v11 + 8))(v39, v10);
}

uint64_t sub_23D7E57E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v25 = a6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D8, &qword_23D813F90);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v11 = &v23 - v10;
  v12 = sub_23D80D97C();
  MEMORY[0x28223BE20](v12);
  v33 = a1;
  v34 = BYTE4(a1) & 1;
  if (qword_27E2E4230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_27E2E4618;
  v28 = a2;
  v14 = sub_23D80DD4C();
  v15 = [v13 dataForKey_];

  if (v15)
  {
    v16 = sub_23D80D62C();
    v18 = v17;

    sub_23D80D46C();
    swift_allocObject();
    sub_23D80D45C();
    sub_23D8000DC();
    sub_23D80D44C();

    v29 = v31;
    v30 = v32;
    sub_23D80D9CC();
    sub_23D7AE088(v16, v18);
  }

  else
  {
    sub_23D80D9CC();
  }

  v19 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E50D0, &qword_23D813F88);
  sub_23D80D9DC();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = a3;
  sub_23D7CE9C0(&qword_27E2E51D8, &qword_27E2E50D8, &qword_23D813F90, MEMORY[0x277CBCEC8]);
  v21 = v26;
  sub_23D80DA3C();

  (*(v24 + 8))(v11, v21);
  if (qword_27E2E4240 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_23D80D98C();
  swift_endAccess();

  return sub_23D7A055C(a4, v27);
}

void (*sub_23D7E5D84(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E5E28(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E5FC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E6100(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customReaderBackgroundColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E6298(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E633C(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E64DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E6614(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customSelectedTextColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E67D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7B9440;
}

uint64_t sub_23D7E6878(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E6A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E6B50(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeReaderBackgroundColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7A3B84;
}

void (*sub_23D7E6D10(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E6DB4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E6F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E708C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeSelectedTextColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7E7224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7E7290(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E7334(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E74D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E760C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF8, &qword_23D813700);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customLinkColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E77CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E7870(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E7A10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E7B48(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__theme;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E7D08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E7DAC(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E7F4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E8084(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4648, &qword_23D8104E8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lastNonCustomTheme;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E821C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E82C0(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E8460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E8598(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__textBold;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E8758(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E87FC(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E899C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E8AD4(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacing;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E8C94(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E8D38(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E8ED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E9010(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacing;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7E91D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E9274(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E9414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E954C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacing;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

double sub_23D7E96D0@<D0>(double *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t sub_23D7E9760(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

double sub_23D7E97EC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v3);

  return v3;
}

uint64_t sub_23D7E986C(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7E98DC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7E9980(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7E9B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7E9C58(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4988, &qword_23D811990);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__contentWidthRegular;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7E9DC8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t (*sub_23D7E9ED8(void *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v2 = a1 + 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v2);

  return sub_23D7E9F70;
}

uint64_t sub_23D7E9F98(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EA138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EA270(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacingOption;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EA3E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t (*sub_23D7EA508(void *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v2 = a1 + 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v2);

  return sub_23D7EA5A0;
}

uint64_t sub_23D7EA5C8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  *(a1 + 9) = v7;

  v8 = sub_23D80DA1C();
  return a5(v8);
}

uint64_t sub_23D7EA64C(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EA7EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EA924(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacingOption;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EAA94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t (*sub_23D7EABA4(void *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v2 = a1 + 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v2);

  return sub_23D7EAC3C;
}

uint64_t sub_23D7EAC64(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EAE04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EAF3C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacingOption;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EB0AC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

uint64_t sub_23D7EB1C4(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_23D80DA1C();
  return a4(v5);
}

uint64_t (*sub_23D7EB244(void *a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  v2 = a1 + 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v2);

  return sub_23D7EB2DC;
}

uint64_t sub_23D7EB304(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EB4A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EB5DC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F68, &qword_23D813A80);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__marginSpacingOption;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

double sub_23D7EB74C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  return dbl_23D8147B8[v1];
}

uint64_t sub_23D7EB7E0@<X0>(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(a3);
}

uint64_t sub_23D7EB864(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7EB8D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EB974(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F98, &qword_23D813BB0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EBB14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F98, &qword_23D813BB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EBC4C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F98, &qword_23D813BB0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightStyle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EBDBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  return v1;
}

uint64_t sub_23D7EBE30(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7EBEA0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EBF44(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FB0, &qword_23D813C08);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EC0E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FB0, &qword_23D813C08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EC21C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FB0, &qword_23D813C08);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7EC3B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EC458(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EC5F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EC730(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightFollowsTextColor;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EC8A0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(a1);
}

uint64_t sub_23D7EC918(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7EC990(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7ECA34(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FD0, &qword_23D813CA8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7ECBD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FD0, &qword_23D813CA8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7ECD0C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FD0, &qword_23D813CA8);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7ECE7C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_23D7ECEFC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7ECFA8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7ED04C(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7ED1EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7ED324(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontVariantName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7ED494()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v7);

  if (v7 == 0x6D6574737953 && v8 == 0xE600000000000000)
  {
  }

  else
  {
    v1 = sub_23D80E4DC();

    v2 = 0;
    if ((v1 & 1) == 0)
    {
      return v2 & 1;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v7);

  v4 = v7;
  v3 = v8;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(&v7);

    if (v7 == 0xD000000000000012 && 0x800000023D815B10 == v8)
    {
      v2 = 1;
    }

    else
    {
      v2 = sub_23D80E4DC();
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_23D7ED660()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  return v1;
}

double sub_23D7ED6D8@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_23D7ED758(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

double sub_23D7ED7D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  return v1;
}

uint64_t sub_23D7ED848(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7ED8C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7ED964(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5000, &qword_23D813D58);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EDB04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5000, &qword_23D813D58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EDC3C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5000, &qword_23D813D58);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__defaultFontPointSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EDDAC@<X0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v5);

  v4 = v5;
  if (v6)
  {
    v4 = 12.0;
  }

  *a2 = v4;
  return result;
}

double sub_23D7EDE3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v1);

  result = v1;
  if (v2)
  {
    return 12.0;
  }

  return result;
}

uint64_t sub_23D7EDEC0(double a1)
{
  if (a1 > 288.0)
  {
    a1 = 288.0;
  }

  v1 = fmax(a1, 9.0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v3);

  if ((v4 & 1) != 0 || v3 != v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    v4 = 0;

    return sub_23D80DA1C();
  }

  return result;
}

uint64_t (*sub_23D7EDFA8(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(a1);

  v3 = *a1;
  if (*(a1 + 8))
  {
    v3 = 12.0;
  }

  *(a1 + 16) = v3;
  return sub_23D7EE04C;
}

uint64_t sub_23D7EE074()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7EE110(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EE1B4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EE354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EE48C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highLegibility;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7EE624(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EE6C8(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EE868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EE9A0(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EEB24(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v3);

  return v3;
}

uint64_t sub_23D7EEBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23D80DA1C();
}

void (*sub_23D7EEC1C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EECC0(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EEE60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EEF98(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE8, &qword_23D813D00);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__modelName;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

void (*sub_23D7EF130(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EF1D4(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EF374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EF4AC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4978, &qword_23D811980);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__showLinks;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EF61C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(a1);
}

uint64_t sub_23D7EF694(uint64_t a1)
{
  v2 = sub_23D80DAAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v3 + 16))(v5, a1, v2);

  sub_23D80DA1C();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_23D7EF7BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23D80D9FC();
  return sub_23D7CECBC;
}

uint64_t sub_23D7EF860(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5040, &qword_23D813F18);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_23D7EFA00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5040, &qword_23D813F18);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  sub_23D80D9EC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_23D7EFB38(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5040, &qword_23D813F18);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__dynamicTypeSize;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  sub_23D80D9DC();
  swift_endAccess();
  return sub_23D7AF838;
}

uint64_t sub_23D7EFD20(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v13);

  result = v13;
  if (!v13)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(&v12);

    if (v12 > 5u)
    {

LABEL_7:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_23D80DA0C(v10);

      result = a3(v9);
      if (!result)
      {
        return a4();
      }

      return result;
    }

    v7 = sub_23D80E4DC();

    if (v7)
    {
      goto LABEL_7;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(&v11);

    v10[1] = v11;
    result = a3(v8);
    if (!result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_23D7EFF80()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23D80DA0C(&v2);

  result = v2;
  if (!v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23D80DA0C(&v1);

    return AXRFormatterTheme.linkColor.getter();
  }

  return result;
}

uint64_t sub_23D7F004C()
{
  v1 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23D7F0090(char a1)
{
  v3 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXRTextFormatterModel.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5038, &qword_23D813F10);
  v124 = *(v2 - 8);
  v125 = v2;
  MEMORY[0x28223BE20](v2);
  v123 = &v93 - v3;
  v4 = sub_23D80DAAC();
  v5 = *(v4 - 8);
  v120 = v4;
  v121 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v105 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v122 = &v93 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FF8, &qword_23D813D50);
  v118 = *(v9 - 8);
  v119 = v9;
  MEMORY[0x28223BE20](v9);
  v117 = &v93 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E5048, &qword_23D813F20);
  v115 = *(v11 - 8);
  v116 = v11;
  MEMORY[0x28223BE20](v11);
  v114 = &v93 - v12;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FE0, &qword_23D813CF8);
  v126 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v112 = &v93 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FC8, &qword_23D813CA0);
  v110 = *(v14 - 8);
  v111 = v14;
  MEMORY[0x28223BE20](v14);
  v109 = &v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4FA8, &qword_23D813C00);
  v107 = *(v16 - 8);
  v108 = v16;
  MEMORY[0x28223BE20](v16);
  v106 = &v93 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F90, &qword_23D813BA8);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v93 - v18;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4F60, &qword_23D813A78);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v93 - v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4980, &qword_23D811988);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v21 = &v93 - v20;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4970, &unk_23D813900);
  v127 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v93 - v22;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4640, &qword_23D8104E0);
  v23 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v25 = &v93 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2E4EF0, &qword_23D8136F8);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v93 - v28;
  v30 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customReaderBackgroundColor;
  sub_23D7E1424(0, 0xD000000000000018, 0x800000023D816810, 0, 0, &v93 - v28);
  v31 = *(v27 + 32);
  v31(v1 + v30, v29, v26);
  v32 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customSelectedTextColor;
  sub_23D7E1424(0, 0xD000000000000012, 0x800000023D816830, 0, 0, v29);
  v31(v1 + v32, v29, v26);
  v33 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeReaderBackgroundColor;
  sub_23D7E1424(0, 0xD000000000000017, 0x800000023D816850, 0, 0, v29);
  v31(v1 + v33, v29, v26);
  v34 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__themeSelectedTextColor;
  sub_23D7E1424(0, 0xD000000000000011, 0x800000023D816870, 0, 0, v29);
  v31(v1 + v34, v29, v26);
  v35 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__customLinkColor;
  sub_23D7E1424(0, 0xD000000000000012, 0x800000023D816890, 0, 0, v29);
  v31(v1 + v35, v29, v26);
  v36 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__theme;
  sub_23D7E1A08(3, 0x656D656854727861, 0xE800000000000000, 0, 0, v25);
  v37 = *(v23 + 32);
  v38 = v94;
  v37(v1 + v36, v25, v94);
  v39 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lastNonCustomTheme;
  sub_23D7E1A08(3, 0xD000000000000015, 0x800000023D8168B0, 0, 0, v25);
  v37(v1 + v39, v25, v38);
  v40 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__textBold;
  v41 = v95;
  sub_23D7E1F6C(0, 0x4274786554727861, 0xEB00000000646C6FLL, 0, 0, v95);
  v42 = *(v127 + 32);
  v127 += 32;
  v43 = v96;
  v42(v1 + v40, v41, v96);
  v44 = v42;
  v45 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacing;
  sub_23D7E24D0(0x53656E694C727861, 0xEE00676E69636170, 0, 0, v21, 0.0);
  v46 = *(v97 + 32);
  v47 = v98;
  v46(v1 + v45, v21, v98);
  v48 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacing;
  sub_23D7E24D0(0x5372616843727861, 0xEE00676E69636170, 0, 0, v21, 0.0);
  v46(v1 + v48, v21, v47);
  v49 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacing;
  sub_23D7E24D0(0x5364726F57727861, 0xEE00676E69636170, 0, 0, v21, 0.0);
  v46(v1 + v49, v21, v47);
  v50 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__contentWidthRegular;
  sub_23D7E24D0(0xD000000000000016, 0x800000023D8168D0, 0, 0, v21, 800.0);
  v46(v1 + v50, v21, v47);
  v51 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__lineSpacingOption;
  v52 = v99;
  sub_23D7E2A3C(0, 0xD000000000000014, 0x800000023D8168F0, 0, 0, v99);
  v53 = *(v100 + 32);
  v54 = v101;
  v53(v1 + v51, v52, v101);
  v55 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__charSpacingOption;
  sub_23D7E2A3C(0, 0xD000000000000014, 0x800000023D816910, 0, 0, v52);
  v53(v1 + v55, v52, v54);
  v56 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__wordSpacingOption;
  sub_23D7E2A3C(0, 0xD000000000000014, 0x800000023D816930, 0, 0, v52);
  v53(v1 + v56, v52, v54);
  v57 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__marginSpacingOption;
  sub_23D7E2A3C(0, 0xD000000000000016, 0x800000023D816950, 0, 0, v52);
  v53(v1 + v57, v52, v54);
  v58 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightStyle;
  v59 = v102;
  sub_23D7E2FA0(0, 0xD000000000000011, 0x800000023D816970, 0, 0, v102);
  (*(v103 + 32))(v1 + v58, v59, v104);
  v60 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightColor;
  v61 = sub_23D80DC1C();
  v62 = v106;
  sub_23D7E3504(v61, 0xD000000000000011, 0x800000023D816990, 0, 0, v106);
  (*(v107 + 32))(v1 + v60, v62, v108);
  v63 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightFollowsTextColor;
  sub_23D7E1F6C(1, 0xD00000000000001CLL, 0x800000023D8169B0, 0, 0, v41);
  v64 = v43;
  v44(v1 + v63, v41, v43);
  v65 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontName;
  v66 = v109;
  sub_23D7E3AA4(0x6D6574737953, 0xE600000000000000, 0x4674786554727861, 0xEF656D614E746E6FLL, 0, 0, v109);
  (*(v110 + 32))(v1 + v65, v66, v111);
  v67 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__fontVariantName;
  v68 = v112;
  sub_23D7E4024(0, 0xE000000000000000, 0xD000000000000016, 0x800000023D8169D0, 0, 0, v112);
  v69 = *(v126 + 32);
  v126 += 32;
  v70 = v113;
  v69(v1 + v67, v68, v113);
  v71 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel___userPrefFontPointSize;
  v72 = v114;
  sub_23D7E45C8(0, 1, 0xD000000000000010, 0x800000023D8169F0, 0, 0, v114);
  (*(v115 + 32))(v1 + v71, v72, v116);
  v73 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__defaultFontPointSize;
  v74 = v117;
  sub_23D7E4BB0(0xD000000000000017, 0x800000023D816A10, 0, 0, v117, 12.0);
  (*(v118 + 32))(v1 + v73, v74, v119);
  v75 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highLegibility;
  sub_23D7E1F6C(0, 0xD000000000000011, 0x800000023D816A30, 0, 0, v41);
  v44(v1 + v75, v41, v64);
  v76 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__highlightEnabled;
  sub_23D7E1F6C(1, 0xD000000000000013, 0x800000023D816A50, 0, 0, v41);
  v44(v1 + v76, v41, v64);
  v77 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__modelName;
  sub_23D7E4024(0, 0xE000000000000000, 0x6C65646F4D727861, 0xEC000000656D614ELL, 0, 0, v68);
  v69(v1 + v77, v68, v70);
  v78 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__showLinks;
  sub_23D7E1F6C(1, 0x4C776F6853727861, 0xEC000000736B6E69, 0, 0, v41);
  v44(v1 + v78, v41, v64);
  v79 = v120;
  v80 = objc_opt_self();
  v81 = [v80 sharedApplication];
  v82 = [v81 preferredContentSizeCategory];

  v83 = v105;
  UIContentSizeCategory.dynamicTypeSize.getter(v105);

  v84 = v83;
  LOBYTE(v83) = sub_23D80DA8C();
  v85 = v121;
  v86 = *(v121 + 8);
  v86(v84, v79);
  if (v83)
  {
    v87 = [v80 sharedApplication];
    v88 = [v87 preferredContentSizeCategory];

    v89 = v122;
    UIContentSizeCategory.dynamicTypeSize.getter(v122);
  }

  else
  {
    v89 = v122;
    (*(v85 + 104))(v122, *MEMORY[0x277CDF9D8], v79);
  }

  v90 = OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel__dynamicTypeSize;
  (*(v85 + 16))(v84, v89, v79);
  v91 = v123;
  sub_23D7E511C(v84, 0xD000000000000012, 0x800000023D816A70, 0, 0, v123);
  v86(v89, v79);
  (*(v124 + 32))(v1 + v90, v91, v125);
  *(v1 + OBJC_IVAR____TtC23AccessibilityReaderData21AXRTextFormatterModel_isInitializing) = 0;
  return v1;
}

uint64_t sub_23D7F12F4(char a1)
{
  result = 0x694C6D6F74737563;
  switch(a1)
  {
    case 1:
      return 0xD000000000000017;
    case 2:
      return 0xD00000000000001ALL;
    case 3:
      return 0xD000000000000016;
    case 4:
      return result;
    case 5:
      return 0x656D656874;
    case 6:
      return 0xD000000000000012;
    case 7:
      return 0x646C6F4274786574;
    case 8:
      v3 = 1701734764;
      goto LABEL_24;
    case 9:
      v3 = 1918986339;
      goto LABEL_24;
    case 10:
      v3 = 1685221239;
LABEL_24:
      result = v3 | 0x6361705300000000;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
    case 16:
      result = 0x6867696C68676968;
      break;
    case 17:
      result = 0x656D614E746E6F66;
      break;
    case 18:
      result = 0x69726156746E6F66;
      break;
    case 19:
      result = 0x5463696D616E7964;
      break;
    case 20:
      result = 0x6E696F50746E6F66;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
      result = 0x6967654C68676968;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0xD000000000000019;
      break;
    case 25:
      result = 0x6D614E6C65646F6DLL;
      break;
    case 26:
      result = 0x6B6E694C776F6873;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_23D7F168C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_23D7F12F4(*a1);
  v5 = v4;
  if (v3 == sub_23D7F12F4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23D80E4DC();
  }

  return v8 & 1;
}

uint64_t sub_23D7F1714()
{
  v1 = *v0;
  sub_23D80E58C();
  sub_23D7F12F4(v1);
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

uint64_t sub_23D7F1778(uint64_t a1)
{
  sub_23D7F12F4(*v1);
  sub_23D80DDAC();
}

uint64_t sub_23D7F17CC(uint64_t a1)
{
  v2 = *v1;
  sub_23D80E58C();
  sub_23D7F12F4(v2);
  sub_23D80DDAC();

  return sub_23D80E5CC();
}

unint64_t sub_23D7F182C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23D7FFF30(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_23D7F185C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23D7F12F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_23D7F1890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23D7FFF30(a1, a2);
  *a3 = result;
  return result;
}