void sub_1D5F771A8(uint64_t a1)
{
  if (!qword_1EC8817A0)
  {
    sub_1D5B81B04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8817A0);
    }
  }
}

uint64_t sub_1D5F77210(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B5446C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1D5F77290()
{
  result = qword_1EC8817B0;
  if (!qword_1EC8817B0)
  {
    sub_1D5B5A498(255, &qword_1EDF1AA80, 0x1E69DD258);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC8817B0);
  }

  return result;
}

unint64_t sub_1D5F7730C()
{
  result = qword_1EDF33830;
  if (!qword_1EDF33830)
  {
    sub_1D5C2C40C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33830);
  }

  return result;
}

uint64_t sub_1D5F7737C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1D5F77604(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

unint64_t sub_1D5F773EC()
{
  result = qword_1EDF338C8;
  if (!qword_1EDF338C8)
  {
    sub_1D5F77604(255, &qword_1EDF338C0, sub_1D5B4BADC, &type metadata for FormatSupplementary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF338C8);
  }

  return result;
}

uint64_t sub_1D5F77480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1D5F77604(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1D5F774DC()
{
  result = qword_1EDF338B0;
  if (!qword_1EDF338B0)
  {
    sub_1D5F77604(255, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF338B0);
  }

  return result;
}

unint64_t sub_1D5F77570()
{
  result = qword_1EDF33888;
  if (!qword_1EDF33888)
  {
    sub_1D5F77604(255, &qword_1EDF33880, sub_1D5B4A54C, &type metadata for FormatGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33888);
  }

  return result;
}

void sub_1D5F77604(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for FormatObject(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1D5F77664()
{
  result = qword_1EDF33870;
  if (!qword_1EDF33870)
  {
    sub_1D5F77604(255, &qword_1EDF33860, sub_1D5B4CBD8, &type metadata for FormatStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33870);
  }

  return result;
}

void sub_1D5F776F8(uint64_t a1)
{
  if (!qword_1EDF048C8)
  {
    sub_1D5B5A498(255, &qword_1EDF04648, 0x1E695DF20);
    sub_1D5B49474(255, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    v1 = sub_1D726288C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF048C8);
    }
  }
}

uint64_t sub_1D5F77788(uint64_t a1, void *a2)
{
  sub_1D5F776F8(0);

  return sub_1D5F72748(a1, a2, v4);
}

void sub_1D5F77808(uint64_t a1)
{
  if (!qword_1EDF048F8)
  {
    sub_1D5B5D3A4(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1D5B49474(255, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
    v1 = sub_1D726288C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF048F8);
    }
  }
}

uint64_t objectdestroy_175Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1D5F7793C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1D5F77808(0);

  return sub_1D5F72238(a1, a2, a3, v6);
}

void sub_1D5F779C4(uint64_t a1, void *a2)
{
  sub_1D5BAB764(0, qword_1EDF048E0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  sub_1D5F685C8(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_1D5F77AF0()
{

  return sub_1D5F6EC6C();
}

unint64_t sub_1D5F77BE0()
{
  result = qword_1EC8817C8;
  if (!qword_1EC8817C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8817C8);
  }

  return result;
}

uint64_t FeedCursorManifest.publishDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1EDFFC6A0;
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedCursorManifest.consumedGroupIdentifiers(excludingCursorIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeedCursorManifestGroupEntry(255, *(*v4 + 80), *(*v4 + 88), a4);
  sub_1D72627FC();

  swift_getWitnessTable();
  v5 = sub_1D726242C();

  v6 = sub_1D5B86020(v5);

  return v6;
}

void sub_1D5F77DF8(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  type metadata accessor for FeedCursorManifestGroupEntry(255, *(*a2 + 80), *(*a2 + 88), a4);
  sub_1D72627FC();

  sub_1D7261E3C();

  if (!v14)
  {
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  swift_getWitnessTable();
  v11 = sub_1D72624AC();

  swift_getWitnessTable();
  sub_1D7262C9C();

  if (*(v14 + 32) == a3 && *(v14 + 40) == a4 || (sub_1D72646CC() & 1) != 0)
  {

LABEL_6:
    *a5 = 0;
    a5[1] = 0;
    return;
  }

  sub_1D725C58C();
  if (v5)
  {
  }

  else
  {

    if ((v11 & 0xFE) != 2)
    {
      goto LABEL_6;
    }
  }

  v12 = *(v8 + 24);
  *a5 = *(v8 + 16);
  a5[1] = v12;
}

uint64_t FeedCursorManifest.deinit()
{
  v1 = qword_1EDFFC6A0;
  v2 = sub_1D725891C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t FeedCursorManifestGroupEntry.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedCursorManifestGroupEntry.cursorIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FeedCursorManifestGroupEntry.kind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);

  return v5(a1, v1 + v3, AssociatedTypeWitness);
}

uint64_t FeedCursorManifestGroupEntry.createdDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  v4 = sub_1D725891C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *FeedCursorManifestGroupEntry.deinit()
{

  v1 = *(*v0 + 112);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v3 = *(*v0 + 120);
  v4 = sub_1D725891C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_1D5F78568(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

BOOL _s8NewsFeed21FormatImageAdjustmentO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[5];
  v3 = a1[7];
  v76 = a1[6];
  v77 = v3;
  v4 = a1[1];
  v5 = a1[3];
  v72 = a1[2];
  v73 = v5;
  v6 = a1[3];
  v7 = a1[5];
  v74 = a1[4];
  v75 = v7;
  v8 = a1[1];
  v70 = *a1;
  v71 = v8;
  v9 = a2[5];
  v10 = a2[7];
  v85 = a2[6];
  v86 = v10;
  v11 = a2[1];
  v12 = a2[3];
  v81 = a2[2];
  v82 = v12;
  v14 = a2[3];
  v13 = a2[4];
  v15 = v13;
  v84 = a2[5];
  v83 = v13;
  v16 = a2[1];
  v79 = *a2;
  v80 = v16;
  v17 = a1[5];
  v18 = a1[7];
  v88[6] = a1[6];
  v88[7] = v18;
  v19 = a1[1];
  v20 = a1[3];
  v88[2] = a1[2];
  v88[3] = v20;
  v21 = a1[4];
  v88[5] = v17;
  v88[4] = v21;
  v22 = *a1;
  v88[1] = v19;
  v88[0] = v22;
  v95 = v9;
  v96 = v85;
  v97 = a2[7];
  v91 = v11;
  v92 = v81;
  v93 = v14;
  v94 = v15;
  v90 = v79;
  v23 = a1[7];
  v99[6] = v76;
  v99[7] = v23;
  v99[2] = v72;
  v99[3] = v6;
  v99[4] = v74;
  v99[5] = v2;
  v78 = *(a1 + 128);
  v87 = *(a2 + 128);
  v89 = *(a1 + 128);
  v98 = *(a2 + 128);
  v100 = *(a1 + 128);
  v99[0] = v70;
  v99[1] = v4;
  v24 = sub_1D5F78DC4(v99);
  if (!v24)
  {
    v28 = sub_1D5DEA32C(v99);
    v67 = v85;
    v68 = v86;
    v69 = v87;
    v63 = v81;
    v64 = v82;
    v65 = v83;
    v66 = v84;
    v61 = v79;
    v62 = v80;
    if (!sub_1D5F78DC4(&v61))
    {
      v38 = sub_1D5DEA32C(&v61);
      sub_1D5F78F40(v28, v42);
      sub_1D5F78F40(v38, &v43);
      v41[4] = v42[4];
      v41[5] = v42[5];
      v41[6] = v42[6];
      v41[7] = v42[7];
      v41[0] = v42[0];
      v41[1] = v42[1];
      v41[2] = v42[2];
      v41[3] = v42[3];
      v40[4] = v47;
      v40[5] = v48;
      v40[6] = v49;
      v40[7] = v50;
      v40[0] = v43;
      v40[1] = v44;
      v40[2] = v45;
      v40[3] = v46;
      sub_1D5ECEF80(&v79, &v52);
      sub_1D5ECEF80(&v70, &v52);
      sub_1D5ECEF80(&v70, &v52);
      sub_1D5ECEF80(&v79, &v52);
      v27 = _s8NewsFeed25FormatDirectionalGradientO2eeoiySbAC_ACtFZ_0(v41, v40);
      goto LABEL_12;
    }

    v58 = v76;
    v59 = v77;
    v60 = v78;
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v57 = v75;
    v52 = v70;
    v53 = v71;
    v29 = sub_1D5DEA32C(&v52);
    sub_1D5F78EE4(v29, &v43);
    goto LABEL_10;
  }

  if (v24 == 1)
  {
    v25 = sub_1D5DEA32C(v99);
    v67 = v85;
    v68 = v86;
    v69 = v87;
    v63 = v81;
    v64 = v82;
    v65 = v83;
    v66 = v84;
    v61 = v79;
    v62 = v80;
    if (sub_1D5F78DC4(&v61) == 1)
    {
      v26 = sub_1D5DEA32C(&v61);
      v57 = *(v25 + 80);
      v58 = *(v25 + 96);
      v59 = *(v25 + 112);
      v60 = *(v25 + 128);
      v53 = *(v25 + 16);
      v54 = *(v25 + 32);
      v55 = *(v25 + 48);
      v56 = *(v25 + 64);
      v52 = *v25;
      v48 = *(v26 + 80);
      v49 = *(v26 + 96);
      v50 = *(v26 + 112);
      v51 = *(v26 + 128);
      v44 = *(v26 + 16);
      v45 = *(v26 + 32);
      v46 = *(v26 + 48);
      v47 = *(v26 + 64);
      v43 = *v26;
      sub_1D5ECEF80(&v79, v42);
      sub_1D5ECEF80(&v70, v42);
      sub_1D5ECEF80(&v70, v42);
      sub_1D5ECEF80(&v79, v42);
      v27 = _s8NewsFeed26FormatImageAdjustmentBlendO2eeoiySbAC_ACtFZ_0(&v52, &v43);
LABEL_12:
      v36 = v27;
      sub_1D5F78DD0(v88);
      sub_1D5ECEFDC(&v79);
      sub_1D5ECEFDC(&v70);
      return v36;
    }

    v58 = v76;
    v59 = v77;
    v60 = v78;
    v54 = v72;
    v55 = v73;
    v56 = v74;
    v57 = v75;
    v52 = v70;
    v53 = v71;
    v37 = sub_1D5DEA32C(&v52);
    sub_1D5F78E88(v37, &v43);
    goto LABEL_10;
  }

  v30 = sub_1D5DEA32C(v99);
  v31 = *v30;
  v32 = *(v30 + 8);
  v67 = v85;
  v68 = v86;
  v69 = v87;
  v63 = v81;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  v61 = v79;
  v62 = v80;
  if (sub_1D5F78DC4(&v61) != 2)
  {
LABEL_10:
    sub_1D5ECEF80(&v79, &v61);
    sub_1D5F78DD0(v88);
    return 0;
  }

  v33 = sub_1D5DEA32C(&v61);
  v34 = *v33;
  v35 = *(v33 + 8);
  sub_1D5F78DD0(v88);
  *&v52 = v31;
  BYTE8(v52) = v32;
  *&v43 = v34;
  BYTE8(v43) = v35;
  return _s8NewsFeed27FormatImageAdjustmentFilterO2eeoiySbAC_ACtFZ_0(&v52, &v43);
}

unint64_t sub_1D5F78B28(uint64_t a1)
{
  result = sub_1D5F78B50();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F78B50()
{
  result = qword_1EC8817D0;
  if (!qword_1EC8817D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8817D0);
  }

  return result;
}

unint64_t sub_1D5F78BA4(void *a1)
{
  a1[1] = sub_1D5C85028();
  a1[2] = sub_1D5F78BDC();
  result = sub_1D5F78C30();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F78BDC()
{
  result = qword_1EDF296C8;
  if (!qword_1EDF296C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF296C8);
  }

  return result;
}

unint64_t sub_1D5F78C30()
{
  result = qword_1EC8817D8;
  if (!qword_1EC8817D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8817D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed19FormatPointEquationVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D5F78CC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1D5F78D10(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 120) = 0;
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 128) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 129) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 0;
      *(a1 + 104) = 2 * -a2;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
      return result;
    }

    *(a1 + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D5F78D90(uint64_t result, char a2)
{
  v2 = *(result + 128) & 0x8F | (32 * (a2 & 3));
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v2;
  return result;
}

uint64_t sub_1D5F78DD0(uint64_t a1)
{
  sub_1D5F78E2C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5F78E2C()
{
  if (!qword_1EC8817E0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8817E0);
    }
  }
}

uint64_t sub_1D5F78F9C()
{
  v1 = v0[8];
  v7[6] = v0[7];
  v7[7] = v1;
  v7[8] = v0[9];
  v2 = v0[4];
  v7[2] = v0[3];
  v7[3] = v2;
  v3 = v0[6];
  v7[4] = v0[5];
  v7[5] = v3;
  v4 = v0[2];
  v7[0] = v0[1];
  v7[1] = v4;
  sub_1D5D68304(v7);
  sub_1D5F792C8(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_workspaceGroup, type metadata accessor for DebugFormatEditorWorkspaceGroup);

  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_debugGroupLayoutAttributes + 72);

  sub_1D5F792C8(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_groupLayoutContext, type metadata accessor for GroupLayoutContext);
  sub_1D5F792C8(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_groupLayoutBindings, type metadata accessor for GroupLayoutBindingContext);
  sub_1D5F792C8(v0 + OBJC_IVAR____TtC8NewsFeed29DebugFormatCanvasLayoutResult_boundLayoutFactory, type metadata accessor for FormatGroupLayoutFactory.Bound);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatCanvasLayoutResult(uint64_t a1)
{
  result = qword_1EC8817E8;
  if (!qword_1EC8817E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5F79164(uint64_t a1)
{
  result = type metadata accessor for DebugFormatEditorWorkspaceGroup(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GroupLayoutContext(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for GroupLayoutBindingContext(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for FormatGroupLayoutFactory.Bound(319);
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D5F792C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NewsFeed::GapFontBook __swiftcall GapFontBook.init(titleFont:descriptionFont:)(UIFont titleFont, UIFont descriptionFont)
{
  v2->super.isa = titleFont.super.isa;
  v2[1].super.isa = descriptionFont.super.isa;
  result.descriptionFont = descriptionFont;
  result.titleFont = titleFont;
  return result;
}

char *sub_1D5F793AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = sub_1D726207C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_1D5F796C4(v4, v5);
}

void sub_1D5F79410()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = *&v0[qword_1EC8817F8];
  v2 = [v1 layer];
  v3 = [*&v0[qword_1EC881808] CGColor];
  [v2 setBorderColor_];

  v4 = [v1 layer];
  v5 = 0.0;
  if (v0[qword_1EC881800] == 1)
  {
    v6 = [v0 traitCollection];
    [v6 displayScale];
    v8 = v7;

    v5 = 1.0 / v8;
  }

  [v4 setBorderWidth_];
}

void sub_1D5F7954C(void *a1)
{
  v1 = a1;
  sub_1D5F79410();
}

void sub_1D5F79594()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_prepareForReuse);
  v0[qword_1EC881800] = 1;
  v1 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v2 = *&v0[qword_1EC881810];
  *&v0[qword_1EC881810] = v1;
}

void sub_1D5F79608(void *a1)
{
  v1 = a1;
  sub_1D5F79594();
}

void sub_1D5F79650(uint64_t a1)
{
  v2 = *(a1 + qword_1EC881810);
}

char *sub_1D5F796C4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = qword_1EC8817F8;
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v2[qword_1EC881800] = 1;
  v6 = qword_1EC881808;
  *&v2[v6] = [objc_opt_self() lightGrayColor];
  v7 = qword_1EC881810;
  *&v2[v7] = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  if (a2)
  {
    v8 = sub_1D726203C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithStyle_reuseIdentifier_, 3, v8);

  [v9 setAccessoryView_];
  return v9;
}

void sub_1D5F79824()
{
  v1 = qword_1EC8817F8;
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  *(v0 + qword_1EC881800) = 1;
  v2 = qword_1EC881808;
  *(v0 + v2) = [objc_opt_self() lightGrayColor];
  v3 = qword_1EC881810;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  sub_1D726402C();
  __break(1u);
}

uint64_t FormatIssueCoverNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatIssueCoverNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

unint64_t FormatIssueCoverNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return sub_1D5C82CD8(v2);
}

double FormatIssueCoverNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

double FormatIssueCoverNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double FormatIssueCoverNode.content.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 72);

  return result;
}

double FormatIssueCoverNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

double sub_1D5F79C3C(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 88);
  sub_1D5EB1500(v2);
  *(v3 + 88) = v2;
  return sub_1D5EB15C4(v4);
}

double FormatIssueCoverNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  return sub_1D5EB15C4(v3);
}

void FormatIssueCoverNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = *(v1 + 104);
  *(a1 + 8) = v2;
}

double sub_1D5F79E44(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;

  return result;
}

double FormatIssueCoverNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;

  return result;
}

uint64_t FormatIssueCoverNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[17];
  v3 = v1[18];
  v4 = v1[19];
  v5 = v1[20];
  v6 = v1[21];
  v7 = v1[22];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatIssueCoverNode.__allocating_init(identifier:size:resize:adjustments:style:animation:content:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:sizeConstraint:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10, char a11, uint64_t *a12, uint64_t a13, char *a14, __int128 *a15)
{
  v20 = swift_allocObject();
  v21 = *a3;
  v22 = *a4;
  v23 = *a8;
  v24 = *a10;
  v30 = *a12;
  v25 = *(a12 + 8);
  v26 = *a14;
  v33 = *(a15 + 5);
  v34 = *(a15 + 4);
  swift_beginAccess();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v21;
  *(v20 + 40) = v22;
  swift_beginAccess();
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = v23;
  swift_beginAccess();
  *(v20 + 80) = a9;
  swift_beginAccess();
  *(v20 + 88) = v24;
  swift_beginAccess();
  *(v20 + 96) = a11;
  *(v20 + 104) = v30;
  *(v20 + 112) = v25;
  swift_beginAccess();
  *(v20 + 120) = a13;
  *(v20 + 128) = v26;
  v27 = *a15;
  *(v20 + 152) = a15[1];
  *(v20 + 136) = v27;
  *(v20 + 168) = v34;
  *(v20 + 176) = v33;
  return v20;
}

