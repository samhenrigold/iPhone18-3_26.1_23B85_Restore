void *sub_100E6E9EC@<X0>(void *a1@<X8>)
{
  result = sub_100AB0A80();
  *a1 = result;
  return result;
}

void *sub_100E6EA18@<X0>(void *a1@<X8>)
{
  result = sub_100AB1A78();
  *a1 = result;
  return result;
}

uint64_t sub_100E6EA44@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v3 - 8);
  v39 = &v32 - v4;
  v5 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v32 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - v12;
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v16 - 8);
  v37 = (&v32 - v17);
  v18 = *(*(a1 + 128) + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v19 = sub_1000076D4(v7, qword_10177C0D8);
  v20 = *(v8 + 16);
  v35 = v15;
  v20(v15, v19, v7);
  v20(v13, v15, v7);
  v21 = *(v5 + 40);
  v34 = v21;
  v32 = type metadata accessor for DirectorySequence();
  v22 = *(*(v32 - 8) + 56);
  v33 = v5;
  v23 = &v38[v21];
  v24 = v38;
  v22(v23, 1, 1, v32);
  v20(v24, v13, v7);
  *(v24 + *(v5 + 36)) = v18;
  v20(v36, v13, v7);

  v25 = v39;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v26 = *(v8 + 8);
  v26(v13, v7);
  v26(v35, v7);
  v22(v25, 0, 1, v32);
  sub_10062BF70(v25, v24 + v34);
  v27 = *(v40 + 56);
  v28 = v37;
  v29 = v33;
  v27(v37, 1, 1, v33);
  sub_10000B3A8(v28, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v24, v28, &qword_1016A7828, &unk_1013D7340);
  v27(v28, 0, 1, v29);
  v30 = sub_100B34BBC(v28);
  result = sub_10000B3A8(v28, &qword_1016A7830, &unk_1013D69E0);
  *v41 = v30;
  return result;
}

uint64_t sub_100E6EEB8@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v3 - 8);
  v39 = &v32 - v4;
  v5 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v32 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - v12;
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v16 - 8);
  v37 = (&v32 - v17);
  v18 = *(*(a1 + 128) + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v19 = sub_1000076D4(v7, qword_10177AC60);
  v20 = *(v8 + 16);
  v35 = v15;
  v20(v15, v19, v7);
  v20(v13, v15, v7);
  v21 = *(v5 + 40);
  v34 = v21;
  v32 = type metadata accessor for DirectorySequence();
  v22 = *(*(v32 - 8) + 56);
  v33 = v5;
  v23 = &v38[v21];
  v24 = v38;
  v22(v23, 1, 1, v32);
  v20(v24, v13, v7);
  *(v24 + *(v5 + 36)) = v18;
  v20(v36, v13, v7);

  v25 = v39;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v26 = *(v8 + 8);
  v26(v13, v7);
  v26(v35, v7);
  v22(v25, 0, 1, v32);
  sub_10062BF70(v25, v24 + v34);
  v27 = *(v40 + 56);
  v28 = v37;
  v29 = v33;
  v27(v37, 1, 1, v33);
  sub_10000B3A8(v28, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v24, v28, &qword_1016A5978, &qword_101410D20);
  v27(v28, 0, 1, v29);
  v30 = sub_100B33E08(v28);
  result = sub_10000B3A8(v28, &qword_1016A5980, &unk_1013B3480);
  *v41 = v30;
  return result;
}

void sub_100E6F32C(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, void *a4@<X8>)
{
  v47 = a3;
  v48 = a2;
  v49 = a4;
  v5 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v5 - 8);
  v45 = &v37 - v6;
  v7 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v41 = &v37 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - v14;
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v18 - 8);
  v44 = &v37 - v19;
  v42 = *(*(a1 + 128) + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000076D4(v9, qword_10177C0D8);
  v21 = *(v10 + 16);
  v21(v17, v20, v9);
  v21(v15, v17, v9);
  v22 = *(v7 + 40);
  v40 = v22;
  v23 = type metadata accessor for DirectorySequence();
  v37 = v17;
  v38 = v23;
  v24 = v15;
  v25 = *(*(v23 - 8) + 56);
  v26 = v7;
  v39 = v7;
  v27 = v41;
  v25(&v41[v22], 1, 1, v23);
  v21(v27, v24, v9);
  v28 = v43;
  *(v27 + *(v26 + 36)) = v42;
  v21(v28, v24, v9);

  v29 = v45;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v30 = *(v10 + 8);
  v30(v24, v9);
  v30(v37, v9);
  v25(v29, 0, 1, v38);
  sub_10062BF70(v29, v27 + v40);
  v31 = *(v46 + 56);
  v32 = v44;
  v33 = v39;
  v31(v44, 1, 1, v39);
  sub_10000B3A8(v32, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v27, v32, &qword_1016A7828, &unk_1013D7340);
  v34 = (v31)(v32, 0, 1, v33);
  __chkstk_darwin(v34);
  v35 = v48;
  *(&v37 - 2) = v47;
  *(&v37 - 1) = v35;
  sub_100E6B40C(sub_10071F7A0, (&v37 - 4));
  *v49 = v36;
}

uint64_t sub_100E6F814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v45 = a3;
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v42 = &v35 - v5;
  v6 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v41 = &v35 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v17 - 8);
  v40 = &v35 - v18;
  v19 = *(*(a1 + 128) + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v20 = sub_1000076D4(v8, qword_10177AC60);
  v21 = *(v9 + 16);
  v38 = v16;
  v21(v16, v20, v8);
  v21(v14, v16, v8);
  v22 = v14;
  v23 = *(v6 + 40);
  v37 = v23;
  v35 = type metadata accessor for DirectorySequence();
  v24 = *(*(v35 - 8) + 56);
  v36 = v6;
  v25 = &v41[v23];
  v26 = v41;
  v24(v25, 1, 1, v35);
  v21(v26, v22, v8);
  *&v26[*(v6 + 36)] = v19;
  v27 = v26;
  v21(v39, v22, v8);

  v28 = v42;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v29 = *(v9 + 8);
  v29(v22, v8);
  v29(v38, v8);
  v24(v28, 0, 1, v35);
  sub_10062BF70(v28, &v26[v37]);
  v30 = *(v43 + 56);
  v31 = v40;
  v32 = v36;
  v30(v40, 1, 1, v36);
  sub_10000B3A8(v31, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v27, v31, &qword_1016A5978, &qword_101410D20);
  v33 = (v30)(v31, 0, 1, v32);
  __chkstk_darwin(v33);
  *(&v35 - 2) = v44;
  sub_1012BC940(sub_100E75AA0, (&v35 - 4), v45);
  return sub_10000B3A8(v31, &qword_1016A5980, &unk_1013B3480);
}

void sub_100E6FCC4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v46 = a2;
  v47 = a3;
  v4 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v4 - 8);
  v44 = &v35 - v5;
  v6 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v45 = *(v6 - 8);
  __chkstk_darwin(v6);
  v40 = &v35 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v35 - v13;
  __chkstk_darwin(v12);
  v16 = &v35 - v15;
  v17 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  __chkstk_darwin(v17 - 8);
  v43 = &v35 - v18;
  v41 = *(*(a1 + 128) + 168);
  if (qword_101694680 != -1)
  {
    swift_once();
  }

  v19 = sub_1000076D4(v8, qword_10177AC60);
  v20 = *(v9 + 16);
  v20(v16, v19, v8);
  v20(v14, v16, v8);
  v21 = v14;
  v22 = *(v6 + 40);
  v39 = v22;
  v23 = type metadata accessor for DirectorySequence();
  v36 = v16;
  v37 = v23;
  v24 = *(*(v23 - 8) + 56);
  v25 = v6;
  v38 = v6;
  v26 = v40;
  v24(&v40[v22], 1, 1, v23);
  v20(v26, v21, v8);
  v27 = v42;
  *(v26 + *(v25 + 36)) = v41;
  v20(v27, v21, v8);

  v28 = v44;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v29 = *(v9 + 8);
  v29(v21, v8);
  v29(v36, v8);
  v24(v28, 0, 1, v37);
  sub_10062BF70(v28, v26 + v39);
  v30 = *(v45 + 56);
  v31 = v43;
  v32 = v38;
  v30(v43, 1, 1, v38);
  sub_10000B3A8(v31, &qword_1016A5988, &qword_1013B3490);
  sub_1000D2AD8(v26, v31, &qword_1016A5978, &qword_101410D20);
  v33 = (v30)(v31, 0, 1, v32);
  __chkstk_darwin(v33);
  *(&v35 - 2) = v46;
  sub_100E6C1A4(sub_10062BFE0, (&v35 - 4));
  *v47 = v34;
}

void sub_100E70190(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v47 = a3;
  v46 = a2;
  v48 = a4;
  v5 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v5 - 8);
  v44 = &v36 - v6;
  v7 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v36 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v36 - v14;
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  __chkstk_darwin(v18 - 8);
  v43 = &v36 - v19;
  v41 = *(*(a1 + 128) + 168);
  if (qword_101694EB8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000076D4(v9, qword_10177C0D8);
  v21 = *(v10 + 16);
  v21(v17, v20, v9);
  v21(v15, v17, v9);
  v22 = *(v7 + 40);
  v39 = v22;
  v23 = type metadata accessor for DirectorySequence();
  v36 = v17;
  v37 = v23;
  v24 = v15;
  v25 = *(*(v23 - 8) + 56);
  v26 = v7;
  v38 = v7;
  v27 = v40;
  v25(&v40[v22], 1, 1, v23);
  v21(v27, v24, v9);
  v28 = v42;
  *(v27 + *(v26 + 36)) = v41;
  v21(v28, v24, v9);

  v29 = v44;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v30 = *(v10 + 8);
  v30(v24, v9);
  v30(v36, v9);
  v25(v29, 0, 1, v37);
  sub_10062BF70(v29, v27 + v39);
  v31 = *(v45 + 56);
  v32 = v43;
  v33 = v38;
  v31(v43, 1, 1, v38);
  sub_10000B3A8(v32, &qword_1016A7838, &unk_1013EB250);
  sub_1000D2AD8(v27, v32, &qword_1016A7828, &unk_1013D7340);
  v34 = (v31)(v32, 0, 1, v33);
  __chkstk_darwin(v34);
  *(&v36 - 2) = v46;
  *(&v36 - 8) = v47 & 1;
  sub_100E6B40C(sub_100B25D9C, (&v36 - 4));
  *v48 = v35;
}

uint64_t sub_100E70638@<X0>(uint64_t a1@<X0>, size_t *a2@<X8>)
{
  v44 = a2;
  v3 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v3 - 8);
  v42 = v34 - v4;
  v5 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = v34 - v6;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v39 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = v34 - v12;
  __chkstk_darwin(v11);
  v15 = v34 - v14;
  v16 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  __chkstk_darwin(v16 - 8);
  v40 = v34 - v17;
  v37 = *(*(a1 + 128) + 168);
  if (qword_101694E90 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v7, qword_10177C090);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  v18 = v15;
  v38 = v15;
  v19 = *(v8 + 16);
  v20 = v13;
  v19(v13, v18, v7);
  v21 = *(v5 + 40);
  v36 = v21;
  v22 = type metadata accessor for DirectorySequence();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v34[1] = v23 + 56;
  v35 = v5;
  v25 = v41;
  v24(&v41[v21], 1, 1, v22);
  v19(v25, v20, v7);
  *(v25 + *(v5 + 36)) = v37;
  v19(v39, v20, v7);

  v26 = v42;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v27 = *(v8 + 8);
  v27(v20, v7);
  v27(v38, v7);
  v24(v26, 0, 1, v22);
  sub_10062BF70(v26, v25 + v36);
  v28 = *(v43 + 56);
  v29 = v40;
  v30 = v35;
  v28(v40, 1, 1, v35);
  sub_10000B3A8(v29, &qword_1016B5520, &qword_1013D69F0);
  sub_1000D2AD8(v25, v29, &qword_1016B5510, &unk_1013D73B0);
  v28(v29, 0, 1, v30);
  sub_1000BC4D4(&qword_1016B5528, &qword_1013D69F8);
  v31 = swift_allocObject();
  sub_1000D2AD8(v29, v31 + *(*v31 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
  v32 = sub_100B38FD8((v31 + *(*v31 + class metadata base offset for _SequenceBox + 16)));
  swift_setDeallocating();
  sub_10000B3A8(v31 + *(*v31 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
  result = swift_deallocClassInstance();
  *v44 = v32;
  return result;
}

uint64_t sub_100E70BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v48 = a3;
  v5 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v5 - 8);
  v46 = v37 - v6;
  v7 = sub_1000BC4D4(&qword_1016B5510, &unk_1013D73B0);
  v47 = *(v7 - 8);
  __chkstk_darwin(v7);
  v45 = v37 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v42 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v37 - v14;
  __chkstk_darwin(v13);
  v17 = v37 - v16;
  v18 = sub_1000BC4D4(&qword_1016B5518, &unk_1013D69D0);
  __chkstk_darwin(v18 - 8);
  v44 = v37 - v19;
  v40 = *(*(a1 + 128) + 168);
  if (qword_101694E90 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177C090);
  UUID.uuidString.getter();
  v43 = a2;
  URL.appendingPathComponent(_:isDirectory:)();

  v20 = v17;
  v41 = v17;
  v21 = *(v10 + 16);
  v22 = v15;
  v21(v15, v20, v9);
  v23 = *(v7 + 40);
  v39 = v23;
  v24 = type metadata accessor for DirectorySequence();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v37[1] = v25 + 56;
  v38 = v7;
  v27 = v45;
  v26(&v45[v23], 1, 1, v24);
  v21(v27, v22, v9);
  *(v27 + *(v7 + 36)) = v40;
  v21(v42, v22, v9);

  v28 = v46;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v29 = *(v10 + 8);
  v29(v22, v9);
  v29(v41, v9);
  v26(v28, 0, 1, v24);
  sub_10062BF70(v28, v27 + v39);
  v30 = *(v47 + 56);
  v31 = v44;
  v32 = v38;
  v30(v44, 1, 1, v38);
  sub_10000B3A8(v31, &qword_1016B5520, &qword_1013D69F0);
  sub_1000D2AD8(v27, v31, &qword_1016B5510, &unk_1013D73B0);
  v30(v31, 0, 1, v32);
  sub_1000BC4D4(&qword_1016B5528, &qword_1013D69F8);
  v33 = swift_allocObject();
  v34 = sub_1000D2AD8(v31, v33 + *(*v33 + class metadata base offset for _SequenceBox + 16), &qword_1016B5518, &unk_1013D69D0);
  __chkstk_darwin(v34);
  v37[-2] = v43;
  v35 = sub_1005C84F0(sub_100E76818, &v37[-4]);

  *v48 = v35;
  return result;
}

void *sub_100E7116C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_10169A608, &unk_1013BCC20);
  v5 = v4[20];
  v6 = v4[24];
  result = sub_100AB4508(a2, a2 + v4[12], a2 + v4[16], a1);
  *(a2 + v5) = result;
  *(a2 + v6) = v8;
  return result;
}

void *sub_100E711E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1000BC4D4(&qword_10169EFA8, &qword_1013B2700);
  v7 = *(v6 + 48);
  v8 = *(v6 + 64);
  result = sub_100AB5A14(a3, a1, a2);
  *(a3 + v7) = result;
  *(a3 + v8) = v10;
  return result;
}

char *sub_100E71264@<X0>(void *a1@<X1>, char **a2@<X8>)
{
  result = sub_100AB6CE8(a1);
  *a2 = result;
  return result;
}

void *sub_100E71320@<X0>(void *a1@<X8>)
{
  result = sub_100025044();
  *a1 = result;
  return result;
}

void *sub_100E7134C@<X0>(void *a1@<X8>)
{
  result = sub_100008CA0();
  *a1 = result;
  return result;
}

char *sub_100E71378@<X0>(char **a1@<X8>)
{
  result = sub_100030068();
  *a1 = result;
  return result;
}

unint64_t *sub_100E713A4@<X0>(unint64_t **a1@<X8>)
{
  result = sub_100007F54();
  *a1 = result;
  return result;
}

void *sub_100E713F8@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = sub_100AA56A8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100E714C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for DirectorySequence();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  v40 = *(*(a1 + 128) + 168);
  v16 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v16);
  v41 = _swiftEmptyArrayStorage;
  v42 = _swiftEmptyArrayStorage;
  v17 = [objc_opt_self() defaultManager];
  v36 = v15;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v38 = v10;
  v18 = *(v10 + 48);
  if (v18(v5, 1, v9) != 1)
  {
    v39 = *(v38 + 32);
    v19 = (v38 + 8);
    do
    {
      v39(v13, v5, v9);
      v20 = v18;
      v21 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v13, v40, &v42, &v41);
      v22 = v21;
      v18 = v20;
      objc_autoreleasePoolPop(v22);
      (*v19)(v13, v9);
      DirectorySequence.next()();
    }

    while (v20(v5, 1, v9) != 1);
  }

  (*(v34 + 8))(v8, v35);
  v23 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v24 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10138BBE0;
  v26 = v42;
  v27 = v42[2];
  *(v25 + 56) = &type metadata for Int;
  *(v25 + 64) = &protocol witness table for Int;
  *(v25 + 32) = v27;
  sub_100E76668(&qword_1016B14E0, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v28 = v36;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = sub_100008C00();
  *(v25 + 72) = v29;
  *(v25 + 80) = v31;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Found %i records at %@", 22, 2, v25);

  (*(v38 + 8))(v28, v9);

  *v37 = v26;
  return result;
}

uint64_t sub_100E719EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t, void **, void **, char *)@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  v49 = a5;
  v45 = a6;
  v10 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for DirectorySequence();
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin(v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v42 - v21;
  v23 = *(*(a1 + 128) + 168);
  if (*a2 != -1)
  {
    swift_once();
  }

  v24 = sub_1000076D4(v16, a3);
  (*(v17 + 16))(v22, v24, v16);
  v51 = _swiftEmptyArrayStorage;
  v52 = _swiftEmptyArrayStorage;
  v25 = [objc_opt_self() defaultManager];
  v44 = v22;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v46 = v17;
  v26 = *(v17 + 48);
  v27 = v26(v12, 1, v16);
  v48 = a4;
  v49 = v15;
  v47 = v23;
  if (v27 != 1)
  {
    v28 = *(v46 + 32);
    v29 = (v46 + 8);
    do
    {
      v28(v20, v12, v16);
      v30 = v26;
      v31 = objc_autoreleasePoolPush();
      v48(v20, v47, &v52, &v51, v50);
      objc_autoreleasePoolPop(v31);
      (*v29)(v20, v16);
      DirectorySequence.next()();
      v26 = v30;
    }

    while (v30(v12, 1, v16) != 1);
  }

  (*(v42 + 8))(v49, v43);
  v32 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v33 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10138BBE0;
  v35 = v52;
  v36 = v52[2];
  *(v34 + 56) = &type metadata for Int;
  *(v34 + 64) = &protocol witness table for Int;
  *(v34 + 32) = v36;
  sub_100E76668(&qword_1016B14E0, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v37 = v44;
  v38 = dispatch thunk of CustomStringConvertible.description.getter();
  v40 = v39;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = sub_100008C00();
  *(v34 + 72) = v38;
  *(v34 + 80) = v40;
  os_log(_:dso:log:_:_:)(v32, &_mh_execute_header, v33, "Found %i records at %@", 22, 2, v34);

  (*(v46 + 8))(v37, v16);

  *v45 = v35;
  return result;
}

uint64_t sub_100E71E90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_100AC6DA0(a1, &v11 - v5);
  v7 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &qword_10169DBD0, &unk_1013D6790);
    v8 = 1;
  }

  else
  {
    sub_100E768B0(v6, a2, type metadata accessor for BeaconStatus);
    v8 = 0;
  }

  v9 = type metadata accessor for BeaconStatus(0);
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

