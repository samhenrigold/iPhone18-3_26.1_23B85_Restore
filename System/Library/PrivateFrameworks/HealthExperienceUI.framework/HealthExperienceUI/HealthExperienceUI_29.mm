void sub_1BA217804(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = qword_1EDC84AD8;
  swift_beginAccess();
  v5 = [*(a1 + v4) fetchedObjects];
  v9 = 0;
  if (v5)
  {
    v6 = v5;
    sub_1BA4A27B8();
    v7 = sub_1BA4A6B08();

    v8 = v7 >> 62 ? sub_1BA4A7CC8() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v8 > 0)
    {
      v9 = 1;
    }
  }

  *a2 = v9;
}

void sub_1BA2178DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B9F35348();
  v9 = a1;
  v10 = v18[2];
  v11 = *v4;
  v12 = (*(v4 + *(*v4 + 296)) + qword_1EDC84AD0);
  if (*v12 != v9 || v12[1] != a2)
  {
    if ((sub_1BA4A8338() & 1) == 0)
    {
      goto LABEL_8;
    }

    v11 = *v4;
  }

  v14 = *(v4 + *(v11 + 296));
  sub_1BA217804(v14, &v16);

  v15 = v16;
  sub_1B9F382CC(&v15);
LABEL_8:
  sub_1B9F35348();
  v18[0] = v18[1];
  v17 = v10;
  if (static HideableDataSource.Visibility.== infix(_:_:)(v18, &v17))
  {

    sub_1B9F8A548(a3, a4 & 1);
  }
}

uint64_t sub_1BA217A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;
  sub_1BA4A45C8();

  sub_1BA2178DC(v12, v14, v11, a5);

  return (*(v8 + 8))(v11, v7);
}

double sub_1BA217BF4()
{

  return result;
}

id *HideIfEmptyPredicateDataSource.deinit()
{
  v0 = HideableDataSource.deinit();

  return v0;
}

uint64_t HideIfEmptyPredicateDataSource.__deallocating_deinit()
{
  HideIfEmptyPredicateDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA217D5C(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1B9F374E8(a1, v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v4 + v5);
  swift_endAccess();
  sub_1BA218358();
  return sub_1B9F44170(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0CDE8);
}

uint64_t sub_1BA217E20@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA217E90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA218358();
  return sub_1B9F44170(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t (*sub_1BA217F28(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA217F8C;
}

uint64_t sub_1BA217F8C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA218358();
  }

  return result;
}

double sub_1BA217FC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1BA21802C()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA218084(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id DataTypeNoDataAvailableCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DataTypeNoDataAvailableCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier];
  v11 = type metadata accessor for DataTypeNoDataAvailableCell();
  *v10 = 0;
  *(v10 + 1) = 0;
  v13.receiver = v4;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t sub_1BA218358()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1B9F6A90C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v115 = &v102 - v5;
  sub_1B9F6A90C(0, &qword_1EBBED0D8, MEMORY[0x1E69DC1B8], v2);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v114 = &v102 - v8;
  v9 = sub_1BA4A4168();
  v120 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v119 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F6A90C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v2);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v111 = &v102 - v14;
  v15 = sub_1BA4A3FB8();
  v112 = *(v15 - 8);
  v113 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_1BA4A3F18();
  v19 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110, v20);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1BA4A3EA8();
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109, v23);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1BA4A4428();
  v117 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v30, &v123, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!v125)
  {
    sub_1B9F44170(&v123, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    goto LABEL_22;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v123 = 0;
    v124 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v122[0] = 0xD000000000000011;
    v122[1] = 0x80000001BA4F5100;
    v100 = MEMORY[0x1E69A3348];
    sub_1B9F374E8(v0 + v30, &v123, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v100);
    v101 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v101);

    result = sub_1BA4A8018();
    __break(1u);
    return result;
  }

  v118 = v26;
  v121 = v9;
  v116 = v122[0];
  v31 = [v122[0] localizedTitle];
  if (!v31)
  {

    goto LABEL_22;
  }

  v32 = v31;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A43A8();
  sub_1BA4A43B8();
  v33 = *MEMORY[0x1E69DDCF8];
  v34 = objc_opt_self();
  v35 = [v34 preferredFontDescriptorWithTextStyle:v33 compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];

  if (v36)
  {
    v37 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];
    v38 = v121;
  }

  else
  {
    sub_1BA4A3DD8();
    v39 = v33;
    v40 = sub_1BA4A3E88();
    v41 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v107 = v40;
      v43 = v42;
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v122[0] = v105;
      *v43 = 136315906;
      v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v106 = v39;
      v46 = sub_1B9F0B82C(v44, v45, v122);
      v103 = v41;
      v47 = v46;

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v123 = 0;
      LOBYTE(v124) = 1;
      v102 = MEMORY[0x1E69E6720];
      sub_1B9F6A90C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v48 = sub_1BA4A6808();
      v50 = sub_1B9F0B82C(v48, v49, v122);

      *(v43 + 14) = v50;
      *(v43 + 22) = 2080;
      LODWORD(v123) = 2;
      type metadata accessor for SymbolicTraits(0);
      v51 = sub_1BA4A6808();
      v53 = sub_1B9F0B82C(v51, v52, v122);
      v39 = v106;

      *(v43 + 24) = v53;
      *(v43 + 32) = 2112;
      v54 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v43 + 34) = v54;
      v55 = v104;
      *v104 = v54;
      _os_log_impl(&dword_1B9F07000, v107, v103, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v43, 0x2Au);
      sub_1B9F44170(v55, &qword_1EDC6B490, sub_1BA0004FC, v102, sub_1B9F6A90C);
      MEMORY[0x1BFAF43A0](v55, -1, -1);
      v56 = v34;
      v57 = v1;
      v58 = v22;
      v59 = v25;
      v60 = v19;
      v61 = v18;
      v62 = v105;
      swift_arrayDestroy();
      v63 = v62;
      v18 = v61;
      v19 = v60;
      MEMORY[0x1BFAF43A0](v63, -1, -1);
      MEMORY[0x1BFAF43A0](v43, -1, -1);

      v64 = v59;
      v22 = v58;
      v1 = v57;
      v34 = v56;
      (*(v108 + 8))(v64, v109);
    }

    else
    {

      (*(v108 + 8))(v25, v109);
    }

    v38 = v121;
    v36 = [v34 preferredFontDescriptorWithTextStyle_];
    v37 = [objc_opt_self() fontWithDescriptor:v36 size:0.0];
  }

  v65 = v37;

  v66 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v66(&v123, 0);
  v67 = sub_1BA4A4238();
  sub_1BA4A41B8();
  v67(&v123, 0);
  sub_1B9F6A90C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  v68 = v110;
  (*(v19 + 104))(v22, *MEMORY[0x1E69DBF28], v110);
  v69 = sub_1BA4A3F48();
  (*(*(v69 - 8) + 56))(v111, 1, 1, v69);
  v70 = [objc_opt_self() tertiaryLabelColor];
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v112 + 8))(v18, v113);
  (*(v19 + 8))(v22, v68);
  sub_1BA4A75F8();
  v71 = [v1 viewController];
  if (v71)
  {
    v72 = v71;
    UIViewController.resolvedPresentation.getter(&v123);

    v73 = v123;
  }

  else
  {
    v73 = 3;
  }

  v75 = v119;
  v74 = v120;
  v76 = v116;
  sub_1BA4A4158();
  v77 = swift_allocObject();
  *(v77 + 16) = v1;
  *(v77 + 24) = v73;
  v78 = v1;
  v79 = v114;
  sub_1BA4A46A8();
  v80 = sub_1BA4A4698();
  (*(*(v80 - 8) + 56))(v79, 0, 1, v80);
  sub_1BA4A4138();
  v81 = v115;
  (*(v74 + 16))(v115, v75, v38);
  (*(v74 + 56))(v81, 0, 1, v38);
  MEMORY[0x1BFAF1F10](v81);
  v82 = sub_1BA4A2758();
  v83 = sub_1BA1591A8(v82);

  if (v83)
  {
    v84 = [v83 identifier];

    v85 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v87 = v86;

    sub_1B9F25350();
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_1BA4B9FD0;
    *(v88 + 32) = 0x79726F6765746143;
    *(v88 + 40) = 0xE800000000000000;
    *(v88 + 48) = 0x617461446F4ELL;
    *(v88 + 56) = 0xE600000000000000;
    *(v88 + 64) = v85;
    *(v88 + 72) = v87;
    v89 = sub_1BA4A6AE8();

    v90 = HKUIJoinStringsForAutomationIdentifier();

    if (v90)
    {
      v83 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v92 = v91;
    }

    else
    {
      v83 = 0;
      v92 = 0;
    }

    v94 = &v78[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier];
    swift_beginAccess();
    *v94 = v83;
    *(v94 + 1) = v92;
  }

  else
  {
    v93 = &v78[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier];
    swift_beginAccess();
    v92 = 0;
    *v93 = 0;
    *(v93 + 1) = 0;
  }

  v95.value._countAndFlagsBits = v83;
  v95.value._object = v92;
  DataTypeNoDataAvailableCell.updateAutomationIdentifiers(with:)(v95);

  v96 = v118;
  v125 = v118;
  v126 = MEMORY[0x1E69DC110];
  v97 = __swift_allocate_boxed_opaque_existential_1(&v123);
  v98 = v117;
  (*(v117 + 16))(v97, v29, v96);
  MEMORY[0x1BFAF1EF0](&v123);

  (*(v74 + 8))(v75, v38);
  return (*(v98 + 8))(v29, v96);
}

id sub_1BA219238(int a1, id a2, unsigned __int8 a3)
{
  if (([a2 isSelected] & 1) != 0 || objc_msgSend(a2, sel_isHighlighted))
  {
    if (a3 - 6 < 2)
    {
      v11 = objc_opt_self();
      v12 = [v11 systemGray5Color];
      v13 = [v11 tertiarySystemGroupedBackgroundColor];
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = v13;
      v14[4] = 0;
      v14[5] = v12;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FD7F54;
      v24 = v14;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v10 = &block_descriptor_58;
      goto LABEL_8;
    }

    if (a3 == 4 || a3 == 12)
    {
      v5 = objc_opt_self();
      v6 = [v5 systemGray5Color];
      v7 = [v5 systemGray4Color];
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = v7;
      v8[4] = 0;
      v8[5] = v6;
      v9 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v23 = sub_1B9FE1088;
      v24 = v8;
      v19 = MEMORY[0x1E69E9820];
      v20 = 1107296256;
      v10 = &block_descriptor_16;
LABEL_8:
      v21 = sub_1B9F7EBBC;
      v22 = v10;
      v15 = _Block_copy(&v19);
      v16 = [v9 initWithDynamicProvider_];
      _Block_release(v15);

      return v16;
    }

    v18 = [objc_opt_self() systemGray5Color];
  }

  else if ((a3 | 8) == 0xC)
  {
    v18 = [objc_opt_self() tertiarySystemBackgroundColor];
  }

  else
  {
    v18 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  }

  return v18;
}

Swift::Void __swiftcall DataTypeNoDataAvailableCell.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  v2 = v1;
  if (with.value._object)
  {
    countAndFlagsBits = with.value._countAndFlagsBits;
    object = with.value._object;

    v5 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v6 = [v2 contentView];
    sub_1B9F25350();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1BA4B5460;
    *(v7 + 32) = countAndFlagsBits;
    *(v7 + 40) = object;
    *(v7 + 48) = 0x656C746954;
    *(v7 + 56) = 0xE500000000000000;
    v8 = sub_1BA4A6AE8();

    v9 = HKUIJoinStringsForAutomationIdentifier();

    [v6 setAccessibilityIdentifier_];
  }

  else
  {
    [v1 setAccessibilityIdentifier_];
    v9 = [v1 contentView];
    [v9 setAccessibilityIdentifier_];
  }
}

id DataTypeNoDataAvailableCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataTypeNoDataAvailableCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA219774(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v111 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v111 - v15;
  sub_1B9F6A90C(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v115 = &v111 - v19;
  v119 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  MEMORY[0x1EEE9AC00](v119, v20);
  v117 = (&v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v24 = MEMORY[0x1EEE9AC00](v22, v23).n128_u64[0];
  v116 = &v111 - v25;
  v26 = [a1 navigationController];
  if (!v26)
  {
    sub_1BA4A8018();
    __break(1u);
    return;
  }

  v27 = v26;
  v122 = v5;
  v28 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v2 + v28, &v136, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!*(&v137 + 1))
  {
    sub_1B9F44170(&v136, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    goto LABEL_10;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v113 = v8;
  v121 = v4;
  v29 = *&v128[0];
  v30 = sub_1BA4A2758();
  v31 = sub_1BA1591A8(v30);

  v114 = v31;
  if (!v31)
  {

    v4 = v121;
LABEL_10:
    sub_1BA4A3DD8();
    v38 = v2;
    v39 = sub_1BA4A3E88();
    v40 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v121 = v4;
      v43 = v42;
      *&v128[0] = v42;
      *v41 = 136380675;
      ObjectType = v12;
      v118 = v27;
      v44 = MEMORY[0x1E69A3348];
      sub_1B9F374E8(v2 + v28, &v136, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v44);
      v45 = sub_1BA4A6808();
      v47 = sub_1B9F0B82C(v45, v46, v128);

      *(v41 + 4) = v47;
      _os_log_impl(&dword_1B9F07000, v39, v40, "Item kind wrong: %{private}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1BFAF43A0](v43, -1, -1);
      MEMORY[0x1BFAF43A0](v41, -1, -1);

      v122[1](ObjectType, v121);
    }

    else
    {

      v122[1](v12, v4);
    }

    return;
  }

  v112 = v29;
  v32 = UIViewController.resolvedHealthStore.getter();
  if (v32)
  {
    v118 = v27;
    v33 = v32;
    v34 = [v32 profileIdentifier];
    UIViewController.resolvedPresentation.getter(&v136);
    v35 = _s18HealthExperienceUI18DataTypeDetailModeO07defaultG03for12presentationACSo19HKProfileIdentifierC_AA12PresentationOSgtFZ_0(v34, &v136);

    UIViewController.resolvedHealthExperienceStore.getter(v135);
    v36 = v33;
    UIViewController.resolvedPinnedContentManager.getter(v134);
    sub_1B9F0A534(v135, v128);
    *(&v129 + 1) = v36;
    LOBYTE(v130) = v35;
    sub_1BA4A2488();
    swift_allocObject();
    v37 = v36;
    *(&v130 + 1) = sub_1BA4A2468();
    sub_1B9F374E8(v134, &v123, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    if (v124)
    {

      sub_1B9F44170(v134, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
      __swift_destroy_boxed_opaque_existential_1(v135);
      sub_1B9F25598(&v123, &v125);
    }

    else
    {
      v61 = sub_1BA4A22B8();
      v62 = sub_1BA4A22A8();
      v126 = v61;
      v127 = MEMORY[0x1E69A3CF8];
      *&v125 = v62;
      sub_1B9F44170(v134, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
      __swift_destroy_boxed_opaque_existential_1(v135);
      if (v124)
      {
        sub_1B9F44170(&v123, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
      }
    }

    sub_1B9F25598(&v125, v131);
    v133 = 0;
    v140 = v131[0];
    v141 = v131[1];
    v136 = v128[0];
    v137 = v128[1];
    v138 = v129;
    v139 = v130;
    v143 = 0;
    v142 = v132;
    v63 = v114;
    v64 = HKTDataTypeDetailFactory.makeViewController(hkType:context:)(v114, &v136);
    sub_1BA114E30(&v136);
    swift_getObjectType();
    v65 = swift_conformsToProtocol2();
    if (v65 && v64)
    {
      v66 = v65;
      v122 = v64;
      v67 = v64;
      v68 = v37;
      v113 = v37;
      v121 = v67;
      UIViewController.resolvedPinnedContentManager.getter(&v136);
      v69 = v112;
      UIViewController.resolvedPresentation.getter(v128);
      LODWORD(ObjectType) = LOBYTE(v128[0]);
      v70 = v117;
      *v117 = xmmword_1BA4B7EA0;
      *(v70 + 16) = xmmword_1BA4B7EA0;
      v71 = v119;
      v72 = *(v119 + 44);
      v73 = sub_1BA4A22F8();
      (*(*(v73 - 8) + 56))(v70 + v72, 1, 1, v73);
      v74 = (v70 + *(v71 + 52));
      *v74 = 0;
      v74[1] = 0;
      v75 = [v69 userData];
      if (v75)
      {
        v76 = v75;
        v77 = sub_1BA4A1608();
        v79 = v78;
      }

      else
      {
        v77 = 0;
        v79 = 0xF000000000000000;
      }

      sub_1B9F6AC8C(*v70, *(v70 + 8));
      *v70 = v77;
      *(v70 + 8) = v79;
      v83 = [v69 actionHandlerUserData];
      if (v83)
      {
        v84 = v83;
        v85 = sub_1BA4A1608();
        v87 = v86;
      }

      else
      {
        v85 = 0;
        v87 = 0xF000000000000000;
      }

      v37 = v68;
      sub_1B9F6AC8C(*(v70 + 16), *(v70 + 24));
      *(v70 + 16) = v85;
      *(v70 + 24) = v87;
      *(v70 + 32) = v113;
      sub_1B9F0A534(&v136, v70 + 48);
      v88 = [v69 uniqueIdentifier];
      v89 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v91 = v90;

      *(v70 + 88) = v89;
      *(v70 + 96) = v91;
      v92 = v119;
      sub_1BA4A26B8();
      v93 = v115;
      sub_1BA4A2788();
      sub_1B9F6ACA0(v93, v70 + v72);
      *(v70 + 40) = ObjectType;
      v94 = [v69 baseAutomationIdentifier];
      if (v94)
      {
        v95 = v94;
        v96 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v98 = v97;

        v70 = v117;
      }

      else
      {
        v96 = 0;
        v98 = 0;
      }

      v82 = v112;
      v99 = (v70 + *(v92 + 48));
      *v99 = v96;
      v99[1] = v98;
      if (FeedItem.pluginInfo.getter())
      {
        v100 = sub_1BA4A3AD8();

        v101 = [v69 actionHandlerClassName];
        if (v101)
        {
          v102 = v101;
          v103 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v105 = v104;

          __swift_destroy_boxed_opaque_existential_1(&v136);
          v106 = swift_allocObject();
          *(v106 + 2) = v100;
          *(v106 + 3) = v103;
          v70 = v117;
          *(v106 + 4) = v105;
          v92 = v119;
          *v74 = sub_1BA028D88;
          v74[1] = v106;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v136);
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v136);
      }

      v107 = v116;
      sub_1B9F6AD20(v70, v116);
      v108 = v121;
      v109 = swift_getObjectType();
      *(&v137 + 1) = v92;
      *&v138 = &protocol witness table for BasicFeedItemViewControllerContext;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v136);
      sub_1BA21A724(v107, boxed_opaque_existential_1);
      (*(v66 + 24))(&v136, v109, v66);

      sub_1BA21A788(v107);
      v81 = v118;
      v63 = v114;
      v64 = v122;
    }

    else
    {
      v80 = v64;
      v81 = v118;
      v82 = v112;
    }

    [v81 pushViewController:v64 animated:1];
  }

  else
  {
    sub_1BA4A3DD8();
    v48 = v114;
    v49 = sub_1BA4A3E88();
    v50 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      *&v136 = v119;
      *v51 = 136315394;
      v52 = sub_1BA4A85D8();
      v54 = sub_1B9F0B82C(v52, v53, &v136);

      *(v51 + 4) = v54;
      *(v51 + 12) = 2080;
      v55 = [v48 identifier];
      v56 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v58 = v57;

      v59 = sub_1B9F0B82C(v56, v58, &v136);

      *(v51 + 14) = v59;
      _os_log_impl(&dword_1B9F07000, v49, v50, "[%s]: Unable to push DTDR for %s, cannot resolve health store.", v51, 0x16u);
      v60 = v119;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v60, -1, -1);
      MEMORY[0x1BFAF43A0](v51, -1, -1);
    }

    else
    {
    }

    v122[1](v16, v121);
  }
}

uint64_t sub_1BA21A724(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA21A788(uint64_t a1)
{
  v2 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SpecifierHeaderViewConfiguration.init(image:description:status:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *(a6 + 40) = a4;
  *(a6 + 48) = a5;
  return result;
}

void SpecifierHeaderViewConfiguration.init(image:content:status:)(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B9F1D830(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B9F1D768();
  v9 = sub_1BA4A66D8();
  v11 = v10;

  *a5 = a1;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = v9;
  *(a5 + 32) = v11;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
}

void SpecifierHeaderViewConfiguration.init(iconIdentifier:isWatchIcon:content:status:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1B9F1D830(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B9F1D768();
  v13 = sub_1BA4A66D8();
  v15 = v14;

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 | 0x80;
  *(a7 + 24) = v13;
  *(a7 + 32) = v15;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
}

uint64_t sub_1BA21A9AC()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

double sub_1BA21AAA8(uint64_t a1)
{
  sub_1BA4A68C8();

  return result;
}

uint64_t sub_1BA21AB90(uint64_t a1)
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

unint64_t sub_1BA21AC88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BA21DBDC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BA21ACB8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000006E6F69;
  v4 = 0x7470697263736564;
  if (v2 != 3)
  {
    v4 = 0x737574617473;
    v3 = 0xE600000000000000;
  }

  if (v2 == 2)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x80000001BA4E10A0;
  }

  v5 = 0xD000000000000010;
  v6 = 0x80000001BA4E1060;
  if (*v1)
  {
    v5 = 0xD000000000000019;
    v6 = 0x80000001BA4E1080;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v6;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1BA21AD70()
{
  v1 = *v0;
  v2 = 0x7470697263736564;
  if (v1 != 3)
  {
    v2 = 0x737574617473;
  }

  if (v1 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  v3 = 0xD000000000000010;
  if (*v0)
  {
    v3 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BA21AE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BA21DBDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BA21AE4C(uint64_t a1)
{
  v2 = sub_1BA21B4B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BA21AE88(uint64_t a1)
{
  v2 = sub_1BA21B4B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SpecifierHeaderViewConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BA21B9C8(0, &qword_1EBBEE888, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v37 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_1BA21B4B4();
  sub_1BA4A8528();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = a2;
    v12 = v46;
    LOBYTE(v47) = 3;
    v13 = sub_1BA4A8188();
    v45 = v14;
    v44 = v13;
    LOBYTE(v47) = 4;
    v42 = sub_1BA4A8138();
    v43 = v15;
    v49 = 0;
    sub_1BA21B508();
    sub_1BA4A8178();
    v16 = v48;
    if (v48 >> 60 == 15)
    {
      LOBYTE(v47) = 1;
      v17 = sub_1BA4A8138();
      v41 = 0;
      if (v18)
      {
        v40 = v18;
        v38 = v17;
        LOBYTE(v47) = 2;
        v34 = sub_1BA4A8148();
        (*(v12 + 8))(v9, v6);
        v35 = v34 & 1 | 0x80;
        v36 = v40;
LABEL_12:
        v24 = v38;
        *v11 = v38;
        *(v11 + 8) = v36;
        *(v11 + 16) = v35;
        v25 = v45;
        *(v11 + 24) = v44;
        *(v11 + 32) = v25;
        *(v11 + 40) = v42;
        *(v11 + 48) = v43;
        v26 = v36;
        sub_1B9FCF11C(v24, v36, v35);

        __swift_destroy_boxed_opaque_existential_1(a1);
        sub_1B9FCF0B4(v24, v26, v35);

LABEL_6:

        return;
      }

      v44 = sub_1BA4A7E68();
      swift_allocError();
      v31 = v30;
      sub_1BA21B55C(0);
      v42 = *(v32 + 48);
      *(v31 + 24) = &type metadata for SpecifierHeaderViewConfiguration.CodingKeys;
      *(v31 + 32) = v10;
      *v31 = 0;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1BA4A8518();
      sub_1BA4A7E48();
      (*(*(v44 - 8) + 104))(v31, *MEMORY[0x1E69E6AF0]);
      swift_willThrow();
      (*(v12 + 8))(v9, v6);
      v29 = a1;
    }

    else
    {
      v41 = 0;
      v19 = v47;
      v20 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1B9F206D4(v19, v16);
      v40 = sub_1BA4A15F8();
      v21 = v20;
      v22 = v16;
      v23 = [v21 initWithData_];

      v39 = v19;
      v40 = v22;
      sub_1B9F6AC8C(v19, v22);
      v38 = v23;
      if (v23)
      {
        (*(v12 + 8))(v9, v6);
        sub_1B9F6AC8C(v39, v40);
        v35 = 0;
        v36 = 0;
        goto LABEL_12;
      }

      v44 = sub_1BA4A7E68();
      swift_allocError();
      v42 = v27;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1BA4A8518();
      v28 = v42;
      sub_1BA4A7E48();
      (*(*(v44 - 8) + 104))(v28, *MEMORY[0x1E69E6B00]);
      swift_willThrow();
      sub_1B9F6AC8C(v39, v40);
      (*(v12 + 8))(v9, v6);
      v29 = a1;
    }

    v33 = v41;
    __swift_destroy_boxed_opaque_existential_1(v29);

    if (!v33)
    {
      goto LABEL_6;
    }
  }
}

unint64_t sub_1BA21B4B4()
{
  result = qword_1EBBEE890;
  if (!qword_1EBBEE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE890);
  }

  return result;
}

unint64_t sub_1BA21B508()
{
  result = qword_1EBBEE898;
  if (!qword_1EBBEE898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE898);
  }

  return result;
}

void sub_1BA21B55C(uint64_t a1)
{
  if (!qword_1EBBEE8A0)
  {
    sub_1B9F0D950(255, &qword_1EBBEE8A8, MEMORY[0x1E69E7C30]);
    sub_1BA4A7E58();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEE8A0);
    }
  }
}

void SpecifierHeaderViewConfiguration.encode(to:)(void *a1)
{
  sub_1BA21B9C8(0, &qword_1EBBEE8B0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v28 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v36 = *(v1 + 16);
  v11 = *(v1 + 48);
  v31 = *(v1 + 40);
  v32 = v9;
  v29 = v10;
  v30 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BA21B4B4();
  v12 = v4;
  sub_1BA4A8548();
  LOBYTE(v34) = 3;
  v13 = v33;
  sub_1BA4A8248();
  if (v13)
  {
    goto LABEL_3;
  }

  v14 = v32;
  v15 = v29;
  v16 = v36;
  LOBYTE(v34) = 4;
  sub_1BA4A8208();
  if (v16 < 0)
  {
    LOBYTE(v34) = 1;

    sub_1BA4A8248();
    sub_1B9FCF0B4(v14, v15, v16);
    LOBYTE(v34) = 2;
    sub_1BA4A8258();
LABEL_3:
    (*(v5 + 8))(v8, v12);
    return;
  }

  v33 = 0;
  v17 = v14;
  v18 = UIImagePNGRepresentation(v17);
  if (v18)
  {
    v19 = v18;
    v20 = sub_1BA4A1608();
    v22 = v21;

    v31 = v20;
    v34 = v20;
    v35 = v22;
    v37 = 0;
    sub_1BA21BA98();
    sub_1BA4A8288();
    (*(v5 + 8))(v8, v12);
    sub_1B9FCF0B4(v14, v15, v16);
    sub_1B9F2BB4C(v31, v22);
  }

  else
  {
    v23 = sub_1BA4A7E98();
    v33 = swift_allocError();
    v25 = v24;
    sub_1BA21BA2C(0);
    v28 = *(v26 + 48);
    v25[3] = sub_1B9F0ADF8(0, &qword_1EDC6E370, 0x1E69DCAB8);
    *v25 = v17;
    v30 = v8;
    v31 = v12;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v27 = v17;
    sub_1BA4A8538();
    sub_1BA4A7E48();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6B30], v23);
    swift_willThrow();
    sub_1B9FCF0B4(v32, v15, v36);
    (*(v5 + 8))(v30, v31);
  }
}

void sub_1BA21B9C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA21B4B4();
    v7 = a3(a1, &type metadata for SpecifierHeaderViewConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BA21BA2C(uint64_t a1)
{
  if (!qword_1EBBEE8B8)
  {
    sub_1BA4A7E88();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEE8B8);
    }
  }
}

unint64_t sub_1BA21BA98()
{
  result = qword_1EBBEE8C0;
  if (!qword_1EBBEE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE8C0);
  }

  return result;
}

uint64_t sub_1BA21BB28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BA21BB70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA21BBCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BA21BC1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

void *sub_1BA21BCA4(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel] = 0;
  v3 = sub_1BA4A6758();
  v4 = [a1 propertyForKey_];

  if (v4)
  {
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34[0] = v32;
  v34[1] = v33;
  if (*(&v33 + 1))
  {
    if (swift_dynamicCast())
    {
      v5 = v25;
      v6 = v26;
      v7 = v28;
      v8 = v29;
      v9 = v30;
      v10 = v31;
      v11 = v27;
      v12 = &v1[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView_configuration];
      *v12 = v25;
      *(v12 + 1) = v6;
      v12[16] = v11;
      *(v12 + 3) = v7;
      *(v12 + 4) = v8;
      *(v12 + 5) = v9;
      *(v12 + 6) = v10;
      sub_1B9FCF11C(v5, v6, v11);
      v24.receiver = v1;
      v24.super_class = type metadata accessor for SpecifierHeaderView();

      v13 = objc_msgSendSuper2(&v24, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
      v14 = sub_1BA21C074();
      [v13 addSubview_];

      v15 = sub_1BA21C9C8();
      [v13 addSubview_];

      v16 = sub_1BA21CE90();
      [v13 addSubview_];

      sub_1BA21D368();
      sub_1BA21D5D4();
      sub_1BA21D76C();
      sub_1B9FCF0B4(v5, v6, v11);

      return v13;
    }
  }

  else
  {
    sub_1B9F23224(v34);
  }

  sub_1B9F0ADF8(0, &qword_1EDC5E0C0, 0x1E696AEC0);
  v18 = sub_1BA4A77C8("[%{public}@]: One of three HeaderView keys not set", 50, 2);
  sub_1B9F2EAC0(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5480;
  swift_getMetatypeMetadata();
  v20 = sub_1BA4A6808();
  v22 = v21;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1B9F1BE20();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = sub_1BA4A77D8();

  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

id sub_1BA21C074()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView];
  }

  else
  {
    v4 = sub_1BA21C0D8(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA21C0D8(void *a1)
{
  sub_1B9F6C030(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setContentMode_];

  v7 = sub_1BA4A6C88();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_1BA4A6C68();
  v8 = v6;
  v9 = a1;
  v10 = sub_1BA4A6C58();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = v9;
  sub_1BA0BF220(0, 0, v5, &unk_1BA4C7688, v11);

  return v8;
}

uint64_t sub_1BA21C270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1BA4A6C68();
  v5[7] = sub_1BA4A6C58();
  v7 = sub_1BA4A6C28();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BA21C308, v7, v6);
}

uint64_t sub_1BA21C308()
{
  v1 = *(v0 + 48) + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView_configuration;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v4;
  sub_1B9FCF11C(v2, v3, v4);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1BA21C3C8;

  return sub_1BA21C5A8(v0 + 16);
}

uint64_t sub_1BA21C3C8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 88) = a1;

  sub_1B9FCF0B4(*(v2 + 16), *(v2 + 24), *(v3 + 32));
  v4 = *(v2 + 72);
  v5 = *(v2 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1BA21C528, v5, v4);
}

uint64_t sub_1BA21C528()
{
  v1 = v0[11];
  v2 = v0[5];

  [v2 setImage_];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1BA21C5A8(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = *a1;
  *(v2 + 88) = *(a1 + 16);
  sub_1BA4A6C68();
  *(v2 + 40) = sub_1BA4A6C58();
  v4 = sub_1BA4A6C28();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BA21C650, v4, v3);
}

uint64_t sub_1BA21C650()
{
  v1 = *(v0 + 88);
  if (v1 < 0)
  {
    v6 = *(v0 + 32);
    v7 = [*(v0 + 16) traitCollection];
    [v7 displayScale];
    v9 = v8;

    v10 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:80.0 scale:{80.0, v9}];
    v11 = v10;
    *(v0 + 64) = v10;
    if (v1)
    {
      [v10 setShape_];
    }

    sub_1B9F0ADF8(0, &qword_1EBBEE960, 0x1E69A43E0);
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 72) = v13;
    *v13 = v0;
    v13[1] = sub_1BA21C814;
    v14 = *(v0 + 24);

    return MEMORY[0x1EEE0FA78](v14, v6, v11);
  }

  else
  {
    v2 = *(v0 + 24);

    v3 = *(v0 + 24);
    v15 = *(v0 + 8);
    v4 = v2;

    return v15(v3);
  }
}

uint64_t sub_1BA21C814(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1BA21C95C, v5, v4);
}

uint64_t sub_1BA21C95C()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[1];

  return v3(v2);
}

id sub_1BA21C9C8()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel);
  }

  else
  {
    v42 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setAdjustsFontForContentSizeCategory_];

    v11 = sub_1BA4A6758();

    [v10 setText_];

    v12 = *MEMORY[0x1E69DDD80];
    v13 = objc_opt_self();
    v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
    }

    else
    {
      v41 = v0;
      sub_1BA4A3DD8();
      v17 = v12;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v40 = v17;
        v23 = sub_1B9F0B82C(v21, v22, &v45);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v43 = 0;
        v44 = 1;
        sub_1B9F6C030(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v45);

        *(v20 + 14) = v26;
        *(v20 + 22) = 2080;
        LODWORD(v43) = 0;
        type metadata accessor for SymbolicTraits(0);
        v27 = sub_1BA4A6808();
        v29 = sub_1B9F0B82C(v27, v28, &v45);
        v17 = v40;

        *(v20 + 24) = v29;
        *(v20 + 32) = 2112;
        v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v30;
        v31 = v38;
        *v38 = v30;
        _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1B9F8C6C8(v31);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        v32 = v39;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
      }

      (*(v2 + 8))(v6, v42);
      v33 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];

      v0 = v41;
    }

    [v10 setFont_];

    v34 = [objc_opt_self() labelColor];
    [v10 setTextColor_];

    [v10 setTextAlignment_];
    [v10 setNumberOfLines_];
    v35 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v36 = v8;
  return v9;
}

id sub_1BA21CE90()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel);
  }

  else
  {
    v42 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    [v10 setAdjustsFontForContentSizeCategory_];
    if (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView_configuration + 48))
    {

      v11 = sub_1BA4A6758();
    }

    else
    {
      v11 = 0;
    }

    [v10 setText_];

    v12 = *MEMORY[0x1E69DDD08];
    v13 = objc_opt_self();
    v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
    }

    else
    {
      v41 = v0;
      sub_1BA4A3DD8();
      v17 = v12;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v40 = v17;
        v23 = sub_1B9F0B82C(v21, v22, &v45);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v43 = 0;
        v44 = 1;
        sub_1B9F6C030(0, &qword_1EBBECB00, type metadata accessor for Weight);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v45);

        *(v20 + 14) = v26;
        *(v20 + 22) = 2080;
        LODWORD(v43) = 0;
        type metadata accessor for SymbolicTraits(0);
        v27 = sub_1BA4A6808();
        v29 = sub_1B9F0B82C(v27, v28, &v45);
        v17 = v40;

        *(v20 + 24) = v29;
        *(v20 + 32) = 2112;
        v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v30;
        v31 = v38;
        *v38 = v30;
        _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1B9F8C6C8(v31);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        v32 = v39;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
      }

      (*(v2 + 8))(v6, v42);
      v0 = v41;
      v33 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
    }

    [v10 setFont_];

    v34 = [objc_opt_self() secondaryLabelColor];
    [v10 setTextColor_];

    [v10 setTextAlignment_];
    [v10 setNumberOfLines_];
    v35 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v36 = v8;
  return v9;
}

void sub_1BA21D368()
{
  v1 = objc_opt_self();
  sub_1B9F1D830(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BA4B5890;
  v3 = sub_1BA21C074();
  v4 = [v3 topAnchor];

  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:20.0];

  *(v2 + 32) = v6;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView;
  v8 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___iconImageView] centerXAnchor];
  v9 = [v0 centerXAnchor];
  v10 = [v8 constraintEqualToAnchor_];

  *(v2 + 40) = v10;
  v11 = [*&v0[v7] widthAnchor];
  v12 = [v11 constraintEqualToConstant_];

  *(v2 + 48) = v12;
  v13 = [*&v0[v7] heightAnchor];
  v14 = [*&v0[v7] widthAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v2 + 56) = v15;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v16 = sub_1BA4A6AE8();

  [v1 activateConstraints_];
}

id sub_1BA21D5D4()
{
  v1 = sub_1BA21C9C8();
  [v1 hk:v0 alignHorizontalConstraintsWithView:0.0 margin:?];

  v2 = objc_opt_self();
  sub_1B9F1D830(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B5470;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel;
  v5 = [*(v0 + OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___descriptionLabel) topAnchor];
  v6 = sub_1BA21C074();
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:12.0];
  *(v3 + 32) = v8;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v9 = sub_1BA4A6AE8();

  [v2 activateConstraints_];

  v10 = *(v0 + v4);
  LODWORD(v11) = 1148846080;

  return [v10 setContentHuggingPriority:1 forAxis:v11];
}

id sub_1BA21D76C()
{
  v1 = sub_1BA21CE90();
  [v1 hk:v0 alignHorizontalConstraintsWithView:0.0 margin:?];

  v2 = objc_opt_self();
  sub_1B9F1D830(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BA4B7510;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel;
  v5 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI19SpecifierHeaderView____lazy_storage___statusLabel] topAnchor];
  v6 = sub_1BA21C9C8();
  v7 = [v6 bottomAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:12.0];
  *(v3 + 32) = v8;
  v9 = [*&v0[v4] bottomAnchor];
  v10 = [v0 bottomAnchor];
  v11 = [v9 constraintLessThanOrEqualToAnchor_];

  *(v3 + 40) = v11;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v12 = sub_1BA4A6AE8();

  [v2 activateConstraints_];

  v13 = *&v0[v4];
  LODWORD(v14) = 1148846080;

  return [v13 setContentHuggingPriority:1 forAxis:v14];
}

id sub_1BA21D9D8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpecifierHeaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1BA21DAD8()
{
  result = qword_1EBBEE948;
  if (!qword_1EBBEE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE948);
  }

  return result;
}

unint64_t sub_1BA21DB30()
{
  result = qword_1EBBEE950;
  if (!qword_1EBBEE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE950);
  }

  return result;
}

unint64_t sub_1BA21DB88()
{
  result = qword_1EBBEE958;
  if (!qword_1EBBEE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE958);
  }

  return result;
}

unint64_t sub_1BA21DBDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A8108();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BA21DC28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BA0C2E3C;

  return sub_1BA21C270(a1, v4, v5, v7, v6);
}

