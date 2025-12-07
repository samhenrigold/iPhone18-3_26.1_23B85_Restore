__n128 sub_100001634(uint64_t a1, uint64_t a2)
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

uint64_t sub_100001650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100001698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_100001714@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  KeyPath = swift_getKeyPath();
  sub_100001898(&qword_1000103C0, &qword_100008688);
  sub_100007DF0();
  v5 = v13;
  v6 = v14;
  v16 = &_swiftEmptyArrayStorage;
  sub_100001898(&qword_1000103C8, &qword_100008690);
  sub_100007DF0();
  v7 = v13;
  v8 = v14;
  v9 = swift_getKeyPath();
  sub_100004748(&v13);
  sub_1000048B8(&v13, v15);
  v10 = sub_100007A80();
  LOBYTE(v16) = 0;
  result = sub_1000048FC(&v13);
  v12 = v16;
  *a1 = KeyPath;
  *(a1 + 8) = v12;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v3;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  return result;
}

uint64_t sub_10000183C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100007C30();
  *a1 = result;
  return result;
}

uint64_t sub_100001898(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_1000018E0()
{
  sub_100007F90();
  sub_100007E90();
  sub_100007E90();
  return sub_100007FA0();
}

uint64_t sub_100001948(uint64_t a1)
{
  sub_100007E90();

  return sub_100007E90();
}

Swift::Int sub_100001998(uint64_t a1)
{
  sub_100007F90();
  sub_100007E90();
  sub_100007E90();
  return sub_100007FA0();
}

uint64_t sub_1000019FC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_100007F70(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_100007F70();
    }
  }

  return result;
}

__n128 sub_100001AA0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100001898(&qword_100010408, &qword_100008858);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = v33 - v6;
  *v7 = sub_100007CA0();
  *(v7 + 1) = 0x402C000000000000;
  v7[16] = 0;
  v8 = sub_100001898(&qword_100010410, &qword_100008860);
  sub_100001DDC(v2, &v7[*(v8 + 44)]);
  v9 = sub_100007D10();
  sub_100007BF0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v7[*(sub_100001898(&qword_100010418, &qword_100008868) + 36)];
  *v18 = v9;
  *(v18 + 1) = v11;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  *(v18 + 4) = v17;
  v18[40] = 0;
  v19 = *v2;
  v39 = *(v2 + 8);
  v20 = *(v2 + 24);
  v37 = *(v2 + 16);
  v38 = v19;
  v21 = *(v2 + 40);
  v35 = *(v2 + 32);
  v36 = v20;
  v34 = v21;
  v22 = swift_allocObject();
  v23 = *(v2 + 16);
  *(v22 + 16) = *v2;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(v2 + 32);
  *(v22 + 64) = *(v2 + 48);
  v24 = &v7[*(sub_100001898(&qword_100010420, &qword_100008870) + 36)];
  *v24 = sub_100004C90;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  sub_1000065C0(&v38, v33, &qword_100010428, &qword_100008878);
  sub_1000065C0(&v37, v33, &qword_1000103C0, &qword_100008688);
  sub_1000065C0(&v36, v33, &qword_100010430, &qword_100008880);
  sub_1000065C0(&v35, v33, &qword_1000103C8, &qword_100008690);
  sub_1000065C0(&v34, v33, &qword_100010438, &qword_100008888);
  v25 = sub_100007DE0();
  v26 = sub_100007D00();
  v27 = &v7[*(v5 + 44)];
  *v27 = v25;
  v27[8] = v26;
  sub_100007E60();
  sub_100007C00();
  sub_100004C98(v7, a1);
  v28 = a1 + *(sub_100001898(&qword_100010440, &qword_100008890) + 36);
  v29 = v33[5];
  *(v28 + 64) = v33[4];
  *(v28 + 80) = v29;
  *(v28 + 96) = v33[6];
  v30 = v33[1];
  *v28 = v33[0];
  *(v28 + 16) = v30;
  result = v33[3];
  *(v28 + 32) = v33[2];
  *(v28 + 48) = result;
  return result;
}