char *sub_100E71FFC@<X0>(uint64_t a1@<X1>, void *a2@<X2>, char a3@<W3>, char **a4@<X8>)
{
  result = sub_100ABE3A4(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_100E72034(uint64_t a1)
{
  type metadata accessor for Transaction();

  static Transaction.asyncTask(name:block:)();
}

void *sub_100E72100@<X0>(void *a1@<X8>)
{
  result = sub_100AC2088();
  *a1 = result;
  return result;
}

void *sub_100E72298@<X0>(void *a1@<X2>, uint64_t a2@<X3>, _BYTE *a5@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for URL();
  v8 = sub_1000076D4(v7, a2);
  __chkstk_darwin(v8);
  result = OS_dispatch_queue.sync<A>(execute:)();
  *a5 = v10;
  return result;
}

void *sub_100E72364@<X0>(void *a1@<X8>)
{
  result = sub_100AA5C88();
  *a1 = result;
  return result;
}

void *sub_100E72390@<X0>(void *a1@<X8>)
{
  result = sub_10002F740();
  *a1 = result;
  return result;
}

void *sub_100E723E4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = sub_10002F458(a1);
  *a2 = result;
  return result;
}

void *sub_100E72414()
{
  if (qword_101694550 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  v1 = sub_1000076D4(v0, qword_10177A8D0);
  __chkstk_darwin(v1);
  return OS_dispatch_queue.sync<A>(execute:)();
}

uint64_t sub_100E72518@<X0>(uint64_t a1@<X8>)
{
  sub_1000BC4D4(&qword_1016ACED8, &unk_10140CFA0);
  unsafeFromAsyncTask<A>(_:)();
  sub_1012BC6C4(sub_1008B3F78, v3, a1);
}

uint64_t sub_100E725BC(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  *(v6 + 32) = a2;
  *(v6 + 40) = v5;
  *(v6 + 226) = a5;
  *(v6 + 225) = a4;
  *(v6 + 224) = a3;
  *(v6 + 24) = a1;
  sub_1000BC4D4(&qword_10169E368, &qword_1013D6690);
  *(v6 + 48) = swift_task_alloc();
  v7 = type metadata accessor for KeyGenerationBeaconInfo(0);
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = type metadata accessor for BeaconIdentifier(0);
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_100E726F4, v5, 0);
}

uint64_t sub_100E726F4()
{

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  v2 = type metadata accessor for BeaconKeyManager(0);
  *v1 = v0;
  v1[1] = sub_100E727D4;
  v3 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x80000001013EB120, sub_1000D27E4, v3, v2);
}

uint64_t sub_100E727D4()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100E728EC, v1, 0);
}

uint64_t sub_100E728EC()
{
  v0[13] = v0[2];
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100E72984;

  return daemon.getter();
}

uint64_t sub_100E72984(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 120) = a1;

  v3 = swift_task_alloc();
  *(v2 + 128) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconKeyService();
  v6 = sub_100E76668(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E76668(&unk_1016B1090, 255, type metadata accessor for BeaconKeyService, &unk_1013CC4A0);
  *v3 = v9;
  v3[1] = sub_100E72B68;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E72B68(uint64_t a1)
{
  *(*v2 + 136) = a1;

  if (v1)
  {

    v3 = sub_100E72EC8;
  }

  else
  {

    v3 = sub_100E72CB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100E72CB8()
{
  v1 = v0[3];
  v2 = getuid();
  sub_1000294F0(v2);
  v3 = v1[3];
  v4 = v1[4];
  sub_1000035D0(v1, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_100E72DB4;
  v6 = v0[11];
  v7 = v0[6];

  return sub_10098F404(v7, v6);
}

uint64_t sub_100E72DB4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100E73360;
  }

  else
  {
    v2 = sub_100E730D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E72EC8()
{
  if (qword_101694A18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177B538);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Missing BeaconKeyService.", v4, 2u);
  }

  v5 = type metadata accessor for Daemon.Error();
  sub_100E76668(&qword_101697368, 255, &type metadata accessor for Daemon.Error, &protocol conformance descriptor for Daemon.Error);
  swift_allocError();
  *v6 = 0xD000000000000010;
  v6[1] = 0x8000000101351540;
  (*(*(v5 - 8) + 104))(v6, enum case for Daemon.Error.missingService(_:), v5);
  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100E730D0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 48);
  if ((*(*(v0 + 64) + 48))(v2, 1, v1) == 1)
  {
    sub_10000B3A8(v2, &qword_10169E368, &qword_1013D6690);
    goto LABEL_7;
  }

  v3 = *(v0 + 72);
  sub_100E768B0(v2, v3, type metadata accessor for KeyGenerationBeaconInfo);
  v4 = *(v3 + *(v1 + 28));
  sub_100E76918(v3, type metadata accessor for KeyGenerationBeaconInfo);
  if (v4 != 3)
  {
LABEL_7:
    if (*(v0 + 224))
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        v13 = sub_100A848EC;
        v8 = swift_task_alloc();
        *(v0 + 176) = v8;
        *v8 = v0;
        v9 = sub_100E735C8;
LABEL_12:
        v8[1] = v9;
        v10 = *(v0 + 225);
        v12 = *(v0 + 24);
        v11 = *(v0 + 32);

        return v13(v12, v11, v10);
      }
    }

    else
    {
    }

    v13 = sub_100A83E64;
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v9 = sub_100E73418;
    goto LABEL_12;
  }

  sub_100E76918(*(v0 + 88), type metadata accessor for BeaconIdentifier);

  v5 = *(v0 + 8);

  return v5(0, 0, 3);
}

uint64_t sub_100E73360()
{
  v1 = *(v0 + 88);

  sub_100E76918(v1, type metadata accessor for BeaconIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E73418(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100E73778, 0, 0);
  }

  else
  {
    v8 = *(v6 + 224);
    v9 = swift_task_alloc();
    *(v6 + 192) = v9;
    *v9 = v7;
    v9[1] = sub_100E73830;
    v10 = *(v6 + 226);
    v11 = *(v6 + 24);

    return sub_100731BF4(v11, a1, a2, v8 & 1, v10, 0);
  }
}

uint64_t sub_100E735C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 184) = v2;

  if (v2)
  {

    return _swift_task_switch(sub_100E73AF8, 0, 0);
  }

  else
  {
    v8 = *(v6 + 224);
    v9 = swift_task_alloc();
    *(v6 + 192) = v9;
    *v9 = v7;
    v9[1] = sub_100E73830;
    v10 = *(v6 + 226);
    v11 = *(v6 + 24);

    return sub_100731BF4(v11, a1, a2, v8 & 1, v10, 0);
  }
}

