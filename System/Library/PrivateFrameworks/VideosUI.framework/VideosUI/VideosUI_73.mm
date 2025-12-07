CGSize __swiftcall UILabel.multilineSizeThatFits(_:)(CGSize a1)
{
  [v1 multilineSizeThatFits:a1.width minWidth:{a1.height, 0.0}];
  result.height = v3;
  result.width = v2;
  return result;
}

void sub_1E3C127D4(void *a1, double a2, double a3)
{
  v5 = a1;
  UILabel.multilineSizeThatFits(_:)(__PAIR128__(*&a3, *&a2));

  OUTLINED_FUNCTION_17_4();
}

void sub_1E3C12844(void *a1, double a2, double a3, double a4)
{
  v7 = a1;
  UILabel.multilineSizeThatFits(_:minWidth:)(a2, a3, a4);

  OUTLINED_FUNCTION_17_4();
}

void UILabel.multilineSizeThatFits(_:minWidth:padding:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v15 = sub_1E390E9E4(v7);
  if (!v16)
  {
    goto LABEL_4;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v20 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v21 = v20;
  v22 = [v8 font];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for CTFont(0);
    *(inited + 64) = v24;
    *(inited + 40) = v23;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
    v25 = sub_1E4205CB4();
    v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v27 = sub_1E376403C(v17, v18, v25);
    v28 = [v8 numberOfLines];
    v29 = 0;
    v30 = v27;
    v31 = a4;
    v32 = a5;
    v33 = a6;
    v34 = a7;
    v35 = a1;
    v36 = 0;
    v37 = a3;
    v38 = 0;
    sub_1E3C12B34(*&a1, 0);
    sub_1E3C1360C(&v28);
LABEL_4:
    OUTLINED_FUNCTION_17_4();
    return;
  }

  __break(1u);
}

void sub_1E3C12AA4(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = a1;
  UILabel.multilineSizeThatFits(_:minWidth:padding:)(a2, a3, a4, a5, a6, a7, a8);

  OUTLINED_FUNCTION_17_4();
}

double sub_1E3C12B34(uint64_t a1, char a2)
{
  sub_1E3A286D4();
  v5 = sub_1E41DA724();
  if (a2)
  {
    v6 = v5;
  }

  else
  {
    v6 = *&a1;
  }

  if (*(v2 + 64))
  {
    v7 = sub_1E41DA724();
  }

  else
  {
    v7 = *(v2 + 56);
  }

  v8 = OUTLINED_FUNCTION_6();
  v12 = v6 - sub_1E3952BE0(v8, v9, v10, v11);
  if (v12 <= 10.0)
  {
    v12 = 10.0;
  }

  if (v12 < v7)
  {
    v7 = v12;
  }

  rect.origin.x = 0.0;
  if (*(v2 + 80))
  {
    v13 = 0.0;
  }

  else
  {
    v13 = *(v2 + 72);
  }

  v14 = OUTLINED_FUNCTION_6();
  v18 = v13 - sub_1E3952BE0(v14, v15, v16, v17);
  if (v18 <= 10.0)
  {
    v18 = 10.0;
  }

  sub_1E3C124B0(*v2, *(v2 + 8), v7, 0, v18, 0, 0.0, 1, &rect.origin.y);
  width = 0.0;
  height = 0.0;
  v21 = 0.0;
  if ((v34 & 1) == 0)
  {
    height = rect.size.height;
    v21 = v33;
    width = rect.size.width;
    rect.origin.x = rect.origin.y;
  }

  v22 = OUTLINED_FUNCTION_6();
  v26 = sub_1E3952BE0(v22, v23, v24, v25) * -0.5;
  v27 = OUTLINED_FUNCTION_6();
  v30 = sub_1E3952BD8(v27, v28, v29) * -0.5;
  v36.origin.x = rect.origin.x;
  v36.origin.y = width;
  v36.size.width = height;
  v36.size.height = v21;
  v37 = CGRectInset(v36, v26, v30);

  *&result = CGRectStandardize(v37);
  return result;
}

void sub_1E3C12CAC(uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1E3C27024();
  v11 = v10;
  if (!v10)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v24 + 8))(a4);

    v20 = 0;
    v25 = 0;
    v26 = 0;
    *&v30 = OUTLINED_FUNCTION_2_144();
LABEL_27:
    *a5 = v11;
    *(a5 + 8) = v29;
    *(a5 + 16) = v20;
    *(a5 + 24) = v30;
    *(a5 + 40) = v31;
    *(a5 + 56) = v25;
    *(a5 + 64) = v28;
    *(a5 + 72) = v26;
    *(a5 + 80) = v27;
    return;
  }

  v12 = v9;
  v64 = a4;
  v13 = a2;
  if (!a2)
  {
    if (sub_1E3C27528(v9, v10))
    {
      type metadata accessor for TextLayout();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
      }
    }

    else
    {
      v13 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v15 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  type metadata accessor for CTFont(0);
  *(inited + 64) = v16;
  *(inited + 40) = a3;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_183(&qword_1EE23B100);
  v17 = v15;
  v63 = a3;

  v18 = sub_1E4205CB4();
  v19 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v20 = sub_1E376403C(v12, v11, v18);
  if (!v13)
  {
    v11 = 0;
    v25 = 0;
    v26 = 0;
    v32 = 1;
    LOBYTE(v75[0]) = 1;
    v65 = *(MEMORY[0x1E69DDCE0] + 16);
    v67 = *MEMORY[0x1E69DDCE0];
    v33 = 1;
LABEL_26:

    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v59 + 8))(a4);
    LOBYTE(v73[0]) = v32 & 1;
    v27 = v33 & 1;
    LOBYTE(v71[0]) = v33 & 1;
    v29 = LOBYTE(v75[0]);
    v28 = v32 & 1;
    v31 = v65;
    v30 = v67;
    goto LABEL_27;
  }

  if (sub_1E3B028AC())
  {
    OUTLINED_FUNCTION_71_2();
    v22 = (*(v21 + 2072))();
  }

  else
  {
    v34 = sub_1E3B02A04();
    v35 = *v13;
    if (v34)
    {
      v22 = (*(v35 + 2096))();
    }

    else
    {
      v22 = (*(v35 + 2048))();
    }
  }

  v11 = v22;
  if (v23)
  {
    v11 = 0;
LABEL_17:
    v62 = v23;

    OUTLINED_FUNCTION_71_2();
    v37 = *(v36 + 176);
    v37(v69);
    v38 = 0.0;
    v39 = 0.0;
    if ((v70 & 1) == 0)
    {
      v39 = sub_1E3952BE0(v69[0], v69[1], v69[2], v69[3]);
    }

    OUTLINED_FUNCTION_71_2();
    v41 = *(v40 + 152);
    v42 = v41(v71);
    if ((v72 & 1) == 0)
    {
      v38 = sub_1E3952BE0(v71[0], v71[1], v71[2], v71[3]);
    }

    v43 = (v37)(v73, v42);
    v44 = 0.0;
    v45 = 0.0;
    if ((v74 & 1) == 0)
    {
      v45 = sub_1E3952BD8(v73[0], v73[1], v73[2]);
    }

    (v41)(v75, v43);
    if ((v76 & 1) == 0)
    {
      v44 = sub_1E3952BD8(v75[0], v75[1], v75[2]);
    }

    v46 = sub_1E3952C10(v39 + v38, v45 + v44);
    v66 = v47;
    v68 = v46;
    v60 = v49;
    v61 = v48;

    OUTLINED_FUNCTION_71_2();
    v51 = *(v50 + 248);

    v25 = v51(v52);
    v32 = v53;

    OUTLINED_FUNCTION_71_2();
    v55 = *(v54 + 224);

    v26 = v55(v56);
    v33 = v57;

    LOBYTE(v75[0]) = v62 & 1;

    *&v58 = v66;
    *(&v58 + 1) = v60;
    v65 = v58;
    *&v58 = v68;
    *(&v58 + 1) = v61;
    v67 = v58;
    a4 = v64;
    goto LABEL_26;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1E3C131D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for FittedTextView(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34E80, qword_1E42C27A0);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + v8[6]) = a1;
  *(a4 + v8[7]) = a2;
  *(a4 + v8[8]) = a3;
  return result;
}

void *sub_1E3C1329C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for FittedTextView(0);
  sub_1E3F23370();
  sub_1E3C1331C(__src);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35598, &unk_1E42C4420);
  return memcpy((a1 + *(v2 + 36)), __src, 0x51uLL);
}

void sub_1E3C1331C(uint64_t a1@<X8>)
{
  v3 = sub_1E4202A14();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  *&v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for FittedTextView(0);
  v16 = *(v1 + *(v14 + 28));
  if (v16)
  {
    *&v32 = v5;
    *&v31 = v3;
    v17 = v16;
  }

  else
  {
    v28 = sub_1E3C27528(v14, v15);
    v22 = v28;
    if (!v28)
    {
LABEL_9:
      OUTLINED_FUNCTION_2_73();
      goto LABEL_10;
    }

    *&v32 = v5;
    type metadata accessor for TextLayout();
    if (!swift_dynamicCastClass())
    {

      v22 = 0;
      OUTLINED_FUNCTION_2_73();
      v27 = 0uLL;
      goto LABEL_10;
    }

    *&v31 = v3;
    v17 = 0;
  }

  *&v30 = v17;

  sub_1E3746E10(v13);
  sub_1E3E3B878();
  v19 = v18;

  (*(v10 + 8))(v13, v8);
  if (!v19)
  {

    v22 = 0;
    goto LABEL_9;
  }

  v20 = v33;
  sub_1E3BF6EB8(v33);
  v21 = sub_1E42027B4();
  (*(v32 + 8))(v20, v31);

  sub_1E3746E10(v13);
  sub_1E3C12CAC(v16, v21, v13, v34);
  v32 = v34[1];
  v33 = v34[0];
  v30 = v34[3];
  v31 = v34[2];
  v29 = v34[4];
  v22 = v35;

  v24 = v29;
  v23 = v30;
  v26 = v31;
  v25 = v32;
  v27 = v33;
LABEL_10:
  *a1 = v27;
  *(a1 + 16) = v25;
  *(a1 + 32) = v26;
  *(a1 + 48) = v23;
  *(a1 + 64) = v24;
  *(a1 + 80) = v22;
}

unint64_t sub_1E3C1363C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35590;
  if (!qword_1ECF35590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35590);
  }

  return result;
}

uint64_t type metadata accessor for FittedTextView(uint64_t a1)
{
  result = qword_1EE2A5A40;
  if (!qword_1EE2A5A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3C136F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1E3C13738(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void sub_1E3C137D8(uint64_t a1)
{
  sub_1E3C13924(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1E3C13924(319, &qword_1EE289E88, MEMORY[0x1E6980E88], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for TextViewModel();
      if (v3 <= 0x3F)
      {
        sub_1E3C13924(319, qword_1EE287258, type metadata accessor for TextLayout, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3C13924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3C13988()
{
  result = qword_1ECF355B0;
  if (!qword_1ECF355B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF355A8, &qword_1E42C4518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF355B0);
  }

  return result;
}

unint64_t sub_1E3C139EC()
{
  result = qword_1ECF355B8;
  if (!qword_1ECF355B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35598, &unk_1E42C4420);
    swift_getOpaqueTypeConformance2();
    sub_1E3C13988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF355B8);
  }

  return result;
}

uint64_t sub_1E3C13A90()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3C13B04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C13A90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3C13B5C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3C13BCC(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  sub_1E3C13C0C(v1);
  return v2;
}

uint64_t sub_1E3C13C0C(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11[-v7];
  v9 = OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter__isCountingDown;
  v11[15] = 0;
  sub_1E4200634();
  (*(v5 + 32))(v1 + v9, v8, v2);
  *(v1 + OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_hasStartedCountDown) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_presentedCountdownIdentifiers) = MEMORY[0x1E69E7CD0];
  *(v1 + 16) = a1;
  return v1;
}

unint64_t sub_1E3C13D20(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    v4 = result;
    OUTLINED_FUNCTION_11_3(v2 + OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_presentedCountdownIdentifiers, v5);

    sub_1E3277398(&v6, v4, a2);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E3C13D98(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2)
  {
    v5 = OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_presentedCountdownIdentifiers;
    OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_presentedCountdownIdentifiers, a2);
    v6 = *(v2 + v5);

    LOBYTE(v3) = sub_1E3862230(a1, v3, v6);
  }

  return v3 & 1;
}

uint64_t sub_1E3C13E0C()
{
  v1 = OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter__isCountingDown;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

void sub_1E3C13EC0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  type metadata accessor for CountDownButton();

  v17 = a3;

  v18 = j__OUTLINED_FUNCTION_3_24();
  v19 = j__OUTLINED_FUNCTION_3_24();
  v20 = sub_1E3BE6704(a1, a2, v17, a4, v18, v19, a8, a9);
  sub_1E3C1404C(v20);

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v17;
  *(a7 + 24) = a8;
  *(a7 + 32) = a4;
  *(a7 + 40) = a9;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  *(a7 + 64) = v20;
  *(a7 + 72) = sub_1E3C1400C;
  *(a7 + 80) = 0;
  *(a7 + 88) = 0;
}

uint64_t sub_1E3C1400C()
{
  type metadata accessor for CountDownProgressPresenter(0);
  v0 = swift_allocObject();
  sub_1E3C13C0C(0);
  return v0;
}

void sub_1E3C1404C(void *a1)
{
  v3 = swift_allocObject();
  memcpy((v3 + 16), v1, 0x59uLL);
  *(v3 + 112) = a1;
  aBlock[4] = sub_1E3C14B80;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E37C0588;
  aBlock[3] = &block_descriptor_77;
  v4 = _Block_copy(aBlock);
  sub_1E3C14BF4(v1, &v6);
  v5 = a1;

  [v5 setSelectActionHandler_];
  _Block_release(v4);
}

void sub_1E3C14148(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for CountDownButton();
  sub_1E3BE6974(a1, a2);
  v8 = *(v7 + OBJC_IVAR____TtC8VideosUI15CountDownButton_image);
  v9 = *(v7 + OBJC_IVAR____TtC8VideosUI15CountDownButton_title + 8);
  v18 = *(v7 + OBJC_IVAR____TtC8VideosUI15CountDownButton_title);
  v10 = *(v7 + OBJC_IVAR____TtC8VideosUI15CountDownButton_duration);
  v11 = *(v7 + OBJC_IVAR____TtC8VideosUI15CountDownButton_layout);
  v12 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x88);
  v13 = v7;

  v17 = v8;

  v15 = v12(v14);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;

  sub_1E3C1404C(v13);

  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v17;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  *(a4 + 40) = v15;
  *(a4 + 48) = sub_1E3C1490C;
  *(a4 + 56) = a1;
  *(a4 + 64) = v13;
  *(a4 + 72) = sub_1E3C148B8;
  *(a4 + 80) = v16;
  *(a4 + 88) = 0;
}

void sub_1E3C14394(void *a1)
{
  sub_1E3C1404C(a1);
  type metadata accessor for CountDownProgressPresenter(0);
  sub_1E3C14860();
  v1 = *(OUTLINED_FUNCTION_0_184() + 16);

  if (v1 == 1)
  {
    OUTLINED_FUNCTION_0_184();
    v2 = sub_1E3C13A90();

    OUTLINED_FUNCTION_16_1();
    if (v2)
    {
      (*(v3 + 224))();
      v4 = OUTLINED_FUNCTION_0_184();
      v5 = OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_hasStartedCountDown;
      swift_beginAccess();
      *(v4 + v5) = 1;

      v6 = objc_opt_self();
      [v6 begin];
      v7 = sub_1E4206394();
      [v6 setValue:v7 forKey:*MEMORY[0x1E697A020]];
    }

    else
    {
      (*(v3 + 232))();
      v6 = objc_opt_self();
      [v6 begin];
      v8 = sub_1E4206394();
      [v6 setValue:v8 forKey:*MEMORY[0x1E697A020]];

      v9 = OUTLINED_FUNCTION_0_184();
      OUTLINED_FUNCTION_15_0(v9 + OBJC_IVAR____TtC8VideosUI26CountDownProgressPresenter_hasStartedCountDown, v10);
    }

    OUTLINED_FUNCTION_16_1();
    (*(v11 + 144))();
    [v6 commit];
  }
}

double sub_1E3C145B8(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  v5 = 0.0;
  if (a2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *&a1;
  }

  if ((a4 & 1) == 0)
  {
    v5 = *&a3;
  }

  [a5 vui:1 layoutSubviews:v6 computationOnly:v5];
  if (v6 != 0.0)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1E3C1468C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E3C14B2C(a1, a2, a3);

  return sub_1E3E36D18(a1, a2, v5);
}

uint64_t sub_1E3C146D8()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C14B2C(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v3, v4, v5, v6);
}

uint64_t sub_1E3C14744()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C14978(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v3);
}

uint64_t sub_1E3C14798()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E3C14978(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v3);
}

void sub_1E3C147EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3C14978(a1, a2, a3);
  sub_1E4201F04();
  __break(1u);
}

uint64_t type metadata accessor for CountDownProgressPresenter(uint64_t a1)
{
  result = qword_1EE295C50;
  if (!qword_1EE295C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E3C14860()
{
  result = qword_1ECF2B260;
  if (!qword_1ECF2B260)
  {
    type metadata accessor for CountDownProgressPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B260);
  }

  return result;
}

uint64_t sub_1E3C148B8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    type metadata accessor for CountDownProgressPresenter(0);
    v1 = swift_allocObject();
    sub_1E3C13C0C(1);
  }

  return v1;
}

uint64_t sub_1E3C1490C(char a1)
{
  if (a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 2;
  }

  return (*(*v1 + 800))(v2, 0, 0, 0);
}

unint64_t sub_1E3C14950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3C14978(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3C14978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF355C8;
  if (!qword_1ECF355C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF355C8);
  }

  return result;
}

void sub_1E3C149D8(uint64_t a1)
{
  sub_1E32A995C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3C14A84(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1E3C14AC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3C14B2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF355D0;
  if (!qword_1ECF355D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF355D0);
  }

  return result;
}

uint64_t sub_1E3C14B80()
{
  v1 = *(v0 + 64);
  v2 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 112)) + 0xA0))();
  return v1(v2 & 1);
}

unint64_t GroupActivityStartupAction.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E3C14C40()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3C14CBC(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

unint64_t sub_1E3C14D14@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GroupActivityStartupAction.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t GroupActivityEndReason.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1E3C14D60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3C14DD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C14D60();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3C14E28()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0;
  OUTLINED_FUNCTION_77();
  sub_1E4200684();
  OUTLINED_FUNCTION_39_1();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  OUTLINED_FUNCTION_82_10();
  v9 = v1;
  v2 = sub_1E3C14D60();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x1E69109E0](v4, v5);

  OUTLINED_FUNCTION_0_185();
  sub_1E32AAD78(v6, v9, 0x6F69737365537369, 0xEF6576697463416ELL, v7);
}

uint64_t sub_1E3C14F38()
{
  v0 = *(**sub_1E32ABF64() + 96);

  v0(v1);
  OUTLINED_FUNCTION_12_1();

  return v0 & 1;
}

uint64_t sub_1E3C14F9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3C1500C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  OUTLINED_FUNCTION_178_2(v3, v4, v5, v6, v7, v8, v9, v10, v12, a1);
  return sub_1E4200684();
}

BOOL sub_1E3C15074()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  return v0 != 0;
}

BOOL sub_1E3C150C4@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C15074();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C1511C()
{
  OUTLINED_FUNCTION_170_2();
  sub_1E3C26968(v0, v1, v2);
  OUTLINED_FUNCTION_171_0();
  return sub_1E4206284();
}

uint64_t sub_1E3C1516C()
{
  OUTLINED_FUNCTION_170_2();
  sub_1E3C26968(v0, v1, v2);
  OUTLINED_FUNCTION_171_0();
  return sub_1E4206274();
}

uint64_t sub_1E3C151AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E42079A4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E3C15234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E3C151AC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E3C15260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3C2664C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB70](v3, v4);
}

uint64_t sub_1E3C15298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3C2664C(a1, a2, a3);
  v3 = OUTLINED_FUNCTION_19_3();

  return MEMORY[0x1EEE6BB78](v3, v4);
}

uint64_t sub_1E3C152D0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35750, &qword_1E42C4DB0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_4();
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3C2664C(v3, v4, v5);
  v6 = sub_1E4207C14();
  sub_1E3C266A0(v6, v7, v8);
  sub_1E42078E4();
  v9 = OUTLINED_FUNCTION_53();
  return v10(v9);
}

uint64_t sub_1E3C153EC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35758, &qword_1E42C4DB8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_20_1();
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E3C2664C(v4, v5, v6);
  v7 = sub_1E4207C04();
  if (!v1)
  {
    sub_1E3C266F4(v7, v8, v9);
    sub_1E4207864();
    v10 = OUTLINED_FUNCTION_171_0();
    v11(v10);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E3C15550()
{
  v1 = v0;
  v2 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v21 = v9;
  v10 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v1 + v10, 1, v2))
  {
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    v13 = (*(v4 + 16))(v8, v1 + v10, v2);
    v12 = MEMORY[0x1E6908F50](v13);
    v11 = v14;
    v15 = OUTLINED_FUNCTION_11_6();
    v16(v15);
  }

  MEMORY[0x1E69109E0](v12, v11);

  OUTLINED_FUNCTION_0_185();
  sub_1E32AAD78(v18, v21, 0xD00000000000001BLL, v17 | 0x8000000000000000, v19);
}

uint64_t sub_1E3C156EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
  v4 = OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_11_3(v4, v5);
  sub_1E3C256FC(a1, v1 + v3);
  swift_endAccess();
  sub_1E3C15550();
  return sub_1E325F7A8(a1, &qword_1ECF29408, &qword_1E42C4850);
}

uint64_t sub_1E3C1575C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCount);
  *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCount) = result;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCount);
  if (v3 != v2 && *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax) < v3)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax) = v3;
  }

  return result;
}