uint64_t sub_100001DDC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v59 = sub_100007AA0();
  v3 = *(v59 - 8);
  __chkstk_darwin(v59);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001898(&qword_100010488, &qword_1000088D0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = &v55 - v11;
  sub_100007EF0();
  v61 = sub_100007EE0();
  sub_100007ED0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_100001898(&qword_100010490, &qword_1000088D8);
  sub_100005EDC();
  sub_100007E40();
  v91 = *(a1 + 32);
  v80 = *(a1 + 32);
  sub_100001898(&qword_100010460, &qword_1000088B0);
  sub_100007E00();
  v13 = *(v75 + 16);

  if (v13)
  {
    v56 = v10;
    v57 = v7;
    v58 = v6;
    v55 = a1;
    v14 = v59;
    (*(v3 + 104))(v5, enum case for LocalizedStringTable.bankConnect(_:), v59);
    sub_100001898(&qword_1000104B8, &qword_1000088E8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100008500;
    v80 = v91;
    sub_100007E00();
    v16 = *(v75 + 16);

    *(v15 + 56) = &type metadata for Int;
    *(v15 + 64) = &protocol witness table for Int;
    *(v15 + 32) = v16;
    v17 = sub_100007A90();
    v19 = v18;

    v20 = (*(v3 + 8))(v5, v14);
    *&v80 = v17;
    *(&v80 + 1) = v19;
    sub_100006050(v20, v21, v22);
    v23 = sub_100007D90();
    v25 = v24;
    LOBYTE(v15) = v26;
    sub_100007D20();
    v27 = sub_100007D80();
    v29 = v28;
    v31 = v30;

    sub_1000060A4(v23, v25, v15 & 1);

    sub_100007D40();
    v32 = sub_100007D60();
    v34 = v33;
    LOBYTE(v25) = v35;
    v37 = v36;
    sub_1000060A4(v27, v29, v31 & 1);

    KeyPath = swift_getKeyPath();
    sub_100007E60();
    sub_100007C00();
    *&v79[55] = v89[5];
    *&v79[71] = v89[6];
    *&v79[87] = v89[7];
    *&v79[103] = v90;
    *&v79[7] = v89[2];
    *&v79[23] = v89[3];
    *&v79[39] = v89[4];
    *(&v78[4] + 1) = *&v79[64];
    *(&v78[5] + 1) = *&v79[80];
    *(&v78[6] + 1) = *&v79[96];
    *(v78 + 1) = *v79;
    *(&v78[1] + 1) = *&v79[16];
    *(&v78[2] + 1) = *&v79[32];
    LOBYTE(v73[0]) = v25 & 1;
    LOBYTE(v63) = 1;
    *&v75 = v32;
    *(&v75 + 1) = v34;
    LOBYTE(v76) = v25 & 1;
    *(&v76 + 1) = v37;
    v77 = KeyPath;
    LOBYTE(v78[0]) = 1;
    *&v78[7] = *(&v90 + 1);
    *(&v78[3] + 1) = *&v79[48];
    WORD4(v78[7]) = 1;
    nullsub_1();
    v88 = v78[5];
    v89[0] = v78[6];
    *(v89 + 10) = *(&v78[6] + 10);
    v84 = v78[1];
    v85 = v78[2];
    v86 = v78[3];
    v87 = v78[4];
    v80 = v75;
    v81 = v76;
    v82 = v77;
    v83 = v78[0];
    v7 = v57;
    v6 = v58;
    v10 = v56;
  }

  else
  {
    sub_1000060B8(&v80);
  }

  v39 = *(v7 + 16);
  v40 = v62;
  v39(v10, v62, v6);
  v71 = v88;
  v72[0] = v89[0];
  *(v72 + 10) = *(v89 + 10);
  v67 = v84;
  v68 = v85;
  v69 = v86;
  v70 = v87;
  v63 = v80;
  v64 = v81;
  v65 = v82;
  v66 = v83;
  v41 = v60;
  v39(v60, v10, v6);
  v42 = *(sub_100001898(&qword_1000104C8, &qword_100008920) + 48);
  v43 = v72[0];
  v73[8] = v71;
  v74[0] = v72[0];
  *(v74 + 10) = *(v72 + 10);
  v44 = v67;
  v45 = v68;
  v73[4] = v67;
  v73[5] = v68;
  v47 = v69;
  v46 = v70;
  v73[6] = v69;
  v73[7] = v70;
  v48 = v63;
  v49 = v64;
  v73[0] = v63;
  v73[1] = v64;
  v51 = v65;
  v50 = v66;
  v73[2] = v65;
  v73[3] = v66;
  v52 = &v41[v42];
  *(v52 + 8) = v71;
  *(v52 + 9) = v43;
  *(v52 + 154) = *(v72 + 10);
  *(v52 + 4) = v44;
  *(v52 + 5) = v45;
  *(v52 + 6) = v47;
  *(v52 + 7) = v46;
  *v52 = v48;
  *(v52 + 1) = v49;
  *(v52 + 2) = v51;
  *(v52 + 3) = v50;
  sub_1000065C0(v73, &v75, &qword_1000104D0, &qword_100008928);
  v53 = *(v7 + 8);
  v53(v40, v6);
  v78[5] = v71;
  v78[6] = v72[0];
  *(&v78[6] + 10) = *(v72 + 10);
  v78[1] = v67;
  v78[2] = v68;
  v78[3] = v69;
  v78[4] = v70;
  v75 = v63;
  v76 = v64;
  v77 = v65;
  v78[0] = v66;
  sub_100006628(&v75, &qword_1000104D0, &qword_100008928);
  v53(v10, v6);
}

uint64_t sub_10000254C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_100007B80();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001898(&qword_1000104A0, &qword_1000088E0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  *(&v24 - 2) = a1;
  sub_100001898(&qword_1000104D8, &qword_100008930);
  sub_1000060E0();
  sub_100007E50();
  sub_100007B70();
  sub_100006C08(&qword_1000104A8, &qword_1000104A0, &qword_1000088E0, &protocol conformance descriptor for GroupBox<A, B>);
  sub_100005FF8();
  v12 = v25;
  sub_100007DC0();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v13 = sub_100007CF0();
  sub_100007BF0();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  result = sub_100001898(&qword_100010490, &qword_1000088D8);
  v23 = v12 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_100002854(uint64_t *a1)
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1[2];
  v3 = a1[3];
  v11 = v2;
  v12 = v3;
  sub_100001898(&qword_100010468, &qword_1000088B8);
  sub_100007E00();
  v4 = *(v17 + 16);
  if (v4 >= 2)
  {
    v4 = 2;
  }

  v11 = v17;
  v12 = v17 + 32;
  v13 = 0;
  v14 = (2 * v4) | 1;
  swift_getKeyPath();
  v5 = *a1;
  v18 = *(a1 + 8);
  v19 = v2;
  v20 = v3;
  v6 = a1[5];
  v16 = a1[4];
  v17 = v5;
  v15 = v6;
  v7 = swift_allocObject();
  v8 = *(a1 + 1);
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a1 + 2);
  *(v7 + 64) = a1[6];
  sub_1000065C0(&v17, v10, &qword_100010428, &qword_100008878);
  sub_1000065C0(&v19, v10, &qword_1000103C0, &qword_100008688);
  sub_1000065C0(&v20, v10, &qword_100010430, &qword_100008880);
  sub_1000065C0(&v16, v10, &qword_1000103C8, &qword_100008690);
  sub_1000065C0(&v15, v10, &qword_100010438, &qword_100008888);
  sub_100001898(&qword_1000104F8, &qword_100008960);
  sub_100001898(&qword_1000104F0, &qword_100008938);
  sub_100006C08(&qword_100010500, &qword_1000104F8, &qword_100008960, &protocol conformance descriptor for ArraySlice<A>);
  sub_100006C08(&qword_1000104E8, &qword_1000104F0, &qword_100008938, &protocol conformance descriptor for TupleView<A>);
  sub_100007E30();
}

