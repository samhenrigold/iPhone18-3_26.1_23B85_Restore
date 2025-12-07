uint64_t sub_10002D07C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_10002D0BC()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

uint64_t sub_10002D114()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_10002D13C()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

id sub_10002D18C(void *a1)
{
  result = [a1 CGImage];
  if (result)
  {
    [a1 scale];
    v3 = sub_100033B34();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double variable initialization expression of ApplicationIcon.deviceScale()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  return v2;
}

uint64_t ApplicationIcon.init<>(icon:descriptor:)(void *a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 mainScreen];
  [v6 scale];

  return a2;
}

__n128 sub_10002D310@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = a1;
  v8 = a2;
  [objc_allocWithZone(ISImageDescriptor) init];
  sub_100001A68(&qword_100046190, &qword_100036798);
  sub_100033B94();
  result = v12;
  *a3 = v8;
  *(a3 + 8) = v7;
  *(a3 + 16) = 0;
  *(a3 + 24) = sub_10003216C;
  *(a3 + 32) = v6;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  *(a3 + 72) = v13;
  return result;
}

uint64_t sub_10002D3F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10002D438@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_100033B54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62 <= 1)
  {
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    sub_100031164(a1);
    v10 = sub_100033B74();
    sub_100031804(a1);
LABEL_8:
    result = (*(v7 + 8))(v9, v6);
    *a3 = v10;
    return result;
  }

  v11 = [objc_opt_self() genericApplicationIcon];
  v12 = [v11 prepareImageForDescriptor:a2];

  if (!v12)
  {
    sub_100033B84();
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v10 = sub_100033B74();
    goto LABEL_7;
  }

  v13 = v12;
  result = [v13 CGImage];
  if (result)
  {
    [v13 scale];
    sub_100033B34();

    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v10 = sub_100033B74();

LABEL_7:

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t ApplicationIconPhase.image.getter(unint64_t a1)
{
  if (a1 >> 62 > 1)
  {
    return 0;
  }

  else
  {
  }
}

__n128 sub_10002D718@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  [objc_allocWithZone(ISImageDescriptor) init];
  type metadata accessor for ResolvedApplicationIcon.LoadingState(0, a6, a7, v16);
  sub_100033B94();
  result = v20;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = v18;
  *(a8 + 48) = v19;
  *(a8 + 56) = v20;
  *(a8 + 72) = v21;
  return result;
}

uint64_t sub_10002D7E0(uint64_t a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];

  return a1;
}

uint64_t ApplicationIcon.init<A, B>(icon:descriptor:content:fallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v17 = swift_allocObject();
  v17[2] = a7;
  v17[3] = a8;
  v17[4] = a9;
  v17[5] = a10;
  v17[6] = a1;
  v17[7] = a3;
  v17[8] = a4;
  v17[9] = a5;
  v17[10] = a6;
  sub_100033794();
  swift_getWitnessTable();

  return sub_10002D7E0(a2);
}

uint64_t sub_10002D954()
{

  return _swift_deallocObject(v0, 88, 7);
}

__n128 sub_10002D99C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v9 = *(v2 + 48);
  v8 = *(v2 + 56);
  v10 = *(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v5;
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  *(v11 + 48) = v8;
  *(v11 + 56) = *(v2 + 64);
  *(v11 + 72) = v10;
  v12 = sub_100033794();
  v13 = v9;
  v14 = a1;

  WitnessTable = swift_getWitnessTable();
  sub_10002D718(v13, v14, 0, sub_100032138, v11, v12, WitnessTable, v19);
  v16 = v19[3];
  *(a2 + 32) = v19[2];
  *(a2 + 48) = v16;
  *(a2 + 64) = v19[4];
  result = v19[1];
  *a2 = v19[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_10002DAD8@<X0>(unint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v57 = a8;
  v58 = a9;
  v47 = a5;
  v48 = a4;
  v50 = a3;
  v51 = a2;
  v13 = *(a6 - 8);
  v56 = a10;
  v14 = __chkstk_darwin(a1);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v52 = &v45 - v17;
  v49 = sub_100033B54();
  v18 = *(v49 - 8);
  v19 = __chkstk_darwin(v49);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a7 - 8);
  v22 = __chkstk_darwin(v19);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v45 - v25;
  v55 = a7;
  v27 = sub_100033794();
  v53 = *(v27 - 8);
  v54 = v27;
  v28 = __chkstk_darwin(v27);
  v30 = &v45 - v29;
  if (a1 >> 62 > 1)
  {
    v48(v28);
    v38 = v46;
    v39 = *(v46 + 16);
    v40 = v55;
    v39(v26, v24, v55);
    v41 = *(v38 + 8);
    v41(v24, v40);
    v39(v24, v26, v40);
    v36 = v56;
    v37 = v57;
    sub_10002E0A4(v24, a6, v40, v57, v56);
    v41(v24, v40);
    v41(v26, v40);
  }

  else
  {
    v31 = v49;
    (*(v18 + 104))(v21, enum case for Image.ResizingMode.stretch(_:), v49);
    sub_100031164(a1);
    v32 = sub_100033B74();
    sub_100031804(a1);
    (*(v18 + 8))(v21, v31);
    v51(v32);
    v33 = *(v13 + 16);
    v34 = v52;
    v33(v52, v16, a6);
    v35 = *(v13 + 8);
    v35(v16, a6);
    v33(v16, v34, a6);
    v36 = v56;
    v37 = v57;
    sub_10002DFAC(v16, a6, v55, v57, v56);

    v35(v16, a6);
    v35(v34, a6);
  }

  v59 = v37;
  v60 = v36;
  v42 = v54;
  swift_getWitnessTable();
  v43 = v53;
  (*(v53 + 16))(v58, v30, v42);
  return (*(v43 + 8))(v30, v42);
}

uint64_t sub_10002DFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100033774();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_100033784();
}