uint64_t sub_100E73778()
{
  v1 = *(v0 + 88);

  sub_100E76918(v1, type metadata accessor for BeaconIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E73830(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 200) = v3;

  if (v3)
  {
    v9 = sub_100E73A40;
  }

  else
  {
    *(v8 + 227) = a3;
    *(v8 + 208) = a2;
    *(v8 + 216) = a1;
    v9 = sub_100E7396C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100E7396C()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 227);
  sub_100E76918(*(v0 + 88), type metadata accessor for BeaconIdentifier);

  v4 = *(v0 + 8);

  return v4(v2, v1, v3);
}

uint64_t sub_100E73A40()
{
  v1 = *(v0 + 88);

  sub_100E76918(v1, type metadata accessor for BeaconIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E73AF8()
{
  v1 = *(v0 + 88);

  sub_100E76918(v1, type metadata accessor for BeaconIdentifier);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E73C44()
{
  sub_100030068();

  sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  return QueueSynchronizer.conditionalSync<A>(_:)();
}

uint64_t sub_100E73CFC@<X0>(uint64_t a1@<X1>, char a2@<W2>, _BYTE *a3@<X8>)
{
  v6 = *(sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0) + 48);
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v7 = sub_100035730(a1, 0, 0);
  v8 = sub_10003ABC0(&a3[v6], a1, v7, a2 & 1);

  *a3 = v8 & 1;
  return result;
}

void *sub_100E73E24@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_100A8B080(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100E73E54@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_100A8F20C(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100E73F30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v13 = a1;

  v8 = sub_10013CF58(sub_10071EA10, v12, a2)[2];

  v11[2] = a1;

  v9 = sub_10013CEF0(sub_10062BFE0, v11, a3)[2];

  if (__OFADD__(v8, v9))
  {
    __break(1u);
  }

  else
  {
    *a4 = v8 + v9;
  }

  return result;
}

uint64_t sub_100E73FF0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = sub_100B0E4A8(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100E74048@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = type metadata accessor for DirectorySequence();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  v40 = *(*(a1 + 128) + 168);
  v16 = objc_autoreleasePoolPush();
  if (qword_101694E08 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177BF38);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v16);
  v41 = _swiftEmptyArrayStorage;
  v42 = _swiftEmptyArrayStorage;
  v17 = [objc_opt_self() defaultManager];
  v36 = v15;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v38 = v10;
  v18 = *(v10 + 48);
  if (v18(v5, 1, v9) != 1)
  {
    v39 = *(v38 + 32);
    v19 = (v38 + 8);
    do
    {
      v39(v13, v5, v9);
      v20 = v18;
      v21 = objc_autoreleasePoolPush();
      sub_1006011CC(v13, v40, &v42, &v41);
      v22 = v21;
      v18 = v20;
      objc_autoreleasePoolPop(v22);
      (*v19)(v13, v9);
      DirectorySequence.next()();
    }

    while (v20(v5, 1, v9) != 1);
  }

  (*(v34 + 8))(v8, v35);
  v23 = static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v24 = static OS_os_log.default.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10138BBE0;
  v26 = v42;
  v27 = v42[2];
  *(v25 + 56) = &type metadata for Int;
  *(v25 + 64) = &protocol witness table for Int;
  *(v25 + 32) = v27;
  sub_100E76668(&qword_1016B14E0, 255, &type metadata accessor for URL, &protocol conformance descriptor for URL);

  v28 = v36;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v31 = v30;
  *(v25 + 96) = &type metadata for String;
  *(v25 + 104) = sub_100008C00();
  *(v25 + 72) = v29;
  *(v25 + 80) = v31;
  os_log(_:dso:log:_:_:)(v23, &_mh_execute_header, v24, "Found %i records at %@", 22, 2, v25);

  (*(v38 + 8))(v28, v9);

  *v37 = v26;
  return result;
}

id sub_100E74538@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 128);
  v5 = a2[3];
  v6 = a2[4];
  v7 = sub_1000035D0(a2, v5);
  result = sub_100B005BC(v7, v4, v5, v6);
  *a3 = result;
  return result;
}

uint64_t sub_100E74614@<X0>(uint64_t a1@<X0>, unsigned int (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, void *a3@<X8>)
{
  v109 = a2;
  *&v101 = a1;
  v100 = a3;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v93 - v7;
  v9 = type metadata accessor for Date();
  v94 = *(v9 - 8);
  __chkstk_darwin(v9);
  v104 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OwnedDeviceKeyRecord(0);
  v113 = *(v11 - 8);
  v114 = v11;
  __chkstk_darwin(v11);
  v13 = (&v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1000BC4D4(&qword_10169EF98, &unk_1013D66D0);
  __chkstk_darwin(v14 - 8);
  v108 = &v93 - v15;
  v16 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  __chkstk_darwin(v16 - 8);
  v111 = (&v93 - v17);
  v18 = sub_1000BC4D4(&qword_1016A78A8, &unk_1013D66E0);
  v112 = *(v18 - 8);
  __chkstk_darwin(v18);
  v107 = (&v93 - v19);
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v106 = (&v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __chkstk_darwin(v22);
  v99 = &v93 - v25;
  __chkstk_darwin(v24);
  v27 = &v93 - v26;
  v28 = sub_1000BC4D4(&qword_1016A78B0, &unk_1013EB2A0);
  __chkstk_darwin(v28 - 8);
  v110 = &v93 - v29;
  if (qword_101694E50 != -1)
  {
    swift_once();
  }

  v105 = v9;
  v103 = v8;
  v102 = v6;

  OS_dispatch_queue.sync<A>(execute:)();
  v93 = 0;

  v30 = v115[3];

  *&v101 = *(*(v101 + 128) + 168);
  if (qword_101695268 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v20, qword_10177C680);
  UUID.uuidString.getter();
  v31 = v27;
  v98 = v27;
  URL.appendingPathComponent(_:isDirectory:)();

  v32 = *(v21 + 16);
  v33 = v99;
  v32(v99, v31, v20);
  v34 = *(v18 + 40);
  v109 = v34;
  v95 = type metadata accessor for DirectorySequence();
  v35 = *(v95 - 8);
  v36 = *(v35 + 56);
  v97 = v18;
  v96 = v35 + 56;
  v37 = v107;
  v36(v34 + v107, 1, 1, v95);
  v32(v37, v33, v20);
  *(v37 + *(v18 + 36)) = v101;
  v32(v106, v33, v20);

  v38 = v111;
  DirectorySequence.init(at:includingPropertiesForKeys:options:)();
  v39 = *(v21 + 8);
  v39(v33, v20);
  v39(v98, v20);
  v36(v38, 0, 1, v95);
  sub_10062BF70(v38, v109 + v37);
  v40 = v112[7];
  v41 = v110;
  v42 = v97;
  v40(v110, 1, 1, v97);
  sub_10000B3A8(v41, &qword_1016A78B8, &unk_1013D6710);
  sub_1000D2AD8(v37, v41, &qword_1016A78A8, &unk_1013D66E0);
  v40(v41, 0, 1, v42);
  sub_1000BC4D4(&qword_1016A78C0, &qword_1013EB2B0);
  v43 = swift_allocObject();
  sub_1000D2AD8(v41, &v43[*(*v43 + class metadata base offset for _SequenceBox + 16)], &qword_1016A78B0, &unk_1013EB2A0);
  v44 = *(*v43 + class metadata base offset for _SequenceBox + 16);
  sub_1000BC4D4(&qword_1016A78D8, &unk_1013D6720);
  v45 = swift_allocObject();
  v46 = *(*v45 + class metadata base offset for _IteratorBox + 16);
  v99 = v43;
  sub_1000D2A70(&v43[v44], v45 + v46, &qword_1016A78B0, &unk_1013EB2A0);
  v47 = *(*v45 + class metadata base offset for _IteratorBox + 16);
  v112 = v45;
  v110 = v47;
  v48 = v108;
  sub_100AF5B10(v108);
  v49 = *(v113 + 48);
  v113 += 48;
  v109 = v49;
  if (v49(v48, 1, v114) != 1)
  {
    v107 = (v94 + 56);
    v111 = (v94 + 48);
    v98 = (v94 + 32);
    v50 = _swiftEmptyArrayStorage;
    v106 = (v94 + 8);
    v101 = xmmword_101385D80;
    v54 = v103;
    v55 = v105;
    v56 = v104;
    while (1)
    {
      sub_100E768B0(v48, v13, type metadata accessor for OwnedDeviceKeyRecord);
      v60 = objc_autoreleasePoolPush();
      v61 = *v13;
      v62 = v13[1];
      v63 = v62 >> 62;
      if ((v62 >> 62) > 1)
      {
        if (v63 != 2 || *(v61 + 16) == *(v61 + 24))
        {
          goto LABEL_26;
        }
      }

      else if (v63)
      {
        if (v61 == v61 >> 32)
        {
          goto LABEL_26;
        }
      }

      else if ((v62 & 0xFF000000000000) == 0)
      {
        goto LABEL_26;
      }

      v64 = objc_autoreleasePoolPush();
      v65 = objc_allocWithZone(NSKeyedUnarchiver);
      sub_100017D5C(v61, v62);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v115[0] = 0;
      v67 = [v65 initForReadingFromData:isa error:v115];

      if (!v67)
      {
        break;
      }

      v68 = v115[0];
      sub_100016590(v61, v62);
      [v67 _enableStrictSecureDecodingMode];
      v69 = [objc_allocWithZone(CKRecord) initWithCoder:v67];
      if (!v69)
      {
        v81 = static os_log_type_t.error.getter();
        sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
        v82 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)(v81, &_mh_execute_header, v82, "Unable to extract CKRecord from cloudKitMetadata", 48, 2, _swiftEmptyArrayStorage);

LABEL_25:
        v54 = v103;
        v56 = v104;

        objc_autoreleasePoolPop(v64);
        v55 = v105;
        v48 = v108;
LABEL_26:
        (*v107)(v54, 1, 1, v55);
LABEL_27:
        Date.init()();
        if ((*v111)(v54, 1, v55) != 1)
        {
          sub_10000B3A8(v54, &unk_101696900, &unk_10138B1E0);
        }

        goto LABEL_29;
      }

      v70 = v69;

      objc_autoreleasePoolPop(v64);
      v71 = [v70 creationDate];

      v54 = v103;
      v56 = v104;
      if (v71)
      {
        v72 = v102;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v73 = 0;
      }

      else
      {
        v73 = 1;
        v72 = v102;
      }

      v55 = v105;
      v48 = v108;
      (*v107)(v72, v73, 1, v105);
      sub_1000D2AD8(v72, v54, &unk_101696900, &unk_10138B1E0);
      if ((*v111)(v54, 1, v55) == 1)
      {
        goto LABEL_27;
      }

      (*v98)(v56, v54, v55);
LABEL_29:
      objc_autoreleasePoolPop(v60);
      Date.timeIntervalSinceNow.getter();
      v84 = v83;
      (*v106)(v56, v55);
      if (fabs(v84) < *&v30)
      {
        v85 = *(v114 + 32);
        v86 = (v13 + *(v114 + 28));
        v88 = *v86;
        v87 = v86[1];
        v90 = *(v13 + v85);
        v89 = *(v13 + v85 + 8);
        sub_100017D5C(*v86, v87);
        sub_100017D5C(v90, v89);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = sub_100A5D350(0, v50[2] + 1, 1, v50);
        }

        v92 = v50[2];
        v91 = v50[3];
        if (v92 >= v91 >> 1)
        {
          v50 = sub_100A5D350((v91 > 1), v92 + 1, 1, v50);
        }

        v50[2] = v92 + 1;
        *&v57 = v88;
        *(&v57 + 1) = v87;
        v58 = &v50[4 * v92];
        *&v59 = v90;
        *(&v59 + 1) = v89;
        *(v58 + 2) = v57;
        *(v58 + 3) = v59;
        v55 = v105;
        v56 = v104;
        v48 = v108;
      }

      sub_100E76918(v13, type metadata accessor for OwnedDeviceKeyRecord);
      sub_100AF5B10(v48);
      if (v109(v48, 1, v114) == 1)
      {
        goto LABEL_7;
      }
    }

    v74 = v115[0];
    v75 = _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100016590(v61, v62);
    v76 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v77 = swift_allocObject();
    *(v77 + 16) = v101;
    v115[0] = v75;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v78 = String.init<A>(describing:)();
    v80 = v79;
    *(v77 + 56) = &type metadata for String;
    *(v77 + 64) = sub_100008C00();
    *(v77 + 32) = v78;
    *(v77 + 40) = v80;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v67 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v76, &_mh_execute_header, v67, "Unable to create unarchiver: %@", 31, 2, v77);

    goto LABEL_25;
  }

  v50 = _swiftEmptyArrayStorage;
LABEL_7:
  v51 = v99;
  swift_setDeallocating();
  sub_10000B3A8(v51 + *(*v51 + class metadata base offset for _SequenceBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  swift_deallocClassInstance();
  v52 = v112;
  swift_setDeallocating();
  sub_10000B3A8(v52 + *(*v52 + class metadata base offset for _IteratorBox + 16), &qword_1016A78B0, &unk_1013EB2A0);
  result = swift_deallocClassInstance();
  *v100 = v50;
  return result;
}

uint64_t sub_100E75644(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100E756EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for BeaconStoreActor();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100E757B0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100E75858(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.startup()(v5, a2);
}

uint64_t sub_100E75900(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100E759A8()
{
  type metadata accessor for BeaconStoreActor();
  sub_100E76668(&qword_101698D20, v0, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  return ActorServiceProtocol.description.getter();
}

void sub_100E75AC0(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  v48 = a3;
  v49 = a4;
  v6 = type metadata accessor for OwnedBeaconRecord(0);
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v45 = v7;
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SystemInfo.DeviceLockState();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v46 = *(a1 + 128);
  v15 = static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v16 = qword_10177C380;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  v42 = xmmword_101385D80;
  *(v17 + 16) = xmmword_101385D80;
  v18 = *(v6 + 20);
  v19 = type metadata accessor for UUID();
  sub_100E76668(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v50 = a2;
  v43 = v18;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100008C00();
  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  os_log(_:dso:log:_:_:)(v15, &_mh_execute_header, v16, "Unpair owned beacon: %@", 23, 2, v17);

  static SystemInfo.lockState.getter();
  (*(v9 + 104))(v12, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v8);
  sub_100E76668(&qword_10169F330, 255, &type metadata accessor for SystemInfo.DeviceLockState, &protocol conformance descriptor for SystemInfo.DeviceLockState);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v23 = *(v9 + 8);
  v23(v12, v8);
  v23(v14, v8);
  v25 = v48;
  v24 = v49;
  if (v52 == v51)
  {
    v26 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v16, "unpair call failed because in device is in beforeFirstUnlock state", 66, 2, _swiftEmptyArrayStorage);
    sub_100139CA0();
    swift_allocError();
    *v27 = 0;
    v25();
  }

  v28 = dispatch_group_create();
  dispatch_group_enter(v28);
  sub_1000BC4D4(&unk_1016A9A10, &qword_1013A07C0);
  v29 = *(v19 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v42;
  v32 = v50;
  (*(v29 + 16))(v31 + v30, v50 + v43, v19);
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  v34 = v28;
  v35 = v46;
  sub_1009C99C0(v31, sub_10040616C, v33);

  OS_dispatch_group.wait()();
  v36 = v47;
  sub_100A51D68(v32, v47);
  v37 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v38 = (v45 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_100E768B0(v36, v39 + v37, type metadata accessor for OwnedBeaconRecord);
  v40 = (v39 + v38);
  *v40 = v25;
  v40[1] = v24;
  v41 = v39 + ((v38 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v41 = v35;
  *(v41 + 8) = 257;

  sub_100AAA40C(v32, sub_10040AE98, v39);
}

uint64_t sub_100E76144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_10025DCD4(a3, sub_100E76834, v10);
}

uint64_t sub_100E76290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[5] = a3;
  v4[6] = a4;
  v8 = sub_1000280DC(v4 + 2);
  (*(*(a3 - 8) + 16))(v8, a1, a3);

  return _swift_task_switch(sub_100E76344, a2, 0);
}

uint64_t sub_100E76344()
{
  v1 = *(v0 + 104);
  sub_10001F280(v0 + 16, v0 + 56);
  v2 = swift_allocObject();
  *(v0 + 112) = v2;
  *(v2 + 16) = v1;
  sub_100031694((v0 + 56), v2 + 24);

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  v4 = sub_100008BB8(0, &unk_1016BC050, SPBeacon_ptr);
  *v3 = v0;
  v3[1] = sub_100E76478;

  return unsafeBlocking<A>(context:_:)(v0 + 96, 0xD000000000000010, 0x80000001013EB120, sub_100E7660C, v2, v4);
}

uint64_t sub_100E76478()
{
  v1 = *(*v0 + 104);

  return _swift_task_switch(sub_100E765A4, v1, 0);
}

uint64_t sub_100E765A4()
{
  v1 = v0[12];
  sub_100007BAC(v0 + 2);
  v2 = v0[1];

  return v2(v1);
}

id sub_100E7660C@<X0>(void *a1@<X8>)
{
  v3 = *(v1[2] + 128);
  v4 = v1[6];
  v5 = v1[7];
  v6 = sub_1000035D0(v1 + 3, v4);
  result = sub_100B005BC(v6, v3, v4, v5);
  *a1 = result;
  return result;
}

uint64_t sub_100E76668(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100E766B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100E6DA1C(a1, v4, v5, v6);
}

uint64_t sub_100E76764()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100E6DEA4(v0);
}

uint64_t sub_100E76834(uint64_t a1)
{
  sub_1000BC4D4(&unk_1016B1770, &qword_1013AC3F0);

  return sub_10077C388(a1);
}

uint64_t sub_100E768B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100E76918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100E76978(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100E76990(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF1 && *(a1 + 8))
  {
    return (*a1 + 2147483633);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 14;
  if (v4 >= 0x10)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100E769EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF1)
  {
    *result = 0;
    *result = a2 - 2147483633;
    if (a3 >= 0x7FFFFFF1)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF1)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 14;
    }
  }

  return result;
}

unint64_t sub_100E76A5C(char a1)
{
  result = 0x4449657571696E75;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6564496C65646F6DLL;
      break;
    case 3:
      result = 0x4E746375646F7270;
      break;
    case 4:
      result = 0x56746375646F7270;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 1701667182;
      break;
    case 7:
      result = 0x65636976726573;
      break;
    case 8:
      result = 0x6C6C61636F4C7369;
      break;
    case 9:
      result = 0x6576697463417369;
      break;
    case 10:
      result = 0x79627261654E7369;
      break;
    case 11:
      result = 0x63656E6E6F437369;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100E76BF0(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1[128] & 1);
  Hasher._combine(_:)(v1[129] & 1);
  Hasher._combine(_:)(v1[130] & 1);
  Hasher._combine(_:)(v1[131] & 1);
  Hasher._combine(_:)(v1[136]);

  return String.hash(into:)();
}

uint64_t sub_100E76CD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100E77404(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100E76D00(uint64_t a1)
{
  v2 = sub_100E77FF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E76D3C(uint64_t a1)
{
  v2 = sub_100E77FF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100E76D78()
{
  Hasher.init(_seed:)();
  sub_100E76BF0(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100E76DBC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100E76BF0(v2);
  return Hasher._finalize()();
}

double sub_100E76DF8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100E7783C(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

BOOL sub_100E76E54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v13[6] = a1[6];
  v13[7] = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  return sub_100E76F88(v13, v14);
}

uint64_t sub_100E76EDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  v5._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 8250;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = v3;
  v7._object = v4;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 60;
}

BOOL sub_100E76F88(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  result = (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (a1[2] == *(a2 + 16) ? (v5 = a1[3] == *(a2 + 24)) : (v5 = 0), (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)) && (a1[6] == *(a2 + 48) && a1[7] == *(a2 + 56) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (a1[8] == *(a2 + 64) && a1[9] == *(a2 + 72) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (a1[10] == *(a2 + 80) && a1[11] == *(a2 + 88) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (a1[12] == *(a2 + 96) && a1[13] == *(a2 + 104) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (a1[14] == *(a2 + 112) && a1[15] == *(a2 + 120) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && ((*(a1 + 128) ^ *(a2 + 128)) & 1) == 0 && ((*(a1 + 129) ^ *(a2 + 129)) & 1) == 0 && ((*(a1 + 130) ^ *(a2 + 130)) & 1) == 0 && ((*(a1 + 131) ^ *(a2 + 131)) & 1) == 0 && *(a1 + 136) == *(a2 + 136) && (a1[18] == *(a2 + 144) && a1[19] == *(a2 + 152) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  return result;
}

void sub_100E77148(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 uniqueID];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 uniqueIDOverride];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [a1 modelIdentifier];
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [a1 productName];
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v22;

  v23 = [a1 productVersion];
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v26;
  v62 = v25;

  v27 = [a1 productBuildVersion];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v30;
  v60 = v29;

  v31 = [a1 name];
  if (!v31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = v31;
  v57 = v21;
  v58 = v18;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v34;
  v56 = v33;

  v35 = [a1 service];
  if (!v35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v35;
  v52 = v16;
  v53 = v13;
  v54 = v11;
  v37 = v8;
  v38 = v6;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v40;
  v51 = v39;

  v41 = [a1 isLocallyPaired];
  v42 = [a1 isActive];
  v43 = [a1 isNearby];
  v44 = [a1 isConnected];
  v45 = IDSCopyIDForDevice();
  if (v45)
  {
    v46 = v45;
    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *a2 = v38;
    *(a2 + 8) = v37;
    *(a2 + 16) = v54;
    *(a2 + 24) = v53;
    *(a2 + 32) = v52;
    *(a2 + 40) = v58;
    *(a2 + 48) = v57;
    *(a2 + 56) = v63;
    *(a2 + 64) = v62;
    *(a2 + 72) = v61;
    *(a2 + 80) = v60;
    *(a2 + 88) = v59;
    *(a2 + 96) = v56;
    *(a2 + 104) = v55;
    *(a2 + 112) = v51;
    *(a2 + 120) = v50;
    *(a2 + 128) = v41;
    *(a2 + 129) = v42;
    *(a2 + 130) = v43;
    *(a2 + 131) = v44;
    *(a2 + 136) = 3;
    *(a2 + 144) = v47;
    *(a2 + 152) = v49;
    return;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_100E77404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449657571696E75 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001013723F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564496C65646F6DLL && a2 == 0xEF7265696669746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E746375646F7270 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x56746375646F7270 && a2 == 0xEE006E6F69737265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101372410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6C61636F4C7369 && a2 == 0xEF64657269615079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x79627261654E7369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x63656E6E6F437369 && a2 == 0xEB00000000646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001013669F0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100E7783C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v76 = sub_1000BC4D4(&qword_1016BD288, &qword_1013EB470);
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v7 = &v32 - v6;
  sub_1000035D0(a1, a1[3]);
  sub_100E77FF0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v8 = v5;
  v52 = a2;
  LOBYTE(v63[0]) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v51 = v10;
  LOBYTE(v63[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v50 = v12;
  v43 = v11;
  LOBYTE(v63[0]) = 2;
  v42 = KeyedDecodingContainer.decode(_:forKey:)();
  v49 = v13;
  LOBYTE(v63[0]) = 3;
  v41 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = v14;
  LOBYTE(v63[0]) = 4;
  v40 = KeyedDecodingContainer.decode(_:forKey:)();
  v47 = v15;
  LOBYTE(v63[0]) = 5;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  v46 = v16;
  LOBYTE(v63[0]) = 6;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v45 = v17;
  LOBYTE(v63[0]) = 7;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v18;
  LOBYTE(v63[0]) = 8;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63[0]) = 9;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63[0]) = 10;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v63[0]) = 11;
  LODWORD(v35) = KeyedDecodingContainer.decode(_:forKey:)();
  v72 = 12;
  sub_100157E1C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 &= 1u;
  v34 = v19 & 1;
  v21 = v20 & 1;
  HIDWORD(v32) = v35 & 1;
  (*(v8 + 8))(v7, v76);
  v33 = v73;
  v35 = *(&v74 + 1);
  v76 = v74;
  v22 = v50;
  *&v53 = v9;
  *(&v53 + 1) = v51;
  *&v54 = v43;
  *(&v54 + 1) = v50;
  v24 = v48;
  v23 = v49;
  *&v55 = v42;
  *(&v55 + 1) = v49;
  *&v56 = v41;
  *(&v56 + 1) = v48;
  *&v57 = v40;
  *(&v57 + 1) = v47;
  *&v58 = v39;
  *(&v58 + 1) = v46;
  *&v59 = v38;
  *(&v59 + 1) = v45;
  *&v60 = v37;
  *(&v60 + 1) = v44;
  LOBYTE(v61) = v36;
  BYTE1(v61) = v34;
  BYTE2(v61) = v21;
  LOBYTE(v8) = BYTE4(v32);
  BYTE3(v61) = BYTE4(v32);
  BYTE8(v61) = v73;
  v62 = v74;
  sub_10013CD18(&v53, v63);
  sub_100007BAC(a1);
  v63[0] = v9;
  v63[1] = v51;
  v63[2] = v43;
  v63[3] = v22;
  v63[4] = v42;
  v63[5] = v23;
  v63[6] = v41;
  v63[7] = v24;
  v63[8] = v40;
  v63[9] = v47;
  v63[10] = v39;
  v63[11] = v46;
  v63[12] = v38;
  v63[13] = v45;
  v63[14] = v37;
  v63[15] = v44;
  v64 = v36;
  v65 = v34;
  v66 = v21;
  v67 = v8;
  v68 = v33;
  *v69 = v75[0];
  *&v69[3] = *(v75 + 3);
  v70 = v76;
  v71 = v35;
  result = sub_10013CDDC(v63);
  v26 = v60;
  v27 = v52;
  v52[6] = v59;
  v27[7] = v26;
  v28 = v62;
  v27[8] = v61;
  v27[9] = v28;
  v29 = v56;
  v27[2] = v55;
  v27[3] = v29;
  v30 = v58;
  v27[4] = v57;
  v27[5] = v30;
  v31 = v54;
  *v27 = v53;
  v27[1] = v31;
  return result;
}

unint64_t sub_100E77FF0()
{
  result = qword_1016BD290;
  if (!qword_1016BD290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD290);
  }

  return result;
}

unint64_t sub_100E78058()
{
  result = qword_1016BD298;
  if (!qword_1016BD298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD298);
  }

  return result;
}

unint64_t sub_100E780B0()
{
  result = qword_1016BD2A0;
  if (!qword_1016BD2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD2A0);
  }

  return result;
}

unint64_t sub_100E78108()
{
  result = qword_1016BD2A8;
  if (!qword_1016BD2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD2A8);
  }

  return result;
}

void sub_100E7815C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v70 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v77 = &v70 - v14;
  if (CKRecord.recordType.getter() == 0x65646F4D74736F4CLL && v15 == 0xEE0064726F636552)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      sub_100E7A05C();
      swift_allocError();
      *v38 = 0;
      goto LABEL_18;
    }
  }

  v73 = v2;
  v17 = [a1 recordID];
  v18 = [v17 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v19 = *(v11 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    sub_10000B3A8(v9, &qword_1016980D0, &unk_10138F3B0);
    sub_100E7A05C();
    swift_allocError();
    *v20 = 1;
LABEL_18:
    swift_willThrow();

    return;
  }

  v72 = v11;
  v21 = v10;
  v22 = *(v11 + 32);
  v74 = v21;
  v22(v77, v9);
  v23 = [a1 encryptedValues];
  v24 = String._bridgeToObjectiveC()();
  v25 = [v23 objectForKeyedSubscript:v24];

  if (!v25 || (v80 = v25, v26 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    v33 = static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    v34 = qword_10177C3E8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_101385D80;
    *(v35 + 56) = sub_100E7A0B0();
    *(v35 + 64) = sub_100E7AB14(&qword_101697F90, sub_100E7A0B0, &protocol conformance descriptor for NSObject);
    *(v35 + 32) = a1;
    v36 = a1;
    os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "Invalid beaconIdentifier - %@", 29, 2, v35);

    sub_100E7A05C();
    swift_allocError();
    *v37 = 3;
    swift_willThrow();

    goto LABEL_16;
  }

  v71 = v23;
  UUID.init(uuidString:)();

  v27 = v74;
  if (v19(v7, 1, v74) == 1)
  {
    sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
    v28 = static os_log_type_t.error.getter();
    if (qword_1016950A0 != -1)
    {
      swift_once();
    }

    v29 = qword_10177C3E8;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_101385D80;
    *(v30 + 56) = sub_100E7A0B0();
    *(v30 + 64) = sub_100E7AB14(&qword_101697F90, sub_100E7A0B0, &protocol conformance descriptor for NSObject);
    *(v30 + 32) = a1;
    v31 = a1;
    os_log(_:dso:log:_:_:)(v28, &_mh_execute_header, v29, "beaconIdentifier is not a valid UUID - %@", 41, 2, v30);

    sub_100E7A05C();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();

LABEL_16:
    swift_unknownObjectRelease();
    (*(v72 + 8))(v77, v74);
    return;
  }

  v70 = v26;
  (v22)(v76, v7, v27);
  v39 = objc_autoreleasePoolPush();
  v40 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [a1 encodeSystemFieldsWithCoder:v40];
  [v40 finishEncoding];
  v41 = [v40 encodedData];
  v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  objc_autoreleasePoolPop(v39);
  v45 = v75;
  *v75 = v42;
  v45[1] = v44;
  v46 = v45;
  v47 = type metadata accessor for LostModeRecord(0);
  v48 = v72;
  v49 = *(v72 + 16);
  v49(v46 + v47[5], v77, v27);
  v49(v46 + v47[6], v76, v27);
  v50 = String._bridgeToObjectiveC()();
  v51 = [v71 objectForKeyedSubscript:v50];

  if (v51)
  {
    v80 = v51;
    v52 = swift_dynamicCast();
    v53 = v78;
    v54 = v79;
    if (!v52)
    {
      v53 = 0;
      v54 = 0;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0;
  }

  v55 = (v46 + v47[7]);
  *v55 = v53;
  v55[1] = v54;
  v56 = String._bridgeToObjectiveC()();
  v57 = v71;
  v58 = [v71 objectForKeyedSubscript:v56];

  if (v58)
  {
    v80 = v58;
    v59 = swift_dynamicCast();
    v60 = v78;
    v61 = v79;
    if (!v59)
    {
      v60 = 0;
      v61 = 0;
    }
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v62 = (v46 + v47[8]);
  *v62 = v60;
  v62[1] = v61;
  v63 = String._bridgeToObjectiveC()();
  v64 = [v57 objectForKeyedSubscript:v63];

  swift_unknownObjectRelease();
  v65 = *(v48 + 8);
  v65(v76, v27);
  v65(v77, v27);
  if (v64)
  {
    v80 = v64;
    v66 = swift_dynamicCast();
    v67 = v78;
    v68 = v79;
    if (!v66)
    {
      v67 = 0;
      v68 = 0;
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v69 = (v46 + v47[9]);
  *v69 = v67;
  v69[1] = v68;
}

id sub_100E78AA8()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-v3];
  v5 = type metadata accessor for LostModeRecord(0);
  v6 = *(v1 + v5[9] + 8);
  v7 = *(v1 + v5[7] + 8);
  v8 = *(v1 + v5[8] + 8);
  v9 = objc_autoreleasePoolPush();
  sub_100E7A0FC(v1, v4);
  objc_autoreleasePoolPop(v9);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  (*(v11 + 56))(v4, 0, 1, v10);
  if (v6)
  {
    v12 = String._bridgeToObjectiveC()();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v12 = 0;
  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = String._bridgeToObjectiveC()();
  if (v8)
  {
LABEL_4:
    v14 = String._bridgeToObjectiveC()();
    goto LABEL_8;
  }

LABEL_7:
  v14 = 0;
LABEL_8:
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    isa = 0;
  }

  else
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v4, v10);
  }

  v16 = [objc_allocWithZone(SPLostModeInfo) initWithMessage:v12 email:v13 phoneNumber:v14 timestamp:isa];

  return v16;
}

uint64_t sub_100E78CC4()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177C140);
  sub_1000076D4(v0, qword_10177C140);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

void sub_100E78E28(uint64_t a1)
{
  Data.hash(into:)();
  v2 = type metadata accessor for LostModeRecord(0);
  type metadata accessor for UUID();
  sub_100E7AB14(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  if (*(v1 + v2[7] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[8] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v1 + v2[9] + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

unint64_t sub_100E78FC0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6C69616D65;
  v4 = 0x6D754E656E6F6870;
  if (v1 != 4)
  {
    v4 = 0x6567617373656DLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_100E7908C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100E7A8FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100E790B4(uint64_t a1)
{
  v2 = sub_100E7A410();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100E790F0(uint64_t a1)
{
  v2 = sub_100E7A410();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100E7912C()
{
  Hasher.init(_seed:)();
  sub_100E78E28(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100E79170(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100E78E28(v2);
  return Hasher._finalize()();
}

uint64_t sub_100E791B0(id *a1)
{
  v2 = v1;
  [*a1 encryptedValues];
  swift_getObjectType();
  CKRecordKeyValueSetting.subscript.getter();
  v3 = type metadata accessor for LostModeRecord(0);
  v4 = UUID.uuidString.getter();
  if (!v22)
  {

    goto LABEL_9;
  }

  if (v21 == v4 && v22 == v5)
  {

    goto LABEL_11;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v7 & 1) == 0)
  {
LABEL_9:
    v21 = UUID.uuidString.getter();
    v22 = v8;
    CKRecordKeyValueSetting.subscript.setter();
  }

LABEL_11:
  CKRecordKeyValueSetting.subscript.getter();
  v9 = (v1 + v3[7]);
  v11 = *v9;
  v10 = v9[1];
  if (!v22)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

LABEL_20:
    v21 = v11;
    v22 = v10;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_21;
  }

  if (!v10)
  {

    v11 = 0;
    goto LABEL_20;
  }

  if (v21 == v11 && v22 == v10)
  {

    goto LABEL_21;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_21:
  CKRecordKeyValueSetting.subscript.getter();
  v13 = (v2 + v3[8]);
  v15 = *v13;
  v14 = v13[1];
  if (!v22)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

LABEL_30:
    v21 = v15;
    v22 = v14;

    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_31;
  }

  if (!v14)
  {

    v15 = 0;
    goto LABEL_30;
  }

  if (v21 == v15 && v22 == v14)
  {

    goto LABEL_31;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v16 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  CKRecordKeyValueSetting.subscript.getter();
  v17 = (v2 + v3[9]);
  v18 = v17[1];
  if (!v22)
  {
    if (!v18)
    {
      return swift_unknownObjectRelease();
    }

    goto LABEL_40;
  }

  if (!v18)
  {

LABEL_40:

    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  if (v21 == *v17 && v22 == v18)
  {
    swift_unknownObjectRelease();
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v20 & 1) == 0)
  {
    goto LABEL_40;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_100E795F4(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016BD2E0, &qword_1013EB628);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100E7A410();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  sub_100017D5C(v11, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v11, v12);
  }

  else
  {
    sub_100016590(v11, v12);
    type metadata accessor for LostModeRecord(0);
    LOBYTE(v11) = 1;
    type metadata accessor for UUID();
    sub_100E7AB14(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v11) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100E798B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for UUID();
  v45 = *(v3 - 8);
  v46 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v39 - v7;
  v9 = sub_1000BC4D4(&qword_1016BD2D0, &qword_1013EB620);
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = type metadata accessor for LostModeRecord(0);
  __chkstk_darwin(v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v50 = a1;
  sub_1000035D0(a1, v16);
  sub_100E7A410();
  v17 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_100007BAC(v50);
  }

  else
  {
    v18 = v6;
    v52 = 0;
    sub_1000E307C();
    v19 = v47;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v15 = v51;
    LOBYTE(v51) = 1;
    sub_100E7AB14(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v20 = v8;
    v21 = v46;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49 = v13;
    v22 = *(v13 + 20);
    v23 = *(v45 + 32);
    v43 = v15;
    v24 = v20;
    v25 = v23;
    v23(&v15[v22], v24, v21);
    LOBYTE(v51) = 2;
    v26 = v18;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v43;
    v25(&v43[*(v49 + 24)], v26, v21);
    LOBYTE(v51) = 3;
    v42 = 0;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v29 = v49;
    v30 = (v27 + *(v49 + 28));
    *v30 = v28;
    v30[1] = v31;
    LOBYTE(v51) = 4;
    v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v33 = (v27 + *(v29 + 32));
    *v33 = v32;
    v33[1] = v34;
    LOBYTE(v51) = 5;
    v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v41 = v35;
    v36 = (v27 + *(v29 + 36));
    (*(v48 + 8))(v12, v19);
    v37 = v41;
    *v36 = v40;
    v36[1] = v37;
    sub_100E7A464(v27, v44);
    sub_100007BAC(v50);
    return sub_100E7A4C8(v27);
  }
}

uint64_t sub_100E79E5C()
{
  if (qword_101694EF8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  sub_1000076D4(v0, qword_10177C140);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

uint64_t sub_100E79F34(uint64_t a1)
{
  *(a1 + 8) = sub_100E7AB14(&unk_1016BD2B0, type metadata accessor for LostModeRecord, &unk_1013EB5B8);
  result = sub_100E7AB14(&qword_1016B15E8, type metadata accessor for LostModeRecord, &unk_1013EB590);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for LostModeRecord(uint64_t a1)
{
  result = qword_1016BD340;
  if (!qword_1016BD340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100E7A004(uint64_t a1)
{
  result = sub_100E7AB14(&qword_1016B15E0, type metadata accessor for LostModeRecord, &unk_1013EB5E0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100E7A05C()
{
  result = qword_1016BD2C0;
  if (!qword_1016BD2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD2C0);
  }

  return result;
}

unint64_t sub_100E7A0B0()
{
  result = qword_101698150;
  if (!qword_101698150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101698150);
  }

  return result;
}

void sub_100E7A0FC(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_13;
    }
  }

  else if (v13)
  {
    if (v11 == v11 >> 32)
    {
LABEL_13:
      v17 = type metadata accessor for Date();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      goto LABEL_14;
    }
  }

  else if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v14 = objc_autoreleasePoolPush();
  sub_101122FBC(v11, v12, &v20);
  if (v2)
  {
    objc_autoreleasePoolPop(v14);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v14);
  v15 = v20;
  if (!v20)
  {
    goto LABEL_13;
  }

  v16 = [v20 creationDate];

  if (v16)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
  }

  else
  {
    v17 = type metadata accessor for Date();
    (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  }

  sub_1001578A0(v8, v10);
  type metadata accessor for Date();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) != 1)
  {
    (*(v18 + 32))(a2, v10, v17);
    return;
  }

LABEL_14:
  Date.init()();
  type metadata accessor for Date();
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) != 1)
  {
    sub_10000B3A8(v10, &unk_101696900, &unk_10138B1E0);
  }
}

unint64_t sub_100E7A410()
{
  result = qword_1016BD2D8;
  if (!qword_1016BD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD2D8);
  }

  return result;
}

uint64_t sub_100E7A464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LostModeRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100E7A4C8(uint64_t a1)
{
  v2 = type metadata accessor for LostModeRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100E7A56C(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000E3404();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100E7A654()
{
  result = qword_1016BD398;
  if (!qword_1016BD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD398);
  }

  return result;
}

unint64_t sub_100E7A6AC()
{
  result = qword_1016BD3A0;
  if (!qword_1016BD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD3A0);
  }

  return result;
}

unint64_t sub_100E7A704()
{
  result = qword_1016BD3A8;
  if (!qword_1016BD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD3A8);
  }

  return result;
}

unint64_t sub_100E7A75C()
{
  result = qword_1016BD3B0;
  if (!qword_1016BD3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD3B0);
  }

  return result;
}

uint64_t sub_100E7A7B0(uint64_t a1, uint64_t a2)
{
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = type metadata accessor for LostModeRecord(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v17 = v4[9];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (v21 && (*v18 == *v20 && v19 == v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v21)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100E7A8FC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100E7AB14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100E7AB74()
{
  v0 = type metadata accessor for URL();
  sub_100044B3C(v0, qword_10177C158);
  v1 = sub_1000076D4(v0, qword_10177C158);
  if (qword_101694F08 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_1016BD3B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100E7AC3C()
{
  v0 = type metadata accessor for URL();
  sub_100044B3C(v0, qword_1016BD3B8);
  sub_1000076D4(v0, qword_1016BD3B8);
  return sub_100E7AC88();
}

uint64_t sub_100E7AC88()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v7 = [objc_opt_self() defaultManager];
  v8 = [v7 URLsForDirectory:5 inDomains:1];

  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v9 + 16))
  {
    (*(v1 + 16))(v4, v9 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 32))(v6, v4, v0);
    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v1 + 8))(v6, v0);
  }

  else
  {

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100E7AEB4(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014650;

  return v8(v4, v5);
}

uint64_t sub_100E7AFB0()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C170);
  sub_1000076D4(v0, qword_10177C170);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100E7B030()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C188);
  v1 = sub_1000076D4(v0, qword_10177C188);
  if (qword_101694F10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C170);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100E7B118()
{
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C188);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "inside startup() function", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_100990614;

  return sub_100E7C6F8();
}

void sub_100E7B264(Swift::Int a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  swift_beginAccess();

  v10 = sub_100DE9538(v27, a1, a2);
  swift_endAccess();
  v11 = v27[1];
  if (v10)
  {
    v12 = v27[0];
    swift_beginAccess();
    if (!*(v3[26] + 16) || (, sub_100771D58(a1, a2), v14 = v13, , (v14 & 1) == 0))
    {
      sub_1000BC4D4(&qword_1016BD5D8, &qword_1013EBA90);
      swift_allocObject();
      v17 = AsyncStreamProvider.init()();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v3[26];
      v3[26] = 0x8000000000000000;
      sub_100FFBBDC(v17, a1, a2, isUniquelyReferenced_nonNull_native);

      v3[26] = v26;
      swift_endAccess();
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
      v21 = sub_100E7FD78(&qword_1016BD5C0, v20, type metadata accessor for APSNotificationService, &unk_1013EBA00);
      v22 = swift_allocObject();
      v23 = v12;
      v24 = v22;
      *(v22 + 16) = v3;
      *(v22 + 24) = v21;
      *(v22 + 32) = v3;
      *(v22 + 40) = a1;
      *(v22 + 48) = a2;
      *(v22 + 56) = v17;
      *(v22 + 64) = 1;
      *(v22 + 72) = v23;
      *(v22 + 80) = v11;
      *(v22 + 88) = v6;
      swift_retain_n();

      sub_10025EDD4(0, 0, v9, &unk_1013EBAD8, v24);

      goto LABEL_8;
    }
  }

  swift_beginAccess();
  if (*(v3[26] + 16))
  {

    sub_100771D58(a1, a2);
    v16 = v15;

    if (v16)
    {

LABEL_8:
      AsyncStreamProvider.stream(initialEvents:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100E7B5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = v9;
  v7[10] = v10;
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_100E7B5FC, a4, 0);
}

uint64_t sub_100E7B5FC()
{
  v1 = *(*(v0 + 40) + 200);
  *(v0 + 88) = v1;

  return _swift_task_switch(sub_100E7B674, v1, 0);
}

uint64_t sub_100E7B674()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1013EBAE8;
  *(v5 + 24) = v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_100FFEE4C(&unk_1013EBAF0, v5, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v11;
  swift_endAccess();

  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100E7B7F4;
  v9 = v0[6];
  v8 = v0[7];

  return sub_100E7DE18(v9, v8, 500000000000000000, 0);
}

uint64_t sub_100E7B7F4(uint64_t a1, unint64_t a2)
{
  v6 = *v3;

  v7 = *(v6 + 40);
  if (v2)
  {

    v8 = sub_100E805F4;
  }

  else
  {
    sub_100016590(a1, a2);
    v8 = sub_100E7B948;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100E7B948()
{
  v19 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C188);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1000136BC(v5, v4, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting enabled push topic: %{public}s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v8 = v0[5];
  v9 = *(v8 + 152);
  v0[13] = v9;
  if (v9)
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = *(v8 + 160);
    ObjectType = swift_getObjectType();
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v14 = swift_allocObject();
    v0[14] = v14;
    *(v14 + 16) = xmmword_101385D80;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    swift_unknownObjectRetain();

    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_100E7BBBC;

    return dispatch thunk of APNSConnector.set(enabledTopics:)(v14, ObjectType, v12);
  }

  else
  {
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100E7BBBC()
{
  v3 = *v0;

  swift_unknownObjectRelease();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100E7BCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_100E7BD0C, 0, 0);
}

uint64_t sub_100E7BD0C()
{
  *(v0 + 16) = *(v0 + 32);
  AsyncStreamProvider.yield(value:transaction:)();
  v1 = *(v0 + 8);

  return v1();
}

void sub_100E7BD7C(Swift::Int a1, Swift::Int a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  swift_beginAccess();

  v10 = sub_100DE9538(v27, a1, a2);
  swift_endAccess();
  v11 = v27[1];
  if (v10)
  {
    v12 = v27[0];
    swift_beginAccess();
    if (!*(v3[26] + 16) || (, sub_100771D58(a1, a2), v14 = v13, , (v14 & 1) == 0))
    {
      sub_1000BC4D4(&qword_1016BD5D8, &qword_1013EBA90);
      swift_allocObject();
      v17 = AsyncStreamProvider.init()();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v3[26];
      v3[26] = 0x8000000000000000;
      sub_100FFBBDC(v17, a1, a2, isUniquelyReferenced_nonNull_native);

      v3[26] = v26;
      swift_endAccess();
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
      v21 = sub_100E7FD78(&qword_1016BD5C0, v20, type metadata accessor for APSNotificationService, &unk_1013EBA00);
      v22 = swift_allocObject();
      v23 = v12;
      v24 = v22;
      *(v22 + 16) = v3;
      *(v22 + 24) = v21;
      *(v22 + 32) = v3;
      *(v22 + 40) = a1;
      *(v22 + 48) = a2;
      *(v22 + 56) = v17;
      *(v22 + 64) = 1;
      *(v22 + 72) = v23;
      *(v22 + 80) = v11;
      *(v22 + 88) = v6;
      swift_retain_n();

      sub_10025EDD4(0, 0, v9, &unk_1013EBAA0, v24);

      goto LABEL_8;
    }
  }

  swift_beginAccess();
  if (*(v3[26] + 16))
  {

    sub_100771D58(a1, a2);
    v16 = v15;

    if (v16)
    {

LABEL_8:
      AsyncStreamProvider.stream(initialEvents:)();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100E7C0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = v9;
  v7[10] = v10;
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return _swift_task_switch(sub_100E7C114, a4, 0);
}

uint64_t sub_100E7C114()
{
  v1 = *(*(v0 + 40) + 200);
  *(v0 + 88) = v1;

  return _swift_task_switch(sub_100E7C18C, v1, 0);
}

uint64_t sub_100E7C18C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1013EBAB0;
  *(v5 + 24) = v2;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_100FFEE4C(&unk_1013EBAC0, v5, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v11;
  swift_endAccess();

  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_100E7C30C;
  v9 = v0[6];
  v8 = v0[7];

  return sub_100E7DE18(v9, v8, 500000000000000000, 0);
}

uint64_t sub_100E7C30C(uint64_t a1, unint64_t a2)
{
  v6 = *v3;

  v7 = *(v6 + 40);
  if (v2)
  {

    v8 = sub_100E805F8;
  }

  else
  {
    sub_100016590(a1, a2);
    v8 = sub_100E7C460;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100E7C460()
{
  v19 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C188);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1000136BC(v5, v4, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "Setting opportunistic push topic: %{public}s.", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v8 = v0[5];
  v9 = *(v8 + 152);
  v0[13] = v9;
  if (v9)
  {
    v11 = v0[9];
    v10 = v0[10];
    v12 = *(v8 + 160);
    ObjectType = swift_getObjectType();
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v14 = swift_allocObject();
    v0[14] = v14;
    *(v14 + 16) = xmmword_101385D80;
    *(v14 + 32) = v11;
    *(v14 + 40) = v10;
    swift_unknownObjectRetain();

    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_100E80600;

    return dispatch thunk of APNSConnector.set(opportunisticTopics:)(v14, ObjectType, v12);
  }

  else
  {
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_100E7C6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return _swift_task_switch(sub_100E805FC, 0, 0);
}

uint64_t sub_100E7C6F8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_100E7C740, v0, 0);
}

uint64_t sub_100E7C740()
{
  v1 = v0[2];
  v2 = *(v1 + 152);
  if (v2)
  {
    v3 = *(v1 + 160);
    v4 = qword_101694F18;
    swift_unknownObjectRetain_n();
    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177C188);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "APNSManager exists already. No need to create one", v8, 2u);
    }

    v0[6] = v2;
    v0[7] = v3;
    v9 = v0[2];
    v10 = v0[3];

    ObjectType = swift_getObjectType();
    v0[8] = ObjectType;
    v12 = swift_allocObject();
    v0[9] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    swift_unknownObjectRetain_n();

    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_100E7CCC4;

    return dispatch thunk of APNSConnector.setDidReceive(block:)(&unk_1013EBA68, v12, ObjectType, v3);
  }

  else
  {
    type metadata accessor for APNSManager();
    v14 = swift_task_alloc();
    v0[4] = v14;
    *v14 = v0;
    v14[1] = sub_100E7C9D4;

    return APNSManager.__allocating_init(environmentName:delegatePort:)(0x69746375646F7270, 0xEA00000000006E6FLL, 0xD000000000000021, 0x80000001013725D0);
  }
}

uint64_t sub_100E7C9D4(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_100E7CAEC, v2, 0);
}

uint64_t sub_100E7CAEC()
{
  v1 = qword_101694F18;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C188);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[5];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "APNSManager created", v7, 2u);
  }

  v0[6] = v6;
  v0[7] = &protocol witness table for APNSManager;
  v8 = v0[2];
  v9 = v0[3];

  ObjectType = swift_getObjectType();
  v0[8] = ObjectType;
  v11 = swift_allocObject();
  v0[9] = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  swift_unknownObjectRetain_n();

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_100E7CCC4;

  return dispatch thunk of APNSConnector.setDidReceive(block:)(&unk_1013EBA68, v11, ObjectType, &protocol witness table for APNSManager);
}

uint64_t sub_100E7CCC4()
{
  v1 = *(*v0 + 16);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100E7CE14, v1, 0);
}

uint64_t sub_100E7CE14()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[11] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  swift_unknownObjectRetain();

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_100E7CF08;
  v6 = v0[7];
  v5 = v0[8];

  return dispatch thunk of APNSConnector.setDidReceivePublicToken(block:)(&unk_1013EBA78, v3, v5, v6);
}

uint64_t sub_100E7CF08()
{
  v1 = *(*v0 + 16);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100E7D058, v1, 0);
}

uint64_t sub_100E7D058()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_100E7D140;
  v6 = v0[7];
  v5 = v0[8];

  return dispatch thunk of APNSConnector.setDidReceiveTokenForTopic(block:)(&unk_1013EBA88, v3, v5, v6);
}

uint64_t sub_100E7D140()
{
  v1 = *(*v0 + 16);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100E7D290, v1, 0);
}

uint64_t sub_100E7D290()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 48);
  swift_unknownObjectRelease();
  *(v1 + 152) = v4;
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100E7D30C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for APNSManager.IncomingMessage();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100E7D3CC, 0, 0);
}

uint64_t sub_100E7D3CC()
{
  v22 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C188);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    sub_100E7FD78(&qword_1016BD5D0, 255, &type metadata accessor for APNSManager.IncomingMessage, &protocol conformance descriptor for APNSManager.IncomingMessage);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1000136BC(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Did receive push: %{public}s", v12, 0xCu);
    sub_100007BAC(v13);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = sub_100D926B4;
  v19 = v0[2];

  return sub_100E7ECB0(v19);
}

uint64_t sub_100E7D640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_100E7D664, 0, 0);
}

uint64_t sub_100E7D664()
{
  v14 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C188);
  sub_100017D5C(v2, v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100016590(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    v8 = Data.hexString.getter();
    v10 = sub_1000136BC(v8, v9, &v13);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Did receive APS public token: %{private,mask.hash}s", v6, 0x16u);
    sub_100007BAC(v7);
  }

  v11 = v0[4];

  return _swift_task_switch(sub_100E7D820, v11, 0);
}

uint64_t sub_100E7D820()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = *(v2 + 168);
  v4 = *(v2 + 176);
  *(v2 + 168) = v3;
  *(v2 + 176) = v1;
  sub_100017D5C(v3, v1);
  sub_100006654(v5, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_100E7D898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a7;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_100E7D8C0, 0, 0);
}

uint64_t sub_100E7D8C0()
{
  v15 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177C188);
  sub_100017D5C(v2, v1);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  sub_100016590(v2, v1);

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[4];
    v6 = v0[5];
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 141558531;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    v9 = Data.hexString.getter();
    v11 = sub_1000136BC(v9, v10, &v14);

    *(v8 + 14) = v11;
    *(v8 + 22) = 2082;
    *(v8 + 24) = sub_1000136BC(v7, v6, &v14);
    _os_log_impl(&_mh_execute_header, v4, v5, "Did receive APS topic token: %{private,mask.hash}s, topic: %{public}s.", v8, 0x20u);
    swift_arrayDestroy();
  }

  v12 = v0[6];

  return _swift_task_switch(sub_100E7DAC8, v12, 0);
}