void *sub_100002B14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v69 = a3;
  v61 = sub_100007BA0();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100001898(&qword_100010508, &qword_100008968);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v58 = &v58 - v6;
  v78 = sub_100007AE0();
  v7 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001898(&qword_100010510, &qword_100008970);
  v10 = __chkstk_darwin(v9 - 8);
  v67 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v58 - v12;
  v83 = sub_100007A70();
  v79 = *(v83 - 8);
  v14 = __chkstk_darwin(v83);
  v82 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v58 - v16;
  v17 = *a1;
  v80 = a1[1];
  v18 = a1[3];
  v63 = a1[2];
  v19 = sub_100007EF0();
  v64 = sub_100007EE0();
  v76 = v19;
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v66 = v13;
  v62 = a2;
  v86 = *(a2 + 32);

  v65 = v18;

  sub_100001898(&qword_100010460, &qword_1000088B0);
  sub_100007E00();
  result = v85;
  v75 = v85[2];
  if (!v75)
  {
    v22 = &_swiftEmptyArrayStorage;
LABEL_20:

    v36 = v62;
    v86 = *(v62 + 16);
    sub_100001898(&qword_100010468, &qword_1000088B8);
    sub_100007E00();
    v37 = v85[2];

    v38 = v66;
    if (v37 > 1)
    {
      v86 = *(v36 + 16);
      sub_100007E00();
      if (v85[2])
      {
        v40 = v85[4];
        v39 = v85[5];

        if (v17 == v40 && v80 == v39)
        {

LABEL_27:
          v42 = v58;
          sub_100007E20();
          v43 = v60;
          v44 = v59;
          v45 = v61;
          (*(v60 + 104))(v59, enum case for LogoStyle.welcomeIcon(_:), v61);
          sub_100007B90();
          v47 = v46;
          (*(v43 + 8))(v44, v45);
          v48 = sub_100007D00();
          v49 = v70;
          v50 = v42 + *(v70 + 36);
          *v50 = v48;
          *(v50 + 8) = 0;
          *(v50 + 16) = v47 + 20.0;
          *(v50 + 24) = 0;
          *(v50 + 32) = 0;
          *(v50 + 40) = 0;
          sub_1000061F4(v42, v38);
          v51 = v49;
          v52 = 0;
LABEL_29:
          (*(v68 + 56))(v38, v52, 1, v51);
          v53 = v67;
          sub_1000065C0(v38, v67, &qword_100010510, &qword_100008970);
          v54 = v69;
          v55 = v80;
          *v69 = v17;
          v54[1] = v55;
          v56 = v65;
          v54[2] = v63;
          v54[3] = v56;
          v54[4] = v22;
          v57 = sub_100001898(&qword_100010518, &qword_100008978);
          sub_1000065C0(v53, v54 + *(v57 + 48), &qword_100010510, &qword_100008970);

          sub_100006628(v38, &qword_100010510, &qword_100008970);
          sub_100006628(v53, &qword_100010510, &qword_100008970);
        }

        v41 = sub_100007F70();

        if (v41)
        {
          goto LABEL_27;
        }
      }

      else
      {
      }
    }

    v52 = 1;
    v51 = v70;
    goto LABEL_29;
  }

  v21 = 0;
  v73 = (v7 + 8);
  v74 = v79 + 16;
  v71 = (v79 + 8);
  v81 = (v79 + 32);
  v22 = &_swiftEmptyArrayStorage;
  v72 = v17;
  while (v21 < result[2])
  {
    v23 = v17;
    v24 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v25 = result;
    v26 = *(v79 + 72);
    (*(v79 + 16))(v84, result + v24 + v26 * v21, v83);
    sub_100007EE0();
    sub_100007ED0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v27 = v77;
    sub_100007A40();
    v28 = sub_100007AD0();
    v30 = v29;
    (*v73)(v27, v78);
    v17 = v23;
    if (v28 == v23 && v30 == v80)
    {

LABEL_14:
      v32 = *v81;
      (*v81)(v82, v84, v83);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100004DF0(0, *(v22 + 2) + 1, 1);
        v22 = v86;
      }

      v35 = *(v22 + 2);
      v34 = *(v22 + 3);
      if (v35 >= v34 >> 1)
      {
        sub_100004DF0((v34 > 1), v35 + 1, 1);
        v22 = v86;
      }

      *(v22 + 2) = v35 + 1;
      v32(&v22[v24 + v35 * v26], v82, v83);
      v17 = v72;
      goto LABEL_6;
    }

    v31 = sub_100007F70();

    if (v31)
    {
      goto LABEL_14;
    }

    (*v71)(v84, v83);