uint64_t sub_10002E0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100033774();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_100033784();
}

uint64_t ApplicationIcon.init(icon:descriptor:transaction:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a6;
  v14[3] = a7;
  v14[4] = a1;
  v14[5] = a3;
  v14[6] = a4;
  v14[7] = a5;

  return sub_10002D7E0(a2);
}

__n128 sub_10002E238@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{

  v12 = a2;
  v13 = a1;
  [objc_allocWithZone(ISImageDescriptor) init];
  sub_100001A68(&qword_100046188, &qword_100036790);
  sub_100033B94();
  result = v17;
  *a6 = v12;
  *(a6 + 8) = v13;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v15;
  *(a6 + 48) = v16;
  *(a6 + 56) = v17;
  *(a6 + 72) = v18;
  return result;
}

uint64_t sub_10002E320()
{

  return _swift_deallocObject(v0, 64, 7);
}

__n128 sub_10002E368@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v10 = v2[6];
  v9 = v2[7];

  sub_10002D718(v8, a1, v7, v10, v9, v5, v6, v13);
  v11 = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = v11;
  *(a2 + 64) = v13[4];
  result = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t ApplicationIcon.body.getter@<X0>(void *a1@<X0>, void (*a2)(__int128 *__return_ptr)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  if (a1)
  {
    v12 = a1;
    a2(&v66);
    v14 = type metadata accessor for ResolvedApplicationIcon(0, a4, a5, v13);
    WitnessTable = swift_getWitnessTable();
    v16 = *(v14 - 8);
    v17 = *(v16 + 16);
    v17(&v41, &v66, v14);
    v46[2] = v68;
    v46[3] = v69;
    v46[4] = v70;
    v46[0] = v66;
    v46[1] = v67;
    v18 = *(v16 + 8);
    v18(v46, v14);
    v47[2] = v43;
    v47[3] = v44;
    v47[4] = v45;
    v47[0] = v41;
    v47[1] = v42;
    v68 = v43;
    v69 = v44;
    v70 = v45;
    v66 = v41;
    v67 = v42;
    v17(&v36, &v66, v14);
    v48[2] = v68;
    v48[3] = v69;
    v48[4] = v70;
    v48[0] = v66;
    v48[1] = v67;
    v17(&v60, v47, v14);
    v18(v48, v14);
    v49[2] = v38;
    v49[3] = v39;
    v49[4] = v40;
    v49[0] = v36;
    v49[1] = v37;
    v68 = v38;
    v69 = v39;
    v70 = v40;
    v66 = v36;
    v67 = v37;
    v17(&v60, v49, v14);
    v19 = sub_100033454();
    v20 = swift_getWitnessTable();
    sub_10002DFAC(&v66, v14, v19, WitnessTable, v20);

    v50[2] = v68;
    v50[3] = v69;
    v50[4] = v70;
    v50[0] = v66;
    v50[1] = v67;
    v18(v50, v14);
    v51[2] = v38;
    v51[3] = v39;
    v51[4] = v40;
    v51[0] = v36;
    v51[1] = v37;
    v18(v51, v14);
    v56 = v43;
    v57 = v44;
    v58 = v45;
    v54 = v41;
    v55 = v42;
    v18(&v54, v14);
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a4;
    *(v23 + 24) = a5;
    *(v23 + 32) = a7;
    *(v23 + 40) = 0;
    *(v23 + 48) = a2;
    *(v23 + 56) = a3;
    v25 = type metadata accessor for ResolvedApplicationIcon(0, a4, a5, v24);

    v26 = swift_getWitnessTable();
    *&v66 = sub_100033444();
    *(&v66 + 1) = v27;
    v28 = sub_100033454();
    v29 = swift_getWitnessTable();
    v30 = *(*(v28 - 8) + 16);
    v30(&v54, &v66, v28);

    v66 = v54;
    v30(v51, &v66, v28);
    v66 = v51[0];
    sub_10002E0A4(&v66, v25, v28, v26, v29);
  }

  v68 = v62;
  v69 = v63;
  v70 = v64;
  v71 = v65;
  v66 = v60;
  v67 = v61;
  v56 = v62;
  v57 = v63;
  v58 = v64;
  v59 = v65;
  v54 = v60;
  v55 = v61;
  type metadata accessor for ResolvedApplicationIcon(255, a4, a5, v21);
  v31 = swift_getWitnessTable();
  sub_100033454();
  v32 = sub_100033794();
  v33 = swift_getWitnessTable();
  v52 = v31;
  v53 = v33;
  swift_getWitnessTable();
  v34 = *(v32 - 8);
  (*(v34 + 16))(a6, &v54, v32);
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v65 = v59;
  v60 = v54;
  v61 = v55;
  return (*(v34 + 8))(&v60, v32);
}

