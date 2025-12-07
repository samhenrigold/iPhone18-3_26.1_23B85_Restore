uint64_t VideoControls.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92D118();
  sub_24E60B7DC(MEMORY[0x277D84F90]);
  if (v2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81D1F0(1, 0x6E656E696D6F7270, 0xED000079616C5074, isUniquelyReferenced_nonNull_native);
  }

  if ((v2 & 2) != 0)
  {
    v6 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81D1F0(1, 0xD000000000000010, 0x800000024FA6E340, v6);
    if ((v2 & 4) == 0)
    {
LABEL_5:
      if ((v2 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((v2 & 4) == 0)
  {
    goto LABEL_5;
  }

  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D1F0(1, 0x6C50656E696C6E69, 0xEF65737561507961, v7);
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v9 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81D1F0(1, 0x7265626275726373, 0xE800000000000000, v9);
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_12:
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81D1F0(1, 0x756D6E556574756DLL, 0xEA00000000006574, v8);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((v2 & 0x20) != 0)
  {
LABEL_8:
    v4 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81D1F0(1, 0xD000000000000014, 0x800000024FA6E360, v4);
  }

LABEL_9:
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EBD8, &qword_24F95DB28);
  sub_24E823910();
  sub_24F92CED8();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t sub_24F19E5EC()
{
  result = qword_27F23B408;
  if (!qword_27F23B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B408);
  }

  return result;
}

unint64_t sub_24F19E644()
{
  result = qword_27F23B410;
  if (!qword_27F23B410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B410);
  }

  return result;
}

unint64_t sub_24F19E69C()
{
  result = qword_27F23B418;
  if (!qword_27F23B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B418);
  }

  return result;
}

unint64_t sub_24F19E6F4()
{
  result = qword_27F23B420;
  if (!qword_27F23B420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B420);
  }

  return result;
}

uint64_t BreakoutDetails.Badge.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v61 = sub_24F91F008();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v55 - v10;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  sub_24F928398();
  v18 = sub_24F928348();
  v20 = v19;
  v21 = v17;
  v22 = *(v12 + 8);
  v22(v21, v11);
  if (v20)
  {
    v62 = a3;
    v23 = v18 == 0x6B72616D64726F77 && v20 == 0xE800000000000000;
    if (v23 || (sub_24F92CE08() & 1) != 0)
    {

      v24 = sub_24F9285B8();
      (*(*(v24 - 8) + 8))(a2, v24);
      v22(a1, v11);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
      return (*(*(v25 - 8) + 56))(v62, 1, 2, v25);
    }

    v32 = v18 == 1954047348 && v20 == 0xE400000000000000;
    v33 = a2;
    if (v32)
    {

      v35 = a1;
    }

    else
    {
      v34 = sub_24F92CE08();

      v35 = a1;
      if ((v34 & 1) == 0)
      {
        v36 = sub_24F9285B8();
        (*(*(v36 - 8) + 8))(v33, v36);
        v22(a1, v11);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
        v29 = *(*(v28 - 8) + 56);
        v30 = v62;
        goto LABEL_9;
      }
    }

    sub_24F928398();
    v55 = sub_24F928348();
    v38 = v37;
    v56 = v22;
    v22(v14, v11);
    v39 = [objc_opt_self() systemFontOfSize_];
    v40 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v41 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v42 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v64 = 10;
    *(&v64 + 1) = 0xE100000000000000;
    *&v65 = v39;
    *(&v65 + 1) = v40;
    *&v66 = 161644770;
    *(&v66 + 1) = 0xA400000000000000;
    *&v67 = v41;
    *(&v67 + 1) = 606245;
    *&v68 = 0xE300000000000000;
    *(&v68 + 1) = v42;
    if (v38)
    {
      v63[2] = v66;
      v63[3] = v67;
      v63[4] = v68;
      v63[0] = v64;
      v63[1] = v65;
      v43 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
      v44 = sub_24ECB3C7C(v55, v38, v63);
      v45 = v58;
      sub_24ECB3F40(v58);

      v46 = 0;
      v47 = v61;
    }

    else
    {
      sub_24E951D6C(&v64);
      v46 = 1;
      v47 = v61;
      v45 = v58;
    }

    v48 = sub_24F9285B8();
    (*(*(v48 - 8) + 8))(v33, v48);
    v56(v35, v11);
    v49 = v60;
    (*(v60 + 56))(v45, v46, 1, v47);
    v50 = v59;
    sub_24F19FA9C(v45, v59);
    if ((*(v49 + 48))(v50, 1, v47) == 1)
    {
      sub_24E601704(v50, &qword_27F215340, &qword_24F943530);
      v51 = 2;
      v52 = v62;
    }

    else
    {
      v53 = *(v49 + 32);
      v54 = v57;
      v53(v57, v50, v47);
      v52 = v62;
      v53(v62, v54, v47);
      v51 = 0;
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
    v29 = *(*(v28 - 8) + 56);
    v30 = v52;
    v31 = v51;
    return v29(v30, v31, 2, v28);
  }

  v27 = sub_24F9285B8();
  (*(*(v27 - 8) + 8))(a2, v27);
  v22(a1, v11);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v29 = *(*(v28 - 8) + 56);
  v30 = a3;
LABEL_9:
  v31 = 2;
  return v29(v30, v31, 2, v28);
}

GameStoreKit::BreakoutDetails::BackgroundStyle_optional __swiftcall BreakoutDetails.BackgroundStyle.init(rawValue:)(Swift::String rawValue)
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

uint64_t BreakoutDetails.BackgroundStyle.rawValue.getter()
{
  v1 = 1802658148;
  if (*v0 != 1)
  {
    v1 = 0x746867696CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6169726574616DLL;
  }
}

uint64_t sub_24F19EF78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1802658148;
  if (v2 != 1)
  {
    v4 = 0x746867696CLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C6169726574616DLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1802658148;
  if (*a2 != 1)
  {
    v8 = 0x746867696CLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C6169726574616DLL;
  }

  if (*a2)
  {
    v10 = v7;
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

uint64_t sub_24F19F064()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F19F0FC(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F19F180()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F19F220(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802658148;
  if (v2 != 1)
  {
    v5 = 0x746867696CLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6169726574616DLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t BreakoutDetails.TextAlignment.textAlignment(in:)(void *a1)
{
  if (*v1)
  {
    if (*v1 == 1)
    {
      v2 = [a1 traitCollection];
      v3 = sub_24F92BF88();

      if (v3)
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5 = [a1 traitCollection];
    v6 = sub_24F92BF88();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }
}

GameStoreKit::BreakoutDetails::TextAlignment_optional __swiftcall BreakoutDetails.TextAlignment.init(rawValue:)(Swift::String rawValue)
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

uint64_t BreakoutDetails.TextAlignment.rawValue.getter()
{
  v1 = 0x676E696C69617274;
  if (*v0 != 1)
  {
    v1 = 0x7265746E6563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t BreakoutDetails.__allocating_init(title:description:badge:callToActionButtonAction:backgroundStyle:textAlignment:badgeColorOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6, uint64_t a7)
{
  v14 = swift_allocObject();
  LOBYTE(a5) = *a5;
  LOBYTE(a6) = *a6;
  sub_24F1A0508(a3, v14 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badge, v15);
  sub_24F19FA9C(a1, v14 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_title);
  sub_24F19FA9C(a2, v14 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_description);
  *(v14 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_callToActionButtonAction) = a4;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_backgroundStyle) = a5;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_textAlignment) = a6;
  *(v14 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badgeColorOverride) = a7;
  return v14;
}

uint64_t BreakoutDetails.init(title:description:badge:callToActionButtonAction:backgroundStyle:textAlignment:badgeColorOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6, uint64_t a7, __n128 a8)
{
  v13 = *a5;
  v14 = *a6;
  sub_24F1A0508(a3, v8 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badge, a8);
  sub_24F19FA9C(a1, v8 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_title);
  sub_24F19FA9C(a2, v8 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_description);
  *(v8 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_callToActionButtonAction) = a4;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_backgroundStyle) = v13;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_textAlignment) = v14;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badgeColorOverride) = a7;
  return v8;
}

void *BreakoutDetails.badgeColorOverride.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badgeColorOverride);
  v2 = v1;
  return v1;
}

uint64_t BreakoutDetails.deinit()
{
  sub_24F1A05F0(v0 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badge);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_title, &qword_27F215340, &qword_24F943530);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_description, &qword_27F215340, &qword_24F943530);

  return v0;
}

uint64_t BreakoutDetails.__deallocating_deinit()
{
  sub_24F1A05F0(v0 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badge);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_title, &qword_27F215340, &qword_24F943530);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_description, &qword_27F215340, &qword_24F943530);

  return swift_deallocClassInstance();
}

uint64_t sub_24F19F78C@<X0>(uint64_t *a1@<X8>, char *a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F19FB0C(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s12GameStoreKit15BreakoutDetailsC5BadgeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F008();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BreakoutDetails.Badge(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B470, &qword_24F9D0F30);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v15 = *(v14 + 56);
  sub_24F1A058C(a1, &v22 - v12);
  sub_24F1A058C(a2, &v13[v15]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v13, 2, v16);
  if (!v18)
  {
    sub_24F1A058C(v13, v10);
    if (!v17(&v13[v15], 2, v16))
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v19 = sub_24F91EED8();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_24F1A05F0(v13);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_9;
  }

  if (v18 == 1)
  {
    if (v17(&v13[v15], 2, v16) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v17(&v13[v15], 2, v16) != 2)
  {
LABEL_9:
    sub_24E601704(v13, &qword_27F23B470, &qword_24F9D0F30);
    v19 = 0;
    return v19 & 1;
  }

  sub_24F1A05F0(v13);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_24F19FA9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F19FB0C(char *a1, uint64_t a2)
{
  v93 = a2;
  v3 = sub_24F9285B8();
  v90 = *(v3 - 8);
  v91 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B458, &unk_24FA001E0);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = v73 - v6;
  v7 = type metadata accessor for BreakoutDetails.Badge(0);
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  v89 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v80 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v73 - v13;
  MEMORY[0x28223BE20](v15);
  v75 = v73 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v73 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v20 - 8);
  v87 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v85 = v73 - v23;
  MEMORY[0x28223BE20](v24);
  v84 = v73 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = v73 - v27;
  v92 = a1;
  sub_24F928398();
  v83 = sub_24F928348();
  v30 = v29;
  v31 = *(v10 + 8);
  v88 = v9;
  v86 = v10 + 8;
  v82 = v31;
  v31(v19, v9);
  v32 = objc_opt_self();
  v33 = [v32 systemFontOfSize_];
  v34 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  v35 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  v36 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  *&v100 = 10;
  *(&v100 + 1) = 0xE100000000000000;
  *&v101 = v33;
  *(&v101 + 1) = v34;
  *&v102 = 161644770;
  *(&v102 + 1) = 0xA400000000000000;
  *&v103 = v35;
  *(&v103 + 1) = 606245;
  *&v104 = 0xE300000000000000;
  *(&v104 + 1) = v36;
  if (v30)
  {
    v97 = v102;
    v98 = v103;
    v99 = v104;
    v95 = v100;
    v96 = v101;
    v37 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
    v38 = sub_24ECB3C7C(v83, v30, &v95);
    sub_24ECB3F40(v28);

    v39 = 0;
  }

  else
  {
    sub_24E951D6C(&v100);
    v39 = 1;
  }

  v40 = sub_24F91F008();
  v41 = *(v40 - 8);
  v42 = *(v41 + 56);
  v83 = v28;
  v73[1] = v41 + 56;
  v74 = v42;
  v42(v28, v39, 1, v40);
  v43 = v75;
  sub_24F928398();
  v44 = sub_24F928348();
  v46 = v45;
  v82(v43, v88);
  v47 = [v32 systemFontOfSize_];
  v48 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
  v49 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
  v50 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

  *&v95 = 10;
  *(&v95 + 1) = 0xE100000000000000;
  *&v96 = v47;
  *(&v96 + 1) = v48;
  *&v97 = 161644770;
  *(&v97 + 1) = 0xA400000000000000;
  *&v98 = v49;
  *(&v98 + 1) = 606245;
  *&v99 = 0xE300000000000000;
  *(&v99 + 1) = v50;
  if (v46)
  {
    v94[2] = v97;
    v94[3] = v98;
    v94[4] = v99;
    v94[0] = v95;
    v94[1] = v96;
    v51 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
    v52 = sub_24ECB3C7C(v44, v46, v94);
    v53 = v84;
    sub_24ECB3F40(v84);

    v54 = 0;
  }

  else
  {
    sub_24E951D6C(&v95);
    v54 = 1;
    v53 = v84;
  }

  v55 = v80;
  v57 = v77;
  v56 = v78;
  v74(v53, v54, 1, v40);
  sub_24E747EE8(v83, v85);
  sub_24E747EE8(v53, v87);
  v58 = v92;
  sub_24F928398();
  (*(v90 + 16))(v76, v93, v91);
  sub_24F1A09AC();
  v59 = v79;
  sub_24F929548();
  v60 = *(v57 + 48);
  if (v60(v59, 1, v56) == 1)
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
    (*(*(v62 - 8) + 56))(v89, 2, 2, v62);
    if (v60(v59, 1, v56) != 1)
    {
      sub_24E601704(v59, &qword_27F23B458, &unk_24FA001E0);
    }
  }

  else
  {
    sub_24F1A0508(v59, v89, v61);
  }

  type metadata accessor for Action(0);
  sub_24F928398();
  v63 = v81;
  v64 = static Action.makeInstance(byDeserializing:using:)(v55, v93);
  if (v63)
  {

    v81 = 0;
  }

  else
  {
    v81 = v64;
  }

  v65 = v55;
  v66 = v88;
  v67 = v82;
  v82(v65, v88);
  sub_24F928398();
  sub_24F1A0A04();
  sub_24F928208();
  v67(v14, v66);
  LODWORD(v80) = LOBYTE(v94[0]);
  sub_24F928398();
  sub_24F162588();
  sub_24F928208();
  v67(v14, v66);
  v68 = v105;
  sub_24F928398();
  v69 = JSONObject.appStoreColor.getter();
  (*(v90 + 8))(v93, v91);
  v67(v58, v66);
  v67(v14, v66);
  sub_24E601704(v84, &qword_27F215340, &qword_24F943530);
  sub_24E601704(v83, &qword_27F215340, &qword_24F943530);
  type metadata accessor for BreakoutDetails(0);
  v70 = swift_allocObject();
  sub_24F1A0508(v89, v70 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badge, v71);
  sub_24F19FA9C(v85, v70 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_title);
  sub_24F19FA9C(v87, v70 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_description);
  *(v70 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_callToActionButtonAction) = v81;
  *(v70 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_backgroundStyle) = v80;
  *(v70 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_textAlignment) = v68;
  *(v70 + OBJC_IVAR____TtC12GameStoreKit15BreakoutDetails_badgeColorOverride) = v69;
  return v70;
}

uint64_t sub_24F1A0508(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for BreakoutDetails.Badge(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1A058C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetails.Badge(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1A05F0(uint64_t a1)
{
  v2 = type metadata accessor for BreakoutDetails.Badge(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F1A0650()
{
  result = qword_27F23B428;
  if (!qword_27F23B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B428);
  }

  return result;
}

unint64_t sub_24F1A06A8()
{
  result = qword_27F23B430;
  if (!qword_27F23B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B430);
  }

  return result;
}

void sub_24F1A0724(uint64_t a1)
{
  type metadata accessor for BreakoutDetails.Badge(319);
  if (v1 <= 0x3F)
  {
    sub_24E658094(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24F1A0870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F1A08FC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F232138, &qword_24F9A8AF0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

unint64_t sub_24F1A09AC()
{
  result = qword_27F23B460;
  if (!qword_27F23B460)
  {
    type metadata accessor for BreakoutDetails.Badge(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B460);
  }

  return result;
}

unint64_t sub_24F1A0A04()
{
  result = qword_27F23B468;
  if (!qword_27F23B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B468);
  }

  return result;
}

uint64_t sub_24F1A0A70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1919251317;
  if (v2 != 1)
  {
    v4 = 0x7553776569766572;
    v3 = 0xED00007972616D6DLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4373726F74696465;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006563696F68;
  }

  v7 = 0xE400000000000000;
  v8 = 1919251317;
  if (*a2 != 1)
  {
    v8 = 0x7553776569766572;
    v7 = 0xED00007972616D6DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x4373726F74696465;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006563696F68;
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

uint64_t sub_24F1A0B84()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1A0C38(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F1A0CD8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F1A0D88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F1A22A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F1A0DB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006563696F68;
  v4 = 0xE400000000000000;
  v5 = 1919251317;
  if (v2 != 1)
  {
    v5 = 0x7553776569766572;
    v4 = 0xED00007972616D6DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4373726F74696465;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ProductReview.__allocating_init(id:componentType:source:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19[-v11 - 8];
  v13 = swift_allocObject();
  LOBYTE(a2) = *a2;
  v14 = *a3;
  v15 = (v13 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender);
  *v15 = 0u;
  v15[1] = 0u;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_source) = v14;
  *(v13 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_flowPreviewActionsConfiguration) = a4;
  sub_24E60169C(a1, v19, &qword_27F235830, &qword_24F93B8C0);
  HIBYTE(v18) = a2;
  sub_24E60169C(a5, v12, &qword_27F213E68, &unk_24F93BC80);
  v16 = sub_24E9C00B8(v19, &v18 + 7, v12);
  sub_24E601704(a5, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  return v16;
}

uint64_t ProductReview.init(id:componentType:source:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19[-v12 - 8];
  LOBYTE(a2) = *a2;
  v14 = *a3;
  v15 = (v5 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender);
  *v15 = 0u;
  v15[1] = 0u;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_source) = v14;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_flowPreviewActionsConfiguration) = a4;
  sub_24E60169C(a1, v19, &qword_27F235830, &qword_24F93B8C0);
  HIBYTE(v18) = a2;
  sub_24E60169C(a5, v13, &qword_27F213E68, &unk_24F93BC80);
  v16 = sub_24E9C00B8(v19, &v18 + 7, v13);
  sub_24E601704(a5, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
  return v16;
}

unint64_t ProductReview.source.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_source);
  *a1 = v2;
  return sub_24F1A1F94(v2);
}

uint64_t sub_24F1A10F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_source) >> 62;
  if (!v1)
  {
    swift_beginAccess();
  }

  if (v1 == 1)
  {
  }

  return 0;
}

uint64_t sub_24F1A1174(uint64_t a1, uint64_t *a2)
{
  sub_24E60169C(a1, v6, &qword_27F2129B0, &unk_24F945320);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender;
  swift_beginAccess();
  sub_24E8E7708(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_24F1A11E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v1 + v3, a1, &qword_27F2129B0, &unk_24F945320);
}

uint64_t sub_24F1A1250(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender;
  swift_beginAccess();
  sub_24E8E7708(a1, v1 + v3);
  return swift_endAccess();
}

double sub_24F1A1320()
{
  sub_24F1A1FC4(*(v0 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_source));
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender, &qword_27F2129B0, &unk_24F945320);

  return result;
}

uint64_t ProductReview.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24F1A1FC4(*(v0 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_source));
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t ProductReview.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit33ProductRatingsAndReviewsComponent_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_source);

  sub_24F1A1FC4(v1);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1A14E4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_source) >> 62;
  if (!v1)
  {
    swift_beginAccess();
  }

  if (v1 == 1)
  {
  }

  return 0;
}

uint64_t sub_24F1A1564@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a1, &qword_27F2129B0, &unk_24F945320);
}

