__n128 sub_100002134(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002140(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002160(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1000021A0()
{
  v59 = sub_100005A2C(&qword_1000321C0, &qword_1000201D0);
  sub_100006C14();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = v56 - v4;
  v60 = sub_100005A2C(&qword_1000321C8, &qword_1000201D8);
  sub_100006C04();
  __chkstk_darwin(v6);
  v8 = v56 - v7;
  v9 = sub_100005A2C(&unk_1000321D0, &qword_1000201E0);
  sub_100006C14();
  v58 = v10;
  __chkstk_darwin(v11);
  v13 = v56 - v12;
  v14 = *(v0 + 16);
  v15 = [v14 allItems];
  sub_100005A2C(&qword_100032B10, &qword_1000201E8);
  sub_10001DDD4();

  v16 = sub_1000168D0();

  if (v16 < 1)
  {
    v57 = v2;
    v58 = v8;
    v31 = v59;
    v56[2] = v56;
    __chkstk_darwin(v17);
    v56[1] = &v56[-4];
    v32 = *(v0 + 8);
    v33 = [v32 localizedLabel];
    v34 = sub_10001DD14();
    v36 = v35;

    v37 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v37 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v37)
    {
      v38 = [v32 localizedLabel];
      v39 = sub_10001DD14();
      v41 = v40;

      *&v66 = v39;
      *(&v66 + 1) = v41;
      sub_100005A7C();
      v42 = sub_10001DA74();
      v37 = v45 & 1;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
    }

    *&v66 = v42;
    *(&v66 + 1) = v43;
    v67 = v37;
    v68 = v44;
    v46 = sub_10000CB58(v32);
    if (v47)
    {
      v62 = v46;
      v63 = v47;
      sub_100005A7C();
      v48 = sub_10001DA74();
      v51 = v50 & 1;
    }

    else
    {
      v48 = 0;
      v51 = 0;
      v49 = 0;
    }

    v52 = v58;
    v62 = v48;
    v63 = v47;
    v64 = v51;
    v65 = v49;
    sub_100005A2C(&qword_1000321E8, &qword_1000201F0);
    sub_100005A2C(&unk_1000321F0, &qword_1000201F8);
    sub_100005AD0();
    sub_100006BEC();
    sub_100006B8C(v53, &unk_1000321F0, &qword_1000201F8, v54);
    sub_10001DC54();
    v55 = v57;
    (*(v57 + 16))(v52, v5, v31);
    swift_storeEnumTagMultiPayload();
    sub_100005B94();
    sub_100006064();
    sub_10001D9A4();
    return (*(v55 + 8))(v5, v31);
  }

  else
  {
    v18 = [v14 sections];
    sub_100005A2C(&qword_1000322B8, &qword_100020250);
    v19 = sub_10001DDD4();

    v20 = sub_10000565C(v19);

    v61 = v20;
    swift_getKeyPath();
    v21 = *v0;
    v22 = *(v0 + 8);
    v66 = *(v0 + 24);
    v23 = swift_allocObject();
    v24 = *(v0 + 16);
    *(v23 + 16) = *v0;
    *(v23 + 32) = v24;
    *(v23 + 48) = *(v0 + 32);
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100006124;
    *(v25 + 24) = v23;
    v26 = v21;
    v27 = v22;
    v28 = v14;
    sub_100006808(&v66, &v62, &qword_1000322C0, &qword_100020278);
    sub_100005A2C(&qword_1000322C8, &qword_100020280);
    sub_100005A2C(&qword_100032218, &qword_100020200);
    sub_100006B8C(&qword_1000322D0, &qword_1000322C8, &qword_100020280, &protocol conformance descriptor for [A]);
    sub_100006B8C(&qword_1000322D8, &qword_1000322B8, &qword_100020250, &protocol conformance descriptor for NSObject);
    sub_100005C18();
    sub_10001DC44();
    v29 = v58;
    (*(v58 + 2))(v8, v13, v9);
    swift_storeEnumTagMultiPayload();
    sub_100005B94();
    sub_100006064();
    sub_10001D9A4();
    return (*(v29 + 1))(v13, v9);
  }
}

uint64_t sub_10000280C@<X0>(uint64_t a1@<X0>, void **a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10001D944();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2[2] sections];
  sub_100005A2C(&qword_1000322B8, &qword_100020250);
  sub_10001DDD4();

  v11 = sub_1000168D0();

  v13 = __OFSUB__(v11, 1);
  v14 = v11 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v30 = v7;
    if (v14 == a1)
    {
      v15 = sub_10001D934();
    }

    else
    {
      v15 = sub_10001D924();
    }

    v29 = &v27;
    __chkstk_darwin(v15);
    sub_10000321C(a1, a2, v40);
    sub_100003314(v14 == a1, a2, &v31);
    v16 = v33;
    v27 = v32;
    v28 = v31;
    v17 = sub_10001D9E4();
    sub_10001D774();
    v31 = v28;
    v32 = v27;
    v33 = v16;
    v34 = v17;
    v35 = v18;
    v36 = v19;
    v37 = v20;
    v38 = v21;
    v39 = 0;
    sub_100005A2C(&qword_1000321E8, &qword_1000201F0);
    sub_100005A2C(&qword_100032248, &qword_100020218);
    sub_100005A2C(&qword_100032258, &qword_100020220);
    sub_100005AD0();
    sub_100006B8C(&qword_100032240, &qword_100032248, &qword_100020218, &protocol conformance descriptor for TupleView<A>);
    sub_100005E54();
    sub_10001DC54();
    v22 = *(sub_100005A2C(&qword_100032228, &qword_100020208) + 36);
    v23 = v30;
    (*(v30 + 16))(a3 + v22, v9, v6);
    sub_10000619C(a3 + v22, 0, 1, v6);
    KeyPath = swift_getKeyPath();
    v25 = (a3 + *(sub_100005A2C(&qword_100032218, &qword_100020200) + 36));
    v26 = *(sub_100005A2C(&qword_1000322A8, &qword_100020248) + 28);
    (*(v23 + 32))(v25 + v26, v9, v6);
    result = sub_10000619C(v25 + v26, 0, 1, v6);
    *v25 = KeyPath;
  }

  return result;
}

uint64_t sub_100002B80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a3;
  v5 = sub_100005A2C(&qword_1000322E8, &unk_1000202C0);
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = __chkstk_darwin(v5);
  v67 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v66 = &KeyPath - v8;
  v63 = *(a1 + 16);
  v9 = [v63 sections];
  sub_100005A2C(&qword_1000322B8, &qword_100020250);
  sub_10001DDD4();

  v10 = sub_1000168D0();

  if (v10 < 2)
  {
    goto LABEL_8;
  }

  v11 = [a2 title];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  v13 = sub_10001DD14();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

LABEL_8:
    v35 = 0;
    v36 = 0;
    v38 = 0;
    v39 = 0;
    v60 = 0;
    v61 = 0;
    goto LABEL_9;
  }

  *&v70 = v13;
  *(&v70 + 1) = v15;
  sub_100005A7C();
  v17 = sub_10001DA74();
  v19 = v18;
  v21 = v20;
  sub_10001DA04();
  v22 = sub_10001DA44();
  v24 = v23;
  v26 = v25;
  sub_100006320(v17, v19, v21 & 1);

  sub_10001DB44();
  v27 = v22;
  v28 = v24;
  v29 = sub_10001DA54();
  v31 = v30;
  LODWORD(v60) = v32;
  v34 = v33;

  sub_100006320(v27, v28, v26 & 1);

  v61 = sub_10001D954();
  v35 = v29;
  v36 = v31;
  v37 = v31;
  v38 = v60 & 1;
  sub_1000062C0(v29, v37, v60 & 1);
  v39 = v34;

  v60 = sub_1000030D8;
LABEL_9:
  v40 = [a2 items];
  sub_100005A2C(&qword_100032B10, &qword_1000201E8);
  v41 = sub_10001DDD4();

  v69 = v41;
  KeyPath = swift_getKeyPath();
  v42 = *a1;
  v43 = *(a1 + 8);
  v70 = *(a1 + 24);
  v44 = swift_allocObject();
  v45 = *(a1 + 16);
  *(v44 + 16) = *a1;
  *(v44 + 32) = v45;
  *(v44 + 48) = *(a1 + 32);
  v46 = v42;
  v47 = v43;
  v48 = v63;
  sub_100006808(&v70, v68, &qword_1000322C0, &qword_100020278);
  sub_100005A2C(&qword_1000322F0, &qword_1000202E8);
  sub_100006B8C(&qword_1000322F8, &qword_1000322F0, &qword_1000202E8, &protocol conformance descriptor for [A]);
  sub_100006B8C(&qword_100032300, &qword_100032B10, &qword_1000201E8, &protocol conformance descriptor for NSObject);
  sub_10000621C();
  v49 = v66;
  sub_10001DC44();
  v51 = v64;
  v50 = v65;
  v63 = *(v64 + 16);
  (v63)(v67, v49, v65);
  v53 = v61;
  v52 = v62;
  *v62 = v35;
  v52[1] = v36;
  v52[2] = v38;
  v52[3] = v39;
  v54 = v60;
  v52[4] = v53;
  v52[5] = v54;
  v52[6] = 0;
  v55 = v52 + *(sub_100005A2C(&unk_100032310, &qword_1000202F0) + 48);
  v56 = v67;
  (v63)(v55, v67, v50);
  sub_100006270(v35, v36, v38, v39, v53, v54, 0);
  sub_1000062D0(v35, v36, v38, v39, v53, v54, 0);
  v57 = *(v51 + 8);
  v57(v66, v50);
  v57(v56, v50);
  return sub_1000062D0(v35, v36, v38, v39, v53, v54, 0);
}

double sub_1000030D8()
{
  sub_10001D974();
  sub_10001D7F4();
  return v0 + -20.0;
}

uint64_t sub_100003108@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a2 + 8);
  v16 = *(a2 + 24);
  v7 = v5;
  v8 = v6;
  v9 = v4;
  sub_100006808(&v16, v14, &qword_1000322C0, &qword_100020278);
  sub_10001DBA4();
  v10 = v15;
  sub_10001D5E4();
  sub_100006610(&qword_100032780, &type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);
  result = sub_10001D7D4();
  v12 = v14[0];
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = result;
  *(a3 + 32) = v13;
  *(a3 + 40) = v12;
  *(a3 + 48) = v10;
  return result;
}

uint64_t sub_10000321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1)
  {
    result = 0;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v8 = *(a2 + 8);
    v9 = [v8 localizedLabel];
    v10 = sub_10001DD14();
    v12 = v11;

    v6 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v6 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      v13 = [v8 localizedLabel];
      sub_10001DD14();

      sub_100005A7C();
      result = sub_10001DA74();
      v6 = v14 & 1;
      goto LABEL_8;
    }

    result = 0;
    v5 = 0;
  }

  v7 = 0;
LABEL_8:
  *a3 = result;
  a3[1] = v5;
  a3[2] = v6;
  a3[3] = v7;
  return result;
}

uint64_t sub_100003314@<X0>(uint64_t result@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 1) != 0 && ((result = sub_10000BE20(*a2), v5) || (result = sub_10000CB58(a2[1]), v5)))
  {
    *&v9 = result;
    *(&v9 + 1) = v5;
    sub_100005A7C();
    sub_10001DA74();
    result = sub_10001D9A4();
    v6 = v10;
    v7 = v9;
    v8 = v11;
  }

  else
  {
    v7 = 0uLL;
    v8 = -1;
    v6 = 0uLL;
  }

  *a3 = v7;
  *(a3 + 16) = v6;
  *(a3 + 32) = v8;
  return result;
}

void *sub_100003414@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001D914();
  v8 = 1;
  sub_1000034E8(__src);
  memcpy(__dst, __src, 0x59uLL);
  memcpy(v10, __src, 0x59uLL);
  sub_100006808(__dst, v5, &qword_100032328, &qword_100020300);
  sub_100006AF0(v10, &qword_100032328, &qword_100020300);
  memcpy(&v7[7], __dst, 0x59uLL);
  v3 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  return memcpy((a1 + 17), v7, 0x60uLL);
}

uint64_t sub_1000034E8@<X0>(uint64_t a1@<X8>)
{
  sub_10001DD44();
  sub_10001DD44();
  if (qword_100032078 != -1)
  {
    swift_once();
  }

  v2 = static NSBundle._current;
  v3 = sub_10001DD04();
  v4 = sub_10001DD04();

  v5 = sub_10001DD04();

  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_10001DD14();
  sub_100005A7C();
  v7 = sub_10001DA74();
  v9 = v8;
  LOBYTE(v4) = v10;
  sub_10001DA24();
  v11 = sub_10001DA64();
  v13 = v12;
  v15 = v14;

  sub_100006320(v7, v9, v4 & 1);

  sub_10001DB44();
  v16 = sub_10001DA54();
  v18 = v17;
  LOBYTE(v2) = v19;
  v21 = v20;

  sub_100006320(v11, v13, v15 & 1);

  sub_10001DC94();
  sub_10001D7B4();
  LOBYTE(v2) = v2 & 1;
  *&__src[0] = v16;
  *(&__src[0] + 1) = v18;
  LOBYTE(__src[1]) = v2;
  *(&__src[1] + 1) = v27[0];
  DWORD1(__src[1]) = *(v27 + 3);
  *(&__src[1] + 1) = v21;
  __src[2] = v24;
  __src[3] = v25;
  __src[4] = v26;
  v23[80] = 1;
  memcpy(a1, __src, 0x50uLL);
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  v29[0] = v16;
  v29[1] = v18;
  v30 = v2;
  *v31 = v27[0];
  *&v31[3] = *(v27 + 3);
  v32 = v21;
  v33 = v24;
  v34 = v25;
  v35 = v26;
  sub_100006808(__src, v23, &qword_100032330, &qword_100020308);
  return sub_100006AF0(v29, &qword_100032330, &qword_100020308);
}

uint64_t sub_100003828()
{
  v1 = sub_10001D914();
  v7[0] = 1;
  sub_100003A44(v0, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_100006808(__dst, v10, &qword_100032348, &qword_1000203C0);
  sub_100006AF0(v9, &qword_100032348, &qword_1000203C0);
  memcpy(__src + 7, __dst, 0xA0uLL);
  v10[0] = v1;
  v10[1] = 0;
  LOBYTE(v10[2]) = 1;
  memcpy(&v10[2] + 1, __src, 0xA7uLL);
  sub_100004214();
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 64) = *(v0 + 48);
  memcpy(v7, v10, sizeof(v7));
  sub_100006524(v0, __src);
  sub_100006808(v10, __src, &qword_100032350, &qword_1000203C8);
  sub_100005A2C(&qword_100032358, &qword_1000203D0);
  sub_100006BEC();
  sub_100006B8C(v4, &qword_100032358, &qword_1000203D0, v5);
  sub_10001DBD4();
  sub_100006AF0(v10, &qword_100032350, &qword_1000203C8);
  memcpy(__src, v7, sizeof(__src));
  return sub_100006AF0(__src, &qword_100032350, &qword_1000203C8);
}

uint64_t sub_100003A44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100003C38(__src);
  v4 = [*(a1 + 8) wf_pickerLocalizedTitleForState:*(a1 + 16)];
  if (v4)
  {
    v5 = sub_10001DD14();
    v7 = v6;

    v23[0] = v5;
    v23[1] = v7;
    sub_100005A7C();
    v8 = sub_10001DA74();
    v10 = v9;
    v12 = v11;
    sub_10001DB34();
    v4 = sub_10001DA54();
    v14 = v13;
    v16 = v15;
    v18 = v17;

    sub_100006320(v8, v10, v12 & 1);

    v19 = v16 & 1;
    sub_1000062C0(v4, v14, v16 & 1);
  }

  else
  {
    v14 = 0;
    v19 = 0;
    v18 = 0;
  }

  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v22, __src, 0x79uLL);
  memcpy(v23, __src, 0x79uLL);
  sub_100006808(v22, v24, &qword_100032430, &qword_100020480);
  sub_100006750(v4, v14, v19, v18);
  sub_100006794(v4, v14, v19, v18);
  memcpy(a2, v23, 0x80uLL);
  a2[16] = v4;
  a2[17] = v14;
  a2[18] = v19;
  a2[19] = v18;
  sub_100006794(v4, v14, v19, v18);
  memcpy(v24, __dst, 0x79uLL);
  return sub_100006AF0(v24, &qword_100032430, &qword_100020480);
}

void *sub_100003C38@<X0>(void *a1@<X8>)
{
  v3 = sub_10001DB64();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_100005A2C(&qword_100032438, &qword_100020488);
  __chkstk_darwin(v7 - 8);
  v9 = &v26[-v8 - 8];
  if (sub_100004E4C() || (v10 = [*(v1 + 8) wf_pickerLocalizedImageForState:*(v1 + 16)]) == 0)
  {
    sub_1000067D8(__dst);
  }

  else
  {
    v11 = v10;
    if ([v10 representationType] == 4)
    {
      v12 = [v11 tintColor];
      v13 = sub_10001DEC4();
      if (v12)
      {
        v14 = enum case for Image.TemplateRenderingMode.template(_:);
        v15 = sub_10001DB84();
        (*(*(v15 - 8) + 104))(v9, v14, v15);
        sub_10000619C(v9, 0, 1, v15);
        v16 = sub_10001DB74();

        sub_100006AF0(v9, &qword_100032438, &qword_100020488);
        v17 = v12;
        v18 = sub_10001DB14();
        KeyPath = swift_getKeyPath();
        v28[0] = v16;
        v28[1] = KeyPath;
        v28[2] = v18;
        LOBYTE(v28[3]) = 0;

        sub_100005A2C(&qword_100032460, &qword_1000204A0);
        sub_1000068F4();
        sub_10001D9A4();
      }

      else
      {
        v28[1] = 0;
        v28[2] = 0;
        v28[0] = v13;
        LOBYTE(v28[3]) = 1;
        sub_100005A2C(&qword_100032460, &qword_1000204A0);
        sub_1000068F4();
        sub_10001D9A4();
      }

      v21 = *&__dst[1];
      v22 = BYTE8(__dst[1]);
      v25 = __dst[0];
      sub_100006A34(__dst);
      memcpy(v28, __dst, 0x79uLL);
      v23 = v25;
      sub_100006A3C(v25, *(&v25 + 1), v21, v22);
      sub_100006A3C(v23, *(&v23 + 1), v21, v22);
      sub_100005A2C(&qword_100032448, &qword_100020498);
      sub_100005A2C(&qword_100032440, &qword_100020490);
      sub_100006868();
      sub_1000069AC();
      sub_10001D9A4();

      sub_100006A8C(v23, *(&v23 + 1), v21, v22);
      sub_100006A8C(v23, *(&v23 + 1), v21, v22);
    }

    else
    {
      sub_10001DEC4();
      (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
      v20 = sub_10001DB94();

      (*(v4 + 8))(v6, v3);
      sub_10001DC84();
      sub_10001D814();
      v27[0] = v20;
      memcpy(__dst, v27, 0x78uLL);
      sub_1000067FC(__dst);
      memcpy(v28, __dst, 0x79uLL);
      sub_100006808(v27, v26, &qword_100032440, &qword_100020490);
      sub_100006808(v27, v26, &qword_100032440, &qword_100020490);
      sub_100005A2C(&qword_100032448, &qword_100020498);
      sub_100005A2C(&qword_100032440, &qword_100020490);
      sub_100006868();
      sub_1000069AC();
      sub_10001D9A4();

      sub_100006AF0(v27, &qword_100032440, &qword_100020490);
      sub_100006AF0(v27, &qword_100032440, &qword_100020490);
    }

    memcpy(v28, v26, 0x79uLL);
    memcpy(v26, v28, 0x79uLL);
    nullsub_1();
    memcpy(__dst, v26, 0x79uLL);
  }

  return memcpy(a1, __dst, 0x79uLL);
}

uint64_t sub_100004214()
{
  v1 = v0;
  result = sub_10001D5B4();
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (![*(v0 + 8) allowsMultipleValues] || (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) == 0))
  {
    v14 = sub_100005814(v3, *(v0 + 16));
    swift_unknownObjectRelease();
    return v14 & 1;
  }

  v5 = sub_1000055F0(v4);
  if (!v5)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = v5;
  result = sub_1000168D0();
  if (!result)
  {
LABEL_14:
    swift_unknownObjectRelease();

    return 0;
  }

  v7 = result;
  v8 = 0;
  v9 = *(v1 + 16);
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_10001DF44();
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v10 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
    }

    v11 = v9;
    v12 = [v11 stateIsEquivalent:v10];

    result = swift_unknownObjectRelease();
    if (v12)
    {
      swift_unknownObjectRelease();

      return 1;
    }

    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    ++v8;
    if (v13 == v7)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000043A0()
{
  v1 = v0;
  if (![*(v0 + 8) allowsMultipleValues])
  {
    v16 = *(v0 + 16);
    return sub_10001D5C4();
  }

  if (!sub_10001D5B4())
  {
LABEL_21:
    sub_100006710(0, &qword_1000323B8, WFMultipleValueParameterState_ptr);
    sub_100005A2C(&qword_1000323C0, &qword_100020790);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000200A0;
    v18 = *(v0 + 16);
    *(v17 + 32) = v18;
    v19 = v18;
    sub_1000053AC(v17);
    return sub_10001D5C4();
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    swift_unknownObjectRelease();
    goto LABEL_21;
  }

  v3 = v2;
  v4 = *(v1 + 16);
  v5 = sub_1000055F0(v2);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v20 = v3;
  result = sub_1000168D0();
  if (!result)
  {
LABEL_14:

LABEL_15:
    v14 = [v3 stateByAppendingValue:{v4, v20}];
LABEL_16:
    v15 = v14;
    sub_10001D5C4();

    return swift_unknownObjectRelease();
  }

  v8 = result;
  v9 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = sub_10001DF44();
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v10 = *(v6 + 8 * v9 + 32);
      swift_unknownObjectRetain();
    }

    v11 = v4;
    v12 = [v11 stateIsEquivalent:v10];

    result = swift_unknownObjectRelease();
    if (v12)
    {

      v14 = [v3 stateByRemovingValueAtIndex:v9];
      goto LABEL_16;
    }

    v13 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    ++v9;
    if (v13 == v8)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_1000045E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v8 = sub_10001D914();
  v14 = 0;
  sub_1000046D4(a1, v5, a3, __src);
  memcpy(__dst, __src, 0xF9uLL);
  memcpy(v16, __src, 0xF9uLL);
  sub_100006808(__dst, v11, &qword_100032368, &qword_1000203D8);
  sub_100006AF0(v16, &qword_100032368, &qword_1000203D8);
  memcpy(&v13[7], __dst, 0xF9uLL);
  v9 = v14;
  *a4 = v8;
  *(a4 + 8) = 0x4028000000000000;
  *(a4 + 16) = v9;
  return memcpy((a4 + 17), v13, 0x100uLL);
}