LABEL_6:
    result = v25;
    if (v75 == ++v21)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000033C4(uint64_t a1)
{
  v64 = a1;
  v65 = sub_100007BE0();
  v59 = *(v65 - 1);
  __chkstk_darwin(v65);
  v58 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100007AE0();
  v56 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100007A70();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v73 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_100007B40();
  v66 = *(v68 - 1);
  __chkstk_darwin(v68);
  v67 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100007C80();
  v5 = *(v57 - 8);
  __chkstk_darwin(v57);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100007B10();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007EF0();
  v62 = sub_100007EE0();
  v69 = v10;
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v63 = v9;
  sub_100007B00();
  sub_100001898(&qword_100010448, &qword_100008898);
  v11 = sub_100007AB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100008510;
  v16 = v15 + v14;
  v17 = *(v12 + 104);
  v17(v15 + v14, enum case for BackgroundRefreshReminderWindow.confirmation(_:), v11);
  v17(v16 + v13, enum case for BackgroundRefreshReminderWindow.expiry(_:), v11);
  v17(v16 + 2 * v13, enum case for BackgroundRefreshReminderWindow.normal(_:), v11);
  sub_100001898(&qword_100010450, &qword_1000088A0);
  v18 = sub_100007AC0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100008520;
  v23 = v22 + v21;
  v24 = *(v19 + 104);
  v24(v22 + v21, enum case for BackgroundRefreshUserPreference.allow(_:), v18);
  v24(v23 + v20, enum case for BackgroundRefreshUserPreference.unasked(_:), v18);
  v25 = v64;
  v78 = *(v64 + 8);
  v26 = *v64;
  v77 = *v64;
  if (v78 == 1)
  {
    v27 = v26;
  }

  else
  {

    sub_100007F10();
    v28 = sub_100007CE0();
    sub_100007BB0();

    sub_100007C70();
    swift_getAtKeyPath();
    sub_100006628(&v77, &qword_100010428, &qword_100008878);
    (*(v5 + 8))(v7, v57);
    v27 = v75;
  }

  v29 = v67;
  sub_100007B30();
  v30 = v63;
  v31 = sub_100007AF0();
  v66[1](v29, v68);

  v75 = *(v25 + 32);
  v76 = v31;
  sub_100001898(&qword_100010460, &qword_1000088B0);
  sub_100007E10();
  v75 = *(v25 + 32);
  sub_100007E00();
  v32 = v76;
  v33 = v76[2];
  if (v33)
  {
    *&v75 = &_swiftEmptyArrayStorage;
    sub_100004E10(0, v33, 0);
    v68 = *(v72 + 16);
    v34 = v75;
    v35 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v59 = v32;
    v36 = v32 + v35;
    v67 = *(v72 + 72);
    v72 += 16;
    v65 = (v72 - 8);
    v66 = (v56 + 8);
    do
    {
      v68(v73, v36, v74);
      sub_100007EE0();
      sub_100007ED0();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v37 = v70;
      v38 = v73;
      sub_100007A40();
      v39 = sub_100007AD0();
      v41 = v40;
      (*v66)(v37, v71);
      v42 = sub_100007A60();
      v44 = v43;
      (*v65)(v38, v74);

      *&v75 = v34;
      v46 = v34[2];
      v45 = v34[3];
      if (v46 >= v45 >> 1)
      {
        sub_100004E10((v45 > 1), v46 + 1, 1);
        v34 = v75;
      }

      v34[2] = v46 + 1;
      v47 = &v34[4 * v46];
      v47[4] = v39;
      v47[5] = v41;
      v47[6] = v42;
      v47[7] = v44;
      v36 += v67;
      --v33;
    }

    while (v33);

    v30 = v63;
    v25 = v64;
  }

  else
  {

    v34 = &_swiftEmptyArrayStorage;
  }

  v50 = sub_100005DB8(v34, v48, v49);

  v51 = *(v50 + 16);
  if (!v51)
  {
    goto LABEL_18;
  }

  v52 = sub_100004D08(*(v50 + 16), 0);
  v53 = sub_100005C38(&v75, v52 + 4, v51, v50);
  sub_100005E74(v75);
  if (v53 != v51)
  {
    __break(1u);
LABEL_18:

    v52 = &_swiftEmptyArrayStorage;
  }

  v75 = *(v25 + 16);
  v76 = v52;
  sub_100001898(&qword_100010468, &qword_1000088B8);
  sub_100007E10();
  (*(v60 + 8))(v30, v61);
}

