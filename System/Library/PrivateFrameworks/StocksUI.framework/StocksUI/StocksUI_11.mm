uint64_t sub_220589CFC(void *a1, void (*a2)(char *))
{
  sub_2204AD9C0(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_220589E28()
{
  result = qword_27CF56E18;
  if (!qword_27CF56E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56E18);
  }

  return result;
}

unint64_t sub_220589EC4()
{
  result = qword_27CF56E20;
  if (!qword_27CF56E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56E20);
  }

  return result;
}

uint64_t sub_220589F6C(uint64_t a1)
{
  sub_2204AD9C0(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2205892DC(a1, v1 + v4, v1 + v5, *(v1 + ((v5 + 111) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 111) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_22058A05C()
{
  result = qword_27CF56E28;
  if (!qword_27CF56E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56E28);
  }

  return result;
}

uint64_t TextInputAlert.__allocating_init(type:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_22058AD54(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t TextInputAlert.init(type:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_22058ACC0(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t TextInputAlert.onSubmit(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);
  v4 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  sub_2204DA45C(v5, v4);
}

uint64_t TextInputAlert.onCancel(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);
  v4 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  sub_2204DA45C(v5, v4);
}

uint64_t TextInputAlert.onValidateText(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

void TextInputAlert.present(from:animated:completion:)(void *a1, char a2, void *a3, uint64_t a4)
{
  v9 = sub_22058A3C0();
  v10 = *(v4 + 104);
  *(v4 + 104) = v9;
  v11 = v9;

  if (a3)
  {
    v12[4] = a3;
    v12[5] = a4;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_2204C35E8;
    v12[3] = &block_descriptor_4;
    a3 = _Block_copy(v12);
  }

  [a1 presentViewController:v11 animated:a2 & 1 completion:a3];
  _Block_release(a3);
}

id sub_22058A3C0()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  (*(v3 + 8))(v2, v3);
  v4 = *(v0 + 5);
  v5 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, *(v1 + 5));
  (*(v5 + 16))(v4, v5);
  v6 = sub_22089132C();

  v7 = sub_22089132C();

  v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;
  v11 = *(v1 + 5);
  v12 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v11);
  v13 = *(v12 + 24);

  v13(v11, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22058AF30;
  *(v14 + 24) = v10;

  v15 = sub_22089132C();

  v43 = sub_2204D48F4;
  v44 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2205659F0;
  v42 = &block_descriptor_11;
  v16 = _Block_copy(&aBlock);

  v37 = objc_opt_self();
  v17 = [v37 actionWithTitle:v15 style:0 handler:v16];
  _Block_release(v16);

  [v8 addAction_];
  v18 = v17;
  [v8 setPreferredAction_];
  v19 = type metadata accessor for TextFieldValidator();
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC8StocksUI18TextFieldValidator_submit];
  *v21 = nullsub_1;
  v21[1] = 0;
  v22 = &v20[OBJC_IVAR____TtC8StocksUI18TextFieldValidator_isTextValid];
  *v22 = sub_22058AF38;
  v22[1] = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v24 = &v20[OBJC_IVAR____TtC8StocksUI18TextFieldValidator_setAllowSubmission];
  *v24 = sub_22058AF90;
  v24[1] = v23;
  v38.receiver = v20;
  v38.super_class = v19;

  v25 = objc_msgSendSuper2(&v38, sel_init);
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  *(v26 + 24) = v25;
  v43 = sub_22058AF98;
  v44 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2205659F0;
  v42 = &block_descriptor_20_0;
  v27 = _Block_copy(&aBlock);

  v28 = v25;

  [v8 addTextFieldWithConfigurationHandler_];
  _Block_release(v27);
  v29 = *(v1 + 5);
  v30 = *(v1 + 6);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v29);
  (*(v30 + 32))(v29, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v1;
  *(v31 + 24) = v28;

  v32 = v28;
  v33 = sub_22089132C();

  v43 = sub_22058AFA0;
  v44 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v40 = 1107296256;
  v41 = sub_2205659F0;
  v42 = &block_descriptor_26;
  v34 = _Block_copy(&aBlock);

  v35 = [v37 actionWithTitle:v33 style:1 handler:v34];
  _Block_release(v34);

  [v8 addAction_];

  return v8;
}

void sub_22058A924(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong textFields];

  if (!v5)
  {
    return;
  }

  sub_22058AFA8();
  v6 = sub_2208916EC();

  if (v6 >> 62)
  {
    if (sub_2208926AC())
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223D8A700](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v8 text];

  if (v9)
  {
    v10 = sub_22089136C();
    v12 = v11;

    v13 = a2[7];
    if (v13)
    {
      v14 = a2[8];

      v13(v10, v12);
      sub_2204DA45C(v13, v14);
    }

    v15 = a2[13];
    a2[13] = 0;
  }
}

uint64_t sub_22058AAB0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2[5];
  v6 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v5);
  (*(v6 + 40))(a1, 0, v5, v6);
  [a1 setDelegate_];
  v7 = *(a3 + OBJC_IVAR____TtC8StocksUI18TextFieldValidator_setAllowSubmission);
  v8 = *(a3 + OBJC_IVAR____TtC8StocksUI18TextFieldValidator_isTextValid);
  v9 = [a1 text];
  if (v9)
  {
    v10 = v9;
    v11 = sub_22089136C();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xE000000000000000;
  }

  v14 = v8(v11, v13);

  return v7(v14 & 1);
}

void sub_22058ABC0(uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    v4 = a2[10];

    v3(v5);
    sub_2204DA45C(v3, v4);
  }

  v6 = a2[13];
  a2[13] = 0;
}

uint64_t TextInputAlert.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2204DA45C(*(v0 + 56), *(v0 + 64));
  sub_2204DA45C(*(v0 + 72), *(v0 + 80));

  return v0;
}

uint64_t TextInputAlert.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_2204DA45C(*(v0 + 56), *(v0 + 64));
  sub_2204DA45C(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_22058ACC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 16));
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 88) = sub_22045F7BC;
  return a2;
}

uint64_t sub_22058AD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  *(v10 + 40) = a3;
  *(v10 + 48) = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 16));
  (*(v7 + 32))(boxed_opaque_existential_1, v9, a3);
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  *(v10 + 88) = sub_22045F7BC;
  return v10;
}

uint64_t sub_22058AF38(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  LOBYTE(a2) = v5(a1, a2);

  return a2 & 1;
}

unint64_t sub_22058AFA8()
{
  result = qword_27CF56E30;
  if (!qword_27CF56E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CF56E30);
  }

  return result;
}