void *sub_1000046D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, const void *a3@<X2>, void *a4@<X8>)
{
  v24 = a4;
  v7 = sub_100005A2C(&qword_100032370, &qword_1000203E0);
  __chkstk_darwin(v7 - 8);
  v9 = v22 - v8;
  if ([*(a1 + 8) allowsMultipleValues])
  {
    v10 = sub_10001DB54();
    v11 = sub_10001D9F4();
    sub_10000619C(v9, 1, 1, v11);
    v12 = sub_10001DA14();
    sub_100006AF0(v9, &qword_100032370, &qword_1000203E0);
    KeyPath = swift_getKeyPath();
    v14 = sub_100004D94(KeyPath);
    v15 = swift_getKeyPath();
    memcpy(v29, a3, sizeof(v29));
    v16 = sub_10001D954();
    memcpy(v25, v29, 0xB8uLL);
    v25[23] = v16;
    v25[24] = sub_100004E24;
    v25[25] = 0;
    memcpy(v31, v25, 0xD0uLL);
    memcpy(v26, v25, sizeof(v26));
    memcpy(v30, v25, 0xD0uLL);
    sub_100006808(v29, v33, &qword_100032350, &qword_1000203C8);

    sub_100006808(v25, v33, &qword_1000323A0, qword_100020460);

    sub_100006808(v26, v33, &qword_1000323A0, qword_100020460);
    sub_100006AF0(v31, &qword_1000323A0, qword_100020460);

    v22[1] = v15;

    v22[2] = KeyPath;

    v23 = v10;

    v32[0] = v10;
    v32[1] = KeyPath;
    v32[2] = v12;
    v32[3] = v15;
    v32[4] = v14;
    memcpy(&v32[5], v30, 0xD0uLL);
    sub_100006608(v32);
    memcpy(v33, v32, 0xF9uLL);
    sub_100005A2C(&qword_100032380, &qword_1000203F0);
    sub_100005A2C(&qword_100032388, &qword_1000203F8);
    sub_100006B8C(&qword_100032390, &qword_100032380, &qword_1000203F0, &protocol conformance descriptor for TupleView<A>);
    sub_100006B8C(&qword_100032398, &qword_100032388, &qword_1000203F8, &protocol conformance descriptor for TupleView<A>);
    sub_10001D9A4();
    sub_100006AF0(v25, &qword_1000323A0, qword_100020460);
  }

  else
  {
    memcpy(v26, a3, 0xB8uLL);
    sub_100006808(v26, v33, &qword_100032350, &qword_1000203C8);
    if (a2)
    {
      v17 = sub_10001DB54();
      v18 = sub_10001DB04();
      v19 = swift_getKeyPath();

      v20 = 1;
    }

    else
    {
      v20 = 0;
      v17 = 0;
      v19 = 0;
      v18 = 0;
    }

    v23 = v18;
    memcpy(v28, v26, sizeof(v28));
    memcpy(v29, v26, sizeof(v29));
    memcpy(v30, v26, 0xB8uLL);
    v30[23] = 0;
    v30[24] = v20;
    v30[25] = v17;
    v30[26] = v19;
    v30[27] = v18;
    memcpy(v31, v30, sizeof(v31));
    sub_100006808(v26, v33, &qword_100032350, &qword_1000203C8);
    sub_100006808(v29, v33, &qword_100032350, &qword_1000203C8);
    sub_10000655C(0, v20, v17, v19, v18);
    sub_1000065AC(0, v20, v17, v19, v18);
    memcpy(v25, v28, 0xB8uLL);
    sub_100006AF0(v25, &qword_100032350, &qword_1000203C8);
    memcpy(v32, v31, 0xE0uLL);
    sub_1000065FC(v32);
    memcpy(v33, v32, 0xF9uLL);
    sub_100006808(v30, v27, &qword_100032378, &qword_1000203E8);
    sub_100005A2C(&qword_100032380, &qword_1000203F0);
    sub_100005A2C(&qword_100032388, &qword_1000203F8);
    sub_100006B8C(&qword_100032390, &qword_100032380, &qword_1000203F0, &protocol conformance descriptor for TupleView<A>);
    sub_100006B8C(&qword_100032398, &qword_100032388, &qword_1000203F8, &protocol conformance descriptor for TupleView<A>);
    sub_10001D9A4();
    sub_1000065AC(0, v20, v17, v19, v23);
    sub_100006AF0(v30, &qword_100032378, &qword_1000203E8);
    sub_100006AF0(v26, &qword_100032350, &qword_1000203C8);
  }

  memcpy(v33, v27, 0xF9uLL);
  return memcpy(v24, v33, 0xF9uLL);
}

uint64_t sub_100004D94(uint64_t a1)
{
  if (!sub_100004E4C())
  {
    return 0;
  }

  v2 = [*(v1 + 8) wf_pickerLocalizedImageForState:*(v1 + 16)];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ([v2 representationType] != 4 || !objc_msgSend(v3, "tintColor"))
  {

    return 0;
  }

  v4 = sub_10001DB14();

  return v4;
}

double sub_100004E24()
{
  sub_10001D974();
  sub_10001D7F4();
  return result;
}

BOOL sub_100004E4C()
{
  v1 = *v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v5 = [v3 metadata];
  v6 = [v5 effectiveBundleIdentifiers];

  LOBYTE(v5) = sub_100005134();
  if ((v5 & 1) == 0 || (v7 = *(v0 + 8), objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) == 0))
  {
    v10 = v4;
LABEL_12:

    return 0;
  }

  v9 = v8;
  v10 = v7;
  v11 = [v9 parameterMetadata];
  v12 = [v11 valueType];

  v13 = [v12 wf_entityValueType];
  if (!v13)
  {

    goto LABEL_12;
  }

  v14 = [v13 identifier];
  v15 = sub_10001DD14();
  v17 = v16;

  if (v15 != 0x7261646E656C6143 || v17 != 0xEE00797469746E45)
  {
    v19 = sub_10001E024();

    return (v19 & 1) != 0;
  }

  return 1;
}

uint64_t sub_10000504C()
{
  v0 = sub_10001DD14();
  v2 = sub_1000050B4(46, 0xE100000000000000, v0, v1);
  v4 = v3;

  qword_100032068 = v2;
  unk_100032070 = v4;
  return result;
}

uint64_t sub_1000050B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v5 = sub_10001DDA4();
  sub_10001DD64();
  return v5;
}

BOOL sub_100005134()
{
  v0 = sub_10001D564();
  v9 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001DE64();
  v10 = sub_100006610(&qword_1000323A8, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  while (1)
  {
    sub_10001DEF4();
    v3 = v14;
    if (!v14)
    {
      break;
    }

    sub_100006658(v13, v12);
    sub_100006668(v12, v11);
    sub_100006710(0, &qword_1000323B0, LNEffectiveBundleIdentifier_ptr);
    if (swift_dynamicCast())
    {
      v4 = v15;
      v5 = [v15 bundleIdentifier];
      sub_10001DD14();

      if (qword_100032060 != -1)
      {
        swift_once();
      }

      v6 = sub_10001DD94(xmmword_100032068);

      sub_1000066C4(v12);
      if (v6)
      {
        break;
      }
    }

    else
    {
      sub_1000066C4(v12);
    }
  }

  (*(v9 + 8))(v2, v0);
  return v3 != 0;
}

id sub_1000053AC(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100005A2C(&qword_100032428, &qword_100020478);
  isa = sub_10001DDC4().super.isa;

  v3 = [v1 initWithParameterStates:isa];

  return v3;
}

uint64_t sub_100005498(uint64_t a1)
{
  v2 = sub_100005A2C(&qword_1000322E0, &qword_1000202B8);
  __chkstk_darwin(v2 - 8);
  sub_100006808(a1, &v5 - v3, &qword_1000322E0, &qword_1000202B8);
  return sub_10001D884();
}

uint64_t sub_100005540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D854();
  *a1 = result;
  return result;
}

uint64_t sub_100005598@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D8B4();
  *a1 = result;
  return result;
}