uint64_t FormatIssueCoverNode.init(identifier:size:resize:adjustments:style:animation:content:zIndex:visibility:isUserInteractionEnabled:accessibilityRole:selectors:sizeConstraint:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t *a10, char a11, uint64_t *a12, uint64_t a13, char *a14, __int128 *a15)
{
  v20 = *a3;
  v21 = *a4;
  v22 = *a8;
  v25 = *a10;
  v28 = *a12;
  v27 = *(a12 + 8);
  v29 = *a14;
  v30 = *(a15 + 5);
  v31 = *(a15 + 4);
  swift_beginAccess();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = v20;
  *(v15 + 40) = v21;
  swift_beginAccess();
  *(v15 + 48) = a5;
  *(v15 + 56) = a6;
  *(v15 + 64) = a7;
  *(v15 + 72) = v22;
  swift_beginAccess();
  *(v15 + 80) = a9;
  swift_beginAccess();
  *(v15 + 88) = v25;
  swift_beginAccess();
  *(v15 + 96) = a11;
  *(v15 + 104) = v28;
  *(v15 + 112) = v27;
  swift_beginAccess();
  *(v15 + 120) = a13;
  *(v15 + 128) = v29;
  v23 = *a15;
  *(v15 + 152) = a15[1];
  *(v15 + 136) = v23;
  *(v15 + 168) = v31;
  *(v15 + 176) = v30;
  return v15;
}

void *FormatIssueCoverNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB15C4(*(v0 + 88));

  sub_1D5EB2398(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  return v0;
}

uint64_t FormatIssueCoverNode.__deallocating_deinit()
{
  FormatIssueCoverNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F7A324(uint64_t a1)
{
  result = sub_1D5F7A4B8(&qword_1EC881898, &protocol conformance descriptor for FormatIssueCoverNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5F7A38C(void *a1)
{
  a1[1] = sub_1D5F7A4B8(&qword_1EDF0EF90, &protocol conformance descriptor for FormatIssueCoverNode);
  a1[2] = sub_1D5F7A4B8(&qword_1EDF0EF98, &protocol conformance descriptor for FormatIssueCoverNode);
  result = sub_1D5F7A4B8(&qword_1EC8818A0, &protocol conformance descriptor for FormatIssueCoverNode);
  a1[3] = result;
  return result;
}

void *sub_1D5F7A418@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D665C624(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D5F7A474(uint64_t a1)
{
  result = sub_1D5F7A4B8(&qword_1EC8818A8, &protocol conformance descriptor for FormatIssueCoverNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5F7A4B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatIssueCoverNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F7A4F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v16 = *(a5 + 16);
  v17 = *(a5 + 24);
  v18 = *(v15 + 40);
  if (v18)
  {
    v38 = *(v15 + 32);
    v39 = v18;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v16, v17);

    v31 = v18;
    v32 = v38;
    v16 = *(a5 + 16);
    v17 = *(a5 + 24);
  }

  else
  {

    v31 = v17;
    v32 = v16;
  }

  v19 = *(a5 + 40);
  v33 = v16;
  if (v19 && (v20 = *(v19 + 16), swift_beginAccess(), *(*(v20 + 16) + 16)))
  {
  }

  else
  {
    v20 = 0;
  }

  swift_beginAccess();
  v21 = *(a5 + 80);
  swift_beginAccess();
  v22 = *(a5 + 88);

  sub_1D5EB1500(v22);
  sub_1D615B4A8(a4, &v37);
  sub_1D5EB15C4(v22);
  v23 = v37;
  swift_beginAccess();
  v24 = *(a5 + 96);
  v25 = *(a5 + 104);
  v26 = *(a5 + 112);
  type metadata accessor for FormatIssueCoverNodeLayoutAttributes();
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;
  *(v27 + 32) = v32;
  *(v27 + 40) = v31;
  *(v27 + 48) = v33;
  *(v27 + 56) = v17;
  *(v27 + 64) = v11;
  *(v27 + 72) = v12;
  *(v27 + 80) = v13;
  *(v27 + 88) = v14;
  *(v27 + 96) = v20;
  *(v27 + 104) = v21;
  *(v27 + 112) = v23;
  *(v27 + 120) = v24;
  *(v27 + 128) = v25;
  *(v27 + 136) = v26;
  *(v27 + 144) = a6;
  *(v27 + 152) = v11;
  *(v27 + 160) = v12;
  *(v27 + 168) = v13;
  *(v27 + 176) = v14;
  v28 = *(a1 + 3);
  *(v27 + 184) = *(a1 + 2);
  *(v27 + 200) = v28;
  v29 = swift_allocObject();
  *(v27 + 216) = MEMORY[0x1E69E7CD0];
  *(v29 + 16) = v27;
  *a7 = v29 | 0x7000000000000004;
}

uint64_t sub_1D5F7A7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5F7A820@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, __int16 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 17) = v6;
  *(a6 + 24) = a5;
  return result;
}

void sub_1D5F7A868(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D5F7A8E8(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D5F7A95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  sub_1D5F7BAC0();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v41 - v10;
  sub_1D5F7B618(0);
  v43 = *(v11 - 8);
  v44 = v11;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F7B52C(0, v13);
  v42 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v45 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v41 - v21;
  if (qword_1EC87D818 != -1)
  {
    swift_once();
  }

  v51 = qword_1EC9BA910;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  sub_1D5F7B710();
  sub_1D5F7B760(0, &qword_1EC8818E8, sub_1D5F7B7C4, MEMORY[0x1E69E6720]);
  sub_1D5F7BA78(&qword_1EC881900, sub_1D5F7B710, MEMORY[0x1E69E6338]);
  sub_1D5F7B910();
  sub_1D5F7BC2C();

  sub_1D72619EC();
  sub_1D7260EDC();
  sub_1D5F7B898();
  v24 = v44;
  sub_1D72617DC();
  (*(v43 + 8))(v15, v24);
  v25 = &v22[*(v42 + 36)];
  *v25 = xmmword_1D7286690;
  *(v25 + 1) = xmmword_1D72866A0;
  v25[32] = 0;
  v51 = 0;
  v52 = 1;
  sub_1D7260EDC();
  v26 = v46;
  sub_1D72617DC();
  v27 = v45;
  sub_1D5D72BF8(v22, v45, v28);
  v30 = v49;
  v29 = v50;
  v31 = *(v49 + 16);
  v32 = v47;
  v33.n128_f64[0] = v31(v47, v26, v50);
  v34 = v48;
  sub_1D5D72BF8(v27, v48, v33);
  sub_1D5F7B4BC(0, v35);
  v31((v34 + *(v36 + 48)), v32, v29);
  v37 = *(v30 + 8);
  v38.n128_f64[0] = v37(v26, v29);
  sub_1D5D72C5C(v22, v38);
  v39.n128_f64[0] = v37(v32, v29);
  return sub_1D5D72C5C(v27, v39);
}

uint64_t sub_1D5F7ADB4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  sub_1D5F7B7C4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  if (v14)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  v16 = sub_1D6185778(v15 | v13, v28);

  if (v16)
  {
    v25 = v8;
    v26 = a4;
    sub_1D67F6F20(v15 | v13);
    v24 = sub_1D72618CC();
    v17 = sub_1D6E236D4(v13);
    v19 = v18;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D72600CC();

    if ((v28 & 0xFF00) == 0x200)
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_1D67F7A4C(v28 & 0x1FF, v15 | v13);
    }

    v8 = v25;
    v28 = v24;
    v29 = v17;
    v31 = 0;
    v32 = 0;
    v30 = v19;
    v33 = v20 & 1;
    v22 = swift_allocObject();
    *(v22 + 16) = v27;
    *(v22 + 24) = a3;
    *(v22 + 32) = v13;
    *(v22 + 33) = v14;
    sub_1D5F7B844();

    sub_1D726177C();

    a4 = v26;
    (*(v9 + 32))(v26, v12, v8);
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  return (*(v9 + 56))(a4, v21, 1, v8);
}

double sub_1D5F7B06C(uint64_t a1, uint64_t a2, __int16 a3)
{

  sub_1D725B31C();

  v4 = a3 & 0x1FF;
  if ((v6 & 0xFF00) == 0x200 || (sub_1D67F7A4C(v6 & 0x1FF, v4) & 1) == 0)
  {

    sub_1D725B32C();
  }

  return result;
}

double sub_1D5F7B13C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x73656369766544;
  *(a1 + 8) = 0xE700000000000000;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1D5F7B170@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  sub_1D5F7B404(0);
  v13 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v7 = v1[1];
  type metadata accessor for DebugFormatWorkspaceTree(0);
  sub_1D5F7BA78(&qword_1EC8850C0, type metadata accessor for DebugFormatWorkspaceTree, &unk_1D73A58AC);
  sub_1D7260F9C();
  swift_getKeyPath();
  sub_1D7260FAC();

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_1D5F7B760(0, &qword_1EC8818B8, sub_1D5F7B4BC, MEMORY[0x1E6981F40]);
  sub_1D5F7BB40();
  sub_1D5F7BB94();

  sub_1D7260FFC();
  sub_1D7260EDC();
  sub_1D5F7BA78(&qword_1EC881940, sub_1D5F7B404, MEMORY[0x1E697C158]);
  v10 = v13;
  sub_1D72617DC();
  return (*(v3 + 8))(v6, v10);
}

void sub_1D5F7B404(uint64_t a1)
{
  if (!qword_1EC8818B0)
  {
    sub_1D5F7B760(255, &qword_1EC8818B8, sub_1D5F7B4BC, MEMORY[0x1E6981F40]);
    sub_1D5F7BB40();
    sub_1D5F7BB94();
    v1 = sub_1D726100C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8818B0);
    }
  }
}

void sub_1D5F7B4BC(uint64_t a1, __n128 a2)
{
  if (!qword_1EC8818C0)
  {
    sub_1D5F7B52C(255, a2);
    sub_1D5F7BAC0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8818C0);
    }
  }
}

void sub_1D5F7B52C(uint64_t a1, __n128 a2)
{
  if (!qword_1EC8818C8)
  {
    sub_1D5F7B594(255, a2);
    sub_1D5F7B9E4(255);
    v2 = sub_1D726101C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC8818C8);
    }
  }
}

void sub_1D5F7B594(uint64_t a1, __n128 a2)
{
  if (!qword_1EC8818D0)
  {
    sub_1D5F7B618(255);
    sub_1D5F7B898();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8818D0);
    }
  }
}

void sub_1D5F7B618(uint64_t a1)
{
  if (!qword_1EC8818D8)
  {
    sub_1D5F7B710();
    sub_1D5F7B760(255, &qword_1EC8818E8, sub_1D5F7B7C4, MEMORY[0x1E69E6720]);
    sub_1D5F7BA78(&qword_1EC881900, sub_1D5F7B710, MEMORY[0x1E69E6338]);
    v1 = sub_1D72619FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC8818D8);
    }
  }
}

void sub_1D5F7B710()
{
  if (!qword_1EC8818E0)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8818E0);
    }
  }
}

void sub_1D5F7B760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D5F7B7C4(uint64_t a1)
{
  if (!qword_1EC8818F0)
  {
    sub_1D5F7B844();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC8818F0);
    }
  }
}

unint64_t sub_1D5F7B844()
{
  result = qword_1EC8818F8;
  if (!qword_1EC8818F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8818F8);
  }

  return result;
}

unint64_t sub_1D5F7B898()
{
  result = qword_1EC881908;
  if (!qword_1EC881908)
  {
    sub_1D5F7B618(255);
    sub_1D5F7B910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881908);
  }

  return result;
}

unint64_t sub_1D5F7B910()
{
  result = qword_1EC881910;
  if (!qword_1EC881910)
  {
    sub_1D5F7B760(255, &qword_1EC8818E8, sub_1D5F7B7C4, MEMORY[0x1E69E6720]);
    sub_1D5F7B844();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881910);
  }

  return result;
}

void sub_1D5F7B9E4(uint64_t a1)
{
  if (!qword_1EC881918)
  {
    sub_1D72613BC();
    sub_1D5F7BA78(&qword_1EC881920, MEMORY[0x1E697C768], MEMORY[0x1E697C760]);
    v1 = sub_1D726141C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC881918);
    }
  }
}

uint64_t sub_1D5F7BA78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D5F7BAC0()
{
  if (!qword_1EC881928)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EC881928);
    }
  }
}

unint64_t sub_1D5F7BB40()
{
  result = qword_1EC881930;
  if (!qword_1EC881930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881930);
  }

  return result;
}

unint64_t sub_1D5F7BB94()
{
  result = qword_1EC881938;
  if (!qword_1EC881938)
  {
    sub_1D5F7B760(255, &qword_1EC8818B8, sub_1D5F7B4BC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881938);
  }

  return result;
}

unint64_t sub_1D5F7BC2C()
{
  result = qword_1EC881948;
  if (!qword_1EC881948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881948);
  }

  return result;
}

double sub_1D5F7BC80()
{
  if (*(v0 + 33))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1D5F7B06C(*(v0 + 16), *(v0 + 24), v1 | *(v0 + 32));
}

unint64_t sub_1D5F7BCC4()
{
  result = qword_1EC881950;
  if (!qword_1EC881950)
  {
    sub_1D5F7BD1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881950);
  }

  return result;
}

void sub_1D5F7BD1C()
{
  if (!qword_1EC881958)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC881958);
    }
  }
}

unint64_t sub_1D5F7BD70()
{
  result = qword_1EC881960;
  if (!qword_1EC881960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881960);
  }

  return result;
}

uint64_t FormatDerivedDataFileKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D5F7C000();
    v20 = 0;
    v21 = 0;
    sub_1D726431C();
    v11 = v19;
    sub_1D5C947A8(0, v12, v13, v14);
    v19 = xmmword_1D7279980;
    sub_1D5C75D80(&qword_1EDF419A8, &protocol conformance descriptor for FormatValue<A>, v15, v16);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    v18 = v21;
    *a2 = v20;
    *(a2 + 8) = v18;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D5F7C000()
{
  result = qword_1EC881968;
  if (!qword_1EC881968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881968);
  }

  return result;
}

void FormatDerivedDataFileKey.encode(to:)(void *a1)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v19 - v7;
  v9 = *(v1 + 8);
  v20 = *v1;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  if (v10 > 3)
  {
    if (v10 > 5)
    {
      if (v10 == 6)
      {
        LOBYTE(v21) = 6;
        v22 = 0;
        v23 = 0;
        sub_1D5F7C5D4();

        sub_1D726443C();
        if (v2)
        {
          (*(v24 + 8))(v8, v5);
          v14 = v20;
          v15 = v9;
          v16 = 6;
          goto LABEL_24;
        }
      }

      else
      {
        LOBYTE(v21) = 7;
        v22 = 0;
        v23 = 0;
        sub_1D5F7C5D4();

        sub_1D726443C();
        if (v2)
        {
          (*(v24 + 8))(v8, v5);
          v14 = v20;
          v15 = v9;
          v16 = 7;
          goto LABEL_24;
        }
      }
    }

    else if (v10 == 4)
    {
      LOBYTE(v21) = 4;
      v22 = 0;
      v23 = 0;
      sub_1D5F7C5D4();

      sub_1D726443C();
      if (v2)
      {
        (*(v24 + 8))(v8, v5);
        v14 = v20;
        v15 = v9;
        v16 = 4;
        goto LABEL_24;
      }
    }

    else
    {
      LOBYTE(v21) = 5;
      v22 = 0;
      v23 = 0;
      sub_1D5F7C5D4();

      sub_1D726443C();
      if (v2)
      {
        (*(v24 + 8))(v8, v5);
        v14 = v20;
        v15 = v9;
        v16 = 5;
        goto LABEL_24;
      }
    }
  }

  else if (v10 > 1)
  {
    if (v10 == 2)
    {
      LOBYTE(v21) = 2;
      v22 = 0;
      v23 = 0;
      sub_1D5F7C5D4();

      sub_1D726443C();
      if (v2)
      {
        (*(v24 + 8))(v8, v5);
        v14 = v20;
        v15 = v9;
        v16 = 2;
        goto LABEL_24;
      }
    }

    else
    {
      LOBYTE(v21) = 3;
      v22 = 0;
      v23 = 0;
      sub_1D5F7C5D4();

      sub_1D726443C();
      if (v2)
      {
        (*(v24 + 8))(v8, v5);
        v14 = v20;
        v15 = v9;
        v16 = 3;
        goto LABEL_24;
      }
    }
  }

  else if (v10)
  {
    LOBYTE(v21) = 1;
    v22 = 0;
    v23 = 0;
    sub_1D5F7C5D4();

    sub_1D726443C();
    if (v2)
    {
      (*(v24 + 8))(v8, v5);
      v14 = v20;
      v15 = v9;
      v16 = 1;
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v21) = 0;
    v22 = 0;
    v23 = 0;
    sub_1D5F7C5D4();

    sub_1D726443C();
    if (v2)
    {
      (*(v24 + 8))(v8, v5);
      v14 = v20;
      v15 = v9;
      v16 = 0;
LABEL_24:
      sub_1D5F7C628(v14, v15, v16);
      return;
    }
  }

  v22 = v20;
  v23 = v9;
  v21 = xmmword_1D7279980;
  sub_1D5C947A8(0, v11, v12, v13);
  sub_1D5C75D80(&qword_1EDF12710, &protocol conformance descriptor for FormatValue<A>, v17, v18);
  sub_1D726443C();

  (*(v24 + 8))(v8, v5);
}

unint64_t sub_1D5F7C5D4()
{
  result = qword_1EC881970;
  if (!qword_1EC881970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881970);
  }

  return result;
}