void (*sub_24F1A15E4(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v100 = a2;
  v88 = sub_24F91F6B8();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v94 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_24F9285B8();
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v79 - v6;
  MEMORY[0x28223BE20](v7);
  v89 = &v79 - v8;
  MEMORY[0x28223BE20](v9);
  v97 = &v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v93 = &v79 - v14;
  MEMORY[0x28223BE20](v15);
  v96 = &v79 - v16;
  v17 = sub_24F928388();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v79 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v79 - v28;
  MEMORY[0x28223BE20](v30);
  v95 = &v79 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v79 - v33;
  sub_24F928398();
  sub_24F1A21E8();
  v35 = v98;
  sub_24F928218();
  if (v35)
  {
    (*(v99 + 8))(v100, v101);
    v36 = *(v18 + 8);
    v36(a1, v17);
    v36(v34, v17);
    return v36;
  }

  v80 = v29;
  v81 = v26;
  v82 = v23;
  v83 = v20;
  v98 = 0;
  v36 = *(v18 + 8);
  v85 = v17;
  v84 = v18 + 8;
  v36(v34, v17);
  v37 = v104[0];
  sub_24F929608();
  v86 = a1;
  sub_24F928398();
  v38 = *(v99 + 16);
  v38(v97, v100, v101);
  v39 = v96;
  sub_24F929548();
  if (v37)
  {
    v97 = v36;
    if (v37 == 1)
    {
      v40 = v81;
      v41 = v86;
      sub_24F928398();
      v42 = v90;
      v43 = v38;
      v45 = v100;
      v44 = v101;
      v43(v90, v100, v101);
      type metadata accessor for Review(0);
      swift_allocObject();
      v46 = v98;
      v47 = Review.init(deserializing:using:)(v40, v42);
      v48 = v85;
      v49 = v94;
      if (v46)
      {
        v50 = *(v99 + 8);
        v51 = v45;
LABEL_11:
        v63 = v44;
        v36 = v46;
        v50(v51, v63);
        (v97)(v41, v48);
        sub_24E601704(v39, &qword_27F213E68, &unk_24F93BC80);
        return v36;
      }

      v98 = 0;
      v64 = *(v47 + OBJC_IVAR____TtC12GameStoreKit6Review_flowPreviewActionsConfiguration);
      v95 = (v47 | 0x4000000000000000);
      swift_retain_n();
      v65 = v99;
    }

    else
    {
      v59 = v82;
      v41 = v86;
      sub_24F928398();
      v60 = v91;
      v61 = v100;
      v44 = v101;
      v38(v91, v100, v101);
      type metadata accessor for ReviewSummary(0);
      swift_allocObject();
      v46 = v98;
      v62 = ReviewSummary.init(deserializing:using:)(v59, v60);
      v48 = v85;
      if (v46)
      {
        v50 = *(v99 + 8);
        v51 = v61;
        goto LABEL_11;
      }

      v98 = 0;
      v64 = *&v62[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_flowPreviewActionsConfiguration];
      v95 = (v62 | 0x8000000000000000);
      swift_retain_n();
      v45 = v61;
      v65 = v99;
      v49 = v94;
    }
  }

  else
  {
    v52 = v80;
    v53 = v86;
    sub_24F928398();
    v54 = v89;
    v55 = v38;
    v45 = v100;
    v56 = v101;
    v55(v89, v100, v101);
    v57 = v98;
    v58 = sub_24ECB9BB4(v52, v54);
    v98 = v57;
    v49 = v94;
    if (v57)
    {
      (*(v99 + 8))(v45, v56);
      v36(v53, v85);
      sub_24E601704(v39, &qword_27F213E68, &unk_24F93BC80);
      return v36;
    }

    v95 = v58;
    v97 = v36;
    v64 = 0;
    v65 = v99;
    v48 = v85;
  }

  v66 = v83;
  sub_24F928398();
  v67 = sub_24F928348();
  if (v68)
  {
    v102 = v67;
    v103 = v68;
  }

  else
  {
    sub_24F91F6A8();
    v69 = sub_24F91F668();
    v70 = v49;
    v72 = v71;
    (*(v87 + 8))(v70, v88);
    v102 = v69;
    v103 = v72;
  }

  sub_24F92C7F8();
  v73 = v97;
  (v97)(v66, v48);
  v74 = v93;
  sub_24E60169C(v39, v93, &qword_27F213E68, &unk_24F93BC80);
  type metadata accessor for ProductReview(0);
  v75 = swift_allocObject();
  v76 = (v75 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender);
  *v76 = 0u;
  v76[1] = 0u;
  *(v75 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_source) = v95;
  *(v75 + OBJC_IVAR____TtC12GameStoreKit13ProductReview_flowPreviewActionsConfiguration) = v64;
  sub_24E60169C(v104, &v102, &qword_27F235830, &qword_24F93B8C0);
  v105 = 4;
  v77 = v92;
  sub_24E60169C(v74, v92, &qword_27F213E68, &unk_24F93BC80);
  v36 = sub_24E9C00B8(&v102, &v105, v77);

  (*(v65 + 8))(v45, v101);
  v73(v86, v85);
  sub_24E601704(v74, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v104, &qword_27F235830, &qword_24F93B8C0);
  sub_24E601704(v39, &qword_27F213E68, &unk_24F93BC80);
  return v36;
}

unint64_t sub_24F1A1F94(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

double sub_24F1A1FC4(unint64_t a1)
{
  if ((a1 >> 62) <= 2)
  {
  }

  return result;
}

uint64_t sub_24F1A1FF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit13ProductReview_clickSender;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F2129B0, &unk_24F945320);
}

uint64_t type metadata accessor for ProductReview(uint64_t a1)
{
  result = qword_27F23B478;
  if (!qword_27F23B478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F1A21E8()
{
  result = qword_27F23B488;
  if (!qword_27F23B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B488);
  }

  return result;
}

unint64_t sub_24F1A2250()
{
  result = qword_27F23B490[0];
  if (!qword_27F23B490[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F23B490);
  }

  return result;
}

unint64_t sub_24F1A22A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t GamesThreeDimensionalModel.init(collectionIcons:placementStyle:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_24F1A2324(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 120) - 8) + 32))(v2 + *(*v2 + 128), a1);
  return sub_24F04E8C0();
}

uint64_t sub_24F1A23B8()
{
  MEMORY[0x253050C20](0x203A65756C6176, 0xE700000000000000);
  sub_24F92CDC8();
  return 0;
}

uint64_t sub_24F1A24FC()
{
  v1 = *v0;
  v2 = sub_24F04E8C0();
  (*(*(*(v1 + 120) - 8) + 8))(v2 + *(*v2 + 128));
  return v2;
}

uint64_t sub_24F1A2584()
{
  sub_24F1A24FC();

  return swift_deallocClassInstance();
}

uint64_t Conditional<>.init(roundedCornersValue:nonRoundedCornersValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (v8 + 16);
  v16 = (v8 + 8);
  if (JUScreenClassHasRoundedCorners(v11, v12))
  {
    type metadata accessor for InvariantExpression(0, a3, v13, v14);
    (*v15)(v10, a1, a3);
  }

  else
  {
    type metadata accessor for InvariantExpression(0, a3, v13, v14);
    (*v15)(v10, a2, a3);
  }

  v17 = sub_24F1A2324(v10);
  v18 = *v16;
  (*v16)(a2, a3);
  v18(a1, a3);
  result = sub_24E5FA814(v17, &v21);
  *a4 = v21;
  return result;
}

uint64_t Conditional<>.init(whenOneOf:use:otherwiseUse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Main = JUScreenClassGetMain(v13, v14);
  v16 = sub_24F4D4420(Main, a1);

  v17 = (v10 + 16);
  v18 = (v10 + 8);
  type metadata accessor for InvariantExpression(0, a4, v19, v20);
  if (v16)
  {
    (*v17)(v12, a2, a4);
  }

  else
  {
    (*v17)(v12, a3, a4);
  }

  v21 = sub_24F1A2324(v12);
  v22 = *v18;
  (*v18)(a3, a4);
  v22(a2, a4);
  result = sub_24E5FA814(v21, &v25);
  *a5 = v25;
  return result;
}

uint64_t sub_24F1A290C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *DynamicPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v114 = a1;
  v97 = *v2;
  v104 = v2;
  v3 = *(v97 + 152);
  v87 = sub_24F92C4A8();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v91 = &v85 - v4;
  v108 = v3;
  v103 = *(v3 - 8);
  MEMORY[0x28223BE20](v5);
  v92 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v88 = &v85 - v8;
  v9 = sub_24F9285B8();
  v105 = *(v9 - 8);
  v106 = v9;
  MEMORY[0x28223BE20](v9);
  v102 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v89 = &v85 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v13 - 8);
  v95 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v85 - v16;
  v18 = sub_24F928388();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v101 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = &v85 - v22;
  MEMORY[0x28223BE20](v23);
  v98 = &v85 - v24;
  MEMORY[0x28223BE20](v25);
  v96 = &v85 - v26;
  MEMORY[0x28223BE20](v27);
  v94 = &v85 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v85 - v30;
  v32 = sub_24F928E68();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v90 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v85 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v85 - v39;
  sub_24F928398();
  sub_24F9281F8();
  v100 = v19;
  v42 = *(v19 + 8);
  v41 = v19 + 8;
  v110 = v18;
  v111 = v42;
  v43 = v18;
  v44 = v33;
  v42(v31, v43);
  v93 = *(v33 + 48);
  if (v93(v17, 1, v32) == 1)
  {
    sub_24E601704(v17, qword_27F221C40, &unk_24F967D80);
    v45 = sub_24E60986C(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v33 + 32))(v40, v17, v32);
    (*(v33 + 16))(v37, v40, v32);
    (*(v105 + 16))(v89, v109, v106);
    type metadata accessor for Shelf(0);
    sub_24EA79A4C();
    v46 = sub_24F92AE68();
    v45 = sub_24F1A3A24(v46);

    (*(v33 + 8))(v40, v32);
  }

  v47 = v104;
  *&v104[qword_27F39DC30] = v45;
  v48 = v94;
  sub_24F928398();
  v49 = v95;
  sub_24F9281F8();
  v111(v48, v110);
  if (v93(v49, 1, v32) == 1)
  {
    sub_24E601704(v49, qword_27F221C40, &unk_24F967D80);
    v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2214E0, &qword_24F9664A0);
    v51 = v108;
    swift_getTupleTypeMetadata2();
    v52 = sub_24F92B608();
    v53 = *(v97 + 160);
    v54 = sub_24E9065F8(v52, v51, v50, *(v53 + 8));
  }

  else
  {
    v55 = v90;
    v56 = (*(v44 + 32))(v90, v49, v32);
    MEMORY[0x28223BE20](v56);
    v53 = *(v97 + 160);
    *(&v85 - 2) = v108;
    *(&v85 - 1) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2214E0, &qword_24F9664A0);
    v57 = v107;
    v54 = sub_24F928E38();
    v107 = v57;
    v47 = v104;
    (*(v44 + 8))(v55, v32);
  }

  v59 = v105;
  v58 = v106;
  *&v47[qword_27F39DC38] = v54;
  v60 = v96;
  sub_24F928398();
  v61 = sub_24F928348();
  v63 = v62;
  v64 = v60;
  v65 = v110;
  v111(v64, v110);
  if (v63)
  {
    v106 = v41;
    *&v112 = v61;
    *(&v112 + 1) = v63;
    v66 = v91;
    v67 = v108;
    sub_24F92B4F8();
    v68 = v103;
    v69 = *(v103 + 48);
    if (v69(v66, 1, v67) == 1)
    {
      (*(v53 + 24))(v67, v53);
      if (v69(v66, 1, v67) != 1)
      {
        (*(v86 + 8))(v66, v87);
      }

      v65 = v110;
      v67 = v108;
      v68 = v103;
      v70 = v92;
    }

    else
    {
      v72 = v92;
      (*(v68 + 32))(v92, v66, v67);
      v70 = v72;
      v65 = v110;
    }
  }

  else
  {
    v71 = v88;
    v67 = v108;
    (*(v53 + 24))(v108, v53);
    v70 = v71;
    v68 = v103;
  }

  v73 = v114;
  (*(v68 + 32))(&v47[*(*v47 + 184)], v70, v67);
  v74 = v98;
  sub_24F928398();
  v75 = sub_24F928278();
  v76 = v74;
  v77 = v111;
  v111(v76, v65);
  v47[*(*v47 + 200)] = v75 & 1;
  v78 = v99;
  sub_24F928398();
  sub_24F928368();
  v77(v78, v65);
  v79 = &v47[*(*v47 + 192)];
  v80 = v113;
  *v79 = v112;
  *(v79 + 1) = v80;
  sub_24F928398();
  *&v47[*(*v47 + 208)] = _sSo26ASKPagePresentationOptionsV12GameStoreKitE16tryDeserializingAB9JetEngine10JSONObjectV_tcfC_0(v78);
  v81 = v101;
  (*(v100 + 16))(v101, v73, v65);
  v82 = v102;
  (*(v59 + 16))(v102, v109, v58);
  v83 = BasePage.init(deserializing:using:)(v81, v82);
  (*(v59 + 8))(v109, v58);
  v77(v73, v65);
  return v83;
}

uint64_t *DynamicPage.deinit()
{
  v1 = *v0;

  v2 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v3 = sub_24F928818();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  (*(*(*(v1 + 152) - 8) + 8))(v0 + *(*v0 + 184));
  sub_24E601704(v0 + *(*v0 + 192), &qword_27F2129B0, &unk_24F945320);
  return v0;
}

double sub_24F1A3694()
{
  sub_24F1A4490();

  return result;
}

double sub_24F1A36C8()
{
  sub_24F1A444C();

  return result;
}

uint64_t sub_24F1A36FC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_24F1A3750@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  swift_beginAccess();
  return (*(*(*(v3 + 152) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_24F1A37F0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 184);
  swift_beginAccess();
  (*(*(*(v3 + 152) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_24F1A3904(uint64_t (*a1)(uint64_t))
{
  swift_beginAccess();

  sub_24F159E30(v3, a1);
  v5 = v4;

  v6 = qword_27F39DC30;
  swift_beginAccess();
  *(v1 + v6) = v5;
}

uint64_t sub_24F1A39A8()
{
  sub_24F04E8C0();
}

void *sub_24F1A3A24(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  while (v5)
  {
LABEL_11:
    v10 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v7 << 6)));
    swift_bridgeObjectRetain_n();

    sub_24F92C7F8();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_24E76D934(v25);
    v14 = v8[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_23;
    }

    v18 = v13;
    if (v8[3] < v17)
    {
      sub_24E899884(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_24E76D934(v25);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v18)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v23 = v12;
    sub_24E8ADF84();
    v12 = v23;
    if (v18)
    {
LABEL_4:
      *(v8[7] + 8 * v12) = v10;

      goto LABEL_5;
    }

LABEL_17:
    v8[(v12 >> 6) + 8] |= 1 << v12;
    v20 = v12;
    sub_24E65864C(v25, v8[6] + 40 * v12);
    *(v8[7] + 8 * v20) = v10;
    v21 = v8[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_24;
    }

    v8[2] = v22;
LABEL_5:
    v5 &= v5 - 1;
    sub_24E6585F8(v25);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v8;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F1A3C6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v30[1] = a3;
  v32 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v31 = v30 - v10;
  v11 = sub_24F92C4A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v30 - v13;
  v15 = *(a4 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;

  sub_24F92B4F8();
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    (*(v12 + 8))(v14, v11);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2214E0, &qword_24F9664A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v32, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(v15 + 32))(v18, v14, a4);
    v21 = *(v15 + 16);
    v22 = v32;
    v30[0] = v18;
    v21(v32, v18, a4);
    v23 = v31;
    sub_24F9282B8();
    v24 = sub_24F92AC28();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_24E601704(v23, &qword_27F2213B0, &qword_24F965EC0);
      v26 = MEMORY[0x277D84F90];
    }

    else
    {
      v26 = sub_24F92ABB8();
      (*(v25 + 8))(v23, v24);
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2214E0, &qword_24F9664A0);
    v27 = swift_getTupleTypeMetadata2();
    v28 = *(v27 + 48);
    v29 = sub_24E8E8074(v26);

    (*(v15 + 8))(v30[0], a4);
    *(v22 + v28) = v29;
    return (*(*(v27 - 8) + 56))(v22, 0, 1, v27);
  }
}

uint64_t sub_24F1A4098(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_24F1A37F0(v3);
}

uint64_t sub_24F1A41EC()
{
  v1 = *v0;

  (*(*(*(v1 + 152) - 8) + 8))(v0 + *(*v0 + 184));
  return sub_24E601704(v0 + *(*v0 + 192), &qword_27F2129B0, &unk_24F945320);
}

uint64_t DynamicPage.__deallocating_deinit()
{
  DynamicPage.deinit();

  return swift_deallocClassInstance();
}

void (*sub_24F1A430C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F1A3898(v2);
  return sub_24E622878;
}

uint64_t sub_24F1A43C8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_24F04E8C0();
}

uint64_t sub_24F1A444C()
{
  v1 = qword_27F39DC38;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24F1A4490()
{
  v1 = qword_27F39DC30;
  swift_beginAccess();
  return *(v0 + v1);
}

__n128 sub_24F1A4548(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double keypath_getTm_6@<D0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  *a2 = a1();

  return result;
}

uint64_t sub_24F1A4638(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F1A4858(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x800000024FA41AE0;
  if (v2 == 1)
  {
    v5 = 0x800000024FA41AE0;
  }

  else
  {
    v3 = 0x6C7070416E65706FLL;
    v5 = 0xEF6E6F6974616369;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 7107189;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x6C7070416E65706FLL;
    v4 = 0xEF6E6F6974616369;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7107189;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F1A4964()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1A4A10(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F1A4AA8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F1A4B50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F1A5C64(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F1A4B80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0x800000024FA41AE0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6C7070416E65706FLL;
    v4 = 0xEF6E6F6974616369;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7107189;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t TopShelfAction.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TopShelfAction.init(deserializing:using:)(a1, a2);
  return v4;
}

unint64_t *TopShelfAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v97 = a2;
  v98 = v2;
  v6 = *v4;
  v94 = v3;
  v95 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v7 - 8);
  v93 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v87 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = &v87 - v12;
  v13 = sub_24F91F4A8();
  v88 = *(v13 - 8);
  v89 = v13;
  MEMORY[0x28223BE20](v13);
  v87 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F928388();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v91 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v87 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v87 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v87 - v28;
  v30 = 0xEA0000000000656DLL;
  v96 = 0x614E746567726174;
  v31 = a1;
  sub_24F928398();
  sub_24F1A5610();
  sub_24F928248();
  v33 = *(v16 + 8);
  v32 = (v16 + 8);
  v99 = v15;
  v100 = v33;
  v33(v29, v15);
  if (v101 > 1u)
  {
    if (v101 != 2)
    {
      v39 = v98;
      v34 = a1;
      goto LABEL_11;
    }

    v30 = 0x800000024FA4C770;
    v34 = a1;
    sub_24F928398();
    v40 = sub_24F928348();
    v42 = v41;
    v43 = v99;
    v100(v20, v99);
    if (!v42)
    {
      v96 = 0xD000000000000010;
      v39 = v98;
      goto LABEL_12;
    }

    v39 = v98;
    v44 = v32;
    v45 = (v98 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_target);
    *v45 = v40;
    v45[1] = v42;
    type metadata accessor for TopShelfAction.Target(0);
    v32 = v44;
    swift_storeEnumTagMultiPayload();
  }

  else if (v101)
  {
    v30 = 0x800000024FA4C770;
    sub_24F928398();
    v46 = sub_24F928348();
    v48 = v47;
    v43 = v99;
    v100(v23, v99);
    v39 = v98;
    if (!v48)
    {
      v96 = 0xD000000000000010;
      v34 = v31;
      goto LABEL_12;
    }

    v49 = v32;
    v50 = (v98 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_target);
    *v50 = v46;
    v50[1] = v48;
    type metadata accessor for TopShelfAction.Target(0);
    v32 = v49;
    swift_storeEnumTagMultiPayload();
    v34 = v31;
  }

  else
  {
    v34 = a1;
    sub_24F928398();
    v35 = v90;
    sub_24F928268();
    v100(v26, v99);
    v37 = v88;
    v36 = v89;
    v38 = (*(v88 + 48))(v35, 1, v89);
    v39 = v98;
    if (v38 == 1)
    {
      v96 = 7107189;
      sub_24E601704(v35, &qword_27F228530, &unk_24F93C6E0);
      v30 = 0xE300000000000000;
LABEL_11:
      v43 = v99;
LABEL_12:
      v51 = sub_24F92AC38();
      sub_24E8F2E6C();
      swift_allocError();
      v52 = v95;
      *v53 = v96;
      v53[1] = v30;
      v53[2] = v52;
      (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D22530], v51);
      swift_willThrow();
      v54 = sub_24F9285B8();
      (*(*(v54 - 8) + 8))(v97, v54);
      v100(v34, v43);
      type metadata accessor for TopShelfAction(0);
      swift_deallocPartialClassInstance();
      return v39;
    }

    v55 = *(v37 + 32);
    v56 = v87;
    v55(v87, v35, v36);
    v55(v39 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_target, v56, v36);
    type metadata accessor for TopShelfAction.Target(0);
    swift_storeEnumTagMultiPayload();
    v43 = v99;
  }

  sub_24F928398();
  v57 = sub_24F928348();
  v59 = v58;
  v60 = v100;
  v100(v29, v43);
  v61 = (v39 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_title);
  *v61 = v57;
  v61[1] = v59;
  sub_24F928398();
  v62 = sub_24F928348();
  v64 = v63;
  v60(v29, v43);
  v65 = (v39 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_subtitle);
  *v65 = v62;
  v65[1] = v64;
  sub_24F928398();
  v66 = sub_24F928348();
  v68 = v67;
  v60(v29, v43);
  v69 = (v39 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_imageName);
  *v69 = v66;
  v69[1] = v68;
  v70 = v91;
  sub_24F928398();
  v71 = v92;
  sub_24F9281F8();
  v98 = v32;
  v60(v70, v43);
  v72 = v93;
  sub_24F1A56A4(v71, v93);
  v73 = sub_24F928E68();
  v74 = *(v73 - 8);
  if ((*(v74 + 48))(v72, 1, v73) == 1)
  {
    sub_24E601704(v71, qword_27F221C40, &unk_24F967D80);
    sub_24E601704(v72, qword_27F221C40, &unk_24F967D80);
    v75 = 0;
  }

  else
  {
    v76 = v34;
    v77 = v71;
    v78 = v72;
    v75 = sub_24F928E38();
    v79 = v77;
    v34 = v76;
    v43 = v99;
    sub_24E601704(v79, qword_27F221C40, &unk_24F967D80);
    (*(v74 + 8))(v78, v73);
  }

  *(v39 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_userInfo) = v75;
  sub_24F928398();
  v80 = sub_24F928348();
  v82 = v81;
  v83 = sub_24F9285B8();
  (*(*(v83 - 8) + 8))(v97, v83);
  v84 = v100;
  v100(v34, v43);
  v84(v29, v43);
  v85 = (v39 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_accessibilityLabel);
  *v85 = v80;
  v85[1] = v82;
  return v39;
}

unint64_t sub_24F1A5610()
{
  result = qword_27F23B598;
  if (!qword_27F23B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B598);
  }

  return result;
}

uint64_t sub_24F1A56A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F1A5728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopShelfAction.Target(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TopShelfAction.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_title);

  return v1;
}

uint64_t TopShelfAction.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_subtitle);

  return v1;
}