uint64_t sub_10002E98C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002E9CC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = v1[4];
  v6 = *(v1 + 6);
  sub_100033424();
  v9 = [objc_allocWithZone(ISImageDescriptor) initWithSize:v7 scale:{v8, v5}];
  v6(&v23);

  v11 = type metadata accessor for ResolvedApplicationIcon(0, v3, v4, v10);
  swift_getWitnessTable();
  v12 = *(v11 - 8);
  v13 = *(v12 + 16);
  v13(v21, &v23, v11);
  v22[2] = v25;
  v22[3] = v26;
  v22[4] = v27;
  v22[0] = v23;
  v22[1] = v24;
  v14 = *(v12 + 8);
  v14(v22, v11);
  v18 = v21[2];
  v19 = v21[3];
  v20 = v21[4];
  v16 = v21[0];
  v17 = v21[1];
  v13(a1, &v16, v11);
  v25 = v18;
  v26 = v19;
  v27 = v20;
  v23 = v16;
  v24 = v17;
  return v14(&v23, v11);
}

unint64_t ApplicationIconPhase.error.getter(unint64_t a1)
{
  if (a1 >> 62 != 2)
  {
    return 0;
  }

  v1 = a1 & 0x3FFFFFFFFFFFFFFFLL;
  swift_errorRetain();
  return v1;
}

