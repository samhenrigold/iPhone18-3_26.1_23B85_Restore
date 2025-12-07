uint64_t sub_1D5D69930(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5D69974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  return sub_1D5C75A4C(v3, v2, v4);
}

uint64_t sub_1D5D6999C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5D699EC(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_1D5D6A5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedItem(0);
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

uint64_t sub_1D5D6A68C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedItem(0);
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

uint64_t sub_1D5D6A744()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D6A77C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D6A7BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6A80C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D6A844(uint64_t a1, uint64_t a2)
{
  sub_1D5B542A8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 7)
  {
    return v5 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5D6A8CC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 6);
  }

  else
  {
    v5 = 0;
  }

  sub_1D5B542A8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D5D6A974()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6A9B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6A9F0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6AA58()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6AAA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D6AAD8()
{

  sub_1D5E443C8(*(v0 + 32));

  return swift_deallocObject();
}

BOOL sub_1D5D6AB24(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_1D5D6AB54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D6AB8C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6ABEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6AC48()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6AC80()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6ACC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6AD08()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6AD40()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6ADB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed21VideoLogoBackdropView_gradientDescriptor;
  swift_beginAccess();
  return sub_1D5E48A38(v3 + v4, a2);
}

uint64_t sub_1D5D6AE24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1D5D6AE74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_1D5D6AEC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1D5D6AF14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_1D5D6AF64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1D5D6AFB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5D6B03C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6B0C4()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = type metadata accessor for FormatContent(0);
  v41 = *(*(v6 - 8) + 80);
  v7 = (v4 + v5 + v41) & ~v41;
  v8 = *(*(v6 - 8) + 64);
  v38 = type metadata accessor for FormatContentPool(0);
  v39 = *(*(v38 - 8) + 80);
  v9 = (v7 + v8 + v39) & ~v39;
  v10 = *(*(v38 - 8) + 64);
  v40 = type metadata accessor for FormatServiceOptions(0);
  v11 = *(*(v40 - 1) + 80);
  v12 = v9 + v10 + v11;
  (*(v3 + 8))(v1 + v4, v2);
  v13 = v1 + v7;

  v14 = *(v6 + 20);
  v15 = sub_1D725891C();
  v35 = *(*(v15 - 8) + 8);
  v36 = v15;
  v35(v13 + v14);

  v16 = *(v6 + 44);
  v17 = sub_1D72608BC();
  v18 = *(v17 - 8);
  v37 = *(v18 + 48);
  if (!v37(v13 + v16, 1, v17))
  {
    (*(v18 + 8))(v13 + v16, v17);
  }

  v19 = v12 & ~v11;

  v20 = *(v38 + 108);
  if (!v37(v1 + v9 + v20, 1, v17))
  {
    (*(v18 + 8))(v1 + v9 + v20, v17);
  }

  v21 = (v1 + v19);
  if (*(v1 + v19 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  v22 = (v21 + v40[10]);
  v23 = type metadata accessor for FormatTransformKnobs(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {

    v24 = type metadata accessor for FeedContext(0);
    v25 = v22 + v24[5];
    v26 = type metadata accessor for BundleSession(0);
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      (v35)(&v25[*(v26 + 20)], v36);
    }

    if (*(v22 + v24[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1((v22 + *(v23 + 20)));
  }

  v27 = type metadata accessor for FormatTransformData(0);

  v28 = v22 + *(v27 + 44);
  v29 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    v30 = &v28[*(v29 + 24)];
    v31 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
    if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
    {

      v32 = *(v31 + 24);
      v33 = sub_1D72593CC();
      (*(*(v33 - 8) + 8))(&v30[v32], v33);
    }

    if (*&v28[*(v29 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6B820@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v2 = *(*a1 + 24);
  *a2 = v3;
  a2[1] = v2;
}

void sub_1D5D6B844()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1D5CEFE04(0, &unk_1EC8800D0, sub_1D5B81B04, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1D5D6B8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatFile(0);
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

uint64_t sub_1D5D6B96C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatFile(0);
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

uint64_t sub_1D5D6BA28()
{
  v1 = v0;
  v2 = (type metadata accessor for FormatContentPool(0) - 8);
  v3 = (*(*v2 + 80) + 24) & ~*(*v2 + 80);
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for FormatServiceOptions(0);
  v37 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v37) & ~v37;
  v7 = *(*(v5 - 1) + 64);
  v8 = type metadata accessor for FormatContent(0);
  v9 = *(*(v8 - 8) + 80);

  v10 = v2[29];
  v38 = sub_1D72608BC();
  v35 = *(v38 - 8);
  v36 = *(v35 + 48);
  if (!v36(v1 + v3 + v10, 1))
  {
    (*(v35 + 8))(v1 + v3 + v10, v38);
  }

  v11 = v7 + v9;
  v12 = v1 + v6;
  if (*(v1 + v6 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + v6));
  }

  v13 = v6 + v11;
  v14 = (v12 + v5[10]);
  v15 = type metadata accessor for FormatTransformKnobs(0);
  v39 = v9;
  if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
  {
    v33 = v1;

    v16 = type metadata accessor for FeedContext(0);
    v17 = v14 + v16[5];
    v18 = type metadata accessor for BundleSession(0);
    if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
    {
      v32 = *(v18 + 20);
      v19 = sub_1D725891C();
      (*(*(v19 - 8) + 8))(&v17[v32], v19);
    }

    if (*(v14 + v16[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1((v14 + *(v15 + 20)));
    v1 = v33;
    v9 = v39;
  }

  v20 = v13 & ~v9;
  v21 = type metadata accessor for FormatTransformData(0);

  v22 = v14 + *(v21 + 44);
  v23 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    v24 = v1;
    v25 = &v22[*(v23 + 24)];
    v26 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {

      v34 = *(v26 + 24);
      v27 = sub_1D72593CC();
      (*(*(v27 - 8) + 8))(&v25[v34], v27);
    }

    v1 = v24;
    if (*&v22[*(v23 + 44) + 32] != 1)
    {
    }
  }

  v28 = *(v8 + 20);
  v29 = sub_1D725891C();
  (*(*(v29 - 8) + 8))(v1 + v20 + v28, v29);

  v30 = *(v8 + 44);
  if (!(v36)(v1 + v20 + v30, 1, v38))
  {
    (*(v35 + 8))(v1 + v20 + v30, v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6C154()
{
  v1 = sub_1D72607EC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1D72608EC();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1D5D6C2A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6C2D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D6C310()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D6C364()
{
  sub_1D5E9EB74(0);
  v76 = v1;
  v78 = *(*(v1 - 8) + 80);
  v2 = (v78 + 16) & ~v78;
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 80);
  v6 = *(*(v4 - 8) + 64);
  v80 = type metadata accessor for FormatServiceOptions(0);
  v7 = *(*(v80 - 8) + 80);
  v75 = *(*(v80 - 8) + 64);
  sub_1D5C2AB28(0);
  v83 = *(*(v8 - 8) + 80);
  v82 = v0;
  v9 = v0 + v2;

  if (*(v9 + 168) >= 3uLL)
  {
  }

  v10 = (v3 + v5 + 8) & ~v5;
  v11 = v6 + v7;
  v79 = type metadata accessor for FormatPackage(0);
  v12 = v9 + v79[23];

  v13 = type metadata accessor for FormatCompilerOptions(0);
  v14 = v12 + *(v13 + 24);
  if (*(v14 + 8) != 1)
  {
  }

  v15 = v10 + v11;
  v66 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  v16 = *(v66 + 20);
  v17 = sub_1D725B76C();
  v81 = *(v17 - 8);
  v18 = *(v81 + 48);
  if (!v18(v14 + v16, 1, v17))
  {
    (*(v81 + 8))(v14 + v16, v17);
  }

  v19 = v15 & ~v7;
  v20 = *(v13 + 28);
  v21 = v18;
  if (!v18(v12 + v20, 1, v17))
  {
    (*(v81 + 8))(v12 + v20, v17);
  }

  v71 = v19;
  v22 = v75 + v19;
  v69 = v13;

  v23 = v79[24];
  v24 = sub_1D725BD1C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 8);
  v26(v9 + v23, v24);
  v27 = v79[25];
  v70 = v17;
  v67 = v21;
  if (!v21(v9 + v27, 1, v17))
  {
    (*(v81 + 8))(v9 + v27, v17);
  }

  v28 = v22 + 7;

  v29 = v9 + *(v76 + 36);

  v30 = type metadata accessor for FormatMetadata(0);
  v26(v29 + v30[5], v24);
  v26(v29 + v30[6], v24);
  v31 = v30[7];
  v68 = *(v25 + 48);
  v32 = v80;
  if (!v68(v29 + v31, 1, v24))
  {
    v26(v29 + v31, v24);
  }

  v77 = v26;
  v33 = v28 & 0xFFFFFFFFFFFFFFF8;

  v34 = sub_1D72585BC();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v82 + v10, 1, v34))
  {
    (*(v35 + 8))(v82 + v10, v34);
  }

  v73 = v35;
  v74 = v34;
  v36 = v82 + v71;
  if (*(v82 + v71 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v82 + v71));
  }

  v37 = (v36 + *(v80 + 40));
  v38 = type metadata accessor for FormatTransformKnobs(0);
  if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
  {

    v39 = type metadata accessor for FeedContext(0);
    v40 = v37 + v39[5];
    v41 = type metadata accessor for BundleSession(0);
    if (!(*(*(v41 - 8) + 48))(v40, 1, v41))
    {
      v72 = *(v41 + 20);
      v42 = sub_1D725891C();
      (*(*(v42 - 8) + 8))(&v40[v72], v42);
    }

    if (*(v37 + v39[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1((v37 + *(v38 + 20)));
    v32 = v80;
  }

  v43 = (v33 + v83 + 8) & ~v83;
  v44 = type metadata accessor for FormatTransformData(0);

  v45 = v37 + *(v44 + 44);
  v46 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  if (!(*(*(v46 - 8) + 48))(v45, 1, v46))
  {
    v47 = &v45[*(v46 + 24)];
    v48 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
    if (!(*(*(v48 - 8) + 48))(v47, 1, v48))
    {

      v49 = *(v48 + 24);
      v50 = sub_1D72593CC();
      v51 = &v47[v49];
      v43 = (v33 + v83 + 8) & ~v83;
      (*(*(v50 - 8) + 8))(v51, v50);
    }

    if (*&v45[*(v46 + 44) + 32] != 1)
    {
    }
  }

  v52 = v82 + v43;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    if (*(v52 + 168) >= 3uLL)
    {
    }

    v58 = v52 + v79[23];

    v59 = v58 + *(v69 + 24);
    if (*(v59 + 8) != 1)
    {
    }

    v60 = *(v66 + 20);
    if (!v67(v59 + v60, 1, v70))
    {
      (*(v81 + 8))(v59 + v60, v70);
    }

    v61 = *(v69 + 28);
    if (!v67(v58 + v61, 1, v70))
    {
      (*(v81 + 8))(v58 + v61, v70);
    }

    v54 = v77;
    v77(v52 + v79[24], v24);
    v62 = v79[25];
    if (!v67(v52 + v62, 1, v70))
    {
      (*(v81 + 8))(v52 + v62, v70);
    }

    sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
    v64 = v52 + *(v63 + 48);

    v77(v64 + v30[5], v24);
    v77(v64 + v30[6], v24);
    v57 = v64 + v30[7];
    if (v68(v57, 1, v24))
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v54 = v77;
  if (EnumCaseMultiPayload)
  {
    goto LABEL_45;
  }

  (*(v73 + 8))(v82 + v43, v74);
  sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
  v56 = v52 + *(v55 + 48);

  v77(v56 + v30[5], v24);
  v77(v56 + v30[6], v24);
  v57 = v56 + v30[7];
  if (!v68(v57, 1, v24))
  {
LABEL_43:
    v54(v57, v24);
  }

LABEL_44:

LABEL_45:

  return swift_deallocObject();
}

uint64_t sub_1D5D6D05C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6D094()
{
  v1 = v0;
  sub_1D5C2AB28(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(*(v2 - 8) + 64);
  sub_1D5CEFE04(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v66 = *(*(v6 - 8) + 80);
  v7 = (v5 + v66) & ~v66;
  v8 = *(*(v6 - 8) + 64);
  v9 = type metadata accessor for FormatServiceOptions(0);
  v10 = *(*(v9 - 1) + 80);
  v11 = v7 + v8 + v10;

  v12 = v1 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v67 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v64 = v7 + v8 + v10;
    v65 = v7;
    v62 = v10;

    if (*(v12 + 168) >= 3uLL)
    {
    }

    v63 = v1;
    v23 = type metadata accessor for FormatPackage(0);
    v24 = v12 + *(v23 + 92);

    v25 = type metadata accessor for FormatCompilerOptions(0);
    v26 = v24 + *(v25 + 24);
    if (*(v26 + 8) != 1)
    {
    }

    v27 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
    v28 = sub_1D725B76C();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (!v30(v26 + v27, 1, v28))
    {
      (*(v29 + 8))(v26 + v27, v28);
    }

    v31 = *(v25 + 28);
    if (!v30(v24 + v31, 1, v28))
    {
      (*(v29 + 8))(v24 + v31, v28);
    }

    v61 = v29;

    v32 = v23;
    v33 = *(v23 + 96);
    v34 = sub_1D725BD1C();
    v35 = *(v34 - 8);
    v36 = *(v35 + 8);
    v36(v12 + v33, v34);
    v37 = *(v32 + 100);
    if (!v30(v12 + v37, 1, v28))
    {
      (*(v61 + 8))(v12 + v37, v28);
    }

    sub_1D5E9D830(0, &unk_1EC88B470, type metadata accessor for FormatPackage, type metadata accessor for FormatMetadata);
    v39 = v12 + *(v38 + 48);

    v40 = type metadata accessor for FormatMetadata(0);
    v36(v39 + v40[5], v34);
    v36(v39 + v40[6], v34);
    v41 = v40[7];
    if (!(*(v35 + 48))(v39 + v41, 1, v34))
    {
      v36(v39 + v41, v34);
    }

    v10 = v62;
    v1 = v63;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_19;
    }

    v64 = v7 + v8 + v10;
    v65 = v7;
    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 8))(v1 + v4, v14);
    sub_1D5E9D830(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0], type metadata accessor for FormatMetadata);
    v16 = v12 + *(v15 + 48);

    v17 = type metadata accessor for FormatMetadata(0);
    v18 = v17[5];
    v19 = sub_1D725BD1C();
    v20 = *(v19 - 8);
    v21 = *(v20 + 8);
    v21(v16 + v18, v19);
    v21(v16 + v17[6], v19);
    v22 = v17[7];
    if (!(*(v20 + 48))(v16 + v22, 1, v19))
    {
      v21(v16 + v22, v19);
    }
  }

  v11 = v64;

  v9 = v67;
  v7 = v65;
LABEL_19:
  v42 = v11 & ~v10;
  v43 = sub_1D72585BC();
  v44 = *(v43 - 8);
  if (!(*(v44 + 48))(v1 + v7, 1, v43))
  {
    (*(v44 + 8))(v1 + v7, v43);
  }

  v45 = v1 + v42;
  if (*(v1 + v42 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v1 + v42));
  }

  v46 = (v45 + v9[10]);
  v47 = type metadata accessor for FormatTransformKnobs(0);
  if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
  {

    v48 = type metadata accessor for FeedContext(0);
    v49 = v46 + v48[5];
    v50 = type metadata accessor for BundleSession(0);
    if (!(*(*(v50 - 8) + 48))(v49, 1, v50))
    {
      v51 = *(v50 + 20);
      v52 = sub_1D725891C();
      (*(*(v52 - 8) + 8))(&v49[v51], v52);
    }

    if (*(v46 + v48[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1((v46 + *(v47 + 20)));
    v9 = v67;
  }

  v53 = type metadata accessor for FormatTransformData(0);

  v54 = v46 + *(v53 + 44);
  v55 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  if (!(*(*(v55 - 8) + 48))(v54, 1, v55))
  {
    v56 = &v54[*(v55 + 24)];
    v57 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
    if (!(*(*(v57 - 8) + 48))(v56, 1, v57))
    {

      v58 = *(v57 + 24);
      v59 = sub_1D72593CC();
      (*(*(v59 - 8) + 8))(&v56[v58], v59);
    }

    v9 = v67;
    if (*&v54[*(v55 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6DAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D5C2AB28(0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_1D5D6DB60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1D5C2AB28(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_1D5D6DCB0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6DD5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6DE00(uint64_t a1, uint64_t a2)
{
  sub_1D5EA24BC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D5D6DE6C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  sub_1D5EA24BC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D5D6DEEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6DF24(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D6DFD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6E088@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D6E0D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5D6E128@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1D5D6E178@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

unint64_t sub_1D5D6E1C8@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;
  return sub_1D5C82CD8(v4);
}

uint64_t sub_1D5D6E218@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

void sub_1D5D6E268(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

void sub_1D5D6E2B0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

double sub_1D5D6E2F4@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

void sub_1D5D6E344(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

void sub_1D5D6E38C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

uint64_t sub_1D5D6E3D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1D5D6E420@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

uint64_t sub_1D5D6E470@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 152);
}

uint64_t sub_1D5D6E4C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 176);
}

uint64_t sub_1D5D6E510@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

uint64_t sub_1D5D6E564()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6E600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725FC7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1D725CE0C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5D6E6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D725FC7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1D725CE0C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D5D6E7EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D6E83C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_1D5D6E88C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6E8CC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6E94C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6E9DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6EA38()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6EAB0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6EB5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6EC10()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D6EC48()
{
  v1 = (type metadata accessor for FormatMicaData(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);

  v4 = v1[7];
  v5 = sub_1D725D4AC();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v0 + v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6EDA0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D6EDE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6EE90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6EF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D6EFBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D5D6F03C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D6F078(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6F124(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6F1D8()
{

  if (*(v0 + 96) != 1)
  {
  }

  if (*(v0 + 144) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6F250()
{

  swift_unknownObjectRelease();

  if (v0[13] != 1)
  {

    if (v0[17])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6F2C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D6F314()
{

  swift_unknownObjectRelease();

  if (v0[13] != 1)
  {

    if (v0[17])
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 14);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D6F384()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6F3CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedBannerAd(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D5D6F4F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedBannerAd(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5D6F61C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6F664(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6F710(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6F7B4()
{

  if (*(v0 + 104) != 1)
  {
  }

  if (*(v0 + 152) >= 0x12uLL)
  {
  }

  v1 = *(v0 + 168);
  if (v1)
  {

    if (*(v0 + 248) != 1)
    {
    }

    if (*(v0 + 296) >= 0x12uLL)
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 312));

  return swift_deallocObject();
}

uint64_t sub_1D5D6F8D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6F93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedItem.SharedState(0);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 2)
    {
      return v12 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D5D6F9F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedItem.SharedState(0);
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
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D5D6FAB4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D6FB60(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1D5D6FC10@<X0>(void *a1@<X8>)
{
  result = FormatContentSlotItemObject.Resolved.identifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5D6FCA8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5D6FCF8()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D6FD30()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D5D6FD80(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D6FE2C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D6FF00()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D6FF48()
{
  v1 = type metadata accessor for FormatVideoData(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_1D72585BC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = *(type metadata accessor for FormatVideoData.Assets(0) + 20);
  if (!(*(v4 + 48))(v2 + v6, 1, v3))
  {
    v5(v2 + v6, v3);
  }

  v7 = (v2 + *(v1 + 20));

  return swift_deallocObject();
}

uint64_t sub_1D5D700B8()
{
  v1 = type metadata accessor for FormatVideoData(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);
  v7 = *(type metadata accessor for FormatVideoData.Assets(0) + 20);
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = (v3 + *(v1 + 20));

  return swift_deallocObject();
}

uint64_t sub_1D5D70240()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D70278()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D5D702D0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D70308()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D70340()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D70384(char a1)
{
  if (a1)
  {
    return 0x726F7463656C6573;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D5D70428()
{
  v1 = (type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1D72577EC();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v2;

  v8 = v1[8];
  v9 = sub_1D72585BC();
  v10 = *(*(v9 - 8) + 8);
  v10(v7 + v8, v9);
  v10(v7 + v1[9], v9);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1D5D705D4()
{
  v1 = (type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v15 = sub_1D725891C();
  v4 = *(v15 - 8);
  v13 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v5 = *(v4 + 64);
  v14 = sub_1D72577EC();
  v6 = *(v14 - 8);
  v7 = (v13 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v0 + v2;

  v9 = v1[8];
  v10 = sub_1D72585BC();
  v11 = *(*(v10 - 8) + 8);
  v11(v8 + v9, v10);
  v11(v8 + v1[9], v10);

  (*(v4 + 8))(v0 + v13, v15);
  (*(v6 + 8))(v0 + v7, v14);

  return swift_deallocObject();
}

uint64_t sub_1D5D7080C()
{
  v1 = (type metadata accessor for WebEmbedDataVisualizationDataRequest(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 8);
  v5(v2 + v3, v4);
  v5(v2 + v1[9], v4);

  return swift_deallocObject();
}

uint64_t sub_1D5D7092C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D72585BC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1D72577EC();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D5D70A50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D72585BC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1D72577EC();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5D70B74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D70C20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D70CC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D70D74()
{
  v1 = type metadata accessor for DebugFormatCanvasBindRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  sub_1D5F2AF78(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 80);

  v9 = v0 + v3;
  if (*(v0 + v3) != 1)
  {
  }

  v10 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v8 + 8) & ~v8;
  v11 = *(v1 + 20);
  v12 = sub_1D7259F5C();
  (*(*(v12 - 8) + 8))(v9 + v11, v12);
  v13 = *(v1 + 24);
  v14 = sub_1D7259CFC();
  (*(*(v14 - 8) + 8))(v9 + v13, v14);

  (*(v7 + 8))(v0 + v10, v6);

  return swift_deallocObject();
}

uint64_t sub_1D5D70FD4()
{
  v1 = *(type metadata accessor for DebugFormatCanvasBindResult(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  v3 = v0 + v2;
  if (*(v0 + v2) != 1)
  {
  }

  v4 = type metadata accessor for DebugFormatCanvasBindRequest(0);
  v5 = *(v4 + 20);
  v6 = sub_1D7259F5C();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);
  v7 = *(v4 + 24);
  v8 = sub_1D7259CFC();
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1D5D71224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5D71290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedGroupItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

double sub_1D5D71360@<D0>(_OWORD *a1@<X8>)
{
  *&result = 13;
  *a1 = xmmword_1D7282A80;
  return result;
}

uint64_t sub_1D5D71380()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 32) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5D71424()
{
  v1 = type metadata accessor for FormatServiceOptions(0);
  v2 = (*(*(v1 - 1) + 80) + 96) & ~*(*(v1 - 1) + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v2));
  }

  v4 = (v3 + v1[10]);
  v5 = type metadata accessor for FormatTransformKnobs(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = type metadata accessor for FeedContext(0);
    v7 = v4 + v6[5];
    v8 = type metadata accessor for BundleSession(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v18 = *(v8 + 20);
      v9 = sub_1D725891C();
      (*(*(v9 - 8) + 8))(&v7[v18], v9);
    }

    if (*(v4 + v6[12] + 8) - 1 >= 3)
    {
    }

    __swift_destroy_boxed_opaque_existential_1((v4 + *(v5 + 20)));
  }

  v10 = type metadata accessor for FormatTransformData(0);

  v11 = v4 + *(v10 + 44);
  v12 = type metadata accessor for FeedPersonalizationClusteringRules(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = &v11[*(v12 + 24)];
    v14 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 24);
      v16 = sub_1D72593CC();
      (*(*(v16 - 8) + 8))(&v13[v15], v16);
    }

    if (*&v11[*(v12 + 44) + 32] != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D71804()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D71840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D71890@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

void sub_1D5D718E0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

void sub_1D5D71928(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

double sub_1D5D7196C@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

void sub_1D5D719BC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 88);
}

void sub_1D5D71A04(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
}

uint64_t sub_1D5D71A48()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D71B40()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D71B78()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D71BD0()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D71C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5D71CD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5D71D98()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D71DE4()
{
  sub_1D5F58084(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D5D71E28()
{
  sub_1D5F58198(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1D5D71E6C()
{
  if ((*(v0 + 32) - 1) >= 0xA)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D71EB8()
{
  sub_1D5E1DE98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5D71F14()
{
  sub_1D5F5844C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), sub_1D5E1DE10);

  return swift_deallocObject();
}

uint64_t sub_1D5D71F68()
{
  sub_1D5F580D0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5D71FBC()
{
  sub_1D5F58594(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), sub_1D5E1DE10, sub_1D5E1DE10);

  return swift_deallocObject();
}

uint64_t sub_1D5D72030()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D72070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FeedActionInternal(0);
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

uint64_t sub_1D5D7212C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FeedActionInternal(0);
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

uint64_t sub_1D5D721E4()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D7221C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7225C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7230C()
{
  v1 = sub_1D725891C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  v5 = *(v0 + v4);
  if ((v5 - 1) >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D723D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D72410()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D72454@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D724A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5D724F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1D5D72544@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_1D5D7259C()
{

  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  }

  if (v0[14])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  }

  if (v0[19])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D7260C()
{

  if (*(v0 + 96) != 1)
  {
  }

  if (*(v0 + 144) >= 0x12uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D72684()
{
  v1 = *(v0 + 297);
  if (v1 == 2)
  {

    swift_unknownObjectRelease();

    if (*(v0 + 104) != 1)
    {

      if (*(v0 + 136))
      {
        __swift_destroy_boxed_opaque_existential_1((v0 + 112));
      }
    }
  }

  else if (v1 == 1)
  {

    if (*(v0 + 96) != 1)
    {
    }

    if (*(v0 + 144) >= 0x12uLL)
    {
    }

    v2 = *(v0 + 160);
    if (v2)
    {

      if (*(v0 + 240) != 1)
      {
      }

      if (*(v0 + 288) >= 0x12uLL)
      {
        goto LABEL_16;
      }
    }
  }

  else if (!*(v0 + 297))
  {

    if (*(v0 + 96) != 1)
    {
    }

    if (*(v0 + 144) >= 0x12uLL)
    {
LABEL_16:
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D727EC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D72864()
{
  sub_1D5BAB764(0, qword_1EDF048E0, &qword_1EDF04A18, &qword_1EDF3C750, &protocolRef_FCPuzzleProviding);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D72928@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D72978@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

void sub_1D5D729C8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);
}

void sub_1D5D72A10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

double sub_1D5D72A54@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

void sub_1D5D72AA4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

void sub_1D5D72AEC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 96) = v2;
}

uint64_t sub_1D5D72B30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 120);
}

uint64_t sub_1D5D72B80()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D72BC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D72BF8(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1D5F7B52C(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5D72C5C(uint64_t a1, __n128 a2)
{
  sub_1D5F7B52C(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5D72CC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D72D00()
{
  sub_1D5F7B404(255);
  sub_1D5F7BA78(&qword_1EC881940, sub_1D5F7B404, MEMORY[0x1E697C158]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D5D72DB0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D72DE8()
{
  sub_1D5F82E88(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1D5D72E68()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D72EA8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D72EE8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D72F3C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5D72F8C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1D5D72FEC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D73034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatContent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5D730F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatContent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5D73588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 72);
  v2 = *(a1 + 80);
  v4 = *(a1 + 88);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  return sub_1D5E04CC4(v3, v2, v4);
}

uint64_t sub_1D5D735A4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D735E0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D73628()
{
  sub_1D5F57FEC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1D5D73684()
{

  if (*(v0 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D73724()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D73768()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D737C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D73820()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D73858()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D73890()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D738C8()
{
  v1 = type metadata accessor for FormatDecorationContext(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);

  v3 = (v0 + v2);

  if (*(v0 + v2 + 48))
  {
  }

  v4 = *(v1 + 28);
  v5 = sub_1D7259F5C();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = *(v1 + 32);
  v7 = sub_1D7259CFC();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1D5D73A84()
{
  v1 = *(type metadata accessor for FormatOptionsNodeStatementContext(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D5EB9920(0);
    v5 = *(v4 + 48);
    sub_1D5FBA900(0, &qword_1EDF3BEE0, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74C0]);
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D73BF0()
{

  if (*(v0 + 88))
  {
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D73C98()
{

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D73E78(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5D73EC8(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1D5D73F10(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for FormatCompilerOptions(0) + 24);

  return sub_1D5FC6AD0(a1, v3);
}

uint64_t sub_1D5D73F58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for FormatCompilerOptions(0) + 32));
}

uint64_t sub_1D5D73FA4(uint64_t a1)
{

  sub_1D725972C();
}

uint64_t sub_1D5D74014()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7404C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D74110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5D7417C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5D741EC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7437C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D743C4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D74404()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D74444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5D74500(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatContentSlotItemObject.Resolved(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5D7479C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D747EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for FeedCursorTrackerSnapshot(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v6, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5D74A38()
{

  return swift_deallocObject();
}

double sub_1D5D74A78@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 24);
  *a2 = result;
  return result;
}

double sub_1D5D74A84(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 24) = *a1;
  return result;
}

uint64_t sub_1D5D74A90@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D5D74AA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 32) = *result;
  *(a2 + 40) = v2;
  return result;
}

uint64_t sub_1D5D74AE0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D72585BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D74B8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D72585BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D74C34()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D74C6C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D74CB8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D74CF0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D75264@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D5D75334()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7536C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D753B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D75400@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D75450()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D75488()
{
  if (*(v0 + 96) != 254)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D754D0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 80);
  v3 = *(v0 + 128);
  v4 = *(v0 + 152);
  v5 = v1 >> 16 == 0xFFFFFFFF && v2 >> 24 == 0;
  if (!v5 || v3 > 0xFF || v4 >= 0x10000)
  {
    sub_1D6010694(*(v0 + 16), v1, *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v2, *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), v3, *(v0 + 136), *(v0 + 144), v4, *(v0 + 160), *(v0 + 168), *(v0 + 176));
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D75598()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D755E0()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5D7566C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D756D8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D75718()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D75764()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D757A4()
{
  v1 = (type metadata accessor for BundleSession(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_1D725891C();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1D5D758A0()
{
  sub_1D5B5D86C(0, &qword_1EDF33290, type metadata accessor for BundleSession, MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v4 = type metadata accessor for BundleSession(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    v5 = *(v4 + 20);
    v6 = sub_1D725891C();
    (*(*(v6 - 8) + 8))(v0 + v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D75A20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D75A60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5D75A6C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5D75ABC(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_1D5D75B0C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1D5D75B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatSlotDefinition(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FormatCompilerSlotDefinitionItemSet(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5D75C58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FormatSlotDefinition(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FormatCompilerSlotDefinitionItemSet(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D5D75D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    sub_1D5C2ECB0(0, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
    v13 = v12;
    v14 = *(*(v12 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1D5D75EEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725BD1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    sub_1D5C2ECB0(0, &qword_1EDF17F38, MEMORY[0x1E69D6400], MEMORY[0x1E69E6720]);
    v12 = v11;
    v13 = *(*(v11 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D5D76074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D725BD1C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D5D76140(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D725BD1C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D5D76208(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D762B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D76368(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FormatJson(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D76414(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatJson(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D764B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D76528()
{
  v1 = sub_1D725891C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D76600(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1D5B5B2A0(0);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_1D5D766AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1D5B5B2A0(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5D76750@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D767A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76800()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76838()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76880()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D768B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76918(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
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

uint64_t sub_1D5D76984(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D72585BC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D5D76A08()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76A40()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76A90()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76B10()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 72) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5D76BB0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76BF8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5D76CE4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76D24()
{

  return swift_deallocObject();
}

__n128 sub_1D5D76D70(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1D5D76D8C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5D76E84()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76EC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D76F08()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5D76FF8()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1D5D770D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7716C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D771AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for FormatContent(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D77258(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for FormatContent(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D772FC()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D77334()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D77374(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TagMastheadPlacement(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D77420(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TagMastheadPlacement(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D5D774E8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8NewsFeed23TagMastheadViewProvider_parallaxX;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
}

uint64_t sub_1D5D77578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 176);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for TagMastheadViewBackground(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TagMastheadPlacement(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D5D77694(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 176) = -a2;
  }

  else
  {
    v8 = type metadata accessor for TagMastheadViewBackground(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for TagMastheadPlacement(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5D777B4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D777FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D77834()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D77874@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D778C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D5D77914()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7794C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483631)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 16;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    sub_1D60747E4(0);
    v10 = v9;
    v11 = *(*(v9 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D5D77A08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483631)
  {
    *(result + 8) = (a2 + 15);
  }

  else
  {
    sub_1D60747E4(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5D77AC0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D77AF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D77BA4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for WebEmbedDataSourceCacheEntry(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D77CC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D77D08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v4;
}

uint64_t sub_1D5D77D60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v4;
}

uint64_t sub_1D5D77DB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v4;
}

uint64_t sub_1D5D77E10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  *(a2 + 8) = v4;
}

uint64_t sub_1D5D77E68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  *(a2 + 8) = v4;
}

uint64_t sub_1D5D77EC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  *(a2 + 8) = v4;
}

uint64_t sub_1D5D77F30(uint64_t a1, uint64_t a2)
{
  sub_1D5B5B2A0(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5D77F9C(uint64_t a1, uint64_t a2)
{
  sub_1D5B5B2A0(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5D7809C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D780F4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D7812C()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D7817C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D781BC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D781F8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D78230()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D78270()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D782A8()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D78304()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D78374()
{
  v1 = (type metadata accessor for FormatViewBackground.Mica(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  v4 = sub_1D725D4AC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D784A0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D784D8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D78514()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7854C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D78594()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D785D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatContent(0);
  v8 = *(v6 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = type metadata accessor for FormatArrangementResolverOptions(0, *(a3 + 16), *(a3 + 24), v7);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1D5D78700(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatContent(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  else
  {
    v12 = type metadata accessor for FormatArrangementResolverOptions(0, *(a4 + 16), *(a4 + 24), v9);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 40);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1D5D78A5C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 115)
  {
    v4 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
    v5 = v4 ^ 0x7C;
    v6 = v4 ^ 0x7F;
    if (v5 >= 0x74)
    {
      return 0;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    sub_1D5B544D0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

unint64_t *sub_1D5D78B2C(unint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 115)
  {
    v6 = (~a2 >> 4) & 7 | (8 * (~a2 & 0x7F));
    *result = (v6 | (v6 << 57)) & 0xF000000000000007;
  }

  else
  {
    sub_1D5B544D0(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 56);
    v11 = v5 + *(a4 + 24);

    return v10(v11, a2, a2, v9);
  }

  return result;
}

uint64_t sub_1D5D78C14(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1D5D78C64(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5D78CB4(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1D5D78CF8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D78D30()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D78D74()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D5D78DCC()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 224) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D78F00()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D78FC8()
{
  if (v0[3])
  {

    if (v0[19] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v0[32] >= 0x12uLL)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D7907C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D790B4()
{
  v1 = (type metadata accessor for FormatWorkspaceGroup(0) - 8);
  v44 = *(*v1 + 80);

  v2 = v0 + ((v44 + 211) & ~v44) + v1[8];

  v3 = type metadata accessor for FormatContentSubgroup(0);
  v4 = v2 + *(v3 + 20);
  sub_1D60CF55C(0, qword_1EDF40220, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v41 = v2;

    if (*(v4 + 168) >= 3uLL)
    {
    }

    v15 = type metadata accessor for FormatPackage(0);
    v16 = v4 + v15[23];

    v17 = type metadata accessor for FormatCompilerOptions(0);
    v18 = v16 + *(v17 + 24);
    if (*(v18 + 8) != 1)
    {
    }

    v19 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
    v20 = sub_1D725B76C();
    v42 = *(v20 - 8);
    v21 = *(v42 + 48);
    if (!v21(v18 + v19, 1, v20))
    {
      (*(v42 + 8))(v18 + v19, v20);
    }

    v43 = v3;
    v22 = *(v17 + 28);
    v40 = v21;
    if (!v21(v16 + v22, 1, v20))
    {
      (*(v42 + 8))(v16 + v22, v20);
    }

    v23 = v15[24];
    v24 = sub_1D725BD1C();
    v25 = *(v24 - 8);
    v26 = *(v25 + 8);
    v26(v4 + v23, v24);
    v27 = v15[25];
    if (!v40(v4 + v27, 1, v20))
    {
      (*(v42 + 8))(v4 + v27, v20);
    }

    sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v29 = v4 + *(v28 + 48);

    v30 = type metadata accessor for FormatMetadata(0);
    v26(v29 + v30[5], v24);
    v26(v29 + v30[6], v24);
    v31 = v30[7];
    v3 = v43;
    if (!(*(v25 + 48))(v29 + v31, 1, v24))
    {
      v26(v29 + v31, v24);
    }

    v2 = v41;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_20;
    }

    v6 = sub_1D72585BC();
    (*(*(v6 - 8) + 8))(v4, v6);
    sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v8 = v4 + *(v7 + 48);

    v9 = type metadata accessor for FormatMetadata(0);
    v10 = v9[5];
    v11 = sub_1D725BD1C();
    v12 = *(v11 - 8);
    v13 = *(v12 + 8);
    v13(v8 + v10, v11);
    v13(v8 + v9[6], v11);
    v14 = v9[7];
    if (!(*(v12 + 48))(v8 + v14, 1, v11))
    {
      v13(v8 + v14, v11);
    }
  }

LABEL_20:
  sub_1D60CF55C(0, qword_1EDF43E00, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for FormatLatestCompatibleFileReference);

  v32 = v2 + *(v3 + 40);

  v33 = type metadata accessor for FormatMetadata(0);
  v34 = v33[5];
  v35 = sub_1D725BD1C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 8);
  v37(v32 + v34, v35);
  v37(v32 + v33[6], v35);
  v38 = v33[7];
  if (!(*(v36 + 48))(v32 + v38, 1, v35))
  {
    v37(v32 + v38, v35);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D798A8()
{
  v1 = (type metadata accessor for FormatWorkspaceGroup(0) - 8);
  v44 = *(*v1 + 80);
  swift_unknownObjectRelease();

  v2 = v0 + ((v44 + 227) & ~v44) + v1[8];

  v3 = type metadata accessor for FormatContentSubgroup(0);
  v4 = v2 + *(v3 + 20);
  sub_1D60CF55C(0, qword_1EDF40220, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for FormatFileReference);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v41 = v2;

    if (*(v4 + 168) >= 3uLL)
    {
    }

    v15 = type metadata accessor for FormatPackage(0);
    v16 = v4 + v15[23];

    v17 = type metadata accessor for FormatCompilerOptions(0);
    v18 = v16 + *(v17 + 24);
    if (*(v18 + 8) != 1)
    {
    }

    v19 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
    v20 = sub_1D725B76C();
    v42 = *(v20 - 8);
    v21 = *(v42 + 48);
    if (!v21(v18 + v19, 1, v20))
    {
      (*(v42 + 8))(v18 + v19, v20);
    }

    v43 = v3;
    v22 = *(v17 + 28);
    v40 = v21;
    if (!v21(v16 + v22, 1, v20))
    {
      (*(v42 + 8))(v16 + v22, v20);
    }

    v23 = v15[24];
    v24 = sub_1D725BD1C();
    v25 = *(v24 - 8);
    v26 = *(v25 + 8);
    v26(v4 + v23, v24);
    v27 = v15[25];
    if (!v40(v4 + v27, 1, v20))
    {
      (*(v42 + 8))(v4 + v27, v20);
    }

    sub_1D5D57E78(0, &unk_1EC88B470, type metadata accessor for FormatPackage);
    v29 = v4 + *(v28 + 48);

    v30 = type metadata accessor for FormatMetadata(0);
    v26(v29 + v30[5], v24);
    v26(v29 + v30[6], v24);
    v31 = v30[7];
    v3 = v43;
    if (!(*(v25 + 48))(v29 + v31, 1, v24))
    {
      v26(v29 + v31, v24);
    }

    v2 = v41;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_20;
    }

    v6 = sub_1D72585BC();
    (*(*(v6 - 8) + 8))(v4, v6);
    sub_1D5D57E78(0, &qword_1EDF45B30, MEMORY[0x1E6968FB0]);
    v8 = v4 + *(v7 + 48);

    v9 = type metadata accessor for FormatMetadata(0);
    v10 = v9[5];
    v11 = sub_1D725BD1C();
    v12 = *(v11 - 8);
    v13 = *(v12 + 8);
    v13(v8 + v10, v11);
    v13(v8 + v9[6], v11);
    v14 = v9[7];
    if (!(*(v12 + 48))(v8 + v14, 1, v11))
    {
      v13(v8 + v14, v11);
    }
  }

LABEL_20:
  sub_1D60CF55C(0, qword_1EDF43E00, type metadata accessor for FormatPackage, sub_1D5C2AED8, type metadata accessor for FormatLatestCompatibleFileReference);

  v32 = v2 + *(v3 + 40);

  v33 = type metadata accessor for FormatMetadata(0);
  v34 = v33[5];
  v35 = sub_1D725BD1C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 8);
  v37(v32 + v34, v35);
  v37(v32 + v33[6], v35);
  v38 = v33[7];
  if (!(*(v36 + 48))(v32 + v38, 1, v35))
  {
    v37(v32 + v38, v35);
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D7A0A4()
{
  v1 = type metadata accessor for DebugFormatWorkspace(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v61 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for DebugFormatEditorLayoutContext(0);
  v60 = *(*(v4 - 8) + 80);

  v5 = v0 + v3;
  type metadata accessor for DebugFormatWorkspaceKind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v0 + v3;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for DebugFormatCacheFile(0);
    if ((*(*(v12 - 8) + 48))(v0 + v3, 1, v12))
    {
      goto LABEL_41;
    }

    v13 = v62 + *(v12 + 28);
    v9 = sub_1D725BD1C();
    v10 = *(*(v9 - 8) + 8);
    v10(v13, v9);
    type metadata accessor for DebugFormatCacheFileMetadata(0);
    v5 = v0 + v3;

    v11 = v62 + *(v12 + 32);
    type metadata accessor for FormatFile(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v14 = type metadata accessor for FormatContent(0);
        v15 = *(v14 + 20);
        v16 = sub_1D725891C();
        (*(*(v16 - 8) + 8))(v11 + v15, v16);

        v17 = *(v14 + 44);
        v18 = sub_1D72608BC();
        v19 = *(v18 - 8);
        v58 = v17;
        v20 = v11 + v17;
        v21 = v18;
        if (!(*(v19 + 48))(v20, 1, v18))
        {
          (*(v19 + 8))(v11 + v58, v21);
        }

        goto LABEL_12;
      case 1u:
LABEL_23:

        if (*(v11 + 106) != 255)
        {
          v30 = *(v11 + 104) | (*(v11 + 106) << 16);
          sub_1D60CF684(*(v11 + 96), v30, SBYTE2(v30));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v11 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v11 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v11 + 168) >= 3uLL)
        {
        }

        v50 = v10;
        v31 = type metadata accessor for FormatPackage(0);
        v32 = v11 + v31[23];

        v55 = type metadata accessor for FormatCompilerOptions(0);
        v52 = v32 + *(v55 + 24);
        if (*(v52 + 8) != 1)
        {
        }

        v49 = v32;
        v33 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v34 = sub_1D725B76C();
        v51 = *(v34 - 8);
        v57 = v34;
        v54 = *(v51 + 48);
        if (!v54(v52 + v33, 1))
        {
          (*(v51 + 8))(v52 + v33, v57);
        }

        v53 = *(v55 + 28);
        if (!(v54)(v49 + v53, 1, v57))
        {
          (*(v51 + 8))(v49 + v53, v57);
        }

        v50(v11 + v31[24], v9);
        v35 = v31[25];
        if (!(v54)(v11 + v35, 1, v57))
        {
          (*(v51 + 8))(v11 + v35, v57);
        }

        goto LABEL_35;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64), *(v11 + 72), *(v11 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v22 = v11 + *(type metadata accessor for FormatBindingContent(0) + 28);

        v23 = type metadata accessor for FormatContent(0);
        v24 = *(v23 + 20);
        v25 = sub_1D725891C();
        (*(*(v25 - 8) + 8))(v22 + v24, v25);

        v26 = *(v23 + 44);
        v27 = sub_1D72608BC();
        v56 = *(v27 - 8);
        v59 = v26;
        v28 = v22 + v26;
        v29 = v27;
        if (!(*(v56 + 48))(v28, 1, v27))
        {
          (*(v56 + 8))(v22 + v59, v29);
        }

LABEL_12:

LABEL_35:

        v5 = v0 + v3;
        break;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for DebugFormatCacheFile(0);
    if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
    {

      v8 = v62 + *(v7 + 28);
      v9 = sub_1D725BD1C();
      v10 = *(*(v9 - 8) + 8);
      v10(v8, v9);
      type metadata accessor for DebugFormatCacheFileMetadata(0);
      v5 = v0 + v3;

      v11 = v62 + *(v7 + 32);
      type metadata accessor for FormatFile(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4(0);
      sub_1D5B952F8(*(v11 + *(v36 + 44)), *(v11 + *(v36 + 44) + 8));
    }
  }

LABEL_41:

  v37 = (v5 + *(v1 + 24));

  v38 = type metadata accessor for FeedContext(0);
  v39 = v37 + v38[5];
  v40 = type metadata accessor for BundleSession(0);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    v41 = *(v40 + 20);
    v42 = sub_1D725891C();
    v3 = (v2 + 32) & ~v2;
    (*(*(v42 - 8) + 8))(&v39[v41], v42);
  }

  if (*(v37 + v38[12] + 8) - 1 >= 3)
  {
  }

  v43 = (v62 + *(v1 + 28));
  if (v43[1])
  {

    if (v43[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v43[30] >= 0x12uLL)
    {
    }
  }

  v44 = v0 + ((v61 + v3 + v60 + 2) & ~v60);
  v45 = sub_1D7259CFC();
  (*(*(v45 - 8) + 8))(v44, v45);
  v46 = *(v4 + 20);
  v47 = sub_1D7259F5C();
  (*(*(v47 - 8) + 8))(v44 + v46, v47);

  return swift_deallocObject();
}

uint64_t sub_1D5D7AF54()
{
  v1 = type metadata accessor for DebugFormatWorkspace(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 48) & ~v2;
  v61 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for DebugFormatEditorLayoutContext(0);
  v60 = *(*(v4 - 8) + 80);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  type metadata accessor for DebugFormatWorkspaceKind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v0 + v3;
  if (EnumCaseMultiPayload == 1)
  {
    v12 = type metadata accessor for DebugFormatCacheFile(0);
    if ((*(*(v12 - 8) + 48))(v0 + v3, 1, v12))
    {
      goto LABEL_41;
    }

    v13 = v62 + *(v12 + 28);
    v9 = sub_1D725BD1C();
    v10 = *(*(v9 - 8) + 8);
    v10(v13, v9);
    type metadata accessor for DebugFormatCacheFileMetadata(0);
    v5 = v0 + v3;

    v11 = v62 + *(v12 + 32);
    type metadata accessor for FormatFile(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
LABEL_7:

        v14 = type metadata accessor for FormatContent(0);
        v15 = *(v14 + 20);
        v16 = sub_1D725891C();
        (*(*(v16 - 8) + 8))(v11 + v15, v16);

        v17 = *(v14 + 44);
        v18 = sub_1D72608BC();
        v19 = *(v18 - 8);
        v58 = v17;
        v20 = v11 + v17;
        v21 = v18;
        if (!(*(v19 + 48))(v20, 1, v18))
        {
          (*(v19 + 8))(v11 + v58, v21);
        }

        goto LABEL_12;
      case 1u:
LABEL_23:

        if (*(v11 + 106) != 255)
        {
          v30 = *(v11 + 104) | (*(v11 + 106) << 16);
          sub_1D60CF684(*(v11 + 96), v30, SBYTE2(v30));
        }

        goto LABEL_40;
      case 2u:
LABEL_16:

        if (*(v11 + 72) >= 3uLL)
        {
        }

        goto LABEL_39;
      case 3u:
LABEL_19:

        if (*(v11 + 56) >= 0x10uLL)
        {
        }

        goto LABEL_39;
      case 4u:
LABEL_13:

        goto LABEL_39;
      case 5u:
LABEL_25:

        if (*(v11 + 168) >= 3uLL)
        {
        }

        v50 = v10;
        v31 = type metadata accessor for FormatPackage(0);
        v32 = v11 + v31[23];

        v55 = type metadata accessor for FormatCompilerOptions(0);
        v52 = v32 + *(v55 + 24);
        if (*(v52 + 8) != 1)
        {
        }

        v49 = v32;
        v33 = *(type metadata accessor for FormatCompilerOptions.Newsroom(0) + 20);
        v34 = sub_1D725B76C();
        v51 = *(v34 - 8);
        v57 = v34;
        v54 = *(v51 + 48);
        if (!v54(v52 + v33, 1))
        {
          (*(v51 + 8))(v52 + v33, v57);
        }

        v53 = *(v55 + 28);
        if (!(v54)(v49 + v53, 1, v57))
        {
          (*(v51 + 8))(v49 + v53, v57);
        }

        v50(v11 + v31[24], v9);
        v35 = v31[25];
        if (!(v54)(v11 + v35, 1, v57))
        {
          (*(v51 + 8))(v11 + v35, v57);
        }

        goto LABEL_35;
      case 6u:
LABEL_36:

        goto LABEL_39;
      case 7u:
LABEL_22:

        goto LABEL_40;
      case 8u:
LABEL_38:

        goto LABEL_39;
      case 9u:
LABEL_15:

        goto LABEL_39;
      case 0xAu:
LABEL_37:

        sub_1D60CF6F4(*(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64), *(v11 + 72), *(v11 + 80));
        goto LABEL_40;
      case 0xBu:
LABEL_10:

        v22 = v11 + *(type metadata accessor for FormatBindingContent(0) + 28);

        v23 = type metadata accessor for FormatContent(0);
        v24 = *(v23 + 20);
        v25 = sub_1D725891C();
        (*(*(v25 - 8) + 8))(v22 + v24, v25);

        v26 = *(v23 + 44);
        v27 = sub_1D72608BC();
        v56 = *(v27 - 8);
        v59 = v26;
        v28 = v22 + v26;
        v29 = v27;
        if (!(*(v56 + 48))(v28, 1, v27))
        {
          (*(v56 + 8))(v22 + v59, v29);
        }

LABEL_12:

LABEL_35:

        v5 = v0 + v3;
        break;
      case 0xCu:
LABEL_14:

LABEL_39:

        break;
      default:
        goto LABEL_40;
    }

    goto LABEL_40;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for DebugFormatCacheFile(0);
    if (!(*(*(v7 - 8) + 48))(v0 + v3, 1, v7))
    {

      v8 = v62 + *(v7 + 28);
      v9 = sub_1D725BD1C();
      v10 = *(*(v9 - 8) + 8);
      v10(v8, v9);
      type metadata accessor for DebugFormatCacheFileMetadata(0);
      v5 = v0 + v3;

      v11 = v62 + *(v7 + 32);
      type metadata accessor for FormatFile(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          goto LABEL_7;
        case 1u:
          goto LABEL_23;
        case 2u:
          goto LABEL_16;
        case 3u:
          goto LABEL_19;
        case 4u:
          goto LABEL_13;
        case 5u:
          goto LABEL_25;
        case 6u:
          goto LABEL_36;
        case 7u:
          goto LABEL_22;
        case 8u:
          goto LABEL_38;
        case 9u:
          goto LABEL_15;
        case 0xAu:
          goto LABEL_37;
        case 0xBu:
          goto LABEL_10;
        case 0xCu:
          goto LABEL_14;
        default:
          break;
      }

LABEL_40:
      sub_1D60CF7A4(0);
      sub_1D5B952F8(*(v11 + *(v36 + 44)), *(v11 + *(v36 + 44) + 8));
    }
  }

LABEL_41:

  v37 = (v5 + *(v1 + 24));

  v38 = type metadata accessor for FeedContext(0);
  v39 = v37 + v38[5];
  v40 = type metadata accessor for BundleSession(0);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    v41 = *(v40 + 20);
    v42 = sub_1D725891C();
    v3 = (v2 + 48) & ~v2;
    (*(*(v42 - 8) + 8))(&v39[v41], v42);
  }

  if (*(v37 + v38[12] + 8) - 1 >= 3)
  {
  }

  v43 = (v62 + *(v1 + 28));
  if (v43[1])
  {

    if (v43[17] >= 3uLL)
    {
    }

    swift_unknownObjectRelease();

    if (v43[30] >= 0x12uLL)
    {
    }
  }

  v44 = v0 + ((v61 + v3 + v60 + 2) & ~v60);
  v45 = sub_1D7259CFC();
  (*(*(v45 - 8) + 8))(v44, v45);
  v46 = *(v4 + 20);
  v47 = sub_1D7259F5C();
  (*(*(v47 - 8) + 8))(v44 + v46, v47);

  return swift_deallocObject();
}

uint64_t sub_1D5D7BE1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D7BE6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

void sub_1D5D7BEBC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
}

void sub_1D5D7BF04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 136) = v2;
}

double sub_1D5D7BF48@<D0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 144);
  *a2 = v4;
  return sub_1D5EB1500(v4);
}

void sub_1D5D7BF98(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 152);
}

void sub_1D5D7BFE0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 152) = v2;
}

uint64_t sub_1D5D7C024@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 176);
}

uint64_t sub_1D5D7C074@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

uint64_t sub_1D5D7C0C4()
{

  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D7C124()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7C164()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7C19C()
{
  sub_1D60D6740(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t sub_1D5D7C200()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7C238()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7C278()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7C2B0()
{

  sub_1D5D05694(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5D7C320()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D7C358()
{
  sub_1D5BEB610(0, &qword_1EDF3BEE0, MEMORY[0x1E69D74C0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  (*(v3 + 8))(v0 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1D5D7C454(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D725BD1C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D7C500(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725BD1C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D7C5A4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D7C650(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D7C808()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7C85C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7C89C()
{
  if (*(v0 + 24) >= 0x10uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D7C8DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7C914()
{
  sub_1D6007D9C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D5D7C988()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7C9F4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D5B915C4(0, qword_1EDF10A30, type metadata accessor for PuzzleToolbarItem);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5D7CAC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B915C4(0, qword_1EDF10A30, type metadata accessor for PuzzleToolbarItem);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5D7CB80(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1D725DF2C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D7CC2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1D725DF2C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D7CCD8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7CD1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D7261CAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedWeather.Temperature(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1D5D7CE40(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_1D7261CAC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for FeedWeather.Temperature(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1D5D7CF64(uint64_t a1, uint64_t a2)
{
  sub_1D5B7A110(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5D7CFD0(uint64_t a1, uint64_t a2)
{
  sub_1D5B7A110(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5D7D040()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7D088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatWorkspaceGroup(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5D7D144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatWorkspaceGroup(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5D7D1FC()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6D6E6F7269766E65;
  }
}

uint64_t sub_1D5D7D248()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D5D7D298()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7D2D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_1D5D7D314()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7D35C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5D7D368()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7D3A0()
{

  return swift_deallocObject();
}

double sub_1D5D7D3E8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_1D5D7D3F4(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

uint64_t sub_1D5D7D400@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D5D7D414(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 24) = *result;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_1D5D7D428()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7D4E8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7D528()
{
  sub_1D611E8C8(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D7D5BC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D7D668(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D7D71C()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

void sub_1D5D7D80C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

id sub_1D5D7D864(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_showsLoadingSpinner;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = 0.0;
  if (v2)
  {
    v5 = 1.0;
  }

  return [*(v3 + OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_activityIndicator) setAlpha_];
}

id sub_1D5D7D8E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed22WebEmbedViewController_feedConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D5D7D94C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D7D984()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7D9C0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7DA00()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7DA50()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D7DA88()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5D7DAC8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D5D7DC30()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7DC78(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D7DD24(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D7DDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D5D7DE34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D5D7DEC4()
{
  v1 = sub_1D72585BC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D7DF9C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D7E048(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D7E0FC()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D7E134@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC8NewsFeed14CoverIssueView_downloadButtonDataProvider;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5D7E194()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D7E1D4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7E210@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5D7E21C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t sub_1D5D7E260@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5D7E26C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5D7E2B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5D7E2BC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5D7E300(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D5D7E3CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1D5B5BF24(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 48);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5D7E48C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7E4F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FeedDatabaseGroup.identifier.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

__n128 sub_1D5D7E52C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5D7E5B0()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7E610()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7E650(uint64_t a1, uint64_t a2)
{
  sub_1D615474C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D7E708()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7E744()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7E77C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7E7B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D7E804@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 64);
}

uint64_t sub_1D5D7E854()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7E89C()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5D7E90C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7E954()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7E98C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for DebugFormatUploadHiddenReason(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D7EA38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DebugFormatUploadHiddenReason(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D7EADC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D7EB2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D7EB7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

uint64_t sub_1D5D7EBCC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7EC14()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5D7EC58()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = *(type metadata accessor for FeedReplaceLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v3) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = swift_getAssociatedTypeWitness();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_1D5D7EE1C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7EE54()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1D5D7EE90()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1D5D7EEC8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7EF0C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

id sub_1D5D7EFE8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView_bannerView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1D5D7F058@<X0>(uint64_t *a1@<X8>)
{
  result = FeedBannerAdView.debugView.getter();
  *a1 = result;
  return result;
}

void sub_1D5D7F084(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView);
  *(*a2 + OBJC_IVAR____TtC8NewsFeed16FeedBannerAdView____lazy_storage___debugView) = *a1;
  v3 = v2;
}

uint64_t sub_1D5D7F0D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D7F124@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D7F174()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7F1BC()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5D7F20C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D5D7F28C(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1D5D7F2D0()
{

  return swift_deallocObject();
}

__n128 sub_1D5D7F32C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1D5D7F510()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7F570()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7F5AC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7F5E4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7F61C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7F65C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7F6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    v6 = v5 <= 0;
    if (v5 < 0)
    {
      v5 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    sub_1D60077D8(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D5D7F760(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 8) = (a2 + 1);
  }

  else
  {
    sub_1D60077D8(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 24);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D5D7F808@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5D7F814(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5D7F928()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7F980()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7F9C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for DebugFormatCacheFile(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1D5D7FA74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for DebugFormatCacheFile(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D7FB18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D5D7FB68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 96);
}

uint64_t sub_1D5D7FBB8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7FC00()
{
  sub_1D60110D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5D7FC54(uint64_t a1, uint64_t a2)
{
  sub_1D6194E68(0, &qword_1EC8848C8, sub_1D6194D70, sub_1D5F7B9E4);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D7FCE8(uint64_t a1)
{
  sub_1D6194E68(0, &qword_1EC8848C8, sub_1D6194D70, sub_1D5F7B9E4);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5D7FD74(uint64_t a1, uint64_t a2)
{
  sub_1D6194C38(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5D7FE48()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7FEA4()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D7FEEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5D7FEF8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return result;
}

uint64_t sub_1D5D7FF3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1D5D7FF48(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  return result;
}

uint64_t sub_1D5D7FF98(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 48) = v3;
  return result;
}

uint64_t sub_1D5D7FFE8(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 64) = v3;
  return result;
}

uint64_t sub_1D5D80038(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 72) = v3;
  return result;
}

uint64_t sub_1D5D800A0(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 88) = v3;
  return result;
}

uint64_t sub_1D5D800F0(void *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 96) = v3;
  return result;
}

uint64_t sub_1D5D80134@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_1D5D80184@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D5D801D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D5D80224()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D80264(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for GroupLayoutContext(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1D5D80310(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for GroupLayoutContext(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D5D803C8()
{

  if (*(v0 + 32) >= 4uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D80414()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D8045C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D80494()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D804D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D7260E3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D5D80594(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D7260E3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D5D80650()
{
  v1 = *(type metadata accessor for FeedNativeAdInsertion(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = sub_1D7260E3C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1D5D80744(__n128 a1)
{
  sub_1D61A9CBC(255, a1);
  sub_1D61A9A04(255, v1);
  sub_1D7260FEC();
  sub_1D61ABEB4(&qword_1EC884D40, sub_1D61A9A04, MEMORY[0x1E697CD20]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D5D80820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D72610CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D5D80878()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D808B8()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D8093C()
{
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for FeedItem(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:

        if (*(v2 + 48) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      case 1u:

        if (*(v2 + 80) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      case 2u:

        v46 = type metadata accessor for FeedBannerAd(0);
        v47 = *(v46 + 20);
        v48 = sub_1D7260DDC();
        goto LABEL_99;
      case 3u:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v49 = type metadata accessor for FeedHeadline(0);
        v50 = v49[10];
        v51 = v2 + v50 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v52 = type metadata accessor for SharedItem(0);
        if (!(*(*(v52 - 8) + 48))(v51, 1, v52))
        {
          v53 = sub_1D725891C();
          (*(*(v53 - 8) + 8))(v51, v53);

          v54 = *(v52 + 28);
          v55 = sub_1D72585BC();
          (*(*(v55 - 8) + 8))(v51 + v54, v55);
        }

        v56 = v49[11];
        v57 = sub_1D726045C();
        v58 = *(v57 - 8);
        if (!(*(v58 + 48))(v2 + v56, 1, v57))
        {
          (*(v58 + 8))(v2 + v56, v57);
        }

        if (*(v2 + v49[12] + 8) >= 0x12uLL)
        {
        }

        if (*(v2 + v49[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }

        break;
      case 4u:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

        v20 = type metadata accessor for FeedWebEmbed(0);
        v21 = v20[8];
        v22 = sub_1D72585BC();
        v23 = *(v22 - 8);
        v82 = *(v23 + 8);
        v82(v2 + v21, v22);
        v24 = v20[9];
        if (!(*(v23 + 48))(v2 + v24, 1, v22))
        {
          v82(v2 + v24, v22);
        }

        v25 = v2 + v20[12];
        v26 = type metadata accessor for FeedHeadline(0);
        if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
        {
          v81 = v22;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v27 = v26[10];
          v28 = v25 + v27 + *(type metadata accessor for FeedHeadline.State(0) + 24);
          v29 = type metadata accessor for SharedItem(0);
          if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
          {
            v30 = sub_1D725891C();
            (*(*(v30 - 8) + 8))(v28, v30);

            v82(v28 + *(v29 + 28), v81);
          }

          v31 = v26[11];
          v32 = sub_1D726045C();
          v80 = *(v32 - 8);
          if (!(*(v80 + 48))(v25 + v31, 1, v32))
          {
            (*(v80 + 8))(v25 + v31, v32);
          }

          if (*(v25 + v26[12] + 8) >= 0x12uLL)
          {
          }

          v22 = v81;
          if (*(v25 + v26[13]) >= 3uLL)
          {
            swift_unknownObjectRelease();
          }
        }

        v33 = v2 + v20[13];
        v34 = type metadata accessor for WebEmbedDataVisualization(0);
        if (!(*(*(v34 - 8) + 48))(v33, 1, v34))
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v35 = type metadata accessor for GenericDataVisualization(0);
            v82(v33 + *(v35 + 20), v22);
          }

          else
          {
          }
        }

        goto LABEL_128;
      case 5u:
        goto LABEL_85;
      case 6u:
        v59 = *(v2 + 281);
        if (v59 == 2)
        {
          goto LABEL_89;
        }

        if (v59 == 1)
        {

          if (*(v2 + 80) != 1)
          {
          }

          if (*(v2 + 128) >= 0x12uLL)
          {
          }

          v71 = *(v2 + 144);
          if (!v71)
          {
            break;
          }

          if (*(v2 + 224) != 1)
          {
          }

          if (*(v2 + 272) < 0x12uLL)
          {
            break;
          }
        }

        else
        {
          if (*(v2 + 281))
          {
            break;
          }

LABEL_85:

          if (*(v2 + 80) != 1)
          {
          }

          if (*(v2 + 128) < 0x12uLL)
          {
            break;
          }
        }

        goto LABEL_128;
      case 7u:
LABEL_89:

        swift_unknownObjectRelease();

        if (*(v2 + 88) != 1)
        {

          if (*(v2 + 120))
          {
            __swift_destroy_boxed_opaque_existential_1((v2 + 96));
          }
        }

        break;
      case 8u:

        v60 = v2 + *(type metadata accessor for FeedCustomItem(0) + 20);

        v61 = *(type metadata accessor for FormatCustomItem.Resolved(0) + 24);
        v62 = type metadata accessor for FormatCustomItem.Action(0);
        if (!(*(*(v62 - 8) + 48))(v60 + v61, 1, v62))
        {
          v63 = sub_1D72585BC();
          (*(*(v63 - 8) + 8))(v60 + v61, v63);
        }

        goto LABEL_128;
      case 9u:

        if (*(v2 + 56))
        {
          __swift_destroy_boxed_opaque_existential_1((v2 + 32));
        }

        if (*(v2 + 96))
        {
          __swift_destroy_boxed_opaque_existential_1((v2 + 72));
        }

        if (*(v2 + 136))
        {
          __swift_destroy_boxed_opaque_existential_1((v2 + 112));
        }

        break;
      case 0xAu:

        v46 = type metadata accessor for FeedEngagementBanner(0);
        v47 = *(v46 + 20);
        v48 = sub_1D725C08C();
LABEL_99:
        (*(*(v48 - 8) + 8))(v2 + v47, v48);
        if (*(v2 + *(v46 + 32) + 8) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      case 0xBu:

        break;
      case 0xCu:

        if (*(v2 + 40) >= 0x12uLL)
        {
        }

        if (*(v2 + 48) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }

        v36 = type metadata accessor for FeedRecipe(0);
        v37 = v36[9];
        v38 = v2 + v37 + *(type metadata accessor for FeedRecipe.State(0) + 20);
        v39 = type metadata accessor for SharedItem(0);
        if (!(*(*(v39 - 8) + 48))(v38, 1, v39))
        {
          v40 = sub_1D725891C();
          (*(*(v40 - 8) + 8))(v38, v40);

          v41 = *(v39 + 28);
          v42 = sub_1D72585BC();
          (*(*(v42 - 8) + 8))(v38 + v41, v42);
        }

        v43 = (v2 + v36[10]);
        if (v43[3])
        {
          __swift_destroy_boxed_opaque_existential_1(v43);
        }

        v44 = (v2 + v36[12]);
        if (v44[3])
        {
          __swift_destroy_boxed_opaque_existential_1(v44);
        }

        v45 = (v2 + v36[13]);
        if (v45[3])
        {
          __swift_destroy_boxed_opaque_existential_1(v45);
        }

        break;
      case 0xDu:
        goto LABEL_72;
      case 0xEu:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

        swift_unknownObjectRelease();

        if (*(v2 + 112))
        {
          __swift_destroy_boxed_opaque_existential_1((v2 + 88));
        }

        if (*(v2 + 152))
        {
          __swift_destroy_boxed_opaque_existential_1((v2 + 128));
        }

        if (*(v2 + 192))
        {
          __swift_destroy_boxed_opaque_existential_1((v2 + 168));
        }

        break;
      case 0xFu:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

LABEL_72:

        swift_unknownObjectRelease();
        break;
      case 0x10u:
        if (*(v2 + 32) >= 0x12uLL)
        {
        }

        v5 = v2 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
        swift_unknownObjectRelease();
        v6 = v5 + *(type metadata accessor for PuzzleStatistic(0) + 20);
        type metadata accessor for PuzzleStatisticCategory(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v75 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
            if (!(*(*(v75 - 8) + 48))(v6, 1, v75))
            {
              v76 = sub_1D725891C();
              (*(*(v76 - 8) + 8))(v6, v76);
              v77 = type metadata accessor for PuzzleLeaderboardEntry(0);

              v78 = v6 + *(v77 + 24);

              v79 = *(v78 + 40);
              if (v79 >> 60 != 15)
              {
                sub_1D5B952F8(*(v78 + 32), v79);
              }

LABEL_128:
            }
          }

          else if (EnumCaseMultiPayload == 3)
          {
            v64 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
            v65 = *(v64 + 28);
            v66 = type metadata accessor for PuzzleStreak(0);
            v67 = *(*(v66 - 8) + 48);
            if (!v67(v6 + v65, 1, v66))
            {
              v68 = sub_1D7257ADC();
              (*(*(v68 - 8) + 8))(v6 + v65, v68);
            }

            v69 = *(v64 + 32);
            if (!v67(v6 + v69, 1, v66))
            {
              v70 = sub_1D7257ADC();
              (*(*(v70 - 8) + 8))(v6 + v69, v70);
            }
          }
        }

        else if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            type metadata accessor for PuzzleStatisticValue(0);
            v8 = swift_getEnumCaseMultiPayload();
            if (v8 == 6 || v8 == 5)
            {
              v9 = type metadata accessor for PuzzleStreak(0);
              if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
              {
                v10 = sub_1D7257ADC();
                (*(*(v10 - 8) + 8))(v6, v10);
              }
            }

            v11 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
            v12 = *(v11 + 20);
            v13 = swift_getEnumCaseMultiPayload();
            if (v13 == 6 || v13 == 5)
            {
              v14 = type metadata accessor for PuzzleStreak(0);
              if (!(*(*(v14 - 8) + 48))(v6 + v12, 1, v14))
              {
                v15 = sub_1D7257ADC();
                (*(*(v15 - 8) + 8))(v6 + v12, v15);
              }
            }

            v16 = *(v11 + 24);
            v17 = swift_getEnumCaseMultiPayload();
            if (v17 == 6 || v17 == 5)
            {
              v18 = type metadata accessor for PuzzleStreak(0);
              if (!(*(*(v18 - 8) + 48))(v6 + v16, 1, v18))
              {
                v19 = sub_1D7257ADC();
                (*(*(v19 - 8) + 8))(v6 + v16, v19);
              }
            }
          }
        }

        else
        {
          type metadata accessor for PuzzleStatisticValue(0);
          v72 = swift_getEnumCaseMultiPayload();
          if (v72 == 6 || v72 == 5)
          {
            v73 = type metadata accessor for PuzzleStreak(0);
            if (!(*(*(v73 - 8) + 48))(v6, 1, v73))
            {
              v74 = sub_1D7257ADC();
              (*(*(v74 - 8) + 8))(v6, v74);
            }
          }
        }

        break;
      case 0x11u:

        if (*(v2 + 136) >= 3uLL)
        {
        }

        swift_unknownObjectRelease();

        if (*(v2 + 240) >= 0x12uLL)
        {
          goto LABEL_128;
        }

        break;
      default:
        break;
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D81A94()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D81ACC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1D5D81B04()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for FormatItemNodeData(0);
  v3 = *(*(v2 - 1) + 80);
  v98 = *(*(v2 - 1) + 64);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);

  v6 = v0 + ((v3 + 40) & ~v3);
  type metadata accessor for FeedItem(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v6 + 48) >= 0x12uLL)
      {
        goto LABEL_87;
      }

      goto LABEL_116;
    case 1u:

      if (*(v6 + 80) >= 0x12uLL)
      {
        goto LABEL_87;
      }

      goto LABEL_116;
    case 2u:

      v37 = type metadata accessor for FeedBannerAd(0);
      v38 = *(v37 + 20);
      v39 = sub_1D7260DDC();
      goto LABEL_86;
    case 3u:
      v96 = v1;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v40 = type metadata accessor for FeedHeadline(0);
      v41 = v40[10];
      v42 = v6 + v41 + *(type metadata accessor for FeedHeadline.State(0) + 24);
      v43 = type metadata accessor for SharedItem(0);
      if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
      {
        v44 = sub_1D725891C();
        (*(*(v44 - 8) + 8))(v42, v44);

        v45 = *(v43 + 28);
        v46 = sub_1D72585BC();
        (*(*(v46 - 8) + 8))(v42 + v45, v46);
      }

      v47 = v40[11];
      v48 = sub_1D726045C();
      v49 = *(v48 - 8);
      if (!(*(v49 + 48))(v6 + v47, 1, v48))
      {
        (*(v49 + 8))(v6 + v47, v48);
      }

      v1 = v96;
      if (*(v6 + v40[12] + 8) >= 0x12uLL)
      {
      }

      if (*(v6 + v40[13]) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_116;
    case 4u:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      v95 = v1;

      v11 = type metadata accessor for FeedWebEmbed(0);
      v12 = v11[8];
      v13 = sub_1D72585BC();
      v14 = *(v13 - 8);
      v91 = *(v14 + 8);
      v91(v6 + v12, v13);
      v15 = v11[9];
      if (!(*(v14 + 48))(v6 + v15, 1, v13))
      {
        v91(v6 + v15, v13);
      }

      v90 = v13;

      v16 = v6 + v11[12];
      v17 = type metadata accessor for FeedHeadline(0);
      if (!(*(*(v17 - 1) + 48))(v16, 1, v17))
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v18 = v17[10];
        v86 = v16 + v18 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v88 = type metadata accessor for SharedItem(0);
        if (!(*(*(v88 - 8) + 48))(v86, 1))
        {
          v19 = sub_1D725891C();
          (*(*(v19 - 8) + 8))(v86, v19);

          v91(v86 + *(v88 + 28), v90);
        }

        v20 = v17[11];
        v21 = sub_1D726045C();
        v87 = *(v21 - 8);
        v89 = v20;
        v22 = v16 + v20;
        v23 = v21;
        if (!(*(v87 + 48))(v22, 1, v21))
        {
          (*(v87 + 8))(v16 + v89, v23);
        }

        if (*(v16 + v17[12] + 8) >= 0x12uLL)
        {
        }

        if (*(v16 + v17[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }
      }

      v24 = v6 + v11[13];
      v25 = type metadata accessor for WebEmbedDataVisualization(0);
      if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v26 = type metadata accessor for GenericDataVisualization(0);
          v91(v24 + *(v26 + 20), v90);
        }

        else
        {
        }
      }

      goto LABEL_115;
    case 5u:
      goto LABEL_72;
    case 6u:
      v50 = *(v6 + 281);
      if (v50 == 2)
      {
        goto LABEL_76;
      }

      if (v50 == 1)
      {

        if (*(v6 + 80) != 1)
        {
        }

        if (*(v6 + 128) >= 0x12uLL)
        {
        }

        v61 = *(v6 + 144);
        if (v61)
        {

          if (*(v6 + 224) != 1)
          {
          }

          if (*(v6 + 272) >= 0x12uLL)
          {
            goto LABEL_87;
          }
        }
      }

      else
      {
        if (*(v6 + 281))
        {
          goto LABEL_116;
        }

LABEL_72:

        if (*(v6 + 80) != 1)
        {
        }

        if (*(v6 + 128) >= 0x12uLL)
        {
          goto LABEL_87;
        }
      }

      goto LABEL_116;
    case 7u:
LABEL_76:

      swift_unknownObjectRelease();

      if (*(v6 + 88) != 1)
      {

        if (*(v6 + 120))
        {
          __swift_destroy_boxed_opaque_existential_1((v6 + 96));
        }
      }

      goto LABEL_116;
    case 8u:
      v95 = v1;

      v51 = v6 + *(type metadata accessor for FeedCustomItem(0) + 20);

      v52 = *(type metadata accessor for FormatCustomItem.Resolved(0) + 24);
      v53 = type metadata accessor for FormatCustomItem.Action(0);
      if (!(*(*(v53 - 8) + 48))(v51 + v52, 1, v53))
      {
        v54 = sub_1D72585BC();
        (*(*(v54 - 8) + 8))(v51 + v52, v54);
      }

LABEL_115:

      v1 = v95;
      goto LABEL_116;
    case 9u:

      if (*(v6 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 32));
      }

      if (*(v6 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 72));
      }

      if (*(v6 + 136))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 112));
      }

      goto LABEL_116;
    case 0xAu:

      v37 = type metadata accessor for FeedEngagementBanner(0);
      v38 = *(v37 + 20);
      v39 = sub_1D725C08C();
LABEL_86:
      (*(*(v39 - 8) + 8))(v6 + v38, v39);
      if (*(v6 + *(v37 + 32) + 8) >= 0x12uLL)
      {
        goto LABEL_87;
      }

      goto LABEL_116;
    case 0xBu:

      goto LABEL_116;
    case 0xCu:

      if (*(v6 + 40) >= 0x12uLL)
      {
      }

      if (*(v6 + 48) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      v27 = type metadata accessor for FeedRecipe(0);
      v28 = v27[9];
      v29 = v6 + v28 + *(type metadata accessor for FeedRecipe.State(0) + 20);
      v30 = type metadata accessor for SharedItem(0);
      if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
      {
        v31 = sub_1D725891C();
        (*(*(v31 - 8) + 8))(v29, v31);

        v32 = *(v30 + 28);
        v33 = sub_1D72585BC();
        (*(*(v33 - 8) + 8))(v29 + v32, v33);
      }

      v34 = (v6 + v27[10]);
      if (v34[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v34);
      }

      v35 = (v6 + v27[12]);
      if (v35[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v35);
      }

      v36 = (v6 + v27[13]);
      if (v36[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v36);
      }

      goto LABEL_116;
    case 0xDu:
      goto LABEL_59;
    case 0xEu:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v6 + 112))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 88));
      }

      if (*(v6 + 152))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 128));
      }

      if (*(v6 + 192))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 168));
      }

      goto LABEL_116;
    case 0xFu:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

LABEL_59:

      swift_unknownObjectRelease();
      goto LABEL_116;
    case 0x10u:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      v7 = v6 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
      swift_unknownObjectRelease();
      v8 = v7 + *(type metadata accessor for PuzzleStatistic(0) + 20);
      type metadata accessor for PuzzleStatisticCategory(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v65 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          if (!(*(*(v65 - 8) + 48))(v8, 1, v65))
          {
            v66 = sub_1D725891C();
            (*(*(v66 - 8) + 8))(v8, v66);
            v67 = type metadata accessor for PuzzleLeaderboardEntry(0);

            v68 = v8 + *(v67 + 24);

            v69 = *(v68 + 40);
            if (v69 >> 60 != 15)
            {
              sub_1D5B952F8(*(v68 + 32), v69);
            }

LABEL_87:
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v97 = v1;
          v92 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
          v55 = *(v92 + 28);
          v56 = type metadata accessor for PuzzleStreak(0);
          v57 = (*(v56 - 8) + 48);
          v93 = *v57;
          if (!(*v57)(v8 + v55, 1, v56))
          {
            v58 = sub_1D7257ADC();
            (*(*(v58 - 8) + 8))(v8 + v55, v58);
          }

          v59 = *(v92 + 32);
          v1 = v97;
          if (!v93(v8 + v59, 1, v56))
          {
            v60 = sub_1D7257ADC();
            (*(*(v60 - 8) + 8))(v8 + v59, v60);
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_116;
        }

        type metadata accessor for PuzzleStatisticValue(0);
        v10 = swift_getEnumCaseMultiPayload();
        v94 = v1;
        if (v10 == 6 || v10 == 5)
        {
          v74 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v74 - 8) + 48))(v8, 1, v74))
          {
            v75 = sub_1D7257ADC();
            (*(*(v75 - 8) + 8))(v8, v75);
          }
        }

        v76 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
        v77 = *(v76 + 20);
        v78 = swift_getEnumCaseMultiPayload();
        if (v78 == 6 || v78 == 5)
        {
          v79 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v79 - 8) + 48))(v8 + v77, 1, v79))
          {
            v80 = sub_1D7257ADC();
            (*(*(v80 - 8) + 8))(v8 + v77, v80);
          }
        }

        v81 = *(v76 + 24);
        v82 = swift_getEnumCaseMultiPayload();
        if (v82 == 6)
        {
          v84 = type metadata accessor for PuzzleStreak(0);
          v1 = v94;
          if ((*(*(v84 - 8) + 48))(v8 + v81, 1, v84))
          {
            goto LABEL_116;
          }

          goto LABEL_134;
        }

        v1 = v94;
        if (v82 == 5)
        {
          v83 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v83 - 8) + 48))(v8 + v81, 1, v83))
          {
LABEL_134:
            v85 = sub_1D7257ADC();
            (*(*(v85 - 8) + 8))(v8 + v81, v85);
          }
        }
      }

      else
      {
        type metadata accessor for PuzzleStatisticValue(0);
        v62 = swift_getEnumCaseMultiPayload();
        if (v62 == 6 || v62 == 5)
        {
          v63 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v63 - 8) + 48))(v8, 1, v63))
          {
            v64 = sub_1D7257ADC();
            (*(*(v64 - 8) + 8))(v8, v64);
          }
        }
      }

LABEL_116:
      v70 = v6 + v2[5];

      if (*(v70 + 56) >= 0x10uLL)
      {
      }

      sub_1D61CA538(*(v6 + v2[6]), *(v6 + v2[6] + 8));
      v71 = v2[7];
      v72 = sub_1D725D80C();
      (*(*(v72 - 8) + 8))(v6 + v71, v72);
      if (*(v6 + v2[8] + 8))
      {
      }

      (*(v4 + 8))(v0 + ((((v98 + ((v3 + 40) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v1);

      return swift_deallocObject();
    case 0x11u:

      if (*(v6 + 136) >= 3uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v6 + 240) < 0x12uLL)
      {
        goto LABEL_116;
      }

      goto LABEL_87;
    default:
      goto LABEL_116;
  }
}

uint64_t sub_1D5D82E7C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D82F4C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1D5D82F9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D5D82FEC(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return FormatLayoutViewRenderer.analyticsDataProvider.setter(v2, v1);
}

uint64_t sub_1D5D83028()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D83080()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D830C0()
{
  v1 = *(v0 + 24);
  sub_1D61BB5EC(0, qword_1EDF34EF0, type metadata accessor for FeedItem, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = type metadata accessor for FormatItemNodeData(0);
  v7 = *(*(v6 - 1) + 64);
  v178 = *(*(v6 - 1) + 80);
  v179 = v1;
  v180 = (v4 + v5 + v178) & ~v178;
  v8 = *(v1 - 8);
  v177 = *(v8 + 80);

  v9 = v0 + v4;
  v10 = type metadata accessor for FeedItem(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    goto LABEL_2;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v9 + 48) >= 0x12uLL)
      {
        goto LABEL_256;
      }

      goto LABEL_2;
    case 1u:

      if (*(v9 + 80) >= 0x12uLL)
      {
        goto LABEL_256;
      }

      goto LABEL_2;
    case 2u:

      v119 = type metadata accessor for FeedBannerAd(0);
      v120 = *(v119 + 20);
      v121 = sub_1D7260DDC();
      goto LABEL_201;
    case 3u:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v122 = type metadata accessor for FeedHeadline(0);
      v123 = v122[10];
      v124 = v9 + v123 + *(type metadata accessor for FeedHeadline.State(0) + 24);
      v125 = type metadata accessor for SharedItem(0);
      if (!(*(*(v125 - 8) + 48))(v124, 1, v125))
      {
        v126 = sub_1D725891C();
        (*(*(v126 - 8) + 8))(v124, v126);

        v127 = *(v125 + 28);
        v128 = sub_1D72585BC();
        (*(*(v128 - 8) + 8))(v124 + v127, v128);
      }

      v129 = v122[11];
      v130 = sub_1D726045C();
      v131 = *(v130 - 8);
      if (!(*(v131 + 48))(v9 + v129, 1, v130))
      {
        (*(v131 + 8))(v9 + v129, v130);
      }

      if (*(v9 + v122[12] + 8) >= 0x12uLL)
      {
      }

      if (*(v9 + v122[13]) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_2;
    case 4u:
      if (*(v9 + 32) >= 0x12uLL)
      {
      }

      v93 = type metadata accessor for FeedWebEmbed(0);
      v94 = v93[8];
      v95 = sub_1D72585BC();
      v96 = *(v95 - 8);
      v173 = *(v96 + 8);
      v173(v9 + v94, v95);
      v97 = v93[9];
      if (!(*(v96 + 48))(v9 + v97, 1, v95))
      {
        v173(v9 + v97, v95);
      }

      v172 = v95;

      v98 = v9 + v93[12];
      v99 = type metadata accessor for FeedHeadline(0);
      if (!(*(*(v99 - 1) + 48))(v98, 1, v99))
      {
        v176 = v7;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v100 = v99[10];
        v101 = v98 + v100 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v102 = type metadata accessor for SharedItem(0);
        if (!(*(*(v102 - 8) + 48))(v101, 1, v102))
        {
          v103 = sub_1D725891C();
          (*(*(v103 - 8) + 8))(v101, v103);

          v173(v101 + *(v102 + 28), v172);
        }

        v104 = v99[11];
        v105 = sub_1D726045C();
        v170 = *(v105 - 8);
        if (!(*(v170 + 48))(v98 + v104, 1, v105))
        {
          (*(v170 + 8))(v98 + v104, v105);
        }

        if (*(v98 + v99[12] + 8) >= 0x12uLL)
        {
        }

        v7 = v176;
        if (*(v98 + v99[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }
      }

      v106 = v9 + v93[13];
      v107 = type metadata accessor for WebEmbedDataVisualization(0);
      if (!(*(*(v107 - 8) + 48))(v106, 1, v107))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v108 = type metadata accessor for GenericDataVisualization(0);
          v173(v106 + *(v108 + 20), v172);
        }

        else
        {
        }
      }

      goto LABEL_256;
    case 5u:
      goto LABEL_187;
    case 6u:
      v132 = *(v9 + 281);
      if (v132 == 2)
      {
        goto LABEL_191;
      }

      if (v132 == 1)
      {

        if (*(v9 + 80) != 1)
        {
        }

        if (*(v9 + 128) >= 0x12uLL)
        {
        }

        v157 = *(v9 + 144);
        if (!v157)
        {
          goto LABEL_2;
        }

        if (*(v9 + 224) != 1)
        {
        }

        if (*(v9 + 272) < 0x12uLL)
        {
          goto LABEL_2;
        }
      }

      else
      {
        if (*(v9 + 281))
        {
          goto LABEL_2;
        }

LABEL_187:

        if (*(v9 + 80) != 1)
        {
        }

        if (*(v9 + 128) < 0x12uLL)
        {
          goto LABEL_2;
        }
      }

      goto LABEL_256;
    case 7u:
LABEL_191:

      swift_unknownObjectRelease();

      if (*(v9 + 88) != 1)
      {

        if (*(v9 + 120))
        {
          __swift_destroy_boxed_opaque_existential_1((v9 + 96));
        }
      }

      goto LABEL_2;
    case 8u:

      v133 = v9 + *(type metadata accessor for FeedCustomItem(0) + 20);

      v134 = *(type metadata accessor for FormatCustomItem.Resolved(0) + 24);
      v135 = type metadata accessor for FormatCustomItem.Action(0);
      if (!(*(*(v135 - 8) + 48))(v133 + v134, 1, v135))
      {
        v136 = sub_1D72585BC();
        (*(*(v136 - 8) + 8))(v133 + v134, v136);
      }

      goto LABEL_2;
    case 9u:

      if (*(v9 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1((v9 + 32));
      }

      if (*(v9 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1((v9 + 72));
      }

      if (*(v9 + 136))
      {
        __swift_destroy_boxed_opaque_existential_1((v9 + 112));
      }

      goto LABEL_2;
    case 0xAu:

      v119 = type metadata accessor for FeedEngagementBanner(0);
      v120 = *(v119 + 20);
      v121 = sub_1D725C08C();
LABEL_201:
      (*(*(v121 - 8) + 8))(v9 + v120, v121);
      if (*(v9 + *(v119 + 32) + 8) >= 0x12uLL)
      {
        goto LABEL_256;
      }

      goto LABEL_2;
    case 0xBu:

      goto LABEL_2;
    case 0xCu:

      if (*(v9 + 40) >= 0x12uLL)
      {
      }

      if (*(v9 + 48) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      v109 = type metadata accessor for FeedRecipe(0);
      v110 = v109[9];
      v111 = v9 + v110 + *(type metadata accessor for FeedRecipe.State(0) + 20);
      v112 = type metadata accessor for SharedItem(0);
      if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
      {
        v113 = sub_1D725891C();
        (*(*(v113 - 8) + 8))(v111, v113);

        v114 = *(v112 + 28);
        v115 = sub_1D72585BC();
        (*(*(v115 - 8) + 8))(v111 + v114, v115);
      }

      v116 = (v9 + v109[10]);
      if (v116[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v116);
      }

      v117 = (v9 + v109[12]);
      if (v117[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v117);
      }

      v118 = (v9 + v109[13]);
      if (v118[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v118);
      }

      goto LABEL_2;
    case 0xDu:
      goto LABEL_174;
    case 0xEu:
      if (*(v9 + 32) >= 0x12uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v9 + 112))
      {
        __swift_destroy_boxed_opaque_existential_1((v9 + 88));
      }

      if (*(v9 + 152))
      {
        __swift_destroy_boxed_opaque_existential_1((v9 + 128));
      }

      if (*(v9 + 192))
      {
        __swift_destroy_boxed_opaque_existential_1((v9 + 168));
      }

      goto LABEL_2;
    case 0xFu:
      if (*(v9 + 32) >= 0x12uLL)
      {
      }

LABEL_174:

      swift_unknownObjectRelease();
      goto LABEL_2;
    case 0x10u:
      if (*(v9 + 32) >= 0x12uLL)
      {
      }

      v79 = v9 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
      swift_unknownObjectRelease();
      v80 = v79 + *(type metadata accessor for PuzzleStatistic(0) + 20);
      type metadata accessor for PuzzleStatisticCategory(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v161 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          if (!(*(*(v161 - 8) + 48))(v80, 1, v161))
          {
            v162 = sub_1D725891C();
            (*(*(v162 - 8) + 8))(v80, v162);
            v163 = type metadata accessor for PuzzleLeaderboardEntry(0);

            v164 = v80 + *(v163 + 24);

            v165 = *(v164 + 40);
            if (v165 >> 60 != 15)
            {
              sub_1D5B952F8(*(v164 + 32), v165);
            }

LABEL_256:
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v146 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
          v147 = *(v146 + 28);
          v148 = type metadata accessor for PuzzleStreak(0);
          v149 = *(*(v148 - 8) + 48);
          if (!v149(v80 + v147, 1, v148))
          {
            v150 = sub_1D7257ADC();
            (*(*(v150 - 8) + 8))(v80 + v147, v150);
          }

          v151 = *(v146 + 32);
          if (!v149(v80 + v151, 1, v148))
          {
            v152 = sub_1D7257ADC();
            (*(*(v152 - 8) + 8))(v80 + v151, v152);
          }
        }

        goto LABEL_2;
      }

      if (!EnumCaseMultiPayload)
      {
        type metadata accessor for PuzzleStatisticValue(0);
        v158 = swift_getEnumCaseMultiPayload();
        if (v158 == 6 || v158 == 5)
        {
          v159 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v159 - 8) + 48))(v80, 1, v159))
          {
            v160 = sub_1D7257ADC();
            (*(*(v160 - 8) + 8))(v80, v160);
          }
        }

        goto LABEL_2;
      }

      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_2;
      }

      type metadata accessor for PuzzleStatisticValue(0);
      v82 = swift_getEnumCaseMultiPayload();
      if (v82 == 6 || v82 == 5)
      {
        v83 = type metadata accessor for PuzzleStreak(0);
        if (!(*(*(v83 - 8) + 48))(v80, 1, v83))
        {
          v84 = sub_1D7257ADC();
          (*(*(v84 - 8) + 8))(v80, v84);
        }
      }

      v85 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
      v86 = *(v85 + 20);
      v87 = swift_getEnumCaseMultiPayload();
      if (v87 == 6 || v87 == 5)
      {
        v88 = type metadata accessor for PuzzleStreak(0);
        if (!(*(*(v88 - 8) + 48))(v80 + v86, 1, v88))
        {
          v89 = sub_1D7257ADC();
          (*(*(v89 - 8) + 8))(v80 + v86, v89);
        }
      }

      v90 = *(v85 + 24);
      v91 = swift_getEnumCaseMultiPayload();
      if (v91 == 6)
      {
        v168 = type metadata accessor for PuzzleStreak(0);
        if ((*(*(v168 - 8) + 48))(v80 + v90, 1, v168))
        {
          goto LABEL_2;
        }

        goto LABEL_260;
      }

      if (v91 == 5)
      {
        v92 = type metadata accessor for PuzzleStreak(0);
        if (!(*(*(v92 - 8) + 48))(v80 + v90, 1, v92))
        {
LABEL_260:
          v169 = sub_1D7257ADC();
          (*(*(v169 - 8) + 8))(v80 + v90, v169);
        }
      }

LABEL_2:
      v11 = v0 + v180;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          if (*(v11 + 48) >= 0x12uLL)
          {
            goto LABEL_230;
          }

          goto LABEL_231;
        case 1u:

          if (*(v11 + 80) >= 0x12uLL)
          {
            goto LABEL_230;
          }

          goto LABEL_231;
        case 2u:

          v54 = type metadata accessor for FeedBannerAd(0);
          v55 = *(v54 + 20);
          v56 = sub_1D7260DDC();
          goto LABEL_99;
        case 3u:

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v57 = type metadata accessor for FeedHeadline(0);
          v58 = v57[10];
          v59 = v11 + v58 + *(type metadata accessor for FeedHeadline.State(0) + 24);
          v60 = type metadata accessor for SharedItem(0);
          if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
          {
            v61 = sub_1D725891C();
            (*(*(v61 - 8) + 8))(v59, v61);

            v62 = *(v60 + 28);
            v63 = sub_1D72585BC();
            (*(*(v63 - 8) + 8))(v59 + v62, v63);
          }

          v64 = v57[11];
          v65 = sub_1D726045C();
          v66 = *(v65 - 8);
          if (!(*(v66 + 48))(v11 + v64, 1, v65))
          {
            (*(v66 + 8))(v11 + v64, v65);
          }

          if (*(v11 + v57[12] + 8) >= 0x12uLL)
          {
          }

          if (*(v11 + v57[13]) >= 3uLL)
          {
            swift_unknownObjectRelease();
          }

          goto LABEL_231;
        case 4u:
          v26 = v7;
          if (*(v11 + 32) >= 0x12uLL)
          {
          }

          v27 = type metadata accessor for FeedWebEmbed(0);
          v28 = v27[8];
          v29 = sub_1D72585BC();
          v30 = *(v29 - 8);
          v171 = *(v30 + 8);
          v171(v11 + v28, v29);
          v31 = v27[9];
          v174 = v29;
          if (!(*(v30 + 48))(v11 + v31, 1, v29))
          {
            v171(v11 + v31, v29);
          }

          v32 = v11 + v27[12];
          v33 = type metadata accessor for FeedHeadline(0);
          v7 = v26;
          if (!(*(*(v33 - 1) + 48))(v32, 1, v33))
          {
            v175 = v26;

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v34 = v33[10];
            v35 = v32 + v34 + *(type metadata accessor for FeedHeadline.State(0) + 24);
            v36 = type metadata accessor for SharedItem(0);
            if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
            {
              v37 = sub_1D725891C();
              (*(*(v37 - 8) + 8))(v35, v37);

              v171(v35 + *(v36 + 28), v174);
            }

            v38 = v33[11];
            v39 = sub_1D726045C();
            v40 = *(v39 - 8);
            if (!(*(v40 + 48))(v32 + v38, 1, v39))
            {
              (*(v40 + 8))(v32 + v38, v39);
            }

            if (*(v32 + v33[12] + 8) >= 0x12uLL)
            {
            }

            v7 = v175;
            if (*(v32 + v33[13]) >= 3uLL)
            {
              swift_unknownObjectRelease();
            }
          }

          v41 = v11 + v27[13];
          v42 = type metadata accessor for WebEmbedDataVisualization(0);
          if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {

              v43 = type metadata accessor for GenericDataVisualization(0);
              v171(v41 + *(v43 + 20), v174);
            }

            else
            {
            }
          }

          goto LABEL_230;
        case 5u:
          goto LABEL_85;
        case 6u:
          v67 = *(v11 + 281);
          if (v67 == 2)
          {
            goto LABEL_89;
          }

          if (v67 == 1)
          {

            if (*(v11 + 80) != 1)
            {
            }

            if (*(v11 + 128) >= 0x12uLL)
            {
            }

            v137 = *(v11 + 144);
            if (v137)
            {

              if (*(v11 + 224) != 1)
              {
              }

              if (*(v11 + 272) >= 0x12uLL)
              {
                goto LABEL_230;
              }
            }
          }

          else
          {
            if (*(v11 + 281))
            {
              goto LABEL_231;
            }

LABEL_85:

            if (*(v11 + 80) != 1)
            {
            }

            if (*(v11 + 128) >= 0x12uLL)
            {
              goto LABEL_230;
            }
          }

          goto LABEL_231;
        case 7u:
LABEL_89:

          swift_unknownObjectRelease();

          if (*(v11 + 88) != 1)
          {

            if (*(v11 + 120))
            {
              __swift_destroy_boxed_opaque_existential_1((v11 + 96));
            }
          }

          goto LABEL_231;
        case 8u:

          v68 = v11 + *(type metadata accessor for FeedCustomItem(0) + 20);

          v69 = *(type metadata accessor for FormatCustomItem.Resolved(0) + 24);
          v70 = type metadata accessor for FormatCustomItem.Action(0);
          if (!(*(*(v70 - 8) + 48))(v68 + v69, 1, v70))
          {
            v71 = sub_1D72585BC();
            (*(*(v71 - 8) + 8))(v68 + v69, v71);
          }

          goto LABEL_231;
        case 9u:

          if (*(v11 + 56))
          {
            __swift_destroy_boxed_opaque_existential_1((v11 + 32));
          }

          if (*(v11 + 96))
          {
            __swift_destroy_boxed_opaque_existential_1((v11 + 72));
          }

          if (*(v11 + 136))
          {
            __swift_destroy_boxed_opaque_existential_1((v11 + 112));
          }

          goto LABEL_231;
        case 0xAu:

          v54 = type metadata accessor for FeedEngagementBanner(0);
          v55 = *(v54 + 20);
          v56 = sub_1D725C08C();
LABEL_99:
          (*(*(v56 - 8) + 8))(v11 + v55, v56);
          if (*(v11 + *(v54 + 32) + 8) >= 0x12uLL)
          {
            goto LABEL_230;
          }

          goto LABEL_231;
        case 0xBu:

          goto LABEL_231;
        case 0xCu:

          if (*(v11 + 40) >= 0x12uLL)
          {
          }

          if (*(v11 + 48) >= 3uLL)
          {
            swift_unknownObjectRelease();
          }

          v44 = type metadata accessor for FeedRecipe(0);
          v45 = v44[9];
          v46 = v11 + v45 + *(type metadata accessor for FeedRecipe.State(0) + 20);
          v47 = type metadata accessor for SharedItem(0);
          if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
          {
            v48 = sub_1D725891C();
            (*(*(v48 - 8) + 8))(v46, v48);

            v49 = *(v47 + 28);
            v50 = sub_1D72585BC();
            (*(*(v50 - 8) + 8))(v46 + v49, v50);
          }

          v51 = (v11 + v44[10]);
          if (v51[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v51);
          }

          v52 = (v11 + v44[12]);
          if (v52[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v52);
          }

          v53 = (v11 + v44[13]);
          if (v53[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v53);
          }

          goto LABEL_231;
        case 0xDu:
          goto LABEL_72;
        case 0xEu:
          if (*(v11 + 32) >= 0x12uLL)
          {
          }

          swift_unknownObjectRelease();

          if (*(v11 + 112))
          {
            __swift_destroy_boxed_opaque_existential_1((v11 + 88));
          }

          if (*(v11 + 152))
          {
            __swift_destroy_boxed_opaque_existential_1((v11 + 128));
          }

          if (*(v11 + 192))
          {
            __swift_destroy_boxed_opaque_existential_1((v11 + 168));
          }

          goto LABEL_231;
        case 0xFu:
          if (*(v11 + 32) >= 0x12uLL)
          {
          }

LABEL_72:

          swift_unknownObjectRelease();
          goto LABEL_231;
        case 0x10u:
          if (*(v11 + 32) >= 0x12uLL)
          {
          }

          v12 = v11 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
          swift_unknownObjectRelease();
          v13 = v12 + *(type metadata accessor for PuzzleStatistic(0) + 20);
          type metadata accessor for PuzzleStatisticCategory(0);
          v14 = swift_getEnumCaseMultiPayload();
          if (v14 > 1)
          {
            if (v14 == 2)
            {
              v141 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
              if (!(*(*(v141 - 8) + 48))(v13, 1, v141))
              {
                v142 = sub_1D725891C();
                (*(*(v142 - 8) + 8))(v13, v142);
                v143 = type metadata accessor for PuzzleLeaderboardEntry(0);

                v144 = v13 + *(v143 + 24);

                v145 = *(v144 + 40);
                if (v145 >> 60 != 15)
                {
                  sub_1D5B952F8(*(v144 + 32), v145);
                }

LABEL_230:
              }
            }

            else if (v14 == 3)
            {
              v72 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
              v73 = *(v72 + 28);
              v74 = type metadata accessor for PuzzleStreak(0);
              v75 = *(*(v74 - 8) + 48);
              if (!v75(v13 + v73, 1, v74))
              {
                v76 = sub_1D7257ADC();
                (*(*(v76 - 8) + 8))(v13 + v73, v76);
              }

              v77 = *(v72 + 32);
              if (!v75(v13 + v77, 1, v74))
              {
                v78 = sub_1D7257ADC();
                (*(*(v78 - 8) + 8))(v13 + v77, v78);
              }
            }
          }

          else if (v14)
          {
            if (v14 != 1)
            {
              goto LABEL_231;
            }

            type metadata accessor for PuzzleStatisticValue(0);
            v15 = swift_getEnumCaseMultiPayload();
            if (v15 == 6 || v15 == 5)
            {
              v16 = type metadata accessor for PuzzleStreak(0);
              if (!(*(*(v16 - 8) + 48))(v13, 1, v16))
              {
                v17 = sub_1D7257ADC();
                (*(*(v17 - 8) + 8))(v13, v17);
              }
            }

            v18 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
            v19 = *(v18 + 20);
            v20 = swift_getEnumCaseMultiPayload();
            if (v20 == 6 || v20 == 5)
            {
              v21 = type metadata accessor for PuzzleStreak(0);
              if (!(*(*(v21 - 8) + 48))(v13 + v19, 1, v21))
              {
                v22 = sub_1D7257ADC();
                (*(*(v22 - 8) + 8))(v13 + v19, v22);
              }
            }

            v23 = *(v18 + 24);
            v24 = swift_getEnumCaseMultiPayload();
            if (v24 == 6)
            {
              v166 = type metadata accessor for PuzzleStreak(0);
              if ((*(*(v166 - 8) + 48))(v13 + v23, 1, v166))
              {
                goto LABEL_231;
              }

              goto LABEL_258;
            }

            if (v24 == 5)
            {
              v25 = type metadata accessor for PuzzleStreak(0);
              if (!(*(*(v25 - 8) + 48))(v13 + v23, 1, v25))
              {
LABEL_258:
                v167 = sub_1D7257ADC();
                (*(*(v167 - 8) + 8))(v13 + v23, v167);
              }
            }
          }

          else
          {
            type metadata accessor for PuzzleStatisticValue(0);
            v138 = swift_getEnumCaseMultiPayload();
            if (v138 == 6 || v138 == 5)
            {
              v139 = type metadata accessor for PuzzleStreak(0);
              if (!(*(*(v139 - 8) + 48))(v13, 1, v139))
              {
                v140 = sub_1D7257ADC();
                (*(*(v140 - 8) + 8))(v13, v140);
              }
            }
          }

LABEL_231:
          v153 = v11 + v6[5];

          if (*(v153 + 56) >= 0x10uLL)
          {
          }

          sub_1D61CA538(*(v11 + v6[6]), *(v11 + v6[6] + 8));
          v154 = v6[7];
          v155 = sub_1D725D80C();
          (*(*(v155 - 8) + 8))(v11 + v154, v155);
          if (*(v11 + v6[8] + 8))
          {
          }

          (*(v8 + 8))(v0 + ((((v7 + v180 + 7) & 0xFFFFFFFFFFFFFFF8) + v177 + 8) & ~v177), v179);

          return swift_deallocObject();
        case 0x11u:

          if (*(v11 + 136) >= 3uLL)
          {
          }

          swift_unknownObjectRelease();

          if (*(v11 + 240) < 0x12uLL)
          {
            goto LABEL_231;
          }

          goto LABEL_230;
        default:
          goto LABEL_231;
      }

    case 0x11u:

      if (*(v9 + 136) >= 3uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v9 + 240) >= 0x12uLL)
      {
        goto LABEL_256;
      }

      goto LABEL_2;
    default:
      goto LABEL_2;
  }
}

uint64_t sub_1D5D8557C()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D855B4()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 80))
  {
  }

  v5 = (v3 + 96) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1D5D856DC()
{

  return swift_deallocObject();
}

uint64_t sub_1D5D85714()
{
  MEMORY[0x1DA6FD660](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1D5D85798()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D5D857E4()
{
  v1 = *(v0 + 24);
  v2 = *(type metadata accessor for FeedItem(0) - 8);
  v96 = *(v2 + 64);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);

  v6 = v0 + v3;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      if (*(v6 + 48) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      goto LABEL_125;
    case 1u:

      if (*(v6 + 80) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      goto LABEL_125;
    case 2u:

      v47 = type metadata accessor for FeedBannerAd(0);
      v48 = *(v47 + 20);
      v49 = sub_1D7260DDC();
      goto LABEL_95;
    case 3u:
      v95 = v1;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v50 = type metadata accessor for FeedHeadline(0);
      v51 = v50[10];
      v52 = v6 + v51 + *(type metadata accessor for FeedHeadline.State(0) + 24);
      v53 = type metadata accessor for SharedItem(0);
      if (!(*(*(v53 - 8) + 48))(v52, 1, v53))
      {
        v54 = sub_1D725891C();
        (*(*(v54 - 8) + 8))(v52, v54);

        v55 = *(v53 + 28);
        v56 = sub_1D72585BC();
        (*(*(v56 - 8) + 8))(v52 + v55, v56);
      }

      v57 = v50[11];
      v58 = sub_1D726045C();
      v59 = *(v58 - 8);
      if (!(*(v59 + 48))(v6 + v57, 1, v58))
      {
        (*(v59 + 8))(v6 + v57, v58);
      }

      v1 = v95;
      if (*(v6 + v50[12] + 8) >= 0x12uLL)
      {
      }

      if (*(v6 + v50[13]) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      goto LABEL_125;
    case 4u:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      v94 = v1;

      v21 = type metadata accessor for FeedWebEmbed(0);
      v22 = v21[8];
      v23 = sub_1D72585BC();
      v24 = *(v23 - 8);
      v91 = *(v24 + 8);
      v91(v6 + v22, v23);
      v25 = v21[9];
      if (!(*(v24 + 48))(v6 + v25, 1, v23))
      {
        v91(v6 + v25, v23);
      }

      v90 = v23;

      v26 = v6 + v21[12];
      v27 = type metadata accessor for FeedHeadline(0);
      if (!(*(*(v27 - 1) + 48))(v26, 1, v27))
      {

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v28 = v27[10];
        v86 = v26 + v28 + *(type metadata accessor for FeedHeadline.State(0) + 24);
        v88 = type metadata accessor for SharedItem(0);
        if (!(*(*(v88 - 8) + 48))(v86, 1))
        {
          v29 = sub_1D725891C();
          (*(*(v29 - 8) + 8))(v86, v29);

          v91(v86 + *(v88 + 28), v90);
        }

        v30 = v27[11];
        v31 = sub_1D726045C();
        v87 = *(v31 - 8);
        v89 = v30;
        v32 = v26 + v30;
        v33 = v31;
        if (!(*(v87 + 48))(v32, 1, v31))
        {
          (*(v87 + 8))(v26 + v89, v33);
        }

        if (*(v26 + v27[12] + 8) >= 0x12uLL)
        {
        }

        if (*(v26 + v27[13]) >= 3uLL)
        {
          swift_unknownObjectRelease();
        }
      }

      v34 = v6 + v21[13];
      v35 = type metadata accessor for WebEmbedDataVisualization(0);
      if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
      {
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v36 = type metadata accessor for GenericDataVisualization(0);
          v91(v34 + *(v36 + 20), v90);
        }

        else
        {
        }
      }

      goto LABEL_124;
    case 5u:
      goto LABEL_81;
    case 6u:
      v60 = *(v6 + 281);
      if (v60 == 2)
      {
        goto LABEL_85;
      }

      if (v60 == 1)
      {

        if (*(v6 + 80) != 1)
        {
        }

        if (*(v6 + 128) >= 0x12uLL)
        {
        }

        v74 = *(v6 + 144);
        if (v74)
        {

          if (*(v6 + 224) != 1)
          {
          }

          if (*(v6 + 272) >= 0x12uLL)
          {
            goto LABEL_96;
          }
        }
      }

      else
      {
        if (*(v6 + 281))
        {
          goto LABEL_125;
        }

LABEL_81:

        if (*(v6 + 80) != 1)
        {
        }

        if (*(v6 + 128) >= 0x12uLL)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_125;
    case 7u:
LABEL_85:

      swift_unknownObjectRelease();

      if (*(v6 + 88) != 1)
      {

        if (*(v6 + 120))
        {
          __swift_destroy_boxed_opaque_existential_1((v6 + 96));
        }
      }

      goto LABEL_125;
    case 8u:
      v94 = v1;

      v61 = v6 + *(type metadata accessor for FeedCustomItem(0) + 20);

      v62 = *(type metadata accessor for FormatCustomItem.Resolved(0) + 24);
      v63 = type metadata accessor for FormatCustomItem.Action(0);
      if (!(*(*(v63 - 8) + 48))(v61 + v62, 1, v63))
      {
        v64 = sub_1D72585BC();
        (*(*(v64 - 8) + 8))(v61 + v62, v64);
      }

LABEL_124:

      v1 = v94;
      goto LABEL_125;
    case 9u:

      if (*(v6 + 56))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 32));
      }

      if (*(v6 + 96))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 72));
      }

      if (*(v6 + 136))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 112));
      }

      goto LABEL_125;
    case 0xAu:

      v47 = type metadata accessor for FeedEngagementBanner(0);
      v48 = *(v47 + 20);
      v49 = sub_1D725C08C();
LABEL_95:
      (*(*(v49 - 8) + 8))(v6 + v48, v49);
      if (*(v6 + *(v47 + 32) + 8) >= 0x12uLL)
      {
        goto LABEL_96;
      }

      goto LABEL_125;
    case 0xBu:

      goto LABEL_125;
    case 0xCu:

      if (*(v6 + 40) >= 0x12uLL)
      {
      }

      if (*(v6 + 48) >= 3uLL)
      {
        swift_unknownObjectRelease();
      }

      v37 = type metadata accessor for FeedRecipe(0);
      v38 = v37[9];
      v39 = v6 + v38 + *(type metadata accessor for FeedRecipe.State(0) + 20);
      v40 = type metadata accessor for SharedItem(0);
      if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
      {
        v41 = sub_1D725891C();
        (*(*(v41 - 8) + 8))(v39, v41);

        v42 = *(v40 + 28);
        v43 = sub_1D72585BC();
        (*(*(v43 - 8) + 8))(v39 + v42, v43);
      }

      v44 = (v6 + v37[10]);
      if (v44[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v44);
      }

      v45 = (v6 + v37[12]);
      if (v45[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v45);
      }

      v46 = (v6 + v37[13]);
      if (v46[3])
      {
        __swift_destroy_boxed_opaque_existential_1(v46);
      }

      goto LABEL_125;
    case 0xDu:
      goto LABEL_68;
    case 0xEu:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v6 + 112))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 88));
      }

      if (*(v6 + 152))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 128));
      }

      if (*(v6 + 192))
      {
        __swift_destroy_boxed_opaque_existential_1((v6 + 168));
      }

      goto LABEL_125;
    case 0xFu:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

LABEL_68:

      swift_unknownObjectRelease();
      goto LABEL_125;
    case 0x10u:
      if (*(v6 + 32) >= 0x12uLL)
      {
      }

      v7 = v6 + *(type metadata accessor for FeedPuzzleStatistic(0) + 32);
      swift_unknownObjectRelease();
      v8 = v7 + *(type metadata accessor for PuzzleStatistic(0) + 20);
      type metadata accessor for PuzzleStatisticCategory(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v78 = type metadata accessor for PuzzleStatisticsGameCenterLeaderboardResult(0);
          if (!(*(*(v78 - 8) + 48))(v8, 1, v78))
          {
            v79 = sub_1D725891C();
            (*(*(v79 - 8) + 8))(v8, v79);
            v80 = type metadata accessor for PuzzleLeaderboardEntry(0);

            v81 = v8 + *(v80 + 24);

            v82 = *(v81 + 40);
            if (v82 >> 60 != 15)
            {
              sub_1D5B952F8(*(v81 + 32), v82);
            }

LABEL_96:
          }
        }

        else if (EnumCaseMultiPayload == 3)
        {
          v65 = v8;
          v93 = type metadata accessor for PuzzleStatisticsGroupedValue(0);
          v66 = *(v93 + 28);
          v67 = type metadata accessor for PuzzleStreak(0);
          v68 = *(*(v67 - 8) + 48);
          v92 = v66;
          v69 = v65 + v66;
          v70 = v65;
          if (!v68(v69, 1, v67))
          {
            v71 = sub_1D7257ADC();
            (*(*(v71 - 8) + 8))(v65 + v92, v71);
          }

          v72 = *(v93 + 32);
          if (!v68(v70 + v72, 1, v67))
          {
            v73 = sub_1D7257ADC();
            (*(*(v73 - 8) + 8))(v70 + v72, v73);
          }
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          goto LABEL_125;
        }

        type metadata accessor for PuzzleStatisticValue(0);
        v10 = swift_getEnumCaseMultiPayload();
        if (v10 == 6 || v10 == 5)
        {
          v11 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v11 - 8) + 48))(v8, 1, v11))
          {
            v12 = sub_1D7257ADC();
            (*(*(v12 - 8) + 8))(v8, v12);
          }
        }

        v13 = type metadata accessor for PuzzleStatisticDifficultyLevelValue(0);
        v14 = *(v13 + 20);
        v15 = swift_getEnumCaseMultiPayload();
        if (v15 == 6 || v15 == 5)
        {
          v16 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v16 - 8) + 48))(v8 + v14, 1, v16))
          {
            v17 = sub_1D7257ADC();
            (*(*(v17 - 8) + 8))(v8 + v14, v17);
          }
        }

        v18 = *(v13 + 24);
        v19 = swift_getEnumCaseMultiPayload();
        if (v19 == 6)
        {
          v84 = type metadata accessor for PuzzleStreak(0);
          if ((*(*(v84 - 8) + 48))(v8 + v18, 1, v84))
          {
            goto LABEL_125;
          }

          goto LABEL_129;
        }

        if (v19 == 5)
        {
          v20 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v20 - 8) + 48))(v8 + v18, 1, v20))
          {
LABEL_129:
            v85 = sub_1D7257ADC();
            (*(*(v85 - 8) + 8))(v8 + v18, v85);
          }
        }
      }

      else
      {
        type metadata accessor for PuzzleStatisticValue(0);
        v75 = swift_getEnumCaseMultiPayload();
        if (v75 == 6 || v75 == 5)
        {
          v76 = type metadata accessor for PuzzleStreak(0);
          if (!(*(*(v76 - 8) + 48))(v8, 1, v76))
          {
            v77 = sub_1D7257ADC();
            (*(*(v77 - 8) + 8))(v8, v77);
          }
        }
      }

LABEL_125:

      (*(v4 + 8))(v0 + ((((v96 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v1);

      return swift_deallocObject();
    case 0x11u:

      if (*(v6 + 136) >= 3uLL)
      {
      }

      swift_unknownObjectRelease();

      if (*(v6 + 240) < 0x12uLL)
      {
        goto LABEL_125;
      }

      goto LABEL_96;
    default:
      goto LABEL_125;
  }
}