void sub_1BA21DCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4)
  {
    v5 = v4;
    sub_1B9F0A534(a3, v9);
    sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    type metadata accessor for SnapshotDataSourceItemSwizzler(0);
    if (swift_dynamicCast())
    {
      ObjectType = swift_getObjectType();
      v7 = OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem;
      swift_beginAccess();
      sub_1B9F0A534(v8 + v7, v9);
      (*(v5 + 16))(v9, ObjectType, v5);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t CategoryViewControllerDataSource.__allocating_init(displayCategory:healthStore:healthExperienceStore:)(void *a1, void *a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1BA21FD1C(a1, a2, a3);

  return v6;
}

uint64_t CategoryViewControllerDataSource.init(displayCategory:healthStore:healthExperienceStore:)(void *a1, void *a2, void *a3)
{
  v4 = sub_1BA21FD1C(a1, a2, a3);

  return v4;
}

uint64_t CategoryViewControllerDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CategoryViewControllerDataSource.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA21E058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = sub_1BA4A3EA8();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v6);
  v8 = &v39[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2201C0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = sub_1BA4A3488();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v39[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v41);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  v16 = sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v17 = v39[0];
    sub_1B9F1B560(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1BA4B5480;
    v41[3] = v16;
    v41[4] = sub_1B9F3237C(&qword_1EDC6AD98, MEMORY[0x1E69A3DD0], &protocol conformance descriptor for FeedItem);
    v41[0] = v17;
    v19 = type metadata accessor for SnapshotDataSourceItemSwizzler(0);
    v20 = swift_allocObject();
    type metadata accessor for DataTypeNoDataAvailableCell();
    v21 = v17;
    sub_1BA4A71C8();
    sub_1BA4A3478();
    (*(v12 + 16))(v20 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_cellResolution, v15, v11);
    sub_1BA4A3428();
    swift_storeEnumTagMultiPayload();
    sub_1B9F0A534(v41, v20 + OBJC_IVAR____TtC18HealthExperienceUI30SnapshotDataSourceItemSwizzler_realSnapshotDataSourceItem);
    v22 = [v21 uniqueIdentifier];
    v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v25 = v24;

    (*(v12 + 8))(v15, v11);
    *(v20 + 16) = v23;
    *(v20 + 24) = v25;
    __swift_destroy_boxed_opaque_existential_1(v41);
    *(v18 + 56) = v19;
    *(v18 + 64) = sub_1B9F3237C(&qword_1EDC63588, type metadata accessor for SnapshotDataSourceItemSwizzler, &protocol conformance descriptor for SnapshotDataSourceItemSwizzler);
    *(v18 + 32) = v20;

    return v18;
  }

  else
  {
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v41);
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315394;
      v39[0] = a3;
      swift_getMetatypeMetadata();
      v31 = sub_1BA4A6808();
      v33 = sub_1B9F0B82C(v31, v32, &v40);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      sub_1B9F0A534(v41, v39);
      v34 = sub_1BA4A6808();
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_1(v41);
      v37 = sub_1B9F0B82C(v34, v36, &v40);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_1B9F07000, v27, v28, "[%s]: Incorrect viewmodel; expected FeedItem, got: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v30, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    (*(v5 + 8))(v8, v38);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1BA21E5B0@<X0>(void *a1@<X8>)
{
  v2 = sub_1BA4A4428();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  v8 = v7;
  _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
  v9 = type metadata accessor for HeaderItem(0);
  swift_allocObject();
  HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v6, v8, 0, 0, 0, 0, v5, 0, 0);
  v11 = v10;
  a1[3] = v9;
  result = sub_1B9F3237C(&qword_1EDC69800, type metadata accessor for HeaderItem, &protocol conformance descriptor for HeaderItem);
  a1[4] = result;
  *a1 = v11;
  return result;
}

uint64_t sub_1BA21E78C()
{

  v1 = qword_1EDC84B68;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA21E844(void *a1, void *a2, void *a3)
{
  sub_1BA1863C8(0);
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A27B8();
  sub_1BA21FB24(a1);
  v9 = MEMORY[0x1BFAED000]();

  v10 = [a1 categoryID];
  v11 = [a1 embeddedDisplayName];
  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;

  sub_1BA3F0744(v10, v12, v14, &v81);

  v78 = v81;
  v79 = v82;
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  v74 = v9;
  v80 = v9;
  v16 = a2;
  *(v15 + 32) = [a2 profileIdentifier];
  *(v15 + 40) = 0;
  v76 = a1;
  v17 = [a1 categoryID];
  v18 = a3[3];
  v77 = a3;
  __swift_project_boxed_opaque_existential_1(a3, v18);
  v19 = sub_1BA4A1B68();
  if (v17 == 12)
  {
    v39 = *MEMORY[0x1E696B898];
    v40 = objc_allocWithZone(MEMORY[0x1E696C178]);
    v69 = v80;
    v41 = v78;
    v42 = v79;
    v70 = [v40 initWithFeatureIdentifier:v39 healthStore:{a2, sub_1BA048494(v78, v79)}];
    v81 = v70;
    sub_1B9F0ADF8(0, &qword_1EBBF15E0, 0x1E696C178);
    v81 = sub_1BA4A39A8();
    sub_1BA0B9D44(0);
    sub_1B9F3237C(&qword_1EDC5F500, sub_1BA0B9D44, MEMORY[0x1E695BED8]);
    v43 = v71;
    sub_1BA4A4FE8();

    sub_1B9F3237C(&qword_1EBBED118, sub_1BA1863C8, MEMORY[0x1E695BD60]);
    v44 = v73;
    v45 = sub_1BA4A4F98();
    (*(v72 + 8))(v43, v44);
    v46 = objc_allocWithZone(type metadata accessor for HideableHearingArticlesFRCDataSource(0));
    *&v46[qword_1EBBED120] = MEMORY[0x1E69E7CD0];
    v47 = &v46[qword_1EBBED128];
    *v47 = 0;
    *(v47 + 1) = 0;
    v48 = &v46[qword_1EBBED130];
    *v48 = 0;
    *(v48 + 1) = 0;
    v49 = &v46[qword_1EBBED138];
    v50 = v74;
    *v49 = v74;
    v49[8] = 1;
    *&v46[qword_1EBBED140] = v15;
    v83 = v50;
    v84 = 1;
    v81 = v41;
    v82 = v42;
    v51 = v69;

    v52 = v19;
    v35 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v52, v15, &v83, &v81);
    v53 = sub_1BA186BA8(0);
    v54 = qword_1EDC84AD8;
    swift_beginAccess();
    v55 = [*&v35[v54] fetchRequest];
    [v55 setPredicate_];

    sub_1B9F128B4();
    sub_1BA047948();

    sub_1BA18682C(v45);
    v56 = v41;
    v29 = v80;
    sub_1BA220238(v56, v42);

    v58 = v76;
    v57 = v77;
LABEL_12:
    v60 = v75;
    goto LABEL_13;
  }

  if (v17 == 10)
  {
    v20 = objc_allocWithZone(MEMORY[0x1E69A3B30]);
    v21 = v78;
    v22 = v79;
    v23 = [v20 initWithHealthStore_];
    v24 = objc_allocWithZone(type metadata accessor for HideablePregnancyArticlesFRCDataSource(0));
    v25 = &v24[qword_1EBBED908];
    *v25 = 0;
    *(v25 + 1) = 0;
    *&v24[qword_1EBBED900] = v23;
    v26 = &v24[qword_1EBBED910];
    v27 = v74;
    *v26 = v74;
    v26[8] = 1;
    *&v24[qword_1EBBED918] = v15;
    v28 = &v24[qword_1EBBED920];
    *v28 = 0;
    *(v28 + 1) = 0;
    v83 = v27;
    v84 = 1;
    v81 = v21;
    v82 = v22;
    v29 = v80;
    v30 = v80;

    v31 = v19;
    v32 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v31, v15, &v83, &v81);
    v33 = qword_1EBBED900;
    v34 = *&v32[qword_1EBBED900];
    v35 = v32;
    v36 = [v34 getCurrentPregnancyModel];
    v37 = v36;
    if (v36)
    {
      v38 = [v36 state];
    }

    else
    {
      v38 = 0;
    }

    v61 = *&v35[qword_1EBBED920];
    if (v61)
    {
      v62 = *&v35[qword_1EBBED920 + 8];

      v63 = v61(v38, v37 == 0);
      sub_1B9F0E310(v61, v62);
    }

    else
    {
      v63 = sub_1BA1BACA0(v38, v37 == 0);
    }

    v58 = v76;
    v64 = qword_1EDC84AD8;
    swift_beginAccess();
    v65 = [*&v35[v64] fetchRequest];
    [v65 setPredicate_];

    sub_1B9F128B4();
    sub_1BA047948();

    [*&v32[v33] registerObserver:v35 isUserInitiated:1];
    sub_1BA220238(v78, v79);
    v57 = v77;
    goto LABEL_12;
  }

  v83 = v74;
  v84 = 1;
  v81 = v78;
  v82 = v79;
  v59 = objc_allocWithZone(type metadata accessor for ArticlesFetchedResultsControllerDataSource(0));
  v35 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v19, v15, &v83, &v81);
  v58 = v76;
  v57 = v77;
  v60 = v75;
  v29 = v80;
LABEL_13:
  *(v60 + qword_1EDC84A98) = sub_1B9FDCB68(&unk_1F37FBD90);
  *(v60 + qword_1EDC84AA0) = 0x7FFFFFFFFFFFFFFFLL;
  v66 = sub_1BA0488BC();

  __swift_destroy_boxed_opaque_existential_1(v57);
  return v66;
}

uint64_t sub_1BA21F020()
{

  v1 = qword_1EDC84B68;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BA21F0EC(uint64_t a1, void *a2, void *a3)
{
  v44 = a2;
  v45 = a3;
  v47 = v3;
  v46 = *v3;
  v4 = sub_1BA4A1C68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A27B8();
  sub_1BA4A7258();
  v43 = MEMORY[0x1BFAED000]();

  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  sub_1B9F1B560(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5460;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1B9F1BE20();
  *(v9 + 64) = v11;
  *(v9 + 32) = 0xD000000000000013;
  *(v9 + 40) = 0x80000001BA4EF0F0;
  (*(v5 + 104))(v8, *MEMORY[0x1E69A3BB8], v4);
  v12 = sub_1BA4A1C58();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = v12;
  *(v9 + 80) = v14;
  v15 = sub_1BA4A6EE8();
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5480;
  *(v16 + 32) = [v44 profileIdentifier];
  v17 = MEMORY[0x1BFAED1E0](v16);

  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B8B60;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v19 = v43;
  *(v18 + 48) = v43;
  v20 = v15;
  v21 = v17;
  v22 = v19;
  v23 = sub_1BA4A6AE8();

  v24 = [objc_opt_self() andPredicateWithSubpredicates_];

  v25 = MEMORY[0x1BFAED110]();
  [v25 setPredicate_];
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B5470;
  v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v28 = sub_1BA4A6758();
  v29 = [v27 initWithKey:v28 ascending:1 selector:sel_localizedStandardCompare_];

  *(v26 + 32) = v29;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v30 = sub_1BA4A6AE8();

  [v25 setSortDescriptors_];

  v31 = v45;
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  v32 = v25;
  v33 = sub_1BA4A1B68();
  v34 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v32 managedObjectContext:v33 sectionNameKeyPath:0 cacheName:0];

  sub_1B9F126E0(0);
  v36 = objc_allocWithZone(v35);
  v37 = v34;
  v38 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v37);
  v39 = swift_allocObject();
  *(v39 + 16) = v46;
  v40 = sub_1B9F17A68(v38, sub_1BA2201B8, v39, 0);

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v40;
}

uint64_t sub_1BA21F5FC(void *a1, void *a2, void *a3)
{
  sub_1BA047740(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v39 - v8;
  sub_1BA4A27B8();
  sub_1BA21FB24(a1);
  v10 = MEMORY[0x1BFAED000]();

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v41 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5460;
  *(v11 + 32) = [a2 profileIdentifier];
  *(v11 + 40) = 0;
  v40 = objc_allocWithZone(type metadata accessor for GetMoreFromHealthResultsController(0));
  sub_1BA047740(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v12 = sub_1BA4A1C68();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5480;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x1E69A3C00], v12);
  v16 = sub_1BA4A0FA8();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = v10;
  v18 = MEMORY[0x1BFAED020](v15, 0, v9, v11);

  sub_1B9F1C1B0(v9);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B7510;
  *(v19 + 32) = v18;
  *(v19 + 40) = v17;
  sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
  v20 = v17;
  v21 = v18;
  v22 = sub_1BA4A6AE8();

  v23 = [objc_opt_self() andPredicateWithSubpredicates_];

  v24 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v25 = v23;
  v26 = sub_1BA4A6758();
  v27 = [v24 initWithKey:v26 ascending:0];

  v28 = MEMORY[0x1BFAED110]();
  [v28 setPredicate_];

  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BA4B5470;
  *(v29 + 32) = v27;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v30 = v27;
  v31 = sub_1BA4A6AE8();

  [v28 setSortDescriptors_];

  [v28 setFetchLimit_];
  v32 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v33 = v41;
  v34 = [v32 initWithFetchRequest:v28 managedObjectContext:v41 sectionNameKeyPath:0 cacheName:0];
  v35 = &v40[qword_1EDC61AF0];
  *v35 = sub_1BA236D80;
  v35[1] = 0;
  v36 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v34);

  v37 = sub_1BA0488BC();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v37;
}

unint64_t sub_1BA21FB24(void *a1)
{
  v1 = [a1 categoryID];
  v2 = sub_1BA4A7258();
  v3 = v2;
  if (v1 == 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (v2 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1BFAF2860](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 identifier];
        v10 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v12 = v11;

        if (v10 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v12 == v13)
        {
        }

        else
        {
          v15 = sub_1BA4A8338();

          if (v15)
          {
          }

          else
          {
            sub_1BA4A7ED8();
            sub_1BA4A7F18();
            sub_1BA4A7F28();
            sub_1BA4A7EE8();
          }
        }

        ++v5;
        if (v8 == i)
        {
          v16 = v18;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_24:

    return v16;
  }

  return v3;
}

uint64_t sub_1BA21FD1C(void *a1, void *a2, void *a3)
{
  sub_1B9F0A534(a3, v34);
  v6 = a2;
  v7 = sub_1BA4A3BC8();
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5470;
  sub_1BA4A27B8();
  sub_1BA4A7258();
  v9 = MEMORY[0x1BFAED000]();

  *(inited + 32) = v9;
  type metadata accessor for SnippetAllDataDataSource(0);
  swift_allocObject();
  v10 = sub_1BA28ED0C(v6, v34, v7, inited);

  v11 = sub_1B9F1E00C();
  v12 = *(v11 + 16);
  if (v12 >= *(v11 + 24) >> 1)
  {
    v11 = sub_1B9F1E00C();
  }

  *(v11 + 16) = v12 + 1;
  v13 = v11 + 16 * v12;
  *(v13 + 32) = v10;
  *(v13 + 40) = &protocol witness table for CompoundSectionedDataSource;
  v14 = [v6 profileIdentifier];
  v15 = [v14 type];

  if (v15 == 1)
  {
    sub_1B9F0A534(a3, v34);
    type metadata accessor for CategoryNoDataDataSource(0);
    swift_allocObject();
    v16 = v6;
    v17 = a1;
    v18 = sub_1BA21F0EC(v17, v16, v34);

    v19 = *(v11 + 16);
    if (v19 >= *(v11 + 24) >> 1)
    {
      v11 = sub_1B9F1E00C();
    }

    *(v11 + 16) = v19 + 1;
    v20 = v11 + 16 * v19;
    *(v20 + 32) = v18;
    *(v20 + 40) = &protocol witness table for MutableArrayDataSource;
  }

  sub_1B9F0A534(a3, v34);
  type metadata accessor for CategoryPromotionsDataSource(0);
  swift_allocObject();
  v21 = v6;
  v22 = a1;
  v23 = sub_1BA21F5FC(v22, v21, v34);

  v24 = *(v11 + 16);
  if (v24 >= *(v11 + 24) >> 1)
  {
    v11 = sub_1B9F1E00C();
  }

  *(v11 + 16) = v24 + 1;
  v25 = v11 + 16 * v24;
  *(v25 + 32) = v23;
  *(v25 + 40) = &protocol witness table for DataSourceWithSectionItemLimit<A>;
  sub_1B9F0A534(a3, v34);
  type metadata accessor for CategoryArticleDataSource(0);
  swift_allocObject();
  v26 = v21;
  v27 = v22;
  v28 = sub_1BA21E844(v27, v26, v34);
  v29 = *(v11 + 16);
  if (v29 >= *(v11 + 24) >> 1)
  {
    v33 = v28;
    v11 = sub_1B9F1E00C();
    v28 = v33;
  }

  *(v11 + 16) = v29 + 1;
  v30 = v11 + 16 * v29;
  *(v30 + 32) = v28;
  *(v30 + 40) = &protocol witness table for DataSourceWithSectionItemLimit<A>;
  v31 = CompoundSectionedDataSource.init(_:)(v11);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v31;
}

void sub_1BA2201C0(uint64_t a1)
{
  if (!qword_1EDC5E4F8)
  {
    type metadata accessor for DataTypeNoDataAvailableCell();
    sub_1B9F0D950(255, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    v1 = sub_1BA4A71D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E4F8);
    }
  }
}

double sub_1BA220238(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

__int128 *MicaAnimationView.__allocating_init(animation:inset:scaleMode:)(__int128 *a1, uint64_t a2, char *a3)
{
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return MicaAnimationView.init(animation:inset:scaleMode:)(a1, v5, a3);
}

uint64_t MicaAnimationView.Animation.init(name:bundle:supportsDarkMode:supportsRightToLeft:supportsNumberingSystems:supportsPad:maxStateWithDurations:maxLoopCount:initialDelay:restartLoopDuration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, char a13)
{
  v13 = *(a8 + 32);
  v14 = *(a8 + 40);
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 25) = a5;
  *(a9 + 26) = a6;
  *(a9 + 27) = a7;
  v15 = *(a8 + 16);
  *(a9 + 32) = *a8;
  *(a9 + 48) = v15;
  *(a9 + 64) = v13;
  *(a9 + 72) = v14;
  *(a9 + 80) = a11;
  *(a9 + 88) = a10;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  return result;
}

uint64_t ScaleMode.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

__int128 *MicaAnimationView.init(animation:inset:scaleMode:)(__int128 *a1, char a2, char *a3)
{
  v4 = v3;
  v8 = sub_1BA4A15D8();
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *a1;
  v12 = *(a1 + 2);
  v13 = *(a1 + 72);
  v51 = *(a1 + 56);
  v52 = v13;
  v53 = *(a1 + 88);
  v54 = *(a1 + 104);
  v14 = *(a1 + 40);
  v49 = *(a1 + 24);
  v50 = v14;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController] = 0;
  v15 = *a3;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_transitionSpeed] = 1065353216;
  v16 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize];
  *v16 = 0;
  v16[1] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount] = 0;
  v46 = *a1;
  v47[0] = v12;
  *&v47[5] = *(a1 + 56);
  *&v47[7] = *(a1 + 72);
  *&v47[9] = *(a1 + 88);
  v48 = *(a1 + 104);
  *&v47[1] = *(a1 + 24);
  *&v47[3] = *(a1 + 40);
  sub_1BA221D18();
  v17 = sub_1BA4A6758();

  v18 = sub_1BA4A6758();
  v19 = [v12 URLForResource:v17 withExtension:v18];

  if (v19)
  {
    sub_1BA221FE4();
    sub_1BA4A1588();

    v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v22 = sub_1BA220868(v11, v20, v21, 0);
    *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_package] = v22;
    v23 = 2.0;
    if (a2)
    {
      v23 = 0.0;
    }

    *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_insetSize] = v23;
    v24 = v22;
    v25 = sub_1BA220A30(v24);
    *&v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer] = v25;
    v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_state] = 0;
    v26 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_animation];
    *v26 = v55;
    v27 = v52;
    *(v26 + 56) = v51;
    *(v26 + 72) = v27;
    *(v26 + 88) = v53;
    v28 = v50;
    *(v26 + 24) = v49;
    *(v26 + 2) = v12;
    v26[104] = v54;
    *(v26 + 40) = v28;
    v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_scaleMode] = v15;
    [v25 bounds];
    v29 = &v4[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize];
    *v29 = v30;
    v29[1] = v31;
    v32 = type metadata accessor for MicaAnimationView();
    v45.receiver = v4;
    v45.super_class = v32;
    v33 = objc_msgSendSuper2(&v45, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v33 setUserInteractionEnabled_];
    [v33 setBackgroundColor_];
    v34 = OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer;
    v35 = *(v33 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer);
    sub_1BA220EC8(&v46);
    v44[0] = v46;
    v44[1] = *v47;
    v44[2] = *&v47[2];
    [v35 setAffineTransform_];

    v36 = [v33 layer];
    v37 = [objc_opt_self() mainScreen];
    [v37 scale];
    v39 = v38;

    [v36 setRasterizationScale_];
    v40 = [v33 layer];
    [v40 setShouldRasterize_];

    v41 = [v33 layer];
    v42 = *(v33 + v34);
    [v41 addSublayer_];

    return v33;
  }

  else
  {
    __break(1u);
    *&v46 = 0;
    *(&v46 + 1) = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000028, 0x80000001BA4F5500);
    *&v44[0] = v11;
    sub_1B9FED358();
    sub_1BA4A7FB8();
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

id sub_1BA220868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1BA4A1548();
  v7 = sub_1BA4A6758();

  if (a4)
  {
    v8 = sub_1BA4A6618();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1BA4A15D8();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1BA4A1488();

    swift_willThrow();
    v15 = sub_1BA4A15D8();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

id sub_1BA220A30(void *a1)
{
  result = [a1 rootLayer];
  if (result)
  {
    v3 = result;
    [result setGeometryFlipped_];
    [v3 setContentsGravity_];
    [v3 setMasksToBounds_];
    [v3 setFillMode_];
    v4 = [objc_opt_self() mainScreen];
    [v4 scale];
    v6 = v5;

    [v3 setContentsScale_];
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id MicaAnimationView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void MicaAnimationView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_transitionSpeed) = 1065353216;
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount) = 0;
  sub_1BA4A8018();
  __break(1u);
}

id sub_1BA220D4C(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for MicaAnimationView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v2 = &v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize];
  v3 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize];
  v4 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_previousViewSize + 8];
  [v1 bounds];
  v7 = v3 == v6 && v4 == v5;
  if (v7 || v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_scaleMode] == 2)
  {
    v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer];
    [v1 bounds];
    UIRectGetCenter();
    return [v8 setPosition_];
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer];
    sub_1BA220EC8(v15);
    v13[0] = v15[0];
    v13[1] = v15[1];
    v13[2] = v15[2];
    [v10 setAffineTransform_];
    [v1 bounds];
    UIRectGetCenter();
    [v10 setPosition_];
    [v1 bounds];
    *v2 = v11;
    *(v2 + 1) = v12;
    return [v1 invalidateIntrinsicContentSize];
  }
}

CGFloat sub_1BA220EC8@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer);
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_scaleMode) > 1u)
  {
    [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer) contentsScale];
    if (v5 < 3.0)
    {
      v5 = v5 * 1.5;
    }

    v4 = 1.0 / v5;
  }

  else
  {
    v4 = sub_1BA220FA0();
  }

  [v3 contentsTransform];
  CGAffineTransformScale(&v9, &v10, v4, v4);
  result = v9.a;
  v7 = *&v9.c;
  v8 = *&v9.tx;
  *a1 = *&v9.a;
  a1[1] = v7;
  a1[2] = v8;
  return result;
}

double sub_1BA220FA0()
{
  [v0 bounds];
  result = 1.0;
  if (v1 != 0.0 || v2 != 0.0)
  {
    if (v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_scaleMode])
    {
      if (v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_scaleMode] == 1)
      {
        result = v1 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize];
        if (result <= v2 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize + 8])
        {
          return v2 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize + 8];
        }
      }
    }

    else
    {
      result = v1 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize];
      if (v2 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize + 8] < result)
      {
        return v2 / *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_originalPackageSize + 8];
      }
    }
  }

  return result;
}

id sub_1BA221040()
{
  v1 = [v0 layer];
  [v1 setShouldRasterize_];

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_packageLayer];

  return sub_1BA2210A8(v2);
}

id sub_1BA2210A8(uint64_t a1)
{
  v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_state] = 0;
  v3 = [objc_allocWithZone(MEMORY[0x1E69794D0]) initWithLayer_];
  v4 = OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController;
  v5 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController] = v3;

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget_];
  v7 = *&v1[v4];
  if (v7)
  {
    LODWORD(v6) = 1.0;
    [v7 setInitialStatesOfLayer:a1 transitionSpeed:v6];
  }

  v8 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_animation + 88];

  return [v1 performSelector:sel_stepAnimationForLayer_ withObject:a1 afterDelay:v8];
}