void sub_10002EBE8(void *a1, void *a2, uint64_t a3)
{
  v38 = v3[5];
  v5 = v3[6];
  v40 = v3[7];
  v6 = v3[8];
  v7 = v3[9];
  v62 = v40;
  v63 = v38;
  v60 = v7;
  v61 = v6;
  v43 = v38;
  v44 = v5;
  v45 = v40;
  v42 = v6;
  v46 = v6;
  v41 = v7;
  v47 = v7;
  v8 = v5;
  sub_10000DBBC(&v63, &aBlock, &qword_100046168, &qword_100036780);
  sub_10000DBBC(&v62, &aBlock, &qword_100046170, &qword_100036788);
  sub_100031AA8(&v61, &aBlock);
  v31 = a3;
  v33 = *(a3 + 16);
  v34 = *(a3 + 24);
  type metadata accessor for ResolvedApplicationIcon.LoadingState(255, v33, v34, v9);
  sub_100033384();
  v10 = sub_100033F24();
  v39 = *(v10 - 8);
  v11 = *(v39 + 16);
  v11(&aBlock, &v60, v10);
  sub_10000DBBC(&v63, &aBlock, &qword_100046168, &qword_100036780);
  sub_10000DBBC(&v62, &aBlock, &qword_100046170, &qword_100036788);
  sub_100031AA8(&v61, &aBlock);
  v11(&aBlock, &v60, v10);
  v12 = v8;
  sub_10000DBBC(&v63, &aBlock, &qword_100046168, &qword_100036780);
  sub_10000DBBC(&v62, &aBlock, &qword_100046170, &qword_100036788);
  sub_100031AA8(&v61, &aBlock);
  v11(&aBlock, &v60, v10);
  v13 = v12;
  sub_10000DBBC(&v63, &aBlock, &qword_100046168, &qword_100036780);
  sub_10000DBBC(&v62, &aBlock, &qword_100046170, &qword_100036788);
  sub_100031AA8(&v61, &aBlock);
  v11(&aBlock, &v60, v10);
  sub_100033BD4();
  sub_100033BA4();
  v14 = aBlock;

  sub_100031804(v51);
  if (v14 && (sub_100031BB8(0, &qword_100046128, ISIcon_ptr), v15 = a1, v16 = sub_100033F14(), v15, v14, (v16 & 1) != 0) && (sub_100031BB8(0, &qword_100046178, NSObject_ptr), v43 = v38, v44 = v13, v45 = v40, v46 = v42, v47 = v41, sub_100033BA4(), aBlock, v17 = v49, , sub_100031804(v51), v18 = sub_100033F14(), v17, (v18 & 1) != 0))
  {
    sub_10000DC24(&v63, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v62, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v61);
    v19 = *(v39 + 8);
    v19(&v60, v10);
    sub_10000DC24(&v63, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v62, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v61);
    v19(&v60, v10);
    sub_10000DC24(&v63, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v62, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v61);
    v19(&v60, v10);
    sub_10000DC24(&v63, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v62, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v61);
    v19(&v60, v10);
  }

  else
  {
    v43 = v38;
    v44 = v13;
    v45 = v40;
    v46 = v42;
    v47 = v41;
    sub_100033BA4();

    v20 = v50;
    v21 = sub_100031804(v51);
    if (v20)
    {
      (*(*v20 + 112))(v21);
    }

    v43 = v38;
    v44 = v13;
    v45 = v40;
    v46 = v42;
    v47 = v41;
    sub_100033BA4();

    aBlock = v38;
    v49 = v13;
    v50 = v40;
    v51 = v42;
    v52 = v41;
    v54 = v57;
    v55 = v58;
    *&v56 = 0;
    *(&v56 + 1) = *(&v59 + 1);
    sub_100033BB4();
    sub_10000DC24(&v63, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v62, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v61);
    v22 = *(v39 + 8);
    v22(&v60, v10);
    v32 = [a1 imageForDescriptor:a2];
    sub_100033BA4();
    v23 = v57;
    v30 = a1;

    aBlock = v38;
    v49 = v13;
    v50 = v40;
    v51 = v42;
    v52 = v41;
    v54 = a1;
    v55 = v58;
    v56 = v59;
    sub_100033BB4();
    sub_10000DC24(&v63, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v62, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v61);
    v22(&v60, v10);
    v43 = v38;
    v44 = v13;
    v45 = v40;
    v46 = v42;
    v47 = v41;
    v24 = a2;
    sub_100033BA4();

    aBlock = v38;
    v49 = v13;
    v50 = v40;
    v51 = v42;
    v52 = v41;
    v54 = v57;
    v55 = v24;
    v56 = v59;
    sub_100033BB4();
    sub_10000DC24(&v63, &qword_100046168, &qword_100036780);

    sub_10000DC24(&v62, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v61);
    v22(&v60, v10);
    if (v32)
    {
      if ([v32 placeholder])
      {
        type metadata accessor for CancellableToken();
        v25 = swift_allocObject();
        *(v25 + 16) = 0;
        v26 = swift_allocObject();
        v27 = *v35;
        *(v26 + 56) = v35[1];
        v28 = v35[3];
        *(v26 + 72) = v35[2];
        *(v26 + 88) = v28;
        *(v26 + 104) = v35[4];
        *(v26 + 16) = v33;
        *(v26 + 24) = v34;
        *(v26 + 32) = v25;
        *(v26 + 40) = v27;
        v52 = sub_100031B90;
        v53 = v26;
        aBlock = _NSConcreteStackBlock;
        v49 = 1107296256;
        v50 = sub_10002F9F8;
        v51 = &unk_1000426C0;
        v29 = _Block_copy(&aBlock);

        (*(*(v31 - 8) + 16))(&v43);

        [v30 getImageForImageDescriptor:v24 completion:v29];
        _Block_release(v29);
        v43 = v38;
        v44 = v13;
        v45 = v40;
        v46 = v42;
        v47 = v41;

        sub_100033BA4();

        aBlock = v38;
        v49 = v13;
        v50 = v40;
        v51 = v42;
        v52 = v41;
        v54 = v57;
        v55 = v58;
        *&v56 = v25;
        *(&v56 + 1) = *(&v59 + 1);
        sub_100033BB4();

        sub_10000DC24(&v63, &qword_100046168, &qword_100036780);
        sub_10000DC24(&v62, &qword_100046170, &qword_100036788);
        sub_100031AE0(&v61);
        v22(&v60, v10);
      }

      else
      {
        sub_10000DC24(&v63, &qword_100046168, &qword_100036780);

        sub_10000DC24(&v62, &qword_100046170, &qword_100036788);
        sub_100031AE0(&v61);
        v22(&v60, v10);
        __chkstk_darwin(*(v35 + 2));
        sub_100033524();
      }
    }

    else
    {
      sub_10000DC24(&v63, &qword_100046168, &qword_100036780);

      sub_10000DC24(&v62, &qword_100046170, &qword_100036788);
      sub_100031AE0(&v61);
      v22(&v60, v10);
      __chkstk_darwin(*(v35 + 2));
      sub_100033524();
    }
  }
}