uint64_t TopShelfAction.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_imageName);

  return v1;
}

uint64_t TopShelfAction.accessibilityLabel.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_accessibilityLabel);

  return v1;
}

uint64_t TopShelfAction.deinit()
{
  sub_24F1A5914(v0 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_target);

  return v0;
}

uint64_t sub_24F1A5914(uint64_t a1)
{
  v2 = type metadata accessor for TopShelfAction.Target(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TopShelfAction.__deallocating_deinit()
{
  sub_24F1A5914(v0 + OBJC_IVAR____TtC12GameStoreKit14TopShelfAction_target);

  return swift_deallocClassInstance();
}

unint64_t *sub_24F1A5A34@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TopShelfAction(0);
  v7 = swift_allocObject();
  result = TopShelfAction.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1A5AA8(uint64_t a1)
{
  result = type metadata accessor for TopShelfAction.Target(319);
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

uint64_t sub_24F1A5B90(uint64_t a1)
{
  result = sub_24F91F4A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F1A5C10()
{
  result = qword_27F23B5C0;
  if (!qword_27F23B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B5C0);
  }

  return result;
}

unint64_t sub_24F1A5C64(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t Screenshots.__allocating_init(id:artwork:mediaPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E65E064(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v17, &qword_27F235830, &qword_24F93B8C0);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t Screenshots.init(id:artwork:mediaPlatform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E601704(a1, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v18, &qword_27F235830, &qword_24F93B8C0);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t Screenshots.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Screenshots.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *Screenshots.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a2;
  v5 = *v3;
  v71 = v3;
  v56 = v5;
  v59 = sub_24F9285B8();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v51 - v10;
  v64 = sub_24F92AC28();
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v54 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = v51 - v14;
  v15 = sub_24F91F6B8();
  v52 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24F928388();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v53 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v51 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = v51 - v25;
  v65 = a1;
  sub_24F928398();
  v27 = sub_24F928348();
  if (v28)
  {
    v66 = v27;
    v67 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v29 = sub_24F91F668();
    v31 = v30;
    v52[1](v17, v15);
    v66 = v29;
    v67 = v31;
  }

  sub_24F92C7F8();
  v32 = *(v19 + 8);
  (v32)(v26, v18);
  v33 = v69;
  v34 = v71;
  *(v71 + 2) = v68;
  *(v34 + 3) = v33;
  v34[8] = v70;
  sub_24F928398();
  sub_24F9282B8();
  (v32)(v23, v18);
  v35 = v60;
  v36 = v64;
  v37 = (*(v60 + 48))(v11, 1, v64);
  v38 = v61;
  v39 = v63;
  if (v37 == 1)
  {
    sub_24E601704(v11, &qword_27F2213B0, &qword_24F965EC0);
    v40 = sub_24F92AC38();
    sub_24F1A68F8(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v41 = 0x6B726F77747261;
    v41[1] = 0xE700000000000000;
    v41[2] = v56;
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    (*(v38 + 8))(v62, v59);
    (v32)(v65, v18);
  }

  else
  {
    v51[1] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v32;
    v56 = v18;
    (*(v35 + 32))(v63, v11, v36);
    (*(v35 + 16))(v54, v39, v36);
    v42 = v59;
    v51[0] = *(v38 + 16);
    v43 = v62;
    (v51[0])(v55, v62, v59);
    type metadata accessor for Artwork(0);
    sub_24F1A68F8(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    v71[2] = sub_24F92B6A8();
    v44 = v35;
    type metadata accessor for MediaPlatform();
    v45 = v53;
    sub_24F928398();
    v46 = v57;
    (v51[0])(v57, v43, v42);
    v47 = v58;
    v48 = MediaPlatform.__allocating_init(deserializing:using:)(v45, v46);
    if (!v47)
    {
      v50 = v48;
      (*(v38 + 8))(v43, v42);
      (v52)(v65, v56);
      (*(v44 + 8))(v63, v64);
      v71[3] = v50;
      return v71;
    }

    (*(v38 + 8))(v43, v42);
    (v52)(v65, v56);
    (*(v35 + 8))(v63, v64);
  }

  sub_24E6585F8((v71 + 4));
  type metadata accessor for Screenshots();
  swift_deallocPartialClassInstance();
  return v71;
}

uint64_t Screenshots.deinit()
{

  sub_24E6585F8(v0 + 32);
  return v0;
}

uint64_t Screenshots.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1A68F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t *sub_24F1A6950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Screenshots();
  v7 = swift_allocObject();
  result = Screenshots.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F1A6A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F1A6B04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LaunchGameActivityAction(uint64_t a1)
{
  result = qword_27F23B5D0;
  if (!qword_27F23B5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1A6BF4(uint64_t a1)
{
  sub_24E6BCB04();
  if (v1 <= 0x3F)
  {
    sub_24F1A6CA0(319);
    if (v2 <= 0x3F)
    {
      sub_24F928AD8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F1A6CA0(uint64_t a1)
{
  if (!qword_27F23B5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227A20, &qword_24F9482B0);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23B5E0);
    }
  }
}

uint64_t sub_24F1A6D04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_24F928AD8();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B5E8, &qword_24F9D15D8);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v20 - v6;
  v8 = type metadata accessor for LaunchGameActivityAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F1A73B0();
  v24 = v7;
  v11 = v26;
  sub_24F92D108();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v8;
  v26 = v3;
  v12 = v23;
  v33 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v32 = 1;
  v14 = v12;
  v10[2] = sub_24F92CC28();
  v10[3] = v15;
  v31 = 2;
  v10[4] = sub_24F92CBC8();
  v10[5] = v16;
  v30 = 3;
  v10[6] = sub_24F92CBC8();
  v10[7] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
  v29 = 4;
  sub_24F1A7404();
  sub_24F92CC18();
  v10[8] = v27;
  v28 = 5;
  sub_24E862F10();
  v18 = v26;
  sub_24F92CC68();
  (*(v14 + 8))(v24, v25);
  (*(v21 + 32))(v10 + *(v20 + 36), v5, v18);
  sub_24EBB1464(v10, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EBB1770(v10);
}

unint64_t sub_24F1A71AC()
{
  v1 = *v0;
  v2 = 0x4449656C646E7562;
  v3 = 0xD000000000000021;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x654D6E6F69746361;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000012;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
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

uint64_t sub_24F1A7284@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F1A7598(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F1A72AC(uint64_t a1)
{
  v2 = sub_24F1A73B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F1A72E8(uint64_t a1)
{
  v2 = sub_24F1A73B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F1A7324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_24F1A73B0()
{
  result = qword_27F23B5F0;
  if (!qword_27F23B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B5F0);
  }

  return result;
}

unint64_t sub_24F1A7404()
{
  result = qword_27F2182E8;
  if (!qword_27F2182E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227A20, &qword_24F9482B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2182E8);
  }

  return result;
}

unint64_t sub_24F1A7494()
{
  result = qword_27F23B5F8;
  if (!qword_27F23B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B5F8);
  }

  return result;
}

unint64_t sub_24F1A74EC()
{
  result = qword_27F23B600;
  if (!qword_27F23B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B600);
  }

  return result;
}

unint64_t sub_24F1A7544()
{
  result = qword_27F23B608;
  if (!qword_27F23B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B608);
  }

  return result;
}

uint64_t sub_24F1A7598(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA6E4C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA6E4E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x800000024FA6E500 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA6E530 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24F1A77A4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8618A4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_24F92CD78();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24F92B618();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_24F1A92DC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24F1A78D8(uint64_t a1, char *a2)
{
  v7 = a2;

  sub_24F1A77A4(&v7);
  v3 = *(v7 + 2);
  v4 = 32;
  while (v3)
  {
    v5 = *&v7[v4];
    v4 += 8;
    --v3;
    if (v5 <= a1)
    {
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

uint64_t GameCountFieldsProvider.init(player:buckets:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E70D960(a1, a4);
  v11 = type metadata accessor for GameCountFieldsProvider(0);
  *(a4 + v11[5]) = a3;
  sub_24E70D960(a1, v10);
  type metadata accessor for GameCountFieldsProvider.GameLibraryObserver(0);
  v12 = swift_allocObject();

  swift_defaultActor_initialize();
  sub_24F1A927C(a1, type metadata accessor for Player);
  *(v12 + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_gameRefs) = 0;
  result = sub_24E61C0A8(v10, v12 + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_player);
  *(v12 + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_objectGraph) = a3;
  *(a4 + v11[6]) = v12;
  *(a4 + v11[7]) = a2;
  return result;
}

uint64_t GameCountFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_24F928418();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F1A7B84, 0, 0);
}

uint64_t sub_24F1A7B84()
{
  *(v0 + 168) = type metadata accessor for GameCountFieldsProvider(0);
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_24F1A7C28;

  return sub_24F1A8430();
}

uint64_t sub_24F1A7C28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_24F1A8174;
  }

  else
  {
    v4 = sub_24F1A7D3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F1A7D3C()
{
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[21];
    v3 = v0[19];
    v4 = *(v1 + 16);

    v5 = *(v3 + *(v2 + 28));
    v6 = sub_24F1A78D8(v4, v5);
    if (v7)
    {
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v8 = sub_24F92AAE8();
      __swift_project_value_buffer(v8, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050, qword_24F99DB70);
      v0[6] = v5;

      sub_24F9283D8();
      sub_24E857CC8((v0 + 6));
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();
    }

    else
    {
      v9 = v0[24];
      v10 = v0[18];
      v0[13] = MEMORY[0x277D83B88];
      v0[10] = v6;
      __swift_mutable_project_boxed_opaque_existential_1(v10, *(v10 + 24));
      sub_24F929A28();
      __swift_destroy_boxed_opaque_existential_1(v0 + 10);
      if (v9)
      {
        if (qword_27F210580 != -1)
        {
          swift_once();
        }

        v11 = sub_24F92AAE8();
        __swift_project_value_buffer(v11, qword_27F39C3E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F928408();
        sub_24F9283F8();
        swift_getErrorValue();
        v12 = v0[14];
        v13 = v0[15];
        v0[5] = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v12, v13);
        sub_24F9283D8();
        sub_24E857CC8((v0 + 2));
        sub_24F9283F8();
        sub_24F928428();
        sub_24F92A5A8();
      }
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24F1A8174()
{
  v1 = v0[24];
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v3 = v0[14];
  v4 = v0[15];
  v0[5] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3, v4);
  sub_24F9283D8();
  sub_24E857CC8((v0 + 2));
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F1A839C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return GameCountFieldsProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t sub_24F1A8450()
{
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v3 = OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_gameRefs;
  v0[3] = OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_gameRefs;
  v4 = *(v1 + v3);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  if (v4)
  {

    sub_24F9283A8();
    sub_24F92A588();

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    sub_24F9283A8();
    sub_24F92A588();

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_24F1A8714;

    return sub_24F1A8B30();
  }
}

uint64_t sub_24F1A8714(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 16);
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24F1A8860, v8, 0);
  }
}

uint64_t sub_24F1A8860()
{
  v1 = v0[5];
  *(v0[2] + v0[3]) = v1;

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24F1A88F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F1A89C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24F1A8A7C(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GameCountFieldsProvider.GameLibraryObserver(319);
      if (v3 <= 0x3F)
      {
        sub_24ECD93D0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F1A8B30()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for GameLibraryRefsDataIntent(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F1A8BC4, v0, 0);
}

uint64_t sub_24F1A8BC4()
{
  v0[11] = *(v0[8] + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_objectGraph);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_24F1A8C90;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24F1A8C90()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_24F1A9060;
  }

  else
  {
    v4 = sub_24F1A8DBC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F1A8DBC()
{
  sub_24E70D960(v0[8] + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_player, v0[10]);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_24E7D4DA4();
  *v3 = v0;
  v3[1] = sub_24F1A8EA0;
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];

  return MEMORY[0x28217F4B0](v0 + 7, v5, v6, v7, v4, v1, v2);
}

uint64_t sub_24F1A8EA0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_24F1A90C4;
  }

  else
  {
    v4 = sub_24F1A8FCC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F1A8FCC()
{
  sub_24F1A927C(v0[10], type metadata accessor for GameLibraryRefsDataIntent);
  v1 = v0[7];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24F1A9060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F1A90C4()
{
  sub_24F1A927C(v0[10], type metadata accessor for GameLibraryRefsDataIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F1A914C()
{
  sub_24F1A927C(v0 + OBJC_IVAR____TtCV12GameStoreKit23GameCountFieldsProviderP33_33BAE3CE4A1F483C0FF792C77C53877119GameLibraryObserver_player, type metadata accessor for Player);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_24F1A91C8(uint64_t a1)
{
  result = type metadata accessor for Player(319);
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

uint64_t sub_24F1A927C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F1A92DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_24E86164C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_24F1A9828((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_24E615ED8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_24F1A9828((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_24F1A9828(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t AccessibilityConditional.init(value:ax1Value:ax2Value:ax3Value:ax4Value:ax5Value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = *(*(a7 - 8) + 32);
  v21(a9, a1, a7);
  v18 = type metadata accessor for AccessibilityConditional(0, a7, a8, v17);
  v21(a9 + v18[9], a2, a7);
  v21(a9 + v18[10], a3, a7);
  v21(a9 + v18[11], a4, a7);
  v21(a9 + v18[12], a5, a7);
  v19 = a9 + v18[13];

  return (v21)(v19, a6, a7);
}

uint64_t AccessibilityConditional.init(value:axValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v10 + 48);
  if ((v14)(v15, 1, v11) == 1)
  {
    (*(v10 + 16))(v13, a1, a3);
    if (v14(a2, 1, a3) != 1)
    {
      v16 = sub_24F92C4A8();
      (*(*(v16 - 8) + 8))(a2, v16);
    }
  }

  else
  {
    (*(v10 + 32))(v13, a2, a3);
  }

  v17 = *(v10 + 32);
  v17(a5, a1, a3);
  v19 = type metadata accessor for AccessibilityConditional(0, a3, a4, v18);
  v20 = *(v10 + 16);
  v20(a5 + v19[9], v13, a3);
  v20(a5 + v19[10], v13, a3);
  v20(a5 + v19[11], v13, a3);
  v20(a5 + v19[12], v13, a3);
  return (v17)(a5 + v19[13], v13, a3);
}

uint64_t AccessibilityConditional.value(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_24F923E98();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277CDF988])
  {
    v13 = *(a2 + 36);
  }

  else if (v12 == *MEMORY[0x277CDF998])
  {
    v13 = *(a2 + 40);
  }

  else if (v12 == *MEMORY[0x277CDF9A8])
  {
    v13 = *(a2 + 44);
  }

  else if (v12 == *MEMORY[0x277CDF9B8])
  {
    v13 = *(a2 + 48);
  }

  else
  {
    if (v12 != *MEMORY[0x277CDF9D0])
    {
      (*(*(*(a2 + 16) - 8) + 16))(a3, v3);
      return (*(v8 + 8))(v11, v7);
    }

    v13 = *(a2 + 52);
  }

  return (*(*(*(a2 + 16) - 8) + 16))(a3, v3 + v13);
}

uint64_t AccessibilityConditional.init(value:ax1To3Value:ax4To5Value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v29 = a5;
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = *(v11 + 48);
  if ((v18)(v19, 1, v20, v15) == 1)
  {
    (*(v11 + 16))(v17, a1, a4);
    if (v18(a2, 1, a4) != 1)
    {
      v21 = sub_24F92C4A8();
      (*(*(v21 - 8) + 8))(a2, v21);
    }
  }

  else
  {
    (*(v11 + 32))(v17, a2, a4);
  }

  if (v18(a3, 1, a4) == 1)
  {
    (*(v11 + 16))(v13, v17, a4);
    if (v18(a3, 1, a4) != 1)
    {
      v22 = sub_24F92C4A8();
      (*(*(v22 - 8) + 8))(a3, v22);
    }
  }

  else
  {
    (*(v11 + 32))(v13, a3, a4);
  }

  v23 = *(v11 + 32);
  v23(a6, a1, a4);
  v25 = type metadata accessor for AccessibilityConditional(0, a4, v29, v24);
  v26 = *(v11 + 16);
  v26(a6 + v25[9], v17, a4);
  v26(a6 + v25[10], v17, a4);
  v23(a6 + v25[11], v17, a4);
  v26(a6 + v25[12], v13, a4);
  return (v23)(a6 + v25[13], v13, a4);
}

uint64_t AccessibilityConditional.value(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_24F92B0D8();
  v9 = v8;
  if (v7 == sub_24F92B0D8() && v9 == v10)
  {

    goto LABEL_8;
  }

  v12 = sub_24F92CE08();

  if (v12)
  {

LABEL_8:
    v13 = 36;
LABEL_9:
    v3 += *(a2 + v13);
    goto LABEL_10;
  }

  v16 = sub_24F92B0D8();
  v18 = v17;
  if (v16 == sub_24F92B0D8() && v18 == v19)
  {

    v13 = 40;
    goto LABEL_9;
  }

  v21 = sub_24F92CE08();

  if (v21)
  {

    v13 = 40;
    goto LABEL_9;
  }

  v22 = sub_24F92B0D8();
  v24 = v23;
  if (v22 == sub_24F92B0D8() && v24 == v25)
  {

    v13 = 44;
    goto LABEL_9;
  }

  v26 = sub_24F92CE08();

  if (v26)
  {

    v13 = 44;
    goto LABEL_9;
  }

  v27 = sub_24F92B0D8();
  v29 = v28;
  if (v27 == sub_24F92B0D8() && v29 == v30)
  {

    v13 = 48;
    goto LABEL_9;
  }

  v31 = sub_24F92CE08();

  if (v31)
  {

    v13 = 48;
    goto LABEL_9;
  }

  v32 = sub_24F92B0D8();
  v34 = v33;
  if (v32 == sub_24F92B0D8() && v34 == v35)
  {

LABEL_34:
    v13 = 52;
    goto LABEL_9;
  }

  v36 = sub_24F92CE08();

  if (v36)
  {
    goto LABEL_34;
  }

LABEL_10:
  v14 = *(*(*(a2 + 16) - 8) + 16);

  return v14(a3, v3);
}

uint64_t static AccessibilityConditional.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_24F92AFF8() & 1) != 0 && (type metadata accessor for AccessibilityConditional(0, a3, a4, v6), (sub_24F92AFF8()) && (sub_24F92AFF8() & 1) != 0 && (sub_24F92AFF8() & 1) != 0 && (sub_24F92AFF8())
  {
    return sub_24F92AFF8() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24F1AA888(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F1AA904(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8 + ((v6 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_24F1AAA74(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80);
  v9 = ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8)) & ~v8)) & ~v8)) & ~v8) + v7;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v5 + 56);

  return v20();
}

double sub_24F1AACAC()
{
  sub_24F927D88();
  sub_24F1AE994(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  return result;
}

uint64_t sub_24F1AADA4()
{
  type metadata accessor for NowPlayingController(0);
  v0 = swift_allocObject();
  result = sub_24F1AB7C8();
  qword_27F23B6D0 = v0;
  return result;
}

uint64_t static NowPlayingController.shared.getter()
{
  if (qword_27F210FB8 != -1)
  {
    swift_once();
  }
}

uint64_t NowPlayingController.expandedPlayer.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

double sub_24F1AAEB4@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_24F1AAF38(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t NowPlayingController.expandedPlayer.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t (*NowPlayingController.expandedPlayer.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_24F923088();
  return sub_24F1AB0E0;
}

void sub_24F1AB0E0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t NowPlayingController.$expandedPlayer.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24F1AB1BC(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24F1AB234(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6F0, &qword_24F9D18E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  sub_24F923078();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t NowPlayingController.$expandedPlayer.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6F0, &qword_24F9D18E0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  sub_24F923078();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NowPlayingController.$expandedPlayer.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6F0, &qword_24F9D18E0);
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

  v10 = OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__expandedPlayer;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  sub_24F923068();
  swift_endAccess();
  return sub_24F1AB660;
}

void sub_24F1AB660(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_24F923078();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_24F923078();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_24F1AB7C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__expandedPlayer;
  v18 = 0;
  v19 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  sub_24F923058();
  (*(v3 + 32))(v1 + v6, v5, v2);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__nowPlaying) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__mediaPlayers) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController_cancellables) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController_nowPlayingSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController_isActive) = 0;
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v7 = sub_24F92BEF8();
  v8 = sub_24F1AE52C(v7, sub_24F1ABACC, 0);
  v10 = v9;
  v12 = v11;
  v18 = v8;
  if (qword_27F210FC0 != -1)
  {
    swift_once();
  }

  type metadata accessor for NowPlayingControllerImpl(0);
  sub_24F1AE994(&qword_27F23B7A0, type metadata accessor for NowPlayingControllerImpl, &protocol conformance descriptor for AsyncController);
  v17[1] = sub_24F922FA8();
  *(swift_allocObject() + 16) = v12;
  sub_24F923018();
  swift_unknownObjectRetain();
  sub_24F923148();

  sub_24F922F58();

  v13 = v18;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();

  MEMORY[0x253051B20](1, ObjectType);

  swift_unknownObjectRelease();
  v15 = (v1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController_sink);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  return v1;
}

double sub_24F1ABB04()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468, &qword_24F962020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B810, &unk_24F9D1A70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - v7;
  sub_24F1AE994(&qword_27F236840, type metadata accessor for NowPlayingController, &protocol conformance descriptor for NowPlayingController);
  sub_24F922FA8();
  sub_24F923008();

  if (qword_27F210FC0 != -1)
  {
    swift_once();
  }

  v9 = qword_27F23B6D8;
  v10 = OBJC_IVAR____TtC12GameStoreKit15AsyncController___lock;
  v11 = *(qword_27F23B6D8 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___lock);
  v12 = *(v11 + 16);

  os_unfair_lock_lock(v12);
  v13 = *(v9 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl__mediaPlayers);
  v14 = *(v11 + 16);

  os_unfair_lock_unlock(v14);

  *(v1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__mediaPlayers) = v13;

  v15 = *(v9 + v10);
  v16 = *(v15 + 16);

  os_unfair_lock_lock(v16);
  v17 = *(v9 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl__nowPlaying);
  v18 = *(v15 + 16);

  os_unfair_lock_unlock(v18);

  v19 = OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__nowPlaying;
  if (v17)
  {
    v20 = *(v1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__nowPlaying);
    if (!v20 || v17 != v20)
    {
      type metadata accessor for MediaPlayer(0);
      sub_24F1AE994(&unk_27F23B820, type metadata accessor for MediaPlayer, &protocol conformance descriptor for MediaPlayer);

      v30 = sub_24F922FA8();
      sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
      v21 = sub_24F92BEF8();
      v29 = v21;
      v22 = sub_24F92BEB8();
      (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
      sub_24F923018();
      v28 = v5;
      sub_24EA9B900();
      sub_24F923118();
      sub_24F1AEBD8(v4);

      v23 = swift_allocObject();
      *(v23 + 16) = sub_24F1AEC40;
      *(v23 + 24) = v17;
      sub_24E602068(&unk_27F23B830, &unk_27F23B810, &unk_24F9D1A70, MEMORY[0x277CBCD60]);

      v24 = v28;
      v25 = sub_24F923148();

      (*(v6 + 8))(v8, v24);
      *(v1 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController_nowPlayingSubscription) = v25;

      v19 = OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__nowPlaying;
    }
  }

  *(v1 + v19) = v17;

  return result;
}

void sub_24F1ABF94(uint64_t a1)
{
  if (qword_27F210FB8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_27F23B6D0;
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath))
  {
    v2 = *(a1 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_itemIdentifier + 8) != 0;
  }

  else
  {
    v2 = 0;
  }

  v3 = OBJC_IVAR____TtC12GameStoreKit20NowPlayingController_isActive;
  swift_beginAccess();
  if (v2 != *(v1 + v3))
  {
    type metadata accessor for NowPlayingController(0);
    sub_24F1AE994(&qword_27F236840, type metadata accessor for NowPlayingController, &protocol conformance descriptor for NowPlayingController);
    sub_24F922FA8();
    sub_24F923008();

    *(v1 + v3) = v2;
  }
}

uint64_t NowPlayingController.isActive.getter()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20NowPlayingController_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t NowPlayingController.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__expandedPlayer;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController_sink + 8);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t NowPlayingController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit20NowPlayingController__expandedPlayer;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8, &qword_24F9D18D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20NowPlayingController_sink + 8);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_24F1AC320(uint64_t a1)
{
  sub_24F1AC3F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24F1AC3F8(uint64_t a1)
{
  if (!qword_27F23B738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F23B740, &qword_24F93EC10);
    v1 = sub_24F9230B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23B738);
    }
  }
}

uint64_t sub_24F1AC45C()
{
  type metadata accessor for NowPlayingControllerImpl(0);
  swift_allocObject();
  result = sub_24F1AC49C();
  qword_27F23B6D8 = result;
  return result;
}

uint64_t sub_24F1AC49C()
{
  v1 = sub_24F9220D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v108 = v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B7A8, &qword_24F9D1A40);
  v113 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v87 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B7B0, &unk_24F9D1A48);
  v102 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v109 = v87 - v9;
  *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl__nowPlaying) = 0;
  v107 = v0;
  *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl__mediaPlayers) = MEMORY[0x277D84F90];
  v10 = [objc_opt_self() defaultCenter];
  v87[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139A0, &unk_24F9BAB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  if (qword_27F210730 != -1)
  {
    swift_once();
  }

  v12 = qword_27F39C888;
  *(inited + 32) = qword_27F39C888;
  v13 = qword_27F210738;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = qword_27F39C890;
  *(inited + 40) = qword_27F39C890;
  v16 = v15;
  v106 = v10;
  v18 = sub_24F1AD150(inited, 0, v17);
  swift_setDeallocating();
  type metadata accessor for Name(0);
  v94 = v19;
  swift_arrayDestroy();
  if (qword_27F2113D8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v1, qword_27F39E7D8);
  v21 = sub_24F92BD98();
  v115 = v18;
  v22 = *(v2 + 16);
  v23 = v108;
  v104 = v20;
  v103 = v2 + 16;
  v99 = v22;
  v22(v108, v20, v1);
  v24 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v25 = v24 + v3;
  v90 = *(v2 + 80);
  v26 = swift_allocObject();
  v27 = *(v2 + 32);
  v91 = v24;
  v101 = v1;
  v111 = v2 + 32;
  v105 = v27;
  v27(v26 + v24, v23, v1);
  v93 = v25;
  *(v26 + v25) = v21;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B7C0, &qword_24F9D1A58);
  v86 = sub_24E602068(&qword_27F23B7C8, &qword_27F23B7C0, &qword_24F9D1A58, MEMORY[0x277CBCD90]);
  sub_24F9230D8();

  v89 = sub_24E602068(&qword_27F23B7D0, &qword_27F23B7A8, &qword_24F9D1A40, MEMORY[0x277CBCB60]);
  v28 = sub_24F9230C8();

  v29 = *(v113 + 8);
  v100 = v4;
  v113 += 8;
  v88 = v29;
  v29(v6, v4);
  v115 = v28;
  v92 = v85;
  v87[1] = v86;
  sub_24F9230E8();

  v96 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v30 = sub_24F92BEF8();
  v31 = sub_24F1AE52C(v30, sub_24F1AD548, 0);
  v33 = v32;
  v35 = v34;
  v115 = v31;
  *(swift_allocObject() + 16) = v34;
  v36 = sub_24E602068(&qword_27F23B7D8, &unk_27F23B7B0, &unk_24F9D1A48, MEMORY[0x277CBCC08]);
  swift_unknownObjectRetain();
  v87[2] = v36;
  sub_24F923148();

  sub_24F922F58();

  v37 = v115;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();

  v39 = v33;
  MEMORY[0x253051B20](1, ObjectType);
  v40 = (v107 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl_clientSink);
  v97 = v37;
  *v40 = v37;
  v40[1] = v39;
  v95 = v39;
  v98 = v35;
  v40[2] = v35;
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_24F942000;
  if (qword_27F210708 != -1)
  {
    swift_once();
  }

  v42 = qword_27F39C860;
  *(v41 + 32) = qword_27F39C860;
  v43 = qword_27F210710;
  v44 = v42;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = qword_27F39C868;
  *(v41 + 40) = qword_27F39C868;
  v46 = qword_27F210718;
  v47 = v45;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = qword_27F39C870;
  *(v41 + 48) = qword_27F39C870;
  v49 = qword_27F210720;
  v50 = v48;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = qword_27F39C878;
  *(v41 + 56) = qword_27F39C878;
  v52 = qword_27F210728;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = qword_27F39C880;
  *(v41 + 64) = qword_27F39C880;
  v55 = v54;
  v57 = sub_24F1AD150(v41, 0, v56);
  swift_setDeallocating();
  swift_arrayDestroy();
  v58 = sub_24F92BD98();
  v114 = v57;
  v59 = v108;
  v60 = v101;
  v61 = v99;
  v99(v108, v104, v101);
  v62 = v93;
  v63 = swift_allocObject();
  v105(v63 + v91, v59, v60);
  *(v63 + v62) = v58;
  sub_24F9230D8();

  v64 = v100;
  v65 = sub_24F9230C8();

  v88(v6, v64);
  v114 = v65;
  sub_24F9230E8();

  v66 = sub_24F92BEF8();
  v67 = sub_24F1AE52C(v66, sub_24F1AD67C, 0);
  v69 = v68;
  v71 = v70;
  v114 = v67;
  *(swift_allocObject() + 16) = v70;
  swift_unknownObjectRetain();
  v72 = v112;
  sub_24F923148();

  sub_24F922F58();

  v73 = v114;
  v74 = swift_getObjectType();
  swift_unknownObjectRetain();

  v75 = v69;
  MEMORY[0x253051B20](1, v74);
  v76 = v107;
  v77 = (v107 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl_nowPlayingSink);
  *v77 = v73;
  v77[1] = v75;
  v77[2] = v71;
  v61(v59, v104, v60);
  v78 = sub_24F92BEF8();
  *(v76 + 16) = MEMORY[0x277D84FA0];
  type metadata accessor for UnfairControlsLock();
  v79 = swift_allocObject();
  v80 = swift_slowAlloc();
  *v80 = 0;
  *(v79 + 16) = v80;
  *(v76 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___lock) = v79;
  v81 = (v76 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___visibilityAssertions);
  *v81 = v79;
  v81[1] = 0;
  v105(v76 + OBJC_IVAR____TtC12GameStoreKit15AsyncController_logger, v59, v60);
  *(v76 + OBJC_IVAR____TtC12GameStoreKit15AsyncController_queue) = v78;

  v82 = v78;
  MRMediaRemoteRegisterForNowPlayingNotifications();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v83 = *(v102 + 8);
  v83(v110, v72);
  v83(v109, v72);

  return v76;
}

uint64_t sub_24F1AD150(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = v3;
  v7 = sub_24F92C0E8();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B7E0, &qword_24F9D1A60);
  v10 = *(v9 - 8);
  v27 = v9;
  v28 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B7E8, &qword_24F9D1A68);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  sub_24F91EB58();
  sub_24F923028();
  sub_24E602068(&unk_27F23B7F0, &qword_27F23B7E8, &qword_24F9D1A68, MEMORY[0x277CBCE90]);
  v17 = sub_24F9230C8();
  (*(v14 + 8))(v16, v13);
  v18 = *(a1 + 16);
  if (!v18)
  {
    return v17;
  }

  v31 = v7;
  v32 = v4;
  v19 = (a1 + 32);
  v29 = a2;
  ++v30;
  v20 = v27;
  ++v28;
  do
  {
    v21 = *v19++;
    v34 = v17;
    v22 = v21;

    sub_24F92C0F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B7C0, &qword_24F9D1A58);
    sub_24E602068(&qword_27F23B7C8, &qword_27F23B7C0, &qword_24F9D1A58, MEMORY[0x277CBCD90]);
    sub_24F1AE994(&qword_27F21F480, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    v23 = v33;
    v24 = v31;
    sub_24F923108();
    (*v30)(v23, v24);

    sub_24E602068(&qword_27F23B800, &qword_27F23B7E0, &qword_24F9D1A60, MEMORY[0x277CBCC60]);
    v25 = sub_24F9230C8();

    (*v28)(v12, v20);
    v17 = v25;
    --v18;
  }

  while (v18);
  return v25;
}

