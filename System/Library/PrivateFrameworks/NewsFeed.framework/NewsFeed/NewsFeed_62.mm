uint64_t FeedOptionsProviderSection.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D60D2C38()
{
  result = qword_1EC883668;
  if (!qword_1EC883668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883668);
  }

  return result;
}

uint64_t dispatch thunk of FeedOptionsProviderType.results(desiredSections:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D5B64684;

  return v11(a1, a2, a3, a4);
}

uint64_t FormatTextNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatTextNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

unint64_t FormatTextNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5D085B4(v2);
}

double FormatTextNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

double FormatTextNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatTextNode.content.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 72);

  return result;
}

uint64_t FormatTextNode.invalidation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 130);
  v9 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 50) = v8;
  *(a1 + 48) = v9;
  return sub_1D6046038(v2, v3, v4, v5, v6, v7, v9 | (v8 << 16));
}

double FormatTextNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

double sub_1D60D3104(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 144);
  sub_1D5EB1500(v2);
  *(v3 + 144) = v2;
  return sub_1D5EB15C4(v4);
}

double FormatTextNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 144);
  *(v1 + 144) = v2;
  return sub_1D5EB15C4(v3);
}

void FormatTextNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
}

double FormatTextNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;

  return result;
}

double FormatTextNode.sourceItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;

  return result;
}

uint64_t FormatTextNode.name.getter()
{
  v1 = *(v0 + 192);

  return v1;
}

uint64_t FormatTextNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[26];
  v3 = v1[27];
  v4 = v1[28];
  v5 = v1[29];
  v6 = v1[30];
  v7 = v1[31];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatTextNode.deinit()
{

  sub_1D5D05694(*(v0 + 32));

  sub_1D5C67600(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128) | (*(v0 + 130) << 16));
  sub_1D5EB15C4(*(v0 + 144));

  sub_1D5EB2398(*(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248));
  return v0;
}