uint64_t sub_100E7DAC8()
{
  sub_100E7DB38(0, 0xF000000000000000, v0[4], v0[5], v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

void sub_100E7DB38(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = v6;
  if (a2 >> 60 != 15)
  {
    v12 = v6[21];
    v13 = v7[22];
    v7[21] = result;
    v7[22] = a2;
    sub_100017D5C(result, a2);
    sub_100006654(v12, v13);
  }

  if (a4)
  {
    sub_100E7FAA8(a3, a4, a5, a6);

    sub_100017D5C(a5, a6);
    sub_100016590(a5, a6);

    sub_100017D5C(a5, a6);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v7[24];
    v7[24] = 0x8000000000000000;
    sub_1010018BC(a5, a6, a3, a4, isUniquelyReferenced_nonNull_native);

    v7[24] = v24;
    swift_endAccess();

    sub_100017D5C(a5, a6);
    sub_100016590(a5, a6);
    swift_beginAccess();
    v15 = v7[16];
    if (*(v15 + 16) && (, v16 = sub_100771D58(a3, a4), v18 = v17, , (v18 & 1) != 0))
    {
      v19 = *(*(v15 + 56) + 8 * v16);

      v23 = a3;
      if (v19 >> 62)
      {
        goto LABEL_20;
      }

      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        while (1)
        {
          v21 = 0;
          a3 = v19 & 0xFFFFFFFFFFFFFF8;
          while ((v19 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v22 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
LABEL_16:
              __break(1u);
              goto LABEL_17;
            }

LABEL_12:
            OnceCheckedContinuation.resume(returning:)();

            ++v21;
            if (v22 == v20)
            {
              goto LABEL_21;
            }
          }

          if (v21 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          __break(1u);
LABEL_20:
          v20 = _CocoaArrayWrapper.endIndex.getter();
          if (!v20)
          {
            goto LABEL_21;
          }
        }

        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

LABEL_21:

      a3 = v23;
    }

    else
    {
LABEL_17:
    }

    sub_100017D5C(a5, a6);
    sub_100016590(a5, a6);
    swift_beginAccess();
    sub_1001E156C(0, a3, a4);
    swift_endAccess();
    sub_100E7FAF4(a3, a4, a5, a6);
  }
}

uint64_t sub_100E7DE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return _swift_task_switch(sub_100E7DE40, v4, 0);
}

uint64_t sub_100E7DE40()
{
  v17 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C188);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_1000136BC(v5, v4, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetch APS topic token: %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  v8 = v0[8];
  v10 = v0[4];
  v9 = v0[5];
  v11 = swift_allocObject();
  v0[9] = v11;
  v11[2] = v8;
  v11[3] = v10;
  v11[4] = v9;

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_100E7E068;
  v13 = v0[6];
  v14 = v0[7];

  return withTimeout<A>(_:block:)(v0 + 2, v13, v14, &unk_1013EBA48, v11, &type metadata for Data);
}

uint64_t sub_100E7E068()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_100E7E1A8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_100E7E18C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100E7E1A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E7E20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_100E7E230, 0, 0);
}