double sub_24F1AD548()
{
  if (qword_27F210FC0 != -1)
  {
    swift_once();
  }

  v0 = qword_27F23B6D8;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_24F1AEBC8;
  *(v1 + 24) = v0;
  v4[4] = sub_24F1AEBD0;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_24E79B350;
  v4[3] = &block_descriptor_59;
  v2 = _Block_copy(v4);
  swift_retain_n();

  MRMediaRemoteGetNowPlayingClients();
  _Block_release(v2);

  return result;
}

uint64_t sub_24F1AD6B4(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a1 != -1)
  {
    v5 = a3;
    swift_once();
    a3 = v5;
  }

  return a3();
}

void sub_24F1AD704()
{
  v1 = swift_allocObject();
  *(v1 + 16) = sub_24F1AEB60;
  *(v1 + 24) = v0;
  v28 = sub_24F1AEBA0;
  v29 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v25 = 1107296256;
  v26 = sub_24EDB3A64;
  v27 = &block_descriptor_124;
  v2 = _Block_copy(&aBlock);
  swift_retain_n();

  MRMediaRemoteGetNowPlayingClient();
  _Block_release(v2);

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl__mediaPlayers);
  v6 = *(v3 + 16);

  os_unfair_lock_unlock(v6);

  if (v5 >> 62)
  {
    v7 = sub_24F92C738();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v22 = v5;
    v23 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v23)
      {
        v9 = MEMORY[0x253052270](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = *(v9 + OBJC_IVAR____TtC12GameStoreKit11MediaPlayer_playerPath);
      if (v10)
      {
        v11 = v7;
        sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
        swift_unknownObjectRetain();
        v12 = sub_24F92BEF8();
        v28 = sub_24F1AEBC0;
        v29 = v9;
        aBlock = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_24EDB3428;
        v27 = &block_descriptor_41;
        v13 = _Block_copy(&aBlock);
        swift_retain_n();

        MRMediaRemoteGetPlaybackStateForPlayer();
        _Block_release(v13);

        v14 = sub_24F92BEF8();
        v15 = swift_allocObject();
        *(v15 + 16) = sub_24EDB3E10;
        *(v15 + 24) = v9;
        v28 = sub_24EDB3E50;
        v29 = v15;
        aBlock = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_24E79B350;
        v27 = &block_descriptor_47;
        v16 = _Block_copy(&aBlock);
        swift_retain_n();

        MRMediaRemoteGetSupportedCommandsForPlayer();
        _Block_release(v16);

        v17 = MRPlaybackQueueRequestCreate();
        if (!v17)
        {
          goto LABEL_15;
        }

        v18 = v17;
        MRPlaybackQueueRequestSetIncludeMetadata();
        v19 = sub_24F92BEF8();
        v20 = swift_allocObject();
        *(v20 + 16) = sub_24EDB3E58;
        *(v20 + 24) = v9;
        v28 = sub_24EDB3E60;
        v29 = v20;
        aBlock = MEMORY[0x277D85DD0];
        v25 = 1107296256;
        v26 = sub_24EDB3A64;
        v27 = &block_descriptor_53;
        v21 = _Block_copy(&aBlock);
        swift_retain_n();

        MEMORY[0x253053110](v18, v10, v19, v21);
        _Block_release(v21);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v7 = v11;
        v5 = v22;
      }

      ++v8;

      if (v7 == v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

double sub_24F1ADB9C(uint64_t a1)
{
  v2 = v1;
  sub_24F1AE994(&qword_27F23B7A0, type metadata accessor for NowPlayingControllerImpl, &protocol conformance descriptor for AsyncController);
  sub_24F922FA8();
  sub_24F923008();

  v4 = OBJC_IVAR____TtC12GameStoreKit15AsyncController___lock;
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___lock);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  *(v2 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl__nowPlaying) = a1;

  os_unfair_lock_assert_owner(*(*(v2 + v4) + 16));
  os_unfair_lock_unlock(*(v5 + 16));

  return result;
}

void sub_24F1ADCB8(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!a1)
  {
    goto LABEL_18;
  }

  swift_unknownObjectRetain();
  v4 = MRNowPlayingClientGetParentAppBundleIdentifier();
  if (!v4)
  {
    v4 = MRNowPlayingClientGetBundleIdentifier();
    if (!v4)
    {
      swift_unknownObjectRelease();
      v3 = 0;
      goto LABEL_18;
    }
  }

  v5 = v4;
  v6 = sub_24F92B0D8();
  v8 = v7;

  v9 = *(a2 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___lock);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = *(a2 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl__nowPlaying);
  v12 = *(v9 + 16);

  os_unfair_lock_unlock(v12);

  if (!v11)
  {

    goto LABEL_12;
  }

  if (*(v11 + 16) == v6 && *(v11 + 24) == v8)
  {
  }

  else
  {
    v14 = sub_24F92CE08();

    if ((v14 & 1) == 0)
    {

LABEL_12:
      type metadata accessor for MediaPlayer(0);
      swift_allocObject();
      v3 = sub_24EDAE7F0(v3);

LABEL_18:
      sub_24F1ADB9C(v3);

      return;
    }
  }

  MediaPlayer.updateContent()();
  swift_unknownObjectRelease();
}

double sub_24F1ADE60(uint64_t a1)
{
  v2 = v1;
  sub_24F1AE994(&qword_27F23B7A0, type metadata accessor for NowPlayingControllerImpl, &protocol conformance descriptor for AsyncController);
  sub_24F922FA8();
  sub_24F923008();

  v4 = OBJC_IVAR____TtC12GameStoreKit15AsyncController___lock;
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___lock);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  *(v2 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl__mediaPlayers) = a1;

  os_unfair_lock_assert_owner(*(*(v2 + v4) + 16));
  os_unfair_lock_unlock(*(v5 + 16));

  return result;
}

uint64_t sub_24F1ADF7C(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    type metadata accessor for MediaPlayer(0);
    swift_allocObject();
    v5 = swift_unknownObjectRetain();
    result = sub_24EDAE7F0(v5);
    ++v1;
    if (result)
    {
      MEMORY[0x253050F00]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      result = sub_24F92B638();
      v2 = v6;
      v1 = v4;
    }
  }

  sub_24F1ADE60(v2);
}

uint64_t sub_24F1AE0A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl_clientSink + 8);
  swift_unknownObjectRelease();

  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl_nowPlayingSink + 8);
  swift_unknownObjectRelease();
}

uint64_t sub_24F1AE140()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit15AsyncController_logger;
  v2 = sub_24F9220D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl_clientSink + 8);
  swift_unknownObjectRelease();

  v4 = *(v0 + OBJC_IVAR____TtC12GameStoreKitP33_0F576E7A478774510D17A8C5D079349524NowPlayingControllerImpl_nowPlayingSink + 8);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_24F1AE258()
{
  sub_24F1AE140();

  return swift_deallocClassInstance();
}