uint64_t FormatTextNode.__deallocating_deinit()
{
  FormatTextNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D60D35A0(uint64_t a1, uint64_t a2)
{
  result = sub_1D60D69A4(&qword_1EC883670, a2, type metadata accessor for FormatTextNode, &protocol conformance descriptor for FormatTextNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D60D35F8(void *a1, uint64_t a2)
{
  a1[1] = sub_1D60D69A4(&qword_1EDF321C8, a2, type metadata accessor for FormatTextNode, &protocol conformance descriptor for FormatTextNode);
  a1[2] = sub_1D60D69A4(&qword_1EDF11B40, v3, type metadata accessor for FormatTextNode, &protocol conformance descriptor for FormatTextNode);
  result = sub_1D60D69A4(&qword_1EC883678, v4, type metadata accessor for FormatTextNode, &protocol conformance descriptor for FormatTextNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D60D36D4(uint64_t a1, uint64_t a2)
{
  result = sub_1D60D69A4(&qword_1EC883680, a2, type metadata accessor for FormatTextNode, &protocol conformance descriptor for FormatTextNode);
  *(a1 + 8) = result;
  return result;
}

void sub_1D60D372C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (**a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v99 = a1;
  sub_1D5BEB610(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
  v100 = v16;
  v101 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v110 = (&v93 - v19);
  sub_1D6047B58(0, v18);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v103 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v104 = &v93 - v25;
  v102 = type metadata accessor for FormatNodeStateData.Data(0);
  v112 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102, v26);
  v28 = (&v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_unownedRetainStrong();
  v29 = a3[9];

  v114 = v29;
  v107 = a4;
  v108 = a5;
  sub_1D6E5B0C8(a4, a5, a6);

  v105 = a7;
  v30 = *(a7 + 32);

  v111 = a6;
  v109 = a2;
  v106 = a8;
  v31 = v113;
  sub_1D60D44E4(a3, a6, a2, a8);
  v113 = v31;
  if (v31)
  {

    return;
  }

  v33 = v32;

  *v28 = v33;
  v34 = v102;
  swift_storeEnumTagMultiPayload();
  v35 = *(v105 + 24);
  v36 = v104;
  sub_1D6047CB4(v28, v104, type metadata accessor for FormatNodeStateData.Data);
  v37 = *(v112 + 56);
  v112 += 56;
  v96 = v37;
  v37(v36, 0, 1, v34);
  v98 = v30;
  v38 = v103;
  sub_1D6047CB4(v36, v103, sub_1D6047B58);
  swift_beginAccess();

  v39 = v108;

  v97 = v35;
  v40 = v38;
  v41 = v107;
  sub_1D6D60A18(v40, v107, v39);
  swift_endAccess();
  sub_1D60D60DC(v36, sub_1D6047B58);
  sub_1D60D60DC(v28, type metadata accessor for FormatNodeStateData.Data);
  swift_unownedRetainStrong();
  v42 = a3[4];
  sub_1D5D085B4(v42);

  v114 = v42;
  v43 = v111;
  sub_1D6CAC330(v41, v39, v111);
  sub_1D5D05694(v114);

  v44 = v113;
  sub_1D60D4BA0(v33, v43, v109, v106, v41, v39, v110);
  if (v44)
  {

    v113 = v44;
    return;
  }

  v95 = v33;

  v45 = v111;
  v46 = (*(v111 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  swift_unownedRetainStrong();
  v49 = a3[8];

  sub_1D6FBAE48(v49, v45, v47, v48);
  v113 = 0;
  v51 = v50;
  v52 = v111;
  v98 = a3;

  if (v51)
  {

    v53 = v113;
    sub_1D6A45640(v52);
    v55 = v97;
    v113 = v53;
    if (v53)
    {
      (*(v101 + 8))(v110, v100);

LABEL_6:

      return;
    }

    v56 = v54;

    if (v56)
    {
      swift_beginAccess();

      v57 = v108;

      sub_1D6D60C08(v56, v107, v57);
      swift_endAccess();
    }
  }

  else
  {
    v55 = v97;
  }

  v58 = v98;
  swift_unownedRetainStrong();
  swift_beginAccess();
  v59 = v58[23];

  MEMORY[0x1EEE9AC00](v60, v61);
  v91 = v52;
  v92 = v109;
  v62 = v113;
  v63 = sub_1D5FBC110(sub_1D5EB5908, (&v93 - 4), v59);
  v113 = v62;
  if (v62)
  {
    (*(v101 + 8))(v110, v100);

    return;
  }

  v109 = v51;
  v64 = v63;

  swift_beginAccess();
  v65 = v108;
  swift_bridgeObjectRetain_n();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118[0] = *(v55 + 40);
  *(v55 + 40) = 0x8000000000000000;
  v67 = v107;
  sub_1D6D77BEC(v107, v65, v64, v107, v65, isUniquelyReferenced_nonNull_native);
  *(v55 + 40) = v118[0];
  swift_endAccess();

  v114 = v99;
  swift_getKeyPath();
  swift_unownedRetainStrong();
  swift_beginAccess();
  v68 = v58[6];

  v69 = v113;
  sub_1D618EFB4(v52, v68);
  v113 = v69;
  if (v69)
  {
    (*(v101 + 8))(v110, v100);

LABEL_32:

    goto LABEL_6;
  }

  v94 = v28;

  v70 = swift_allocObject();
  v70[2] = v67;
  v70[3] = v65;
  v70[4] = v105;
  v70[5] = v95;
  v70[6] = v52;
  v71 = v106;
  v70[7] = v58;
  v70[8] = v71;

  swift_unownedRetain();
  sub_1D5EB563C(0);
  v73 = v72;
  v74 = sub_1D60D69A4(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);

  v91 = v73;
  v92 = v74;
  v75 = v113;
  sub_1D72599BC();
  v113 = v75;

  swift_unownedRetainStrong();
  v76 = *(v58 + 153);

  v77 = v67;
  if (v76 > 3)
  {
    if (v76 > 5)
    {
      goto LABEL_31;
    }

    v78 = v95;
    if (v76 != 4)
    {
      goto LABEL_31;
    }

    v79 = 22;
  }

  else if (v76 > 1)
  {
    v78 = v95;
    if (v76 == 2)
    {
      v79 = 20;
    }

    else
    {
      v79 = 21;
    }
  }

  else
  {
    v78 = v95;
    if (v76)
    {
      v79 = 19;
    }

    else
    {
      v79 = 18;
    }
  }

  swift_unownedRetainStrong();
  sub_1D60D5DD4(v78, &v114);

  v80 = v114;
  if ((~v114 & 0xF000000000000007) == 0)
  {
LABEL_31:
    (*(v101 + 8))(v110, v100);
    goto LABEL_32;
  }

  v114 = 0;
  v115 = 0xE000000000000000;
  sub_1D7263D4C();
  v81 = v108;

  v114 = v77;
  v115 = v81;
  MEMORY[0x1DA6F9910](0x697373656363612DLL, 0xEE007974696C6962);
  v82 = v79;
  v83 = v114;
  v84 = v115;
  v85 = type metadata accessor for FormatAccessibilityLayoutValue();
  v86 = swift_allocObject();
  *(v86 + 16) = v83;
  *(v86 + 24) = v84;
  *(v86 + 32) = v82;
  v119 = v99;
  swift_getKeyPath();
  v116 = v85;
  v117 = sub_1D60D69A4(&qword_1EDF20A78, 255, type metadata accessor for FormatAccessibilityLayoutValue, &protocol conformance descriptor for FormatAccessibilityLayoutValue);
  v114 = v86;
  sub_1D60D69A4(&qword_1EDF3BFE0, 255, sub_1D6047BF8, MEMORY[0x1E69D71A0]);

  sub_1D72599FC();

  __swift_destroy_boxed_opaque_existential_1(&v114);
  v87 = v94;
  *v94 = v80;
  v88 = v102;
  swift_storeEnumTagMultiPayload();
  v89 = v104;
  sub_1D6047CB4(v87, v104, type metadata accessor for FormatNodeStateData.Data);
  v96(v89, 0, 1, v88);
  v90 = v103;
  sub_1D6047CB4(v89, v103, sub_1D6047B58);
  swift_beginAccess();

  sub_1D6D60A18(v90, v83, v84);
  swift_endAccess();
  sub_1D5BD9F54(v80);

  sub_1D60D60DC(v89, sub_1D6047B58);
  sub_1D60D60DC(v87, type metadata accessor for FormatNodeStateData.Data);
  (*(v101 + 8))(v110, v100);
}

void sub_1D60D44E4(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = sub_1D725891C();
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v68 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BEB610(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v12 = v11;
  v67 = *(v11 - 8);
  v13 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v56 - v15;
  swift_unownedRetainStrong();
  v17 = *(a1 + 72);

  v72 = v17;
  v18 = v71;
  v19 = sub_1D6E5B35C(a2, a3, a4, 0);

  if (!v18)
  {
    v61 = v12;
    v62 = v13;
    v65 = v19;
    v66 = a2;
    v71 = 0;
    v63 = a4;
    v64 = a3;
    swift_unownedRetainStrong();
    v21 = *(a1 + 80);
    v20 = *(a1 + 88);
    v22 = *(a1 + 104);
    v24 = *(a1 + 112);
    v23 = *(a1 + 120);
    v25 = *(a1 + 130);
    v26 = *(a1 + 128) | (*(a1 + 130) << 16);
    v27 = v20;
    v59 = *(a1 + 96);
    v60 = v22;
    sub_1D6046038(v21, v20, v59, v22, v24, v23, v26);

    if ((v25 >> 1) <= 0x7Eu)
    {
      v58 = v16;
      if ((v26 & 0x800000) != 0)
      {
        v80 = BYTE2(v26) & 1;
        v72 = v21;
        v73 = v27;
        v35 = v59;
        v74 = v59;
        v75 = v60;
        v36 = v60;
        v76 = v24;
        v77 = v23;
        v78 = v26;
        v79 = BYTE2(v26) & 1;
        v37 = v71;
        v38 = sub_1D688DD04(v66);
        v39 = v23;
        v28 = v64;
        v71 = v37;
        if (v37)
        {

          sub_1D5C67600(v21, v27, v35, v36, v24, v39, v26);
          return;
        }

        v57 = v38;
        sub_1D5C67600(v21, v27, v35, v36, v24, v39, v26);
        LODWORD(v60) = 1;
        v30 = *&v57;
      }

      else
      {
        v72 = v66;
        v57 = off_1F51AF338[0];
        v31 = type metadata accessor for FormatNodeContext(0);
        v32 = (v57)(v31, &off_1F51AF328);
        v33 = v71;
        v34 = sub_1D5E02AFC(v32, v21);
        sub_1D5C67600(v21, v27, v59, v60, v24, v23, v26);

        if (v33)
        {

          return;
        }

        v71 = 0;
        LODWORD(v60) = 0;
        v30 = v34;
        v28 = v64;
      }

      v29 = v58;
    }

    else
    {
      LODWORD(v60) = 255;
      v28 = v64;
      v29 = v16;
      v30 = 0.0;
    }

    LODWORD(v66) = v26 >> 17;
    v40 = sub_1D6B0B700();
    v41 = swift_allocObject();
    swift_unownedRetainStrong();
    swift_weakInit();

    v42 = v67;
    v43 = v28;
    v44 = v61;
    (*(v67 + 16))(v29, v43, v61);
    v45 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v46 = (v62 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    *(v47 + 16) = v41;
    *(v47 + 24) = v40;
    (*(v42 + 32))(v47 + v45, v29, v44);
    *(v47 + v46) = v63;

    v48 = v68;
    sub_1D725890C();
    sub_1D60D6828(0);
    v49 = swift_allocObject();
    v50 = v65;
    *(v49 + 4) = v65;
    *&v49[*(*v49 + 112)] = v50;
    (*(v69 + 32))(&v49[*(*v49 + 104)], v48, v70);
    *(v49 + 2) = v30;
    v49[24] = v60;
    if (v66 <= 0x7E)
    {
      v53 = v50;
      v52 = sub_1D60D68DC;
    }

    else
    {
      v51 = v50;

      v52 = 0;
      v47 = 0;
    }

    v54 = &v49[*(*v49 + 120)];
    *v54 = v52;
    v54[1] = v47;
    type metadata accessor for FormatText();
    v55 = swift_allocObject();
    *(v55 + 16) = v49;
    *(v55 + 24) = 0;
  }
}

void sub_1D60D4A5C(char *a1@<X0>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (***a6)(char *, uint64_t)@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v12 = sub_1D6E5B35C(a3, a4, a5, a1);

    if (!v6)
    {
      *a6 = v12;
    }
  }

  else
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D60D69A4(&qword_1EDF2F560, 255, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

id sub_1D60D4BA0@<X0>(uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v72 = a8;
  v15 = *(swift_unownedRetainStrong() + 32);
  sub_1D5D085B4(v15);

  v18 = *(*(a2 + 16) + 32);
  v19 = v15 >> 61;
  if ((v15 >> 61) <= 2)
  {
    if (v19)
    {
      if (v19 == 1)
      {
        v28 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v27 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v29 = swift_allocObject();
        v30 = swift_allocObject();
        v30[2] = v28;
        v30[3] = v27;
        v30[4] = a3;
        v30[5] = v18;
        v30[6] = a5;
        v30[7] = a6;
        v30[8] = a7;
        *(v29 + 16) = sub_1D60D68B4;
        *(v29 + 24) = v30;
        v31 = v72;
        *v72 = v29;
        v32 = *MEMORY[0x1E69D7498];
        sub_1D5BEB610(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
        (*(*(v33 - 8) + 104))(v31, v32, v33);
        v34 = v18;

        sub_1D5D085B4(v27);

        return sub_1D5D05694(v15);
      }

      v41 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v16, v17);
      v69 = a3;
      v70 = a4;
      v71 = a5;
      v21 = v18;

      v42 = v73;
      v43 = sub_1D5ECBE6C(sub_1D60D6890, v68, v41);

      if (!v42)
      {
        v48 = swift_allocObject();
        *(v48 + 16) = v21;
        *(v48 + 24) = v43;
        v25 = v72;
        *v72 = v48;
        v26 = MEMORY[0x1E69D7420];
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    v74 = *(v15 + 16);
    v40 = v18;
    sub_1D5C82CD8(v74);
    sub_1D5BEB9F4(a3, a6, a7, v72);

    sub_1D5C92A8C(v74);
    return sub_1D5D05694(v15);
  }

  if (v19 <= 4)
  {
    if (v19 == 3)
    {
      v20 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      MEMORY[0x1EEE9AC00](v16, v17);
      v69 = a3;
      v70 = a4;
      v71 = a5;
      v21 = v18;

      v22 = v73;
      v23 = sub_1D5ECBE6C(sub_1D60D6890, v68, v20);

      if (!v22)
      {
        v24 = swift_allocObject();
        *(v24 + 16) = v21;
        *(v24 + 24) = v23;
        v25 = v72;
        *v72 = v24;
        v26 = MEMORY[0x1E69D7448];
LABEL_22:
        v51 = *v26;
        sub_1D5BEB610(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
        (*(*(v52 - 8) + 104))(v25, v51, v52);
        return sub_1D5D05694(v15);
      }

LABEL_14:

      return sub_1D5D05694(v15);
    }

    v74 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v36 = v18;
    v44 = sub_1D6E5B35C(a3, a4, a5, 0);
    if (!v73)
    {
      v49 = v44;

      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      v25 = v72;
      *v72 = v50;
      v26 = MEMORY[0x1E69D7440];
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v19 == 5)
  {
    v74 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v36 = v18;
    v37 = sub_1D6E5B35C(a3, a4, a5, 0);
    if (!v73)
    {
      v38 = v37;

      v39 = swift_allocObject();
      *(v39 + 16) = v38;
      v25 = v72;
      *v72 = v39;
      v26 = MEMORY[0x1E69D73E8];
      goto LABEL_22;
    }

LABEL_16:

    return sub_1D5D05694(v15);
  }

  if (v15 == 0xC000000000000000)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = v18;
    v46 = v72;
    *v72 = v53;
    v47 = MEMORY[0x1E69D7440];
    goto LABEL_25;
  }

  if (v15 == 0xC000000000000008)
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v18;
    v46 = v72;
    *v72 = v45;
    v47 = MEMORY[0x1E69D73E8];
LABEL_25:
    v54 = *v47;
    sub_1D5BEB610(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
    (*(*(v55 - 8) + 104))(v46, v54, v55);
    return v18;
  }

  v56 = v18;
  if ([v56 length] <= 0)
  {

    v64 = swift_allocObject();
    *(v64 + 16) = 0;
  }

  else
  {
    v57 = [v56 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_1D60D69A4(&qword_1EDF1A8E0, 255, type metadata accessor for Key, &unk_1D72719E0);
    sub_1D7261D3C();

    v58 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v59 = sub_1D726203C();
    v60 = sub_1D7261D2C();

    v61 = [v58 initWithString:v59 attributes:v60];

    [v61 boundingRectWithSize:33 options:0 context:{1.79769313e308, 1.79769313e308}];
    v63 = v62;

    v64 = swift_allocObject();
    *(v64 + 16) = v63;
  }

  v65 = v72;
  *v72 = v64;
  v66 = *MEMORY[0x1E69D7488];
  sub_1D5BEB610(0, &qword_1EDF3BF10, MEMORY[0x1E69D74B0]);
  return (*(*(v67 - 8) + 104))(v65, v66, v67);
}

uint64_t sub_1D60D533C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, _OWORD *a7@<X7>, uint64_t *a8@<X8>, __n128 a9@<Q0>, CGFloat a10@<D1>, CGFloat a11@<D2>, CGFloat a12@<D3>)
{
  v108 = a5;
  v106 = a7;
  v107 = a8;
  v103 = a4;
  v101 = a3;
  v18 = a9.n128_f64[0];
  sub_1D6047B58(0, a9);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v102 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v105 = &v96 - v24;
  v25 = type metadata accessor for FormatNodeStateData.Data(0);
  v99 = *(v25 - 8);
  v100 = v25;
  MEMORY[0x1EEE9AC00](v25, v26);
  v104 = (&v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_1D725891C();
  v97 = *(v28 - 8);
  v98 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D725A2AC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a1;
  v110 = a2;
  v37 = sub_1D7259E2C();
  if (!v37)
  {
    goto LABEL_8;
  }

  v38 = v37;
  (*(v33 + 104))(v36, *MEMORY[0x1E69D72E8], v32);
  if (!*(v38 + 16) || (v39 = sub_1D6D62EE0(v36), (v40 & 1) == 0))
  {

    (*(v33 + 8))(v36, v32);
LABEL_8:
    v113 = 0u;
    v114 = 0u;
    goto LABEL_9;
  }

  sub_1D5B76B10(*(v38 + 56) + 32 * v39, &v113);
  (*(v33 + 8))(v36, v32);

  if (!*(&v114 + 1))
  {
LABEL_9:
    sub_1D5EBD03C(&v113);
    v43 = v104;
    v42 = v105;
    goto LABEL_10;
  }

  sub_1D5B5A498(0, &qword_1EDF3C730, 0x1E696AAB0);
  v41 = swift_dynamicCast();
  v43 = v104;
  v42 = v105;
  if (v41)
  {
    v44 = *&v112[0];
    sub_1D725890C();
    sub_1D60D6828(0);
    v45 = swift_allocObject();
    *(v45 + 4) = v44;
    *&v45[*(*v45 + 112)] = v44;
    (*(v97 + 32))(&v45[*(*v45 + 104)], v31, v98);
    *(v45 + 2) = 0;
    v45[24] = -1;
    v46 = &v45[*(*v45 + 120)];
    type metadata accessor for FormatTextLink();
    *v46 = 0;
    *(v46 + 1) = 0;
    swift_allocObject();
    v47 = v44;
    sub_1D613DE0C(v47, v18, a10, a11, a12);
    v49 = v48;
    type metadata accessor for FormatText();
    v50 = swift_allocObject();
    *(v50 + 16) = v45;
    *(v50 + 24) = v49;
    *v43 = v50;
    v51 = v100;
    swift_storeEnumTagMultiPayload();
    sub_1D6047CB4(v43, v42, type metadata accessor for FormatNodeStateData.Data);
    (*(v99 + 56))(v42, 0, 1, v51);
    v52 = v102;
    sub_1D6047CB4(v42, v102, sub_1D6047B58);
    swift_beginAccess();

    v53 = v110;

    sub_1D6D60A18(v52, v109, v53);
    swift_endAccess();

    v54 = v108;
    goto LABEL_12;
  }

LABEL_10:
  v55 = *(v103 + 16);
  v56 = *(v55 + 32);
  type metadata accessor for FormatTextLink();
  swift_allocObject();
  sub_1D613DE0C(v56, v18, a10, a11, a12);
  v54 = v108;
  if (!v57)
  {
    goto LABEL_13;
  }

  v58 = v57;
  type metadata accessor for FormatText();
  v59 = swift_allocObject();
  *(v59 + 16) = v55;
  *(v59 + 24) = v58;
  *v43 = v59;
  v60 = v100;
  swift_storeEnumTagMultiPayload();
  sub_1D6047CB4(v43, v42, type metadata accessor for FormatNodeStateData.Data);
  (*(v99 + 56))(v42, 0, 1, v60);
  v61 = v102;
  sub_1D6047CB4(v42, v102, sub_1D6047B58);
  swift_beginAccess();

  v62 = v110;

  v63 = v61;
  v54 = v108;
  sub_1D6D60A18(v63, v109, v62);
  swift_endAccess();

LABEL_12:

  sub_1D60D60DC(v42, sub_1D6047B58);
  sub_1D60D60DC(v43, type metadata accessor for FormatNodeStateData.Data);
LABEL_13:
  v64 = *(v54 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v66 = *(a6 + 16);
  v65 = *(a6 + 24);

  v67 = *(v64 + 40);
  if (v67)
  {
    *&v113 = *(v64 + 32);
    *(&v113 + 1) = v67;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v66, v65);

    v65 = *(&v113 + 1);
    v66 = v113;
  }

  swift_unownedRetainStrong();
  swift_beginAccess();
  v68 = *(a6 + 24);
  v102 = *(a6 + 16);
  v103 = v68;

  swift_unownedRetainStrong();
  v69 = *(a6 + 40);

  v104 = v66;
  v105 = v65;
  if (v69)
  {
    v70 = *(v69 + 16);
    swift_beginAccess();
    if (*(*(v70 + 16) + 16))
    {

      goto LABEL_20;
    }
  }

  v70 = 0;
LABEL_20:
  swift_unownedRetainStrong();
  swift_beginAccess();
  v101 = *(a6 + 136);

  swift_unownedRetainStrong();
  swift_beginAccess();
  v71 = *(a6 + 144);
  sub_1D5EB1500(v71);

  *&v113 = v71;
  sub_1D615B4A8(v54, &v121);
  sub_1D5EB15C4(v113);
  v108 = v121;
  swift_unownedRetainStrong();
  swift_beginAccess();
  LODWORD(v100) = *(a6 + 152);

  swift_unownedRetainStrong();
  v72 = *(a6 + 160);
  v73 = *(a6 + 168);

  swift_unownedRetainStrong();
  v74 = *(a6 + 192);
  v75 = *(a6 + 200);

  type metadata accessor for FormatTextNodeLayoutAttributes();
  v76 = swift_allocObject();
  v77 = v110;
  *(v76 + 16) = v109;
  *(v76 + 24) = v77;
  v78 = v105;
  *(v76 + 32) = v104;
  *(v76 + 40) = v78;
  v79 = v103;
  *(v76 + 48) = v102;
  *(v76 + 56) = v79;
  *(v76 + 64) = v18;
  *(v76 + 72) = a10;
  *(v76 + 80) = a11;
  *(v76 + 88) = a12;
  v80 = v106;
  *(v76 + 96) = v106;
  *(v76 + 104) = v70;
  v81 = v108;
  *(v76 + 112) = v101;
  *(v76 + 120) = v81;
  swift_beginAccess();
  *(v76 + 128) = v100;
  *(v76 + 136) = v72;
  *(v76 + 144) = v73;
  *(v76 + 152) = v74;
  *(v76 + 160) = v75;
  if (v80)
  {
    sub_1D60D656C(0, &qword_1EDF195B8, sub_1D60D65D0, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    v83 = v80[5];
    v84 = v80[7];
    v85 = v80[8];
    v112[2] = v80[6];
    v112[3] = v84;
    v86 = v80[9];
    v87 = v80[10];
    v112[4] = v85;
    v112[5] = v86;
    v88 = v80[11];
    v112[6] = v87;
    v112[7] = v88;
    v112[0] = v80[4];
    v112[1] = v83;
    memmove(&v113, v80 + 4, 0x80uLL);
    if (sub_1D5CFD0B8(&v113) == 1)
    {
      *(inited + 64) = 0;
      *(inited + 32) = 0u;
      *(inited + 48) = 0u;
    }

    else
    {
      *(inited + 56) = &type metadata for FormatFill;
      *(inited + 64) = &protocol witness table for FormatFill;
      v90 = swift_allocObject();
      *(inited + 32) = v90;
      v91 = v114;
      v90[1] = v113;
      v90[2] = v91;
      v92 = v116;
      v90[3] = v115;
      v90[4] = v92;
      v93 = v118;
      v90[5] = v117;
      v90[6] = v93;
      v94 = v120;
      v90[7] = v119;
      v90[8] = v94;
    }

    sub_1D60D6668(v112, &v111);
    v89 = sub_1D6E27AC0();
    swift_setDeallocating();
    sub_1D60D60DC(inited + 32, sub_1D60D65D0);
  }

  else
  {

    v89 = MEMORY[0x1E69E7CD0];
  }

  result = swift_allocObject();
  *(v76 + 168) = v89;
  *(result + 16) = v76;
  *v107 = result | 0x2000000000000000;
  return result;
}

void sub_1D60D5DD4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D725891C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 153) >= 5u)
  {
    *a2 = 0xF000000000000007;
  }

  else
  {
    v27 = a2;
    v10 = *(a1 + 16);
    v11 = *(v10 + *(*v10 + 112));
    v12 = [v11 string];
    v13 = sub_1D726207C();
    v15 = v14;

    v16 = *(*v10 + 104);
    swift_beginAccess();
    (*(v6 + 16))(v9, v10 + v16, v5);
    v17 = *(v10 + 16);
    v18 = *(v10 + 24);
    v19 = swift_allocObject();
    v19[2] = sub_1D60D613C;
    v19[3] = 0;
    v19[4] = sub_1D60D61BC;
    v19[5] = v10;
    sub_1D60D66F0(0, qword_1EDF32918, MEMORY[0x1E69E6158], type metadata accessor for FormatComputed);
    v20 = swift_allocObject();
    *(v20 + 4) = v13;
    *(v20 + 5) = v15;
    v21 = &v20[*(*v20 + 112)];
    *v21 = v13;
    v21[1] = v15;
    v22 = v5;
    v23 = v17;
    (*(v6 + 32))(&v20[*(*v20 + 104)], v9, v22);
    *(v20 + 2) = v17;
    v20[24] = v18;

    if (v18 == 255)
    {

      v24 = 0;
      v19 = 0;
    }

    else
    {
      v24 = sub_1D60D61F4;
    }

    v25 = swift_allocObject();
    v26 = &v20[*(*v20 + 120)];
    *v26 = v24;
    *(v26 + 1) = v19;
    *(v25 + 16) = v20;
    *v27 = v25;
    sub_1D60D626C(v23, v18);
  }
}

uint64_t sub_1D60D60DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D60D613C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 string];
  v4 = sub_1D726207C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_1D60D61BC@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_1D60D6290(a2);
  *a1 = v3;

  return v3;
}

void sub_1D60D61F4(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  (*(v1 + 32))(&v6);
  v3(v5, &v6);

  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
}

double sub_1D60D626C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1D60D6284(result, a2 & 1);
  }

  return v2;
}

double sub_1D60D6284(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void *sub_1D60D6290(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7261B9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  *v13 = sub_1D726308C();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v14 = sub_1D7261BBC();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = *v2;
    if (v2[24] == 255 || (v17 = &v2[*(v16 + 120)], (v18 = *v17) == 0))
    {
      v20 = &v2[*(v16 + 112)];
    }

    else
    {
      v19 = *(v17 + 1);

      v18(v23, a1);
      v20 = &v2[*(*v2 + 112)];
      v21 = *v20;
      *v20 = v23[0];

      sub_1D725890C();
      sub_1D5B74328(v18, v19);
      v22 = *(*v2 + 104);
      swift_beginAccess();
      (*(v5 + 40))(&v2[v22], v8, v4);
      swift_endAccess();
    }

    return *v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D60D656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D60D6604()
{
  result = qword_1EDF1C7E0;
  if (!qword_1EDF1C7E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF1C7E0);
  }

  return result;
}

uint64_t sub_1D60D6668(uint64_t a1, uint64_t a2)
{
  sub_1D60D66F0(0, &qword_1EDF34688, &type metadata for FormatFill, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D60D66F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1D60D6740(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = a14 >> 62;
  if ((a14 >> 62) > 1)
  {
    if (v16 == 2)
    {
    }

    else
    {

      return sub_1D6086768(a1);
    }
  }

  else if (v16)
  {

    sub_1D5CDE22C(a7, a8);
  }

  else
  {
  }

  return result;
}

void sub_1D60D6828(uint64_t a1)
{
  if (!qword_1EDF32910)
  {
    v2 = sub_1D5B5A498(255, &qword_1EDF3C730, 0x1E696AAB0);
    v5 = type metadata accessor for FormatComputed(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDF32910);
    }
  }
}

void sub_1D60D68DC(char *a1@<X0>, void (***a2)(char *, uint64_t)@<X8>)
{
  sub_1D5BEB610(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  sub_1D60D4A5C(a1, *(v2 + 24), v2 + v6, *(v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_1D60D69A4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D60D69EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D7261B9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = (v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
  *v13 = sub_1D726308C();
  (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);
  v14 = sub_1D7261BBC();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    v16 = *v2;
    if (v2[24] == 255 || (v17 = &v2[*(v16 + 120)], (v18 = *v17) == 0))
    {
      v20 = &v2[*(v16 + 112)];
    }

    else
    {
      v19 = *(v17 + 1);

      v18(v23, a1);
      v20 = &v2[*(*v2 + 112)];
      v21 = v23[1];
      *v20 = v23[0];
      *(v20 + 1) = v21;

      sub_1D725890C();
      sub_1D5B74328(v18, v19);
      v22 = *(*v2 + 104);
      swift_beginAccess();
      (*(v5 + 40))(&v2[v22], v8, v4);
      swift_endAccess();
    }

    return *v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static FormatVersioningModeRelease.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FormatVersioningModeRelease(0);

  return sub_1D725BCBC();
}

uint64_t sub_1D60D6D4C()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x656D614E65646F63;
  }
}

void sub_1D60D6D88(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E65646F63 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

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

uint64_t sub_1D60D6E64(uint64_t a1)
{
  v2 = sub_1D60DAF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60D6EA0(uint64_t a1)
{
  v2 = sub_1D60DAF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatVersioningModeRelease.encode(to:)(void *a1)
{
  sub_1D60DB7A0(0, &qword_1EC883690, sub_1D60DAF7C, &type metadata for FormatVersioningModeRelease.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60DAF7C();
  sub_1D7264B5C();
  v12 = 0;
  sub_1D72643FC();
  if (!v1)
  {
    type metadata accessor for FormatVersioningModeRelease(0);
    v11 = 1;
    sub_1D725BD1C();
    sub_1D60DAFD0(&qword_1EDF178C0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B40]);
    sub_1D726443C();
  }

  return (*(v5 + 8))(v8, v4);
}

void FormatVersioningModeRelease.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_1D725BD1C();
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DB7A0(0, &qword_1EC8836A0, sub_1D60DAF7C, &type metadata for FormatVersioningModeRelease.CodingKeys, MEMORY[0x1E69E6F48]);
  v25 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v20 - v8;
  v10 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60DAF7C();
  v14 = v26;
  sub_1D7264B0C();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v26 = a1;
    v16 = v23;
    v15 = v24;
    v28 = 0;
    *v13 = sub_1D72642BC();
    v13[1] = v17;
    v20[0] = v13;
    v20[1] = v17;
    v27 = 1;
    sub_1D60DAFD0(&qword_1EDF43A48, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B58]);
    sub_1D726431C();
    (*(v16 + 8))(v9, v25);
    v18 = *(v10 + 20);
    v19 = v20[0];
    (*(v21 + 32))(v20[0] + v18, v5, v15);
    sub_1D60DB808(v19, v22, type metadata accessor for FormatVersioningModeRelease);
    __swift_destroy_boxed_opaque_existential_1(v26);
    sub_1D60DB8C4(v19, type metadata accessor for FormatVersioningModeRelease);
  }
}

uint64_t sub_1D60D743C(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D725BCBC();
}

uint64_t sub_1D60D74F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DBA60(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v28 - v10;
  v12 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v14 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DB808(v2, v17, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      if (qword_1EDF3CA50 != -1)
      {
        swift_once();
      }

      v20 = sub_1D725BD1C();
      v21 = __swift_project_value_buffer(v20, qword_1EDF3CA58);
      return (*(*(v20 - 8) + 16))(a1, v21, v20);
    }

    else
    {
      if (qword_1EDF3CA50 != -1)
      {
        swift_once();
      }

      v26 = sub_1D725BD1C();
      __swift_project_value_buffer(v26, qword_1EDF3CA58);
      sub_1D725BCFC();
      v27 = sub_1D725B17C();
      (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
      return sub_1D725BCEC();
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D60DB924(v17, v7, type metadata accessor for FormatVersioningModeRelease);
      v23 = *(v4 + 20);
      v24 = sub_1D725BD1C();
      (*(*(v24 - 8) + 16))(a1, &v7[v23], v24);
      return sub_1D60DB8C4(v7, type metadata accessor for FormatVersioningModeRelease);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D60DB924(v17, v7, type metadata accessor for FormatVersioningModeRelease);
      sub_1D725BCFC();
      v19 = sub_1D725B17C();
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
      sub_1D725BCEC();
      return sub_1D60DB8C4(v7, type metadata accessor for FormatVersioningModeRelease);
    }

    v25 = sub_1D725BD1C();
    return (*(*(v25 - 8) + 32))(a1, v17, v25);
  }
}

uint64_t FormatVersioningModeSelection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  sub_1D60DB624(0);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v64 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v69, v6);
  v65 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v63 - v10;
  sub_1D60DB7A0(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v63 - v14;
  v16 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v20 = v75;
  sub_1D7264B0C();
  if (!v20)
  {
    v63[0] = v11;
    v63[1] = v16;
    v75 = v19;
    v21 = v67;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v22 = sub_1D7264AFC();
    v23 = Dictionary<>.errorOnUnknownKeys.getter(v22);

    v24 = v68;
    if (v23)
    {
      v25 = sub_1D726433C();
      v26 = (v25 + 40);
      v27 = *(v25 + 16) + 1;
      while (--v27)
      {
        v28 = v26 + 2;
        v29 = *v26;
        v26 += 2;
        if (v29 >= 4)
        {
          v30 = *(v28 - 3);

          sub_1D5E2D970();
          swift_allocError();
          *v31 = v30;
          *(v31 + 8) = v29;
          *(v31 + 16) = &unk_1F5111728;
          *(v31 + 24) = xmmword_1D72874E0;
          swift_willThrow();
          (*(v21 + 8))(v15, v24);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }
      }
    }

    sub_1D60DB6D8();
    v74[0] = 0uLL;
    sub_1D726431C();
    if (v71 > 2u)
    {
      if (v71 == 3)
      {
        v74[0] = xmmword_1D7279980;
        sub_1D60DAFD0(&qword_1EC8836C8, type metadata accessor for FormatVersioningModeRelease, &protocol conformance descriptor for FormatVersioningModeRelease);
        v47 = sub_1D726431C();
        v49 = v21;
        if (qword_1EDF31F20 != -1)
        {
          v47 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v47, v48);
        v50 = v63[0];
        v63[-2] = v63[0];
        sub_1D5E3EB3C(sub_1D60DC080, v51, &v71);
        if (!v72)
        {
          sub_1D5BFB774(&v71, &qword_1EC8836D0, &qword_1EDF331B0, &protocol descriptor for FormatRelease);
          sub_1D60DB74C();
          swift_allocError();
          *v61 = 3;
          swift_willThrow();
          (*(v49 + 8))(v15, v24);
          sub_1D60DB8C4(v50, type metadata accessor for FormatVersioningModeRelease);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        sub_1D5B63F14(&v71, v74);
        sub_1D5B68374(v74, &v71);
        v52 = v72;
        v53 = v73;
        __swift_project_boxed_opaque_existential_1(&v71, v72);
        v54 = sub_1D722A00C(v52, v53);
        v55 = v75;
        *v75 = v54;
        v55[1] = v56;
        v57 = v72;
        v58 = v73;
        __swift_project_boxed_opaque_existential_1(&v71, v72);
        sub_1D5D2F260(v57, v58);
        __swift_destroy_boxed_opaque_existential_1(v74);
        v34 = v55;
        (*(v49 + 8))(v15, v24);
        __swift_destroy_boxed_opaque_existential_1(&v71);
        swift_storeEnumTagMultiPayload();
        v46 = v63[0];
      }

      else
      {
        if (v71 != 4)
        {
          v74[0] = xmmword_1D7279980;
          sub_1D60DAFD0(&qword_1EC8836C0, sub_1D60DB624, &protocol conformance descriptor for FormatValue<A>);
          v59 = v64;
          sub_1D726431C();
          (*(v21 + 8))(v15, v24);
          v60 = sub_1D725BD1C();
          v34 = v75;
          (*(*(v60 - 8) + 32))(v75, v59, v60);
          swift_storeEnumTagMultiPayload();
          v33 = v66;
          goto LABEL_23;
        }

        v74[0] = xmmword_1D7279980;
        sub_1D60DAFD0(&qword_1EC8836C8, type metadata accessor for FormatVersioningModeRelease, &protocol conformance descriptor for FormatVersioningModeRelease);
        v35 = sub_1D726431C();
        if (qword_1EDF31F20 != -1)
        {
          v35 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v35, v36);
        v37 = v65;
        v63[-2] = v65;
        sub_1D5E3EB3C(sub_1D60DB72C, v38, &v71);
        if (!v72)
        {
          sub_1D5BFB774(&v71, &qword_1EC8836D0, &qword_1EDF331B0, &protocol descriptor for FormatRelease);
          sub_1D60DB74C();
          swift_allocError();
          *v62 = 3;
          swift_willThrow();
          (*(v21 + 8))(v15, v24);
          sub_1D60DB8C4(v37, type metadata accessor for FormatVersioningModeRelease);
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        sub_1D5B63F14(&v71, v74);
        sub_1D5B68374(v74, &v71);
        v39 = v72;
        v40 = v73;
        __swift_project_boxed_opaque_existential_1(&v71, v72);
        v41 = sub_1D722A00C(v39, v40);
        v42 = v75;
        *v75 = v41;
        v42[1] = v43;
        v44 = v72;
        v45 = v73;
        __swift_project_boxed_opaque_existential_1(&v71, v72);
        sub_1D5D2F260(v44, v45);
        __swift_destroy_boxed_opaque_existential_1(v74);
        v34 = v42;
        (*(v21 + 8))(v15, v24);
        __swift_destroy_boxed_opaque_existential_1(&v71);
        swift_storeEnumTagMultiPayload();
        v46 = v65;
      }

      sub_1D60DB8C4(v46, type metadata accessor for FormatVersioningModeRelease);
      v33 = v66;
    }

    else
    {
      v33 = v66;
      (*(v21 + 8))(v15, v24);
      v34 = v75;
      swift_storeEnumTagMultiPayload();
    }

LABEL_23:
    sub_1D60DB924(v34, v33, type metadata accessor for FormatVersioningModeSelection);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D60D833C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  if (sub_1D722A00C(v3, v4) == *a2 && v5 == a2[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D72646CC();
  }

  return v7 & 1;
}

uint64_t FormatVersioningModeSelection.encode(to:)(void *a1)
{
  sub_1D60DB624(0);
  v37[1] = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v38 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D725BD1C();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v42 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v39, v8);
  v41 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v40 = v37 - v12;
  v13 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DB7A0(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v18 = v17;
  v46 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v37 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  sub_1D60DB808(v47, v16, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v49 = 0;
      sub_1D60DB870();
      v48 = 0uLL;
      v27 = v21;
    }

    else
    {
      v27 = v21;
      if (EnumCaseMultiPayload == 4)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      v49 = v28;
      sub_1D60DB870();
      v48 = 0uLL;
    }

    sub_1D726443C();
    return (*(v46 + 8))(v27, v18);
  }

  if (!EnumCaseMultiPayload)
  {
    v29 = v40;
    sub_1D60DB924(v16, v40, type metadata accessor for FormatVersioningModeRelease);
    v49 = 3;
    sub_1D60DB870();
    v48 = 0uLL;
    v27 = v21;
    v30 = v45;
    sub_1D726443C();
    if (!v30)
    {
      v48 = xmmword_1D7279980;
      sub_1D60DAFD0(&qword_1EC8836F0, type metadata accessor for FormatVersioningModeRelease, &protocol conformance descriptor for FormatVersioningModeRelease);
      sub_1D726443C();
    }

    sub_1D60DB8C4(v29, type metadata accessor for FormatVersioningModeRelease);
    return (*(v46 + 8))(v27, v18);
  }

  v23 = v18;
  v24 = v21;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = v41;
    sub_1D60DB924(v16, v41, type metadata accessor for FormatVersioningModeRelease);
    v49 = 4;
    sub_1D60DB870();
    v48 = 0uLL;
    v26 = v45;
    sub_1D726443C();
    if (!v26)
    {
      v48 = xmmword_1D7279980;
      sub_1D60DAFD0(&qword_1EC8836F0, type metadata accessor for FormatVersioningModeRelease, &protocol conformance descriptor for FormatVersioningModeRelease);
      sub_1D726443C();
    }

    sub_1D60DB8C4(v25, type metadata accessor for FormatVersioningModeRelease);
  }

  else
  {
    v32 = v42;
    v31 = v43;
    v33 = v44;
    (*(v43 + 32))(v42, v16, v44);
    v49 = 5;
    sub_1D60DB870();
    v48 = 0uLL;
    v34 = v45;
    sub_1D726443C();
    if (!v34)
    {
      v35 = v38;
      (*(v31 + 16))(v38, v32, v33);
      v48 = xmmword_1D7279980;
      sub_1D60DAFD0(&qword_1EC8836E8, sub_1D60DB624, &protocol conformance descriptor for FormatValue<A>);
      sub_1D726443C();
      sub_1D60DB8C4(v35, sub_1D60DB624);
    }

    (*(v31 + 8))(v32, v33);
  }

  return (*(v46 + 8))(v24, v23);
}

double sub_1D60D8A5C(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

unint64_t sub_1D60D8B7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D60DBEFC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D60D8BAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006D756D696ELL;
  v4 = 0x694D746365746564;
  v5 = 0xEF746E6572727543;
  v6 = 0x6E6F4E6465786966;
  v7 = 0x80000001D73BC8D0;
  v8 = 0xD00000000000001CLL;
  if (v2 != 4)
  {
    v8 = 0x6465786966;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC000000746E6572;
  v10 = 0x7275436465786966;
  if (v2 != 1)
  {
    v10 = 0xD000000000000019;
    v9 = 0x80000001D73BC8A0;
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

uint64_t sub_1D60D8C94()
{
  v1 = *v0;
  v2 = 0x694D746365746564;
  v3 = 0x6E6F4E6465786966;
  v4 = 0xD00000000000001CLL;
  if (v1 != 4)
  {
    v4 = 0x6465786966;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7275436465786966;
  if (v1 != 1)
  {
    v5 = 0xD000000000000019;
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

unint64_t sub_1D60D8D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D60DBEFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D60D8E50(uint64_t a1)
{
  v2 = sub_1D60DBF48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60D8E8C(uint64_t a1)
{
  v2 = sub_1D60DBF48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60D8EF8()
{
  v0 = sub_1D72597EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D72597FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v10, v10);
  swift_storeEnumTagMultiPayload();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6EA0], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  sub_1D60DBE68(0);
  swift_allocObject();
  result = sub_1D725987C();
  qword_1EC9BA7C0 = result;
  return result;
}

uint64_t static FormatVersioningModeSelection.dataType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6EC0];
  v3 = sub_1D725988C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static FormatVersioningModeSelection.convert(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5B76B10(a1, v12);
  if (swift_dynamicCast())
  {
    v3 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v3 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = sub_1D6011D6C(v10, v11);
      v6 = v5;
      type metadata accessor for FormatJSONDecoder(0);
      swift_allocObject();
      sub_1D5B7BACC(MEMORY[0x1E69E7CC0]);
      v7 = type metadata accessor for FormatVersioningModeSelection(0);
      sub_1D60DAFD0(&qword_1EC8836F8, type metadata accessor for FormatVersioningModeSelection, &protocol conformance descriptor for FormatVersioningModeSelection);
      sub_1D725A69C();
      sub_1D5B952F8(v4, v6);

      return (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    }
  }

  v8 = type metadata accessor for FormatVersioningModeSelection(0);
  return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
}

uint64_t FormatVersioningModeSelection.toData()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FormatJSONEncoder(0);
  swift_allocObject();
  sub_1D6BCED58(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FormatVersioningModeSelection(0);
  sub_1D60DAFD0(&qword_1EC883700, type metadata accessor for FormatVersioningModeSelection, &protocol conformance descriptor for FormatVersioningModeSelection);
  v2 = sub_1D72578BC();
  v4 = v3;

  sub_1D5E3E824(v2, v4);
  v5 = sub_1D60DA9EC(v2, v4);
  if (v6)
  {
    goto LABEL_8;
  }

  v12 = v2;
  v13 = v4;
  sub_1D5E3E824(v2, v4);
  sub_1D5B49474(0, &qword_1EC883708, MEMORY[0x1E69E6EE0]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1D5BFB774(v10, &qword_1EC89A1E0, &qword_1EC883708, MEMORY[0x1E69E6EE0]);
LABEL_7:
    v5 = sub_1D60DA7C8(v2, v4);
LABEL_8:
    v7 = v5;
    v8 = v6;
    sub_1D5B952F8(v2, v4);
    goto LABEL_9;
  }

  sub_1D5B63F14(v10, v14);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  if ((sub_1D726415C() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    goto LABEL_7;
  }

  sub_1D5B952F8(v2, v4);
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1D726414C();
  v8 = *(&v10[0] + 1);
  v7 = *&v10[0];
  __swift_destroy_boxed_opaque_existential_1(v14);
LABEL_9:
  a1[3] = MEMORY[0x1E69E6158];
  result = sub_1D5B952F8(v2, v4);
  *a1 = v7;
  a1[1] = v8;
  return result;
}

uint64_t sub_1D60D95C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6EC0];
  v3 = sub_1D725988C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1D60D9640()
{
  v1 = v0;
  v2 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DBA60(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1D725BD1C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DB808(v1, v20, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D60DB924(v20, v5, type metadata accessor for FormatVersioningModeRelease);
      sub_1D60DAFD0(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
      v25 = sub_1D72644BC();
      sub_1D60DB8C4(v5, type metadata accessor for FormatVersioningModeRelease);
      return v25;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D60DB924(v20, v5, type metadata accessor for FormatVersioningModeRelease);
      sub_1D725BCFC();
      v22 = sub_1D725B17C();
      (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
      sub_1D725BCEC();
      sub_1D60DAFD0(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
      v23 = sub_1D72644BC();
      (*(v13 + 8))(v16, v12);
      sub_1D60DB8C4(v5, type metadata accessor for FormatVersioningModeRelease);
      return v23;
    }

    (*(v13 + 32))(v16, v20, v12);
LABEL_16:
    sub_1D60DAFD0(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
    v23 = sub_1D72644BC();
    (*(v13 + 8))(v16, v12);
    return v23;
  }

  if (EnumCaseMultiPayload == 3)
  {
    return 0x746365746544;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (qword_1EDF3CA50 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_1EDF3CA58);
    sub_1D725BCFC();
    v26 = sub_1D725B17C();
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    sub_1D725BCEC();
    goto LABEL_16;
  }

  if (qword_1EDF3CA50 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v12, qword_1EDF3CA58);
  sub_1D60DAFD0(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
  return sub_1D72644BC();
}

uint64_t sub_1D60D9BFC()
{
  v1 = v0;
  v2 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v32[-v13];
  v15 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v32[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D60DB808(v1, v18, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) >= 2)
    {
      if (qword_1EDF3CA50 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v6, qword_1EDF3CA58);
      if (qword_1EDF31E88 != -1)
      {
        swift_once();
      }

      v22 = qword_1EDFFCCD8;
      v23 = unk_1EDFFCCE0;
      __swift_project_boxed_opaque_existential_1(qword_1EDFFCCC0, qword_1EDFFCCD8);
      sub_1D5D2F260(v22, v23);
      LOBYTE(v22) = sub_1D725BCBC();
      (*(v7 + 8))(v10, v6);
      if (v22)
      {
        v24 = qword_1EDFFCCD8;
        v25 = unk_1EDFFCCE0;
        __swift_project_boxed_opaque_existential_1(qword_1EDFFCCC0, qword_1EDFFCCD8);
        return sub_1D722A00C(v24, v25);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D60DB924(v18, v5, type metadata accessor for FormatVersioningModeRelease);
      v20 = *v5;

      sub_1D60DB8C4(v5, type metadata accessor for FormatVersioningModeRelease);
      return v20;
    }

    v26 = (*(v7 + 32))(v14, v18, v6);
    if (qword_1EDF31F18 != -1)
    {
      v26 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v26, v27);
    *&v32[-16] = v14;
    sub_1D5E3EB3C(sub_1D60DBF9C, v28, &v33);
    if (v34)
    {
      sub_1D5B63F14(&v33, v35);
      v29 = v36;
      v30 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v31 = sub_1D722A00C(v29, v30);
      __swift_destroy_boxed_opaque_existential_1(v35);
      (*(v7 + 8))(v14, v6);
      return v31;
    }

    sub_1D5BFB774(&v33, &qword_1EC8836D0, &qword_1EDF331B0, &protocol descriptor for FormatRelease);
    (*(v7 + 8))(v14, v6);
  }

  else
  {
    sub_1D60DB8C4(v18, type metadata accessor for FormatVersioningModeSelection);
  }

  return 0;
}

uint64_t sub_1D60DA05C(void *a1, uint64_t a2)
{
  v3 = sub_1D725BD1C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1D5D2F260(v8, v9);
  LOBYTE(a1) = sub_1D725BCBC();
  (*(v4 + 8))(v7, v3);
  return a1 & 1;
}

uint64_t sub_1D60DA16C()
{
  v0 = type metadata accessor for FormatVersioningModeSelection(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DBA60(0, &qword_1EC88F510, type metadata accessor for FormatVersioningModeSelection, MEMORY[0x1E69E6F90]);
  v5 = *(v1 + 72);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7279970;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if (qword_1EDF31F18 != -1)
  {
    swift_once();
  }

  sub_1D5B49474(0, &qword_1EDF331B0, &protocol descriptor for FormatRelease);
  sub_1D725BD1C();
  sub_1D60DAFD0(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);

  v8 = sub_1D72626DC();

  v9 = *(v8 + 16);
  if (v9)
  {
    v18 = v7;
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D6997204(0, v9, 0);
    v10 = v22;
    v17 = v8;
    v11 = v8 + 32;
    do
    {
      sub_1D5B68374(v11, v19);
      v12 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      sub_1D5D2F260(v12, v13);
      swift_storeEnumTagMultiPayload();
      __swift_destroy_boxed_opaque_existential_1(v19);
      v22 = v10;
      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D6997204((v14 > 1), v15 + 1, 1);
        v10 = v22;
      }

      *(v10 + 16) = v15 + 1;
      sub_1D60DB924(v4, v10 + v6 + v15 * v5, type metadata accessor for FormatVersioningModeSelection);
      v11 += 40;
      --v9;
    }

    while (v9);

    v7 = v18;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v19[0] = v7;
  result = sub_1D6985254(v10);
  off_1EC883688 = v19[0];
  return result;
}

uint64_t sub_1D60DA4F4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return sub_1D5D2F260(v1, v2);
}

uint64_t sub_1D60DA540(uint64_t a1, uint64_t a2)
{
  sub_1D725BD1C();
  sub_1D60DAFD0(&qword_1EDF43A50, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B48]);
  return sub_1D7261F4C() & 1;
}

uint64_t static FormatVersioningModeSelection.allCases.getter()
{
  if (qword_1EC87D518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static FormatVersioningModeSelection.allCases.setter(void *a1)
{
  if (qword_1EC87D518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EC883688 = a1;

  return result;
}

uint64_t (*static FormatVersioningModeSelection.allCases.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC87D518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1D60DA748@<X0>(void *a1@<X8>)
{
  if (qword_1EC87D518 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_1EC883688;
}

uint64_t sub_1D60DA7C8(uint64_t a1, unint64_t a2)
{
  sub_1D5E3E824(a1, a2);
  sub_1D60DA870(a1, a2);
  v4 = sub_1D72621CC();

  return v4;
}

uint64_t sub_1D60DA834@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1D72621CC();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1D60DA870(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D72586BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1D5B952F8(a1, a2);
      return;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_1D5C42524(v10, 0);
      v13 = sub_1D72585EC();
      sub_1D5B952F8(a1, a2);
      v14 = *(v5 + 8);
      v5 += 8;
      v14(v8, v4);
      if (v13 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v15 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v15;
      if (!v15)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_1D60DA9EC(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_1D72621CC();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_1D72621CC();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1D7257CAC();
  if (a1)
  {
    a1 = sub_1D7257CDC();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1D7257CAC() || !__OFSUB__(v5, sub_1D7257CDC()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1D7257CCC();
  return sub_1D72621CC();
}

uint64_t _s8NewsFeed20FormatVersioningModeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725BD1C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v35 - v18;
  sub_1D60DBFBC(0, &qword_1EC883778, type metadata accessor for FormatVersioningMode);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v35 - v22;
  v25 = *(v24 + 56);
  sub_1D60DB808(a1, &v35 - v22, type metadata accessor for FormatVersioningMode);
  sub_1D60DB808(a2, &v23[v25], type metadata accessor for FormatVersioningMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D60DB808(v23, v19, type metadata accessor for FormatVersioningMode);
    if (!swift_getEnumCaseMultiPayload())
    {
      v32 = v35;
      v31 = v36;
      (*(v35 + 32))(v11, &v23[v25], v36);
      v29 = sub_1D725BCBC();
      v33 = *(v32 + 8);
      v33(v11, v31);
      v33(v19, v31);
      goto LABEL_12;
    }

    v15 = v19;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D60DB808(v23, v15, type metadata accessor for FormatVersioningMode);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = v35;
      v27 = v36;
      (*(v35 + 32))(v7, &v23[v25], v36);
      v29 = sub_1D725BCBC();
      v30 = *(v28 + 8);
      v30(v7, v27);
      v30(v15, v27);
LABEL_12:
      sub_1D60DB8C4(v23, type metadata accessor for FormatVersioningMode);
      return v29 & 1;
    }

LABEL_7:
    (*(v35 + 8))(v15, v36);
LABEL_10:
    sub_1D60DC01C(v23, &qword_1EC883778, type metadata accessor for FormatVersioningMode);
    v29 = 0;
    return v29 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_10;
  }

  sub_1D60DB8C4(v23, type metadata accessor for FormatVersioningMode);
  v29 = 1;
  return v29 & 1;
}

unint64_t sub_1D60DAF7C()
{
  result = qword_1EC883698;
  if (!qword_1EC883698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883698);
  }

  return result;
}

uint64_t sub_1D60DAFD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8NewsFeed29FormatVersioningModeSelectionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D725BD1C();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v46, v8);
  v45 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v44 = (&v43 - v12);
  v13 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v43 - v19);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = (&v43 - v23);
  sub_1D60DBFBC(0, &qword_1EC883770, type metadata accessor for FormatVersioningModeSelection);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v43 - v27;
  v30 = *(v29 + 56);
  sub_1D60DB808(a1, &v43 - v27, type metadata accessor for FormatVersioningModeSelection);
  sub_1D60DB808(a2, &v28[v30], type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_36;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_36;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D60DB808(v28, v24, type metadata accessor for FormatVersioningModeSelection);
    if (!swift_getEnumCaseMultiPayload())
    {
      v39 = v44;
      sub_1D60DB924(&v28[v30], v44, type metadata accessor for FormatVersioningModeRelease);
      v40 = *v24 == *v39 && v24[1] == v39[1];
      if (v40 || (sub_1D72646CC()) && (sub_1D725BCBC())
      {
        sub_1D60DB8C4(v39, type metadata accessor for FormatVersioningModeRelease);
        v34 = v24;
        goto LABEL_35;
      }

      sub_1D60DB8C4(v39, type metadata accessor for FormatVersioningModeRelease);
      v42 = v24;
      goto LABEL_40;
    }

    sub_1D60DB8C4(v24, type metadata accessor for FormatVersioningModeRelease);
LABEL_26:
    sub_1D60DC01C(v28, &qword_1EC883770, type metadata accessor for FormatVersioningModeSelection);
LABEL_27:
    v37 = 0;
    return v37 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D60DB808(v28, v20, type metadata accessor for FormatVersioningModeSelection);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v45;
      sub_1D60DB924(&v28[v30], v45, type metadata accessor for FormatVersioningModeRelease);
      v33 = *v20 == *v32 && v20[1] == v32[1];
      if (v33 || (sub_1D72646CC()) && (sub_1D725BCBC())
      {
        sub_1D60DB8C4(v32, type metadata accessor for FormatVersioningModeRelease);
        v34 = v20;
LABEL_35:
        sub_1D60DB8C4(v34, type metadata accessor for FormatVersioningModeRelease);
LABEL_36:
        sub_1D60DB8C4(v28, type metadata accessor for FormatVersioningModeSelection);
        v37 = 1;
        return v37 & 1;
      }

      sub_1D60DB8C4(v32, type metadata accessor for FormatVersioningModeRelease);
      v42 = v20;
LABEL_40:
      sub_1D60DB8C4(v42, type metadata accessor for FormatVersioningModeRelease);
      sub_1D60DB8C4(v28, type metadata accessor for FormatVersioningModeSelection);
      goto LABEL_27;
    }

    sub_1D60DB8C4(v20, type metadata accessor for FormatVersioningModeRelease);
    goto LABEL_26;
  }

  sub_1D60DB808(v28, v16, type metadata accessor for FormatVersioningModeSelection);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v47 + 8))(v16, v48);
    goto LABEL_26;
  }

  v36 = v47;
  v35 = v48;
  (*(v47 + 32))(v7, &v28[v30], v48);
  v37 = sub_1D725BCBC();
  v38 = *(v36 + 8);
  v38(v7, v35);
  v38(v16, v35);
  sub_1D60DB8C4(v28, type metadata accessor for FormatVersioningModeSelection);
  return v37 & 1;
}

void sub_1D60DB624(uint64_t a1)
{
  if (!qword_1EC8836A8)
  {
    v2 = sub_1D725BD1C();
    v3 = sub_1D60DAFD0(&qword_1EC8836B0, MEMORY[0x1E69D6B38], &protocol conformance descriptor for Version);
    v5 = type metadata accessor for FormatValue(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC8836A8);
    }
  }
}

unint64_t sub_1D60DB6D8()
{
  result = qword_1EC8836B8;
  if (!qword_1EC8836B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8836B8);
  }

  return result;
}

unint64_t sub_1D60DB74C()
{
  result = qword_1EC8836D8;
  if (!qword_1EC8836D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8836D8);
  }

  return result;
}

void sub_1D60DB7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D60DB808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D60DB870()
{
  result = qword_1EC8836E0;
  if (!qword_1EC8836E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8836E0);
  }

  return result;
}

uint64_t sub_1D60DB8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D60DB924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D60DB9D8(__n128 a1)
{
  result = qword_1EC883718;
  if (!qword_1EC883718)
  {
    sub_1D60DBA60(255, &qword_1EC883720, type metadata accessor for FormatVersioningModeSelection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883718);
  }

  return result;
}

void sub_1D60DBA60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D60DBAEC(uint64_t a1)
{
  result = sub_1D725BD1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D60DBB68(uint64_t a1)
{
  type metadata accessor for FormatVersioningModeRelease(319);
  if (v1 <= 0x3F)
  {
    sub_1D5D2C0E8(319, &qword_1EDF178D0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1D60DBC08()
{
  result = qword_1EC883728;
  if (!qword_1EC883728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883728);
  }

  return result;
}

unint64_t sub_1D60DBC60()
{
  result = qword_1EC883730;
  if (!qword_1EC883730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883730);
  }

  return result;
}

unint64_t sub_1D60DBCB8()
{
  result = qword_1EC883738;
  if (!qword_1EC883738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883738);
  }

  return result;
}

unint64_t sub_1D60DBD10()
{
  result = qword_1EC883740;
  if (!qword_1EC883740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883740);
  }

  return result;
}

unint64_t sub_1D60DBD68()
{
  result = qword_1EC883748;
  if (!qword_1EC883748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883748);
  }

  return result;
}

unint64_t sub_1D60DBDC0()
{
  result = qword_1EC883750;
  if (!qword_1EC883750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883750);
  }

  return result;
}

unint64_t sub_1D60DBE14()
{
  result = qword_1EC883758;
  if (!qword_1EC883758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883758);
  }

  return result;
}

void sub_1D60DBE68(uint64_t a1)
{
  if (!qword_1EC883760)
  {
    type metadata accessor for FormatVersioningModeSelection(255);
    sub_1D60DAFD0(&unk_1EC8858D0, type metadata accessor for FormatVersioningModeSelection, &protocol conformance descriptor for FormatVersioningModeSelection);
    v1 = sub_1D725986C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883760);
    }
  }
}

unint64_t sub_1D60DBEFC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D60DBF48()
{
  result = qword_1EC883768;
  if (!qword_1EC883768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883768);
  }

  return result;
}

void sub_1D60DBFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D60DC01C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D60DBFBC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D60DC0B0(void *a1)
{
  v3 = v1;
  sub_1D60DFD44(0, &qword_1EC883830, sub_1D60DFCF0, &type metadata for A12_V17.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60DFCF0();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D60DFDAC(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D60DC2F8(uint64_t a1)
{
  v2 = sub_1D60DFCF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60DC334(uint64_t a1)
{
  v2 = sub_1D60DFCF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D60DC370@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D60DF8D0(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D60DC3D0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D60DF620();

  return sub_1D725A24C();
}

uint64_t sub_1D60DC44C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D60DFD44(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D60DC508(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v119 = a2;
  v136 = a1;
  v108 = a3;
  v6 = type metadata accessor for FeedHeadline(0);
  v120 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v123 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v118 = &v107 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v124 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v121 = &v107 - v17;
  v18 = sub_1D725895C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for GroupLayoutContext(0);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116, v23);
  v117 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v107 - v27;
  v113 = &v107 - v27;
  v122 = type metadata accessor for GroupLayoutBindingContext(0);
  v29 = *(v122 - 1);
  MEMORY[0x1EEE9AC00](v122, v30);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v5;
  v112 = *v5;
  v34 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  sub_1D5BE3ED8(v136, v32, type metadata accessor for GroupLayoutBindingContext);
  v114 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v119, v28, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v111 = sub_1D725893C();
  v110 = v35;
  (*(v19 + 8))(v22, v18);
  v134 = &type metadata for A12_V17;
  v36 = sub_1D5ECEC10();
  v135 = v36;
  LOBYTE(v132) = v33;
  *(&v132 + 1) = v34;
  v133 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v37 = swift_allocObject();
  v38 = v34;
  sub_1D5BEE8A0(v34, v5);
  v125[0] = sub_1D7264C5C();
  v125[1] = v39;
  v130 = 95;
  v131 = 0xE100000000000000;
  v128 = 45;
  v129 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v40 = sub_1D7263A6C();
  v42 = v41;
  v43 = v117;

  *(v37 + 16) = v40;
  *(v37 + 24) = v42;
  v44 = (v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v45 = v110;
  *v44 = v111;
  v44[1] = v45;
  sub_1D5B68374(&v132, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v46 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v32, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v29 + 56))(v37 + v46, 0, 1, v122);
  v47 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v113, v37 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  v48 = *(v115 + 56);
  v115 = v37;
  v48(v37 + v47, 0, 1, v116);
  __swift_destroy_boxed_opaque_existential_1(&v132);
  v134 = &type metadata for A12_V17;
  v135 = v36;
  LOBYTE(v132) = v112;
  v49 = v38;
  *(&v132 + 1) = v38;
  v133 = v5;
  sub_1D5BE3ED8(v119, v43, v114);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  v119 = v50;
  inited = swift_initStackObject();
  v52 = MEMORY[0x1E69E7CC0];
  v116 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v53 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v49, v5);
  v54 = sub_1D5C0F8FC(0, 1, 1, v52);
  v56 = *(v54 + 16);
  v55 = *(v54 + 24);
  v57 = (v56 + 1);
  if (v56 >= v55 >> 1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    *(v54 + 16) = v57;
    v58 = v54 + 16 * v56;
    *(v58 + 32) = sub_1D63106DC;
    *(v58 + 40) = 0;
    *v53 = v54;
    swift_endAccess();
    v56 = v122[14];
    v59 = v136;
    v60 = *&v136[v56];
    if (v60[2])
    {
      v61 = sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0);
      if (v62)
      {
        v60 = *&v60[7][8 * v61];

        v57 = sub_1D5C14D80(v63);

        if (v57)
        {
          break;
        }
      }
    }

    if (qword_1F5111798)
    {
      v125[0] = &unk_1F5111778;
      v4 = v109;
      sub_1D5E239F4(v125);
      if (v4)
      {
        goto LABEL_75;
      }

      v67 = *(v125[0] + 2);
      if (v67)
      {
        v68 = *(v125[0] + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v69, "FeedHeadline");
        v69[13] = 0;
        *(v69 + 7) = -5120;
        *(v69 + 2) = 0;
        *(v69 + 3) = 0;
        *(v69 + 4) = 4;
        *(v69 + 5) = v68;
        *(v69 + 6) = 0;
        *(v69 + 7) = 0;
        v69[64] = 0;
        swift_willThrow();
        goto LABEL_64;
      }

      __break(1u);
LABEL_69:
      v57 = sub_1D5C0F8FC((v67 > 1), v37, 1, v57);
      goto LABEL_30;
    }

    v42 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v77 = swift_initStackObject();
    v124 = v77;
    *(v77 + 16) = v52;
    v60 = (v77 + 16);
    swift_beginAccess();
    v57 = sub_1D5C0F8FC(0, 1, 1, v52);
    v54 = *(v57 + 2);
    v67 = *(v57 + 3);
    v37 = v54 + 1;
    if (v54 >= v67 >> 1)
    {
      goto LABEL_69;
    }

LABEL_30:
    *(v57 + 2) = v37;
    v78 = &v57[16 * v54];
    *(v78 + 4) = sub_1D63106DC;
    *(v78 + 5) = 0;
    *v60 = v57;
    swift_endAccess();
    if (!*(*&v59[v56] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v79 & 1) == 0) || (v80 = , v37 = sub_1D5C14D80(v80), , !v37))
    {
      if (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqzq_s64(xmmword_1F51117C0), vceqzq_s64(unk_1F51117D0)))))
      {

        v85 = MEMORY[0x1E69E7CC0];
LABEL_56:
        v125[0] = v42;
        sub_1D5C122E4(v85);
        v99 = v125[0];
        v100 = type metadata accessor for A12_V17.Bound(0);
        v101 = v108;
        v108[3] = v100;
        v101[4] = sub_1D60DFDAC(&qword_1EC883790, type metadata accessor for A12_V17.Bound, &unk_1D7299510);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v101);
        *boxed_opaque_existential_1 = v115;
        sub_1D5B63F14(&v132, (boxed_opaque_existential_1 + 1));
        sub_1D5BDA904(v43, boxed_opaque_existential_1 + *(v100 + 24), type metadata accessor for GroupLayoutContext);
        *(boxed_opaque_existential_1 + *(v100 + 28)) = v99;
        return;
      }

      v125[0] = &unk_1F51117A0;
      v4 = v109;
      sub_1D5E239F4(v125);
      if (v4)
      {
        goto LABEL_75;
      }

      if (!*(v125[0] + 2))
      {
        goto LABEL_71;
      }

      v86 = *(v125[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v87, "FeedHeadline");
      v87[13] = 0;
      *(v87 + 7) = -5120;
      *(v87 + 2) = 0;
      *(v87 + 3) = 0;
      *(v87 + 4) = 0;
      *(v87 + 5) = v86;
      *(v87 + 6) = 0;
      *(v87 + 7) = 0;
      v87[64] = 0;
      swift_willThrow();
LABEL_64:

      sub_1D5BE792C(v43, type metadata accessor for GroupLayoutContext);
      __swift_destroy_boxed_opaque_existential_1(&v132);
      return;
    }

    v121 = v42;
    v43 = *(v37 + 16);
    if (!v43)
    {
      v57 = MEMORY[0x1E69E7CC0];
LABEL_48:
      if ((*v59 & 1) == 0)
      {

        sub_1D62F071C(v57);
        v89 = v88;

        v57 = v89;
      }

      v42 = v121;
      v90 = *&v59[v122[18]];
      v91 = *&v59[v122[19]];
      if (__OFSUB__(v90, v91))
      {
        goto LABEL_72;
      }

      v92 = sub_1D5C0FAD4(v57, v90 - v91);
      v93 = sub_1D5C11E10(&unk_1F51117A0, v92, v37);

      if (v93)
      {

        strcpy(v125, "FeedHeadline");
        BYTE5(v125[1]) = 0;
        HIWORD(v125[1]) = -5120;
        v126 = 0;
        v127 = 0;

        v95 = sub_1D5C107C4(v94);

        sub_1D5BDACA8(v125, v95);
        swift_setDeallocating();

        v85 = v93;
LABEL_55:
        v43 = v117;
        goto LABEL_56;
      }

      v96 = sub_1D5C11E10(&unk_1F51117A0, v57, v37);

      if (v96)
      {
        strcpy(v125, "FeedHeadline");
        BYTE5(v125[1]) = 0;
        HIWORD(v125[1]) = -5120;
        v126 = 0;
        v127 = 0;

        v98 = sub_1D5C107C4(v97);

        sub_1D5BDACA8(v125, v98);
        swift_setDeallocating();

        v85 = v96;
        goto LABEL_55;
      }

      v125[0] = &unk_1F51117A0;
      v4 = v109;
      sub_1D5E239F4(v125);
      if (v4)
      {
        goto LABEL_75;
      }

      v43 = v117;
      if (!*(v125[0] + 2))
      {
        goto LABEL_74;
      }

      v105 = *(v125[0] + 4);

      sub_1D5ED8048();
      swift_allocError();
      strcpy(v106, "FeedHeadline");
      v106[13] = 0;
      *(v106 + 7) = -5120;
      *(v106 + 2) = 0;
      *(v106 + 3) = 0;
      *(v106 + 4) = 0;
      *(v106 + 5) = v105;
      *(v106 + 6) = 0;
      *(v106 + 7) = 0;
      v106[64] = 0;
      swift_willThrow();
      goto LABEL_63;
    }

    v42 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    v53 = v120;
    while (1)
    {
      v55 = *(v37 + 16);
      if (v42 >= v55)
      {
        break;
      }

      v81 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v52 = *(v53 + 72);
      v82 = v118;
      sub_1D5BE3ED8(v37 + v81 + v52 * v42, v118, type metadata accessor for FeedHeadline);
      sub_1D5BDA904(v82, v123, type metadata accessor for FeedHeadline);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v57;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D5C0F91C(0, *(v57 + 2) + 1, 1);
        v53 = v120;
        v57 = v125[0];
      }

      v54 = *(v57 + 2);
      v84 = *(v57 + 3);
      v56 = v54 + 1;
      if (v54 >= v84 >> 1)
      {
        sub_1D5C0F91C((v84 > 1), v54 + 1, 1);
        v53 = v120;
        v57 = v125[0];
      }

      ++v42;
      *(v57 + 2) = v56;
      sub_1D5BDA904(v123, &v57[v81 + v54 * v52], type metadata accessor for FeedHeadline);
      v59 = v136;
      if (v43 == v42)
      {
        goto LABEL_48;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    v54 = sub_1D5C0F8FC((v55 > 1), v57, 1, v54);
  }

  v114 = v56;
  v52 = *(v57 + 2);
  if (v52)
  {
    v43 = 0;
    v56 = MEMORY[0x1E69E7CC0];
    v53 = v120;
    v54 = v121;
    while (1)
    {
      v55 = *(v57 + 2);
      if (v43 >= v55)
      {
        break;
      }

      v64 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v42 = *(v53 + 72);
      sub_1D5BE3ED8(&v57[v64 + v42 * v43], v54, type metadata accessor for FeedHeadline);
      if ((*(v54 + 32) & 4) != 0)
      {
        sub_1D5BDA904(v54, v124, type metadata accessor for FeedHeadline);
        v65 = swift_isUniquelyReferenced_nonNull_native();
        v125[0] = v56;
        if ((v65 & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v56 + 16) + 1, 1);
          v53 = v120;
          v56 = v125[0];
        }

        v37 = *(v56 + 16);
        v66 = *(v56 + 24);
        if (v37 >= v66 >> 1)
        {
          sub_1D5C0F91C((v66 > 1), v37 + 1, 1);
          v53 = v120;
          v56 = v125[0];
        }

        *(v56 + 16) = v37 + 1;
        sub_1D5BDA904(v124, v56 + v64 + v37 * v42, type metadata accessor for FeedHeadline);
        v54 = v121;
      }

      else
      {
        sub_1D5BE792C(v54, type metadata accessor for FeedHeadline);
      }

      if (v52 == ++v43)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_66;
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v59 = v136;
  if ((*v136 & 1) == 0)
  {

    sub_1D62F071C(v56);
    v71 = v70;

    v56 = v71;
  }

  v43 = v117;
  v52 = MEMORY[0x1E69E7CC0];
  v72 = *&v59[v122[18]];
  v73 = *&v59[v122[19]];
  if (!__OFSUB__(v72, v73))
  {
    v74 = sub_1D5C0FAD4(v56, v72 - v73);
    v42 = sub_1D5C11E10(&unk_1F5111778, v74, v57);

    if (v42)
    {
    }

    else
    {
      v42 = sub_1D5C11E10(&unk_1F5111778, v56, v57);

      if (!v42)
      {
        v125[0] = &unk_1F5111778;
        v4 = v109;
        sub_1D5E239F4(v125);
        if (v4)
        {
          goto LABEL_75;
        }

        if (!*(v125[0] + 2))
        {
          goto LABEL_73;
        }

        v103 = *(v125[0] + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v104, "FeedHeadline");
        v104[13] = 0;
        *(v104 + 7) = -5120;
        *(v104 + 2) = 0;
        *(v104 + 3) = 0;
        *(v104 + 4) = 4;
        *(v104 + 5) = v103;
        *(v104 + 6) = 0;
        *(v104 + 7) = 0;
        v104[64] = 0;
        swift_willThrow();
LABEL_63:
        swift_setDeallocating();
        goto LABEL_64;
      }
    }

    strcpy(v125, "FeedHeadline");
    BYTE5(v125[1]) = 0;
    HIWORD(v125[1]) = -5120;
    v126 = 0;
    v127 = 0;

    v76 = sub_1D5C107C4(v75);

    sub_1D5BDACA8(v125, v76);
    swift_setDeallocating();

    v56 = v114;
    goto LABEL_29;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:

  __break(1u);
}

void sub_1D60DD754(_BYTE *a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  *&v41 = sub_1D725A36C();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5ED811C(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  v8 = type metadata accessor for A12_V17.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(v9 + *(v10 + 40));
  v12 = *(v11 + 16);
  v13 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v12 + 16, v48);
  sub_1D5B68374(v12 + 56, v47);
  v14 = v13 * *(v12 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  v15 = swift_initStackObject();
  sub_1D5B63F14(v48, v15 + 16);
  sub_1D5B63F14(v47, v15 + 56);
  *(v15 + 96) = v14;
  LOBYTE(v46[0]) = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v46, (inited + 32));
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v15 + 16));
  __swift_destroy_boxed_opaque_existential_1((v15 + 56));
  v16 = *(v11 + 16);
  sub_1D5B68374(v16 + 16, v47);
  sub_1D5B68374(v16 + 56, v46);
  v17 = v13 * *(v16 + 96);
  v18 = swift_initStackObject();
  sub_1D5B63F14(v47, v18 + 16);
  sub_1D5B63F14(v46, v18 + 56);
  *(v18 + 96) = v17;
  v45[0] = 2;
  FeedLayoutStylerFactory.styler(withHeading:)(v45, v48);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v18 + 16));
  __swift_destroy_boxed_opaque_existential_1((v18 + 56));
  v19 = sub_1D6F50B74(v48, *(*(v2 + *(v8 + 28)) + 16) - 1);
  *&v48[0] = inited;
  sub_1D698609C(v19);
  v20 = *&v48[0];
  v42 = v2;
  v44[2] = v2;

  v22 = sub_1D6310828(v21, v20, sub_1D60DF5BC, v44);

  v23 = *(v22 + 16);
  if (v23)
  {
    v37 = (2 * v23) | 1;
    v38 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    sub_1D5EC2DC4(v22, v22 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), 1, v37);
    v24 = v39;
  }

  else
  {

    v24 = v22;
  }

  *&v48[0] = v24;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D60DF67C(&qword_1EC880610, MEMORY[0x1E69E6340]);
  sub_1D7262C1C();

  v25 = *MEMORY[0x1E69D7130];
  v26 = sub_1D7259D1C();
  (*(*(v26 - 8) + 104))(v6, v25, v26);
  v27 = (*(v3 + 104))(v6, *MEMORY[0x1E69D7370], v41);
  MEMORY[0x1EEE9AC00](v27, v28);
  sub_1D60DF73C(0, &qword_1EC8837B0, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  sub_1D725A4CC();

  sub_1D725A4DC();
  v29 = v49;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D60DF67C(&qword_1EDF1B248, MEMORY[0x1E69E6328]);
  v30 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v40 = v48[1];
  v41 = v48[0];
  *&v48[0] = v22;
  *&v47[0] = v29;
  MEMORY[0x1EEE9AC00](v30, v31);

  v32 = sub_1D725C00C();

  v33 = v43;
  *v43 = 0;
  v34 = v41;
  *(v33 + 24) = v40;
  *(v33 + 8) = v34;
  *&v48[0] = v32;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v35 = sub_1D72623BC();

  v36 = MEMORY[0x1E69E7CC0];
  *(v33 + 5) = v35;
  *(v33 + 6) = v36;
}

uint64_t sub_1D60DDDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v10, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v14);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v11, v10, v14, a4);
}

uint64_t sub_1D60DDE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D60DFD44(0, &qword_1EC8837C8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D74B0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16[-v10];
  v19 = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = 12;
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69D7490], v7);
  v17 = a2;
  v18 = a3;
  v13 = MEMORY[0x1E69D7150];
  sub_1D60DF73C(0, &qword_1EC8837D0, MEMORY[0x1E69D7150]);
  sub_1D60DF6F8(&qword_1EC8837D8, &qword_1EC8837D0, v13, MEMORY[0x1E69D7158], v14);
  sub_1D7259A2C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D60DE064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v71 = a3;
  sub_1D60DFD44(0, &qword_1EC8837C8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v55 - v8);
  v75 = a1;
  v10 = sub_1D725994C();
  v11 = swift_allocBox();
  v12 = *(v10 - 8);
  v13 = *(v12 + 104);
  v67 = *MEMORY[0x1E69D6F50];
  v68 = v10;
  v65 = v12 + 104;
  v66 = v13;
  v13(v14);
  *v9 = v11;
  v15 = *MEMORY[0x1E69D73C0];
  v16 = v6 + 104;
  v69 = *(v6 + 104);
  v64 = v15;
  v69(v9);
  v17 = MEMORY[0x1E69D6F38];
  sub_1D60DF73C(0, &qword_1EC8837E0, MEMORY[0x1E69D6F38]);
  v56 = v18;
  v73 = sub_1D60DF6F8(&qword_1EC8837E8, &qword_1EC8837E0, v17, MEMORY[0x1E69D6F40], v19);
  sub_1D7259A9C();
  v21 = *(v6 + 8);
  v20 = v6 + 8;
  v21(v9, v5);
  v22 = a1;
  v75 = a1;
  sub_1D60DF7C0(0);
  v24 = v23;
  v25 = swift_allocBox();
  v27 = v26;
  v28 = *(v24 + 48);
  *v26 = 7;
  v29 = *MEMORY[0x1E69D7348];
  v30 = sub_1D725A34C();
  v31 = v27 + v28;
  v32 = v21;
  (*(*(v30 - 8) + 104))(v31, v29, v30);
  *v9 = v25;
  v33 = *MEMORY[0x1E69D73E0];
  v63 = v16;
  (v69)(v9, v33, v5);
  v34 = v56;
  v74 = v70;
  sub_1D72599EC();
  v35 = v5;
  result = (v21)(v9, v5);
  v37 = *(v71 + 16);
  if (v37)
  {
    v38 = (v71 + 32);
    v59 = *MEMORY[0x1E69D74A8];
    v58 = *MEMORY[0x1E69D7098];
    v57 = xmmword_1D7273AE0;
    v61 = v5;
    v62 = v20;
    v60 = v22;
    v72 = v32;
    do
    {
      v39 = *v38++;
      v70 = v39;
      v71 = v37;
      v75 = v22;
      v40 = v68;
      v41 = swift_allocBox();
      v66(v42, v67, v40);
      *v9 = v41;
      v43 = v34;
      v44 = v69;
      (v69)(v9, v64, v35);

      sub_1D7259A9C();
      v72(v9, v35);
      v75 = v22;
      (v44)(v9, v59, v35);
      sub_1D60DF830(0);
      sub_1D60DFD44(0, &qword_1EC8837F8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D70D8]);
      v46 = v45;
      v47 = v9;
      v48 = *(v45 - 8);
      v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = v57;
      v51 = v46;
      v34 = v43;
      v52 = (*(v48 + 104))(v50 + v49, v58, v51);
      v9 = v47;
      MEMORY[0x1EEE9AC00](v52, v53);
      sub_1D72599EC();
      v54 = v72;

      v22 = v60;
      v35 = v61;
      result = v54(v47);
      v37 = v71 - 1;
    }

    while (v71 != 1);
  }

  return result;
}

uint64_t sub_1D60DE63C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60DFD44(0, &qword_1EC8837C8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D74B0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v28 - v12;
  v31 = a1;
  swift_getKeyPath();
  result = (*(v10 + 104))(v13, *MEMORY[0x1E69D7460], v9);
  if (*(a2 + 16))
  {
    v15 = *(type metadata accessor for HeadlineViewLayout.Context(0) - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = v4[5];
    v18 = *MEMORY[0x1E69D7348];
    v19 = sub_1D725A34C();
    v29 = v13;
    v30 = v9;
    v20 = v10;
    v21 = v19;
    v22 = *(v19 - 8);
    (*(v22 + 104))(&v7[v17], v18, v19);
    (*(v22 + 56))(&v7[v17], 0, 1, v21);
    v23 = *MEMORY[0x1E69DDC70];
    *v7 = 0;
    *&v7[v4[6]] = 0;
    *&v7[v4[7]] = v23;
    v24 = v23;
    sub_1D61F750C(a2 + v16, v7);
    sub_1D5BE792C(v7, type metadata accessor for HeadlineViewLayout.Options);
    v25 = MEMORY[0x1E69D6F38];
    sub_1D60DF73C(0, &qword_1EC8837E0, MEMORY[0x1E69D6F38]);
    sub_1D60DF6F8(&qword_1EC8837E8, &qword_1EC8837E0, v25, MEMORY[0x1E69D6F40], v26);
    sub_1D5BE8850();
    v27 = v29;
    sub_1D7259A4C();

    return (*(v20 + 8))(v27, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D60DE99C(uint64_t a1, uint64_t a2)
{
  sub_1D60DFD44(0, &qword_1EC8837C8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v22 - v8);
  v10 = type metadata accessor for HeadlineViewLayout.Context(0) - 8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = v28 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v27 = *(v12 + 72);
    v26 = *MEMORY[0x1E69D7490];
    v24 = (v6 + 8);
    v25 = (v6 + 104);
    v23 = v5;
    do
    {
      sub_1D5BE3ED8(v16, v14, type metadata accessor for HeadlineViewLayout.Context);
      v29 = a1;
      v17 = swift_allocObject();
      *(v17 + 16) = 6;
      *v9 = v17;
      v18 = (*v25)(v9, v26, v5);
      MEMORY[0x1EEE9AC00](v18, v19);
      v20 = MEMORY[0x1E69D6F38];
      sub_1D60DF73C(0, &qword_1EC8837E0, MEMORY[0x1E69D6F38]);
      sub_1D60DF6F8(&qword_1EC8837E8, &qword_1EC8837E0, v20, MEMORY[0x1E69D6F40], v21);
      sub_1D7259A2C();
      v5 = v23;
      (*v24)(v9, v23);
      sub_1D5BE792C(v14, type metadata accessor for HeadlineViewLayout.Context);
      v16 += v27;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_1D60DECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v55 = sub_1D725A36C();
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v5);
  v57 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D725A19C();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v7);
  v50 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HeadlineViewLayout.Context(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (&KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D60DFD44(0, &qword_1EC8837C8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D74B0]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &KeyPath - v22;
  v59 = a1;
  KeyPath = swift_getKeyPath();
  v24 = *MEMORY[0x1E69D7460];
  v51 = v20;
  v25 = *(v20 + 104);
  v49 = v23;
  v54 = v19;
  v25(v23, v24, v19);
  v26 = 0;
  v27 = *(a3 + 16);
  while (v27 != v26)
  {
    sub_1D5BE3ED8(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26++, v13, type metadata accessor for HeadlineViewLayout.Context);
    v28 = *&v13[*(v9 + 20) + 32];
    sub_1D5BE792C(v13, type metadata accessor for HeadlineViewLayout.Context);
    if ((v28 & 4) == 0)
    {
      v29 = 2;
      goto LABEL_6;
    }
  }

  v29 = 0;
LABEL_6:
  v30 = v14[5];
  v31 = *MEMORY[0x1E69D7348];
  v32 = sub_1D725A34C();
  v33 = *(v32 - 8);
  (*(v33 + 104))(v17 + v30, v31, v32);
  (*(v33 + 56))(v17 + v30, 0, 1, v32);
  v34 = MEMORY[0x1E69DDC70];
  *v17 = v29;
  *(v17 + v14[6]) = 5;
  v35 = *v34;
  *(v17 + v14[7]) = v35;
  v36 = qword_1EDF386E8;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = v50;
  sub_1D725972C();

  v41 = MEMORY[0x1EEE9AC00](v39, v40);
  v42 = v52;
  *(&KeyPath - 4) = v53;
  *(&KeyPath - 3) = v17;
  v47 = v38;
  (*(v42 + 104))(v57, *MEMORY[0x1E69D7378], v55, v41);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v56 + 8))(v38, v58);
  sub_1D5BE792C(v17, type metadata accessor for HeadlineViewLayout.Options);
  v43 = MEMORY[0x1E69D6F38];
  sub_1D60DF73C(0, &qword_1EC8837E0, MEMORY[0x1E69D6F38]);
  sub_1D60DF6F8(&qword_1EC8837E8, &qword_1EC8837E0, v43, MEMORY[0x1E69D6F40], v44);
  v47 = sub_1D5BE8850();
  v45 = v49;
  sub_1D7259A4C();

  return (*(v51 + 8))(v45, v54);
}

uint64_t sub_1D60DF304@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A12_V17.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D60DF418(uint64_t a1)
{
  *(a1 + 8) = sub_1D60DF448();
  result = sub_1D60DF49C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D60DF448()
{
  result = qword_1EC883780;
  if (!qword_1EC883780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883780);
  }

  return result;
}

unint64_t sub_1D60DF49C()
{
  result = qword_1EC883788;
  if (!qword_1EC883788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883788);
  }

  return result;
}

uint64_t type metadata accessor for A12_V17.Bound(uint64_t a1)
{
  result = qword_1EC883798;
  if (!qword_1EC883798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D60DF564(uint64_t a1)
{
  result = sub_1D60DFDAC(&qword_1EC8837A8, type metadata accessor for A12_V17.Bound, &unk_1D72994E8);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D60DF5CC()
{
  result = qword_1EC8837B8;
  if (!qword_1EC8837B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8837B8);
  }

  return result;
}

unint64_t sub_1D60DF620()
{
  result = qword_1EC8837C0;
  if (!qword_1EC8837C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8837C0);
  }

  return result;
}

uint64_t sub_1D60DF67C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5BD3920(255, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D60DF6F8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1D60DF73C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D60DF73C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A12_V17.Layout;
    v8[1] = &type metadata for A12_V17.Layout.Attributes;
    v8[2] = sub_1D60DF5CC();
    v8[3] = sub_1D60DF620();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D60DF7C0(uint64_t a1)
{
  if (!qword_1EDF1AC88)
  {
    sub_1D725A34C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF1AC88);
    }
  }
}

void sub_1D60DF830(uint64_t a1)
{
  if (!qword_1EC8837F0)
  {
    sub_1D60DFD44(255, &qword_1EC8837F8, sub_1D60DF5CC, &type metadata for A12_V17.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8837F0);
    }
  }
}

uint64_t sub_1D60DF8D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D60DFD44(0, &qword_1EC883820, sub_1D60DFCF0, &type metadata for A12_V17.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60DFCF0();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D60DFDAC(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D60DFB94()
{
  result = qword_1EC883800;
  if (!qword_1EC883800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883800);
  }

  return result;
}

unint64_t sub_1D60DFBEC()
{
  result = qword_1EC883808;
  if (!qword_1EC883808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883808);
  }

  return result;
}

unint64_t sub_1D60DFC44()
{
  result = qword_1EC883810;
  if (!qword_1EC883810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883810);
  }

  return result;
}

unint64_t sub_1D60DFC9C()
{
  result = qword_1EC883818;
  if (!qword_1EC883818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883818);
  }

  return result;
}

unint64_t sub_1D60DFCF0()
{
  result = qword_1EC883828;
  if (!qword_1EC883828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883828);
  }

  return result;
}

void sub_1D60DFD44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D60DFDAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D60DFE08()
{
  result = qword_1EC883838;
  if (!qword_1EC883838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883838);
  }

  return result;
}

unint64_t sub_1D60DFE60()
{
  result = qword_1EC883840;
  if (!qword_1EC883840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883840);
  }

  return result;
}

unint64_t sub_1D60DFEB8()
{
  result = qword_1EC883848;
  if (!qword_1EC883848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883848);
  }

  return result;
}

BOOL sub_1D60DFF0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  do
  {
    v5 = v1;
    v6 = v1-- != 0;
    if (!v6 || *v2 >> 60)
    {
      break;
    }

    v7 = *(*v2 + 16);
    swift_beginAccess();
    if (*(v7 + 76) >> 9 <= 0x7EuLL)
    {
      v8 = *(v7 + 72) | (*(v7 + 76) << 32);
      if ((v8 >> 45) - 1 >= 5)
      {
        v9 = v8 >> 45 == 6 && v8 == 0xC00000000000;
        v10 = v9 && *(v7 + 32) == 1;
        if (!v10 || (*(v7 + 48) | *(v7 + 40) | *(v7 + 56) | *(v7 + 64)) != 0)
        {
          break;
        }
      }
    }

    v4 = sub_1D60DFF0C(v3);

    v2 += 8;
  }

  while (!v4);
  return v5 != 0;
}