uint64_t type metadata accessor for StockChartDescriptor(uint64_t a1)
{
  result = qword_28128ED08;
  if (!qword_28128ED08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22058B084(uint64_t a1)
{
  sub_22088665C();
  if (v2 <= 0x3F)
  {
    sub_22058B138(319, v1);
    if (v3 <= 0x3F)
    {
      sub_2208854FC();
      if (v4 <= 0x3F)
      {
        sub_2204ADED0();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22058B138(uint64_t a1, __n128 a2)
{
  if (!qword_28127EB58)
  {
    sub_2208865FC();
    v2 = sub_2208917AC();
    if (!v3)
    {
      atomic_store(v2, &qword_28127EB58);
    }
  }
}

id sub_22058B190()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for ForYouTitleView()) initWithFrame_];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_22058B20C(uint64_t a1, uint64_t a2)
{
  sub_220503B68(0, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14[-v4];
  v6 = sub_22088C32C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastLayoutOptions;
    swift_beginAccess();
    sub_22058BB60(v12 + v13, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      sub_22058BBF4(v5);
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      if (*(v12 + OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastTopInset + 8))
      {
        (*(v7 + 8))(v10, v6);
      }

      else
      {
        sub_22058B43C(v10, *(v12 + OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastTopInset));

        (*(v7 + 8))(v10, v6);
      }
    }
  }
}

uint64_t sub_22058B43C(uint64_t a1, double a2)
{
  v3 = v2;
  v67 = a1;
  v5 = type metadata accessor for ForYouTitleViewLayoutOptions(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForYouTitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v68 = (&v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_220503B68(0, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v66 = &v64 - v15;
  v16 = type metadata accessor for AttributionSource(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = v2[13];
  v21 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v20);
  (*(v21 + 8))(v20, v21);
  sub_2208886DC();

  v65 = v2[15];
  sub_22046DA2C((v2 + 16), &v70);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  swift_unknownObjectRetain();
  v24 = [v23 bundleForClass_];
  v64 = sub_220884CAC();

  v25 = [v23 bundleForClass_];
  v26 = sub_220884CAC();
  v28 = v27;

  sub_220503B68(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_220899360;
  v30 = *v19;
  v31 = v19[1];
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_22048D860();
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;

  v32 = sub_22089139C();
  v34 = v33;

  sub_22058BC80(v19, type metadata accessor for AttributionSource);
  v69[0] = v26;
  v69[1] = v28;
  v69[2] = v32;
  v69[3] = v34;
  v69[4] = 0;
  v69[5] = v65;
  v35 = sub_22088C32C();
  v36 = *(v35 - 8);
  v37 = v66;
  (*(v36 + 16))(v66, v67, v35);
  (*(v36 + 56))(v37, 0, 1, v35);
  v38 = OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastLayoutOptions;
  swift_beginAccess();
  sub_22058BCE0(v37, v3 + v38);
  swift_endAccess();
  v39 = (v3 + OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastTopInset);
  *v39 = a2;
  *(v39 + 8) = 0;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  sub_22088C21C();
  v41 = v40;
  v43 = v42;
  v44 = sub_22088C20C();
  MEMORY[0x223D89BD0](v44, 0.0, v45, v46, v47, v48);
  sub_220891A5C();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  sub_22088C1DC();
  sub_22088C1FC();
  v58 = v57;
  v59 = sub_22088C24C();
  v60 = sub_22088C2AC();
  *v9 = v41;
  *(v9 + 1) = v43;
  *(v9 + 2) = v50;
  *(v9 + 3) = v52;
  *(v9 + 4) = v54;
  *(v9 + 5) = v56;
  *&v9[v6[9]] = v58;
  *&v9[v6[10]] = v59;
  *&v9[v6[11]] = v60;
  v9[v6[12]] = 0;
  v9[v6[13]] = 0;
  *&v9[v6[14]] = 0x4000000000000000;
  *&v9[v6[15]] = 0x4010000000000000;
  *&v9[v6[16]] = a2;
  v61 = v68;
  sub_220523318(v69, v9, v68);
  sub_22058BC80(v9, type metadata accessor for ForYouTitleViewLayoutOptions);
  v62 = sub_22058B190();
  sub_22051481C(v69, v61, v62);

  [*(v3[2] + OBJC_IVAR____TtC8StocksUI15ForYouTitleView_separatorLayer) setHidden_];
  sub_22058BC80(v61, type metadata accessor for ForYouTitleViewLayoutAttributes);
  return sub_220515C00(v69);
}

uint64_t sub_22058BABC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  sub_22058BBF4(v0 + OBJC_IVAR____TtC8StocksUI23ForYouTitleViewProvider_lastLayoutOptions);

  return swift_deallocClassInstance();
}

uint64_t sub_22058BB60(uint64_t a1, uint64_t a2)
{
  sub_220503B68(0, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22058BBF4(uint64_t a1)
{
  sub_220503B68(0, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22058BC80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22058BCE0(uint64_t a1, uint64_t a2)
{
  sub_220503B68(0, &qword_2812979F8, MEMORY[0x277D6DE08], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_22058BDF0(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_22058BE34()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CF6CEA8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058BEAC()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() _systemImageNamed_];

  if (v1)
  {
    v2 = [v1 imageWithRenderingMode_];

    qword_27CF6CEB0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058BF6C()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    v2 = [v1 imageWithRenderingMode_];

    qword_27CF6CEC0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058C054()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_2812B6928 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058C0F4()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CF6CEE0 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058C16C()
{
  v0 = sub_22089132C();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    qword_27CF6CEE8 = v1;
  }

  else
  {
    __break(1u);
  }
}

void sub_22058C240(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_22089132C();
  v6 = [objc_opt_self() systemImageNamed_];

  if (v6)
  {
    *a4 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_22058C2F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Images();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22058C328(double a1, double a2, double a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v7 = sub_22089132C();
  v8 = [v6 initWithBundleIdentifier_];

  v9 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a1 scale:{a2, a3}];
  v10 = [v8 imageForDescriptor_];
  v11 = v10;
  if (v10 && (v12 = [v10 CGImage]) != 0)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    return v14;
  }

  else
  {
    if (qword_2812980C8 != -1)
    {
      swift_once();
    }

    v16 = sub_22088A84C();
    __swift_project_value_buffer(v16, qword_2812B6CD0);
    v17 = sub_22088A82C();
    v18 = sub_220891ADC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22043F000, v17, v18, "Failed to create app icon image from IconServices", v19, 2u);
      MEMORY[0x223D8B7F0](v19, -1, -1);
    }

    return 0;
  }
}

void sub_22058C544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  v16 = objc_allocWithZone(MEMORY[0x277D82BB8]);

  *(v15 + 16) = [v16 init];
  type metadata accessor for StockListViewController(0);
  sub_22046F5CC(&qword_27CF56E50, type metadata accessor for StockListViewController, &unk_2208B2498);
  sub_22088BF5C();
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = v15;
  v17[7] = sub_22058D744;
  v17[8] = v14;

  sub_22088868C();

  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  swift_beginAccess();
  if (*(v15 + 16))
  {
    v18 = *(v15 + 16);

    sub_2208882EC();

    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22058C754(uint64_t a1, uint64_t a2, void (*a3)(char *), __n128 a4)
{
  sub_22058D67C(0, a4);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2208854AC();
  (*(*(v12 - 8) + 16))(v11, a1, v12);
  v13 = *(v8 + 56);
  sub_22046B36C(0);
  (*(*(v14 - 8) + 16))(&v11[v13], a2, v14);
  a3(v11);
  return sub_22058D7C4(v11, sub_22058D67C);
}

uint64_t sub_22058C880(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t (*a4)(char *), uint64_t a5, uint64_t a6, void (*a7)(char *, char *), uint64_t a8)
{
  v47 = a8;
  v48 = a7;
  v46 = a6;
  v52 = a4;
  v53 = a5;
  v10 = MEMORY[0x277D83D88];
  sub_22058D760(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v50 = &v45 - v13;
  v51 = sub_2208854AC();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v14);
  v45 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22058D760(0, &qword_281297F78, sub_22046B36C, v10);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v45 - v18;
  sub_22046B36C(0);
  v21 = v20;
  v54 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1EF0(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BB48(0, &qword_281297DB0, MEMORY[0x277D6D710]);
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v45 - v33;
  sub_22059BCB8(a2, a3, v28);
  if ((*(v31 + 48))(v28, 1, v30) == 1)
  {
    return sub_22058D7C4(v28, sub_2204A1EF0);
  }

  (*(v31 + 32))(v34, v28, v30);
  sub_22059C108(v52, v53, v19);
  if ((*(v54 + 48))(v19, 1, v21) == 1)
  {
    (*(v31 + 8))(v34, v30);
    v36 = &qword_281297F78;
    v37 = sub_22046B36C;
    v38 = v19;
    return sub_2205169AC(v38, v36, v37);
  }

  (*(v54 + 32))(v24, v19, v21);
  sub_22045BB48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v39 = v50;
  sub_22088E7EC();
  v40 = v49;
  v41 = v51;
  if ((*(v49 + 48))(v39, 1, v51) == 1)
  {
    (*(v54 + 8))(v24, v21);
    (*(v31 + 8))(v34, v30);
    v36 = &qword_2812993D0;
    v37 = MEMORY[0x277CC9AF8];
    v38 = v39;
    return sub_2205169AC(v38, v36, v37);
  }

  v42 = v45;
  (*(v40 + 32))(v45, v39, v41);
  v43 = v46;
  swift_beginAccess();
  v44 = *(v43 + 16);
  *(v43 + 16) = 0;

  v48(v42, v24);
  (*(v40 + 8))(v42, v41);
  (*(v54 + 8))(v24, v21);
  return (*(v31 + 8))(v34, v30);
}

uint64_t sub_22058CE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a2;
  v16[2] = a1;
  swift_getObjectType();
  v4 = sub_22088CBBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BB48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v16 - v13;
  v16[3] = a3;
  sub_22046F5CC(&qword_27CF56E50, type metadata accessor for StockListViewController, &unk_2208B2498);
  sub_22088BF9C();
  sub_22088CBAC();
  sub_22046F5CC(&qword_28128ACA0, type metadata accessor for StockListViewController, &unk_2208B2590);
  sub_22088DA7C();
  (*(v5 + 8))(v8, v4);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_22058D028(void *a1)
{
  sub_22058D760(0, &qword_27CF56E40, sub_22058D67C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_220888F2C();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22058D6EC;
  *(v3 + 24) = v2;
  v4 = a1;
  v5 = sub_220888D9C();
  v6 = sub_220888E4C();

  return v6;
}

uint64_t sub_22058D194()
{
  sub_22045BB48(0, &qword_281297DB0, MEMORY[0x277D6D710]);
  sub_22088B2AC();
  if (v7)
  {
    if (v7 != 1)
    {
      return 0;
    }

    v0 = 0;
  }

  else
  {
    v0 = 1;
  }

  sub_2204BE754(v2, v3, v4, v5, v6, v7);
  return v0;
}

void sub_22058D220(uint64_t a1, void (*a2)(id))
{
  sub_22058D5E8();
  sub_22089264C();
  v3 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v4 = sub_22089132C();

  v5 = [v3 initWithMessage_];

  a2(v5);
}

void sub_22058D388(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22089132C();
  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v15, &v16);
    type metadata accessor for StockListViewController(0);
    v8 = swift_dynamicCast();
    MEMORY[0x28223BE20](v8, v9);
    sub_220888FBC();
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    v11 = sub_220888D9C();
    sub_220888E4C();

    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3;

    v13 = sub_220888D9C();
    sub_220888E9C();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22058D5E8()
{
  result = qword_28127DE30;
  if (!qword_28127DE30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28127DE30);
  }

  return result;
}

void sub_22058D67C(uint64_t a1, __n128 a2)
{
  if (!qword_27CF56E48)
  {
    sub_2208854AC();
    sub_22046B36C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF56E48);
    }
  }
}

uint64_t sub_22058D6F4(uint64_t a1, __n128 a2)
{
  v4 = *(v2 + 16);
  sub_22058D67C(0, a2);
  return v4(a1, a1 + *(v5 + 48));
}

void sub_22058D760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22058D7C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22058D84C(void *a1)
{
  sub_22058E29C(0, &qword_27CF56E88, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22058E188();
  sub_220892A5C();
  v10[15] = 0;
  sub_22088F39C();
  sub_22058E300(&qword_27CF56E90, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_22089283C();
  if (!v1)
  {
    type metadata accessor for CuratedForYouFeedGroup(0);
    v10[14] = 1;
    sub_22089280C();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_22058DA18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_22088F39C();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22058E29C(0, &qword_27CF56E70, MEMORY[0x277D844C8]);
  v31 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v26 - v10;
  v12 = type metadata accessor for CuratedForYouFeedGroup(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22058E188();
  sub_220892A4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v15;
  v16 = v28;
  v17 = v29;
  v33 = 0;
  sub_22058E300(&qword_27CF56E80, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  v18 = v30;
  sub_22089279C();
  (*(v17 + 32))(v26, v7, v18);
  v32 = 1;
  v19 = sub_22089277C();
  v21 = v20;
  (*(v16 + 8))(v11, v31);
  v23 = v26;
  v22 = v27;
  v24 = &v26[*(v12 + 20)];
  *v24 = v19;
  v24[1] = v21;
  sub_22058E1DC(v23, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22058E240(v23);
}

uint64_t sub_22058DD58()
{
  if (*v0)
  {
    return 0x65707974627573;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

void sub_22058DD9C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v6 || (sub_2208928BC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2208928BC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_22058DE88(uint64_t a1)
{
  v2 = sub_22058E188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22058DEC4(uint64_t a1)
{
  v2 = sub_22058E188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22058DF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22058E300(&qword_27CF56E68, type metadata accessor for CuratedForYouFeedGroup, &unk_22089BBE0);

  return MEMORY[0x282191948](a1, a2, a3, v6);
}

uint64_t sub_22058DFD0(uint64_t a1)
{
  v2 = sub_22058E300(&qword_27CF56E68, type metadata accessor for CuratedForYouFeedGroup, &unk_22089BBE0);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_22058E03C(uint64_t a1)
{
  MEMORY[0x223D89680](*(v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 8));
  MEMORY[0x223D89680](41, 0xE100000000000000);
  return 0x2064657461727543;
}

unint64_t sub_22058E188()
{
  result = qword_27CF56E78;
  if (!qword_27CF56E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56E78);
  }

  return result;
}

uint64_t sub_22058E1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedForYouFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22058E240(uint64_t a1)
{
  v2 = type metadata accessor for CuratedForYouFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22058E29C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22058E188();
    v7 = a3(a1, &type metadata for CuratedForYouFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_22058E300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22058E35C()
{
  result = qword_27CF56E98;
  if (!qword_27CF56E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56E98);
  }

  return result;
}

unint64_t sub_22058E3B4()
{
  result = qword_27CF56EA0;
  if (!qword_27CF56EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56EA0);
  }

  return result;
}

unint64_t sub_22058E40C()
{
  result = qword_27CF56EA8;
  if (!qword_27CF56EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56EA8);
  }

  return result;
}

uint64_t sub_22058E460(unsigned __int8 *a1, int a2, uint64_t a3, char *a4)
{
  LODWORD(v306) = a2;
  v325 = a1;
  v7 = *a3;
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);
  v294 = *(a3 + 8);
  v295 = v7;
  sub_220891EAC();
  [a4 setCenter_];
  v292 = v9;
  v293 = v8;
  [a4 setBounds_];
  sub_22048BC00();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22089BD60;
  *(v10 + 32) = swift_getKeyPath();
  *(v10 + 40) = swift_getKeyPath();
  *(v10 + 48) = swift_getKeyPath();
  *(v10 + 56) = swift_getKeyPath();
  *(v10 + 64) = swift_getKeyPath();
  *(v10 + 72) = swift_getKeyPath();
  *(v10 + 80) = swift_getKeyPath();
  *(v10 + 88) = swift_getKeyPath();
  sub_2207E1384(v10);
  v12 = v11;
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v309 = v4;
  sub_220590100(7, v12, a3, a4);

  v13 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup];
  v14 = *(a3 + 80);
  v15 = *(a3 + 88);
  v16 = *(a3 + 128);
  v17 = *(a3 + 136);
  v18 = *(a3 + 168);
  v19 = *(a3 + 176);
  v305 = *(a3 + 184);
  [v13 setBounds_];
  v20 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1];
  v21 = *(a3 + 248);
  v22 = *(a3 + 256);
  v23 = *(a3 + 280);
  v311 = *(a3 + 272);
  v24 = *(a3 + 296);
  v298 = *(a3 + 288);
  v299 = v23;
  v297 = v24;
  v25 = *(a3 + 312);
  v326 = *(a3 + 304);
  v324 = v25;
  v26 = *(a3 + 320);
  v300 = *(a3 + 328);
  v301 = v26;
  v27 = *(a3 + 336);
  v318 = *(a3 + 344);
  v319 = v27;
  v28 = *(a3 + 352);
  v316 = *(a3 + 360);
  v317 = v28;
  [v20 setBounds_];
  v29 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2];
  v30 = *(a3 + 384);
  v31 = *(a3 + 392);
  v32 = *(a3 + 408);
  v304 = *(a3 + 416);
  v33 = *(a3 + 424);
  v302 = *(a3 + 432);
  *&v303 = v33;
  v35 = *(a3 + 440);
  v34 = *(a3 + 448);
  v314 = v32;
  v315 = v35;
  v310 = v34;
  v36 = *(a3 + 456);
  v307 = *(a3 + 464);
  v308 = v36;
  v37 = *(a3 + 472);
  v322 = *(a3 + 480);
  v323 = v37;
  v38 = *(a3 + 488);
  v320 = *(a3 + 496);
  v321 = v38;
  [v29 setBounds_];
  v39 = *(a3 + 664);
  v40 = *(a3 + 672);
  v290 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer];
  [v290 setBounds_];
  v288 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon;
  v41 = *&v13[OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon];
  sub_220891EAC();
  [v41 &selRef_supportsMultipleScenes];
  [v41 setBounds_];

  v312 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_welcomeLabel;
  v313 = v13;
  v42 = *&v13[OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_welcomeLabel];
  sub_220891EAC();
  [v42 &selRef_supportsMultipleScenes];
  [v42 setBounds_];

  v43 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView];
  v44 = *(a3 + 48);
  v45 = *(a3 + 56);
  sub_220891EAC();
  [v43 &selRef_supportsMultipleScenes];
  v289 = v43;
  [v43 setBounds_];
  v46 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator];
  v47 = *(a3 + 208);
  v48 = *(a3 + 216);
  sub_220891EAC();
  [v46 &selRef_supportsMultipleScenes];
  v287 = v46;
  [v46 setBounds_];
  v286 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image;
  v49 = *&v20[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image];
  sub_220891EAC();
  [v49 &selRef_supportsMultipleScenes];
  [v49 setBounds_];

  v311 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title;
  v50 = *&v20[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
  sub_220891EAC();
  [v50 &selRef_supportsMultipleScenes];
  [v50 setBounds_];

  v324 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
  v326 = v20;
  v51 = *&v20[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb];
  sub_220891EAC();
  [v51 &selRef_supportsMultipleScenes];
  [v51 setBounds_];

  v291 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image;
  v52 = *&v29[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image];
  sub_220891EAC();
  [v52 &selRef_supportsMultipleScenes];
  [v52 setBounds_];

  v314 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title;
  v53 = *&v29[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
  sub_220891EAC();
  [v53 &selRef_supportsMultipleScenes];
  [v53 setBounds_];

  v307 = *&v29;
  v315 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
  v54 = *&v29[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb];
  sub_220891EAC();
  [v54 &selRef_supportsMultipleScenes];
  [v54 setBounds_];

  v55 = *(a3 + 584);
  v56 = *(a3 + 616);
  v335 = *(a3 + 600);
  v336[0] = v56;
  *(v336 + 9) = *(a3 + 625);
  v57 = *(a3 + 520);
  v58 = *(a3 + 552);
  v331 = *(a3 + 536);
  v332 = v58;
  v59 = *(a3 + 552);
  v60 = *(a3 + 584);
  v333 = *(a3 + 568);
  v334 = v60;
  v61 = *(a3 + 520);
  v329 = *(a3 + 504);
  v330 = v61;
  v345 = v55;
  v346 = v335;
  *v347 = *(a3 + 616);
  *&v347[9] = *(a3 + 625);
  v342 = v331;
  v343 = v59;
  v344 = v333;
  v340 = v329;
  v341 = v57;
  if (sub_220590AEC(&v340) != 1)
  {
    v62 = *(&v343 + 1);
    v63 = *&v344;
    v64 = *(&v345 + 1);
    v310 = *(&v346 + 1);
    v65 = *&v346;
    v308 = *v347;
    v304 = *&v347[8];
    *&v303 = *&v347[16];
    v66 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3];
    [v66 setBounds_];
    v67 = *&v66[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image];
    sub_220891EAC();
    [v67 &selRef_supportsMultipleScenes];
    [v67 setBounds_];

    v68 = *&v66[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
    sub_220891EAC();
    [v68 &selRef_supportsMultipleScenes];
    [v68 setBounds_];

    v69 = *&v66[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb];
    sub_220891EAC();
    [v69 &selRef_supportsMultipleScenes];
    [v69 setBounds_];
  }

  v70 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyLink];
  v71 = *(a3 + 768);
  v72 = *(a3 + 776);
  sub_220891EAC();
  [v70 &selRef_supportsMultipleScenes];
  [v70 setBounds_];
  v73 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_continueButton];
  v74 = *(a3 + 704);
  v75 = *(a3 + 712);
  sub_220891EAC();
  [v73 &selRef_supportsMultipleScenes];
  v310 = v73;
  [v73 setBounds_];
  v76 = sub_22088F0DC();
  v77 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyIcon];
  v285 = v70;
  if (v76)
  {
    [v70 frame];
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v86 = *(a3 + 728);
    v87 = *(a3 + 736);
    v88 = *(a3 + 744);
    v89 = [v77 effectiveUserInterfaceLayoutDirection];
    v90 = v311;
    v91 = v79;
    v92 = v81;
    v93 = v83;
    v94 = v85;
    if (v89 == 1)
    {
      MinX = CGRectGetMaxX(*&v91) - v87;
    }

    else
    {
      MinX = CGRectGetMinX(*&v91);
    }

    [v77 setFrame_];
  }

  else
  {
    v87 = *(a3 + 736);
    v88 = *(a3 + 744);
    sub_220891EAC();
    [v77 &selRef_supportsMultipleScenes];
    v90 = v311;
  }

  [v77 setBounds_];
  v308 = v77;
  v96 = v309[5];
  v97 = v309[6];
  v98 = __swift_project_boxed_opaque_existential_1(v309 + 2, v96);
  v99 = *(v96 - 8);
  *&v101 = MEMORY[0x28223BE20](v98, v100).n128_u64[0];
  v103 = v280 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = [a4 traitCollection];
  v309 = a4;
  v105 = v104;
  (*(*(v97 + 8) + 8))();

  (*(v97 + 16))(v327, v306 & 1, v96, v97);
  (*(v99 + 8))(v103, v96);
  [*&v313[v312] setAttributedText_];
  v106 = *&v326[v90];
  v107 = __swift_project_boxed_opaque_existential_1(v327, v328);
  v108 = *(v325 + 6);
  v296 = *(v325 + 5);
  v281 = v108;
  v109 = *(v325 + 7);
  v283 = *(v325 + 8);
  v284 = v109;
  v110 = *v107;
  v111 = objc_allocWithZone(MEMORY[0x277D74240]);
  v282 = v106;
  v112 = [v111 init];
  v113 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v114 = *MEMORY[0x277D76A20];
  v115 = sub_220891F2C();
  [v115 lineHeight];
  v117 = v116;

  [v112 setMinimumLineHeight_];
  v305 = v114;
  v118 = sub_220891F2C();
  [v118 &selRef_defaultCalendarForNewEvents + 6];
  v120 = v119;

  [v112 setMaximumLineHeight_];
  [v112 setLineBreakStrategy_];
  sub_2204A5DF0(0);
  v304 = v121;
  v122 = swift_allocObject();
  v303 = xmmword_22089B140;
  *(v122 + 16) = xmmword_22089B140;
  v123 = *MEMORY[0x277D740A8];
  *(v122 + 32) = *MEMORY[0x277D740A8];
  v302 = v123;
  v306 = v113;
  v124 = sub_220891F2C();
  v125 = MEMORY[0x277D740C0];
  *(v122 + 40) = v124;
  v126 = *v125;
  *(v122 + 64) = v113;
  *(v122 + 72) = v126;
  v128 = v110[5];
  v127 = v110[6];
  __swift_project_boxed_opaque_existential_1(v110 + 2, v128);
  v129 = *(v127 + 16);
  v130 = *(v129 + 40);
  v301 = v126;
  v131 = v130(v128, v129);
  *&v132 = COERCE_DOUBLE(sub_22044D56C(0, &qword_28127E530, 0x277D75348));
  v300 = *&v132;
  *(v122 + 80) = v131;
  v133 = *MEMORY[0x277D74118];
  *(v122 + 104) = *&v132;
  *(v122 + 112) = v133;
  v299 = sub_22044D56C(0, &qword_28127E648, 0x277D74240);
  *(v122 + 144) = v299;
  *(v122 + 120) = v112;
  v297 = v133;
  v134 = v112;
  sub_2204A5EAC(v122);
  swift_setDeallocating();
  sub_2204A5D84(0);
  v298 = v135;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v136 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v137 = sub_22089132C();
  type metadata accessor for Key(0);
  v296 = v138;
  v139 = sub_2204A63B8();
  v140 = sub_22089125C();

  v141 = [v136 initWithString:v137 attributes:v140];

  v142 = v282;
  [v282 setAttributedText_];

  v143 = *&v326[v324];
  __swift_project_boxed_opaque_existential_1(v327, v328);
  v144 = v143;
  v145 = sub_2207CB8FC(v284, v283);
  [v144 setAttributedText_];

  v146 = v307;
  v147 = *(*&v307 + v314);
  v148 = __swift_project_boxed_opaque_existential_1(v327, v328);
  v149 = *(v325 + 9);
  v280[1] = *(v325 + 10);
  v281 = v149;
  v150 = *(v325 + 11);
  v283 = *(v325 + 12);
  v284 = v150;
  v151 = *v148;
  v152 = objc_allocWithZone(MEMORY[0x277D74240]);
  v282 = v147;
  v153 = [v152 init];
  v154 = v306;
  v155 = sub_220891F2C();
  [v155 lineHeight];
  v157 = v156;

  [v153 setMinimumLineHeight_];
  v158 = v154;
  v159 = sub_220891F2C();
  [v159 lineHeight];
  v161 = v160;

  [v153 setMaximumLineHeight_];
  [v153 setLineBreakStrategy_];
  v162 = swift_allocObject();
  *(v162 + 16) = v303;
  *(v162 + 32) = v302;
  *(v162 + 40) = sub_220891F2C();
  v163 = v301;
  *(v162 + 64) = v158;
  *(v162 + 72) = v163;
  v165 = v151[5];
  v164 = v151[6];
  __swift_project_boxed_opaque_existential_1(v151 + 2, v165);
  *(v162 + 80) = (*(*(v164 + 16) + 40))(v165);
  v166 = v297;
  *(v162 + 104) = v300;
  *(v162 + 112) = v166;
  *(v162 + 144) = v299;
  *(v162 + 120) = v153;
  v167 = v153;
  sub_2204A5EAC(v162);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v168 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v169 = sub_22089132C();
  v281 = v139;
  v170 = sub_22089125C();

  v171 = [v168 initWithString:v169 attributes:v170];

  v172 = v326;
  v173 = v282;
  [v282 setAttributedText_];

  v174 = *(*&v146 + v315);
  __swift_project_boxed_opaque_existential_1(v327, v328);
  v175 = v174;
  v176 = sub_2207CB8FC(v284, v283);
  [v175 setAttributedText_];

  __swift_project_boxed_opaque_existential_1(v327, v328);
  v177 = v325;
  v178 = sub_2207CBC6C(*(v325 + 17), *(v325 + 18));
  [v310 setAttributedTitle:v178 forState:0];

  v179 = [*(v177 + 20) imageWithRenderingMode_];
  v180 = v308;
  [v308 setImage_];

  [v180 setIsAccessibilityElement_];
  v181 = [objc_opt_self() mainBundle];
  sub_220884CAC();

  v182 = sub_22089132C();

  [v180 setAccessibilityLabel_];

  __swift_project_boxed_opaque_existential_1(v327, v328);
  v183 = sub_2207CBF78(*(v177 + 19));
  v184 = v285;
  [v285 setAttributedText_];

  v185 = __swift_project_boxed_opaque_existential_1(v327, v328);
  v187 = *(*v185 + 40);
  v186 = *(*v185 + 48);
  __swift_project_boxed_opaque_existential_1((*v185 + 16), v187);
  v188 = (*(*(v186 + 16) + 48))(v187);
  [v309 setBackgroundColor_];

  v189 = v313;
  v190 = *&v313[v288];
  [v190 frame];
  v192 = v191;
  v194 = v193;
  v195 = [objc_opt_self() mainScreen];
  [v195 scale];
  v197 = v196;

  v198 = sub_22058C328(v192, v194, v197);
  [v190 setImage_];

  [*&v189[v312] setNumberOfLines_];
  v199 = __swift_project_boxed_opaque_existential_1(v327, v328);
  v201 = *(*v199 + 40);
  v200 = *(*v199 + 48);
  __swift_project_boxed_opaque_existential_1((*v199 + 16), v201);
  v202 = (*(*(v200 + 16) + 40))(v201);
  [v287 setColor_];

  v203 = *__swift_project_boxed_opaque_existential_1(v327, v328);
  v204 = *&v172[v286];
  [v204 setContentMode_];
  if (qword_27CF55878 != -1)
  {
    swift_once();
  }

  v205 = [qword_27CF6CEA8 imageWithConfiguration_];
  [v204 &selRef_eventIdentifier];

  [*&v172[v311] setNumberOfLines_];
  v206 = v324;
  [*&v172[v324] &off_27844B878];
  __swift_project_boxed_opaque_existential_1(v327, v328);
  sub_2207CCBFC(v310);
  v207 = __swift_project_boxed_opaque_existential_1(v327, v328);
  v209 = *(*v207 + 40);
  v208 = *(*v207 + 48);
  __swift_project_boxed_opaque_existential_1((*v207 + 16), v209);
  v210 = (*(*(v208 + 16) + 128))(v209);
  [v308 setTintColor_];

  sub_2207D3324(v184);
  __swift_project_boxed_opaque_existential_1(v327, v328);
  [v289 contentSize];
  v212 = v211;
  v348.origin.y = v294;
  v348.origin.x = v295;
  v348.size.height = v292;
  v348.size.width = v293;
  v213 = CGRectGetHeight(v348) < v212;
  sub_2207CCF58(v290, v213);
  v214 = *(v177 + 14);
  v215 = v206;
  if (v214 == 0.0 || (v216 = *v177, v216 == 2))
  {
    __swift_project_boxed_opaque_existential_1(v327, v328);
    v217 = *v177;
    v218 = *(*&v146 + v291);
    sub_2207CCA20(v218, v217);

    [*(*&v146 + v314) setNumberOfLines_];
    v219 = v315;
    [*(*&v146 + v315) setNumberOfLines_];
    v220 = *(v309 + OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3);
    [*&v220[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image] setHidden_];
    [*&v220[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title] setHidden_];
    [*&v220[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb] setHidden_];
  }

  else
  {
    v308 = *(v177 + 13);
    v221 = *(v177 + 15);
    v311 = *(v177 + 16);
    v312 = v221;
    v310 = *(v309 + OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3);
    v325 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title;
    v222 = *&v310[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
    LODWORD(v313) = v216;
    v295 = v214;
    v223 = *__swift_project_boxed_opaque_existential_1(v327, v328);
    v224 = objc_allocWithZone(MEMORY[0x277D74240]);
    v309 = v222;
    v225 = [v224 init];
    v226 = v306;
    v227 = sub_220891F2C();
    [v227 lineHeight];
    v229 = v228;

    [v225 setMinimumLineHeight_];
    v230 = sub_220891F2C();
    [v230 lineHeight];
    v232 = v231;

    [v225 setMaximumLineHeight_];
    [v225 setLineBreakStrategy_];
    v233 = swift_allocObject();
    *(v233 + 16) = v303;
    v234 = v302;
    *(v233 + 32) = v302;
    v235 = v234;
    *(v233 + 40) = sub_220891F2C();
    v236 = v301;
    *(v233 + 64) = v226;
    *(v233 + 72) = v236;
    v238 = v223[5];
    v237 = v223[6];
    __swift_project_boxed_opaque_existential_1(v223 + 2, v238);
    v239 = *(v237 + 16);
    v240 = *(v239 + 40);
    v241 = v236;
    v242 = v238;
    v215 = v324;
    v243 = v240(v242, v239);
    v219 = v315;
    *(v233 + 80) = v243;
    v244 = v299;
    v245 = v297;
    *(v233 + 104) = v300;
    *(v233 + 112) = v245;
    *(v233 + 144) = v244;
    *(v233 + 120) = v225;
    v246 = v245;
    v247 = v225;
    sub_2204A5EAC(v233);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v248 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v249 = sub_22089132C();
    v250 = sub_22089125C();

    v251 = [v248 initWithString:v249 attributes:v250];

    v146 = v307;
    v252 = v309;
    [v309 setAttributedText_];

    v309 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
    v253 = v310;
    v254 = *&v310[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb];
    __swift_project_boxed_opaque_existential_1(v327, v328);
    v255 = v254;
    v256 = sub_2207CB8FC(v312, v311);
    [v255 setAttributedText_];

    __swift_project_boxed_opaque_existential_1(v327, v328);
    v257 = *(*&v146 + v291);
    LOBYTE(v237) = v313;
    sub_2207CC91C(v257, v313 & 1);

    [*(*&v146 + v314) setNumberOfLines_];
    [*(*&v146 + v219) setNumberOfLines_];
    __swift_project_boxed_opaque_existential_1(v327, v328);
    v258 = *&v253[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image];
    v259 = v237;
    v172 = v326;
    sub_2207CCA20(v258, v259);

    [*&v325[v253] setNumberOfLines_];
    v220 = v253;
    [*(v309 + v253) setNumberOfLines_];
  }

  [*&v172[v215] sizeToFit];
  v260 = *&v172[v215];
  [v260 frame];
  v349.origin.y = v318;
  v349.origin.x = v319;
  v349.size.height = v316;
  v349.size.width = v317;
  CGRectGetWidth(v349);
  sub_220891ECC();
  v262 = v261;
  v264 = v263;
  sub_220891EAC();
  [v260 setCenter_];
  [v260 setBounds_];

  [*(*&v146 + v219) sizeToFit];
  v265 = *(*&v146 + v219);
  [v265 frame];
  v350.origin.y = v322;
  v350.origin.x = v323;
  v350.size.height = v320;
  v350.size.width = v321;
  CGRectGetWidth(v350);
  sub_220891ECC();
  v267 = v266;
  v269 = v268;
  sub_220891EAC();
  [v265 setCenter_];
  [v265 setBounds_];

  v270 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
  [*&v220[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb] sizeToFit];
  v337[5] = v334;
  v338 = v335;
  v339[0] = v336[0];
  *(v339 + 9) = *(v336 + 9);
  v337[2] = v331;
  v337[3] = v332;
  v337[4] = v333;
  v337[0] = v329;
  v337[1] = v330;
  if (sub_220590AEC(v337) != 1)
  {
    v271 = *(&v338 + 1);
    v272 = v339[0];
    v273 = *&v339[1];
    v274 = *&v220[v270];
    [v274 &off_27844BC78];
    v351.origin.x = v271;
    *&v351.origin.y = v272;
    v351.size.height = v273;
    CGRectGetWidth(v351);
    sub_220891ECC();
    v276 = v275;
    v278 = v277;
    sub_220891EAC();
    [v274 setCenter_];
    [v274 setBounds_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v327);
}

void sub_220590100(char a1, uint64_t a2, uint64_t a3, char *a4)
{
  KeyPath = swift_getKeyPath();
  v10 = sub_22056F33C(KeyPath, a2);

  if (v10)
  {
    v12 = *(a3 + 96);
    v11 = *(a3 + 104);
    sub_220891EAC();
    v13 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup];
    if (a1)
    {
      [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup] setCenter_];
      v14 = a1 & 2;
      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else
    {
      v14 = a1 & 2;
      if ((a1 & 2) == 0)
      {
        goto LABEL_4;
      }
    }

    [v13 setAlpha_];
    if ((a1 & 4) != 0)
    {
LABEL_9:
      CGAffineTransformMakeScale(&v80, v11, v11);
      [v13 setTransform_];
    }
  }

  else
  {
    v14 = a1 & 2;
  }

LABEL_10:
  v15 = swift_getKeyPath();
  v16 = sub_22056F33C(v15, a2);

  if ((v16 & 1) != 0 && v14)
  {
    [*(*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup] + OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon) setAlpha_];
  }

  v17 = swift_getKeyPath();
  v18 = sub_22056F33C(v17, a2);

  if (v18)
  {
    v19 = *(a3 + 264);
    sub_220891EAC();
    v20 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1];
    if (a1)
    {
      [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1] setCenter_];
    }

    if (v14)
    {
      [v20 setAlpha_];
    }
  }

  v21 = swift_getKeyPath();
  v22 = sub_22056F33C(v21, a2);

  if (v22)
  {
    v23 = *(a3 + 400);
    sub_220891EAC();
    v24 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2];
    if (a1)
    {
      [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2] setCenter_];
    }

    if (v14)
    {
      [v24 setAlpha_];
    }
  }

  v25 = swift_getKeyPath();
  v26 = sub_22056F33C(v25, a2);

  if (v26)
  {
    v27 = *(a3 + 600);
    v28 = *(a3 + 616);
    v29 = *(a3 + 568);
    v83 = *(a3 + 584);
    v84 = v27;
    v85[0] = v28;
    *(v85 + 9) = *(a3 + 625);
    v30 = *(a3 + 552);
    *&v80.tx = *(a3 + 536);
    v81 = v30;
    v82 = v29;
    v31 = *(a3 + 520);
    *&v80.a = *(a3 + 504);
    *&v80.c = v31;
    if (sub_220590AEC(&v80) != 1)
    {
      tx = v80.tx;
      sub_220891EAC();
      v33 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3];
      if (a1)
      {
        [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3] setCenter_];
      }

      if (v14)
      {
        [v33 setAlpha_];
      }
    }
  }

  v34 = swift_getKeyPath();
  v35 = sub_22056F33C(v34, a2);

  if (v35)
  {
    sub_220891EAC();
    v36 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer];
    if (a1)
    {
      [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer] setCenter_];
    }

    if (v14)
    {
      [v36 setAlpha_];
    }
  }

  v37 = swift_getKeyPath();
  v38 = sub_22056F33C(v37, a2);

  if (v38)
  {
    v71 = v14;
    v39 = *&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView];
    v40 = *(a3 + 672);
    v41 = *(a3 + 504);
    v42 = *(a3 + 512);
    v43 = *(a3 + 520);
    v44 = *(a3 + 528);
    v45 = *(a3 + 616);
    v78 = *(a3 + 600);
    v79[0] = v45;
    *(v79 + 9) = *(a3 + 625);
    v46 = *(a3 + 552);
    v74 = *(a3 + 536);
    v75 = v46;
    v47 = *(a3 + 584);
    v76 = *(a3 + 568);
    v77 = v47;
    *v73 = v41;
    *&v73[1] = v42;
    *&v73[2] = v43;
    *&v73[3] = v44;
    if (sub_220590AEC(v73) == 1)
    {
      v41 = *(a3 + 368);
      v42 = *(a3 + 376);
      v43 = *(a3 + 384);
      v44 = *(a3 + 392);
    }

    v86.origin.x = *a3;
    v69 = *(a3 + 8);
    v86.origin.y = v69;
    x = v86.origin.x;
    v48 = *(a3 + 16);
    v49 = *(a3 + 24);
    v86.size.width = v48;
    v86.size.height = v49;
    Width = CGRectGetWidth(v86);
    v87.origin.x = v41;
    v87.origin.y = v42;
    v87.size.width = v43;
    v87.size.height = v44;
    [v39 setContentSize_];
    v51 = v4[5];
    v52 = v4[6];
    v53 = __swift_project_boxed_opaque_existential_1(v4 + 2, v51);
    v67 = &v67;
    v68 = v39;
    v54 = *(v51 - 8);
    *&v56 = MEMORY[0x28223BE20](v53, v55).n128_u64[0];
    v58 = &v67 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = a4;
    v60 = [a4 traitCollection];
    (*(*(v52 + 8) + 8))();

    a4 = v59;
    (*(v52 + 16))(v72, 0, v51, v52);
    (*(v54 + 8))(v58, v51);
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    v61 = *&v59[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer];
    [v68 contentSize];
    v63 = v62;
    v88.origin.y = v69;
    v88.origin.x = x;
    v88.size.width = v48;
    v88.size.height = v49;
    v64 = CGRectGetHeight(v88) < v63;
    sub_2207CCF58(v61, v64);
    __swift_destroy_boxed_opaque_existential_1(v72);
    v14 = v71;
  }

  v65 = swift_getKeyPath();
  v66 = sub_22056F33C(v65, a2);

  if (v66)
  {
    if (v14)
    {
      [*&a4[OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator] setAlpha_];
    }
  }
}

void sub_220590760(uint64_t a1, double *a2, char *a3)
{
  v6 = sub_22088ADDC();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088AA4C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = *a2;
  v13 = a2[1];
  v14 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v14 scaledValueForValue_];
  v16 = v15;

  if (v16 > 225.0)
  {
    v16 = 225.0;
  }

  sub_22089028C();
  v17 = v3[5];
  v18 = v3[6];
  v19 = __swift_project_boxed_opaque_existential_1(v3 + 2, v17);
  v20 = *(v17 - 8);
  *&v22 = MEMORY[0x28223BE20](v19, v21).n128_u64[0];
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [a3 traitCollection];
  (*(*(v18 + 8) + 8))();

  (*(v18 + 24))(v33, v17, v18);
  (*(v20 + 8))(v24, v17);
  v26 = objc_allocWithZone(sub_22088E89C());
  v27 = sub_22088E88C();
  [a3 frame];
  [v27 setFrame_];
  (*(v31 + 104))(v9, *MEMORY[0x277D6D420], v32);
  sub_22088E87C();
  v28 = *&a3[OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView];
  *&a3[OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView] = v27;
  v29 = v27;
  sub_2206F4DE8(v28);

  [*&a3[OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator] setHidden_];
}

uint64_t sub_220590AEC(uint64_t a1)
{
  if (*(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_220590B78(uint64_t a1)
{
  v3 = type metadata accessor for ManageWatchlistsReloadBlueprintModifier(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v14 - v9);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40));
  v11 = sub_220885FCC();
  sub_220591268(a1, v10 + *(v3 + 24), type metadata accessor for ManageWatchlistsContentMode);
  *v10 = 0x64616F6C6552;
  v10[1] = 0xE600000000000000;
  v10[2] = v11;
  sub_220591268(v10, v6, type metadata accessor for ManageWatchlistsReloadBlueprintModifier);
  sub_22059115C(0);
  swift_allocObject();
  sub_2205912D0(&qword_27CF56ED0, type metadata accessor for ManageWatchlistsReloadBlueprintModifier, &unk_2208BE2B0);
  v12 = sub_22088B66C();
  sub_220591318(v10, type metadata accessor for ManageWatchlistsReloadBlueprintModifier);
  return v12;
}

uint64_t sub_220590D24(uint64_t a1)
{
  sub_22059115C(0);
  swift_allocObject();
  sub_220591214();

  return sub_22088B66C();
}

uint64_t sub_220590DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v19 - v12;
  v15 = *(v14 + 20);
  v16 = sub_220886A4C();
  (*(*(v16 - 8) + 16))(&v13[v15], a1, v16);
  strcpy(v13, "MoveWatchlist");
  *(v13 + 7) = -4864;
  *&v13[*(v6 + 24)] = a2;
  *&v13[*(v6 + 28)] = a3;
  sub_220591268(v13, v9, type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier);
  sub_22059115C(0);
  swift_allocObject();
  sub_2205912D0(&qword_27CF56EC0, type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier, &unk_2208B5C88);

  v17 = sub_22088B66C();
  sub_220591318(v13, type metadata accessor for ManageWatchlistsMoveWatchlistBlueprintModifier);
  return v17;
}

uint64_t sub_220590F8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v17 - v10;
  v13 = *(v12 + 20);
  v14 = sub_220886A4C();
  (*(*(v14 - 8) + 16))(&v11[v13], a1, v14);
  sub_220591268(a2, &v11[*(v4 + 24)], type metadata accessor for ManageWatchlistsContentMode);
  *v11 = 0x6157656D616E6552;
  *(v11 + 1) = 0xEF7473696C686374;
  sub_220591268(v11, v7, type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier);
  sub_22059115C(0);
  swift_allocObject();
  sub_2205912D0(&qword_27CF56EB8, type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier, &unk_2208A1DAC);
  v15 = sub_22088B66C();
  sub_220591318(v11, type metadata accessor for ManageWatchlistsRenameWatchlistBlueprintModifier);
  return v15;
}

void sub_22059115C(uint64_t a1)
{
  if (!qword_27CF56EB0)
  {
    type metadata accessor for ManageWatchlistsModel(255);
    sub_22055DF30();
    sub_2205912D0(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
    v1 = sub_22088B67C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56EB0);
    }
  }
}