uint64_t sub_1000055F0(void *a1)
{
  v1 = [a1 parameterStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100005A2C(&qword_100032428, &qword_100020478);
  v3 = sub_10001DDD4();

  return v3;
}

void *sub_10000565C(uint64_t a1)
{
  result = sub_1000168D0();
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = _swiftEmptyArrayStorage;
  v8 = &_swiftEmptyArrayStorage[4];
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v27 = a1;
  while (1)
  {
    if (v3 == v4)
    {
      v23 = v7[3];
      if (v23 >= 2)
      {
        v24 = v23 >> 1;
        v22 = __OFSUB__(v24, v5);
        v25 = v24 - v5;
        if (v22)
        {
          goto LABEL_32;
        }

        v7[2] = v25;
      }

      return v7;
    }

    if (v6)
    {
      result = sub_10001DF44();
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      result = *(a1 + 8 * v4 + 32);
    }

    v10 = result;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      sub_100005A2C(&qword_100032320, &qword_1000202F8);
      v16 = swift_allocObject();
      v17 = (j__malloc_size(v16) - 32) / 16;
      v16[2] = v15;
      v16[3] = 2 * v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      a1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_100005814(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (ObjectType != swift_getObjectType())
  {
    return 0;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    return [v6 stateIsEquivalent:a2];
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

__n128 sub_10000589C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000058A8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000058C8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100005918(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_100005964(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100005978(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000059B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005A2C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005A7C()
{
  result = qword_1000321E0;
  if (!qword_1000321E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000321E0);
  }

  return result;
}

unint64_t sub_100005AD0()
{
  result = qword_1000326C0;
  if (!qword_1000326C0)
  {
    sub_100005B4C(&qword_1000321E8, &qword_1000201F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326C0);
  }

  return result;
}

uint64_t sub_100005B4C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005B94()
{
  result = qword_100032208;
  if (!qword_100032208)
  {
    sub_100005B4C(&unk_1000321D0, &qword_1000201E0);
    sub_100005C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032208);
  }

  return result;
}

unint64_t sub_100005C18()
{
  result = qword_100032210;
  if (!qword_100032210)
  {
    sub_100005B4C(&qword_100032218, &qword_100020200);
    sub_100005CD0();
    sub_100006B8C(&qword_1000322A0, &qword_1000322A8, &qword_100020248, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032210);
  }

  return result;
}

unint64_t sub_100005CD0()
{
  result = qword_100032220;
  if (!qword_100032220)
  {
    sub_100005B4C(&qword_100032228, &qword_100020208);
    sub_100005D88();
    sub_100006B8C(&qword_100032290, &qword_100032298, &qword_100020240, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032220);
  }

  return result;
}

unint64_t sub_100005D88()
{
  result = qword_100032230;
  if (!qword_100032230)
  {
    sub_100005B4C(&qword_100032238, &qword_100020210);
    sub_100005AD0();
    sub_100006B8C(&qword_100032240, &qword_100032248, &qword_100020218, &protocol conformance descriptor for TupleView<A>);
    sub_100005E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032230);
  }

  return result;
}

unint64_t sub_100005E54()
{
  result = qword_100032250;
  if (!qword_100032250)
  {
    sub_100005B4C(&qword_100032258, &qword_100020220);
    sub_100005EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032250);
  }

  return result;
}

unint64_t sub_100005EE0()
{
  result = qword_100032260;
  if (!qword_100032260)
  {
    sub_100005B4C(&qword_100032268, &qword_100020228);
    sub_100005F64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032260);
  }

  return result;
}

unint64_t sub_100005F64()
{
  result = qword_100032270;
  if (!qword_100032270)
  {
    sub_100005B4C(&qword_100032278, &qword_100020230);
    sub_100005FE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032270);
  }

  return result;
}

unint64_t sub_100005FE8()
{
  result = qword_100032280;
  if (!qword_100032280)
  {
    sub_100005B4C(&qword_100032288, &qword_100020238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032280);
  }

  return result;
}

unint64_t sub_100006064()
{
  result = qword_1000322B0;
  if (!qword_1000322B0)
  {
    sub_100005B4C(&qword_1000321C0, &qword_1000201D0);
    sub_100005AD0();
    sub_100006B8C(&qword_100032200, &unk_1000321F0, &qword_1000201F8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000322B0);
  }

  return result;
}

uint64_t sub_10000612C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000061C4()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10000621C()
{
  result = qword_100032308;
  if (!qword_100032308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032308);
  }

  return result;
}

uint64_t sub_100006270(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    sub_1000062C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000062C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000062D0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
    sub_100006320(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100006320(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_100006334(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100006350(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100006390(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1000063F0()
{
  result = qword_100032338;
  if (!qword_100032338)
  {
    sub_100005B4C(&qword_100032340, &qword_100020368);
    sub_100005B94();
    sub_100006064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032338);
  }

  return result;
}

uint64_t sub_100006498()
{

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10000655C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

void sub_1000065AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
  }
}

uint64_t sub_100006610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_100006658(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006668(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000066C4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100006710(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100006750(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000062C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100006794(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100006320(result, a2, a3 & 1);
  }

  return result;
}

double sub_1000067D8(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = -1;
  return result;
}

uint64_t sub_100006808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100005A2C(a3, a4);
  sub_100006C04();
  (*(v6 + 16))(a2, a1);
  return a2;
}

unint64_t sub_100006868()
{
  result = qword_100032450;
  if (!qword_100032450)
  {
    sub_100005B4C(&qword_100032448, &qword_100020498);
    sub_1000068F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032450);
  }

  return result;
}

unint64_t sub_1000068F4()
{
  result = qword_100032458;
  if (!qword_100032458)
  {
    sub_100005B4C(&qword_100032460, &qword_1000204A0);
    sub_100006B8C(&qword_100032468, &qword_100032470, &qword_1000204A8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032458);
  }

  return result;
}

unint64_t sub_1000069AC()
{
  result = qword_100032478;
  if (!qword_100032478)
  {
    sub_100005B4C(&qword_100032440, &qword_100020490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032478);
  }

  return result;
}

uint64_t sub_100006A3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }
}

uint64_t sub_100006A8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100006AF0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100005A2C(a2, a3);
  sub_100006C04();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100006B8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005B4C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100006C28(void *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  if ((a3 & 1) == 0 && sub_1000168D0() == 1 && sub_1000168D0())
  {
    sub_100014E10(0, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v22 = a1;

      v9 = sub_10001DF44();
    }

    else
    {
      v7 = *(a2 + 32);
      v8 = a1;

      v9 = v7;
    }

    v10 = v9;
    v11 = [v9 localizedLabel];
    v12 = sub_10001DD14();
    v14 = v13;
  }

  else
  {
    v15 = a1;

    v12 = 0;
    v14 = 0;
  }

  v16 = sub_10000BE20(a1);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
  }

  else
  {
    v18 = sub_100006D8C(a2);

    if (v18)
    {
      v20 = v18;
      v18 = sub_10000CB58(v20);
      v19 = v21;
    }

    else
    {

      v19 = 0;
    }
  }

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v12;
  a4[3] = v14;
  a4[4] = v18;
  a4[5] = v19;
}

char *sub_100006D8C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_100014E10((result - 1), (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v3 + 32);
      }
    }

    return sub_10001DF44();
  }

  result = sub_10001DFF4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100006E20(uint64_t a1, uint64_t a2)
{
  v4 = [*a1 identifier];
  v5 = sub_10001DD14();
  v7 = v6;

  v8 = [*a2 identifier];
  v9 = sub_10001DD14();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_10001E024();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(a1 + 8);
  v16 = *(a2 + 8);

  return sub_10000CDBC(v15, v16);
}

char *sub_100006F30()
{
  v1 = *(v0 + 8);
  v2 = sub_1000168D0();
  if (v2)
  {
    v3 = v2;
    result = sub_1000153D8(0, v2 & ~(v2 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10001DF44();
      }

      else
      {
        v6 = *(v1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v7 key];
      v9 = sub_10001DD14();
      v11 = v10;

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_1000153D8((v12 > 1), v13 + 1, 1);
      }

      ++v5;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v9;
      v14[5] = v11;
    }

    while (v3 != v5);
  }

  v15 = sub_10000C8B4();
  sub_10000C4F0(v15, v16);
}

Swift::Int sub_10000708C()
{
  sub_10001E084();
  sub_100006F30();
  return sub_10001E0A4();
}

Swift::Int sub_1000070D4(uint64_t a1)
{
  sub_10001E084();
  sub_100006F30();
  return sub_10001E0A4();
}

void *sub_100007110()
{
  v1 = sub_10001D904();
  sub_100006C14();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 64);
  v7 = *(v0 + 56);
  v12 = v7;
  if (v13 == 1)
  {
    v8 = v7;
  }

  else
  {

    sub_10001DEA4();
    v9 = sub_10001D9D4();
    sub_10001D674();

    sub_10001D8F4();
    swift_getAtKeyPath();
    sub_100006AF0(&v12, &qword_100032788, &qword_100020748);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_100007294(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1000072D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_100007354()
{
  v1 = v0;
  sub_100005A2C(&qword_100032658, &qword_100020670);
  sub_10001DBB4();
  v2 = v16;
  v17 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  v3 = sub_1000168D0();
  v4 = 0;
  v5 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_10001DF44();
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v6 = *&v2[8 * v4 + 32];
    }

    v7 = v6;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v2 = sub_10000BD18(0, *(v2 + 2) + 1, 1, v2);
      goto LABEL_17;
    }

    v16 = v6;
    sub_100007590(&v17, &v16, v1);

    ++v4;
  }

  v5 = v18;
  v2 = v17;
  if (!sub_1000168D0())
  {

    return v2;
  }

  v3 = v1[3];

  v8 = sub_10000BE20(v3);
  if (v9)
  {
    v1 = v8;
    v4 = v9;
  }

  else
  {
    v1 = sub_100006D8C(v5);

    if (v1)
    {
      v10 = v1;
      v1 = sub_10000CB58(v10);
      v4 = v11;
    }

    else
    {

      v4 = 0;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_10000BD18((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[48 * v13];
  *(v14 + 4) = v3;
  *(v14 + 5) = v5;
  *(v14 + 6) = 0;
  *(v14 + 7) = 0;
  *(v14 + 8) = v1;
  *(v14 + 9) = v4;
  return v2;
}

char *sub_100007590(void *a1, id *a2, uint64_t a3)
{
  v6 = *a2;
  p_ivar_base_size = &WFConfigurationParametersViewController__classData.ivar_base_size;
  v8 = &WFConfigurationParametersViewController__classData.ivar_base_size;
  if (![*a2 allowsMultipleValues] || (objc_msgSend(v6, "displaysMultipleValueEditor") & 1) == 0)
  {
    sub_10000CB58(v6);
    if (v9)
    {
    }

    else
    {
      v10 = *(a3 + 32);
      v11 = [v6 key];
      v12 = sub_10001DD14();
      v14 = v13;

      v15 = sub_10000CF90(v12, v14, v10);

      if (!v15)
      {
        v25 = v6;
        sub_10001DDB4();
        sub_10000BCEC(*((a1[1] & 0xFFFFFFFFFFFFFF8) + 0x10));
        return sub_10001DE04();
      }

      v8 = (&WFConfigurationParametersViewController__classData + 8);
      p_ivar_base_size = (&WFConfigurationParametersViewController__classData + 8);
    }
  }

  v16 = a1[1];
  if (sub_1000168D0())
  {
    v46 = v3;
    v17 = *(a3 + 24);

    v18 = sub_10000BE20(v17);
    if (v19)
    {
      v20 = v18;
      v21 = v19;
    }

    else
    {
      v22 = sub_100006D8C(v16);
      if (v22)
      {
        v23 = v22;
        v20 = sub_10000CB58(v22);
        v21 = v24;
      }

      else
      {

        v20 = 0;
        v21 = 0;
      }
    }

    sub_10000BC60();
    v27 = *(*a1 + 16);
    sub_10000BCAC(v27);
    v28 = *a1;
    *(v28 + 16) = v27 + 1;
    v29 = (v28 + 48 * v27);
    v29[4] = v17;
    v29[5] = v16;
    v29[6] = 0;
    v29[7] = 0;
    v29[8] = v20;
    v29[9] = v21;
    *a1 = v28;

    a1[1] = _swiftEmptyArrayStorage;
    v8 = &WFConfigurationParametersViewController__classData.ivar_base_size;
    p_ivar_base_size = &WFConfigurationParametersViewController__classData.ivar_base_size;
  }

  if (![v6 *(p_ivar_base_size + 123)] || (objc_msgSend(v6, *(v8 + 148)) & 1) == 0)
  {
    v30 = *(a3 + 32);
    v31 = [v6 key];
    v32 = sub_10001DD14();
    v34 = v33;

    v35 = sub_10000CF90(v32, v34, v30);

    if (!v35)
    {
      v36 = 1;
      goto LABEL_21;
    }
  }

  v36 = 0;
LABEL_21:
  v37 = *(a3 + 24);
  sub_100005A2C(&qword_1000323C0, &qword_100020790);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000200A0;
  *(v38 + 32) = v6;
  v39 = v37;
  v40 = v6;
  sub_100006C28(v39, v38, v36, v45);
  sub_10000BC60();
  v41 = *(*a1 + 16);
  result = sub_10000BCAC(v41);
  v42 = *a1;
  *(v42 + 16) = v41 + 1;
  v43 = (v42 + 48 * v41);
  v44 = v45[1];
  v43[2] = v45[0];
  v43[3] = v44;
  v43[4] = v45[2];
  *a1 = v42;
  return result;
}

uint64_t sub_1000078B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v45 = sub_10001D804();
  sub_100006C14();
  v4 = v3;
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005A2C(&qword_100032610, &qword_100020620);
  sub_100006C14();
  v10 = v9;
  sub_10000C880();
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  sub_100005A2C(&qword_100032618, &qword_100020628);
  sub_100006C14();
  v42 = v14;
  v43 = v15;
  sub_10000C880();
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v46 = v2;
  sub_100005A2C(&qword_100032620, &qword_100020630);
  sub_100006B8C(&qword_100032628, &qword_100032620, &qword_100020630, &protocol conformance descriptor for TupleView<A>);
  sub_10001DA34();
  sub_10001DCA4();
  v38 = sub_100006B8C(&qword_100032630, &qword_100032610, &qword_100020620, &protocol conformance descriptor for Form<A>);
  v37 = sub_100009E34(&qword_100032638, &type metadata accessor for GroupedFormStyle, &protocol conformance descriptor for GroupedFormStyle);
  v19 = v45;
  sub_10001DAF4();
  (*(v4 + 8))(v7, v19);
  (*(v10 + 8))(v13, v8);
  v20 = *v2;
  v40 = *(v2 + 8);
  v41 = v20;
  v39 = *(v2 + 16);
  type metadata accessor for FocusConfigurationActionViewModel(0);
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel, &unk_100020AA8);
  v21 = sub_10001D794();
  swift_getKeyPath();
  sub_10001D7E4();

  v22 = v47;
  v23 = v48;
  LOBYTE(v10) = v49;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  *(v24 + 48) = v10;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  *(v25 + 48) = v10;

  sub_10001DC34();
  v47 = v8;
  v48 = v45;
  v49 = v38;
  v50 = v37;
  swift_getOpaqueTypeConformance2();
  v26 = v44;
  v27 = v42;
  sub_10001DAA4();

  (*(v43 + 8))(v18, v27);
  v28 = sub_10001D784();
  v29 = *&v28[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurableParametersChange];

  v30 = swift_allocObject();
  sub_10000C8C0(v30);
  v31 = sub_100005A2C(&qword_100032648, &qword_100020660);
  *(v26 + *(v31 + 52)) = v29;
  v32 = (v26 + *(v31 + 56));
  *v32 = sub_10000B7AC;
  v32[1] = v28;
  v33 = swift_allocObject();
  sub_10000C8C0(v33);
  v34 = (v26 + *(sub_100005A2C(&qword_100032650, &qword_100020668) + 36));
  *v34 = sub_10000B7B4;
  v34[1] = v28;
  v34[2] = 0;
  v34[3] = 0;
  sub_10000B7BC(v2, &v47);
  return sub_10000B7BC(v2, &v47);
}

uint64_t sub_100007E54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v42 = sub_100005A2C(&qword_100032660, &qword_100020678);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v38 = &v37 - v3;
  v4 = sub_100005A2C(&qword_100032668, &qword_100020680);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v37 - v8;
  v9 = sub_100005A2C(&qword_100032670, &qword_100020688);
  v41 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v43 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = sub_100005A2C(&qword_100032678, &unk_100020690);
  v15 = __chkstk_darwin(v14 - 8);
  v47 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v46 = &v37 - v17;
  sub_100008480(&v37 - v17);
  v49 = sub_100007354();
  swift_getKeyPath();
  v18 = swift_allocObject();
  memcpy((v18 + 16), a1, 0x41uLL);
  sub_10000B7BC(a1, v48);
  sub_100005A2C(&qword_100032680, &qword_1000206B8);
  sub_100005A2C(&qword_100032688, &qword_1000206C0);
  sub_100006B8C(&qword_100032690, &qword_100032680, &qword_1000206B8, &protocol conformance descriptor for [A]);
  sub_10000B800();
  sub_10000B854();
  v40 = v13;
  sub_10001DC44();
  type metadata accessor for FocusConfigurationActionViewModel(0);
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel, &unk_100020AA8);
  v19 = sub_10001D784();
  v20 = *&v19[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

  if (!sub_10000BE80(v20))
  {
    goto LABEL_5;
  }

  v21 = sub_1000168D0();
  if (!v21)
  {

LABEL_5:
    v25 = 1;
    v23 = v44;
    v24 = v42;
    goto LABEL_6;
  }

  __chkstk_darwin(v21);
  sub_100005A2C(&qword_100032728, &qword_100020700);
  sub_10000BF00();
  v22 = v38;
  sub_10001DC64();

  v23 = v44;
  v24 = v42;
  (*(v39 + 32))(v44, v22, v42);
  v25 = 0;
LABEL_6:
  sub_10000619C(v23, v25, 1, v24);
  v26 = v47;
  sub_10000C194(v46, v47, &qword_100032678, &unk_100020690);
  v27 = v40;
  v28 = v41;
  v29 = *(v41 + 16);
  v30 = v43;
  v29(v43, v40, v9);
  sub_10000C194(v23, v7, &qword_100032668, &qword_100020680);
  v31 = v26;
  v32 = v7;
  v33 = v45;
  sub_10000C194(v31, v45, &qword_100032678, &unk_100020690);
  v34 = sub_100005A2C(&qword_100032720, &qword_1000206F8);
  v29((v33 + *(v34 + 48)), v30, v9);
  sub_10000C194(v32, v33 + *(v34 + 64), &qword_100032668, &qword_100020680);
  sub_100006AF0(v23, &qword_100032668, &qword_100020680);
  v35 = *(v28 + 8);
  v35(v27, v9);
  sub_100006AF0(v46, &qword_100032678, &unk_100020690);
  sub_100006AF0(v32, &qword_100032668, &qword_100020680);
  v35(v30, v9);
  return sub_100006AF0(v47, &qword_100032678, &unk_100020690);
}

uint64_t sub_100008480@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v111 = sub_100005A2C(&qword_1000327D8, &qword_100020798);
  __chkstk_darwin(v111);
  v99 = &v90 - v2;
  v97 = sub_100005A2C(&qword_1000327E0, &qword_1000207A0);
  v92 = *(v97 - 8);
  __chkstk_darwin(v97);
  v91 = &v90 - v3;
  v4 = sub_100005A2C(&qword_1000327E8, &qword_1000207A8);
  v5 = __chkstk_darwin(v4 - 8);
  v98 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v105 = &v90 - v7;
  v95 = sub_100005A2C(&qword_1000327F0, &qword_1000207B0);
  v8 = __chkstk_darwin(v95);
  v96 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v90 - v10;
  v108 = sub_100005A2C(&qword_1000327F8, &qword_1000207B8);
  __chkstk_darwin(v108);
  v110 = &v90 - v12;
  v109 = sub_100005A2C(&qword_100032800, &qword_1000207C0);
  __chkstk_darwin(v109);
  v104 = &v90 - v13;
  v102 = sub_100005A2C(&qword_100032808, &qword_1000207C8);
  v94 = *(v102 - 8);
  __chkstk_darwin(v102);
  v93 = &v90 - v14;
  v15 = sub_100005A2C(&qword_100032810, &qword_1000207D0);
  v16 = __chkstk_darwin(v15 - 8);
  v103 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v90 - v18;
  v100 = sub_100005A2C(&qword_100032818, &qword_1000207D8);
  v19 = __chkstk_darwin(v100);
  v101 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v90 - v21;
  v106 = v1;
  type metadata accessor for FocusConfigurationActionViewModel(0);
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel, &unk_100020AA8);
  v23 = sub_10001D784();
  v24 = *&v23[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

  v25 = [v24 actionIdentifier];
  if (v25)
  {
    v26 = sub_10001D784();
    v27 = *&v26[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action];

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v99 = v28;
      v105 = v27;
      v29 = sub_10001D784();
      v30 = *(v29 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request);

      LOBYTE(v29) = [v30 showsEnablementButton];
      v90 = v25;
      if ((v29 & 1) == 0)
      {
        v55 = [v99 metadata];
        v56 = [v55 descriptionMetadata];

        if (v56)
        {
          v57 = [v56 descriptionText];

          v58 = [v57 wf_localizedString];
          sub_10001DD14();
        }
      }

      *v22 = sub_10001D914();
      *(v22 + 1) = 0;
      v59 = 1;
      v22[16] = 1;
      v60 = sub_100005A2C(&qword_100032860, &qword_100020808);
      sub_10000A358(v90, &v22[*(v60 + 44)]);

      v113 = sub_10001DB24();
      v61 = sub_10001DC04();
      *&v22[*(sub_100005A2C(&qword_100032868, &qword_100020810) + 36)] = v61;
      v62 = v22;
      v63 = &v22[*(v100 + 36)];
      v63[32] = 0;
      *v63 = 0u;
      *(v63 + 1) = 0u;
      v64 = sub_10001D784();
      v65 = *&v64[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

      LODWORD(v64) = [v65 showsEnablementButton];
      v67 = v102;
      if (v64)
      {
        __chkstk_darwin(v66);
        v68 = v99;
        v69 = v106;
        *(&v90 - 2) = v99;
        *(&v90 - 1) = v69;
        v70 = [v68 metadata];
        v71 = [v70 descriptionMetadata];

        if (v71)
        {
          v72 = [v71 descriptionText];

          v73 = [v72 wf_localizedString];
          v74 = sub_10001DD14();
          v76 = v75;

          v113 = v74;
          v114 = v76;
          sub_100005A7C();
          v77 = sub_10001DA74();
          v81 = v80 & 1;
        }

        else
        {
          v77 = 0;
          v78 = 0;
          v81 = 0;
          v79 = 0;
        }

        v113 = v77;
        v114 = v78;
        v115 = v81;
        v116 = v79;
        sub_100005A2C(&qword_100032850, &qword_100020800);
        sub_100005A2C(&qword_1000321E8, &qword_1000201F0);
        sub_100006B8C(&qword_100032858, &qword_100032850, &qword_100020800, &protocol conformance descriptor for Toggle<A>);
        sub_100005AD0();
        v82 = v93;
        sub_10001DC74();
        (*(v94 + 32))(v107, v82, v67);
        v59 = 0;
      }

      v83 = v107;
      sub_10000619C(v107, v59, 1, v67);
      v84 = v62;
      v85 = v101;
      sub_10000C194(v62, v101, &qword_100032818, &qword_1000207D8);
      v86 = v103;
      sub_10000C194(v83, v103, &qword_100032810, &qword_1000207D0);
      v87 = v104;
      sub_10000C194(v85, v104, &qword_100032818, &qword_1000207D8);
      v88 = sub_100005A2C(&unk_100032870, &qword_100020818);
      sub_10000C194(v86, v87 + *(v88 + 48), &qword_100032810, &qword_1000207D0);
      sub_100006AF0(v86, &qword_100032810, &qword_1000207D0);
      sub_100006AF0(v85, &qword_100032818, &qword_1000207D8);
      sub_10000C194(v87, v110, &qword_100032800, &qword_1000207C0);
      swift_storeEnumTagMultiPayload();
      sub_100006B8C(&qword_100032840, &qword_100032800, &qword_1000207C0, &protocol conformance descriptor for TupleView<A>);
      sub_100006B8C(&qword_100032848, &qword_1000327D8, &qword_100020798, &protocol conformance descriptor for TupleView<A>);
      v89 = v112;
      sub_10001D9A4();

      sub_100006AF0(v87, &qword_100032800, &qword_1000207C0);
      sub_100006AF0(v83, &qword_100032810, &qword_1000207D0);
      sub_100006AF0(v84, &qword_100032818, &qword_1000207D8);
      v50 = sub_100005A2C(&qword_100032820, &qword_1000207E0);
      v51 = v89;
      return sub_10000619C(v51, 0, 1, v50);
    }
  }

  v31 = sub_10001D784();
  v32 = *&v31[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

  v33 = [v32 contextualAction];
  if (v33)
  {
    *v11 = sub_10001D914();
    *(v11 + 1) = 0;
    v34 = 1;
    v11[16] = 1;
    v35 = &v11[*(sub_100005A2C(&qword_100032828, &qword_1000207E8) + 44)];
    v107 = v33;
    v36 = v106;
    sub_10000A770(v33, v35);
    v113 = sub_10001DB24();
    v37 = sub_10001DC04();
    *&v11[*(sub_100005A2C(&qword_100032830, &qword_1000207F0) + 36)] = v37;
    v38 = &v11[*(v95 + 36)];
    v38[32] = 0;
    *v38 = 0u;
    *(v38 + 1) = 0u;
    v39 = sub_10001D784();
    v40 = *&v39[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

    LODWORD(v39) = [v40 showsEnablementButton];
    v42 = v97;
    if (v39)
    {
      __chkstk_darwin(v41);
      *(&v90 - 2) = v36;
      sub_100005A2C(&qword_100032850, &qword_100020800);
      sub_100006B8C(&qword_100032858, &qword_100032850, &qword_100020800, &protocol conformance descriptor for Toggle<A>);
      v43 = v91;
      sub_10001DC64();
      (*(v92 + 32))(v105, v43, v42);
      v34 = 0;
    }

    v44 = v105;
    sub_10000619C(v105, v34, 1, v42);
    v45 = v96;
    sub_10000C194(v11, v96, &qword_1000327F0, &qword_1000207B0);
    v46 = v98;
    sub_10000C194(v44, v98, &qword_1000327E8, &qword_1000207A8);
    v47 = v99;
    sub_10000C194(v45, v99, &qword_1000327F0, &qword_1000207B0);
    v48 = sub_100005A2C(&qword_100032838, &qword_1000207F8);
    sub_10000C194(v46, v47 + *(v48 + 48), &qword_1000327E8, &qword_1000207A8);
    sub_100006AF0(v46, &qword_1000327E8, &qword_1000207A8);
    sub_100006AF0(v45, &qword_1000327F0, &qword_1000207B0);
    sub_10000C194(v47, v110, &qword_1000327D8, &qword_100020798);
    swift_storeEnumTagMultiPayload();
    sub_100006B8C(&qword_100032840, &qword_100032800, &qword_1000207C0, &protocol conformance descriptor for TupleView<A>);
    sub_100006B8C(&qword_100032848, &qword_1000327D8, &qword_100020798, &protocol conformance descriptor for TupleView<A>);
    v49 = v112;
    sub_10001D9A4();

    sub_100006AF0(v47, &qword_1000327D8, &qword_100020798);
    sub_100006AF0(v44, &qword_1000327E8, &qword_1000207A8);
    sub_100006AF0(v11, &qword_1000327F0, &qword_1000207B0);
    v50 = sub_100005A2C(&qword_100032820, &qword_1000207E0);
    v51 = v49;
    return sub_10000619C(v51, 0, 1, v50);
  }

  v52 = sub_100005A2C(&qword_100032820, &qword_1000207E0);
  v53 = v112;

  return sub_10000619C(v53, 1, 1, v52);
}

uint64_t sub_1000093D0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return sub_100009410(v4, a2);
}

uint64_t sub_100009410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = sub_100005A2C(&qword_1000326B8, &unk_1000206C8);
  v41 = *(v44 - 8);
  __chkstk_darwin(v44);
  v5 = &v40 - v4;
  v42 = sub_100005A2C(&qword_100032768, &unk_100020730);
  __chkstk_darwin(v42);
  v7 = (&v40 - v6);
  v8 = *(a1 + 8);
  v9 = sub_1000168D0();
  if (v9)
  {
    sub_100014E10(0, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = sub_10001DF44();
    }

    else
    {
      v10 = *(v8 + 32);
    }

    v11 = v10;
    v55 = &OBJC_PROTOCOL___WFParameterValuePickable;
    v12 = swift_dynamicCastObjCProtocolConditional();
    if (v12)
    {
      v13 = v12;
      if (sub_1000168D0() == 1)
      {
        v40 = *(v2 + 32);
        v14 = [v13 key];
        v15 = sub_10001DD14();
        v17 = v16;

        v18 = sub_10000CF90(v15, v17, v40);

        if (v18)
        {
          v19 = *(v2 + 24);
          sub_10001D5E4();
          v20 = v19;
          v21 = v11;
          sub_100007110();
          sub_10001D5D4();
          sub_100009E34(&qword_100032780, &type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);
          v22 = sub_10001D7D4();
          *v7 = v20;
          v7[1] = v13;
          v7[2] = v18;
          v7[3] = v22;
          v7[4] = v23;
          swift_storeEnumTagMultiPayload();
          sub_10000B8E0();
          sub_10000B934();
          return sub_10001D9A4();
        }
      }
    }
  }

  __chkstk_darwin(v9);
  v56[0] = *(a1 + 16);
  v25 = *&v56[0];
  if (!*(&v56[0] + 1))
  {
    v25 = 0;
  }

  v26 = _swiftEmptyArrayStorage;
  if (!*(&v56[0] + 1))
  {
    v26 = 0;
  }

  v51 = v25;
  v52 = *(&v56[0] + 1);
  v53 = 0;
  v54 = v26;
  v27 = *(a1 + 40);
  if (v27)
  {
    v28 = *(a1 + 32);
    sub_10000C194(v56, v49, &qword_100032770, &unk_100020B50);
    v29 = sub_10001D964();
    v47 = 1;
    sub_10000AF04(v28, v27, v46);
    memcpy(v48, v46, 0x59uLL);
    memcpy(v49, v46, 0x59uLL);
    sub_10000C194(v48, &v45, &qword_100032778, &qword_100020740);
    sub_100006AF0(v49, &qword_100032778, &qword_100020740);
    v30 = v48[0];
    v31 = v48[1];
    v32 = v48[2];
    v33 = v48[3];
    v34 = v48[4];
    v35 = *&v48[5];
    v36 = BYTE8(v48[5]);
    v37 = v47;
  }

  else
  {
    sub_10000C194(v56, v49, &qword_100032770, &unk_100020B50);
    v29 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v30 = 0uLL;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
  }

  v49[0] = v29;
  v49[1] = 0;
  *&v49[3] = v30;
  *&v49[5] = v31;
  *&v49[7] = v32;
  *&v49[9] = v33;
  *&v49[11] = v34;
  v49[2] = v37;
  v49[13] = v35;
  v50 = v36;
  sub_100005A2C(&qword_1000321E8, &qword_1000201F0);
  sub_100005A2C(&qword_1000326D8, &qword_1000206D8);
  sub_100005A2C(&qword_100032708, &qword_1000206E8);
  sub_100005AD0();
  sub_10000B9D4();
  sub_10000BBB0();
  sub_10001DC54();
  v38 = v41;
  v39 = v44;
  (*(v41 + 16))(v7, v5, v44);
  swift_storeEnumTagMultiPayload();
  sub_10000B8E0();
  sub_10000B934();
  sub_10001D9A4();
  return (*(v38 + 8))(v5, v39);
}