uint64_t sub_100E7E230()
{
  v1 = *(v0 + 40);
  v6 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v6;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_100E7E330;
  v4 = *(v0 + 16);

  return withOnceCheckedThrowingContinuation<A>(function:_:)(v4, 0xD00000000000001DLL, 0x80000001013725B0, sub_100E7F9C8, v2, &type metadata for Data);
}

uint64_t sub_100E7E330()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008EE2C4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100E7E46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a2;
  v12[5] = a3;
  v12[6] = a4;
  v12[7] = a1;

  sub_10025EDD4(0, 0, v10, &unk_1013EBA58, v12);
}

uint64_t sub_100E7E5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100014744;

  return sub_100E7E654(a5, a6, a7);
}

uint64_t sub_100E7E654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  return _swift_task_switch(sub_100E7E678, v3, 0);
}

uint64_t sub_100E7E678()
{
  v1 = v0[16];
  swift_beginAccess();
  v2 = *(v1 + 128);
  if (*(v2 + 16))
  {
    v4 = v0[13];
    v3 = v0[14];

    v5 = sub_100771D58(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      v40 = v7;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v8 = v0[14];
      v9 = v0[13];
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v1 + 128);
      *(v1 + 128) = 0x8000000000000000;
      sub_1010018A8(v40, v9, v8, isUniquelyReferenced_nonNull_native);

      *(v1 + 128) = v41;
      swift_endAccess();
      goto LABEL_19;
    }
  }

  v11 = v0[16];
  v12 = *(v11 + 152);
  v0[17] = v12;
  if (!v12)
  {
    sub_100E7F8C0();
    v29 = swift_allocError();
    *v30 = 0;
    v0[11] = v29;
    OnceCheckedContinuation.resume(throwing:)();
LABEL_18:

LABEL_19:
    v37 = v0[1];

    return v37();
  }

  v13 = *(v11 + 160);
  v14 = objc_opt_self();
  swift_unknownObjectRetain();
  v15 = [v14 mainBundle];
  v16 = [v15 bundleIdentifier];

  if (!v16)
  {
    if (qword_101694F18 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C188);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Cannot read bundle identifier to fetch token", v34, 2u);
    }

    sub_100E7F8C0();
    v35 = swift_allocError();
    *v36 = 1;
    v0[12] = v35;
    OnceCheckedContinuation.resume(throwing:)();
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v17 = v0[14];
  v18 = v0[15];
  v39 = v13;
  v19 = v0[13];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v0[18] = v22;
  sub_1000BC4D4(&unk_10169BAE0, &unk_10138C430);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10138C320;
  *(v23 + 32) = v18;
  swift_beginAccess();

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v1 + 128);
  *(v1 + 128) = 0x8000000000000000;
  sub_1010018A8(v23, v19, v17, v24);

  *(v1 + 128) = v42;
  swift_endAccess();
  ObjectType = swift_getObjectType();
  v26 = swift_task_alloc();
  v0[19] = v26;
  *v26 = v0;
  v26[1] = sub_100E7EB24;
  v28 = v0[13];
  v27 = v0[14];

  return dispatch thunk of APNSConnector.requestToken(for:identifier:)(v28, v27, v20, v22, ObjectType, v39);
}

uint64_t sub_100E7EB24()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_100E7EC50, v1, 0);
}

uint64_t sub_100E7EC50()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E7ECB0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for APNSManager.IncomingMessage();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_100E7EDD4, v1, 0);
}

uint64_t sub_100E7EDD4()
{
  v44 = v0;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C188);
  (*(v1 + 16))(v2, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v11 = *(v0 + 56);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_1000136BC(0x5041656C646E6168, 0xED0000293A5F2853, &v43);
    *(v12 + 12) = 2080;
    v13 = APNSManager.IncomingMessage.topic.getter();
    v15 = v14;
    (*(v9 + 8))(v10, v11);
    v16 = sub_1000136BC(v13, v15, &v43);

    *(v12 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s topic: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  v17 = objc_opt_self();
  APNSManager.IncomingMessage.userInfo.getter();
  sub_1000BC4D4(&qword_1016A0B00, &unk_1013A48B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v19 = [v17 dataWithJSONObject:isa options:0 error:v0 + 16];

  v20 = *(v0 + 16);
  if (v19)
  {
    v22 = *(v0 + 40);
    v21 = *(v0 + 48);
    v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = *(v22 + 200);
    v27 = APNSManager.IncomingMessage.topic.getter();
    v29 = v28;
    v30 = type metadata accessor for TaskPriority();
    (*(*(v30 - 8) + 56))(v21, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v26;
    v31[5] = v27;
    v31[6] = v29;
    v31[7] = v23;
    v31[8] = v25;

    sub_10025F6E0(0, 0, v21, &unk_1013EBA30, v31);
  }

  else
  {
    v32 = v20;
    v33 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v36 = 136446210;
      *(v0 + 24) = v33;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v38 = String.init<A>(describing:)();
      v40 = sub_1000136BC(v38, v39, &v43);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to decode APS message due to %{public}s", v36, 0xCu);
      sub_100007BAC(v37);
    }

    else
    {
    }
  }

  v41 = *(v0 + 8);

  return v41();
}

void *sub_100E7F2E4()
{

  swift_unknownObjectRelease();
  sub_100006654(*(v0 + 168), *(v0 + 176));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100E7F354()
{
  sub_100E7F2E4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100E7F3A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for APSNotificationService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100E7F44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for APSNotificationService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100E7F510(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for APSNotificationService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100E7F5B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100E7B0F8();
}

uint64_t sub_100E7F644(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for APSNotificationService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100E7F6EC()
{
  type metadata accessor for APSNotificationService();
  sub_100E7FD78(&qword_101698D40, v0, type metadata accessor for APSNotificationService, &unk_1013EB9A0);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100E7F7E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100014744;

  return sub_10062CFD0(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_100E7F8C0()
{
  result = qword_1016BD5C8;
  if (!qword_1016BD5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD5C8);
  }

  return result;
}

uint64_t sub_100E7F914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014650;

  return sub_100E7E20C(a1, v4, v5, v6);
}

uint64_t sub_100E7F9D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100E7E5A0(a1, v4, v5, v6, v7, v9, v8);
}

void sub_100E7FAA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100017D5C(a3, a4);
  }
}

void sub_100E7FAF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100016590(a3, a4);
  }
}

uint64_t sub_100E7FB40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100E7D30C(a1, v4);
}

uint64_t sub_100E7FBE8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100E7D640(a1, a2, v6);
}

uint64_t sub_100E7FC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100014744;

  return sub_100E7D898(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_100E7FD78(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_100E7FDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100E7C0E4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100E7FEC0(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100E7C6D4(a1, a2, v2);
}

uint64_t sub_100E7FF68(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100E7AEB4(a1, a2, v6);
}

uint64_t sub_100E80030()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_100E80088(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100E7B5CC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100E80188(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100014744;

  return sub_100E7BCE8(a1, a2, v2);
}

uint64_t sub_100E80230(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_100E7AEB4(a1, a2, v6);
}

void *sub_100E802F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  swift_defaultActor_initialize();
  v2[14] = 0xD000000000000016;
  v2[15] = 0x80000001013EB8F0;
  v2[16] = _swiftEmptyDictionarySingleton;
  v2[17] = &_swiftEmptySetSingleton;
  v2[18] = &_swiftEmptySetSingleton;
  v2[19] = 0;
  v2[20] = 0;
  v2[21] = 0;
  v2[22] = 0xF000000000000000;
  type metadata accessor for WorkItemQueue();
  v10 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  UUID.init()();
  v2[23] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v2[24] = _swiftEmptyDictionarySingleton;
  type metadata accessor for APSNotificationMessageRouter();
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v11 + 112) = _swiftEmptyDictionarySingleton;
  v3[25] = v11;
  v3[26] = _swiftEmptyDictionarySingleton;
  if (qword_101694F18 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_10177C188);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "init(apnsManager:) called", v15, 2u);
  }

  v3[19] = a1;
  v3[20] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return v3;
}

unint64_t sub_100E805A0()
{
  result = qword_1016BD5E0;
  if (!qword_1016BD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016BD5E0);
  }

  return result;
}

uint64_t sub_100E80604(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for CorrelationIdentifierMap();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016A2928, &unk_1013EBDE0);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Destination();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100E80758, 0, 0);
}

uint64_t sub_100E80758()
{
  v28 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[11] = sub_1000076D4(v1, qword_10177C1A0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v27 = v5;
    *v4 = 136315138;
    v6 = Array.description.getter();
    v8 = sub_1000136BC(v6, v7, &v27);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Creating map for %s.", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = v0[3];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v0[9];
    v12 = (v11 + 48);
    v26 = v11;
    v13 = (v11 + 32);
    v14 = v9 + 48;
    v15 = _swiftEmptyArrayStorage;
    do
    {
      v17 = v0[7];
      v16 = v0[8];

      Destination.init(stringRepresentation:)();
      if ((*v12)(v17, 1, v16) == 1)
      {
        sub_10000B3A8(v0[7], &qword_1016A2928, &unk_1013EBDE0);
      }

      else
      {
        v18 = *v13;
        (*v13)(v0[10], v0[7], v0[8]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_100A5C1A8(0, *(v15 + 2) + 1, 1, v15);
        }

        v20 = *(v15 + 2);
        v19 = *(v15 + 3);
        if (v20 >= v19 >> 1)
        {
          v15 = sub_100A5C1A8((v19 > 1), v20 + 1, 1, v15);
        }

        v21 = v0[10];
        v22 = v0[8];
        *(v15 + 2) = v20 + 1;
        v18(&v15[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20], v21, v22);
      }

      v14 += 24;
      --v10;
    }

    while (v10);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_100E80ABC;
  v24 = v0[6];

  return CorrelationIdentifierMap.init(serviceName:destinations:disambiguate:)(v24, 0xD00000000000001BLL, 0x800000010134CCA0, v15, sub_1004EEDDC, 0);
}

uint64_t sub_100E80ABC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100E80C8C;
  }

  else
  {
    v2 = sub_100E80BD0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E80BD0()
{
  (*(v0[5] + 32))(v0[2], v0[6], v0[4]);
  (*(v0[5] + 56))(v0[2], 0, 1, v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100E80C8C()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Map creation error: %{public}@.", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  (*(v0[5] + 56))(v0[2], 1, 1, v0[4]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100E80E2C()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C1A0);
  v1 = sub_1000076D4(v0, qword_10177C1A0);
  if (qword_101694F28 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C1B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100E80EF4()
{
  v1[7] = v0;
  v2 = type metadata accessor for UUID();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_100E80FE4;

  return daemon.getter();
}

uint64_t sub_100E80FE4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 96) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v6 = sub_100E9056C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E9056C(&qword_1016B1180, 255, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v3 = v9;
  v3[1] = sub_100E811C8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E811C8(uint64_t a1)
{
  v3 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
    v4 = v3[7];
    v5 = sub_100E81528;
  }

  else
  {
    v6 = v3[7];

    v5 = sub_100E812F0;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100E812F0(uint64_t a1)
{
  v2 = v1[7];
  v1[5] = type metadata accessor for PeerTrustService();
  v1[6] = sub_100E9056C(&qword_1016BD748, v3, type metadata accessor for PeerTrustService, &unk_1013EBC58);
  v1[2] = v2;

  v4 = swift_task_alloc();
  v1[16] = v4;
  *v4 = v1;
  v4[1] = sub_100E813EC;
  v5 = v1[10];

  return sub_100D1C654(v5, (v1 + 2));
}

uint64_t sub_100E813EC()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = sub_100E816DC;
  }

  else
  {
    v5 = v2[7];
    (*(v2[9] + 8))(v2[10], v2[8]);
    sub_100007BAC(v2 + 2);
    v4 = sub_100D272FC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100E81528()
{

  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C1A0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to subscribe to IDSTransportService_ItemSharingCrossAccount %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100E816DC()
{

  sub_100007BAC((v0 + 16));
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C1A0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to subscribe to IDSTransportService_ItemSharingCrossAccount %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100E81898(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return _swift_task_switch(sub_100E818B8, a1, 0);
}

uint64_t sub_100E818B8()
{

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v1 = v0;
  v1[1] = sub_100E819A4;
  v3 = *(v0 + 48);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100E90620, v3, v2);
}

uint64_t sub_100E819A4()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_100E81ABC, v1, 0);
}

uint64_t sub_100E81ABC()
{
  v1 = v0[7];
  v0[9] = v0[2];
  return _swift_task_switch(sub_100E81AE0, v1, 0);
}

uint64_t sub_100E81AE0()
{
  v0[10] = *(v0[9] + 16);

  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v0[11] = qword_10177B348;

  return _swift_task_switch(sub_100E81B8C, 0, 0);
}

uint64_t sub_100E81B8C()
{

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_100E81C50;
  v2 = *(v0 + 88);

  return unsafeBlocking<A>(_:)(v0 + 24, sub_1000D2BE0, v2, &type metadata for Configuration);
}

uint64_t sub_100E81C50()
{

  return _swift_task_switch(sub_100E81D68, 0, 0);
}

uint64_t sub_100E81D68()
{
  v1 = v0[7];
  v0[13] = v0[3];
  return _swift_task_switch(sub_100E81D8C, v1, 0);
}

uint64_t sub_100E81D8C()
{
  v1 = v0[10];
  v2 = sub_101074A58(v0[13]);

  if (v1 >= v2)
  {
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000076D4(v4, qword_10177A560);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = v0[10];
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      *(v8 + 4) = v7;
      *(v8 + 12) = 2048;
      *(v8 + 14) = v2;
      _os_log_impl(&_mh_execute_header, v5, v6, "BeaconSharingService: cannot create new peer trust. existingTrusts: %ld >= maxShareMembers: %lu.", v8, 0x16u);
    }

    type metadata accessor for SPBeaconSharingError(0);
    v0[5] = 9;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100E9056C(&qword_101696340, 255, type metadata accessor for SPBeaconSharingError, &unk_10138A4B4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    v3 = v0[1];
  }

  else
  {
    v3 = v0[1];
  }

  return v3();
}

uint64_t sub_100E81F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for PeerCommunicationIdentifier(0);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for OwnerPeerTrust(0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_100E82070, v3, 0);
}

uint64_t sub_100E82070()
{
  sub_100EB3858();
  v4 = sub_100EB3708(v1, v2, v3);

  v5 = [v4 destination];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [v5 _stripPotentialTokenURIWithToken:0];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v0[11] = v7;
    v0[12] = v9;

    _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v7, v9);
    v0[13] = v11;
    v0[14] = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v0[15] = v10;
      v15 = swift_task_alloc();
      v0[16] = v15;
      *v15 = v0;
      v15[1] = sub_100E82260;

      return sub_100E86158(v15, v13, v14);
    }
  }

  sub_100E8FB24();
  swift_allocError();
  *v17 = 3;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_100E82260(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 40);

    return _swift_task_switch(sub_100E823D0, v7, 0);
  }
}

uint64_t sub_100E823D0()
{
  v1 = v0[17];
  if (*(v1 + 16))
  {

    if (*(v1 + 16))
    {
      v3 = v0[10];
      v4 = v0[2];
      v5 = *(v0[9] + 80);
      sub_100E90330(v0[17] + ((v5 + 32) & ~v5), v3, type metadata accessor for OwnerPeerTrust);

      sub_100E90504(v3, v4, type metadata accessor for OwnerPeerTrust);

      v6 = v0[1];

      return v6();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v7 = swift_task_alloc();
    v0[18] = v7;
    *v7 = v0;
    v7[1] = sub_100E8254C;
    v8 = v0[4];

    return sub_100E81898(v8);
  }

  return result;
}

uint64_t sub_100E8254C()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);

    return _swift_task_switch(sub_100E82DBC, v3, 0);
  }

  else
  {
    v4 = *(v2 + 112);
    v5 = *(v2 + 120);
    v6 = swift_task_alloc();
    *(v2 + 160) = v6;
    *v6 = v2;
    v6[1] = sub_100E826E8;
    v7 = *(v2 + 104);

    return sub_100D4E560(v5, v7, v4);
  }
}

uint64_t sub_100E826E8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[21] = a1;
  v5[22] = a2;
  v5[23] = v2;

  v6 = v4[5];
  if (v2)
  {
    v7 = sub_100E829FC;
  }

  else
  {
    v7 = sub_100E82820;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100E82820()
{
  if (*(v0 + 176))
  {

    return _swift_task_switch(sub_100E8291C, 0, 0);
  }

  else
  {

    sub_100E8FB24();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_100E8291C()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = swift_task_alloc();
  *(v0 + 192) = v3;
  *v3 = v0;
  v3[1] = sub_100E82A80;
  v4 = *(v0 + 104);

  return sub_101269AA4(v2, v4, v1);
}

uint64_t sub_100E829FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E82A80(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[25] = a1;
  v4[26] = a2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[5];

    return _swift_task_switch(sub_100E82BFC, v8, 0);
  }
}

uint64_t sub_100E82BFC()
{
  v16 = v0;
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 176);
    v4 = *(v0 + 120);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 16);
    *v9 = *(v0 + 168);
    *(v9 + 8) = v3;
    *(v9 + 16) = v4;
    *(v9 + 24) = v5;
    *(v9 + 40) = v2;
    *(v9 + 48) = v1;
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    sub_100E90330(v9, v10 + v8[7], type metadata accessor for PeerCommunicationIdentifier);
    sub_1005CAD68(v15);
    sub_100E90398(v9, type metadata accessor for PeerCommunicationIdentifier);
    *v10 = xmmword_10138C660;
    *(v10 + v8[6]) = 1;
    v11 = (v10 + v8[8]);
    *v11 = v7;
    v11[1] = v6;
    *(v10 + v8[9]) = *v15;
    *(v10 + v8[10]) = 0;
  }

  else
  {

    sub_100E8FB24();
    swift_allocError();
    *v13 = 4;
    swift_willThrow();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100E82DBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E82E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = type metadata accessor for PeerCommunicationIdentifier(0);
  v4[15] = swift_task_alloc();
  v5 = type metadata accessor for OwnerPeerTrust(0);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100E82F34, v3, 0);
}