uint64_t sub_100003F3C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = sub_100007BA0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100007B60();
  v7 = *(v36 - 8);
  v8 = __chkstk_darwin(v36);
  v34 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  sub_100007EF0();
  v33 = sub_100007EE0();
  sub_100007ED0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v4 + 104))(v6, enum case for LogoStyle.welcomeIcon(_:), v3);

  sub_100007B50();
  v12 = sub_100007CB0();
  v13 = v11;
  v32 = v11;
  v14 = v12;
  v38 = 1;
  sub_100004358(a1, &v49);
  v41 = *&v50[16];
  v42 = *&v50[32];
  v43 = *&v50[48];
  v44 = v50[64];
  v39 = v49;
  v40 = *v50;
  v46 = v50[64];
  v45[2] = *&v50[16];
  v45[3] = *&v50[32];
  v45[4] = *&v50[48];
  v45[0] = v49;
  v45[1] = *v50;
  sub_1000065C0(&v39, v47, &qword_100010578, &qword_100008A48);
  sub_100006628(v45, &qword_100010578, &qword_100008A48);
  *&v37[39] = v41;
  *&v37[55] = v42;
  *&v37[71] = v43;
  *&v37[7] = v39;
  v37[87] = v44;
  *&v37[23] = v40;
  v15 = v38;
  v16 = *(v7 + 16);
  v17 = v34;
  v18 = v13;
  v19 = v36;
  v16(v34, v18, v36);
  v38 = 1;
  v20 = v35;
  v16(v35, v17, v19);
  v21 = sub_100001898(&qword_100010580, &qword_100008A50);
  v22 = &v20[*(v21 + 48)];
  v47[0] = v14;
  v47[1] = 0;
  LOBYTE(v48[0]) = v15;
  *(v48 + 1) = *v37;
  *(&v48[1] + 1) = *&v37[16];
  *(&v48[2] + 1) = *&v37[32];
  *(&v48[5] + 1) = *&v37[80];
  *(&v48[4] + 1) = *&v37[64];
  *(&v48[3] + 1) = *&v37[48];
  v23 = v48[0];
  *v22 = v14;
  *(v22 + 1) = v23;
  v24 = v48[1];
  v25 = v48[2];
  *(v22 + 89) = *(&v48[4] + 9);
  v26 = v48[4];
  *(v22 + 4) = v48[3];
  *(v22 + 5) = v26;
  *(v22 + 2) = v24;
  *(v22 + 3) = v25;
  v27 = &v20[*(v21 + 64)];
  v28 = v38;
  *v27 = 0;
  v27[8] = v28;
  sub_1000065C0(v47, &v49, &qword_100010588, &qword_100008A58);
  v29 = *(v7 + 8);
  v29(v32, v19);
  *&v50[33] = *&v37[32];
  *&v50[49] = *&v37[48];
  v51 = *&v37[64];
  *&v50[1] = *v37;
  v49 = v14;
  v50[0] = v15;
  v52 = *&v37[80];
  *&v50[17] = *&v37[16];
  sub_100006628(&v49, &qword_100010588, &qword_100008A58);
  v29(v17, v19);
}