void sub_24F1AE340(os_log_type_t a1, uint64_t a2)
{
  v4 = sub_24F91EB58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = sub_24F9220B8();
  if (os_log_type_enabled(v9, a1))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    v12 = sub_24F91EB28();
    v13 = sub_24F92B0D8();
    v15 = v14;

    (*(v5 + 8))(v8, v4);
    v16 = sub_24E7620D4(v13, v15, &v18);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_24E5DD000, v9, a1, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_24F1AE52C(void *a1, uint64_t a2, uint64_t a3)
{
  v17 = sub_24F927D88();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F23B808, 0x277D85CA0);
  v13 = a1;
  sub_24F92C008();

  swift_getObjectType();
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_62;
  v14 = _Block_copy(aBlock);

  sub_24F927DA8();
  sub_24F1AACAC();
  sub_24F92C018();
  _Block_release(v14);
  (*(v6 + 8))(v8, v17);
  (*(v10 + 8))(v12, v9);

  sub_24F92C038();
  return MEMORY[0x277D84FA0];
}

void sub_24F1AE78C(uint64_t a1)
{
  swift_getObjectType();
  sub_24F92C028();
  if ((a1 & 0xC000000000000001) != 0)
  {

    sub_24F92C6F8();
    sub_24F922F88();
    sub_24F1AE994(&unk_27F23B790, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    sub_24F92BAE8();
    a1 = v15;
    v2 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(a1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
LABEL_18:
      sub_24E6586B4(a1);
      return;
    }

    while (1)
    {
      sub_24F922F78();

      v4 = v11;
      v5 = v12;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_24F92C778())
      {
        sub_24F922F88();
        swift_dynamicCast();
        v11 = v4;
        v12 = v5;
        if (v14)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_24F1AE994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F1AE9DC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_23Tm()
{
  v1 = sub_24F9220D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F1AEB68()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F1AEBD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468, &qword_24F962020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F1AEC94()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  if (*(v1 + 16))
  {
    v3 = sub_24F92CE08();
    v4 = v2;

    if ((v3 & 1) == 0)
    {
      return sub_24F926BF8();
    }
  }

  else
  {
    v5 = v2;
  }

  sub_24E77ACC8();
  if (qword_27F210458 != -1)
  {
    swift_once();
  }

  v6 = qword_27F22BED8;
  v7 = sub_24F92C408();

  if (v7)
  {

    return 0;
  }

  return sub_24F926BF8();
}

uint64_t type metadata accessor for ArticleHorizontalRuleViewModel(uint64_t a1)
{
  result = qword_27F23B840;
  if (!qword_27F23B840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t makeNetworkInquiry()@<X0>(void *a1@<X8>)
{
  v2 = _s12GameStoreKit20NWPathNetworkInquiryCACycfC_0();
  result = type metadata accessor for NWPathNetworkInquiry(0);
  a1[3] = result;
  a1[4] = &protocol witness table for NWPathNetworkInquiry;
  *a1 = v2;
  return result;
}

uint64_t sub_24F1AEE40(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24F1AFEF0(v6);
  return sub_24F92C958();
}

void sub_24F1AEEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B858, &unk_24F9D1B30);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() proxyForLocalPlayer];
  v11 = [v10 gameStatServicePrivate];

  v12 = sub_24F92B098();
  (*(v7 + 16))(v9, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_24F1B1FFC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EFA60B8;
  aBlock[3] = &block_descriptor_125;
  v15 = _Block_copy(aBlock);

  [v11 getGamesFriendsPlayed:a2 type:v12 withinSecs:a3 matchingBundleIDs:0 handler:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

void sub_24F1AF0E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for GameSuggestion(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v82 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v82 - v13;
  v15 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B860, &unk_24F9D1B40);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v82 - v19;
  v21 = type metadata accessor for Player(0) - 8;
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  if (a2)
  {
    v99[0] = a2;
    v26 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B858, &unk_24F9D1B30);
    sub_24F92B788();
    return;
  }

  v97 = (v82 - v23);
  v84 = v25;
  v93 = v24;
  v86 = v6;

  v99[0] = sub_24EC4E0E0(v27);
  sub_24F1AEE40(v99);
  v28 = v99[0];
  v29 = sub_24E610D34(MEMORY[0x277D84F90]);
  v100 = v29;
  if ((v28 & 0x8000000000000000) != 0 || (v28 & 0x4000000000000000) != 0)
  {
    v30 = sub_24F92C738();
    v31 = v86;
    if (v30)
    {
      goto LABEL_6;
    }

LABEL_28:

LABEL_29:
    v99[0] = v29;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B858, &unk_24F9D1B30);
    sub_24F92B798();

    return;
  }

  v30 = *(v28 + 16);
  v31 = v86;
  if (!v30)
  {
    goto LABEL_28;
  }

LABEL_6:
  v88 = v17;
  v89 = v14;
  v90 = v11;
  v91 = v8;
  v82[1] = a3;
  if (v30 >= 1)
  {
    v32 = v30;
    v33 = 0;
    v98 = v28 & 0xC000000000000001;
    v94 = (v31 + 56);
    v85 = v31 + 48;
    v87 = xmmword_24F93DE60;
    v83 = v5;
    v92 = v20;
    v34 = v97;
    v95 = v30;
    v96 = v28;
    while (1)
    {
      v35 = v98 ? MEMORY[0x253052270](v33, v28) : *(v28 + 8 * v33 + 32);
      v36 = v35;
      v37 = [v36 lastPlayedGame];
      if (v37)
      {
        break;
      }

LABEL_9:
      if (v32 == ++v33)
      {

        v29 = v100;
        goto LABEL_29;
      }
    }

    v38 = v37;
    sub_24F3FAC70(v36, 0, 0, v34);
    v39 = v38;
    v40 = [v39 adamID];
    v41 = [v40 stringValue];

    v42 = sub_24F92B0D8();
    v44 = v43;

    v45 = v100;
    if (v100[2])
    {
      v46 = sub_24E76D644(v42, v44);
      v48 = v47;

      if (v48)
      {
        v49 = v86;
        sub_24F1B2100(v45[7] + *(v86 + 72) * v46, v20, type metadata accessor for GameSuggestion);
        (*(v49 + 56))(v20, 0, 1, v5);
        sub_24E601704(v20, &qword_27F23B860, &unk_24F9D1B40);
        v50 = [v39 adamID];

        v51 = [v50 stringValue];
        v52 = sub_24F92B0D8();
        v54 = v53;

        v55 = sub_24F4D65F8(v99, v52, v54);
        v57 = v56;
        if (!(*(v49 + 48))(v56, 1, v5))
        {
          sub_24F1B2100(v97, v84, type metadata accessor for Player);
          v75 = *(v5 + 20);
          v76 = *(v57 + v75);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v57 + v75) = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v76 = sub_24E618138(0, v76[2] + 1, 1, v76);
            *(v57 + v75) = v76;
          }

          v79 = v76[2];
          v78 = v76[3];
          v80 = v93;
          if (v79 >= v78 >> 1)
          {
            v81 = sub_24E618138((v78 > 1), v79 + 1, 1, v76);
            v80 = v93;
            v76 = v81;
            *(v57 + v75) = v81;
          }

          v20 = v92;
          v32 = v95;
          v76[2] = v79 + 1;
          sub_24F1B2168(v84, v76 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v79, type metadata accessor for Player);
          (v55)(v99, 0);

          v34 = v97;
          sub_24F1B20A0(v97, type metadata accessor for Player);
          v5 = v83;
          v28 = v96;
          goto LABEL_9;
        }

        (v55)(v99, 0);

        v34 = v97;
        sub_24F1B20A0(v97, type metadata accessor for Player);
        goto LABEL_20;
      }
    }

    else
    {
    }

    (*v94)(v20, 1, 1, v5);
    sub_24E601704(v20, &qword_27F23B860, &unk_24F9D1B40);
    v58 = sub_24F91F648();
    v59 = v89;
    (*(*(v58 - 8) + 56))(v89, 1, 1, v58);
    v60 = v39;
    v61 = v88;
    sub_24E7EDF8C(v60, v59, v88);
    v62 = [v60 adamID];

    v63 = [v62 stringValue];
    v64 = sub_24F92B0D8();
    v66 = v65;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213870, &qword_24F93B3F0);
    v67 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = v87;
    v34 = v97;
    sub_24F1B2100(v97, v68 + v67, type metadata accessor for Player);
    v69 = v90;
    sub_24F1B2100(v61, v90, type metadata accessor for Game);
    *(v69 + *(v5 + 20)) = v68;
    v70 = v69;
    v71 = v91;
    sub_24F1B2168(v70, v91, type metadata accessor for GameSuggestion);
    v72 = v100;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = v72;
    v100 = 0x8000000000000000;
    sub_24E8224D4(v71, v64, v66, v73);

    v74 = v61;
    v20 = v92;
    sub_24F1B20A0(v74, type metadata accessor for Game);
    sub_24F1B20A0(v34, type metadata accessor for Player);
    v100 = v99[0];

LABEL_20:
    v32 = v95;
    v28 = v96;
    goto LABEL_9;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_24F1AFA58(id *a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v35 - v18;
  v20 = *a2;
  v21 = &selRef_systemBackgroundColor;
  v22 = [*a1 lastPlayedDate];
  v37 = v19;
  if (v22)
  {
    v23 = v22;
    sub_24F91F608();

    v24 = *(v10 + 32);
    v24(v8, v15, v9);
    v36 = *(v10 + 56);
    v36(v8, 0, 1, v9);
    v24(v19, v8, v9);
    v21 = &selRef_systemBackgroundColor;
  }

  else
  {
    v36 = *(v10 + 56);
    v36(v8, 1, 1, v9);
    sub_24F91F618();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_24E601704(v8, &unk_27F22EC30, &qword_24F939880);
    }
  }

  v25 = [v20 v21[76]];
  if (v25)
  {
    v26 = v25;
    sub_24F91F608();

    v27 = *(v10 + 32);
    v28 = v38;
    v27(v38, v15, v9);
    v36(v28, 0, 1, v9);
    v27(v12, v28, v9);
    v29 = v37;
  }

  else
  {
    v30 = v38;
    v36(v38, 1, 1, v9);
    sub_24F91F618();
    v31 = (*(v10 + 48))(v30, 1, v9);
    v29 = v37;
    if (v31 != 1)
    {
      sub_24E601704(v30, &unk_27F22EC30, &qword_24F939880);
    }
  }

  v32 = sub_24F91F588();
  v33 = *(v10 + 8);
  v33(v12, v9);
  v33(v29, v9);
  return v32 & 1;
}

uint64_t sub_24F1AFE38(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return (sub_24F1B1B84)(v5, a3);
}

void sub_24F1AFEF0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24E960F78();
        v6 = sub_24F92B618();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_24F1B048C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24F1AFFF4(0, v2, 1, a1);
  }
}