void sub_1E3C15798()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v50 = v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF33A10, &unk_1E42BC8E0);
  OUTLINED_FUNCTION_0_10();
  v49 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v48 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADF0, &unk_1E429F590);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_138();
  sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v46 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35620, &qword_1E42C4B18);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35628, qword_1E42C4B20);
  OUTLINED_FUNCTION_0_10();
  v44 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_1();
  v17 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_playerObserver;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_playerObserver))
  {

    sub_1E42004E4();
  }

  *(v0 + v17) = 0;

  v18 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_didPlayToEndObserver;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_didPlayToEndObserver))
  {

    sub_1E42004E4();
  }

  v45 = v18;
  *(v0 + v18) = 0;

  v19 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_playingObserver;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_playingObserver))
  {

    sub_1E42004E4();
  }

  *(v0 + v19) = 0;

  v43 = v19;
  v20 = *(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer);
  if (v20)
  {
    swift_getKeyPath();
    v42 = ObjectType;
    v41 = v20;
    sub_1E41FE2F4();

    sub_1E3280A90(0, &qword_1EE23ADD8, 0x1E6988098);
    sub_1E32752B0(&qword_1EE23AD78, &qword_1ECF35620, &qword_1E42C4B18, MEMORY[0x1E6969F80]);
    sub_1E42006C4();
    v21 = OUTLINED_FUNCTION_168();
    v22(v21);
    OUTLINED_FUNCTION_4_0();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v23);
    sub_1E32752B0(&qword_1EE28A370, &qword_1ECF35628, qword_1E42C4B20, MEMORY[0x1E695BC80]);
    v24 = sub_1E4200844();

    (*(v44 + 8))(v1, v14);
    *(v2 + v17) = v24;

    v25 = objc_opt_self();
    v26 = [v25 defaultCenter];
    v27 = v41;
    OUTLINED_FUNCTION_8_6();
    sub_1E4206C14();

    OUTLINED_FUNCTION_4_0();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v28);
    sub_1E32AC410(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1E4200844();

    v29 = *(v46 + 8);
    v30 = OUTLINED_FUNCTION_120();
    v29(v30);
    OUTLINED_FUNCTION_162(v45);
    v31 = [v25 defaultCenter];
    v47 = v27;
    sub_1E4206C14();

    sub_1E42007B4();
    v32 = OUTLINED_FUNCTION_120();
    v29(v32);
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v52 = sub_1E4206A04();
    sub_1E42069A4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    sub_1E32752B0(&qword_1EE28A2E0, &unk_1ECF33A10, &unk_1E42BC8E0, MEMORY[0x1E695BDE0]);
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F7A8(v50, &unk_1ECF2D2B0, &unk_1E429D3D0);

    (*(v49 + 8))(v48, v51);
    OUTLINED_FUNCTION_4_0();
    v37 = swift_allocObject();
    OUTLINED_FUNCTION_105_2(v37);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v38 = swift_allocObject();
    *(v38 + 16) = v48;
    *(v38 + 24) = v42;
    OUTLINED_FUNCTION_13_106(&qword_1EE28A250, &qword_1ECF2ADF0, &unk_1E429F590);
    sub_1E4200844();

    v39 = OUTLINED_FUNCTION_124();
    v40(v39);
    OUTLINED_FUNCTION_162(v43);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C15F80@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

void sub_1E3C15F8C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v12 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v12) != 1)
  {
    v18 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v18, v4);
    v19 = sub_1E41FFC94();
    v20 = sub_1E42067F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v55[0] = v22;
      *v21 = 136315138;
      OUTLINED_FUNCTION_23();
      *(v21 + 4) = sub_1E3270FC8(0xD000000000000011, v23, v55);
      _os_log_impl(&dword_1E323F000, v19, v20, "%s GroupActivitiesManager is not yet configured", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v24 = OUTLINED_FUNCTION_57();
    v25(v24);
    goto LABEL_18;
  }

  if (!sub_1E3C14F9C())
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v26, v27, 0xD000000000000011, v28, v29);
LABEL_18:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v54 = v3;
  v13 = objc_opt_self();
  v14 = [v13 standardUserDefaults];
  v15 = sub_1E4205ED4();
  v16 = [v14 BOOLForKey_];

  if (v16)
  {
    v17 = v54;
    if (!v54)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v30 = [v13 standardUserDefaults];
  v31 = sub_1E4205ED4();
  v32 = [v30 BOOLForKey_];

  v17 = v54;
  if (v54 || !v32)
  {
LABEL_15:
    v55[1] = 0xE000000000000000;
    sub_1E42074B4();
    v55[4] = 0;
    v55[5] = 0xE000000000000000;
    MEMORY[0x1E69109E0](0xD000000000000010, 0x80000001E4276950);
    sub_1E41FF434();
    OUTLINED_FUNCTION_3_143();
    sub_1E32AC410(v42, v43, MEMORY[0x1E69695E0]);
    OUTLINED_FUNCTION_180_2();
    v44 = sub_1E4207944();
    MEMORY[0x1E69109E0](v44);

    v45 = OUTLINED_FUNCTION_124();
    v46(v45);
    MEMORY[0x1E69109E0](0x6572206874697720, 0xED0000206E6F7361);
    v55[0] = v17;
    sub_1E4207614();
    OUTLINED_FUNCTION_23();
    MEMORY[0x1E69109E0](0xD000000000000010);
    v55[3] = type metadata accessor for GroupWatchActivity(0);
    sub_1E41FF4B4();
    v47 = sub_1E3294FA4(v55);
    MEMORY[0x1E69109E0](v47);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v48, v49, 0xD000000000000011, v50, v51);

    v52 = v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason;
    *v52 = v17;
    *(v52 + 8) = 0;
    sub_1E41FF444();

    goto LABEL_18;
  }

LABEL_12:
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_43_42();
  sub_1E32AAD78(v33, v34, 0xD000000000000011, v35, v36);
  v37 = *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer);
  if (!v37)
  {

    v41 = 0;
    goto LABEL_17;
  }

  v38 = [v37 avPlayer];
  if (v38)
  {
    v39 = v38;
    v40 = [v38 playbackCoordinator];

    v41 = [v40 beginSuspensionForReason_];

LABEL_17:
    v53 = *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_repeatSuspension);
    *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_repeatSuspension) = v41;

    goto LABEL_18;
  }

  __break(1u);
}

BOOL sub_1E3C16534(uint64_t a1, double a2)
{
  v2 = sub_1E41FDF24();
  if (!v2)
  {
    v10 = 0u;
    v11 = 0u;
    goto LABEL_6;
  }

  v3 = v2;
  *&v10 = sub_1E4205F14();
  *(&v10 + 1) = v4;
  sub_1E4207414();
  sub_1E375D7E8(v3, &v10, v9);

  sub_1E375D84C(v9);
  if (!*(&v11 + 1))
  {
LABEL_6:
    sub_1E325F7A8(&v10, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  sub_1E3280A90(0, &qword_1EE23B280, 0x1E69D5A40);
  if (swift_dynamicCast())
  {
    v5 = v9[0];
    goto LABEL_8;
  }

LABEL_7:
  v5 = 0;
LABEL_8:
  v6 = [objc_opt_self() playing];
  v7 = v6;
  if (v5)
  {
    if (v6)
    {

      swift_unknownObjectRelease();
      return v7 == v5;
    }

    swift_unknownObjectRelease();
    return 0;
  }

  if (v6)
  {

    return 0;
  }

  return 1;
}

void sub_1E3C1668C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_106();
  v64 = sub_1E41FFC44();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v66 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v65 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v70 = v13;
  OUTLINED_FUNCTION_138();
  v14 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_78();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v63 = v16;
    v67 = v1;
    v68 = v4;
    v24 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_repeatSuspension;
    v25 = *(Strong + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_repeatSuspension);
    v71 = v6;
    if (v25)
    {
      v26 = MEMORY[0x1E6960CC0];
      v27 = *MEMORY[0x1E6960CC0];
      v28 = *(MEMORY[0x1E6960CC0] + 16);
      v29 = v25;
      v72[0] = v27;
      v72[1] = *(v26 + 8);
      v72[2] = v28;
      [v29 endProposingNewTime_];
      if (sub_1E3C14F9C())
      {
        v30 = sub_1E41FF404();

        if (v30)
        {
          v31 = *&v23[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer];
          if (v31)
          {
            v32 = v31;
            [v32 play];
          }
        }
      }

      v33 = *&v23[v24];
      *&v23[v24] = 0;

      v6 = v71;
    }

    v34 = sub_1E3C14F9C();
    if (v34)
    {
      v35 = v34;
      sub_1E41FF434();

      v36 = v63;
      v62 = *(v63 + 32);
      v62(v2, v0, v14);
      sub_1E4206474();
      v37 = v70;
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
      OUTLINED_FUNCTION_4_0();
      v42 = swift_allocObject();
      OUTLINED_FUNCTION_105_2(v42);
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_146_2();
      v43 = v69;
      v44(v69, v2, v14);
      v45 = (*(v36 + 80) + 40) & ~*(v36 + 80);
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v46[4] = v35;
      v62(v46 + v45, v43, v14);
      v47 = OUTLINED_FUNCTION_23_7();
      v48 = v37;
      v6 = v71;
      sub_1E3797438(v47, v49, v48, v50, v46);

      (*(v36 + 8))(v2, v14);
    }

    v51 = sub_1E3C14D60();
    v53 = v67;
    v52 = v68;
    if ((v51 & 1) != 0 && *&v23[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_signpostState])
    {
      *&v23[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_signpostState] = 0;
      v54 = sub_1E41FFC14();
      v55 = v65;
      sub_1E41FFC54();
      v56 = sub_1E4206B94();
      if (sub_1E42070B4())
      {

        sub_1E41FFC84();

        if ((*(v52 + 88))(v53, v64) == *MEMORY[0x1E69E93E8])
        {
          v57 = "[Error] Interval already ended";
        }

        else
        {
          v58 = OUTLINED_FUNCTION_76_0();
          v59(v58);
          v57 = "";
        }

        v60 = swift_slowAlloc();
        *v60 = 0;
        v61 = sub_1E41FFBD4();
        _os_signpost_emit_with_name_impl(&dword_1E323F000, v54, v56, v61, "tv.watch-together.content-ready", v57, v60, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v66 + 8))(v55, v6);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C16BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C16BD0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 72) = *(Strong + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);

    v3 = OUTLINED_FUNCTION_52_29();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_54();

    return v6();
  }
}

uint64_t sub_1E3C16CA0()
{
  OUTLINED_FUNCTION_24();
  sub_1E3DAC6F0();

  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1E3C16D08()
{
  **(v0 + 40) = *(v0 + 64) == 0;
  OUTLINED_FUNCTION_54();
  return v1();
}

void sub_1E3C16D3C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer);
  *(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer) = a1;
  v3 = a1;

  sub_1E3C15798();
}

id sub_1E3C16D94()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isPostPlayActive];

  return v1;
}

uint64_t sub_1E3C16E00()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);
  *(v0 + 24) = v1;
  return OUTLINED_FUNCTION_13_1(sub_1E3C16E28, v1);
}

uint64_t sub_1E3C16E28()
{
  OUTLINED_FUNCTION_24();
  sub_1E32AB9D8();
  OUTLINED_FUNCTION_54();

  return v0();
}

double sub_1E3C16E80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    OUTLINED_FUNCTION_38_1();
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    if (sub_1E3C14F9C())
    {
      v3 = sub_1E41FF3F4();
      v5 = v4;
    }

    else
    {
      v5 = 0xE500000000000000;
      v3 = 0x3E6C696E3CLL;
    }

    MEMORY[0x1E69109E0](v3, v5);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v11, v12, 0xD00000000000001FLL, v13, v14);

    if (sub_1E3C14F9C())
    {
      sub_1E41FF424();
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v6, v7, 0xD00000000000001FLL, v8, v9);
  }

  return result;
}

uint64_t sub_1E3C16FD0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v10 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v4 + v10) == 1)
  {
    if (sub_1E3C14F9C())
    {
      sub_1E41FF4B4();

      sub_1E39CB410();
    }

    OUTLINED_FUNCTION_82();
    v18 = sub_1E3C17278(v15, v16, v17, a2);

    if (v18)
    {
      LOBYTE(a2) = 1;
    }

    else
    {
      if (sub_1E3C14F9C())
      {
        sub_1E41FF4B4();

        v19 = sub_1E39CB9F8();

        if (v19)
        {
          v20 = [v19 playbackURL];

          if (v20)
          {
            sub_1E41FE3C4();
          }

          v21 = sub_1E41FE414();
          OUTLINED_FUNCTION_166_3();
          __swift_storeEnumTagSinglePayload(v22, v23, v24, v21);
          v25 = OUTLINED_FUNCTION_53();
          sub_1E327D738(v25, v26);
          v27 = OUTLINED_FUNCTION_125_5();
          OUTLINED_FUNCTION_52(v27, v28, v21);
          if (v29)
          {
            sub_1E325F7A8(v3, &unk_1ECF363C0, &unk_1E42A9420);
          }

          else
          {
            sub_1E41FE314();
            OUTLINED_FUNCTION_37_1();
            (*(v30 + 8))(v3, v21);
          }
        }
      }

      v31 = OUTLINED_FUNCTION_76_0();
      sub_1E3C17278(v31, v32, a1, a2);
      OUTLINED_FUNCTION_12_1();
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v11, v12, 0xD000000000000035, v13, v14);
    LOBYTE(a2) = 0;
  }

  return a2 & 1;
}

uint64_t sub_1E3C17278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || !a4)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

void sub_1E3C172A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_226();
  sub_1E379D7E4(v26, v31, &unk_1ECF363C0, &unk_1E42A9420);
  v37 = OUTLINED_FUNCTION_245();
  OUTLINED_FUNCTION_52(v37, v38, v32);
  if (v47)
  {
    v39 = v31;
LABEL_7:
    sub_1E325F7A8(v39, &unk_1ECF363C0, &unk_1E42A9420);
    goto LABEL_8;
  }

  v40 = *(v34 + 32);
  (v40)(v21, v31, v32);
  v41 = OUTLINED_FUNCTION_38_0();
  sub_1E379D7E4(v41, v42, v43, v44);
  v45 = OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_52(v45, v46, v32);
  if (v47)
  {
    v48 = OUTLINED_FUNCTION_67_0();
    v49(v48);
    v39 = v20;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_21_1();
  v40();
  OUTLINED_FUNCTION_4_150();
  sub_1E32AC410(v50, v51, MEMORY[0x1E6968FC8]);
  sub_1E4205E84();
  v52 = *(v34 + 8);
  v52(v22, v32);
  v53 = OUTLINED_FUNCTION_67_0();
  (v52)(v53);
LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C174E4()
{
  OUTLINED_FUNCTION_31_1();
  v29 = v1;
  v30 = v0;
  v3 = v2;
  v5 = v4;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E41FE624();
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_60_22();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v15 = OUTLINED_FUNCTION_53();
  MEMORY[0x1E69109E0](v15);
  MEMORY[0x1E69109E0](2108704, 0xE300000000000000);
  OUTLINED_FUNCTION_4_150();
  sub_1E32AC410(v16, v17, MEMORY[0x1E6968FE0]);
  OUTLINED_FUNCTION_180_2();
  v18 = sub_1E4207944();
  MEMORY[0x1E69109E0](v18);

  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v19, v20, v21, v22, v23);

  type metadata accessor for GroupWatchActivity(0);
  sub_1E41FE614();
  OUTLINED_FUNCTION_167_0();
  v24();

  v25 = v30;
  sub_1E39CBC68(v14, v5, v3, v9, v30);
  if (!v29)
  {
    [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  }

  OUTLINED_FUNCTION_2_145();
  sub_1E32AC410(v26, v27, &unk_1E42B0818);
  v28 = v29;
  sub_1E4206834();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C17748(void *a1, void *a2, void *a3)
{
  v6 = sub_1E41FE624();
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  type metadata accessor for GroupWatchActivity(0);
  sub_1E41FE614();
  v8 = a1;
  v9 = a2;
  v10 = OUTLINED_FUNCTION_53();
  sub_1E39CBFD0(v10, v11, a2);
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  }

  OUTLINED_FUNCTION_2_145();
  sub_1E32AC410(v13, v14, &unk_1E42B0818);
  v15 = a3;
  sub_1E4206834();

  return v12;
}

id sub_1E3C17864(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_39_1();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v25 = v10;
  v11 = OUTLINED_FUNCTION_8_6();
  MEMORY[0x1E69109E0](v11);
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v12, v13, v14, v15, v16);

  if (a4)
  {
    v17 = a4;
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  }

  OUTLINED_FUNCTION_10_9();
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  v18[5] = a3;
  type metadata accessor for GroupWatchActivity(0);
  OUTLINED_FUNCTION_2_145();
  sub_1E32AC410(v19, v20, &unk_1E42B0818);
  v21 = a4;
  v22 = v5;

  v23 = a3;
  sub_1E4206824();

  return v17;
}

uint64_t sub_1E3C179D0()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FE414();
  OUTLINED_FUNCTION_17_2(v3);
  v0[4] = OUTLINED_FUNCTION_86_0();
  v4 = sub_1E41FE624();
  OUTLINED_FUNCTION_17_2(v4);
  v0[5] = OUTLINED_FUNCTION_86_0();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_56_1(v5);
  v6 = OUTLINED_FUNCTION_32_0();

  return sub_1E3C17CF0(v6, v7);
}

uint64_t sub_1E3C17AA4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 56) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

id sub_1E3C17BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v13 = *(v12 + 56);
  sub_1E41FE614();
  result = sub_1E39A4DDC(v13, &selRef_sharedWatchId);
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  result = [*(v12 + 56) sharedWatchUrl];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v17 = result;
  v18 = *(v12 + 56);
  v19 = *(v12 + 32);
  v21 = *(v12 + 16);
  v20 = *(v12 + 24);
  type metadata accessor for GroupWatchActivity(0);
  sub_1E41FE3C4();

  v22 = v20;
  v23 = OUTLINED_FUNCTION_76_0();
  v25 = sub_1E39CBC68(v23, v24, v16, v19, v20);

  *v21 = v25;

  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_68_2();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1E3C17CF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C17D04()
{
  OUTLINED_FUNCTION_27_2();
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
  *v4 = v0;
  v4[1] = sub_1E3C17E10;
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DE38](v5, v6, v7, v8, v9, v10, v3, v11);
}

uint64_t sub_1E3C17E10()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C17F38()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C17F94()
{
  OUTLINED_FUNCTION_24();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v1[5] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v6);
  v1[10] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FE414();
  v1[11] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[14] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v1[15] = v9;
  v1[16] = v10;
  v11 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E3C18094()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 72);
  v2 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = sub_1E39A4DDC(*(v0 + 40), &selRef_utsEntityType);
    v5 = v4;
    v6 = sub_1E4205F14();
    if (v5)
    {
      v8 = v3 == v6 && v5 == v7;
      if (!v8)
      {
        OUTLINED_FUNCTION_67_0();
        sub_1E42079A4();
      }
    }

    else
    {
    }

    v22 = *(v0 + 88);
    sub_1E379D7E4(*(v0 + 48), *(v0 + 80), &unk_1ECF363C0, &unk_1E42A9420);
    v23 = OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_52(v23, v24, v22);
    if (!v8)
    {
      v28 = *(v0 + 40);
      (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
      sub_1E39A4DDC(v28, &selRef_sharedWatchId);
      *(v0 + 136) = v29;
      v30 = swift_task_alloc();
      *(v0 + 144) = v30;
      *v30 = v0;
      v30[1] = sub_1E3C183AC;
      OUTLINED_FUNCTION_62_1();

      return sub_1E3C186E8();
    }

    v25 = *(v0 + 40);
    sub_1E325F7A8(*(v0 + 80), &unk_1ECF363C0, &unk_1E42A9420);
    if ([v25 useSharedPlayableForCowatching])
    {
      v26 = swift_task_alloc();
      *(v0 + 160) = v26;
      *v26 = v0;
      v26[1] = sub_1E3C1856C;
      OUTLINED_FUNCTION_62_1();

      return sub_1E3C18FA8();
    }

    v9 = "s not yet configured";
    v10 = 0xD000000000000046;
  }

  else
  {
    v9 = "ction:previewMetadata:)";
    v10 = 0xD000000000000074;
  }

  OUTLINED_FUNCTION_1_178();
  sub_1E32AAD78(v10, v9 | 0x8000000000000000, 0xD000000000000047, v11 | 0x8000000000000000, v12);

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_62_1();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1E3C183AC()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 152) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 128);
  v10 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E3C184DC, v10, v9);
}

uint64_t sub_1E3C184DC()
{
  OUTLINED_FUNCTION_27_2();

  v0 = OUTLINED_FUNCTION_16_0();
  v1(v0);

  v2 = OUTLINED_FUNCTION_88_1();

  return v3(v2);
}

uint64_t sub_1E3C1856C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 168) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 128);
  v10 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E3C18678, v10, v9);
}

uint64_t sub_1E3C18678()
{
  OUTLINED_FUNCTION_24();

  v0 = OUTLINED_FUNCTION_88_1();

  return v1(v0);
}

uint64_t sub_1E3C186E8()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 224) = v2;
  *(v1 + 96) = v3;
  *(v1 + 104) = v0;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  OUTLINED_FUNCTION_17_2(v8);
  *(v1 + 112) = OUTLINED_FUNCTION_86_0();
  v9 = sub_1E41FE624();
  *(v1 + 120) = v9;
  OUTLINED_FUNCTION_8_0(v9);
  *(v1 + 128) = v10;
  *(v1 + 136) = OUTLINED_FUNCTION_107_1();
  *(v1 + 144) = swift_task_alloc();
  v11 = sub_1E41FE414();
  *(v1 + 152) = v11;
  OUTLINED_FUNCTION_8_0(v11);
  *(v1 + 160) = v12;
  *(v1 + 168) = OUTLINED_FUNCTION_107_1();
  *(v1 + 176) = swift_task_alloc();
  sub_1E4206434();
  *(v1 + 184) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  *(v1 + 192) = v13;
  *(v1 + 200) = v14;
  v15 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1E3C18850()
{
  if (v0[10])
  {
    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[13];

    sub_1E3C1E710();
    v4 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E379D7E4(v3 + v4, v2, &qword_1ECF29408, &qword_1E42C4850);
    if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
    {
      v5 = v0[15];
      sub_1E41FE614();
      v6 = OUTLINED_FUNCTION_31_5();
      OUTLINED_FUNCTION_52(v6, v7, v5);
      if (!v8)
      {
        sub_1E325F7A8(v0[14], &qword_1ECF29408, &qword_1E42C4850);
      }
    }

    else
    {
      (*(v0[16] + 32))(v0[18], v0[14], v0[15]);
    }

    v13 = v0[11];
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    OUTLINED_FUNCTION_4_150();
    sub_1E32AC410(v14, v15, MEMORY[0x1E6968FE0]);
    v16 = sub_1E4207944();
    v18 = v17;
    MEMORY[0x1E69109E0](v16);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_81_14(v19, v20, v21, v22, v23);

    switch(v13)
    {
      case 0:
        OUTLINED_FUNCTION_75_13();

        OUTLINED_FUNCTION_41_7();
        OUTLINED_FUNCTION_157_5();
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_81_14(v24, v25, v26, v27, v28);

        type metadata accessor for GroupWatchActivity(0);
        v29 = OUTLINED_FUNCTION_185_1();
        v31 = v30(v29);
        v39 = OUTLINED_FUNCTION_171_2(v31, v32, v33, v34, v35, v36, v37, v38, v91, v92, v93);
        v40(v39);
        v41 = v18;
        OUTLINED_FUNCTION_142_7();
        v45 = sub_1E39CBC68(v42, v43, v44, v13, v18);
        goto LABEL_10;
      case 1:

        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_190_0(v74, v75, v76);
        v45 = 0x8000000000000000;
        goto LABEL_13;
      case 2:
        OUTLINED_FUNCTION_75_13();

        OUTLINED_FUNCTION_41_7();
        OUTLINED_FUNCTION_157_5();
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_81_14(v46, v47, v48, v49, v50);

        type metadata accessor for GroupWatchActivity(0);
        v51 = OUTLINED_FUNCTION_185_1();
        v53 = v52(v51);
        v61 = OUTLINED_FUNCTION_171_2(v53, v54, v55, v56, v57, v58, v59, v60, v91, v92, v93);
        v62(v61);
        v63 = v18;
        OUTLINED_FUNCTION_142_7();
        v45 = sub_1E39CBC68(v64, v65, v66, v13, v18) | 0x4000000000000000;
LABEL_10:

LABEL_13:
        v0[26] = v45;
        v77 = swift_task_alloc();
        v0[27] = v77;
        *v77 = v0;
        v77[1] = sub_1E3C18D84;
        OUTLINED_FUNCTION_41_12();

        return sub_1E3C1ECB0();
      case 3:

        OUTLINED_FUNCTION_1_178();
        OUTLINED_FUNCTION_190_0(v67, v68, v69);
        v70 = OUTLINED_FUNCTION_24_4();
        v71(v70);
        v72 = OUTLINED_FUNCTION_57();
        v73(v72);
        break;
      default:
        v80 = v0[20];
        v95 = v0[19];
        v96 = v0[22];
        v94 = v0[18];
        v82 = v0[15];
        v81 = v0[16];
        v83 = v0[11];

        sub_1E42074B4();
        v0[5] = 0;
        v0[6] = 0xE000000000000000;
        MEMORY[0x1E69109E0](0xD000000000000016, 0x80000001E42776A0);
        v0[7] = v83;
        sub_1E4207614();
        OUTLINED_FUNCTION_1_178();
        OUTLINED_FUNCTION_81_14(v84, v85, v86, v87, v88);

        (*(v81 + 8))(v94, v82);
        (*(v80 + 8))(v96, v95);
        break;
    }
  }

  else
  {

    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v9, v10, 0xD00000000000005CLL, v11, v12);
  }

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_41_12();

  __asm { BRAA            X2, X16 }

  return result;
}

uint64_t sub_1E3C18D84()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 225) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 200);
  v10 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1E3C18EB4, v10, v9);
}

uint64_t sub_1E3C18EB4()
{

  v0 = OUTLINED_FUNCTION_35_5();
  v1(v0);
  v2 = OUTLINED_FUNCTION_16_0();
  v3(v2);

  v4 = OUTLINED_FUNCTION_88_1();

  return v5(v4);
}