void sub_1D60E0028(void *a1, unint64_t a2, __n128 a3)
{
  v6 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v52 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  switch(a2 >> 60)
  {
    case 1uLL:
      v35 = swift_projectBox();
      sub_1D5EB9A4C(v35, v9, v36);
      LOBYTE(v55) = 1;
      sub_1D60E285C();
      v52 = 0uLL;
      sub_1D726443C();
      if (!v3)
      {
        v52 = xmmword_1D7279980;
        sub_1D5C75DC4(&qword_1EC8838D8, type metadata accessor for FormatDerivedDataOption, &unk_1D730EF9C);
        sub_1D726443C();
      }

      sub_1D60E13EC(v9, v37);
      goto LABEL_35;
    case 2uLL:
      v24 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v26 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *(v24 + 24);
      v27 = *(v24 + 32);
      LOBYTE(v55) = 2;
      v52 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (!v3)
      {
        *&v52 = v26;
        *(&v52 + 1) = v25;
        v53 = v27;
        v55 = xmmword_1D7279980;
        sub_1D60E2A54();
        sub_1D726443C();
      }

      (*(v56 + 8))(v14, v11);

      goto LABEL_33;
    case 3uLL:
      v28 = (a2 & 0xFFFFFFFFFFFFFFFLL);
      v30 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v29 = v28[3];
      v31 = v28[4];
      v32 = v28[5];
      LOBYTE(v55) = 3;
      v52 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (v3)
      {
        goto LABEL_29;
      }

      *&v52 = v30;
      *(&v52 + 1) = v29;
      v53 = v31;
      v54 = v32;
      v55 = xmmword_1D7279980;
      sub_1D60E2A00();
      goto LABEL_28;
    case 4uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v18 = 4;
      goto LABEL_31;
    case 5uLL:
      v38 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v40 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *(v38 + 24);
      v41 = *(v38 + 32);
      LOBYTE(v55) = 5;
      v52 = 0uLL;
      sub_1D6007D98(v40, v39, v41);
      sub_1D60E285C();
      sub_1D726443C();
      if (!v3)
      {
        *&v52 = v40;
        *(&v52 + 1) = v39;
        LOBYTE(v53) = v41;
        v55 = xmmword_1D7279980;
        sub_1D60E29AC();
        sub_1D726443C();
      }

      (*(v56 + 8))(v14, v11);
      sub_1D6007D9C(v40, v39, v41);
      return;
    case 6uLL:
      v43 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v42 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v44 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(v55) = 6;
      v52 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (!v3)
      {
        *&v52 = v43;
        *(&v52 + 1) = v42;
        LOBYTE(v53) = v44;
        v55 = xmmword_1D7279980;
        sub_1D60E2958();
        sub_1D726443C();
      }

      goto LABEL_32;
    case 7uLL:
      v34 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v55) = 7;
      v52 = 0uLL;
      sub_1D5CBA110(v34, v33);
      sub_1D60E285C();
      sub_1D726443C();
      if (!v3)
      {
        *&v52 = v34;
        *(&v52 + 1) = v33;
        v55 = xmmword_1D7279980;
        sub_1D5B4C410();
        sub_1D726443C();
      }

      (*(v56 + 8))(v14, v11);
      sub_1D5CBA0FC(v34, v33);
      return;
    case 8uLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v18 = 8;
      goto LABEL_31;
    case 9uLL:
      v19 = (a2 & 0xFFFFFFFFFFFFFFFLL);
      v21 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v20 = v19[3];
      v23 = v19[4];
      v22 = v19[5];
      LOBYTE(v55) = 9;
      v52 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (v3)
      {
        goto LABEL_29;
      }

      *&v52 = v21;
      *(&v52 + 1) = v20;
      v53 = v23;
      v54 = v22;
      v55 = xmmword_1D7279980;
      sub_1D60E2904();
      goto LABEL_28;
    case 0xAuLL:
      v45 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v47 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v46 = *(v45 + 24);
      v48 = *(v45 + 32);
      LOBYTE(v55) = 10;
      v52 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (v3)
      {
        goto LABEL_29;
      }

      *&v52 = v47;
      *(&v52 + 1) = v46;
      v53 = v48;
      v55 = xmmword_1D7279980;
      sub_1D60E28B0();
LABEL_28:
      sub_1D726443C();
LABEL_29:
      (*(v56 + 8))(v14, v11);

      goto LABEL_33;
    case 0xBuLL:
      v17 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v18 = 11;
LABEL_31:
      LOBYTE(v55) = v18;
      v52 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (v3)
      {
LABEL_32:
        (*(v56 + 8))(v14, v11);
LABEL_33:
      }

      else
      {
        *&v52 = v17;
        *(&v52 + 1) = v16;
        v55 = xmmword_1D7279980;
        sub_1D5C947A8(0, v49, v50, v51);
        sub_1D5C75DC4(&qword_1EDF12710, sub_1D5C947A8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726443C();

LABEL_35:
        (*(v56 + 8))(v14, v11);
      }

      return;
    case 0xCuLL:
      LOBYTE(v55) = 12;
      sub_1D60E285C();
      v52 = 0uLL;
      sub_1D726443C();
      goto LABEL_35;
    default:
      v15 = *(a2 + 16);
      LOBYTE(v55) = 0;
      v52 = 0uLL;
      sub_1D60E285C();

      sub_1D726443C();
      if (!v3)
      {
        *&v55 = v15;
        v52 = xmmword_1D7279980;
        sub_1D60E2AA8();
        sub_1D726443C();
      }

      (*(v56 + 8))(v14, v11);

      return;
  }
}