unint64_t sub_220591214()
{
  result = qword_27CF56EC8;
  if (!qword_27CF56EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56EC8);
  }

  return result;
}

uint64_t sub_220591268(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205912D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220591318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220591378@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ManageWatchlistsModule();
    v7 = swift_allocObject();
    result = sub_220457328(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_283415818;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220591428@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281286888, &protocol descriptor for CreateWatchlistViewStylerType, 1);
  result = sub_2208884DC();
  if (v24)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    WatchlistViewStyler = type metadata accessor for CreateWatchlistViewStyler();
    v22[3] = WatchlistViewStyler;
    v22[4] = &off_283415108;
    v22[0] = v9;
    type metadata accessor for CreateWatchlistViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, WatchlistViewStyler);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v20 = WatchlistViewStyler;
    v21 = &off_283415108;
    *&v19 = v17;
    sub_220457328(&v19, v11 + 16);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = sub_220596EB0(&qword_27CF57040, type metadata accessor for CreateWatchlistViewRenderer, &unk_2208B0E84);
    *a2 = v11;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2205916B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281286888, &protocol descriptor for CreateWatchlistViewStylerType, 1);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    WatchlistViewStyler = type metadata accessor for CreateWatchlistViewStyler();
    v19[3] = WatchlistViewStyler;
    v19[4] = &off_283415108;
    v19[0] = v9;
    WatchlistViewLayoutAttributesFactory = type metadata accessor for CreateWatchlistViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, WatchlistViewStyler);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = WatchlistViewStyler;
    v12[6] = &off_283415108;
    v12[2] = v18;
    sub_220596E48(0);
    swift_allocObject();
    v12[7] = sub_220888D0C();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = WatchlistViewLayoutAttributesFactory;
    a2[4] = &off_283421630;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220591904@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281287840, &protocol descriptor for WatchlistCellViewStylerType, 1);
  result = sub_2208884DC();
  if (v24)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for WatchlistCellViewStyler();
    v22[3] = v10;
    v22[4] = &off_28341D0C8;
    v22[0] = v9;
    type metadata accessor for WatchlistCellViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v10);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v20 = v10;
    v21 = &off_28341D0C8;
    *&v19 = v17;
    sub_220457328(&v19, v11 + 16);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = sub_220596EB0(&qword_27CF57030, type metadata accessor for WatchlistCellViewRenderer, &unk_2208A6FC4);
    *a2 = v11;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220591B94@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  v10 = v21;
  if (v21)
  {
    v11 = a2(0);
    v12 = v22;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = &v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    v18 = a3(v16, v11, v10, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a5[3] = v11;
    a5[4] = a4;
    *a5 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220591D08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281287840, &protocol descriptor for WatchlistCellViewStylerType, 1);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for WatchlistCellViewStyler();
    v19[3] = v10;
    v19[4] = &off_28341D0C8;
    v19[0] = v9;
    v11 = type metadata accessor for WatchlistCellViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_28341D0C8;
    v12[2] = v18;
    sub_220596DE8();
    swift_allocObject();
    v12[7] = sub_220888D0C();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_283414658;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_220591F54()
{
  type metadata accessor for ManageWatchlistsViewController(0);
  sub_220888BDC();

  sub_220446A58(0, &qword_27CF56ED8, &protocol descriptor for ManageWatchlistsStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_27CF56EE0, &protocol descriptor for ManageWatchlistsRouterType, 1);
  sub_220888BEC();
  type metadata accessor for ManageWatchlistsRouter();
  sub_2208882BC();

  sub_220446A58(0, &qword_27CF56EE8, &protocol descriptor for ManageWatchlistsEventHandlerType, 0);
  sub_220888BEC();

  sub_220446A58(0, &qword_27CF56EF0, &protocol descriptor for ManageWatchlistsInteractorType, 0);
  sub_220888BEC();

  sub_220446A58(0, &qword_27CF56EF8, &protocol descriptor for ManageWatchlistsTrackerType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_27CF56F00, &protocol descriptor for ManageWatchlistsDataManagerType, 0);
  sub_220888BEC();

  sub_220595CA8(0);
  sub_220888BDC();

  type metadata accessor for ManageWatchlistsBlueprintModifierFactory();
  sub_220888BDC();

  sub_220595CC8(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22059643C(0);
  sub_220888BDC();

  sub_220595DB4(0);
  sub_220888BDC();

  sub_22057B41C(0);
  sub_220888BDC();

  type metadata accessor for ManageWatchlistsBlueprintLayoutBuilder();
  sub_220888BDC();

  sub_220596528(0);
  sub_220888BDC();

  sub_22044D56C(0, &qword_281299540, 0x277D75B40);
  sub_220888BDC();

  sub_220595EBC(0);
  sub_220888BDC();

  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  sub_220888BEC();
  sub_22088D41C();
  sub_2208882BC();

  sub_220596038(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_2205961C4(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_220596350(0);
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for ManageWatchlistsBlueprintViewCellProvider(0);
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for ManageWatchlistsBlueprintViewHeaderFooterProvider();
  sub_220888BDC();

  sub_220596750(0, &qword_27CF56FA0, MEMORY[0x277D6E388]);
  sub_220888BDC();

  sub_22088B84C();
  sub_220888BDC();

  sub_220596664(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088CA2C();
  sub_220888BDC();
  sub_2208882CC();

  sub_220446A58(0, &unk_2812972B0, MEMORY[0x277D6EA40], 1);
  sub_220888BEC();

  return result;
}

char *sub_2205927CC(void *a1)
{
  sub_2205967EC(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56ED8, &protocol descriptor for ManageWatchlistsStylerType, 1);
  result = sub_2208884DC();
  if (!v49)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56EE8, &protocol descriptor for ManageWatchlistsEventHandlerType, 0);
  result = sub_2208884DC();
  v7 = v46;
  if (!v46)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596528(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = type metadata accessor for ManageWatchlistsContentMode(0);
  sub_2208884DC();
  result = (*(*(v10 - 8) + 48))(v5, 1, v10);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v38 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  v11 = v44;
  if (v44)
  {
    v37[0] = v45;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    v37[2] = v37;
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v18 = type metadata accessor for ManageWatchlistsStyler();
    v42 = v18;
    v43 = &off_283412230;
    v41[0] = v17;
    v19 = type metadata accessor for ManageWatchlistsViewController(0);
    v20 = objc_allocWithZone(v19);
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v37[1] = v37;
    v22 = MEMORY[0x28223BE20](v21, v21);
    v24 = (v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = *v24;
    v40[3] = v18;
    v40[4] = &off_283412230;
    v40[0] = v26;
    v27 = OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_descriptionLabel;
    *&v20[v27] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    sub_22046DA2C(v40, &v20[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_styler]);
    v28 = &v20[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler];
    v29 = v38;
    *v28 = v7;
    *(v28 + 1) = v29;
    *&v20[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_blueprintViewController] = v9;
    sub_220596A24(v5, &v20[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_contentMode]);
    v30 = &v20[OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_commandCenter];
    v31 = v37[0];
    *v30 = v11;
    *(v30 + 1) = v31;
    v39.receiver = v20;
    v39.super_class = v19;
    swift_unknownObjectRetain();
    v32 = v9;
    swift_unknownObjectRetain();
    v33 = objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
    *(*(v33 + OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_eventHandler) + 24) = &off_28341E218;
    swift_unknownObjectWeakAssign();
    v34 = *(v33 + OBJC_IVAR____TtC8StocksUI30ManageWatchlistsViewController_blueprintViewController);
    v35 = v33;
    v36 = v34;
    sub_22088C79C();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_220596A88(v5);
    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return v35;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_220592D08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  if (v7)
  {
    v4 = type metadata accessor for ManageWatchlistsStyler();
    v5 = swift_allocObject();
    result = sub_220457328(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_283412230;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220592DBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ManageWatchlistsRouter();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_220457328(v8, v7 + 24);
    *(v7 + 64) = v5;
    a2[3] = v6;
    a2[4] = &off_28341F330;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220592E78(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageWatchlistsViewController(0);
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

void *sub_220592EF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56EF0, &protocol descriptor for ManageWatchlistsInteractorType, 0);
  result = sub_2208884DC();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56EE0, &protocol descriptor for ManageWatchlistsRouterType, 1);
  result = sub_2208884DC();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56EF8, &protocol descriptor for ManageWatchlistsTrackerType, 1);
  result = sub_2208884DC();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_220596BDC(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_283419A68;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2205931A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2205967EC(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_27CF56F00, &protocol descriptor for ManageWatchlistsDataManagerType, 0);
  result = sub_2208884DC();
  v9 = v27;
  if (!v27)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CC8(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ManageWatchlistsBlueprintModifierFactory();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280, MEMORY[0x277D69550], 1);
  result = sub_2208884DC();
  if (!v26)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  v13 = v23;
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = v24;
  v21 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = type metadata accessor for ManageWatchlistsContentMode(0);
  sub_2208884DC();
  result = (*(*(v15 - 8) + 48))(v7, 1, v15);
  if (result != 1)
  {
    sub_220596990(0);
    v16 = swift_allocObject();
    v16[3] = 0;
    swift_unknownObjectWeakInit();
    v17 = v22;
    v16[6] = v9;
    v16[7] = v17;
    v16[4] = v11;
    v16[5] = v12;
    sub_22046DA2C(v25, (v16 + 8));
    v18 = v20;
    v16[13] = v13;
    v16[14] = v18;
    v16[15] = v14;
    sub_220596A24(v7, v16 + *(*v16 + 152));
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_220596EB0(&qword_27CF57020, sub_220596990, &unk_2208A8980);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    sub_220885FAC();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    sub_220596A88(v7);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    v19 = v21;
    *v21 = v16;
    v19[1] = &off_28341A790;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22059358C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for ManageWatchlistsTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_2834122E0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220593614@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManageWatchlistsDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_283426E80;
  return result;
}

void *sub_220593680(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280, MEMORY[0x277D69550], 1);
  result = sub_2208884DC();
  if (v4)
  {
    type metadata accessor for ManageWatchlistsBlueprintModifierFactory();
    v2 = swift_allocObject();
    sub_220457328(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220593720(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220595DB4(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_220595CC8(0);
      swift_allocObject();
      return sub_22088B6AC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_220593800(uint64_t a1, void *a2)
{
  sub_2205968B0(0);
  swift_allocObject();
  sub_22088D4FC();
  sub_2205968D0(0, &qword_27CF56FF8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_220596EB0(&qword_27CF57000, sub_2205968B0, MEMORY[0x277D6E730]);
  sub_22088CE4C();
  sub_22088B6CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22059643C(0);
  if (sub_2208884CC())
  {
    swift_allocObject();
    sub_220596EB0(&qword_27CF57008, sub_22059643C, MEMORY[0x277D6E7C0]);
    sub_22088CE4C();
    sub_22088B6CC();
  }

  else
  {
    __break(1u);
  }
}

void *sub_220593998(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057B41C(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  result = sub_22088849C();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ManageWatchlistsBlueprintLayoutBuilder();
  result = sub_2208884CC();
  if (result)
  {
    sub_22059643C(0);
    swift_allocObject();
    return sub_22088D6DC();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_220593ADC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595EBC(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281297128, MEMORY[0x277D6EBC0], 1);
    result = sub_2208884DC();
    if (v3)
    {
      sub_220595DB4(0);
      swift_allocObject();
      return sub_22088B93C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220593C08(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_220593C4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127F850, &protocol descriptor for WatchlistCellViewLayoutAttributesFactoryType, 1);
  result = sub_2208884DC();
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_28127F390, &protocol descriptor for CreateWatchlistViewLayoutAttributesFactoryType, 1);
    result = sub_2208884DC();
    if (v36)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v30[2] = v30;
      v4 = MEMORY[0x28223BE20](v3, v3);
      v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v30[1] = v30;
      v9 = MEMORY[0x28223BE20](v8, v8);
      v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11, v9);
      v13 = *v6;
      v14 = *v11;
      v15 = type metadata accessor for WatchlistCellViewLayoutAttributesFactory();
      v34[3] = v15;
      v34[4] = &off_283414658;
      v34[0] = v13;
      WatchlistViewLayoutAttributesFactory = type metadata accessor for CreateWatchlistViewLayoutAttributesFactory();
      v32 = WatchlistViewLayoutAttributesFactory;
      v33 = &off_283421630;
      v31[0] = v14;
      type metadata accessor for ManageWatchlistsBlueprintLayoutBuilder();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v15);
      v19 = MEMORY[0x28223BE20](v18, v18);
      v21 = (v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21, v19);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v24 = MEMORY[0x28223BE20](v23, v23);
      v26 = (v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v27 + 16))(v26, v24);
      v28 = *v21;
      v29 = *v26;
      v17[5] = v15;
      v17[6] = &off_283414658;
      v17[2] = v28;
      v17[10] = WatchlistViewLayoutAttributesFactory;
      v17[11] = &off_283421630;
      v17[7] = v29;
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v35);
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220594058(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595EBC(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  result = sub_22088849C();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297128, MEMORY[0x277D6EBC0], 1);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596750(0, &qword_27CF56FA0, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088B84C();
  result = sub_22088848C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    sub_220596EB0(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_220596528(0);
    v4 = objc_allocWithZone(v3);
    return sub_22088C7AC();
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_220594374()
{
  v0 = [objc_opt_self() ts:2 preferredStyleForStyle:?];
  v1 = objc_allocWithZone(MEMORY[0x277D6ED30]);

  return [v1 initWithFrame:v0 style:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t sub_2205943E4(void *a1)
{
  v2 = sub_22088BEAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_281299540, 0x277D75B40);
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596038(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2205961C4(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596350(0);
  result = sub_2208884CC();
  if (result)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D6DC38], v2);
    sub_220595EBC(0);
    swift_allocObject();
    return sub_22088BFAC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_220594600@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595EBC(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_22088BFCC();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22047DC18();
    result = sub_2208884CC();
    if (result)
    {
      sub_22088D41C();
      result = sub_22088D40C();
      v5 = MEMORY[0x277D6E690];
      *a2 = result;
      a2[1] = v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2205946F8()
{
  v0 = sub_22088C2CC();
  v2 = MEMORY[0x28223BE20](v0, v1);
  (*(v4 + 104))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v2);
  return sub_22088D3EC();
}

void sub_2205947C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  v2 = sub_2208884CC();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057B41C(0);
  if (!sub_2208884CC())
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ManageWatchlistsBlueprintViewCellProvider(0);
  sub_22046DA2C(a1, v8);
  v4 = swift_allocObject();
  sub_220457328(v8, v4 + 16);
  v5 = sub_2208884AC();

  if (v5)
  {
    *&v8[0] = v3;
    sub_220596038(0);
    v7 = objc_allocWithZone(v6);
    sub_22088D19C();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_22059492C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_281299540, 0x277D75B40);
  v3 = sub_22088848C();
  if (v3)
  {
    v4 = v3;
    sub_22044D56C(0, &unk_28127E890, 0x277D759D8);
    sub_22089147C();
    sub_22088838C();
  }

  else
  {
    __break(1u);
  }
}

void *sub_220594A2C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageWatchlistsViewController(0);
  sub_2208884CC();
  sub_22088D1BC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &unk_2812972B0, MEMORY[0x277D6EA40], 1);
  result = sub_22088849C();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_22088DD8C();
    sub_22088D1AC();

    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220594B40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057B41C(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ManageWatchlistsBlueprintViewHeaderFooterProvider();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596750(0, &qword_27CF56FA0, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_220596EB0(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297770, MEMORY[0x277D6E170], 1);
  result = sub_2208884DC();
  if (v5)
  {
    sub_2205961C4(0);
    v4 = objc_allocWithZone(v3);
    return sub_22088CE7C();
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_220594DE4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088B84C();
  sub_22088848C();
  sub_22088CE8C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220596664(0);
  if (sub_2208884CC())
  {
    sub_220596EB0(&qword_27CF56FE8, sub_220596664, MEMORY[0x277D6E7F8]);
  }

  return sub_22088CE9C();
}

uint64_t sub_220594EE8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_220596350(0);
    v3 = objc_allocWithZone(v2);
    return sub_22088D5CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220594F60(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageWatchlistsViewController(0);
  if (!sub_2208884CC())
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_22088D5DC();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_281299540, 0x277D75B40);
  v3 = sub_22088848C();
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  sub_22088D5EC();
}

void *sub_220595054(void *a1)
{
  sub_2205967EC(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281287840, &protocol descriptor for WatchlistCellViewStylerType, 1);
  result = sub_2208884DC();
  if (!v45)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281285D38, &protocol descriptor for WatchlistCellViewRendererType, 0);
  result = sub_2208884DC();
  v7 = v42;
  if (!v42)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281284FA8, &protocol descriptor for CreateWatchlistViewRendererType, 0);
  result = sub_2208884DC();
  v9 = v40;
  if (!v40)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  v11 = v38;
  if (!v38)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v35 = v39;
  v36 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057B41C(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = result;
  v32 = v9;
  v33 = v8;
  v34 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = type metadata accessor for ManageWatchlistsContentMode(0);
  sub_2208884DC();
  result = (*(*(v14 - 8) + 48))(v5, 1, v14);
  if (result != 1)
  {
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = (&v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v21 = type metadata accessor for WatchlistCellViewStyler();
    v37[3] = v21;
    v37[4] = &off_28341D0C8;
    v37[0] = v20;
    type metadata accessor for ManageWatchlistsBlueprintViewCellProvider(0);
    v22 = swift_allocObject();
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v37, v21);
    v24 = MEMORY[0x28223BE20](v23, v23);
    v26 = (&v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v27 + 16))(v26, v24);
    v28 = *v26;
    v22[7] = v21;
    v22[8] = &off_28341D0C8;
    v22[3] = 0;
    v22[4] = v28;
    swift_unknownObjectWeakInit();
    v29 = v33;
    v22[9] = v34;
    v22[10] = v29;
    v30 = v35;
    v31 = v36;
    v22[11] = v32;
    v22[12] = v31;
    v22[13] = v11;
    v22[14] = v30;
    v22[15] = v12;
    v22[16] = v13;
    sub_220596844(v5, v22 + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return v22;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2205954EC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ManageWatchlistsViewController(0);
  v4 = sub_2208884CC();
  v3 = &off_28341E1F8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_220595580(__n128 a1)
{
  type metadata accessor for ManageWatchlistsBlueprintViewHeaderFooterProvider();

  return swift_allocObject();
}

uint64_t sub_2205955B4(void *a1)
{
  v2 = sub_22088D7EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22088D80C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_220596750(0, &qword_27CF56FD8, MEMORY[0x277D6E380]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595CA8(0);
  result = sub_2208884CC();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x277D6E378], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277D6E828], v2);
    sub_22088D7FC();
    v17[1] = v16;
    sub_220596750(0, &qword_27CF56FA0, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_22088CDAC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220595840(void *a1)
{
  sub_22047DD60(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899920;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596664(0);
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = sub_220596EB0(&qword_27CF56FD0, sub_220596664, MEMORY[0x277D6E800]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088CA2C();
    result = sub_22088848C();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_22088B84C();
      swift_allocObject();
      return sub_22088B83C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22059597C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595EBC(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220595CA8(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_220596664(0);
      swift_allocObject();
      return sub_22088D74C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220595A90(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220595EBC(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_22088BFCC();

    sub_22088CA2C();
    swift_allocObject();
    return sub_22088CA1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220595B4C(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220596528(0);
  v8 = sub_2208884CC();
  if (v8)
  {
    v9 = v8;
    v10 = sub_220596EB0(a3, sub_220596528, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_220595C00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220596528(0);
  v4 = v3;
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_220596EB0(&qword_27CF56FB8, sub_220596528, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220595CC8(uint64_t a1)
{
  if (!qword_27CF56F10)
  {
    sub_220595CA8(255);
    sub_220595DB4(255);
    sub_220596EB0(&qword_27CF56F30, sub_220595CA8, MEMORY[0x277D6D8C8]);
    sub_220596EB0(&qword_27CF56F80, sub_220595DB4, MEMORY[0x277D6D960]);
    v1 = sub_22088B6FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56F10);
    }
  }
}

void sub_220595DB4(uint64_t a1)
{
  if (!qword_27CF56F18)
  {
    type metadata accessor for ManageWatchlistsModel(255);
    sub_220595EBC(255);
    sub_22055DF30();
    sub_220596EB0(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
    sub_220596EB0(&qword_27CF56F78, sub_220595EBC, MEMORY[0x277D6DC88]);
    v1 = sub_22088B95C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56F18);
    }
  }
}

void sub_220595EBC(uint64_t a1)
{
  if (!qword_27CF56F20)
  {
    sub_22044D56C(255, &qword_281299540, 0x277D75B40);
    sub_220596038(255);
    sub_2205961C4(255);
    sub_220596350(255);
    type metadata accessor for ManageWatchlistsViewController(255);
    sub_220596EB0(&qword_27CF56F60, sub_220596038, MEMORY[0x277D6E568]);
    sub_220596EB0(&qword_27CF56F68, sub_2205961C4, MEMORY[0x277D6E3D8]);
    sub_220596EB0(&qword_27CF56F70, sub_220596350, MEMORY[0x277D6E748]);
    v1 = sub_22088BFDC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56F20);
    }
  }
}

void sub_220596038(uint64_t a1)
{
  if (!qword_27CF56F28)
  {
    sub_220595CA8(255);
    sub_22057B41C(255);
    type metadata accessor for ManageWatchlistsBlueprintViewCellProvider(255);
    type metadata accessor for ManageWatchlistsViewController(255);
    sub_220596EB0(&qword_27CF56F30, sub_220595CA8, MEMORY[0x277D6D8C8]);
    sub_220596EB0(&qword_27CF56CE8, sub_22057B41C, MEMORY[0x277D6DF38]);
    sub_220596EB0(&qword_27CF56F38, type metadata accessor for ManageWatchlistsBlueprintViewCellProvider, &unk_22089A970);
    sub_220596EB0(&qword_27CF56F40, type metadata accessor for ManageWatchlistsViewController, &unk_2208AE580);
    v1 = sub_22088D1CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56F28);
    }
  }
}

void sub_2205961C4(uint64_t a1)
{
  if (!qword_27CF56F48)
  {
    sub_220595CA8(255);
    sub_22057B41C(255);
    type metadata accessor for ManageWatchlistsBlueprintViewHeaderFooterProvider();
    type metadata accessor for ManageWatchlistsViewController(255);
    sub_220596EB0(&qword_27CF56F30, sub_220595CA8, MEMORY[0x277D6D8C8]);
    sub_220596EB0(&qword_27CF56CE8, sub_22057B41C, MEMORY[0x277D6DF38]);
    sub_220596EB0(&qword_27CF56F50, type metadata accessor for ManageWatchlistsBlueprintViewHeaderFooterProvider, &unk_2208A5EC4);
    sub_220596EB0(&qword_27CF56F40, type metadata accessor for ManageWatchlistsViewController, &unk_2208AE580);
    v1 = sub_22088CEAC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56F48);
    }
  }
}

void sub_220596350(uint64_t a1)
{
  if (!qword_27CF56F58)
  {
    sub_220595CA8(255);
    type metadata accessor for ManageWatchlistsViewController(255);
    sub_220596EB0(&qword_27CF56F30, sub_220595CA8, MEMORY[0x277D6D8C8]);
    sub_220596EB0(&qword_27CF56F40, type metadata accessor for ManageWatchlistsViewController, &unk_2208AE580);
    v1 = sub_22088D5FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56F58);
    }
  }
}

void sub_22059643C(uint64_t a1)
{
  if (!qword_27CF56F88)
  {
    sub_22057B41C(255);
    type metadata accessor for ManageWatchlistsBlueprintLayoutBuilder();
    sub_220596EB0(&qword_27CF56CE8, sub_22057B41C, MEMORY[0x277D6DF38]);
    sub_220596EB0(&qword_27CF56F90, type metadata accessor for ManageWatchlistsBlueprintLayoutBuilder, &unk_2208A21F0);
    v1 = sub_22088D6EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56F88);
    }
  }
}

void sub_220596528(uint64_t a1)
{
  if (!qword_27CF56F98)
  {
    sub_220595CA8(255);
    sub_220595EBC(255);
    type metadata accessor for ManageWatchlistsViewController(255);
    sub_220596EB0(&qword_27CF56F30, sub_220595CA8, MEMORY[0x277D6D8C8]);
    sub_220596EB0(&qword_27CF56F78, sub_220595EBC, MEMORY[0x277D6DC88]);
    sub_220596EB0(&qword_27CF56F40, type metadata accessor for ManageWatchlistsViewController, &unk_2208AE580);
    v1 = sub_22088C7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56F98);
    }
  }
}

void sub_220596664(uint64_t a1)
{
  if (!qword_27CF56FA8)
  {
    sub_220595EBC(255);
    sub_220595CA8(255);
    sub_220596EB0(&qword_27CF56F78, sub_220595EBC, MEMORY[0x277D6DC88]);
    sub_220596EB0(&qword_27CF56FB0, sub_220595CA8, MEMORY[0x277D6D8C0]);
    v1 = sub_22088D76C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56FA8);
    }
  }
}

void sub_220596750(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_220595CA8(255);
    v7 = v6;
    v8 = sub_220596EB0(&qword_27CF56F30, sub_220595CA8, MEMORY[0x277D6D8C8]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2205967EC(uint64_t a1)
{
  if (!qword_27CF56FE0)
  {
    type metadata accessor for ManageWatchlistsContentMode(255);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF56FE0);
    }
  }
}

uint64_t sub_220596844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageWatchlistsContentMode(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2205968D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ManageWatchlistsSectionDescriptor;
    v8[1] = type metadata accessor for ManageWatchlistsModel(255);
    v8[2] = sub_22055DF30();
    v8[3] = sub_220596EB0(&qword_27CF59130, type metadata accessor for ManageWatchlistsModel, &unk_2208AEFB8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220596990(uint64_t a1)
{
  if (!qword_27CF57010)
  {
    v2 = type metadata accessor for ManageWatchlistsBlueprintModifierFactory();
    v3 = sub_220596EB0(&qword_27CF57018, type metadata accessor for ManageWatchlistsBlueprintModifierFactory, &unk_22089BF8C);
    v5 = type metadata accessor for ManageWatchlistsInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27CF57010);
    }
  }
}

uint64_t sub_220596A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageWatchlistsContentMode(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220596A88(uint64_t a1)
{
  v2 = type metadata accessor for ManageWatchlistsContentMode(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_220596AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for ManageWatchlistsRouter();
  v15[4] = &off_28341F330;
  v15[0] = a3;
  v14[3] = type metadata accessor for ManageWatchlistsTracker();
  v14[4] = &off_2834122E0;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_22046DA2C(v15, (a5 + 6));
  sub_22046DA2C(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_283419A38, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_220596BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for ManageWatchlistsRouter();
  v27 = &off_28341F330;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_2834122E0;
  v22[0] = a4;
  type metadata accessor for ManageWatchlistsEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10, v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15, v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_220596AE4(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

void sub_220596DE8()
{
  if (!qword_27CF57028)
  {
    v0 = sub_220888D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF57028);
    }
  }
}

void sub_220596E48(uint64_t a1)
{
  if (!qword_27CF57038)
  {
    type metadata accessor for CreateWatchlistViewLayoutAttributes(255);
    v1 = sub_220888D1C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF57038);
    }
  }
}

uint64_t sub_220596EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220596F00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 784))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 184);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220596F48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 776) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 784) = 1;
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
      *(result + 184) = (a2 - 1);
      return result;
    }

    *(result + 784) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_220597098(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2205970B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
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

  *(result + 136) = v3;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_220597138(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_220597180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2205971F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_22059724C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 56);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 24), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_2205973B4(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2205973B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = 0x4030000000000000;
  sub_220457328(&v9, v7 + 24);
  return v7;
}

uint64_t sub_220597454(void *a1)
{
  v2 = v1;
  v4 = sub_2208878FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StocksActivity.Article(0);
  v33 = *(v9 - 8);
  v10 = *(v33 + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v12 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v32 - v15;
  v17 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220597BB4(v2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2205985D8(v20, type metadata accessor for StocksActivity);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_22046F80C(0);
      result = sub_2208884CC();
      if (result)
      {
        sub_220598188();
        swift_allocObject();
        v25 = sub_220888F2C();

        return v25;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 1)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_220453B1C(0);
      result = sub_2208884CC();
      if (result)
      {
        sub_220447128(0, qword_28128B8B0, type metadata accessor for ForYouSectionDescriptor, MEMORY[0x277D6E270], "section cardPresentationState ");
        v24 = *(v23 + 48);
        sub_220598188();
        swift_allocObject();
        v25 = sub_220888F2C();
        v26 = sub_22088CC6C();
        (*(*(v26 - 8) + 8))(&v20[v24], v26);
        sub_2205985D8(v20, type metadata accessor for ForYouSectionDescriptor);
        return v25;
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_9:
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v25 = qword_2812908F8;
    v30 = qword_281290900;
    v31 = qword_281290908;

    sub_2204A80F4(v30, v31);
    sub_2205985D8(v20, type metadata accessor for StocksActivity);
    return v25;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_220597C74(v20, v16);
      (*(v5 + 104))(v8, *MEMORY[0x277D2FC98], v4);
      sub_220597CD8(0);
      swift_allocObject();
      v27 = sub_2208884EC();
      sub_220598188();
      swift_allocObject();
      v25 = sub_220888F2C();
      sub_220597C74(v16, v12);
      v28 = (*(v33 + 80) + 24) & ~*(v33 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      sub_220597C74(v12, v29 + v28);
      return v25;
    }

    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockChartLoadingState();
  result = sub_2208884CC();
  if (result)
  {
    sub_220598188();
    swift_allocObject();
    v25 = sub_220888F2C();
    sub_2205985D8(v20, type metadata accessor for StocksActivity);
    return v25;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2205979F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  sub_22088832C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088969C();
  sub_22088833C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281296D20, MEMORY[0x277D2D578]);
  result = sub_22088833C();
  if (a6)
  {
    return a6(a1);
  }

  return result;
}

uint64_t sub_220597B04(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  sub_22088832C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281296D20, MEMORY[0x277D2D578]);
  return sub_22088833C();
}

uint64_t sub_220597BB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220597C18()
{
  sub_220598188();
  swift_allocObject();
  result = sub_220888ECC();
  qword_281290900 = 0;
  qword_281290908 = 0;
  qword_2812908F8 = result;
  return result;
}

uint64_t sub_220597C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksActivity.Article(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220597CD8(uint64_t a1)
{
  if (!qword_27CF57048)
  {
    sub_2208878FC();
    sub_2208878EC();
    sub_2204589B4(&qword_27CF57050, MEMORY[0x277D2FC80], MEMORY[0x277D2FC78]);
    v1 = sub_22088850C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF57048);
    }
  }
}

double sub_220597D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  sub_22088BF2C();
  v13 = swift_allocObject();
  *(v13 + 16) = a8;
  *(v13 + 24) = v12;
  sub_220888AFC();

  return result;
}

uint64_t sub_220597E38@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v4 = MEMORY[0x277D6CE70];
  }

  else
  {
    a2(1);
    v4 = MEMORY[0x277D6CE68];
  }

  v5 = *v4;
  v6 = sub_220888C7C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

double sub_220597ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_220888AEC();

  v8 = swift_allocObject();
  *(v8 + 16) = sub_220598708;
  *(v8 + 24) = v7;
  sub_220888AFC();

  return result;
}

uint64_t sub_220597FA8@<X0>(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  if (*a1 >= 2uLL)
  {
    a2(1);
    v4 = MEMORY[0x277D6CE68];
  }

  else
  {
    v4 = MEMORY[0x277D6CE70];
  }

  v5 = *v4;
  v6 = sub_220888C7C();
  v7 = *(*(v6 - 8) + 104);

  return v7(a3, v5, v6);
}

double sub_2205980C0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_2208884FC();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_220598708;
  *(v5 + 24) = v4;
  sub_220888AFC();

  return result;
}

void sub_220598188()
{
  if (!qword_281298600)
  {
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298600);
    }
  }
}

uint64_t sub_2205981D8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2208878FC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v11, a1, v6, v9);
  v12 = (*(v7 + 88))(v11, v6);
  if (v12 == *MEMORY[0x277D2FC98] || v12 == *MEMORY[0x277D2FCA0])
  {
    v14 = MEMORY[0x277D6CE70];
  }

  else
  {
    if (v12 != *MEMORY[0x277D2FC88] && v12 != *MEMORY[0x277D2FC90])
    {
      v18 = *MEMORY[0x277D6CE70];
      v19 = sub_220888C7C();
      (*(*(v19 - 8) + 104))(a3, v18, v19);
      return (*(v7 + 8))(v11, v6);
    }

    a2(1);
    v14 = MEMORY[0x277D6CE68];
  }

  v16 = *v14;
  v17 = sub_220888C7C();
  return (*(*(v17 - 8) + 104))(a3, v16, v17);
}

double sub_2205983E4(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220597CD8(0);
  StocksActivity.Article.articleID.getter();
  sub_22088834C();

  return result;
}

void sub_22059847C(uint64_t a1)
{
  if (!qword_281285B20)
  {
    sub_2204446D4(255, &qword_281285B30, &protocol descriptor for ArticleScienceDataProviderType);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_281285B20);
    }
  }
}