void sub_1BA22117C()
{
  v1 = [v0 layer];
  [v1 setShouldRasterize_];

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget_];
  v2 = OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController;
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController] cancelTimers];
  v3 = *&v0[v2];
  if (v3)
  {
    if ([v3 removeAllStateChanges])
    {
      sub_1BA4A7BF8();
      swift_unknownObjectRelease();
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    v7 = v5;
    v8 = v6;
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  sub_1B9F23224(&v7);
  v4 = *&v0[v2];
  *&v0[v2] = 0;

  *&v0[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount] = 0;
}

void sub_1BA221280(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](*(v5 - 8), v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v76 - v12;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_state;
  v15 = v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_state];
  v16 = &v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_animation];
  v17 = v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_animation + 72];
  v18 = 1;
  if (v17 <= 1)
  {
    if (v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_animation + 72])
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }
  }

  else if (v17 == 2)
  {
    v19 = 3;
  }

  else
  {
    if (v17 != 3)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      goto LABEL_24;
    }

    v19 = 4;
  }

  v20 = v15 >= v19;
  v18 = v15 >= v19;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 8u >> (v15 & 0xF);
  }

  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = 4u >> (v15 & 0xF);
  }

  if (v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = 2u >> (v15 & 0xF);
  }

  if (v20)
  {
    v24 = 0;
  }

  else
  {
    v24 = 1u >> (v15 & 0xF);
  }

  if (v20)
  {
    v25 = 0;
  }

  else
  {
    v25 = v15 + 1;
  }

LABEL_24:
  v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_state] = v25;
  v26 = *(v16 + 72);
  v78 = ObjectType;
  v79 = v14;
  v80 = v11;
  if (v26 <= 1)
  {
    if (v26)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if ((v24 & 1) == 0)
    {
LABEL_49:
      if (v25 != 1)
      {
        v35 = v16[4];
        v34 = v16[5];
LABEL_73:
        v32 = 0;
        if (!v25)
        {
          goto LABEL_83;
        }

        v35 = v34;
        goto LABEL_81;
      }

      v31 = 0;
      v25 = 1;
      goto LABEL_58;
    }
  }

  else if (v26 == 2)
  {
    if ((v22 & 1) == 0)
    {
LABEL_44:
      if (v25 != 3)
      {
        v35 = v16[4];
        v34 = v16[5];
        v33 = v16[6];
        v36 = v16[7];
        goto LABEL_68;
      }

      v31 = 2;
      v25 = 3;
      goto LABEL_58;
    }
  }

  else if (v26 == 3)
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (!v18)
  {
    goto LABEL_46;
  }

  v27 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount];
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
    return;
  }

  *&v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount] = v29;
  v30 = *(v16 + 72);
  v25 = v2[v14];
  if (v30 > 1)
  {
    if (v30 != 2)
    {
      if (v30 == 3)
      {
LABEL_42:
        if (v25 != 4)
        {
          v35 = v16[4];
          v34 = v16[5];
          v33 = v16[6];
          v36 = v16[7];
          goto LABEL_62;
        }

        v31 = 3;
        v25 = 4;
        goto LABEL_58;
      }

LABEL_46:
      if (v25)
      {
        v32 = 0;
        v33 = 0.0;
LABEL_82:
        v82[0] = 0x206574617453;
        v82[1] = 0xE600000000000000;
        v81 = v25;
        v37 = sub_1BA4A82D8();
        MEMORY[0x1BFAF1350](v37);

        v35 = v33;
        goto LABEL_83;
      }

      v25 = 0;
      v31 = 4;
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  if (!*(v16 + 72))
  {
    goto LABEL_49;
  }

LABEL_51:
  if (v25 != 2)
  {
    v35 = v16[4];
    v34 = v16[5];
    v33 = v16[6];
    goto LABEL_75;
  }

  v31 = 1;
  v25 = 2;
LABEL_58:
  if (*&v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount] >= *(v16 + 10))
  {
    v35 = v16[12];
    v32 = *(v16 + 104);
    *&v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_loopCount] = 0;
    v25 = v2[v14];
    if (!v25)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

  v35 = v16[4];
  v34 = v16[5];
  v33 = v16[6];
  if (v31 <= 1)
  {
    if (!v31)
    {
      goto LABEL_73;
    }

LABEL_75:
    v32 = 0;
    if (v25)
    {
      if (v25 != 1)
      {
        goto LABEL_77;
      }

      goto LABEL_79;
    }

    goto LABEL_83;
  }

  v36 = v16[7];
  if (v31 != 2)
  {
    if (v31 == 3)
    {
LABEL_62:
      if (v25 > 1u)
      {
        if (v25 != 2)
        {
          if (v25 != 3)
          {
            v32 = 0;
            v33 = v16[8];
            v25 = 4;
            goto LABEL_82;
          }

LABEL_71:
          v32 = 0;
          v33 = v36;
          goto LABEL_82;
        }

LABEL_77:
        v32 = 0;
        goto LABEL_82;
      }

      v32 = 0;
      if (v25)
      {
        goto LABEL_79;
      }

      goto LABEL_83;
    }

    v35 = 0.0;
    v32 = 0;
    if (!v25)
    {
      goto LABEL_83;
    }

LABEL_81:
    v33 = v35;
    goto LABEL_82;
  }

LABEL_68:
  v32 = 0;
  if (v25)
  {
    if (v25 != 1)
    {
      if (v25 != 2)
      {
        goto LABEL_71;
      }

      goto LABEL_77;
    }

LABEL_79:
    v33 = v34;
    goto LABEL_82;
  }

LABEL_83:
  v38 = sub_1BA4A6758();

  v39 = [a1 stateWithName_];

  v41 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI17MicaAnimationView_stateController];
  if (v41)
  {
    LODWORD(v40) = 1.0;
    [v41 setState:v39 ofLayer:a1 transitionSpeed:v40];
  }

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget_];
  if (v32)
  {
    v42 = v39;
    v43 = v80;
    v44 = v8;
    sub_1BA4A3DD8();
    v45 = v2;
    v46 = sub_1BA4A3E88();
    v47 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v77 = v44;
      v49 = v48;
      v50 = swift_slowAlloc();
      v82[0] = v50;
      *v49 = 136315394;
      v51 = sub_1BA4A85D8();
      v53 = v5;
      v54 = sub_1B9F0B82C(v51, v52, v82);

      *(v49 + 4) = v54;
      *(v49 + 12) = 2080;
      LOBYTE(v81) = v2[v79];
      v55 = sub_1BA4A6808();
      v57 = sub_1B9F0B82C(v55, v56, v82);

      *(v49 + 14) = v57;
      _os_log_impl(&dword_1B9F07000, v46, v47, "[%s] Nil duration, ending animation for state: %s", v49, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      MEMORY[0x1BFAF43A0](v49, -1, -1);

      (*(v43 + 8))(v77, v53);
    }

    else
    {

      (*(v43 + 8))(v44, v5);
    }
  }

  else
  {
    v77 = a1;
    v58 = v35;
    sub_1BA4A3DD8();
    v59 = v2;
    v60 = sub_1BA4A3E88();
    v61 = v13;
    v62 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v60, v62))
    {
      v63 = swift_slowAlloc();
      v76 = v5;
      v64 = v63;
      v65 = swift_slowAlloc();
      v82[0] = v65;
      *v64 = 136315650;
      v66 = sub_1BA4A85D8();
      v78 = v61;
      v68 = sub_1B9F0B82C(v66, v67, v82);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2080;
      v69 = v80;
      LOBYTE(v81) = v2[v79];
      v70 = sub_1BA4A6808();
      v72 = sub_1B9F0B82C(v70, v71, v82);

      *(v64 + 14) = v72;
      *(v64 + 22) = 2080;
      v73 = sub_1BA4A6CC8();
      v75 = sub_1B9F0B82C(v73, v74, v82);

      *(v64 + 24) = v75;
      _os_log_impl(&dword_1B9F07000, v60, v62, "[%s] Scheduling animation for state: %s duration: %s", v64, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v65, -1, -1);
      MEMORY[0x1BFAF43A0](v64, -1, -1);

      (*(v69 + 8))(v78, v76);
    }

    else
    {

      (*(v80 + 8))(v61, v5);
    }

    [v59 performSelector:sel_stepAnimationForLayer_ withObject:v77 afterDelay:v58];
  }
}

id MicaAnimationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MicaAnimationView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MicaAnimationView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t MicaAnimationView.Animation.name.getter()
{
  v1 = *v0;

  return v1;
}

__n128 MicaAnimationView.Animation.maxStateWithDurations.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  result = *(v1 + 32);
  v5 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

id sub_1BA221D18()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 26);
  v5 = *(v0 + 27);
  v6 = objc_opt_self();
  result = [v6 _currentTraitCollection];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = result;
  v24 = v3;
  v25 = v4;
  v9 = [result userInterfaceStyle];

  result = [objc_opt_self() currentLocale];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = result;
  v11 = [result numberingSystem];

  v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v14 = v13;

  v15 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_];
  result = [v6 _currentTraitCollection];
  if (!result)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = v9 == 2;
  v18 = [result userInterfaceIdiom];

  if ((v17 & v2) != 1)
  {
    if (v12 == 1650553441 && v14 == 0xE400000000000000 || ((v21 = sub_1BA4A8338(), v12 == 1635149156) ? (v22 = v14 == 0xE400000000000000) : (v22 = 0), !v22 ? (v23 = 0) : (v23 = 1), (v21 & 1) != 0 || (v23 & 1) != 0))
    {
      if (!v25)
      {
LABEL_20:

        if (((v15 == 1) & v24) != 1)
        {
          goto LABEL_22;
        }

        v19 = 1819570733;
        v20 = 0xE400000000000000;
        goto LABEL_6;
      }
    }

    else if ((sub_1BA4A8338() & v25 & 1) == 0)
    {
      goto LABEL_20;
    }

    MEMORY[0x1BFAF1350](v12, v14);

    MEMORY[0x1BFAF1350](45, 0xE100000000000000);

    goto LABEL_22;
  }

  v19 = 0x6B7261642DLL;
  v20 = 0xE500000000000000;
LABEL_6:
  MEMORY[0x1BFAF1350](v19, v20);
LABEL_22:
  if (((v18 == 1) & v5) == 1)
  {
    MEMORY[0x1BFAF1350](1684107309, 0xE400000000000000);
  }

  return v1;
}

unint64_t sub_1BA221FE4()
{
  result = qword_1EBBEE988;
  if (!qword_1EBBEE988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBEE988);
  }

  return result;
}

HealthExperienceUI::MicaAnimationView::AnimationState_optional __swiftcall MicaAnimationView.AnimationState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1BA222074()
{
  result = qword_1EBBEE9C8;
  if (!qword_1EBBEE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9C8);
  }

  return result;
}

unint64_t sub_1BA2220CC()
{
  result = qword_1EBBEE9D0;
  if (!qword_1EBBEE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9D0);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BA222208(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1BA222250(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MicaAnimationView.Animation.AnimationStateWithDuration(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for MicaAnimationView.Animation.AnimationStateWithDuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MicaAnimationView.Animation.AnimationStateWithDuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BA222384(uint64_t a1)
{
  if (*(a1 + 40) <= 3u)
  {
    return *(a1 + 40);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1BA22239C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

void CellSelectionHandling.deselectOnRegularHorizontalSizeClass(for:)(void *a1@<X0>, char *a2@<X8>)
{
  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  *a2 = v5;
}

uint64_t CellSelectionHandling<>.didSelectCell(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 8))(v10, a3, a5);
  if (v10[3])
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
    if (swift_dynamicCast())
    {
      v7 = *(&v12 + 1);
      if (*(&v12 + 1))
      {
        v8 = v13;
        __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
        (*(v8 + 16))(a1, a2, v7, v8);
        return __swift_destroy_boxed_opaque_existential_1(&v11);
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v10, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  return sub_1B9F43A50(&v11, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
}

uint64_t getEnumTagSinglePayload for CellDeselectionBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CellDeselectionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

id sub_1BA22290C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrganDonationRegisteredViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OrganDonationRegisteredDataSource.HeaderItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void OrganDonationRegisteredDataSource.HeaderItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t OrganDonationRegisteredDataSource.HeaderItem.reuseIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1BA222A14(uint64_t a1)
{
  v2 = sub_1BA224C98();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA222A80(uint64_t a1)
{
  v2 = sub_1BA224C44();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

char *sub_1BA222ACC()
{
  sub_1B9F12538();
  v60 = *(v1 - 8);
  v61 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v59 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for ContentConfigurationItem(0);
  MEMORY[0x1EEE9AC00](v58, v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A1798();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A4428();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v0;
  swift_unknownObjectWeakInit();
  sub_1BA4A43A8();
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A43B8();
  v16 = [objc_opt_self() systemBlueColor];
  v62 = v15;
  v17 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v17(&v65, 0);
  sub_1B9F1C048(0, &qword_1EDC5DC90, &type metadata for ArrayDataSourceSection);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  sub_1B9F1B3E0(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B5460;
  *(v19 + 56) = &type metadata for OrganDonationRegisteredDataSource.HeaderItem;
  *(v19 + 64) = sub_1BA223E20();
  v20 = swift_allocObject();
  *(v19 + 32) = v20;
  *&v65 = 0x7449726564616548;
  *(&v65 + 1) = 0xEB000000005F6D65;
  sub_1BA4A1788();
  sub_1B9F2AA5C(&qword_1EDC6AE60, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v21 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v21);

  v22 = *(v8 + 8);
  v22(v11, v7);
  v23 = *(&v65 + 1);
  v20[2] = v65;
  v20[3] = v23;
  *&v65 = type metadata accessor for OrganDonationRegisteredHeaderCell();
  sub_1BA2240DC(0, &qword_1EBBE9DB8, type metadata accessor for OrganDonationRegisteredHeaderCell);
  v20[4] = sub_1BA4A6808();
  v20[5] = v24;
  *(v19 + 96) = &type metadata for OrganDonationRegisteredDataSource.BodyItem;
  *(v19 + 104) = sub_1BA223ED0();
  v25 = swift_allocObject();
  *(v19 + 72) = v25;
  *&v65 = 0x6D65744979646F42;
  *(&v65 + 1) = 0xE90000000000005FLL;
  sub_1BA4A1788();
  v26 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v26);

  v22(v11, v7);
  v27 = *(&v65 + 1);
  v25[2] = v65;
  v25[3] = v27;
  *&v65 = type metadata accessor for OrganDonationRegisteredBodyCell();
  sub_1BA2240DC(0, &qword_1EBBE9DB0, type metadata accessor for OrganDonationRegisteredBodyCell);
  v25[4] = sub_1BA4A6808();
  v25[5] = v28;
  sub_1BA4A1788();
  v29 = sub_1BA4A1748();
  v31 = v30;
  v22(v11, v7);
  v32 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = MEMORY[0x1E69E7CC0];
  *(inited + 56) = sub_1B9F1C5F0(v32);
  *(inited + 32) = 0;
  *(inited + 40) = 0;

  *(inited + 48) = v19;
  v33 = Array<A>.identifierToIndexDict()(v19);

  *(inited + 56) = v33;
  *(inited + 64) = v29;
  *(inited + 72) = v31;
  *&v65 = 0;
  *(&v65 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();

  strcpy(&v65, "MutableArray<");
  HIWORD(v65) = -4864;
  sub_1BA4A1788();
  v34 = sub_1BA4A1748();
  v36 = v35;
  v22(v11, v7);
  MEMORY[0x1BFAF1350](v34, v36);

  MEMORY[0x1BFAF1350](62, 0xE100000000000000);
  v37 = MutableArrayDataSource.init(arrangedSections:identifier:)(inited, v65, *(&v65 + 1));

  sub_1BA4A1788();
  v38 = sub_1BA4A1748();
  v40 = v39;
  v22(v11, v7);
  v41 = MEMORY[0x1E69DC110];
  v42 = v64;
  *(v6 + 12) = v64;
  *(v6 + 13) = v41;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6 + 9);
  (*(v63 + 16))(boxed_opaque_existential_1, v62, v42);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = v58;
  v46 = *(v58 + 40);
  v47 = sub_1BA4A4168();
  (*(*(v47 - 8) + 56))(&v6[v46], 1, 1, v47);
  v67 = 0;
  v65 = 0u;
  v66 = 0u;

  sub_1BA119108(&v65, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);
  *(&v66 + 1) = &type metadata for BasicCellSelectionHandler;
  v67 = &off_1F381BCC8;
  *&v65 = sub_1BA224B6C;
  *(&v65 + 1) = v44;
  LOBYTE(v66) = 2;
  sub_1B9F2F698(&v65, (v6 + 16));
  *&v6[v45[12]] = 0;
  *&v6[v45[13]] = 0;
  *v6 = v38;
  *(v6 + 1) = v40;
  v6[112] = 0;
  *(v6 + 15) = MEMORY[0x1E69E7CC0];
  *(v6 + 7) = 0;
  *(v6 + 8) = 0;
  v48 = &v6[v45[11]];
  *v48 = 0;
  *(v48 + 1) = 0;
  sub_1BA119108(&v65, qword_1EDC67B40, &qword_1EDC6CCF0, &protocol descriptor for CellSelectionHandling);

  v49 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  v51 = v59;
  v50 = v60;
  v52 = v61;
  (*(v60 + 16))(v59, &v37[v49], v61);
  v53 = sub_1BA4A4578();
  result = (*(v50 + 8))(v51, v52);
  if (v53[2])
  {
    v55 = v53[4];
    v56 = v53[5];

    sub_1BA224128(v6, v55, v56, v37);

    (*(v63 + 8))(v62, v64);
    sub_1BA224B74(v6);
    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1BA2233C8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectWeakAssign();
    sub_1BA2238D0();
  }

  return result;
}

void sub_1BA223460()
{
  v0 = sub_1BA4A6478();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A64C8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F38BF4();
  v10 = sub_1BA4A7308();
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BA224C3C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_30_0;
  v12 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F2AA5C(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1B9F3F378(0);
  sub_1B9F2AA5C(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v9, v4, v12);
  _Block_release(v12);

  (*(v1 + 8))(v4, v0);
  (*(v6 + 8))(v9, v5);
  v13 = [objc_opt_self() defaultCenter];
  v14 = sub_1BA4A73D8();
  [v13 removeObserver:v15[1] name:v14 object:0];
}

double sub_1BA223790(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BA2238D0();
  }

  return result;
}

void sub_1BA2238D0()
{
  v1 = v0;
  sub_1BA4A2998();
  v2 = sub_1BA4A2988();
  v3 = sub_1BA4A2968();

  LOBYTE(v2) = sub_1BA4A2C08();
  sub_1BA1698F8(v3);
  if (v2)
  {
    v4 = [objc_opt_self() defaultCenter];
    v14 = sub_1BA4A73D8();
    [v4 addObserver:v1 selector:sel_listenForMedicalIDUpdatesWithNotification_ name:v14 object:0];
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69A4450]) init];
    v6 = sub_1BA4A2988();
    v7 = sub_1BA4A2968();

    if (v7 >= 3)
    {
      [v5 setMedicalIDData_];
    }

    sub_1BA1698F8(v7);
    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1BA224C34;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BA40695C;
    aBlock[3] = &block_descriptor_59;
    v9 = _Block_copy(aBlock);

    [v5 setRegistrationCompletionHandler_];
    _Block_release(v9);
    v10 = [objc_allocWithZone(MEMORY[0x1E69A4420]) initWithRootViewController_];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [Strong navigationController];

      if (v13)
      {
        [v13 presentViewController:v10 animated:1 completion:0];
      }
    }
  }
}

void sub_1BA223B48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_6:

      return;
    }

    v3 = Strong;
    type metadata accessor for OrganDonationRegisteredViewController();
    if (swift_dynamicCastClass())
    {
      v4 = swift_unknownObjectWeakLoadStrong();

      if (v4)
      {
        [v4 dismissViewControllerAnimated:1 completion:0];
        sub_1BA22C664();

        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_6;
    }
  }
}

uint64_t OrganDonationRegisteredDataSource.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  MEMORY[0x1BFAF44B0](v0 + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredDataSource_cachedPresentingViewController);
  return v0;
}

uint64_t OrganDonationRegisteredDataSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  MEMORY[0x1BFAF44B0](v0 + OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationRegisteredDataSource_cachedPresentingViewController);

  return swift_deallocClassInstance();
}

unint64_t sub_1BA223E20()
{
  result = qword_1EBBEE9D8;
  if (!qword_1EBBEE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9D8);
  }

  return result;
}

unint64_t sub_1BA223E78()
{
  result = qword_1EBBEE9E0;
  if (!qword_1EBBEE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9E0);
  }

  return result;
}

unint64_t sub_1BA223ED0()
{
  result = qword_1EBBEE9E8;
  if (!qword_1EBBEE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9E8);
  }

  return result;
}

unint64_t sub_1BA223F28()
{
  result = qword_1EBBEE9F0;
  if (!qword_1EBBEE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE9F0);
  }

  return result;
}