unint64_t sub_1D60E0930(char a1)
{
  result = 1752397168;
  switch(a1)
  {
    case 1:
      result = 0x4F656469766F7270;
      break;
    case 2:
      result = 0x42656469766F7270;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      result = 0x636E657265666572;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x696F706B61657262;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D60E0AA4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D60E0930(*a1);
  v5 = v4;
  if (v3 == sub_1D60E0930(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t sub_1D60E0B2C()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D60E0930(v1);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D60E0B90(uint64_t a1)
{
  sub_1D60E0930(*v1);
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D60E0BE4(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D60E0930(v2);
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D60E0C44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D60E1B90(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D60E0C74@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D60E0930(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D60E0D50@<X0>(unint64_t *a1@<X8>, void *a2@<X0>, __n128 a3@<Q0>)
{
  result = sub_1D60E1BDC(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D60E0DA4(unint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 28770;
  switch(a1 >> 60)
  {
    case 1uLL:
      v18 = swift_projectBox();
      sub_1D5EB9A4C(v18, v6, v19);
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      sub_1D7263D4C();

      v52 = 0x2074706F20636564;
      v53 = 0xEA0000000000202DLL;
      MEMORY[0x1DA6F9910](*v6, *(v6 + 1));
      MEMORY[0x1DA6F9910](2251552, 0xE300000000000000);
      v20 = *(v6 + 4);
      v21 = v6[40];
      v54 = *(v6 + 1);
      v55 = v20;
      LOBYTE(v56) = v21;
      v22 = FormatDerivedDataOptionType.description.getter();
      MEMORY[0x1DA6F9910](v22);

      v23.n128_f64[0] = MEMORY[0x1DA6F9910](23842, 0xE200000000000000);
      v24 = v52;
      sub_1D60E13EC(v6, v23);
      return v24;
    case 2uLL:
      v25 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v26 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      strcpy(&v54, "dec block - ");
      BYTE13(v54) = 0;
      HIWORD(v54) = -5120;

      MEMORY[0x1DA6F9910](v25, v26);

      goto LABEL_23;
    case 3uLL:
      v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      *&v54 = 0x2074706F20666572;
      *(&v54 + 1) = 0xEA0000000000202DLL;

      MEMORY[0x1DA6F9910](v13, v14);

      MEMORY[0x1DA6F9910](32, 0xE100000000000000);
      v52 = v15;
      sub_1D60E1398();
      v9 = sub_1D72644BC();
      v10 = v16;

      goto LABEL_22;
    case 4uLL:
      v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v54 = 0x2072747320666572;
      *(&v54 + 1) = 0xEB0000000022202DLL;

      MEMORY[0x1DA6F9910](v32, v33);

      MEMORY[0x1DA6F9910](34, 0xE100000000000000);
      goto LABEL_24;
    case 5uLL:
      v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v35 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v36 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v52 = 0;
      v53 = 0xE000000000000000;
      sub_1D6007D98(v34, v35, v36);
      MEMORY[0x1DA6F9910](0x656C696620666572, 0xEB00000000202D20);
      *&v54 = v34;
      *(&v54 + 1) = v35;
      LOBYTE(v55) = v36;
      sub_1D7263F9C();
      sub_1D6007D9C(v34, v35, v36);
      return v52;
    case 6uLL:
      v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;

      sub_1D7263D4C();

      strcpy(&v54, "ref block - ");
      BYTE13(v54) = 0;
      HIWORD(v54) = -5120;

      MEMORY[0x1DA6F9910](v27, v28);
      swift_bridgeObjectRelease_n();
      if (v29)
      {
        v30 = 0x73776F72687420;
      }

      else
      {
        v30 = 0;
      }

      if (v29)
      {
        v31 = 0xE700000000000000;
      }

      else
      {
        v31 = 0xE000000000000000;
      }

      MEMORY[0x1DA6F9910](v30, v31);
      goto LABEL_23;
    case 7uLL:
      v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      *&v54 = 0;
      *(&v54 + 1) = 0xE000000000000000;
      sub_1D5CBA110(v37, v38);
      MEMORY[0x1DA6F9910](0x6D65746920666572, 0xEB00000000202D20);
      sub_1D609C9E4(v37, v38);
      sub_1D5CBA0FC(v37, v38);
      goto LABEL_24;
    case 8uLL:
      v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v17 = 0x2E7320666572;
      goto LABEL_20;
    case 9uLL:
      v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v17 = 0x2E6220666572;
LABEL_20:
      v11 = v17 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
      v12 = 0xEC000000202D2067;
      goto LABEL_21;
    case 0xAuLL:
      v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v11 = 0x616D2E7320666572;
      v12 = 0xED0000202D206863;
      goto LABEL_21;
    case 0xBuLL:
      v9 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v11 = 0x6E662E6320666572;
      v12 = 0xEC000000202D2074;
LABEL_21:
      *&v54 = v11;
      *(&v54 + 1) = v12;

LABEL_22:
      MEMORY[0x1DA6F9910](v9, v10);
LABEL_23:

LABEL_24:
      result = v54;
      break;
    case 0xCuLL:
      return result;
    default:
      v8 = *(a1 + 16);
      swift_beginAccess();
      if (*(v8 + 76) >> 9 <= 0x7EuLL)
      {
        v39 = *(v8 + 72) | (*(v8 + 76) << 32);
        v41 = *(v8 + 56);
        v40 = *(v8 + 64);
        v43 = *(v8 + 40);
        v42 = *(v8 + 48);
        *&v54 = *(v8 + 32);
        v44 = v54;
        *(&v54 + 1) = v43;
        v55 = v42;
        v56 = v41;
        v57 = v40;
        v58 = v39;
        v59 = WORD2(v39);
        v50 = 0x202D20687370;
        v51 = 0xE600000000000000;

        sub_1D60E1448(v44, v43, v42, v41, v40, v39);
        v45 = sub_1D71F28AC();
        v47 = v46;
        v48 = sub_1D60E1478(v44, v43, v42, v41, v40, v39);
        MEMORY[0x1DA6F9910](v45, v47, v48);

        result = v50;
      }

      else
      {
        result = 6845296;
      }

      break;
  }

  return result;
}

unint64_t sub_1D60E1398()
{
  result = qword_1EC883850;
  if (!qword_1EC883850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883850);
  }

  return result;
}

uint64_t sub_1D60E13EC(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for FormatDerivedDataOption(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D60E1448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (((a6 >> 41) & 0x7F) != 0x7F)
  {
    return sub_1D60E145C(a1, a2, a3, a4, a5, a6);
  }

  return a1;
}

uint64_t sub_1D60E145C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = (a6 >> 45) & 7;
  if (v6 <= 5)
  {
  }

  return result;
}

double sub_1D60E1478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (((a6 >> 41) & 0x7F) != 0x7F)
  {
    return sub_1D60E148C(a1, a2, a3, a4, a5, a6);
  }

  return result;
}

double sub_1D60E148C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = (a6 >> 45) & 7;
  if (v6 <= 5)
  {
  }

  return result;
}

uint64_t sub_1D60E14A8(unint64_t a1, unint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v73[-v11];
  switch(a1 >> 60)
  {
    case 1uLL:
      if (a2 >> 60 != 1)
      {
        goto LABEL_81;
      }

      v50 = swift_projectBox();
      v51 = swift_projectBox();
      sub_1D5EB9A4C(v50, v12, v52);
      sub_1D5EB9A4C(v51, v8, v53);
      v17 = sub_1D69E18D4(v12, v8);
      sub_1D60E13EC(v8, v54);
      sub_1D60E13EC(v12, v55);
      return v17 & 1;
    case 2uLL:
      if (a2 >> 60 == 2)
      {
        v27 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v28 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v29 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v30 = a2 & 0xFFFFFFFFFFFFFFFLL;
        v31 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v32 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v33 = *(v30 + 32);
        v34 = v27 == v31 && v28 == v32;
        if (v34 || (sub_1D72646CC() & 1) != 0)
        {
          swift_beginAccess();
          v35 = v29[2];
          v74 = v29[1];
          v75 = v35;
          v76[0] = v29[3];
          *(v76 + 14) = *(v29 + 62);
          swift_beginAccess();
          v36 = v33[2];
          v77 = v33[1];
          v78 = v36;
          v79[0] = v33[3];
          *(v79 + 14) = *(v33 + 62);

          sub_1D5EB9AB0(&v74, v73);
          sub_1D5EB9AB0(&v77, v73);
          v37 = sub_1D6C4E038(&v74, &v77);
          sub_1D60E1A40(&v77);
          sub_1D60E1A40(&v74);

          if (v37)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_81;
    case 3uLL:
      if (a2 >> 60 != 3)
      {
        goto LABEL_81;
      }

      v38 = a1 & 0xFFFFFFFFFFFFFFFLL;
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v41 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v42 = *(v38 + 40);
      v43 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v44 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v46 = *(v43 + 32);
      v47 = *(v43 + 40);
      v48 = v39 == v44 && v40 == v45;
      if (!v48 && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_81;
      }

      v49 = sub_1D5E1E5A4(v41, v46);

      if ((v49 & 1) == 0 || v42 != v47)
      {
        goto LABEL_81;
      }

      goto LABEL_79;
    case 4uLL:
      if (a2 >> 60 != 4)
      {
        goto LABEL_81;
      }

      goto LABEL_64;
    case 5uLL:
      if (a2 >> 60 != 5)
      {
        goto LABEL_81;
      }

      v56 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
      {
        if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20) == 1)
        {
          if (v56 != 1)
          {
            goto LABEL_81;
          }
        }

        else if (v56 != 2)
        {
          goto LABEL_81;
        }
      }

      else if (*((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20))
      {
        goto LABEL_81;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) || *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) != *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
      {
        goto LABEL_78;
      }

      goto LABEL_79;
    case 6uLL:
      if (a2 >> 60 != 6)
      {
        goto LABEL_81;
      }

      v57 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v58 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v59 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v60 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v61 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v62 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v57 == v60 && v58 == v61)
      {
        if (v59 == v62)
        {
          goto LABEL_79;
        }
      }

      else if ((sub_1D72646CC() & 1) != 0 && ((v59 ^ v62) & 1) == 0)
      {
        goto LABEL_79;
      }

      goto LABEL_81;
    case 7uLL:
      if (a2 >> 60 != 7)
      {
        goto LABEL_81;
      }

      v77 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v74 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v17 = _s8NewsFeed14FormatItemKindO2eeoiySbAC_ACtFZ_0(&v77, &v74);
      return v17 & 1;
    case 8uLL:
      if (a2 >> 60 == 8)
      {
        goto LABEL_64;
      }

      goto LABEL_81;
    case 9uLL:
      if (a2 >> 60 != 9)
      {
        goto LABEL_81;
      }

      v18 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v21 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v20 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v22 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v23 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v25 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v24 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v26 = v18 == v22 && v19 == v23;
      if (!v26 && (sub_1D72646CC() & 1) == 0)
      {
        goto LABEL_81;
      }

      if (v20)
      {
        if (v24)
        {
          if (v21 == v25 && v20 == v24)
          {
            goto LABEL_79;
          }

LABEL_78:
          if (sub_1D72646CC())
          {
LABEL_79:
            v17 = 1;
            return v17 & 1;
          }
        }
      }

      else if (!v24)
      {
        goto LABEL_79;
      }

LABEL_81:
      v17 = 0;
      return v17 & 1;
    case 0xAuLL:
      if (a2 >> 60 != 10)
      {
        goto LABEL_81;
      }

      v64 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v65 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v66 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v67 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v68 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v69 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v70 = v64 == v67 && v65 == v68;
      if (!v70 && (sub_1D72646CC() & 1) == 0 || (sub_1D5BF1C0C(v66, v69) & 1) == 0)
      {
        goto LABEL_81;
      }

      goto LABEL_79;
    case 0xBuLL:
      if (a2 >> 60 != 11)
      {
        goto LABEL_81;
      }

LABEL_64:
      if (*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x10) && *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x18))
      {
        goto LABEL_79;
      }

      return sub_1D72646CC();
    case 0xCuLL:
      if (a2 != 0xC000000000000000)
      {
        goto LABEL_81;
      }

      goto LABEL_79;
    default:
      if (a2 >> 60)
      {
        goto LABEL_81;
      }

      v13 = *(a1 + 16);
      v14 = *(a2 + 16);
      swift_beginAccess();
      v15 = v13[2];
      v74 = v13[1];
      v75 = v15;
      v76[0] = v13[3];
      *(v76 + 14) = *(v13 + 62);
      swift_beginAccess();
      v16 = v14[2];
      v77 = v14[1];
      v78 = v16;
      v79[0] = v14[3];
      *(v79 + 14) = *(v14 + 62);

      sub_1D5EB9AB0(&v74, v73);
      sub_1D5EB9AB0(&v77, v73);
      v17 = sub_1D6C4E038(&v74, &v77);
      sub_1D60E1A40(&v77);
      sub_1D60E1A40(&v74);

      return v17 & 1;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed28FormatDerivedDataInstructionO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 12;
  }

  else
  {
    return *a1 >> 60;
  }
}

uint64_t sub_1D60E1AB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x74 && *(a1 + 8))
  {
    return (*a1 + 116);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x73)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D60E1B04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x73)
  {
    *result = a2 - 116;
    if (a3 >= 0x74)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x74)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1D60E1B54(void *result, uint64_t a2)
{
  if (a2 < 0xC)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (8 * (a2 - 12)) | 0xC000000000000000;
  }

  return result;
}

unint64_t sub_1D60E1B90(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1D60E1BDC(void *a1, __n128 a2)
{
  v4 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v55[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v55[-v12 - 16];
  v14 = a1[3];
  v58 = a1;
  v15 = __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D60E24FC();
    *v55 = 0uLL;
    sub_1D726431C();
    switch(v57)
    {
      case 1:
        *v55 = xmmword_1D7279980;
        sub_1D5C75DC4(&qword_1EC883890, type metadata accessor for FormatDerivedDataOption, &unk_1D730EFC4);
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v38 = swift_allocBox();
        sub_1D60E27A4(v7, v39, v40);
        v15 = v38 | 0x1000000000000000;
        break;
      case 2:
        v57 = xmmword_1D7279980;
        sub_1D60E26F4();
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v30 = *v55;
        v54 = *&v55[8];
        v31 = swift_allocObject();
        *(v31 + 16) = v30;
        *(v31 + 24) = v54;
        v15 = v31 | 0x2000000000000000;
        break;
      case 3:
        v57 = xmmword_1D7279980;
        sub_1D60E26A0();
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v32 = *v55;
        v33 = v56;
        v54 = *&v55[8];
        v34 = swift_allocObject();
        *(v34 + 16) = v32;
        *(v34 + 24) = v54;
        *(v34 + 40) = v33;
        v15 = v34 | 0x3000000000000000;
        break;
      case 4:
        sub_1D5C947A8(0, v16, v17, v18);
        v57 = xmmword_1D7279980;
        sub_1D5C75DC4(&qword_1EDF419A8, sub_1D5C947A8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v25 = *&v55[8];
        v24 = *v55;
        v26 = swift_allocObject();
        *(v26 + 16) = v24;
        *(v26 + 24) = v25;
        v15 = v26 | 0x4000000000000000;
        break;
      case 5:
        v57 = xmmword_1D7279980;
        sub_1D60E264C();
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v42 = *&v55[8];
        v41 = *v55;
        v43 = v55[16];
        v44 = swift_allocObject();
        *(v44 + 16) = v41;
        *(v44 + 24) = v42;
        *(v44 + 32) = v43;
        v15 = v44 | 0x5000000000000000;
        break;
      case 6:
        v57 = xmmword_1D7279980;
        sub_1D60E25F8();
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v46 = *&v55[8];
        v45 = *v55;
        v47 = v55[16];
        v48 = swift_allocObject();
        *(v48 + 16) = v45;
        *(v48 + 24) = v46;
        *(v48 + 32) = v47;
        v15 = v48 | 0x6000000000000000;
        break;
      case 7:
        v57 = xmmword_1D7279980;
        sub_1D5B4CCC0();
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v36 = *&v55[8];
        v35 = *v55;
        v37 = swift_allocObject();
        *(v37 + 16) = v35;
        *(v37 + 24) = v36;
        v15 = v37 | 0x7000000000000000;
        break;
      case 8:
        sub_1D5C947A8(0, v16, v17, v18);
        v57 = xmmword_1D7279980;
        sub_1D5C75DC4(&qword_1EDF419A8, sub_1D5C947A8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v52 = *&v55[8];
        v51 = *v55;
        v53 = swift_allocObject();
        *(v53 + 16) = v51;
        *(v53 + 24) = v52;
        v15 = v53 | 0x8000000000000000;
        break;
      case 9:
        v57 = xmmword_1D7279980;
        sub_1D60E25A4();
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v54 = *v55;
        v27 = *&v55[16];
        v28 = v56;
        v29 = swift_allocObject();
        *(v29 + 16) = v54;
        *(v29 + 32) = v27;
        *(v29 + 40) = v28;
        v15 = v29 | 0x9000000000000000;
        break;
      case 10:
        v57 = xmmword_1D7279980;
        sub_1D60E2550();
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v49 = *v55;
        v54 = *&v55[8];
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        *(v50 + 24) = v54;
        v15 = v50 | 0xA000000000000000;
        break;
      case 11:
        sub_1D5C947A8(0, v16, v17, v18);
        v57 = xmmword_1D7279980;
        sub_1D5C75DC4(&qword_1EDF419A8, sub_1D5C947A8, &protocol conformance descriptor for FormatValue<A>);
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v22 = *&v55[8];
        v21 = *v55;
        v23 = swift_allocObject();
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        v15 = v23 | 0xB000000000000000;
        break;
      case 12:
        (*(v10 + 8))(v13, v9);
        v15 = 0xC000000000000000;
        break;
      default:
        *v55 = xmmword_1D7279980;
        sub_1D60E2808();
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v20 = v57;
        v15 = swift_allocObject();
        *(v15 + 16) = v20;
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v58);
  return v15;
}

unint64_t sub_1D60E24FC()
{
  result = qword_1EC883858;
  if (!qword_1EC883858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883858);
  }

  return result;
}

unint64_t sub_1D60E2550()
{
  result = qword_1EC883860;
  if (!qword_1EC883860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883860);
  }

  return result;
}

unint64_t sub_1D60E25A4()
{
  result = qword_1EC883868;
  if (!qword_1EC883868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883868);
  }

  return result;
}

unint64_t sub_1D60E25F8()
{
  result = qword_1EC883870;
  if (!qword_1EC883870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883870);
  }

  return result;
}

unint64_t sub_1D60E264C()
{
  result = qword_1EC883878;
  if (!qword_1EC883878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883878);
  }

  return result;
}