uint64_t sub_1E3C18FA8()
{
  OUTLINED_FUNCTION_24();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  OUTLINED_FUNCTION_17_2(v5);
  v1[12] = OUTLINED_FUNCTION_86_0();
  v6 = sub_1E41FE624();
  v1[13] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v1[14] = v7;
  v1[15] = OUTLINED_FUNCTION_107_1();
  v1[16] = swift_task_alloc();
  sub_1E4206434();
  v1[17] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v1[18] = v8;
  v1[19] = v9;
  v10 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E3C190B0()
{
  v78 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  strcpy(v77, "New playable ");
  HIWORD(v77[1]) = -4864;
  v5 = [v4 description];
  sub_1E4205F14();

  v6 = OUTLINED_FUNCTION_24_4();
  MEMORY[0x1E69109E0](v6);

  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_78_12(v7, v8, v9, v10, v11);

  v12 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E379D7E4(v3 + v12, v2, &qword_1ECF29408, &qword_1E42C4850);
  v13 = OUTLINED_FUNCTION_31_5();
  if (__swift_getEnumTagSinglePayload(v13, v14, v1) == 1)
  {
    v15 = *(v0 + 104);
    sub_1E41FE614();
    v16 = OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_52(v16, v17, v15);
    if (!v65)
    {
      sub_1E325F7A8(*(v0 + 96), &qword_1ECF29408, &qword_1E42C4850);
    }
  }

  else
  {
    (*(*(v0 + 112) + 32))(*(v0 + 128), *(v0 + 96), *(v0 + 104));
  }

  v18 = *(v0 + 72);
  switch(v18)
  {
    case 0:
      v19 = *(v0 + 80);
      v20 = *(v0 + 64);
      OUTLINED_FUNCTION_38_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      v77[0] = 0xD000000000000027;
      v77[1] = v21;
      v22 = sub_1E39A4DDC(v20, &selRef_sharedWatchId);
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v22 = 7104878;
        v24 = 0xE300000000000000;
      }

      MEMORY[0x1E69109E0](v22, v24);

      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_78_12(v25, v26, v27, v28, v29);

      type metadata accessor for GroupWatchActivity(0);
      OUTLINED_FUNCTION_167_0();
      v30();
      v31 = v19;
      v32 = v20;
      v33 = OUTLINED_FUNCTION_19_3();
      v35 = sub_1E39CBFD0(v33, v34, v19);
      goto LABEL_14;
    case 1:
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_188_0(v57, v58, v59);
      v35 = 0x8000000000000000;
      goto LABEL_17;
    case 2:
      v36 = *(v0 + 80);
      v37 = *(v0 + 64);
      OUTLINED_FUNCTION_38_1();
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      v77[0] = 0xD000000000000027;
      v77[1] = v38;
      v39 = sub_1E39A4DDC(v37, &selRef_sharedWatchId);
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v39 = 7104878;
        v41 = 0xE300000000000000;
      }

      MEMORY[0x1E69109E0](v39, v41);

      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_78_12(v42, v43, v44, v45, v46);

      type metadata accessor for GroupWatchActivity(0);
      OUTLINED_FUNCTION_167_0();
      v47();
      v48 = v36;
      v49 = v37;
      v50 = OUTLINED_FUNCTION_19_3();
      v35 = sub_1E39CBFD0(v50, v51, v36) | 0x4000000000000000;
LABEL_14:

LABEL_17:
      *(v0 + 160) = v35;
      v60 = sub_1E39A4DDC(*(v0 + 64), &selRef_utsEntityType);
      v62 = v61;
      v63 = sub_1E4205F14();
      if (v62)
      {
        v65 = v60 == v63 && v62 == v64;
        if (!v65)
        {
          OUTLINED_FUNCTION_38_0();
          sub_1E42079A4();
        }
      }

      else
      {
      }

      v76 = swift_task_alloc();
      *(v0 + 168) = v76;
      *v76 = v0;
      v76[1] = sub_1E3C19634;

      return sub_1E3C1ECB0();
    case 3:

      OUTLINED_FUNCTION_1_178();
      OUTLINED_FUNCTION_188_0(v52, v53, v54);
      v55 = OUTLINED_FUNCTION_16_0();
      v56(v55);
      goto LABEL_26;
    default:

      OUTLINED_FUNCTION_38_1();
      sub_1E42074B4();
      v66 = v77[1];
      *(v0 + 40) = v77[0];
      *(v0 + 48) = v66;
      MEMORY[0x1E69109E0](0xD000000000000016, 0x80000001E42776A0);
      *(v0 + 56) = v18;
      sub_1E4207614();
      OUTLINED_FUNCTION_1_178();
      OUTLINED_FUNCTION_78_12(v67, v68, v69, v70, v71);

      v72 = OUTLINED_FUNCTION_27_0();
      v73(v72);
LABEL_26:

      OUTLINED_FUNCTION_13_7();

      return v74(1);
  }
}

uint64_t sub_1E3C19634()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 176) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 152);
  v10 = *(v0 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1E3C19764, v10, v9);
}

uint64_t sub_1E3C19764()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();

  v0 = OUTLINED_FUNCTION_16_0();
  v1(v0);

  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_62_1();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

void sub_1E3C19814()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0, &qword_1E42C4810);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21_3();
  v18 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v72 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v21 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v3 + v21) == 1)
  {
    v71 = v5;
    v22 = [objc_opt_self() sharedInstance];
    v23 = [v22 appController];

    if (v23)
    {
      v24 = [v23 appContext];

      if (v24)
      {
        v70 = v24;
        sub_1E3C1F644();
        v68 = v25;
        v69 = v26;
        if (sub_1E3C14F9C())
        {
          sub_1E41FF4B4();

          v67 = sub_1E39CB410();
          v28 = v27;
        }

        else
        {
          v67 = 0;
          v28 = 0;
        }

        if (sub_1E3C14F9C())
        {
          sub_1E41FF4B4();
          sub_1E39CB5B0();

          OUTLINED_FUNCTION_52(v2, 1, v18);
          if (v34)
          {

            sub_1E325F7A8(v2, &unk_1ECF363C0, &unk_1E42A9420);
          }

          else
          {
            (*(v72 + 32))(v1, v2, v18);
            v40 = sub_1E3C17278(v68, v69, v67, v28);

            if (v40)
            {
              sub_1E41FF484();
              (*(v8 + 104))(v12, *MEMORY[0x1E696B2D0], v6);
              type metadata accessor for GroupWatchActivity(0);
              OUTLINED_FUNCTION_2_145();
              sub_1E32AC410(v41, v42, &unk_1E42B0818);
              OUTLINED_FUNCTION_142_7();
              v43 = sub_1E41FF464();
              v44 = *(v8 + 8);
              v44(v12, v6);
              v44(v15, v6);
              if (v43)
              {
                OUTLINED_FUNCTION_0_185();
                OUTLINED_FUNCTION_167_4();
                OUTLINED_FUNCTION_43_42();
                OUTLINED_FUNCTION_195_1(v45, v46, v47, v48, v49);
                v50 = sub_1E3286BF0();
                v51 = *((*MEMORY[0x1E69E7D40] & **v50) + 0x278);
                v52 = *v50;
                v53 = v70;
                OUTLINED_FUNCTION_25();
                v51();

                v54 = OUTLINED_FUNCTION_165_4();
                v55(v54);
                goto LABEL_7;
              }
            }

            v56 = OUTLINED_FUNCTION_165_4();
            v57(v56);
          }

          OUTLINED_FUNCTION_167_4();
          OUTLINED_FUNCTION_0_185();
          OUTLINED_FUNCTION_43_42();
          OUTLINED_FUNCTION_195_1(v58, v59, v60, v61, v62);
          v63 = sub_1E3286BF0();
          v64 = *((*MEMORY[0x1E69E7D40] & **v63) + 0x278);
          v65 = *v63;
          v66 = v70;
          OUTLINED_FUNCTION_25();
          v64();

          goto LABEL_7;
        }

        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_167_4();
        OUTLINED_FUNCTION_43_42();
        OUTLINED_FUNCTION_195_1(v35, v36, v37, v38, v39);
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_167_4();
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_195_1(v29, v30, v31, v32, v33);
  }

LABEL_7:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C19DCC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v2 + v4) != 1)
  {
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
LABEL_10:
    sub_1E32AAD78(v15, v16, 0xD000000000000012, v17, v18);
    return;
  }

  if (!a1)
  {
    OUTLINED_FUNCTION_0_185();
    v15 = 0x6920726579616C50;
    v16 = 0xED00006C696E2073;
    v17 = v19 | 0x8000000000000000;
    goto LABEL_10;
  }

  v5 = *(v2 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v20 = a1;
    OUTLINED_FUNCTION_0_185();
    sub_1E32AAD78(0xD000000000000043, 0x80000001E4276F50, 0xD000000000000012, 0x80000001E4276ED0, v21);
  }

  else
  {
    v7 = a1;
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    v8 = [v7 description];
    sub_1E4205F14();

    v9 = OUTLINED_FUNCTION_24_4();
    MEMORY[0x1E69109E0](v9);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v10, v11, 0xD000000000000012, v12, v13);

    v14 = v7;
    sub_1E3C16D3C(a1);
  }
}

void sub_1E3C19FBC()
{
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_43_42();
  sub_1E32AAD78(v0, v1, 0xD000000000000013, v2, v3);

  sub_1E3C16D3C(0);
}

uint64_t sub_1E3C1A01C()
{
  OUTLINED_FUNCTION_24();
  v1[14] = v2;
  v1[15] = v0;
  v3 = sub_1E41FF3E4();
  v1[16] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[17] = v4;
  v1[18] = OUTLINED_FUNCTION_107_1();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  OUTLINED_FUNCTION_17_2(v5);
  v1[21] = OUTLINED_FUNCTION_107_1();
  v1[22] = swift_task_alloc();
  v6 = sub_1E41FE624();
  v1[23] = v6;
  OUTLINED_FUNCTION_17_2(v6);
  v1[24] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FE414();
  v1[25] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[26] = v8;
  v1[27] = OUTLINED_FUNCTION_107_1();
  v1[28] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v9);
  v1[29] = OUTLINED_FUNCTION_107_1();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E3C1A1F4()
{
  v118 = v0;
  v1 = *(v0 + 120);
  v2 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v1 + v2) != 1)
  {
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_163_3(v7, v8, v9, v10, v11);
    v12 = 1;
LABEL_5:
    v110 = v12;
LABEL_26:
    OUTLINED_FUNCTION_183_2();
    OUTLINED_FUNCTION_193_0();

    OUTLINED_FUNCTION_13_7();

    return v56(v110);
  }

  v3 = *(v0 + 112);
  if (v3)
  {
    v4 = sub_1E39A4DDC(*(v0 + 112), &selRef_sharedWatchId);
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v13 = sub_1E3C14F9C();
  if (v13)
  {
    sub_1E41FF4B4();

    v14 = sub_1E39CB410();
    v13 = v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = sub_1E3C17278(v4, v6, v14, v13);

  if (v16)
  {
    goto LABEL_25;
  }

  if (v3)
  {
    v17 = [*(v0 + 112) playbackURL];
    if (v17)
    {
      v18 = v17;
      sub_1E41FE3C4();

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 264), v19, 1, *(v0 + 200));
    v24 = OUTLINED_FUNCTION_67_0();
    sub_1E327D738(v24, v25);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

  if (sub_1E3C14F9C() && (sub_1E41FF4B4(), , v26 = sub_1E39CB9F8(), , v26))
  {
    v27 = [v26 playbackURL];

    if (v27)
    {
      sub_1E41FE3C4();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    __swift_storeEnumTagSinglePayload(*(v0 + 248), v28, 1, *(v0 + 200));
    v33 = OUTLINED_FUNCTION_67_0();
    sub_1E327D738(v33, v34);
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  }

  v35 = OUTLINED_FUNCTION_57();
  sub_1E3C172A0(v35, v36, v37, v38, v39, v40, v41, v42, v105, v106, v107, v108, v109, v111, v112, v113, v114, v115, v116, v117);
  v44 = v43;
  OUTLINED_FUNCTION_167_0();
  sub_1E325F7A8(v45, v46, v47);
  OUTLINED_FUNCTION_167_0();
  sub_1E325F7A8(v48, v49, v50);
  if (v44)
  {
LABEL_25:
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_163_3(v51, v52, v53, v54, v55);
    v110 = 0;
    goto LABEL_26;
  }

  if (!v3)
  {
    goto LABEL_36;
  }

  v58 = *(v0 + 112);
  v59 = sub_1E39A4DDC(v58, &selRef_sharedWatchId);
  if (!v60)
  {
    goto LABEL_36;
  }

  v61 = v59;
  v62 = v60;
  v63 = [v58 sharedWatchUrl];
  if (v63)
  {
    v64 = v63;
    sub_1E41FE3C4();

    v65 = 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = *(v0 + 200);
  __swift_storeEnumTagSinglePayload(*(v0 + 232), v65, 1, v66);
  v67 = OUTLINED_FUNCTION_38_0();
  sub_1E327D738(v67, v68);
  v69 = OUTLINED_FUNCTION_44_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v69, v70, v66);
  v72 = *(v0 + 240);
  if (EnumTagSinglePayload == 1)
  {

    sub_1E325F7A8(v72, &unk_1ECF363C0, &unk_1E42A9420);
LABEL_36:
    v73 = type metadata accessor for GroupWatchActivity(0);
    sub_1E39D0190(v73);
    v74 = sub_1E39CBAEC();
    goto LABEL_37;
  }

  v96 = *(v0 + 216);
  v95 = *(v0 + 224);
  v97 = *(v0 + 200);
  v98 = *(v0 + 208);
  v99 = *(v0 + 192);
  v100 = OUTLINED_FUNCTION_38_0();
  v101(v100);
  v73 = type metadata accessor for GroupWatchActivity(0);
  OUTLINED_FUNCTION_146_2();
  v102 = OUTLINED_FUNCTION_124();
  v104 = v103(v102);
  sub_1E39CBC64(v104);
  v74 = sub_1E39CBC68(v99, v61, v62, v96, 0);
  (*(v98 + 8))(v95, v97);
LABEL_37:
  *(v0 + 280) = v74;
  v75 = *(v0 + 176);
  v76 = *(v0 + 184);
  v77 = *(v0 + 120);
  v114 = 0xE000000000000000;

  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  type metadata accessor for GroupWatchActivity(0);
  *(v0 + 288) = v73;
  v116 = v73;
  v113 = v74;
  v78 = sub_1E3294FA4(&v113);
  MEMORY[0x1E69109E0](v78);

  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_104_6();
  OUTLINED_FUNCTION_163_3(v79, v80, v81, v82, v83);

  v84 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E379D7E4(v77 + v84, v75, &qword_1ECF29408, &qword_1E42C4850);
  LODWORD(v76) = __swift_getEnumTagSinglePayload(v75, 1, v76);
  v85 = OUTLINED_FUNCTION_76_0();
  sub_1E325F7A8(v85, v86, &qword_1E42C4850);
  if (v76 != 1)
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_163_3(0xD00000000000004ALL, v92 | 0x8000000000000000, v93, 0x80000001E4276FE0, v94);

    v12 = 2;
    goto LABEL_5;
  }

  *(v0 + 96) = v74;
  v87 = swift_task_alloc();
  *(v0 + 296) = v87;
  OUTLINED_FUNCTION_2_145();
  v90 = sub_1E32AC410(v88, v89, &unk_1E42B0818);
  *v87 = v0;
  v87[1] = sub_1E3C1A8B8;
  v91 = *(v0 + 160);

  return MEMORY[0x1EEDC7538](v91, v73, v90);
}

uint64_t sub_1E3C1A8B8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1E3C1A99C()
{
  v1 = v0[35];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[16];
  v5 = v0[17];
  sub_1E42074B4();
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1E69109E0](0xD00000000000002CLL, 0x80000001E42770A0);
  v0[13] = v1;
  sub_1E4207614();
  MEMORY[0x1E69109E0](0x3A746C7573657220, 0xE900000000000020);
  OUTLINED_FUNCTION_76_0();
  sub_1E4207614();
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_104_6();
  OUTLINED_FUNCTION_163_3(v6, v7, v8, v9, v10);

  (*(v5 + 16))(v2, v3, v4);
  v11 = OUTLINED_FUNCTION_27_0();
  v13 = v12(v11);
  v14 = *MEMORY[0x1E696B2A0];
  if (v13 == v14)
  {
    sub_1E3C1ACF0(1);
  }

  else if (v13 != *MEMORY[0x1E696B298] && v13 != *MEMORY[0x1E696B2A8])
  {
    (*(v0[17] + 8))(v0[19], v0[16]);
  }

  v15 = v0[17];
  (*(v15 + 104))(v0[18], v14, v0[16]);
  sub_1E32AC410(&qword_1ECF355F0, MEMORY[0x1E696B2B0], MEMORY[0x1E696B2B8]);
  v16 = sub_1E4205E84();
  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_24_4();
  v17(v18);
  if (v16)
  {
    (v17)(v0[20], v0[16]);
  }

  else
  {
    v19 = v0[21];
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    sub_1E3C156EC(v19);

    v24 = OUTLINED_FUNCTION_24_4();
    v17(v24);
  }

  OUTLINED_FUNCTION_183_2();
  OUTLINED_FUNCTION_193_0();

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_41_12();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1E3C1ACF0(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v5;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = a1;
  v6 = sub_1E4205CB4();
  if (a1)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_192_0(*(v2 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCount), v32, v34, v35, v36, v37, v38, v39, v40);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v7, v8, v9, v10);

    v11 = v6;
    v12 = sub_1E4205F14();
    v14 = v13;
    OUTLINED_FUNCTION_192_0(*(v2 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax), v33, v11, v35, v36, v37, v38, v39, v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(&v35, v12, v14, isUniquelyReferenced_nonNull_native);

    v6 = v11;
  }

  else
  {
    sub_1E3C1575C(0);
    *(v2 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax) = 0;
  }

  sub_1E3280A90(0, &qword_1EE23B398, 0x1E695DF20);
  v16 = sub_1E3744600(v6);
  v17 = sub_1E37766C4(v16);
  v18 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_metricsDictionary;

  sub_1E3744600(v19);

  v20 = sub_1E4205C44();

  v21 = [v17 isEqualToDictionary_];

  if ((v21 & 1) == 0)
  {
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    *&v38 = 0xD00000000000001ELL;
    *(&v38 + 1) = v22;

    v23 = sub_1E4205C74();
    MEMORY[0x1E69109E0](v23);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v24, v25, 0xD00000000000001BLL, v26, v27);

    v28 = [objc_opt_self() defaultCenter];
    v29 = @"GroupActivitiesSessionStateDidChangeNotification";
    v30 = sub_1E3744600(v6);
    sub_1E37E7460(v29, 0, v30, v28);

    *(v2 + v18) = v6;
  }
}

void sub_1E3C1B02C()
{
  v1 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_191_1(0xD00000000000002ALL, v2, v3);
    sub_1E3C1B0C4();
  }

  else
  {
    OUTLINED_FUNCTION_1_178();
    OUTLINED_FUNCTION_191_1(0xD000000000000042, v4, v5);
  }
}

void sub_1E3C1B0C4()
{
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v2 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_isConfigured;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v0 + v2) == 1)
  {
    if (sub_1E3C14F9C())
    {
      OUTLINED_FUNCTION_95_11();
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      v19 = 0xD000000000000011;
      v20 = v3;
      sub_1E41FF434();
      OUTLINED_FUNCTION_3_143();
      sub_1E32AC410(v4, v5, MEMORY[0x1E69695E0]);
      OUTLINED_FUNCTION_180_2();
      v6 = sub_1E4207944();
      MEMORY[0x1E69109E0](v6);

      v7 = OUTLINED_FUNCTION_124();
      v8(v7);
      OUTLINED_FUNCTION_23();
      MEMORY[0x1E69109E0](0xD000000000000010);
      v18 = type metadata accessor for GroupWatchActivity(0);
      sub_1E41FF4B4();
      v9 = sub_1E3294FA4(v17);
      MEMORY[0x1E69109E0](v9);

      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_82();
      sub_1E32AAD78(v10, v11, v12, 0xEE0029286E6F6973, v13);

      sub_1E41FF474();

      return;
    }

    OUTLINED_FUNCTION_0_185();
    v16 = 0xD00000000000002DLL;
  }

  else
  {
    OUTLINED_FUNCTION_1_178();
    v16 = 0xD00000000000003BLL;
  }

  sub_1E32AAD78(v16, v15 | 0x8000000000000000, 0x736553657661656CLL, 0xEE0029286E6F6973, v14);
}

uint64_t sub_1E3C1B4D0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3C1B5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v13 = v12[37];
  if (v13)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v12[38] = Strong;
    if (Strong)
    {
      v16 = v12[27];
      v15 = v12[28];
      v17 = v12[26];
      v12[11] = 0;
      v12[12] = 0xE000000000000000;
      sub_1E42074B4();

      v12[9] = 0xD000000000000013;
      v12[10] = 0x80000001E4277AD0;
      sub_1E41FF434();
      OUTLINED_FUNCTION_3_143();
      sub_1E32AC410(v18, v19, MEMORY[0x1E69695E0]);
      OUTLINED_FUNCTION_180_2();
      v20 = sub_1E4207944();
      MEMORY[0x1E69109E0](v20);

      (*(v16 + 8))(v15, v17);
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_104_6();
      sub_1E32AAD78(v21, v22, v23, v24, v25);

      sub_1E41FFC14();
      sub_1E41FFBC4();
      v26 = sub_1E41FFC14();
      v27 = sub_1E4206BA4();
      if (sub_1E42070B4())
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        v29 = sub_1E41FFBD4();
        _os_signpost_emit_with_name_impl(&dword_1E323F000, v26, v27, v29, "tv.watch-together.content-ready", "", v28, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      v30 = v12[25];
      v31 = v12[22];
      v32 = v12[23];

      OUTLINED_FUNCTION_167_0();
      v33();
      v34 = sub_1E41FFC74();
      OUTLINED_FUNCTION_119(v34);
      sub_1E41FFC64();
      (*(v32 + 8))(v30, v31);
      OUTLINED_FUNCTION_162(OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_signpostState);
      if ((sub_1E41FF404() & 1) == 0)
      {
        v35 = [objc_opt_self() standardUserDefaults];
        v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        v37 = sub_1E4205ED4();
        [v35 setObject:v36 forKey:v37];
      }

      v39 = v12[20];
      v38 = v12[21];
      v41 = v12[18];
      v40 = v12[19];
      sub_1E41FF4B4();
      sub_1E379D7E4(v12[15] + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v38, &qword_1ECF29408, &qword_1E42C4850);

      v42 = sub_1E4206474();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
      OUTLINED_FUNCTION_10_9();
      v46 = swift_allocObject();
      v46[2] = 0;
      v46[3] = 0;
      v46[4] = v41;
      v46[5] = v13;
      sub_1E379D7E4(v39, v40, &unk_1ECF2C400, &qword_1E429ABE0);
      LODWORD(v40) = __swift_getEnumTagSinglePayload(v40, 1, v42);
      v47 = v41;

      v48 = v12[19];
      if (v40 == 1)
      {
        sub_1E325F7A8(v12[19], &unk_1ECF2C400, &qword_1E429ABE0);
      }

      else
      {
        sub_1E4206464();
        OUTLINED_FUNCTION_37_1();
        (*(v58 + 8))(v48, v42);
      }

      v59 = v46[2];
      swift_unknownObjectRetain();

      if (v59)
      {
        swift_getObjectType();
        v60 = sub_1E42063B4();
        v62 = v61;
        swift_unknownObjectRelease();
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      sub_1E325F7A8(v12[20], &unk_1ECF2C400, &qword_1E429ABE0);
      OUTLINED_FUNCTION_2_4();
      v63 = swift_allocObject();
      *(v63 + 16) = &unk_1E42C4BD0;
      *(v63 + 24) = v46;
      if (v62 | v60)
      {
        v12[2] = 0;
        v12[3] = 0;
        v12[4] = v60;
        v12[5] = v62;
      }

      swift_task_create();

      swift_unknownObjectWeakInit();
      sub_1E4206434();
      v12[39] = OUTLINED_FUNCTION_104_0();
      OUTLINED_FUNCTION_50();
      sub_1E42063B4();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_68_2();

      return MEMORY[0x1EEE6DFA0](v64, v65, v66);
    }

    (*(v12[33] + 8))(v12[34], v12[32]);
  }

  else
  {
    (*(v12[33] + 8))(v12[34], v12[32]);
  }

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
}

uint64_t sub_1E3C1BBB8()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 112) = *(v0 + 288);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  OUTLINED_FUNCTION_187_1(v1);

  return swift_willThrowTypedImpl();
}

void sub_1E3C1BC30()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 288);

  sub_1E3C1BF28();
  if (v1)
  {
  }

  else
  {
    MEMORY[0x1E69144A0](v0 + 128);
    v2 = OUTLINED_FUNCTION_11_1();

    MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }
}

uint64_t sub_1E3C1BCE0()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 168);

  sub_1E325F7A8(v1, &qword_1ECF29408, &qword_1E42C4850);
  OUTLINED_FUNCTION_87_8(&qword_1EE28A3A8, &qword_1ECF35648, &qword_1E42C4BC0);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 280) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_49_35(v2);

  return MEMORY[0x1EEE6D8C8](v4);
}