uint64_t sub_100E82F34()
{
  sub_100EB3858();
  v4 = sub_100EB3708(v1, v2, v3);

  v5 = [v4 destination];

  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = [v5 _stripPotentialTokenURIWithToken:0];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v0[19] = v7;
    v0[20] = v9;

    _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v7, v9);
    v0[21] = v11;
    v0[22] = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v0[23] = v10;
      v15 = swift_task_alloc();
      v0[24] = v15;
      *v15 = v0;
      v15[1] = sub_100E83124;

      return sub_100E86158(v15, v13, v14);
    }
  }

  sub_100E8FB24();
  swift_allocError();
  *v17 = 3;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_100E83124(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 200) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 104);

    return _swift_task_switch(sub_100E83294, v7, 0);
  }
}

uint64_t sub_100E83294()
{
  v1 = v0[25];
  if (*(v1 + 16))
  {

    if (*(v1 + 16))
    {
      v3 = v0[18];
      v4 = v0[10];
      v5 = *(v0[17] + 80);
      sub_100E90330(v0[25] + ((v5 + 32) & ~v5), v3, type metadata accessor for OwnerPeerTrust);

      sub_100E90504(v3, v4, type metadata accessor for OwnerPeerTrust);

      v6 = v0[1];

      return v6();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v7 = swift_task_alloc();
    v0[26] = v7;
    *v7 = v0;
    v7[1] = sub_100E83410;
    v8 = v0[12];

    return sub_100E81898(v8);
  }

  return result;
}

uint64_t sub_100E83410()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_100E83DD0;
  }

  else
  {
    v4 = sub_100E8352C;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100E8352C()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  *(v0 + 224) = qword_101699690;
  v2 = *(v0 + 184);
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_100E83610;
  v4 = *(v0 + 168);

  return sub_101269AA4(v2, v4, v1);
}

uint64_t sub_100E83610(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[2] = v3;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = v2;
  v5[30] = v2;

  if (v2)
  {
    v6 = sub_100E83918;
    v7 = 0;
  }

  else
  {
    v7 = v5[13];
    v5[31] = a2;
    v6 = sub_100E8374C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100E8374C()
{
  v17 = v0;
  v1 = *(v0 + 248);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 80);
    *v6 = *(v0 + 184);
    *(v6 + 8) = v3;
    *(v6 + 24) = v2;
    *(v6 + 32) = v1;
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    sub_100E90330(v6, v8 + v7[7], type metadata accessor for PeerCommunicationIdentifier);
    sub_1005CAD68(v16);
    sub_100E90398(v6, type metadata accessor for PeerCommunicationIdentifier);
    *v8 = xmmword_10138C660;
    *(v8 + v7[6]) = 1;
    v9 = (v8 + v7[8]);
    *v9 = v5;
    v9[1] = v4;
    *(v8 + v7[9]) = *v16;
    *(v8 + v7[10]) = 0;

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v14 = swift_task_alloc();
    *(v0 + 256) = v14;
    *v14 = v0;
    v14[1] = sub_100E83A00;
    v15 = *(v0 + 168);

    return sub_101269EA4(v13, v15, v12);
  }
}

uint64_t sub_100E83918()
{
  v1 = *(v0 + 104);

  return _swift_task_switch(sub_100E83990, v1, 0);
}

uint64_t sub_100E83990()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E83A00(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[6] = v3;
  v5[7] = a1;
  v5[8] = a2;
  v5[9] = v2;
  v5[33] = v2;

  if (v2)
  {
    v6 = sub_100E83CE8;
    v7 = 0;
  }

  else
  {
    v7 = v5[13];
    v5[34] = a2;
    v6 = sub_100E83B3C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100E83B3C()
{
  v14 = v0;
  v1 = *(v0 + 272);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 168);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);
    v6 = *(v0 + 120);
    v7 = *(v0 + 128);
    v8 = *(v0 + 80);
    *v6 = *(v0 + 184);
    *(v6 + 8) = v3;
    *(v6 + 24) = v2;
    *(v6 + 32) = v1;
    swift_storeEnumTagMultiPayload();
    UUID.init()();
    sub_100E90330(v6, v8 + v7[7], type metadata accessor for PeerCommunicationIdentifier);
    sub_1005CAD68(v13);
    sub_100E90398(v6, type metadata accessor for PeerCommunicationIdentifier);
    *v8 = xmmword_10138C660;
    *(v8 + v7[6]) = 1;
    v9 = (v8 + v7[8]);
    *v9 = v5;
    v9[1] = v4;
    *(v8 + v7[9]) = *v13;
    *(v8 + v7[10]) = 0;
  }

  else
  {

    sub_100E8FB24();
    swift_allocError();
    *v11 = 4;
    swift_willThrow();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100E83CE8()
{
  v1 = *(v0 + 104);

  return _swift_task_switch(sub_100E83D60, v1, 0);
}

uint64_t sub_100E83D60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E83DD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E83E54(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 96) = v12;
  *(v8 + 104) = v7;
  *(v8 + 80) = a7;
  *(v8 + 88) = v11;
  *(v8 + 64) = a5;
  *(v8 + 72) = a6;
  *(v8 + 48) = a3;
  *(v8 + 56) = a4;
  *(v8 + 232) = a2;
  *(v8 + 40) = a1;
  *(v8 + 112) = type metadata accessor for PeerCommunicationIdentifier(0);
  *(v8 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100E83F04, v7, 0);
}

uint64_t sub_100E83F04()
{
  v23 = v0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v1 _stripPotentialTokenURIWithToken:0];

  if (v2 && (v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v5 = v4, v2, _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v3, v5), *(v0 + 128) = v7, (*(v0 + 136) = v8) != 0))
  {
    *(v0 + 144) = v6;

    return _swift_task_switch(sub_100E841A0, 0, 0);
  }

  else
  {
    if (qword_101694F20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000076D4(v9, qword_10177C1A0);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 88);
      v12 = *(v0 + 96);
      v14 = *(v0 + 232);
      v15 = swift_slowAlloc();
      v22[0] = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_1000136BC(v13, v12, v22);
      *(v15 + 12) = 2080;
      v16 = sub_1008BA9C0(v14);
      v18 = sub_1000136BC(v16, v17, v22);

      *(v15 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid messaging destination: %s for share type %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    sub_100E8FB24();
    swift_allocError();
    *v19 = 3;
    swift_willThrow();

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_100E841A0()
{
  if (qword_1016944B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_100E84280;
  v4 = *(v0 + 128);

  return sub_101269AA4(v2, v4, v1);
}

uint64_t sub_100E84280(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[20] = a1;
  v4[21] = a2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[13];

    return _swift_task_switch(sub_100E843D8, v8, 0);
  }
}

uint64_t sub_100E843D8()
{
  v41 = v0;
  v1 = *(v0 + 168);
  if (!v1)
  {

    if (qword_101694F20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_10177C1A0);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = *(v0 + 88);
      v11 = *(v0 + 96);
      v13 = *(v0 + 232);
      v14 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1000136BC(v12, v11, v40);
      *(v14 + 12) = 2080;
      v15 = sub_1008BA9C0(v13);
      v17 = sub_1000136BC(v15, v16, v40);

      *(v14 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v9, v10, "Invalid messaging destination: %s for share type %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    sub_100E8FB24();
    swift_allocError();
    v19 = 3;
    goto LABEL_19;
  }

  v2 = *(v0 + 232);
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      v3 = *(v0 + 160);
      v4 = *(v0 + 128);
      v5 = *(v0 + 120);
      *v5 = *(v0 + 144);
      *(v5 + 8) = v4;
      *(v5 + 24) = v3;
      *(v5 + 32) = v1;
      swift_storeEnumTagMultiPayload();
      v6 = qword_101694558;

      if (v6 != -1)
      {
        swift_once();
      }

      if (qword_10177A8F0 == *(v0 + 56) && qword_10177A8F8 == *(v0 + 64))
      {
        v7 = *(v0 + 136);
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v7 = *(v0 + 136);
        if ((v23 & 1) == 0)
        {

          v26 = *(v0 + 56);
          v28 = *(v0 + 64);
          goto LABEL_26;
        }
      }

      v24 = sub_100EB3708(*(v0 + 144), *(v0 + 128), v7);

      v25 = [v24 destination];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

LABEL_26:
      v29 = *(v0 + 120);
      v31 = *(v0 + 72);
      v30 = *(v0 + 80);
      v33 = *(v0 + 40);
      v32 = *(v0 + 48);
      v34 = type metadata accessor for MemberPeerTrust(0);
      v35 = v34[5];
      v36 = type metadata accessor for UUID();
      (*(*(v36 - 8) + 16))(&v33[v35], v32, v36);
      sub_100E90504(v29, &v33[v34[7]], type metadata accessor for PeerCommunicationIdentifier);
      *v33 = xmmword_10138C660;
      v33[v34[6]] = 1;
      v37 = &v33[v34[8]];
      *v37 = v26;
      v37[1] = v28;
      v38 = &v33[v34[9]];
      *v38 = v31;
      v38[1] = v30;
      sub_100017D5C(v31, v30);

      v22 = *(v0 + 8);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v2 != 4)
  {
LABEL_18:

    sub_100E8FB24();
    swift_allocError();
    v19 = 5;
LABEL_19:
    *v18 = v19;
    swift_willThrow();

    v22 = *(v0 + 8);
LABEL_20:

    return v22();
  }

  v20 = swift_task_alloc();
  *(v0 + 176) = v20;
  v21 = sub_1000BC4D4(&qword_1016BA708, &qword_1013EBDD0);
  *(v0 + 184) = v21;
  *v20 = v0;
  v20[1] = sub_100E848E4;

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x80000001013EBBC0, sub_100E85014, 0, v21);
}

uint64_t sub_100E848E4()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);

    v4 = sub_100E84F44;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 104);
    v4 = sub_100E84A18;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100E84A18()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[2];
  v0[25] = v3;
  v0[4] = v3;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[27] = v5;
  v6 = sub_100E904A0();
  *v5 = v0;
  v5[1] = sub_100E84B04;
  v7 = v0[23];

  return Sequence.asyncFirst(where:)(v0 + 3, &unk_1013EBE18, v4, v7, v6);
}

uint64_t sub_100E84B04()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 104);

  if (v0)
  {

    v4 = sub_100E84FA8;
  }

  else
  {

    v4 = sub_100E84C58;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100E84C58()
{
  v1 = *(v0 + 24);
  if (!v1 || (v2 = [*(v0 + 24) altDSID], v1, !v2))
  {

    sub_100E8FB24();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();

    v13 = *(v0 + 8);
    goto LABEL_13;
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v31 = *(v0 + 128);
  v6 = *(v0 + 120);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *v6 = v7;
  *(v6 + 8) = v9;
  *(v6 + 16) = v5;
  *(v6 + 24) = v31;
  *(v6 + 40) = v4;
  *(v6 + 48) = v3;
  swift_storeEnumTagMultiPayload();
  v10 = qword_101694558;

  if (v10 != -1)
  {
    swift_once();
  }

  if (qword_10177A8F0 == *(v0 + 56) && qword_10177A8F8 == *(v0 + 64))
  {
    v11 = *(v0 + 136);
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v11 = *(v0 + 136);
    if ((v14 & 1) == 0)
    {

      v17 = *(v0 + 56);
      v19 = *(v0 + 64);
      goto LABEL_12;
    }
  }

  v15 = sub_100EB3708(*(v0 + 144), *(v0 + 128), v11);

  v16 = [v15 destination];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

LABEL_12:
  v20 = *(v0 + 120);
  v22 = *(v0 + 72);
  v21 = *(v0 + 80);
  v24 = *(v0 + 40);
  v23 = *(v0 + 48);
  v25 = type metadata accessor for MemberPeerTrust(0);
  v26 = v25[5];
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 16))(&v24[v26], v23, v27);
  sub_100E90504(v20, &v24[v25[7]], type metadata accessor for PeerCommunicationIdentifier);
  *v24 = xmmword_10138C660;
  v24[v25[6]] = 1;
  v28 = &v24[v25[8]];
  *v28 = v17;
  v28[1] = v19;
  v29 = &v24[v25[9]];
  *v29 = v22;
  v29[1] = v21;
  sub_100017D5C(v22, v21);

  v13 = *(v0 + 8);
LABEL_13:

  return v13();
}

uint64_t sub_100E84F44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E84FA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E85040(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v3[4] = *a1;
  return _swift_task_switch(sub_100E85068, 0, 0);
}

uint64_t sub_100E85068()
{
  v1 = [*(v0 + 32) appleID];
  if (v1 && (v2 = v1, v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v5 = v4, v2, _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v3, v5), (*(v0 + 40) = v8) != 0))
  {
    v9 = v6;
    v10 = v7;
    v11 = v8;
    if (qword_1016944B8 != -1)
    {
      swift_once();
    }

    v12 = swift_task_alloc();
    *(v0 + 48) = v12;
    *v12 = v0;
    v12[1] = sub_100E851CC;

    return sub_101269AA4(v9, v10, v11);
  }

  else
  {
    v14 = *(v0 + 8);

    return v14(0);
  }
}

uint64_t sub_100E851CC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[7] = a1;
  v4[8] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5(0);
  }

  else
  {

    return _swift_task_switch(sub_100E85324, 0, 0);
  }
}

uint64_t sub_100E85324()
{
  v1 = v0[8];
  if (v1)
  {
    if (v0[7] == v0[2] && v1 == v0[3])
    {
      v3 = 1;
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v0[1];

  return v4(v3 & 1);
}

uint64_t sub_100E853C8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 208) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  v6 = type metadata accessor for UUID();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  type metadata accessor for PeerTrustAckEnvelopeV1(0);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100E854E0, v4, 0);
}

uint64_t sub_100E854E0()
{
  v12 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);
  v6 = *(v4 + 16);
  *(v0 + 104) = v6;
  *(v0 + 112) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  sub_100E90330(v2, v1, type metadata accessor for PeerTrustAckEnvelopeV1);
  sub_100539DD4(0, 1, v1, v9);
  *(v0 + 209) = v9[0];
  *(v0 + 120) = v10;
  *(v0 + 136) = v11;
  v7 = swift_task_alloc();
  *(v0 + 144) = v7;
  *v7 = v0;
  v7[1] = sub_100E85688;

  return daemon.getter();
}

uint64_t sub_100E85688(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 152) = a1;

  v3 = swift_task_alloc();
  *(v2 + 160) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for IDSTransportService_ItemSharingCrossAccount();
  v6 = sub_100E9056C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E9056C(&qword_1016B1180, 255, type metadata accessor for IDSTransportService_ItemSharingCrossAccount, &unk_1013E46B0);
  *v3 = v9;
  v3[1] = sub_100E8586C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E8586C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 168) = a1;
  *(v4 + 176) = v1;

  v5 = *(v3 + 40);
  if (v1)
  {
    v6 = sub_100E85FC0;
  }

  else
  {
    v6 = sub_100E859BC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100E859BC()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 208);
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  v4 = swift_allocObject();
  *(v0 + 184) = v4;
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;

  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_100E85ABC;
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 120);
  v9 = *(v0 + 80);
  v10 = *(v0 + 209);

  return sub_100D1C9D8(v9, v10, v8, v6, v7, v4);
}