void sub_10002F8B4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(*a2 + 88))();
  if ((v5 & 1) == 0)
  {
    if (a1)
    {
      __chkstk_darwin(v5);
      v6 = a1;
      sub_100033524();
    }

    else
    {
      __chkstk_darwin(*(a3 + 16));
      sub_100033524();
    }
  }
}

void sub_10002F9F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10002FA64@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>, uint64_t a3@<X3>)
{
  v4 = *(v3 + 56);
  v73 = *(v3 + 40);
  v74 = v4;
  *&v75 = *(v3 + 72);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  type metadata accessor for ResolvedApplicationIcon.LoadingState(255, v5, v6, a3);
  sub_100033BD4();
  sub_100033BA4();
  v8 = *(&v68 + 1);
  sub_100031164(*(&v68 + 1));

  sub_100031804(*(&v68 + 1));
  v9 = *(v3 + 24);
  v46 = *(v3 + 32);
  *&v49 = *(&v68 + 1);
  *(&v49 + 1) = v9;
  *&v50 = v46;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = v6;
  v11 = *(v3 + 48);
  *(v10 + 64) = *(v3 + 32);
  *(v10 + 80) = v11;
  *(v10 + 96) = *(v3 + 64);
  v12 = *(v3 + 16);
  *(v10 + 32) = *v3;
  *(v10 + 48) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v6;
  v14 = *(v3 + 48);
  *(v13 + 64) = *(v3 + 32);
  *(v13 + 80) = v14;
  *(v13 + 96) = *(v3 + 64);
  v15 = *(v3 + 16);
  *(v13 + 32) = *v3;
  *(v13 + 48) = v15;
  *&v67 = sub_100031838;
  *(&v67 + 1) = v10;
  *&v68 = sub_100031880;
  *(&v68 + 1) = v13;
  v48 = *(*(a1 - 8) + 16);
  v48(&v73, v3, a1);
  v48(&v73, v3, a1);
  v43 = v6;
  type metadata accessor for ResolvedApplicationIcon.Inner(0, v5, v6, v16);

  WitnessTable = swift_getWitnessTable();
  sub_100033A94();

  sub_100031804(v8);

  v17 = v61;
  v38 = v63;
  v40 = *(&v62 + 1);
  v44 = *(&v63 + 1);
  v42 = *v64;
  v49 = v61;
  v50 = v62;
  v51 = v63;
  *&v52 = *v64;
  v60 = *v3;
  v18 = v60;
  v19 = swift_allocObject();
  *(v19 + 16) = v5;
  *(v19 + 24) = v6;
  v20 = *(v3 + 48);
  *(v19 + 64) = *(v3 + 32);
  *(v19 + 80) = v20;
  *(v19 + 96) = *(v3 + 64);
  v21 = *(v3 + 16);
  *(v19 + 32) = *v3;
  *(v19 + 48) = v21;
  v48(&v73, v3, a1);
  sub_1000334D4();
  sub_100031BB8(0, &qword_100046128, ISIcon_ptr);
  v58 = WitnessTable;
  v59 = &protocol witness table for _AppearanceActionModifier;
  v22 = v18;
  v23 = swift_getWitnessTable();
  sub_100031A58(&qword_100046130, &qword_100046128, ISIcon_ptr);
  sub_100033AA4();

  sub_100031804(v17);

  sub_100031988(v40, v38);
  sub_100031988(v44, v42);
  v34 = v67;
  v35 = v69;
  v37 = *(&v68 + 1);
  v39 = *v70;
  v41 = *(&v69 + 1);
  v61 = v67;
  v62 = v68;
  v63 = v69;
  v45 = *&v70[8];
  *&v64[8] = *&v70[8];
  *v64 = *v70;
  *&v64[24] = *&v70[24];
  *&v49 = *(v3 + 8);
  v24 = v49;
  v25 = swift_allocObject();
  *(v25 + 16) = v5;
  *(v25 + 24) = v43;
  v26 = *(v3 + 48);
  *(v25 + 64) = *(v3 + 32);
  *(v25 + 80) = v26;
  *(v25 + 96) = *(v3 + 64);
  v27 = *(v3 + 16);
  *(v25 + 32) = *v3;
  *(v25 + 48) = v27;
  v48(&v73, v3, a1);
  v28 = v24;
  sub_100006924(&qword_100046138, &qword_100036770);
  sub_1000334D4();
  sub_100031BB8(0, &qword_100046140, ISImageDescriptor_ptr);
  v56 = v23;
  v57 = sub_1000114F8(&qword_100046148, &qword_100046138, &qword_100036770, &protocol conformance descriptor for _ValueActionModifier<A>);
  swift_getWitnessTable();
  sub_100031A58(&qword_100046150, &qword_100046140, ISImageDescriptor_ptr);
  sub_100033AA4();

  sub_100031804(v34);

  sub_100031988(v37, v35);
  sub_100031988(v41, v39);

  v53 = v77;
  v54 = v78;
  v55 = v79;
  v49 = v73;
  v50 = v74;
  v51 = v75;
  v52 = v76;
  sub_100006924(&qword_100046158, &qword_100036778);
  v29 = sub_1000334D4();
  sub_1000114F8(&qword_100046160, &qword_100046158, &qword_100036778, &protocol conformance descriptor for _ValueActionModifier<A>);
  swift_getWitnessTable();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v31(&v61, &v49, v29);
  *&v70[16] = v53;
  v71 = v54;
  v72 = v55;
  v67 = v49;
  v68 = v50;
  v69 = v51;
  *v70 = v52;
  v32 = *(v30 + 8);
  v32(&v67, v29);
  v53 = *&v64[16];
  v54 = v65;
  v55 = v66;
  v49 = v61;
  v50 = v62;
  v51 = v63;
  v52 = *v64;
  v31(a2, &v49, v29);
  v77 = v53;
  v78 = v54;
  v79 = v55;
  v73 = v49;
  v74 = v50;
  v75 = v51;
  v76 = v52;
  return (v32)(&v73, v29);
}