uint64_t sub_100004358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100007EF0();
  sub_100007EE0();
  sub_100007ED0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  sub_100006050(isCurrentExecutor, v5, v6);

  v7 = sub_100007D90();
  v9 = v8;
  v39 = a1;
  v11 = v10;
  sub_100007D20();
  v12 = sub_100007D80();
  v14 = v13;
  v16 = v15;

  sub_1000060A4(v7, v9, v11 & 1);

  sub_100007D30();
  v17 = sub_100007D60();
  v41 = v18;
  v42 = v17;
  v40 = v19;
  v43 = v20;
  sub_1000060A4(v12, v14, v16 & 1);

  sub_100006688(*(v39 + 32));
  v21 = sub_100007D90();
  v23 = v22;
  v25 = v24;
  sub_100007CD0();
  v26 = sub_100007D70();
  v28 = v27;
  LOBYTE(v7) = v29;
  sub_1000060A4(v21, v23, v25 & 1);

  sub_100007D50();
  v30 = sub_100007D80();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_1000060A4(v26, v28, v7 & 1);

  KeyPath = swift_getKeyPath();
  *a2 = v42;
  *(a2 + 8) = v41;
  *(a2 + 16) = v40 & 1;
  *(a2 + 24) = v43;
  *(a2 + 32) = v30;
  *(a2 + 40) = v32;
  *(a2 + 48) = v34 & 1;
  *(a2 + 56) = v36;
  *(a2 + 64) = KeyPath;
  *(a2 + 72) = 2;
  *(a2 + 80) = 0;
  sub_100006B3C(v42, v41, v40 & 1);

  sub_100006B3C(v30, v32, v34 & 1);

  sub_1000060A4(v30, v32, v34 & 1);

  sub_1000060A4(v42, v41, v40 & 1);
}

uint64_t sub_100004680@<X0>(uint64_t a6@<X8>)
{
  v8 = *(v6 + 16);
  v21[0] = *v6;
  v21[1] = v8;
  v22 = *(v6 + 32);
  *a6 = sub_100007C90();
  *(a6 + 8) = 0x4024000000000000;
  *(a6 + 16) = 0;
  v9 = sub_100001898(&qword_100010568, &qword_100008A38);
  sub_100003F3C(v21, (a6 + *(v9 + 44)));
  v10 = sub_100007D00();
  sub_100007BF0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = sub_100001898(&qword_100010570, &qword_100008A40);
  v20 = a6 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_100004748@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_100007C80();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065C0(v2, v10, &qword_1000103D0, &qword_100008698);
  if (v11 == 1)
  {
    return sub_100004948(v10, a1);
  }

  sub_100007F10();
  v9 = sub_100007CE0();
  sub_100007BB0();

  sub_100007C70();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

void *sub_1000048B8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000048FC(void *a1)
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

uint64_t sub_100004948(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 sub_100004960(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000496C(uint64_t a1, int a2)
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

uint64_t sub_1000049B4(uint64_t result, int a2, int a3)
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

uint64_t sub_100004A10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100004A58(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_100004AB8()
{
  result = qword_1000103D8;
  if (!qword_1000103D8)
  {
    v1 = sub_100004B70(&qword_1000103E0, &qword_100008790);
    sub_100004BB8(v1, v2, v3);
    sub_100006C08(&qword_1000103F0, &qword_1000103F8, &qword_100008798, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103D8);
  }

  return result;
}

uint64_t sub_100004B70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100004BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000103E8;
  if (!qword_1000103E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000103E8);
  }

  return result;
}

unint64_t sub_100004C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100010400;
  if (!qword_100010400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010400);
  }

  return result;
}