uint64_t sub_100009954(uint64_t a1, const void *a2)
{
  v6 = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  memcpy((v3 + 16), a2, 0x41uLL);

  sub_10000B7BC(a2, v5);
  sub_100005A2C(&qword_100032740, &qword_100020720);
  sub_100006B8C(&qword_100032748, &qword_100032740, &qword_100020720, &protocol conformance descriptor for [A]);
  sub_10000BFE0(&qword_100032750, &qword_100032758, WFFocusConfigurationButton_ptr);
  sub_10000BF84();
  return sub_10001DC44();
}

void *sub_100009A94@<X0>(void **a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = swift_allocObject();
  memcpy((v6 + 16), a2, 0x41uLL);
  *(v6 + 88) = v5;
  v7 = v5;
  sub_10000B7BC(a2, __src);
  sub_100009C48(v7, sub_10000C0A0, v6, __src);
  return memcpy(a3, __src, 0x48uLL);
}

uint64_t sub_100009B44(uint64_t *a1, void *a2, double a3, double a4, double a5, double a6)
{
  type metadata accessor for FocusConfigurationActionViewModel(0);
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel, &unk_100020AA8);
  v7 = sub_10001D784();

  v8 = a2;
  sub_10001D6C4();
}

__n128 sub_100009C48@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100005A2C(&qword_100032760, &qword_100020728);
  sub_10001DBA4();
  result = v9;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v9;
  *(a4 + 40) = v10;
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  return result;
}

uint64_t sub_100009CE0(uint64_t *a1, uint64_t a2)
{

  sub_100005A2C(&qword_100032658, &qword_100020670);
  return sub_10001DBC4();
}

void sub_100009D3C(uint64_t *a1)
{
  type metadata accessor for FocusConfigurationActionViewModel(0);
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel, &unk_100020AA8);
  v1 = sub_10001D784();
  sub_100011FDC();
}

uint64_t sub_100009E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100009E84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = sub_10001D574();
  v39 = *(v4 - 8);
  v40 = v4;
  __chkstk_darwin(v4);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10001D5A4();
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001D594();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100005A2C(&qword_1000327C0, &qword_100020780);
  v14 = *(v13 - 8);
  v35 = v13;
  v36 = v14;
  __chkstk_darwin(v13);
  v16 = &v32 - v15;
  v37 = sub_100005A2C(&qword_1000326E0, &qword_1000206E0);
  __chkstk_darwin(v37);
  v34 = &v32 - v17;
  sub_10001D5E4();
  v18 = *(v2 + 24);
  v19 = a1;
  v20 = v18;
  sub_100007110();
  sub_10001D5D4();
  (*(v6 + 104))(v8, enum case for ParameterLayoutMode.default(_:), v33);
  sub_10001D584();
  v21 = sub_100009E34(&qword_1000326F0, &type metadata accessor for ParameterRowView, &protocol conformance descriptor for ParameterRowView);
  sub_10001DA84();
  (*(v10 + 8))(v12, v9);
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_10001DF34(21);

  v42 = 0xD000000000000013;
  v43 = 0x8000000100027060;
  v22 = [v19 key];
  v23 = sub_10001DD14();
  v25 = v24;

  v44._countAndFlagsBits = v23;
  v44._object = v25;
  sub_10001DD74(v44);

  v42 = v9;
  v43 = v21;
  swift_getOpaqueTypeConformance2();
  v26 = v34;
  v27 = v35;
  sub_10001DAE4();

  (*(v36 + 8))(v16, v27);
  v29 = v38;
  v28 = v39;
  v30 = v40;
  (*(v39 + 104))(v38, enum case for EditorPresentationEnvironment.focusFilter(_:), v40);
  sub_10000BA94();
  sub_10001DA94();
  (*(v28 + 8))(v29, v30);
  return sub_10000C124(v26);
}

uint64_t sub_10000A358@<X0>(void *a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_100005A2C(&qword_100032880, &qword_100020820);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  v13 = [a1 bundleIdentifier];
  sub_10001DD14();

  sub_10001D5F4();
  sub_10001DC84();
  sub_10001D7B4();
  v14 = &v12[*(v7 + 44)];
  v15 = v19[1];
  *v14 = v19[0];
  *(v14 + 1) = v15;
  *(v14 + 2) = v19[2];
  sub_10000C194(v12, v10, &qword_100032880, &qword_100020820);
  *a4 = 0;
  *(a4 + 8) = 1;
  v16 = sub_100005A2C(&qword_100032888, &qword_100020828);
  sub_10000C194(v10, a4 + *(v16 + 48), &qword_100032880, &qword_100020820);
  v17 = a4 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_100006AF0(v12, &qword_100032880, &qword_100020820);
  return sub_100006AF0(v10, &qword_100032880, &qword_100020820);
}

uint64_t sub_10000A53C(void *a1, uint64_t *a2)
{
  v2 = [a1 metadata];
  v3 = [v2 title];

  if (v3)
  {
    v4 = [v3 wf_localizedString];
  }

  else
  {
    sub_10001DD44();
    sub_10001DD44();
    if (qword_100032078 != -1)
    {
      swift_once();
    }

    v5 = static NSBundle._current;
    v6 = sub_10001DD04();
    v7 = sub_10001DD04();

    v3 = sub_10001DD04();

    v4 = [v5 localizedStringForKey:v6 value:v7 table:v3];
  }

  sub_10001DD14();
  type metadata accessor for FocusConfigurationActionViewModel(0);
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel, &unk_100020AA8);
  v8 = sub_10001D784();
  sub_10000F6EC();

  sub_100005A7C();
  return sub_10001DBF4();
}

uint64_t sub_10000A770@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v24 = sub_10001D634();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100005A2C(&qword_100032890, &qword_100020830);
  v6 = __chkstk_darwin(v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v22 - v10;
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = [a1 title];
  sub_10001DD14();

  v15 = [a1 icon];
  if (v15)
  {
    sub_10000C1E0(v15);
  }

  sub_10000AA5C();
  sub_10001D624();
  sub_10001DC84();
  sub_10001D7B4();
  (*(v3 + 32))(v11, v5, v24);
  v16 = &v11[*(v23 + 36)];
  v17 = v27;
  *v16 = v26;
  *(v16 + 1) = v17;
  *(v16 + 2) = v28;
  sub_10000C608(v11, v13, &qword_100032890, &qword_100020830);
  sub_10000C194(v13, v8, &qword_100032890, &qword_100020830);
  v18 = v25;
  *v25 = 0;
  *(v18 + 8) = 1;
  v19 = sub_100005A2C(&qword_100032898, &qword_100020838);
  sub_10000C194(v8, v18 + *(v19 + 48), &qword_100032890, &qword_100020830);
  v20 = v18 + *(v19 + 64);
  *v20 = 0;
  v20[8] = 1;
  sub_100006AF0(v13, &qword_100032890, &qword_100020830);
  return sub_100006AF0(v8, &qword_100032890, &qword_100020830);
}

uint64_t sub_10000AA5C()
{
  type metadata accessor for FocusConfigurationActionViewModel(0);
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel, &unk_100020AA8);
  v0 = sub_10001D784();
  v1 = *&v0[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request];

  v2 = [v1 mastheadTintColor];
  if (v2)
  {

    return sub_10001DB14();
  }

  else
  {

    return sub_10001DB04();
  }
}

uint64_t sub_10000AB58(uint64_t *a1)
{
  sub_10001DD44();
  sub_10001DD44();
  if (qword_100032078 != -1)
  {
    swift_once();
  }

  v1 = static NSBundle._current;
  v2 = sub_10001DD04();
  v3 = sub_10001DD04();

  v4 = sub_10001DD04();

  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  sub_10001DD14();
  type metadata accessor for FocusConfigurationActionViewModel(0);
  sub_100009E34(&qword_100032640, type metadata accessor for FocusConfigurationActionViewModel, &unk_100020AA8);
  v6 = sub_10001D784();
  sub_10000F6EC();

  sub_100005A7C();
  return sub_10001DBF4();
}

uint64_t sub_10000AD34(uint64_t a1, const void *a2)
{
  v8 = *(a1 + 8);
  v7[9] = v8;
  swift_getKeyPath();
  v3 = swift_allocObject();
  memcpy((v3 + 16), a2, 0x41uLL);
  sub_10000C194(&v8, v7, &qword_100032798, &qword_100020770);
  sub_10000B7BC(a2, v7);
  sub_100005A2C(&qword_100032798, &qword_100020770);
  sub_100005A2C(&qword_1000327A0, &qword_100020778);
  sub_100006B8C(&qword_1000327A8, &qword_100032798, &qword_100020770, &protocol conformance descriptor for [A]);
  sub_10000BFE0(&unk_1000327B0, &qword_100032B00, WFParameter_ptr);
  v4 = sub_100005B4C(&qword_1000326E0, &qword_1000206E0);
  v5 = sub_10000BA94();
  v7[0] = v4;
  v7[1] = v5;
  swift_getOpaqueTypeConformance2();
  return sub_10001DC44();
}

uint64_t sub_10000AF04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = sub_10001D9E4();
  sub_10001D774();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = 0;
  __src[3] = _swiftEmptyArrayStorage;
  LOBYTE(__src[4]) = v6;
  __src[5] = v7;
  __src[6] = v9;
  __src[7] = v11;
  __src[8] = v13;
  LOBYTE(__src[9]) = 0;
  memcpy(__dst, __src, 0x49uLL);
  v16[80] = 0;
  memcpy(a3, __dst, 0x50uLL);
  *(a3 + 80) = 0x4028000000000000;
  *(a3 + 88) = 0;
  v19[0] = a1;
  v19[1] = a2;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  v22 = v6;
  v23 = v8;
  v24 = v10;
  v25 = v12;
  v26 = v14;
  v27 = 0;
  sub_10000C194(__src, v16, &qword_100032790, &qword_100020750);
  return sub_100006AF0(v19, &qword_100032790, &qword_100020750);
}

uint64_t sub_10000B028@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  sub_100005A2C(&qword_1000328B8, &qword_1000209C0);
  sub_10000C880();
  __chkstk_darwin(v2);
  v4 = &v33 - v3;
  v36 = sub_100005A2C(&qword_1000328C0, &qword_1000209C8);
  sub_100006C14();
  v34 = v5;
  sub_10000C880();
  __chkstk_darwin(v6);
  v8 = &v33 - v7;
  v33 = sub_100005A2C(&qword_1000328C8, &qword_1000209D0);
  sub_100006C04();
  sub_10000C880();
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  v35 = sub_100005A2C(&qword_1000328D0, &qword_1000209D8);
  sub_100006C04();
  sub_10000C880();
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v37 = sub_100005A2C(&qword_1000328D8, &qword_1000209E0);
  sub_100006C04();
  sub_10000C880();
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = *v1;
  v19 = [*v1 localizedTitle];
  v20 = sub_10001DD14();
  v22 = v21;

  v39[0] = v20;
  v39[1] = v22;
  if ([v18 isDestructive])
  {
    sub_10001D744();
  }

  else
  {
    sub_10001D754();
  }

  v23 = sub_10001D764();
  sub_10000619C(v4, 0, 1, v23);
  sub_10000C8A8();
  v24 = swift_allocObject();
  sub_10000C88C(v24);
  sub_10000C574(v1, __src);
  sub_100005A7C();
  sub_10001DBE4();
  sub_10001DC94();
  sub_10001D814();
  (*(v34 + 32))(v11, v8, v36);
  memcpy(&v11[*(v33 + 36)], __src, 0x70uLL);
  sub_10000C8A8();
  v25 = swift_allocObject();
  sub_10000C88C(v25);
  sub_10000C574(v1, v39);
  v26 = sub_10001DC84();
  v28 = v27;
  sub_10000C608(v11, v14, &qword_1000328C8, &qword_1000209D0);
  v29 = &v14[*(v35 + 36)];
  *v29 = sub_10000C5AC;
  v29[1] = v25;
  v29[2] = v26;
  v29[3] = v28;
  sub_10000C8A8();
  v30 = swift_allocObject();
  sub_10000C88C(v30);
  sub_10000C608(v14, v17, &qword_1000328D0, &qword_1000209D8);
  v31 = &v17[*(v37 + 36)];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = sub_10000C600;
  *(v31 + 3) = v30;
  sub_10000C608(v17, v38, &qword_1000328D8, &qword_1000209E0);
  return sub_10000C574(v1, v39);
}

uint64_t sub_10000B480(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(result + 16);

    sub_100005A2C(&qword_1000328E0, &qword_1000209E8);
    v3 = sub_10001DBB4();
    if ((v4 & 1) == 0)
    {
      v1(v3);
    }

    return sub_10000C654(v1, v2);
  }

  return result;
}

uint64_t sub_10000B51C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_10001D9B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D9C4();
  sub_10001D7C4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v16 = *(a1 + 40);
  v20 = *(a1 + 24);
  v21 = v16;
  v22 = *(a1 + 56);
  v18[1] = v9;
  v18[2] = v11;
  v18[3] = v13;
  v18[4] = v15;
  v19 = 0;
  sub_100005A2C(&qword_1000328E0, &qword_1000209E8);
  sub_10001DBC4();
  result = sub_10001DB24();
  *a2 = result;
  return result;
}

uint64_t sub_10000B738()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_10000B790(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1(a1, a2);
  }

  else
  {
  }
}

void sub_10000B7A0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_10000B800()
{
  result = qword_100032698;
  if (!qword_100032698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032698);
  }

  return result;
}

unint64_t sub_10000B854()
{
  result = qword_1000326A0;
  if (!qword_1000326A0)
  {
    sub_100005B4C(&qword_100032688, &qword_1000206C0);
    sub_10000B8E0();
    sub_10000B934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326A0);
  }

  return result;
}

unint64_t sub_10000B8E0()
{
  result = qword_1000326A8;
  if (!qword_1000326A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326A8);
  }

  return result;
}

unint64_t sub_10000B934()
{
  result = qword_1000326B0;
  if (!qword_1000326B0)
  {
    sub_100005B4C(&qword_1000326B8, &unk_1000206C8);
    sub_100005AD0();
    sub_10000B9D4();
    sub_10000BBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326B0);
  }

  return result;
}

unint64_t sub_10000B9D4()
{
  result = qword_1000326D0;
  if (!qword_1000326D0)
  {
    sub_100005B4C(&qword_1000326D8, &qword_1000206D8);
    sub_100005B4C(&qword_1000326E0, &qword_1000206E0);
    sub_10000BA94();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326D0);
  }

  return result;
}

unint64_t sub_10000BA94()
{
  result = qword_1000326E8;
  if (!qword_1000326E8)
  {
    sub_100005B4C(&qword_1000326E0, &qword_1000206E0);
    sub_10001D594();
    sub_100009E34(&qword_1000326F0, &type metadata accessor for ParameterRowView, &protocol conformance descriptor for ParameterRowView);
    swift_getOpaqueTypeConformance2();
    sub_100009E34(&qword_1000326F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000326E8);
  }

  return result;
}

unint64_t sub_10000BBB0()
{
  result = qword_100032700;
  if (!qword_100032700)
  {
    sub_100005B4C(&qword_100032708, &qword_1000206E8);
    sub_100006B8C(&qword_100032710, &qword_100032718, &qword_1000206F0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032700);
  }

  return result;
}