uint64_t sub_100030154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v16 - v10;
  v12(v9);
  v13 = *(v5 + 16);
  v13(v11, v8, a2);
  v14 = *(v5 + 8);
  v14(v8, a2);
  v13(a3, v11, a2);
  return (v14)(v11, a2);
}

id sub_1000302FC()
{
  result = [objc_opt_self() genericApplicationIcon];
  qword_100047AF0 = result;
  return result;
}

uint64_t *sub_100030338()
{
  if (qword_100047430 != -1)
  {
    swift_once();
  }

  return &qword_100047AF0;
}

void sub_1000303AC()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = sub_100033D04();
  v2 = [v0 initWithBundleIdentifier:v1];

  qword_100047AF8 = v2;
}

uint64_t *sub_10003041C()
{
  if (qword_100047438 != -1)
  {
    swift_once();
  }

  return &qword_100047AF8;
}

void sub_100030490()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = sub_100033D04();
  v2 = [v0 initWithBundleIdentifier:v1];

  qword_100047B00 = v2;
}

uint64_t *sub_100030500()
{
  if (qword_100047440 != -1)
  {
    swift_once();
  }

  return &qword_100047B00;
}

void sub_100030574()
{
  v0 = objc_allocWithZone(ISIcon);
  v1 = sub_100033D04();
  v2 = [v0 initWithBundleIdentifier:v1];

  qword_100047B08 = v2;
}

uint64_t *sub_1000305E4()
{
  if (qword_100047448 != -1)
  {
    swift_once();
  }

  return &qword_100047B08;
}

id sub_100030658(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

void sub_1000306B8(void *a1@<X8>)
{
  if (qword_100047438 != -1)
  {
    swift_once();
  }

  v2 = qword_100047AF8;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 mainScreen];
  [v6 scale];
  v8 = v7;

  if (qword_100047440 != -1)
  {
    swift_once();
  }

  v9 = qword_100047B00;
  sub_100033CA4();
  sub_100033C84();

  v10 = sub_1000333E4();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = sub_100032544;
  v11[5] = 0;

  v12 = v9;
  v13 = [v4 mainScreen];
  [v13 scale];
  v15 = v14;

  if (qword_100047448[0] != -1)
  {
    swift_once();
  }

  v16 = qword_100047B08;
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = 0;
  v17[4] = sub_100030F48;
  v17[5] = 0;
  v18 = v16;
  v19 = [v4 mainScreen];
  [v19 scale];
  v21 = v20;

  v22 = [objc_allocWithZone(ISImageDescriptor) initWithSize:100.0 scale:{100.0, 1.0}];
  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  v24 = v18;
  v25 = [v4 mainScreen];
  [v25 scale];
  v27 = v26;

  *a1 = v8;
  a1[1] = 0;
  a1[2] = sub_100032540;
  a1[3] = v3;
  a1[4] = v15;
  a1[5] = 0;
  a1[6] = sub_1000309F4;
  a1[7] = v11;
  a1[8] = v21;
  a1[9] = 0;
  a1[10] = sub_100032520;
  a1[11] = v17;
  a1[12] = v27;
  a1[13] = v22;
  a1[14] = sub_100032540;
  a1[15] = v23;
}