void sub_100004C84(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100004C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001898(&qword_100010408, &qword_100008858);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100004D08(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001898(&qword_100010470, &qword_1000088C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_100004D8C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100007C50();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void *sub_100004DF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100004E50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004E10(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100005028(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100004E30(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100005134(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100004E50(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100001898(&qword_100010520, &qword_100008980);
  v10 = *(sub_100007A70() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100007A70() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100005028(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001898(&qword_100010470, &qword_1000088C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100005134(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001898(&qword_1000105C0, &qword_100008A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100005240(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_100007F90();
  sub_100007E90();
  sub_100007E90();
  v11 = sub_100007FA0();
  v12 = v10 + 56;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_100007F70() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_100007F70() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v22 = (*(v28 + 48) + 32 * v14);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    *a1 = *v22;
    a1[1] = v23;
    a1[2] = v24;
    a1[3] = v25;

    return 0;
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_10000569C(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t sub_100005418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001898(&qword_100010480, &qword_1000088C8);
  result = sub_100007F40();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_100007F90();
      sub_100007E90();
      sub_100007E90();
      result = sub_100007FA0();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10000569C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a6)
  {
    sub_100005418(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_100005868();
      goto LABEL_22;
    }

    sub_1000059D4(v12 + 1);
  }

  v14 = *v6;
  sub_100007F90();
  sub_100007E90();
  sub_100007E90();
  result = sub_100007FA0();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    while (1)
    {
      v19 = (v18 + 32 * a5);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_100007F70(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          break;
        }

        result = sub_100007F70();
        if (result)
        {
          break;
        }
      }

      a5 = (a5 + 1) & v17;
      if (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    result = sub_100007F80();
    __break(1u);
  }

LABEL_22:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void *sub_100005868()
{
  v1 = v0;
  sub_100001898(&qword_100010480, &qword_1000088C8);
  v2 = *v0;
  v3 = sub_100007F30();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000059D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001898(&qword_100010480, &qword_1000088C8);
  result = sub_100007F40();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_100007F90();

      sub_100007E90();
      sub_100007E90();
      result = sub_100007FA0();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_100005C38(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v24 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + ((v12 << 11) | (32 * v17)));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      v11[3] = v21;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 4;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v24;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_100005DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  sub_100005E80(a1, a2, a3);
  result = sub_100007F00();
  v12 = result;
  if (v4)
  {
    v6 = (a1 + 56);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v10 = *(v6 - 3);
      v9 = *(v6 - 2);

      sub_100005240(&v11, v10, v9, v8, v7);

      v6 += 4;
      --v4;
    }

    while (v4);
    return v12;
  }

  return result;
}

unint64_t sub_100005E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100010478;
  if (!qword_100010478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010478);
  }

  return result;
}

unint64_t sub_100005EDC()
{
  result = qword_100010498;
  if (!qword_100010498)
  {
    sub_100004B70(&qword_100010490, &qword_1000088D8);
    sub_100004B70(&qword_1000104A0, &qword_1000088E0);
    sub_100007B80();
    sub_100006C08(&qword_1000104A8, &qword_1000104A0, &qword_1000088E0, &protocol conformance descriptor for GroupBox<A, B>);
    sub_100005FF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010498);
  }

  return result;
}

unint64_t sub_100005FF8()
{
  result = qword_1000104B0;
  if (!qword_1000104B0)
  {
    sub_100007B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104B0);
  }

  return result;
}

unint64_t sub_100006050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000104C0;
  if (!qword_1000104C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104C0);
  }

  return result;
}

uint64_t sub_1000060A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double sub_1000060B8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 154) = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_1000060E0()
{
  result = qword_1000104E0;
  if (!qword_1000104E0)
  {
    sub_100004B70(&qword_1000104D8, &qword_100008930);
    sub_100006C08(&qword_1000104E8, &qword_1000104F0, &qword_100008938, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000104E0);
  }

  return result;
}

uint64_t sub_100006190()
{
  sub_100004C84(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000061F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001898(&qword_100010508, &qword_100008968);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_100006264(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000062C0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10000631C()
{
  result = qword_100010528;
  if (!qword_100010528)
  {
    sub_100004B70(&qword_100010440, &qword_100008890);
    sub_1000063A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010528);
  }

  return result;
}

unint64_t sub_1000063A8()
{
  result = qword_100010530;
  if (!qword_100010530)
  {
    sub_100004B70(&qword_100010408, &qword_100008858);
    sub_100006460();
    sub_100006C08(&qword_100010558, &qword_100010560, qword_1000089E0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010530);
  }

  return result;
}

unint64_t sub_100006460()
{
  result = qword_100010538;
  if (!qword_100010538)
  {
    sub_100004B70(&qword_100010420, &qword_100008870);
    sub_1000064EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010538);
  }

  return result;
}

unint64_t sub_1000064EC()
{
  result = qword_100010540;
  if (!qword_100010540)
  {
    sub_100004B70(&qword_100010418, &qword_100008868);
    sub_100006C08(&qword_100010548, &qword_100010550, "4\n", &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010540);
  }

  return result;
}

uint64_t sub_1000065C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001898(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006628(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001898(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t *sub_100006688(uint64_t a1)
{
  v47 = sub_100007A70();
  v2 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001898(&qword_100010590, &qword_100008A60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = sub_100001898(&qword_100010598, &qword_100008A68);
  v39 = *(v8 - 8);
  v40 = v8;
  __chkstk_darwin(v8);
  v37 = &v35 - v9;
  v10 = sub_100001898(&qword_1000105A0, &qword_100008A70);
  v11 = __chkstk_darwin(v10);
  v38 = &v35 - v12;
  v13 = *(a1 + 16);
  v14 = &_swiftEmptyArrayStorage;
  v42 = v11;
  v43 = v4;
  v41 = v15;
  if (v13)
  {
    v35 = v7;
    v36 = v5;
    v49 = &_swiftEmptyArrayStorage;
    sub_100004E30(0, v13, 0);
    v14 = v49;
    v17 = *(v2 + 16);
    v16 = v2 + 16;
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v44 = *(v16 + 56);
    v45 = v17;
    v19 = (v16 - 8);
    do
    {
      v20 = v46;
      v21 = v47;
      v22 = v16;
      v45(v46, v18, v47);
      v23 = sub_100007A50();
      v25 = v24;
      (*v19)(v20, v21);
      v49 = v14;
      v27 = v14[2];
      v26 = v14[3];
      if (v27 >= v26 >> 1)
      {
        sub_100004E30((v26 > 1), v27 + 1, 1);
        v14 = v49;
      }

      v14[2] = v27 + 1;
      v28 = &v14[2 * v27];
      v28[4] = v23;
      v28[5] = v25;
      v18 += v44;
      --v13;
      v16 = v22;
    }

    while (v13);
    v4 = v43;
    v7 = v35;
    v5 = v36;
  }

  v48 = v14;
  v29 = v39;
  v30 = v40;
  v31 = v37;
  (*(v39 + 104))(v37, enum case for ListFormatStyle.ListType.and<A, B>(_:), v40);
  (*(v5 + 104))(v7, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v4);
  sub_100001898(&qword_1000105A8, &qword_100008A78);
  sub_100006C08(&qword_1000105B0, &qword_1000105A8, &qword_100008A78, &protocol conformance descriptor for [A]);
  v32 = v38;
  sub_100007B20();
  (*(v5 + 8))(v7, v43);
  (*(v29 + 8))(v31, v30);
  sub_100006C08(&qword_1000105B8, &qword_1000105A0, &qword_100008A70, &protocol conformance descriptor for ListFormatStyle<A, B>);
  v33 = v42;
  sub_100007EA0();
  (*(v41 + 8))(v32, v33);

  return v49;
}

uint64_t sub_100006B3C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100006B50()
{
  result = qword_1000105C8;
  if (!qword_1000105C8)
  {
    sub_100004B70(&qword_100010570, &qword_100008A40);
    sub_100006C08(&qword_1000105D0, &qword_1000105D8, qword_100008A88, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000105C8);
  }

  return result;
}

uint64_t sub_100006C08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100004B70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100006F18(uint64_t a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for BankConnectRefreshReminderNotificationExtensionViewController();
  objc_msgSendSuper2(&v18, "viewDidLayoutSubviews");
  v2 = [v1 view];
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  v4 = [v2 subviews];

  sub_1000079F8(0, &unk_100010680, UIView_ptr);
  v5 = sub_100007EC0();

  if (v5 >> 62)
  {
    if (sub_100007F60())
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_100007F50();
LABEL_7:
    v7 = v6;

    v8 = [v1 view];
    if (v8)
    {
      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v19.origin.x = v11;
      v19.origin.y = v13;
      v19.size.width = v15;
      v19.size.height = v17;
      [v7 sizeThatFits:{CGRectGetWidth(v19), 1000.0}];
      [v1 setPreferredContentSize:?];

      return;
    }

    goto LABEL_14;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_10000718C()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    v5 = v4;
    v37[0] = swift_getKeyPath();
    v38 = 0;
    v39 = v5;
    sub_1000078E4(v37, &v36);
    v6 = objc_allocWithZone(sub_100001898(&qword_100010668, &qword_100008B20));
    v7 = sub_100007CC0();
    [v1 addChildViewController:v7];
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_opt_self() clearColor];
      [v9 setBackgroundColor:v10];

      v11 = [v7 view];
      if (v11)
      {
        [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

        v12 = [v7 view];
        if (v12)
        {
          [v3 addSubview:v12];

          [v7 didMoveToParentViewController:v1];
          v13 = [v7 view];

          if (v13)
          {
            v14 = [v13 leadingAnchor];

            v15 = [v3 leadingAnchor];
            v16 = [v14 constraintEqualToAnchor:v15];

            v17 = [v7 view];
            if (v17)
            {
              v18 = [v17 topAnchor];

              v19 = [v3 topAnchor];
              v20 = [v18 constraintEqualToAnchor:v19];

              v21 = [v7 view];
              if (v21)
              {
                v22 = [v21 trailingAnchor];

                v23 = [v3 trailingAnchor];
                v24 = [v22 constraintEqualToAnchor:v23];

                v25 = [v7 view];
                if (v25)
                {
                  v26 = [v25 bottomAnchor];

                  v27 = [v3 bottomAnchor];
                  v28 = [v26 constraintEqualToAnchor:v27];

                  v29 = objc_opt_self();
                  sub_100001898(&qword_100010670, &qword_100008B28);
                  v30 = swift_allocObject();
                  *(v30 + 16) = xmmword_100008AA0;
                  *(v30 + 32) = v16;
                  *(v30 + 40) = v20;
                  *(v30 + 48) = v24;
                  *(v30 + 56) = v28;
                  sub_1000079F8(0, &qword_100010678, NSLayoutConstraint_ptr);
                  v31 = v16;
                  v32 = v20;
                  v33 = v24;
                  v34 = v28;
                  isa = sub_100007EB0().super.isa;

                  [v29 activateConstraints:isa];

                  sub_100007940(v37);
                  return;
                }

LABEL_17:
                __break(1u);
                return;
              }

LABEL_16:
              __break(1u);
              goto LABEL_17;
            }

LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

id sub_100007830(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BankConnectRefreshReminderNotificationExtensionViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100007994(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000079F8(uint64_t a1, unint64_t *a2, void *a3)
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