char *sub_10000BC60()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_10000BD18(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_10000BCAC(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_10000BD18((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_10000BCEC(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v2 > 1);
  }

  return result;
}

char *sub_10000BD18(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 2);
    if (v7 <= v8)
    {
      v9 = *(a4 + 2);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100005A2C(&unk_1000327C8, &qword_100020788);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_100014E34(a4 + 32, v8, v10 + 32);
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000BE20(void *a1)
{
  v1 = [a1 localizedFocusFilterDescription];
  if (v1)
  {
    v2 = v1;
    sub_10001DD14();
  }

  return sub_10000C8B4();
}

uint64_t sub_10000BE80(void *a1)
{
  v2 = [a1 footerButtons];

  if (!v2)
  {
    return 0;
  }

  sub_100006710(0, &qword_100032758, WFFocusConfigurationButton_ptr);
  v3 = sub_10001DDD4();

  return v3;
}

unint64_t sub_10000BF00()
{
  result = qword_100032730;
  if (!qword_100032730)
  {
    sub_100005B4C(&qword_100032728, &qword_100020700);
    sub_10000BF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032730);
  }

  return result;
}

unint64_t sub_10000BF84()
{
  result = qword_100032738;
  if (!qword_100032738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032738);
  }

  return result;
}

uint64_t sub_10000BFE0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100006710(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000C030()
{
  sub_10000B790(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  sub_10000B7A0(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10000C0B4()
{
  sub_10000B790(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  sub_10000B7A0(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_10000C124(uint64_t a1)
{
  sub_100005A2C(&qword_1000326E0, &qword_1000206E0);
  sub_100006C04();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_10000C194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000C8E0(a1, a2, a3, a4);
  sub_100006C04();
  v5 = sub_10000C8B4();
  v6(v5);
  return v4;
}

uint64_t sub_10000C1E0(void *a1)
{
  v2 = [a1 systemName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10001DD14();

  return v3;
}

uint64_t sub_10000C250(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10000C270(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10000C2B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000C310(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10000C324(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10000C364(uint64_t result, int a2, int a3)
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

unint64_t sub_10000C3C4()
{
  result = qword_1000328A0;
  if (!qword_1000328A0)
  {
    sub_100005B4C(&qword_100032650, &qword_100020668);
    sub_100006B8C(&qword_1000328A8, &qword_100032648, &qword_100020660, &protocol conformance descriptor for SubscriptionView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000328A0);
  }

  return result;
}

unint64_t sub_10000C49C()
{
  result = qword_1000328B0;
  if (!qword_1000328B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000328B0);
  }

  return result;
}

void sub_10000C4F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_10001E094(v3);
  if (v3)
  {
    v4 = a2 + 40;
    do
    {

      sub_10001DD54();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10000C5B4()
{
  if (*(v0 + 24))
  {
  }

  sub_10000C8A8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10000C608(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_10000C8E0(a1, a2, a3, a4);
  sub_100006C04();
  v5 = sub_10000C8B4();
  v6(v5);
  return v4;
}

uint64_t sub_10000C654(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10000C668()
{
  result = qword_1000328E8;
  if (!qword_1000328E8)
  {
    sub_100005B4C(&qword_1000328D8, &qword_1000209E0);
    sub_10000C6F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000328E8);
  }

  return result;
}

unint64_t sub_10000C6F4()
{
  result = qword_1000328F0;
  if (!qword_1000328F0)
  {
    sub_100005B4C(&qword_1000328D0, &qword_1000209D8);
    sub_10000C7AC();
    sub_100006B8C(&qword_100032908, &unk_100032910, &unk_1000209F0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000328F0);
  }

  return result;
}

unint64_t sub_10000C7AC()
{
  result = qword_1000328F8;
  if (!qword_1000328F8)
  {
    sub_100005B4C(&qword_1000328C8, &qword_1000209D0);
    sub_100006B8C(&qword_100032900, &qword_1000328C0, &qword_1000209C8, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000328F8);
  }

  return result;
}

void *sub_10000C88C(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x48uLL);
}

void *sub_10000C8C0(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, v1, 0x41uLL);
}

uint64_t sub_10000C8E0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100005A2C(a3, a4);
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_10001DD44();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_10001DD44();
    }

LABEL_9:
    __break(1u);
    return sub_10001DD44();
  }

  __break(1u);
  return result;
}

uint64_t *NSBundle._current.unsafeMutableAddressor()
{
  if (qword_100032078 != -1)
  {
    sub_10000CB10(&qword_100032078);
  }

  return &static NSBundle._current;
}

id sub_10000CA38()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle._current = result;
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_100032078 != -1)
  {
    sub_10000CB10(&qword_100032078);
  }

  v1 = static NSBundle._current;

  return v1;
}

uint64_t sub_10000CB10(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_10000CB34(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_10001DFF4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_10000CB58(void *a1)
{
  v2 = v1;
  objc_opt_self();
  sub_100016A78();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return sub_10001628C(a1, &selRef_localizedDescription);
  }

  v5 = v4;
  v6 = v2;
  v7 = [a1 key];
  if (!v7)
  {
    sub_10001DD14();
    v7 = sub_10001DD04();
  }

  v8 = [v5 parameterMetadataForIdentifier:v7];

  if (!v8)
  {

    return sub_10001628C(a1, &selRef_localizedDescription);
  }

  v9 = [v8 parameterDescription];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 wf_localizedString];

    v12 = sub_10001DD14();
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {

      return 0;
    }
  }

  else
  {

    return 0;
  }

  return v12;
}

void sub_10000CCC8(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = sub_10000CB34(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = sub_10001DF44();
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

uint64_t sub_10000CDBC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10001DFF4())
  {
    if (a2 >> 62)
    {
      result = sub_10001DFF4();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_100006710(0, &qword_100032B00, WFParameter_ptr);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = sub_10001DF44();
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = sub_10001DF44();
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_10001DED4();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000CF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100015658(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void *sub_10000CFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100015658(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_10000D02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100015658(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000D07C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000F8B0();
  *a1 = result & 1;
  return result;
}

Swift::Int sub_10000D10C(unsigned __int8 a1)
{
  sub_10001E084();
  sub_10001E094(a1);
  return sub_10001E0A4();
}

Swift::Int sub_10000D170(uint64_t a1)
{
  v2 = *v1;
  sub_10001E084();
  sub_10001E094(v2);
  return sub_10001E0A4();
}

uint64_t sub_10000D1C4()
{
  sub_10001696C();
  v1[7] = v2;
  v1[8] = v0;
  sub_10001DE34();
  v1[9] = sub_100016B90();
  sub_100016A84();
  v4 = sub_10001DE14();
  v1[10] = v4;
  v1[11] = v3;

  return _swift_task_switch(sub_10000D24C, v4, v3);
}

uint64_t sub_10000D24C()
{
  sub_100016984();
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationStateChange;
  v0[12] = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationStateChange;
  sub_100005A2C(&qword_100032AE8, &unk_100020EB0);
  swift_allocObject();
  *(v1 + v2) = sub_10001D6D4();
  v3 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurableParametersChange;
  v0[13] = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurableParametersChange;
  sub_100005A2C(&qword_100032AF0, &qword_100020AF0);
  swift_allocObject();
  *(v1 + v3) = sub_10001D6D4();
  v4 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationButtonTapped;
  v0[14] = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationButtonTapped;
  sub_100005A2C(&qword_100032AF8, &qword_100020AF8);
  swift_allocObject();
  *(v1 + v4) = sub_10001D6D4();
  v0[15] = type metadata accessor for FocusConfigurationActionViewModel(0);
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_10000D3A0;

  return sub_10000DA24();
}

uint64_t sub_10000D3A0()
{
  sub_100016984();
  v3 = v2;
  sub_100016A50();
  v5 = v4;
  sub_100016930();
  *v6 = v5;
  v7 = *v1;
  sub_100016960();
  *v8 = v7;
  v5[17] = v3;
  v5[18] = v0;

  if (v0)
  {
    v9 = v5[10];
    v10 = v5[11];

    return _swift_task_switch(sub_10000D948, v9, v10);
  }

  else
  {
    v11 = swift_task_alloc();
    v5[19] = v11;
    *v11 = v7;
    v11[1] = sub_10000D508;

    return sub_10000DE50();
  }
}

uint64_t sub_10000D508()
{
  sub_10001696C();
  v1 = *v0;
  sub_100016930();
  *v3 = v2;
  v4 = *v0;
  sub_100016960();
  *v5 = v4;
  *(v7 + 160) = v6;

  v8 = *(v1 + 88);
  v9 = *(v1 + 80);

  return _swift_task_switch(sub_10000D620, v9, v8);
}

void sub_10000D620()
{
  v4 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 64);
  v7 = *(v0 + 56);

  *(v6 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request) = v7;
  *(v6 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action) = v5;
  *(v6 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_options) = v4;
  v8 = v7;
  v9 = [v5 visibleParametersWithProcessing:0];
  sub_100006710(0, &qword_100032B00, WFParameter_ptr);
  v10 = sub_10001DDD4();

  v31 = _swiftEmptyArrayStorage;
  sub_10000CB34(v10);
  sub_100016AC0();
  while (v7 != v1)
  {
    if (v2)
    {
      v11 = sub_10001DF44();
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_25;
      }

      v11 = *(v10 + 8 * v1 + 32);
    }

    v12 = v11;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    if (sub_10000F2B4(*(v0 + 56)))
    {
      sub_10001DF64();
      sub_10001DF84();
      sub_100016A6C();
      sub_10001DF94();
      sub_10001DF74();
    }

    else
    {
    }

    ++v1;
  }

  v13 = *(v0 + 56);
  v14 = *(v0 + 64);

  *(v14 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_configurableParameter) = _swiftEmptyArrayStorage;
  v15 = [v13 showsEnablementButton];
  v16 = 1;
  if (v15)
  {
    v16 = [*(v0 + 56) isEnabled];
  }

  v17 = *(v0 + 136);
  v18 = *(v0 + 120);
  v19 = *(v0 + 64);
  *(v19 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled) = v16;
  swift_beginAccess();
  *(v0 + 168) = 1;
  sub_10001D6F4();
  swift_endAccess();
  *(v0 + 40) = v19;
  *(v0 + 48) = v18;
  v20 = objc_msgSendSuper2((v0 + 40), "init");
  [v17 addEventObserver:v20];
  v21 = [v17 parameters];
  v22 = sub_10001DDD4();

  v23 = sub_10000CB34(v22);
  if (v23)
  {
    v24 = v23;
    if (v23 < 1)
    {
      goto LABEL_26;
    }

    for (i = 0; i != v24; ++i)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v26 = sub_10001DF44();
      }

      else
      {
        v26 = *(v22 + 8 * i + 32);
      }

      v27 = v26;
      [v26 addEventObserver:{v20, v31}];
    }
  }

  v28 = *(v0 + 136);

  v29 = sub_100016940();

  v30(v29);
}

uint64_t sub_10000D948()
{
  sub_100016AA8();
  v1 = *(v0 + 56);

  swift_deallocPartialClassInstance();
  sub_1000169A0();

  return v2();
}

uint64_t sub_10000DA24()
{
  sub_10001696C();
  v1[2] = v2;
  v1[3] = v0;
  sub_10001DE34();
  v1[4] = sub_100016B90();
  sub_100016A84();
  v4 = sub_10001DE14();
  v1[5] = v4;
  v1[6] = v3;

  return _swift_task_switch(sub_10000DAAC, v4, v3);
}

uint64_t sub_10000DAAC()
{
  sub_100016AA8();
  v1 = [*(v0 + 16) mode];
  if (v1 == 1)
  {
    v10 = swift_task_alloc();
    *(v0 + 56) = v10;
    *v10 = v0;
    v10[1] = sub_10000DC80;
    v11 = *(v0 + 16);

    return sub_100014364(v11);
  }

  else
  {
    if (v1)
    {
    }

    else
    {
      v2 = *(v0 + 16);

      v3 = [v2 actionIdentifier];
      if (v3)
      {
        v4 = v3;
        v5 = [*(v0 + 16) action];
        if (v5)
        {
          v6 = v5;
          v7 = sub_100012F58(v4, v5);

          sub_100016978();

          return v8(v7);
        }
      }
    }

    sub_100016238();
    sub_1000169C0();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    sub_1000169A0();

    return v13();
  }
}

uint64_t sub_10000DC80()
{
  sub_100016984();
  v3 = v2;
  sub_100016A50();
  v5 = v4;
  sub_100016930();
  *v6 = v5;
  v7 = *v1;
  sub_100016960();
  *v8 = v7;
  v5[8] = v0;

  if (v0)
  {
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_10000DDF4;
  }

  else
  {
    v5[9] = v3;
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_10000DD94;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_10000DD94()
{
  sub_10001696C();

  sub_100016978();

  return v0();
}

uint64_t sub_10000DDF4()
{
  sub_10001696C();

  sub_1000169A0();

  return v0();
}

uint64_t sub_10000DE50()
{
  sub_10001696C();
  v0[20] = v1;
  sub_10001DE34();
  v0[21] = sub_100016B90();
  sub_100016A84();
  v3 = sub_10001DE14();
  v0[22] = v3;
  v0[23] = v2;

  return _swift_task_switch(sub_10000DED8, v3, v2);
}

uint64_t sub_10000DED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100016B0C();
  v92 = (v14 + 80);
  v19 = [*(v14 + 160) parameters];
  sub_100006710(0, &qword_100032B00, WFParameter_ptr);
  sub_100016AF4();
  v20 = sub_10001DDD4();

  v93 = _swiftEmptyArrayStorage;
  sub_10000CB34(v20);
  sub_100016AC0();
  while (v15 != v16)
  {
    if (v17)
    {
      v21 = sub_10001DF44();
    }

    else
    {
      if (v16 >= *(v18 + 16))
      {
        goto LABEL_61;
      }

      v21 = *(v20 + 8 * v16 + 32);
    }

    v22 = v21;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return _swift_continuation_await(v21);
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_10001DF64();
      sub_10001DF84();
      sub_100016A6C();
      sub_10001DF94();
      v21 = sub_10001DF74();
    }

    else
    {
    }

    ++v16;
  }

  *(v14 + 192) = _swiftEmptyArrayStorage;
  *(v14 + 200) = sub_100005A2C(&qword_100032B08, &unk_100020B10);
  v23 = sub_10001DCF4();
  v21 = sub_10000CB34(_swiftEmptyArrayStorage);
  *(v14 + 208) = v21;
  if (!v21)
  {
LABEL_51:

    sub_100016940();
    sub_100016A1C();

    return v81(v79, v80, v81, v82, v83, v84, v85, v86, a9, v92, v93, a12, a13, a14);
  }

  if (v21 < 1)
  {
    goto LABEL_64;
  }

  v24 = 0;
  while (1)
  {
    *(v14 + 224) = v24;
    *(v14 + 232) = v23;
    *(v14 + 216) = v23;
    v25 = *(v14 + 192);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v26 = sub_10001DF44();
    }

    else
    {
      v26 = *(v25 + 8 * v24 + 32);
    }

    v27 = v26;
    *(v14 + 240) = v26;
    v28 = [v26 key];
    v29 = sub_10001DD14();
    v31 = v30;

    *(v14 + 248) = v29;
    *(v14 + 256) = v31;
    v32 = objc_opt_self();
    v33 = sub_100016BA8(v32);
    v34 = *(v14 + 160);
    if (!v33)
    {
      v41 = v27;
      v42 = v34;
      goto LABEL_25;
    }

    v35 = v33;
    *(v14 + 144) = &OBJC_PROTOCOL___WFDynamicEnumerationDataSource;
    v36 = swift_dynamicCastObjCProtocolConditional();
    v37 = v27;
    v38 = *(v14 + 160);
    if (!v36)
    {
      v43 = v38;
      goto LABEL_25;
    }

    v39 = v37;
    v40 = v38;
    if ([v35 wf_supportsSearch] & 1) == 0 && (objc_msgSend(v36, "respondsToSelector:", "loadPossibleStatesForEnumeration:searchTerm:completionHandler:"))
    {
      break;
    }

LABEL_25:
    v44 = objc_opt_self();
    v45 = sub_100016BA8(v44);
    if (!v45 || (v46 = sub_100016170(v45)) == 0)
    {
      v49 = *(v14 + 160);

      goto LABEL_46;
    }

    if (v46 >> 62)
    {
      v47 = sub_10001DFF4();
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 <= 10)
    {
      v50 = objc_allocWithZone(INObjectCollection);
      sub_100005A2C(&qword_100032B10, &qword_1000201E8);
      isa = sub_10001DDC4().super.isa;

      v52 = [v50 initWithItems:isa];

      if (v52)
      {
        a9 = v52;
        swift_isUniquelyReferenced_nonNull_native();
        *v92 = v23;
        v53 = sub_100016A6C();
        sub_100015658(v53, v54);
        sub_100016990();
        if (v56)
        {
          goto LABEL_62;
        }

        v57 = v21;
        v58 = v55;
        sub_100005A2C(&qword_100032B18, &qword_100020B20);
        v59 = sub_100016A5C();
        if (sub_10001DFB4(v59, v60))
        {
          v61 = sub_100016A6C();
          v63 = sub_100015658(v61, v62);
          if ((v58 & 1) != (v64 & 1))
          {
            sub_100016A1C();

            return sub_10001E034();
          }

          v57 = v63;
        }

        v23 = *v92;
        if (v58)
        {
          v65 = *(v14 + 160);
          v66 = v23[7];
          v49 = *(v66 + 8 * v57);
          *(v66 + 8 * v57) = a9;
        }

        else
        {
          sub_1000169CC();
          *v75 = v29;
          v75[1] = v31;
          *(v23[7] + 8 * v57) = a9;
          v76 = v23[2];
          v56 = __OFADD__(v76, 1);
          v77 = v76 + 1;
          if (v56)
          {
            goto LABEL_63;
          }

          v65 = *(v14 + 160);
          v23[2] = v77;
          v49 = v27;
        }
      }

      else
      {
        v67 = sub_100016A6C();
        v69 = sub_100015658(v67, v68);
        v71 = v70;

        if (v71)
        {
          v72 = *(v14 + 160);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v93 = v23;
          v74 = v23[3];
          sub_100005A2C(&qword_100032B18, &qword_100020B20);
          sub_10001DFB4(isUniquelyReferenced_nonNull_native, v74);

          sub_10001DFD4();
          goto LABEL_47;
        }

        v49 = *(v14 + 160);
      }

LABEL_46:
      goto LABEL_47;
    }

    v48 = *(v14 + 160);

LABEL_47:
    v24 = sub_1000169AC();
    if (v78)
    {
      goto LABEL_51;
    }
  }

  sub_100016AB4();
  *(v14 + 16) = v88;
  v89 = sub_1000168FC();
  *(v14 + 136) = sub_100005A2C(&qword_100032B80, &qword_100020B28);
  sub_1000168E0();
  *(v14 + 88) = 1107296256;
  *(v14 + 96) = sub_1000168DC;
  *(v14 + 104) = &unk_10002D8C0;
  *(v14 + 112) = v89;
  [v36 loadPossibleStatesForEnumeration:v35 searchTerm:0 completionHandler:?];
  sub_100016A1C();

  return _swift_continuation_await(v21);
}

uint64_t sub_10000E528()
{
  sub_10001696C();
  sub_100016A50();
  v2 = v1;
  sub_100016930();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  v2[33] = v5;
  if (v5)
  {

    v6 = v2[22];
    v7 = v2[23];
    v8 = sub_10000ED84;
  }

  else
  {
    v6 = v2[22];
    v7 = v2[23];
    v8 = sub_10000E630;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10000E630()
{
  v1 = v0[19];
  if (!v1)
  {
    v20 = v0[30];
    v21 = v0[20];

LABEL_13:
    v24 = v0[29];
    v25 = v0[27];
LABEL_20:
    v89 = v0 + 10;
    while (1)
    {
      v36 = sub_1000169AC();
      if (v37)
      {

        sub_100016940();
        sub_1000169F4();

        __asm { BRAA            X2, X16 }
      }

      v0[28] = v36;
      v0[29] = v24;
      v0[27] = v25;
      v38 = v0[24];
      if ((v38 & 0xC000000000000001) != 0)
      {
        v39 = sub_10001DF44();
      }

      else
      {
        v39 = *(v38 + 8 * v36 + 32);
      }

      v40 = v39;
      v0[30] = v39;
      v41 = [v39 key];
      v42 = sub_10001DD14();
      v44 = v43;

      v0[31] = v42;
      v0[32] = v44;
      objc_opt_self();
      v45 = swift_dynamicCastObjCClass();
      v46 = v0[20];
      if (v45)
      {
        v47 = v45;
        v0[18] = &OBJC_PROTOCOL___WFDynamicEnumerationDataSource;
        v48 = swift_dynamicCastObjCProtocolConditional();
        v49 = v40;
        v50 = v0[20];
        if (v48)
        {
          v51 = v49;
          v52 = v50;
          if ([v47 wf_supportsSearch] & 1) == 0 && (objc_msgSend(v48, "respondsToSelector:", "loadPossibleStatesForEnumeration:searchTerm:completionHandler:"))
          {
            sub_100016AB4();
            v0[2] = v86;
            v87 = sub_1000168FC();
            v0[17] = sub_100005A2C(&qword_100032B80, &qword_100020B28);
            sub_1000168E0();
            v0[11] = 1107296256;
            v0[12] = sub_1000168DC;
            v0[13] = &unk_10002D8C0;
            v0[14] = v87;
            [v48 loadPossibleStatesForEnumeration:v47 searchTerm:0 completionHandler:?];
            sub_1000169F4();

            return _swift_continuation_await(v9);
          }
        }

        else
        {
          v55 = v50;
        }
      }

      else
      {
        v53 = v40;
        v54 = v46;
      }

      objc_opt_self();
      v56 = swift_dynamicCastObjCClass();
      if (v56 && (v57 = sub_100016170(v56)) != 0)
      {
        if (v57 >> 62)
        {
          v58 = sub_10001DFF4();
        }

        else
        {
          v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v58 <= 10)
        {
          v61 = objc_allocWithZone(INObjectCollection);
          sub_100005A2C(&qword_100032B10, &qword_1000201E8);
          isa = sub_10001DDC4().super.isa;

          v63 = [v61 initWithItems:isa];

          if (v63)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v89 = v25;
            v69 = v25;
            sub_100015658(v42, v44);
            sub_100016990();
            if (v11)
            {
              goto LABEL_61;
            }

            v71 = v9;
            v72 = v70;
            sub_100005A2C(&qword_100032B18, &qword_100020B20);
            v9 = sub_10001DFB4(isUniquelyReferenced_nonNull_native, v69);
            if (v9)
            {
              v9 = sub_100015658(v42, v44);
              if ((v72 & 1) != (v73 & 1))
              {
                goto LABEL_8;
              }

              v71 = v9;
            }

            v74 = v72;
            v25 = *v89;
            if (v74)
            {
              v75 = v0[20];
              v76 = v25[7];
              v77 = *(v76 + 8 * v71);
              *(v76 + 8 * v71) = v63;
            }

            else
            {
              v25[(v71 >> 6) + 8] |= 1 << v71;
              v81 = (v25[6] + 16 * v71);
              *v81 = v42;
              v81[1] = v44;
              *(v25[7] + 8 * v71) = v63;
              v82 = v25[2];
              v11 = __OFADD__(v82, 1);
              v83 = v82 + 1;
              if (v11)
              {
                goto LABEL_63;
              }

              v75 = v0[20];
              v25[2] = v83;
              v77 = v40;
            }

            v24 = v25;
          }

          else
          {
            v64 = sub_100015658(v42, v44);
            v66 = v65;

            if (v66)
            {
              v78 = v0[20];
              v79 = swift_isUniquelyReferenced_nonNull_native();
              v90 = v25;
              v80 = v25[3];
              sub_100005A2C(&qword_100032B18, &qword_100020B20);
              sub_10001DFB4(v79, v80);
              v25 = v90;

              sub_10001DFD4();
              v24 = v90;
            }

            else
            {
              v67 = v0[20];
            }
          }
        }

        else
        {
          v59 = v0[20];
        }
      }

      else
      {
        v60 = v0[20];
      }
    }
  }

  v2 = [v1 allItems];
  sub_100005A2C(&qword_100032B10, &qword_1000201E8);
  v3 = sub_10001DDD4();

  if (v3 >> 62)
  {
    v4 = sub_10001DFF4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v0[32];
  if (v4 > 9)
  {
    v22 = v0[30];
    v23 = v0[20];

    goto LABEL_13;
  }

  v6 = v0[31];
  v7 = v0[27];
  v8 = v1;
  swift_isUniquelyReferenced_nonNull_native();
  v0[19] = v7;
  sub_100015658(v6, v5);
  sub_100016990();
  if (v11)
  {
    __break(1u);
LABEL_61:
    __break(1u);
  }

  else
  {
    v12 = v9;
    v13 = v10;
    sub_100005A2C(&qword_100032B18, &qword_100020B20);
    v14 = sub_100016A5C();
    if (sub_10001DFB4(v14, v15))
    {
      v16 = sub_100015658(v0[31], v0[32]);
      if ((v13 & 1) != (v17 & 1))
      {
LABEL_8:
        sub_1000169F4();

        return sub_10001E034();
      }

      v12 = v16;
    }

    v25 = v0[19];
    v9 = v0[32];
    if (v13)
    {
      v26 = v0[30];
      v27 = v0[20];
      v28 = v25[7];
      v29 = *(v28 + 8 * v12);
      *(v28 + 8 * v12) = v8;

      v30 = v0[30];
LABEL_19:

      v24 = v25;
      goto LABEL_20;
    }

    v31 = v0[31];
    v25[(v12 >> 6) + 8] |= 1 << v12;
    v32 = (v25[6] + 16 * v12);
    *v32 = v31;
    v32[1] = v9;
    *(v25[7] + 8 * v12) = v8;
    v33 = v25[2];
    v11 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v11)
    {
      v35 = v0[20];
      v25[2] = v34;

      v30 = v0[30];
      v29 = v30;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return _swift_continuation_await(v9);
}

uint64_t sub_10000ED84()
{
  v64 = v0 + 10;
  v1 = v0[30];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[29];
  for (i = v0[27]; ; i = v3)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = sub_1000169AC();
          if (v6)
          {

            sub_100016940();
            sub_1000169F4();

            __asm { BRAA            X2, X16 }
          }

          v0[28] = v5;
          v0[29] = v3;
          v0[27] = i;
          v7 = v0[24];
          v8 = (v7 & 0xC000000000000001) != 0 ? sub_10001DF44() : *(v7 + 8 * v5 + 32);
          v9 = v8;
          v0[30] = v8;
          v10 = [v8 key];
          v11 = sub_10001DD14();
          v13 = v12;

          v0[31] = v11;
          v0[32] = v13;
          v14 = objc_opt_self();
          v15 = sub_100016BA8(v14);
          v16 = v0[20];
          if (v15)
          {
            v17 = v15;
            v0[18] = &OBJC_PROTOCOL___WFDynamicEnumerationDataSource;
            v18 = swift_dynamicCastObjCProtocolConditional();
            v19 = v9;
            v20 = v0[20];
            if (v18)
            {
              v21 = v19;
              v22 = v20;
              if ([v17 wf_supportsSearch] & 1) == 0 && (objc_msgSend(v18, "respondsToSelector:", "loadPossibleStatesForEnumeration:searchTerm:completionHandler:"))
              {
                sub_100016AB4();
                v0[2] = v59;
                v60 = sub_1000168FC();
                v0[17] = sub_100005A2C(&qword_100032B80, &qword_100020B28);
                sub_1000168E0();
                v0[11] = 1107296256;
                v0[12] = sub_1000168DC;
                v0[13] = &unk_10002D8C0;
                v0[14] = v60;
                [v18 loadPossibleStatesForEnumeration:v17 searchTerm:0 completionHandler:?];
                sub_1000169F4();

                return _swift_continuation_await(v39);
              }
            }

            else
            {
              v25 = v20;
            }
          }

          else
          {
            v23 = v9;
            v24 = v16;
          }

          v26 = objc_opt_self();
          v27 = sub_100016BA8(v26);
          if (v27)
          {
            v28 = sub_100016170(v27);
            if (v28)
            {
              break;
            }
          }

          v31 = v0[20];
        }

        v29 = v28 >> 62 ? sub_10001DFF4() : *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29 <= 10)
        {
          break;
        }

        v30 = v0[20];
      }

      v32 = objc_allocWithZone(INObjectCollection);
      sub_100005A2C(&qword_100032B10, &qword_1000201E8);
      sub_100016A78();
      isa = sub_10001DDC4().super.isa;

      v34 = [v32 initWithItems:isa];

      if (v34)
      {
        break;
      }

      v35 = sub_100015658(v11, v13);
      v37 = v36;

      if (v37)
      {
        v51 = v0[20];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *(i + 24);
        sub_100005A2C(&qword_100032B18, &qword_100020B20);
        sub_10001DFB4(isUniquelyReferenced_nonNull_native, v53);
        v3 = i;

        sub_10001DFD4();
      }

      else
      {
        v38 = v0[20];
      }
    }

    swift_isUniquelyReferenced_nonNull_native();
    *v64 = i;
    sub_100015658(v11, v13);
    sub_100016990();
    if (v41)
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return _swift_continuation_await(v39);
    }

    v42 = v39;
    v43 = v40;
    sub_100005A2C(&qword_100032B18, &qword_100020B20);
    v44 = sub_100016A5C();
    if (sub_10001DFB4(v44, v45))
    {
      break;
    }

LABEL_27:
    v3 = *v64;
    if (v43)
    {
      v48 = v0[20];
      v49 = *(v3 + 56);
      v50 = *(v49 + 8 * v42);
      *(v49 + 8 * v42) = v34;
    }

    else
    {
      sub_1000169CC();
      *v54 = v11;
      v54[1] = v13;
      *(*(v3 + 56) + 8 * v42) = v34;
      v55 = *(v3 + 16);
      v41 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v41)
      {
        goto LABEL_44;
      }

      v48 = v0[20];
      *(v3 + 16) = v56;
      v50 = v9;
    }
  }

  v46 = sub_100015658(v11, v13);
  if ((v43 & 1) == (v47 & 1))
  {
    v42 = v46;
    goto LABEL_27;
  }

  sub_1000169F4();

  return sub_10001E034();
}

uint64_t sub_10000F2B4(void *a1)
{
  v2 = [a1 mode];
  v3 = sub_100014AD0();
  v4 = (v2 != 1) & v3;
  if (v2 == 1 && (v3 & 1) != 0)
  {
    v5 = [v1 key];
    v6 = sub_10001DD14();
    v8 = v7;

    if (v6 == 0x6F6974617265706FLL && v8 == 0xE90000000000006ELL)
    {

      v4 = 0;
    }

    else
    {
      v10 = sub_10001E024();

      v4 = v10 ^ 1;
    }
  }

  return v4 & 1;
}

uint64_t sub_10000F398(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001D704();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_10001D714();
  result = sub_10000F8B0();
  if (v4 != (result & 1))
  {
    return sub_100011FDC();
  }

  return result;
}

uint64_t sub_10000F46C()
{
  v1 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action;
  [*&v0[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action] removeEventObserver:v0];
  v2 = [*&v0[v1] parameters];
  sub_100006710(0, &qword_100032B00, WFParameter_ptr);
  v3 = sub_10001DDD4();

  result = sub_10000CB34(v3);
  if (!result)
  {
LABEL_8:

    v9.receiver = v0;
    v9.super_class = type metadata accessor for FocusConfigurationActionViewModel(0);
    return objc_msgSendSuper2(&v9, "dealloc");
  }

  v5 = result;
  if (result >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_10001DF44();
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
      }

      v8 = v7;
      [v7 removeEventObserver:v0];
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FocusConfigurationActionViewModel(uint64_t a1)
{
  result = qword_100032AD0;
  if (!qword_100032AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000F6EC()
{
  sub_10001DE34();
  v1 = v0;
  v2 = sub_10001DE24();
  sub_100016A9C();
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = &protocol witness table for MainActor;
  v3[4] = v1;
  v4 = v1;
  v5 = sub_10001DE24();
  sub_100016A9C();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;
  sub_10001DC34();
  return v8;
}

id sub_10000F7D8@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  result = [*(a1 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request) showsEnablementButton];
  if (result)
  {
    v5 = *(a1 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
  }

  else
  {
    v5 = 1;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_10000F878(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled) != (result & 1))
  {
    return sub_100011FDC();
  }

  return result;
}

uint64_t sub_10000F898(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
  *(v1 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled) = a1;
  return sub_10000F878(v2);
}

uint64_t sub_10000F8B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001D704();

  return v1;
}

uint64_t sub_10000F924()
{

  sub_10001D6C4();
}

uint64_t sub_10000F988()
{
  sub_100016984();
  v1[47] = v0;
  v2 = sub_10001D694();
  v1[48] = v2;
  v1[49] = *(v2 - 8);
  v1[50] = swift_task_alloc();
  sub_10001DE34();
  v1[51] = sub_100016B90();
  sub_100016A84();
  v3 = sub_10001DE14();
  v1[52] = v3;
  v1[53] = v4;

  return _swift_task_switch(sub_10000FAA0, v3, v4);
}

uint64_t sub_10000FAA0()
{
  sub_100016984();
  v0[54] = *(v0[47] + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action);
  sub_100006710(0, &qword_100032C20, OS_dispatch_queue_ptr);
  v1 = sub_10001DEB4();
  v0[55] = v1;
  v2 = swift_task_alloc();
  v0[56] = v2;
  *v2 = v0;
  v2[1] = sub_10000FBA8;

  return WFAction.processParametersWithoutAskingForValues(withInput:workQueue:)(0, v1);
}

uint64_t sub_10000FBA8()
{
  sub_100016984();
  v3 = v2;
  v4 = *v1;
  sub_100016930();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 456) = v6;
  *(v4 + 464) = v0;

  if (v0)
  {
    v7 = *(v4 + 416);
    v8 = *(v4 + 424);
    v9 = sub_100011224;
  }

  else
  {

    v7 = *(v4 + 416);
    v8 = *(v4 + 424);
    v9 = sub_10000FCF4;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_10000FCF4()
{
  v1 = *(*(v0 + 376) + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request);
  v2 = [v1 mode];
  if (v2 == 1)
  {
    v8 = [v1 contextualAction];
    if (!v8)
    {
      __break(1u);
      return _swift_continuation_await(v8);
    }

    v9 = v8;
    v10 = *(v0 + 456);

    objc_opt_self();
    sub_100016A78();
    sub_1000169C0();
    v11 = [swift_dynamicCastObjCClassUnconditional() setting];
    v12 = sub_10000D02C(0x656C797473, 0xE500000000000000, v10);
    if (v12)
    {
      *(v0 + 336) = v12;
      sub_100005A2C(&qword_100032C50, &qword_100020BD0);
      if (swift_dynamicCast())
      {

        if (*(v0 + 304) != 1802658148 || *(v0 + 312) != 0xE400000000000000)
        {
          v14 = sub_10001E024();

          v15 = ~v14 & 1;
LABEL_25:
          v22 = *(v0 + 376);
          v23 = [objc_allocWithZone(WFToggleSettingContextualAction) initWithSetting:v11 operation:v15];
          [objc_allocWithZone(WFFocusConfigurationUIState) initWithEnabled:*(v22 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled) uiValidity:sub_10000F8B0() & 1 contextualAction:v23];

          goto LABEL_26;
        }

LABEL_24:
        v15 = 0;
        goto LABEL_25;
      }
    }

    v20 = sub_10000D02C(0x65756C61566E4FLL, 0xE700000000000000, *(v0 + 456));
    if (v20 && (*(v0 + 328) = v20, sub_100005A2C(&qword_100032C50, &qword_100020BD0), (swift_dynamicCast() & 1) != 0))
    {

      if (*(v0 + 529))
      {
        goto LABEL_24;
      }
    }

    else
    {
      v21 = sub_10000D02C(0x6574617473, 0xE500000000000000, *(v0 + 456));

      if (v21)
      {
        *(v0 + 320) = v21;
        sub_100005A2C(&qword_100032C50, &qword_100020BD0);
        if (swift_dynamicCast())
        {
          if (*(v0 + 528))
          {
            goto LABEL_24;
          }
        }
      }
    }

    v15 = 1;
    goto LABEL_25;
  }

  if (!v2)
  {
    v3 = *(v0 + 432);
    objc_opt_self();
    sub_1000169C0();
    v4 = swift_dynamicCastObjCClassUnconditional();
    *(v0 + 472) = v4;
    v5 = v3;
    sub_100005A2C(&qword_100032C50, &qword_100020BD0);
    isa = sub_10001DCD4().super.isa;
    *(v0 + 480) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 344;
    *(v0 + 24) = sub_100010204;
    v7 = swift_continuation_init();
    *(v0 + 200) = sub_100005A2C(&qword_100032C58, &qword_100020BD8);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1000168DC;
    *(v0 + 168) = &unk_10002D938;
    *(v0 + 176) = v7;
    [v4 getLinkActionWithProcessedParameters:isa forFocusConfiguration:1 completionHandler:v0 + 144];
    v8 = (v0 + 16);

    return _swift_continuation_await(v8);
  }

  sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
  sub_10000F8B0();
  sub_100016A90();
  sub_100011984(v16, v17, v18, v19);
LABEL_26:

  sub_100016978();
  v24 = sub_100016A10();

  return v25(v24);
}

uint64_t sub_100010204()
{
  sub_100016984();
  v1 = *v0;
  sub_100016930();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  v1[61] = v4;
  if (v4)
  {
    v5 = v1[54];

    v6 = v1[52];
    v7 = v1[53];
    v8 = sub_1000112C4;
  }

  else
  {
    v6 = v1[52];
    v7 = v1[53];
    v8 = sub_10001034C;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_10001034C()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 432);
  v4 = *(v0 + 344);
  *(v0 + 496) = v4;
  v5 = v4;

  v6 = [v2 metadata];
  *(v0 + 352) = 0;
  LODWORD(v3) = [v6 wf_validateParametersForAction:v5 error:v0 + 352];
  v82 = v5;

  v7 = *(v0 + 352);
  if (!v3)
  {
    v22 = *(v0 + 432);
    v23 = v7;

    sub_10001D554();
    goto LABEL_19;
  }

  v8 = v7;
  if ((sub_1000119F8() & 1) == 0)
  {

LABEL_21:
    v25 = *(v0 + 432);
    v26 = [*(v0 + 472) connection];
    *(v0 + 504) = v26;

    if (v26)
    {
      sub_100005A2C(&qword_1000323C0, &qword_100020790);
      sub_100016A9C();
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000200A0;
      *(v27 + 32) = v82;
      sub_100006710(0, &qword_100032C68, LNAction_ptr);
      v28 = v82;
      isa = sub_10001DDC4().super.isa;
      *(v0 + 512) = isa;

      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 360;
      *(v0 + 88) = sub_100010D84;
      v30 = swift_continuation_init();
      *(v0 + 264) = sub_100005A2C(&qword_100032C70, &qword_100020BE8);
      *(v0 + 208) = _NSConcreteStackBlock;
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_100011900;
      *(v0 + 232) = &unk_10002D960;
      *(v0 + 240) = v30;
      [v26 fetchDisplayRepresentationForActions:isa completionHandler:v0 + 208];
      v24 = v0 + 80;

      return _swift_continuation_await(v24);
    }

    sub_100016238();
    sub_1000169C0();
    swift_allocError();
    sub_100016B00(v45, 2);
LABEL_19:
    v24 = swift_willThrow();
    goto LABEL_59;
  }

  v9 = *(v0 + 432);
  v10 = [*(v0 + 472) metadata];

  v11 = [v10 parameters];
  sub_100006710(0, &qword_100032BB8, LNActionParameterMetadata_ptr);
  v12 = sub_10001DDD4();

  v13 = sub_10000CB34(v12);
  for (i = 0; v13 != i; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_10001DF44();
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }

    sub_10001628C(v15, &selRef_name);
    if (!v17)
    {
      goto LABEL_15;
    }

    v18 = *(v0 + 472);
    v19 = sub_10001DD04();

    v20 = [v18 parameterForKey:v19];

    if (!v20)
    {
      goto LABEL_15;
    }

    if ([v20 isHidden])
    {

      continue;
    }

    objc_opt_self();
    sub_100016AF4();
    v21 = swift_dynamicCastObjCClass();

    if (v21)
    {
      sub_10001DF64();
      sub_10001DF84();
      sub_10001DF94();
      sub_10001DF74();
    }

    else
    {
LABEL_15:
    }
  }

  v31 = [v82 parameters];
  sub_100006710(0, &qword_100032BC0, LNProperty_ptr);
  v32 = sub_10001DDD4();

  v33 = sub_10000CB34(v32);
  if (v33)
  {
    v34 = v33;
    sub_1000153D8(0, v33 & ~(v33 >> 63), 0);
    if (v34 < 0)
    {
      goto LABEL_71;
    }

    v35 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = sub_10001DF44();
      }

      else
      {
        v36 = *(v32 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = [v37 identifier];
      v39 = sub_10001DD14();
      v41 = v40;

      v43 = _swiftEmptyArrayStorage[2];
      v42 = _swiftEmptyArrayStorage[3];
      if (v43 >= v42 >> 1)
      {
        sub_1000153D8((v42 > 1), v43 + 1, 1);
      }

      ++v35;
      _swiftEmptyArrayStorage[2] = v43 + 1;
      v44 = &_swiftEmptyArrayStorage[2 * v43];
      v44[4] = v39;
      v44[5] = v41;
    }

    while (v34 != v35);
  }

  v46 = [v82 parameters];
  v47 = sub_10001DDD4();

  sub_100011820(_swiftEmptyArrayStorage, v47);
  v48 = sub_100016A84();
  v49 = sub_10000CB34(v48);
  for (j = 0; ; ++j)
  {
    if (v49 == j)
    {

      goto LABEL_21;
    }

    if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
    {
      v51 = sub_10001DF44();
    }

    else
    {
      if (j >= _swiftEmptyArrayStorage[2])
      {
        goto LABEL_70;
      }

      v51 = _swiftEmptyArrayStorage[j + 4];
    }

    v52 = v51;
    if (__OFADD__(j, 1))
    {
      goto LABEL_69;
    }

    v53 = sub_10001628C(v51, &selRef_name);
    if (!v54)
    {
      goto LABEL_57;
    }

    if (!_swiftEmptyArrayStorage[2] || (v55 = sub_100015658(v53, v54), (v56 & 1) == 0))
    {

      goto LABEL_57;
    }

    v57 = *(_swiftEmptyArrayStorage[7] + 8 * v55);

    v58 = [v57 value];
    if (!v58)
    {
      break;
    }

    v59 = v58;
    v60 = [v52 valueType];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v61 = [v59 value];
      sub_10001DF04();
      swift_unknownObjectRelease();
      sub_100005A2C(&qword_100032C78, &qword_100020BF0);
      if ((swift_dynamicCast() & 1) == 0 || (v62 = *(*(v0 + 368) + 16), , !v62))
      {
        sub_100016238();
        sub_1000169C0();
        swift_allocError();
        sub_100016B00(v63, 1);
        swift_willThrow();

        goto LABEL_58;
      }

      v60 = v57;
    }

    else
    {
    }
  }

LABEL_57:
  sub_100016238();
  sub_1000169C0();
  swift_allocError();
  sub_100016B00(v64, 1);
  swift_willThrow();

LABEL_58:

LABEL_59:
  if (!WFLogCategoryFocusConfiguration)
  {
    __break(1u);
    return _swift_continuation_await(v24);
  }

  sub_10001D664();
  swift_errorRetain();
  v65 = sub_10001D684();
  v66 = sub_10001DE74();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = sub_100016B78();
    v68 = sub_100016B60();
    *v67 = 138412290;
    swift_errorRetain();
    v69 = _swift_stdlib_bridgeErrorToNSError();
    *(v67 + 4) = v69;
    *v68 = v69;
    _os_log_impl(&_mh_execute_header, v65, v66, "Focus Filter configuration fails the validation test: %@", v67, 0xCu);
    sub_1000165B8(v68, &qword_100032C60, &qword_100020BE0);
    sub_100016A38(v68);
    sub_100016A38(v67);
  }

  v70 = *(v0 + 488);
  v71 = *(v0 + 432);
  v73 = *(v0 + 392);
  v72 = *(v0 + 400);
  v74 = *(v0 + 384);

  (*(v73 + 8))(v72, v74);
  sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
  sub_10000F8B0();
  sub_100016A90();
  sub_100011984(v75, v76, v77, v78);

  if (!v70)
  {
  }

  sub_100016978();
  v79 = sub_100016A10();

  return v80(v79);
}

uint64_t sub_100010D84()
{
  sub_10001696C();
  sub_100016960();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[14];
  *(v1 + 520) = v4;
  v5 = v3[53];
  v6 = v3[52];
  if (v4)
  {
    v7 = sub_1000114D8;
  }

  else
  {
    v7 = sub_100010ED8;
  }

  return _swift_task_switch(v7, v6, v5);
}

void sub_100010ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100016B0C();
  v15 = *(v14 + 360);
  if (sub_10000CB34(v15))
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = sub_10001DF44();
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v16 = *(v15 + 32);
    }

    v17 = v16;
    v18 = *(v14 + 512);

    v19 = [v17 displayRepresentation];

    if (v19)
    {
      v20 = *(v14 + 496);
      v21 = *(v14 + 432);
      v22 = *(v14 + 376);

      sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
      v23 = *(v22 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_isEnabled);
      v24 = v19;
      LOBYTE(v22) = sub_10000F8B0();
      v25 = v20;
      sub_100011984(v23, v22 & 1, v20, v19);

LABEL_12:
      goto LABEL_13;
    }
  }

  else
  {
    v26 = *(v14 + 512);
  }

  v27 = *(v14 + 504);
  sub_100016238();
  sub_1000169C0();
  swift_allocError();
  sub_100016B00(v28, 2);
  swift_willThrow();

  if (!WFLogCategoryFocusConfiguration)
  {
    __break(1u);
    return;
  }

  v25 = *(v14 + 496);

  sub_10001D664();
  swift_errorRetain();
  v29 = sub_10001D684();
  v30 = sub_10001DE74();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = sub_100016B78();
    v32 = sub_100016B60();
    *v31 = 138412290;
    swift_errorRetain();
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Focus Filter configuration fails the validation test: %@", v31, 0xCu);
    sub_1000165B8(v32, &qword_100032C60, &qword_100020BE0);
    sub_100016A38(v32);
    sub_100016A38(v31);
  }

  v34 = *(v14 + 488);
  v35 = *(v14 + 432);
  v37 = *(v14 + 392);
  v36 = *(v14 + 400);
  v38 = *(v14 + 384);

  (*(v37 + 8))(v36, v38);
  sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
  sub_10000F8B0();
  sub_100016A90();
  sub_100011984(v39, v40, v41, v42);

  if (!v34)
  {
    goto LABEL_12;
  }