double sub_100030A00@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if ((a1 >> 62) > 1)
  {
    if (a1 >> 62 != 2)
    {
      sub_100033AF4();

      sub_100001A68(&qword_100046000, &qword_100036380);
      sub_100030F94();
      sub_100033784();
      sub_100001A68(&qword_100046020, &qword_100036390);
      sub_100001A68(&qword_100046028, qword_100036398);
      sub_10003104C();
      sub_1000310D8();
      sub_100033784();

      goto LABEL_7;
    }

    swift_getErrorValue();
    sub_100034104();
    sub_100028204();
    v4 = sub_1000339A4();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    sub_100033AD4();
    v28 = sub_100033984();
    v30 = v11;
    v13 = v12;
    v34 = v14;

    sub_1000283F8(v4, v6, v8 & 1, v15, v16, v17, v18, v19);
    v10, v20, v21, v22, v23, v24, v25, v26;
    v35 = v13 & 1;
    sub_100028360(v28, v30, v13 & 1);

    sub_100001A68(&qword_100046000, &qword_100036380);
    sub_100030F94();
    sub_100033784();
  }

  else
  {
    sub_100033714();
    v28 = sub_100033994();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_100033C74();
    v35 = v32 & 1;
    sub_100031164(a1);
    sub_100028360(v28, v30, v35);

    sub_100001A68(&qword_100046000, &qword_100036380);
    sub_100030F94();
    sub_100033784();
  }

  sub_100001A68(&qword_100046020, &qword_100036390);
  sub_100001A68(&qword_100046028, qword_100036398);
  sub_10003104C();
  sub_1000310D8();
  sub_100033784();
  sub_1000283F8(v28, v30, v35, v36, v37, v38, v39, v40);
  v34, v41, v42, v43, v44, v45, v46, v47;
LABEL_7:
  *v52 = *v51;
  *&v52[10] = *&v51[10];
  *a2 = v49;
  a2[1] = v50;
  a2[2] = *v52;
  result = *&v51[10];
  *(a2 + 42) = *&v51[10];
  return result;
}

uint64_t sub_100030F4C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_100030F94()
{
  result = qword_100046008;
  if (!qword_100046008)
  {
    sub_100006924(&qword_100046000, &qword_100036380);
    sub_1000114F8(&qword_100046010, &qword_100046018, &qword_100036388, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046008);
  }

  return result;
}

unint64_t sub_10003104C()
{
  result = qword_100046030;
  if (!qword_100046030)
  {
    sub_100006924(&qword_100046020, &qword_100036390);
    sub_100030F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046030);
  }

  return result;
}

unint64_t sub_1000310D8()
{
  result = qword_100046038;
  if (!qword_100046038)
  {
    sub_100006924(&qword_100046028, qword_100036398);
    sub_100030F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046038);
  }

  return result;
}

unint64_t sub_100031164(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1000311DC()
{
  result = qword_100046040;
  if (!qword_100046040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046040);
  }

  return result;
}

uint64_t sub_100031254(uint64_t a1)
{
  v2 = sub_1000320A4();

  return static PreviewProvider._previews.getter(a1, v2);
}

uint64_t sub_1000312A0(uint64_t a1)
{
  v2 = sub_1000320A4();

  return static PreviewProvider._platform.getter(a1, v2);
}

uint64_t sub_100031310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10003134C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100031394(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000313EC(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100031414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100031470(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1000314D0(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_10003151C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedApplicationIcon(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_100033454();
  sub_100033794();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_100031628()
{
  result = qword_100046118;
  if (!qword_100046118)
  {
    sub_100006924(&qword_100046120, &qword_100036608);
    sub_10003104C();
    sub_1000310D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046118);
  }

  return result;
}

uint64_t sub_1000316B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000316F0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10003170C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100031754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100031804(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  if (result >> 62 == 2)
  {
  }

  return result;
}

void sub_100031838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 32);
  v5 = v4 + 32;
  v7 = *(v5 + 8);
  v8 = type metadata accessor for ResolvedApplicationIcon(0, *(v5 - 16), *(v5 - 8), a4);
  sub_10002EBE8(v6, v7, v8);
}

unint64_t sub_100031880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedApplicationIcon.LoadingState(255, *(v4 + 16), *(v4 + 24), a4);
  sub_100033BD4();
  sub_100033BA4();

  result = sub_100031804(v9);
  if (v8)
  {
    (*(*v8 + 112))(result);
  }

  return result;
}

void sub_10003193C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = v4[5];
  v7 = type metadata accessor for ResolvedApplicationIcon(0, v4[2], v4[3], a4);
  sub_10002EBE8(v5, v6, v7);
}