double sub_1D5F7C628(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

unint64_t sub_1D5F7C668@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5F7D1E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D5F7C698(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x70756F7267;
  v5 = 0xEA00000000006E6FLL;
  v6 = 0x697461726F636564;
  if (v2 != 6)
  {
    v6 = 0x6567616B636170;
    v5 = 0xE700000000000000;
  }

  v7 = 0xED0000797261746ELL;
  v8 = 0x656D656C70707573;
  if (v2 != 4)
  {
    v8 = 1701869940;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x74657070696E73;
  if (v2 != 2)
  {
    v10 = 0x656C797473;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 1835365481;
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

uint64_t FormatDerivedDataFileKey.hash(into:)(uint64_t a1)
{
  MEMORY[0x1DA6FC0B0](*(v1 + 16));

  return sub_1D72621EC();
}

uint64_t FormatDerivedDataFileKey.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D7264A0C();
  FormatDerivedDataFileKey.hash(into:)(v3);
  return sub_1D7264A5C();
}

uint64_t sub_1D5F7C91C()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D7264A0C();
  FormatDerivedDataFileKey.hash(into:)(v3);
  return sub_1D7264A5C();
}

uint64_t sub_1D5F7C974(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1D7264A0C();
  FormatDerivedDataFileKey.hash(into:)(v4);
  return sub_1D7264A5C();
}

uint64_t _s8NewsFeed24FormatDerivedDataFileKeyO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (v4 > 3)
  {
    if (*(a1 + 16) > 5u)
    {
      if (v4 == 6)
      {
        if (v7 != 6)
        {
          goto LABEL_41;
        }

        if (v3 == v6 && v2 == v5)
        {
          sub_1D5F7D230(*a1, v2, 6u);
          sub_1D5F7D230(v3, v2, 6u);
          sub_1D5F7C628(v3, v2, 6u);
          v8 = v3;
          v9 = v2;
          v10 = 6;
          goto LABEL_40;
        }

        v12 = sub_1D72646CC();
        sub_1D5F7D230(v6, v5, 6u);
        sub_1D5F7D230(v3, v2, 6u);
        sub_1D5F7C628(v3, v2, 6u);
        v13 = v6;
        v14 = v5;
        v15 = 6;
      }

      else
      {
        if (v7 != 7)
        {
          goto LABEL_41;
        }

        if (v3 == v6 && v2 == v5)
        {
          sub_1D5F7D230(*a1, v2, 7u);
          sub_1D5F7D230(v3, v2, 7u);
          sub_1D5F7C628(v3, v2, 7u);
          v8 = v3;
          v9 = v2;
          v10 = 7;
          goto LABEL_40;
        }

        v12 = sub_1D72646CC();
        sub_1D5F7D230(v6, v5, 7u);
        sub_1D5F7D230(v3, v2, 7u);
        sub_1D5F7C628(v3, v2, 7u);
        v13 = v6;
        v14 = v5;
        v15 = 7;
      }
    }

    else
    {
      if (v4 == 4)
      {
        if (v7 == 4)
        {
          if (v3 == v6 && v2 == v5)
          {
            sub_1D5F7D230(*a1, v2, 4u);
            sub_1D5F7D230(v3, v2, 4u);
            sub_1D5F7C628(v3, v2, 4u);
            v8 = v3;
            v9 = v2;
            v10 = 4;
            goto LABEL_40;
          }

          v12 = sub_1D72646CC();
          sub_1D5F7D230(v6, v5, 4u);
          sub_1D5F7D230(v3, v2, 4u);
          sub_1D5F7C628(v3, v2, 4u);
          v13 = v6;
          v14 = v5;
          v15 = 4;
          goto LABEL_50;
        }

        goto LABEL_41;
      }

      if (v7 != 5)
      {
        goto LABEL_41;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_1D5F7D230(*a1, v2, 5u);
        sub_1D5F7D230(v3, v2, 5u);
        sub_1D5F7C628(v3, v2, 5u);
        v8 = v3;
        v9 = v2;
        v10 = 5;
        goto LABEL_40;
      }

      v12 = sub_1D72646CC();
      sub_1D5F7D230(v6, v5, 5u);
      sub_1D5F7D230(v3, v2, 5u);
      sub_1D5F7C628(v3, v2, 5u);
      v13 = v6;
      v14 = v5;
      v15 = 5;
    }
  }

  else if (*(a1 + 16) > 1u)
  {
    if (v4 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_41;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_1D5F7D230(*a1, v2, 2u);
        sub_1D5F7D230(v3, v2, 2u);
        sub_1D5F7C628(v3, v2, 2u);
        v8 = v3;
        v9 = v2;
        v10 = 2;
        goto LABEL_40;
      }

      v12 = sub_1D72646CC();
      sub_1D5F7D230(v6, v5, 2u);
      sub_1D5F7D230(v3, v2, 2u);
      sub_1D5F7C628(v3, v2, 2u);
      v13 = v6;
      v14 = v5;
      v15 = 2;
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_41;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_1D5F7D230(*a1, v2, 3u);
        sub_1D5F7D230(v3, v2, 3u);
        sub_1D5F7C628(v3, v2, 3u);
        v8 = v3;
        v9 = v2;
        v10 = 3;
        goto LABEL_40;
      }

      v12 = sub_1D72646CC();
      sub_1D5F7D230(v6, v5, 3u);
      sub_1D5F7D230(v3, v2, 3u);
      sub_1D5F7C628(v3, v2, 3u);
      v13 = v6;
      v14 = v5;
      v15 = 3;
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_1D5F7D230(*a1, v2, 0);
          sub_1D5F7D230(v3, v2, 0);
          sub_1D5F7C628(v3, v2, 0);
          v8 = v3;
          v9 = v2;
          v10 = 0;
LABEL_40:
          sub_1D5F7C628(v8, v9, v10);
          return 1;
        }

        v12 = sub_1D72646CC();
        sub_1D5F7D230(v6, v5, 0);
        sub_1D5F7D230(v3, v2, 0);
        sub_1D5F7C628(v3, v2, 0);
        v13 = v6;
        v14 = v5;
        v15 = 0;
        goto LABEL_50;
      }

LABEL_41:
      sub_1D5F7D230(*a2, a2[1], v7);
      sub_1D5F7D230(v3, v2, v4);
      sub_1D5F7C628(v3, v2, v4);
      sub_1D5F7C628(v6, v5, v7);
      return 0;
    }

    if (v7 != 1)
    {
      goto LABEL_41;
    }

    if (v3 == v6 && v2 == v5)
    {
      sub_1D5F7D230(*a1, v2, 1u);
      sub_1D5F7D230(v3, v2, 1u);
      sub_1D5F7C628(v3, v2, 1u);
      v8 = v3;
      v9 = v2;
      v10 = 1;
      goto LABEL_40;
    }

    v12 = sub_1D72646CC();
    sub_1D5F7D230(v6, v5, 1u);
    sub_1D5F7D230(v3, v2, 1u);
    sub_1D5F7C628(v3, v2, 1u);
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

LABEL_50:
  sub_1D5F7C628(v13, v14, v15);
  return v12 & 1;
}

unint64_t sub_1D5F7D02C()
{
  result = qword_1EC881978;
  if (!qword_1EC881978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881978);
  }

  return result;
}

uint64_t sub_1D5F7D08C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D5F7D0D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D5F7D13C()
{
  result = qword_1EC881980;
  if (!qword_1EC881980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881980);
  }

  return result;
}

unint64_t sub_1D5F7D190()
{
  result = qword_1EC881988;
  if (!qword_1EC881988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881988);
  }

  return result;
}

unint64_t sub_1D5F7D1E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5F7D230(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 7u)
  {
  }

  return result;
}

uint64_t sub_1D5F7D248(uint64_t a1)
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDFFC538;
  v2 = sub_1D7262EDC();
  sub_1D725C30C("Starting sports data configuration fetch", 40, 2, &dword_1D5B42000, v1, v2, MEMORY[0x1E69E7CC0]);
  sub_1D725BDCC();
  v3 = sub_1D725B92C();
  sub_1D5F7DC80();
  sub_1D725BA9C();

  v4 = sub_1D725B92C();
  type metadata accessor for SportsDataConfiguration(0);
  sub_1D725BA9C();

  v5 = sub_1D725B92C();
  v6 = sub_1D725BACC();

  return v6;
}

uint64_t sub_1D5F7D404(uint64_t a1)
{
  v1 = [*(a1 + 16) appConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 sportsConfigurationResourceId];
    swift_unknownObjectRelease();
    if (v2)
    {
      sub_1D726207C();

      sub_1D5F129A4();
      swift_allocObject();
      return sub_1D725BB1C();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1D5F7DE38();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_1D5F7D4FC(uint64_t *a1, void *a2)
{
  sub_1D5B67800(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v17 - v6);
  v9 = *a1;
  v8 = a1[1];
  v10 = a2[6];
  v11 = a2[7];
  __swift_project_boxed_opaque_existential_1(a2 + 3, v10);
  *v7 = 0x404E000000000000;
  v12 = *MEMORY[0x1E69D63E0];
  v13 = sub_1D725A82C();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v7, v12, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  v15 = ResourceServiceType.fetchResource(identifier:qualityOfService:cachePolicy:purpose:)(v9, v8, 25, v7, *MEMORY[0x1E69B50A8], v10, v11);
  sub_1D5C3C4D0(v7);
  return v15;
}

char *sub_1D5F7D694(id *a1, char *a2)
{
  v43 = a2;
  v4 = sub_1D72620DC();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = type metadata accessor for SportsDataConfiguration(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v39 - v11;
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x1EEE9AC00](v18, v19).n128_u64[0];
  v22 = &v39 - v21;
  v23 = [*a1 fileURL];
  if (v23)
  {
    v24 = v23;
    sub_1D72584EC();

    (*(v14 + 32))(v22, v17, v13);
    v25 = sub_1D72585DC();
    if (v2)
    {
      (*(v14 + 8))(v22, v13);
    }

    else
    {
      v41 = v13;
      v27 = v26;
      v28 = v25;
      sub_1D5F7DD20();
      v43 = v12;
      sub_1D725A69C();
      sub_1D72620CC();
      v39 = v28;
      v40 = v27;
      v30 = sub_1D726209C();
      v32 = v43;
      v33 = v41;
      if (v31)
      {
        v34 = v30;
        v35 = v31;
        if (qword_1EDF05878 != -1)
        {
          swift_once();
        }

        v36 = qword_1EDFFC538;
        sub_1D5B67800(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1D7273AE0;
        *(v37 + 56) = MEMORY[0x1E69E6158];
        *(v37 + 64) = sub_1D5B7E2C0();
        *(v37 + 32) = v34;
        *(v37 + 40) = v35;
        v38 = sub_1D7262EDC();
        sub_1D725C30C("Sports data configuration successfully fetched; config=%{public}@", 65, 2, &dword_1D5B42000, v36, v38, v37);
      }

      sub_1D5F7DD78(v32, v42);
      sub_1D5B67800(0, &qword_1EDF17A30, type metadata accessor for SportsDataConfiguration, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      v17 = sub_1D725BB1C();
      sub_1D5B952F8(v39, v40);
      sub_1D5F7DDDC(v32);
      (*(v14 + 8))(v22, v33);
    }
  }

  else
  {
    sub_1D5F7DCCC();
    swift_allocError();
    swift_willThrow();
  }

  return v17;
}

double sub_1D5F7DAE4(uint64_t a1)
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDFFC538;
  v2 = sub_1D7262EBC();
  sub_1D5B67800(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  swift_getErrorValue();
  v4 = sub_1D726497C();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_1D725C30C("Error fetching sports data configuration; error=%{public}@", 58, 2, &dword_1D5B42000, v1, v2, v3);

  return result;
}

uint64_t sub_1D5F7DC1C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_1D5F7DC80()
{
  result = qword_1EDF1AC40;
  if (!qword_1EDF1AC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDF1AC40);
  }

  return result;
}

unint64_t sub_1D5F7DCCC()
{
  result = qword_1EC881990;
  if (!qword_1EC881990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881990);
  }

  return result;
}

unint64_t sub_1D5F7DD20()
{
  result = qword_1EDF0D188;
  if (!qword_1EDF0D188)
  {
    type metadata accessor for SportsDataConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0D188);
  }

  return result;
}

uint64_t sub_1D5F7DD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F7DDDC(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5F7DE38()
{
  result = qword_1EC8819A0;
  if (!qword_1EC8819A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819A0);
  }

  return result;
}

unint64_t sub_1D5F7DEA0()
{
  result = qword_1EC8819B0;
  if (!qword_1EC8819B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819B0);
  }

  return result;
}

uint64_t sub_1D5F7DEF4(__int128 *a1)
{
  v3 = v1;
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24[-v12 - 8];
  v14 = a1[1];
  v25 = *a1;
  v26 = v14;
  v27 = *(a1 + 32);
  v15 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_1D68C7584();
  if (!v2)
  {
    v16 = sub_1D5F7E14C(v9);
    MEMORY[0x1EEE9AC00](v16, v18);
    *(&v23 - 4) = v13;
    *(&v23 - 3) = v3;
    *(&v23 - 2) = &v25;
    *(&v23 - 1) = v9;
    type metadata accessor for SportsDataServiceBatchRequest(0);
    sub_1D725BDCC();
    v19 = swift_allocObject();
    v20 = v26;
    *(v19 + 16) = v25;
    *(v19 + 32) = v20;
    *(v19 + 48) = v27;
    sub_1D5F82F38(&v25, v24);
    v21 = sub_1D725B92C();
    v15 = sub_1D725BACC();

    v22 = *(v6 + 8);
    v22(v9, v5);
    v22(v13, v5);
  }

  return v15;
}

uint64_t sub_1D5F7E14C@<X0>(uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D5C413F4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23[-v6];
  sub_1D5C413F4(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v3);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v23[-v10];
  v12 = sub_1D7257C7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7257BCC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D5F82D98(v11, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D5F82C30();
    swift_allocError();
    *v17 = 3;
    return swift_willThrow();
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
    v19 = sub_1D7257BFC();
    MEMORY[0x1DA6F9910](0x656A626F2F31762FLL, 0xEB00000000737463);
    v19(v23, 0);
    sub_1D7257BDC();
    v20 = sub_1D72585BC();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v7, 1, v20) == 1)
    {
      sub_1D5F82D98(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5F82C30();
      swift_allocError();
      *v22 = 2;
      swift_willThrow();
      return (*(v13 + 8))(v16, v12);
    }

    else
    {
      (*(v13 + 8))(v16, v12);
      return (*(v21 + 32))(a2, v7, v20);
    }
  }
}

uint64_t sub_1D5F7E4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SportsDataServiceBatchRequest(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v28 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = v26 - v19;
  (*(v9 + 16))(v12, a1, v8, v18);
  v21 = *(a3 + 16);
  v26[0] = *a3;
  v26[1] = v21;
  v27 = *(a3 + 32);
  sub_1D5F82704(v26, a1, a4, v22);
  if (v4)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v24 = v23;
    (*(v9 + 32))(v20, v12, v8);
    *&v20[*(v13 + 20)] = v24;
    sub_1D5F82CD8(v20, v28);
    sub_1D5C413F4(0, &qword_1EDF179F8, type metadata accessor for SportsDataServiceBatchRequest, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    v8 = sub_1D725BB1C();
    sub_1D5F82D3C(v20);
  }

  return v8;
}

double sub_1D5F7E738(uint64_t a1, uint64_t a2)
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDFFC538;
  v3 = sub_1D7262EBC();
  sub_1D5C413F4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7270C10;
  sub_1D7263F9C();
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D5B7E2C0();
  *(v4 + 64) = v6;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  swift_getErrorValue();
  v7 = sub_1D726497C();
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 72) = v7;
  *(v4 + 80) = v8;
  sub_1D725C30C("Failed to create data visualization URL for request=%{public}@; error=%{public}@", 80, 2, &dword_1D5B42000, v2, v3, v4);

  return result;
}

uint64_t sub_1D5F7E8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v30 = a3;
  v8 = sub_1D72585BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v26 - v15;
  v17 = *__swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_1D68C7584();
  if (!v4)
  {
    v27 = v8;
    v28 = v9;
    v18 = v30;
    v19 = sub_1D5F7EB1C(v12);
    v29 = 0;
    MEMORY[0x1EEE9AC00](v19, v21);
    *(&v26 - 6) = v16;
    *(&v26 - 5) = v5;
    *(&v26 - 4) = a1;
    *(&v26 - 3) = a2;
    *(&v26 - 2) = v18;
    *(&v26 - 1) = v12;
    type metadata accessor for SportsDataServiceBatchRequest(0);
    sub_1D725BDCC();
    v22 = swift_allocObject();
    v22[2] = a1;
    v22[3] = a2;
    v22[4] = v18;

    v23 = sub_1D725B92C();
    v17 = sub_1D725BACC();

    v24 = *(v28 + 8);
    v25 = v27;
    v24(v12, v27);
    v24(v16, v25);
  }

  return v17;
}

uint64_t sub_1D5F7EB1C@<X0>(uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69E6720];
  sub_1D5C413F4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23[-v6];
  sub_1D5C413F4(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v3);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v23[-v10];
  v12 = sub_1D7257C7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v23[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D7257BCC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D5F82D98(v11, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D5F82C30();
    swift_allocError();
    *v17 = 3;
    return swift_willThrow();
  }

  else
  {
    v24 = a2;
    (*(v13 + 32))(v16, v11, v12);
    v19 = sub_1D7257BFC();
    MEMORY[0x1DA6F9910](0xD000000000000012, 0x80000001D73C4620);
    v19(v23, 0);
    sub_1D7257BDC();
    v20 = sub_1D72585BC();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v7, 1, v20) == 1)
    {
      sub_1D5F82D98(v7, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5F82C30();
      swift_allocError();
      *v22 = 2;
      swift_willThrow();
      return (*(v13 + 8))(v16, v12);
    }

    else
    {
      (*(v13 + 8))(v16, v12);
      return (*(v21 + 32))(v24, v7, v20);
    }
  }
}

void sub_1D5F7EEC4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a4;
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for SportsDataServiceBatchRequest(0);
  MEMORY[0x1EEE9AC00](v34, v15);
  v35 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v33 - v20;
  v22 = *(v11 + 16);
  v38 = a1;
  v22(v14, a1, v10, v19);
  v39 = a3;
  sub_1D5B581F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5F82E08(&qword_1EDF3C838, MEMORY[0x1E69E6328]);

  v23 = sub_1D72623CC();

  v39 = v23;

  sub_1D5F81CCC(&v39);
  if (v6)
  {

    __break(1u);
  }

  else
  {

    v24 = v39;
    sub_1D5F828F8(a6, v36, &unk_1F50F7D38);
    v26 = v25;
    sub_1D5BFB68C(&unk_1F50F7D58);
    v27 = sub_1D5F812AC(v37, v26, v24);

    MEMORY[0x1EEE9AC00](v28, v29);
    *(&v33 - 4) = a6;
    *(&v33 - 3) = 7562345;
    v30 = v38;
    *(&v33 - 2) = 0xE300000000000000;
    *(&v33 - 1) = v30;
    v31 = sub_1D5ECAC40(sub_1D5F82CB4, (&v33 - 6), v27);

    (*(v11 + 32))(v21, v14, v10);
    v32 = v35;
    *&v21[*(v34 + 20)] = v31;
    sub_1D5F82CD8(v21, v32);
    sub_1D5C413F4(0, &qword_1EDF179F8, type metadata accessor for SportsDataServiceBatchRequest, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    sub_1D725BB1C();
    sub_1D5F82D3C(v21);
  }
}

double sub_1D5F7F280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDF05878 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDFFC538;
  v5 = sub_1D7262EBC();
  sub_1D5C413F4(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7270C10;
  sub_1D7263F9C();
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D5B7E2C0();
  *(v6 + 64) = v8;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  swift_getErrorValue();
  v9 = sub_1D726497C();
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 72) = v9;
  *(v6 + 80) = v10;
  sub_1D725C30C("Failed to create sports event status URL for request=%{public}@; error=%{public}@", 81, 2, &dword_1D5B42000, v4, v5, v6);

  return result;
}