LABEL_13:

  sub_100016978();
  sub_100016A10();
  sub_100016A1C();

  v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100011224()
{
  sub_100016984();
  v1 = *(v0 + 440);

  sub_1000169A0();

  return v2();
}

uint64_t sub_1000112C4(uint64_t a1)
{
  v2 = v1[60];
  swift_willThrow();

  if (!WFLogCategoryFocusConfiguration)
  {
    __break(1u);
  }

  sub_10001D664();
  swift_errorRetain();
  v3 = sub_10001D684();
  v4 = sub_10001DE74();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_100016B78();
    v6 = sub_100016B60();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    sub_100016B40(&_mh_execute_header, v8, v9, "Focus Filter configuration fails the validation test: %@");
    sub_1000165B8(v6, &qword_100032C60, &qword_100020BE0);
    sub_100016A38(v6);
    sub_100016A38(v5);
  }

  v10 = v1[61];
  v11 = v1[54];

  v12 = sub_100016AD4();
  v13(v12);
  sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
  sub_10000F8B0();
  sub_100016A90();
  sub_100011984(v14, v15, v16, v17);

  if (!v10)
  {
  }

  sub_100016978();
  v19 = sub_100016A10();

  return v20(v19);
}

uint64_t sub_1000114D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100016B0C();
  v15 = v14[63];
  v16 = v14[64];
  swift_willThrow();

  if (!WFLogCategoryFocusConfiguration)
  {
    __break(1u);
  }

  v17 = v14[62];

  sub_10001D664();
  swift_errorRetain();
  v18 = sub_10001D684();
  v19 = sub_10001DE74();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = sub_100016B78();
    v21 = sub_100016B60();
    *v20 = 138412290;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v22;
    *v21 = v22;
    sub_100016B40(&_mh_execute_header, v23, v24, "Focus Filter configuration fails the validation test: %@");
    sub_1000165B8(v21, &qword_100032C60, &qword_100020BE0);
    sub_100016A38(v21);
    sub_100016A38(v20);
  }

  v25 = v14[61];
  v26 = v14[54];

  v27 = sub_100016AD4();
  v28(v27);
  sub_100006710(0, &unk_100032C40, WFFocusConfigurationUIState_ptr);
  sub_10000F8B0();
  sub_100016A90();
  sub_100011984(v29, v30, v31, v32);

  if (!v25)
  {
  }

  sub_100016978();
  sub_100016A10();
  sub_100016A1C();

  return v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000116E4(uint64_t a1, uint64_t a2)
{
  sub_100005A2C(&qword_100032B88, &qword_100020B30);
  sub_1000169C0();
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

void *sub_10001176C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005A2C(&qword_100032BF8, &qword_100020B80);
    v1 = sub_10001E014();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_100015A80(v2, 1, &v4);

  return v4;
}