double sub_2205984E4(void *a1)
{
  type metadata accessor for StocksActivity.Article(0);
  v3 = *(v1 + 16);

  return sub_2205983E4(a1, v3);
}

uint64_t sub_2205985D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2205986BC(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_220598724@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD00];
  v3 = sub_22088C07C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_220598798()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_220598868()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_220598920()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t sub_220598A0C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t sub_220598AF8()
{
  v1 = v0;
  sub_22046DA2C(v0 + 32, v5);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_22046AA4C(&qword_28128E5C8, type metadata accessor for StockListDataManager, &unk_22089C348);
  sub_220885FDC();
  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_22046DA2C(v0 + 72, v5);
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_22046AA4C(&qword_28128E5C0, type metadata accessor for StockListDataManager, &unk_22089C320);
  sub_22088631C();
  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));

  v2 = OBJC_IVAR____TtC8StocksUI20StockListDataManager_lastActiveWatchlist;
  v3 = sub_220886A4C();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t sub_220598C88()
{
  sub_220598AF8();

  return swift_deallocClassInstance();
}

uint64_t sub_220598CE8(void *a1)
{
  v2 = sub_22088831C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v18 - v9;
  v11 = a1[12];
  v18[1] = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v11);
  sub_220599F20();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220899360;
  *(v12 + 32) = sub_22088681C();
  *(v12 + 40) = v13;
  v14 = *(v3 + 104);
  v14(v10, *MEMORY[0x277D6CA28], v2);
  v14(v6, *MEMORY[0x277D6CA30], v2);
  v15 = sub_2208862EC();

  v16 = *(v3 + 8);
  v16(v6, v2);
  v16(v10, v2);
  return v15;
}