uint64_t sub_1D5F7F408(unsigned __int8 a1, uint64_t a2)
{
  v103 = a2;
  v104 = type metadata accessor for SportsDataServiceRequest(0);
  MEMORY[0x1EEE9AC00](v104, v3);
  v100 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1E69E6720];
  sub_1D5C413F4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v99 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v98 = &v92 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v97 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v96 = &v92 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v92 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v92 - v28;
  v30 = sub_1D72585BC();
  v101 = *(v30 - 8);
  v102 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v95 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v94 = &v92 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v93 = &v92 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v92 - v41;
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v92 - v45;
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v92 - v49;
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v92 - v53;
  sub_1D5C413F4(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], v5);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v59 = &v92 - v58;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      v60 = v57;
      if (a1 == 5)
      {
        if (qword_1EC87DA10 != -1)
        {
          swift_once();
        }

        v67 = sub_1D72596AC();
        v68 = v96;
        if (v67)
        {
          sub_1D72596FC();
          sub_1D72596DC();
          if (qword_1EC87DA08 != -1)
          {
            swift_once();
          }

          sub_1D72596CC();

          sub_1D725855C();

          v69 = v101;
          v70 = v102;
          if ((*(v101 + 48))(v68, 1, v102) != 1)
          {
            (*(v69 + 32))(v42, v68, v70);
            (*(v69 + 16))(v100, v42, v70);
            swift_storeEnumTagMultiPayload();
            sub_1D5C413F4(0, &unk_1EDF17A20, type metadata accessor for SportsDataServiceRequest, MEMORY[0x1E69D6B18]);
            swift_allocObject();
            v89 = v70;
            v86 = sub_1D725BB1C();
            (*(v69 + 8))(v42, v89);
            return v86;
          }

          sub_1D5F82D98(v68, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }

        goto LABEL_66;
      }

      if (qword_1EC87DA30 != -1)
      {
        swift_once();
      }

      v82 = sub_1D72596AC();
      v83 = v98;
      if (v82)
      {
        sub_1D72596FC();
        sub_1D72596DC();
        if (qword_1EC87DA28 != -1)
        {
          swift_once();
        }

        sub_1D72596CC();

        sub_1D725855C();

        v61 = v101;
        v62 = v102;
        if ((*(v101 + 48))(v83, 1, v102) != 1)
        {
          v50 = v94;
          (*(v61 + 32))(v94, v83, v62);
          goto LABEL_76;
        }

        sub_1D5F82D98(v83, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      goto LABEL_66;
    }

    if (a1 == 7)
    {
      v60 = v57;
      if (qword_1EDF185D0 != -1)
      {
        swift_once();
      }

      v73 = sub_1D72596AC();
      v74 = v99;
      if ((v73 & 1) == 0)
      {
        goto LABEL_66;
      }

      sub_1D72596FC();
      sub_1D72596DC();
      if (qword_1EC87DA38 != -1)
      {
        swift_once();
      }

      sub_1D72596CC();

      sub_1D725855C();

      v61 = v101;
      v62 = v102;
      if ((*(v101 + 48))(v74, 1, v102) == 1)
      {
        sub_1D5F82D98(v74, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        goto LABEL_66;
      }

      v50 = v95;
      (*(v61 + 32))(v95, v74, v62);
      goto LABEL_76;
    }
  }

  else
  {
    if (a1 > 1u)
    {
      v60 = v57;
      if (a1 == 2)
      {
        if (qword_1EC87DA20 != -1)
        {
          swift_once();
        }

        v71 = sub_1D72596AC();
        v72 = v97;
        if ((v71 & 1) == 0)
        {
          goto LABEL_66;
        }

        sub_1D72596FC();
        sub_1D72596DC();
        if (qword_1EC87DA18 != -1)
        {
          swift_once();
        }

        sub_1D72596CC();

        sub_1D725855C();

        v61 = v101;
        v62 = v102;
        if ((*(v101 + 48))(v72, 1, v102) == 1)
        {
          sub_1D5F82D98(v72, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          goto LABEL_66;
        }

        v50 = v93;
        (*(v61 + 32))(v93, v72, v62);
        goto LABEL_76;
      }

      if (a1 != 3)
      {
        if (qword_1EDF184F0 != -1)
        {
          swift_once();
        }

        if (sub_1D72596AC())
        {
          sub_1D72596FC();
          sub_1D72596DC();
          if (qword_1EC87D9F8 != -1)
          {
            swift_once();
          }

          sub_1D72596CC();

          sub_1D725855C();

          v76 = v101;
          v75 = v102;
          if ((*(v101 + 48))(v21, 1, v102) != 1)
          {
            (*(v76 + 32))(v46, v21, v75);
            (*(v76 + 16))(v100, v46, v75);
            swift_storeEnumTagMultiPayload();
            sub_1D5C413F4(0, &unk_1EDF17A20, type metadata accessor for SportsDataServiceRequest, MEMORY[0x1E69D6B18]);
            swift_allocObject();
            v88 = v75;
            v86 = sub_1D725BB1C();
            (*(v76 + 8))(v46, v88);
            return v86;
          }

          sub_1D5F82D98(v21, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        }

        goto LABEL_66;
      }

      if (qword_1EC87D9F0 != -1)
      {
        swift_once();
      }

      if (sub_1D72596AC())
      {
        sub_1D72596FC();
        sub_1D72596DC();
        if (qword_1EC87D9E8 != -1)
        {
          swift_once();
        }

        sub_1D72596CC();

        sub_1D725855C();

        v61 = v101;
        v62 = v102;
        if ((*(v101 + 48))(v25, 1, v102) == 1)
        {
          sub_1D5F82D98(v25, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
          goto LABEL_66;
        }

        (*(v61 + 32))(v50, v25, v62);
LABEL_76:
        (*(v61 + 16))(v100, v50, v62);
        swift_storeEnumTagMultiPayload();
        sub_1D5C413F4(0, &unk_1EDF17A20, type metadata accessor for SportsDataServiceRequest, MEMORY[0x1E69D6B18]);
        swift_allocObject();
        v91 = v62;
        v86 = sub_1D725BB1C();
        (*(v61 + 8))(v50, v91);
        return v86;
      }

LABEL_66:
      sub_1D725BDCC();
      sub_1D5C41360(v103, v59);
      v84 = (*(v60 + 80) + 16) & ~*(v60 + 80);
      v85 = swift_allocObject();
      sub_1D5F82FB8(v59, v85 + v84);
      v66 = sub_1D725B92C();
      goto LABEL_67;
    }

    if (a1)
    {
      v77 = v57;
      if (qword_1EDF18408 != -1)
      {
        swift_once();
      }

      if (sub_1D72596AC())
      {
        sub_1D72596FC();
        sub_1D72596DC();
        if (qword_1EC87D9D0 != -1)
        {
          swift_once();
        }

        sub_1D72596CC();

        sub_1D725855C();

        v78 = v101;
        v79 = v102;
        if ((*(v101 + 48))(v29, 1, v102) != 1)
        {
          (*(v78 + 32))(v54, v29, v79);
          (*(v78 + 16))(v100, v54, v79);
          swift_storeEnumTagMultiPayload();
          sub_1D5C413F4(0, &unk_1EDF17A20, type metadata accessor for SportsDataServiceRequest, MEMORY[0x1E69D6B18]);
          swift_allocObject();
          v90 = v79;
          v86 = sub_1D725BB1C();
          (*(v78 + 8))(v54, v90);
          return v86;
        }

        sub_1D5F82D98(v29, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      }

      sub_1D725BDCC();
      sub_1D5C41360(v103, v59);
      v80 = (*(v77 + 80) + 16) & ~*(v77 + 80);
      v81 = swift_allocObject();
      sub_1D5F82FB8(v59, v81 + v80);
      v66 = sub_1D725B92C();
      goto LABEL_67;
    }
  }

  v63 = v57;
  sub_1D725BDCC();
  sub_1D5C41360(v103, v59);
  v64 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v65 = swift_allocObject();
  sub_1D5F82FB8(v59, v65 + v64);
  v66 = sub_1D725B92C();
LABEL_67:
  v86 = sub_1D725BA8C();

  return v86;
}

uint64_t sub_1D5F807E0(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  v1 = off_1F51C34C8[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F8086C(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  v1 = off_1F51C3508[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F808D8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  v1 = off_1F51C3510;
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F80944@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>)
{
  sub_1D5C413F4(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v24 - v14);
  v17 = *a1;
  v16 = a1[1];
  sub_1D5C41360(a2, v11);
  v18 = sub_1D725A82C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v11, 1, v18) == 1)
  {
    *v15 = a4;
    (*(v19 + 104))(v15, *MEMORY[0x1E69D63E0], v18);
    v21 = v20(v11, 1, v18);

    if (v21 != 1)
    {
      sub_1D5F82D98(v11, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8]);
    }
  }

  else
  {
    (*(v19 + 32))(v15, v11, v18);
  }

  (*(v19 + 56))(v15, 0, 1, v18);
  *a3 = v17;
  a3[1] = v16;
  v22 = type metadata accessor for SportsDataServiceResourceRequest(0);
  sub_1D5F82FB8(v15, a3 + *(v22 + 20));
  type metadata accessor for SportsDataServiceRequest(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5F80BA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a3;
  v53 = a4;
  v58 = a6;
  v9 = sub_1D725895C();
  v56 = *(v9 - 8);
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1D5C413F4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v50 - v15;
  v17 = sub_1D72585BC();
  v60 = *(v17 - 8);
  v61 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C413F4(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v12);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v50 - v23;
  v25 = sub_1D7257C7C();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v62 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v54 = a2;
  sub_1D7257BCC();
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_1D5F82D98(v24, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D5F82C30();
    v30 = swift_allocError();
    *v31 = 3;
    result = swift_willThrow();
LABEL_5:
    *a5 = v30;
    return result;
  }

  v52 = a5;
  (*(v26 + 32))(v62, v24, v25);
  sub_1D5C413F4(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
  sub_1D7257B5C();
  *(swift_allocObject() + 16) = xmmword_1D7270C10;
  v63 = v29;
  sub_1D5B581F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5F82E08(&qword_1EDF3C840, MEMORY[0x1E69E6310]);
  sub_1D7261F3C();
  sub_1D7257B2C();

  sub_1D7257B2C();

  sub_1D7257B7C();
  sub_1D7257BDC();
  v34 = v60;
  v33 = v61;
  if ((*(v60 + 48))(v16, 1, v61) == 1)
  {
    sub_1D5F82D98(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D5F82C30();
    v30 = swift_allocError();
    *v35 = 4;
    swift_willThrow();
    result = (*(v26 + 8))(v62, v25);
    a5 = v52;
    goto LABEL_5;
  }

  (*(v34 + 32))(v20, v16, v33);
  v59 = v25;
  v36 = v33;
  v37 = *(v34 + 16);
  v38 = v58;
  v37(v58, v53, v33);
  v39 = type metadata accessor for SportsDataServiceURLRequest(0);
  v40 = v20;
  v51 = v20;
  v41 = v26;
  v42 = v34;
  v43 = v39;
  v37(v38 + *(v39 + 20), v54, v33);
  v37(v38 + v43[6], v40, v33);
  v44 = (v38 + v43[8]);
  v45 = v55;
  sub_1D725894C();
  v46 = sub_1D725893C();
  v48 = v47;
  (*(v56 + 8))(v45, v57);
  (*(v42 + 8))(v51, v36);
  (*(v41 + 8))(v62, v59);
  *v44 = v46;
  v44[1] = v48;
  v49 = (v38 + v43[7]);
  type metadata accessor for SportsDataServiceRequest(0);
  *v49 = 0u;
  v49[1] = 0u;
  return swift_storeEnumTagMultiPayload();
}

void *sub_1D5F812AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v11 = *(v7 - 1);
      v10 = *v7;
      v12 = *(v6 + 16);

      if (v12 >= a1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D69915A8(0, v8[2] + 1, 1, v8);
        }

        v19 = v8[2];
        v18 = v8[3];
        if (v19 >= v18 >> 1)
        {
          v8 = sub_1D69915A8((v18 > 1), v19 + 1, 1, v8);
        }

        v8[2] = v19 + 1;
        v8[v19 + 4] = v6;
        sub_1D5B581F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_1D7273AE0;
        *(v6 + 32) = v11;
        *(v6 + 40) = v10;

        v20 = sub_1D726221C();

        v5 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v8 = sub_1D69915A8(0, v8[2] + 1, 1, v8);
LABEL_30:
          v25 = v8[2];
          v24 = v8[3];
          if (v25 >= v24 >> 1)
          {
            v8 = sub_1D69915A8((v24 > 1), v25 + 1, 1, v8);
          }

          v8[2] = v25 + 1;
          v8[v25 + 4] = v6;
          return v8;
        }
      }

      else
      {
        v13 = sub_1D726221C();
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_35;
        }

        v15 = __OFADD__(v5, v14);
        v5 += v14;
        if (v15)
        {
          goto LABEL_36;
        }

        if (v5 >= a2)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D69915A8(0, v8[2] + 1, 1, v8);
          }

          v22 = v8[2];
          v21 = v8[3];
          if (v22 >= v21 >> 1)
          {
            v8 = sub_1D69915A8((v21 > 1), v22 + 1, 1, v8);
          }

          v8[2] = v22 + 1;
          v8[v22 + 4] = v6;
          sub_1D5B581F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
          v6 = swift_allocObject();
          *(v6 + 16) = xmmword_1D7273AE0;
          *(v6 + 32) = v11;
          *(v6 + 40) = v10;

          v23 = sub_1D726221C();

          v5 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1D5B858EC(0, *(v6 + 16) + 1, 1, v6);
          }

          v17 = *(v6 + 16);
          v16 = *(v6 + 24);
          if (v17 >= v16 >> 1)
          {
            v6 = sub_1D5B858EC((v16 > 1), v17 + 1, 1, v6);
          }

          *(v6 + 16) = v17 + 1;
          v9 = v6 + 16 * v17;
          *(v9 + 32) = v11;
          *(v9 + 40) = v10;
        }
      }

      v7 += 2;
      if (!--v3)
      {
        goto LABEL_28;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
LABEL_28:
  if (*(v6 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  return v8;
}

uint64_t sub_1D5F8161C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v56 = a6;
  v53 = a3;
  v47 = a5;
  v54 = a4;
  v52 = a7;
  v9 = sub_1D725895C();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v49 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E6720];
  sub_1D5C413F4(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v46 - v15;
  v17 = sub_1D72585BC();
  v55 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v46 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C413F4(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v12);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v46 - v22;
  v24 = sub_1D7257C7C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v48 = a2;
  sub_1D7257BCC();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1D5F82D98(v23, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D5F82C30();
    v30 = swift_allocError();
    *v31 = 3;
    result = swift_willThrow();
LABEL_5:
    *v56 = v30;
    return result;
  }

  (*(v25 + 32))(v28, v23, v24);
  sub_1D5C413F4(0, &qword_1EDF19BA0, MEMORY[0x1E6968178], MEMORY[0x1E69E6F90]);
  sub_1D7257B5C();
  *(swift_allocObject() + 16) = xmmword_1D7273AE0;
  v57 = v29;
  sub_1D5B581F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5F82E08(&qword_1EDF3C840, MEMORY[0x1E69E6310]);
  sub_1D7261F3C();
  sub_1D7257B2C();

  sub_1D7257B7C();
  sub_1D7257BDC();
  if ((*(v55 + 48))(v16, 1, v17) == 1)
  {
    sub_1D5F82D98(v16, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    sub_1D5F82C30();
    v30 = swift_allocError();
    *v33 = 4;
    swift_willThrow();
    result = (*(v25 + 8))(v28, v24);
    goto LABEL_5;
  }

  v34 = v55;
  v35 = *(v55 + 32);
  v56 = v24;
  v36 = v46;
  v35();
  v37 = *(v34 + 16);
  v38 = v52;
  v37(v52, v47, v17);
  v39 = type metadata accessor for SportsDataServiceURLRequest(0);
  v37(v38 + v39[5], v48, v17);
  v37(v38 + v39[6], v36, v17);
  v40 = (v38 + v39[8]);
  v41 = v49;
  sub_1D725894C();
  v42 = sub_1D725893C();
  v53 = v43;
  v54 = v42;
  (*(v50 + 8))(v41, v51);
  (*(v34 + 8))(v36, v17);
  (*(v25 + 8))(v28, v56);
  v44 = v53;
  *v40 = v54;
  v40[1] = v44;
  v45 = (v38 + v39[7]);
  type metadata accessor for SportsDataServiceRequest(0);
  *v45 = 0u;
  v45[1] = 0u;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D5F81C8C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_1D5F81CCC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FF9B4(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D5F81D38(v4);
  *a1 = v2;
}

void sub_1D5F81D38(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D726449C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D5F81F00(v7, v8, a1, v4);
      *(v6 + 16) = 0;

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
    sub_1D5F81E30(0, v2, 1, a1);
  }
}

uint64_t sub_1D5F81E30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D72646CC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D5F81F00(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1D62FF50C(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D5F824DC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1D72646CC();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_1D72646CC()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D698BA94(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_1D698BA94((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D5F824DC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D62FF50C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1D62FF480(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_1D72646CC() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_1D5F824DC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D72646CC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D72646CC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_1D5F82704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v7;
  v17 = *(a1 + 32);
  v8 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v8;
  v15 = *(a1 + 32);
  v13[7] = SportsDataVisualizationRequest.tagIds.getter(a1, a2, a3, a4);
  sub_1D5B581F0(0, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
  sub_1D5F82E08(&qword_1EDF3C838, MEMORY[0x1E69E6328]);
  v9 = sub_1D72623CC();

  *&v14[0] = v9;

  sub_1D5F81CCC(v14);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    sub_1D5F82E08(&qword_1EDF1AF28, MEMORY[0x1E69E6340]);
    v10 = sub_1D7262C1C();

    MEMORY[0x1EEE9AC00](v11, v12);
    v13[2] = a3;
    v13[3] = v16;
    v13[4] = a2;
    sub_1D5ECAC40(sub_1D5F82F94, v13, v10);
  }
}

void sub_1D5F828F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(a3 + 16);
  v6 = a3 + 40;
  v7 = v5 + 1;
  while (--v7)
  {
    v8 = v6 + 16;

    v9 = sub_1D726221C();

    v6 = v8;
    v10 = __OFADD__(v4, v9);
    v4 += v9;
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  sub_1D72583DC();
  v11 = sub_1D726221C();

  v12 = a2 - v11;
  if (__OFSUB__(a2, v11))
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = __OFSUB__(v12, v4);
  v13 = v12 - v4;
  if (v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = __OFSUB__(v13, v5);
  v14 = v13 - v5;
  if (v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(v14, v5))
  {
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1D5F829CC(void *a1)
{
  v2 = type metadata accessor for SportsDataServiceBatchResourceRequest(0);
  *&v4 = MEMORY[0x1EEE9AC00](v2, v3).n128_u64[0];
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 rosterResourceIDs];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = sub_1D7261D3C();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_1D5B9A6D8(*(v9 + 16), 0);
    v12 = sub_1D5E25FE8(&v20, v11 + 4, v10, v9);
    sub_1D5B87E38(v20);
    if (v12 != v10)
    {
      __break(1u);
LABEL_5:
      sub_1D5F82C30();
      swift_allocError();
      *v13 = 16;
      return swift_willThrow();
    }
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v15 = *(v2 + 20);
  *&v6[v15] = 0x40F5180000000000;
  v16 = *MEMORY[0x1E69D63E0];
  v17 = sub_1D725A82C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v6[v15], v16, v17);
  (*(v18 + 56))(&v6[v15], 0, 1, v17);
  *v6 = v11;
  sub_1D5C413F4(0, &qword_1EDF179D8, type metadata accessor for SportsDataServiceBatchResourceRequest, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

unint64_t sub_1D5F82C30()
{
  result = qword_1EC88DB80;
  if (!qword_1EC88DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88DB80);
  }

  return result;
}

uint64_t sub_1D5F82CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataServiceBatchRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F82D3C(uint64_t a1)
{
  v2 = type metadata accessor for SportsDataServiceBatchRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F82D98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5C413F4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5F82E08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B581F0(255, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1D5F82E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
    sub_1D5F82F20(a1, a2, a3 & 1);
LABEL_9:

    return result;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return result;
    }

    goto LABEL_9;
  }

  return result;
}

void sub_1D5F82F20(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D5F82FB8(uint64_t a1, uint64_t a2)
{
  sub_1D5C413F4(0, &unk_1EDF3BDC0, MEMORY[0x1E69D63E8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F8304C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C3510;
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F830B8()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C3508[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F831E0()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C3500[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F8324C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34F8[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F832B8()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34F0[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F83348()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34E8[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F833B4()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34E0[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F83420()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34D8[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F8348C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34D0[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t sub_1D5F834F8()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  v1 = off_1F51C34C8[0];
  v2 = type metadata accessor for SportsDataServiceResource();
  return v1(v2, &off_1F51C34C0);
}

uint64_t FormatStateViewNodeStateDataLayoutAttributes.state.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double FormatStateViewNodeStateDataLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

void *FormatStateViewNodeStateDataLayoutAttributes.deinit()
{

  return v0;
}

uint64_t FormatStateViewNodeStateDataLayoutAttributes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed28FormatOptionConverterContextO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D5F836C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D5F83710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D5F83754(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1D5F83790@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5F84454(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5F837B8(uint64_t a1)
{
  v2 = sub_1D5F840D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F837F4(uint64_t a1)
{
  v2 = sub_1D5F840D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedLayoutCacheFixedKey.encode(to:)(void *a1)
{
  sub_1D5F8417C(0, &qword_1EDF028B8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v19 - v8;
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[4];
  v14 = v1[5];
  v15 = v1[6];
  v16 = v1[7];
  v17 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F840D4();
  sub_1D7264B5C();
  LOBYTE(v19) = 0;
  sub_1D726442C();
  if (!v2)
  {
    v19 = v10;
    v20 = v11;
    v21 = 1;
    type metadata accessor for CGSize(0);
    sub_1D5F841E0(&unk_1EDF043A0, MEMORY[0x1E695EF88]);
    sub_1D726443C();
    v19 = v12;
    v20 = v13;
    v21 = 2;
    sub_1D726443C();
    v19 = v14;
    v20 = v15;
    v21 = 3;
    sub_1D5F84128();
    sub_1D726443C();
    v19 = v16;
    v20 = v17;
    v21 = 4;
    sub_1D726443C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FeedLayoutCacheFixedKey.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v17 = *(v0 + 64);
  MEMORY[0x1DA6FC0B0](*v0);
  if (v1 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v1;
  }

  MEMORY[0x1DA6FC0E0](*&v8);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1DA6FC0E0](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1DA6FC0E0](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1DA6FC0E0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1DA6FC0E0](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1DA6FC0E0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1DA6FC0E0](*&v14);
  v15 = v17;
  if (v17 == 0.0)
  {
    v15 = 0.0;
  }

  return MEMORY[0x1DA6FC0E0](*&v15);
}

uint64_t FeedLayoutCacheFixedKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v18 = v0[8];
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x1DA6FC0E0](*&v9);
  if (v3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v3;
  }

  MEMORY[0x1DA6FC0E0](*&v10);
  if (v4 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x1DA6FC0E0](*&v11);
  if (v5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1DA6FC0E0](*&v12);
  if (v6 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v6;
  }

  MEMORY[0x1DA6FC0E0](*&v13);
  if (v7 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1DA6FC0E0](*&v14);
  if (v8 == 0.0)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v8;
  }

  MEMORY[0x1DA6FC0E0](*&v15);
  v16 = v18;
  if (v18 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1DA6FC0E0](*&v16);
  return sub_1D7264A5C();
}

uint64_t FeedLayoutCacheFixedKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D5F8417C(0, &qword_1EDF03BB0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F840D4();
  sub_1D7264B0C();
  if (!v2)
  {
    LOBYTE(v17) = 0;
    v16 = sub_1D72642FC();
    type metadata accessor for CGSize(0);
    v18 = 1;
    sub_1D5F841E0(&qword_1EDF04398, MEMORY[0x1E695EFA0]);
    sub_1D726431C();
    v11 = v17;
    v18 = 2;
    sub_1D726431C();
    v12 = v17;
    v18 = 3;
    sub_1D5F84224();
    sub_1D726431C();
    v13 = v17;
    v18 = 4;
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v16;
    *(a2 + 8) = v11;
    *(a2 + 24) = v12;
    *(a2 + 40) = v13;
    *(a2 + 56) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D5F83FB8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](*&v2);
  sub_1D5BE7138(v3, v4);
  sub_1D5BE7138(v5, v6);
  if (v7 == 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v7;
  }

  MEMORY[0x1DA6FC0E0](*&v11);
  if (v8 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v8;
  }

  MEMORY[0x1DA6FC0E0](*&v12);
  if (v9 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v9;
  }

  MEMORY[0x1DA6FC0E0](*&v13);
  if (v10 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v10;
  }

  MEMORY[0x1DA6FC0E0](*&v14);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F840D4()
{
  result = qword_1EDF13DE8;
  if (!qword_1EDF13DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13DE8);
  }

  return result;
}

unint64_t sub_1D5F84128()
{
  result = qword_1EDF13C28;
  if (!qword_1EDF13C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13C28);
  }

  return result;
}

void sub_1D5F8417C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F840D4();
    v7 = a3(a1, &type metadata for FeedLayoutCacheFixedKey.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F841E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5F84224()
{
  result = qword_1EDF13C20;
  if (!qword_1EDF13C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13C20);
  }

  return result;
}

unint64_t sub_1D5F8427C()
{
  result = qword_1EC8819C0;
  if (!qword_1EC8819C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819C0);
  }

  return result;
}

uint64_t sub_1D5F842D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5F842F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

unint64_t sub_1D5F84350()
{
  result = qword_1EC8819C8;
  if (!qword_1EC8819C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819C8);
  }

  return result;
}

unint64_t sub_1D5F843A8()
{
  result = qword_1EDF13DD8;
  if (!qword_1EDF13DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13DD8);
  }

  return result;
}

unint64_t sub_1D5F84400()
{
  result = qword_1EDF13DE0;
  if (!qword_1EDF13DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13DE0);
  }

  return result;
}

uint64_t sub_1D5F84454(uint64_t a1, uint64_t a2)
{
  if (a1 == 97 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 98 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 99 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 100 && a2 == 0xE100000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 101 && a2 == 0xE100000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1D72646CC();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t FormatStateMachineInlineInput.initialState.getter()
{
  v1 = *v0;

  return v1;
}

NewsFeed::FormatStateMachineInlineInput::Scope_optional __swiftcall FormatStateMachineInlineInput.Scope.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t FormatStateMachineInlineInput.Scope.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F74656C676E6973;
  }

  else
  {
    return 0x65636E6174736E69;
  }
}

uint64_t sub_1D5F846D8()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5F84760(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5F847D4(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5F84858(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D5F848B8(uint64_t *a1@<X8>)
{
  v2 = 0x65636E6174736E69;
  if (*v1)
  {
    v2 = 0x6F74656C676E6973;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE90000000000006ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D5F848FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F74656C676E6973;
  }

  else
  {
    v3 = 0x65636E6174736E69;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE90000000000006ELL;
  }

  if (*a2)
  {
    v5 = 0x6F74656C676E6973;
  }

  else
  {
    v5 = 0x65636E6174736E69;
  }

  if (*a2)
  {
    v6 = 0xE90000000000006ELL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

uint64_t _s8NewsFeed29FormatStateMachineInlineInputV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = 0, (sub_1D72646CC() & 1) != 0))
  {
    if (v2)
    {
      v6 = 0x6F74656C676E6973;
    }

    else
    {
      v6 = 0x65636E6174736E69;
    }

    if (v2)
    {
      v7 = 0xE90000000000006ELL;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    if (v3)
    {
      v8 = 0x6F74656C676E6973;
    }

    else
    {
      v8 = 0x65636E6174736E69;
    }

    if (v3)
    {
      v9 = 0xE90000000000006ELL;
    }

    else
    {
      v9 = 0xE800000000000000;
    }

    if (v6 == v8 && v7 == v9)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1D72646CC();
    }
  }

  return v5 & 1;
}

unint64_t sub_1D5F84B38()
{
  result = qword_1EC8819D0;
  if (!qword_1EC8819D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819D0);
  }

  return result;
}

unint64_t sub_1D5F84B8C(uint64_t a1)
{
  *(a1 + 8) = sub_1D5F84BBC();
  result = sub_1D5F84C10();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5F84BBC()
{
  result = qword_1EC8819D8;
  if (!qword_1EC8819D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819D8);
  }

  return result;
}

unint64_t sub_1D5F84C10()
{
  result = qword_1EDF0A3F8;
  if (!qword_1EDF0A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A3F8);
  }

  return result;
}

unint64_t sub_1D5F84C64(uint64_t a1)
{
  result = sub_1D5F84C8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F84C8C()
{
  result = qword_1EC8819E0;
  if (!qword_1EC8819E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819E0);
  }

  return result;
}

unint64_t sub_1D5F84D20()
{
  result = qword_1EDF0A3F0;
  if (!qword_1EDF0A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A3F0);
  }

  return result;
}

unint64_t sub_1D5F84D74()
{
  result = qword_1EDF0A400;
  if (!qword_1EDF0A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A400);
  }

  return result;
}

unint64_t sub_1D5F84DC8(uint64_t a1)
{
  result = sub_1D5F84DF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F84DF0()
{
  result = qword_1EC8819E8;
  if (!qword_1EC8819E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819E8);
  }

  return result;
}

uint64_t sub_1D5F84E84(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F84ED8()
{
  result = qword_1EDF0A3E0;
  if (!qword_1EDF0A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A3E0);
  }

  return result;
}

unint64_t sub_1D5F84F2C()
{
  result = qword_1EDF0A3E8;
  if (!qword_1EDF0A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A3E8);
  }

  return result;
}

unint64_t sub_1D5F84F80()
{
  result = qword_1EC8819F0;
  if (!qword_1EC8819F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed28DebugFormatUploadEntryTargetO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t IssueCoverTraits.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F850B0()
{
  result = qword_1EC8819F8;
  if (!qword_1EC8819F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8819F8);
  }

  return result;
}

uint64_t sub_1D5F8517C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatPuzzleEmbedViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5F851C0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40));
  type metadata accessor for FormatPuzzleEmbedViewController();
  v7 = sub_1D725AABC();
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController);
    v10 = &v9[OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_reuseIdentifier];
    swift_beginAccess();
    *v10 = a1;
    *(v10 + 1) = a2;
    v11 = v9;

    *a3 = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D5F852A0(uint64_t a1)
{
  v106 = a1;
  v99 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v99, v1);
  v100 = (&v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27CBC(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v95 - v5;
  v7 = type metadata accessor for FormatOption(0);
  v101 = *(v7 - 8);
  v102 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v98 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D72585BC();
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v97 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v95 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v95 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v103 = &v95 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v95 - v26;
  sub_1D5D27CBC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v95 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v96 = &v95 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v104 = &v95 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v95 - v39;
  v41 = type metadata accessor for FormatAbsoluteURL(0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v44 = &v95 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = (&v95 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5F87444(v105, v48, type metadata accessor for FormatCommandOpenURL);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D5C6C308(v48, v44, type metadata accessor for FormatAbsoluteURL);
    if (qword_1EDF3AF88 != -1)
    {
      swift_once();
    }

    v61 = qword_1EDF3AF90;
    v63 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 8);
    v62 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    v65 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 24);
    v64 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
    v66 = *&v44[*(v41 + 20)];

    sub_1D6B79708(v66, MEMORY[0x1E69E7CC0], v27);
    if (v62)
    {
      sub_1D69F65B4(v27, v63, v62, v65, v64, v40);
      v68 = v107;
      v67 = v108;
      (*(v107 + 8))(v27, v108);
    }

    else
    {
      v68 = v107;
      v67 = v108;
      (*(v107 + 32))(v40, v27, v108);
    }

    (*(v68 + 56))(v40, 0, 1, v67);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v86 = sub_1D62029B4(v61, v40);
    sub_1D5D2CDA8(v44, type metadata accessor for FormatAbsoluteURL);
    return v86;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v70 = *v48;
    v69 = v48[1];
    v71 = v48[2];
    v72 = v106;

    FormatOptionCollection.subscript.getter(v70, v69, v6);
    if ((*(v101 + 48))(v6, 1, v102) == 1)
    {
      sub_1D5F873CC(v6);
      v73 = v100;
      *v100 = v70;
      v73[1] = v69;
      v74 = v73;
      swift_storeEnumTagMultiPayload();
      v75 = *(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
      sub_1D5F8731C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      v77 = swift_allocError();
      v78 = v108;
      v79 = v107;
      if ((v75 & 1) == 0)
      {
        sub_1D5F87444(v74, v76, type metadata accessor for FormatLayoutError);
        swift_willThrow();

        return sub_1D5D2CDA8(v74, type metadata accessor for FormatLayoutError);
      }

      sub_1D5F87444(v74, v76, type metadata accessor for FormatLayoutError);
      v80 = v95;
      sub_1D725855C();
      result = (*(v79 + 48))(v80, 1, v78);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_1D5D2CDA8(v74, type metadata accessor for FormatLayoutError);
      v82 = v97;
      (*(v79 + 32))(v97, v80, v78);
    }

    else
    {

      v83 = v6;
      v84 = v98;
      sub_1D5C6C308(v83, v98, type metadata accessor for FormatOption);
      v85 = v109;
      sub_1D6B744A8(v72, &v111);
      v79 = v107;
      v78 = v108;
      if (v85)
      {

        return sub_1D5D2CDA8(v84, type metadata accessor for FormatOption);
      }

      v87 = v70;
      v82 = v97;
      sub_1D6B80238(v111, v87, v69, v71, v72, v97);

      sub_1D5D2CDA8(v84, type metadata accessor for FormatOption);
    }

    if (qword_1EDF3AF88 != -1)
    {
      swift_once();
    }

    v88 = qword_1EDF3AF90;
    v89 = (v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config);
    v90 = *(v72 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
    if (v90)
    {
      v91 = v89[3];
      v92 = v89[4];
      v93 = v89[1];

      v94 = v96;
      sub_1D69F65B4(v82, v93, v90, v91, v92, v96);
    }

    else
    {
      v94 = v96;
      (*(v79 + 16))(v96, v82, v78);
    }

    (*(v79 + 56))(v94, 0, 1, v78);
    type metadata accessor for FormatCommandAction();
    swift_allocObject();
    v86 = sub_1D62029B4(v88, v94);
    (*(v79 + 8))(v82, v78);
    return v86;
  }

  v50 = v48[2];
  if (qword_1EDF3AF88 != -1)
  {
    swift_once();
  }

  v51 = qword_1EDF3AF90;
  v52 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 16);
  v101 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 8);
  v102 = v52;
  v53 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 32);
  v100 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 24);
  v110 = *(v106 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_config + 1);
  v105 = v53;

  v106 = v51;

  sub_1D722B410(v16);
  sub_1D725849C();
  v54 = v107;
  v55 = *(v107 + 8);
  v56 = v16;
  v57 = v108;
  v55(v56, v108);
  v58 = v103;
  sub_1D6B79708(v50, MEMORY[0x1E69E7CC0], v103);
  v59 = v102;

  v55(v20, v57);
  v60 = v104;
  if (v59)
  {
    sub_1D69F65B4(v58, v101, v59, v100, v105, v104);
    v55(v58, v57);
  }

  else
  {
    (*(v54 + 32))(v104, v58, v57);
  }

  (*(v54 + 56))(v60, 0, 1, v57);
  type metadata accessor for FormatCommandAction();
  swift_allocObject();
  return sub_1D62029B4(v106, v60);
}

uint64_t FormatCommandOpenURL.encode(to:)(void *a1)
{
  v2 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v46 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v46 - v11;
  v13 = type metadata accessor for FormatAbsoluteURL(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D30DC4(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D5C30408();
  v49 = v24;
  sub_1D71B5B30(&type metadata for FormatCodingKeys, v27, v26, &type metadata for FormatVersions.JazzkonC, v25, &off_1F51F6C78, v24);
  sub_1D5F87444(v48, v20, type metadata accessor for FormatCommandOpenURL);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v20;
      v30 = v20[1];
      v31 = v20[2];
      if (qword_1EDF31EA8 != -1)
      {
        swift_once();
      }

      v32 = sub_1D725BD1C();
      v33 = __swift_project_value_buffer(v32, qword_1EDFFCD18);
      (*(*(v32 - 8) + 16))(v8, v33, v32);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v34 = v49;
      sub_1D63A34F0(2, v29, v30, v31, v8);

      v35 = v8;
    }

    else
    {
      v40 = *v20;
      v41 = v20[1];
      v42 = v20[2];
      if (qword_1EDF31EB0 != -1)
      {
        swift_once();
      }

      v43 = sub_1D725BD1C();
      v44 = __swift_project_value_buffer(v43, qword_1EDFFCD30);
      v45 = v47;
      (*(*(v43 - 8) + 16))(v47, v44, v43);
      type metadata accessor for FormatVersionRequirement.Value(0);
      swift_storeEnumTagMultiPayload();
      v34 = v49;
      sub_1D63A3688(3, v40, v41, v42, v45);

      v35 = v45;
    }

    sub_1D5D2CDA8(v35, type metadata accessor for FormatVersionRequirement);
    return sub_1D5D2CDA8(v34, sub_1D5D30DC4);
  }

  else
  {
    sub_1D5C6C308(v20, v16, type metadata accessor for FormatAbsoluteURL);
    if (qword_1EDF31EB0 != -1)
    {
      swift_once();
    }

    v36 = sub_1D725BD1C();
    v37 = __swift_project_value_buffer(v36, qword_1EDFFCD30);
    (*(*(v36 - 8) + 16))(v12, v37, v36);
    type metadata accessor for FormatVersionRequirement.Value(0);
    swift_storeEnumTagMultiPayload();
    v38 = v49;
    sub_1D63A331C(0, v16, v12);
    sub_1D5D2CDA8(v12, type metadata accessor for FormatVersionRequirement);
    sub_1D5D2CDA8(v16, type metadata accessor for FormatAbsoluteURL);
    return sub_1D5D2CDA8(v38, sub_1D5D30DC4);
  }
}

uint64_t sub_1D5F86390()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5F86468(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5F8652C(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5F86600(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E696C6E69;
  v5 = 0xE500000000000000;
  v6 = 0x7465737361;
  v7 = 0xE600000000000000;
  v8 = 0x6E6F6974706FLL;
  if (v2 != 3)
  {
    v8 = 0x79747265706F7270;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6574756C6F736261;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void sub_1D5F8671C()
{
  v2 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5F87444(v0, v5, type metadata accessor for FormatCommandOpenURL);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v7 = *v5;
    v6 = v5[1];
    v8 = v5[2];
    v13[0] = v7;
    v13[1] = v6;
    v13[2] = v8;
    HIBYTE(v12) = 6;

    v9 = sub_1D703E0C8(v13, &v12 + 7);
    if (v1)
    {
    }

    else
    {
      v10 = v9;

      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      *(v11 + 24) = v6;
      *(v11 + 32) = v10;
      *(v11 + 40) = 0;
      sub_1D6C4D24C(v11 | 0x3000000000000000);
    }
  }

  else
  {
    sub_1D5D2CDA8(v5, type metadata accessor for FormatCommandOpenURL);
  }
}

unint64_t sub_1D5F868E4()
{
  result = qword_1EDF415E8;
  if (!qword_1EDF415E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF415E8);
  }

  return result;
}

uint64_t _s8NewsFeed20FormatCommandOpenURLO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatAbsoluteURL(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v44 - v14);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v44 - v18;
  sub_1D5F874AC(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v24 = (&v44 + *(v23 + 56) - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1;
  v26 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F87444(v25, v26, type metadata accessor for FormatCommandOpenURL);
  sub_1D5F87444(a2, v24, type metadata accessor for FormatCommandOpenURL);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D5F87444(v26, v19, type metadata accessor for FormatCommandOpenURL);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D5C6C308(v24, v7, type metadata accessor for FormatAbsoluteURL);
      if (sub_1D72584CC())
      {
        v42 = sub_1D633A250(*&v19[*(v4 + 20)], *&v7[*(v4 + 20)]);
        sub_1D5D2CDA8(v7, type metadata accessor for FormatAbsoluteURL);
        if (v42)
        {
          sub_1D5D2CDA8(v19, type metadata accessor for FormatAbsoluteURL);
          v41 = 1;
LABEL_30:
          v40 = type metadata accessor for FormatCommandOpenURL;
          goto LABEL_31;
        }
      }

      else
      {
        sub_1D5D2CDA8(v7, type metadata accessor for FormatAbsoluteURL);
      }

      sub_1D5D2CDA8(v19, type metadata accessor for FormatAbsoluteURL);
LABEL_29:
      v41 = 0;
      goto LABEL_30;
    }

    sub_1D5D2CDA8(v19, type metadata accessor for FormatAbsoluteURL);
LABEL_22:
    v41 = 0;
    v40 = sub_1D5F874AC;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5F87444(v26, v15, type metadata accessor for FormatCommandOpenURL);
    v29 = *v15;
    v28 = v15[1];
    v30 = v15[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v24[2];
      v32 = v29 == *v24 && v28 == v24[1];
      if (v32 || (sub_1D72646CC() & 1) != 0)
      {
        v33 = sub_1D633A250(v30, v31);
        goto LABEL_19;
      }

LABEL_26:

      goto LABEL_29;
    }

    goto LABEL_21;
  }

  sub_1D5F87444(v26, v11, type metadata accessor for FormatCommandOpenURL);
  v35 = *v11;
  v34 = v11[1];
  v36 = v11[2];
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_21:

    goto LABEL_22;
  }

  v37 = v24[2];
  v38 = v35 == *v24 && v34 == v24[1];
  if (!v38 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_26;
  }

  v33 = sub_1D6341C50(v36, v37);
LABEL_19:
  v39 = v33;

  v40 = type metadata accessor for FormatCommandOpenURL;
  if ((v39 & 1) == 0)
  {
    goto LABEL_29;
  }

  v41 = 1;
LABEL_31:
  sub_1D5D2CDA8(v26, v40);
  return v41;
}

void sub_1D5F86DA0(uint64_t a1)
{
  v41 = a1;
  v3 = type metadata accessor for FormatOption(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27CBC(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v37 - v14;
  v16 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5F87444(v1, v19, type metadata accessor for FormatCommandOpenURL);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v20 = type metadata accessor for FormatCommandOpenURL;
    v21 = v19;
LABEL_3:
    sub_1D5D2CDA8(v21, v20);
    return;
  }

  v23 = *v19;
  v22 = v19[1];
  v24 = v19[2];
  v42[0] = v23;
  v42[1] = v22;
  v42[2] = v24;
  v43 = 6;

  v25 = sub_1D703E0C8(v42, &v43);
  if (v2)
  {

LABEL_6:

    return;
  }

  v38 = v25;
  v39 = v24;
  v26 = v41;
  v40 = v22;
  FormatOptionCollection.subscript.getter(v23, v22, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {

    sub_1D5F873CC(v11);
    if ((*(v26 + 48) & 1) == 0)
    {
      type metadata accessor for FormatLayoutError(0);
      sub_1D5F8731C(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      v29 = v40;
      *v30 = v23;
      v30[1] = v29;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_6;
    }

    (*(v4 + 56))(v15, 1, 1, v3);
  }

  else
  {
    sub_1D5C6C308(v11, v7, type metadata accessor for FormatOption);
    v42[0] = v7[2];
    v27 = v38;

    FormatOptionValue.type.getter(v28, &v43);
    if ((sub_1D6183C84(v43, v27) & 1) == 0)
    {
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D5F8731C(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      v32 = v31;
      v34 = *v7;
      v33 = v7[1];
      v42[0] = v7[2];

      FormatOptionValue.type.getter(v35, &v43);
      v36 = v43;
      *v32 = v34;
      *(v32 + 8) = v33;
      *(v32 + 16) = v36;
      *(v32 + 24) = v27;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v20 = type metadata accessor for FormatOption;
      v21 = v7;
      goto LABEL_3;
    }

    swift_bridgeObjectRelease_n();
    sub_1D5C6C308(v7, v15, type metadata accessor for FormatOption);
    (*(v4 + 56))(v15, 0, 1, v3);
  }

  sub_1D5F873CC(v15);
}

uint64_t sub_1D5F87270(void *a1)
{
  a1[1] = sub_1D5F8731C(&qword_1EDF2B450, type metadata accessor for FormatCommandOpenURL, &protocol conformance descriptor for FormatCommandOpenURL);
  a1[2] = sub_1D5F8731C(&qword_1EDF0F168, type metadata accessor for FormatCommandOpenURL, &protocol conformance descriptor for FormatCommandOpenURL);
  result = sub_1D5F8731C(&qword_1EC881A10, type metadata accessor for FormatCommandOpenURL, &protocol conformance descriptor for FormatCommandOpenURL);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5F8731C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5F87378()
{
  result = qword_1EC881A18;
  if (!qword_1EC881A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A18);
  }

  return result;
}

uint64_t sub_1D5F873CC(uint64_t a1)
{
  sub_1D5D27CBC(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F87444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D5F874AC(uint64_t a1)
{
  if (!qword_1EC881A20)
  {
    type metadata accessor for FormatCommandOpenURL(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC881A20);
    }
  }
}

void *sub_1D5F87520(__n128 a1)
{
  result = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(MEMORY[0x1E69E7CC0], a1);
  qword_1EC9BA748 = result;
  return result;
}

UIColor sub_1D5F8754C()
{
  sub_1D5C0B9F0();
  v0._countAndFlagsBits = 0x333945384538;
  v0._object = 0xE600000000000000;
  result.super.isa = UIColor.init(hex:)(v0).super.isa;
  qword_1EDFFC548 = result.super.isa;
  return result;
}

void *FormatSportsEventMatchupColorProvider.__allocating_init(sportsEvent:)(void *a1)
{
  v1 = [a1 eventCompetitorTags];
  if (v1)
  {
    v3 = v1;
    sub_1D5EC01D0();
    v4 = sub_1D726267C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = _s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(v4, v2);
  swift_unknownObjectRelease();
  return v5;
}

void *FormatSportsEventMatchupColorProvider.subscript.getter(void *a1)
{
  swift_getObjectType();

  return sub_1D5F879DC(a1, v1);
}

void *sub_1D5F87654(id a1, void *a2)
{
  v3 = v2;
  if (a1 && (v6 = [a1 sportsTheme]) != 0 && (v7 = objc_msgSend(v6, sel_sportsPrimaryColor), swift_unknownObjectRelease(), v7))
  {
    v8 = [v7 ne_color];

    if (!a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (qword_1EDF06C20 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDFFC548;
    if (!a2)
    {
      goto LABEL_12;
    }
  }

  v9 = [a2 sportsTheme];
  if (v9)
  {
    v10 = [v9 sportsPrimaryColor];
    swift_unknownObjectRelease();
    if (v10)
    {
      v11 = [v10 ne_color];

      goto LABEL_15;
    }
  }

LABEL_12:
  if (qword_1EDF06C20 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDFFC548;
LABEL_15:
  if ([v8 _isSimilarToColor_withinPercentage_])
  {
    v12 = [objc_opt_self() whiteColor];
    v13 = sub_1D726359C();

    if (v13)
    {

      v11 = v13;
    }
  }

  v14 = MEMORY[0x1E69E7CC8];
  if (a1)
  {
    v15 = [swift_unknownObjectRetain() identifier];
    v16 = sub_1D726207C();
    v18 = v17;

    v19 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D6D769B4(v19, v16, v18, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    v21 = [a2 identifier];
    v22 = sub_1D726207C();
    v24 = v23;

    v25 = v11;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D6D769B4(v25, v22, v24, v26);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  v3[2] = v8;
  v3[3] = v11;
  v3[4] = v14;
  return v3;
}

uint64_t FormatSportsEventMatchupColorProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D5F879DC(void *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = [a1 identifier];
  v4 = sub_1D726207C();
  v6 = v5;

  if (*(v2 + 16))
  {
    v7 = sub_1D5B69D90(v4, v6);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v2 + 56) + 8 * v7);
      v11 = v10;
      return v10;
    }
  }

  else
  {
  }

  return 0;
}

void *_s8NewsFeed37FormatSportsEventMatchupColorProviderC14competitorTagsACSaySo17FCSportsProviding_pG_tcfC_0(void *a1, __n128 a2)
{
  sub_1D5F87C04(0, a2);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1;
  sub_1D5F87C68(0);
  sub_1D5F87CC0();
  sub_1D725AD9C();
  v14 = 0;
  sub_1D725AD8C();
  v9 = v15;
  v13[1] = 1;
  sub_1D725AD8C();
  v10 = v14;
  type metadata accessor for FormatSportsEventMatchupColorProvider();
  swift_allocObject();
  v11 = sub_1D5F87654(v9, v10);
  (*(v5 + 8))(v8, v4);
  return v11;
}

void sub_1D5F87C04(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF17C58)
  {
    sub_1D5F87C68(255);
    sub_1D5F87CC0();
    v2 = sub_1D725AD7C();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF17C58);
    }
  }
}

void sub_1D5F87C68(uint64_t a1)
{
  if (!qword_1EDF04A10)
  {
    sub_1D5EC01D0();
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04A10);
    }
  }
}

unint64_t sub_1D5F87CC0()
{
  result = qword_1EDF049F8;
  if (!qword_1EDF049F8)
  {
    sub_1D5F87C68(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF049F8);
  }

  return result;
}

id FCAssetHandle.data.getter()
{
  result = [v0 dataProvider];
  if (result)
  {
    v2 = [result data];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = sub_1D725867C();

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t FCAssetHandle.loadData(cachePolicy:)(uint64_t a1)
{
  sub_1D5F88D54();
  sub_1D725BDCC();
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  v3 = sub_1D725B92C();
  v4 = sub_1D725BA8C();

  return v4;
}

uint64_t FCAssetHandle.load()()
{
  v1 = [v0 filePath];
  if (v1)
  {
    v3 = v1;
    sub_1D726207C();

    sub_1D5F129A4();
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v2);
    sub_1D5F129A4();
    swift_allocObject();
    return sub_1D725BBAC();
  }
}

uint64_t FCAssetHandle.loadAsset()()
{
  v1 = [v0 filePath];
  if (v1)
  {

    sub_1D5F88F70(0, &qword_1EDF17938, sub_1D5C169F4);
    swift_allocObject();
    v3 = v0;
    return sub_1D725BB1C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, v2);
    sub_1D5F88F70(v5, &qword_1EDF17938, sub_1D5C169F4);
    swift_allocObject();
    return sub_1D725BBAC();
  }
}

uint64_t sub_1D5F8806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = sub_1D5F89598;
  v11[6] = v10;
  v16[4] = sub_1D5F895D0;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D5B6B06C;
  v16[3] = &block_descriptor_25;
  v12 = _Block_copy(v16);

  v13 = a5;

  v14 = [v13 downloadIfNeededWithCompletion_];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

void sub_1D5F881B8(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 filePath];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D726207C();
    v17 = v16;

    a4(v15, v17);
  }

  else
  {
    _s6ErrorsOMa_0(0);
    sub_1D5F891E0(&qword_1EDF1ABE8, _s6ErrorsOMa_0, &unk_1D728780C);
    v18 = swift_allocError();
    v20 = v19;
    v21 = [a1 remoteURL];
    sub_1D72584EC();

    (*(v8 + 32))(v20, v12, v7);
    swift_storeEnumTagMultiPayload();
    a2(v18);
  }
}

uint64_t sub_1D5F883BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = sub_1D5B7E910;
  v11[6] = v10;
  v16[4] = sub_1D5F89580;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D5B6B06C;
  v16[3] = &block_descriptor_16;
  v12 = _Block_copy(v16);

  v13 = a5;

  v14 = [v13 downloadIfNeededWithCompletion_];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

void sub_1D5F88508(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void *))
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 dataProvider])
  {
    a4(a1);

    swift_unknownObjectRelease();
  }

  else
  {
    _s6ErrorsOMa_0(0);
    sub_1D5F891E0(&qword_1EDF1ABE8, _s6ErrorsOMa_0, &unk_1D728780C);
    v13 = swift_allocError();
    v15 = v14;
    v16 = [a1 remoteURL];
    sub_1D72584EC();

    (*(v8 + 32))(v15, v12, v7);
    swift_storeEnumTagMultiPayload();
    a2(v13);
  }
}

uint64_t FCAssetHandle.loadDataProvider(cachePolicy:)(uint64_t *a1)
{
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v3, v5).n128_u64[0];
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = [v1 dataProvider];
  if (v11)
  {
    v18[1] = v11;
    sub_1D5F88F70(0, &qword_1EDF3B918, sub_1D5F88D54);
    swift_allocObject();
    return sub_1D725BB1C();
  }

  else
  {
    if (v9)
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      _s6ErrorsOMa_0(0);
      sub_1D5F891E0(&qword_1EDF1ABE8, _s6ErrorsOMa_0, &unk_1D728780C);
      swift_allocError();
      v16 = v15;
      v17 = [v1 remoteURL];
      sub_1D72584EC();

      (*(v4 + 32))(v16, v8, v3);
      swift_storeEnumTagMultiPayload();
      sub_1D5F88F70(0, &qword_1EDF3B918, sub_1D5F88D54);
      swift_allocObject();
      return sub_1D725BAFC();
    }

    else
    {
      MEMORY[0x1EEE9AC00](0, v12);
      v18[-2] = v1;
      sub_1D5F88F70(0, &qword_1EDF3B918, sub_1D5F88D54);
      swift_allocObject();
      return sub_1D725BBAC();
    }
  }
}

uint64_t sub_1D5F88990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = sub_1D5B7E910;
  v11[6] = v10;
  v16[4] = sub_1D5F89568;
  v16[5] = v11;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1D5B6B06C;
  v16[3] = &block_descriptor_12;
  v12 = _Block_copy(v16);

  v13 = a5;

  v14 = [v13 downloadIfNeededWithCompletion_];
  _Block_release(v12);
  return swift_unknownObjectRelease();
}

void sub_1D5F88ADC(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void))
{
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v7, v9).n128_u64[0];
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 dataProvider])
  {
    a4();

    swift_unknownObjectRelease();
  }

  else
  {
    _s6ErrorsOMa_0(0);
    sub_1D5F891E0(&qword_1EDF1ABE8, _s6ErrorsOMa_0, &unk_1D728780C);
    v13 = swift_allocError();
    v15 = v14;
    v16 = [a1 remoteURL];
    sub_1D72584EC();

    (*(v8 + 32))(v15, v12, v7);
    swift_storeEnumTagMultiPayload();
    a2(v13);
  }
}

uint64_t sub_1D5F88CC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v5 = a3 & 1;
  return FCAssetHandle.loadDataProvider(cachePolicy:)(&v4);
}