uint64_t type metadata accessor for OrganDonationRegisteredDataSource(uint64_t a1)
{
  result = qword_1EBBEEA00;
  if (!qword_1EBBEEA00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA2240DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA224128(uint64_t *a1, char *a2, uint64_t a3, char *a4)
{
  v84 = a1;
  v85 = a2;
  v78 = *a4;
  v6 = sub_1BA4A1798();
  v81 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v83 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v82 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F12538();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v78 - v21;
  v80 = type metadata accessor for ContentConfigurationItem(0);
  v97[3] = v80;
  v79 = sub_1B9F2AA5C(&qword_1EDC664A0, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v97[4] = v79;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v97);
  v24 = v84;
  v84 = boxed_opaque_existential_1;
  sub_1BA224BD0(v24, boxed_opaque_existential_1);
  if (a3)
  {
    v81 = v10;
    v25 = a3;
  }

  else
  {
    v85 = v9;
    v26 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
    swift_beginAccess();
    (*(v15 + 16))(v22, &a4[v26], v14);
    v27 = sub_1BA4A4578();
    (*(v15 + 8))(v22, v14);
    v28 = *(v27 + 16);
    if (!v28)
    {

      sub_1B9F1B3E0(0, &qword_1EDC5DCA0, &qword_1EDC6AD50, MEMORY[0x1E69A3310], MEMORY[0x1E69E6F90]);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1BA4B5480;
      sub_1B9F0A534(v97, v70 + 32);
      v71 = v85;
      sub_1BA4A1788();
      v72 = sub_1BA4A1748();
      v74 = v73;
      (*(v81 + 8))(v71, v6);
      sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

      v76 = Array<A>.identifierToIndexDict()(v75);

      v86 = 0uLL;
      v87 = v70;
      v88 = v76;
      v89 = v72;
      v90 = v74;
      sub_1BA0E8FD4(&v86, 0);

      return __swift_destroy_boxed_opaque_existential_1(v97);
    }

    v81 = v10;
    v29 = (v27 + 16 + 16 * v28);
    v25 = v29[1];
    v85 = *v29;
  }

  v30 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  v31 = a4;
  swift_beginAccess();
  (*(v15 + 16))(v18, &a4[v30], v14);
  v32 = v85;
  *&v86 = v85;
  *(&v86 + 1) = v25;

  sub_1BA4A44E8();
  v34 = v33;
  (*(v15 + 8))(v18, v14);
  if (v34)
  {
    v35 = v82;
    sub_1BA4A3D88();

    v36 = sub_1BA4A3E88();
    v37 = sub_1BA4A6FA8();

    v38 = v25;
    if (os_log_type_enabled(v36, v37))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v86 = v40;
      *v39 = 136315650;
      nullsub_1();
      v41 = sub_1BA4A85D8();
      v43 = sub_1B9F0B82C(v41, v42, &v86);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4EAC50, &v86);
      *(v39 + 22) = 2080;
      v44 = sub_1B9F0B82C(v85, v38, &v86);

      *(v39 + 24) = v44;
      _os_log_impl(&dword_1B9F07000, v36, v37, "[%s] %s Failed to append item to given section with id: %s, because it doesn't exist.", v39, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v40, -1, -1);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
    }

    else
    {
    }

    (*(v83 + 8))(v35, v81);
  }

  else
  {
    sub_1B9F1C048(0, &qword_1EDC6E330, MEMORY[0x1E69E6158]);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1BA4B5480;
    v46 = v84[1];
    *(v45 + 32) = *v84;
    *(v45 + 40) = v46;
    *&v93 = v32;
    *(&v93 + 1) = v25;
    swift_beginAccess();

    sub_1BA4A4448();
    swift_endAccess();

    v47 = sub_1BA0E7AC0(v91);
    v49 = sub_1BA0F0994(v96, v32, v25);
    if (*(v48 + 16))
    {
      v50 = v48;
      v85 = v31;
      sub_1B9F0A534(v97, &v86);
      v51 = *(v50 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v50 + 16) = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = sub_1B9F281E8(0, v51[2] + 1, 1, v51);
        *(v50 + 16) = v51;
      }

      v54 = v51[2];
      v53 = v51[3];
      if (v54 >= v53 >> 1)
      {
        *(v50 + 16) = sub_1B9F281E8((v53 > 1), v54 + 1, 1, v51);
      }

      v55 = __swift_mutable_project_boxed_opaque_existential_1(&v86, v88);
      v56 = MEMORY[0x1EEE9AC00](v55, v55);
      v58 = &v78 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v59 + 16))(v58, v56);
      v94 = v80;
      v95 = v79;
      v60 = __swift_allocate_boxed_opaque_existential_1(&v93);
      sub_1BA058CEC(v58, v60);
      v61 = *(v50 + 16);
      *(v61 + 16) = v54 + 1;
      sub_1B9F1134C(&v93, v61 + 40 * v54 + 32);
      __swift_destroy_boxed_opaque_existential_1(&v86);
      *(v50 + 24) = Array<A>.identifierToIndexDict()(*(v50 + 16));

      (v49)(v96, 0);

      (v47)(v91, 0);
      v31 = v85;
    }

    else
    {
      (v49)(v96, 0);

      (v47)(v91, 0);
    }

    sub_1B9F0A534(v97, &v93);
    sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(v91, &v86);
      __swift_project_boxed_opaque_existential_1(&v86, v88);
      v62 = sub_1BA4A2D58();
      v64 = v63;
      __swift_project_boxed_opaque_existential_1(&v86, v88);
      v65 = sub_1BA4A2E58();
      v67 = v66;
      v68 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_currentItemsReuseIdentifiers;
      swift_beginAccess();
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *&v91[0] = *&v31[v68];
      *&v31[v68] = 0x8000000000000000;
      sub_1B9F248E4(v65, v67, v62, v64, v69);

      *&v31[v68] = *&v91[0];
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1(&v86);
    }

    else
    {
      v92 = 0;
      memset(v91, 0, sizeof(v91));
      sub_1BA119108(v91, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    }

    sub_1BA0EF3D0();
  }

  return __swift_destroy_boxed_opaque_existential_1(v97);
}

uint64_t sub_1BA224B74(uint64_t a1)
{
  v2 = type metadata accessor for ContentConfigurationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BA224BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentConfigurationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA224C44()
{
  result = qword_1EBBEEA10;
  if (!qword_1EBBEEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEA10);
  }

  return result;
}

unint64_t sub_1BA224C98()
{
  result = qword_1EBBEEA18;
  if (!qword_1EBBEEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEA18);
  }

  return result;
}

uint64_t CoreDataFeedItemSearchResultProvider.__allocating_init(healthExperienceStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1B9F25598(a1, v2 + 16);
  return v2;
}

uint64_t sub_1BA224D90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1BA4A27B8();
  v6 = sub_1BA225028(a1, a2);
  v7 = sub_1BA4A26C8();

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v8 = sub_1BA4A1B78();
  v9 = sub_1BA4A7598();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_12:

    return MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1BA4A7CC8();
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_3:
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1BA4A7F08();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFAF2860](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 objectID];

      sub_1BA4A7ED8();
      sub_1BA4A7F18();
      sub_1BA4A7F28();
      sub_1BA4A7EE8();
    }

    while (v10 != v12);

    return v16;
  }

  return result;
}

uint64_t CoreDataFeedItemSearchResultProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BA224FB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = sub_1BA224D90(a2, a3);
  v4 = *(v3 + 8);

  return v4();
}

id sub_1BA225028(uint64_t a1, uint64_t a2)
{
  sub_1B9F1BFFC();
  sub_1B9F2EAC0(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5460;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1B9F1BE20();
  strcpy((v4 + 32), "localizedTitle");
  *(v4 + 47) = -18;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  v7 = sub_1BA4A6EE8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5460;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x80000001BA4F58D0;
  *(v8 + 96) = v5;
  *(v8 + 104) = v6;
  *(v8 + 72) = a1;
  *(v8 + 80) = a2;

  v9 = sub_1BA4A6EE8();
  sub_1B9F109F8();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B7510;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v11 = v7;
  v12 = v9;
  v13 = sub_1BA4A6AE8();

  v14 = objc_opt_self();
  v15 = [v14 orPredicateWithSubpredicates_];

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4B5480;
  *(v16 + 56) = v5;
  *(v16 + 64) = v6;
  strcpy((v16 + 32), "indexForSearch");
  *(v16 + 47) = -18;
  v17 = sub_1BA4A6EE8();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B7510;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v19 = v15;
  v20 = v17;
  v21 = sub_1BA4A6AE8();

  v22 = [v14 andPredicateWithSubpredicates_];

  return v22;
}

uint64_t HeightItem.reuseIdentifier.getter()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA2253B4();
  return sub_1BA4A6808();
}

unint64_t sub_1BA2253B4()
{
  result = qword_1EBBE9718;
  if (!qword_1EBBE9718)
  {
    type metadata accessor for TitleValueTableViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9718);
  }

  return result;
}

uint64_t HeightItem.uniqueIdentifier.getter()
{
  sub_1BA2254B4();
  v1 = sub_1BA4A6808();
  v2 = *v0;
  sub_1BA01D2B0(0);
  v3 = v2;
  v4 = sub_1BA4A6808();
  v6 = v5;

  MEMORY[0x1BFAF1350](v4, v6);

  return v1;
}

unint64_t sub_1BA2254B4()
{
  result = qword_1EBBEEA20;
  if (!qword_1EBBEEA20)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBEEA20);
  }

  return result;
}

uint64_t sub_1BA2254FC()
{
  type metadata accessor for TitleValueTableViewCell();
  sub_1BA2253B4();
  return sub_1BA4A6808();
}

uint64_t sub_1BA225538(uint64_t a1)
{
  sub_1BA2254B4();
  v2 = sub_1BA4A6808();
  v3 = *v1;
  sub_1BA01D2B0(0);
  v4 = v3;
  v5 = sub_1BA4A6808();
  v7 = v6;

  MEMORY[0x1BFAF1350](v5, v7);

  return v2;
}

uint64_t sub_1BA2255E8(uint64_t a1)
{
  v2 = sub_1BA120ACC();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t HeightItem.title.getter()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t HeightItem.value.getter()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 8), v2);
    v8 = 1;
    v4 = *(v3 + 16);
    v5 = v1;
    v6 = v4(&v8, v5, v2, v3);

    return v6;
  }

  else
  {
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    return sub_1BA4A1318();
  }
}

unint64_t sub_1BA2257D0()
{
  result = qword_1EBBEEA28;
  if (!qword_1EBBEEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEA28);
  }

  return result;
}

uint64_t sub_1BA225824()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  return sub_1BA4A1318();
}

uint64_t sub_1BA2258B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BA2258FC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

id CoreTextView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CoreTextView.SizingStrategy.hashValue.getter()
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](0);
  return sub_1BA4A84D8();
}

unint64_t static CoreTextView.defaultAttributes.getter()
{
  sub_1BA22BEE0(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = v1;
  v5 = [v2 preferredFontForTextStyle_];
  v6 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 labelColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v10;
  v11 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_1BA225B84()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1BA225BC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A64F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
  swift_beginAccess();
  *&v2[v9] = a1;
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v8 = sub_1BA4A7308();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  LOBYTE(a1) = sub_1BA4A6528();
  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    [v2 setNeedsLayout];
    return [v2 invalidateIntrinsicContentSize];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1BA225D34(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1BA4A64F8();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[6] = v8;
  swift_beginAccess();
  return sub_1BA225E24;
}

void sub_1BA225E24(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[6];
  if ((a2 & 1) == 0)
  {
    v5 = v3[4];
    v6 = v3[5];
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    *v4 = sub_1BA4A7308();
    (*(v6 + 104))(v4, *MEMORY[0x1E69E8020], v5);
    v7 = sub_1BA4A6528();
    (*(v6 + 8))(v4, v5);
    if ((v7 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v4 = v3[6];
    v8 = v3[3];
    [v8 setNeedsLayout];
    [v8 invalidateIntrinsicContentSize];
  }

  free(v4);

  free(v3);
}

id sub_1BA225F2C()
{
  v0 = [objc_opt_self() defaultParagraphStyle];
  [v0 mutableCopy];

  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8);
  swift_dynamicCast();
  [v2 setParagraphSpacing_];
  [v2 setLineBreakMode_];
  return v2;
}

double sub_1BA226004()
{
  result = 0.0;
  xmmword_1EBBEEA30 = 0u;
  unk_1EBBEEA40 = 0u;
  LOWORD(xmmword_1EBBEEA50) = 1;
  *(&xmmword_1EBBEEA50 + 1) = MEMORY[0x1E69E7CC0];
  qword_1EBBEEA60 = MEMORY[0x1E69E7CC0];
  return result;
}

id sub_1BA226034()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView____lazy_storage___tapRecognizer;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView____lazy_storage___tapRecognizer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView____lazy_storage___tapRecognizer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_onLinkTap_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id CoreTextView.init()(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for CoreTextView());
  v2 = CoreTextView.init(frame:columns:)(1, 0, 0.0, 0.0, 0.0, 0.0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

id CoreTextView.init(frame:columns:)(uint64_t a1, char a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = sub_1BA4A64F8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_attributedText] = 0;
  v6[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linksEnabled] = 1;
  v19 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linkColor;
  *&v7[v19] = [objc_opt_self() linkColor];
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView____lazy_storage___tapRecognizer] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_gutter] = 0x4030000000000000;
  v20 = &v7[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 6) = 0;
  *v18 = sub_1BA4A7308();
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  LOBYTE(v20) = sub_1BA4A6528();
  result = (*(v15 + 8))(v18, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v22 = 1;
  }

  else
  {
    v22 = a1;
  }

  *&v7[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns] = v22;
  if (v22 < 1)
  {
    goto LABEL_10;
  }

  v23 = type metadata accessor for CoreTextView();
  v33.receiver = v7;
  v33.super_class = v23;
  v24 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a3, a4, a5, a6);
  [v24 setOpaque_];
  v25 = [v24 layer];
  [v25 setNeedsDisplayOnBoundsChange_];

  v26 = sub_1BA226034();
  [v24 addGestureRecognizer_];

  v27 = [v24 layer];
  v28 = [v24 layer];

  v29 = [v28 contentsAreFlipped];
  v30 = MEMORY[0x1E6979DC0];
  if (!v29)
  {
    v30 = MEMORY[0x1E6979E08];
  }

  v31 = *v30;
  [v27 setContentsGravity_];

  v32 = v24;
  [v32 setIsAccessibilityElement_];
  [v32 setAccessibilityContainerType_];

  return v32;
}

void sub_1BA226598()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_attributedText];
  if (v1)
  {
    [v1 mutableCopy];
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
    sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
    if (swift_dynamicCast())
    {
      v2 = v46;
      v3 = [v46 length];
      if (v0[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linksEnabled] == 1)
      {
        v4 = *MEMORY[0x1E69DB670];
        v5 = swift_allocObject();
        *(v5 + 16) = v46;
        *(v5 + 24) = v0;
        v6 = swift_allocObject();
        *&v39 = sub_1BA22C070;
        *(v6 + 16) = sub_1BA22C070;
        *(v6 + 24) = v5;
        v7 = v5;
        v43 = sub_1BA22C258;
        v44 = v6;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v41 = sub_1BA49B910;
        v42 = &block_descriptor_43_0;
        v8 = _Block_copy(&aBlock);
        v9 = v2;
        v10 = v0;

        [v9 enumerateAttribute:v4 inRange:0 options:v3 usingBlock:{0, v8}];
        _Block_release(v8);
        LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

        if (v4)
        {
          __break(1u);
          return;
        }

        v11 = v7;
        v12 = v39;
      }

      else
      {
        v12 = 0;
        v11 = 0;
      }

      swift_beginAccess();
      v13 = *MEMORY[0x1E69DB688];
      v14 = [objc_opt_self() defaultParagraphStyle];
      [v14 mutableCopy];

      sub_1BA4A7BF8();
      swift_unknownObjectRelease();
      sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8);
      swift_dynamicCast();
      v15 = v45;
      [v45 setParagraphSpacing_];
      [v15 setLineBreakMode_];
      [v2 addAttribute:v13 value:v15 range:{0, v3}];

      v16 = [objc_opt_self() preferredLanguages];
      v17 = sub_1BA4A6B08();

      if (v17[2] && (v18 = v17[4], v19 = v17[5], , v20 = , *&aBlock = 45, *(&aBlock + 1) = 0xE100000000000000, MEMORY[0x1EEE9AC00](v20, v21), p_aBlock = &aBlock, v22 = sub_1BA49D4AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B9F13FDC, v37, v18, v19, &v39), *(v22 + 16)))
      {
        v39 = *(v22 + 32);
        v24 = *(v22 + 48);
        v23 = *(v22 + 56);

        sub_1BA22C0AC(0, &qword_1EDC5DB70, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BA4B9FD0;
        *(inited + 32) = sub_1BA4A7B08();
        *(inited + 40) = v26;
        *(inited + 48) = v27;
        *(inited + 56) = v28;
        *(inited + 64) = sub_1BA4A7B08();
        *(inited + 72) = v29;
        *(inited + 80) = v30;
        *(inited + 88) = v31;
        v32 = sub_1BA4A7B08();
        *(inited + 96) = v32;
        *(inited + 104) = v33;
        *(inited + 112) = v34;
        *(inited + 120) = v35;
        aBlock = v39;
        v41 = v24;
        v42 = v23;
        MEMORY[0x1EEE9AC00](v32, v33);
        p_aBlock = &aBlock;
        v36 = sub_1BA011A3C(sub_1BA22C050, v37, inited);
        swift_setDeallocating();
        swift_arrayDestroy();

        if (v36)
        {
          NSAttributedString.copyWithUnbreakableWords()();

          sub_1B9F0E310(v12, v11);
          return;
        }
      }

      else
      {
      }

      sub_1B9F0E310(v12, v11);
    }
  }
}

NSMutableAttributedString __swiftcall NSAttributedString.copyWithUnbreakableWords()()
{
  v27 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
  v1 = [v27 string];
  if (!v1)
  {
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v2 = sub_1BA4A6758();

    v1 = v2;
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = v1;
  Length = CFStringGetLength(v4);
  v6 = CFLocaleGetSystem();
  v28.location = 0;
  v28.length = Length;
  v7 = CFStringTokenizerCreate(v3, v4, v28, 0, v6);

  result.super.super.isa = CFStringTokenizerAdvanceToNextToken(v7);
  v26 = v4;
  for (i = MEMORY[0x1E69E7CC0]; result.super.super.isa; result.super.super.isa = CFStringTokenizerAdvanceToNextToken(v7))
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_1BA280138(0, *(i + 2) + 1, 1, i);
    }

    v12 = *(i + 2);
    v11 = *(i + 3);
    if (v12 >= v11 >> 1)
    {
      i = sub_1BA280138((v11 > 1), v12 + 1, 1, i);
    }

    *(i + 2) = v12 + 1;
    *&i[16 * v12 + 32] = CurrentTokenRange;
  }

  v25 = v7;
  v13 = *(i + 2);
  if (v13)
  {
    v14 = &i[16 * v13 + 24];
    while (v13 <= *(i + 2))
    {
      --v13;
      v15 = *(v14 - 1);
      v16 = *v14;
      v17 = [v27 mutableString];
      v18 = [v17 substringWithRange_];

      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v21 = v20;

      v22 = [v27 mutableString];
      sub_1BA229FF8(v19, v21, v23);

      v24 = sub_1BA4A6758();

      [v22 replaceCharactersInRange:v15 withString:{v16, v24}];

      v14 -= 16;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    return v27;
  }

  return result;
}