uint64_t sub_1E3C1BD9C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FE624();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C1BE40()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);
  sub_1E41FF434();
  v1 = OUTLINED_FUNCTION_52_29();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C1BEB0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_135_2();
  sub_1E3DAA0B4();
  v0 = OUTLINED_FUNCTION_17_10();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3C1BF28()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v182 = v6;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35650, &qword_1E42C4BE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v184 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v178 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v177 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v16);
  v189 = &v170 - v17;
  OUTLINED_FUNCTION_138();
  v191 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v183 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v175 = v20 - v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  v190 = &v170 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0, &qword_1E42C4810);
  OUTLINED_FUNCTION_0_10();
  v192 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v180 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35658, &qword_1E42C4BF0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v187 = (v30 - v31);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v170 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600, &qword_1E42C4860);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_4_6();
  v186 = v37 - v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_6();
  v185 = v40;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  v188 = v42;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_91_0();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v47 = Strong;
    v179 = v5;
    v48 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer;
    v49 = *(Strong + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer);
    v176 = v1;
    if (v49)
    {
      v174 = v3;
      v50 = v0;
      v51 = v34;
      v52 = v24;
      v53 = Strong;

      OUTLINED_FUNCTION_0_185();
      v47 = v53;
      v24 = v52;
      v34 = v51;
      v0 = v50;
      v3 = v174;
      OUTLINED_FUNCTION_50_30();
      sub_1E32AAD78(v54, v55, v56, v57, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
      sub_1E42064D4();

      *&v47[v48] = 0;
    }

    if (sub_1E3C14F9C())
    {
      sub_1E41FF484();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    __swift_storeEnumTagSinglePayload(v0, v59, 1, v24);
    v60 = *MEMORY[0x1E696B2D0];
    v173 = *(v192 + 104);
    v173(v3, v60, v24);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v24);
    v174 = v28;
    v64 = *(v28 + 48);
    v65 = OUTLINED_FUNCTION_35_5();
    sub_1E379D7E4(v65, v66, &qword_1ECF35600, &qword_1E42C4860);
    sub_1E379D7E4(v3, &v34[v64], &qword_1ECF35600, &qword_1E42C4860);
    OUTLINED_FUNCTION_44_3(v34);
    if (v74)
    {
      v67 = OUTLINED_FUNCTION_53_29();
      sub_1E325F7A8(v67, v68, v69);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F7A8(v70, v71, v72);
      OUTLINED_FUNCTION_44_3(&v34[v64]);
      if (v74)
      {
        v73 = v191;
        goto LABEL_25;
      }
    }

    else
    {
      sub_1E379D7E4(v34, v2, &qword_1ECF35600, &qword_1E42C4860);
      OUTLINED_FUNCTION_44_3(&v34[v64]);
      if (!v74)
      {
        v85 = v192;
        v86 = *(v192 + 32);
        v171 = v2;
        v86(v180, &v34[v64], v24);
        OUTLINED_FUNCTION_22_64(&qword_1ECF35630, &qword_1ECF355E0, &qword_1E42C4810);
        v172 = sub_1E4205E84();
        v87 = *(v85 + 8);
        v88 = OUTLINED_FUNCTION_120();
        v87(v88);
        sub_1E325F7A8(v3, &qword_1ECF35600, &qword_1E42C4860);
        v89 = OUTLINED_FUNCTION_67_0();
        sub_1E325F7A8(v89, v90, &qword_1E42C4860);
        (v87)(v171, v24);
        v91 = OUTLINED_FUNCTION_76_0();
        sub_1E325F7A8(v91, v92, &qword_1E42C4860);
        v73 = v191;
        if (v172)
        {
LABEL_26:
          if (sub_1E3C14F9C())
          {
            sub_1E41FF474();
          }

LABEL_32:
          v118 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
          OUTLINED_FUNCTION_25();
          swift_beginAccess();
          v119 = &v47[v118];
          v120 = v189;
          sub_1E379D7E4(v119, v189, &qword_1ECF29408, &qword_1E42C4850);
          v121 = OUTLINED_FUNCTION_44_5();
          OUTLINED_FUNCTION_52(v121, v122, v73);
          if (v74)
          {
            sub_1E325F7A8(v120, &qword_1ECF29408, &qword_1E42C4850);
          }

          else
          {
            v123 = v183;
            v124 = *(v183 + 32);
            v125 = v190;
            v126 = OUTLINED_FUNCTION_16_0();
            v124(v126);
            v127 = v176;
            (*(v123 + 16))(v176, v125, v73);
            OUTLINED_FUNCTION_114();
            __swift_storeEnumTagSinglePayload(v128, v129, v130, v73);
            v131 = *(v181 + 48);
            v132 = v184;
            OUTLINED_FUNCTION_19_1();
            sub_1E379D7E4(v133, v134, v135, v136);
            OUTLINED_FUNCTION_19_1();
            sub_1E379D7E4(v137, v138, v139, v140);
            OUTLINED_FUNCTION_52(v132, 1, v73);
            if (!v141)
            {
              v142 = v177;
              sub_1E379D7E4(v132, v177, &qword_1ECF29408, &qword_1E42C4850);
              OUTLINED_FUNCTION_52(v132 + v131, 1, v73);
              if (!v143)
              {
                v161 = v175;
                (v124)(v175, v132 + v131, v73);
                OUTLINED_FUNCTION_3_143();
                sub_1E32AC410(v162, v163, MEMORY[0x1E69695C8]);
                v164 = sub_1E4205E84();
                v165 = *(v123 + 8);
                v165(v161, v73);
                sub_1E325F7A8(v176, &qword_1ECF29408, &qword_1E42C4850);
                v165(v142, v73);
                v166 = OUTLINED_FUNCTION_120();
                sub_1E325F7A8(v166, v167, &qword_1E42C4850);
                if (v164)
                {
                  v165(v190, v73);
                  goto LABEL_49;
                }

                goto LABEL_44;
              }

              sub_1E325F7A8(v176, &qword_1ECF29408, &qword_1E42C4850);
              (*(v123 + 8))(v142, v73);
LABEL_43:
              sub_1E325F7A8(v132, &qword_1ECF35650, &qword_1E42C4BE8);
LABEL_44:
              v144 = v178;
              v145 = OUTLINED_FUNCTION_10_2();
              __swift_storeEnumTagSinglePayload(v145, v146, v147, v73);
              sub_1E3C156EC(v144);
              (*(v123 + 8))(v190, v73);
              goto LABEL_49;
            }

            sub_1E325F7A8(v127, &qword_1ECF29408, &qword_1E42C4850);
            OUTLINED_FUNCTION_52(v132 + v131, 1, v73);
            if (!v74)
            {
              goto LABEL_43;
            }

            sub_1E325F7A8(v132, &qword_1ECF29408, &qword_1E42C4850);
            (*(v123 + 8))(v190, v73);
          }

LABEL_49:
          v168 = sub_1E41FF3D4();
          OUTLINED_FUNCTION_119(v168);
          OUTLINED_FUNCTION_50();

          *&v47[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_messenger] = sub_1E41FF3A4();

          sub_1E3C1CBA0();

          sub_1E3C1500C(v169);
          sub_1E3C1ACF0(1);
          sub_1E3C1CD94();
          sub_1E3C1D134();
          sub_1E3C1D930();

          goto LABEL_50;
        }

        goto LABEL_16;
      }

      v75 = OUTLINED_FUNCTION_53_29();
      sub_1E325F7A8(v75, v76, v77);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F7A8(v78, v79, v80);
      v81 = OUTLINED_FUNCTION_120();
      v82(v81);
    }

    sub_1E325F7A8(v34, &qword_1ECF35658, &qword_1E42C4BF0);
    v73 = v191;
LABEL_16:
    if (sub_1E3C14F9C())
    {
      v83 = v188;
      sub_1E41FF484();

      v84 = 0;
      v34 = v187;
    }

    else
    {
      v84 = 1;
      v34 = v187;
      v83 = v188;
    }

    __swift_storeEnumTagSinglePayload(v83, v84, 1, v24);
    v173(v185, *MEMORY[0x1E696B2C8], v24);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v93, v94, v95, v24);
    v96 = *(v174 + 48);
    OUTLINED_FUNCTION_19_1();
    sub_1E379D7E4(v97, v98, v99, v100);
    OUTLINED_FUNCTION_19_1();
    sub_1E379D7E4(v101, v102, v103, v104);
    OUTLINED_FUNCTION_44_3(v34);
    if (!v74)
    {
      sub_1E379D7E4(v34, v186, &qword_1ECF35600, &qword_1E42C4860);
      OUTLINED_FUNCTION_44_3(&v34[v96]);
      if (!v111)
      {
        v148 = v186;
        v149 = v192;
        v150 = &v34[v96];
        v151 = v180;
        (*(v192 + 32))(v180, v150, v24);
        OUTLINED_FUNCTION_22_64(&qword_1ECF35630, &qword_1ECF355E0, &qword_1E42C4810);
        LODWORD(v191) = sub_1E4205E84();
        v152 = *(v149 + 8);
        v152(v151, v24);
        OUTLINED_FUNCTION_82();
        sub_1E325F7A8(v153, v154, v155);
        OUTLINED_FUNCTION_82();
        sub_1E325F7A8(v156, v157, v158);
        v152(v148, v24);
        v159 = OUTLINED_FUNCTION_76_0();
        sub_1E325F7A8(v159, v160, &qword_1E42C4860);
        if ((v191 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_26;
      }

      OUTLINED_FUNCTION_21_1();
      sub_1E325F7A8(v112, v113, v114);
      v115 = OUTLINED_FUNCTION_53_29();
      sub_1E325F7A8(v115, v116, v117);
      (*(v192 + 8))(v186, v24);
LABEL_31:
      sub_1E325F7A8(v34, &qword_1ECF35658, &qword_1E42C4BF0);
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_21_1();
    sub_1E325F7A8(v105, v106, v107);
    v108 = OUTLINED_FUNCTION_53_29();
    sub_1E325F7A8(v108, v109, v110);
    OUTLINED_FUNCTION_44_3(&v34[v96]);
    if (!v74)
    {
      goto LABEL_31;
    }

LABEL_25:
    sub_1E325F7A8(v34, &qword_1ECF35600, &qword_1E42C4860);
    goto LABEL_26;
  }

LABEL_50:
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3C1CBA0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  v5 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_messengerTask;
  if (*&v0[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_messengerTask])
  {

    sub_1E42064D4();
  }

  OUTLINED_FUNCTION_60_22();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v29[4] = 0xD000000000000015;
  v29[5] = v6;
  v7 = sub_1E3C14F9C();
  v8 = v7;
  if (v7)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35720, &qword_1E42C4D08);
  }

  else
  {
    v29[1] = 0;
    v29[2] = 0;
  }

  v29[0] = v8;
  v29[3] = v7;
  v9 = sub_1E3294FA4(v29);
  MEMORY[0x1E69109E0](v9);

  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v10, v11, v12, v13, v14);

  v16 = *&v2[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_messenger];
  if (v16)
  {
    sub_1E4206474();
    v17 = OUTLINED_FUNCTION_43_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    sub_1E4206434();
    OUTLINED_FUNCTION_31_4();
    swift_retain_n();
    v21 = v2;
    v22 = sub_1E4206424();
    OUTLINED_FUNCTION_10_9();
    v23 = swift_allocObject();
    v24 = MEMORY[0x1E69E85E0];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v16;
    v23[5] = v21;
    v25 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v25, v26, v1, v27, v28);
    OUTLINED_FUNCTION_31_4();

    *&v2[v5] = v22;
  }

  return result;
}

void sub_1E3C1CD94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356F8, &qword_1E42C4C70);
  OUTLINED_FUNCTION_0_10();
  v39 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35700, &qword_1E42C4C78);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600, &qword_1E42C4860);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  if (sub_1E3C14F9C())
  {
    v37 = v10;
    v38 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0, &qword_1E42C4810);
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
    OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState, &v40);
    sub_1E3C25C04(v15, v0 + v20);
    swift_endAccess();
    v21 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver))
    {

      sub_1E42004E4();
    }

    sub_1E41FF494();
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v22 = sub_1E4206A04();
    v40 = v22;
    sub_1E42069A4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    OUTLINED_FUNCTION_96_11(&qword_1ECF35708, &qword_1ECF356F8, &qword_1E42C4C70);
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F7A8(v2, &unk_1ECF2D2B0, &unk_1E429D3D0);

    v27 = OUTLINED_FUNCTION_168();
    v28(v27);
    OUTLINED_FUNCTION_4_0();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v29);
    OUTLINED_FUNCTION_13_106(&qword_1ECF35710, &qword_1ECF35700, &qword_1E42C4C78);
    v30 = v38;
    v31 = sub_1E4200844();

    (*(v37 + 8))(v1, v30);
    *(v3 + v21) = v31;
  }

  else
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_160_2(v32, v33, v34, v35, v36);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C1D134()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v51 = v5;
  OUTLINED_FUNCTION_138();
  v6 = sub_1E42069E4();
  OUTLINED_FUNCTION_0_10();
  v58 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v57 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35690, &qword_1E42C4C38);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8_4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35698, &qword_1E42C4C40);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356A0, &qword_1E42C4C48);
  OUTLINED_FUNCTION_0_10();
  v49 = v16;
  v50 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356A8, &qword_1E42C4C50);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_1();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356B0, &qword_1E42C4C58);
  OUTLINED_FUNCTION_0_10();
  v53 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v52 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356B8, &qword_1E42C4C60);
  OUTLINED_FUNCTION_0_10();
  v55 = v25;
  v56 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v54 = v27;
  if (sub_1E3C14F9C())
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax) = 0;
    sub_1E3C1575C(0);
    v48 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver))
    {

      sub_1E42004E4();
    }

    sub_1E41FF414();
    OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager__session, &v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355F8, &qword_1E42C4858);
    sub_1E4200644();
    swift_endAccess();
    v28 = MEMORY[0x1E695C068];
    sub_1E32752B0(&qword_1ECF356C0, &qword_1ECF35698, &qword_1E42C4C40, MEMORY[0x1E695C068]);
    sub_1E32752B0(&qword_1ECF356C8, &qword_1ECF35690, &qword_1E42C4C38, v28);
    OUTLINED_FUNCTION_53();
    sub_1E4200714();
    v29 = OUTLINED_FUNCTION_38_0();
    v30(v29);
    (*(v14 + 8))(v2, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF356D0, &qword_1E42C4C68);
    sub_1E32752B0(&qword_1ECF356D8, &qword_1ECF356A0, &qword_1E42C4C48, MEMORY[0x1E695BC68]);
    OUTLINED_FUNCTION_19_1();
    sub_1E4200744();
    (*(v50 + 8))(v1, v49);
    sub_1E42069C4();
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v31 = sub_1E4206A04();
    v59 = v31;
    v32 = sub_1E42069A4();
    v33 = OUTLINED_FUNCTION_10_2();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v32);
    sub_1E32752B0(&qword_1ECF356E0, &qword_1ECF356A8, &qword_1E42C4C50, MEMORY[0x1E695BD60]);
    sub_1E3746800();
    sub_1E42007F4();
    sub_1E325F7A8(v51, &unk_1ECF2D2B0, &unk_1E429D3D0);

    (*(v58 + 8))(v57, v6);
    v36 = OUTLINED_FUNCTION_8_6();
    v37(v36);
    v38 = sub_1E4206A04();
    v59 = v38;
    v39 = OUTLINED_FUNCTION_10_2();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v32);
    sub_1E32752B0(&qword_1ECF356E8, &qword_1ECF356B0, &qword_1E42C4C58, MEMORY[0x1E695BE50]);
    sub_1E42007D4();
    sub_1E325F7A8(v51, &unk_1ECF2D2B0, &unk_1E429D3D0);

    (*(v53 + 8))(v52, v20);
    OUTLINED_FUNCTION_4_0();
    v42 = swift_allocObject();
    OUTLINED_FUNCTION_105_2(v42);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1E3C26260;
    *(v43 + 24) = v52;
    OUTLINED_FUNCTION_13_106(&qword_1ECF356F0, &qword_1ECF356B8, &qword_1E42C4C60);
    sub_1E4200844();

    (*(v55 + 8))(v54, v56);
    OUTLINED_FUNCTION_162(v48);
  }

  else
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v44, v45, 0xD00000000000001ELL, v46, v47);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C1D930()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35660, &qword_1E42C4BF8);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35668, &qword_1E42C4C00);
  OUTLINED_FUNCTION_0_10();
  v32 = v10;
  v33 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35670, &qword_1E42C4C08);
  OUTLINED_FUNCTION_0_10();
  v34 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_4();
  if (sub_1E3C14F9C())
  {
    v31[0] = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver;
    v31[1] = v14;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver))
    {

      sub_1E42004E4();
    }

    sub_1E41FF4D4();
    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v17);
    OUTLINED_FUNCTION_96_11(&qword_1ECF35678, &qword_1ECF35660, &qword_1E42C4BF8);
    sub_1E4200734();

    (*(v7 + 8))(v2, v5);
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v18 = sub_1E4206A04();
    v35 = v18;
    sub_1E42069A4();
    OUTLINED_FUNCTION_93_4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    sub_1E32752B0(&qword_1ECF35680, &qword_1ECF35668, &qword_1E42C4C00, MEMORY[0x1E695BD38]);
    sub_1E3746800();
    v23 = v33;
    sub_1E42007D4();
    sub_1E325F7A8(v1, &unk_1ECF2D2B0, &unk_1E429D3D0);

    (*(v32 + 8))(v13, v23);
    OUTLINED_FUNCTION_4_0();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v24);
    OUTLINED_FUNCTION_13_106(&qword_1ECF35688, &qword_1ECF35670, &qword_1E42C4C08);
    sub_1E4200844();

    v25 = OUTLINED_FUNCTION_53();
    v26(v25);
    OUTLINED_FUNCTION_162(v31[0]);
  }

  else
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v27, v28, 0xD000000000000018, v29, v30);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C1DD44()
{
  OUTLINED_FUNCTION_24();
  v0[15] = v1;
  v0[16] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35728, &qword_1E42C4D10);
  OUTLINED_FUNCTION_17_2(v3);
  v0[17] = OUTLINED_FUNCTION_86_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35730, &qword_1E42C4D18);
  v0[18] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[19] = v5;
  v0[20] = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35738, &qword_1E42C4D20);
  v0[21] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[22] = v7;
  v0[23] = OUTLINED_FUNCTION_86_0();
  v0[24] = sub_1E4206434();
  v0[25] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[26] = v8;
  v0[27] = v9;
  v10 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E3C1DEAC()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E41FF3C4();
  sub_1E41FF3B4();
  v1 = OUTLINED_FUNCTION_35_5();
  v2(v1);
  v0[28] = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason;
  v0[29] = sub_1E4206424();
  OUTLINED_FUNCTION_93_9(&qword_1ECF35740, &qword_1ECF35738, &qword_1E42C4D20);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[30] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_48_31(v3);
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1E3C1DF98()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v0;

  v5 = *(v2 + 232);
  if (v0)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1E42063B4();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_1E3C1E4D8;
  }

  else
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1E42063B4();
      v8 = v9;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v10 = sub_1E3C1E118;
  }

  return MEMORY[0x1EEE6DFA0](v10, v6, v8);
}

uint64_t sub_1E3C1E118()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1E3C1E178, v1, v2);
}

uint64_t sub_1E3C1E178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v13 = v12[17];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35748, &unk_1E42C4D28);
  v15 = OUTLINED_FUNCTION_44_5();
  OUTLINED_FUNCTION_52(v15, v16, v14);
  if (v17)
  {
    v18 = OUTLINED_FUNCTION_168_4();
    v19(v18);

LABEL_6:

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_68_2();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  v20 = *(v14 + 48);
  v21 = sub_1E4206504();
  if (v21)
  {
    v22 = OUTLINED_FUNCTION_168_4();
    v23(v22);
    v24 = OUTLINED_FUNCTION_124();
    sub_1E38DCCB0(v24, v25);

    sub_1E41FF384();
    OUTLINED_FUNCTION_10();
    (*(v26 + 8))(v13 + v20);
    goto LABEL_6;
  }

  v36 = v12[31];
  v37 = sub_1E41FDE24();
  OUTLINED_FUNCTION_119(v37);
  v38 = sub_1E41FDE14();
  sub_1E3C265E8(v38, v39, v40);
  sub_1E41FDE04();
  if (v36)
  {

    v12[7] = 0;
    v12[8] = 0xE000000000000000;
    sub_1E42074B4();

    v12[5] = 0xD000000000000019;
    v12[6] = 0x80000001E4278170;
    swift_getErrorValue();
    v41 = sub_1E4207AB4();
    MEMORY[0x1E69109E0](v41);

    v42 = v12[6];
    OUTLINED_FUNCTION_1_178();
    sub_1E32AAD78(v43, v42, 0xD000000000000019, 0x80000001E4278150, v44);
    v45 = OUTLINED_FUNCTION_124();
    sub_1E38DCCB0(v45, v46);
  }

  else
  {
    v47 = v12[28];
    v48 = v12[16];

    v49 = v48 + v47;
    v12[11] = 0;
    v12[12] = 0xE000000000000000;
    sub_1E42074B4();

    v12[9] = 0xD000000000000011;
    v12[10] = 0x80000001E4278190;
    v50 = sub_1E4205F84();
    MEMORY[0x1E69109E0](v50);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_104_6();
    sub_1E32AAD78(v51, v52, 0xD000000000000019, v53, v54);

    v55 = OUTLINED_FUNCTION_124();
    sub_1E38DCCB0(v55, v56);
    *v49 = 2;
    *(v49 + 8) = 0;
  }

  sub_1E41FF384();
  OUTLINED_FUNCTION_10();
  (*(v57 + 8))(v13 + v20);
  v12[29] = sub_1E4206424();
  OUTLINED_FUNCTION_93_9(&qword_1ECF35740, &qword_1ECF35738, &qword_1E42C4D20);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v12[30] = v58;
  *v58 = v59;
  OUTLINED_FUNCTION_48_31(v58);
  OUTLINED_FUNCTION_68_2();

  return MEMORY[0x1EEE6D8C8](v60);
}

uint64_t sub_1E3C1E4D8()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 104) = *(v0 + 248);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  OUTLINED_FUNCTION_187_1(v1);

  return swift_willThrowTypedImpl();
}

void sub_1E3C1E550()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35638, &qword_1E42C4BA0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v5 = objc_opt_self();
  OUTLINED_FUNCTION_13_8();
  v6 = sub_1E4205ED4();
  OUTLINED_FUNCTION_90();
  v7();
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v0, v1);
  aBlock[4] = sub_1E3C25D78;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E39FE2F0;
  aBlock[3] = &block_descriptor_64_0;
  v10 = _Block_copy(aBlock);

  [v5 playableForAdamID:v6 completion:v10];
  _Block_release(v10);
}

void sub_1E3C1E710()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v73 = v4;
  v5 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  v69 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v68 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v71 = v12;
  OUTLINED_FUNCTION_138();
  v13 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_2();
  sub_1E41FDFB4();
  v22 = OUTLINED_FUNCTION_125_5();
  if (__swift_getEnumTagSinglePayload(v22, v23, v5) || (v25 = sub_1E41FDF84()) == 0)
  {

    v24 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v24 = v25;
  }

  OUTLINED_FUNCTION_60_22();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v74 = 0xD000000000000018;
  v75 = v26;
  v27 = sub_1E41FE414();
  OUTLINED_FUNCTION_4_150();
  v30 = sub_1E32AC410(v28, v29, MEMORY[0x1E6968FE0]);
  v72 = v3;
  v67[1] = v30;
  v31 = sub_1E4207944();
  MEMORY[0x1E69109E0](v31);

  OUTLINED_FUNCTION_0_185();
  v70 = v32;
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v33, v34, 0xD000000000000014, v35, v36);

  v37 = objc_opt_self();
  sub_1E39A4DDC(v37, &selRef_storefrontId);
  if (v38)
  {
    sub_1E41FDF44();

    (*(v15 + 16))(v0, v19, v13);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1E39E8924(0, v24[2] + 1, 1, v24);
    }

    v40 = v24[2];
    v39 = v24[3];
    if (v40 >= v39 >> 1)
    {
      v24 = sub_1E39E8924((v39 > 1), v40 + 1, 1, v24);
    }

    (*(v15 + 8))(v19, v13);
    v24[2] = v40 + 1;
    (*(v15 + 32))(v24 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v40, v0, v13);
  }

  v41 = v71;
  v42 = OUTLINED_FUNCTION_125_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, v43, v5);
  v45 = v72;
  if (EnumTagSinglePayload)
  {
  }

  else
  {
    sub_1E41FDF94();
  }

  v46 = OUTLINED_FUNCTION_125_5();
  if (__swift_getEnumTagSinglePayload(v46, v47, v5))
  {
    v48 = OUTLINED_FUNCTION_43_2();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v27);