uint64_t sub_1D5F88D0C()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 24);
  v4 = v1;
  return FCAssetHandle.loadDataProvider(cachePolicy:)(&v3);
}

unint64_t sub_1D5F88D54()
{
  result = qword_1EDF1A9A0;
  if (!qword_1EDF1A9A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF1A9A0);
  }

  return result;
}

void sub_1D5F88DB8(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v6, v8).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 data];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D725867C();
    v16 = v15;

    *a3 = v14;
    a3[1] = v16;
  }

  else
  {
    _s6ErrorsOMa_0(0);
    sub_1D5F891E0(&qword_1EDF1ABE8, _s6ErrorsOMa_0, &unk_1D728780C);
    swift_allocError();
    v18 = v17;
    v19 = [a2 remoteURL];
    sub_1D72584EC();

    (*(v7 + 32))(v18, v11, v6);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void sub_1D5F88F70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D725BC0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s6ErrorsOMa_0(uint64_t a1)
{
  result = qword_1EDF1ABD8;
  if (!qword_1EDF1ABD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FCAssetHandle.remoteURLAbsoluteString.getter()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v1, v3).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 remoteURL];
  sub_1D72584EC();

  v8 = sub_1D72583DC();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t FCAssetHandle.download(withGroup:)(uint64_t a1)
{
  v2 = [v1 downloadIfNeededWithGroup_];

  return swift_unknownObjectRelease();
}

id FCAssetHandle.assetDataProvider.getter@<X0>(void *a1@<X8>)
{
  a1[3] = sub_1D5C169F4();
  a1[4] = sub_1D5F891E0(&qword_1EDF1AB58, sub_1D5C169F4, &protocol conformance descriptor for FCAssetHandle);
  *a1 = v3;

  return v3;
}

uint64_t sub_1D5F891E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1D5F89228@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  a1[3] = sub_1D5C169F4();
  a1[4] = sub_1D5F891E0(&qword_1EDF1AB58, sub_1D5C169F4, &protocol conformance descriptor for FCAssetHandle);
  *a1 = v4;

  return v4;
}