uint64_t sub_220598EBC()
{
  sub_22045987C(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088676C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v23 - v12;
  v14 = sub_22088581C();
  v15 = sub_22088681C();
  if (*(v14 + 16))
  {
    v23[1] = v0;
    v17 = sub_2204AF97C(v15, v16);
    v19 = v18;

    if (v19)
    {
      v20 = *(v6 + 16);
      v20(v9, *(v14 + 56) + *(v6 + 72) * v17, v5);

      (*(v6 + 32))(v13, v9, v5);
      v20(v4, v13, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      sub_22047C354(0, &qword_281298690, sub_22045987C, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v21 = sub_220888ECC();
      (*(v6 + 8))(v13, v5);
      return v21;
    }
  }

  else
  {
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  sub_22047C354(0, &qword_281298690, sub_22045987C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2205991BC(void *a1)
{
  v22 = sub_22088846C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v2);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088516C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088831C();
  v19 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[19];
  v18[2] = a1[20];
  v18[1] = __swift_project_boxed_opaque_existential_1(a1 + 16, v13);
  sub_22088681C();
  (*(v9 + 104))(v12, *MEMORY[0x277D6CA28], v8);
  sub_22088515C();
  v14 = v20;
  v15 = v22;
  (*(v20 + 104))(v4, *MEMORY[0x277D6CAB8], v22);
  v16 = sub_2208860EC();

  (*(v14 + 8))(v4, v15);
  (*(v21 + 8))(v7, v23);
  (*(v9 + 8))(v12, v19);
  return v16;
}

uint64_t sub_220599480@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6CAB8];
  v3 = sub_22088846C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2205994F4()
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_22088550C();
  sub_22047C354(0, &qword_27CF57058, sub_22047C320, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2205995C4(void *a1)
{
  v2 = sub_220886A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 9, a1[12]);
  __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
  sub_2208863EC();
  sub_220886A1C();
  (*(v3 + 8))(v6, v2);
  v7 = sub_2208862FC();

  return v7;
}

uint64_t sub_220599708(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v20 = a1;
  v21 = v4;
  v5 = sub_22088685C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v10 = *(v6 + 16);
  v18 = v2[21];
  v19 = v10;
  (v10)(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v9);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = *(v6 + 32);
  v13(v12 + v11, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_22088582C();
  sub_220888FAC();

  v19(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v5);
  v14 = swift_allocObject();
  v13(v14 + v11, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v15 = sub_220888D9C();
  sub_22045987C(0);
  v16 = sub_220888E3C();

  return v16;
}

uint64_t sub_220599938(uint64_t a1)
{
  v2 = sub_22088685C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_2208855EC();
  sub_220888FAC();

  v9 = sub_220888D9C();
  sub_22047C320(0);
  v10 = sub_220888E3C();

  return v10;
}

uint64_t sub_220599B08()
{
  sub_22088582C();

  return sub_220888FAC();
}

void sub_220599B98(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_220886A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2208863EC();
  v11 = sub_2208869BC();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  if (v11 == sub_2208869BC() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_2208928BC();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(v3, &off_283413E78, a2, ObjectType, v17);
    swift_unknownObjectRelease();
  }
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_22088685C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_220599F20()
{
  if (!qword_28127DEE8)
  {
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DEE8);
    }
  }
}

id sub_22059A068(uint64_t a1)
{
  v2 = 0;
  v3 = sub_22089030C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 3)
  {
    switch(a1)
    {
      case 4:
        goto LABEL_15;
      case 5:
        if (qword_27CF55C70 != -1)
        {
          v18 = v6;
          swift_once();
          v6 = v18;
        }

        v9 = qword_27CF6D348;
        goto LABEL_18;
      case 6:
LABEL_15:
        if (qword_27CF55C78 != -1)
        {
          v16 = v6;
          swift_once();
          v6 = v16;
        }

        v9 = qword_27CF6D360;
        goto LABEL_18;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return v2;
      case 1:
        if (qword_27CF55C60 != -1)
        {
          v17 = v6;
          swift_once();
          v6 = v17;
        }

        v9 = qword_27CF6D318;
LABEL_18:
        v10 = v6;
        v11 = __swift_project_value_buffer(v6, v9);
        (*(v4 + 16))(v8, v11, v10);
        v12 = objc_allocWithZone(MEMORY[0x277D355B8]);
        _s8StocksUI16OfflineAlertableV5titleSSSgvg_0();
        v13 = sub_22089132C();

        _s8StocksUI16OfflineAlertableV7messageSSSgvg_0();
        v14 = sub_22089132C();

        v2 = [v12 initWithTitle:v13 subtitle:v14];

        (*(v4 + 8))(v8, v10);
        return v2;
      case 3:
        return v2;
    }
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

unint64_t sub_22059A360()
{
  result = qword_27CF570D0;
  if (!qword_27CF570D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF570D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TickerSectionDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TickerSectionDescriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_22059A450@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_22088751C();
  MEMORY[0x28223BE20](v23, v3);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088754C();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = MEMORY[0x277D83D88];
  sub_22059A8F4(0, &unk_281298BB0, MEMORY[0x277D2FA08], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - v10;
  sub_22059A8F4(0, &qword_281298B88, MEMORY[0x277D2FB28], v7);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = (&v22 - v14);
  v16 = sub_22088750C();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v27 = *a1;
  v18 = v27;
  sub_2207DC85C();
  v26 = v18;
  sub_2207DCA20();
  v25 = v18;
  sub_2207DCBE4(v15);
  v19 = sub_2208874EC();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  sub_2208874FC();
  sub_22059A824(v18);
  sub_22088C49C();
  sub_22059A860(v18);
  sub_22059A824(v18);
  sub_22088C48C();
  sub_22059A860(v18);
  sub_22059A824(v18);
  sub_22088C47C();
  sub_22059A860(v18);
  sub_22059A860(v18);
  v20 = MEMORY[0x277D84F90];
  sub_22088753C();
  v26 = v20;
  sub_22059A89C();
  sub_22059A8F4(0, &qword_28127EAE8, MEMORY[0x277D2FA10], MEMORY[0x277D83940]);
  sub_22059A958();
  sub_2208923FC();
  return sub_22088752C();
}

unint64_t sub_22059A824(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) <= 1)
  {
    if (v1 < 2)
    {
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
  }

  return result;
}

double sub_22059A860(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v1 < 2)
    {
LABEL_5:
    }
  }

  else if (v1 == 2 || v1 == 3 || v1 == 4)
  {
    goto LABEL_5;
  }

  return result;
}

unint64_t sub_22059A89C()
{
  result = qword_281298BA8;
  if (!qword_281298BA8)
  {
    sub_22088751C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281298BA8);
  }

  return result;
}

void sub_22059A8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22059A958()
{
  result = qword_28127EAE0;
  if (!qword_28127EAE0)
  {
    sub_22059A8F4(255, &qword_28127EAE8, MEMORY[0x277D2FA10], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EAE0);
  }

  return result;
}

uint64_t type metadata accessor for StockSearchSectionHeaderViewLayoutOptions(uint64_t a1)
{
  result = qword_27CF570D8;
  if (!qword_27CF570D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22059AA54()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_22059AA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_2207CF920(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v14;
  }

  else
  {
    v9 = sub_2204AF97C(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v15 = *v4;
      if (!v12)
      {
        sub_2207D0950();
        v13 = v15;
      }

      sub_22059B0E4(v9, v13);
      *v4 = v13;
    }
  }
}

void sub_22059AB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_220454490(0, &qword_2812885C0, type metadata accessor for CuratedForYouFeedGroupKnobs, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for CuratedForYouFeedGroupKnobs(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v16 + 48))(a1, 1, v13) == 1)
  {
    sub_2204B382C(a1, &qword_2812885C0, type metadata accessor for CuratedForYouFeedGroupKnobs);
    sub_22059AF60(a2, a3, type metadata accessor for CuratedForYouFeedGroupKnobs, type metadata accessor for CuratedForYouFeedGroupKnobs, type metadata accessor for CuratedForYouFeedGroupKnobs, sub_2207D0E90, v10);

    sub_2204B382C(v10, &qword_2812885C0, type metadata accessor for CuratedForYouFeedGroupKnobs);
  }

  else
  {
    sub_2204DBE2C(a1, v15, type metadata accessor for CuratedForYouFeedGroupKnobs);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_2207CFA98(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }
}

uint64_t sub_22059ADD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = sub_22088677C();
  v12 = v11;
  v13 = sub_22088681C();
  v15 = v14;
  v16 = sub_22088683C();
  v18 = v17;
  result = (*(v5 + 8))(v9, v4);
  a2[2] = v10;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v15;
  a2[6] = v16;
  a2[7] = v18;
  *a2 = 0x6C6F626D7973;
  a2[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_22059AF10()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_22059AF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_2204AF97C(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = (a3)(0);
    v27 = *(v20 - 8);
    sub_2204DBE2C(v19 + *(v27 + 72) * v16, a7, a4);
    sub_22059B428(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = (a3)(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

void sub_22059B0E4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22089241C() + 1) & ~v5;
    do
    {
      sub_2208929EC();

      sub_22089146C();
      v9 = sub_220892A2C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

uint64_t sub_22059B294(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22089241C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + v6);
      sub_2208929EC();
      MEMORY[0x223D8ABA0](v9);
      result = sub_220892A2C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + v3);
        v13 = (v11 + v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22059B428(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22089241C() + 1) & ~v6;
    while (1)
    {
      sub_2208929EC();

      sub_22089146C();
      v11 = sub_220892A2C();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      v19 = v16 + v17 * v4;
      v20 = v17 * v7;
      v21 = v16 + v17 * v7 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

uint64_t sub_22059B61C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = *(type metadata accessor for StockViewRenderer.RenderedState(0) + 28);

  return sub_2204CDC64(a1 + v6, a2 + v6);
}

unint64_t sub_22059B6A4()
{
  result = qword_28127EC90;
  if (!qword_28127EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EC90);
  }

  return result;
}

id sub_22059B6F8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_22059B834(0);
  *&v11 = MEMORY[0x28223BE20](v9 - 8, v10).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a4 userInterfaceIdiom] == 5)
  {
    v14 = 0;
  }

  else
  {
    [a4 horizontalSizeClass];
    v14 = 1;
  }

  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_22056064C(a2, a3, v14);
  v15 = sub_22089226C();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  sub_22089228C();
  return [a1 setPreferredBehavioralStyle_];
}

void sub_22059B834(uint64_t a1)
{
  if (!qword_28127E448)
  {
    sub_22089226C();
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E448);
    }
  }
}

uint64_t sub_22059B88C(__n128 a1)
{
  v2 = v1;
  sub_22059BBCC(0, a1);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220889F4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220889F1C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x28223BE20](v17, v18).n128_u64[0];
  v21 = v28 - v20;
  v22 = [v2 purchaseValidationState];
  if (v22 < 5)
  {
    (*(v13 + 104))(v21, **(&unk_27844A618 + v22), v12);
    v23 = [v2 purchaseType];
    if (v23)
    {
      if (v23 == 2)
      {
        v25 = MEMORY[0x277D68E68];
        goto LABEL_9;
      }

      if (v23 == 1)
      {
        if ([v2 isNewsAppPurchase])
        {
          v24 = MEMORY[0x277D68E70];
        }

        else
        {
          v24 = MEMORY[0x277D68E80];
        }

        (*(v8 + 104))(v11, *v24, v7);
        goto LABEL_12;
      }
    }

    v25 = MEMORY[0x277D68E78];
LABEL_9:
    (*(v8 + 104))(v11, *v25, v7);
LABEL_12:
    (*(v13 + 16))(v16, v21, v12);
    (*(v8 + 16))(v6, v11, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_220889BEC();
    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v21, v12);
  }

  v27 = v22;
  type metadata accessor for FCPurchaseValidationState(0);
  v28[1] = v27;
  result = sub_2208928EC();
  __break(1u);
  return result;
}

void sub_22059BBCC(uint64_t a1, __n128 a2)
{
  if (!qword_2812982F0)
  {
    sub_220889F4C();
    v2 = sub_22089230C();
    if (!v3)
    {
      atomic_store(v2, &qword_2812982F0);
    }
  }
}

id sub_22059BC34()
{
  v0 = [objc_opt_self() ts_tableCellDefaultSelectionTintColor];

  return v0;
}

id sub_22059BC74()
{
  v0 = [objc_opt_self() ts_systemDarkTealColor];

  return v0;
}

uint64_t sub_22059BCB8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v41 = a3;
  sub_22046B19C(0);
  v47 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v44 = &v40 - v12;
  sub_2204A1D20(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B9DAC(0);
  v20 = v19 - 8;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v4, v14, v22);
  sub_2204BBDE4(&qword_281296EF0, sub_2204A1D20, MEMORY[0x277D6EC68]);
  sub_2208915BC();
  v25 = *(v20 + 44);
  sub_2204BBDE4(&qword_281296EE8, sub_2204A1D20, MEMORY[0x277D6EC70]);
  sub_22089199C();
  v26 = *&v24[v25];
  v40 = v6;
  if (v26 == v48[0])
  {
    v27 = v47;
LABEL_7:
    sub_2205A0790(v24, sub_2204B9DAC);
    v35 = 1;
    v36 = v41;
  }

  else
  {
    v28 = (v6 + 16);
    v42 = (v6 + 8);
    v43 = (v6 + 32);
    v27 = v47;
    while (1)
    {
      v29 = sub_2208919BC();
      v30 = v44;
      (*v28)(v44);
      v29(v48, 0);
      sub_2208919AC();
      v31 = v27;
      v32 = *v43;
      (*v43)(v9, v30, v31);
      v33 = v49;
      v34 = v45(v9);
      if (v33)
      {
        (*v42)(v9, v47);
        return sub_2205A0790(v24, sub_2204B9DAC);
      }

      if (v34)
      {
        break;
      }

      v49 = 0;
      v27 = v47;
      (*v42)(v9, v47);
      sub_22089199C();
      if (*&v24[v25] == v48[0])
      {
        goto LABEL_7;
      }
    }

    sub_2205A0790(v24, sub_2204B9DAC);
    v38 = v41;
    v39 = v47;
    v32(v41, v9, v47);
    v36 = v38;
    v27 = v39;
    v35 = 0;
  }

  return (*(v40 + 56))(v36, v35, 1, v27);
}

uint64_t sub_22059C108@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v45 = a1;
  v46 = a2;
  v41 = a3;
  sub_22046B36C(0);
  v47 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v44 = &v40 - v12;
  sub_22046B19C(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BBE2C(0);
  v20 = v19 - 8;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v4, v14, v22);
  sub_2204BBDE4(&qword_281297DC0, sub_22046B19C, MEMORY[0x277D6D728]);
  sub_2208915BC();
  v25 = *(v20 + 44);
  sub_2204BBDE4(&qword_281297DB8, sub_22046B19C, MEMORY[0x277D6D730]);
  sub_22089199C();
  v26 = *&v24[v25];
  v40 = v6;
  if (v26 == v48[0])
  {
    v27 = v47;
LABEL_7:
    sub_2205A0790(v24, sub_2204BBE2C);
    v35 = 1;
    v36 = v41;
  }

  else
  {
    v28 = (v6 + 16);
    v42 = (v6 + 8);
    v43 = (v6 + 32);
    v27 = v47;
    while (1)
    {
      v29 = sub_2208919BC();
      v30 = v44;
      (*v28)(v44);
      v29(v48, 0);
      sub_2208919AC();
      v31 = v27;
      v32 = *v43;
      (*v43)(v9, v30, v31);
      v33 = v49;
      v34 = v45(v9);
      if (v33)
      {
        (*v42)(v9, v47);
        return sub_2205A0790(v24, sub_2204BBE2C);
      }

      if (v34)
      {
        break;
      }

      v49 = 0;
      v27 = v47;
      (*v42)(v9, v47);
      sub_22089199C();
      if (*&v24[v25] == v48[0])
      {
        goto LABEL_7;
      }
    }

    sub_2205A0790(v24, sub_2204BBE2C);
    v38 = v41;
    v39 = v47;
    v32(v41, v9, v47);
    v36 = v38;
    v27 = v39;
    v35 = 0;
  }

  return (*(v40 + 56))(v36, v35, 1, v27);
}

uint64_t sub_22059C558@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_220886A4C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6, v9);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

uint64_t sub_22059C72C()
{
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  sub_2204446D4(0, &unk_281298980, MEMORY[0x277D6CB00]);
  sub_22088849C();
  if (v5)
  {
    sub_220458198(&v4, v6);
  }

  else
  {
    sub_22046DA2C((v0 + 16), v6);
  }

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_2204549FC(0);
  v1 = sub_2208884CC();
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = v0[15];
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v2;
}

uint64_t sub_22059C86C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_2205A071C(0, qword_281295190, type metadata accessor for StocksActivity);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for StocksActivity(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_22088651C();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = sub_2208858AC();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v6 = sub_22088564C();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v7 = sub_22088635C();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v8 = sub_2208854DC();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22059CB7C, 0, 0);
}

uint64_t sub_22059CB7C()
{
  v47 = v0;
  if (qword_27CF55AF8 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[2];
  v5 = sub_22088A84C();
  v0[28] = __swift_project_value_buffer(v5, qword_27CF6D020);
  v6 = *(v3 + 16);
  v0[29] = v6;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_22088A82C();
  v8 = sub_220891AFC();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  v11 = v0[23];
  v12 = v0[24];
  if (v9)
  {
    v44 = v8;
    v13 = swift_slowAlloc();
    v45 = v6;
    v46 = swift_slowAlloc();
    v14 = v46;
    *v13 = 136315138;
    v43 = sub_2208854CC();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_2204A7B78(v43, v16, &v46);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_22043F000, v7, v44, "Handling intent '%s'", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v19 = v14;
    v6 = v45;
    MEMORY[0x223D8B7F0](v19, -1, -1);
    MEMORY[0x223D8B7F0](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[31] = v17;
  v20 = v0[26];
  v21 = v0[23];
  v22 = v0[24];
  v6(v20, v0[2], v21);
  v23 = (*(v22 + 88))(v20, v21);
  if (v23 == *MEMORY[0x277D690D0])
  {
    v24 = v0[26];
    v26 = v0[21];
    v25 = v0[22];
    v27 = v0[20];
    (*(v0[24] + 96))(v24, v0[23]);
    (*(v26 + 32))(v25, v24, v27);
    sub_22088633C();
    sub_22088634C();
    v28 = swift_task_alloc();
    v0[32] = v28;
    *v28 = v0;
    v28[1] = sub_22059D118;
    v29 = v0[15];
    v30 = v0[19];
    v31 = 0;
LABEL_10:

    return sub_22059E068(v30, v29, v31);
  }

  if (v23 == *MEMORY[0x277D690D8])
  {
    v32 = v0[26];
    v34 = v0[10];
    v33 = v0[11];
    v35 = v0[9];
    (*(v0[24] + 96))(v32, v0[23]);
    (*(v34 + 32))(v33, v32, v35);
    sub_2208864FC();
    sub_22088650C();
    v36 = swift_task_alloc();
    v0[34] = v36;
    *v36 = v0;
    v36[1] = sub_22059D400;
    v29 = v0[14];
    v30 = v0[18];
    v31 = 1;
    goto LABEL_10;
  }

  if (v23 == *MEMORY[0x277D690B8] || v23 == *MEMORY[0x277D690C0])
  {
    v17(v0[26], v0[23]);
  }

  else if (v23 != *MEMORY[0x277D690C8])
  {
    v38 = v0[26];
    v39 = v0[23];
    MEMORY[0x223D80750]("Encountered unknown switch case. Please update to include the new case.", 71, 2, MEMORY[0x277D84F90]);
    v17(v38, v39);

    v40 = v0[1];

    return v40();
  }

  v0[36] = sub_2208917EC();
  v0[37] = sub_2208917DC();
  v42 = sub_2208917CC();

  return MEMORY[0x2822009F8](sub_22059D6E8, v42, v41);
}

uint64_t sub_22059D118()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  *(*v1 + 264) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_22059DD10;
  }

  else
  {
    v8 = sub_22059D2EC;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22059D2EC()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22059D400()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 96);
  *(*v1 + 280) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_22059DE2C;
  }

  else
  {
    v8 = sub_22059D5D4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_22059D5D4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22059D6E8()
{

  return MEMORY[0x2822009F8](sub_22059D750, 0, 0);
}

uint64_t sub_22059D750()
{
  v37 = v0;
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = v3[5];
  v7 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v6);
  (*(v7 + 8))(v5, v6, v7);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_2204AAE74(v0[4], qword_281295190, type metadata accessor for StocksActivity);
    MEMORY[0x223D80750]("Unexpectedly found no activity for intent that should have one.", 63, 2, MEMORY[0x277D84F90]);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = v0[29];
    v11 = v0[25];
    v12 = v0[23];
    v14 = v0[7];
    v13 = v0[8];
    v15 = v0[2];
    sub_2205A06B8(v0[4], v13);
    v10(v11, v15, v12);
    sub_2205A07F0(v13, v14, type metadata accessor for StocksActivity);
    v16 = sub_22088A82C();
    v17 = sub_220891AFC();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[31];
    v20 = v0[25];
    v21 = v0[23];
    v22 = v0[7];
    if (v18)
    {
      v34 = v17;
      v23 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = v35;
      *v23 = 136315394;
      v24 = sub_2208854CC();
      v26 = v25;
      v19(v20, v21);
      v27 = sub_2204A7B78(v24, v26, &v36);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = StocksActivity.identifier.getter();
      v30 = v29;
      sub_2205A0790(v22, type metadata accessor for StocksActivity);
      v31 = sub_2204A7B78(v28, v30, &v36);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_22043F000, v16, v34, "Mapped intent '%s' to activity '%s'", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D8B7F0](v35, -1, -1);
      MEMORY[0x223D8B7F0](v23, -1, -1);
    }

    else
    {

      sub_2205A0790(v22, type metadata accessor for StocksActivity);
      v19(v20, v21);
    }

    v0[38] = sub_2208917DC();
    v33 = sub_2208917CC();

    return MEMORY[0x2822009F8](sub_22059DB5C, v33, v32);
  }
}

uint64_t sub_22059DB5C()
{
  v1 = *(v0 + 64);

  sub_22059FDB0(v1);
  *(v0 + 312) = 0;

  return MEMORY[0x2822009F8](sub_22059DBF8, 0, 0);
}