LABEL_18:
    sub_1E325F7A8(v41, &unk_1ECF363C0, &unk_1E42A9420);
    OUTLINED_FUNCTION_1_178();
    sub_1E32AAD78(0xD000000000000039, v57 | 0x8000000000000000, 0xD000000000000014, v70 | 0x8000000000000000, v58);
    OUTLINED_FUNCTION_37_1();
    (*(v59 + 16))(v73, v45, v27);
    goto LABEL_19;
  }

  v51 = v68;
  v52 = v69;
  OUTLINED_FUNCTION_90();
  v53();
  sub_1E41FDFC4();
  (*(v52 + 8))(v51, v5);
  v54 = OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_52(v54, v55, v27);
  if (v56)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_37_1();
  v60 = OUTLINED_FUNCTION_27_0();
  v61(v60);
  OUTLINED_FUNCTION_60_22();
  sub_1E42074B4();

  OUTLINED_FUNCTION_41_7();
  v74 = 0xD000000000000024;
  v75 = v62;
  v63 = sub_1E4207944();
  MEMORY[0x1E69109E0](v63);

  v64 = v75;
  OUTLINED_FUNCTION_0_185();
  sub_1E32AAD78(v65, v64, 0xD000000000000014, v70 | 0x8000000000000000, v66);

LABEL_19:
  sub_1E325F7A8(v1, &qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C1ECB0()
{
  OUTLINED_FUNCTION_24();
  *(v1 + 160) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = v0;
  v4 = sub_1E41FE414();
  *(v1 + 48) = v4;
  OUTLINED_FUNCTION_8_0(v4);
  *(v1 + 56) = v5;
  *(v1 + 64) = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v6);
  *(v1 + 72) = OUTLINED_FUNCTION_107_1();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  sub_1E4206434();
  *(v1 + 104) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  *(v1 + 112) = v7;
  *(v1 + 120) = v8;
  v9 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3C1EDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  OUTLINED_FUNCTION_58_5();
  v13 = *(v12 + 32);
  if (v13 >> 62)
  {
    if (v13 >> 62 == 1)
    {

      sub_1E3C21118(v13 & 0x3FFFFFFFFFFFFFFFLL);
LABEL_22:

      OUTLINED_FUNCTION_13_7();
      OUTLINED_FUNCTION_68_2();

      return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
    }

LABEL_21:
    sub_1E3C1FEF4();
    goto LABEL_22;
  }

  v14 = *(v12 + 48);
  sub_1E39CB5B0();
  v15 = OUTLINED_FUNCTION_27_0();
  sub_1E379D7E4(v15, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_31_5();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, v20, v14);
  v22 = *(v12 + 96);
  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F7A8(*(v12 + 96), &unk_1ECF363C0, &unk_1E42A9420);
    v23 = 0;
  }

  else
  {
    v24 = *(v12 + 40);
    (*(*(v12 + 56) + 32))(*(v12 + 64), *(v12 + 88), *(v12 + 48));
    v25 = v24;
    OUTLINED_FUNCTION_112_8();
    sub_1E3C1F644();
    v23 = v26;
    v27 = OUTLINED_FUNCTION_24_4();
    v28(v27);
    sub_1E325F7A8(v22, &unk_1ECF363C0, &unk_1E42A9420);
  }

  *(v12 + 128) = v23;
  v29 = sub_1E3C14F9C();
  if (v29)
  {
    v30 = *(v12 + 48);
    sub_1E41FF4B4();

    sub_1E39CB5B0();

    v31 = OUTLINED_FUNCTION_24_4();
    sub_1E379D7E4(v31, v32, v33, v34);
    v35 = OUTLINED_FUNCTION_245();
    v37 = __swift_getEnumTagSinglePayload(v35, v36, v30);
    v38 = *(v12 + 80);
    if (v37 == 1)
    {
      sub_1E325F7A8(*(v12 + 80), &unk_1ECF363C0, &unk_1E42A9420);
      v29 = 0;
    }

    else
    {
      v39 = *(v12 + 64);
      v40 = *(v12 + 48);
      v41 = *(v12 + 56);
      v42 = *(v12 + 40);
      (*(v41 + 32))(v39, *(v12 + 72), v40);
      v43 = v42;
      OUTLINED_FUNCTION_112_8();
      sub_1E3C1F644();
      v29 = v44;
      (*(v41 + 8))(v39, v40);
      sub_1E325F7A8(v38, &unk_1ECF363C0, &unk_1E42A9420);
    }
  }

  *(v12 + 136) = v29;
  if (*(v12 + 160) == 1)
  {
    v45 = swift_task_alloc();
    *(v12 + 144) = v45;
    *v45 = v12;
    OUTLINED_FUNCTION_56_1(v45);
    OUTLINED_FUNCTION_13_8();
    OUTLINED_FUNCTION_68_2();

    return sub_1E3C1FC74(v46, v47, v48, v49);
  }

  else
  {

    v52 = sub_1E3C14F9C();
    if (v52)
    {
      sub_1E41FF4B4();

      v52 = *(v12 + 24);
    }

    sub_1E3C1F9F4(*(v12 + 32), v52);
    OUTLINED_FUNCTION_12_1();

    if (v23)
    {

      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_43_42();
      sub_1E32AAD78(v53, v54, 0xD00000000000002DLL, v55, v56);
      goto LABEL_21;
    }

    v65 = swift_task_alloc();
    *(v12 + 152) = v65;
    *v65 = v12;
    OUTLINED_FUNCTION_62_20(v65);
    OUTLINED_FUNCTION_68_2();

    return sub_1E3C20378();
  }
}

uint64_t sub_1E3C1F1EC()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 161) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 120);
  v10 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E3C1F338, v10, v9);
}

uint64_t sub_1E3C1F338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_27_2();
  v14 = *(v13 + 161);
  v15 = sub_1E3C14F9C();
  if (v15)
  {
    sub_1E41FF4B4();

    v15 = *(v13 + 24);
  }

  sub_1E3C1F9F4(*(v13 + 32), v15);
  OUTLINED_FUNCTION_12_1();

  if (v12 & v14)
  {

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v16, v17, 0xD00000000000002DLL, v18, v19);
    sub_1E3C1FEF4();

    OUTLINED_FUNCTION_13_7();

    return v20(1);
  }

  else
  {
    v22 = swift_task_alloc();
    *(v13 + 152) = v22;
    *v22 = v13;
    OUTLINED_FUNCTION_62_20(v22);

    return sub_1E3C20378();
  }
}

uint64_t sub_1E3C1F4A0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_63_1();
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_5();
  *v5 = v4;
  *(v7 + 162) = v6;

  OUTLINED_FUNCTION_66_1();
  v9 = *(v8 + 120);
  v10 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E3C1F5AC, v10, v9);
}

uint64_t sub_1E3C1F5AC()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();

  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_62_1();

  return v2(v0, v1, v2, v3, v4, v5, v6, v7);
}

void sub_1E3C1F644()
{
  OUTLINED_FUNCTION_31_1();
  v43 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_106();
  v44 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35200, &qword_1E42C2FB8);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = OUTLINED_FUNCTION_120();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_78();
  sub_1E41FDFB4();
  sub_1E379D7E4(v0, v1, &qword_1ECF304A8, &unk_1E42B18D0);
  v20 = sub_1E41FE004();
  OUTLINED_FUNCTION_44_3(v1);
  if (v34)
  {
    OUTLINED_FUNCTION_21_1();
    sub_1E325F7A8(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_53_29();
  }

  else
  {
    v27 = sub_1E41FDF84();
    OUTLINED_FUNCTION_37_1();
    (*(v28 + 8))(v1, v20);
    if (v27)
    {
      v41 = v0;
      v42 = v14;
      v29 = 0;
      v30 = *(v27 + 16);
      v31 = (v6 + 8);
      v32 = v44;
      while (1)
      {
        if (v30 == v29)
        {

          v36 = 1;
          v37 = v42;
          goto LABEL_19;
        }

        if (v29 >= *(v27 + 16))
        {
          __break(1u);
          return;
        }

        (*(v6 + 16))(v10, v27 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v29, v32);
        v34 = sub_1E41FDF54() == v4 && v33 == v43;
        if (v34)
        {

          goto LABEL_18;
        }

        v35 = sub_1E42079A4();

        if (v35)
        {
          break;
        }

        v32 = v44;
        (*v31)(v10, v44);
        ++v29;
      }

      v32 = v44;
LABEL_18:
      v37 = v42;
      (*(v6 + 32))(v42, v10, v32);
      v36 = 0;
LABEL_19:
      v38 = v41;
      __swift_storeEnumTagSinglePayload(v37, v36, 1, v32);
      v39 = OUTLINED_FUNCTION_44_5();
      OUTLINED_FUNCTION_52(v39, v40, v32);
      if (!v34)
      {
        sub_1E41FDF64();
        sub_1E325F7A8(v38, &qword_1ECF304A8, &unk_1E42B18D0);
        (*v31)(v37, v32);
        goto LABEL_23;
      }

      sub_1E325F7A8(v38, &qword_1ECF304A8, &unk_1E42B18D0);
      v25 = &qword_1ECF35200;
      v26 = &qword_1E42C2FB8;
      v24 = v37;
    }

    else
    {
      v25 = &qword_1ECF304A8;
      v26 = &unk_1E42B18D0;
      v24 = v0;
    }
  }

  sub_1E325F7A8(v24, v25, v26);
LABEL_23:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C1FC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C1FC8C()
{
  OUTLINED_FUNCTION_134();
  v1 = v0[3];
  if (v1 && (v2 = v0[5]) != 0)
  {
    v3 = v0[4];
    v4 = v0[2];
    v5 = swift_task_alloc();
    v0[6] = v5;
    v5[2] = v4;
    v5[3] = v1;
    v5[4] = v3;
    v5[5] = v2;
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    v0[7] = v6;
    *v6 = v7;
    v6[1] = sub_1E3C1FDD0;
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DDE0](v8, v9, v10, 0xD000000000000035, v11, v12, v5, v13);
  }

  else
  {
    OUTLINED_FUNCTION_13_7();

    return v14(0);
  }
}

uint64_t sub_1E3C1FDD0()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1E3C1FEF4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  v5 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v53 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0, &qword_1E42C4810);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_78();
  v19 = v0;
  v20 = sub_1E3C14F9C();
  if (v20)
  {
    v21 = v20;
    sub_1E41FF484();
    (*(v13 + 104))(v17, *MEMORY[0x1E696B2C8], v11);
    OUTLINED_FUNCTION_22_64(&qword_1ECF35630, &qword_1ECF355E0, &qword_1E42C4810);
    OUTLINED_FUNCTION_93_4();
    v22 = sub_1E4205E84();
    v23 = *(v13 + 8);
    v23(v17, v11);
    v23(v1, v11);
    if (v22)
    {
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_108_7(0xD000000000000030, v24, v25);
    }

    else
    {
      v28 = *&v19[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sharedPlayer];
      if (v28 && (v29 = [v28 avPlayer]) != 0)
      {
        v30 = v29;
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_124_3(0xD000000000000037, v32, v31);
        v33 = [v30 playbackCoordinator];
        sub_1E4206C74();
      }

      else
      {
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_124_3(0xD00000000000002ELL, v35, v34);
      }

      sub_1E3C14E28();
      v54[0] = 0;
      v54[1] = 0xE000000000000000;
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      v54[4] = 0xD000000000000011;
      v55 = v36;
      sub_1E41FF434();
      OUTLINED_FUNCTION_3_143();
      sub_1E32AC410(v37, v38, MEMORY[0x1E69695E0]);
      v39 = sub_1E4207944();
      MEMORY[0x1E69109E0](v39);

      (*(v53 + 8))(v10, v5);
      OUTLINED_FUNCTION_23();
      MEMORY[0x1E69109E0](0xD000000000000010);
      v54[3] = type metadata accessor for GroupWatchActivity(0);
      sub_1E41FF4B4();
      v40 = sub_1E3294FA4(v54);
      MEMORY[0x1E69109E0](v40);

      v41 = v55;
      OUTLINED_FUNCTION_0_185();
      sub_1E32AAD78(v42, v41, v19, 0xED000029286E6F69, v43);

      sub_1E4206474();
      v44 = OUTLINED_FUNCTION_43_2();
      __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
      OUTLINED_FUNCTION_10_9();
      v48 = swift_allocObject();
      v48[2] = 0;
      v48[3] = 0;
      v48[4] = v19;
      v48[5] = v21;
      v49 = v19;

      v50 = OUTLINED_FUNCTION_23_7();
      sub_1E376FE58(v50, v51, v2, v52, v48);

      sub_1E41FF454();
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_108_7(0xD000000000000029, v26, v27);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C20378()
{
  OUTLINED_FUNCTION_24();
  v1[16] = v2;
  v1[17] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  OUTLINED_FUNCTION_17_2(v3);
  v1[18] = OUTLINED_FUNCTION_86_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600, &qword_1E42C4860);
  OUTLINED_FUNCTION_17_2(v4);
  v1[19] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF534();
  v1[20] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v1[21] = v6;
  v1[22] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[23] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v1[24] = v7;
  v1[25] = v8;
  v9 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3C2049C()
{
  OUTLINED_FUNCTION_58_5();
  v1 = v0[16];
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  MEMORY[0x1E69109E0](0x6974617669746341, 0xEB0000000020676ELL);
  v0[12] = v1;
  v0[26] = type metadata accessor for GroupWatchActivity(0);
  OUTLINED_FUNCTION_32_0();
  sub_1E4207614();
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_27_51();
  sub_1E32AAD78(v2, v3, v4, v5, v6);

  v7 = sub_1E41FDE54();
  OUTLINED_FUNCTION_119(v7);
  v8 = sub_1E41FDE44();
  sub_1E3C25BB0(v8, v9, v10);
  v0[27] = sub_1E41FDE34();
  v0[28] = v11;
  v26 = v0[17];

  v27 = *(v26 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_messenger);
  v0[29] = v27;
  if (v27)
  {
    (*(v0[21] + 104))(v0[22], *MEMORY[0x1E696B350], v0[20]);

    v28 = swift_task_alloc();
    v0[30] = v28;
    *v28 = v0;
    v28[1] = sub_1E3C20880;
    v29 = OUTLINED_FUNCTION_76_0();

    return MEMORY[0x1EEDC7408](v29);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_76_0();
    sub_1E38DCCB0(v30, v31);
    v12 = v0[17];
    if (*(v12 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver))
    {

      sub_1E42004E4();

      v12 = v0[17];
    }

    if (*(v12 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver))
    {

      sub_1E42004E4();

      v12 = v0[17];
    }

    if (*(v12 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver))
    {

      sub_1E42004E4();

      v12 = v0[17];
    }

    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0, &qword_1E42C4810);
    v16 = OUTLINED_FUNCTION_28_10();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
    OUTLINED_FUNCTION_118_5();
    sub_1E3C25C04(v13, v12 + v20);
    swift_endAccess();
    sub_1E3C14E28();
    sub_1E379D7E4(v15 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v14, &qword_1ECF29408, &qword_1E42C4850);
    sub_1E3C156EC(v14);
    v0[14] = v15;
    v21 = swift_task_alloc();
    v0[32] = v21;
    OUTLINED_FUNCTION_2_145();
    sub_1E32AC410(v22, v23, &unk_1E42B0818);
    OUTLINED_FUNCTION_139_5();
    *v21 = v24;
    v25 = OUTLINED_FUNCTION_14_109();

    return MEMORY[0x1EEDC7540](v25);
  }
}

uint64_t sub_1E3C20880()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 248) = v0;

  (*(v2[21] + 8))(v2[22], v2[20]);

  v5 = v2[25];
  v6 = v2[24];
  if (v0)
  {
    v7 = sub_1E3C20D8C;
  }

  else
  {
    v7 = sub_1E3C20A18;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E3C20A18()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  sub_1E38DCCB0(v0[27], v0[28]);
  v1 = v0[17];
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver))
  {

    sub_1E42004E4();

    v1 = v0[17];
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver))
  {

    sub_1E42004E4();

    v1 = v0[17];
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver))
  {

    sub_1E42004E4();

    v1 = v0[17];
  }

  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0, &qword_1E42C4810);
  v5 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
  OUTLINED_FUNCTION_118_5();
  sub_1E3C25C04(v2, v1 + v9);
  swift_endAccess();
  sub_1E3C14E28();
  sub_1E379D7E4(v4 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v3, &qword_1ECF29408, &qword_1E42C4850);
  sub_1E3C156EC(v3);
  v0[14] = v4;
  v10 = swift_task_alloc();
  v0[32] = v10;
  OUTLINED_FUNCTION_2_145();
  sub_1E32AC410(v11, v12, &unk_1E42B0818);
  OUTLINED_FUNCTION_139_5();
  *v10 = v13;
  OUTLINED_FUNCTION_14_109();
  OUTLINED_FUNCTION_62_1();

  return MEMORY[0x1EEDC7540](v14);
}

uint64_t sub_1E3C20BC8()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 264) = v0;

  if (v0)
  {
    v9 = *(v5 + 192);
    v10 = *(v5 + 200);
    v11 = sub_1E3C20FC8;
  }

  else
  {
    *(v5 + 272) = v3 & 1;
    v9 = *(v5 + 192);
    v10 = *(v5 + 200);
    v11 = sub_1E3C20CDC;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1E3C20CDC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 272);

  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 144);
    sub_1E41FE624();
    v3 = OUTLINED_FUNCTION_43_2();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
    sub_1E3C156EC(v2);
    sub_1E3C14E28();
  }

  OUTLINED_FUNCTION_13_7();

  return v7(v1);
}

uint64_t sub_1E3C20D8C()
{
  sub_1E38DCCB0(v0[27], v0[28]);
  v1 = v0[31];
  OUTLINED_FUNCTION_38_1();
  sub_1E42074B4();

  OUTLINED_FUNCTION_101_7();
  swift_getErrorValue();
  v2 = sub_1E4207AB4();
  MEMORY[0x1E69109E0](v2);

  OUTLINED_FUNCTION_1_178();
  OUTLINED_FUNCTION_27_51();
  sub_1E32AAD78(v3, v4, v5, v6, v7);

  v8 = v0[17];
  if (*(v8 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver))
  {

    sub_1E42004E4();

    v8 = v0[17];
  }

  if (*(v8 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver))
  {

    sub_1E42004E4();

    v8 = v0[17];
  }

  if (*(v8 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver))
  {

    sub_1E42004E4();

    v8 = v0[17];
  }

  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0, &qword_1E42C4810);
  v12 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
  OUTLINED_FUNCTION_118_5();
  sub_1E3C25C04(v9, v8 + v16);
  swift_endAccess();
  sub_1E3C14E28();
  sub_1E379D7E4(v11 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v10, &qword_1ECF29408, &qword_1E42C4850);
  sub_1E3C156EC(v10);
  v0[14] = v11;
  v17 = swift_task_alloc();
  v0[32] = v17;
  OUTLINED_FUNCTION_2_145();
  sub_1E32AC410(v18, v19, &unk_1E42B0818);
  OUTLINED_FUNCTION_139_5();
  *v17 = v20;
  v21 = OUTLINED_FUNCTION_14_109();

  return MEMORY[0x1EEDC7540](v21);
}

uint64_t sub_1E3C20FC8()
{
  OUTLINED_FUNCTION_134();
  v2 = v1[33];

  OUTLINED_FUNCTION_39_1();
  sub_1E42074B4();
  OUTLINED_FUNCTION_181();
  *(v0 + 80) = v3;
  v1[11] = v4;
  OUTLINED_FUNCTION_82_10();
  MEMORY[0x1E69109E0](v5 + 9, v6 | 0x8000000000000000);
  v1[15] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  OUTLINED_FUNCTION_67_0();
  sub_1E4207614();
  OUTLINED_FUNCTION_1_178();
  OUTLINED_FUNCTION_27_51();
  sub_1E32AAD78(v7, v8, v9, v10, v11);

  v12 = v1[18];
  sub_1E41FE624();
  v13 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  sub_1E3C156EC(v12);
  sub_1E3C14E28();

  OUTLINED_FUNCTION_13_7();

  return v17(0);
}

double sub_1E3C21118(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_60_22();
  sub_1E42074B4();
  v15 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1E69109E0](0xD000000000000013);
  if (sub_1E3C14F9C())
  {
    v5 = OUTLINED_FUNCTION_106();
    *(&v14 + 1) = type metadata accessor for GroupWatchActivity(v5);
    sub_1E41FF4B4();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v6 = sub_1E3294FA4(&v13);
  MEMORY[0x1E69109E0](v6);

  MEMORY[0x1E69109E0](0x206874697720, 0xE600000000000000);
  *&v13 = a1;
  type metadata accessor for GroupWatchActivity(0);
  sub_1E4207614();
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v7, v8, v9, v10, v11);

  sub_1E379D7E4(a1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v1, &qword_1ECF29408, &qword_1E42C4850);
  sub_1E3C156EC(v1);
  if (sub_1E3C14F9C())
  {
    *&v13 = a1;

    sub_1E41FF4C4();
  }

  return result;
}

uint64_t sub_1E3C212DC()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FE624();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C21380()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);
  sub_1E41FF434();
  v1 = OUTLINED_FUNCTION_52_29();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C213F0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_135_2();
  sub_1E3DAABDC();
  v0 = OUTLINED_FUNCTION_17_10();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E3C21468()
{
  OUTLINED_FUNCTION_31_1();
  v96 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35718, &qword_1E42C4C80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0, &qword_1E42C4810);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_8();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600, &qword_1E42C4860);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v93 = v16 - v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_91_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v90 - v20;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v91 = v2;
    OUTLINED_FUNCTION_95_11();
    sub_1E42074B4();
    v97 = v99;
    v98 = v100;
    MEMORY[0x1E69109E0](0xD000000000000015, 0x80000001E4277EE0);
    v24 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v95 = v24;
    sub_1E379D7E4(v23 + v24, v21, &qword_1ECF35600, &qword_1E42C4860);
    v25 = OUTLINED_FUNCTION_44_5();
    OUTLINED_FUNCTION_52(v25, v26, v6);
    v94 = v0;
    if (v27)
    {
      v31 = 0xE500000000000000;
      v29 = 0x7472617473;
    }

    else
    {
      OUTLINED_FUNCTION_77();
      v28();
      (*(v8 + 16))(v12, v1, v6);
      OUTLINED_FUNCTION_84_5();
      v29 = sub_1E4205F84();
      v31 = v30;
      v32 = OUTLINED_FUNCTION_119_0();
      v33(v32);
    }

    MEMORY[0x1E69109E0](v29, v31);

    MEMORY[0x1E69109E0](540945696, 0xE400000000000000);
    sub_1E4207614();
    v34 = v98;
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_160_2(v35, v34, v36, 0x80000001E4277EC0, v37);

    v38 = *(v4 + 48);
    v39 = v94;
    sub_1E379D7E4(v23 + v95, v94, &qword_1ECF35600, &qword_1E42C4860);
    v92 = v23;
    v40 = *(v8 + 16);
    OUTLINED_FUNCTION_82();
    v40();
    v41 = (v8 + 88);
    v42 = *(v8 + 88);
    v43 = v42(v39 + v38, v6);
    if (v43 == *MEMORY[0x1E696B2C0])
    {
      (v40)(v1, v39 + v38, v6);
      v44 = OUTLINED_FUNCTION_119_0();
      v45(v44);
      v41 = *v1;
      v97 = 0;
      v98 = 0xE000000000000000;
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      OUTLINED_FUNCTION_176_3();
      v97 = v47 + 17;
      v98 = v46;
      swift_getErrorValue();
      v48 = sub_1E4207AB4();
      MEMORY[0x1E69109E0](v48);

      v49 = v98;
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_160_2(v50, v49, v51, 0x80000001E4277EC0, v52);

      v53 = v92;
      sub_1E3C21D90();

      (*(v8 + 8))(v39 + v38, v6);
      sub_1E325F7A8(v39, &qword_1ECF35600, &qword_1E42C4860);
LABEL_7:
      v54 = v53;
LABEL_18:
      v74 = OUTLINED_FUNCTION_175_2();
      (v40)(v74);
      OUTLINED_FUNCTION_114();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v6);
      v78 = v95;
      OUTLINED_FUNCTION_11_3(v54 + v95, &v97);
      sub_1E3C25C04(v41, v54 + v78);
      swift_endAccess();