uint64_t sub_1D5F892B4()
{
  v1 = [*v0 uniqueKey];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t sub_1D5F8930C(uint64_t a1)
{
  v2 = [*v1 downloadIfNeededWithGroup_];

  return swift_unknownObjectRelease();
}

id FCAssetHandle.isRawFileConsumable.getter()
{
  v1 = [v0 dataProvider];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isRawFileConsumable];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1D5F893AC()
{
  result = [*v0 dataProvider];
  if (result)
  {
    v2 = [result data];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = sub_1D725867C();

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D5F8943C()
{
  v1 = [*v0 filePath];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D726207C();

  return v3;
}

id sub_1D5F894A4()
{
  v1 = [*v0 dataProvider];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isRawFileConsumable];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D5F89504(uint64_t a1)
{
  result = sub_1D72585BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D5F89598(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

NewsFeed::FormatPatternDirection_optional __swiftcall FormatPatternDirection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

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

uint64_t FormatPatternDirection.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F546D6F74746F62;
  }

  else
  {
    return 0x746F426F54706F74;
  }
}

uint64_t sub_1D5F896C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F546D6F74746F62;
  }

  else
  {
    v3 = 0x746F426F54706F74;
  }

  if (v2)
  {
    v4 = 0xEB000000006D6F74;
  }

  else
  {
    v4 = 0xEB00000000706F54;
  }

  if (*a2)
  {
    v5 = 0x6F546D6F74746F62;
  }

  else
  {
    v5 = 0x746F426F54706F74;
  }

  if (*a2)
  {
    v6 = 0xEB00000000706F54;
  }

  else
  {
    v6 = 0xEB000000006D6F74;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();
  }

  return v8 & 1;
}

unint64_t sub_1D5F89780()
{
  result = qword_1EC881A28;
  if (!qword_1EC881A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A28);
  }

  return result;
}