unint64_t sub_1D60E26A0()
{
  result = qword_1EC883880;
  if (!qword_1EC883880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883880);
  }

  return result;
}

unint64_t sub_1D60E26F4()
{
  result = qword_1EC883888;
  if (!qword_1EC883888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883888);
  }

  return result;
}

uint64_t objectdestroy_3Tm_0(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D60E27A4(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for FormatDerivedDataOption(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D60E2808()
{
  result = qword_1EC883898;
  if (!qword_1EC883898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883898);
  }

  return result;
}

unint64_t sub_1D60E285C()
{
  result = qword_1EC8838A0;
  if (!qword_1EC8838A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838A0);
  }

  return result;
}

unint64_t sub_1D60E28B0()
{
  result = qword_1EC8838A8;
  if (!qword_1EC8838A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838A8);
  }

  return result;
}

unint64_t sub_1D60E2904()
{
  result = qword_1EC8838B0;
  if (!qword_1EC8838B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838B0);
  }

  return result;
}

unint64_t sub_1D60E2958()
{
  result = qword_1EC8838B8;
  if (!qword_1EC8838B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838B8);
  }

  return result;
}

unint64_t sub_1D60E29AC()
{
  result = qword_1EC8838C0;
  if (!qword_1EC8838C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838C0);
  }

  return result;
}