void *sub_100011820(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = sub_10000CB34(a2);
  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    sub_100005A2C(&qword_100032C80, &qword_100020BF8);
    v6 = sub_10001E014();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  v8 = v6;

  sub_100015D70(a1, a2, 1, &v8);

  return v8;
}

uint64_t sub_100011900(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1000161F4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_1000116E4(v4, a3);
  }

  sub_100006710(0, &qword_100032C90, LNDisplayRepresentationFetchResult_ptr);
  v6 = sub_10001DDD4();
  return sub_10001174C(v4, v6);
}

id sub_100011984(char a1, char a2, void *a3, void *a4)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEnabled:a1 & 1 uiValidity:a2 & 1 action:a3 displayRepresentation:a4];

  return v6;
}

uint64_t sub_1000119F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request);
  if ([v1 mode])
  {
    return 0;
  }

  v3 = [v1 actionIdentifier];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 bundleIdentifier];
  sub_10001DD14();

  v6._countAndFlagsBits = 0x6C7070612E6D6F63;
  v6._object = 0xEA00000000002E65;
  LOBYTE(v5) = sub_10001DD94(v6);

  return v5 & 1;
}

void sub_100011AC4()
{
  v1 = v0;
  sub_10001D694();
  sub_100006C14();
  v49 = v3;
  v50 = v2;
  __chkstk_darwin(v2);
  sub_100016950();
  v51 = v5 - v4;
  v48 = *&v0[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action];
  v6 = [v48 visibleParametersWithProcessing:0];
  sub_100006710(0, &qword_100032B00, WFParameter_ptr);
  sub_100016AF4();
  v7 = sub_10001DDD4();

  v8 = sub_10000CB34(v7);
  v9 = 0;
  v10 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_request;
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = sub_10001DF44();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    if (sub_10000F2B4(*&v1[v10]))
    {
      sub_10001DF64();
      sub_10001DF84();
      sub_10001DF94();
      sub_10001DF74();
    }

    else
    {
    }

    ++v9;
  }

  v13 = OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_configurableParameter;
  v14 = *&v1[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_configurableParameter];

  v15 = sub_10000CDBC(_swiftEmptyArrayStorage, v14);

  if ((v15 & 1) == 0)
  {
    if (WFLogCategoryFocusConfiguration)
    {
      v17 = v51;
      sub_10001D664();

      v18 = v1;
      v19 = sub_10001D684();
      v20 = sub_10001DE84();

      if (os_log_type_enabled(v19, v20))
      {
        v45 = v20;
        v46 = v19;
        v47 = v13;
        v21 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44 = v21;
        *v21 = 136315394;
        v22 = sub_10000CB34(_swiftEmptyArrayStorage);
        if (v22)
        {
          v23 = v22;
          sub_1000153D8(0, v22 & ~(v22 >> 63), 0);
          if (v23 < 0)
          {
            goto LABEL_33;
          }

          v24 = 0;
          do
          {
            if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
            {
              v25 = sub_10001DF44();
            }

            else
            {
              v25 = _swiftEmptyArrayStorage[v24 + 4];
            }

            v26 = v25;
            v27 = [v26 key];
            v28 = sub_10001DD14();
            v30 = v29;

            v32 = _swiftEmptyArrayStorage[2];
            v31 = _swiftEmptyArrayStorage[3];
            if (v32 >= v31 >> 1)
            {
              sub_1000153D8((v31 > 1), v32 + 1, 1);
            }

            ++v24;
            _swiftEmptyArrayStorage[2] = v32 + 1;
            v33 = &_swiftEmptyArrayStorage[2 * v32];
            v33[4] = v28;
            v33[5] = v30;
          }

          while (v23 != v24);
          v17 = v51;
        }

        sub_10001DDE4();

        v34 = sub_100016AD4();
        v37 = sub_100014E68(v34, v35, v36);

        *(v44 + 4) = v37;
        *(v44 + 12) = 2080;
        v38 = [v48 identifier];
        sub_10001DD14();

        v39 = sub_100016AD4();
        v42 = sub_100014E68(v39, v40, v41);

        *(v44 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v46, v45, "Visible parameters changed to %s, in action: %s", v44, 0x16u);
        swift_arrayDestroy();
        sub_100016A38(v43);
        sub_100016A38(v44);

        (*(v49 + 8))(v17, v50);
        v13 = v47;
      }

      else
      {

        (*(v49 + 8))(v51, v50);
      }

      *&v1[v13] = _swiftEmptyArrayStorage;

      sub_10000F924();
      sub_10001D6C4();

      sub_100016B28();
      return;
    }

    goto LABEL_34;
  }

  sub_100016B28();
}

uint64_t sub_100011FDC()
{
  v1 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  sub_100011AC4();
  type metadata accessor for FocusConfigurationActionViewModel(0);
  sub_100016330();
  sub_100016AF4();
  sub_10001D6B4();
  sub_10001D6E4();

  v4 = sub_10001DE54();
  sub_10000619C(v3, 1, 1, v4);
  sub_10001DE34();
  v5 = v0;
  v6 = sub_10001DE24();
  sub_100016A9C();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_100012424(0, 0, v3, &unk_100020BB8, v7);
}

uint64_t sub_100012108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_10001DE34();
  v4[4] = sub_10001DE24();
  v6 = sub_10001DE14();
  v4[5] = v6;
  v4[6] = v5;

  return _swift_task_switch(sub_1000121A0, v6, v5);
}

uint64_t sub_1000121A0()
{
  sub_10001696C();
  v0[7] = *(v0[3] + OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_onConfigurationStateChange);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100012240;

  return sub_10000F988();
}

uint64_t sub_100012240()
{
  sub_100016984();
  v3 = v2;
  sub_100016A50();
  v5 = v4;
  sub_100016930();
  *v6 = v5;
  v7 = *v1;
  sub_100016960();
  *v8 = v7;
  v5[9] = v0;

  if (v0)
  {
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_1000123C8;
  }

  else
  {
    v5[10] = v3;
    v9 = v5[5];
    v10 = v5[6];
    v11 = sub_100012354;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_100012354()
{
  sub_10001696C();
  v1 = *(v0 + 80);

  *(v0 + 16) = v1;
  sub_10001D6C4();

  sub_1000169A0();

  return v2();
}

uint64_t sub_1000123C8()
{
  sub_10001696C();

  sub_1000169A0();

  return v0();
}

uint64_t sub_100012424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  __chkstk_darwin(v8 - 8);
  v10 = v21 - v9;
  sub_100016520(a3, v21 - v9);
  v11 = sub_10001DE54();
  v12 = sub_100016590(v10, 1, v11);

  if (v12 == 1)
  {
    sub_1000165B8(v10, &unk_100032C28, &qword_100020D70);
  }

  else
  {
    sub_10001DE44();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_10001DE14();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_10001DD34() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_1000165B8(a3, &unk_100032C28, &qword_100020D70);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000165B8(a3, &unk_100032C28, &qword_100020D70);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_1000126A4(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10001D694();
  sub_100006C14();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100016950();
  v12 = v11 - v10;
  v13 = sub_10001DCB4();
  sub_100006C14();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100016950();
  v19 = (v18 - v17);
  sub_100006710(0, &qword_100032C20, OS_dispatch_queue_ptr);
  *v19 = sub_10001DEB4();
  (*(v15 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v13);
  v20 = sub_10001DCC4();
  (*(v15 + 8))(v19, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!WFLogCategoryFocusConfiguration)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_10001D664();

  v21 = a1;
  v22 = sub_10001D684();
  v23 = sub_10001DE84();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_100014E68(a2, a3, &v31);
    *(v24 + 12) = 2080;
    v26 = [v21 identifier];
    v27 = sub_10001DD14();
    v29 = v28;

    v30 = sub_100014E68(v27, v29, &v31);

    *(v24 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "Parameter state changed for key: %s, in action: %s", v24, 0x16u);
    swift_arrayDestroy();
    sub_100016A38(v25);
    sub_100016A38(v24);
  }

  (*(v8 + 8))(v12, v6);
  sub_100011FDC();
  sub_100016B28();
}

void sub_100012A0C(void *a1)
{
  v2 = v1;
  v4 = sub_10001D694();
  sub_100006C14();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100016950();
  v10 = v9 - v8;
  v11 = sub_10001DCB4();
  sub_100006C14();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100016950();
  v17 = (v16 - v15);
  sub_100006710(0, &qword_100032C20, OS_dispatch_queue_ptr);
  *v17 = sub_10001DEB4();
  (*(v13 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v11);
  v18 = sub_10001DCC4();
  (*(v13 + 8))(v17, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!WFLogCategoryFocusConfiguration)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_10001D664();
  v19 = a1;
  v20 = v2;
  v21 = sub_10001D684();
  v22 = sub_10001DE84();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = v24;
    *v23 = 136315394;
    v25 = [v19 key];
    v35 = v4;
    v26 = sub_10001DD14();
    v28 = v27;

    v29 = sub_100014E68(v26, v28, &v36);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    v30 = [*&v20[OBJC_IVAR____TtC27FocusConfigurationExtension33FocusConfigurationActionViewModel_action] identifier];
    v31 = sub_10001DD14();
    v33 = v32;

    v34 = sub_100014E68(v31, v33, &v36);

    *(v23 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "Parameter attributes changed: %s, in action: %s", v23, 0x16u);
    swift_arrayDestroy();
    sub_100016A38(v24);
    sub_100016A38(v23);

    (*(v6 + 8))(v10, v35);
  }

  else
  {

    (*(v6 + 8))(v10, v4);
  }

  sub_100011FDC();
  sub_100016B28();
}

void sub_100012DF0(uint64_t a1)
{
  sub_100012EBC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100012EBC()
{
  if (!qword_100032AE0)
  {
    v0 = sub_10001D724();
    if (!v1)
    {
      atomic_store(v0, &qword_100032AE0);
    }
  }
}

uint64_t sub_100012F18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for FocusConfigurationActionViewModel(0);
  result = sub_10001D6B4();
  *a1 = result;
  return result;
}

char *sub_100012F58(void *a1, void *a2)
{
  v186 = a2;
  v188 = sub_10001D694();
  v179 = *(v188 - 8);
  v3 = __chkstk_darwin(v188);
  v5 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v172 = &v163 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v163 - v9;
  __chkstk_darwin(v8);
  v181 = &v163 - v11;
  v12 = [objc_allocWithZone(LNMetadataProvider) initWithOptions:2];
  v13 = [a1 bundleIdentifier];
  if (!v13)
  {
    sub_10001DD14();
    v13 = sub_10001DD04();
  }

  v14 = sub_10001DD14();
  v16 = v15;
  v174 = sub_100005A2C(&qword_1000323C0, &qword_100020790);
  v17 = swift_allocObject();
  v173 = xmmword_1000200A0;
  *(v17 + 16) = xmmword_1000200A0;
  *(v17 + 32) = a1;
  sub_100006710(0, &qword_100032BA0, LNFullyQualifiedActionIdentifier_ptr);
  v178 = a1;
  isa = sub_10001DDC4().super.isa;

  v191[0] = 0;
  v19 = [v12 actionsWithFullyQualifiedIdentifiers:isa error:v191];

  v20 = v191[0];
  if (!v19)
  {
    v57 = v191[0];

    sub_10001D554();
    swift_willThrow();
    v56 = v12;
    goto LABEL_27;
  }

  v177 = v12;
  sub_100005A2C(&qword_100032BA8, &qword_100020B48);
  v21 = sub_10001DCE4();
  v22 = v20;

  v176 = v16;
  v23 = sub_10000CF94(v14, v16, v21);

  if (!v23 || (v24 = [v178 actionIdentifier], v25 = sub_10001DD14(), v27 = v26, v24, v28 = sub_10000CFE4(v25, v27, v23), , , !v28))
  {
    v56 = 0;
LABEL_23:
    v58 = v177;

    if (!WFLogCategoryFocusConfiguration)
    {
      goto LABEL_86;
    }

    sub_10001D664();
    v59 = sub_10001D684();
    v60 = sub_10001DEA4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Attempted to configure an action that is not a FocusConfiguration action, bailing out.", v61, 2u);
    }

    (*(v179 + 8))(v5, v188);
    sub_100016238();
    swift_allocError();
    *v62 = 0;
    swift_willThrow();

    goto LABEL_27;
  }

  v29 = v28;
  v30 = [v29 systemProtocols];
  sub_100006710(0, &qword_100032BB0, LNSystemProtocol_ptr);
  v31 = sub_10001DDD4();

  v32 = [objc_opt_self() focusConfigurationProtocol];
  v191[0] = v32;
  __chkstk_darwin(v32);
  *(&v163 - 2) = v191;
  v33 = v190;
  sub_10000CCC8(sub_100016310, (&v163 - 4), v31);
  v35 = v34;
  v167 = v33;

  if ((v35 & 1) == 0)
  {
    v56 = v29;

    goto LABEL_23;
  }

  v36 = objc_allocWithZone(WFLinkActionProvider);
  v164 = [v36 initWithMetadataProvider:v177];
  v37 = [v164 actionMetadataByUpdatingWithEnumAndEntityMetadata:v29 bundleIdentifier:v13];
  v165 = v29;

  p_ivar_base_size = &WFConfigurationParametersViewController__classData.ivar_base_size;
  v166 = v37;
  v39 = [v37 parameters];
  sub_100006710(0, &qword_100032BB8, LNActionParameterMetadata_ptr);
  v40 = sub_10001DDD4();

  v41 = sub_10000CB34(v40);
  v189 = v10;
  if (v41)
  {
    v42 = v41;
    v191[0] = _swiftEmptyArrayStorage;
    sub_1000153F8(0, v41 & ~(v41 >> 63), 0);
    if ((v42 & 0x8000000000000000) == 0)
    {
      v43 = 0;
      v44 = v191[0];
      v190 = v40 & 0xC000000000000001;
      v187 = v40 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          break;
        }

        if (v190)
        {
          v46 = sub_10001DF44();
        }

        else
        {
          if (v43 >= *(v187 + 16))
          {
            goto LABEL_78;
          }

          v46 = *(v40 + 8 * v43 + 32);
        }

        v47 = v46;
        v48 = sub_10001628C(v46, &selRef_name);
        if (!v49)
        {
          goto LABEL_83;
        }

        v50 = v48;
        v51 = v49;
        v191[0] = v44;
        v53 = v44[2];
        v52 = v44[3];
        v54 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          v185 = v53 + 1;
          sub_1000153F8((v52 > 1), v53 + 1, 1);
          v54 = v185;
          v44 = v191[0];
        }

        v44[2] = v54;
        v55 = &v44[3 * v53];
        v55[4] = v50;
        v55[5] = v51;
        v55[6] = v47;
        ++v43;
        v10 = v189;
        if (v45 == v42)
        {

          p_ivar_base_size = (&WFConfigurationParametersViewController__classData + 8);
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
  }

  v44 = _swiftEmptyArrayStorage;
LABEL_30:
  v187 = sub_10001176C(v44);
  v64 = [v186 *(p_ivar_base_size + 190)];
  sub_100006710(0, &qword_100032BC0, LNProperty_ptr);
  v65 = sub_10001DDD4();

  v66 = &off_100020000;
  v67 = &WFConfigurationParametersViewController__classData.ivar_base_size;
  v186 = sub_10000CB34(v65);
  if (!v186)
  {
    v170 = &_swiftEmptyDictionarySingleton;
LABEL_65:

    v133 = v177;
    if (v170[2])
    {

      v134 = v166;
    }

    else
    {
      v134 = v166;
      if (!WFLogCategoryFocusConfiguration)
      {
        goto LABEL_87;
      }

      v135 = v172;
      sub_10001D664();
      v136 = v134;
      v137 = sub_10001D684();
      v138 = sub_10001DE94();

      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v141 = v66;
        v142 = v140;
        v191[0] = v140;
        *v139 = *(v141 + 328);
        v143 = [v136 *(v67 + 157)];
        v144 = sub_10001DD14();
        v146 = v145;

        v147 = v144;
        v133 = v177;
        v148 = sub_100014E68(v147, v146, v191);

        *(v139 + 4) = v148;
        _os_log_impl(&_mh_execute_header, v137, v138, "No serialized parameters for action %s, it's likely something went wrong.", v139, 0xCu);
        sub_1000066C4(v142);
      }

      (*(v179 + 8))(v135, v188);
    }

    v149 = [v178 compositeIdentifier];
    v150 = sub_10001DD14();
    v152 = v151;

    v153 = sub_10001409C(v170);

    v154 = objc_allocWithZone(WFActionRequest);
    v155 = sub_100014D70(v150, v152, v153);
    v5 = swift_allocObject();
    *(v5 + 1) = v173;
    *(v5 + 4) = v155;
    sub_100006710(0, &unk_100032BC8, WFActionRequest_ptr);
    v156 = v155;
    v157 = sub_10001DDC4().super.isa;

    v158 = v164;
    [v164 createActionsForRequests:v157];

    v159 = [v156 result];
    if (v159)
    {
      v160 = v159;
      objc_opt_self();
      v161 = swift_dynamicCastObjCClass();
      if (v161)
      {
        v5 = v161;
        [v161 forceUpdateParameterVisibility];

        return v5;
      }
    }

    sub_100016238();
    swift_allocError();
    *v162 = 0;
    swift_willThrow();

    v56 = v165;
LABEL_27:

    return v5;
  }

  v69 = 0;
  v185 = v65 & 0xC000000000000001;
  v171 = v65 & 0xFFFFFFFFFFFFFF8;
  v182 = (v179 + 8);
  v170 = &_swiftEmptyDictionarySingleton;
  v183 = WFLogCategoryFocusConfiguration;
  *&v68 = 136315138;
  v175 = v68;
  v184 = v65;
  while (1)
  {
    if (v185)
    {
      v70 = sub_10001DF44();
    }

    else
    {
      if (v69 >= *(v171 + 16))
      {
        goto LABEL_79;
      }

      v70 = *(v65 + 8 * v69 + 32);
    }

    v71 = v70;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_77;
    }

    v190 = v69 + 1;
    v72 = [v70 *(v67 + 157)];
    v73 = sub_10001DD14();
    v75 = v74;

    if (!*(v187 + 16))
    {

LABEL_49:
      if (!v183)
      {
        goto LABEL_84;
      }

      sub_10001D664();
      v108 = v71;
      v109 = sub_10001D684();
      v110 = sub_10001DEA4();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v191[0] = v112;
        *v111 = v175;
        v113 = [v108 *(v67 + 157)];
        v114 = sub_10001DD14();
        v116 = v115;

        v117 = sub_100014E68(v114, v116, v191);
        v10 = v189;

        *(v111 + 4) = v117;
        v67 = (&WFConfigurationParametersViewController__classData + 8);
        _os_log_impl(&_mh_execute_header, v109, v110, "Programming error: could not find parameter with identifier %s", v111, 0xCu);
        sub_1000066C4(v112);

        v66 = &off_100020000;
      }

      else
      {
      }

      (*v182)(v10, v188);
LABEL_54:
      v65 = v184;
      v118 = v190;
      goto LABEL_55;
    }

    v76 = sub_100015658(v73, v75);
    v78 = v77;

    if ((v78 & 1) == 0)
    {
      goto LABEL_49;
    }

    v79 = *(*(v187 + 56) + 8 * v76);
    v80 = [v79 valueType];
    v81 = [v80 wf_parameterDefinitionWithParameterMetadata:v79];

    v180 = v81;
    if (!v81)
    {
      break;
    }

    v82 = v79;
    v83 = v67;
    v84 = v66;
    v85 = v180;
    v86 = [v71 value];
    v87 = [v85 parameterStateFromLinkValue:v86];
    v169 = v85;

    v66 = v84;
    v67 = v83;
    v79 = v82;

    if (!v87)
    {
      break;
    }

    v88 = [v87 serializedRepresentation];
    swift_unknownObjectRelease();
    if (!v88)
    {
      break;
    }

    v89 = [v71 *(v67 + 157)];
    v90 = sub_10001DD14();
    v92 = v91;

    v180 = v88;
    swift_unknownObjectRetain();
    v93 = v170;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v191[0] = v93;
    v168 = v90;
    v95 = v90;
    v96 = v92;
    v97 = sub_100015658(v95, v92);
    v99 = v93[2];
    v100 = (v98 & 1) == 0;
    v101 = v99 + v100;
    if (__OFADD__(v99, v100))
    {
      goto LABEL_80;
    }

    v102 = v97;
    v103 = v98;
    sub_100005A2C(&qword_100032BD8, &qword_100020B60);
    if (sub_10001DFB4(isUniquelyReferenced_nonNull_native, v101))
    {
      v104 = sub_100015658(v168, v96);
      if ((v103 & 1) != (v105 & 1))
      {
        goto LABEL_88;
      }

      v102 = v104;
    }

    v106 = v180;
    v107 = v191[0];
    v170 = v191[0];
    if (v103)
    {
      *(*(v191[0] + 7) + 8 * v102) = v180;

      swift_unknownObjectRelease();
    }

    else
    {
      *(v191[0] + (v102 >> 6) + 8) |= 1 << v102;
      v129 = (v107[6] + 16 * v102);
      *v129 = v168;
      v129[1] = v96;
      *(v107[7] + 8 * v102) = v106;
      v130 = v107[2];
      v131 = __OFADD__(v130, 1);
      v132 = v130 + 1;
      if (v131)
      {
        goto LABEL_81;
      }

      v107[2] = v132;
    }

    swift_unknownObjectRelease();
    v10 = v189;
    v118 = v190;
    v67 = (&WFConfigurationParametersViewController__classData + 8);
    v66 = &off_100020000;
    v65 = v184;
LABEL_55:
    ++v69;
    if (v118 == v186)
    {
      goto LABEL_65;
    }
  }

  if (v183)
  {
    v119 = v181;
    sub_10001D664();
    v120 = v79;
    v121 = sub_10001D684();
    v122 = sub_10001DE94();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v192 = v124;
      *v123 = v175;
      v191[0] = sub_10001628C(v120, &selRef_name);
      v191[1] = v125;
      sub_100005A2C(&qword_100032770, &unk_100020B50);
      v126 = sub_10001DD24();
      v128 = sub_100014E68(v126, v127, &v192);
      v10 = v189;

      *(v123 + 4) = v128;
      _os_log_impl(&_mh_execute_header, v121, v122, "Could not create serializedRepresentation of parameterState for parameter %s", v123, 0xCu);
      sub_1000066C4(v124);
      v67 = (&WFConfigurationParametersViewController__classData + 8);

      v66 = &off_100020000;

      (*v182)(v181, v188);
    }

    else
    {

      (*v182)(v119, v188);
    }

    goto LABEL_54;
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_10001E034();
  __break(1u);
  return result;
}