uint64_t sub_100031988(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100031998()
{

  sub_100031804(*(v0 + 96));

  return _swift_deallocObject(v0, 112, 7);
}

void sub_100031A10(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[4];
  v6 = *a1;
  v7 = type metadata accessor for ResolvedApplicationIcon(0, v4[2], v4[3], a4);
  sub_10002EBE8(v5, v6, v7);
}

uint64_t sub_100031A58(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100031BB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100031B10()
{

  sub_100031804(*(v0 + 104));

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100031BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100031BB8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100031C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v5 = v4[3];
  v7 = v4[4];
  type metadata accessor for ResolvedApplicationIcon.LoadingError(0, v6, v5, a4);
  swift_getWitnessTable();
  swift_allocError();
  v9 = v7[5];
  v8 = v7[6];
  v10 = v7[7];
  v11 = v7[8];
  v12 = v7[9];
  v22 = v9;
  v20 = v11;
  v21[0] = v10;
  v19 = v12;
  v18[5] = v9;
  v18[6] = v8;
  v18[7] = v10;
  v18[8] = v11;
  v18[9] = v12;
  sub_10000DBBC(&v22, v18, &qword_100046168, &qword_100036780);
  v13 = v8;
  sub_10000DBBC(v21, v18, &qword_100046170, &qword_100036788);
  sub_100031AA8(&v20, v18);
  type metadata accessor for ResolvedApplicationIcon.LoadingState(255, v6, v5, v14);
  sub_100033384();
  v15 = sub_100033F24();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v18, &v19, v15);
  sub_100033BD4();
  sub_100033BA4();
  sub_100031804(v18[13]);
  v18[0] = v9;
  v18[1] = v13;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = v12;
  sub_100033BB4();
  sub_10000DC24(&v22, &qword_100046168, &qword_100036780);

  sub_10000DC24(v21, &qword_100046170, &qword_100036788);
  sub_100031AE0(&v20);
  return (*(v16 + 8))(&v19, v15);
}

id sub_100031E60()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  result = [v4 CGImage];
  if (result)
  {
    [v4 scale];
    sub_100033B34();
    v7 = v3[5];
    v6 = v3[6];
    v8 = v3[7];
    v9 = v3[8];
    v10 = v3[9];
    v19 = v7;
    v17 = v9;
    v18[0] = v8;
    v16 = v10;
    v15[5] = v7;
    v15[6] = v6;
    v15[7] = v8;
    v15[8] = v9;
    v15[9] = v10;
    sub_10000DBBC(&v19, v15, &qword_100046168, &qword_100036780);
    v11 = v6;
    sub_10000DBBC(v18, v15, &qword_100046170, &qword_100036788);
    sub_100031AA8(&v17, v15);
    type metadata accessor for ResolvedApplicationIcon.LoadingState(255, v2, v1, v12);
    sub_100033384();
    v13 = sub_100033F24();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v15, &v16, v13);
    sub_100033BD4();
    sub_100033BA4();
    sub_100031804(v15[13]);
    v15[0] = v7;
    v15[1] = v11;
    v15[2] = v8;
    v15[3] = v9;
    v15[4] = v10;
    sub_100033BB4();
    sub_10000DC24(&v19, &qword_100046168, &qword_100036780);

    sub_10000DC24(v18, &qword_100046170, &qword_100036788);
    sub_100031AE0(&v17);
    return (*(v14 + 8))(&v16, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000320A4()
{
  result = qword_100046180;
  if (!qword_100046180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100046180);
  }

  return result;
}

uint64_t sub_1000320F8()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000321AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000321E8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000321FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100032244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100032284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000322C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100032308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100032348(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ResolvedApplicationIcon.Inner(255, *a1, a1[1], a4);
  sub_1000334D4();
  sub_100006924(&qword_100046138, &qword_100036770);
  sub_1000334D4();
  sub_100006924(&qword_100046158, &qword_100036778);
  sub_1000334D4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000114F8(&qword_100046148, &qword_100046138, &qword_100036770, &protocol conformance descriptor for _ValueActionModifier<A>);
  swift_getWitnessTable();
  sub_1000114F8(&qword_100046160, &qword_100046158, &qword_100036778, &protocol conformance descriptor for _ValueActionModifier<A>);
  return swift_getWitnessTable();
}

id sub_100032588()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_100047A58 = result;
  return result;
}

uint64_t sub_100032620(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10003267C()
{
  v0 = sub_100033184();
  sub_100032F20(v0, qword_100047B28);
  sub_100032620(v0, qword_100047B28);
  if (qword_100047A50 != -1)
  {
    swift_once();
  }

  v1 = qword_100047A58;
  return sub_100033174();
}

uint64_t sub_100032B44()
{
  v0 = sub_100033184();
  sub_100032F20(v0, qword_100047C18);
  sub_100032620(v0, qword_100047C18);
  if (qword_100047A50 != -1)
  {
    swift_once();
  }

  v1 = qword_100047A58;
  return sub_100033174();
}

uint64_t sub_100032D24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100033184();
  sub_100032F20(v5, a2);
  sub_100032620(v5, a2);
  if (qword_100047A50 != -1)
  {
    swift_once();
  }

  v6 = qword_100047A58;
  return sub_100033174();
}

uint64_t sub_100032DEC(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = sub_100033184();

  return sub_100032620(v4, a2);
}

uint64_t sub_100032E64@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_100033184();
  v7 = sub_100032620(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t *sub_100032F20(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}