uint64_t sub_1D5F897D4()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D5F89868(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D5F898E8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D5F89978(char *a2@<X8>)
{
  v3 = sub_1D72641CC();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D5F899D8(uint64_t *a1@<X8>)
{
  v2 = 0x746F426F54706F74;
  if (*v1)
  {
    v2 = 0x6F546D6F74746F62;
  }

  v3 = 0xEB000000006D6F74;
  if (*v1)
  {
    v3 = 0xEB00000000706F54;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1D5F89A28(uint64_t a1)
{
  *(a1 + 8) = sub_1D5F89A58();
  result = sub_1D5F89AAC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D5F89A58()
{
  result = qword_1EC881A30;
  if (!qword_1EC881A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A30);
  }

  return result;
}

unint64_t sub_1D5F89AAC()
{
  result = qword_1EDF0DA28;
  if (!qword_1EDF0DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA28);
  }

  return result;
}

unint64_t sub_1D5F89B00(uint64_t a1)
{
  result = sub_1D5F89B28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5F89B28()
{
  result = qword_1EC881A38;
  if (!qword_1EC881A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A38);
  }

  return result;
}

unint64_t sub_1D5F89B7C(void *a1)
{
  a1[1] = sub_1D5F89BB4();
  a1[2] = sub_1D5F89C08();
  result = sub_1D5F89780();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F89BB4()
{
  result = qword_1EDF0DA20;
  if (!qword_1EDF0DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA20);
  }

  return result;
}

unint64_t sub_1D5F89C08()
{
  result = qword_1EDF0DA30;
  if (!qword_1EDF0DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DA30);
  }

  return result;
}

uint64_t sub_1D5F89CF8()
{
  sub_1D5B74A14(0, &qword_1EDF3B2E0, MEMORY[0x1E69D8788]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v7 - v4;
  sub_1D5B74A14(0, &qword_1EDF3B180, MEMORY[0x1E69D8790]);
  (*(v2 + 104))(v5, *MEMORY[0x1E69D8780], v1);
  result = sub_1D725F7CC();
  qword_1EDF169C0 = result;
  return result;
}

double static Commands.delphi.getter()
{
  if (qword_1EDF169B8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D5F89E8C(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v7 = qword_1EDF169B8;
  swift_unknownObjectRetain();
  if (v7 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();

  v8 = sub_1D726203C();
  v9 = [objc_opt_self() systemImageNamed_];

  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v12[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v10 = sub_1D725D3AC();
  swift_unknownObjectRelease();
  return v10;
}

uint64_t FormatItemCollection.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 8);
  if (*(v5 + 16) && (v6 = sub_1D5B69D90(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    sub_1D5CBB26C(0);
    v11 = v10;
    v18 = *(v10 - 8);
    sub_1D5CCD174(v9 + *(v18 + 72) * v8, a3);
    v12 = *(v18 + 56);
    v13 = a3;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    sub_1D5CBB26C(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a3;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t FormatItemCollection.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1D7264B3C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D5CBB104(0);
  sub_1D5CBB194(&qword_1EDF05100, &qword_1EDF12430, &protocol conformance descriptor for FormatObject<A>, MEMORY[0x1E69E6300]);
  sub_1D726476C();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

NewsFeed::FormatItemCollection __swiftcall FormatItemCollection.init()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D5C2BF34(MEMORY[0x1E69E7CC0]);
  *v1 = v2;
  v1[1] = v3;
  result.itemsByIdentifier._rawValue = v4;
  result.items._rawValue = v3;
  return result;
}

unint64_t sub_1D5F8A2EC@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1D5C2BF34(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

__n128 sub_1D5F8A320(char **a1, __int128 *a2)
{
  v3 = a2[5];
  v7[4] = a2[4];
  v7[5] = v3;
  v7[6] = a2[6];
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  v5 = a2[3];
  v7[2] = a2[2];
  v7[3] = v5;
  sub_1D5CFBB04(a1, v7, *v2);
  return result;
}

uint64_t sub_1D5F8A378(uint64_t a1, uint64_t a2)
{
  sub_1D5CBB26C(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FormatPuzzleStatistic.identifier.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v4 = *(*v0 + 16);

  MEMORY[0x1DA6F9910](v1, v2);
  return v4;
}

uint64_t FormatPuzzleStatistic.statistic.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t FormatPuzzleStatistic.init(puzzleType:statistic:selectors:properties:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1D5F8A580()
{
  v1 = 0x7954656C7A7A7570;
  v2 = 0x726F7463656C6573;
  if (*v0 != 2)
  {
    v2 = 0x69747265706F7270;
  }

  if (*v0)
  {
    v1 = 0x6974736974617473;
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

uint64_t sub_1D5F8A60C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5F8B354(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5F8A634(uint64_t a1)
{
  v2 = sub_1D5E1C4F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F8A670(uint64_t a1)
{
  v2 = sub_1D5E1C4F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatPuzzleStatistic.encode(to:)(void *a1)
{
  sub_1D5F8B04C(0, &qword_1EDF02660, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v16 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v19 = v1[2];
  v20 = v10;
  v17 = v1[4];
  v18 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C4F0();

  sub_1D7264B5C();
  v22 = v11;
  v21 = 0;
  type metadata accessor for FormatPuzzleType(0);
  sub_1D5F8B0B0(&qword_1EDF111D8, type metadata accessor for FormatPuzzleType, &protocol conformance descriptor for FormatPuzzleType);
  sub_1D726443C();
  if (v2)
  {
  }

  else
  {
    v13 = v17;
    v14 = v18;

    LOBYTE(v22) = 1;
    sub_1D72643FC();
    if (*(v14 + 16))
    {
      sub_1D5E07814(v14, v9, 2);
    }

    if (*(v13 + 16))
    {
      v21 = 3;
      v22 = v13;
      sub_1D5F8AFD8();
      sub_1D5E4C584();
      sub_1D5E4C5D4();
      sub_1D72647EC();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

double FormatPuzzleStatistic.init(from:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  sub_1D5E18934(0);
  v47 = v3;
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v8 = v7;
  v46 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8B04C(0, &qword_1EDF19C08, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v50 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v41 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C4F0();
  v17 = v51;
  sub_1D7264B0C();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return result;
  }

  v18 = v11;
  v19 = v8;
  v20 = v50;
  type metadata accessor for FormatPuzzleType(0);
  v57 = 0;
  sub_1D5F8B0B0(&qword_1EDF30128, type metadata accessor for FormatPuzzleType, &protocol conformance descriptor for FormatPuzzleType);
  sub_1D726431C();
  v22 = v16;
  v23 = v58;
  v56 = 1;
  v24 = sub_1D72642BC();
  v51 = v25;
  v44 = v24;
  v45 = 0;
  v55 = 2;
  v26 = sub_1D726434C();
  if ((v26 & 1) == 0)
  {
    v42 = v22;
    v43 = v23;
    v41 = MEMORY[0x1E69E7CD0];
    v28 = v45;
    goto LABEL_14;
  }

  v52 = 2;
  sub_1D5F8B0B0(&qword_1EDF3BE00, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
  v27 = v45;
  sub_1D726431C();
  v28 = v27;
  if (!v27)
  {
    v42 = v22;
    v43 = v23;
    v41 = sub_1D725A74C();
    (*(v46 + 1))(v18, v19);
LABEL_14:
    v31 = v6;
    v54 = 3;
    v32 = v42;
    v33 = sub_1D726434C();
    v35 = v48;
    v34 = v49;
    if (v33)
    {
      v53 = 3;
      sub_1D5F8B0B0(&qword_1EDF3BD70, sub_1D5E18934, MEMORY[0x1E69D64C8]);
      v46 = v31;
      v36 = v47;
      sub_1D726431C();
      v37 = v32;
      if (v28)
      {
        (*(v20 + 8))(v32, v13);
        v29 = 1;
        v30 = v45;
        goto LABEL_5;
      }

      v38 = sub_1D725A74C();
      (*(v34 + 8))(v46, v36);
      (*(v20 + 8))(v37, v13);
    }

    else
    {
      (*(v20 + 8))(v32, v13);
      v38 = MEMORY[0x1E69E7CC0];
    }

    v39 = v44;
    *v35 = v43;
    v35[1] = v39;
    v40 = v41;
    v35[2] = v51;
    v35[3] = v40;
    v35[4] = v38;

    __swift_destroy_boxed_opaque_existential_1(a1);

    return result;
  }

  (*(v20 + 8))(v22, v13);
  v29 = 0;
  v30 = v45;
LABEL_5:
  __swift_destroy_boxed_opaque_existential_1(a1);

  if (!v30)
  {
  }

  if (v29)
  {
  }

  return result;
}

uint64_t _s8NewsFeed21FormatPuzzleStatisticV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  type metadata accessor for FormatPuzzleType(0);
  if ((static FormatPuzzleType.== infix(_:_:)(v2, v8) & 1) == 0)
  {
    return 0;
  }

  v12 = v3 == v7 && v5 == v10;
  if (!v12 && (sub_1D72646CC() & 1) == 0 || (sub_1D5BFC390(v4, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1D6339F3C(v6, v11);
}

unint64_t sub_1D5F8AFD8()
{
  result = qword_1EC87F9B8;
  if (!qword_1EC87F9B8)
  {
    sub_1D5F8B04C(255, &qword_1EDF02660, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC87F9B8);
  }

  return result;
}

void sub_1D5F8B04C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5E1C4F0();
    v7 = a3(a1, &type metadata for FormatPuzzleStatistic.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D5F8B0B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5F8B0F8(void *a1)
{
  a1[1] = sub_1D5F8B130();
  a1[2] = sub_1D5F8B184();
  result = sub_1D5F8B1D8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5F8B130()
{
  result = qword_1EDF29450;
  if (!qword_1EDF29450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29450);
  }

  return result;
}

unint64_t sub_1D5F8B184()
{
  result = qword_1EDF0DF80;
  if (!qword_1EDF0DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0DF80);
  }

  return result;
}

unint64_t sub_1D5F8B1D8()
{
  result = qword_1EC881A48;
  if (!qword_1EC881A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A48);
  }

  return result;
}

unint64_t sub_1D5F8B250()
{
  result = qword_1EC881A50;
  if (!qword_1EC881A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A50);
  }

  return result;
}

unint64_t sub_1D5F8B2A8()
{
  result = qword_1EDF29458;
  if (!qword_1EDF29458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29458);
  }

  return result;
}

unint64_t sub_1D5F8B300()
{
  result = qword_1EDF29460;
  if (!qword_1EDF29460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29460);
  }

  return result;
}

uint64_t sub_1D5F8B354(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954656C7A7A7570 && a2 == 0xEA00000000006570;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736974617473 && a2 == 0xE900000000000063 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D72646CC();

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

id SportsLineScoreDataVisualization.leagueTag.getter()
{
  v1 = [*(v0 + 48) eventLeagueTag];

  return v1;
}

uint64_t SportsLineScoreDataVisualization.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsLineScoreDataVisualization.competitorTags.getter()
{
  v1 = [*(v0 + 48) eventCompetitorTags];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  v3 = sub_1D726267C();

  return v3;
}

uint64_t SportsLineScoreDataVisualization.umcCanonicalId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SportsLineScoreDataVisualization.config.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 16);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 24);
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 32);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5F8B638(v2, v3, v4);
}

uint64_t sub_1D5F8B638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1D5F8B6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1D72585BC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

char *SportsLineScoreDataVisualization.__allocating_init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v12 = swift_allocObject();
  v24 = *a7;
  v22 = *a6;
  v23 = a7[1];
  v13 = a7[2];
  v14 = a7[3];
  v15 = a7[4];
  v16 = a7[5];
  *(v12 + 4) = a1;
  *(v12 + 5) = a2;
  *(v12 + 6) = a3;
  v17 = OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl;
  v27 = sub_1D72585BC();
  v28 = *(v27 - 8);
  (*(v28 + 16))(&v12[v17], a4, v27);
  *&v12[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources] = a5;
  *&v12[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster] = v22;
  v18 = &v12[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config];
  *v18 = v24;
  v18[1] = v23;
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = v15;
  v18[5] = v16;

  swift_unknownObjectRetain();
  sub_1D5F8B638(v24, v23, v13);
  v30 = sub_1D72583DC();
  v31 = v19;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](a1, a2);

  v20 = v31;
  *(v12 + 2) = v30;
  *(v12 + 3) = v20;
  v30 = v24;
  v31 = v23;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  sub_1D692133C(a4, &v30, 0xD00000000000001ALL, 0x80000001D73C47E0, &v12[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl]);
  swift_unknownObjectRelease();
  (*(v28 + 8))(a4, v27);
  sub_1D5F8BBC8(v24, v23, v13, v14, v15, v16);
  return v12;
}

void *SportsLineScoreDataVisualization.init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = v7;
  v44 = a5;
  v45 = a1;
  v50 = a4;
  v51 = a3;
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  v46 = v13;
  v47 = v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v48 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a6;
  v19 = *a7;
  v20 = a7[1];
  v21 = a7[2];
  v22 = a7[3];
  v23 = a7[5];
  v49 = a7[4];
  v8[4] = a1;
  v8[5] = a2;
  v24 = v50;
  v8[6] = v51;
  (*(v25 + 16))(v8 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl, v24, v16);
  *(v8 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources) = v44;
  *(v8 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster) = v18;
  v26 = (v8 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
  *v26 = v19;
  v26[1] = v20;
  v26[2] = v21;
  v26[3] = v22;
  v43 = v22;
  v26[4] = v49;
  v26[5] = v23;

  swift_unknownObjectRetain();
  v27 = v23;
  sub_1D5F8B638(v19, v20, v21);
  v52 = sub_1D72583DC();
  v53 = v28;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v45, a2);

  v29 = v53;
  v8[2] = v52;
  v8[3] = v29;
  v30 = v19;
  v52 = v19;
  v53 = v20;
  v31 = v20;
  v32 = v21;
  v33 = v43;
  v54 = v21;
  v55 = v43;
  v35 = v49;
  v34 = v50;
  v56 = v49;
  v57 = v27;
  v36 = v27;
  v37 = v48;
  sub_1D692133C(v50, &v52, 0xD00000000000001ALL, 0x80000001D73C47E0, v48);
  swift_unknownObjectRelease();
  v38 = v47;
  v39 = v34;
  v40 = v46;
  (*(v47 + 8))(v39, v46);
  sub_1D5F8BBC8(v30, v31, v32, v33, v35, v36);
  (*(v38 + 32))(v8 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl, v37, v40);
  return v8;
}

void sub_1D5F8BBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

void *SportsLineScoreDataVisualization.with(config:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D72585BC();
  v39 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  v9 = a1[1];
  v40 = *a1;
  v10 = a1[3];
  v34 = a1[2];
  v35 = v9;
  v11 = a1[5];
  v32 = a1[4];
  v33 = v10;
  v31 = v11;
  v12 = *(v1 + 32);
  v14 = *(v2 + 40);
  v36 = *(v2 + 48);
  v13 = v36;
  v37 = v12;
  v15 = *(v39 + 16);
  v38 = v4;
  v15(v8, v2 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl, v4, v6);
  v16 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources);
  v17 = *(v2 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster);
  v18 = swift_allocObject();
  v18[4] = v12;
  v18[5] = v14;
  v18[6] = v13;
  v19 = v30;
  (v15)(v18 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl, v30, v4);
  *(v18 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources) = v16;
  *(v18 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster) = v17;
  v20 = (v18 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
  v21 = v34;
  v22 = v35;
  *v20 = v40;
  v20[1] = v22;
  v24 = v32;
  v23 = v33;
  v20[2] = v21;
  v20[3] = v23;
  v25 = v31;
  v20[4] = v24;
  v20[5] = v25;

  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  v41 = sub_1D72583DC();
  v42 = v26;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v37, v14);
  v27 = v42;
  v18[2] = v41;
  v18[3] = v27;
  v41 = v40;
  v42 = v22;
  v43 = v21;
  v44 = v23;
  v45 = v24;
  v46 = v25;
  sub_1D692133C(v19, &v41, 0xD00000000000001ALL, 0x80000001D73C47E0, v18 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl);
  (*(v39 + 8))(v19, v38);

  swift_unknownObjectRelease();

  return v18;
}

uint64_t SportsLineScoreDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsLineScoreDataVisualization.init(from:)(a1);
  return v2;
}

void *SportsLineScoreDataVisualization.init(from:)(void *a1)
{
  v47 = a1;
  v2 = v1;
  v48 = *v2;
  v4 = sub_1D72585BC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v38 - v10;
  sub_1D5F8C77C(0);
  v13 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8D0BC(0, &qword_1EC881A58, MEMORY[0x1E69E6F48]);
  v18 = *(v17 - 8);
  v43 = v17;
  v44 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v38 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F8C7E4();
  v45 = v21;
  v22 = v46;
  v23 = v2;
  sub_1D7264B0C();
  if (v22)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v13;
    v46 = v11;
    v39 = v7;
    LOBYTE(v49) = 0;
    v26 = v42;
    v25 = v43;
    v23[4] = sub_1D72642BC();
    v23[5] = v27;
    LOBYTE(v49) = 1;
    sub_1D5F8C838(&unk_1EDF176A0, sub_1D5F8C77C, MEMORY[0x1E69D6C18]);
    sub_1D726431C();
    sub_1D725BF7C();
    (v26[1])(v16, v24);
    v23[6] = v49;
    LOBYTE(v49) = 2;
    v28 = sub_1D5F8C838(&unk_1EDF45B50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v29 = v46;
    v30 = v41;
    sub_1D726431C();
    v42 = v23;
    v38[1] = v28;
    v31 = *(v40 + 32);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl, v29, v30);
    sub_1D5F8E7DC(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    v52 = 3;
    sub_1D5F8D650(&unk_1EDF04AB0, &unk_1EDF065B0, &protocol conformance descriptor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E6330]);
    v32 = v45;
    v46 = 0;
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources) = v49;
    v52 = 4;
    sub_1D5F8C880();
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster) = v49;
    v52 = 5;
    sub_1D5F8C8D4();
    sub_1D726427C();
    v33 = (v23 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
    v34 = v50;
    *v33 = v49;
    v33[1] = v34;
    v33[2] = v51;
    LOBYTE(v49) = 6;
    v23[2] = sub_1D72642BC();
    v23[3] = v35;
    LOBYTE(v49) = 7;
    v36 = v39;
    sub_1D726431C();
    (*(v44 + 8))(v32, v25);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl, v36, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return v23;
}

void sub_1D5F8C77C(uint64_t a1)
{
  if (!qword_1EDF17698)
  {
    sub_1D5B5534C(255, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
    v1 = sub_1D725BFAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF17698);
    }
  }
}

unint64_t sub_1D5F8C7E4()
{
  result = qword_1EC881A60;
  if (!qword_1EC881A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A60);
  }

  return result;
}

uint64_t sub_1D5F8C838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D5F8C880()
{
  result = qword_1EC881A70;
  if (!qword_1EC881A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A70);
  }

  return result;
}

unint64_t sub_1D5F8C8D4()
{
  result = qword_1EDF0A160;
  if (!qword_1EDF0A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A160);
  }

  return result;
}

uint64_t SportsLineScoreDataVisualization.encode(to:)(void *a1)
{
  v2 = sub_1D725ABEC();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8D088(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8D0BC(0, &qword_1EC881A78, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v36 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5F8C7E4();
  v16 = v11;
  v17 = v39;
  sub_1D7264B5C();
  LOBYTE(v40) = 0;
  v18 = v38;
  sub_1D72643FC();
  if (v18)
  {
    return (*(v12 + 8))(v15, v16);
  }

  v20 = v37;
  v36 = v15;
  v38 = v16;
  v21 = v12;
  v40 = *(v17 + 48);
  v22 = qword_1EDF17E30;
  swift_unknownObjectRetain();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v2, qword_1EDF17E38);
  v24 = (*(v20 + 16))(v5, v23, v2);
  MEMORY[0x1EEE9AC00](v24, v25);
  *(&v36 - 2) = sub_1D5B5534C(0, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
  swift_getKeyPath();
  sub_1D725BF6C();
  sub_1D5F8C77C(0);
  (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
  LOBYTE(v40) = 1;
  sub_1D5F8C838(&unk_1EDF176B0, sub_1D5F8C77C, MEMORY[0x1E69D6C10]);
  sub_1D72643BC();
  sub_1D5F8E850(v9, sub_1D5F8D088);
  LOBYTE(v40) = 2;
  v27 = sub_1D72585BC();
  sub_1D5F8C838(&unk_1EDF45B70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  v28 = v39;
  sub_1D726443C();
  v40 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources);
  v46 = 3;
  sub_1D5F8E7DC(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
  sub_1D5F8D650(&qword_1EDF04AC0, &qword_1EDF065C0, &protocol conformance descriptor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  v37 = v27;
  v40 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_roster);
  v46 = 4;
  sub_1D5B49CBC(0, &qword_1EC881A80, &type metadata for SportsEventRoster);
  sub_1D5F8D714(&qword_1EC881A88, &qword_1EC881A80, &type metadata for SportsEventRoster, sub_1D5F8D78C);

  sub_1D726443C();

  v29 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8);
  v30 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 16);
  v31 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 24);
  v32 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 32);
  v33 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 40);
  v40 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config);
  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v45 = v33;
  v46 = 5;
  sub_1D5F8B638(v40, v29, v30);
  sub_1D5B49CBC(0, &qword_1EC899360, &type metadata for SportsDataVisualizationConfig);
  v34 = v36;
  v35 = v38;
  sub_1D5F8D714(&qword_1EC881AA0, &qword_1EC899360, &type metadata for SportsDataVisualizationConfig, sub_1D5F8D7E0);
  sub_1D726443C();
  sub_1D5F8BBC8(v40, v41, v42, v43, v44, v45);
  LOBYTE(v40) = 6;
  sub_1D72643FC();
  LOBYTE(v40) = 7;
  sub_1D726443C();
  return (*(v21 + 8))(v34, v35);
}

void sub_1D5F8D0BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5F8C7E4();
    v7 = a3(a1, &type metadata for SportsLineScoreDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D5F8D148@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5F8E790(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D5F8D178(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064496C616369;
  v4 = 0x6E6F6E6143636D75;
  v5 = 0xEA00000000007265;
  v6 = 0x696669746E656469;
  if (v2 != 6)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000001D73B7A30;
  }

  v7 = 0x726574736F72;
  if (v2 != 4)
  {
    v7 = 0x6769666E6F63;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6C72556465626D65;
  if (v2 != 2)
  {
    v9 = 0x53617461446C7275;
    v8 = 0xEE0073656372756FLL;
  }

  if (*v1)
  {
    v4 = 0x746E657665;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 3u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1D5F8D28C()
{
  v1 = *v0;
  v2 = 0x6E6F6E6143636D75;
  v3 = 0x696669746E656469;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x726574736F72;
  if (v1 != 4)
  {
    v4 = 0x6769666E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C72556465626D65;
  if (v1 != 2)
  {
    v5 = 0x53617461446C7275;
  }

  if (*v0)
  {
    v2 = 0x746E657665;
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

unint64_t sub_1D5F8D39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5F8E790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5F8D3C4(uint64_t a1)
{
  v2 = sub_1D5F8C7E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5F8D400(uint64_t a1)
{
  v2 = sub_1D5F8C7E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

char *SportsLineScoreDataVisualization.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl;
  v2 = sub_1D72585BC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1D5F8BBC8(*(v0 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 16), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 24), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 32), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 40));
  v3(v0 + OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_configuredEmbedUrl, v2);
  return v0;
}

uint64_t SportsLineScoreDataVisualization.__deallocating_deinit()
{
  SportsLineScoreDataVisualization.deinit();

  return swift_deallocClassInstance();
}

void *sub_1D5F8D578@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsLineScoreDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static SportsLineScoreDataVisualization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D5F8D624(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D5F8D650(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5F8E7DC(255, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    sub_1D5F8C838(a2, type metadata accessor for WebEmbedDataVisualizationURLDataSource, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D5F8D714(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49CBC(255, a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D5F8D78C()
{
  result = qword_1EC881A90;
  if (!qword_1EC881A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881A90);
  }

  return result;
}

unint64_t sub_1D5F8D7E0()
{
  result = qword_1EDF0A170;
  if (!qword_1EDF0A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A170);
  }

  return result;
}

uint64_t type metadata accessor for SportsLineScoreDataVisualization(uint64_t a1)
{
  result = qword_1EDF1E898;
  if (!qword_1EDF1E898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5F8D888(uint64_t a1)
{
  result = sub_1D72585BC();
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

unint64_t sub_1D5F8D9BC()
{
  result = qword_1EC881AB0;
  if (!qword_1EC881AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AB0);
  }

  return result;
}

unint64_t sub_1D5F8DA14()
{
  result = qword_1EC881AB8;
  if (!qword_1EC881AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AB8);
  }

  return result;
}

unint64_t sub_1D5F8DA6C()
{
  result = qword_1EC881AC0;
  if (!qword_1EC881AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AC0);
  }

  return result;
}

void *sub_1D5F8DAC0(__int128 *a1, char *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v116 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = a1[7];
  v171 = a1[6];
  v172 = v17;
  v173 = a1[8];
  v174 = *(a1 + 18);
  v18 = a1[3];
  v167 = a1[2];
  v168 = v18;
  v19 = a1[5];
  v169 = a1[4];
  v170 = v19;
  v20 = a1[1];
  v165 = *a1;
  v166 = v20;
  if (a2)
  {
    v135 = v16;
    v136 = v15;
    v21 = MEMORY[0x1E69E6F90];
    v146 = &v108 - v14;
    sub_1D5F8E7DC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v108 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D5F8E7DC(0, &qword_1EC880490, sub_1D5EA74B8, v21);
    v23 = v22;
    sub_1D5EA74B8(0);
    v138 = v24;
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v133 = *(v25 + 80);
    v134 = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7274590;
    v109 = v28;
    v132 = v27;
    v29 = (v28 + v27);
    v31 = *(a2 + 4);
    v30 = *(a2 + 5);
    v32 = type metadata accessor for FormatInspectionItem(0);
    v112 = a2;
    v33 = v32;
    v34 = &v29[*(v32 + 24)];
    *v34 = v31;
    *(v34 + 1) = v30;
    v35 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = *(v35 - 8);
    v130 = *(v36 + 56);
    v131 = v35;
    v129 = v36 + 56;
    v130(v34, 0, 1, v35);
    *v29 = 0xD000000000000010;
    *(v29 + 1) = 0x80000001D73C4840;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v37 = &v29[*(v33 + 28)];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = -1;
    v38 = *(v33 - 8);
    v39 = *(v38 + 56);
    v40 = v38 + 56;
    (v39)(v29, 0, 1, v33);
    v41 = v146;
    v127 = *(v5 + 16);
    v128 = v5 + 16;
    v127(v146, &v112[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_embedUrl], v4);
    v144 = v5;
    v42 = *(v5 + 56);
    v137 = v4;
    v43 = v4;
    v44 = v112;
    v125 = v42;
    v126 = v5 + 56;
    v42(v41, 0, 1, v43);

    sub_1D711FCD0(0x5255206465626D45, 0xE90000000000004CLL, v41, &v29[v26]);
    v111 = v29;
    v139 = v26;
    v145 = v40;
    v146 = v39;
    (v39)(&v29[v26], 0, 1, v33);
    v45 = *&v44[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_urlDataSources];
    if (v45 >> 62)
    {
      goto LABEL_23;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      while (1)
      {
        v147 = MEMORY[0x1E69E7CC0];
        result = sub_1D6997EC0(0, v46 & ~(v46 >> 63), 0);
        if (v46 < 0)
        {
          break;
        }

        v48 = 0;
        v49 = v147;
        v124 = v45 & 0xC000000000000001;
        v50 = 2 * v139;
        v119 = 3 * v139;
        v118 = (v144 + 48);
        v115 = (v144 + 32);
        v113 = v45 & 0xFFFFFFFFFFFFFF8;
        v114 = (v144 + 8);
        v117 = xmmword_1D7279970;
        v123 = xmmword_1D7287CC0;
        v121 = v46;
        v122 = v45;
        v120 = 2 * v139;
        while (!__OFADD__(v48, 1))
        {
          v143 = v49;
          v144 = v48;
          v142 = v48 + 1;
          if (v124)
          {
            v51 = MEMORY[0x1DA6FB460]();
          }

          else
          {
            if (v48 >= *(v113 + 16))
            {
              goto LABEL_22;
            }

            v51 = *(v45 + 8 * v48 + 32);
          }

          v52 = v132;
          v53 = swift_allocObject();
          *(v53 + 16) = v117;
          v140 = v53;
          v54 = (v53 + v52);
          v56 = v51[2];
          v55 = v51[3];
          sub_1D5F8E840(v56, v55);
          v57 = sub_1D71221AC(0x20746E65746E6F43, 0xEC00000065707954, v56, v55, v54);
          v58 = v33;
          v59 = v33;
          v60 = v146;
          (v146)(v54, 0, 1, v58, v57);
          v61 = v51[4];
          v62 = v51[5];

          v63 = v139;
          v64 = sub_1D711F844(7955787, 0xE300000000000000, v61, v62, &v54[v139]);
          v60(&v54[v63], 0, 1, v59, v64);
          v65 = &v54[v50];
          v141 = v51;
          v66 = v51 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
          v67 = v135;
          v68 = v137;
          v44 = v127;
          v127(v135, v66, v137);
          v125(v67, 0, 1, v68);
          v69 = v136;
          sub_1D5EB84C0(v67, v136);
          if ((*v118)(v69, 1, v68) == 1)
          {
            sub_1D5F8E850(v67, sub_1D5B4D3E0);
            v130(&v65[*(v59 + 24)], 1, 1, v131);
            *v65 = v123;
            *(v65 + 2) = 0;
            *(v65 + 3) = 0;
            v70 = &v65[*(v59 + 28)];
            *v70 = 0;
            *(v70 + 1) = 0;
            v70[16] = -1;
          }

          else
          {
            v71 = v116;
            (v44)(v116, v69, v68);
            sub_1D5F8E850(v67, sub_1D5B4D3E0);
            v72 = *(v59 + 24);
            (*v115)(&v65[v72], v71, v68);
            v73 = v131;
            swift_storeEnumTagMultiPayload();
            v130(&v65[v72], 0, 1, v73);
            *v65 = v123;
            *(v65 + 2) = 0;
            *(v65 + 3) = 0;
            v74 = &v65[*(v59 + 28)];
            *v74 = 0;
            *(v74 + 1) = 0;
            v74[16] = -1;
            (*v114)(v69, v68);
          }

          v33 = v59;
          (v146)(v65, 0, 1, v59);
          sub_1D6795150(0, 0xE000000000000000, 0, 0, v140, v163);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v154 + 1) = &type metadata for FormatInspectionGroup;
          *&v155 = &off_1F518B2C0;
          v75 = swift_allocObject();
          *&v153 = v75;

          *(v75 + 48) = v164;
          v76 = v163[1];
          *(v75 + 16) = v163[0];
          *(v75 + 32) = v76;
          v147 = v143;
          v78 = *(v143 + 16);
          v77 = *(v143 + 24);
          v45 = v122;
          if (v78 >= v77 >> 1)
          {
            sub_1D6997EC0((v77 > 1), v78 + 1, 1);
          }

          v79 = *(&v154 + 1);
          v80 = v155;
          v81 = __swift_mutable_project_boxed_opaque_existential_1(&v153, *(&v154 + 1));
          v82 = MEMORY[0x1EEE9AC00](v81, v81);
          v84 = &v108 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v85 + 16))(v84, v82);
          sub_1D5BD0BE4(v78, v84, &v147, v79, v80);
          __swift_destroy_boxed_opaque_existential_1(&v153);
          v49 = v147;
          v48 = v144 + 1;
          v50 = v120;
          if (v142 == v121)
          {
            v44 = v112;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v46 = sub_1D7263BFC();
        if (!v46)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      v50 = 2 * v139;
      v49 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v87 = sub_1D5F62BFC(v49);

      v88 = sub_1D7073500(v87);

      v89 = v111;
      sub_1D711AD20(0x756F532061746144, 0xEC00000073656372, v88, 0, 0, &v111[v50]);
      (v146)(&v89[v50], 0, 1, v33);
      v90 = &v44[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config];
      v91 = *&v44[OBJC_IVAR____TtC8NewsFeed32SportsLineScoreDataVisualization_config + 8];
      if (v91)
      {
        v92 = *v90;
      }

      else
      {
        v92 = 0;
      }

      v93 = 3 * v139;
      sub_1D5F8E7DC(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      v94 = swift_initStackObject();
      *(v94 + 16) = v108;
      v159 = v171;
      v160 = v172;
      v161 = v173;
      v162 = v174;
      v155 = v167;
      v156 = v168;
      v157 = v169;
      v158 = v170;
      v153 = v165;
      v154 = v166;
      v95 = v90[1];
      v96 = v90[2];
      v97 = v90[3];
      v98 = v90[4];
      v99 = v90[5];
      v147 = *v90;
      v148 = v95;
      v149 = v96;
      v150 = v97;
      v151 = v98;
      v152 = v99;
      sub_1D5F8B638(v147, v95, v96);
      v100 = sub_1D6924F88(&v153, &v147);
      sub_1D5F8BBC8(v147, v148, v149, v150, v151, v152);
      *(v94 + 56) = &type metadata for FormatInspection;
      *(v94 + 64) = &off_1F51E3FD0;
      *(v94 + 32) = v100;
      v101 = sub_1D5F62BFC(v94);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v94 + 32));
      v102 = sub_1D7073500(v101);

      v103 = v111;
      sub_1D711AD20(0x6769666E6F43, 0xE600000000000000, v102, v92, v91, &v111[v93]);
      (v146)(&v103[v93], 0, 1, v33);
      sub_1D6795150(0x6F635320656E694CLL, 0xEA00000000006572, 0, 0, v109, &v153);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v104 = inited;
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(v104 + 64) = &off_1F518B2C0;
      v105 = swift_allocObject();
      *(v104 + 32) = v105;
      *(v105 + 48) = v155;
      v106 = v154;
      *(v105 + 16) = v153;
      *(v105 + 32) = v106;
      v107 = sub_1D7073500(v104);
      swift_setDeallocating();
      sub_1D5F8E850(v104 + 32, sub_1D5E4F358);

      return v107;
    }
  }

  else
  {
    v86 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v86);
  }

  return result;
}

unint64_t sub_1D5F8E790(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

void sub_1D5F8E7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D5F8E840(uint64_t a1, unint64_t a2)
{
  if (a2 != 4)
  {
    return sub_1D5C30618(a1, a2);
  }

  return a1;
}

uint64_t sub_1D5F8E850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatLayoutViewRouterError.hashValue.getter()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  return sub_1D7264A5C();
}

unint64_t sub_1D5F8E928()
{
  result = qword_1EC881AC8;
  if (!qword_1EC881AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AC8);
  }

  return result;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t FormatIssueCoverNodeLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double FormatIssueCoverNodeLayoutAttributes.resizing.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 96);

  return result;
}

double FormatIssueCoverNodeLayoutAttributes.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5EB1500(v2);
}

void FormatIssueCoverNodeLayoutAttributes.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

__n128 FormatIssueCoverNodeLayoutAttributes.issueCoverViewLayoutAttributes.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v2;
  result = *(v1 + 184);
  v4 = *(v1 + 200);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D5F8EABC()
{
  v1 = *(v0 + 144);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v2 = *(v1 + 184);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v10 = MEMORY[0x1E69E7CC0];

    sub_1D6998504(0, v3, 0);
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v2 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1D6998504((v8 > 1), v5 + 1, 1);
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + v5 + 32) = v7;
      ++v6;
      ++v5;
      --v3;
    }

    while (v3);
  }

  return v4;
}