unint64_t sub_1D60E2A00()
{
  result = qword_1EC8838C8;
  if (!qword_1EC8838C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838C8);
  }

  return result;
}

unint64_t sub_1D60E2A54()
{
  result = qword_1EC8838D0;
  if (!qword_1EC8838D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838D0);
  }

  return result;
}

unint64_t sub_1D60E2AA8()
{
  result = qword_1EC8838E0;
  if (!qword_1EC8838E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838E0);
  }

  return result;
}

unint64_t sub_1D60E2B10()
{
  result = qword_1EC8838E8;
  if (!qword_1EC8838E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838E8);
  }

  return result;
}

unint64_t sub_1D60E2B64()
{
  result = qword_1EC8838F0;
  if (!qword_1EC8838F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838F0);
  }

  return result;
}

uint64_t sub_1D60E2BC8(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  sub_1D5C2FFF8(0, &qword_1EDF02770, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  sub_1D60E3678();
  v14 = 0;
  v15 = 0;
  sub_1D726443C();
  if (!v3)
  {
    v14 = a2;
    v15 = v16;
    v13 = xmmword_1D7279980;
    sub_1D60E36CC();
    sub_1D726443C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1D60E2D8C()
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

uint64_t sub_1D60E2DF0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();
  return sub_1D7264A5C();
}

void sub_1D60E2E3C(BOOL *a2@<X8>)
{
  v3 = sub_1D72641CC();

  *a2 = v3 != 0;
}

void *sub_1D60E2F58@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D60E33C8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void sub_1D60E2FB4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D60E3038(uint64_t a1)
{
  v2 = sub_1D60E37EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60E3074(uint64_t a1)
{
  v2 = sub_1D60E37EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60E30B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1D5C2FFF8(0, &qword_1EC883928, sub_1D60E37EC, &type metadata for DebugFormatSocketServerReloadMessage.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60E37EC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v16;
  v11 = sub_1D72642BC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v10 = v11;
  v10[1] = v13;
  return result;
}

uint64_t sub_1D60E3260(void *a1)
{
  sub_1D5C2FFF8(0, &qword_1EC883938, sub_1D60E37EC, &type metadata for DebugFormatSocketServerReloadMessage.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60E37EC();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

void *sub_1D60E33C8(void *a1)
{
  sub_1D5C2FFF8(0, &qword_1EDF3C650, sub_1D5C30408, &type metadata for FormatCodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  v10 = v9;
  sub_1D7264B0C();
  if (!v1)
  {
    sub_1D60E35D0();
    v13 = 0;
    v14 = 0;
    sub_1D726431C();
    v12 = xmmword_1D7279980;
    sub_1D60E3624();
    sub_1D726431C();
    (*(v5 + 8))(v8, v4);
    v10 = v13;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1D60E35D0()
{
  result = qword_1EC8838F8;
  if (!qword_1EC8838F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8838F8);
  }

  return result;
}

unint64_t sub_1D60E3624()
{
  result = qword_1EC883900;
  if (!qword_1EC883900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883900);
  }

  return result;
}

unint64_t sub_1D60E3678()
{
  result = qword_1EC883908;
  if (!qword_1EC883908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883908);
  }

  return result;
}

unint64_t sub_1D60E36CC()
{
  result = qword_1EC883910;
  if (!qword_1EC883910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883910);
  }

  return result;
}

unint64_t sub_1D60E3744()
{
  result = qword_1EC883918;
  if (!qword_1EC883918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883918);
  }

  return result;
}

unint64_t sub_1D60E3798()
{
  result = qword_1EC883920;
  if (!qword_1EC883920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883920);
  }

  return result;
}

unint64_t sub_1D60E37EC()
{
  result = qword_1EC883930;
  if (!qword_1EC883930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883930);
  }

  return result;
}

unint64_t sub_1D60E3854()
{
  result = qword_1EC883940;
  if (!qword_1EC883940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883940);
  }

  return result;
}

unint64_t sub_1D60E38AC()
{
  result = qword_1EC883948;
  if (!qword_1EC883948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883948);
  }

  return result;
}

unint64_t sub_1D60E3904()
{
  result = qword_1EC883950;
  if (!qword_1EC883950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883950);
  }

  return result;
}

uint64_t sub_1D60E3970@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v236 = a3;
  v198 = a5;
  v199 = a6;
  v235 = a2;
  v9 = sub_1D725ABCC();
  v189 = *(v9 - 8);
  v190 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v218 = v188 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725789C();
  v196 = *(v12 - 8);
  v197 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v195 = (v188 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v220 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v188[1] = swift_getAssociatedConformanceWitness();
  v188[2] = AssociatedTypeWitness;
  v217 = swift_getAssociatedTypeWitness();
  v219 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217, v16);
  v194 = v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v192 = v188 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v191 = v188 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v193 = v188 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v216 = v188 - v29;
  sub_1D60E73F8(0, &qword_1EDF174A0, sub_1D60E72D0);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v214 = v188 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v213 = v188 - v35;
  sub_1D60E73F8(0, &qword_1EDF17420, sub_1D60E744C);
  MEMORY[0x1EEE9AC00](v36 - 8, v37);
  v221 = v188 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v212 = v188 - v41;
  sub_1D60E73F8(0, &qword_1EDF17470, sub_1D60E74FC);
  MEMORY[0x1EEE9AC00](v42 - 8, v43);
  v222 = v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v211 = v188 - v47;
  sub_1D60E73F8(0, &qword_1EDF17400, sub_1D60E7750);
  MEMORY[0x1EEE9AC00](v48 - 8, v49);
  v224 = v188 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v223 = v188 - v53;
  sub_1D5B99940(0, &qword_1EDF17410, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0]);
  MEMORY[0x1EEE9AC00](v54 - 8, v55);
  v225 = v188 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57, v58);
  v204 = v188 - v59;
  sub_1D60E73F8(0, &qword_1EDF17450, sub_1D5BA2088);
  MEMORY[0x1EEE9AC00](v60 - 8, v61);
  v63 = v188 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64, v65);
  v234 = v188 - v66;
  v67 = MEMORY[0x1E69E6158];
  v68 = MEMORY[0x1E69D62D0];
  sub_1D5B99940(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v72 = v188 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73, v74);
  v76 = v188 - v75;
  v215 = *a1;
  v203 = MEMORY[0x1E69D6200];
  sub_1D60E78B0(0, &qword_1EDF17448, v67, v68, MEMORY[0x1E69D6200]);
  v78 = v77;
  v79 = *(v77 - 8);
  v80 = *(v79 + 56);
  v230 = v80;
  v261 = v79 + 56;
  v238 = v76;
  v80(v76, 1, 1, v77);
  v232 = v72;
  v80(v72, 1, 1, v78);
  v202 = MEMORY[0x1E69D6208];
  sub_1D60E78B0(0, &qword_1EDF173B0, v67, v68, MEMORY[0x1E69D6208]);
  v82 = v81;
  swift_allocObject();
  sub_1D725C71C();
  v201 = MEMORY[0x1E69D6160];
  sub_1D60E78B0(0, &qword_1EDF17538, v67, v68, MEMORY[0x1E69D6160]);
  v84 = v83;
  swift_allocObject();
  v229 = sub_1D725C4BC();
  sub_1D5BA2088(0);
  v86 = v85;
  v208 = v85;
  v87 = *(v85 - 8);
  v88 = *(v87 + 56);
  v210 = (v87 + 56);
  v88(v234, 1, 1, v85);
  v209 = v88;
  v205 = v63;
  v88(v63, 1, 1, v86);
  sub_1D60E7800(0);
  v207 = v89;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2374(0);
  v206 = v90;
  swift_allocObject();
  v228 = sub_1D725C4BC();
  v91 = v238;
  v92 = v78;
  v93 = v78;
  v94 = v230;
  v230(v238, 1, 1, v93);
  v95 = v232;
  v94(v232, 1, 1, v92);
  v231 = v82;
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v227 = sub_1D725C4BC();
  v233 = v92;
  v94(v91, 1, 1, v92);
  v94(v95, 1, 1, v92);
  swift_allocObject();
  v96 = v95;
  sub_1D725C71C();
  v200 = v84;
  swift_allocObject();
  v226 = sub_1D725C4BC();
  v97 = MEMORY[0x1E69E63B0];
  v98 = MEMORY[0x1E69D62F0];
  sub_1D60E78B0(0, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], v203);
  v100 = v99;
  v101 = *(*(v99 - 8) + 56);
  v101(v204, 1, 1, v99);
  v101(v225, 1, 1, v100);
  sub_1D60E78B0(0, &qword_1EDF17398, v97, v98, v202);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E78B0(0, &qword_1EDF17520, v97, v98, v201);
  swift_allocObject();
  v225 = sub_1D725C4BC();
  sub_1D60E7750(0);
  v103 = v102;
  v104 = *(*(v102 - 8) + 56);
  v104(v223, 1, 1, v102);
  v104(v224, 1, 1, v103);
  sub_1D60E7904(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E79B4(0);
  swift_allocObject();
  v224 = sub_1D725C4BC();
  v105 = v233;
  v106 = v230;
  v230(v238, 1, 1, v233);
  v106(v96, 1, 1, v105);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v223 = sub_1D725C4BC();
  v108 = v208;
  v107 = v209;
  v209(v234, 1, 1, v208);
  v107(v205, 1, 1, v108);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v234 = sub_1D725C4BC();
  sub_1D60E74FC(0);
  v110 = v109;
  v111 = *(*(v109 - 8) + 56);
  v111(v211, 1, 1, v109);
  v111(v222, 1, 1, v110);
  v210 = MEMORY[0x1E69D6208];
  sub_1D60E7A84(0, &qword_1EDF173C0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7A64(0);
  swift_allocObject();
  v222 = sub_1D725C4BC();
  sub_1D60E744C(0);
  v113 = v112;
  v114 = *(*(v112 - 8) + 56);
  v114(v212, 1, 1, v112);
  v114(v221, 1, 1, v113);
  sub_1D60E7B20(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7BD0(0);
  swift_allocObject();
  v221 = sub_1D725C4BC();
  v115 = v233;
  v106(v238, 1, 1, v233);
  v106(v232, 1, 1, v115);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v233 = sub_1D725C4BC();
  sub_1D60E72D0(0);
  v117 = v116;
  v118 = *(*(v116 - 8) + 56);
  v119 = v213;
  v118(v213, 1, 1, v116);
  v120 = v214;
  v118(v214, 1, 1, v117);
  sub_1D60E7CA0(0, &qword_1EDF173D0, v210);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7C80(0);
  swift_allocObject();
  v232 = sub_1D725C4BC();
  v118(v119, 1, 1, v117);
  v118(v120, 1, 1, v117);
  v121 = v220;
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v231 = sub_1D725C4BC();
  sub_1D725C4CC();
  v122 = v236;
  v123 = v236[1];
  v247 = *v236;
  v248 = v123;

  sub_1D725C74C();

  sub_1D725C4CC();
  v247 = (v122[29])();
  v248 = v124;
  sub_1D725C74C();

  sub_1D725C4CC();
  v125 = v235[1];
  v247 = *v235;
  v248 = v125;

  sub_1D725C74C();

  sub_1D725C4CC();
  v126 = v121[3];
  v247 = v121[2];
  v248 = v126;

  sub_1D725C74C();

  sub_1D725C4CC();
  v247 = v122[28];
  LOBYTE(v248) = 0;
  sub_1D725C74C();

  sub_1D725C4CC();
  FeedJournalGroupResult.kind.getter(&v241);
  v127 = qword_1D729A210[v241];
  v247 = *&aNext_3[8 * v241];
  v248 = v127;
  sub_1D725C74C();

  sub_1D725C4CC();
  v247 = FeedJournalGroupResultOutput.reason.getter();
  v248 = v128;
  sub_1D725C74C();

  v230 = sub_1D725C4CC();
  v129 = v122[9];
  v130 = *(v129 + 16);
  v131 = MEMORY[0x1E69E7CC0];
  if (v130)
  {
    v260 = MEMORY[0x1E69E7CC0];
    sub_1D6998584(0, v130, 0);
    v131 = v260;
    v132 = v129 + 32;
    do
    {
      sub_1D5EAE324(v132, &v247);
      sub_1D5EAE324(&v247, &v241);
      __swift_project_boxed_opaque_existential_1(&v241, *(&v242 + 1));
      v133 = sub_1D72644BC();
      v261 = v134;
      if (v243[24])
      {
        if (v243[24] == 1)
        {
          v239 = 0x202C70696B53;
          v240 = 0xE600000000000000;
          MEMORY[0x1DA6F9910](*&v243[8], *&v243[16]);
          v135 = v240;
          v238 = v239;
          v136 = 2;
        }

        else
        {
          if (*&v243[8] == 0)
          {
            v136 = 0;
          }

          else
          {
            v136 = 3;
          }

          v137 = 0x746E552070696B53;
          if (*&v243[8] == 0)
          {
            v137 = 0x776F6C6C41;
          }

          v238 = v137;
          if (*&v243[8] == 0)
          {
            v135 = 0xE500000000000000;
          }

          else
          {
            v135 = 0xEF7473614C206C69;
          }
        }
      }

      else
      {
        v239 = 0x202C65766F6D6552;
        v240 = 0xE800000000000000;
        MEMORY[0x1DA6F9910](*&v243[8], *&v243[16]);
        v135 = v240;
        v238 = v239;
        v136 = 1;
      }

      sub_1D5EAE380(&v247);
      sub_1D5EAE380(&v241);
      v260 = v131;
      v139 = *(v131 + 16);
      v138 = *(v131 + 24);
      if (v139 >= v138 >> 1)
      {
        sub_1D6998584((v138 > 1), v139 + 1, 1);
        v131 = v260;
      }

      *(v131 + 16) = v139 + 1;
      v140 = v131 + 40 * v139;
      v141 = v261;
      *(v140 + 32) = v133;
      *(v140 + 40) = v141;
      *(v140 + 48) = v136;
      *(v140 + 56) = v238;
      *(v140 + 64) = v135;
      v132 += 64;
      --v130;
    }

    while (v130);
    v121 = v220;
  }

  v247 = v131;
  sub_1D60E751C(0);
  swift_allocObject();
  v247 = sub_1D725C88C();
  sub_1D725C74C();

  sub_1D725C4CC();
  v142 = v236;
  v247 = FeedJournalGroupResultOutput.score.getter();
  LOWORD(v248) = v143 & 1;
  sub_1D725C74C();

  sub_1D725C4CC();
  v144 = v142[3];
  v247 = v142[2];
  v248 = v144;

  sub_1D725C74C();

  v145 = v215;
  if (v215 >= 2)
  {
    sub_1D725C4CC();
    v146 = *(v145 + 16);
    if (v146)
    {
      v147 = *(v145 + 32);
    }

    else
    {
      v147 = 0;
    }

    v247 = v147;
    LOWORD(v248) = v146 == 0;
    sub_1D725C74C();

    sub_1D5C08648(v145);
  }

  else
  {
    sub_1D725C4CC();
    v247 = 0;
    LOWORD(v248) = 256;
    sub_1D725C74C();
  }

  sub_1D5C034F0((v142 + 16), &v247);
  v148 = v216;
  v149 = v217;
  v150 = v219;
  if (v255 > 2u)
  {
    if (v255 > 4u)
    {
      v153 = v231;
      v152 = v232;
      sub_1D5BC3420(&v247);
LABEL_40:
      sub_1D725C4CC();
      v247 = 1;
      sub_1D725C74C();

      sub_1D725C4CC();
      v247 = 1;
      sub_1D725C74C();

      sub_1D60E9D6C(v235);
      sub_1D60E9D6C(v142);
      goto LABEL_41;
    }

    if (v255 != 3)
    {
      sub_1D5BC3420(&v247);
      v153 = v231;
      v152 = v232;
      goto LABEL_40;
    }

    sub_1D60E9DC0();
    v151 = v192;
    goto LABEL_34;
  }

  if (!v255)
  {
    sub_1D60E9DC0();
    v151 = v193;
LABEL_34:
    if (swift_dynamicCast())
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (v255 == 1)
  {
    sub_1D60E9DC0();
    v151 = v191;
    goto LABEL_34;
  }

  sub_1D60E9DC0();
  v151 = v194;
  if (!swift_dynamicCast())
  {
LABEL_38:
    __swift_destroy_boxed_opaque_existential_1(&v247);
    v153 = v231;
    v152 = v232;
    goto LABEL_40;
  }

LABEL_35:
  (*(v150 + 32))(v148, v151, v149);
  __swift_destroy_boxed_opaque_existential_1(&v247);
  sub_1D725B06C();
  swift_allocObject();
  v154 = sub_1D72578DC();
  v155 = v195;
  *v195 = 0x7974696E69666E69;
  v155[1] = 0xE800000000000000;
  v155[2] = 0x74696E69666E692DLL;
  v155[3] = 0xE900000000000079;
  v155[4] = 7233902;
  v155[5] = 0xE300000000000000;
  (*(v196 + 104))(v155, *MEMORY[0x1E6967FE0], v197);
  sub_1D72578AC();
  v156 = v148;
  v157 = v149;
  v158 = v237;
  sub_1D725B04C();
  v237 = v158;
  if (!v158)
  {
    v261 = sub_1D725C4CC();
    v247 = 0x2D617461642E6ALL;
    v248 = 0xE700000000000000;
    v230 = *(*(swift_getAssociatedConformanceWitness() + 8) + 24);
    v165 = sub_1D725AA4C();
    MEMORY[0x1DA6F9910](v165);

    v166 = v121;
    v167 = v247;
    v168 = v248;
    v238 = v154;
    v170 = v166[2];
    v169 = v166[3];

    v171 = sub_1D725ABAC();
    v247 = sub_1D60F2034(v167, v168, v170, v169, v171, v172);
    v248 = v173;
    v249 = v174;
    sub_1D5BA1E10(0, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
    swift_allocObject();
    v247 = sub_1D725C56C();
    sub_1D725C74C();

    v261 = sub_1D725C4CC();
    v247 = 0x2D6C6F6F702E6ALL;
    v248 = 0xE700000000000000;
    v175 = sub_1D725AA4C();
    v177 = v176;
    v178 = v157;
    v179 = v218;
    (*(v219 + 8))(v156, v178);
    MEMORY[0x1DA6F9910](v175, v177);

    v219 = v247;
    v230 = v248;
    v180 = v166[3];
    v217 = v166[2];

    v247 = sub_1D725ABBC();
    sub_1D725B4FC();
    sub_1D5B9DF24(&unk_1EDF17B58, MEMORY[0x1E69D6878], MEMORY[0x1E69D6880]);
    v181 = v237;
    v182 = sub_1D72578BC();
    v237 = v181;
    if (v181)
    {

      sub_1D60E9D6C(v235);

      (*(v189 + 8))(v179, v190);
      v159 = v236;
      goto LABEL_44;
    }

    v184 = v182;
    v185 = v183;

    v247 = sub_1D60F2034(v219, v230, v217, v180, v184, v185);
    v248 = v186;
    v249 = v187;
    swift_allocObject();
    v247 = sub_1D725C56C();
    sub_1D725C74C();

    sub_1D60E9D6C(v235);
    (*(v189 + 8))(v179, v190);
    sub_1D60E9D6C(v236);
    v153 = v231;
    v152 = v232;
LABEL_41:
    *&v241 = v229;
    *(&v241 + 1) = v228;
    *&v242 = v227;
    *(&v242 + 1) = v226;
    *v243 = v225;
    *&v243[8] = v224;
    *&v243[16] = v223;
    *&v243[24] = v234;
    *&v244 = v222;
    *(&v244 + 1) = v221;
    *&v245 = v233;
    *(&v245 + 1) = v152;
    v246 = v153;
    v247 = v229;
    v248 = v228;
    v249 = v227;
    v250 = v226;
    v251 = v225;
    v252 = v224;
    v253 = v223;
    v254 = v234;
    v255 = v222;
    v256 = v221;
    v257 = v233;
    v258 = v152;
    v259 = v153;
    sub_1D60E9C2C(&v241, &v239);
    result = sub_1D5FD67C8(&v247);
    v161 = v245;
    v162 = v199;
    *(v199 + 64) = v244;
    *(v162 + 80) = v161;
    *(v162 + 96) = v246;
    v163 = v242;
    *v162 = v241;
    *(v162 + 16) = v163;
    v164 = *&v243[16];
    *(v162 + 32) = *v243;
    *(v162 + 48) = v164;
    return result;
  }

  sub_1D60E9D6C(v235);
  (*(v219 + 8))(v148, v149);
  v159 = v142;
LABEL_44:
  sub_1D60E9D6C(v159);
  v247 = v229;
  v248 = v228;
  v249 = v227;
  v250 = v226;
  v251 = v225;
  v252 = v224;
  v253 = v223;
  v254 = v234;
  v255 = v222;
  v256 = v221;
  v257 = v233;
  v258 = v232;
  v259 = v231;
  return sub_1D5FD67C8(&v247);
}

uint64_t sub_1D60E5634()
{
  if (qword_1EC87D4E0 != -1)
  {
    swift_once();
  }

  qword_1EC9BA7C8 = qword_1EC881F18;
  unk_1EC9BA7D0 = unk_1EC881F20;
}

unint64_t sub_1D60E56A0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x64496E65736F6863;
      break;
    case 3:
      result = 0x6449726F73727563;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 1953459315;
      break;
    case 6:
      result = 0x746C75736572;
      break;
    case 7:
      result = 0x6E6F73616572;
      break;
    case 8:
      result = 0x73656C7572;
      break;
    case 9:
      result = 0x65726F6373;
      break;
    case 10:
      result = 0x64496769666E6F63;
      break;
    case 11:
      result = 0x74614470756F7267;
      break;
    case 12:
      result = 0x617461446C6F6F70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D60E57D8(void *a1)
{
  v3 = v1;
  sub_1D5BA1E10(0, &qword_1EC883998, sub_1D60E9AD0, &type metadata for FeedGroupJournalEntity.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D60E9AD0();
  sub_1D7264B5C();
  v19 = *v3;
  v18 = 0;
  sub_1D60E78B0(0, &qword_1EDF17538, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6160]);
  sub_1D60E9C64();
  sub_1D726443C();
  if (!v2)
  {
    v17 = v3;
    v19 = v3[1];
    v18 = 1;
    sub_1D5BA2374(0);
    v12 = v11;
    v13 = sub_1D5B9DF24(&qword_1EC8828C0, sub_1D5BA2374, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v16[0] = v13;
    v16[1] = v12;
    v14 = v17;
    v19 = v17[2];
    v18 = 2;
    sub_1D726443C();
    v19 = v14[3];
    v18 = 3;
    sub_1D726443C();
    v19 = v14[4];
    v18 = 4;
    sub_1D60E78B0(0, &qword_1EDF17520, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], MEMORY[0x1E69D6160]);
    sub_1D60E9CE8();
    sub_1D726443C();
    v19 = v14[5];
    v18 = 5;
    sub_1D60E79B4(0);
    sub_1D5B9DF24(&qword_1EC8839A8, sub_1D60E79B4, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v19 = v14[6];
    v18 = 6;
    sub_1D726443C();
    v19 = v14[7];
    v18 = 7;
    sub_1D726443C();
    v19 = v14[8];
    v18 = 8;
    sub_1D60E7A64(0);
    sub_1D5B9DF24(&qword_1EC8839B0, sub_1D60E7A64, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v19 = v14[9];
    v18 = 9;
    sub_1D60E7BD0(0);
    sub_1D5B9DF24(&qword_1EC8839B8, sub_1D60E7BD0, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v19 = v14[10];
    v18 = 10;
    sub_1D726443C();
    v19 = v17[11];
    v18 = 11;
    sub_1D60E7C80(0);
    sub_1D5B9DF24(&qword_1EC8839C0, sub_1D60E7C80, MEMORY[0x1E69D6168]);
    sub_1D726443C();
    v19 = v17[12];
    v18 = 12;
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D60E5DD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D60E7D0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D60E5DFC(uint64_t a1)
{
  v2 = sub_1D60E9AD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60E5E38(uint64_t a1)
{
  v2 = sub_1D60E9AD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D60E5E74()
{
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4DC();
  sub_1D725C4FC();
  swift_allocObject();
  return sub_1D725C50C();
}

uint64_t sub_1D60E5FE4()
{
  if (qword_1EC87D520 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC9BA7C8;

  return v0;
}

uint64_t sub_1D60E604C(uint64_t a1)
{
  v2 = sub_1D5B9FD64();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1D60E6098(uint64_t a1)
{
  v2 = sub_1D5B9FD64();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1D60E60E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B9FD64();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

__n128 sub_1D60E6148@<Q0>(uint64_t a1@<X8>)
{
  sub_1D60E637C(v5);
  v2 = v5[5];
  *(a1 + 64) = v5[4];
  *(a1 + 80) = v2;
  *(a1 + 96) = v6;
  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = v5[3];
  *(a1 + 32) = v5[2];
  *(a1 + 48) = result;
  return result;
}

__n128 sub_1D60E61A4@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result.n128_u64[0] = sub_1D60E8114(a2, v7).n128_u64[0];
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1D60E621C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5B9FD64();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1D60E6268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5B9FD64();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1D60E62BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5B9FD64();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1D60E6328()
{
  result = qword_1EC883958;
  if (!qword_1EC883958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883958);
  }

  return result;
}

uint64_t sub_1D60E637C@<X0>(uint64_t *a1@<X8>)
{
  v124 = a1;
  sub_1D60E73F8(0, &qword_1EDF174A0, sub_1D60E72D0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v123 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v122 = &v98 - v7;
  sub_1D60E73F8(0, &qword_1EDF17420, sub_1D60E744C);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v121 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v120 = &v98 - v13;
  sub_1D60E73F8(0, &qword_1EDF17470, sub_1D60E74FC);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v117 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v116 = &v98 - v19;
  sub_1D60E73F8(0, &qword_1EDF17400, sub_1D60E7750);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v112 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v111 = &v98 - v25;
  sub_1D5B99940(0, &qword_1EDF17410, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0]);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v113 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v105 = &v98 - v31;
  sub_1D60E73F8(0, &qword_1EDF17450, sub_1D5BA2088);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v128 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v98 - v37;
  v39 = MEMORY[0x1E69E6158];
  v40 = MEMORY[0x1E69D62D0];
  sub_1D5B99940(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v44 = &v98 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v98 - v47;
  v103 = MEMORY[0x1E69D6200];
  sub_1D60E78B0(0, &qword_1EDF17448, v39, v40, MEMORY[0x1E69D6200]);
  v50 = v49;
  v51 = *(v49 - 8);
  v52 = *(v51 + 56);
  v53 = v51 + 56;
  v99 = v48;
  v52(v48, 1, 1, v49);
  v125 = v44;
  v52(v44, 1, 1, v50);
  v102 = MEMORY[0x1E69D6208];
  sub_1D60E78B0(0, &qword_1EDF173B0, v39, v40, MEMORY[0x1E69D6208]);
  v55 = v54;
  swift_allocObject();
  sub_1D725C71C();
  v101 = MEMORY[0x1E69D6160];
  sub_1D60E78B0(0, &qword_1EDF17538, v39, v40, MEMORY[0x1E69D6160]);
  swift_allocObject();
  v119 = sub_1D725C4BC();
  sub_1D5BA2088(0);
  v57 = v56;
  v108 = v56;
  v58 = *(v56 - 8);
  v59 = *(v58 + 56);
  v109 = v59;
  v110 = (v58 + 56);
  v104 = v38;
  v59(v38, 1, 1, v56);
  v59(v128, 1, 1, v57);
  sub_1D60E7800(0);
  v107 = v60;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2374(0);
  v106 = v61;
  swift_allocObject();
  v118 = sub_1D725C4BC();
  v62 = v99;
  v52(v99, 1, 1, v50);
  v63 = v125;
  v52(v125, 1, 1, v50);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v115 = sub_1D725C4BC();
  v126 = v50;
  v127 = v53;
  v52(v62, 1, 1, v50);
  v52(v63, 1, 1, v50);
  v100 = v55;
  swift_allocObject();
  v64 = v62;
  sub_1D725C71C();
  swift_allocObject();
  v114 = sub_1D725C4BC();
  v65 = MEMORY[0x1E69E63B0];
  v66 = MEMORY[0x1E69D62F0];
  sub_1D60E78B0(0, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], v103);
  v68 = v67;
  v69 = *(*(v67 - 8) + 56);
  v69(v105, 1, 1, v67);
  v69(v113, 1, 1, v68);
  sub_1D60E78B0(0, &qword_1EDF17398, v65, v66, v102);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E78B0(0, &qword_1EDF17520, v65, v66, v101);
  swift_allocObject();
  v113 = sub_1D725C4BC();
  sub_1D60E7750(0);
  v71 = v70;
  v72 = *(*(v70 - 8) + 56);
  v72(v111, 1, 1, v70);
  v72(v112, 1, 1, v71);
  sub_1D60E7904(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E79B4(0);
  swift_allocObject();
  v112 = sub_1D725C4BC();
  v73 = v126;
  v52(v64, 1, 1, v126);
  v74 = v125;
  v52(v125, 1, 1, v73);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v111 = sub_1D725C4BC();
  v75 = v108;
  v76 = v109;
  v109(v104, 1, 1, v108);
  v76(v128, 1, 1, v75);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v128 = sub_1D725C4BC();
  sub_1D60E74FC(0);
  v78 = v77;
  v79 = *(*(v77 - 8) + 56);
  v79(v116, 1, 1, v77);
  v79(v117, 1, 1, v78);
  v110 = MEMORY[0x1E69D6208];
  sub_1D60E7A84(0, &qword_1EDF173C0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7A64(0);
  swift_allocObject();
  v117 = sub_1D725C4BC();
  sub_1D60E744C(0);
  v81 = v80;
  v82 = *(*(v80 - 8) + 56);
  v82(v120, 1, 1, v80);
  v82(v121, 1, 1, v81);
  sub_1D60E7B20(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7BD0(0);
  swift_allocObject();
  v121 = sub_1D725C4BC();
  v83 = v126;
  v52(v64, 1, 1, v126);
  v52(v74, 1, 1, v83);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v84 = sub_1D725C4BC();
  sub_1D60E72D0(0);
  v86 = v85;
  v87 = *(*(v85 - 8) + 56);
  v88 = v122;
  v87(v122, 1, 1, v85);
  v89 = v123;
  v87(v123, 1, 1, v86);
  sub_1D60E7CA0(0, &qword_1EDF173D0, v110);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7C80(0);
  swift_allocObject();
  v90 = sub_1D725C4BC();
  v87(v88, 1, 1, v86);
  v87(v89, 1, 1, v86);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  result = sub_1D725C4BC();
  v92 = v124;
  v93 = v118;
  *v124 = v119;
  v92[1] = v93;
  v94 = v114;
  v92[2] = v115;
  v92[3] = v94;
  v95 = v112;
  v92[4] = v113;
  v92[5] = v95;
  v96 = v128;
  v92[6] = v111;
  v92[7] = v96;
  v97 = v121;
  v92[8] = v117;
  v92[9] = v97;
  v92[10] = v84;
  v92[11] = v90;
  v92[12] = result;
  return result;
}

void sub_1D60E72F0(uint64_t a1)
{
  if (!qword_1EDF174F0)
  {
    sub_1D5BA1E10(255, &qword_1EDF174F8, sub_1D5B9FEBC, &type metadata for FeedBlobEntity, MEMORY[0x1E69D6178]);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF174F0);
    }
  }
}

unint64_t sub_1D60E7380()
{
  result = qword_1EDF174E8;
  if (!qword_1EDF174E8)
  {
    sub_1D60E72F0(255);
    sub_1D5BA1FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF174E8);
  }

  return result;
}

void sub_1D60E73F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D60E744C(uint64_t a1)
{
  if (!qword_1EDF17428)
  {
    v1 = MEMORY[0x1E69E63B0];
    sub_1D5B9946C(255, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04848, &unk_1EDF3C800, v1);
    v2 = sub_1D725C72C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17428);
    }
  }
}

void sub_1D60E751C(uint64_t a1)
{
  if (!qword_1EDF17358)
  {
    sub_1D5B9946C(255, &qword_1EDF051F0, &type metadata for FeedGroupEmitterRuleOutputDescription, MEMORY[0x1E69E62F8]);
    sub_1D60E7618(&qword_1EDF051E0, sub_1D60E76A8, MEMORY[0x1E69E6330]);
    sub_1D60E7618(&qword_1EDF051E8, sub_1D60E76FC, MEMORY[0x1E69E6300]);
    v1 = sub_1D725C8AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17358);
    }
  }
}

uint64_t sub_1D60E7618(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B9946C(255, &qword_1EDF051F0, &type metadata for FeedGroupEmitterRuleOutputDescription, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D60E76A8()
{
  result = qword_1EDF13120;
  if (!qword_1EDF13120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13120);
  }

  return result;
}

unint64_t sub_1D60E76FC()
{
  result = qword_1EDF13128;
  if (!qword_1EDF13128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13128);
  }

  return result;
}

void sub_1D60E7750(uint64_t a1)
{
  if (!qword_1EDF17408)
  {
    v1 = MEMORY[0x1E69E6530];
    sub_1D5B9946C(255, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04700, &qword_1EDF3C7C0, v1);
    v2 = sub_1D725C72C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17408);
    }
  }
}

void sub_1D60E7800(uint64_t a1)
{
  if (!qword_1EDF173A8)
  {
    v1 = MEMORY[0x1E69E6158];
    sub_1D5B9946C(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF054F8, &qword_1EDF43BE0, v1);
    v2 = sub_1D725C75C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF173A8);
    }
  }
}

void sub_1D60E78B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D60E7904(uint64_t a1)
{
  if (!qword_1EDF17380)
  {
    v1 = MEMORY[0x1E69E6530];
    sub_1D5B9946C(255, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04700, &qword_1EDF3C7C0, v1);
    v2 = sub_1D725C75C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17380);
    }
  }
}

void sub_1D60E79B4(uint64_t a1)
{
  if (!qword_1EDF17508)
  {
    v1 = MEMORY[0x1E69E6530];
    sub_1D5B9946C(255, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04700, &qword_1EDF3C7C0, v1);
    v2 = sub_1D725C4EC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17508);
    }
  }
}

void sub_1D60E7A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1D60E751C(255);
    v7 = v6;
    v8 = sub_1D5B9DF24(&qword_1EDF17360, sub_1D60E751C, MEMORY[0x1E69D62B8]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1D60E7B20(uint64_t a1)
{
  if (!qword_1EDF17390)
  {
    v1 = MEMORY[0x1E69E63B0];
    sub_1D5B9946C(255, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04848, &unk_1EDF3C800, v1);
    v2 = sub_1D725C75C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17390);
    }
  }
}