void sub_24F1AFFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = sub_24F91F648();
  MEMORY[0x28223BE20](v13);
  v60 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v46 - v16;
  MEMORY[0x28223BE20](v17);
  v51 = &v46 - v19;
  v47 = a2;
  if (a3 != a2)
  {
    v56 = (v18 + 32);
    v20 = *a4;
    v59 = (v18 + 56);
    v52 = (v18 + 48);
    v53 = (v18 + 8);
    v54 = v20;
    v21 = v20 + 8 * a3 - 8;
    v22 = a1 - a3;
LABEL_5:
    v49 = v21;
    v50 = a3;
    v23 = *(v54 + 8 * a3);
    v48 = v22;
    v24 = v51;
    while (1)
    {
      v25 = *v21;
      v26 = v23;
      v61 = v25;
      v58 = v26;
      v27 = [v26 lastPlayedDate];
      if (v27)
      {
        v28 = v27;
        v29 = v57;
        sub_24F91F608();

        v30 = *v56;
        (*v56)(v12, v29, v13);
        v31 = *v59;
        (*v59)(v12, 0, 1, v13);
        v30(v24, v12, v13);
      }

      else
      {
        v31 = *v59;
        (*v59)(v12, 1, 1, v13);
        sub_24F91F618();
        if ((*v52)(v12, 1, v13) != 1)
        {
          sub_24E601704(v12, &unk_27F22EC30, &qword_24F939880);
        }
      }

      v32 = [v61 lastPlayedDate];
      if (v32)
      {
        v33 = v57;
        v34 = v32;
        sub_24F91F608();

        v35 = *v56;
        v36 = v12;
        v37 = v55;
        v38 = v33;
        v24 = v51;
        (*v56)(v55, v38, v13);
        v31(v37, 0, 1, v13);
        v39 = v37;
        v12 = v36;
        v35(v60, v39, v13);
      }

      else
      {
        v40 = v55;
        v31(v55, 1, 1, v13);
        sub_24F91F618();
        if ((*v52)(v40, 1, v13) != 1)
        {
          sub_24E601704(v55, &unk_27F22EC30, &qword_24F939880);
        }
      }

      v41 = v60;
      v42 = sub_24F91F588();
      v43 = *v53;
      (*v53)(v41, v13);
      v43(v24, v13);

      if ((v42 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v21 = v49 + 8;
        v22 = v48 - 1;
        if (v50 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v54)
      {
        break;
      }

      v44 = *v21;
      v23 = *(v21 + 8);
      *v21 = v23;
      *(v21 + 8) = v44;
      v21 -= 8;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24F1B048C(uint64_t **a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v161 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v140 - v11;
  MEMORY[0x28223BE20](v12);
  v151 = &v140 - v13;
  MEMORY[0x28223BE20](v14);
  v149 = &v140 - v15;
  v16 = sub_24F91F648();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v165 = &v140 - v18;
  MEMORY[0x28223BE20](v19);
  v148 = &v140 - v20;
  MEMORY[0x28223BE20](v21);
  v163 = &v140 - v22;
  MEMORY[0x28223BE20](v23);
  v152 = a3;
  v153 = &v140 - v26;
  if (*(a3 + 8) < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_106:
    a3 = *v144;
    if (!*v144)
    {
      goto LABEL_147;
    }

    a4 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    v135 = a4;
LABEL_109:
    v169 = v135;
    a4 = *(v135 + 2);
    if (a4 >= 2)
    {
      while (*v152)
      {
        v136 = *&v135[16 * a4];
        v137 = v135;
        v138 = *&v135[16 * a4 + 24];
        sub_24F1B1210((*v152 + 8 * v136), (*v152 + 8 * *&v135[16 * a4 + 16]), (*v152 + 8 * v138), a3);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v138 < v136)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_24E86164C(v137);
        }

        if (a4 - 2 >= *(v137 + 2))
        {
          goto LABEL_135;
        }

        v139 = &v137[16 * a4];
        *v139 = v136;
        *(v139 + 1) = v138;
        v169 = v137;
        sub_24E8615C0(a4 - 1);
        v135 = v169;
        a4 = *(v169 + 2);
        if (a4 <= 1)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_145;
    }

LABEL_117:

    return;
  }

  v27 = *(a3 + 8);
  v141 = a4;
  v28 = 0;
  v162 = (v24 + 32);
  v166 = (v24 + 56);
  v155 = (v24 + 48);
  v29 = MEMORY[0x277D84F90];
  v160 = (v24 + 8);
  v156 = v16;
  v157 = v25;
  while (1)
  {
    v30 = v28;
    if (v28 + 1 >= v27)
    {
      v43 = v28 + 1;
    }

    else
    {
      v154 = v27;
      v143 = v29;
      a4 = *v152;
      v31 = *(*v152 + 8 * (v28 + 1));
      v167 = *(*v152 + 8 * v28);
      v32 = v167;
      v168 = v31;
      v33 = v31;
      a3 = v32;
      LODWORD(v159) = sub_24F1AFA58(&v168, &v167);
      if (v5)
      {

        return;
      }

      v34 = v28 + 2;
      v142 = v28;
      v147 = 8 * v28;
      v35 = (a4 + 8 * v28 + 16);
      v150 = 0;
      while (1)
      {
        v43 = v154;
        if (v154 == v34)
        {
          break;
        }

        v44 = *(v35 - 1);
        v45 = *v35;
        v46 = v44;
        v164 = v45;
        v47 = [v45 lastPlayedDate];
        if (v47)
        {
          v48 = v47;
          v49 = v163;
          sub_24F91F608();

          v50 = *v162;
          v51 = v149;
          (*v162)(v149, v49, v16);
          v52 = *v166;
          (*v166)(v51, 0, 1, v16);
          (v50)(v153, v51, v16);
        }

        else
        {
          v52 = *v166;
          v53 = v149;
          (*v166)(v149, 1, 1, v16);
          sub_24F91F618();
          if ((*v155)(v53, 1, v16) != 1)
          {
            sub_24E601704(v53, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v54 = [v46 lastPlayedDate];
        if (v54)
        {
          v36 = v163;
          v37 = v54;
          sub_24F91F608();

          v38 = *v162;
          v39 = v151;
          (*v162)(v151, v36, v16);
          v52(v39, 0, 1, v16);
          v40 = v148;
          (v38)(v148, v39, v16);
        }

        else
        {
          v55 = v151;
          v52(v151, 1, 1, v16);
          v40 = v148;
          sub_24F91F618();
          if ((*v155)(v55, 1, v16) != 1)
          {
            sub_24E601704(v151, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v41 = v153;
        a4 = sub_24F91F588();
        a3 = v160;
        v42 = *v160;
        (*v160)(v40, v16);
        v42(v41, v16);

        ++v34;
        ++v35;
        v5 = v150;
        if ((v159 ^ a4))
        {
          v43 = v34 - 1;
          break;
        }
      }

      v29 = v143;
      v30 = v142;
      v56 = v147;
      if (v159)
      {
        if (v43 < v142)
        {
          goto LABEL_140;
        }

        if (v142 < v43)
        {
          v57 = 8 * v43 - 8;
          v58 = v43;
          v59 = v142;
          do
          {
            if (v59 != --v58)
            {
              v60 = *v152;
              if (!*v152)
              {
                goto LABEL_144;
              }

              v61 = *(v60 + v56);
              *(v60 + v56) = *(v60 + v57);
              *(v60 + v57) = v61;
            }

            ++v59;
            v57 -= 8;
            v56 += 8;
          }

          while (v59 < v58);
        }
      }
    }

    v62 = v152[1];
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v30))
      {
        goto LABEL_137;
      }

      if (v43 - v30 < v141)
      {
        if (__OFADD__(v30, v141))
        {
          goto LABEL_138;
        }

        if (v30 + v141 < v62)
        {
          v62 = v30 + v141;
        }

        if (v62 < v30)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v135 = sub_24E86164C(a4);
          goto LABEL_109;
        }

        if (v43 != v62)
        {
          break;
        }
      }
    }

    v28 = v43;
    if (v43 < v30)
    {
      goto LABEL_136;
    }

LABEL_36:
    v63 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v63;
    }

    else
    {
      v29 = sub_24E615ED8(0, *(v63 + 2) + 1, 1, v63);
    }

    a3 = *(v29 + 2);
    v64 = *(v29 + 3);
    v65 = a3 + 1;
    if (a3 >= v64 >> 1)
    {
      v29 = sub_24E615ED8((v64 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v65;
    v66 = &v29[16 * a3];
    *(v66 + 4) = v30;
    *(v66 + 5) = v28;
    v67 = *v144;
    if (!*v144)
    {
      goto LABEL_146;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v29 + 4);
          v69 = *(v29 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_55:
          if (v71)
          {
            goto LABEL_125;
          }

          v84 = &v29[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_128;
          }

          v90 = &v29[16 * a3 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_132;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              a3 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v94 = &v29[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_69:
        if (v89)
        {
          goto LABEL_127;
        }

        v97 = &v29[16 * a3];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_130;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = a3 - 1;
        if (a3 - 1 >= v65)
        {
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
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v152)
        {
          goto LABEL_143;
        }

        v105 = v29;
        v106 = *&v29[16 * a4 + 32];
        v107 = *&v29[16 * a3 + 40];
        sub_24F1B1210((*v152 + 8 * v106), (*v152 + 8 * *&v29[16 * a3 + 32]), (*v152 + 8 * v107), v67);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v107 < v106)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_24E86164C(v105);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_122;
        }

        v108 = &v105[16 * a4];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v169 = v105;
        a4 = &v169;
        sub_24E8615C0(a3);
        v29 = v169;
        v65 = *(v169 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v29[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_123;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_124;
      }

      v79 = &v29[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_126;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_129;
      }

      if (v83 >= v75)
      {
        v101 = &v29[16 * a3 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_133;
        }

        if (v70 < v104)
        {
          a3 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v27 = v152[1];
    if (v28 >= v27)
    {
      goto LABEL_106;
    }
  }

  v145 = v62;
  v143 = v29;
  v150 = v5;
  v159 = *v152;
  v109 = v159 + 8 * v43 - 8;
  v142 = v30;
  v110 = v30 - v43;
LABEL_87:
  v154 = v43;
  v111 = *(v159 + 8 * v43);
  v146 = v110;
  v147 = v109;
  while (1)
  {
    v112 = *v109;
    v113 = v111;
    v114 = v112;
    v164 = v113;
    v115 = [v113 lastPlayedDate];
    if (v115)
    {
      v116 = v163;
      v117 = v115;
      sub_24F91F608();

      v118 = *v162;
      v119 = v158;
      (*v162)(v158, v116, v16);
      v120 = *v166;
      (*v166)(v119, 0, 1, v16);
      (v118)(v165, v119, v16);
    }

    else
    {
      v120 = *v166;
      v121 = v158;
      (*v166)(v158, 1, 1, v16);
      sub_24F91F618();
      if ((*v155)(v121, 1, v16) != 1)
      {
        sub_24E601704(v121, &unk_27F22EC30, &qword_24F939880);
      }
    }

    v122 = [v114 lastPlayedDate];
    if (v122)
    {
      v123 = v163;
      v124 = v122;
      sub_24F91F608();

      v125 = v161;
      v126 = *v162;
      v127 = v123;
      v128 = v156;
      (*v162)(v161, v127, v156);
      v120(v125, 0, 1, v128);
      v129 = v157;
      v126();
      v16 = v128;
    }

    else
    {
      v130 = v161;
      v16 = v156;
      v120(v161, 1, 1, v156);
      v129 = v157;
      sub_24F91F618();
      if ((*v155)(v130, 1, v16) != 1)
      {
        sub_24E601704(v161, &unk_27F22EC30, &qword_24F939880);
      }
    }

    v131 = v165;
    a4 = sub_24F91F588();
    a3 = v160;
    v132 = *v160;
    (*v160)(v129, v16);
    v132(v131, v16);

    if ((a4 & 1) == 0)
    {
LABEL_86:
      v43 = v154 + 1;
      v109 = v147 + 8;
      v110 = v146 - 1;
      if (v154 + 1 != v145)
      {
        goto LABEL_87;
      }

      v5 = v150;
      v29 = v143;
      v30 = v142;
      v28 = v145;
      if (v145 < v142)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    if (!v159)
    {
      break;
    }

    v133 = *v109;
    v111 = *(v109 + 8);
    *v109 = v111;
    *(v109 + 8) = v133;
    v109 -= 8;
    if (__CFADD__(v110++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_24F1B1210(void **a1, void **a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = (&v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v95 = &v89 - v11;
  MEMORY[0x28223BE20](v12);
  v98 = &v89 - v13;
  MEMORY[0x28223BE20](v14);
  v96 = &v89 - v15;
  v16 = sub_24F91F648();
  MEMORY[0x28223BE20](v16);
  v94 = (&v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v102 = &v89 - v19;
  MEMORY[0x28223BE20](v20);
  v93 = (&v89 - v21);
  MEMORY[0x28223BE20](v22);
  v103 = &v89 - v23;
  MEMORY[0x28223BE20](v24);
  v101 = &v89 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v28 < v29 >> 3)
  {
    if (a4 != a1 || &a1[v28] <= a4)
    {
      v31 = v25;
      memmove(a4, a1, 8 * v28);
      v25 = v31;
    }

    v92 = &a4[v28];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v32 = a1;
      if (a2 < a3)
      {
        v97 = (v25 + 32);
        v102 = (v25 + 56);
        v94 = (v25 + 48);
        v95 = (v25 + 8);
        v33 = v92;
        while (1)
        {
          v100 = a2;
          v34 = *a2;
          v104 = a4;
          v35 = *a4;
          v36 = v34;
          v37 = v35;
          v99 = v36;
          v38 = [v36 lastPlayedDate];
          if (v38)
          {
            v39 = v38;
            v40 = v103;
            sub_24F91F608();

            v41 = v96;
            v42 = *v97;
            (*v97)(v96, v40, v16);
            v43 = *v102;
            (*v102)(v41, 0, 1, v16);
            v42(v101, v41, v16);
          }

          else
          {
            v43 = *v102;
            v44 = v96;
            (*v102)(v96, 1, 1, v16);
            sub_24F91F618();
            if ((*v94)(v44, 1, v16) != 1)
            {
              sub_24E601704(v44, &unk_27F22EC30, &qword_24F939880);
            }
          }

          v45 = [v37 lastPlayedDate];
          if (v45)
          {
            v46 = v32;
            v47 = v103;
            v48 = v45;
            sub_24F91F608();

            v49 = v98;
            v50 = *v97;
            v51 = v47;
            v32 = v46;
            v33 = v92;
            (*v97)(v98, v51, v16);
            v43(v49, 0, 1, v16);
            v52 = v93;
            v50(v93, v49, v16);
          }

          else
          {
            v53 = v98;
            v43(v98, 1, 1, v16);
            v52 = v93;
            sub_24F91F618();
            if ((*v94)(v53, 1, v16) != 1)
            {
              sub_24E601704(v98, &unk_27F22EC30, &qword_24F939880);
            }
          }

          v54 = v101;
          v55 = sub_24F91F588();
          v56 = v52;
          v57 = *v95;
          (*v95)(v56, v16);
          v57(v54, v16);

          if ((v55 & 1) == 0)
          {
            break;
          }

          v58 = v100;
          a2 = v100 + 1;
          a4 = v104;
          if (v32 != v100)
          {
            goto LABEL_24;
          }

LABEL_25:
          ++v32;
          if (a4 >= v33 || a2 >= a3)
          {
            a2 = v32;
            goto LABEL_56;
          }
        }

        v58 = v104;
        a4 = v104 + 1;
        a2 = v100;
        if (v32 == v104)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v32 = *v58;
        goto LABEL_25;
      }

      a2 = a1;
    }

    v33 = v92;
    goto LABEL_56;
  }

  v90 = a1;
  if (a4 != a2 || &a2[v30] <= a4)
  {
    v59 = v25;
    memmove(a4, a2, 8 * v30);
    v25 = v59;
  }

  v33 = &a4[v30];
  if (a3 - a2 >= 8 && a2 > v90)
  {
    v96 = (v25 + 32);
    v101 = (v25 + 56);
    v91 = (v25 + 48);
    v92 = (v25 + 8);
    v104 = a4;
    do
    {
      v100 = a2;
      v60 = a2 - 1;
      --a3;
      v61 = v33;
      v93 = v60;
      while (1)
      {
        v62 = *--v61;
        v63 = *v60;
        v64 = v62;
        v65 = v63;
        v66 = [v64 lastPlayedDate];
        v99 = v64;
        if (v66)
        {
          v67 = v66;
          v68 = v103;
          sub_24F91F608();

          v69 = v95;
          v70 = *v96;
          (*v96)(v95, v68, v16);
          v71 = *v101;
          (*v101)(v69, 0, 1, v16);
          v70(v102, v69, v16);
        }

        else
        {
          v71 = *v101;
          v72 = v95;
          (*v101)(v95, 1, 1, v16);
          sub_24F91F618();
          if ((*v91)(v72, 1, v16) != 1)
          {
            sub_24E601704(v72, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v98 = v65;
        v73 = [v65 lastPlayedDate];
        if (v73)
        {
          v74 = a3;
          v75 = v33;
          v76 = v103;
          v77 = v73;
          sub_24F91F608();

          v78 = v97;
          v79 = *v96;
          v80 = v76;
          v33 = v75;
          a3 = v74;
          (*v96)(v97, v80, v16);
          v71(v78, 0, 1, v16);
          v81 = v94;
          v79(v94, v78, v16);
        }

        else
        {
          v82 = v97;
          v71(v97, 1, 1, v16);
          v81 = v94;
          sub_24F91F618();
          if ((*v91)(v82, 1, v16) != 1)
          {
            sub_24E601704(v97, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v83 = v102;
        v84 = sub_24F91F588();
        v85 = *v92;
        (*v92)(v81, v16);
        v85(v83, v16);

        v86 = (a3 + 1);
        if (v84)
        {
          break;
        }

        a4 = v104;
        v60 = v93;
        if (v86 != v33)
        {
          *a3 = *v61;
        }

        --a3;
        v33 = v61;
        if (v61 <= a4)
        {
          v33 = v61;
          a2 = v100;
          goto LABEL_56;
        }
      }

      a4 = v104;
      v87 = v93;
      if (v86 != v100)
      {
        *a3 = *v93;
      }

      if (v33 <= a4)
      {
        break;
      }

      a2 = v87;
    }

    while (v87 > v90);
    a2 = v87;
  }

LABEL_56:
  if (a2 != a4 || a2 >= (a4 + ((v33 - a4 + (v33 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v33 - a4));
  }

  return 1;
}

uint64_t sub_24F1B1B84(uint64_t a1)
{
  v1[5] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for ASKBagContract(0);
  v4 = swift_task_alloc();
  v1[9] = v4;
  *v4 = v1;
  v4[1] = sub_24F1B1CA0;

  return MEMORY[0x28217F228](v1 + 2, v3, v3);
}

uint64_t sub_24F1B1CA0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24EB1B50C;
  }

  else
  {
    v2 = sub_24F1B1DB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1B1DB4()
{
  v0[11] = v0[2];
  if (qword_27F210A20 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_24F92A398();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  v5 = v0[3];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = swift_task_alloc();
  v0[13] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B850, &qword_24F9D1B28);
  *v7 = v0;
  v7[1] = sub_24EB1B304;

  return MEMORY[0x2822008A0](v0 + 4, 0, 0, 0xD00000000000002ELL, 0x800000024FA6E8B0, sub_24F1B1F60, v6, v8);
}

uint64_t sub_24F1B1F68()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B858, &unk_24F9D1B30);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24F1B1FFC(uint64_t a1, uint64_t *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B858, &unk_24F9D1B30) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_24F1AF0E8(a1, a2, v6);
}

uint64_t block_copy_helper_125(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F1B20A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F1B2100(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1B2168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F1B21D0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v19 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC12GameStoreKit20JSResilientDeepLinks_bag);

  result = ASKBagContract.resilientDeepLinkPatterns.getter();
  v10 = result;
  v11 = *(result + 16);
  if (v11)
  {
    v19[1] = v8;
    v12 = 0;
    v13 = (result + 40);
    while (v12 < *(v10 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v19[4] = a1;
      v19[5] = a2;
      v19[2] = v14;
      v19[3] = v15;
      v16 = sub_24F91F7C8();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
      sub_24E600AEC();

      sub_24F92C5B8();
      v18 = v17;
      sub_24ECB88E4(v7);

      if ((v18 & 1) == 0)
      {

        return 1;
      }

      ++v12;
      v13 += 2;
      if (v11 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t sub_24F1B25B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F1B2670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F23B870;
  if (!qword_27F23B870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F1B2760@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  started = type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent(0);
  v8 = *(started + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E7B641C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E70D960(v1 + v8, boxed_opaque_existential_1);
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x800000024FA6E9A0;
  v10 = (v1 + *(started + 24));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = v10[4];
  *(inited + 184) = &type metadata for ChallengesHubData;
  *(inited + 192) = sub_24EE56F34();
  v16 = swift_allocObject();
  *(inited + 160) = v16;
  v16[2] = v12;
  v16[3] = v11;
  v16[4] = v13;
  v16[5] = v14;
  v16[6] = v15;

  v17 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v18 = sub_24E80FFAC(v17);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v18;
  return result;
}

uint64_t sub_24F1B298C()
{

  return swift_deallocObject();
}

uint64_t RateAction.Parameter.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x676E69746172;
  }
}

GameStoreKit::RateAction::Parameter_optional __swiftcall RateAction.Parameter.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F1B2AC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x676E69746172;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x800000024FA3FAB0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x676E69746172;
  }

  if (*a2)
  {
    v6 = 0x800000024FA3FAB0;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24F1B2B70()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1B2BF4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F1B2C64()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F1B2CE4@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24F1B2D44(unint64_t *a1@<X8>)
{
  v2 = 0x800000024FA3FAB0;
  v3 = 0x676E69746172;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

double RateAction.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10RateAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10RateAction_adamId);
  a1[1] = v2;

  return result;
}

uint64_t sub_24F1B2D9C()
{
  v1 = v0 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating;
  swift_beginAccess();
  return *v1;
}

void sub_24F1B2DE8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t *RateAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v30 = *v3;
  v33 = sub_24F9285B8();
  v37 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = v3 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating;
  *v13 = 0;
  v13[8] = 1;
  v35 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v7 + 8);
  v36 = v6;
  v17(v12, v6);
  if (v16)
  {
    v18 = (v3 + OBJC_IVAR____TtC12GameStoreKit10RateAction_adamId);
    *v18 = v14;
    v18[1] = v16;
    v19 = v35;
    (*(v7 + 16))(v9, v35, v36);
    v20 = v31;
    v22 = v33;
    v21 = v34;
    (*(v37 + 16))(v31, v34, v33);
    v23 = v32;
    v24 = HttpTemplateAction.init(deserializing:using:)(v9, v20);
    if (!v23)
    {
      v3 = v24;
    }

    (*(v37 + 8))(v21, v22);
    v17(v19, v36);
  }

  else
  {
    v25 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v26 = 0x64496D616461;
    v27 = v30;
    v26[1] = 0xE600000000000000;
    v26[2] = v27;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v37 + 8))(v34, v33);
    v17(v35, v36);
    type metadata accessor for RateAction(0);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t type metadata accessor for RateAction(uint64_t a1)
{
  result = qword_27F23B888;
  if (!qword_27F23B888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RateAction.deinit()
{
  v0 = HttpTemplateAction.deinit();

  return v0;
}

uint64_t RateAction.__deallocating_deinit()
{
  HttpTemplateAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_24F1B3390()
{
  result = qword_27F23B880;
  if (!qword_27F23B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B880);
  }

  return result;
}

void sub_24F1B33E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
}

void sub_24F1B3440(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC12GameStoreKit10RateAction_rating;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t View.limitDynamicTypeSizeForSeedBuild()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v38 = sub_24F923E98();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v47 = a2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v39 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v35 - v10;
  v11 = *(a1 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = sub_24F924E38();
  v41 = *(v18 - 8);
  v42 = v18;
  MEMORY[0x28223BE20](v18);
  v40 = &v35 - v19;
  v20 = [objc_opt_self() standardUserDefaults];
  v21 = sub_24F92B098();
  v22 = [v20 BOOLForKey_];

  if (v22)
  {
    sub_24E7896B8();
    sub_24E7896B8();
    v46 = a1;
    v47 = a2;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = v40;
    sub_24ECCCBA0(v14, a1, OpaqueTypeMetadata2, a2, OpaqueTypeConformance2);
    v25 = *(v11 + 8);
    v25(v14, a1);
    v25(v17, a1);
  }

  else
  {
    v27 = v35;
    v26 = v36;
    v28 = v38;
    (*(v36 + 104))(v35, *MEMORY[0x277CDF9D8], v38);
    sub_24F9263E8();
    (*(v26 + 8))(v27, v28);
    v46 = a1;
    v47 = a2;
    v29 = swift_getOpaqueTypeConformance2();
    v30 = v37;
    sub_24E7896B8();
    v31 = *(v39 + 8);
    v31(v8, OpaqueTypeMetadata2);
    sub_24E7896B8();
    v24 = v40;
    sub_24ECCCC98(v8, a1, OpaqueTypeMetadata2, a2, v29);
    v31(v8, OpaqueTypeMetadata2);
    v31(v30, OpaqueTypeMetadata2);
  }

  v46 = a1;
  v47 = a2;
  v32 = swift_getOpaqueTypeConformance2();
  v44 = a2;
  v45 = v32;
  v33 = v42;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v41 + 8))(v24, v33);
}

uint64_t sub_24F1B3AF0(uint64_t *a1)
{
  swift_getOpaqueTypeMetadata2();
  sub_24F924E38();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_24F1B3B98(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213CD0, &qword_24F93B918);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F9479A0;
  v3 = sub_24F1B411C(a1);
  sub_24F1B3D18(1, a1, &v19);
  v4 = v20;
  v5 = *MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v8 = *(MEMORY[0x277D768C8] + 24);
  if (v20 == 1)
  {
    v4 = 0;
  }

  *(v2 + 32) = xmmword_24F9D1D40;
  *(v2 + 48) = v3;
  *(v2 + 56) = v3;
  *(v2 + 64) = 0;
  v9 = vdupq_n_s64(0xC0C81C8000000000);
  *(v2 + 72) = v9;
  __asm { FMOV            V5.2D, #1.0 }

  *(v2 + 88) = _Q5;
  *(v2 + 104) = vdupq_n_s64(0x404E000000000000uLL);
  __asm { FMOV            V5.2D, #24.0 }

  *(v2 + 120) = _Q5;
  *(v2 + 136) = v19;
  *(v2 + 152) = v4;
  *(v2 + 160) = v5;
  *(v2 + 168) = v6;
  *(v2 + 176) = v7;
  *(v2 + 184) = v8;
  v16 = *(a1 + 16);
  *(v2 + 192) = xmmword_24F9D1D50;
  *(v2 + 208) = v9;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 240) = 0;
  __asm { FMOV            V5.2D, #2.0 }

  *(v2 + 248) = _Q5;
  *(v2 + 264) = 0x404E000000000000;
  *(v2 + 272) = xmmword_24F9D1D60;
  *(v2 + 288) = 0x4038000000000000;
  *(v2 + 296) = v16;
  *(v2 + 304) = v16;
  *(v2 + 312) = 1;
  *(v2 + 320) = v5;
  *(v2 + 328) = v6;
  *(v2 + 336) = v7;
  *(v2 + 344) = v8;
  *(v2 + 352) = xmmword_24F9D1D70;
  *(v2 + 368) = v9;
  *(v2 + 384) = 0;
  *(v2 + 392) = 0;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0x4008000000000000;
  *(v2 + 416) = xmmword_24F9D1D80;
  *(v2 + 432) = xmmword_24F9D1D60;
  *(v2 + 448) = 0x4038000000000000;
  *(v2 + 456) = v16;
  *(v2 + 464) = v16;
  *(v2 + 472) = 1;
  *(v2 + 480) = v5;
  *(v2 + 488) = v6;
  *(v2 + 496) = v7;
  *(v2 + 504) = v8;
  return v2;
}

void sub_24F1B3D18(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F925218();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  if (a1 != 1)
  {
    v24 = *(a2 + 2);
    goto LABEL_13;
  }

  v19 = *a2;
  v28 = type metadata accessor for ShelfLayoutEnvironment(0);
  v20 = *(v28 + 36);
  (*(v7 + 104))(v18, *MEMORY[0x277CE0558], v6);
  (*(v7 + 56))(v18, 0, 1, v6);
  v21 = *(v10 + 48);
  v29 = a2;
  sub_24EDEBCCC(a2 + v20, v12);
  sub_24EDEBCCC(v18, &v12[v21]);
  v22 = *(v7 + 48);
  if (v22(v12, 1, v6) != 1)
  {
    sub_24EDEBCCC(v12, v15);
    if (v22(&v12[v21], 1, v6) != 1)
    {
      (*(v7 + 32))(v9, &v12[v21], v6);
      sub_24EDEBD3C();
      v23 = sub_24F92AFF8();
      v25 = *(v7 + 8);
      v25(v9, v6);
      sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
      v25(v15, v6);
      sub_24E601704(v12, &qword_27F215598, &qword_24F945EF0);
      goto LABEL_10;
    }

    sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
    (*(v7 + 8))(v15, v6);
    goto LABEL_8;
  }

  sub_24E601704(v18, &qword_27F215598, &qword_24F945EF0);
  if (v22(&v12[v21], 1, v6) != 1)
  {
LABEL_8:
    sub_24E601704(v12, &unk_27F254F20, &qword_24F940790);
    v23 = 0;
    goto LABEL_10;
  }

  sub_24E601704(v12, &qword_27F215598, &qword_24F945EF0);
  v23 = 1;
LABEL_10:
  v26 = 1580.0;
  if (v19 <= 1580.0)
  {
    v26 = v19;
  }

  v30 = 2;
  sub_24F422FFC(v23 & 1, v26);
LABEL_13:
  *a3 = v24;
  *(a3 + 8) = v24;
  *(a3 + 16) = 1;
}

double sub_24F1B411C(double *a1)
{
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = *a1;
  v17 = *(type metadata accessor for ShelfLayoutEnvironment(0) + 36);
  (*(v3 + 104))(v15, *MEMORY[0x277CE0558], v2);
  (*(v3 + 56))(v15, 0, 1, v2);
  v18 = *(v7 + 56);
  v24 = a1;
  sub_24EDEBCCC(a1 + v17, v9);
  sub_24EDEBCCC(v15, &v9[v18]);
  v19 = *(v3 + 48);
  if (v19(v9, 1, v2) == 1)
  {
    sub_24E601704(v15, &qword_27F215598, &qword_24F945EF0);
    if (v19(&v9[v18], 1, v2) == 1)
    {
      sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
      v20 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_24EDEBCCC(v9, v12);
  if (v19(&v9[v18], 1, v2) == 1)
  {
    sub_24E601704(v15, &qword_27F215598, &qword_24F945EF0);
    (*(v3 + 8))(v12, v2);
LABEL_6:
    sub_24E601704(v9, &unk_27F254F20, &qword_24F940790);
    v20 = 0;
    goto LABEL_8;
  }

  (*(v3 + 32))(v5, &v9[v18], v2);
  sub_24EDEBD3C();
  v20 = sub_24F92AFF8();
  v21 = *(v3 + 8);
  v21(v5, v2);
  sub_24E601704(v15, &qword_27F215598, &qword_24F945EF0);
  v21(v12, v2);
  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  if (v16 > 1580.0)
  {
    v16 = 1580.0;
  }

  v25 = 2;
  sub_24F422FFC(v20 & 1, v16);
  return v16 - (v22 + v22);
}

uint64_t sub_24F1B456C@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_24F4E9E44(a3, v10);
LABEL_21:
        sub_24F1BBDE0(v10, a4, type metadata accessor for CardLayoutMetrics);
        *(a4 + v8[30]) = 0x403A000000000000;
        goto LABEL_22;
      }

      if (qword_27F2112F8 != -1)
      {
        swift_once();
      }

      v12 = qword_27F39E628;
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v12 = qword_27F39E640;
    }

LABEL_20:
    v13 = __swift_project_value_buffer(v8, v12);
    sub_24F1BBD78(v13, v10, type metadata accessor for CardLayoutMetrics);
    goto LABEL_21;
  }

  if (a2 == 3)
  {
    sub_24F4E9558(a3, v10);
    sub_24F1BBDE0(v10, a4, type metadata accessor for CardLayoutMetrics);
    *(a4 + v8[30]) = 0x403A000000000000;
    *(a4 + v8[17]) = 0;
    goto LABEL_22;
  }

  if (a2 != 4)
  {
    if (qword_27F211308 != -1)
    {
      swift_once();
    }

    v12 = qword_27F39E658;
    goto LABEL_20;
  }

  if (qword_27F2112F0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v8, qword_27F39E610);
  sub_24F1BBD78(v11, v10, type metadata accessor for CardLayoutMetrics);
  sub_24F1BBDE0(v10, a4, type metadata accessor for CardLayoutMetrics);
LABEL_22:
  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v20 = xmmword_27F254460;
  v14 = qword_27F254470;
  v15 = qword_27F254478;
  v16 = a4 + v8[32];

  *v16 = v20;
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  result = type metadata accessor for ActivityCard(0);
  if (*(a1 + *(result + 48)) == 1)
  {
    if (a2 == 3)
    {

      *(a4 + v8[13]) = 1;
      v18 = 10.0;
      goto LABEL_31;
    }

    v19 = sub_24F92CE08();
  }

  else
  {
    v19 = 0;
  }

  *(a4 + v8[13]) = v19 & 1;
  v18 = 10.0;
  if (a2 != 3)
  {
    v18 = *(a4 + v8[16]);
  }

LABEL_31:
  *(a4 + v8[16]) = v18;
  return result;
}

uint64_t sub_24F1B49A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v415 = a5;
  v409 = a4;
  v416 = a2;
  LODWORD(v417) = a1;
  v413 = a6;
  v356 = type metadata accessor for TitleView(0);
  v355 = *(v356 - 8);
  MEMORY[0x28223BE20](v356);
  v343 = &v298 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8A0, &qword_24F9D1DE8);
  MEMORY[0x28223BE20](v384);
  v358 = &v298 - v8;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8A8, &qword_24F9D1DF0);
  MEMORY[0x28223BE20](v382);
  v383 = &v298 - v9;
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8B0, &qword_24F9D1DF8);
  MEMORY[0x28223BE20](v398);
  v385 = &v298 - v10;
  v348 = type metadata accessor for CardSmallGameIcon(0);
  v347 = *(v348 - 8);
  MEMORY[0x28223BE20](v348);
  v328 = &v298 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8B8, &qword_24F9D1E00);
  MEMORY[0x28223BE20](v363);
  v349 = &v298 - v12;
  v361 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8C0, &qword_24F9D1E08);
  MEMORY[0x28223BE20](v361);
  v362 = &v298 - v13;
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8C8, &unk_24F9D1E10);
  MEMORY[0x28223BE20](v381);
  v364 = &v298 - v14;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272A0, &qword_24F97E218);
  MEMORY[0x28223BE20](v374);
  v352 = (&v298 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8D0, &qword_24F9D1E20);
  MEMORY[0x28223BE20](v16);
  v396 = &v298 - v17;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8D8, &qword_24F9D1E28);
  MEMORY[0x28223BE20](v372);
  v373 = &v298 - v18;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8E0, &qword_24F9D1E30);
  MEMORY[0x28223BE20](v395);
  v375 = &v298 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8E8, &qword_24F9D1E38);
  MEMORY[0x28223BE20](v20);
  v397 = &v298 - v21;
  v342 = sub_24F91F7C8();
  v341 = *(v342 - 8);
  MEMORY[0x28223BE20](v342);
  v338 = &v298 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = sub_24F91F7A8();
  v339 = *(v340 - 8);
  MEMORY[0x28223BE20](v340);
  v336 = &v298 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24F924A78();
  MEMORY[0x28223BE20](v24 - 8);
  v335 = &v298 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8F0, &unk_24F9D1E40);
  MEMORY[0x28223BE20](v371);
  v365 = &v298 - v26;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8, &unk_24F967D00);
  MEMORY[0x28223BE20](v323);
  v324 = &v298 - v27;
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0, &unk_24F9D1E50);
  MEMORY[0x28223BE20](v321);
  v322 = &v298 - v28;
  v315 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8, &unk_24F97E340);
  MEMORY[0x28223BE20](v315);
  v318 = &v298 - v29;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98, &qword_24F9D1E60);
  MEMORY[0x28223BE20](v309);
  v310 = &v298 - v30;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8, &unk_24F93E750);
  MEMORY[0x28223BE20](v314);
  v311 = &v298 - v31;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20, &unk_24F94FF90);
  MEMORY[0x28223BE20](v317);
  v313 = &v298 - v32;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10, &unk_24F93E700);
  MEMORY[0x28223BE20](v320);
  v316 = &v298 - v33;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  v307 = *(v351 - 8);
  MEMORY[0x28223BE20](v351);
  v337 = &v298 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v302 = &v298 - v36;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88, &unk_24F94FFC0);
  MEMORY[0x28223BE20](v308);
  v330 = &v298 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v38);
  v387 = &v298 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v312 = &v298 - v41;
  MEMORY[0x28223BE20](v42);
  v319 = &v298 - v43;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B8F8, &qword_24F9D1E68);
  MEMORY[0x28223BE20](v354);
  v357 = &v298 - v44;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E40, &qword_24F9D1E70);
  MEMORY[0x28223BE20](v334);
  v332 = &v298 - v45;
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E48, &unk_24F94D680);
  MEMORY[0x28223BE20](v353);
  v333 = &v298 - v46;
  v326 = type metadata accessor for HeroCardGameHeadingView(0);
  v325 = *(v326 - 8);
  MEMORY[0x28223BE20](v326);
  v301 = &v298 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v399 = sub_24F9289E8();
  v400 = *(v399 - 8);
  MEMORY[0x28223BE20](v399);
  v327 = &v298 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v303 = &v298 - v50;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50, &unk_24F94D9F0);
  MEMORY[0x28223BE20](v331);
  v306 = &v298 - v51;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B900, &qword_24F9D1E78);
  MEMORY[0x28223BE20](v376);
  v386 = &v298 - v52;
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B908, &qword_24F9D1E80);
  MEMORY[0x28223BE20](v378);
  v377 = &v298 - v53;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B910, &qword_24F9D1E88);
  MEMORY[0x28223BE20](v392);
  v380 = &v298 - v54;
  v379 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v379);
  v359 = &v298 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v370 = type metadata accessor for ActivityCardVisualView(0);
  MEMORY[0x28223BE20](v370);
  v360 = (&v298 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B918, &qword_24F9D1E90);
  MEMORY[0x28223BE20](v406);
  v408 = &v298 - v57;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B920, &qword_24F9D1E98);
  MEMORY[0x28223BE20](v401);
  v403 = &v298 - v58;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B928, &qword_24F9D1EA0);
  MEMORY[0x28223BE20](v389);
  v391 = &v298 - v59;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B930, &qword_24F9D1EA8);
  MEMORY[0x28223BE20](v367);
  v368 = &v298 - v60;
  v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B938, &qword_24F9D1EB0);
  MEMORY[0x28223BE20](v390);
  v369 = &v298 - v61;
  v402 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B940, &qword_24F9D1EB8);
  MEMORY[0x28223BE20](v402);
  v393 = &v298 - v62;
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B948, &unk_24F9D1EC0);
  MEMORY[0x28223BE20](v407);
  v404 = &v298 - v63;
  v345 = type metadata accessor for CardElementView.Category(0);
  v344 = *(v345 - 8);
  MEMORY[0x28223BE20](v345);
  v329 = &v298 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AFB8, &unk_24FA18C00);
  MEMORY[0x28223BE20](v366);
  v346 = &v298 - v65;
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B950, &unk_24F9D1ED0);
  v66 = *(v411 - 8);
  MEMORY[0x28223BE20](v411);
  v68 = &v298 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v69 - 8);
  v350 = &v298 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v304 = &v298 - v72;
  MEMORY[0x28223BE20](v73);
  v388 = &v298 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B958, &qword_24F9D1EE0);
  MEMORY[0x28223BE20](v75 - 8);
  v412 = &v298 - v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v77 - 8);
  v79 = &v298 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v80 - 8);
  v419 = &v298 - v81;
  v82 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v82);
  v305 = &v298 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v86 = (&v298 - v85);
  MEMORY[0x28223BE20](v87);
  v89 = &v298 - v88;
  MEMORY[0x28223BE20](v90);
  v420 = &v298 - v92;
  LODWORD(v418) = a3;
  v93 = v91;
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v94 = v91;
        sub_24F4E9E44(v409, v86);
        sub_24F1BBDE0(v86, v89, type metadata accessor for CardLayoutMetrics);