LABEL_19:

      goto LABEL_20;
    }

    v90[1] = v8 + 16;
    v54 = v92;
    if (v43 == *MEMORY[0x1E696B2D0])
    {
      v55 = v94;
      OUTLINED_FUNCTION_52(v94, 1, v6);
      if (v27)
      {
        v53 = v54;
        v56 = sub_1E3C14F9C();
        if (!v56)
        {
          OUTLINED_FUNCTION_0_185();
          OUTLINED_FUNCTION_176_3();
          OUTLINED_FUNCTION_160_2(v79 + 4, v80 | 0x8000000000000000, v81, 0x80000001E4277EC0, v82);
          v83 = OUTLINED_FUNCTION_182_2();
          v84(v83);
          sub_1E325F7A8(v41, &qword_1ECF35600, &qword_1E42C4860);
          v85 = OUTLINED_FUNCTION_175_2();
          (v40)(v85);
          OUTLINED_FUNCTION_114();
          __swift_storeEnumTagSinglePayload(v86, v87, v88, v6);
          v89 = v95;
          OUTLINED_FUNCTION_11_3(v54 + v95, &v97);
          sub_1E3C25C04(v41, v54 + v89);
          swift_endAccess();
          goto LABEL_19;
        }

        v41 = v56;
        sub_1E3C21B98();

        v57 = OUTLINED_FUNCTION_182_2();
        v58(v57);
        sub_1E325F7A8(v41, &qword_1ECF35600, &qword_1E42C4860);
        goto LABEL_7;
      }

      sub_1E379D7E4(v55, v91, &qword_1ECF35600, &qword_1E42C4860);
      v59 = OUTLINED_FUNCTION_119_0();
      if ((v42)(v59) == *MEMORY[0x1E696B2C8])
      {
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_176_3();
        OUTLINED_FUNCTION_160_2(v60 + 23, v61 | 0x8000000000000000, v62, 0x80000001E4277EC0, v63);
        sub_1E3C14E28();
        (*(v8 + 8))(v55 + v38, v6);
        v64 = &qword_1ECF35600;
        v65 = &qword_1E42C4860;
        v66 = v55;
LABEL_17:
        sub_1E325F7A8(v66, v64, v65);
        goto LABEL_18;
      }

      v67 = OUTLINED_FUNCTION_119_0();
      v68(v67);
    }

    v97 = 0;
    v98 = 0xE000000000000000;
    sub_1E42074B4();
    OUTLINED_FUNCTION_176_3();
    MEMORY[0x1E69109E0](v69 + 11, v70 | 0x8000000000000000);
    sub_1E4207614();
    v41 = v98;
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_160_2(v71, v41, v72, 0x80000001E4277EC0, v73);

    v64 = &qword_1ECF35718;
    v65 = &qword_1E42C4C80;
    v66 = v94;
    goto LABEL_17;
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C21B98()
{
  v0 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  if (sub_1E32AA9E0() & 1) != 0 || (sub_1E41FF404())
  {
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    sub_1E41FF434();
    OUTLINED_FUNCTION_3_143();
    sub_1E32AC410(v7, v8, MEMORY[0x1E69695E0]);
    v9 = sub_1E4207944();
    MEMORY[0x1E69109E0](v9);

    (*(v2 + 8))(v6, v0);
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v10, v11, 0xD000000000000020, v12, v13);

    sub_1E3C1FEF4();
  }

  else
  {
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    sub_1E32AAD78(v14, v15, 0xD000000000000020, v16, v17);
  }
}

void sub_1E3C21D90()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600, &qword_1E42C4860);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_1();
  v11 = MEMORY[0x1E69E6158];
  v12 = sub_1E4205CB4();
  v13 = sub_1E3C14F9C();
  if (v13)
  {
    sub_1E41FF4B4();

    v13 = sub_1E39CB410();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1E4205F14();
  v18 = v16;
  v19 = v17;
  if (v15)
  {
    *(&v49 + 1) = v11;
    *&v48 = v13;
    *(&v48 + 1) = v15;
    sub_1E329504C(&v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(v47, v18, v19, isUniquelyReferenced_nonNull_native);
  }

  else
  {
    v21 = sub_1E327D33C(v16, v17);
    if (v22)
    {
      v23 = v21;
      swift_isUniquelyReferenced_nonNull_native();
      *&v47[0] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
      sub_1E4207644();

      sub_1E329504C((*(v12 + 56) + 32 * v23), &v48);
      sub_1E4207664();
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
    }

    sub_1E325F7A8(&v48, &unk_1ECF296E0, &unk_1E4298030);
  }

  v24 = sub_1E3C16D94();
  v25 = &v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason];
  if ((v24 & 1) == 0)
  {
    if ((v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason + 8] & 1) == 0)
    {
LABEL_15:
      if (*v25 == 2)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    sub_1E3C23858();
    goto LABEL_17;
  }

  if (v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason + 8])
  {
    goto LABEL_16;
  }

  if (*v25)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (sub_1E3C14F9C())
  {
    OUTLINED_FUNCTION_106();
    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    OUTLINED_FUNCTION_10_9();
    v30 = swift_allocObject();
    v30[2] = 0;
    v30[3] = 0;
    v30[4] = v4;
    v30[5] = v4;
    v31 = v4;
    v32 = OUTLINED_FUNCTION_23_7();
    sub_1E376FE58(v32, v33, v3, v34, v30);
  }

  sub_1E3C14E28();
  if (*&v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionStateObserver])
  {

    sub_1E42004E4();
  }

  if (*&v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityObserver])
  {

    sub_1E42004E4();
  }

  if (*&v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_sessionActivityParticipantsObserver])
  {

    sub_1E42004E4();
  }

  sub_1E41FE624();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_1E3C156EC(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF355E0, &qword_1E42C4810);
  v39 = OUTLINED_FUNCTION_43_2();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v43 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState;
  OUTLINED_FUNCTION_11_3(&v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_previousState], &v48);
  sub_1E3C25C04(v1, &v4[v43]);
  swift_endAccess();
  sub_1E3C1500C(0);
  v44 = &v4[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_endSessionReason];
  *v44 = 0;
  v44[8] = 1;
  sub_1E3C1ACF0(0);
  v45 = [objc_opt_self() defaultCenter];
  v46 = sub_1E3744600(v12);

  sub_1E37E7460(@"VUIGroupWatchActivitySessionDidEndNotification", 0, v46, v45);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C2225C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3C22230(*a1);
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_1E3C22514()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35650, &qword_1E42C4BE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v71 = v7;
  OUTLINED_FUNCTION_138();
  v8 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v67 = v12 - v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_8();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v68 = v17 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  v74 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_91_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_78();
  v27 = *v5;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v69 = v1;
    v73 = v10;
    v30 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_modifyingActivityIdentifier;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E379D7E4(v29 + v30, v0, &qword_1ECF29408, &qword_1E42C4850);
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_1E42074B4();
    MEMORY[0x1E69109E0](0xD00000000000001FLL, 0x80000001E4277BD0);
    v72 = v27;
    v75 = v27;
    type metadata accessor for GroupWatchActivity(0);
    sub_1E4207614();
    MEMORY[0x1E69109E0](0xD000000000000017, 0x80000001E4277BF0);
    sub_1E379D7E4(v0, v3, &qword_1ECF29408, &qword_1E42C4850);
    v31 = OUTLINED_FUNCTION_34_4(v3);
    if (v48)
    {
      sub_1E325F7A8(v3, &qword_1ECF29408, &qword_1E42C4850);
    }

    else
    {
      MEMORY[0x1E6908F50](v31);
      (*(v73 + 8))(v3, v8);
    }

    v32 = v74;
    v33 = OUTLINED_FUNCTION_168();
    MEMORY[0x1E69109E0](v33);

    v34 = v77;
    OUTLINED_FUNCTION_0_185();
    sub_1E32AAD78(v35, v34, 0xD000000000000018, 0x80000001E4277BB0, v36);

    v37 = OUTLINED_FUNCTION_43_2();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v8);
    sub_1E3C156EC(v24);
    sub_1E379D7E4(v0, v2, &qword_1ECF29408, &qword_1E42C4850);
    OUTLINED_FUNCTION_34_4(v2);
    if (v48)
    {
      sub_1E325F7A8(v2, &qword_1ECF29408, &qword_1E42C4850);
LABEL_18:
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_189_1(0xD00000000000004ELL, v52, v53);
      sub_1E3C22BD0();

LABEL_19:
      sub_1E325F7A8(v0, &qword_1ECF29408, &qword_1E42C4850);
      goto LABEL_20;
    }

    v74 = "ecause no session exists";
    v66 = *(v73 + 32);
    v66(v69, v2, v8);
    v40 = OUTLINED_FUNCTION_84_5();
    v41(v40);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v8);
    v45 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier;
    v46 = v71;
    v47 = *(v70 + 48);
    sub_1E379D7E4(v32, v71, &qword_1ECF29408, &qword_1E42C4850);
    sub_1E379D7E4(v72 + v45, v46 + v47, &qword_1ECF29408, &qword_1E42C4850);
    OUTLINED_FUNCTION_34_4(v46);
    if (v48)
    {
      sub_1E325F7A8(v32, &qword_1ECF29408, &qword_1E42C4850);
      OUTLINED_FUNCTION_34_4(v46 + v47);
      v49 = v73;
      if (v48)
      {
        sub_1E325F7A8(v46, &qword_1ECF29408, &qword_1E42C4850);
LABEL_22:
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_189_1(0xD000000000000036, v64, v65);

        (*(v49 + 8))(v69, v8);
        goto LABEL_19;
      }
    }

    else
    {
      v50 = v68;
      sub_1E379D7E4(v46, v68, &qword_1ECF29408, &qword_1E42C4850);
      OUTLINED_FUNCTION_34_4(v46 + v47);
      if (!v51)
      {
        v66(v67, v46 + v47, v8);
        OUTLINED_FUNCTION_3_143();
        sub_1E32AC410(v54, v55, MEMORY[0x1E69695C8]);
        v56 = sub_1E4205E84();
        v49 = v73;
        v57 = *(v73 + 8);
        v58 = OUTLINED_FUNCTION_13_8();
        v57(v58);
        v59 = OUTLINED_FUNCTION_84_5();
        v61 = v60;
        sub_1E325F7A8(v59, v62, v60);
        v63 = OUTLINED_FUNCTION_38_0();
        v57(v63);
        sub_1E325F7A8(v71, &qword_1ECF29408, v61);
        if (v56)
        {
          goto LABEL_22;
        }

        goto LABEL_17;
      }

      sub_1E325F7A8(v32, &qword_1ECF29408, &qword_1E42C4850);
      v49 = v73;
      (*(v73 + 8))(v50, v8);
    }

    sub_1E325F7A8(v46, &qword_1ECF35650, &qword_1E42C4BE8);
    v57 = *(v49 + 8);
LABEL_17:
    (v57)(v69, v8);
    goto LABEL_18;
  }

LABEL_20:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C22BD0()
{
  OUTLINED_FUNCTION_31_1();
  v170 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v171 = v7;
  OUTLINED_FUNCTION_138();
  sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v167 = v9;
  v168 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v169 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v157 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v157 - v16;
  v18 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v172 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v157 - v28;
  OUTLINED_FUNCTION_95_11();
  sub_1E42074B4();
  OUTLINED_FUNCTION_82_10();
  MEMORY[0x1E69109E0](v30 + 4, v31 | 0x8000000000000000);
  *&v176 = v4;
  type metadata accessor for GroupWatchActivity(0);
  sub_1E4207614();
  OUTLINED_FUNCTION_0_185();
  v173 = v32;
  OUTLINED_FUNCTION_27_51();
  sub_1E32AAD78(v33, v34, v35, v36, v37);

  v38 = sub_1E39CB9F8();
  if (!v38)
  {
    v162 = v26;
    v163 = v2;
    v164 = v11;
    v165 = v14;
    v166 = v17;
    v52 = v171;
    v51 = v172;
    v53 = swift_allocBox();
    v55 = v54;
    sub_1E39CB5B0();
    OUTLINED_FUNCTION_34_4(v29);
    if (v56)
    {
      sub_1E325F7A8(v29, &unk_1ECF363C0, &unk_1E42A9420);
      swift_deallocBox();
    }

    else
    {
      v161 = v53;
      v68 = v51;
      v69 = v51[4];
      v70 = v29;
      v71 = v18;
      v69(v55, v70, v18);
      v72 = [objc_opt_self() sharedInstance];
      v73 = [v72 appController];

      if (v73)
      {
        v74 = v55;
        v158 = v69;
        OUTLINED_FUNCTION_4_0();
        v160 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v75 = sub_1E3C16D94();
        v159 = v1;
        v76 = v71;
        v77 = v169;
        if ((v75 & 1) == 0)
        {
          v78 = v68[2];
          v79 = OUTLINED_FUNCTION_119_0();
          v78(v79);
          v80 = v162;
          sub_1E3C246F4();
          v81 = OUTLINED_FUNCTION_168();
          v82(v81);
          v83 = OUTLINED_FUNCTION_245();
          if (__swift_getEnumTagSinglePayload(v83, v84, v76) == 1)
          {
            v85 = v163;
            v86 = OUTLINED_FUNCTION_84_5();
            v78(v86);
            v87 = OUTLINED_FUNCTION_245();
            OUTLINED_FUNCTION_52(v87, v88, v76);
            if (!v56)
            {
              sub_1E325F7A8(v80, &unk_1ECF363C0, &unk_1E42A9420);
            }
          }

          else
          {
            v85 = v163;
            v158(v163, v80, v76);
          }

          v68 = v172;
          v172[5](v74, v85, v76);
          v52 = v171;
          v77 = v169;
        }

        v172 = v73;
        v104 = v170;
        if (sub_1E3C14F9C())
        {
          sub_1E41FF434();

          v105 = v167;
          v163 = v74;
          v162 = v76;
          v106 = *(v167 + 32);
          v107 = OUTLINED_FUNCTION_11_6();
          v108 = v168;
          v106(v107);
          sub_1E4206474();
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
          v113 = OUTLINED_FUNCTION_171_0();
          v114(v113);
          v115 = v52;
          v116 = v68;
          v117 = (*(v105 + 80) + 40) & ~*(v105 + 80);
          v118 = swift_allocObject();
          v118[2] = 0;
          v118[3] = 0;
          v118[4] = v104;
          v119 = v118 + v117;
          v68 = v116;
          (v106)(v119, v77, v108);
          v76 = v162;
          v74 = v163;
          v120 = v104;
          v121 = OUTLINED_FUNCTION_23_7();
          sub_1E376FE58(v121, v122, v115, v123, v118);

          (*(v105 + 8))(v166, v108);
        }

        v124 = objc_opt_self();
        if ([v124 userHasActiveAccount])
        {
          OUTLINED_FUNCTION_95_11();
          sub_1E42074B4();

          OUTLINED_FUNCTION_41_7();
          OUTLINED_FUNCTION_82_10();
          v178[0] = v126 - 2;
          v178[1] = v125;
          v127 = v68[2];
          v128 = v159;
          v129 = OUTLINED_FUNCTION_84_5();
          v127(v129);
          OUTLINED_FUNCTION_4_150();
          sub_1E32AC410(v130, v131, MEMORY[0x1E6968FE0]);
          v132 = sub_1E4207944();
          MEMORY[0x1E69109E0](v132);

          v133 = v68[1];
          v133(v128, v76);
          OUTLINED_FUNCTION_0_185();
          OUTLINED_FUNCTION_50_30();
          sub_1E32AAD78(v134, v135, v136, v137, v138);

          v139 = *sub_1E3286BF0();
          (v127)(v128, v74, v76);
          v140 = v139;
          v141 = v172;
          v142 = [v172 appContext];
          v143 = *((*MEMORY[0x1E69E7D40] & *v140) + 0x278);
          v144 = v160;

          v143(v128, v142, sub_1E3C25EE0, v144);

          v133(v128, v76);
        }

        else
        {
          OUTLINED_FUNCTION_82_10();
          OUTLINED_FUNCTION_0_185();
          OUTLINED_FUNCTION_46_35(v145, v147, v146);
          v148 = v170;
          v149 = sub_1E3C14F9C();
          v150 = v161;
          if (v149)
          {
            v148 = v149;
            sub_1E41FF424();
          }

          OUTLINED_FUNCTION_4_0();
          v151 = swift_allocObject();
          OUTLINED_FUNCTION_105_2(v151);
          swift_unknownObjectWeakInit();
          v152 = swift_allocObject();
          v152[2] = v148;
          v152[3] = v150;
          v153 = v172;
          v152[4] = v172;
          v152[5] = sub_1E3C25EE0;
          v152[6] = v160;
          OUTLINED_FUNCTION_12_14(v152);
          OUTLINED_FUNCTION_26_50(COERCE_DOUBLE(1107296256));
          v179 = v154;
          v180 = &block_descriptor_92;
          v155 = _Block_copy(v178);

          v156 = v153;

          [v124 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v155];

          _Block_release(v155);
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_185();
        OUTLINED_FUNCTION_82_10();
        OUTLINED_FUNCTION_46_35(v92 + 4, v94, v93);
      }
    }

    goto LABEL_38;
  }

  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  OUTLINED_FUNCTION_5_10();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1E4298880;
  *(v40 + 32) = v39;
  v41 = objc_allocWithZone(VUIMediaInfo);
  v42 = v39;
  OUTLINED_FUNCTION_25();
  v47 = sub_1E376538C(v43, v44, v45, v46);
  [v47 setIntent_];
  v48 = [objc_opt_self() sharedInstance];
  v49 = [v48 appController];

  if (v49)
  {
    v50 = [v49 appContext];
  }

  else
  {
    v50 = 0;
  }

  [v47 setAppContext_];

  v57 = [objc_opt_self() sharedInstance];
  v58 = [v57 isFullscreenPlaybackUIBeingShown];

  if ((v58 & 1) == 0)
  {
    [objc_opt_self() dismissPresentedViewController];
  }

  v59 = [v42 metadata];
  if (v59)
  {
    v60 = sub_1E3C25998(v59);
    if (v60)
    {
      v61 = v60;
      v174 = sub_1E4205F14();
      v175 = v62;
      sub_1E4207414();
      sub_1E375D7E8(v61, &v176, v178);

      sub_1E375D84C(v178);
      if (v177)
      {
        if (swift_dynamicCast() && (v174 & 1) != 0)
        {
          v63 = objc_opt_self();
          if (![v63 userHasActiveAccount])
          {
            OUTLINED_FUNCTION_82_10();
            OUTLINED_FUNCTION_0_185();
            OUTLINED_FUNCTION_46_35(v95, v97, v96);
            OUTLINED_FUNCTION_4_0();
            v98 = swift_allocObject();
            swift_unknownObjectWeakInit();
            OUTLINED_FUNCTION_5_10();
            v99 = swift_allocObject();
            v99[2] = v98;
            v99[3] = v47;
            v99[4] = v42;
            OUTLINED_FUNCTION_12_14(v99);
            OUTLINED_FUNCTION_26_50(COERCE_DOUBLE(1107296256));
            v179 = v100;
            v180 = &block_descriptor_99;
            v101 = _Block_copy(v178);
            v102 = v42;
            v103 = v47;

            [v63 requestAuthenticationAlwaysPrompt:1 withCompletionHandler:v101];

            _Block_release(v101);
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_0_185();
          OUTLINED_FUNCTION_82_10();
          v67 = v66 + 44;
LABEL_24:
          OUTLINED_FUNCTION_46_35(v67, v65, v64);
          v90 = OUTLINED_FUNCTION_57();
          sub_1E3C242B4(v90, v91);

LABEL_38:
          OUTLINED_FUNCTION_25_2();
          return;
        }
      }

      else
      {
        sub_1E325F7A8(&v176, &unk_1ECF296E0, &unk_1E4298030);
      }
    }

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_82_10();
    v67 = v89 + 40;
    goto LABEL_24;
  }

  __break(1u);
}

double sub_1E3C23858()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD00000000000001DLL, 0x80000001E42780B0);
  sub_1E4206594();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1E69109E0](0xD000000000000010);
  OUTLINED_FUNCTION_0_185();
  OUTLINED_FUNCTION_55_31();
  sub_1E32AAD78(v5, v6, v7, v8, v9);

  v10 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer;
  if (*&v0[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    sub_1E42064D4();
  }

  sub_1E4206474();
  v11 = OUTLINED_FUNCTION_43_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_10_9();
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = 0x3FF0000000000000;
  v15[5] = v2;
  v16 = v2;
  v17 = OUTLINED_FUNCTION_23_7();
  *&v2[v10] = sub_1E37748D8(v17, v18, v1, v19, v15);

  return result;
}

uint64_t sub_1E3C23A1C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FE624();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C23AC0()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 56) = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);
  sub_1E41FF434();
  v1 = OUTLINED_FUNCTION_52_29();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3C23B30()
{
  OUTLINED_FUNCTION_27_2();
  v0 = OUTLINED_FUNCTION_135_2();
  sub_1E3DAD0D0(v0);
  v1 = OUTLINED_FUNCTION_17_10();
  v2(v1);

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3C23BA8()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[8] = v2;
  v3 = sub_1E42075E4();
  v0[10] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[11] = v4;
  v0[12] = OUTLINED_FUNCTION_86_0();
  v5 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1E3C23C50()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E4207CA4();
  sub_1E4207AA4();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1E3C23D20;
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_25();

  return sub_1E38786F0(v2, v3, v4, v5, 1);
}

uint64_t sub_1E3C23D20()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 112) = v0;

  v7 = OUTLINED_FUNCTION_17_10();
  v8(v7);
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3C23E6C()
{
  OUTLINED_FUNCTION_134();
  if (sub_1E4206504())
  {
    OUTLINED_FUNCTION_39_1();
    sub_1E42074B4();
    OUTLINED_FUNCTION_181();
    *(v0 + 48) = v2;
    *(v1 + 56) = v3;
    MEMORY[0x1E69109E0](0xD00000000000001DLL, 0x80000001E42780B0);
    sub_1E4206594();
    OUTLINED_FUNCTION_23();
    MEMORY[0x1E69109E0](0xD000000000000012);
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v4, v5, v6, v7, v8);

    OUTLINED_FUNCTION_15_12();

    return v9();
  }

  else
  {
    sub_1E4206434();
    *(v1 + 120) = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_50();
    sub_1E42063B4();
    OUTLINED_FUNCTION_109();

    return MEMORY[0x1EEE6DFA0](sub_1E3C2403C, v11, v12);
  }
}

uint64_t sub_1E3C23FE0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C2403C()
{
  v2 = *(v1 + 72);

  v3 = OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_dismissDelayTimer))
  {
    OUTLINED_FUNCTION_39_1();
    sub_1E42074B4();
    OUTLINED_FUNCTION_181();
    *(v0 + 16) = v4;
    *(v1 + 24) = v5;
    MEMORY[0x1E69109E0](0xD00000000000001DLL, 0x80000001E42780B0);
    OUTLINED_FUNCTION_77();
    sub_1E4206594();
    MEMORY[0x1E69109E0](0x2072656D69742820, 0xEE00296465726966);
    v6 = MEMORY[0x1E69E9450];
    sub_1E32AAD78(*(v0 + 16), *(v1 + 24), 0xD000000000000017, 0x80000001E42780F0, MEMORY[0x1E69E9450]);

    *(v2 + v3) = 0;

    v7 = [objc_opt_self() sharedInstance];
    [v7 dismissPlaybackAnimated:1 leaveGroupActivitySession:0 completion:0];

    OUTLINED_FUNCTION_39_1();
    sub_1E42074B4();
    OUTLINED_FUNCTION_181();
    v7[4] = v8;
    v7[5] = v9;
    MEMORY[0x1E69109E0](0xD00000000000001DLL, 0x80000001E42780B0);
    OUTLINED_FUNCTION_77();
    sub_1E4206594();
    MEMORY[0x1E69109E0](0x656C706D6F632820, 0xEC00000029646574);
    OUTLINED_FUNCTION_27_51();
    sub_1E32AAD78(v10, v11, v12, v13, v6);
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1E3C2425C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_15_12();

  return v0();
}

id sub_1E3C242B4(uint64_t a1, uint64_t a2)
{
  [objc_opt_self() playMediaInfo:a1 watchType:1 isRentAndWatchNow:0];
  v3 = objc_opt_self();

  return [v3 recordPlay:a2 isLaunchingExtras:0];
}

void sub_1E3C24328()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = sub_1E3C14F9C();
    if (v19)
    {
      v20 = v19;
      sub_1E41FF434();

      v35 = v3;
      v34 = *(v8 + 32);
      v34(v16, v1, v6);
      sub_1E4206474();
      OUTLINED_FUNCTION_93_4();
      OUTLINED_FUNCTION_32_2();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
      OUTLINED_FUNCTION_4_0();
      v25 = swift_allocObject();
      OUTLINED_FUNCTION_105_2(v25);
      swift_unknownObjectWeakInit();
      (*(v8 + 16))(&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v6);
      v26 = (*(v8 + 80) + 40) & ~*(v8 + 80);
      v27 = swift_allocObject();
      *(v27 + 2) = 0;
      *(v27 + 3) = 0;
      *(v27 + 4) = v20;
      v34(&v27[v26], v12, v6);
      LOBYTE(v3) = v35;
      v28 = OUTLINED_FUNCTION_23_7();
      sub_1E3797438(v28, v29, v0, v30, v27);

      v31 = OUTLINED_FUNCTION_8_6();
      v32(v31);
    }

    if ((v3 & 1) == 0 && sub_1E3C14F9C())
    {
      sub_1E41FF424();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C245A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C245BC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 72) = *(Strong + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);

    v3 = OUTLINED_FUNCTION_52_29();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    OUTLINED_FUNCTION_54();

    return v6();
  }
}