__n128 sub_1BA226E24@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v170 = type metadata accessor for CoreTextView.Link(0);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170, v11);
  v176 = (&v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BA22BEE0(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v144 - v19;
  v21 = sub_1BA4A15D8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v23);
  *&v177 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA226598();
  if (!v25)
  {
    if (qword_1EBBE8528 != -1)
    {
      goto LABEL_84;
    }

    goto LABEL_64;
  }

  v26 = v25;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
  swift_beginAccess();
  v28 = *&v5[v27];
  if (v28 <= 1)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = (v28 - 1) * 16.0;
  }

  v192.origin.x = a2;
  v192.origin.y = a3;
  v192.size.width = a4;
  v192.size.height = a5;
  Width = CGRectGetWidth(v192);
  v193.origin.x = a2;
  v193.origin.y = a3;
  v193.size.width = a4;
  v193.size.height = a5;
  Height = CGRectGetHeight(v193);
  v154 = CTFramesetterCreateWithAttributedString(v26);
  if (v28 < 0)
  {
    goto LABEL_83;
  }

  v155 = v26;
  v145 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  if (!v28)
  {
    v32 = 0;
    v160 = MEMORY[0x1E69E7CC0];
LABEL_66:
    v122 = [(__CFAttributedString *)v155 length];
    v123 = *(v160 + 2);
    v124 = MEMORY[0x1E69E7CC0];
    if (v123)
    {
      *&aBlock = MEMORY[0x1E69E7CC0];

      sub_1BA067060(0, v123, 0);
      v124 = aBlock;
      v125 = *(aBlock + 16);
      v126 = 4 * v125;
      v127 = v160 + 56;
      do
      {
        v128 = *(v127 - 1);
        v129 = *v127;
        *&aBlock = v124;
        v130 = v124[3];
        v131 = v125 + 1;
        if (v125 >= v130 >> 1)
        {
          v180 = v128;
          v179 = v129;
          sub_1BA067060((v130 > 1), v125 + 1, 1);
          v129 = v179;
          v128 = v180;
          v124 = aBlock;
        }

        v124[2] = v131;
        v132 = &v124[v126];
        *(v132 + 2) = v128;
        *(v132 + 3) = v129;
        v126 += 4;
        v127 += 48;
        v125 = v131;
        --v123;
      }

      while (v123);
    }

    v133 = v124[2];
    a1 = v145;
    if (v133)
    {
      v134 = v124 + 7;
      *&v135 = v124[7];
      *&v136 = v124[4];
      *&v137 = v124[5];
      v138.n128_u64[0] = v124[6];
      v139 = v124[2];
      do
      {
        *&v136 = CGRectUnion(*&v136, *(v134 - 3));
        v134 += 4;
        --v139;
      }

      while (v139);
      v180 = v136;
      v179 = v138;
      v178 = v137;
      v177 = v135;

      v140.n128_u64[0] = v179.n128_u64[0];
      v140.n128_u64[1] = v177;
      v179 = v140;
      *&v141 = v180;
      *(&v141 + 1) = v178;
      v142 = &v190;
    }

    else
    {

      v141 = 0uLL;
      v180 = 0u;
      v142 = &v189;
    }

    *(v142 - 16) = v141;

    LOBYTE(aBlock) = v133 == 0;
    v121 = (v133 == 0) | ((v32 != v122) << 8);
    v120 = v160;
    goto LABEL_78;
  }

  v174 = v20;
  v175 = v16;
  v148.origin.x = a2;
  v148.origin.y = a3;
  v148.size.width = a4;
  v148.size.height = a5;
  v159 = v5;
  v32 = 0;
  v33 = 0;
  v147 = &v186;
  a1 = v22 + 56;
  v34 = (v22 + 48);
  v173 = (v22 + 32);
  v168 = (v22 + 16);
  v167 = (v22 + 8);
  v35 = (Width - v29) / v28;
  v152 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linksEnabled;
  v172 = *MEMORY[0x1E69DB670];
  v36 = 0.0;
  v146 = 1107296256;
  v160 = MEMORY[0x1E69E7CC0];
  v151 = v28;
  v150 = v35;
  while (1)
  {
    v37 = [v159 effectiveUserInterfaceLayoutDirection];
    v194.origin.y = 0.0;
    v194.origin.x = v36;
    v194.size.width = v35;
    v194.size.height = Height;
    v195 = CGRectIntegral(v194);
    y = v195.origin.y;
    v39 = v195.size.width;
    v40 = v195.size.height;
    if (v37 == 1)
    {
      x = v195.origin.x;
      v42 = CGRectGetWidth(v148) - v195.origin.x;
      v196.origin.x = x;
      v196.origin.y = y;
      v196.size.width = v39;
      v196.size.height = v40;
      v195.origin.x = v42 - CGRectGetWidth(v196);
    }

    v43 = v155;
    v44 = y;
    v45 = v39;
    v46 = v40;
    v47 = CGPathCreateWithRect(v195, 0);
    v48 = [(__CFAttributedString *)v43 length];
    if (__OFSUB__(v48, v32))
    {
      goto LABEL_80;
    }

    v191.location = v32;
    v179.n128_u64[0] = v48 - v32;
    v191.length = v48 - v32;
    Frame = CTFramesetterCreateFrame(v154, v191, v47, 0);
    v156 = v47;

    v164 = Frame;
    sub_1BA228008(&v183);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    if ((v184 & 1) == 0)
    {
      *&v50 = CGRectOffset(v183, v36, 0.0);
      v51 = v54;
      v52 = v55;
      v53 = v56;
    }

    *&v180 = v32;
    v158 = v50;
    v157 = v33;
    v57 = sub_1BA2283C8();
    v58 = *(v57 + 2);
    if (v58)
    {
      v59 = v57 + 56;
      v60 = MEMORY[0x1E69E7CC0];
      do
      {
        v197 = CGRectOffset(*(v59 - 24), v36, 0.0);
        v61 = v197.origin.x;
        v62 = v197.origin.y;
        v63 = v197.size.width;
        v64 = v197.size.height;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1BA28027C(0, *(v60 + 2) + 1, 1, v60);
        }

        v66 = *(v60 + 2);
        v65 = *(v60 + 3);
        if (v66 >= v65 >> 1)
        {
          v60 = sub_1BA28027C((v65 > 1), v66 + 1, 1, v60);
        }

        *(v60 + 2) = v66 + 1;
        v67 = &v60[32 * v66];
        v67[4] = v61;
        v67[5] = v62;
        v67[6] = v63;
        v67[7] = v64;
        v59 += 32;
        --v58;
      }

      while (v58);
    }

    else
    {
      v60 = MEMORY[0x1E69E7CC0];
    }

    if (*(v159 + v152) == 1)
    {
      break;
    }

LABEL_55:
    v112 = v164;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = v160;
    }

    else
    {
      v113 = sub_1BA2803A4(0, *(v160 + 2) + 1, 1, v160);
    }

    v115 = *(v113 + 2);
    v114 = *(v113 + 3);
    v116 = v158;
    if (v115 >= v114 >> 1)
    {
      v119 = sub_1BA2803A4((v114 > 1), v115 + 1, 1, v113);
      v116 = v158;
      v113 = v119;
    }

    *(v113 + 2) = v115 + 1;
    v160 = v113;
    v117 = &v113[48 * v115];
    *(v117 + 4) = v112;
    *(v117 + 5) = v116;
    *(v117 + 6) = v51;
    *(v117 + 7) = v52;
    *(v117 + 8) = v53;
    *(v117 + 9) = v60;
    VisibleStringRange = CTFrameGetVisibleStringRange(v112);

    v32 = VisibleStringRange.location + VisibleStringRange.length;
    if (__OFADD__(VisibleStringRange.location, VisibleStringRange.length))
    {
      goto LABEL_81;
    }

    v33 = v157 + 1;
    v35 = v150;
    v36 = v150 + v36 + 16.0;
    if (v157 + 1 == v151)
    {
      goto LABEL_66;
    }
  }

  v149 = v60;
  v181 = MEMORY[0x1E69E7CC0];
  v68 = swift_allocObject();
  v69 = v155;
  *(v68 + 16) = v155;
  *(v68 + 24) = &v181;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_1BA22BF7C;
  *(v70 + 24) = v68;
  *&v187 = sub_1BA22BF84;
  *(&v187 + 1) = v70;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = v146;
  *&v186 = sub_1BA49B910;
  *(&v186 + 1) = &block_descriptor_60;
  v71 = _Block_copy(&aBlock);
  v72 = v69;

  *&v178 = v72;
  [(__CFAttributedString *)v72 enumerateAttribute:v172 inRange:v180 options:v179.n128_u64[0] usingBlock:0, v71];
  _Block_release(v71);
  LOBYTE(v71) = swift_isEscapingClosureAtFileLocation();

  if (v71)
  {
    goto LABEL_82;
  }

  v73 = v181;

  v163 = *(v73 + 16);
  if (!v163)
  {
LABEL_54:

    v60 = v149;
    goto LABEL_55;
  }

  v74 = 0;
  v161 = v73 + 32;
  v75 = MEMORY[0x1E69E7CA0];
  v162 = v73;
  while (v74 < *(v73 + 16))
  {
    v166 = v74;
    v76 = (v161 + 16 * v74);
    v77 = v76[1];
    v179.n128_u64[0] = *v76;
    v171 = v77;
    v78 = sub_1BA228700(v179.n128_u64[0], v77);
    v79 = *(v78 + 2);
    v165 = v78;
    if (v79)
    {
      v80 = v78 + 56;
      do
      {
        *&v180 = v31;
        v198 = CGRectOffset(*(v80 - 24), v36, 0.0);
        v81 = v198.origin.x;
        v82 = v198.origin.y;
        v83 = v198.size.width;
        v84 = v198.size.height;
        v85 = [v178 attributesAtIndex:v179.n128_u64[0] effectiveRange:0];
        type metadata accessor for Key(0);
        sub_1BA0262E4();
        v86 = sub_1BA4A6628();

        if (*(v86 + 16))
        {
          v87 = sub_1B9F4E588(v172);
          v88 = v175;
          if (v89)
          {
            sub_1B9F0AD9C(*(v86 + 56) + 32 * v87, &aBlock);
          }

          else
          {

            aBlock = 0u;
            v186 = 0u;
          }
        }

        else
        {

          aBlock = 0u;
          v186 = 0u;
          v88 = v175;
        }

        sub_1B9FF168C(&aBlock, &v181);
        if (v182)
        {
          v90 = swift_dynamicCast();
          v91 = *a1;
          (*a1)(v88, v90 ^ 1u, 1, v21);
          if ((*v34)(v88, 1, v21) != 1)
          {
            sub_1BA22BF8C(&aBlock, &qword_1EDC6E300, v75 + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
            v92 = v174;
            (*v173)();
            v93 = v92;
            v94 = 0;
            goto LABEL_47;
          }
        }

        else
        {
          sub_1BA22BF8C(&v181, &qword_1EDC6E300, v75 + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
          v91 = *a1;
          (*a1)(v88, 1, 1, v21);
        }

        sub_1BA22BF8C(v88, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA22BEE0);
        sub_1B9FF168C(&aBlock, &v181);
        if (!v182)
        {
          v95 = MEMORY[0x1E69E6720];
          sub_1BA22BF8C(&aBlock, &qword_1EDC6E300, v75 + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
          p_aBlock = &v181;
          v97 = v75 + 8;
          v98 = v95;
          goto LABEL_46;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          v98 = MEMORY[0x1E69E6720];
          p_aBlock = &aBlock;
          v97 = v75 + 8;
LABEL_46:
          sub_1BA22BF8C(p_aBlock, &qword_1EDC6E300, v97, v98, sub_1BA22C0AC);
          v92 = v174;
          v93 = v174;
          v94 = 1;
LABEL_47:
          v91(v93, v94, 1, v21);
          goto LABEL_48;
        }

        v92 = v174;
        sub_1BA4A15C8();

        sub_1BA22BF8C(&aBlock, &qword_1EDC6E300, v75 + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
LABEL_48:
        if ((*v34)(v92, 1, v21) == 1)
        {
          sub_1BA22BF8C(v92, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA22BEE0);
          v31 = v180;
        }

        else
        {
          v99 = v34;
          v100 = a1;
          v101 = v177;
          (*v173)(v177, v92, v21);
          v102 = [v178 attributedSubstringFromRange_];
          v103 = [v102 string];

          v104 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v106 = v105;

          v107 = v170;
          v108 = v176;
          (*v168)(v176 + *(v170 + 20), v101, v21);
          *v108 = v81;
          v108[1] = v82;
          v108[2] = v83;
          v108[3] = v84;
          v109 = (v108 + *(v107 + 24));
          *v109 = v104;
          v109[1] = v106;
          v31 = v180;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_1BA2804DC(0, v31[2] + 1, 1, v31);
          }

          v111 = v31[2];
          v110 = v31[3];
          a1 = v100;
          v34 = v99;
          if (v111 >= v110 >> 1)
          {
            v31 = sub_1BA2804DC((v110 > 1), v111 + 1, 1, v31);
          }

          v75 = MEMORY[0x1E69E7CA0];
          (*v167)(v177, v21);
          v31[2] = v111 + 1;
          sub_1BA22BFEC(v176, v31 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v111);
        }

        v80 += 32;
        --v79;
      }

      while (v79);
    }

    v74 = v166 + 1;

    v73 = v162;
    if (v74 == v163)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  swift_once();
LABEL_64:
  aBlock = xmmword_1EBBEEA30;
  v186 = unk_1EBBEEA40;
  v187 = xmmword_1EBBEEA50;
  v120 = qword_1EBBEEA60;
  v188 = qword_1EBBEEA60;
  v179 = unk_1EBBEEA40;
  v180 = xmmword_1EBBEEA30;
  v31 = *(&xmmword_1EBBEEA50 + 1);
  v121 = xmmword_1EBBEEA50;
  sub_1BA22BF44(&aBlock, &v183);
LABEL_78:
  result = v179;
  *a1 = v180;
  *(a1 + 16) = result;
  *(a1 + 32) = v121;
  *(a1 + 40) = v31;
  *(a1 + 48) = v120;
  return result;
}

void sub_1BA228008(uint64_t a1@<X8>)
{
  v2 = v1;
  ascent[1] = *MEMORY[0x1E69E9840];
  v3 = CTFrameGetLines(v1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    ascent[0] = 0.0;
    type metadata accessor for CTLine(0);
    sub_1BA4A6AF8();

    v6 = v5;
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = CTFrameGetLines(v2);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    ascent[0] = 0.0;
    type metadata accessor for CTLine(0);
    sub_1BA4A6AF8();

    v8 = v5;
    if (!(v5 >> 62))
    {
LABEL_6:
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_6;
    }
  }

  v9 = sub_1BA4A7CC8();
LABEL_7:

  v10 = v2;
  sub_1BA22AAE0(v9, v10);
  v43 = v11;

  if (v6 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v13 = 0;
    v14 = v6 & 0xC000000000000001;
    v15 = v6 & 0xFFFFFFFFFFFFFF8;
    v16 = (v43 + 40);
    v17 = MEMORY[0x1E69E7CC0];
    v18 = v6;
    while (1)
    {
      if (v14)
      {
        v19 = MEMORY[0x1BFAF2860](v13, v6);
      }

      else
      {
        if (v13 >= *(v15 + 16))
        {
          goto LABEL_24;
        }

        v19 = *(v6 + 8 * v13 + 32);
      }

      v20 = v19;
      if (v13 >= *(v43 + 16))
      {
        break;
      }

      v21 = *(v16 - 1);
      v22 = *v16;
      ascent[0] = 0.0;
      descent[0] = 0.0;
      TypographicBounds = CTLineGetTypographicBounds(v19, ascent, descent, 0);
      v24 = ascent[0];
      v25 = descent[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1BA28027C(0, *(v17 + 2) + 1, 1, v17);
      }

      v27 = *(v17 + 2);
      v26 = *(v17 + 3);
      if (v27 >= v26 >> 1)
      {
        v17 = sub_1BA28027C((v26 > 1), v27 + 1, 1, v17);
      }

      ++v13;
      v28 = v22 + v24;

      *(v17 + 2) = v27 + 1;
      v29 = &v17[32 * v27];
      *(v29 + 4) = v21;
      *(v29 + 5) = v28;
      *(v29 + 6) = TypographicBounds;
      *(v29 + 7) = v22 - v25 - v28;
      v16 += 2;
      v6 = v18;
      if (i == v13)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_27:

  v30 = *(v17 + 2);
  if (v30)
  {
    v31 = v17 + 56;
    v32 = *(v17 + 7);
    v33 = *(v17 + 4);
    v34 = *(v17 + 5);
    v35 = *(v17 + 6);
    v36 = *(v17 + 2);
    do
    {
      *&v33 = CGRectUnion(*&v33, *(v31 - 24));
      v31 += 32;
      --v36;
    }

    while (v36);
    v44 = v33;
    v40 = v32;
    v41 = v35;
    v39 = v34;

    *&v37 = v44;
    *(&v37 + 1) = v39;
    *&v38 = v41;
    *(&v38 + 1) = v40;
  }

  else
  {

    v37 = 0uLL;
    v38 = 0uLL;
  }

  *a1 = v37;
  *(a1 + 16) = v38;
  *(a1 + 32) = v30 == 0;
}

char *sub_1BA2283C8()
{
  ascent[1] = *MEMORY[0x1E69E9840];
  v1 = CTFrameGetLines(v0);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    ascent[0] = 0.0;
    type metadata accessor for CTLine(0);
    sub_1BA4A6AF8();

    v4 = v3;
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = CTFrameGetLines(v0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    ascent[0] = 0.0;
    type metadata accessor for CTLine(0);
    sub_1BA4A6AF8();

    v6 = v3;
    if (!(v3 >> 62))
    {
LABEL_6:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_6;
    }
  }

  v7 = sub_1BA4A7CC8();
LABEL_7:

  v8 = v0;
  sub_1BA22AAE0(v7, v8);
  v28 = v9;

  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v11 = 0;
    v12 = v4 & 0xC000000000000001;
    v13 = v4 & 0xFFFFFFFFFFFFFF8;
    v14 = (v28 + 40);
    v15 = MEMORY[0x1E69E7CC0];
    v16 = v4;
    while (1)
    {
      if (v12)
      {
        v17 = MEMORY[0x1BFAF2860](v11, v4);
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        v17 = v4[v11 + 4];
      }

      v4 = v17;
      if (v11 >= *(v28 + 16))
      {
        break;
      }

      v18 = *(v14 - 1);
      v19 = *v14;
      ascent[0] = 0.0;
      descent[0] = 0.0;
      TypographicBounds = CTLineGetTypographicBounds(v17, ascent, descent, 0);
      v21 = ascent[0];
      v22 = descent[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1BA28027C(0, *(v15 + 2) + 1, 1, v15);
      }

      v24 = *(v15 + 2);
      v23 = *(v15 + 3);
      if (v24 >= v23 >> 1)
      {
        v15 = sub_1BA28027C((v23 > 1), v24 + 1, 1, v15);
      }

      ++v11;
      v25 = v19 + v21;

      *(v15 + 2) = v24 + 1;
      v26 = &v15[32 * v24];
      *(v26 + 4) = v18;
      *(v26 + 5) = v25;
      *(v26 + 6) = TypographicBounds;
      *(v26 + 7) = v19 - v22 - v25;
      v14 += 2;
      v4 = v16;
      if (i == v11)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_27:

  return v15;
}

char *sub_1BA228700(NSUInteger a1, NSUInteger a2)
{
  v3 = v2;
  ascent[1] = *MEMORY[0x1E69E9840];
  v6 = CTFrameGetLines(v3);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    ascent[0] = 0.0;
    type metadata accessor for CTLine(0);
    sub_1BA4A6AF8();

    v9 = v8;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = CTFrameGetLines(v3);
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    v11 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_6;
    }

LABEL_28:
    v12 = sub_1BA4A7CC8();
    goto LABEL_7;
  }

  ascent[0] = 0.0;
  type metadata accessor for CTLine(0);
  sub_1BA4A6AF8();

  v11 = v8;
  if (v8 >> 62)
  {
    goto LABEL_28;
  }

LABEL_6:
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  v13 = v3;
  sub_1BA22AAE0(v12, v13);
  v15 = v14;

  if (v9 >> 62)
  {
    goto LABEL_31;
  }

  v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v39 = v15;
  if (!v16)
  {
LABEL_32:
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

LABEL_9:
  v17 = 0;
  v18 = v15 + 5;
  v19 = MEMORY[0x1E69E7CC0];
  v38 = v15 + 5;
  do
  {
    v40 = v19;
    v15 = &v18[2 * v17];
    v20 = v17;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1BFAF2860](v20, v9);
      }

      else
      {
        if (v20 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v21 = *(v9 + 8 * v20 + 32);
      }

      v22 = v21;
      v17 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v16 = sub_1BA4A7CC8();
        v39 = v15;
        if (!v16)
        {
          goto LABEL_32;
        }

        goto LABEL_9;
      }

      StringRange = CTLineGetStringRange(v21);
      v45.location = a1;
      v45.length = a2;
      v23 = NSIntersectionRange(StringRange, v45);
      if (v23.length >= 1)
      {
        break;
      }

      ++v20;
      v15 += 2;
      if (v17 == v16)
      {
        v19 = v40;
        goto LABEL_33;
      }
    }

    OffsetForStringIndex = CTLineGetOffsetForStringIndex(v22, v23.location, 0);
    if (__OFADD__(v23.location, v23.length))
    {
      __break(1u);
LABEL_35:
      __break(1u);
    }

    v25 = OffsetForStringIndex;
    v26 = CTLineGetOffsetForStringIndex(v22, v23.location + v23.length, 0);
    if (v20 >= *(v39 + 2))
    {
      goto LABEL_35;
    }

    v27 = v26;
    v28 = *(v15 - 1);
    v29 = *v15;
    ascent[0] = 0.0;
    descent[0] = 0.0;
    CTLineGetTypographicBounds(v22, ascent, descent, 0);
    v30 = ascent[0];
    v31 = descent[0];
    v32 = v40;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1BA28027C(0, *(v40 + 2) + 1, 1, v40);
    }

    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    v41 = v32;
    if (v34 >= v33 >> 1)
    {
      v41 = sub_1BA28027C((v33 > 1), v34 + 1, 1, v32);
    }

    v35 = v29 + v30;

    v19 = v41;
    *(v41 + 2) = v34 + 1;
    v36 = &v41[32 * v34];
    v36[4] = v25 + v28;
    v36[5] = v35;
    v36[6] = v27 - v25;
    v36[7] = v29 - v31 - v35;
    v18 = v38;
  }

  while (v17 != v16);
LABEL_33:

  return v19;
}

void sub_1BA228B24(CGFloat a1)
{
  v6 = v1;
  v8 = sub_1BA4A64F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v12 = sub_1BA4A7308();
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
  v13 = sub_1BA4A6528();
  v15 = *(v9 + 8);
  v14 = v9 + 8;
  v15(v12, v8);
  if ((v13 & 1) == 0)
  {
    goto LABEL_55;
  }

  sub_1BA226598();
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v19 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_columns;
  swift_beginAccess();
  v14 = *(v6 + v19);
  if (v14 <= 1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = (v14 - 1) * 16.0;
  }

  v12 = CTFramesetterCreateWithAttributedString(v18);
  v50 = v14;
  if (v14 == 2)
  {
    v48 = v18;
    v49 = v6;
    v20 = v18;
    v21 = [(__CFAttributedString *)v20 length];
    v13 = v21 / 2;
    v47 = v21;
    if (v21 <= v21 / 2)
    {
      v14 = v21 / 2;
    }

    else
    {
      v14 = v21;
    }

    v22 = 80;
    v3 = 4294959064;
    do
    {
      if (v14 == v13)
      {
        break;
      }

      v23 = [(__CFAttributedString *)v20 string];
      v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v26 = v25;

      v27 = sub_1BA22907C(v13, v24, v26);
      v4 = v28;

      v29 = sub_1BA22A280(v27, v4);
      if ((v29 & 0x100000000) != 0)
      {
        __break(1u);
        return;
      }

      v30 = v29;

      v31 = (v30 - 14) <= 0xFFFFFFFB && (v30 - 8232) >= 2;
      if (!v31 || v30 == 133)
      {

        v2 = sub_1BA280510(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v14 = *(v2 + 2);
        v16 = *(v2 + 3);
        v4 = v14 + 1;
        if (v14 >= v16 >> 1)
        {
          goto LABEL_57;
        }

        goto LABEL_26;
      }

      ++v13;
      --v22;
    }

    while (v22);

    v2 = MEMORY[0x1E69E7CC0];
    v18 = v48;
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v13)
    {
      goto LABEL_29;
    }

    goto LABEL_44;
  }

  v2 = MEMORY[0x1E69E7CC0];
  v13 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v13)
  {
LABEL_44:
    v41 = (a1 - v5) / v50;
    height = 0.0;
    v43 = (v2 + 40);
    do
    {
      v44 = *(v43 - 1);
      v45 = *v43;
      v54.origin.x = 0.0;
      v54.origin.y = 0.0;
      v54.size.width = v41;
      v54.size.height = 1.79769313e308;
      v55 = CGRectIntegral(v54);
      v55.origin.x = v55.size.width;
      v55.origin.y = v55.size.height;
      v53.location = v44;
      v53.length = v45;
      v46 = CTFramesetterSuggestFrameSizeWithConstraints(v12, v53, 0, v55.origin, 0);
      if (height <= v46.height)
      {
        height = v46.height;
      }

      v43 += 2;
      --v13;
    }

    while (v13);
    goto LABEL_48;
  }

LABEL_29:
  while (1)
  {
    v36 = [(__CFAttributedString *)v18 length];
    v16 = v50;
    if (v50 >= 1)
    {
      break;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    v2 = sub_1BA280510((v16 > 1), v4, 1, v2);
LABEL_26:
    v18 = v48;
    *(v2 + 2) = v4;
    v32 = &v2[16 * v14];
    *(v32 + 4) = 0;
    *(v32 + 5) = v13;
    v33 = v47;
    v34 = v47 - v13;
    if (__OFSUB__(v47, v13))
    {
      __break(1u);
LABEL_59:
      v2 = sub_1BA280510((v33 > 1), v3, 1, v2);
      goto LABEL_28;
    }

    v33 = *(v2 + 3);
    v3 = v14 + 2;
    if (v14 + 2 > (v33 >> 1))
    {
      goto LABEL_59;
    }

LABEL_28:
    *(v2 + 2) = v3;
    v35 = &v2[16 * v4];
    *(v35 + 4) = v13;
    *(v35 + 5) = v34;
    v13 = *(v2 + 2);
    if (v13)
    {
      goto LABEL_44;
    }
  }

  v3 = v36;
  if (v36 >= 1)
  {
    v14 = 0;
    v4 = v36 / v50;
    while (1)
    {
      v16 = v3 - v14;
      if (__OFSUB__(v3, v14))
      {
        break;
      }

      if (v4 >= v16)
      {
        v37 = v3 - v14;
      }

      else
      {
        v37 = v4;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1BA280510(0, *(v2 + 2) + 1, 1, v2);
      }

      v39 = *(v2 + 2);
      v38 = *(v2 + 3);
      v13 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v2 = sub_1BA280510((v38 > 1), v39 + 1, 1, v2);
      }

      *(v2 + 2) = v13;
      v16 = &v2[16 * v39];
      *(v16 + 32) = v14;
      *(v16 + 40) = v37;
      v40 = __OFADD__(v14, v37);
      v14 += v37;
      if (v40)
      {
        goto LABEL_54;
      }

      if (v14 >= v3)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v13 = *(v2 + 2);
  if (v13)
  {
    goto LABEL_44;
  }

  height = 0.0;
LABEL_48:
  sub_1BA226E24(v51, 0.0, 0.0, a1, height);

  if (v52)
  {
    sub_1BA22BF8C(v51, &unk_1EDC695D8, &type metadata for CoreTextView.TypesettingResult, MEMORY[0x1E69E6720], sub_1BA22C0AC);
  }
}

uint64_t sub_1BA22907C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = sub_1BA22A680(0xFuLL, a1, a2, a3);
  v6 = sub_1BA22A3D0(v5, a2, a3);
  if ((a3 & 0x1000000000000000) != 0)
  {
    v10 = sub_1BA4A7DE8();
  }

  else
  {
    v7 = v6 >> 16;
    if ((a3 & 0x2000000000000000) != 0)
    {
      v17[0] = a2;
      v17[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v9 = v17 + v7;
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v8 = sub_1BA4A7EB8();
      }

      v9 = (v8 + v7);
    }

    v10 = *v9;
    if (*v9 < 0)
    {
      v13 = (__clz(v10 ^ 0xFF) - 24);
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v10 = ((v10 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
        }

        else
        {
          v10 = ((v10 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
        }
      }

      else if (v13 != 1)
      {
        v10 = v9[1] & 0x3F | ((v10 & 0x1F) << 6);
      }
    }
  }

  if (v10 >= 0x80)
  {
    v14 = (v10 & 0x3F) << 8;
    if (v10 >= 0x800)
    {
      v15 = (v14 | (v10 >> 6) & 0x3F) << 8;
      v16 = (((v15 | (v10 >> 12) & 0x3F) << 8) | (v10 >> 18)) - 2122219023;
      v11 = (v10 >> 12) + v15 + 8487393;
      if (HIWORD(v10))
      {
        v11 = v16;
      }
    }

    else
    {
      v11 = (v10 >> 6) + v14 + 33217;
    }
  }

  else
  {
    v11 = v10 + 1;
  }

  v17[0] = (v11 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v11) >> 3))));
  return sub_1BA4A68B8();
}