LABEL_21:
        *&v89[*(v94 + 120)] = 0x403A000000000000;
        goto LABEL_22;
      }

      if (qword_27F2112F8 != -1)
      {
        swift_once();
        v91 = v93;
      }

      v96 = qword_27F39E628;
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
        v91 = v93;
      }

      v96 = qword_27F39E640;
    }

LABEL_20:
    v94 = v91;
    v97 = __swift_project_value_buffer(v91, v96);
    sub_24F1BBD78(v97, v89, type metadata accessor for CardLayoutMetrics);
    goto LABEL_21;
  }

  if (a3 == 3)
  {
    sub_24F4E9558(v409, v86);
    sub_24F1BBDE0(v86, v89, type metadata accessor for CardLayoutMetrics);
    v94 = v93;
    *&v89[v93[30]] = 0x403A000000000000;
    v89[v93[17]] = 0;
    goto LABEL_22;
  }

  if (a3 != 4)
  {
    if (qword_27F211308 != -1)
    {
      swift_once();
      v91 = v93;
    }

    v96 = qword_27F39E658;
    goto LABEL_20;
  }

  if (qword_27F2112F0 != -1)
  {
    swift_once();
  }

  v95 = __swift_project_value_buffer(v93, qword_27F39E610);
  sub_24F1BBD78(v95, v89, type metadata accessor for CardLayoutMetrics);
  v94 = v93;
LABEL_22:
  v394 = v16;
  v405 = v68;
  v414 = v66;
  if (qword_27F211968 != -1)
  {
    swift_once();
    v94 = v93;
  }

  v410 = xmmword_27F254460;
  v98 = qword_27F254470;
  v99 = qword_27F254478;
  v100 = &v89[*(v94 + 128)];

  *v100 = v410;
  *(v100 + 2) = v98;
  *(v100 + 3) = v99;
  v101 = type metadata accessor for ActivityCard(0);
  v102 = v416;
  v103 = v417;
  if (*(v416 + v101[12]) == 1)
  {
    v104 = v418;
    if (v418 == 3)
    {

      v105 = v93;
      v89[v93[13]] = 1;
      v106 = 10.0;
      goto LABEL_31;
    }

    v107 = sub_24F92CE08();
  }

  else
  {
    v107 = 0;
  }

  v104 = v418;
  v105 = v93;
  v89[v93[13]] = v107 & 1;
  v106 = 10.0;
  if (v104 != 3)
  {
    v106 = *&v89[v93[16]];
  }