uint64_t sub_10001409C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005A2C(&qword_100032BE8, &qword_100020B70);
    v2 = sub_10001E014();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v9 << 6)));
    v12 = v11[1];
    *&v30[0] = *v11;
    *(&v30[0] + 1) = v12;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_100005A2C(&qword_100032BF0, &qword_100020B78);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_100006658(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_100006658(v29, v30);
    result = sub_10001DF14(v2[5]);
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*&v7[8 * (v14 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *&v7[8 * v15];
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*&v7[8 * (v14 >> 6)])) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
    v21 = v2[6] + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    result = sub_100006658(v30, (v2[7] + 32 * v16));
    ++v2[2];
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100014364(uint64_t a1)
{
  v1[19] = a1;
  sub_10001DE34();
  v1[20] = sub_10001DE24();
  v3 = sub_10001DE14();
  v1[21] = v3;
  v1[22] = v2;

  return _swift_task_switch(sub_1000143FC, v3, v2);
}

uint64_t sub_1000143FC()
{
  sub_100016AA8();
  v2 = [*(v1 + 152) contextualAction];
  *(v1 + 184) = v2;
  if (v2)
  {
    v3 = v2;
    sub_100016AB4();
    *(v1 + 16) = v4;
    *(v1 + 56) = v1 + 144;
    *(v1 + 24) = sub_1000145A0;
    v5 = swift_continuation_init();
    *(v1 + 136) = sub_100005A2C(&qword_100032C18, &unk_100020BA0);
    *(v1 + 80) = _NSConcreteStackBlock;
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_1000168DC;
    *(v1 + 104) = &unk_10002D8E8;
    *(v1 + 112) = v5;
    [v3 getActionRepresentationTakingInput:0 context:0 completionHandler:v1 + 80];

    return _swift_continuation_await(v0);
  }

  else
  {

    sub_100016238();
    sub_1000169C0();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    sub_1000169A0();

    return v7();
  }
}

uint64_t sub_1000145A0()
{
  sub_10001696C();
  sub_100016A50();
  sub_100016960();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 192) = v4;
  v5 = v3[22];
  v6 = v3[21];
  if (v4)
  {
    v7 = sub_100014820;
  }

  else
  {
    v7 = sub_1000146C4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1000146C4()
{
  sub_100016AA8();

  v1 = *(v0 + 144);
  v2 = sub_10001DD04();
  v3 = [v1 parameterForKey:v2];

  if (v3)
  {
    v4 = sub_10001DD04();
    v5 = [v1 createStateForParameter:v3 fromSerializedRepresentation:v4];

    v6 = [v3 key];
    if (!v6)
    {
      sub_10001DD14();
      v6 = sub_10001DD04();
    }

    [v1 setParameterState:v5 forKey:v6];

    swift_unknownObjectRelease();
  }

  v7 = sub_100016940();

  return v8(v7);
}

uint64_t sub_100014820()
{
  sub_100016984();
  v1 = *(v0 + 184);

  swift_willThrow();

  sub_1000169A0();

  return v2();
}

void *sub_100014890(uint64_t a1, void *a2, void *a3)
{
  result = sub_1000161F4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    v7 = sub_100016A78();
    return sub_1000116E4(v7, v8);
  }

  else if (a2)
  {
    v9 = a2;
    v10 = sub_100016A78();
    return sub_10001174C(v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000148F4(void *a1)
{
  v2 = [a1 mode];
  if (v2 == 1)
  {
    v3 = [a1 contextualAction];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 actionIdentifier];
      if (!v5)
      {
        sub_10001DD14();
        v5 = sub_10001DD04();
      }

      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSystemFilterType:v5];
LABEL_13:

      return v6;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v2)
  {
    v7 = [a1 actionIdentifier];
    if (v7)
    {
      v4 = v7;
      v8 = [v7 bundleIdentifier];
      if (!v8)
      {
        sub_10001DD14();
        v8 = sub_10001DD04();
      }

      v5 = [v4 actionIdentifier];
      if (!v5)
      {
        sub_10001DD14();
        v5 = sub_10001DD04();
      }

      v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAppBundleIdentifier:v8 intentType:v5];

      goto LABEL_13;
    }

    goto LABEL_15;
  }

LABEL_16:
  result = sub_10001DFE4();
  __break(1u);
  return result;
}

uint64_t sub_100014AD0()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_18;
  }

  v1 = [v0 key];
  v2 = sub_10001DD14();
  v4 = v3;

  if (v2 == sub_10001DD14() && v4 == v5)
  {
    goto LABEL_17;
  }

  v7 = sub_10001E024();

  if (v7)
  {
    goto LABEL_18;
  }

  v8 = [v0 key];
  v9 = sub_10001DD14();
  v11 = v10;

  if (v9 == sub_10001DD14() && v11 == v12)
  {
    goto LABEL_17;
  }

  v14 = sub_10001E024();

  if (v14)
  {
LABEL_18:
    v22 = 0;
    return v22 & 1;
  }

  v15 = [v0 key];
  v16 = sub_10001DD14();
  v18 = v17;

  if (v16 == sub_10001DD14() && v18 == v19)
  {
LABEL_17:

    goto LABEL_18;
  }

  v21 = sub_10001E024();

  v22 = v21 ^ 1;
  return v22 & 1;
}

void *sub_100014CB0@<X0>(BOOL *a4@<X8>)
{
  sub_100005A2C(&qword_100032CA8, &unk_100020D20);
  result = sub_10001DC14();
  *a4 = (v6 & 1) == 0;
  return result;
}

id sub_100014D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10001DD04();

  if (a3)
  {
    v6.super.isa = sub_10001DCD4().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = [v3 initWithActionIdentifier:v5 serializedParameters:v6.super.isa];

  return v7;
}

unint64_t sub_100014E10(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

char *sub_100014E34(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[48 * a2] <= __dst)
  {
    return memmove(__dst, __src, 48 * a2);
  }

  return __src;
}

unint64_t sub_100014E68(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100014F2C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100006668(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_1000066C4(v11);
  return v7;
}

unint64_t sub_100014F2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10001502C(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_10001DF54();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10001502C(uint64_t a1, unint64_t a2)
{
  v3 = sub_100015078(a1, a2);
  sub_100015190(&off_10002D208);
  return v3;
}

void *sub_100015078(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10001DD84())
  {
    result = sub_100015274(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10001DF24();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_10001DF54();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100015190(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1000152E4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100015274(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100005A2C(&qword_100032BE0, &qword_100020B68);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1000152E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005A2C(&qword_100032BE0, &qword_100020B68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1000153D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000153F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015520(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015418(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005A2C(&qword_100032C38, &unk_100020BC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100015520(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100005A2C(&qword_100032C08, &qword_100020B90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005A2C(&qword_100032C10, &qword_100020B98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100015658(uint64_t a1, uint64_t a2)
{
  sub_10001E084();
  sub_10001DD54();
  v4 = sub_10001E0A4();

  return sub_1000156D0(a1, a2, v4);
}

unint64_t sub_1000156D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10001E024() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100015784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_100005A2C(a3, a4);
  v37 = v6;
  result = sub_10001E004();
  v9 = result;
  if (!*(v7 + 16))
  {
LABEL_31:

LABEL_32:
    *v5 = v9;
    return result;
  }

  v36 = v7;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = result + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_32;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      sub_100015A1C(0, (v35 + 63) >> 6, v11);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = (*(v7 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(*(v7 + 56) + 8 * v20);
    if ((v37 & 1) == 0)
    {

      v25 = v24;
    }

    sub_10001E084();
    sub_10001DD54();
    result = sub_10001E0A4();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v16 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v9 + 48) + 16 * v29);
    *v34 = v22;
    v34[1] = v23;
    *(*(v9 + 56) + 8 * v29) = v24;
    ++*(v9 + 16);
    v7 = v36;
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v16 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_100015A1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100020A50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100015A80(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v25 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_10001E034();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_100015658(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100005A2C(&qword_100032C00, &qword_100020B88);
      sub_10001DFC4();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    *(v19[7] + 8 * v12) = v10;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  sub_100015784(v15, a2 & 1, &qword_100032BF8, &qword_100020B80);
  v17 = sub_100015658(v7, v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  sub_100005A2C(&qword_100032B88, &qword_100020B30);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  sub_10001DF34(30);
  v28._object = 0x80000001000272F0;
  v28._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10001DD74(v28);
  sub_10001DFA4();
  v29._countAndFlagsBits = 39;
  v29._object = 0xE100000000000000;
  sub_10001DD74(v29);
  result = sub_10001DFE4();
  __break(1u);
  return result;
}

uint64_t sub_100015D70(uint64_t a1, unint64_t a2, char a3, void *a4)
{
  v8 = a2 & 0xFFFFFFFFFFFFFF8;
  v33 = a2 & 0xC000000000000001;

  v9 = 0;
  v35 = a2;
  v36 = a1;
  v10 = (a1 + 40);
  v34 = a2 >> 62;
  for (i = v8; ; v8 = i)
  {
    v11 = *(v36 + 16);
    if (v9 == v11)
    {
LABEL_24:
      swift_bridgeObjectRelease_n();
      return swift_bridgeObjectRelease_n();
    }

    if (v9 >= v11)
    {
      break;
    }

    v13 = *(v10 - 1);
    v12 = *v10;
    if (v34)
    {
      v14 = sub_10001DFF4();
    }

    else
    {
      v14 = *(v8 + 16);
    }

    if (v9 == v14)
    {
      goto LABEL_24;
    }

    if (v33)
    {

      v16 = sub_10001DF44();
    }

    else
    {
      if (v9 >= *(v8 + 16))
      {
        goto LABEL_27;
      }

      v15 = *(v35 + 8 * v9 + 32);

      v16 = v15;
    }

    v37 = v16;
    v17 = *a4;
    v19 = sub_100015658(v13, v12);
    v20 = v17[2];
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_26;
    }

    v23 = v18;
    if (v17[3] >= v22)
    {
      if (a3)
      {
        if (v18)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_100005A2C(&qword_100032C88, &qword_100020C00);
        sub_10001DFC4();
        if (v23)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_100015784(v22, a3 & 1, &qword_100032C80, &qword_100020BF8);
      v24 = sub_100015658(v13, v12);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_29;
      }

      v19 = v24;
      if (v23)
      {
LABEL_22:
        swift_allocError();
        swift_willThrow();
        swift_errorRetain();
        sub_100005A2C(&qword_100032B88, &qword_100020B30);
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        goto LABEL_30;
      }
    }

    v26 = *a4;
    *(*a4 + 8 * (v19 >> 6) + 64) |= 1 << v19;
    v27 = (v26[6] + 16 * v19);
    *v27 = v13;
    v27[1] = v12;
    *(v26[7] + 8 * v19) = v37;
    v28 = v26[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_28;
    }

    v26[2] = v30;
    v10 += 2;
    ++v9;
    a3 = 1;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_10001E034();
  __break(1u);
LABEL_30:
  sub_10001DF34(30);
  v38._object = 0x80000001000272F0;
  v38._countAndFlagsBits = 0xD00000000000001BLL;
  sub_10001DD74(v38);
  sub_10001DFA4();
  v39._countAndFlagsBits = 39;
  v39._object = 0xE100000000000000;
  sub_10001DD74(v39);
  result = sub_10001DFE4();
  __break(1u);
  return result;
}

uint64_t sub_100016170(void *a1)
{
  v1 = [a1 possibleStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_100005A2C(&qword_100032B10, &qword_1000201E8);
  v3 = sub_10001DDD4();

  return v3;
}

void *sub_1000161F4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100016238()
{
  result = qword_100032B90;
  if (!qword_100032B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032B90);
  }

  return result;
}

uint64_t sub_10001628C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_10001DD14();

  return v4;
}

unint64_t sub_100016330()
{
  result = qword_100032640;
  if (!qword_100032640)
  {
    type metadata accessor for FocusConfigurationActionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032640);
  }

  return result;
}

uint64_t sub_10001638C()
{
  sub_100016984();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_10001643C;

  return sub_100012108(v3, v4, v5, v6);
}

uint64_t sub_10001643C()
{
  sub_10001696C();
  sub_100016A50();
  v1 = *v0;
  sub_100016960();
  *v2 = v1;

  sub_1000169A0();

  return v3();
}

uint64_t sub_100016520(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005A2C(&unk_100032C28, &qword_100020D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000165B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100005A2C(a2, a3);
  sub_100016AE0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10001660C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000F8B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100016670()
{
  swift_unknownObjectRelease();

  sub_100016A9C();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t getEnumTagSinglePayload for FocusConfigurationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FocusConfigurationError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100016818);
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}