void sub_1BA229254(CGFloat a1, CGFloat a2)
{
  v4 = sub_1BA4A64F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v8 = sub_1BA4A7308();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v9 = sub_1BA4A6528();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (a1 <= 0.0)
    {
      sub_1BA226E24(v11, 0.0, 0.0, a1, a2);
      if (v12)
      {
        sub_1BA22BF8C(v11, &unk_1EDC695D8, &type metadata for CoreTextView.TypesettingResult, MEMORY[0x1E69E6720], sub_1BA22C0AC);
      }
    }

    else
    {
      sub_1BA228B24(a1);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1BA229490(void *a1)
{
  v3 = type metadata accessor for CoreTextView.Link(0);
  v4 = *(v3 - 8);
  *&result = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = (&v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linksEnabled] == 1 && [a1 state] == 3)
  {
    [a1 locationInView_];
    v39 = v1;
    v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult];
    v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult];
    v13 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 8];
    v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 16];
    v15 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 24];
    v17 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 32];
    v16 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 40];
    v18 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 48];
    if (v16)
    {
      v19 = v9;
      v20 = v10;
      v21 = *v11;
      v22 = v11[1];
      v23 = v11[2];
      v24 = v11[3];
      v25 = v11[4];
      v38 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 40];
      sub_1BA22BD98(v21, v22, v23, v24, v25, v16, v18);

      sub_1BA22BDDC(v12, v13, v14, v15, v17, v38, v18);
      v26 = *(v38 + 16);
      if (v26)
      {
        v40 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_delegate;
        v27 = v38 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v28 = *(v4 + 72);
        v29 = v39;
        do
        {
          sub_1BA22BE20(v27, v8);
          v30 = *v8;
          v31 = v8[1];
          v32 = v8[2];
          v33 = v8[3];
          [v29 bounds];
          v34 = CGRectGetHeight(v43) - v31;
          v44.origin.x = v30;
          v44.origin.y = v31;
          v44.size.width = v32;
          v44.size.height = v33;
          v45.origin.y = v34 - CGRectGetHeight(v44);
          v45.origin.x = v30;
          v45.size.width = v32;
          v45.size.height = v33;
          v42.x = v19;
          v42.y = v20;
          if (CGRectContainsPoint(v45, v42))
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              v35 = v3;
              v36 = off_1F3809018;
              type metadata accessor for DataTypeDetailDescriptionCell();
              v29 = v39;
              v36();
              v3 = v35;
              swift_unknownObjectRelease();
            }
          }

          sub_1BA22BE84(v8);
          v27 += v28;
          --v26;
        }

        while (v26);
      }

      else
      {
      }
    }

    else
    {
      sub_1BA22BD98(*v11, v11[1], v11[2], v11[3], v11[4], 0, v11[6]);

      return sub_1BA22BDDC(v12, v13, v14, v15, v17, 0, v18);
    }
  }

  return result;
}

id CoreTextView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CoreTextView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CoreTextView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1BA2299EC(CGPoint **a1, uint64_t *a2, CTFrameRef frame)
{
  v3 = *a1;
  if (*a1)
  {
    v10.location = 0;
    v10.length = 0;
    CTFrameGetLineOrigins(frame, v10, v3);
    v7 = CTFrameGetLines(frame);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CTLine(0);
      sub_1BA4A6AF8();

      v8 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
LABEL_4:
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

        *a2 = v9;
        return;
      }
    }

    else
    {

      v8 = MEMORY[0x1E69E7CC0];
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_4;
      }
    }

    v9 = sub_1BA4A7CC8();
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_1BA229AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = MEMORY[0x1E6968FB0];
  v11 = MEMORY[0x1E69E6720];
  sub_1BA22BEE0(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v23 - v14;
  sub_1BA229CC0(a1, &v23 - v14);
  v16 = sub_1BA4A15D8();
  v17 = (*(*(v16 - 8) + 48))(v15, 1, v16);
  result = sub_1BA22BF8C(v15, &qword_1EDC6AE90, v10, v11, sub_1BA22BEE0);
  if (v17 != 1)
  {
    v19 = *a6;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a6 = v19;
    if ((result & 1) == 0)
    {
      result = sub_1BA280138(0, *(v19 + 16) + 1, 1, v19);
      v19 = result;
      *a6 = result;
    }

    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    if (v21 >= v20 >> 1)
    {
      result = sub_1BA280138((v20 > 1), v21 + 1, 1, v19);
      v19 = result;
      *a6 = result;
    }

    *(v19 + 16) = v21 + 1;
    v22 = v19 + 16 * v21;
    *(v22 + 32) = a2;
    *(v22 + 40) = a3;
  }

  return result;
}