uint64_t sub_22059DBF8()
{
  sub_2205A0790(*(v0 + 64), type metadata accessor for StocksActivity);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22059DD10()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22059DE2C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22059DF48()
{
  sub_2205A0790(*(v0 + 64), type metadata accessor for StocksActivity);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22059E068(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 369) = a3;
  *(v4 + 16) = a1;
  sub_2205A071C(0, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();
  v5 = type metadata accessor for WatchlistMembershipCommandContext(0);
  *(v4 + 56) = v5;
  *(v4 + 64) = *(v5 - 8);
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_22088685C();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  sub_2205A071C(0, &qword_281298FF0, MEMORY[0x277D698E0]);
  *(v4 + 112) = swift_task_alloc();
  v7 = sub_220886A4C();
  *(v4 + 120) = v7;
  *(v4 + 128) = *(v7 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v8 = sub_2208858AC();
  *(v4 + 160) = v8;
  *(v4 + 168) = *(v8 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  v9 = sub_22088564C();
  *(v4 + 216) = v9;
  *(v4 + 224) = *(v9 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  sub_2208917EC();
  *(v4 + 264) = sub_2208917DC();
  v11 = sub_2208917CC();
  *(v4 + 272) = v11;
  *(v4 + 280) = v10;

  return MEMORY[0x2822009F8](sub_22059E3E8, v11, v10);
}

uint64_t sub_22059E3E8()
{
  v46 = v0;
  if (qword_27CF55AF8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = sub_22088A84C();
  *(v0 + 288) = __swift_project_value_buffer(v9, qword_27CF6D020);
  v10 = *(v3 + 16);
  *(v0 + 296) = v10;
  *(v0 + 304) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8, v2);
  v11 = *(v6 + 16);
  *(v0 + 312) = v11;
  *(v0 + 320) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v4, v7, v5);
  v12 = sub_22088A82C();
  v13 = sub_220891AFC();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 256);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v18 = *(v0 + 208);
  v19 = *(v0 + 160);
  v20 = *(v0 + 168);
  if (v14)
  {
    log = v12;
    v21 = *(v0 + 369);
    v42 = v13;
    v22 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v22 = 136315650;
    if (v21)
    {
      v23 = 0x6863746157746F6ELL;
    }

    else
    {
      v23 = 0x676E696863746177;
    }

    if (v21)
    {
      v24 = 0xEB00000000676E69;
    }

    else
    {
      v24 = 0xE800000000000000;
    }

    v41 = v19;
    v25 = sub_2204A7B78(v23, v24, &v45);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v26 = sub_22088562C();
    v28 = v27;
    v29 = *(v16 + 8);
    v29(v15, v17);
    v30 = sub_2204A7B78(v26, v28, &v45);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    v31 = sub_22088588C();
    v33 = v32;
    v34 = *(v20 + 8);
    v34(v18, v41);
    v35 = sub_2204A7B78(v31, v33, &v45);

    *(v22 + 24) = v35;
    _os_log_impl(&dword_22043F000, log, v42, "Toggling symbol membership to watchlist to state=%s, symbolID=%s, watchlistID=%s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D8B7F0](v43, -1, -1);
    MEMORY[0x223D8B7F0](v22, -1, -1);
  }

  else
  {

    v34 = *(v20 + 8);
    v34(v18, v19);
    v29 = *(v16 + 8);
    v29(v15, v17);
  }

  *(v0 + 328) = v29;
  *(v0 + 336) = v34;
  v36 = *(v0 + 32);
  v38 = v36[12];
  v37 = v36[13];
  __swift_project_boxed_opaque_existential_1(v36 + 9, v38);
  v39 = swift_task_alloc();
  *(v0 + 344) = v39;
  *v39 = v0;
  v39[1] = sub_22059E77C;

  return MEMORY[0x2821CEDC0](v38, v37);
}

uint64_t sub_22059E77C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = v4[34];
    v6 = v4[35];
    v7 = sub_22059FC5C;
  }

  else
  {
    v4[45] = a1;
    v5 = v4[34];
    v6 = v4[35];
    v7 = sub_22059E8A4;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_22059E8A4()
{
  v201 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 112);
  v6 = *(v0 + 24);

  *(swift_task_alloc() + 16) = v6;
  sub_22059C558(sub_2205A0770, v1, v5);

  v7 = (*(v4 + 48))(v5, 1, v3);
  v8 = *(v0 + 312);
  v9 = *(v0 + 160);
  if (v7 == 1)
  {
    v10 = *(v0 + 184);
    v11 = *(v0 + 24);
    sub_2204AAE74(*(v0 + 112), &qword_281298FF0, MEMORY[0x277D698E0]);
    v8(v10, v11, v9);
    v12 = sub_22088A82C();
    v13 = sub_220891ADC();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 336);
    v16 = *(v0 + 184);
    v17 = *(v0 + 160);
    if (v14)
    {
      v197 = v13;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v200[0] = v19;
      *v18 = 136315138;
      v20 = sub_22088588C();
      v22 = v21;
      v15(v16, v17);
      v23 = sub_2204A7B78(v20, v22, v200);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_22043F000, v12, v197, "No watchlist found matching entity watchlistID=%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223D8B7F0](v19, -1, -1);
      MEMORY[0x223D8B7F0](v18, -1, -1);
    }

    else
    {

      v15(v16, v17);
    }

    sub_22088486C();
    sub_2204BBDE4(&qword_27CF570E8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_22088484C();
    swift_willThrow();
  }

  else
  {
    v165 = v2;
    v188 = *(v0 + 200);
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v27 = *(v0 + 120);
    v26 = *(v0 + 128);
    v28 = *(v0 + 24);
    (*(v26 + 32))(v24, *(v0 + 112), v27);
    v193 = *(v26 + 16);
    v193(v25, v24, v27);
    v8(v188, v28, v9);
    v29 = sub_22088A82C();
    v30 = sub_220891AFC();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 336);
    v33 = *(v0 + 200);
    v34 = *(v0 + 160);
    v35 = *(v0 + 144);
    v37 = *(v0 + 120);
    v36 = *(v0 + 128);
    if (v31)
    {
      v179 = *(v0 + 336);
      v38 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v200[0] = v189;
      *v38 = 136315394;
      log = v34;
      v39 = sub_220886A0C();
      v184 = v30;
      v41 = v40;
      v183 = *(v36 + 8);
      v183(v35, v37);
      v42 = sub_2204A7B78(v39, v41, v200);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v43 = sub_22088588C();
      v45 = v44;
      v179(v33, log);
      v46 = sub_2204A7B78(v43, v45, v200);

      *(v38 + 14) = v46;
      _os_log_impl(&dword_22043F000, v29, v184, "Matched watchlist ID to watchlistName='%s', watchlistID=%s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D8B7F0](v189, -1, -1);
      MEMORY[0x223D8B7F0](v38, -1, -1);
    }

    else
    {

      v32(v33, v34);
      v183 = *(v36 + 8);
      v183(v35, v37);
    }

    (*(v0 + 296))(*(v0 + 248), *(v0 + 16), *(v0 + 216));
    sub_2208867AC();
    if (qword_281296FD8 != -1)
    {
      swift_once();
    }

    v172 = *(v0 + 152);
    v174 = *(v0 + 120);
    v47 = *(v0 + 104);
    v49 = *(v0 + 80);
    v48 = *(v0 + 88);
    v50 = *(v0 + 72);
    v180 = *(v0 + 64);
    v51 = *(v0 + 48);
    v52 = *(v0 + 56);
    v167 = v47;
    (v193)(v50);
    v53 = *(v52 + 20);
    v54 = *(v48 + 16);
    (v54)(v50 + v53, v47, v49);
    v55 = *(v48 + 56);
    v55(v50 + v53, 0, 1, v49);
    v56 = v55;
    swift_getObjectType();
    v193(v51, v172, v174);
    v57 = *(v52 + 20);
    v173 = v54;
    (v54)(v51 + v57, v167, v49);
    v56(v51 + v57, 0, 1, v49);
    v58 = *(v180 + 56);
    v58(v51, 0, 1, v52);
    sub_22046599C();
    sub_22088B78C();
    sub_2204AAE74(v51, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
    v59 = *(v0 + 368);
    if (v59 == 2)
    {
      v60 = *(v0 + 152);
      v61 = *(v0 + 120);
      v62 = *(v0 + 104);
      v63 = *(v0 + 80);
      v64 = *(v0 + 88);
      v65 = *(v0 + 72);
      MEMORY[0x223D80750]("Unexpectedly found no state for Commands.Watchlist.membership, this should never fail.", 86, 2, MEMORY[0x277D84F90]);
      sub_22088486C();
      sub_2204BBDE4(&qword_27CF570E8, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
      swift_allocError();
      sub_22088485C();
      swift_willThrow();
      sub_2205A0790(v65, type metadata accessor for WatchlistMembershipCommandContext);
      (*(v64 + 8))(v62, v63);
      v66 = v60;
      v67 = v61;
    }

    else
    {
      if (v59)
      {
        v68 = 0x6863746157746F6ELL;
      }

      else
      {
        v68 = 0x676E696863746177;
      }

      if (v59)
      {
        v69 = 0xEB00000000676E69;
      }

      else
      {
        v69 = 0xE800000000000000;
      }

      if (*(v0 + 369))
      {
        v70 = 0x6863746157746F6ELL;
      }

      else
      {
        v70 = 0x676E696863746177;
      }

      if (*(v0 + 369))
      {
        v71 = 0xEB00000000676E69;
      }

      else
      {
        v71 = 0xE800000000000000;
      }

      v181 = v71;
      v168 = v68;
      v170 = v70;
      if (v68 == v70 && v69 == v71)
      {
      }

      else
      {
        v72 = sub_2208928BC();

        if ((v72 & 1) == 0)
        {
          v106 = *(v0 + 56);
          v107 = *(v0 + 40);
          sub_2205A07F0(*(v0 + 72), v107, type metadata accessor for WatchlistMembershipCommandContext);
          v58(v107, 0, 1, v106);
          sub_22088B81C();
          if (v165)
          {
            v191 = v165;
            v108 = *(v0 + 312);
            v109 = *(v0 + 296);
            v110 = *(v0 + 232);
            v111 = *(v0 + 216);
            v112 = *(v0 + 176);
            v113 = *(v0 + 160);
            v115 = *(v0 + 16);
            v114 = *(v0 + 24);
            sub_2204AAE74(*(v0 + 40), &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
            v109(v110, v115, v111);
            v108(v112, v114, v113);
            v116 = v165;
            v117 = sub_22088A82C();
            v118 = sub_220891ADC();

            v119 = os_log_type_enabled(v117, v118);
            v121 = *(v0 + 328);
            v120 = *(v0 + 336);
            v122 = *(v0 + 232);
            v123 = *(v0 + 216);
            v124 = *(v0 + 176);
            v186 = *(v0 + 160);
            if (v119)
            {
              v166 = v117;
              v125 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              v169 = swift_slowAlloc();
              v200[0] = v169;
              *v125 = 136315906;
              v162 = v120;
              v126 = sub_2204A7B78(v170, v181, v200);

              *(v125 + 4) = v126;
              *(v125 + 12) = 2080;
              v127 = sub_22088562C();
              v163 = v118;
              v129 = v128;
              v121(v122, v123);
              v130 = sub_2204A7B78(v127, v129, v200);

              *(v125 + 14) = v130;
              *(v125 + 22) = 2080;
              v131 = sub_22088588C();
              v133 = v132;
              v162(v124, v186);
              v134 = sub_2204A7B78(v131, v133, v200);

              *(v125 + 24) = v134;
              *(v125 + 32) = 2112;
              v135 = v191;
              v136 = _swift_stdlib_bridgeErrorToNSError();
              *(v125 + 34) = v136;
              *v164 = v136;
              _os_log_impl(&dword_22043F000, v166, v163, "Error toggling symbol membership to watchlist to state=%s, symbolID=%s, watchlistID=%s, error=%@", v125, 0x2Au);
              sub_2204AAE74(v164, &qword_28127E460, sub_2205A0858);
              MEMORY[0x223D8B7F0](v164, -1, -1);
              swift_arrayDestroy();
              MEMORY[0x223D8B7F0](v169, -1, -1);
              MEMORY[0x223D8B7F0](v125, -1, -1);
            }

            else
            {

              v120(v124, v186);
              v121(v122, v123);
            }
          }

          else
          {
            sub_2204AAE74(*(v0 + 40), &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
          }

          v137 = *(v0 + 152);
          v138 = *(v0 + 136);
          v139 = *(v0 + 120);
          (v173)(*(v0 + 96), *(v0 + 104), *(v0 + 80));
          v193(v138, v137, v139);
          v140 = sub_22088A82C();
          v141 = sub_220891AFC();
          v142 = os_log_type_enabled(v140, v141);
          v143 = *(v0 + 152);
          v144 = *(v0 + 136);
          v145 = *(v0 + 120);
          v146 = *(v0 + 96);
          v199 = *(v0 + 104);
          v148 = *(v0 + 80);
          v147 = *(v0 + 88);
          v196 = *(v0 + 72);
          if (v142)
          {
            v176 = v141;
            v149 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v200[0] = v187;
            *v149 = 136315650;
            v192 = v143;
            v150 = sub_2204A7B78(v170, v181, v200);
            v171 = v145;
            v151 = v150;

            *(v149 + 4) = v151;
            *(v149 + 12) = 2080;
            v152 = sub_22088677C();
            v154 = v153;
            v155 = *(v147 + 8);
            v155(v146, v148);
            v156 = sub_2204A7B78(v152, v154, v200);

            *(v149 + 14) = v156;
            *(v149 + 22) = 2080;
            v157 = sub_2208869BC();
            v159 = v158;
            v183(v144, v171);
            v160 = sub_2204A7B78(v157, v159, v200);

            *(v149 + 24) = v160;
            _os_log_impl(&dword_22043F000, v140, v176, "Successfully toggled symbol membership to watchlist to state=%s, symbolID=%s, watchlistID=%s", v149, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x223D8B7F0](v187, -1, -1);
            MEMORY[0x223D8B7F0](v149, -1, -1);

            sub_2205A0790(v196, type metadata accessor for WatchlistMembershipCommandContext);
            v155(v199, v148);
            v183(v192, v171);
          }

          else
          {

            v183(v144, v145);
            v161 = *(v147 + 8);
            v161(v146, v148);
            sub_2205A0790(v196, type metadata accessor for WatchlistMembershipCommandContext);
            v161(v199, v148);
            v183(v143, v145);
          }

          goto LABEL_37;
        }
      }

      v198 = v59;
      v73 = *(v0 + 312);
      v74 = *(v0 + 192);
      v75 = *(v0 + 160);
      v76 = *(v0 + 24);
      (*(v0 + 296))(*(v0 + 240), *(v0 + 16), *(v0 + 216));
      v73(v74, v76, v75);
      v77 = sub_22088A82C();
      v78 = sub_220891ADC();
      v79 = os_log_type_enabled(v77, v78);
      v80 = *(v0 + 336);
      v81 = *(v0 + 240);
      v190 = *(v0 + 216);
      v194 = *(v0 + 328);
      v82 = *(v0 + 192);
      v83 = *(v0 + 160);
      if (v79)
      {
        v175 = *(v0 + 160);
        v84 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v200[0] = v185;
        *v84 = 136315906;
        loga = v77;
        v85 = sub_2204A7B78(v170, v181, v200);

        *(v84 + 4) = v85;
        *(v84 + 12) = 2080;
        v182 = v78;
        v86 = sub_2204A7B78(v168, v69, v200);

        *(v84 + 14) = v86;
        *(v84 + 22) = 2080;
        v87 = sub_22088562C();
        v89 = v88;
        v194(v81, v190);
        v90 = sub_2204A7B78(v87, v89, v200);

        *(v84 + 24) = v90;
        *(v84 + 32) = 2080;
        v91 = sub_22088588C();
        v93 = v92;
        v80(v82, v175);
        v94 = sub_2204A7B78(v91, v93, v200);

        *(v84 + 34) = v94;
        _os_log_impl(&dword_22043F000, loga, v182, "Unable to toggle symbol watchlist membership to state it's already in expectedState=%s, currentState=%s, symbolID=%s, watchlistID=%s", v84, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x223D8B7F0](v185, -1, -1);
        MEMORY[0x223D8B7F0](v84, -1, -1);
      }

      else
      {

        v80(v82, v83);
        v194(v81, v190);
      }

      v95 = sub_220885EEC();
      sub_2204BBDE4(&qword_27CF570F0, MEMORY[0x277D69540], MEMORY[0x277D69548]);
      swift_allocError();
      v97 = v96;
      if (v198)
      {
        v98 = sub_2208928BC();
      }

      else
      {
        v98 = 1;
      }

      v195 = *(v0 + 152);
      v99 = *(v0 + 120);
      v100 = *(v0 + 104);
      v102 = *(v0 + 80);
      v101 = *(v0 + 88);
      v103 = *(v0 + 72);

      *v97 = v98 & 1;
      (*(*(v95 - 8) + 104))(v97, *MEMORY[0x277D69538], v95);
      swift_willThrow();
      sub_2205A0790(v103, type metadata accessor for WatchlistMembershipCommandContext);
      (*(v101 + 8))(v100, v102);
      v66 = v195;
      v67 = v99;
    }

    v183(v66, v67);
  }

LABEL_37:

  v104 = *(v0 + 8);

  return v104();
}

uint64_t sub_22059FC5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22059FDB0(uint64_t a1)
{
  v31 = a1;
  sub_2205A071C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v27 - v7;
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  sub_2204446D4(0, &unk_281298980, MEMORY[0x277D6CB00]);
  sub_22088849C();
  if (*(&v41 + 1))
  {
    sub_2205A0B34(&v40, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  }

  v32 = sub_22059C72C();
  v9 = v1[14];
  v10 = sub_22088969C();
  v11 = *(*(v10 - 8) + 56);
  v33 = v8;
  v11(v8, 1, 1, v10);
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  __swift_project_boxed_opaque_existential_1(v1 + 16, v1[19]);
  sub_22088849C();
  if (*(&v37 + 1))
  {
    sub_220458198(&v36, v39);
  }

  else
  {
    sub_22046DA2C((v1 + 16), v39);
    if (*(&v37 + 1))
    {
      sub_2205A0B34(&v36, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    }
  }

  v43 = v32;
  sub_2205A0924(v39, &v34, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  if (v35)
  {
    sub_220458198(&v34, &v36);
    v12 = sub_220597454(&v36);
    v14 = v13;
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    sub_2205A0B34(&v34, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v12 = qword_2812908F8;
    v14 = qword_281290900;
    v16 = qword_281290908;

    sub_2204A80F4(v14, v16);
  }

  v35 = sub_22088731C();
  *&v34 = v9;
  v17 = v9;
  v18 = v29;
  sub_2205A08A4(v33, v29);
  sub_2205A0924(&v40, &v36, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v19 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v20 = (v3 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v17;
  sub_2205A0994(v18, v21 + v19);
  v22 = v21 + v20;
  v23 = v37;
  *v22 = v36;
  *(v22 + 16) = v23;
  *(v22 + 32) = v38;
  v24 = (v21 + ((v20 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v24 = v12;
  v24[1] = v14;
  v24[2] = v16;
  swift_retain_n();

  sub_2204A80F4(v14, v16);
  sub_2204549FC(0);
  sub_2204BBDE4(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  v25 = v30;
  sub_22088E92C();

  if (v25)
  {
    sub_2205A0B34(&v34, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    sub_2205A0AE4(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_220888EBC();

    sub_2204DA45C(v14, v16);
    sub_2205A0B34(v39, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(&v40, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    return sub_2204AAE74(v33, &qword_281298480, MEMORY[0x277D686D0]);
  }

  else
  {

    sub_2204DA45C(v14, v16);
    sub_2205A0B34(v39, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(&v40, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2204AAE74(v33, &qword_281298480, MEMORY[0x277D686D0]);

    return sub_2205A0B34(&v34, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  }
}

uint64_t sub_2205A0500(uint64_t a1)
{
  v1 = sub_2208869BC();
  v3 = v2;
  if (v1 == sub_22088588C() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2208928BC();
  }

  return v5 & 1;
}

uint64_t sub_2205A059C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2205A0620(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2204C6018;

  return sub_22059C86C(a1);
}

uint64_t sub_2205A06B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksActivity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2205A071C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2205A0790(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2205A07F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2205A0858()
{
  result = qword_28127E468;
  if (!qword_28127E468)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E468);
  }

  return result;
}

uint64_t sub_2205A08A4(uint64_t a1, uint64_t a2)
{
  sub_2205A071C(0, &qword_281298480, MEMORY[0x277D686D0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205A0924(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_220448010(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2205A0994(uint64_t a1, uint64_t a2)
{
  sub_2205A071C(0, &qword_281298480, MEMORY[0x277D686D0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205A0A14()
{
  sub_2205A071C(0, &qword_281298480, MEMORY[0x277D686D0]);

  return sub_220598700();
}

void sub_2205A0AE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2205A0B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2205A0B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v5 = sub_2208899EC();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_22088938C();
  *&v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v8);
  v49 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_22088937C();
  v53 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v10);
  v61 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220889CAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220889DAC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_220889D6C();
  MEMORY[0x28223BE20](v59, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v26);
  v57 = &v48 - v29;
  v58 = v27;
  v30 = a2 - 1;
  v31 = a1;
  if (v30 > 2)
  {
    v32 = MEMORY[0x277D68CB0];
  }

  else
  {
    v32 = qword_27844A640[v30];
  }

  v33 = v57;
  v34 = v59;
  (*(v27 + 104))(v57, *v32, v59, v28);
  (*(v13 + 104))(v16, *MEMORY[0x277D68BD8], v12);
  (*(v58 + 16))(v24, v33, v34);
  sub_220889D9C();
  sub_2205A1540(&qword_27CF570F8, MEMORY[0x277D68D00], MEMORY[0x277D68CF8]);
  v48 = "ampaignLandingPageTracker";
  sub_220886F1C();
  (*(v18 + 8))(v21, v17);
  sub_22088A28C();
  v35 = sub_22088A2AC();
  v56 = v31;
  if (v35 > 5)
  {
    v36 = MEMORY[0x277D68438];
  }

  else
  {
    v36 = qword_27844A658[v35];
  }

  (*(v50 + 104))(v49, *v36, v51);
  sub_22088936C();
  sub_2205A14E8(0);
  v51 = v37;
  v38 = sub_220886F8C();
  v39 = *(v38 - 8);
  v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v41 = swift_allocObject();
  v50 = xmmword_220899360;
  *(v41 + 16) = xmmword_220899360;
  v42 = *MEMORY[0x277CEAD18];
  v43 = *(v39 + 104);
  v43(v41 + v40, v42, v38);
  sub_2205A1540(&qword_281298510, MEMORY[0x277D68410], MEMORY[0x277D68408]);
  sub_220886F1C();

  sub_22088A2CC();
  v44 = v52;
  sub_2208899DC();
  v45 = swift_allocObject();
  *(v45 + 16) = v50;
  v43(v45 + v40, v42, v38);
  sub_2205A1540(&unk_2812983E0, MEMORY[0x277D68948], MEMORY[0x277D68940]);
  v46 = v55;
  sub_220886F1C();

  (*(v54 + 8))(v44, v46);
  sub_220889CBC();
  sub_2205A1540(&qword_27CF57100, MEMORY[0x277D68BF8], MEMORY[0x277D68BF0]);
  memset(v63, 0, 32);
  sub_220886F3C();
  sub_22056D130(v63);
  (*(v53 + 8))(v61, v62);
  return (*(v58 + 8))(v57, v59);
}

double sub_2205A1328(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088A2FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v8);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  (*(v5 + 32))(v10 + v9, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_22088726C();

  return result;
}

uint64_t sub_2205A1474(uint64_t a1)
{
  v3 = *(sub_22088A2FC() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2205A0B94(a1, v4, v5);
}

void sub_2205A14E8(uint64_t a1)
{
  if (!qword_28127E170)
  {
    sub_220886F8C();
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E170);
    }
  }
}

uint64_t sub_2205A1540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_2205A1588(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_yahooAttributionButton;
  *&v6[v12] = [objc_opt_self() buttonWithType_];
  v13 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v14 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_marketStatusLabel;
  *&v6[v14] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19.receiver = v6;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = *&v15[OBJC_IVAR____TtC8StocksUI15CardToolbarView_yahooAttributionButton];
  v17 = v15;
  [v17 addSubview_];
  [v17 addSubview_];
  [v17 addSubview_];

  return v17;
}

void sub_2205A17C0()
{
  v1 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_yahooAttributionButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_separatorView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI15CardToolbarView_marketStatusLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

void sub_2205A194C(void *a1)
{
  v2 = sub_22089132C();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v5, &v6);
    type metadata accessor for ForYouFeedViewController();
    swift_dynamicCast();
    sub_22088C71C();
    sub_22088BFCC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for TickerRefreshPriceDataBlueprintModifier(uint64_t a1)
{
  result = qword_2812809C8;
  if (!qword_2812809C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2205A1AB4(uint64_t a1)
{
  result = sub_22088582C();
  if (v2 <= 0x3F)
  {
    result = sub_2204446D4(319, &qword_281288DB0, &protocol descriptor for SparklineModelProviderType);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2205A1B58(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  v5 = sub_22088B64C();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204EE870(0, &qword_281297858, MEMORY[0x277D6DF88]);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30 - v10;
  sub_2204EF684(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  sub_2204EE870(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - v16;
  v41 = v3;
  v42 = a1;
  sub_220572AE4(sub_2205A3E5C, v40);
  v19 = v18;
  sub_2204EF5C8(0);
  v21 = v20;
  v22 = sub_2204EF2A4(&qword_281297E20, sub_2204EF5C8, MEMORY[0x277D6D720]);
  v23 = sub_2204EF2A4(&qword_281297E28, sub_2204EF5C8, MEMORY[0x277D6D718]);
  MEMORY[0x223D80A20](v19, v21, v22, v23);
  type metadata accessor for TickerModel(0);
  sub_220483B88();
  sub_2204EF2A4(&qword_281294CA0, type metadata accessor for TickerModel, &unk_2208B3420);
  sub_22088E7CC();
  sub_2205A3E7C();
  sub_22088BDEC();
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  if (sub_22088B65C())
  {
    v25 = v36;
    v24 = v37;
    (*(v36 + 104))(v11, *MEMORY[0x277D6DF80], v37);
  }

  else
  {
    v27 = v31;
    v26 = v32;
    v28 = v33;
    (*(v32 + 104))(v31, *MEMORY[0x277D6D868], v33);
    sub_22088C67C();
    (*(v26 + 8))(v27, v28);
    v25 = v36;
    v24 = v37;
  }

  v39(v11);
  (*(v25 + 8))(v11, v24);
  (*(v34 + 8))(v17, v35);
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_2205A1FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2204EEED4(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  sub_2204EF5C8(0);
  sub_22088B2AC();
  v18 = a1;
  v19 = v20;
  v16 = a2;
  v17 = a3;
  sub_220572E24(sub_2205A3ED0, v15);
  v9 = v8;
  sub_2204EECD0(0);
  v11 = v10;
  v12 = sub_2204EF2A4(&qword_281297FD8, sub_2204EECD0, MEMORY[0x277D6D408]);
  v13 = sub_2204EF2A4(&qword_281297FE0, sub_2204EECD0, MEMORY[0x277D6D3F8]);
  MEMORY[0x223D80A20](v9, v11, v12, v13);
  type metadata accessor for TickerModel(0);
  sub_220483B88();
  sub_2204EF2A4(&qword_281294CA0, type metadata accessor for TickerModel, &unk_2208B3420);
  return sub_22088B29C();
}

uint64_t sub_2205A21B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v146 = a4;
  v147 = a3;
  v164 = a5;
  v145 = sub_2208852DC();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145, v7);
  v161 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_2208857EC();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143, v9);
  v140 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_22088699C();
  v159 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v11);
  v156 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v155 = &v127 - v15;
  v160 = sub_220885D4C();
  v157 = *(v160 - 8);
  MEMORY[0x28223BE20](v160, v16);
  v154 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453F64(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v137 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v136 = &v127 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v135 = &v127 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v133 = &v127 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v151 = &v127 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v153 = &v127 - v35;
  v162 = sub_22088685C();
  v152 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v36);
  v165 = &v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453F64(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v149 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v158 = &v127 - v43;
  v44 = sub_22088676C();
  v163 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v45);
  v132 = &v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v127 - v49;
  v139 = type metadata accessor for TickerModel(0);
  MEMORY[0x28223BE20](v139, v51);
  v53 = &v127 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v127 - v56;
  v148 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v148, v58);
  v150 = &v127 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v61);
  v63 = (&v127 - v62);
  sub_2204EECD0(0);
  v65 = v64;
  v66 = a1;
  sub_22088AD8C();
  v138 = v57;
  sub_2205A3EF4(v57, v53, type metadata accessor for TickerModel);
  sub_220483A44(0);
  v68 = v67;
  sub_2205A3EF4(&v53[*(v67 + 48)], v63, type metadata accessor for StockViewModel);
  type metadata accessor for TickerRefreshPriceDataBlueprintModifier(0);
  v134 = a2;
  v69 = sub_22088581C();
  v166 = v63;
  v70 = sub_22088681C();
  if (!*(v69 + 16))
  {

    goto LABEL_6;
  }

  v72 = sub_2204AF97C(v70, v71);
  v74 = v73;

  if ((v74 & 1) == 0)
  {
LABEL_6:

    sub_2204D6068(v166, type metadata accessor for StockViewModel);
    return (*(*(v65 - 8) + 16))(v164, v66, v65);
  }

  v131 = v68;
  v75 = *(v69 + 56) + *(v163 + 72) * v72;
  v76 = v163;
  v129 = *(v163 + 16);
  v77 = v132;
  (v129)(v132, v75, v44);

  (*(v76 + 32))(v50, v77, v44);
  v78 = v158;
  v79 = v166;
  sub_2205A32C4(v134, v166, v50, v158);
  v130 = *(v152 + 16);
  v130(v165, v79, v162);
  v80 = v153;
  v132 = v50;
  (v129)(v153, v50, v44);
  (*(v76 + 56))(v80, 0, 1, v44);
  v129 = type metadata accessor for StockSparklineViewModel;
  v81 = v149;
  sub_2204EF9E4(v78, v149, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v82 = v148;
  v83 = *(v148 + 32);
  v127 = *(v157 + 16);
  v84 = v154;
  v134 = v44;
  v85 = v160;
  v127(v154, v79 + v83, v160);
  LODWORD(v128) = *(&v79->isa + v82[9]);
  v86 = v150;
  v130(v150, v165, v162);
  v87 = MEMORY[0x277D697F8];
  sub_2204EF9E4(v80, v86 + v82[5], &qword_2812990C0, MEMORY[0x277D697F8]);
  sub_2204EF9E4(v81, v86 + v82[6], qword_28128AAE8, v129);
  v88 = v84;
  v89 = v86;
  v90 = v85;
  v91 = v134;
  v127((v86 + v82[8]), v88, v90);
  *(v86 + v82[9]) = v128;
  v92 = v151;
  sub_2204EF9E4(v80, v151, &qword_2812990C0, v87);
  v93 = v155;
  sub_2208867CC();
  v94 = v133;
  v95 = v163;
  sub_2204EF9E4(v92, v133, &qword_2812990C0, v87);
  v96 = *(v95 + 48);
  if (v96(v94, 1, v91) == 1)
  {
    sub_2204B389C(v94, &qword_2812990C0, MEMORY[0x277D697F8]);
    v130 = 0;
    LODWORD(v129) = 1;
  }

  else
  {
    v130 = sub_22088675C();
    LODWORD(v129) = v98;
    (*(v95 + 8))(v94, v91);
  }

  v99 = v137;
  v100 = v135;
  sub_2204EF9E4(v92, v135, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v96(v100, 1, v91) == 1)
  {
    sub_2204B389C(v100, &qword_2812990C0, MEMORY[0x277D697F8]);
    v137 = 0;
    LODWORD(v135) = 1;
  }

  else
  {
    v137 = sub_22088666C();
    LODWORD(v135) = v101;
    (*(v95 + 8))(v100, v91);
  }

  v102 = v136;
  sub_2204EF9E4(v92, v136, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v96(v102, 1, v91) == 1)
  {
    sub_2204B389C(v102, &qword_2812990C0, MEMORY[0x277D697F8]);
    v136 = 0;
    LODWORD(v133) = 1;
  }

  else
  {
    v136 = sub_22088671C();
    LODWORD(v133) = v103;
    (*(v95 + 8))(v102, v91);
  }

  sub_2204EF9E4(v92, v99, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v96(v99, 1, v91) == 1)
  {
    sub_2204B389C(v99, &qword_2812990C0, MEMORY[0x277D697F8]);
    v128 = 0;
    v127 = 0;
  }

  else
  {
    v128 = sub_22088668C();
    v127 = v104;
    (*(v95 + 8))(v99, v91);
  }

  v105 = v89 + *(v148 + 28);
  v148 = *(v159 + 16);
  v106 = v156;
  v107 = v141;
  (v148)(v156, v93, v141);
  v108 = v142;
  v109 = v140;
  v110 = v143;
  (*(v142 + 104))(v140, *MEMORY[0x277D69288], v143);
  v111 = v161;
  sub_22088524C();
  *v105 = v130;
  *(v105 + 8) = v129 & 1;
  *(v105 + 16) = v137;
  *(v105 + 24) = v135 & 1;
  *(v105 + 32) = v136;
  *(v105 + 40) = v133 & 1;
  v112 = v127;
  *(v105 + 48) = v128;
  *(v105 + 56) = v112;
  v113 = type metadata accessor for PriceViewModel(0);
  (v148)(v105 + v113[10], v106, v107);
  *(v105 + 64) = 9666786;
  *(v105 + 72) = 0xA300000000000000;
  (*(v108 + 16))(v105 + v113[9], v109, v110);
  v114 = v144;
  v115 = v111;
  v116 = v145;
  (*(v144 + 16))(v105 + v113[11], v115, v145);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v117 = qword_2812B6B48;
  (*(v108 + 8))(v109, v110);
  v118 = *(v159 + 8);
  v118(v156, v107);
  v118(v155, v107);
  v119 = MEMORY[0x277D697F8];
  sub_2204B389C(v151, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v157 + 8))(v154, v160);
  sub_2204B389C(v149, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_2204B389C(v153, &qword_2812990C0, v119);
  (*(v152 + 8))(v165, v162);
  v120 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v114 + 40))(v117 + v120, v161, v116);
  swift_endAccess();
  sub_2204EF5C8(0);
  sub_22088B2BC();
  sub_2204EE870(0, &qword_281296F38, MEMORY[0x277D6EC60]);
  v121 = sub_22088E6CC();
  LOBYTE(v119) = v122;

  if (v119)
  {
    v123 = 0;
  }

  else
  {
    v123 = v121;
  }

  v124 = *(v131 + 48);
  v125 = v138;
  *v138 = v123;
  v126 = v150;
  sub_220527BCC(v150, v125 + v124);
  sub_2204EF2A4(&qword_281294CA0, type metadata accessor for TickerModel, &unk_2208B3420);
  sub_22088AD7C();
  sub_2204D6068(v126, type metadata accessor for StockViewModel);
  sub_2204B389C(v158, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  (*(v163 + 8))(v132, v134);
  return sub_2204D6068(v166, type metadata accessor for StockViewModel);
}

uint64_t sub_2205A32C4@<X0>(uint64_t a1@<X0>, NSObject *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a4;
  v123 = a3;
  v113 = type metadata accessor for StockSparklineViewModel.CacheModel(0);
  MEMORY[0x28223BE20](v113, v6);
  v114 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220453F64(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v106 - v10;
  sub_220453F64(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v106 - v14;
  sub_220453F64(0, &qword_28127EDE8, MEMORY[0x277D6C680]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v115 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v106 - v21;
  v23 = sub_220890D8C();
  v120 = *(v23 - 8);
  v121 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v110 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v109 = &v106 - v28;
  v119 = sub_22088665C();
  v29 = *(v119 - 8);
  MEMORY[0x28223BE20](v119, v30);
  v112 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v116 = &v106 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v106 - v37;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v106 - v41;
  refreshed = type metadata accessor for TickerRefreshPriceDataBlueprintModifier(0);
  v118 = a1;
  v43 = sub_2208857FC();
  v44 = sub_22088681C();
  if (*(v43 + 16))
  {
    v111 = a2;
    v46 = sub_2204AF97C(v44, v45);
    v48 = v47;

    if (v48)
    {
      v49 = v29;
      v50 = *(v43 + 56) + *(v29 + 72) * v46;
      v51 = v29 + 16;
      v52 = *(v29 + 16);
      v53 = v119;
      v107 = v52;
      v108 = v51;
      v52(v38, v50, v119);

      (*(v49 + 32))(v42, v38, v53);
      __swift_project_boxed_opaque_existential_1((v118 + *(refreshed + 24)), *(v118 + *(refreshed + 24) + 24));
      v54 = sub_22088676C();
      v55 = *(v54 - 8);
      (*(v55 + 16))(v15, v123, v54);
      (*(v55 + 56))(v15, 0, 1, v54);
      sub_2204B0174(v42, v15, v111, v22, 600.0, 0.02);
      sub_2204B389C(v15, &qword_2812990C0, MEMORY[0x277D697F8]);
      v57 = v120;
      v56 = v121;
      if ((*(v120 + 48))(v22, 1, v121) != 1)
      {
        v97 = v109;
        (*(v57 + 32))(v109, v22, v56);
        v98 = v122;
        (*(v57 + 16))(v122, v97, v56);
        v99 = type metadata accessor for StockSparklineViewModel(0);
        v107(v98 + v99[8], v42, v53);
        v118 = sub_22088675C();
        LODWORD(refreshed) = v100;
        v101 = sub_22088666C();
        v103 = v102;
        (*(v57 + 8))(v97, v56);
        (*(v49 + 8))(v42, v53);
        v104 = v98 + v99[5];
        *v104 = v118;
        *(v104 + 8) = refreshed & 1;
        v105 = v98 + v99[6];
        *v105 = v101;
        *(v105 + 8) = v103 & 1;
        *(v98 + v99[7]) = 0;
        return (*(*(v99 - 1) + 56))(v98, 0, 1, v99);
      }

      (*(v49 + 8))(v42, v53);
      sub_2204B389C(v22, &qword_28127EDE8, MEMORY[0x277D6C680]);
      a2 = v111;
      v29 = v49;
    }

    else
    {

      a2 = v111;
    }
  }

  else
  {
  }

  v58 = type metadata accessor for StockViewModel(0);
  sub_2204EF9E4(a2 + *(v58 + 24), v11, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v59 = type metadata accessor for StockSparklineViewModel(0);
  v60 = *(v59 - 1);
  if ((*(v60 + 48))(v11, 1, v59) == 1)
  {
    v61 = qword_28128AAE8;
    v62 = type metadata accessor for StockSparklineViewModel;
LABEL_11:
    sub_2204B389C(v11, v61, v62);
    v78 = sub_220891ADC();
    sub_22048D7F8(0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_220899360;
    v80 = sub_22088681C();
    v82 = v81;
    *(v79 + 56) = MEMORY[0x277D837D0];
    *(v79 + 64) = sub_22048D860();
    *(v79 + 32) = v80;
    *(v79 + 40) = v82;
    sub_22048D2F4();
    v83 = sub_2208922DC();
    sub_22088A7EC("Ticker: failed to created view model for sparkline %{public}@", 61, 2, &dword_22043F000, v83, v78, v79);

    return (*(v60 + 56))(v122, 1, 1, v59);
  }

  v63 = v114;
  v64 = *(v113 + 24);
  v65 = &v11[v59[8]];
  v66 = v119;
  v111 = *(v29 + 16);
  (v111)(&v114[v64], v65, v119);
  sub_2204D6068(v11, type metadata accessor for StockSparklineViewModel);
  v67 = v29;
  v113 = v29;
  v68 = v66;
  v69 = a2;
  v70 = *(v67 + 32);
  v71 = &v63[v64];
  v72 = v112;
  v70(v112, v71, v68);
  v73 = v116;
  v70(v116, v72, v68);
  __swift_project_boxed_opaque_existential_1((v118 + *(refreshed + 24)), *(v118 + *(refreshed + 24) + 24));
  v74 = sub_22088676C();
  v75 = *(v74 - 8);
  (*(v75 + 16))(v15, v123, v74);
  (*(v75 + 56))(v15, 0, 1, v74);
  v11 = v115;
  sub_2204B0174(v73, v15, v69, v115, 600.0, 0.02);
  sub_2204B389C(v15, &qword_2812990C0, MEMORY[0x277D697F8]);
  v76 = v120;
  v77 = v121;
  if ((*(v120 + 48))(v11, 1, v121) == 1)
  {
    (*(v113 + 8))(v73, v68);
    v61 = &qword_28127EDE8;
    v62 = MEMORY[0x277D6C680];
    goto LABEL_11;
  }

  v85 = v73;
  v86 = v110;
  (*(v76 + 32))(v110, v11, v77);
  v87 = v122;
  (*(v76 + 16))(v122, v86, v77);
  (v111)(v87 + v59[8], v85, v68);
  v88 = sub_22088675C();
  v90 = v89;
  v91 = sub_22088666C();
  v92 = v76;
  v94 = v93;
  (*(v92 + 8))(v86, v77);
  (*(v113 + 8))(v116, v68);
  v95 = v87 + v59[5];
  *v95 = v88;
  *(v95 + 8) = v90 & 1;
  v96 = v87 + v59[6];
  *v96 = v91;
  *(v96 + 8) = v94 & 1;
  *(v87 + v59[7]) = 0;
  return (*(v60 + 56))(v87, 0, 1, v59);
}

unint64_t sub_2205A3E7C()
{
  result = qword_28128AA78;
  if (!qword_28128AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128AA78);
  }

  return result;
}

uint64_t sub_2205A3EF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205A3FFC@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v324 = a4;
  v334 = COERCE_DOUBLE(sub_220885D4C());
  v9 = *(*&v334 - 8);
  MEMORY[0x28223BE20](*&v334, v10);
  *&v328 = &v296 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = COERCE_DOUBLE(sub_22088699C());
  v12 = *(*&v332 - 8);
  MEMORY[0x28223BE20](*&v332, v13);
  *&v319 = &v296 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088DA1C();
  v322 = *(v15 - 8);
  v323 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v296 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C1DC();
  v321 = v18;
  sub_22088D9EC();
  v20 = v19;
  v22 = v21;
  sub_22088C20C();
  v24 = v23;
  sub_22088C21C();
  v26 = v25;
  v310 = v24;
  sub_220891A6C();
  v28 = v27;
  v29 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v320 = a3;
  v30 = sub_22088C24C();
  [v29 scaledValueForValue:v30 compatibleWithTraitCollection:22.0];
  v32 = v31;

  LODWORD(v325) = a1;
  if (a1)
  {
    v33 = 8.0;
  }

  else
  {
    v33 = 24.0;
  }

  if (a1)
  {
    v34 = 12.0;
  }

  else
  {
    v34 = 4.0;
  }

  v35 = type metadata accessor for StockViewModel(0);
  v36 = a2 + v35[7];
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v37 = sub_2208867BC();
  v333 = sub_220605F2C(v37, v38, 0);

  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v39 = sub_2204C4258(a2 + v35[5]);
  v331 = COERCE_DOUBLE(sub_220606880(v39, v40));

  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v41 = sub_22088684C();
  v330 = COERCE_DOUBLE(sub_220606AA4(v41, v42));

  v329 = COERCE_DOUBLE(__swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40)));
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v43 = *v36;
  LODWORD(v327) = *(v36 + 8);
  v326 = v43;
  if (LOBYTE(v327))
  {
    goto LABEL_23;
  }

  v44 = v43;
  if ((v350 & 1) == 0)
  {
    goto LABEL_18;
  }

  v45 = type metadata accessor for PriceViewModel(0);
  v46 = v319;
  v47 = v332;
  (*(v12 + 16))(COERCE_DOUBLE(*&v319), v36 + *(v45 + 40), COERCE_DOUBLE(*&v332));
  v48 = (*(v12 + 88))(COERCE_DOUBLE(*&v46), COERCE_DOUBLE(*&v47));
  v49 = 2;
  if (v48 != *MEMORY[0x277D69898] && v48 != *MEMORY[0x277D698A0] && v48 != *MEMORY[0x277D69870] && v48 != *MEMORY[0x277D69888] && v48 != *MEMORY[0x277D69878] && v48 != *MEMORY[0x277D69890])
  {
    if (v48 == *MEMORY[0x277D69880])
    {
LABEL_18:
      v49 = 0;
      goto LABEL_19;
    }

    if (v48 != *MEMORY[0x277D69868])
    {
      (*(v12 + 8))(COERCE_DOUBLE(*&v46), COERCE_DOUBLE(*&v47));
    }

    v49 = 2;
  }

LABEL_19:
  if (qword_281294078 != -1)
  {
    v295 = v49;
    swift_once();
    v49 = v295;
  }

  v50 = sub_2204BD7B8(*(v36 + 48), *(v36 + 56), 5, 1, v49, v44);
  if (v51)
  {
    v52 = v50;
    v53 = v51;
    goto LABEL_24;
  }

LABEL_23:
  v52 = *(v36 + 64);
  v53 = *(v36 + 72);

LABEL_24:
  v332 = *(v36 + 16);
  v54 = *(v36 + 24);
  v329 = COERCE_DOUBLE(sub_220606CCC(v52, v53));

  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v55 = v328;
  v56 = v334;
  (*(v9 + 16))(COERCE_CGFLOAT(*&v328), a2 + v35[8], COERCE_DOUBLE(*&v334));
  v57 = (*(v9 + 88))(COERCE_CGFLOAT(*&v55), COERCE_DOUBLE(*&v56));
  if (v57 == *MEMORY[0x277D69480])
  {
    v58 = v330;
    if (v54)
    {
      v59 = *(v36 + 64);
      v60 = *(v36 + 72);

      v61 = v329;
    }

    else
    {
      v63 = v326 >= 5.0;
      if (v326 == 0.0)
      {
        v63 = 1;
      }

      v64 = sub_2204DBC04(v63 & ~LOBYTE(v327), v332);
      v61 = v329;
      if (v65)
      {
        v59 = v64;
        v60 = v65;
      }

      else
      {
        v59 = *(v36 + 64);
        v60 = *(v36 + 72);
      }
    }

    v70 = v54;
    goto LABEL_51;
  }

  v58 = v330;
  if (v57 != *MEMORY[0x277D69468])
  {
    v61 = v329;
    if (v57 != *MEMORY[0x277D69478])
    {
      result = sub_2208928AC();
      __break(1u);
      return result;
    }

    type metadata accessor for PriceViewModel(0);
    if ((sub_2208857CC() & 1) == 0)
    {
      v59 = sub_220691100(0);
      v60 = v71;
      v70 = v54;
      goto LABEL_51;
    }

    if ((LODWORD(v327) | v54))
    {
      goto LABEL_47;
    }

    if (v326 - v332 <= 0.0)
    {
      v62 = 0.0;
    }

    else
    {
      v62 = v332 / (v326 - v332);
    }

    if (qword_27CF55AB8 == -1)
    {
      goto LABEL_45;
    }

LABEL_86:
    swift_once();
    goto LABEL_45;
  }

  v61 = v329;
  if ((LODWORD(v327) | v54))
  {
LABEL_47:
    v59 = *(v36 + 64);
    v60 = *(v36 + 72);

    v70 = v54;
    goto LABEL_51;
  }

  if (v326 - v332 <= 0.0)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = v332 / (v326 - v332);
  }

  if (qword_27CF55AB8 != -1)
  {
    goto LABEL_86;
  }

LABEL_45:
  v66 = qword_27CF6D008;
  v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v68 = [v66 stringFromNumber_];

  if (!v68)
  {
    goto LABEL_47;
  }

  v59 = sub_22089136C();
  v60 = v69;

  v70 = v54;
LABEL_51:
  y = v33 + v32;
  v319 = v20 + v22;
  v72 = v26 - v28 - (v20 + v22);
  v334 = v34 + v33 + v32;
  v73 = v72 - v334;
  v74 = sub_22060617C(v59, v60, *&v332, v70);

  [*&v58 boundingRectWithSize:32 options:0 context:{v73, 1.79769313e308}];
  v76 = v75;
  v311 = v77;
  v327 = v78;
  v328 = v79;
  [*&v61 boundingRectWithSize:32 options:0 context:{v73, 1.79769313e308}];
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v87 = v86;
  [v74 boundingRectWithSize:32 options:0 context:{v73, 1.79769313e308}];
  v92 = v331;
  v332 = v91;
  v316 = v89;
  v317 = v90;
  v314 = v85;
  v315 = v88;
  v326 = v87;
  v312 = v83;
  v313 = v81;
  if (LOBYTE(v325))
  {
    [v333 boundingRectWithSize:1 options:0 context:{v73, 1.79769313e308}];
    v325 = v93;
    v304 = v95;
    v305 = v94;
    v303 = v96;
    [*&v92 size];
    v329 = v98;
    v330 = v97;
    v99 = sub_220891D8C();
    v100 = sub_220891D8C();
    [v99 ascender];
    v102 = v101;
    [v100 ascender];
    if (v102 > v103)
    {
      v103 = v102;
    }

    v104 = v103 + 14.0;
    [v99 ascender];
    v307 = v104;
    v106 = v104 - v105;
    v365.origin.x = v76;
    v107 = v311;
    v365.origin.y = v311;
    v108 = v327;
    v109 = v328;
    v365.size.width = v327;
    v365.size.height = v328;
    Width = CGRectGetWidth(v365);
    v111 = v76;
    v112 = Width;
    v366.origin.x = v111;
    v366.size.width = v108;
    v113 = v106;
    v366.origin.y = v107;
    v366.size.height = v109;
    Height = CGRectGetHeight(v366);
    v115 = v334;
    v367.origin.x = v334;
    v367.origin.y = v106;
    v367.size.width = v112;
    v367.size.height = Height;
    MaxX = CGRectGetMaxX(v367);
    v117 = v330;
    v309 = v112;
    v310 = v113;
    v308 = Height;
    v298 = v73;
    if (v330 + MaxX + 8.0 <= v73)
    {
      v384.origin.x = v115;
      v384.origin.y = v113;
      v384.size.width = v112;
      v384.size.height = Height;
      MinX = CGRectGetMinX(v384);
      v385.origin.y = v113;
      v182 = MinX;
      v385.origin.x = v115;
      v385.size.width = v112;
      v385.size.height = Height;
      v129 = v182 + CGRectGetWidth(v385) + 8.0;
      [v100 ascender];
      MaxY = v307 - v183;
      v128 = v329;
    }

    else
    {
      [*&v92 boundingRectWithSize:1 options:0 context:{v73, 1.79769313e308}];
      v118 = v113;
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v126 = v125;
      v368.origin.x = v115;
      v368.origin.y = v118;
      v368.size.width = v112;
      v368.size.height = Height;
      MaxY = CGRectGetMaxY(v368);
      v369.origin.x = v120;
      v369.origin.y = v122;
      v369.size.width = v124;
      v369.size.height = v126;
      v117 = CGRectGetWidth(v369);
      v370.origin.x = v120;
      v370.origin.y = v122;
      v370.size.width = v124;
      v370.size.height = v126;
      v128 = CGRectGetHeight(v370);
      v129 = v115;
    }

    v306 = v129;
    v307 = MaxY;
    v184 = v129;
    v185 = MaxY;
    v329 = v128;
    v330 = v117;
    v186 = v117;
    v187 = CGRectGetMaxY(*(&v128 - 3));
    v188 = v325;
    v386.origin.x = v325;
    v190 = *&v304;
    v189 = v305;
    v386.origin.y = v305;
    *&v386.size.width = v304;
    v191 = v303;
    v386.size.height = v303;
    v192 = CGRectGetWidth(v386);
    v387.origin.x = v188;
    v387.origin.y = v189;
    v387.size.width = v190;
    v387.size.height = v191;
    v388.size.height = CGRectGetHeight(v387);
    v388.origin.x = v115;
    v311 = v187;
    v388.origin.y = v187;
    v388.size.width = v192;
    v325 = v388.size.height;
    v193 = CGRectGetMaxY(v388);
    v194 = v312;
    v195 = v313;
    v389.origin.x = v313;
    v389.origin.y = v312;
    v196 = v314;
    v389.size.width = v314;
    v197 = v326;
    v389.size.height = v326;
    v198 = CGRectGetWidth(v389);
    v390.origin.x = v195;
    v390.origin.y = v194;
    v390.size.width = v196;
    v390.size.height = v197;
    v391.size.height = CGRectGetHeight(v390);
    v391.origin.x = v115;
    v327 = v198;
    v328 = v193;
    v391.origin.y = v193;
    v391.size.width = v198;
    v326 = v391.size.height;
    v199 = CGRectGetMaxX(v391) + 8.0;
    v201 = v315;
    v200 = v316;
    v392.origin.x = v315;
    v392.origin.y = v316;
    v202 = v317;
    v392.size.width = v317;
    v203 = v332;
    v392.size.height = v332;
    if (v298 >= v199 + CGRectGetWidth(v392))
    {
      v208 = v334;
      v394.origin.x = v334;
      v394.size.width = v327;
      v394.origin.y = v328;
      v394.size.height = v326;
      v204 = CGRectGetMaxX(v394) + 8.0;
      v395.origin.x = v208;
      v395.origin.y = v311;
      v395.size.width = v192;
      v209 = v325;
      v395.size.height = v325;
      v314 = CGRectGetMaxY(v395);
      v396.origin.x = v201;
      v396.origin.y = v200;
      v396.size.width = v202;
      v396.size.height = v203;
      v210 = CGRectGetWidth(v396);
      v397.origin.x = v201;
      v397.origin.y = v200;
      v397.size.width = v202;
      v397.size.height = v203;
      v203 = CGRectGetHeight(v397);
      v207 = v210;
      v205 = v192;
      v206 = v209;
    }

    else
    {
      v204 = v334;
      v393.origin.x = v334;
      v393.size.width = v327;
      v393.origin.y = v328;
      v393.size.height = v326;
      v314 = CGRectGetMaxY(v393);
      v205 = v192;
      v206 = v325;
      v207 = v202;
    }

    v302 = v205;
    v332 = v203;
    v211 = v334;
    v212 = v334;
    v213 = v311;
    v214 = v311;
    v215 = CGRectGetMaxY(*(&v205 - 2)) + 14.0;
    v398.origin.x = v204;
    v398.origin.y = v314;
    v398.size.width = v207;
    v398.size.height = v203;
    v216 = CGRectGetMaxY(v398) + 14.0;
    v217 = v207;
    if (v215 > v216)
    {
      v218 = v215;
    }

    else
    {
      v218 = v216;
    }

    v399.origin.x = 0.0;
    v399.origin.y = 0.0;
    v399.size.width = y;
    v399.size.height = v218;
    v400 = CGRectIntegral(v399);
    x = v400.origin.x;
    y = v400.origin.y;
    v220 = v400.size.width;
    v221 = v400.size.height;
    v222 = sub_22088C21C();
    v224 = MEMORY[0x28223BE20](v222, v223).n128_u64[0];
    *(&v296 - 30) = 0.0;
    *(&v296 - 29) = 0.0;
    *(&v296 - 28) = v224;
    *(&v296 - 27) = v218;
    *(&v296 - 26) = v218;
    *(&v296 - 25) = v211;
    v225 = v309;
    *(&v296 - 24) = v310;
    *(&v296 - 23) = v225;
    *(&v296 - 22) = v308;
    *(&v296 - 21) = v211;
    v226 = v302;
    *(&v296 - 20) = v213;
    *(&v296 - 19) = v226;
    v227 = v306;
    v228 = v307;
    *(&v296 - 18) = v325;
    *(&v296 - 17) = v227;
    v229 = v329;
    v230 = v330;
    *(&v296 - 16) = v228;
    *(&v296 - 15) = v230;
    *(&v296 - 14) = v229;
    *(&v296 - 13) = v211;
    v231 = v327;
    *(&v296 - 12) = v328;
    *(&v296 - 11) = v231;
    *(&v296 - 10) = v326;
    *(&v296 - 9) = v204;
    *(&v296 - 8) = v314;
    *(&v296 - 7) = v217;
    *(&v296 - 6) = v332;
    *(&v296 - 5) = x;
    *(&v296 - 4) = y;
    *(&v296 - 3) = v220;
    *(&v296 - 2) = v221;
    sub_22088C18C();
  }

  else
  {
    v303 = v72;
    v130 = v74;
    [v333 boundingRectWithSize:33 options:0 context:{v73 - CGRectGetWidth(*&v88) + -10.0, 1.79769313e308}];
    v301 = v132;
    v302 = v131;
    v299 = v134;
    v300 = v133;
    v371.origin.x = v76;
    v325 = v76;
    v135 = v311;
    v371.origin.y = v311;
    v371.size.width = v327;
    v371.size.height = v328;
    v136 = v73 - CGRectGetWidth(v371) + -8.0;
    v372.origin.x = v81;
    v372.origin.y = v83;
    v372.size.width = v85;
    v137 = v87;
    v372.size.height = v87;
    [*&v92 boundingRectWithSize:1 options:0 context:{v136 - CGRectGetWidth(v372) + -10.0, 1.79769313e308}];
    v297 = v138;
    v307 = v140;
    v308 = v139;
    v306 = v141;
    v142 = sub_220891D8C();
    v143 = sub_220891D8C();
    v144 = sub_220891D8C();
    [v142 ascender];
    v146 = v145;
    [v143 ascender];
    v148 = v147;
    [v144 ascender];
    if (v146 > v148)
    {
      v150 = v146;
    }

    else
    {
      v150 = v148;
    }

    if (v150 > v149)
    {
      v149 = v150;
    }

    v151 = v149 + 14.0;
    v152 = sub_220891D8C();
    v304 = v130;
    v153 = sub_220891D8C();
    [v142 ascender];
    v305 = v151;
    v155 = v151 - v154;
    v156 = v325;
    v373.origin.x = v325;
    v373.origin.y = v135;
    v157 = v327;
    v158 = v328;
    v373.size.width = v327;
    v373.size.height = v328;
    v159 = CGRectGetWidth(v373);
    v374.origin.x = v156;
    v374.origin.y = v135;
    v374.size.width = v157;
    v374.size.height = v158;
    v375.size.height = CGRectGetHeight(v374);
    v375.origin.x = v334;
    v327 = v159;
    v328 = v155;
    v375.origin.y = v155;
    v375.size.width = v159;
    v325 = v375.size.height;
    v160 = CGRectGetMaxX(v375) + 8.0;
    v376.origin.x = v297;
    v161 = v297;
    v376.size.width = v307;
    v376.origin.y = v308;
    v376.size.height = v306;
    v162 = v160 + CGRectGetWidth(v376);
    v164 = v312;
    v163 = v313;
    v377.origin.x = v313;
    v377.origin.y = v312;
    v165 = v314;
    v377.size.width = v314;
    v377.size.height = v137;
    if (v73 >= v162 + CGRectGetWidth(v377) && (v378.origin.x = v161, v378.size.width = v307, v378.origin.y = v308, v378.size.height = v306, v166 = CGRectGetHeight(v378), v379.origin.x = v334, v379.size.width = v327, v379.origin.y = v328, v379.size.height = v325, CGRectGetHeight(v379) >= v166))
    {
      v401.origin.x = v334;
      v401.size.width = v327;
      v401.origin.y = v328;
      v401.size.height = v325;
      v179 = CGRectGetMaxX(v401) + 8.0;
      [v143 ascender];
      v232 = v306;
      v311 = v305 - v233;
      v402.origin.x = v161;
      v235 = v307;
      v234 = v308;
      v402.origin.y = v308;
      v402.size.width = v307;
      v402.size.height = v306;
      v309 = CGRectGetWidth(v402);
      v403.origin.x = v161;
      v403.origin.y = v234;
      v403.size.width = v235;
      v403.size.height = v232;
      v180 = CGRectGetHeight(v403);
      v168 = v331;
    }

    else
    {
      v380.origin.x = v163;
      v380.origin.y = v164;
      v380.size.width = v165;
      v380.size.height = v326;
      v167 = CGRectGetWidth(v380);
      v168 = v331;
      [*&v331 boundingRectWithSize:1 options:0 context:{v73 + -8.0 - v167 - v310, 1.79769313e308}];
      v170 = v169;
      v171 = v165;
      v173 = v172;
      v174 = v163;
      v176 = v175;
      v178 = v177;
      v179 = v334;
      v381.origin.x = v334;
      v381.size.width = v327;
      v381.origin.y = v328;
      v381.size.height = v325;
      v311 = CGRectGetMaxY(v381);
      v382.origin.x = v170;
      v382.origin.y = v173;
      v382.size.width = v176;
      v382.size.height = v178;
      v309 = CGRectGetWidth(v382);
      v383.origin.x = v170;
      v383.origin.y = v173;
      v165 = v171;
      v383.size.width = v176;
      v163 = v174;
      v383.size.height = v178;
      v180 = CGRectGetHeight(v383);
    }

    v307 = v179;
    v308 = v180;
    v236 = v179;
    v237 = v311;
    v238 = v309;
    v239 = CGRectGetMaxY(*(&v180 - 3));
    v404.origin.x = v334;
    v404.size.width = v327;
    v404.origin.y = v328;
    v404.size.height = v325;
    v240 = CGRectGetMaxY(v404);
    if (v239 > v240)
    {
      v241 = v239;
    }

    else
    {
      v241 = v240;
    }

    [v152 ascender];
    v243 = v242;
    [v153 ascender];
    if (v243 > v244)
    {
      v244 = v243;
    }

    v245 = v241 + 2.0 + v244;
    [v152 ascender];
    v298 = v245 - v246;
    v248 = v301;
    v247 = v302;
    v405.origin.x = v302;
    v405.origin.y = v301;
    v249 = v299;
    v250 = v300;
    v405.size.width = v300;
    v405.size.height = v299;
    v297 = CGRectGetWidth(v405);
    v406.origin.x = v247;
    v406.origin.y = v248;
    v406.size.width = v250;
    v406.size.height = v249;
    v331 = CGRectGetHeight(v406);
    v407.origin.x = v163;
    v407.origin.y = v164;
    v407.size.width = v165;
    v251 = v326;
    v407.size.height = v326;
    v252 = CGRectGetWidth(v407);
    v253 = v303;
    v254 = v165;
    v255 = v310;
    v306 = v310 + v303 - v252;
    [v144 ascender];
    v305 = v305 - v256;
    v408.origin.x = v163;
    v408.origin.y = v164;
    v408.size.width = v254;
    v408.size.height = v251;
    v302 = CGRectGetWidth(v408);
    v409.origin.x = v163;
    v409.origin.y = v164;
    v409.size.width = v254;
    v409.size.height = v251;
    v326 = CGRectGetHeight(v409);
    v258 = v315;
    v257 = v316;
    v410.origin.x = v315;
    v410.origin.y = v316;
    v259 = v317;
    v410.size.width = v317;
    v260 = v332;
    v410.size.height = v332;
    v261 = v255 + v253 - CGRectGetWidth(v410);
    [v153 ascender];
    v263 = v296 - v262;
    v411.origin.x = v258;
    v411.origin.y = v257;
    v411.size.width = v259;
    v411.size.height = v260;
    v264 = CGRectGetWidth(v411);
    v412.origin.x = v258;
    v412.origin.y = v257;
    v412.size.width = v259;
    v412.size.height = v260;
    v265 = CGRectGetHeight(v412);
    v332 = v265;
    v413.origin.x = v334;
    v267 = v297;
    v266 = v298;
    v413.origin.y = v298;
    v413.size.width = v297;
    v413.size.height = v331;
    v268 = CGRectGetMaxY(v413) + 14.0;
    v414.origin.x = v261;
    v414.origin.y = v263;
    v414.size.width = v264;
    v414.size.height = v265;
    v269 = CGRectGetMaxY(v414) + 14.0;
    if (v268 > v269)
    {
      v270 = v268;
    }

    else
    {
      v270 = v269;
    }

    v415.origin.x = 0.0;
    v415.origin.y = 0.0;
    v415.size.width = y;
    v415.size.height = v270;
    v416 = CGRectIntegral(v415);
    v317 = v416.size.height;
    y = v416.origin.x;
    v271 = v416.origin.y;
    v272 = v416.size.width;
    v273 = sub_22088C21C();
    v275 = MEMORY[0x28223BE20](v273, v274).n128_u64[0];
    *(&v296 - 30) = 0.0;
    *(&v296 - 29) = 0.0;
    *(&v296 - 28) = v275;
    *(&v296 - 27) = v270;
    v276 = v334;
    *(&v296 - 26) = v270;
    *(&v296 - 25) = v276;
    v277 = v327;
    *(&v296 - 24) = v328;
    *(&v296 - 23) = v277;
    *(&v296 - 22) = v325;
    *(&v296 - 21) = v276;
    *(&v296 - 20) = v266;
    *(&v296 - 19) = v267;
    v278 = v307;
    *(&v296 - 18) = v331;
    *(&v296 - 17) = v278;
    v280 = v308;
    v279 = v309;
    *(&v296 - 16) = v311;
    *(&v296 - 15) = v279;
    v282 = v305;
    v281 = v306;
    *(&v296 - 14) = v280;
    *(&v296 - 13) = v281;
    v283 = v302;
    *(&v296 - 12) = v282;
    *(&v296 - 11) = v283;
    *(&v296 - 10) = v326;
    *(&v296 - 9) = v261;
    *(&v296 - 8) = v263;
    *(&v296 - 7) = v264;
    v284 = v317;
    v285 = y;
    *(&v296 - 6) = v332;
    *(&v296 - 5) = v285;
    *(&v296 - 4) = v271;
    *(&v296 - 3) = v272;
    *(&v296 - 2) = v284;
    sub_22088C18C();
  }

  result = (*(v322 + 8))(v321, v323);
  v362 = v347;
  v363 = v348;
  v364 = v349;
  v358 = v343;
  v359 = v344;
  v360 = v345;
  v361 = v346;
  v354 = v339;
  v355 = v340;
  v356 = v341;
  v357 = v342;
  v350 = v335;
  v351 = v336;
  v352 = v337;
  v353 = v338;
  v287 = v348;
  v288 = v324;
  *(v324 + 192) = v347;
  *(v288 + 208) = v287;
  *(v288 + 224) = v364;
  v289 = v359;
  *(v288 + 128) = v358;
  *(v288 + 144) = v289;
  v290 = v361;
  *(v288 + 160) = v360;
  *(v288 + 176) = v290;
  v291 = v355;
  *(v288 + 64) = v354;
  *(v288 + 80) = v291;
  v292 = v357;
  *(v288 + 96) = v356;
  *(v288 + 112) = v292;
  v293 = v351;
  *v288 = v350;
  *(v288 + 16) = v293;
  v294 = v353;
  *(v288 + 32) = v352;
  *(v288 + 48) = v294;
  return result;
}

double sub_2205A553C@<D0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24, double a25, double a26, double a27, double a28, double a29, double a30)
{
  v101 = a5;
  v102 = a6;
  v99 = a3;
  v100 = a4;
  v98 = a2;
  v97 = a28;
  v96 = a29;
  v95 = a30;
  v93 = a24;
  v92 = a25;
  v94 = a27;
  v91 = a26;
  v85 = a20;
  v84 = a21;
  v90 = a23;
  v83 = a22;
  v77 = a16;
  v76 = a17;
  v82 = a19;
  v75 = a18;
  v74 = a15;
  v31 = sub_22088ABEC();
  v32 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *MEMORY[0x277D6D320];
  v38 = *(v32 + 104);
  v38(v36, v37, v31, v34);
  sub_22088ABDC();
  v89 = v39;
  v88 = v40;
  v87 = v41;
  v86 = v42;
  v43 = *(v32 + 8);
  v43(v36, v31);
  (v38)(v36, v37, v31);
  sub_22088ABDC();
  v81 = v44;
  v80 = v45;
  v79 = v46;
  v78 = v47;
  v43(v36, v31);
  (v38)(v36, v37, v31);
  sub_22088ABDC();
  v77 = v48;
  v76 = v49;
  v75 = v50;
  v74 = v51;
  v43(v36, v31);
  (v38)(v36, v37, v31);
  sub_22088ABDC();
  v85 = v52;
  v84 = v53;
  v83 = v54;
  v82 = v55;
  v43(v36, v31);
  (v38)(v36, v37, v31);
  sub_22088ABDC();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v43(v36, v31);
  (v38)(v36, v37, v31);
  sub_22088ABDC();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v43(v36, v31);
  *a1 = v98;
  a1[1] = v99;
  a1[2] = v100;
  a1[3] = v101;
  a1[4] = v102;
  *(a1 + 5) = v89;
  *(a1 + 6) = v88;
  *(a1 + 7) = v87;
  *(a1 + 8) = v86;
  *(a1 + 9) = v81;
  *(a1 + 10) = v80;
  *(a1 + 11) = v79;
  *(a1 + 12) = v78;
  a1[13] = v77;
  a1[14] = v76;
  a1[15] = v75;
  a1[16] = v74;
  a1[17] = v85;
  a1[18] = v84;
  a1[19] = v83;
  result = v82;
  a1[20] = v82;
  *(a1 + 21) = v57;
  *(a1 + 22) = v59;
  *(a1 + 23) = v61;
  *(a1 + 24) = v63;
  *(a1 + 25) = v65;
  *(a1 + 26) = v67;
  *(a1 + 27) = v69;
  *(a1 + 28) = v71;
  return result;
}

uint64_t sub_2205A5AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v41 = a2;
  v42 = type metadata accessor for StockFeedServiceContext(0) - 8;
  MEMORY[0x28223BE20](v42, v4);
  v44 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockFeedContentConfig(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v9;
  v10 = sub_22088F87C();
  v38 = *(v10 - 8);
  v11 = v38;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_220885ACC();
  v39 = *(v43 - 8);
  v15 = v39;
  v17 = MEMORY[0x28223BE20](v43, v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(v15 + 16);
  v37(v19, v3, v17);
  v20 = type metadata accessor for StockFeedServiceConfig(0);
  v21 = v20[5];
  v35 = *(v11 + 16);
  v36 = v14;
  v35(v14, v3 + v21, v10);
  sub_2205A60D8(v40, v9, type metadata accessor for StockFeedContentConfig);
  sub_2205A60D8(v3 + v20[7], v44, type metadata accessor for StockFeedServiceContext);
  v22 = *(v3 + v20[8]);
  v23 = v41;
  (v37)(v41, v19, v43);
  v35((v23 + v20[5]), v14, v10);
  v24 = v34;
  sub_2205A60D8(v34, v23 + v20[6], type metadata accessor for StockFeedContentConfig);
  v25 = v44;
  sub_2205A60D8(v44, v23 + v20[7], type metadata accessor for StockFeedServiceContext);
  *(v23 + v20[8]) = v22;
  v26 = v22;
  sub_220885A8C();
  v28 = v27;
  sub_2205A6140(v24, type metadata accessor for StockFeedContentConfig);
  (*(v38 + 8))(v36, v10);
  (*(v39 + 8))(v19, v43);
  *(v23 + v20[9]) = v28;
  v29 = *(v42 + 28);
  v30 = v20[10];
  v31 = sub_22088685C();
  (*(*(v31 - 8) + 16))(v23 + v30, v25 + v29, v31);
  return sub_2205A6140(v25, type metadata accessor for StockFeedServiceContext);
}

uint64_t sub_2205A5EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_22088F87C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2205A5F5C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t sub_2205A5FB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D32E58];
  v3 = sub_22088FF3C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_2205A6084()
{
  result = qword_2812944C8;
  if (!qword_2812944C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812944C8);
  }

  return result;
}

uint64_t sub_2205A60D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205A6140(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2205A61B0()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CF00);
  __swift_project_value_buffer(v0, qword_27CF6CF00);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2205A6360()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CF18);
  __swift_project_value_buffer(v0, qword_27CF6CF18);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2205A650C()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CF30);
  __swift_project_value_buffer(v0, qword_27CF6CF30);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2205A66B8()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CF48);
  __swift_project_value_buffer(v0, qword_27CF6CF48);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}