uint64_t sub_100E85ABC()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_100E86084;
  }

  else
  {
    v4 = sub_100E85C04;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100E85C04()
{
  v37 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[2];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C1A0);
  v1(v2, v6, v5);
  v1(v4, v3, v5);
  v8 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v8, v35);
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[10];
  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[6];
  if (v9)
  {
    v34 = v0[17];
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v18 = 141558531;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    sub_100E9056C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v32 = v11;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v12;
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v13, v17);
    v23 = sub_1000136BC(v19, v21, &v36);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2082;
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    v22(v15, v17);
    v27 = sub_1000136BC(v24, v26, &v36);

    *(v18 + 24) = v27;
    _os_log_impl(&_mh_execute_header, v8, v35, "Successfully sent PeerTrustAck message for %{private,mask.hash}s [%{public}s]", v18, 0x20u);
    swift_arrayDestroy();

    sub_100016590(v32, v34);

    v22(v14, v17);
    v28 = v33;
  }

  else
  {

    sub_100016590(v11, v10);

    v29 = *(v16 + 8);
    v29(v15, v17);
    v29(v13, v17);
    v29(v14, v17);
    v28 = v12;
  }

  sub_100E90398(v28, type metadata accessor for PeerTrustAckEnvelopeV1);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100E85FC0()
{
  v1 = v0[12];
  sub_100016590(v0[16], v0[17]);
  sub_100E90398(v1, type metadata accessor for PeerTrustAckEnvelopeV1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100E86084()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[12];

  sub_100016590(v1, v2);
  sub_100E90398(v3, type metadata accessor for PeerTrustAckEnvelopeV1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100E86158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[10] = a2;
  v4[13] = *v3;
  sub_1000BC4D4(&qword_1016A4738, &qword_1013B10B0);
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for PeerCommunicationIdentifier(0);
  v4[16] = swift_task_alloc();
  v5 = type metadata accessor for OwnerPeerTrust(0);
  v4[17] = v5;
  v4[18] = *(v5 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[22] = v6;
  *v6 = v4;
  v6[1] = sub_100E862F4;

  return daemon.getter();
}

uint64_t sub_100E862F4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 184) = a1;

  v3 = swift_task_alloc();
  *(v2 + 192) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100E9056C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E9056C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100E864D8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E864D8(uint64_t a1)
{
  v3 = *v2;
  v3[25] = a1;
  v3[26] = v1;

  if (v1)
  {
    v4 = v3[12];
    v5 = sub_100E87804;
  }

  else
  {
    v6 = v3[12];

    v5 = sub_100E86600;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100E86600()
{
  v20 = v0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v1 _stripPotentialTokenURIWithToken:0];

  if (v2 && (v3 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v5 = v4, v2, _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v3, v5), v0[27] = v7, (v0[28] = v8) != 0))
  {
    v9 = v0[25];
    v0[29] = v6;

    return _swift_task_switch(sub_100E8686C, v9, 0);
  }

  else
  {
    if (qword_101694F20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_10177C1A0);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v14 = v0[10];
      v13 = v0[11];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000136BC(v14, v13, &v19);
      _os_log_impl(&_mh_execute_header, v11, v12, "Owner peer trusts could not correct destination : %s.", v15, 0xCu);
      sub_100007BAC(v16);
    }

    v17 = v0[1];

    return v17(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100E8686C()
{

  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  v2 = sub_1000BC4D4(&qword_101697710, &unk_10138C3D0);
  *v1 = v0;
  v1[1] = sub_100E86958;
  v3 = *(v0 + 200);

  return unsafeBlocking<A>(context:_:)(v0 + 72, 0xD000000000000010, 0x800000010134A8C0, sub_100129E2C, v3, v2);
}

uint64_t sub_100E86958()
{
  v1 = *(*v0 + 200);

  return _swift_task_switch(sub_100E86A70, v1, 0);
}

uint64_t sub_100E86A70()
{
  v1 = v0[12];
  v0[31] = v0[9];
  return _swift_task_switch(sub_100E86A94, v1, 0);
}

uint64_t sub_100E86A94()
{
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[32] = sub_1000076D4(v1, qword_10177C1A0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[31];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Owner peer trusts found %ld records.", v6, 0xCu);
  }

  else
  {
  }

  v7 = v0[31];
  v8 = *(v7 + 16);
  v0[33] = v8;
  if (v8)
  {
    v9 = v0[21];
    v10 = v0[18];
    v11 = v0[16];
    v12 = *(v0[17] + 28);
    v13 = v7 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v33 = *(v10 + 72);
    v14 = _swiftEmptyArrayStorage;
    v31 = v12;
    v32 = v9;
    while (1)
    {
      v15 = v0[21];
      v16 = v0[16];
      sub_100E90330(v13, v15, type metadata accessor for OwnerPeerTrust);
      sub_100E90330(v9 + v12, v16, type metadata accessor for PeerCommunicationIdentifier);
      sub_100E90398(v15, type metadata accessor for OwnerPeerTrust);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if ((EnumCaseMultiPayload - 6) >= 2)
        {
          if (EnumCaseMultiPayload == 4)
          {
            v18 = *v0[16];
            v19 = v11[1];
            v20 = v11[2];
          }

          else
          {
            v18 = *(v11 + 16);
            v19 = v11[3];
            v20 = v11[4];
          }

          goto LABEL_18;
        }
      }

      else
      {
        if (EnumCaseMultiPayload > 2)
        {
          v18 = *v0[16];
          v19 = v11[1];
          v20 = v11[2];
LABEL_18:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_100A5C1F8(0, *(v14 + 2) + 1, 1, v14);
          }

          v22 = *(v14 + 2);
          v21 = *(v14 + 3);
          if (v22 >= v21 >> 1)
          {
            v14 = sub_100A5C1F8((v21 > 1), v22 + 1, 1, v14);
          }

          *(v14 + 2) = v22 + 1;
          v23 = &v14[24 * v22];
          v23[32] = v18;
          *(v23 + 5) = v19;
          *(v23 + 6) = v20;
          v12 = v31;
          v9 = v32;
          goto LABEL_9;
        }

        sub_100E90398(v0[16], type metadata accessor for PeerCommunicationIdentifier);
      }

LABEL_9:
      v13 += v33;
      if (!--v8)
      {
        goto LABEL_24;
      }
    }
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_24:
  v24 = v0[28];
  v25 = v0[29];
  v26 = v0[27];
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v25;
  *(inited + 40) = v26;
  *(inited + 48) = v24;

  sub_100398180(inited);
  v0[34] = v14;
  v28 = swift_task_alloc();
  v0[35] = v28;
  *v28 = v0;
  v28[1] = sub_100E86E68;
  v29 = v0[14];

  return sub_100E80604(v29, v14);
}

uint64_t sub_100E86E68()
{
  v1 = *(*v0 + 96);

  return _swift_task_switch(sub_100E86F94, v1, 0);
}

uint64_t sub_100E86F94()
{
  v26 = v0;
  if (*(v0 + 264))
  {
    v1 = *(v0 + 248);
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v2 + 80);
    *(v0 + 328) = v4;
    v5 = *(v2 + 72);
    *(v0 + 304) = _swiftEmptyArrayStorage;
    *(v0 + 312) = _swiftEmptyArrayStorage;
    *(v0 + 288) = v5;
    *(v0 + 296) = 0;
    v6 = *(v0 + 224);
    v7 = *(v0 + 160);
    v8 = *(v0 + 232);
    sub_100E90330(v1 + ((v4 + 32) & ~v4), v7, type metadata accessor for OwnerPeerTrust);
    v9 = *(v3 + 28);
    v10 = swift_task_alloc();
    *(v0 + 320) = v10;
    *v10 = v0;
    v10[1] = sub_100E872BC;
    v11 = *(v0 + 216);
    v12 = *(v0 + 112);

    return sub_100E8DCD0(v8, v11, v6, v7 + v9, v12);
  }

  else
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 112);
      v18 = *(v0 + 80);
      v17 = *(v0 + 88);
      v19 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_1000136BC(v18, v17, &v25);
      *(v19 + 12) = 2080;

      v20 = Array.description.getter();
      v22 = v21;

      v23 = sub_1000136BC(v20, v22, &v25);

      *(v19 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v15, "Owner peer trusts found %s matched %s.", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v16 = *(v0 + 112);
    }

    sub_10000B3A8(v16, &qword_1016A4738, &qword_1013B10B0);

    v24 = *(v0 + 8);

    return v24(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100E872BC(char a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 332) = a1;

  return _swift_task_switch(sub_100E873D4, v2, 0);
}

uint64_t sub_100E873D4()
{
  v32 = v0;
  if (v0[20].i8[12])
  {
    sub_100E90330(v0[10].i64[0], v0[9].i64[1], type metadata accessor for OwnerPeerTrust);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = v0[19].i64[1];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_100A5C1D0(0, v2[2] + 1, 1, v0[19].i64[1]);
    }

    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100A5C1D0((v3 > 1), v4 + 1, 1, v2);
    }

    v5 = v0[18].i64[0];
    v6 = v0[9].i64[1];
    v7 = (v0[20].u8[8] + 32) & ~v0[20].u8[8];
    sub_100E90398(v0[10].i64[0], type metadata accessor for OwnerPeerTrust);
    v2[2] = v4 + 1;
    sub_100E90504(v6, v2 + v7 + v5 * v4, type metadata accessor for OwnerPeerTrust);
    v8 = vdupq_n_s64(v2);
  }

  else
  {
    sub_100E90398(v0[10].i64[0], type metadata accessor for OwnerPeerTrust);
    v8 = v0[19];
  }

  v9 = v0[18].i64[1] + 1;
  if (v9 == v0[16].i64[1])
  {
    v30 = v8.i64[0];

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[7].i64[0];
      v14 = v0[5].i64[0];
      v13 = v0[5].u64[1];
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_1000136BC(v14, v13, &v31);
      *(v15 + 12) = 2080;

      v16 = Array.description.getter();
      v18 = v17;

      v19 = sub_1000136BC(v16, v18, &v31);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "Owner peer trusts found %s matched %s.", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v12 = v0[7].i64[0];
    }

    sub_10000B3A8(v12, &qword_1016A4738, &qword_1013B10B0);

    v29 = v0->i64[1];

    return v29(v30);
  }

  else
  {
    v0[19] = v8;
    v0[18].i64[1] = v9;
    v20 = v0[14].i64[0];
    v21 = v0[10].i64[0];
    v22 = v0[8].i64[1];
    v23 = v0[14].i8[8];
    sub_100E90330(v0[15].i64[1] + ((v0[20].u8[8] + 32) & ~v0[20].u8[8]) + v0[18].i64[0] * v9, v21, type metadata accessor for OwnerPeerTrust);
    v24 = *(v22 + 28);
    v25 = swift_task_alloc();
    v0[20].i64[0] = v25;
    *v25 = v0;
    v25[1] = sub_100E872BC;
    v26 = v0[13].i64[1];
    v27 = v0[7].i64[0];

    return sub_100E8DCD0(v23, v26, v20, v21 + v24, v27);
  }
}

uint64_t sub_100E87804()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E878B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[14] = a2;
  v4[17] = *v3;
  sub_1000BC4D4(&qword_1016A4738, &qword_1013B10B0);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for PeerCommunicationIdentifier(0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v5 = type metadata accessor for MemberPeerTrust(0);
  v4[22] = v5;
  v4[23] = *(v5 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[28] = v6;
  *v6 = v4;
  v6[1] = sub_100E87A64;

  return daemon.getter();
}

uint64_t sub_100E87A64(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 232) = a1;

  v3 = swift_task_alloc();
  *(v2 + 240) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100E9056C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E9056C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100E87C48;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E87C48(uint64_t a1)
{
  v4 = *v2;
  v4[31] = a1;
  v4[32] = v1;

  if (v1)
  {
    v5 = v4[16];
    v6 = sub_100E8964C;
  }

  else
  {

    v6 = sub_100E87D80;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100E87D80()
{

  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  v2 = sub_1000BC4D4(&qword_101697718, &unk_1013EBDF0);
  *v1 = v0;
  v1[1] = sub_100E87E6C;
  v3 = *(v0 + 248);

  return unsafeBlocking<A>(context:_:)(v0 + 104, 0xD000000000000010, 0x800000010134A8C0, sub_100129E34, v3, v2);
}

uint64_t sub_100E87E6C()
{
  v1 = *(*v0 + 248);

  return _swift_task_switch(sub_100E87F84, v1, 0);
}

uint64_t sub_100E87F84()
{
  v1 = v0[16];
  v0[34] = v0[13];
  return _swift_task_switch(sub_100E87FA8, v1, 0);
}

uint64_t sub_100E87FA8()
{
  v50 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[35] = sub_1000076D4(v1, qword_10177C1A0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[34];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&_mh_execute_header, v2, v3, "Member peer trusts found %ld records.", v6, 0xCu);
  }

  else
  {
  }

  v7 = String._bridgeToObjectiveC()();
  v8 = [v7 _stripPotentialTokenURIWithToken:0];

  if (!v8)
  {
    goto LABEL_26;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v0[36] = v11;

  _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v9, v11);
  v0[37] = v13;
  v0[38] = v14;
  if (!v14)
  {

LABEL_26:

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v35 = v0[14];
      v34 = v0[15];
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1000136BC(v35, v34, &v49);
      _os_log_impl(&_mh_execute_header, v32, v33, "Member peer trusts could not correct destination : %s.", v36, 0xCu);
      sub_100007BAC(v37);
    }

    v38 = v0[1];

    return v38(_swiftEmptyArrayStorage);
  }

  v15 = v0[34];
  v0[39] = v12;
  v16 = *(v15 + 16);
  v0[40] = v16;
  v44 = v13;
  v45 = v14;
  v43 = v12;
  if (v16)
  {
    v17 = v0[27];
    v18 = v0[23];
    v19 = v0[21];
    v20 = *(v0[22] + 28);
    v21 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v48 = *(v18 + 72);
    v22 = _swiftEmptyArrayStorage;
    v46 = v20;
    v47 = v17;
    while (1)
    {
      v23 = v0[27];
      v24 = v0[21];
      sub_100E90330(v21, v23, type metadata accessor for MemberPeerTrust);
      sub_100E90330(v17 + v20, v24, type metadata accessor for PeerCommunicationIdentifier);
      sub_100E90398(v23, type metadata accessor for MemberPeerTrust);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if ((EnumCaseMultiPayload - 6) >= 2)
        {
          if (EnumCaseMultiPayload == 4)
          {
            v26 = *v0[21];
            v28 = v19[1];
            v27 = v19[2];
          }

          else
          {
            v26 = *(v19 + 16);
            v28 = v19[3];
            v27 = v19[4];
          }

          goto LABEL_20;
        }
      }

      else
      {
        if (EnumCaseMultiPayload > 2)
        {
          v26 = *v0[21];
          v28 = v19[1];
          v27 = v19[2];
LABEL_20:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_100A5C1F8(0, *(v22 + 2) + 1, 1, v22);
          }

          v30 = *(v22 + 2);
          v29 = *(v22 + 3);
          if (v30 >= v29 >> 1)
          {
            v22 = sub_100A5C1F8((v29 > 1), v30 + 1, 1, v22);
          }

          *(v22 + 2) = v30 + 1;
          v31 = &v22[24 * v30];
          v31[32] = v26;
          *(v31 + 5) = v28;
          *(v31 + 6) = v27;
          v20 = v46;
          v17 = v47;
          goto LABEL_11;
        }

        sub_100E90398(v0[21], type metadata accessor for PeerCommunicationIdentifier);
      }

LABEL_11:
      v21 += v48;
      if (!--v16)
      {
        goto LABEL_32;
      }
    }
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_32:
  v0[41] = v22;
  sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101385D80;
  *(inited + 32) = v43;
  *(inited + 40) = v44;
  *(inited + 48) = v45;
  v49 = v22;

  sub_100398180(inited);
  v0[42] = v22;
  v41 = swift_task_alloc();
  v0[43] = v41;
  *v41 = v0;
  v41[1] = sub_100E8856C;
  v42 = v0[18];

  return sub_100E80604(v42, v22);
}

uint64_t sub_100E8856C()
{
  v1 = *(*v0 + 128);

  return _swift_task_switch(sub_100E8867C, v1, 0);
}

void sub_100E8867C()
{
  v24 = v0;
  if (*(v0 + 320))
  {
    v1 = *(v0 + 272);
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v2 + 80);
    *(v0 + 400) = v4;
    *(v0 + 360) = _swiftEmptyArrayStorage;
    *(v0 + 368) = _swiftEmptyArrayStorage;
    *(v0 + 352) = 0;
    if (*(v1 + 16))
    {
      v5 = *(v0 + 304);
      v6 = *(v0 + 208);
      *(v0 + 376) = *(v2 + 72);
      v7 = *(v0 + 312);
      sub_100E90330(v1 + ((v4 + 32) & ~v4), v6, type metadata accessor for MemberPeerTrust);
      v8 = *(v3 + 28);
      v9 = swift_task_alloc();
      *(v0 + 384) = v9;
      *v9 = v0;
      v9[1] = sub_100E889E4;
      v10 = *(v0 + 296);
      v11 = *(v0 + 144);

      sub_100E8DCD0(v7, v10, v5, v6 + v8, v11);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 144);
      v16 = *(v0 + 112);
      v15 = *(v0 + 120);
      v17 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v17 = 136315394;
      *(v17 + 4) = sub_1000136BC(v16, v15, &v23);
      *(v17 + 12) = 2080;

      v18 = Array.description.getter();
      v20 = v19;

      v21 = sub_1000136BC(v18, v20, &v23);

      *(v17 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v12, v13, "Owner peer trusts found %s matched %s.", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v14 = *(v0 + 144);
    }

    sub_10000B3A8(v14, &qword_1016A4738, &qword_1013B10B0);

    v22 = *(v0 + 8);

    v22(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100E889E4(char a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 404) = a1;

  return _swift_task_switch(sub_100E88AFC, v2, 0);
}

void sub_100E88AFC()
{
  v51 = v0;
  v1 = *(v0 + 208);
  if ((*(v0 + 404) & 1) == 0)
  {
    v20 = (v1 + *(*(v0 + 176) + 32));
    v21 = v20[1];
    *(v0 + 72) = *v20;
    *(v0 + 80) = v21;
    *(v0 + 88) = 64;
    *(v0 + 96) = 0xE100000000000000;
    sub_1000DF96C();
    v22 = StringProtocol.contains<A>(_:)();
    v23 = String._bridgeToObjectiveC()();
    if (v22)
    {
      v24 = IDSCopyIDForEmailAddress();

      if (!v24)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v25 = 0;
    }

    else
    {
      v24 = IDSCopyIDForPhoneNumber();

      if (!v24)
      {
LABEL_26:
        __break(1u);
        return;
      }

      v25 = 1;
    }

    v40 = *(v0 + 304);
    v41 = *(v0 + 160);
    v42 = *(v0 + 312);
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    *v41 = v25;
    *(v41 + 8) = v43;
    *(v41 + 16) = v45;
    swift_storeEnumTagMultiPayload();
    v46 = swift_task_alloc();
    *(v0 + 392) = v46;
    *v46 = v0;
    v46[1] = sub_100E89080;
    v35 = *(v0 + 296);
    v37 = *(v0 + 160);
    v36 = *(v0 + 144);
    v38 = v42;
    v39 = v40;
    goto LABEL_17;
  }

  sub_100E90330(v1, *(v0 + 200), type metadata accessor for MemberPeerTrust);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 368);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100A5C318(0, v3[2] + 1, 1, *(v0 + 368));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_100A5C318((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 376);
  v7 = *(v0 + 200);
  v8 = (*(v0 + 400) + 32) & ~*(v0 + 400);
  sub_100E90398(*(v0 + 208), type metadata accessor for MemberPeerTrust);
  v3[2] = v5 + 1;
  sub_100E90504(v7, v3 + v8 + v6 * v5, type metadata accessor for MemberPeerTrust);
  v9 = *(v0 + 352) + 1;
  if (v9 == *(v0 + 320))
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v49 = *(v0 + 144);
      v12 = *(v0 + 112);
      v13 = *(v0 + 120);
      v14 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_1000136BC(v12, v13, &v50);
      *(v14 + 12) = 2080;

      v15 = Array.description.getter();
      v17 = v16;

      v18 = sub_1000136BC(v15, v17, &v50);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Owner peer trusts found %s matched %s.", v14, 0x16u);
      swift_arrayDestroy();

      v19 = v49;
    }

    else
    {
      v47 = *(v0 + 144);

      v19 = v47;
    }

    sub_10000B3A8(v19, &qword_1016A4738, &qword_1013B10B0);

    v48 = *(v0 + 8);

    v48(v3);
    return;
  }

  *(v0 + 360) = v3;
  *(v0 + 368) = v3;
  *(v0 + 352) = v9;
  v26 = *(v0 + 272);
  if (v9 >= *(v26 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v27 = *(v0 + 304);
  v28 = *(v0 + 208);
  v29 = *(v0 + 176);
  v30 = v26 + ((*(v0 + 400) + 32) & ~*(v0 + 400));
  v31 = *(*(v0 + 184) + 72);
  *(v0 + 376) = v31;
  v32 = *(v0 + 312);
  sub_100E90330(v30 + v31 * v9, v28, type metadata accessor for MemberPeerTrust);
  v33 = *(v29 + 28);
  v34 = swift_task_alloc();
  *(v0 + 384) = v34;
  *v34 = v0;
  v34[1] = sub_100E889E4;
  v35 = *(v0 + 296);
  v36 = *(v0 + 144);
  v37 = v28 + v33;
  v38 = v32;
  v39 = v27;
LABEL_17:

  sub_100E8DCD0(v38, v35, v39, v37, v36);
}

uint64_t sub_100E89080(char a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 128);
  *(*v1 + 405) = a1;

  sub_100E90398(v2, type metadata accessor for PeerCommunicationIdentifier);

  return _swift_task_switch(sub_100E891C8, v3, 0);
}

uint64_t sub_100E891C8()
{
  v36 = v0;
  if (*(v0 + 405))
  {
    sub_100E90330(*(v0 + 208), *(v0 + 192), type metadata accessor for MemberPeerTrust);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = *(v0 + 368);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_100A5C318(0, v2[2] + 1, 1, *(v0 + 368));
    }

    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100A5C318((v3 > 1), v4 + 1, 1, v2);
    }

    v5 = *(v0 + 376);
    v6 = *(v0 + 192);
    v7 = (*(v0 + 400) + 32) & ~*(v0 + 400);
    sub_100E90398(*(v0 + 208), type metadata accessor for MemberPeerTrust);
    v2[2] = v4 + 1;
    result = sub_100E90504(v6, v2 + v7 + v5 * v4, type metadata accessor for MemberPeerTrust);
    v9 = v2;
  }

  else
  {
    result = sub_100E90398(*(v0 + 208), type metadata accessor for MemberPeerTrust);
    v2 = *(v0 + 360);
    v9 = *(v0 + 368);
  }

  v10 = *(v0 + 352) + 1;
  if (v10 == *(v0 + 320))
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v34 = *(v0 + 144);
      v13 = *(v0 + 112);
      v14 = *(v0 + 120);
      v15 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_1000136BC(v13, v14, &v35);
      *(v15 + 12) = 2080;

      v16 = Array.description.getter();
      v18 = v17;

      v19 = sub_1000136BC(v16, v18, &v35);

      *(v15 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v11, v12, "Owner peer trusts found %s matched %s.", v15, 0x16u);
      swift_arrayDestroy();

      v20 = v34;
    }

    else
    {
      v32 = *(v0 + 144);

      v20 = v32;
    }

    sub_10000B3A8(v20, &qword_1016A4738, &qword_1013B10B0);

    v33 = *(v0 + 8);

    return v33(v2);
  }

  else
  {
    *(v0 + 360) = v2;
    *(v0 + 368) = v9;
    *(v0 + 352) = v10;
    v21 = *(v0 + 272);
    if (v10 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      v22 = *(v0 + 304);
      v23 = *(v0 + 208);
      v24 = *(v0 + 176);
      v25 = v21 + ((*(v0 + 400) + 32) & ~*(v0 + 400));
      v26 = *(*(v0 + 184) + 72);
      *(v0 + 376) = v26;
      v27 = *(v0 + 312);
      sub_100E90330(v25 + v26 * v10, v23, type metadata accessor for MemberPeerTrust);
      v28 = *(v24 + 28);
      v29 = swift_task_alloc();
      *(v0 + 384) = v29;
      *v29 = v0;
      v29[1] = sub_100E889E4;
      v30 = *(v0 + 296);
      v31 = *(v0 + 144);

      return sub_100E8DCD0(v27, v30, v22, v23 + v28, v31);
    }
  }

  return result;
}