void sub_1D60E7BD0(uint64_t a1)
{
  if (!qword_1EDF17518)
  {
    v1 = MEMORY[0x1E69E63B0];
    sub_1D5B9946C(255, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    sub_1D5BA2138(&qword_1EDF04848, &unk_1EDF3C800, v1);
    v2 = sub_1D725C4EC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17518);
    }
  }
}

void sub_1D60E7CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1D60E72F0(255);
    v7 = v6;
    v8 = sub_1D60E7380();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D60E7D0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64496E65736F6863 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449726F73727563 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C96E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1953459315 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73656C7572 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x64496769666E6F63 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x617461446C6F6F70 && a2 == 0xE800000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

__n128 sub_1D60E8114@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a1;
  v127 = a2;
  sub_1D5BA1E10(0, &qword_1EC883960, sub_1D60E9AD0, &type metadata for FeedGroupJournalEntity.CodingKeys, MEMORY[0x1E69E6F48]);
  v129 = v2;
  v128 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v146 = &v126 - v4;
  sub_1D60E73F8(0, &qword_1EDF174A0, sub_1D60E72D0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v145 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v144 = &v126 - v10;
  sub_1D60E73F8(0, &qword_1EDF17420, sub_1D60E744C);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v149 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v142 = &v126 - v16;
  sub_1D60E73F8(0, &qword_1EDF17470, sub_1D60E74FC);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v141 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v140 = &v126 - v22;
  sub_1D60E73F8(0, &qword_1EDF17400, sub_1D60E7750);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v151 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v150 = &v126 - v28;
  sub_1D5B99940(0, &qword_1EDF17410, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0]);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v152 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v136 = &v126 - v34;
  sub_1D60E73F8(0, &qword_1EDF17450, sub_1D5BA2088);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v162 = &v126 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = &v126 - v40;
  v42 = MEMORY[0x1E69E6158];
  v43 = MEMORY[0x1E69D62D0];
  sub_1D5B99940(0, &qword_1EDF17440, &qword_1EDF17448, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0]);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v47 = &v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v126 - v50;
  v134 = MEMORY[0x1E69D6200];
  sub_1D60E78B0(0, &qword_1EDF17448, v42, v43, MEMORY[0x1E69D6200]);
  v53 = v52;
  v54 = *(v52 - 8);
  v55 = *(v54 + 56);
  v163 = v55;
  v56 = v54 + 56;
  v159 = v51;
  v55(v51, 1, 1, v52);
  v130 = v47;
  v55(v47, 1, 1, v53);
  v133 = MEMORY[0x1E69D6208];
  sub_1D60E78B0(0, &qword_1EDF173B0, v42, v43, MEMORY[0x1E69D6208]);
  v58 = v57;
  swift_allocObject();
  sub_1D725C71C();
  v132 = MEMORY[0x1E69D6160];
  sub_1D60E78B0(0, &qword_1EDF17538, v42, v43, MEMORY[0x1E69D6160]);
  v60 = v59;
  swift_allocObject();
  v156 = sub_1D725C4BC();
  sub_1D5BA2088(0);
  v62 = v61;
  v138 = v61;
  v63 = *(v61 - 8);
  v64 = *(v63 + 56);
  v147 = v64;
  v65 = v63 + 56;
  v135 = v41;
  v64(v41, 1, 1, v61);
  v139 = v65;
  v64(v162, 1, 1, v62);
  sub_1D60E7800(0);
  v137 = v66;
  swift_allocObject();
  sub_1D725C71C();
  sub_1D5BA2374(0);
  v157 = v67;
  swift_allocObject();
  v155 = sub_1D725C4BC();
  v68 = v159;
  v69 = v163;
  v163(v159, 1, 1, v53);
  v70 = v130;
  v69(v130, 1, 1, v53);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v154 = sub_1D725C4BC();
  v160 = v53;
  v161 = v56;
  v69(v68, 1, 1, v53);
  v69(v70, 1, 1, v53);
  v131 = v58;
  swift_allocObject();
  v71 = v70;
  sub_1D725C71C();
  swift_allocObject();
  v153 = sub_1D725C4BC();
  v72 = MEMORY[0x1E69E63B0];
  v73 = MEMORY[0x1E69D62F0];
  sub_1D60E78B0(0, &qword_1EDF17418, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], v134);
  v75 = v74;
  v76 = *(*(v74 - 8) + 56);
  v76(v136, 1, 1, v74);
  v76(v152, 1, 1, v75);
  sub_1D60E78B0(0, &qword_1EDF17398, v72, v73, v133);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E78B0(0, &qword_1EDF17520, v72, v73, v132);
  v136 = v77;
  swift_allocObject();
  v152 = sub_1D725C4BC();
  sub_1D60E7750(0);
  v79 = v78;
  v80 = *(*(v78 - 8) + 56);
  v80(v150, 1, 1, v78);
  v80(v151, 1, 1, v79);
  sub_1D60E7904(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E79B4(0);
  v134 = v81;
  swift_allocObject();
  v151 = sub_1D725C4BC();
  v82 = v159;
  v83 = v160;
  v84 = v163;
  v163(v159, 1, 1, v160);
  v85 = v71;
  v84(v71, 1, 1, v83);
  swift_allocObject();
  sub_1D725C71C();
  v158 = v60;
  swift_allocObject();
  v150 = sub_1D725C4BC();
  v86 = v138;
  v87 = v147;
  v147(v135, 1, 1, v138);
  v87(v162, 1, 1, v86);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v147 = sub_1D725C4BC();
  sub_1D60E74FC(0);
  v89 = v88;
  v90 = *(*(v88 - 8) + 56);
  v90(v140, 1, 1, v88);
  v90(v141, 1, 1, v89);
  v91 = MEMORY[0x1E69D6208];
  sub_1D60E7A84(0, &qword_1EDF173C0, MEMORY[0x1E69D6208]);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7A64(0);
  v141 = v92;
  swift_allocObject();
  v162 = sub_1D725C4BC();
  sub_1D60E744C(0);
  v94 = v93;
  v95 = *(*(v93 - 8) + 56);
  v95(v142, 1, 1, v93);
  v95(v149, 1, 1, v94);
  sub_1D60E7B20(0);
  swift_allocObject();
  sub_1D725C71C();
  sub_1D60E7BD0(0);
  v142 = v96;
  swift_allocObject();
  v149 = sub_1D725C4BC();
  v97 = v160;
  v98 = v163;
  v163(v82, 1, 1, v160);
  v98(v85, 1, 1, v97);
  swift_allocObject();
  sub_1D725C71C();
  swift_allocObject();
  v163 = sub_1D725C4BC();
  sub_1D60E72D0(0);
  v100 = v99;
  v101 = *(*(v99 - 8) + 56);
  v102 = v144;
  v101(v144, 1, 1, v99);
  v103 = v145;
  v101(v145, 1, 1, v100);
  sub_1D60E7CA0(0, &qword_1EDF173D0, v91);
  swift_allocObject();
  v104 = v103;
  sub_1D725C71C();
  sub_1D60E7C80(0);
  v106 = v105;
  swift_allocObject();
  v161 = sub_1D725C4BC();
  v101(v102, 1, 1, v100);
  v101(v104, 1, 1, v100);
  swift_allocObject();
  v107 = v143;
  sub_1D725C71C();
  swift_allocObject();
  v108 = sub_1D725C4BC();
  __swift_project_boxed_opaque_existential_1(v107, v107[3]);
  sub_1D60E9AD0();
  v109 = v146;
  v110 = v148;
  sub_1D7264B0C();
  if (v110)
  {
    v113 = v147;
    __swift_destroy_boxed_opaque_existential_1(v107);
    v172 = v156;
    v173 = v155;
    v174 = v154;
    v175 = v153;
    v176 = v152;
    v177 = v151;
    v178 = v150;
    v179 = v113;
    v180 = v162;
    v181 = v149;
    v182 = v163;
    v183 = v161;
    v184 = v108;
    sub_1D5FD67C8(&v172);
  }

  else
  {
    v160 = v106;
    LOBYTE(v164) = 0;
    v111 = sub_1D60E9B24();
    sub_1D726431C();

    v156 = v172;
    LOBYTE(v164) = 1;
    v112 = sub_1D5B9DF24(&qword_1EC882888, sub_1D5BA2374, MEMORY[0x1E69D6170]);
    sub_1D726431C();
    v159 = v112;

    v155 = v172;
    LOBYTE(v164) = 2;
    sub_1D726431C();

    v154 = v172;
    LOBYTE(v164) = 3;
    sub_1D726431C();
    v148 = v111;

    v153 = v172;
    LOBYTE(v164) = 4;
    sub_1D60E9BA8();
    sub_1D726431C();

    v152 = v172;
    LOBYTE(v164) = 5;
    sub_1D5B9DF24(&qword_1EC883978, sub_1D60E79B4, MEMORY[0x1E69D6170]);
    sub_1D726431C();

    v151 = v172;
    LOBYTE(v164) = 6;
    sub_1D726431C();

    v150 = v172;
    LOBYTE(v164) = 7;
    sub_1D726431C();

    v114 = v172;
    LOBYTE(v164) = 8;
    sub_1D5B9DF24(&qword_1EC883980, sub_1D60E7A64, MEMORY[0x1E69D6170]);
    sub_1D726431C();
    v115 = v107;

    v162 = v172;
    LOBYTE(v164) = 9;
    sub_1D5B9DF24(&qword_1EC883988, sub_1D60E7BD0, MEMORY[0x1E69D6170]);
    sub_1D726431C();

    v149 = v172;
    LOBYTE(v164) = 10;
    sub_1D726431C();

    v163 = v172;
    LOBYTE(v164) = 11;
    sub_1D5B9DF24(&qword_1EC883990, sub_1D60E7C80, MEMORY[0x1E69D6170]);
    sub_1D726431C();

    v161 = v172;
    v171 = 12;
    sub_1D726431C();
    (*(v128 + 8))(v109, v129);

    v160 = v185;
    v116 = v156;
    *&v164 = v156;
    v117 = v155;
    *(&v164 + 1) = v155;
    v118 = v154;
    *&v165 = v154;
    v119 = v153;
    *(&v165 + 1) = v153;
    v120 = v152;
    *&v166 = v152;
    *(&v166 + 1) = v151;
    v121 = v150;
    v167.n128_u64[0] = v150;
    v167.n128_u64[1] = v114;
    *&v168 = v162;
    *(&v168 + 1) = v149;
    *&v169 = v163;
    *(&v169 + 1) = v161;
    v170 = v185;
    sub_1D60E9C2C(&v164, &v172);
    __swift_destroy_boxed_opaque_existential_1(v115);
    v172 = v116;
    v173 = v117;
    v174 = v118;
    v175 = v119;
    v176 = v120;
    v177 = v151;
    v178 = v121;
    v179 = v114;
    v180 = v162;
    v181 = v149;
    v182 = v163;
    v183 = v161;
    v184 = v160;
    sub_1D5FD67C8(&v172);
    v122 = v169;
    v123 = v127;
    *(v127 + 64) = v168;
    *(v123 + 80) = v122;
    *(v123 + 96) = v170;
    v124 = v165;
    *v123 = v164;
    *(v123 + 16) = v124;
    result = v167;
    *(v123 + 32) = v166;
    *(v123 + 48) = result;
  }

  return result;
}