void sub_1BA229CC0(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1BA22BEE0(0, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-v6];
  sub_1B9FF168C(a1, v16);
  v8 = MEMORY[0x1E69E7CA0];
  if (v17)
  {
    v9 = sub_1BA4A15D8();
    v10 = swift_dynamicCast();
    v11 = *(v9 - 8);
    v12 = *(v11 + 56);
    v12(v7, v10 ^ 1u, 1, v9);
    if ((*(v11 + 48))(v7, 1, v9) != 1)
    {
      (*(v11 + 32))(a2, v7, v9);
      v12(a2, 0, 1, v9);
      return;
    }
  }

  else
  {
    sub_1BA22BF8C(v16, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
    v13 = sub_1BA4A15D8();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1BA22BF8C(v7, &qword_1EDC6AE90, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], sub_1BA22BEE0);
  sub_1B9FF168C(a1, v16);
  if (v17)
  {
    if (swift_dynamicCast())
    {
      sub_1BA4A15C8();

      return;
    }
  }

  else
  {
    sub_1BA22BF8C(v16, &qword_1EDC6E300, v8 + 8, MEMORY[0x1E69E6720], sub_1BA22C0AC);
  }

  v14 = sub_1BA4A15D8();
  (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
}

void sub_1BA229FF8(uint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = 4 * v3;
    v5 = MEMORY[0x1E69E7CC0];
    sub_1B9F252FC();
    do
    {
      sub_1BA4A7B98();
      v7 = v6;
      v8 = sub_1BA4A69E8();
      v9 = MEMORY[0x1BFAF12A0](v8);
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BA27EE34(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v5 = sub_1BA27EE34((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v14;
      v15 = &v5[16 * v13];
      *(v15 + 4) = v9;
      *(v15 + 5) = v11;
    }

    while (v4 > v7 >> 14);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v14 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  if (v14 < 3)
  {
    if (v14 != 2)
    {
LABEL_25:
      sub_1BA22C0AC(0, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1B9F1D768();
      sub_1BA4A66D8();

      return;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v5 + 3) <= 5uLL)
    {
      v18 = 3;
      goto LABEL_23;
    }

LABEL_24:
    sub_1BA1727D4(1, 1, 1, 10519010, 0xA300000000000000);
    goto LABEL_25;
  }

  v16 = swift_isUniquelyReferenced_nonNull_native();
  if (!v16 || v14 >= *(v5 + 3) >> 1)
  {
    v5 = sub_1BA27EE34(v16, v14 + 1, 1, v5);
  }

  sub_1BA1727D4(v14 - 1, v14 - 1, 1, 10519010, 0xA300000000000000);
  v17 = *(v5 + 2);
  if (v17)
  {
    if (v17 >= *(v5 + 3) >> 1)
    {
      v18 = v17 + 1;
      isUniquelyReferenced_nonNull_native = 1;
LABEL_23:
      sub_1BA27EE34(isUniquelyReferenced_nonNull_native, v18, 1, v5);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  __break(1u);
}

unint64_t sub_1BA22A280(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1BA22A3D0(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1BA4A7DE8();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1BA4A7EB8() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1BA22A3D0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BA22A468(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BA22A4DC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1BA22A468(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1BA3BB450(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA22A4DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1BA4A7EB8();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1BA22A600(unint64_t *a1, void *a2)
{
  if (a1[2] == a2[2] && a1[3] == a2[3] && *a1 >> 16 == *a2 >> 16 && a1[1] >> 16 == a2[1] >> 16)
  {
    return 1;
  }

  else
  {
    return sub_1BA4A82C8() & 1;
  }
}

unint64_t sub_1BA22A680(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_1BA22A850(a1, a3, a4);
  if (a2 < 0)
  {
    v14 = 0;
    while (result >= 0x10000)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1BA4A68A8();
      }

      else
      {
        v15 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v21 = a3;
          v22 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v21 + v15 - 1) & 0xC0) == 0x80)
          {
            v18 = &v21 + v15 - 2;
            v19 = 1;
            do
            {
              ++v19;
              v20 = *v18--;
            }

            while ((v20 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }

          v15 -= v19;
        }

        else
        {
          v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v16 = sub_1BA4A7EB8();
          }

          do
          {
            v17 = *(v16 - 1 + v15--) & 0xC0;
          }

          while (v17 == 128);
        }

        result = (v15 << 16) | 5;
      }

      if (--v14 <= a2)
      {
        return result;
      }
    }

    goto LABEL_37;
  }

  if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result >> 16;
      if (result >> 16 >= v8)
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_1BA4A6898();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v21 = a3;
          v22 = a4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v21 + v9);
        }

        else
        {
          v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_1BA4A7EB8();
          }

          v11 = *(v10 + v9);
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result = ((v9 + v13) << 16) | 5;
      }

      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

unint64_t sub_1BA22A850(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1BA22A8E8(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1BA22A4DC(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1BA22A8E8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1BA3BB450(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

id sub_1BA22A980(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A64F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_attributedText];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_attributedText] = a1;
  v10 = a1;

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v8 = sub_1BA4A7308();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  LOBYTE(a1) = sub_1BA4A6528();
  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    [v2 setNeedsDisplay];
    return [v2 invalidateIntrinsicContentSize];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA22AAE0(CGPoint *a1, const __CTFrame *a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1)
  {
    type metadata accessor for CGPoint(0);
    v5 = sub_1BA4A6B98();
    *(v5 + 16) = a1;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  v6[0] = (v5 + 32);
  v6[1] = a1;
  sub_1BA2299EC(v6, &v7, a2);
  if (v2)
  {
    if (v7 <= a1)
    {
      *(v5 + 16) = v7;

      return;
    }

    goto LABEL_11;
  }

  if (v7 <= a1)
  {
    *(v5 + 16) = v7;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1BA22ABA8()
{
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_attributedText) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linksEnabled) = 1;
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linkColor;
  *(v0 + v1) = [objc_opt_self() linkColor];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView____lazy_storage___tapRecognizer) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_gutter) = 0x4030000000000000;
  v2 = v0 + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA22ACA0(void *a1, double a2, double a3, double a4, double a5)
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v10 = [objc_opt_self() standardUserDefaults];
    v11 = sub_1BA4A6758();
    v12 = [v10 BOOLForKey_];

    if (v12)
    {
      if (a1)
      {
        v13 = a1;
      }

      else
      {
        v13 = [objc_opt_self() redColor];
      }

      v14 = a1;
      [v13 setStroke];

      v15 = a2;
      v16 = a3;
      v17 = a4;
      v18 = a5;

      UIRectFrame(*&v15);
    }
  }
}

void sub_1BA22ADEC()
{
  v3 = v0;
  v135 = type metadata accessor for CoreTextView.Link(0);
  v4 = *(v135 - 1);
  MEMORY[0x1EEE9AC00](v135, v5);
  v132 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v118 - v9);
  v11 = sub_1BA4A64F8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v15 = sub_1BA4A7308();
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v16 = sub_1BA4A6528();
  v18 = *(v12 + 8);
  v17 = (v12 + 8);
  v18(v15, v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_56;
  }

  v19 = UIGraphicsGetCurrentContext();
  if (v19)
  {
    v1 = v19;
    [v3 bounds];
    CGContextClearRect(v1, v139);
    [v3 bounds];
    sub_1BA226E24(v137, v20, v21, v22, v23);
    v24 = &v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult];
    v25 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult];
    v26 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 8];
    v27 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 16];
    v28 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 24];
    v29 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 32];
    v30 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 40];
    v31 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_lastTypesettingResult + 48];
    v32 = v137[1];
    *v24 = v137[0];
    *(v24 + 1) = v32;
    *(v24 + 2) = v137[2];
    *(v24 + 6) = v138;
    sub_1BA22BDDC(v25, v26, v27, v28, v29, v30, v31);
    v2 = *(v24 + 5);
    if (v2)
    {
      v33 = *(v24 + 1);
      v122 = *v24;
      v123 = *&v33;
      v34 = *(v24 + 3);
      v124 = *(v24 + 2);
      v125 = *&v34;
      v126 = *(v24 + 4);
      v17 = *(v24 + 6);

      CGContextSaveGState(v1);
      v136.a = 1.0;
      v136.b = 0.0;
      v136.c = 0.0;
      v136.d = 1.0;
      v136.tx = 0.0;
      v136.ty = 0.0;
      CGContextSetTextMatrix(v1, &v136);
      [v3 bounds];
      CGContextTranslateCTM(v1, 0.0, v35);
      CGContextScaleCTM(v1, 1.0, -1.0);
      v36 = v17[2];
      if (v36)
      {

        v37 = 4;
        do
        {
          CTFrameDraw(v17[v37], v1);
          v37 += 6;
          --v36;
        }

        while (v36);
      }

      CGContextRestoreGState(v1);
      *&v136.a = MEMORY[0x1E69E7CC0];
      v38 = [objc_allocWithZone(MEMORY[0x1E69DC608]) initWithAccessibilityContainer_];
      [v3 bounds];
      [v38 setAccessibilityFrameInContainerSpace_];
      [v38 setAccessibilityAttributedLabel_];
      [v38 setAccessibilityTraits_];
      v15 = v38;
      MEMORY[0x1BFAF1510]();
      if (*((*&v136.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v136.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_57;
      }

      while (1)
      {
        v131 = v17;
        v120 = v15;
        sub_1BA4A6BB8();
        v39 = v2[2];
        if (v39)
        {
          v119 = v1;
          v40 = *MEMORY[0x1E69DD9E0];
          v41 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
          v118 = v4;
          v42 = *(v4 + 72);
          v121 = v2;

          do
          {
            sub_1BA22BE20(v41, v10);
            v43 = *v10;
            v44 = v10[1];
            v45 = v10[2];
            v46 = v10[3];
            [v3 bounds];
            v47 = CGRectGetHeight(v140) - v44;
            v141.origin.x = v43;
            v141.origin.y = v44;
            v141.size.width = v45;
            v141.size.height = v46;
            v48 = v47 - CGRectGetHeight(v141);
            v49 = [objc_allocWithZone(MEMORY[0x1E69DC608]) initWithAccessibilityContainer_];
            [v49 setAccessibilityFrameInContainerSpace_];
            [v49 setAccessibilityTraits_];
            v50 = sub_1BA4A6758();
            [v49 setAccessibilityLabel_];

            v51 = v49;
            MEMORY[0x1BFAF1510]();
            if (*((*&v136.a & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v136.a & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();

            v52 = *&v136.a;
            sub_1BA22BE84(v10);
            v41 += v42;
            --v39;
          }

          while (v39);
          v2 = v121;

          v1 = v119;
          v4 = v118;
        }

        else
        {
          v52 = *&v136.a;
        }

        v53 = sub_1BA326790(v52);
        sub_1B9FE6208(v53);

        v54 = sub_1BA4A6AE8();

        [v3 setAccessibilityElements_];

        v55 = objc_opt_self();
        v15 = &selRef_didTapSave_;
        if (![v55 isAppleInternalInstall] || (v135 = objc_opt_self(), v56 = objc_msgSend(v135, sel_standardUserDefaults), v134 = "v40@?0@8{_NSRange=QQ}16^B32", v17 = sub_1BA4A6758(), v57 = objc_msgSend(v56, sel_BOOLForKey_, v17), v56, v17, !v57))
        {

          sub_1BA22BDDC(*&v122, *&v123, *&v124, *&v125, v126, v2, v131);
          return;
        }

        v118 = v4;
        v119 = v1;
        [v3 bounds];
        v59 = v58;
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v4 = objc_opt_self();
        v66 = [v4 redColor];
        sub_1BA22ACA0(v66, v59, v61, v63, v65);

        if ((v126 & 1) == 0)
        {
          v67 = v122;
          v68 = v123;
          v69 = v124;
          v70 = v125;
          [v3 bounds];
          v71 = CGRectGetHeight(v142) - v68;
          v143.origin.x = v67;
          v143.origin.y = v68;
          v143.size.width = v69;
          v143.size.height = v70;
          v72 = v71 - CGRectGetHeight(v143);
          v73 = [v4 greenColor];
          sub_1BA22ACA0(v73, v67, v72, v69, v70);
        }

        v74 = v131;
        v128 = v131[2];
        v121 = v2;
        if (!v128)
        {
          break;
        }

        v127 = v131 + 4;

        v1 = 0;
        v2 = &selRef_createListViewController_;
        while (v1 < *(v74 + 16))
        {
          v75 = &v127[6 * v1];
          v76 = v75[3];
          v77 = v75[4];
          v10 = *(v75 + 5);
          v78 = v75[1];
          v79 = v75[2];
          v133 = *v75;

          [v3 v15[237]];
          Height = CGRectGetHeight(v144);
          v145.origin.x = v78;
          v145.origin.y = v79;
          v145.size.width = v76;
          v145.size.height = v77;
          v81 = CGRectGetHeight(v145);
          v17 = [v4 purpleColor];
          if ([v55 isAppleInternalInstall] && (v82 = objc_msgSend(v135, sel_standardUserDefaults), v83 = sub_1BA4A6758(), v84 = objc_msgSend(v82, sel_BOOLForKey_, v83), v82, v83, v15 = &selRef_didTapSave_, v84))
          {
            v85 = v17;
            if (!v17)
            {
              v85 = [v4 redColor];
            }

            v86 = v17;
            [v85 setStroke];

            v146.origin.x = v78;
            v146.origin.y = Height - v79 - v81;
            v146.size.width = v76;
            v146.size.height = v77;
            UIRectFrame(v146);

            v87 = *(v10 + 2);
            v15 = &selRef_didTapSave_;
            if (v87)
            {
LABEL_33:
              v130 = v1;

              v88 = v87 - 1;
              v129 = v10;
              for (i = v10 + 7; ; i += 4)
              {
                v90 = *(i - 3);
                v91 = *(i - 2);
                v92 = *(i - 1);
                v93 = *i;
                [v3 v15[237]];
                v94 = CGRectGetHeight(v147);
                v148.origin.x = v90;
                v148.origin.y = v91;
                v148.size.width = v92;
                v148.size.height = v93;
                v95 = CGRectGetHeight(v148);
                v17 = [v4 blueColor];
                if ([v55 isAppleInternalInstall] && (v96 = objc_msgSend(v135, sel_standardUserDefaults), v97 = sub_1BA4A6758(), v98 = objc_msgSend(v96, sel_BOOLForKey_, v97), v96, v97, v15 = &selRef_didTapSave_, v98))
                {
                  v99 = v17;
                  if (!v17)
                  {
                    v99 = [v4 redColor];
                  }

                  v100 = v17;
                  [v99 setStroke];

                  v149.origin.x = v90;
                  v149.origin.y = v94 - v91 - v95;
                  v149.size.width = v92;
                  v149.size.height = v93;
                  UIRectFrame(v149);

                  v15 = &selRef_didTapSave_;
                  if (!v88)
                  {
LABEL_23:
                    v10 = v129;

                    v1 = v130;
                    break;
                  }
                }

                else
                {

                  if (!v88)
                  {
                    goto LABEL_23;
                  }
                }

                --v88;
              }
            }
          }

          else
          {

            v87 = *(v10 + 2);
            if (v87)
            {
              goto LABEL_33;
            }
          }

          v1 = (v1 + 1);

          v74 = v131;
          if (v1 == v128)
          {

            v2 = v121;
            goto LABEL_44;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        sub_1BA4A6B68();
      }

LABEL_44:

      sub_1BA22BDDC(*&v122, *&v123, *&v124, *&v125, v126, v2, v74);
      v101 = v2[2];
      if (v101)
      {
        v102 = v121 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
        v103 = *(v118 + 72);
        for (j = v101 - 1; ; --j)
        {
          v105 = v132;
          sub_1BA22BE20(v102, v132);
          v106 = *v105;
          v107 = *(v105 + 8);
          v108 = *(v105 + 16);
          v109 = *(v105 + 24);
          sub_1BA22BE84(v105);
          [v3 v15[237]];
          v110 = CGRectGetHeight(v150);
          v151.origin.x = v106;
          v151.origin.y = v107;
          v151.size.width = v108;
          v151.size.height = v109;
          v111 = CGRectGetHeight(v151);
          v112 = [v4 yellowColor];
          if ([v55 isAppleInternalInstall] && (v113 = objc_msgSend(v135, sel_standardUserDefaults), v114 = sub_1BA4A6758(), v115 = objc_msgSend(v113, sel_BOOLForKey_, v114), v113, v114, v15 = &selRef_didTapSave_, v115))
          {
            v116 = v112;
            if (!v112)
            {
              v116 = [v4 redColor];
            }

            v117 = v112;
            [v116 setStroke];

            v152.origin.x = v106;
            v152.origin.y = v110 - v107 - v111;
            v152.size.width = v108;
            v152.size.height = v109;
            UIRectFrame(v152);

            v15 = &selRef_didTapSave_;
            if (!j)
            {
              break;
            }
          }

          else
          {

            if (!j)
            {
              break;
            }
          }

          v102 += v103;
        }
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1BA22BB3C()
{
  result = qword_1EBBEEAA8;
  if (!qword_1EBBEEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEAA8);
  }

  return result;
}

uint64_t sub_1BA22BCA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BA22BCF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for CoreTextView.Link(uint64_t a1)
{
  result = qword_1EDC69598;
  if (!qword_1EDC69598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1BA22BD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
  }

  return result;
}

double sub_1BA22BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
  }

  return result;
}

uint64_t sub_1BA22BE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreTextView.Link(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA22BE84(uint64_t a1)
{
  v2 = type metadata accessor for CoreTextView.Link(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BA22BEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA22BF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1BA22BFEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreTextView.Link(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1BA22C070(void *result, uint64_t a2, uint64_t a3)
{
  if (result[3])
  {
    return [*(v3 + 16) addAttribute:*MEMORY[0x1E69DB650] value:*(*(v3 + 24) + OBJC_IVAR____TtC18HealthExperienceUI12CoreTextView_linkColor) range:{a2, a3}];
  }

  return result;
}

void sub_1BA22C0AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA22C0FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1BA22C144(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1BA22C1C8(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_1BA4A15D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_1BA22C264()
{
  v0 = sub_1BA4A2A28();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A29F8();
  UIViewController.resolvedPinnedContentManager.getter(v15);
  v4 = objc_allocWithZone(type metadata accessor for FeedItemSuggestedActionViewController(0));
  v5 = FeedItemSuggestedActionViewController.init(_:pinnedContentManager:)(v3, v15);
  v6 = sub_1BA22CC24();
  v7 = &v5[OBJC_IVAR____TtC18HealthExperienceUI37FeedItemSuggestedActionViewController_suggestedActionDelegate];
  swift_beginAccess();
  *(v7 + 1) = v6;
  swift_unknownObjectWeakAssign();
  type metadata accessor for OrganDonationDataSourceItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = v5;
  v11 = [v9 bundleForClass_];
  sub_1BA4A1318();

  v12 = sub_1BA4A6758();

  [v10 setTitle_];

  return v10;
}

void sub_1BA22C444()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for OrganDonationStatusViewController();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  type metadata accessor for OrganDonationDataSourceItem();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  sub_1BA4A1318();

  v3 = sub_1BA4A6758();

  [v0 setTitle_];

  sub_1BA22C664();
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BA4A6AE8();
    v7 = HKUIJoinStringsForAutomationIdentifier();

    [v5 setAccessibilityIdentifier_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1BA22C664()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationStatusViewController_currentChildViewController;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33OrganDonationStatusViewController_currentChildViewController];
  if (v3)
  {
    [v3 willMoveToParentViewController_];
    v3 = *&v0[v2];
    if (v3)
    {
      result = [v3 view];
      if (!result)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      v5 = result;
      [result removeFromSuperview];

      v3 = *&v1[v2];
    }
  }

  [v3 removeFromParentViewController];
  v6 = objc_opt_self();
  if (([v6 hasStoredRegistrant] & 1) != 0 || objc_msgSend(v6, sel_shouldShowStoreDemoOrganDonation))
  {
    *(objc_allocWithZone(type metadata accessor for OrganDonationRegisteredViewController()) + OBJC_IVAR____TtC18HealthExperienceUI37OrganDonationRegisteredViewController_organDonationRegisteredViewControllerDelegate + 8) = 0;
    swift_unknownObjectWeakInit();
    type metadata accessor for OrganDonationRegisteredDataSource(0);
    swift_allocObject();
    v7 = sub_1BA222ACC();
    sub_1B9F1DEA0(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1BA4B5480;
    *(v8 + 32) = v7;
    *(v8 + 40) = &protocol witness table for MutableArrayDataSource;
    type metadata accessor for CompoundSectionedDataSource(0);
    swift_allocObject();

    v9 = CompoundSectionedDataSource.init(_:)(v8);
    v10 = CompoundDataSourceCollectionViewController.init(dataSource:)(v9);

    *&v10[OBJC_IVAR____TtC18HealthExperienceUI37OrganDonationRegisteredViewController_organDonationRegisteredViewControllerDelegate + 8] = &off_1F380FFF8;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    v10 = sub_1BA22C264();
  }

  v11 = *&v1[v2];
  *&v1[v2] = v10;
  v12 = v10;

  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = result;
  result = *&v1[v2];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = [result view];
  if (!result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = result;
  [v13 addSubview_];

  result = *&v1[v2];
  if (!result)
  {
    return result;
  }

  result = [result view];
  if (!result)
  {
    goto LABEL_22;
  }

  v15 = result;
  v16 = [v1 view];
  [v15 hk:v16 alignConstraintsWithView:?];

  result = *&v1[v2];
  if (result)
  {

    return [result didMoveToParentViewController_];
  }

  return result;
}

id sub_1BA22CA80(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for OrganDonationStatusViewController();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BA22CAF0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v5 = sub_1BA4A3E88();
  v6 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B9F07000, v5, v6, "Organ Donation sign up cancelled", v7, 2u);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_1BA22CC24()
{
  result = qword_1EBBEEAB8;
  if (!qword_1EBBEEAB8)
  {
    type metadata accessor for OrganDonationStatusViewController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEEAB8);
  }

  return result;
}

id TextTableViewItemCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id TextTableViewItemCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = (*(ObjectType + 88))();
  if (a3)
  {
    v9 = sub_1BA4A6758();
  }

  else
  {
    v9 = 0;
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for TextTableViewItemCell();
  v10 = objc_msgSendSuper2(&v13, sel_initWithStyle_reuseIdentifier_, v8, v9);

  v11 = v10;
  sub_1BA22D0EC();

  return v11;
}

id TextTableViewItemCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TextTableViewItemCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item];
  v4 = type metadata accessor for TextTableViewItemCell();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v9.receiver = v1;
  v9.super_class = v4;
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    sub_1BA22D0EC();
  }

  return v6;
}

uint64_t sub_1BA22D0EC()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v7 = OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v7, v63);
  if (v64)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EBBEEAD0, &protocol descriptor for TextCellItem);
    if (swift_dynamicCast())
    {
      if (*(&v66 + 1))
      {
        sub_1B9F1134C(&v65, v68);
        v8 = [v1 textLabel];
        if (v8)
        {
          v9 = v8;
          v10 = v69;
          v11 = v70;
          __swift_project_boxed_opaque_existential_1(v68, v69);
          (*(v11 + 16))(v10, v11);
          if (v12)
          {
            v13 = sub_1BA4A6758();
          }

          else
          {
            v13 = 0;
          }

          [v9 setText_];
        }

        v24 = [v1 textLabel];
        if (v24)
        {
          v25 = v24;
          v26 = v69;
          v27 = v70;
          __swift_project_boxed_opaque_existential_1(v68, v69);
          v28 = (*(v27 + 24))(v26, v27);
          [v25 setTextColor_];
        }

        v29 = v69;
        v30 = v70;
        __swift_project_boxed_opaque_existential_1(v68, v69);
        v31 = (*(v30 + 48))(v29, v30);
        if (v31)
        {
          v32 = v31;
          v33 = [v1 textLabel];
          if (v33)
          {
            v34 = v33;
            [v33 setFont_];
          }
        }

        v35 = [v1 textLabel];
        if (v35)
        {
          v36 = v35;
          [v35 setNumberOfLines_];
        }

        v37 = [v1 detailTextLabel];
        if (v37)
        {
          v38 = v37;
          v39 = v69;
          v40 = v70;
          __swift_project_boxed_opaque_existential_1(v68, v69);
          (*(v40 + 32))(v39, v40);
          if (v41)
          {
            v42 = sub_1BA4A6758();
          }

          else
          {
            v42 = 0;
          }

          [v38 setText_];
        }

        v43 = [v1 detailTextLabel];
        if (v43)
        {
          v44 = v43;
          v45 = v69;
          v46 = v70;
          __swift_project_boxed_opaque_existential_1(v68, v69);
          v47 = (*(v46 + 40))(v45, v46);
          [v44 setTextColor_];
        }

        v48 = v69;
        v49 = v70;
        __swift_project_boxed_opaque_existential_1(v68, v69);
        v50 = (*(v49 + 48))(v48, v49);
        if (v50)
        {
          v51 = v50;
          v52 = [v1 detailTextLabel];
          if (v52)
          {
            v53 = v52;
            [v52 setFont_];
          }
        }

        v54 = [v1 detailTextLabel];
        if (v54)
        {
          v55 = v54;
          [v54 setNumberOfLines_];
        }

        sub_1B9F0A534(v68, v63);
        sub_1B9F0D950(0, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
        if (swift_dynamicCast())
        {
          v56 = *(&v66 + 1);
          v57 = v67;
          __swift_project_boxed_opaque_existential_1(&v65, *(&v66 + 1));
          v58 = (*(v57 + 8))(v56, v57);
          v60 = v59;
          __swift_destroy_boxed_opaque_existential_1(&v65);
          v61 = v58;
        }

        else
        {
          v67 = 0;
          v65 = 0u;
          v66 = 0u;
          sub_1B9F43A50(&v65, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
          v61 = 0;
          v60 = 0;
        }

        (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v61, v60);

        return __swift_destroy_boxed_opaque_existential_1(v68);
      }
    }

    else
    {
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v63, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  sub_1B9F43A50(&v65, &qword_1EBBEEAC8, &qword_1EBBEEAD0, &protocol descriptor for TextCellItem);
  sub_1BA4A3E28();
  v14 = v1;
  v15 = sub_1BA4A3E88();
  v16 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v68[0] = v18;
    *v17 = 136315138;
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    *&v65 = v19;
    sub_1BA0928CC();
    v20 = sub_1BA4A6808();
    v22 = sub_1B9F0B82C(v20, v21, v68);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1B9F07000, v15, v16, "Incorrect ViewModel for TextTableViewItemCell %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1BFAF43A0](v18, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BA22D7E8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA22D0EC();
  return sub_1B9F43A50(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1BA22D870@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA22D8C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI21TextTableViewItemCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA22D0EC();
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t (*sub_1BA22D94C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA22D9B0;
}

uint64_t sub_1BA22D9B0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA22D0EC();
  }

  return result;
}

void sub_1BA22D9E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = sub_1BA4A6758();
    [v3 setAccessibilityIdentifier_];

    v5 = [v3 textLabel];
    if (v5)
    {
      v6 = v5;

      MEMORY[0x1BFAF1350](0x6554656C7469542ELL, 0xEA00000000007478);
      v7 = sub_1BA4A6758();

      [v6 setAccessibilityIdentifier_];
    }

    v8 = [v3 detailTextLabel];
    if (v8)
    {
      v9 = v8;

      MEMORY[0x1BFAF1350](0x546C69617465442ELL, 0xEB00000000747865);
      v13 = sub_1BA4A6758();

      [v9 setAccessibilityIdentifier_];

LABEL_10:
    }
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v10 = [v2 textLabel];
    if (v10)
    {
      v11 = v10;
      [v10 setAccessibilityIdentifier_];
    }

    v12 = [v3 detailTextLabel];
    if (v12)
    {
      v13 = v12;
      [v12 setAccessibilityIdentifier_];
      goto LABEL_10;
    }
  }
}

id TextTableViewItemCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextTableViewItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA22DDAC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  sub_1BA23257C();
  sub_1BA4A0E98();
  if (v3)
  {
    v30 = v7;

    sub_1BA4A3E28();
    v12 = v3;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = a1;
      v17 = v16;
      v32 = v16;
      *v15 = 136315394;
      v31 = &type metadata for StandardDataLoggingActionHandler.UserData;
      sub_1BA23303C();
      v18 = sub_1BA4A6808();
      v20 = sub_1B9F0B82C(v18, v19, &v32);
      v29 = a2;
      v21 = v20;

      *(v15 + 4) = v21;
      *(v15 + 12) = 2082;
      v31 = v3;
      v22 = v3;
      sub_1B9FED358();
      v23 = sub_1BA4A6808();
      v25 = sub_1B9F0B82C(v23, v24, &v32);

      *(v15 + 14) = v25;
      a2 = v29;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Failed to decode data for %s with error: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      v26 = v17;
      a1 = v28;
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v8 + 8))(v11, v30);
    sub_1B9F21374();
    swift_allocError();
    *v27 = v3 | 0x4000000000000000;
    swift_willThrow();
    sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);

    *a3 = v32;
  }
}

void sub_1BA22E0A4(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v10 = type metadata accessor for DataLoggingPluginViewModel(0);
  sub_1BA232990(&qword_1EBBE9840, type metadata accessor for DataLoggingPluginViewModel, &protocol conformance descriptor for DataLoggingPluginViewModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v11 = v2;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = a1;
      v16 = v15;
      v31 = v15;
      *v14 = 136315394;
      v30 = v10;
      sub_1B9F2D04C(0, &qword_1EBBEECD8, type metadata accessor for DataLoggingPluginViewModel);
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v31);
      v28 = a2;
      v20 = v19;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v30 = v2;
      v21 = v2;
      sub_1B9FED358();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v31);

      *(v14 + 14) = v24;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Failed to decode data for %s with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      v25 = v16;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v29);
    sub_1B9F21374();
    swift_allocError();
    *v26 = v2 | 0x4000000000000000;
    swift_willThrow();
    sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

void sub_1BA22E3E4(uint64_t a1, unint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  v10 = type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel(0);
  sub_1BA232990(&qword_1EBBEBA18, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel, &protocol conformance descriptor for ProminentMessageWithActionTileViewWithImage.ViewModel);
  sub_1BA4A0E98();
  if (v2)
  {
    v29 = v5;

    sub_1BA4A3E28();
    v11 = v2;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = a1;
      v16 = v15;
      v31 = v15;
      *v14 = 136315394;
      v30 = v10;
      sub_1B9F2D04C(0, &qword_1EBBEECD0, type metadata accessor for ProminentMessageWithActionTileViewWithImage.ViewModel);
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v31);
      v28 = a2;
      v20 = v19;

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      v30 = v2;
      v21 = v2;
      sub_1B9FED358();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v31);

      *(v14 + 14) = v24;
      a2 = v28;
      _os_log_impl(&dword_1B9F07000, v12, v13, "Failed to decode data for %s with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      v25 = v16;
      a1 = v27;
      MEMORY[0x1BFAF43A0](v25, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v6 + 8))(v9, v29);
    sub_1B9F21374();
    swift_allocError();
    *v26 = v2 | 0x4000000000000000;
    swift_willThrow();
    sub_1B9F2BB4C(a1, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}