uint64_t sub_1E3C2468C()
{
  OUTLINED_FUNCTION_24();
  sub_1E3DABCA4();

  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_1E3C246F4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FE004();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v62 = v8 - v7;
  OUTLINED_FUNCTION_138();
  v9 = sub_1E41FDF74();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v61 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_77_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  sub_1E41FDFB4();
  v20 = 0;
  if (!__swift_getEnumTagSinglePayload(v19, 1, v3))
  {
    v20 = sub_1E41FDF84();
  }

  v63 = v19;
  if (!__swift_getEnumTagSinglePayload(v19, 1, v3))
  {
    if (!v20)
    {
LABEL_27:
      v21 = v63;
      sub_1E41FDF94();
      goto LABEL_28;
    }

    v57 = v5;
    v58 = v3;
    v59 = v2;
    v22 = 0;
    v23 = *(v20 + 16);
    v67 = v11 + 16;
    v68 = v23;
    v64 = @"binge";
    v56 = (v11 + 32);
    v65 = (v11 + 8);
    v66 = @"postPlay";
    v60 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        if (v68 == v22)
        {

          v3 = v58;
          v5 = v57;
          goto LABEL_27;
        }

        if (v22 >= *(v20 + 16))
        {
          __break(1u);
          return;
        }

        v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v25 = *(v11 + 72);
        v26 = v9;
        (*(v11 + 16))(v0, v20 + v24 + v25 * v22, v9);
        v27 = sub_1E41FDF54();
        v29 = v28;
        if (v27 != sub_1E4205F14() || v29 != v30)
        {
          v32 = OUTLINED_FUNCTION_158_5();

          if (v32)
          {
            goto LABEL_25;
          }

          v33 = sub_1E41FDF54();
          v35 = v34;
          if (v33 != sub_1E4205F14() || v35 != v36)
          {
            break;
          }
        }

LABEL_25:
        v9 = v26;
        (*v65)(v0, v26);
        ++v22;
      }

      v38 = OUTLINED_FUNCTION_158_5();

      if (v38)
      {
        goto LABEL_25;
      }

      v39 = *v56;
      (*v56)(v61, v0, v26);
      v40 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v69 = v40;
      v55 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3C253E8(0, *(v40 + 16) + 1, 1);
        v40 = v69;
      }

      v43 = *(v40 + 16);
      v42 = *(v40 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1E3C253E8((v42 > 1), v43 + 1, 1);
        v40 = v69;
      }

      ++v22;
      *(v40 + 16) = v43 + 1;
      v60 = v40;
      v44 = v40 + v24 + v43 * v25;
      v9 = v26;
      v55(v44, v61, v26);
    }
  }

  v21 = v63;
LABEL_28:
  v45 = OUTLINED_FUNCTION_44_5();
  if (__swift_getEnumTagSinglePayload(v45, v46, v3))
  {
    sub_1E41FE414();
    v47 = OUTLINED_FUNCTION_43_2();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
  }

  else
  {
    v51 = v62;
    v52 = OUTLINED_FUNCTION_16_0();
    v53(v52);
    sub_1E41FDFC4();
    (*(v5 + 8))(v51, v3);
  }

  sub_1E325F7A8(v21, &qword_1ECF304A8, &unk_1E42B18D0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C24B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3C24B88()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_timingTracker);
  *(v0 + 32) = v1;
  return OUTLINED_FUNCTION_13_1(sub_1E3C24BB0, v1);
}

uint64_t sub_1E3C24BB0()
{
  OUTLINED_FUNCTION_24();
  sub_1E3DAB808();
  OUTLINED_FUNCTION_54();

  return v0();
}

void sub_1E3C24C08()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  swift_projectBox();
  if (v3)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_1E42074B4();

      OUTLINED_FUNCTION_41_7();
      OUTLINED_FUNCTION_82_10();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      OUTLINED_FUNCTION_146_2();
      OUTLINED_FUNCTION_142_7();
      v7();
      OUTLINED_FUNCTION_4_150();
      sub_1E32AC410(v8, v9, MEMORY[0x1E6968FE0]);
      v10 = sub_1E4207944();
      MEMORY[0x1E69109E0](v10);

      v11 = OUTLINED_FUNCTION_38_0();
      v12(v11);
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_27_51();
      sub_1E32AAD78(v13, v14, v15, v16, v17);
    }

    v18 = *sub_1E3286BF0();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    OUTLINED_FUNCTION_146_2();
    OUTLINED_FUNCTION_142_7();
    v19();
    v20 = v18;
    v21 = [v1 appContext];
    v22 = OUTLINED_FUNCTION_24_4();
    v23(v22);

    v24 = OUTLINED_FUNCTION_38_0();
    v25(v24);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      OUTLINED_FUNCTION_0_185();
      OUTLINED_FUNCTION_43_42();
      OUTLINED_FUNCTION_50_30();
      sub_1E32AAD78(v28, v29, v30, v31, v32);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3C24EEC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  objc_opt_self();
  v8 = sub_1E4205ED4();
  OUTLINED_FUNCTION_76_0();
  v9 = sub_1E4205ED4();
  OUTLINED_FUNCTION_146_2();
  v10(v7, v1, v2);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v7, v2);
  v16[4] = sub_1E3C25B10;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1E37EB82C;
  v16[3] = &block_descriptor_78;
  v13 = _Block_copy(v16);

  OUTLINED_FUNCTION_19_1();
  [v14 v15];
  _Block_release(v13);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C250C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C14F9C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C25120()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_35_5();
  v6(v9);
  if (v0)
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v13();
  }
}

uint64_t sub_1E3C252B4()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_56_1(v3);

  return sub_1E3C16DEC(v5, v6, v7, v1);
}

uint64_t sub_1E3C2533C()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;
  OUTLINED_FUNCTION_62_1();

  return sub_1E3C179D0();
}

void *sub_1E3C253E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3C25408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3C25408(void *result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF304B0, &qword_1E42C4B90);
  v10 = *(sub_1E41FDF74() - 8);
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
  v15 = *(sub_1E41FDF74() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E39E8B4C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1E3C255C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35608;
  if (!qword_1ECF35608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35608);
  }

  return result;
}

unint64_t sub_1E3C25618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35610;
  if (!qword_1ECF35610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35610);
  }

  return result;
}

unint64_t sub_1E3C25670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35618;
  if (!qword_1ECF35618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35618);
  }

  return result;
}

uint64_t sub_1E3C256FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408, &qword_1E42C4850);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1E3C2576C(void **a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong;
    if (sub_1E3C14F9C())
    {
      OUTLINED_FUNCTION_0_185();
      sub_1E32AAD78(0xD000000000000020, v5 | 0x8000000000000000, 0x6C50646572616873, 0xEC00000072657961, v6);
      v7 = [v1 playbackCoordinator];
      OUTLINED_FUNCTION_31_4();
      sub_1E4206C74();
    }

    else
    {
      OUTLINED_FUNCTION_0_185();
      sub_1E32AAD78(0xD000000000000030, v8 | 0x8000000000000000, 0x6C50646572616873, 0xEC00000072657961, v9);
    }
  }
}

void sub_1E3C25880()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_106();
    sub_1E3C15F8C();
  }
}

uint64_t sub_1E3C258D4()
{
  OUTLINED_FUNCTION_27_2();
  v0 = sub_1E41FE624();
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_14_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_152_5(v2);

  return sub_1E3C16BB8(v4, v5, v6, v7, v8);
}

uint64_t sub_1E3C25998(void *a1)
{
  v2 = [a1 backingDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E3C25A10()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_7();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_15_12();

  return v8();
}

uint64_t sub_1E3C25B10(char a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  OUTLINED_FUNCTION_17_2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190, &unk_1E42B0A80);
  return sub_1E42063D4();
}

unint64_t sub_1E3C25BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE29AA78;
  if (!qword_1EE29AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE29AA78);
  }

  return result;
}

uint64_t sub_1E3C25C04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35600, &qword_1E42C4860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3C25C74()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C212DC();
}

uint64_t objectdestroy_46Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E3C25D78(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35638, &qword_1E42C4BA0);
  result = OUTLINED_FUNCTION_17_2(v4);
  if (a1)
  {
    v6 = a1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35638, &qword_1E42C4BA0);
    OUTLINED_FUNCTION_178_2(v7, v8, v9, v10, v11, v12, v13, v14, v24, a1);
    return sub_1E42063D4();
  }

  else if (a2)
  {
    v15 = a2;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35638, &qword_1E42C4BA0);
    OUTLINED_FUNCTION_178_2(v16, v17, v18, v19, v20, v21, v22, v23, v24, a2);
    return sub_1E42063C4();
  }

  return result;
}

uint64_t sub_1E3C25E4C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C1BD9C();
}

uint64_t sub_1E3C25EE8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = sub_1E41FE624();
  OUTLINED_FUNCTION_17_2(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30_0(v5);
  *v6 = v9;
  v6[1] = sub_1E327C238;

  return sub_1E3C24B74(v6, v7, v8, v4, v0 + v3);
}

void sub_1E3C25FC4(char a1)
{
  if ((a1 & 1) == 0)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v9 = Strong;
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_50_30();
    sub_1E32AAD78(v13, v14, v15, v16, v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_43_42();
    OUTLINED_FUNCTION_50_30();
    sub_1E32AAD78(v3, v4, v5, v6, v7);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = OUTLINED_FUNCTION_32_0();
    sub_1E3C242B4(v10, v11);
LABEL_8:
  }
}

uint64_t objectdestroy_28Tm_0()
{
  v1 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_1E3C2619C()
{
  OUTLINED_FUNCTION_27_2();
  v0 = sub_1E41FE624();
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_14_3(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_152_5(v2);

  return sub_1E3C245A4(v4, v5, v6, v7, v8);
}

void sub_1E3C26260(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(a1 + 16);
    OUTLINED_FUNCTION_38_1();
    sub_1E42074B4();

    OUTLINED_FUNCTION_41_7();
    v7 = sub_1E4207944();
    MEMORY[0x1E69109E0](v7);

    OUTLINED_FUNCTION_0_185();
    OUTLINED_FUNCTION_55_31();
    sub_1E32AAD78(v8, v9, v10, v11, v12);

    if (a2)
    {
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *&v5[OBJC_IVAR____TtC8VideosUI22GroupActivitiesManager_participantsCountMax] = 0;
      sub_1E3C1575C(0);
    }

    sub_1E3C1575C(v6);
    sub_1E3C1ACF0(a2 & 1);
LABEL_7:
  }
}

uint64_t objectdestroy_51Tm_0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_10_9();

  return swift_deallocObject();
}

uint64_t sub_1E3C26400()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C23A1C();
}

uint64_t sub_1E3C26484()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3C23BA8();
}

uint64_t objectdestroy_67Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

uint64_t sub_1E3C26564()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26_63(v1);

  return sub_1E3C1DD44();
}

unint64_t sub_1E3C265E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE29AA60[0];
  if (!qword_1EE29AA60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE29AA60);
  }

  return result;
}

unint64_t sub_1E3C2664C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5B970;
  if (!qword_1ECF5B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5B970);
  }

  return result;
}

unint64_t sub_1E3C266A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5B978;
  if (!qword_1ECF5B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5B978);
  }

  return result;
}

unint64_t sub_1E3C266F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5B980[0];
  if (!qword_1ECF5B980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5B980);
  }

  return result;
}

_BYTE *sub_1E3C2675C(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1E3C2680C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5BA10[0];
  if (!qword_1ECF5BA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5BA10);
  }

  return result;
}

unint64_t sub_1E3C26864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5BC20[0];
  if (!qword_1ECF5BC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5BC20);
  }

  return result;
}

unint64_t sub_1E3C268BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5BE30;
  if (!qword_1ECF5BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF5BE30);
  }

  return result;
}

unint64_t sub_1E3C26914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5BE38[0];
  if (!qword_1ECF5BE38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5BE38);
  }

  return result;
}

unint64_t sub_1E3C26968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF5BEC0[0];
  if (!qword_1ECF5BEC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF5BEC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_96_11(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x1E695C068];

  return sub_1E32752B0(a1, a2, a3, v4);
}

void OUTLINED_FUNCTION_108_7(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, a3 | 0x8000000000000000, 0x737365536E696F6ALL, 0xED000029286E6F69, a2);
}

void OUTLINED_FUNCTION_157_5()
{

  JUMPOUT(0x1E69109E0);
}

uint64_t OUTLINED_FUNCTION_158_5()
{

  return sub_1E42079A4();
}

void OUTLINED_FUNCTION_160_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{

  sub_1E32AAD78(a1, a2, 0xD00000000000001CLL, a4, a5);
}

void OUTLINED_FUNCTION_163_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{

  sub_1E32AAD78(a1, a2, 0xD000000000000028, a4, a5);
}

uint64_t OUTLINED_FUNCTION_187_1(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_188_0(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, a3 | 0x8000000000000000, 0xD000000000000036, v3 | 0x8000000000000000, a2);
}

void OUTLINED_FUNCTION_189_1(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, a3 | 0x8000000000000000, 0xD000000000000018, v3 | 0x8000000000000000, a2);
}

void OUTLINED_FUNCTION_190_0(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, a3 | 0x8000000000000000, 0xD00000000000005CLL, v3 | 0x8000000000000000, a2);
}

void OUTLINED_FUNCTION_191_1(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X8>)
{

  sub_1E32AAD78(a1, v3 | 0x8000000000000000, 0xD000000000000015, a3 | 0x8000000000000000, a2);
}

_OWORD *OUTLINED_FUNCTION_192_0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4, uint64_t a5, uint64_t a6, __int128 a7, uint64_t a8, uint64_t a9)
{
  a9 = v9;
  *&a7 = a1;

  return sub_1E329504C(&a7, &a4);
}

uint64_t OUTLINED_FUNCTION_193_0()
{
}

void OUTLINED_FUNCTION_195_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{

  sub_1E32AAD78(a1, a2, 0xD000000000000022, a4, a5);
}

uint64_t sub_1E3C26D74(id a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 1:
      strcpy(v10, "Text Array: ");
      BYTE5(v10[1]) = 0;
      HIWORD(v10[1]) = -5120;
      v7 = type metadata accessor for ViewModel();
      v8 = MEMORY[0x1E6910C30](a1, v7);
      MEMORY[0x1E69109E0](v8);
      goto LABEL_7;
    case 2:
      strcpy(v10, "HTML text: ");
      HIDWORD(v10[1]) = -352321536;
      v4 = [a1 string];
      goto LABEL_5;
    case 3:
      sub_1E42074B4();

      v10[0] = 0xD000000000000011;
      v10[1] = 0x80000001E42781D0;
      v4 = [a1 description];
LABEL_5:
      v5 = v4;
      sub_1E4205F14();

      v6 = OUTLINED_FUNCTION_34();
      MEMORY[0x1E69109E0](v6);
LABEL_7:

      break;
    default:
      v10[0] = 0x203A74786554;
      v10[1] = 0xE600000000000000;
      MEMORY[0x1E69109E0](a1, a2);
      break;
  }

  return v10[0];
}

uint64_t sub_1E3C26EE8(unint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 != 1)
      {
        goto LABEL_18;
      }

      return sub_1E38BBA04(a1, a4);
    case 2:
      if (a6 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_18;
      }

LABEL_13:
      sub_1E3280A90(0, &qword_1EE23AD70, 0x1E69E58C0);
      result = sub_1E4206F64() & 1;
      break;
    default:
      if (a6)
      {
LABEL_18:
        result = 0;
      }

      else if (a1 == a4 && a2 == a5)
      {
        result = 1;
      }

      else
      {

        result = sub_1E42079A4();
      }

      break;
  }

  return result;
}

uint64_t sub_1E3C27024()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v1 = *(v0 + 248);
  if (*(v0 + 264) == 2)
  {
    v2 = OUTLINED_FUNCTION_4_151();
    sub_1E3C270F0(v2, v3, v4);
    v5 = OUTLINED_FUNCTION_4_151();
    v8 = [v1 string];
    sub_1E4205F14();

    v9 = OUTLINED_FUNCTION_4_151();
    sub_1E37AE010(v9, v10, v11);
    v12 = OUTLINED_FUNCTION_4_151();
    sub_1E37AE010(v12, v13, v14);
  }

  else if (!*(v0 + 264))
  {
    sub_1E3C27104(*(v0 + 248), *(v0 + 256), 0);
  }

  return OUTLINED_FUNCTION_34();
}

double sub_1E3C270F0(void *result, void *a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1E3C27104(result, a2, a3);
  }

  return v3;
}

double sub_1E3C27104(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:

      break;
    case 2:
    case 3:
      v3 = a1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3C27144()
{
  v1 = v0;
  v2 = sub_1E3C27024();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    goto LABEL_9;
  }

  sub_1E39BEC20(v2, 0);
  v31 = &type metadata for ViewModelKeys;
  v32 = &off_1F5D7BCA8;
  LOBYTE(v28) = 14;
  sub_1E3F9F164(&v28, v6, MEMORY[0x1E69E7CA0] + 8);

  if (v35)
  {
    if (swift_dynamicCast())
    {
      v4 = v26;
      v5 = v27;
      __swift_destroy_boxed_opaque_existential_1(&v28);
      goto LABEL_9;
    }

    __swift_destroy_boxed_opaque_existential_1(&v28);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v28);
    sub_1E329505C(&v33);
  }

  v4 = 0;
  v5 = 0xE000000000000000;
LABEL_9:
  sub_1E39BD698();
  v28 = v7;
  v29 = v8;
  MEMORY[0x1E69109E0](11256352, 0xA300000000000000);
  v9 = v28;
  v10 = v29;

  v11 = sub_1E3C273C0(32, v4, v5);
  v33 = v9;
  v34 = v10;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  v31 = v14;
  sub_1E3998904(v11, v12, v13);

  sub_1E4206064();

  v16 = v33;
  v15 = v34;
  sub_1E4206024();

  v28 = v16;
  v29 = v15;

  v17 = OUTLINED_FUNCTION_34();
  MEMORY[0x1E69109E0](v17);

  v21 = v28;
  v20 = v29;
  v22 = *(v1 + 16);
  v23 = *(v1 + 24);
  if (v23)
  {
    v33 = v22;
    v34 = v23;
    sub_1E37614CC(v18, v19, v22);

    sub_1E38D2484(sub_1E3C27480, MEMORY[0x1E69E6158], &v28);

    v22 = v28;
    v23 = v29;
  }

  v24 = sub_1E414A784(v21, v20, v22, v23);

  return v24;
}

uint64_t sub_1E3C273C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1E4206044();
    v3 = sub_1E4206184();

    return v3;
  }

  return result;
}

uint64_t sub_1E3C27480@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = MEMORY[0x1E69109E0](*a1, a1[1]);
  *a2 = 8992;
  a2[1] = 0xE200000000000000;
  return result;
}

uint64_t sub_1E3C274DC(uint64_t a1, uint64_t a2)
{
  result = sub_1E3C27528(a1, a2);
  if (result)
  {
    type metadata accessor for TextLayout();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3C27528(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 304);
  if (!v3)
  {
    v3 = sub_1E382EF1C(a1, a2);
  }

  return v3;
}

uint64_t sub_1E3C2756C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v0 + 264) == 255)
  {
    return ViewModel.description.getter();
  }

  v1 = OUTLINED_FUNCTION_10_95();
  sub_1E3C27104(v1, v2, v3);
  v4 = OUTLINED_FUNCTION_10_95();
  v7 = sub_1E3C26D74(v4, v5, v6);
  v8 = OUTLINED_FUNCTION_10_95();
  sub_1E37AE010(v8, v9, v10);
  return v7;
}

id sub_1E3C275F8(__n128 a1)
{
  v2 = *(v1 + 296);
  v3 = v2;
  if (!v2)
  {
    v3 = sub_1E39BE41C(a1);
  }

  v4 = v2;
  return v3;
}

uint64_t sub_1E3C27638(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a1;
  swift_allocObject();
  return sub_1E3C276A4(v9, a2, a3, a4, a5);
}