unint64_t sub_1D60E9AD0()
{
  result = qword_1EC883968;
  if (!qword_1EC883968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883968);
  }

  return result;
}

unint64_t sub_1D60E9B24()
{
  result = qword_1EC882880;
  if (!qword_1EC882880)
  {
    sub_1D60E78B0(255, &qword_1EDF17538, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882880);
  }

  return result;
}

unint64_t sub_1D60E9BA8()
{
  result = qword_1EC883970;
  if (!qword_1EC883970)
  {
    sub_1D60E78B0(255, &qword_1EDF17520, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883970);
  }

  return result;
}

unint64_t sub_1D60E9C64()
{
  result = qword_1EC8828B8;
  if (!qword_1EC8828B8)
  {
    sub_1D60E78B0(255, &qword_1EDF17538, MEMORY[0x1E69E6158], MEMORY[0x1E69D62D0], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8828B8);
  }

  return result;
}

unint64_t sub_1D60E9CE8()
{
  result = qword_1EC8839A0;
  if (!qword_1EC8839A0)
  {
    sub_1D60E78B0(255, &qword_1EDF17520, MEMORY[0x1E69E63B0], MEMORY[0x1E69D62F0], MEMORY[0x1E69D6160]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839A0);
  }

  return result;
}

unint64_t sub_1D60E9DC0()
{
  result = qword_1EDF34950;
  if (!qword_1EDF34950)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF34950);
  }

  return result;
}

unint64_t sub_1D60E9E38()
{
  result = qword_1EC8839C8;
  if (!qword_1EC8839C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839C8);
  }

  return result;
}

unint64_t sub_1D60E9E90()
{
  result = qword_1EC8839D0;
  if (!qword_1EC8839D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839D0);
  }

  return result;
}

unint64_t sub_1D60E9EE8()
{
  result = qword_1EC8839D8;
  if (!qword_1EC8839D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8839D8);
  }

  return result;
}

uint64_t PuzzleBarButtonItems.allItems.getter()
{
  v3 = *v0;

  sub_1D6986F4C(v1);
  return v3;
}

uint64_t PuzzleBarButtonItem.toolbarItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PuzzleBarButtonItem(0) + 24);

  return sub_1D60E9FDC(v3, a1);
}

uint64_t sub_1D60E9FDC(uint64_t a1, uint64_t a2)
{
  sub_1D5B915C4(0, qword_1EDF10A30, type metadata accessor for PuzzleToolbarItem);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PuzzleBarButtonItem.init(identifier:barButtonItem:toolbarItem:iconThemeInverted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  v9 = type metadata accessor for PuzzleBarButtonItem(0);
  result = sub_1D60EA0DC(a4, a6 + *(v9 + 24));
  *(a6 + *(v9 + 28)) = a5;
  return result;
}

uint64_t sub_1D60EA0DC(uint64_t a1, uint64_t a2)
{
  sub_1D5B915C4(0, qword_1EDF10A30, type metadata accessor for PuzzleToolbarItem);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PuzzleToolbarItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PuzzleToolbarItem.template.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PuzzleToolbarItem(0) + 20);
  v4 = sub_1D725DF2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id PuzzleToolbarItem.toolbarItemType.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PuzzleToolbarItem(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_1D60EA258(v4, v5);
}

id sub_1D60EA258(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {
  }

  else
  {

    return a2;
  }
}

uint64_t PuzzleToolbarItem.handler.getter()
{
  v1 = (v0 + *(type metadata accessor for PuzzleToolbarItem(0) + 28));
  v2 = *v1;
  sub_1D5DEA510(*v1, v1[1]);
  return v2;
}

__n128 PuzzleToolbarItem.init(identifier:template:toolbarItemType:handler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v18 = *a4;
  v11 = a4[1].n128_u64[0];
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for PuzzleToolbarItem(0);
  v13 = v12[5];
  v14 = sub_1D725DF2C();
  (*(*(v14 - 8) + 32))(&a7[v13], a3, v14);
  v15 = &a7[v12[6]];
  result = v18;
  *v15 = v18;
  *(v15 + 2) = v11;
  v17 = &a7[v12[7]];
  *v17 = a5;
  *(v17 + 1) = a6;
  return result;
}

uint64_t static FeedItemFilter.apply(items:title:logger:filters:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a8;
  v44 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1D726279C();

  v46 = a4;
  v15 = sub_1D725C3FC();
  v16 = sub_1D7262EDC();
  v50 = a3;

  v47 = v14;
  v48 = a2;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v51.n128_u64[0] = v18;
    *v17 = 136446722;
    *(v17 + 4) = sub_1D5BC5100(a2, v50, &v51);
    *(v17 + 12) = 2050;
    type metadata accessor for FeedItemFilter(0, a6, a7, v19);
    *(v17 + 14) = sub_1D726279C();

    *(v17 + 22) = 2050;
    *(v17 + 24) = v14;
    _os_log_impl(&dword_1D5B42000, v15, v16, "%{public}s applying %{public}ld filters to %{public}ld items.", v17, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1DA6FD500](v18, -1, -1);
    MEMORY[0x1DA6FD500](v17, -1, -1);
  }

  else
  {
  }

  type metadata accessor for FeedItemFilterResultEntry(0, a6, a7, v20);
  v52 = sub_1D726275C();
  v51.n128_u64[0] = a5;
  MEMORY[0x1EEE9AC00](v52, v21);
  v42 = a6;
  v43 = a7;
  type metadata accessor for FeedItemFilter(255, a6, a7, v22);
  v23 = sub_1D72627FC();
  v25 = type metadata accessor for FeedItemFilterApplicator(0, a6, a7, v24);
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1D5B874E4(sub_1D60EB7C8, v41, v23, v25, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v27);
  v51.n128_u64[0] = v44;
  MEMORY[0x1EEE9AC00](v28, v29);
  v41[0] = a6;
  v41[1] = a7;
  v42 = v30;
  v43 = &v52;
  sub_1D72627FC();

  swift_getWitnessTable();
  v31 = sub_1D7263E7C();

  v32 = v50;

  v33 = sub_1D725C3FC();
  v34 = sub_1D7262EDC();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v51.n128_u64[0] = v36;
    *v35 = 136446722;
    v37 = v48;
    *(v35 + 4) = sub_1D5BC5100(v48, v50, &v51);
    *(v35 + 12) = 2050;
    v38 = v47;
    *(v35 + 14) = v47;
    *(v35 + 22) = 2050;
    *(v35 + 24) = sub_1D726279C();

    _os_log_impl(&dword_1D5B42000, v33, v34, "%{public}s filtered %{public}ld items to %{public}ld items.", v35, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1DA6FD500](v36, -1, -1);
    v39 = v35;
    v32 = v50;
    MEMORY[0x1DA6FD500](v39, -1, -1);
  }

  else
  {

    v38 = v47;
    v37 = v48;
  }

  FeedItemFilterResultJournal.init(title:initialCount:entries:)(v37, v32, v38, v52, &v51);
  sub_1D7046D54(v31, &v51, v49);
}

void sub_1D60EA908(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v24 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v22 - v14;
  v16 = *(v8 + 16);
  v23 = v17;
  v16(&v22 - v14, v13);
  swift_getEnumCaseMultiPayload();
  (*(v4 + 32))(v6, v15, v3);
  v18 = *(a1 + 24);
  (*(v18 + 24))(&v25, v3, v18);
  (*(v4 + 8))(v6, v3);
  v22 = v25;
  v19 = v24;
  (v16)(v24, v23, a1);
  v20 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = v18;
  *(v21 + 32) = v22;
  (*(v8 + 32))(v21 + v20, v19, a1);
  nullsub_1();
}

uint64_t sub_1D60EAC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v49 = a1;
  v53 = type metadata accessor for FeedItemFilterResultEntry(0, a4, a5, a4);
  v11 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v12);
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v39 - v16;
  v19 = type metadata accessor for FeedItemFilter.Result(0, a4, a5, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v52 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v48 = &v39 - v25;
  v50 = a4;
  v51 = a5;
  type metadata accessor for FeedItemFilterApplicator(0, a4, a5, v26);
  if (!sub_1D726279C())
  {
    return 1;
  }

  v39 = v17;
  v40 = v11;
  v41 = a3;
  v42 = v6;
  v27 = 0;
  v45 = (v20 + 16);
  v46 = v19;
  v44 = (v11 + 48);
  v47 = (v20 + 8);
  for (i = a2 + 40; ; i += 16)
  {
    v29 = sub_1D726277C();
    result = sub_1D726271C();
    if ((v29 & 1) == 0)
    {
      break;
    }

    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_11;
    }

    v32 = *(i - 8);

    v33 = v48;
    sub_1D67616C8(v49, v32);
    v34 = v46;
    v35 = v52;
    (*v45)(v52, v33, v46);
    if ((*v44)(v35, 1, v53) != 1)
    {
      v37 = v39;
      v36 = v40;
      v38 = v53;
      (*(v40 + 32))(v39, v52, v53);
      (*(v36 + 16))(v43, v37, v38);
      sub_1D72627FC();
      sub_1D72627BC();

      (*(v36 + 8))(v37, v38);
      (*v47)(v33, v34);
      return 0;
    }

    (*v47)(v33, v34);

    ++v27;
    if (v31 == sub_1D726279C())
    {
      return 1;
    }
  }

  result = sub_1D7263DBC();
  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1D60EAFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a4;
  v36 = a7;
  v12 = type metadata accessor for FeedItemFilter(0, a5, a6, a4);
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v32 = &v32 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v19 = &v32 - v18;
  v21 = type metadata accessor for FeedItemFilterResultEntry(0, a5, a6, v20);
  v37 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v32 - v23;
  v38 = a2;
  v39 = a3;
  type metadata accessor for FeedItemFilterMatcherApplicator(0, AssociatedTypeWitness, v25, v26);
  if (FeedItemFilterMatcherApplicator.matches(_:)())
  {
    v27 = v36;
    v28 = *(v37 + 56);

    return v28(v27, 1, 1, v21);
  }

  else
  {
    (*(v16 + 16))(v19, a1, AssociatedTypeWitness);
    v30 = v32;
    (*(v33 + 16))(v32, v35, v34);
    sub_1D6AB7DA8(v19, v30, a5, a6, v24);
    v31 = v36;
    (*(v37 + 32))(v36, v24, v21);
    return (*(v37 + 56))(v31, 0, 1, v21);
  }
}

uint64_t sub_1D60EB2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a4;
  v36 = a7;
  v12 = type metadata accessor for FeedItemFilter(0, a5, a6, a4);
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v32 = &v32 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v19 = &v32 - v18;
  v21 = type metadata accessor for FeedItemFilterResultEntry(0, a5, a6, v20);
  v37 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v32 - v23;
  v38 = a2;
  v39 = a3;
  type metadata accessor for FeedItemFilterMatcherApplicator(0, AssociatedTypeWitness, v25, v26);
  if (FeedItemFilterMatcherApplicator.matches(_:)())
  {
    (*(v16 + 16))(v19, a1, AssociatedTypeWitness);
    v27 = v32;
    (*(v33 + 16))(v32, v35, v34);
    sub_1D6AB7DA8(v19, v27, a5, a6, v24);
    v28 = v36;
    (*(v37 + 32))(v36, v24, v21);
    return (*(v37 + 56))(v28, 0, 1, v21);
  }

  else
  {
    v30 = v36;
    v31 = *(v37 + 56);

    return v31(v30, 1, 1, v21);
  }
}

uint64_t FeedItemFilter.wrap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v16);
  swift_getEnumCaseMultiPayload();
  (*(v11 + 32))(v13, v18, v10);
  v21 = *(a3 + 24);
  v22 = FeedItemFilterMatcherType.wrap<A>(_:)(a1, a2, v10, a4, v21, a5);
  (*(v11 + 8))(v13, v10, v22);
  v23 = type metadata accessor for FeedItemFilterWrapperMatcher(255, a4, v10, v21);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for FeedItemFilter(0, v23, WitnessTable, v25);
  return swift_storeEnumTagMultiPayload();
}

void sub_1D60EB7C8(void *a1@<X8>, uint64_t a2@<X3>)
{
  v4 = type metadata accessor for FeedItemFilter(0, *(v2 + 16), *(v2 + 24), a2);
  sub_1D60EA908(v4);
  *a1 = v5;
  a1[1] = v6;
}

uint64_t sub_1D60EB850(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1D60EB95C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t sub_1D60EBB38(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = *(type metadata accessor for FeedItemFilter(0, v6, v7, a4) - 8);
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v10, v11, v6, v7);
}

uint64_t sub_1D60EBC04(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for FeedItemFilterResultEntry(319, *(a1 + 16), *(a1 + 24), a5);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v5;
}

uint64_t sub_1D60EBC60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 - 8);
  v10 = *(v9 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(v9 + 80);
  v13 = *(*(AssociatedTypeWitness - 8) + 64) + v12;
  if (v11 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v14 = v10 + (v13 & ~v12) + 1;
  v15 = 8 * v14;
  if (v14 > 3)
  {
    goto LABEL_7;
  }

  v18 = (((1 << v15) + a2 - v11) >> v15) + 1;
  if (HIWORD(v18))
  {
    v16 = *(a1 + v14);
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_28:
    if (v8 < 0xFE)
    {
      v23 = *(((a1 + v13) & ~v12) + v10);
      if (v23 >= 2)
      {
        v22 = (v23 ^ 0xFF) + 1;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = (*(v7 + 48))(a1);
    }

    if (v22 >= 2)
    {
      return v22 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v18 > 0xFF)
  {
    v16 = *(a1 + v14);
    if (*(a1 + v14))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v18 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_28;
  }

LABEL_15:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return (v21 | v19) + v11;
}

void sub_1D60EBE84(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(v7 - 8) + 64);
  v11 = *(v8 + 64);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = v12 - 1;
  v14 = *(*(v7 - 8) + 80);
  v15 = v11 + v14;
  v16 = v10 + 1;
  v17 = ((v11 + v14) & ~v14) + v10 + 1;
  if (v12 - 1 >= a3)
  {
    v18 = 0;
    if (v13 < a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = 1;
    if (v17 <= 3)
    {
      v19 = (((1 << (8 * v17)) + a3 - v12) >> (8 * v17)) + 1;
      v20 = HIWORD(v19);
      if (v19 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v19 >= 2)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      if (v20)
      {
        v18 = 4;
      }

      else
      {
        v18 = v22;
      }
    }

    if (v13 < a2)
    {
LABEL_16:
      v23 = a2 - v12;
      if (v17 < 4)
      {
        v24 = (v23 >> (8 * v17)) + 1;
        if (v17)
        {
          v25 = v23 & ~(-1 << (8 * v17));
          bzero(a1, v17);
          if (v17 != 3)
          {
            if (v17 == 2)
            {
              *a1 = v25;
              if (v18 > 1)
              {
LABEL_55:
                if (v18 == 2)
                {
                  *&a1[v17] = v24;
                }

                else
                {
                  *&a1[v17] = v24;
                }

                return;
              }
            }

            else
            {
              *a1 = v23;
              if (v18 > 1)
              {
                goto LABEL_55;
              }
            }

            goto LABEL_52;
          }

          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        if (v18 > 1)
        {
          goto LABEL_55;
        }
      }

      else
      {
        bzero(a1, v17);
        *a1 = v23;
        v24 = 1;
        if (v18 > 1)
        {
          goto LABEL_55;
        }
      }

LABEL_52:
      if (v18)
      {
        a1[v17] = v24;
      }

      return;
    }
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    *&a1[v17] = 0;
LABEL_31:
    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (!v18)
  {
    goto LABEL_31;
  }

  a1[v17] = 0;
  if (!a2)
  {
    return;
  }

LABEL_32:
  if (v9 < 0xFE)
  {
    v27 = (&a1[v15] & ~v14);
    if (a2 > 0xFD)
    {
      if (v16 <= 3)
      {
        v28 = ~(-1 << (8 * v16));
      }

      else
      {
        v28 = -1;
      }

      if (v10 != -1)
      {
        v29 = v28 & (a2 - 254);
        if (v16 <= 3)
        {
          v30 = v10 + 1;
        }

        else
        {
          v30 = 4;
        }

        bzero(v27, v16);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *v27 = v29;
            v27[2] = BYTE2(v29);
          }

          else
          {
            *v27 = v29;
          }
        }

        else if (v30 == 1)
        {
          *v27 = v29;
        }

        else
        {
          *v27 = v29;
        }
      }
    }

    else
    {
      v27[v10] = ~a2;
    }
  }

  else
  {
    v26 = *(v8 + 56);

    v26(a1, a2 + 1);
  }
}

uint64_t FormatBoolean.value(contextLayoutOptions:)(uint64_t a1)
{
  sub_1D5E04C00(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FormatOption(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  if (*(v1 + 16))
  {
    v13 = *(v1 + 8);

    FormatOptionCollection.subscript.getter(v12, v13, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1D5D28248(v6, sub_1D5E04C00);
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      *v14 = v12;
      v14[1] = v13;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      sub_1D5D2F2C4(v12, v13, 1);
      sub_1D5D247E0(v6, v11);
      v17 = *(v11 + 2);

      LOBYTE(v12) = sub_1D60ECADC(&v17, a1, v11);

      sub_1D5D28248(v11, type metadata accessor for FormatOption);
    }
  }

  return v12 & 1;
}

uint64_t FormatBoolean.value(context:)()
{
  sub_1D725A7EC();
  v0 = FormatBoolean.value(contextLayoutOptions:)(v2);

  return v0 & 1;
}

uint64_t FormatBoolean.init(value:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t FormatBoolean.encode(to:)(void *a1)
{
  v3 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v27 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  if (v13)
  {
    if (qword_1EDF31EF8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D725BD1C();
    v17 = __swift_project_value_buffer(v16, qword_1EDFFCDC8);
    (*(*(v16 - 8) + 16))(v6, v17, v16);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v18 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v18, v19);
    v27[-2] = v11;
    v27[-1] = v12;
    v20 = v30;
    sub_1D5D2BEC4(v6, sub_1D60ECF00, &v27[-4], v14, v15);
    sub_1D5D28248(v6, type metadata accessor for FormatVersionRequirement);
    if (!v20)
    {
      v27[1] = 0x286E6F6974706FLL;
      v27[2] = 0xE700000000000000;
      MEMORY[0x1DA6F9910](v11, v12);
      MEMORY[0x1DA6F9910](41, 0xE100000000000000);
      __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      sub_1D726473C();
    }
  }

  else
  {
    if (qword_1EDF31EF8 != -1)
    {
      swift_once();
    }

    v21 = sub_1D725BD1C();
    v22 = __swift_project_value_buffer(v21, qword_1EDFFCDC8);
    (*(*(v21 - 8) + 16))(v10, v22, v21);
    type metadata accessor for FormatVersionRequirement.Value(0);
    v23 = swift_storeEnumTagMultiPayload();
    MEMORY[0x1EEE9AC00](v23, v24);
    LOBYTE(v27[-2]) = v11 & 1;
    v25 = v30;
    sub_1D5D2BEC4(v10, sub_1D60ECF08, &v27[-4], v14, v15);
    sub_1D5D28248(v10, type metadata accessor for FormatVersionRequirement);
    if (!v25)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      sub_1D726474C();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_1D60EC858(char a1)
{
  sub_1D7263D4C();

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1DA6F9910](v2, v3);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000016;
}

unint64_t sub_1D60EC908(uint64_t a1, uint64_t a2)
{
  sub_1D7263D4C();

  MEMORY[0x1DA6F9910](a1, a2);
  MEMORY[0x1DA6F9910](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t FormatBoolean.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x1DA6F9910](v1, v0[1]);
    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return 0x286E6F6974706FLL;
  }

  else if (v1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_1D60ECA48()
{
  v1 = *v0;
  if (v0[2])
  {
    MEMORY[0x1DA6F9910](v1, v0[1]);
    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return 0x286E6F6974706FLL;
  }

  else if (v1)
  {
    return 1702195828;
  }

  else
  {
    return 0x65736C6166;
  }
}

uint64_t sub_1D60ECADC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a1 >> 60;
  if (((1 << v4) & 0x3EFE) != 0)
  {
    v6 = type metadata accessor for FormatLayoutError(0);
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    sub_1D5D2477C(a3, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else if (v4)
  {
    v16[0] = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    v6 = sub_1D60ECADC(v16, a2, a3);
  }

  else
  {
    v6 = *(v3 + 16);
    v10 = *(v3 + 24);
    if (*(v10 + 16))
    {
      v11 = *(*(a2 + 40) + 16);
      swift_beginAccess();
      if (*(*(v11 + 16) + 16))
      {
        v15 = *(a2 + 56);

        sub_1D6F622E0(v12);
        sub_1D5B886D0(v13);
        v14 = v15;
      }

      else
      {

        v14 = sub_1D6E46E28();
      }

      v6 = sub_1D5FA1ACC(v14, v6, v10);
    }
  }

  return v6 & 1;
}

double sub_1D60ECCC0()
{
  if (*(v0 + 16) == 1)
  {
    v3 = v0;
    v1 = *v0;
    v2 = *(v3 + 8);
    sub_1D5E04CC4(v1, v2, 1);
    v4 = sub_1D5E26E28(&unk_1F51117E0);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;
    *(v5 + 40) = 0;
    sub_1D6C4D24C(v5 | 0x3000000000000000);
  }

  return result;
}

uint64_t _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((v4 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      sub_1D5D2F2C4(*a1, v3, 0);
      sub_1D5D2F2C4(v5, v6, 0);
      v11 = v5 ^ v2 ^ 1;
      return v11 & 1;
    }

LABEL_11:
    sub_1D5E04CC4(v5, v6, v7);
    sub_1D5D2F2C4(v2, v3, v4);
    sub_1D5D2F2C4(v5, v6, v7);
    v11 = 0;
    return v11 & 1;
  }

  if ((v7 & 1) == 0)
  {

    goto LABEL_11;
  }

  if (v2 != v5 || v3 != v6)
  {
    v9 = sub_1D72646CC();
    sub_1D5E04CC4(v5, v6, 1);
    sub_1D5E04CC4(v2, v3, 1);
    sub_1D5D2F2C4(v2, v3, 1);
    sub_1D5D2F2C4(v5, v6, 1);
    return v9 & 1;
  }

  v11 = 1;
  sub_1D5E04CC4(*a1, v3, 1);
  sub_1D5E04CC4(v2, v3, 1);
  sub_1D5D2F2C4(v2, v3, 1);
  sub_1D5D2F2C4(v2, v3, 1);
  return v11 & 1;
}