uint64_t sub_100E8964C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E8973C@<X0>(void *a2@<X8>)
{
  if (qword_1016944B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_1016A4768, &unk_1013B10E0);
  result = OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (v5)
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    return swift_willThrowTypedImpl();
  }

  else
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_100E89850(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PeerTrustService();
  *v4 = v2;
  v4[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v5, a2);
}

uint64_t sub_100E898F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for PeerTrustService();
  *v8 = v4;
  v8[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v9, a4);
}

uint64_t sub_100E899BC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PeerTrustService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v5, a2);
}

uint64_t sub_100E89A64()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100E80EF4();
}

uint64_t sub_100E89AF0(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for PeerTrustService();
  *v4 = v2;
  v4[1] = sub_100014650;

  return ActorServiceProtocol.run()(v5, a2);
}

uint64_t sub_100E89B98()
{
  type metadata accessor for PeerTrustService();
  sub_100E9056C(&qword_1016B1190, v0, type metadata accessor for PeerTrustService, &unk_1013EBD00);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100E89C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v4[3] = swift_task_alloc();
  v4[4] = sub_1000BC4D4(&qword_101697798, &unk_10138C4F0);
  v4[5] = swift_task_alloc();
  v5 = type metadata accessor for OwnerPeerTrust(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[9] = v6;
  v7 = *(v6 - 8);
  v4[10] = v7;
  v4[11] = *(v7 + 64);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_100E89DBC, 0, 0);
}

uint64_t sub_100E89DBC()
{
  v22 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v5, qword_10177C1A0);
  v6 = *(v3 + 16);
  v0[17] = v6;
  v0[18] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  v11 = v0[9];
  v12 = v0[10];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2081;
    sub_100E9056C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1000136BC(v15, v17, &v21);

    *(v13 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "Received handlePeerTrustAck -- identifier: %{private,mask.hash}s", v13, 0x16u);
    sub_100007BAC(v14);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = swift_task_alloc();
  v0[19] = v19;
  *v19 = v0;
  v19[1] = sub_100E8A050;

  return daemon.getter();
}

uint64_t sub_100E8A050(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 160) = a1;

  v3 = swift_task_alloc();
  *(v2 + 168) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_100E9056C(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_100E9056C(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100E8A234;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100E8A234(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 176) = a1;
  *(v4 + 184) = v1;

  if (v1)
  {
    v5 = sub_100E8B3AC;
    v6 = 0;
  }

  else
  {

    v5 = sub_100E8A36C;
    v6 = a1;
  }

  return _swift_task_switch(v5, v6, 0);
}

uint64_t sub_100E8A394()
{
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_100E8A470;
  v2 = *(v0 + 192);

  return withCheckedContinuation<A>(isolation:function:_:)(v1, 0, 0, 0x696176416E656877, 0xEF2928656C62616CLL, sub_100111E60, v2, &type metadata for () + 1);
}

uint64_t sub_100E8A470()
{

  return _swift_task_switch(sub_100E8A56C, 0, 0);
}

uint64_t sub_100E8A588()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 112);
  v3 = *(v0 + 80);
  v4 = *(v0 + 72);
  (*(v0 + 136))(v2, *(v0 + 16), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 208) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 216) = v7;
  *v7 = v0;
  v7[1] = sub_100E8A6E0;
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_1002EB3A8, v6, v9);
}

uint64_t sub_100E8A6E0()
{

  return _swift_task_switch(sub_100E8A7F8, 0, 0);
}

uint64_t sub_100E8A7F8()
{
  v33 = v0;
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[17];
    v3 = v0[12];
    v4 = v0[9];
    v5 = v0[2];
    sub_10000B3A8(v1, &qword_101697798, &unk_10138C4F0);
    v2(v3, v5, v4);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[12];
    v10 = v0[9];
    v11 = v0[10];
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      sub_100E9056C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      (*(v11 + 8))(v9, v10);
      v17 = sub_1000136BC(v14, v16, &v32);

      *(v12 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received PeerTrustAck for unknown record: %{private,mask.hash}s", v12, 0x16u);
      sub_100007BAC(v13);
    }

    else
    {

      (*(v11 + 8))(v9, v10);
    }

    sub_100E8FB24();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();

    goto LABEL_8;
  }

  v18 = v0[23];
  v19 = v0[8];
  v20 = v0[3];
  sub_100E90504(v1, v19, type metadata accessor for OwnerPeerTrust);
  *(swift_task_alloc() + 16) = v19;
  sub_100EC0C48(sub_100E8FB78, v20);
  v21 = v18;
  v22 = v0[22];
  if (v21)
  {
    v23 = v0[8];

    sub_100E90398(v23, type metadata accessor for OwnerPeerTrust);
LABEL_8:
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      v29 = _convertErrorToNSError(_:)();
      *(v27 + 4) = v29;
      *v28 = v29;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error in handlePeerTrustAck: %@", v27, 0xCu);
      sub_10000B3A8(v28, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

    v30 = v0[1];

    return v30();
  }

  return _swift_task_switch(sub_100E8AC88, v22, 0);
}

uint64_t sub_100E8ACB0()
{
  v1 = v0[28];
  v2 = v0[3];
  v3 = swift_task_alloc();
  v0[29] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_100E8ADA8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_10011191C, v3, &type metadata for () + 1);
}

uint64_t sub_100E8ADA8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100E8B164;
  }

  else
  {

    v2 = sub_100E8AEC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E8AEC4()
{
  v19 = v0;
  (*(v0 + 136))(*(v0 + 104), *(v0 + 16), *(v0 + 72));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 104);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 24);
  if (v3)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    sub_100E9056C(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v7;
    v12 = v11;
    (*(v5 + 8))(v4, v6);
    v13 = sub_1000136BC(v10, v12, &v18);

    *(v8 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "OwnerPeerTrust %{private,mask.hash}s state changed to .acknowledged", v8, 0x16u);
    sub_100007BAC(v9);

    v14 = v17;
  }

  else
  {

    (*(v5 + 8))(v4, v6);
    v14 = v7;
  }

  sub_10000B3A8(v14, &qword_1016975C8, &qword_10138C1F0);
  sub_100E90398(*(v0 + 64), type metadata accessor for OwnerPeerTrust);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100E8B164()
{

  return _swift_task_switch(sub_100E8B1CC, 0, 0);
}

uint64_t sub_100E8B1CC()
{
  v1 = v0[8];
  v2 = v0[3];

  sub_10000B3A8(v2, &qword_1016975C8, &qword_10138C1F0);
  sub_100E90398(v1, type metadata accessor for OwnerPeerTrust);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error in handlePeerTrustAck: %@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_100E8B3AC()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in handlePeerTrustAck: %@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100E8B550(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  (*(v5 + 32))(v12 + v11, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  sub_10025EDD4(0, 0, v9, &unk_1013EBD98, v12);
}

uint64_t sub_100E8B778()
{
  v12 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C1A0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    sub_10058BB20();
    v6 = Set.description.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Messaging accounts changed. Accounts: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100E8B93C()
{
  v12 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177C1A0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    sub_100D48DC8();
    v6 = Set.description.getter();
    v8 = sub_1000136BC(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Messaging devices changed. Devices: %s", v4, 0xCu);
    sub_100007BAC(v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100E8BAE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 16) = v11;
  *v11 = v6;
  v11[1] = sub_100014744;

  return sub_100E8FB98(a3, a4, a5, a6);
}

uint64_t sub_100E8BBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v13 = a6[1];
  v14 = a6[2];
  v15 = a6[3];
  v16 = *a6;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_100014744;

  return (sub_100E8FEF0)(a3, a4, a5, v16, v13, v14, v15, a7, a8);
}

uint64_t sub_100E8BCB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100E8B758(a1);
}

uint64_t sub_100E8BD4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100E8B91C(a1);
}

uint64_t sub_100E8BE74()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C1B8);
  sub_1000076D4(v0, qword_10177C1B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100E8BEF8(uint64_t a1)
{
  v1[10] = a1;
  v1[11] = type metadata accessor for PeerCommunicationIdentifier(0);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_100E8BFEC, 0, 0);
}

uint64_t sub_100E8BFEC()
{
  v57 = v0;
  if (qword_101694F20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v2 = *(v0 + 80);
  v3 = type metadata accessor for Logger();
  *(v0 + 168) = sub_1000076D4(v3, qword_10177C1A0);
  sub_100E90330(v2, v1, type metadata accessor for PeerCommunicationIdentifier);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 160);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v56[0] = v9;
    *v8 = 136315138;
    v10 = sub_100988F40();
    v12 = v11;
    sub_100E90398(v7, type metadata accessor for PeerCommunicationIdentifier);
    v13 = sub_1000136BC(v10, v12, v56);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Using MessagingQueryController to query %s.", v8, 0xCu);
    sub_100007BAC(v9);
  }

  else
  {

    sub_100E90398(v7, type metadata accessor for PeerCommunicationIdentifier);
  }

  sub_100E90330(*(v0 + 80), *(v0 + 152), type metadata accessor for PeerCommunicationIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload < 3)
    {
      sub_100E90398(*(v0 + 152), type metadata accessor for PeerCommunicationIdentifier);
LABEL_17:
      sub_100E90330(*(v0 + 80), *(v0 + 144), type metadata accessor for PeerCommunicationIdentifier);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 144);
      if (v23)
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v56[0] = v26;
        *v25 = 136315138;
        v27 = sub_100988F40();
        v29 = v28;
        sub_100E90398(v24, type metadata accessor for PeerCommunicationIdentifier);
        v30 = sub_1000136BC(v27, v29, v56);

        *(v25 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v21, v22, "MessagingQueryController does not support %s type.", v25, 0xCu);
        sub_100007BAC(v26);
      }

      else
      {

        sub_100E90398(v24, type metadata accessor for PeerCommunicationIdentifier);
      }

      sub_100E8FB24();
      swift_allocError();
      *v31 = 2;
      swift_willThrow();

      v32 = *(v0 + 8);

      return v32();
    }

    v33 = *(v0 + 152);
    v34 = *v33;
    v35 = *(v33 + 1);
    v36 = *(v33 + 2);
    sub_100E90330(*(v0 + 80), *(v0 + 136), type metadata accessor for PeerCommunicationIdentifier);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 136);
    v55 = v34;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v56[0] = swift_slowAlloc();
      *v41 = 136315394;
      v42 = sub_100988F40();
      v44 = v43;
      sub_100E90398(v40, type metadata accessor for PeerCommunicationIdentifier);
      v45 = sub_1000136BC(v42, v44, v56);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;

      v46 = v35;
      v47 = sub_1000136BC(v35, v36, v56);
      v48 = v36;

      *(v41 + 14) = v47;
      _os_log_impl(&_mh_execute_header, v37, v38, "MessagingQueryController found %s destination %s.", v41, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v48 = v36;
      v46 = v35;

      sub_100E90398(v40, type metadata accessor for PeerCommunicationIdentifier);
    }

    v54 = v46;
    v52 = v48;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      goto LABEL_17;
    }

    v54 = 0;
    v55 = 0;
    v52 = 0;
LABEL_31:

    v53 = *(v0 + 8);

    return v53(v55, v54, v52);
  }

  if (EnumCaseMultiPayload == 4)
  {
    v15 = *(v0 + 152);
    v16 = *v15;
    *(v0 + 336) = *v15;
    v17 = *(v15 + 8);
    *(v0 + 176) = v17;
    v18 = *(v15 + 16);
    *(v0 + 184) = v18;
    *(v0 + 192) = *(v15 + 24);
    *(v0 + 200) = *(v15 + 32);
    if (qword_1016944B8 != -1)
    {
      swift_once();
    }

    v19 = swift_task_alloc();
    *(v0 + 208) = v19;
    *v19 = v0;
    v19[1] = sub_100E8C860;

    return sub_101269AA4(v16, v17, v18);
  }

  else
  {
    v49 = *(v0 + 152);
    *(v0 + 240) = *v49;
    *(v0 + 248) = *(v49 + 8);
    *(v0 + 337) = *(v49 + 16);
    *(v0 + 256) = *(v49 + 24);
    *(v0 + 264) = *(v49 + 32);
    *(v0 + 272) = *(v49 + 40);
    *(v0 + 280) = *(v49 + 48);
    v50 = swift_task_alloc();
    *(v0 + 288) = v50;
    v51 = sub_1000BC4D4(&qword_1016BA708, &qword_1013EBDD0);
    *v50 = v0;
    v50[1] = sub_100E8CE88;

    return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x80000001013EBBC0, sub_100E89710, 0, v51);
  }
}

uint64_t sub_100E8C860(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = v2;

  if (v2)
  {

    v5 = sub_100E8CDB4;
  }

  else
  {
    v5 = sub_100E8C98C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E8C98C()
{
  v34 = v0;
  v1 = *(v0 + 224);
  if (!v1)
  {

    goto LABEL_9;
  }

  if (*(v0 + 192) != *(v0 + 216) || v1 != *(v0 + 200))
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_12;
    }

LABEL_9:
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);

    sub_100E90330(v5, v4, type metadata accessor for PeerCommunicationIdentifier);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 120);
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136315138;
      v12 = sub_100988F40();
      v14 = v13;
      sub_100E90398(v9, type metadata accessor for PeerCommunicationIdentifier);
      v15 = sub_1000136BC(v12, v14, &v33);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v6, v7, "MessagingQueryController cannot reach %s because the correlation id changed.", v10, 0xCu);
      sub_100007BAC(v11);
    }

    else
    {

      sub_100E90398(v9, type metadata accessor for PeerCommunicationIdentifier);
    }

    v27 = 0;
    v31 = 0;
    v32 = 0;
    goto LABEL_18;
  }

LABEL_12:
  sub_100E90330(*(v0 + 80), *(v0 + 128), type metadata accessor for PeerCommunicationIdentifier);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = *(v0 + 176);
    v18 = *(v0 + 184);
    v20 = *(v0 + 128);
    v21 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v21 = 136315394;
    v22 = sub_100988F40();
    v24 = v23;
    sub_100E90398(v20, type metadata accessor for PeerCommunicationIdentifier);
    v25 = sub_1000136BC(v22, v24, &v33);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;

    v26 = sub_1000136BC(v19, v18, &v33);

    *(v21 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "MessagingQueryController found %s ids destination %s.", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = *(v0 + 128);

    sub_100E90398(v28, type metadata accessor for PeerCommunicationIdentifier);
  }

  v31 = *(v0 + 184);
  v32 = *(v0 + 176);
  v27 = *(v0 + 336);
LABEL_18:

  v29 = *(v0 + 8);

  return v29(v27, v32, v31);
}

uint64_t sub_100E8CDB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100E8CE88()
{
  *(*v1 + 296) = v0;

  if (v0)
  {

    v2 = sub_100E8DBFC;
  }

  else
  {
    v2 = sub_100E8CFC4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100E8CFC4()
{
  v57 = v0;
  v1 = *(v0 + 56);
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100D4F6A8();
    sub_100E9056C(&qword_1016A4758, 255, sub_100D4F6A8, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
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

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  v52 = v3;
  v9 = (v3 + 64) >> 6;
  while (1)
  {
    if (v1 < 0)
    {
      v15 = __CocoaSet.Iterator.next()();
      if (!v15 || (*(v0 + 72) = v15, sub_100D4F6A8(), swift_dynamicCast(), v14 = *(v0 + 64), v12 = v4, v13 = v5, !v14))
      {
LABEL_25:

        sub_1000128F8(v1);

        goto LABEL_26;
      }
    }

    else
    {
      v10 = v4;
      v11 = v5;
      v12 = v4;
      if (!v5)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            goto LABEL_25;
          }

          v11 = *(v2 + 8 * v12);
          ++v10;
          if (v11)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_14:
      v13 = (v11 - 1) & v11;
      v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
      if (!v14)
      {
        goto LABEL_25;
      }
    }

    v16 = [v14 altDSID];
    if (!v16)
    {
      goto LABEL_8;
    }

    v17 = v13;
    v53 = *(v0 + 240);
    v54 = *(v0 + 248);
    v18 = v16;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v19 == v53 && v21 == v54)
    {
      break;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v13 = v17;
    if (v23)
    {
      goto LABEL_31;
    }

LABEL_8:

    v4 = v12;
    v5 = v13;
  }

LABEL_31:
  sub_1000128F8(v1);

  v29 = [v14 appleID];
  if (!v29 || (v30 = v29, v31 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v33 = v32, v30, _s12searchpartyd20MessagingDestinationV6stringACSgSS_tcfC_0(v31, v33), !v36))
  {

LABEL_26:
    if (qword_1016944B8 == -1)
    {
LABEL_27:
      v24 = swift_task_alloc();
      *(v0 + 304) = v24;
      *v24 = v0;
      v24[1] = sub_100E8D5CC;
      v25 = *(v0 + 256);
      v26 = *(v0 + 264);
      v27 = *(v0 + 337);

      return sub_101269AA4(v27, v25, v26);
    }

LABEL_41:
    swift_once();
    goto LABEL_27;
  }

  v37 = v35;
  v38 = v36;
  v55 = v34;
  v39 = *(v0 + 112);
  v40 = *(v0 + 80);

  sub_100E90330(v40, v39, type metadata accessor for PeerCommunicationIdentifier);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 112);
  if (v43)
  {
    v45 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v45 = 136315394;
    v46 = sub_100988F40();
    v48 = v47;
    sub_100E90398(v44, type metadata accessor for PeerCommunicationIdentifier);
    v49 = sub_1000136BC(v46, v48, &v56);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;

    v50 = sub_1000136BC(v37, v38, &v56);

    *(v45 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v41, v42, "MessagingQueryController found %s is a family member %s.", v45, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100E90398(v44, type metadata accessor for PeerCommunicationIdentifier);
  }

  v51 = *(v0 + 8);

  return v51(v55, v37, v38);
}

uint64_t sub_100E8D5CC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = v2;

  if (v2)
  {

    v5 = sub_100E8DB28;
  }

  else
  {
    v5 = sub_100E8D6F8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100E8D6F8()
{
  v34 = v0;
  v1 = *(v0 + 320);
  if (v1)
  {
    if (*(v0 + 272) == *(v0 + 312) && v1 == *(v0 + 280))
    {
    }

    else
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_100E90330(*(v0 + 80), *(v0 + 96), type metadata accessor for PeerCommunicationIdentifier);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 256);
      v18 = *(v0 + 264);
      v20 = *(v0 + 96);
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v21 = 136315394;
      v22 = sub_100988F40();
      v24 = v23;
      sub_100E90398(v20, type metadata accessor for PeerCommunicationIdentifier);
      v25 = sub_1000136BC(v22, v24, &v33);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;

      v26 = sub_1000136BC(v19, v18, &v33);

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, "MessagingQueryController found %s is no longer a family member %s.", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v28 = *(v0 + 96);

      sub_100E90398(v28, type metadata accessor for PeerCommunicationIdentifier);
    }

    v31 = *(v0 + 264);
    v32 = *(v0 + 256);
    v27 = *(v0 + 337);
    goto LABEL_18;
  }

LABEL_9:
  v4 = *(v0 + 104);
  v5 = *(v0 + 80);

  sub_100E90330(v5, v4, type metadata accessor for PeerCommunicationIdentifier);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 104);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v33 = v11;
    *v10 = 136315138;
    v12 = sub_100988F40();
    v14 = v13;
    sub_100E90398(v9, type metadata accessor for PeerCommunicationIdentifier);
    v15 = sub_1000136BC(v12, v14, &v33);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "MessagingQueryController cannot reach family member %s.", v10, 0xCu);
    sub_100007BAC(v11);
  }

  else
  {

    sub_100E90398(v9, type metadata accessor for PeerCommunicationIdentifier);
  }

  v27 = 0;
  v31 = 0;
  v32 = 0;
LABEL_18:

  v29 = *(v0 + 8);

  return v29(v27, v32, v31);
}