uint64_t sub_1E3C276A4(int a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  LODWORD(v181) = a1;
  *(v5 + 248) = 0;
  *(v5 + 256) = 0;
  *(v5 + 264) = -1;
  *(v5 + 272) = 0;
  *(v5 + 280) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v5 + 296) = 0;
  *(v5 + 304) = 0;
  *(v5 + 288) = v10;
  v11 = MEMORY[0x1E69E6158];
  v12 = sub_1E4205CB4();
  sub_1E328438C(a2, &v206);
  v13 = swift_dynamicCast();
  v14 = v13;
  if (v13)
  {
    LODWORD(linkURL) = v13;
    v15 = a5;
    v16 = *(&v202 + 1);
    v17 = v202;
    OUTLINED_FUNCTION_3_0(v6 + 248, &v187);
    linkURL_8 = a3;
    v18 = a2;
    *(v6 + 31) = v17;
    *(v6 + 32) = v16;
    v19 = *(v6 + 264);
    *(v6 + 264) = 0;

    v20 = OUTLINED_FUNCTION_34();
    sub_1E37AE010(v20, v21, v19);
    ViewModelKeys.rawValue.getter(14);
    v23 = v22;
    v25 = v24;
    *(&v207 + 1) = v11;
    v206 = __PAIR128__(v16, v17);
    a5 = v15;
    sub_1E329504C(&v206, &v202);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v198 = v12;
    sub_1E32A87C0(&v202, v23, v25, isUniquelyReferenced_nonNull_native);
    a2 = v18;
    a3 = linkURL_8;

    v27 = v198;
  }

  else
  {

    sub_1E328438C(a2, &v206);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(a2);

      sub_1E37AE010(*(v5 + 248), *(v5 + 256), *(v5 + 264));

      swift_deallocPartialClassInstance();
      return 0;
    }

    LODWORD(linkURL) = v14;
    v27 = v202;
  }

  v28 = *(v6 + 37);
  *(v6 + 37) = a4;
  v29 = a4;

  *(v6 + 38) = a5;

  if (!sub_1E39BEDCC(v181, v27, a3))
  {

    __swift_destroy_boxed_opaque_existential_1(a2);

    return 0;
  }

  sub_1E39BDB00(v185, v30);
  if (v31)
  {
    v32 = v31;
    v167 = v29;
    v171 = a2;
    linkURL_8 = a3;
    v181 = a5;
    v33 = MEMORY[0x1E69E7CC0];
    *&v206 = MEMORY[0x1E69E7CC0];
    v34 = sub_1E32AE9B0(v31);
    v35 = 0;
    while (v34 != v35)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1E6911E60](v35, v32);
        v36 = v37;
      }

      else
      {
        if (v35 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v36 = *(v32 + 8 * v35 + 32);
      }

      v6 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
        goto LABEL_79;
      }

      if (*v36 == _TtC8VideosUI13TextViewModel)
      {
        MEMORY[0x1E6910BF0](v37);
        if (*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v206 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        v33 = v206;
        ++v35;
      }

      else
      {

        ++v35;
      }
    }

    v38 = sub_1E32AE9B0(v33);
    for (i = 0; v38 != i; ++i)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x1E6911E60](i, v33);
        v40 = v41;
      }

      else
      {
        if (i >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_78;
        }

        v40 = *(v33 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_77;
      }

      if (!sub_1E3C27528(v41, v42))
      {
        *(v40 + 304) = sub_1E3C27528(0, v43);
      }
    }

    a3 = linkURL_8;
  }

  *(&v207 + 1) = &unk_1F5D5DD98;
  v208 = &off_1F5D5CA38;
  LOBYTE(v206) = 0;
  v44 = j__OUTLINED_FUNCTION_18();
  v45 = v185;
  v46 = sub_1E39C29F0(&v206, v44 & 1);
  __swift_destroy_boxed_opaque_existential_1(&v206);
  if (linkURL)
  {

LABEL_67:
    sub_1E3CB5F1C();

    __swift_destroy_boxed_opaque_existential_1(a2);

    return v45;
  }

  *(&v207 + 1) = &type metadata for ViewModelKeys;
  v208 = &off_1F5D7BCA8;
  LOBYTE(v206) = 14;
  v47 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(&v206, v27, MEMORY[0x1E69E7CA0] + 8);

  if (!*(&v203[0] + 1))
  {
    sub_1E329505C(&v202);
    v69 = &v206;
LABEL_64:
    __swift_destroy_boxed_opaque_existential_1(v69);
    goto LABEL_67;
  }

  sub_1E329504C(&v202, v205);
  __swift_destroy_boxed_opaque_existential_1(&v206);
  v48 = sub_1E328438C(v205, &v206);
  OUTLINED_FUNCTION_3_144(v48, v49, v50, MEMORY[0x1E69E6158], v51, v52, v53, v54, v143, v147, v150, v154, v157, v160, v164, v167, v171, linkURL, linkURL_8, v181, v185, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, *(&v198 + 1), v199, *(&v199 + 1), v200, v201, v202);
  if (swift_dynamicCast())
  {

    v55 = sub_1E328438C(v205, &v206);
    v56 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_3_144(v55, v57, v58, v59, v60, v61, v62, v63, v144, v148, v151, v155, v158, v161, v165, v168, v172, linkURLa, linkURL_8a, v182, v185, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, *(&v198 + 1), v199, *(&v199 + 1), v200, v201, v202);
    if (swift_dynamicCast())
    {
      v6 = v29;
      v64 = v202;
      if (v46)
      {
        sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);
        v65 = sub_1E37631D4(v64, *(&v64 + 1));
        __swift_destroy_boxed_opaque_existential_1(v205);
        v45 = v185;
        OUTLINED_FUNCTION_3_0(v185 + 248, &v206);
        v66 = *(v185 + 248);
        v67 = *(v185 + 256);
        *(v185 + 248) = v65;
        *(v185 + 256) = 0;
        v68 = *(v185 + 264);
        *(v185 + 264) = 2;
        sub_1E37AE010(v66, v67, v68);
      }

      else
      {
        sub_1E3CB6544(v202, *(&v202 + 1), &v206);
        v108 = *(&v206 + 1);
        if (*(&v206 + 1))
        {
          v170 = *(&v207 + 1);
          v171 = a2;
          v109 = v209;
          linkURLc = v207;
          v110 = v206;

          *&v198 = v110;
          *(&v198 + 1) = v108;
          v202 = v198;
          *&v204[0] = 32;
          *(&v204[0] + 1) = 0xE100000000000000;
          v196 = 41154;
          v197 = 0xA200000000000000;
          v153 = sub_1E32822E0(v111, v112, v113);
          v146 = v56;
          OUTLINED_FUNCTION_25();
          v114 = sub_1E42071F4();
          v116 = v115;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35760, &qword_1E42E0F60);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          v118 = *MEMORY[0x1E69DB650];
          *(inited + 32) = *MEMORY[0x1E69DB650];
          v119 = v118;
          v163 = sub_1E3E60700();
          v120 = *v163;
          *(inited + 40) = *v163;
          type metadata accessor for Key(0);
          sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
          OUTLINED_FUNCTION_0_186();
          sub_1E3C2A244(v121, v122);
          v123 = v120;
          v124 = sub_1E4205CB4();
          *&v202 = 32;
          *(&v202 + 1) = 0xE100000000000000;
          MEMORY[0x1E69109E0](v114, v116);

          MEMORY[0x1E69109E0](41154, 0xA200000000000000);

          v125 = v202;
          sub_1E3C28388(v124);
          v127 = v126;

          v128 = objc_allocWithZone(MEMORY[0x1E696AD40]);
          v33 = sub_1E3C2A044(v125, *(&v125 + 1), v127);
          v129._countAndFlagsBits = v114;
          v129._object = v116;
          v130._countAndFlagsBits = linkURLc;
          v130._object = v170;
          NSMutableAttributedString.setAsLink(textToFind:linkURL:)(v129, v130);

          if (v109)
          {

            sub_1E3782C70(&v198);

            sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
            v131 = sub_1E3834BC8();
            v29 = v6;
            v45 = v185;
            if (v131)
            {
              v132 = v131;
              v133 = [v131 vui:*v163 imageWithColor:{v146, v153, v153, v153}];
              if (v133)
              {
                v134 = v133;
                v135 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
                [v135 setImage_];
                v136 = [objc_opt_self() attributedStringWithAttachment_];
                [v33 appendAttributedString_];

                __swift_destroy_boxed_opaque_existential_1(v205);
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_1(v205);
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(v205);
            }
          }

          else
          {
LABEL_79:
            sub_1E3782C70(&v198);

            __swift_destroy_boxed_opaque_existential_1(v205);
            v45 = v185;
            v29 = v6;
          }

          OUTLINED_FUNCTION_3_0(v45 + 248, &v202);
          v140 = *(v45 + 248);
          v141 = *(v45 + 256);
          *(v45 + 248) = v33;
          *(v45 + 256) = 0;
          v142 = *(v45 + 264);
          *(v45 + 264) = 3;
          sub_1E37AE010(v140, v141, v142);
          a2 = v171;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v205);
          OUTLINED_FUNCTION_3_0(v185 + 248, &v202);
          v137 = *(v185 + 248);
          v138 = *(v185 + 256);
          *(v185 + 248) = v64;
          v139 = *(v185 + 264);
          *(v185 + 264) = 0;
          sub_1E37AE010(v137, v138, v139);
          v45 = v185;
        }
      }

      goto LABEL_67;
    }

    v45 = v185;
  }

  sub_1E328438C(v205, &v206);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF311C8, qword_1E42B49E0);
  OUTLINED_FUNCTION_3_144(v70, v71, v72, v70, v73, v74, v75, v76, v144, v148, v151, v155, v158, v161, v165, v168, v172, linkURLa, linkURL_8a, v182, v185, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, *(&v198 + 1), v199, *(&v199 + 1), v200, v201, v202);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v69 = v205;
    goto LABEL_64;
  }

  v183 = a5;
  v173 = a2;
  v78 = v202;
  v196 = MEMORY[0x1E69E7CC0];
  v79 = *(v202 + 16);
  if (!v79)
  {

    v104 = MEMORY[0x1E69E7CC0];
LABEL_66:
    __swift_destroy_boxed_opaque_existential_1(v205);
    OUTLINED_FUNCTION_3_0(v45 + 248, &v206);
    v105 = *(v45 + 248);
    v106 = *(v45 + 256);
    *(v45 + 248) = v104;
    *(v45 + 256) = 0;
    v107 = *(v45 + 264);
    *(v45 + 264) = 1;
    sub_1E37AE010(v105, v106, v107);
    a2 = v173;
    goto LABEL_67;
  }

  v169 = v29;
  linkURLb = MEMORY[0x1E69E7CC0];
  linkURL_8b = a3;
  v80 = 0;
  while (v80 < *(v78 + 16))
  {
    sub_1E328438C(v78 + 32 + 32 * v80, &v206);
    v81 = OUTLINED_FUNCTION_88();
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(v81, v82);
    OUTLINED_FUNCTION_3_144(v83, v84, v85, v83, v86, v87, v88, v89, v145, v149, v152, v156, v159, v162, v166, v169, v173, linkURLb, linkURL_8b, v183, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, *(&v198 + 1), v199, *(&v199 + 1), v200, v201, v202);
    result = swift_dynamicCast();
    if (result)
    {
      v90 = 0;
      v91 = 1 << *(v202 + 32);
      v92 = (v91 + 63) >> 6;
      v93 = 64;
      if (!v92)
      {
        goto LABEL_52;
      }

      while (1)
      {
        v94 = *(v202 + v93);
        if (v94)
        {
          break;
        }

        v93 += 8;
        v90 -= 64;
        if (!--v92)
        {
          goto LABEL_52;
        }
      }

      v95 = __clz(__rbit64(v94));
      if (v95 - v91 != v90)
      {
        if (-v90 < 0)
        {
          goto LABEL_84;
        }

        v96 = v95 - v90;
        if (v96 >= v91)
        {
          goto LABEL_84;
        }

        if (((*(v202 + v93) >> v95) & 1) == 0)
        {
          goto LABEL_85;
        }

        v97 = v47;
        v98 = (*(v202 + 48) + 16 * v96);
        v100 = *v98;
        v99 = v98[1];
        sub_1E328438C(*(v202 + 56) + 32 * v96, &v199);

        sub_1E329504C(&v199, v203);
        *&v206 = v100;
        *(&v206 + 1) = v99;
        sub_1E329504C(v203, &v207);
        v101 = v206;
        sub_1E329504C(&v207, v204);
        v102 = sub_1E3A7CD30(v101, *(&v101 + 1), v204, v186);

        if (v102)
        {

          MEMORY[0x1E6910BF0](v103);
          if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v196 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();

          result = __swift_destroy_boxed_opaque_existential_1(v204);
          linkURLb = v196;
          v47 = v97;
        }

        else
        {
          result = __swift_destroy_boxed_opaque_existential_1(v204);
          v47 = v97;
        }
      }

      else
      {
LABEL_52:
      }
    }

    if (++v80 == v79)
    {

      v104 = linkURLb;
      v29 = v169;
      v45 = v186;
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

void sub_1E3C28388(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29398, &unk_1E42C5130);
    v1 = sub_1E4207744();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v9 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v10 = *(*(a1 + 48) + v9);
    v25 = *(*(a1 + 56) + v9);
    v11 = v25;
    sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
    v12 = v10;
    v13 = v11;
    swift_dynamicCast();
    sub_1E329504C((v26 + 8), v24);
    sub_1E329504C(v24, v26);
    sub_1E4205F14();
    sub_1E4207B44();
    sub_1E4206014();
    v14 = sub_1E4207BA4();

    v15 = -1 << *(v1 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v6 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v6 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v6 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v6 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v4 &= v4 - 1;
    *(*(v1 + 48) + 8 * v18) = v12;
    sub_1E329504C(v26, (*(v1 + 56) + 32 * v18));
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1E3C2863C(uint64_t a1)
{
  if (*a1 != _TtC8VideosUI13TextViewModel)
  {
    goto LABEL_7;
  }

  if ((sub_1E39C0504(v3) & 1) == 0)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v1 + 264);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = *(a1 + 248);
  v6 = *(a1 + 256);
  v7 = *(a1 + 264);
  if (v4 == 255)
  {
    v25 = OUTLINED_FUNCTION_1_22();
    sub_1E3C270F0(v25, v26, v27);

    if (v7 == 255)
    {
      v17 = 1;
      return v17 & 1;
    }

    v28 = OUTLINED_FUNCTION_1_22();
    sub_1E37AE010(v28, v29, v30);
    goto LABEL_7;
  }

  if (v7 == 255)
  {
LABEL_6:

LABEL_7:
    v17 = 0;
    return v17 & 1;
  }

  v8 = OUTLINED_FUNCTION_1_22();
  sub_1E3C270F0(v8, v9, v10);
  v11 = OUTLINED_FUNCTION_11_103();
  sub_1E3C270F0(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_11_103();
  v17 = sub_1E3C26EE8(v14, v15, v16, v5, v6, v7);
  v18 = OUTLINED_FUNCTION_1_22();
  sub_1E37AE010(v18, v19, v20);

  v21 = OUTLINED_FUNCTION_11_103();
  sub_1E37AE010(v21, v22, v23);
  return v17 & 1;
}

uint64_t sub_1E3C2877C(void *a1, void *a2, char a3)
{
  OUTLINED_FUNCTION_14_0(v3 + 248, a2);
  *(v3 + 248) = a1;
  *(v3 + 256) = a2;
  *(v3 + 264) = a3;
  sub_1E3C270F0(a1, a2, a3);
  sub_1E3CB5F1C();
  return OUTLINED_FUNCTION_1_22();
}

uint64_t sub_1E3C287F4(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v163[0] = sub_1E3C274DC(0, a2);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B848, &unk_1E42A1750);
    sub_1E4148C68(sub_1E3C29A90, v5, v157);

    v4 = v157[0];
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v7 = *(v2 + 248);
  v6 = *(v2 + 256);
  switch(*(v2 + 264))
  {
    case 0:
      v159 = &unk_1F5D5DAC8;
      v160 = &off_1F5D5C998;
      LOBYTE(v157[0]) = 46;

      v8 = OUTLINED_FUNCTION_88();
      sub_1E3C270F0(v8, v9, 0);
      v10 = j__OUTLINED_FUNCTION_18();
      sub_1E39C29F0(v157, v10 & 1);
      v11 = __swift_destroy_boxed_opaque_existential_1(v157);
      v12 = (*(*v4 + 2408))(v11);
      v13 = OUTLINED_FUNCTION_88();
      v17 = sub_1E3C2A180(v13, v14, v15, v16, v12);

      if (!v17)
      {
        goto LABEL_140;
      }

      v18 = v3 + 280;
      v19 = v163;
      goto LABEL_138;
    case 1:
      v31 = objc_allocWithZone(MEMORY[0x1E696AD40]);

      v143 = v6;
      v153 = [v31 init];
      result = sub_1E32AE9B0(v7);
      v156 = result;
      if (!result)
      {
        goto LABEL_134;
      }

      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v33 = 0;
      v155 = v7 & 0xC000000000000001;
      v34 = *(MEMORY[0x1E69DDCE0] + 16);
      v142 = *MEMORY[0x1E69DB650];
      v154 = v7;
      v144 = v3;
      break;
    case 2:

      v20 = OUTLINED_FUNCTION_88();
      sub_1E3C270F0(v20, v21, 2);
      sub_1E3C29AF8(v4, v7);
      v23 = v22;
      v24 = (*(*v4 + 2408))();
      v25 = [v24 0x1FCA6139CLL];

      v26 = OUTLINED_FUNCTION_88();
      sub_1E37AE010(v26, v27, 2);

      OUTLINED_FUNCTION_3_0(v3 + 280, v163);
      v28 = *(v3 + 280);
      *(v3 + 280) = v25;
      goto LABEL_139;
    case 3:

      v29 = OUTLINED_FUNCTION_88();
      sub_1E3C270F0(v29, v30, 3);

      OUTLINED_FUNCTION_3_0(v2 + 280, v163);
      v28 = *(v2 + 280);
      *(v2 + 280) = v7;
      goto LABEL_139;
    default:

      goto LABEL_140;
  }

  do
  {
    if (v155)
    {
      v35 = MEMORY[0x1E6911E60](v33, v7);
    }

    else
    {
      v35 = *(v7 + 8 * v33 + 32);
    }

    if (*v35 != _TtC8VideosUI13TextViewModel)
    {
      goto LABEL_35;
    }

    v38 = sub_1E3C274DC(v36, v37);
    if (v38)
    {
      v39 = v38;
      if (v4 && ([v4 copyWithZone_], sub_1E4207264(), swift_unknownObjectRelease(), type metadata accessor for TextLayout(), (swift_dynamicCast() & 1) != 0))
      {
        v42 = v162[0];
        sub_1E3C37FB4(v39, v40, v41);
      }

      else
      {

        v42 = 0;
      }
    }

    else
    {

      v42 = v4;
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v43 = *(v35 + 264);
    if (!*(v35 + 264) && v42)
    {
      v45 = *(v35 + 248);
      v44 = *(v35 + 256);
      OUTLINED_FUNCTION_12_6();
      v47 = *(v46 + 2408);
      v48 = sub_1E3C27104(v45, v44, 0);
      v49 = v47(v48);
      v50 = sub_1E3C2A11C(v45, v44, v49);

      if (v50)
      {
        goto LABEL_29;
      }

      v43 = *(v35 + 264);
    }

    if (v43 == 2)
    {
      if (v42)
      {
        v51 = *(v35 + 248);
        v52 = *(v35 + 256);
        sub_1E3C27104(v51, v52, 2);
        sub_1E3C29AF8(v42, v51);
        v54 = v53;
        v55 = (*(*v42 + 2408))();
        v50 = [v55 attributedStringWithAttributedString:v54 view:0 updateTextColor:0];
        sub_1E37AE010(v51, v52, 2);

LABEL_29:

        goto LABEL_33;
      }
    }

    else
    {

      if (*(v35 + 264) == 3)
      {
        v50 = *(v35 + 248);
        sub_1E3C27104(v50, *(v35 + 256), 3);
        goto LABEL_33;
      }
    }

    v50 = 0;
LABEL_33:
    v7 = v154;

    if (v50)
    {
      [v153 appendAttributedString_];

      goto LABEL_127;
    }

LABEL_35:
    type metadata accessor for ImageViewModel();
    v56 = swift_dynamicCastClass();
    if (!v56)
    {
      goto LABEL_126;
    }

    v57 = v56;
    v58 = *(*v56 + 392);

    v60 = v58(v59);

    if (v60)
    {
      type metadata accessor for ImageLayout();
      OUTLINED_FUNCTION_20_2();
      v61 = swift_dynamicCastClass();
      if (!v61)
      {
      }
    }

    else
    {
      v61 = 0;
    }

    v157[0] = v61;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B850, qword_1E42E0190);
    sub_1E4148C68(sub_1E3C29AC4, v62, &v161);

    v63 = v161;
    v64.n128_f64[0] = OUTLINED_FUNCTION_1_36();
    v65 = (*(*v57 + 1000))(0, v64);
    if (v66 == 255)
    {
      goto LABEL_123;
    }

    v67 = v65;
    if (v66)
    {
      goto LABEL_122;
    }

    sub_1E3C2A288(v65, 0);
    v68 = [v67 type];
    v151 = v67;
    v69 = [v67 name];
    v149 = sub_1E4205F14();
    v152 = v70;

    v71 = (*(*v57 + 392))();
    if (v68 == 1)
    {
      if (v71)
      {
        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        v73 = swift_dynamicCastClass();
        if (!v73)
        {
        }
      }

      else
      {
        v73 = 0;
      }

      v82 = objc_opt_self();
      v83 = sub_1E4205ED4();
      v84 = [v82 imageForResource:v83 accessibilityDescription:0];

      if (!v84)
      {
        v87 = 0;
        v96 = v151;
LABEL_77:

        goto LABEL_111;
      }

      v85 = objc_allocWithZone(MEMORY[0x1E69DB7F0]);
      v86 = v84;
      v87 = [v85 init];
      [v87 setImage_];
      if (v73)
      {
        OUTLINED_FUNCTION_71_2();
        v89 = COERCE_DOUBLE((*(v88 + 200))());
        if (v90)
        {
          v91 = 0.0;
        }

        else
        {
          v91 = v89;
        }

        v92 = COERCE_DOUBLE((*(*v73 + 304))());
        if (v93)
        {
          v94 = 0.0;
        }

        else
        {
          v94 = v92;
        }

        (*(*v73 + 152))(v157);
        if ((v160 & 1) == 0)
        {
          v95 = v158;
          v96 = v151;
LABEL_76:
          [v87 setBounds_];

          v7 = v154;
          goto LABEL_77;
        }
      }

      else
      {
        v94 = 0.0;
        v91 = 0.0;
      }

      v96 = v151;
      v95 = v34;
      goto LABEL_76;
    }

    if (!v71)
    {
      goto LABEL_69;
    }

    type metadata accessor for ImageLayout();
    OUTLINED_FUNCTION_20_2();
    v74 = swift_dynamicCastClass();
    if (!v74)
    {

LABEL_69:
      v148 = 0;
      v145 = 1;
      goto LABEL_70;
    }

    OUTLINED_FUNCTION_71_2();
    v76 = *(v75 + 2064);

    if (v76(v77) == 27 && sub_1E3C274DC(v74, v78))
    {
      OUTLINED_FUNCTION_12_6();
      if ((*(v79 + 1688))() != 27)
      {
        OUTLINED_FUNCTION_71_2();
        (*(v80 + 2072))();
      }
    }

    OUTLINED_FUNCTION_71_2();
    v71 = (*(v81 + 1944))();
    v148 = v71;
    v145 = 0;
    v7 = v154;
LABEL_70:
    if (sub_1E3C274DC(v71, v72))
    {
      v97 = objc_opt_self();
      OUTLINED_FUNCTION_12_6();
      v99 = (*(v98 + 2408))();
      v100 = [v97 vui:v99 fontFromTextLayout:?];

      v147 = v100;
      if (v100)
      {
        OUTLINED_FUNCTION_12_6();
        v102 = (*(v101 + 1712))();
        if (v102 == 13)
        {
          v105 = 0;
        }

        else
        {
          LOBYTE(v157[0]) = v102;
          LOBYTE(v162[0]) = 0;
          sub_1E376C1A8(v102, v103, v104);
          v105 = sub_1E4205E84();
        }

        if (v145 & 1) != 0 || (OUTLINED_FUNCTION_71_2(), v110 = (*(v109 + 2016))(), (v111))
        {
          v112 = -1;
        }

        else
        {
          v112 = v110;
        }

        v113 = [objc_opt_self() configurationWithFont:v147 scale:v112];
        v106 = v113;
        if (v148)
        {
          if (v105)
          {

            sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
            v106 = v148;
LABEL_92:
            v7 = v154;
            goto LABEL_93;
          }

          v114 = v113;
          v106 = [v148 configurationByApplyingConfiguration_];
        }

        sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
        v148 = v106;
        goto LABEL_92;
      }

      v7 = v154;
    }

    sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
    if (v148)
    {
      v147 = 0;
      v106 = v148;
LABEL_93:
      v107 = v63;
      v108 = v106;
      goto LABEL_94;
    }

    v107 = v63;
    v108 = 0;
    v147 = 0;
    v148 = 0;
LABEL_94:

    v115 = sub_1E37E96E8(v149, v152, v108);
    if (v115)
    {
      v63 = v107;
      v150 = v115;
      if (v145)
      {
        v116 = v115;
        v117 = 0.0;
        v3 = v144;
      }

      else
      {
        v146 = v107;
        OUTLINED_FUNCTION_71_2();
        v119 = *(v118 + 672);
        v116 = v120;
        v121 = v119();
        v3 = v144;
        if (v121)
        {

          v122 = sub_1E3C7762C(2u);
          v116 = v122;
        }

        OUTLINED_FUNCTION_71_2();
        v124 = (*(v123 + 480))();
        v63 = v146;
        if (v124 != 4 && (sub_1E3C29EC4(v124, 1, v125) & 1) != 0 && v147)
        {
          v127 = v147;
          [v127 capHeight];
          [v116 size];
          VUIRoundValue();
          v129 = v128;

          v117 = v129 * 0.5;
        }

        else
        {
          OUTLINED_FUNCTION_71_2();
          (*(v126 + 152))(v157);
          if (v160)
          {
            v117 = 0.0;
          }

          else
          {
            v117 = v158;
          }
        }
      }

      v87 = [objc_opt_self() textAttachmentWithImage_];
      if (v87)
      {
        [v116 size];
        v131 = v130;
        [v116 size];
        [v87 setBounds_];
      }

      v96 = v151;

      v7 = v154;
      v115 = v150;
    }

    else
    {
      v87 = 0;
      v96 = v151;
      v63 = v107;
      v3 = v144;
    }

LABEL_111:

    sub_1E379098C(v96, 0);
    if (!v87)
    {
      v65 = v96;
      v66 = 0;
LABEL_122:
      sub_1E379098C(v65, v66);
LABEL_123:
      v133 = 0;
      goto LABEL_124;
    }

    sub_1E3280A90(0, &unk_1EE23AFE0, 0x1E696AD40);
    v133 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    if (v63)
    {
      v134 = (*(*v63 + 672))();
      if (v134)
      {
        v135 = v134;
        [v133 addAttribute:v142 value:v134 range:{0, objc_msgSend(v133, sel_length)}];
      }
    }

    LOBYTE(v162[0]) = 2;
    (*(*v57 + 776))(v157, v162, &unk_1F5D5D408, &off_1F5D5C818);
    if (v159)
    {
      if (swift_dynamicCast())
      {
        v136 = v162[0];
        v137 = v162[1];
        sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);
        v138 = sub_1E3763FC8(v136, v137);
        if (v63 && (v139 = (*(*v63 + 1896))(), v139 != 2) && sub_1E3B65750(v139 & 1, 1))
        {
          [v133 insertAttributedString:v138 atIndex:1];
        }

        else
        {
          [v133 insertAttributedString:v138 atIndex:0];
        }

        sub_1E379098C(v151, 0);
      }

      else
      {

        sub_1E379098C(v151, 0);
      }
    }

    else
    {

      sub_1E379098C(v151, 0);
      sub_1E329505C(v157);
    }

LABEL_124:

    if (v133)
    {
      [v153 appendAttributedString_];

      goto LABEL_127;
    }

LABEL_126:

LABEL_127:
    ++v33;
  }

  while (v156 != v33);
LABEL_134:
  sub_1E37AE010(v7, v143, 1);
  [v153 copy];
  sub_1E4207264();

  swift_unknownObjectRelease();

  sub_1E3280A90(0, &qword_1EE23B1B0, 0x1E696AAB0);
  if (swift_dynamicCast())
  {
    v17 = v162[0];
  }

  else
  {
    v17 = 0;
  }

  v18 = v3 + 280;
  v19 = v162;
LABEL_138:
  OUTLINED_FUNCTION_3_0(v18, v19);
  v28 = *(v3 + 280);
  *(v3 + 280) = v17;
LABEL_139:

LABEL_140:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v140 = *(v3 + 280);
  v141 = v140;
  return v140;
}