LABEL_31:
  *&v89[v105[16]] = v106;
  sub_24F1BBDE0(v89, v420, type metadata accessor for CardLayoutMetrics);
  sub_24F1B931C(v102, v419);
  v108 = v102 + v101[8];
  v109 = type metadata accessor for CommonCardAttributes(0);
  v110 = v109;
  if (*(v108 + *(v109 + 36)))
  {
    v111 = 1;
  }

  else
  {
    sub_24E60169C(v108 + *(v109 + 32), v79, &qword_27F213FB8, &unk_24F93C010);
    v112 = type metadata accessor for GSKVideo(0);
    v113 = (*(*(v112 - 8) + 48))(v79, 1, v112);
    v114 = v79;
    v115 = v20;
    v116 = v113;
    v104 = v418;
    v102 = v416;
    sub_24E601704(v114, &qword_27F213FB8, &unk_24F93C010);
    v117 = v116 == 1;
    v20 = v115;
    v111 = 1;
    v103 = v417;
    if (v117)
    {
      v118 = v20;
      v119 = v38;
      v120 = v388;
      sub_24E60169C(v108 + v110[7], v388, &qword_27F213FB0, &qword_24F93E6B0);
      v121 = (*(v400 + 48))(v120, 1, v399) != 1;
      v122 = v120;
      v38 = v119;
      v20 = v118;
      v111 = v121;
      v102 = v416;
      v103 = v417;
      sub_24E601704(v122, &qword_27F213FB0, &qword_24F93E6B0);
    }
  }

  if (sub_24F1BB2D4(v103, v102, v104))
  {
    if (v103 > 5u)
    {
      if (v103 > 7u)
      {
        if (v103 == 8)
        {
          v148 = (v108 + v110[15]);
          v149 = v148[1];
          v300 = v20;
          if (!v149)
          {
            goto LABEL_71;
          }

          v150 = *v148;
          v151 = HIBYTE(v149) & 0xF;
          if ((v149 & 0x2000000000000000) == 0)
          {
            v151 = v150 & 0xFFFFFFFFFFFFLL;
          }

          if (v151)
          {
            v418 = v38;
            sub_24F924A68();
            sub_24F924A58();

            sub_24F926E48();
            sub_24F924A38();

            sub_24F924A58();
            v417 = v150;
            sub_24F924A48();
            sub_24F924A58();
            sub_24F924A98();
            v152 = sub_24F925DE8();
            v154 = v153;
            v156 = v155;
            v157 = v338;
            sub_24F91F778();
            sub_24F91F708();
            (*(v341 + 8))(v157, v342);
            v158 = v336;
            sub_24F91F788();
            v159 = sub_24F91F798();
            (*(v339 + 8))(v158, v340);
            if (v159 == 2)
            {
              v160 = sub_24F925C78();
              v162 = v161;
              v164 = v163;
            }

            else
            {
              sub_24E5FD138(v152, v154, v156 & 1);

              v160 = v152;
              v162 = v154;
              v164 = v156;
            }

            sub_24E600B40(v152, v154, v156 & 1);

            v299 = v93;
            v220 = v420;
            v221 = sub_24F925C98();
            v223 = v222;
            v225 = v224;
            sub_24E600B40(v160, v162, v164 & 1);

            LODWORD(v421) = sub_24F9251C8();
            v226 = sub_24F925C58();
            v228 = v227;
            v230 = v229;
            v232 = v231;
            sub_24E600B40(v221, v223, v225 & 1);

            v233 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
            v234 = *MEMORY[0x277CE13B8];
            v235 = sub_24F927748();
            v236 = v337;
            (*(*(v235 - 8) + 104))(&v337[v233], v234, v235);
            *v236 = v226;
            *(v236 + 8) = v228;
            *(v236 + 16) = v230 & 1;
            *(v236 + 24) = v232;
            v237 = *(v220 + v299[28]);
            KeyPath = swift_getKeyPath();
            v239 = v236 + *(v351 + 36);
            *v239 = KeyPath;
            *(v239 + 8) = v237;
            *(v239 + 16) = 0;
            v421 = v417;
            v422 = v149;
            sub_24E63C774();
            sub_24E600AEC();
            v166 = v365;
            sub_24F926538();
            sub_24E601704(v236, &qword_27F214B98, &unk_24F93E740);
            v165 = 0;
          }

          else
          {
LABEL_71:
            v165 = 1;
            v166 = v365;
          }

          v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B9A8, &qword_24F9D1EE8);
          (*(*(v240 - 8) + 56))(v166, v165, 1, v240);
          sub_24E60169C(v166, v373, &qword_27F23B8F0, &unk_24F9D1E40);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB8CC(&qword_27F23B998, &qword_27F23B8F0, &unk_24F9D1E40, sub_24F1BB948);
          sub_24E602068(&qword_27F227348, &qword_27F2272A0, &qword_24F97E218, MEMORY[0x277CE1198]);
          v241 = v375;
          sub_24F924E28();
          sub_24E60169C(v241, v396, &qword_27F23B8E0, &qword_24F9D1E30);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB7E8();
          sub_24F1BBA04();
          v242 = v397;
          sub_24F924E28();
          sub_24E601704(v241, &qword_27F23B8E0, &qword_24F9D1E30);
          sub_24E60169C(v242, v403, &qword_27F23B8E8, &qword_24F9D1E38);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB4A8();
          sub_24F1BB75C();
          v243 = v404;
          sub_24F924E28();
          sub_24E601704(v242, &qword_27F23B8E8, &qword_24F9D1E38);
          sub_24E60169C(v243, v408, &qword_27F23B948, &unk_24F9D1EC0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v130 = v405;
          sub_24F924E28();
          sub_24E601704(v243, &qword_27F23B948, &unk_24F9D1EC0);
          v217 = v166;
          v218 = &qword_27F23B8F0;
          v219 = &unk_24F9D1E40;
          goto LABEL_107;
        }

        if (v103 == 11)
        {
          v142 = v359;
          sub_24F1B97E0(v104, v111, v419, v359);
          sub_24F1BBD78(v142, v377, type metadata accessor for CardContentBackgroundStyle);
          swift_storeEnumTagMultiPayload();
          sub_24F1BBD30(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
          sub_24F1BB6D0();
          v143 = v380;
          sub_24F924E28();
          sub_24E60169C(v143, v391, &qword_27F23B910, &qword_24F9D1E88);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB560();
          sub_24F1BB61C(&qword_27F23B978, &qword_27F23B910, &qword_24F9D1E88, sub_24F1BB6D0);
          v144 = v393;
          sub_24F924E28();
          sub_24E601704(v143, &qword_27F23B910, &qword_24F9D1E88);
          sub_24E60169C(v144, v403, &qword_27F23B940, &qword_24F9D1EB8);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB4A8();
          sub_24F1BB75C();
          v145 = v404;
          sub_24F924E28();
          sub_24E601704(v144, &qword_27F23B940, &qword_24F9D1EB8);
          sub_24E60169C(v145, v408, &qword_27F23B948, &unk_24F9D1EC0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v130 = v405;
          sub_24F924E28();
          sub_24E601704(v145, &qword_27F23B948, &unk_24F9D1EC0);
          sub_24F1BBE48(v142, type metadata accessor for CardContentBackgroundStyle);
          goto LABEL_108;
        }

        goto LABEL_101;
      }

      if (v103 != 6)
      {
        if (v103 == 7)
        {
          v134 = (v108 + v110[14]);
          v135 = v134[1];
          v300 = v20;
          if (!v135)
          {
            goto LABEL_72;
          }

          v136 = *v134;
          v137 = HIBYTE(v135) & 0xF;
          if ((v135 & 0x2000000000000000) == 0)
          {
            v137 = v136 & 0xFFFFFFFFFFFFLL;
          }

          if (v137)
          {
            v138 = (v416 + v101[13]);
            if (v138[1])
            {
              v140 = v138[4];
              v139 = v138[5];
            }

            else
            {
              v140 = 0;
              v139 = 0;
            }

            v130 = v405;
            v271 = v343;
            v272 = v356;
            sub_24F1BBD78(v420, &v343[*(v356 + 24)], type metadata accessor for CardLayoutMetrics);
            *v271 = v136;
            v271[1] = v135;
            v271[2] = v140;
            v271[3] = v139;
            v273 = v271;
            v167 = v358;
            sub_24F1BBDE0(v273, v358, type metadata accessor for TitleView);
            (*(v355 + 56))(v167, 0, 1, v272);
          }

          else
          {
LABEL_72:
            v167 = v358;
            (*(v355 + 56))(v358, 1, 1, v356);
            v130 = v405;
          }

          sub_24E60169C(v167, v383, &qword_27F23B8A0, &qword_24F9D1DE8);
          swift_storeEnumTagMultiPayload();
          sub_24F1BBA90();
          sub_24F1BBBFC();
          v274 = v385;
          sub_24F924E28();
          sub_24E60169C(v274, v396, &qword_27F23B8B0, &qword_24F9D1DF8);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB7E8();
          sub_24F1BBA04();
          v275 = v397;
          sub_24F924E28();
          sub_24E601704(v274, &qword_27F23B8B0, &qword_24F9D1DF8);
          sub_24E60169C(v275, v403, &qword_27F23B8E8, &qword_24F9D1E38);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB4A8();
          sub_24F1BB75C();
          v276 = v404;
          sub_24F924E28();
          sub_24E601704(v275, &qword_27F23B8E8, &qword_24F9D1E38);
          sub_24E60169C(v276, v408, &qword_27F23B948, &unk_24F9D1EC0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24F924E28();
          sub_24E601704(v276, &qword_27F23B948, &unk_24F9D1EC0);
          v217 = v167;
          v218 = &qword_27F23B8A0;
          v219 = &qword_24F9D1DE8;
          goto LABEL_107;
        }

        goto LABEL_101;
      }

      if (v104 > 2u && v104 == 3)
      {
      }

      else
      {
        v260 = sub_24F92CE08();

        LODWORD(v104) = v418;
        if ((v260 & 1) == 0)
        {
LABEL_101:
          v267 = v387;
          sub_24E91E364(v417, v102, v104, v409, v415, v387);
          sub_24E60169C(v267, v408, &qword_27F214A20, &unk_24F94D670);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v130 = v405;
          sub_24F924E28();
          v217 = v267;
          v218 = &qword_27F214A20;
          v219 = &unk_24F94D670;
          goto LABEL_107;
        }
      }

      v261 = sub_24F924C98();
      v262 = v352;
      *v352 = v261;
      *(v262 + 8) = 0x4000000000000000;
      *(v262 + 16) = 0;
      v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273A0, &qword_24F9D1EF0);
      sub_24F1B9C8C(v102, v104, v409, v262 + *(v263 + 44));
      sub_24E60169C(v262, v373, &qword_27F2272A0, &qword_24F97E218);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB8CC(&qword_27F23B998, &qword_27F23B8F0, &unk_24F9D1E40, sub_24F1BB948);
      sub_24E602068(&qword_27F227348, &qword_27F2272A0, &qword_24F97E218, MEMORY[0x277CE1198]);
      v264 = v375;
      sub_24F924E28();
      sub_24E60169C(v264, v396, &qword_27F23B8E0, &qword_24F9D1E30);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB7E8();
      sub_24F1BBA04();
      v265 = v397;
      sub_24F924E28();
      sub_24E601704(v264, &qword_27F23B8E0, &qword_24F9D1E30);
      sub_24E60169C(v265, v403, &qword_27F23B8E8, &qword_24F9D1E38);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB4A8();
      sub_24F1BB75C();
      v266 = v404;
      sub_24F924E28();
      sub_24E601704(v265, &qword_27F23B8E8, &qword_24F9D1E38);
      sub_24E60169C(v266, v408, &qword_27F23B948, &unk_24F9D1EC0);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB41C();
      sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v130 = v405;
      sub_24F924E28();
      sub_24E601704(v266, &qword_27F23B948, &unk_24F9D1EC0);
      v217 = v262;
      v218 = &qword_27F2272A0;
      v219 = &qword_24F97E218;
LABEL_107:
      sub_24E601704(v217, v218, v219);
      goto LABEL_108;
    }

    if (v103 <= 2u)
    {
      if (v103)
      {
        if (v103 == 2)
        {
          v123 = v370;
          v124 = v360;
          sub_24F1BBD78(v108, v360 + *(v370 + 24), type metadata accessor for CommonCardAttributes);
          *v124 = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
          swift_storeEnumTagMultiPayload();
          v125 = v124 + *(v123 + 20);
          type metadata accessor for CardSafeArea(0);
          sub_24F1BBD30(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
          *v125 = sub_24F923598();
          v125[8] = v126 & 1;
          *(v124 + *(v123 + 28)) = v104;
          sub_24F1BBD78(v124, v368, type metadata accessor for ActivityCardVisualView);
          swift_storeEnumTagMultiPayload();
          sub_24E74524C();
          sub_24F1BBD30(&qword_27F227370, type metadata accessor for ActivityCardVisualView, &unk_24F9A9788);
          v127 = v369;
          sub_24F924E28();
          sub_24E60169C(v127, v391, &qword_27F23B938, &qword_24F9D1EB0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB560();
          sub_24F1BB61C(&qword_27F23B978, &qword_27F23B910, &qword_24F9D1E88, sub_24F1BB6D0);
          v128 = v393;
          sub_24F924E28();
          sub_24E601704(v127, &qword_27F23B938, &qword_24F9D1EB0);
          sub_24E60169C(v128, v403, &qword_27F23B940, &qword_24F9D1EB8);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB4A8();
          sub_24F1BB75C();
          v129 = v404;
          sub_24F924E28();
          sub_24E601704(v128, &qword_27F23B940, &qword_24F9D1EB8);
          sub_24E60169C(v129, v408, &qword_27F23B948, &unk_24F9D1EC0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v130 = v405;
          sub_24F924E28();
          sub_24E601704(v129, &qword_27F23B948, &unk_24F9D1EC0);
          sub_24F1BBE48(v124, type metadata accessor for ActivityCardVisualView);
LABEL_108:
          v132 = v414;
LABEL_109:
          sub_24E601704(v419, &qword_27F2190D8, &unk_24F94BD70);
          v133 = v412;
          sub_24E6009C8(v130, v412, &qword_27F23B950, &unk_24F9D1ED0);
          v131 = 0;
          goto LABEL_110;
        }
      }

      else if (v104)
      {
        v249 = sub_24F92CE08();

        v102 = v416;
        if ((v249 & 1) == 0)
        {
          v250 = *(v108 + 16);
          v300 = v20;
          if (v250)
          {
            v251 = *(v108 + 8);
            v252 = v345;
            v253 = v108 + v110[6];
            v254 = v329;
            sub_24E60169C(v253, &v329[*(v345 + 20)], &qword_27F213FB0, &qword_24F93E6B0);
            v255 = *(v420 + v93[9]);
            v256 = *(v420 + v93[8]);
            v257 = *(v420 + v93[6]);
            *v254 = v251;
            v254[1] = v250;
            *(v254 + v252[6]) = v255;
            *(v254 + v252[7]) = v111;
            *(v254 + v252[8]) = v256;
            *(v254 + v252[9]) = v257;
            v421 = 0x4034000000000000;
            sub_24E66ED98();

            sub_24F9237C8();
            v421 = 0x4008000000000000;
            sub_24F9237C8();
            v421 = 0x4018000000000000;
            sub_24F9237C8();
            v421 = 0x4010000000000000;
            sub_24F9237C8();
            v258 = v346;
            sub_24F1BBDE0(v254, v346, type metadata accessor for CardElementView.Category);
            v259 = 0;
            v132 = v414;
          }

          else
          {
            v259 = 1;
            v132 = v414;
            v258 = v346;
            v252 = v345;
          }

          (*(v344 + 56))(v258, v259, 1, v252);
          sub_24E60169C(v258, v368, &qword_27F21AFB8, &unk_24FA18C00);
          swift_storeEnumTagMultiPayload();
          sub_24E74524C();
          sub_24F1BBD30(&qword_27F227370, type metadata accessor for ActivityCardVisualView, &unk_24F9A9788);
          v268 = v369;
          sub_24F924E28();
          sub_24E60169C(v268, v391, &qword_27F23B938, &qword_24F9D1EB0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB560();
          sub_24F1BB61C(&qword_27F23B978, &qword_27F23B910, &qword_24F9D1E88, sub_24F1BB6D0);
          v269 = v393;
          sub_24F924E28();
          sub_24E601704(v268, &qword_27F23B938, &qword_24F9D1EB0);
          sub_24E60169C(v269, v403, &qword_27F23B940, &qword_24F9D1EB8);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB4A8();
          sub_24F1BB75C();
          v270 = v404;
          sub_24F924E28();
          sub_24E601704(v269, &qword_27F23B940, &qword_24F9D1EB8);
          sub_24E60169C(v270, v408, &qword_27F23B948, &unk_24F9D1EC0);
          swift_storeEnumTagMultiPayload();
          sub_24F1BB41C();
          sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v130 = v405;
          sub_24F924E28();
          sub_24E601704(v270, &qword_27F23B948, &unk_24F9D1EC0);
          sub_24E601704(v258, &qword_27F21AFB8, &unk_24FA18C00);
          goto LABEL_109;
        }
      }

      else
      {
      }

      goto LABEL_101;
    }

    if (v103 == 3)
    {
      v300 = v20;
      if (v104 == 4)
      {
        v146 = v387;
        sub_24E91E364(3, v102, 4u, v409, v415, v387);
        sub_24E60169C(v146, v362, &qword_27F214A20, &unk_24F94D670);
        swift_storeEnumTagMultiPayload();
        sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        sub_24F1BBB48();
        v147 = v364;
        sub_24F924E28();
        sub_24E601704(v146, &qword_27F214A20, &unk_24F94D670);
        v130 = v405;
      }

      else
      {
        v168 = v350;
        sub_24E60169C(v108 + v110[10], v350, &qword_27F213FB0, &qword_24F93E6B0);
        v169 = v399;
        v170 = (*(v400 + 48))(v168, 1, v399);
        v147 = v364;
        if (v170 == 1)
        {
          sub_24E601704(v168, &qword_27F213FB0, &qword_24F93E6B0);
          v171 = v349;
          (*(v347 + 56))(v349, 1, 1, v348);
        }

        else
        {
          v206 = *(v400 + 32);
          v207 = v327;
          v206(v327, v168, v169);
          v208 = v328;
          v206(v328, v207, v169);
          v209 = v420 + v93[32];
          v210 = *(v209 + 16);
          v211 = *(v209 + 24);
          v212 = v348;
          *(v208 + *(v348 + 20)) = *(v420 + v93[30]);
          v213 = v208 + *(v212 + 24);
          *v213 = *v209;
          *(v213 + 16) = v210;
          *(v213 + 24) = v211;
          v171 = v349;
          sub_24F1BBDE0(v208, v349, type metadata accessor for CardSmallGameIcon);
          (*(v347 + 56))(v171, 0, 1, v212);
        }

        v130 = v405;
        sub_24E60169C(v171, v362, &qword_27F23B8B8, &qword_24F9D1E00);
        swift_storeEnumTagMultiPayload();
        sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        sub_24F1BBB48();
        sub_24F924E28();
        sub_24E601704(v171, &qword_27F23B8B8, &qword_24F9D1E00);
      }

      sub_24E60169C(v147, v383, &qword_27F23B8C8, &unk_24F9D1E10);
      swift_storeEnumTagMultiPayload();
      sub_24F1BBA90();
      sub_24F1BBBFC();
      v214 = v385;
      sub_24F924E28();
      sub_24E60169C(v214, v396, &qword_27F23B8B0, &qword_24F9D1DF8);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB7E8();
      sub_24F1BBA04();
      v215 = v397;
      sub_24F924E28();
      sub_24E601704(v214, &qword_27F23B8B0, &qword_24F9D1DF8);
      sub_24E60169C(v215, v403, &qword_27F23B8E8, &qword_24F9D1E38);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB4A8();
      sub_24F1BB75C();
      v216 = v404;
      sub_24F924E28();
      sub_24E601704(v215, &qword_27F23B8E8, &qword_24F9D1E38);
      sub_24E60169C(v216, v408, &qword_27F23B948, &unk_24F9D1EC0);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB41C();
      sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      sub_24F924E28();
      sub_24E601704(v216, &qword_27F23B948, &unk_24F9D1EC0);
      v217 = v147;
      v218 = &qword_27F23B8C8;
      v219 = &unk_24F9D1E10;
      goto LABEL_107;
    }

    if (v103 != 4)
    {
      goto LABEL_101;
    }

    v300 = v20;
    if (v104 < 4u)
    {
      swift_storeEnumTagMultiPayload();
      sub_24E717E78();
      v141 = v386;
      sub_24F924E28();
LABEL_113:
      v132 = v414;
LABEL_114:
      sub_24E60169C(v141, v377, &qword_27F23B900, &qword_24F9D1E78);
      swift_storeEnumTagMultiPayload();
      sub_24F1BBD30(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
      sub_24F1BB6D0();
      v285 = v380;
      sub_24F924E28();
      sub_24E60169C(v285, v391, &qword_27F23B910, &qword_24F9D1E88);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB560();
      sub_24F1BB61C(&qword_27F23B978, &qword_27F23B910, &qword_24F9D1E88, sub_24F1BB6D0);
      v286 = v393;
      sub_24F924E28();
      sub_24E601704(v285, &qword_27F23B910, &qword_24F9D1E88);
      sub_24E60169C(v286, v403, &qword_27F23B940, &qword_24F9D1EB8);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB4A8();
      sub_24F1BB75C();
      v287 = v404;
      sub_24F924E28();
      sub_24E601704(v286, &qword_27F23B940, &qword_24F9D1EB8);
      sub_24E60169C(v287, v408, &qword_27F23B948, &unk_24F9D1EC0);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB41C();
      sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v130 = v405;
      sub_24F924E28();
      sub_24E601704(v287, &qword_27F23B948, &unk_24F9D1EC0);
      sub_24E601704(v386, &qword_27F23B900, &qword_24F9D1E78);
      goto LABEL_109;
    }

    if (v104 == 4)
    {
      v172 = v93;
      if (qword_27F2112F0 != -1)
      {
        swift_once();
        v172 = v93;
      }

      v418 = v38;
      v173 = __swift_project_value_buffer(v172, qword_27F39E610);
      v174 = v305;
      sub_24F1BBD78(v173, v305, type metadata accessor for CardLayoutMetrics);
      v175 = (v108 + v110[13]);
      v176 = v175[1];
      v141 = v386;
      if (!v176)
      {
        goto LABEL_111;
      }

      v177 = *v175;
      v178 = HIBYTE(v176) & 0xF;
      if ((v176 & 0x2000000000000000) == 0)
      {
        v178 = v177 & 0xFFFFFFFFFFFFLL;
      }

      if (v178)
      {
        v421 = v177;
        v422 = v176;
        sub_24E600AEC();

        v179 = sub_24F925E18();
        v181 = v180;
        v183 = v182;
        v299 = v93;
        v184 = sub_24F925C98();
        v186 = v185;
        v188 = v187;
        sub_24E600B40(v179, v181, v183 & 1);

        LODWORD(v421) = sub_24F9251C8();
        v189 = sub_24F925C58();
        v191 = v190;
        v193 = v192;
        v195 = v194;
        sub_24E600B40(v184, v186, v188 & 1);
        v141 = v386;

        v196 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
        v197 = *MEMORY[0x277CE13B8];
        v198 = sub_24F927748();
        v199 = v302;
        (*(*(v198 - 8) + 104))(&v302[v196], v197, v198);
        *v199 = v189;
        *(v199 + 8) = v191;
        *(v199 + 16) = v193 & 1;
        *(v199 + 24) = v195;
        v200 = *(v174 + v299[26]);
        v201 = swift_getKeyPath();
        v202 = v351;
        v203 = v199 + *(v351 + 36);
        *v203 = v201;
        *(v203 + 8) = v200;
        *(v203 + 16) = 0;
        v204 = v330;
        sub_24F1BBCB8(v199, v330);
        v205 = 0;
      }

      else
      {
LABEL_111:
        v205 = 1;
        v202 = v351;
        v204 = v330;
      }

      (*(v307 + 56))(v204, v205, 1, v202);
      sub_24E60169C(v204, v310, &qword_27F214B88, &unk_24F94FFC0);
      swift_storeEnumTagMultiPayload();
      sub_24F1BB8CC(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
      v278 = v311;
      sub_24F924E28();
      sub_24E60169C(v278, v318, &qword_27F214BB8, &unk_24F93E750);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30, &unk_24F93E710);
      sub_24E63C434();
      sub_24E63C8B0();
      v279 = v313;
      sub_24F924E28();
      sub_24E601704(v278, &qword_27F214BB8, &unk_24F93E750);
      sub_24E60169C(v279, v322, &qword_27F214B20, &unk_24F94FF90);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8, &unk_24F94DA90);
      sub_24E63C3A8();
      sub_24E63C960();
      v280 = v316;
      sub_24F924E28();
      sub_24E601704(v279, &qword_27F214B20, &unk_24F94FF90);
      sub_24E60169C(v280, v324, &qword_27F214B10, &unk_24F93E700);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50, &unk_24F93E790);
      sub_24E63C31C();
      sub_24E63CD80();
      v281 = v312;
      sub_24F924E28();
      sub_24E601704(v280, &qword_27F214B10, &unk_24F93E700);
      sub_24E601704(v330, &qword_27F214B88, &unk_24F94FFC0);
      v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00, &unk_24F94FF80);
      (*(*(v282 - 8) + 56))(v281, 0, 1, v282);
      v283 = v319;
      sub_24E6009C8(v281, v319, &qword_27F214A20, &unk_24F94D670);
      sub_24F1BBE48(v174, type metadata accessor for CardLayoutMetrics);
      sub_24E60169C(v283, v332, &qword_27F214A20, &unk_24F94D670);
      swift_storeEnumTagMultiPayload();
      sub_24E7179AC();
      sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v284 = v333;
      sub_24F924E28();
      sub_24E60169C(v284, v357, &qword_27F219E48, &unk_24F94D680);
      swift_storeEnumTagMultiPayload();
      sub_24E717E78();
      sub_24F924E28();
      sub_24E601704(v284, &qword_27F219E48, &unk_24F94D680);
      sub_24E601704(v283, &qword_27F214A20, &unk_24F94D670);
      goto LABEL_113;
    }

    v244 = v102 + v101[10];
    v245 = v304;
    sub_24E60169C(v244, v304, &qword_27F213FB0, &qword_24F93E6B0);
    v246 = v399;
    v247 = (*(v400 + 48))(v245, 1, v399);
    if (v247 == 1)
    {
      sub_24E601704(v245, &qword_27F213FB0, &qword_24F93E6B0);
      v132 = v414;
      v141 = v386;
      v248 = v306;
    }

    else
    {
      v288 = *(v400 + 32);
      v289 = v303;
      v288(v303, v245, v246);
      v290 = (v108 + v110[11]);
      v291 = v290[1];
      v292 = v246;
      v141 = v386;
      v248 = v306;
      if (v291)
      {
        v293 = *v290;
        v294 = v301;
        v288(v301, v289, v292);
        v295 = v326;
        v296 = (v294 + *(v326 + 20));
        *v296 = v293;
        v296[1] = v291;
        sub_24F1BBDE0(v294, v248, type metadata accessor for HeroCardGameHeadingView);
        (*(v325 + 56))(v248, 0, 1, v295);

        v132 = v414;
LABEL_119:
        sub_24E60169C(v248, v332, &qword_27F219E50, &unk_24F94D9F0);
        swift_storeEnumTagMultiPayload();
        sub_24E7179AC();
        sub_24F1BB8CC(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v297 = v333;
        sub_24F924E28();
        sub_24E60169C(v297, v357, &qword_27F219E48, &unk_24F94D680);
        swift_storeEnumTagMultiPayload();
        sub_24E717E78();
        sub_24F924E28();
        sub_24E601704(v297, &qword_27F219E48, &unk_24F94D680);
        sub_24E601704(v248, &qword_27F219E50, &unk_24F94D9F0);
        goto LABEL_114;
      }

      (*(v400 + 8))(v289, v292);
      v132 = v414;
    }

    (*(v325 + 56))(v248, 1, 1, v326);
    goto LABEL_119;
  }

  sub_24E601704(v419, &qword_27F2190D8, &unk_24F94BD70);
  v131 = 1;
  v132 = v414;
  v133 = v412;
LABEL_110:
  (*(v132 + 56))(v133, v131, 1, v411);
  sub_24E6009C8(v133, v413, &qword_27F23B958, &qword_24F9D1EE0);
  return sub_24F1BBE48(v420, type metadata accessor for CardLayoutMetrics);
}