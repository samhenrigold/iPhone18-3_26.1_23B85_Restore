Swift::Int sub_100002430()
{
  v1 = *v0;
  sub_100014F1C();
  sub_100014F2C(v1);
  return sub_100014F3C();
}

Swift::Int sub_1000024A4(uint64_t a1)
{
  v2 = *v1;
  sub_100014F1C();
  sub_100014F2C(v2);
  return sub_100014F3C();
}

void sub_1000024E8(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_100002500@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100005898(&qword_100021E00, &qword_100018200);
  __chkstk_darwin(v3 - 8);
  v5 = v69 - v4;
  v6 = sub_100005898(&qword_100021E08, &qword_100018208);
  __chkstk_darwin(v6);
  v8 = v69 - v7;
  v9 = sub_100005898(&qword_100021E10, &qword_100018210);
  __chkstk_darwin(v9);
  v11 = v69 - v10;
  v12 = sub_100005898(&qword_100021E18, &qword_100018218);
  __chkstk_darwin(v12);
  v14 = v69 - v13;
  *v5 = sub_100014ACC();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v15 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v75 = a1;
    v69[1] = *(sub_100005898(&qword_100021E20, &unk_100018220) + 44);
    v77 = 0;
    v78 = v15;
    swift_getKeyPath();
    v72 = v6;
    v16 = swift_allocObject();
    v17 = *(v1 + 176);
    *(v16 + 176) = *(v1 + 160);
    *(v16 + 192) = v17;
    *(v16 + 208) = *(v1 + 192);
    v18 = *(v1 + 112);
    *(v16 + 112) = *(v1 + 96);
    *(v16 + 128) = v18;
    v19 = *(v1 + 144);
    *(v16 + 144) = *(v1 + 128);
    *(v16 + 160) = v19;
    v20 = *(v1 + 48);
    *(v16 + 48) = *(v1 + 32);
    *(v16 + 64) = v20;
    v21 = *(v1 + 80);
    *(v16 + 80) = *(v1 + 64);
    *(v16 + 96) = v21;
    v22 = *(v1 + 16);
    *(v16 + 16) = *v1;
    *(v16 + 32) = v22;
    sub_100005CAC(v1, v76);
    sub_100005898(&qword_100021E28, &qword_100018248);
    v70 = v11;
    v23 = v8;
    v73 = v12;
    v71 = v9;
    sub_100005898(&qword_100021E30, &qword_100018250);
    sub_100005CE4();
    v74 = v14;
    sub_100006090(&qword_100021E48, &qword_100021E30, &qword_100018250, &protocol conformance descriptor for VStack<A>);
    sub_100014C7C();
    v24 = sub_100014AFC();
    v25 = objc_opt_self();
    v26 = [v25 currentDevice];
    [v26 userInterfaceIdiom];

    sub_1000149BC();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_100006158(v5, v8, &qword_100021E00, &qword_100018200);
    v35 = &v8[*(v72 + 36)];
    *v35 = v24;
    *(v35 + 1) = v28;
    *(v35 + 2) = v30;
    *(v35 + 3) = v32;
    *(v35 + 4) = v34;
    v35[40] = 0;
    v36 = sub_100014B1C();
    v37 = [v25 currentDevice];
    [v37 userInterfaceIdiom];

    sub_1000149BC();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v70;
    sub_100006158(v23, v70, &qword_100021E08, &qword_100018208);
    v47 = v46 + *(v71 + 36);
    *v47 = v36;
    *(v47 + 8) = v39;
    *(v47 + 16) = v41;
    *(v47 + 24) = v43;
    *(v47 + 32) = v45;
    *(v47 + 40) = 0;
    v48 = sub_100014B2C();
    v49 = v74;
    v50 = [v25 currentDevice];
    v51 = v73;
    [v50 userInterfaceIdiom];

    sub_1000149BC();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    sub_100006158(v46, v49, &qword_100021E10, &qword_100018210);
    v60 = v49 + *(v51 + 36);
    *v60 = v48;
    *(v60 + 8) = v53;
    *(v60 + 16) = v55;
    *(v60 + 24) = v57;
    *(v60 + 32) = v59;
    *(v60 + 40) = 0;
    if (*(v1 + 8))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_10001498C();

      LOBYTE(v77) = v76[0];
      v61 = swift_allocObject();
      v62 = *(v1 + 176);
      *(v61 + 176) = *(v1 + 160);
      *(v61 + 192) = v62;
      *(v61 + 208) = *(v1 + 192);
      v63 = *(v1 + 112);
      *(v61 + 112) = *(v1 + 96);
      *(v61 + 128) = v63;
      v64 = *(v1 + 144);
      *(v61 + 144) = *(v1 + 128);
      *(v61 + 160) = v64;
      v65 = *(v1 + 48);
      *(v61 + 48) = *(v1 + 32);
      *(v61 + 64) = v65;
      v66 = *(v1 + 80);
      *(v61 + 80) = *(v1 + 64);
      *(v61 + 96) = v66;
      v67 = *(v1 + 16);
      *(v61 + 16) = *v1;
      *(v61 + 32) = v67;
      sub_100005CAC(v1, v76);
      sub_100005E4C(&qword_100021E50, &qword_100021E18, &qword_100018218, sub_100005E1C);
      sub_100014B8C();

      return sub_10000645C(v49, &qword_100021E18, &qword_100018218);
    }
  }

  type metadata accessor for AudioManager(0);
  sub_100005840();
  result = sub_100014A0C();
  __break(1u);
  return result;
}

uint64_t sub_100002B74@<X0>(unint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a3;
  v5 = *a1;
  *a3 = sub_100014ACC();
  v4[1] = 0;
  *(v4 + 16) = 1;
  v6 = v4 + *(sub_100005898(&qword_100021E70, &qword_1000182A0) + 44);
  *v6 = sub_100014AAC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100005898(&qword_100021E78, &qword_1000182A8);
  sub_100002D30(a2, v5, &v6[*(v7 + 44)]);
  LOBYTE(a2) = sub_100014B0C();
  v8 = &v6[*(sub_100005898(&qword_100021E80, &qword_1000182B0) + 36)];
  *v8 = a2;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  v8[40] = 1;
  v9 = [objc_opt_self() secondarySystemBackgroundColor];
  v10 = sub_100014B9C();
  LOBYTE(v4) = sub_100014B0C();
  v11 = &v6[*(sub_100005898(&qword_100021E88, &qword_1000182B8) + 36)];
  *v11 = v10;
  v11[8] = v4;
  v12 = &v6[*(sub_100005898(&qword_100021E90, &qword_1000182C0) + 36)];
  v13 = *(sub_1000149FC() + 20);
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = sub_100014ABC();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #12.0 }

  *v12 = _Q0;
  result = sub_100005898(&qword_100021E98, &qword_1000182C8);
  *&v12[*(result + 36)] = 256;
  return result;
}

uint64_t sub_100002D30@<X0>(char *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v94 = sub_100005898(&qword_100021EA0, &qword_1000182D0);
  v5 = __chkstk_darwin(v94);
  v93 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v92 = &v90 - v8;
  v9 = __chkstk_darwin(v7);
  v95 = &v90 - v10;
  __chkstk_darwin(v9);
  v101 = &v90 - v11;
  v12 = sub_100005898(&qword_100021EA8, &qword_1000182D8);
  v13 = __chkstk_darwin(v12 - 8);
  v90 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v103 = (&v90 - v15);
  v16 = sub_100005898(&qword_100021EB0, &qword_1000182E0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v90 - v18;
  v20 = sub_100005898(&qword_100021EB8, &qword_1000182E8);
  v98 = *(v20 - 8);
  v99 = v20;
  __chkstk_darwin(v20);
  v97 = &v90 - v21;
  v96 = sub_100005898(&qword_100021EC0, &qword_1000182F0);
  v22 = __chkstk_darwin(v96);
  v100 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = &v90 - v25;
  __chkstk_darwin(v24);
  v102 = &v90 - v27;
  v28 = swift_allocObject();
  v29 = *(a1 + 11);
  *(v28 + 176) = *(a1 + 10);
  *(v28 + 192) = v29;
  v30 = *(a1 + 24);
  v31 = *(a1 + 7);
  *(v28 + 112) = *(a1 + 6);
  *(v28 + 128) = v31;
  v32 = *(a1 + 9);
  *(v28 + 144) = *(a1 + 8);
  *(v28 + 160) = v32;
  v33 = *(a1 + 3);
  *(v28 + 48) = *(a1 + 2);
  *(v28 + 64) = v33;
  v34 = *(a1 + 5);
  *(v28 + 80) = *(a1 + 4);
  *(v28 + 96) = v34;
  v35 = *(a1 + 1);
  *(v28 + 16) = *a1;
  *(v28 + 32) = v35;
  *(v28 + 208) = v30;
  *(v28 + 216) = a2;
  v104 = a1;
  v105 = a2;
  sub_100005CAC(a1, v107);
  sub_100005898(&qword_100021EC8, &qword_1000182F8);
  sub_100005FA4();
  sub_100014C4C();
  if (!*(a1 + 1))
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001498C();

  LOBYTE(v108) = v107[0];
  v36 = swift_allocObject();
  v37 = *(a1 + 11);
  *(v36 + 176) = *(a1 + 10);
  *(v36 + 192) = v37;
  v38 = *(a1 + 24);
  v39 = *(a1 + 7);
  *(v36 + 112) = *(a1 + 6);
  *(v36 + 128) = v39;
  v40 = *(a1 + 9);
  *(v36 + 144) = *(a1 + 8);
  *(v36 + 160) = v40;
  v41 = *(a1 + 3);
  *(v36 + 48) = *(a1 + 2);
  *(v36 + 64) = v41;
  v42 = *(a1 + 5);
  *(v36 + 80) = *(a1 + 4);
  *(v36 + 96) = v42;
  v43 = *(a1 + 1);
  *(v36 + 16) = *a1;
  *(v36 + 32) = v43;
  *(v36 + 208) = v38;
  *(v36 + 216) = a2;
  sub_100005CAC(a1, v107);
  sub_100006090(&qword_100021EF8, &qword_100021EB0, &qword_1000182E0, &protocol conformance descriptor for Button<A>);
  v44 = v97;
  sub_100014B8C();

  (*(v17 + 8))(v19, v16);
  v107[0] = *(a1 + 152);
  sub_100005898(&qword_100021F00, &qword_1000187F0);
  sub_100014C2C();
  v45 = v108;
  KeyPath = swift_getKeyPath();
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  (*(v98 + 32))(v26, v44, v99);
  v48 = &v26[*(v96 + 36)];
  *v48 = KeyPath;
  v48[1] = sub_100006140;
  v48[2] = v47;
  sub_100006158(v26, v102, &qword_100021EC0, &qword_1000182F0);
  v49 = sub_100014ADC();
  v50 = v103;
  *v103 = v49;
  v50[1] = 0;
  *(v50 + 16) = 1;
  v51 = sub_100005898(&qword_100021F08, &qword_100018390);
  sub_1000045F4(a2, v50 + *(v51 + 44));
  v52 = swift_allocObject();
  v53 = *(a1 + 11);
  *(v52 + 176) = *(a1 + 10);
  *(v52 + 192) = v53;
  v54 = *(a1 + 24);
  v55 = *(a1 + 7);
  *(v52 + 112) = *(a1 + 6);
  *(v52 + 128) = v55;
  v56 = *(a1 + 9);
  *(v52 + 144) = *(a1 + 8);
  *(v52 + 160) = v56;
  v57 = *(a1 + 3);
  *(v52 + 48) = *(a1 + 2);
  *(v52 + 64) = v57;
  v58 = *(a1 + 5);
  *(v52 + 80) = *(a1 + 4);
  *(v52 + 96) = v58;
  v59 = *(a1 + 1);
  *(v52 + 16) = *a1;
  *(v52 + 32) = v59;
  *(v52 + 208) = v54;
  *(v52 + 216) = a2;
  __chkstk_darwin(v52);
  *(&v90 - 2) = a1;
  *(&v90 - 1) = a2;
  sub_100005CAC(a1, v107);
  sub_100005898(&qword_100021F10, &qword_100018398);
  sub_1000061EC();
  v60 = v101;
  sub_100014C4C();
  v108 = *(a1 + 56);
  v107[0] = *(a1 + 56);
  sub_100005898(&qword_100021F40, &qword_1000183B0);
  sub_100014C2C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v106 + 16) > a2)
  {
    v61 = v60;
    v62 = *(v106 + a2 + 32);

    v63 = swift_getKeyPath();
    v64 = swift_allocObject();
    *(v64 + 16) = (v62 & 1) == 0;
    v65 = v94;
    v66 = &v61[*(v94 + 36)];
    *v66 = v63;
    v66[1] = sub_1000069D4;
    v66[2] = v64;
    v67 = swift_allocObject();
    v68 = *(a1 + 11);
    *(v67 + 176) = *(a1 + 10);
    *(v67 + 192) = v68;
    v69 = *(a1 + 24);
    v70 = *(a1 + 7);
    *(v67 + 112) = *(a1 + 6);
    *(v67 + 128) = v70;
    v71 = *(a1 + 9);
    *(v67 + 144) = *(a1 + 8);
    *(v67 + 160) = v71;
    v72 = *(a1 + 3);
    *(v67 + 48) = *(a1 + 2);
    *(v67 + 64) = v72;
    v73 = *(a1 + 5);
    *(v67 + 80) = *(a1 + 4);
    *(v67 + 96) = v73;
    v74 = *(a1 + 1);
    *(v67 + 16) = *a1;
    *(v67 + 32) = v74;
    *(v67 + 208) = v69;
    *(v67 + 216) = a2;
    __chkstk_darwin(v67);
    *(&v90 - 2) = a1;
    *(&v90 - 1) = a2;
    sub_100005CAC(a1, v107);
    v75 = v95;
    sub_100014C4C();
    v107[0] = v108;
    sub_100014C2C();
    if (*(v106 + 16) > a2)
    {
      v76 = *(v106 + a2 + 32);

      v77 = swift_getKeyPath();
      v78 = swift_allocObject();
      *(v78 + 16) = (v76 & 1) == 0;
      v79 = (v75 + *(v65 + 36));
      *v79 = v77;
      v79[1] = sub_1000069D4;
      v79[2] = v78;
      v80 = v100;
      sub_1000063EC(v102, v100);
      v81 = v101;
      v82 = v90;
      sub_1000067A0(v103, v90, &qword_100021EA8, &qword_1000182D8);
      v83 = v92;
      sub_1000067A0(v81, v92, &qword_100021EA0, &qword_1000182D0);
      v84 = v93;
      sub_1000067A0(v75, v93, &qword_100021EA0, &qword_1000182D0);
      v85 = v91;
      sub_1000063EC(v80, v91);
      v86 = v75;
      v87 = sub_100005898(&qword_100021F48, &qword_1000183B8);
      sub_1000067A0(v82, v85 + v87[12], &qword_100021EA8, &qword_1000182D8);
      v88 = v85 + v87[16];
      *v88 = 0;
      *(v88 + 8) = 1;
      sub_1000067A0(v83, v85 + v87[20], &qword_100021EA0, &qword_1000182D0);
      sub_1000067A0(v84, v85 + v87[24], &qword_100021EA0, &qword_1000182D0);
      sub_10000645C(v86, &qword_100021EA0, &qword_1000182D0);
      sub_10000645C(v81, &qword_100021EA0, &qword_1000182D0);
      sub_10000645C(v103, &qword_100021EA8, &qword_1000182D8);
      sub_10000645C(v102, &qword_100021EC0, &qword_1000182F0);
      sub_10000645C(v84, &qword_100021EA0, &qword_1000182D0);
      sub_10000645C(v83, &qword_100021EA0, &qword_1000182D0);
      sub_10000645C(v82, &qword_100021EA8, &qword_1000182D8);
      return sub_10000645C(v100, &qword_100021EC0, &qword_1000182F0);
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  type metadata accessor for AudioManager(0);
  sub_100005840();
  result = sub_100014A0C();
  __break(1u);
  return result;
}

uint64_t sub_100003824(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    goto LABEL_13;
  }

  v7 = qword_1000219A0;

  if (v7 == -1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  swift_once();
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = *(qword_100022C40 + 32);
  if (*(v8 + 16) <= a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8 + 16 * a2;
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);

  sub_10000DCBC(v10, v11);

  v14 = *(a1 + 152);
  LOBYTE(v13[0]) = 1;
  sub_100005898(&qword_100021F00, &qword_1000187F0);
  sub_100014C3C();
  v14 = *(a1 + 120);
  v13[0] = a2;
  sub_100005898(&qword_100021F88, &qword_100018480);
  sub_100014C3C();
  sub_100003A84(a2);
  v7 = sub_100014BBC();
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  v15 = v3;
  v16 = v2;
  *&v14 = v2;
  *(&v14 + 1) = v3;
  sub_1000067A0(&v16, v13, &qword_100021FB0, &qword_1000184A8);
  sub_1000067A0(&v15, v13, &qword_100021FB8, &qword_1000184B0);
  sub_100005898(&qword_100021FC0, qword_1000184B8);
  sub_100014C2C();
  v5 = v13[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_11:
    v5 = sub_1000052B0(v5);
  }

  if (*(v5 + 2) > a2)
  {
    *&v5[16 * a2 + 40] = v7;

    v13[0] = v2;
    v13[1] = v3;
    sub_100014C3C();
    sub_10000645C(&v16, &qword_100021FB0, &qword_1000184A8);
    return sub_10000645C(&v15, &qword_100021FB8, &qword_1000184B0);
  }

  __break(1u);
LABEL_13:
  type metadata accessor for AudioManager(0);
  sub_100005840();
  result = sub_100014A0C();
  __break(1u);
  return result;
}

uint64_t sub_100003A84(unint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  v32 = v5;
  v33 = v4;
  v22 = v4;
  v23 = v5;
  sub_1000067A0(&v33, &aBlock, &qword_100021FB0, &qword_1000184A8);
  sub_1000067A0(&v32, &aBlock, &qword_100021FB8, &qword_1000184B0);
  v6 = sub_100005898(&qword_100021FC0, qword_1000184B8);
  sub_100014C2C();
  v7 = v31;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = sub_1000052B0(v7);
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (*(v7 + 2) > a1)
  {
    v7[16 * a1 + 32] = 1;
    aBlock = v4;
    v25 = v5;
    v30 = v7;
    sub_100014C3C();
    sub_10000645C(&v33, &qword_100021FB0, &qword_1000184A8);
    sub_10000645C(&v32, &qword_100021FB8, &qword_1000184B0);
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v10 = *(v2 + 176);
    *(v9 + 176) = *(v2 + 160);
    *(v9 + 192) = v10;
    v11 = *(v2 + 192);
    v12 = *(v2 + 112);
    *(v9 + 112) = *(v2 + 96);
    *(v9 + 128) = v12;
    v13 = *(v2 + 144);
    *(v9 + 144) = *(v2 + 128);
    *(v9 + 160) = v13;
    v14 = *(v2 + 48);
    *(v9 + 48) = *(v2 + 32);
    *(v9 + 64) = v14;
    v15 = *(v2 + 80);
    *(v9 + 80) = *(v2 + 64);
    *(v9 + 96) = v15;
    v16 = *(v2 + 16);
    *(v9 + 16) = *v2;
    *(v9 + 32) = v16;
    *(v9 + 208) = v11;
    *(v9 + 216) = a1;
    v28 = sub_1000068CC;
    v29 = v9;
    aBlock = _NSConcreteStackBlock;
    v25 = 1107296256;
    v26 = sub_100007D30;
    v27 = &unk_10001D140;
    v17 = _Block_copy(&aBlock);
    sub_100005CAC(v2, &v22);

    v6 = [v8 scheduledTimerWithTimeInterval:1 repeats:v17 block:0.5];
    _Block_release(v17);
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v30 = v5;
    v31 = v4;
    v22 = v4;
    v23 = v5;
    sub_1000067A0(&v31, &aBlock, &qword_100021DE8, &qword_100017FE0);
    sub_1000067A0(&v30, &aBlock, &qword_100021FA0, &qword_100018498);
    sub_100005898(&qword_100021FA8, &qword_1000184A0);
    sub_100014C2C();
    v7 = v21;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  __break(1u);
LABEL_10:
  result = sub_10000529C(v7);
  v7 = result;
LABEL_5:
  if (*(v7 + 2) <= a1)
  {
    __break(1u);
  }

  else
  {
    v19 = &v7[8 * a1];
    v20 = *(v19 + 4);
    *(v19 + 4) = v6;

    aBlock = v4;
    v25 = v5;
    sub_100014C3C();
    sub_10000645C(&v31, &qword_100021DE8, &qword_100017FE0);
    return sub_10000645C(&v30, &qword_100021FA0, &qword_100018498);
  }

  return result;
}

void *sub_100003DB4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100014BFC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 136);
  v21 = *(a1 + 136);
  sub_100005898(&qword_100021FC0, qword_1000184B8);
  result = sub_100014C2C();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v20;
  if (*(v20 + 16) <= a2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_100014BEC();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v18 = sub_100014C0C();

  (*(v7 + 8))(v9, v6);
  sub_100014C8C();
  sub_1000149DC();
  v11 = v21;
  v12 = BYTE8(v21);
  v13 = v22;
  v14 = v23;
  v16 = v24;
  v15 = v25;
  v20 = v26;
  result = sub_100014C2C();
  if (*(v19 + 16) > a2)
  {
    v17 = *(v19 + 16 * a2 + 40);

    result = swift_getKeyPath();
    LOBYTE(v20) = v12;
    LOBYTE(v19) = v14;
    *a3 = v18;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    *(a3 + 24) = v13;
    *(a3 + 32) = v14;
    *(a3 + 40) = v16;
    *(a3 + 48) = v15;
    *(a3 + 56) = result;
    *(a3 + 64) = v17;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100004034(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 8))
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001498C();

  if ((v12[0] & 1) == 0)
  {
  }

  v4 = sub_100014D9C();
  if (qword_1000219A8 != -1)
  {
    swift_once();
  }

  v5 = qword_100022C48;
  if (os_log_type_enabled(qword_100022C48, v4))
  {
    sub_100005CAC(a1, v12);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = a2;
    *(v6 + 12) = 2048;
    v12[0] = *(a1 + 120);
    sub_100005898(&qword_100021F88, &qword_100018480);
    sub_100014C2C();
    *(v6 + 14) = v15;
    sub_100006770(a1);
    _os_log_impl(&_mh_execute_header, v5, v4, "View: audio audioPlaybackCompleted : Index%ld, selectedPlaybackIndex%ld", v6, 0x16u);
  }

  v12[0] = *(a1 + 152);
  LOBYTE(v15) = 0;
  sub_100005898(&qword_100021F00, &qword_1000187F0);
  sub_100014C3C();
  v12[0] = *(a1 + 120);
  v15 = *(a1 + 120);
  sub_100005898(&qword_100021F88, &qword_100018480);
  sub_100014C2C();
  sub_100004378(v14[0]);
  v15 = v12[0];
  sub_100014C2C();
  v7 = v14[0];
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v16 = v9;
  v17 = v8;
  *&v15 = v8;
  *(&v15 + 1) = v9;
  sub_1000067A0(&v17, v14, &qword_100021F90, &qword_100018488);
  sub_1000067A0(&v16, v14, &qword_100021F98, &qword_100018490);
  sub_100005898(&qword_100021F40, &qword_1000183B0);
  sub_100014C2C();
  v10 = v14[2];
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = sub_1000052C4(v10);
    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_9:
      if (v7 < *(v10 + 2))
      {
        v10[v7 + 32] = 1;
        v14[0] = v8;
        v14[1] = v9;
        v13 = v10;
        sub_100014C3C();
        sub_10000645C(&v17, &qword_100021F90, &qword_100018488);
        sub_10000645C(&v16, &qword_100021F98, &qword_100018490);
        sub_10000C188();
      }

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  type metadata accessor for AudioManager(0);
  sub_100005840();
  result = sub_100014A0C();
  __break(1u);
  return result;
}

uint64_t sub_100004378(unint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v19 = v6;
  v20 = v5;
  v15 = v5;
  v16 = v6;
  sub_1000067A0(&v20, &v13, &qword_100021DE8, &qword_100017FE0);
  sub_1000067A0(&v19, &v13, &qword_100021FA0, &qword_100018498);
  v7 = sub_100005898(&qword_100021FA8, &qword_1000184A0);
  v8 = &v15;
  sub_100014C2C();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v13;
    if (v13[2] > a1)
    {
      v2 = v13[a1 + 4];

      [v2 invalidate];

      v15 = v5;
      v16 = v6;
      sub_100014C2C();
      v8 = v18;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  v8 = sub_10000529C(v8);
LABEL_4:
  if (v8[2] <= a1)
  {
    __break(1u);
  }

  else
  {
    v9 = &v8[a1];
    v10 = v9[4];
    v9[4] = 0;

    v13 = v5;
    v14 = v6;
    v17 = v8;
    sub_100014C3C();
    sub_10000645C(&v20, &qword_100021DE8, &qword_100017FE0);
    sub_10000645C(&v19, &qword_100021FA0, &qword_100018498);
    v7 = *(v3 + 136);
    v2 = *(v3 + 144);
    v17 = v2;
    v18 = v7;
    v15 = v7;
    v16 = v2;
    sub_1000067A0(&v18, &v13, &qword_100021FB0, &qword_1000184A8);
    sub_1000067A0(&v17, &v13, &qword_100021FB8, &qword_1000184B0);
    sub_100005898(&qword_100021FC0, qword_1000184B8);
    sub_100014C2C();
    v8 = v12;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_6;
    }
  }

  result = sub_1000052B0(v8);
  v8 = result;
LABEL_6:
  if (v8[2] <= a1)
  {
    __break(1u);
  }

  else
  {
    LOBYTE(v8[2 * a1 + 4]) = 1;
    v13 = v7;
    v14 = v2;
    sub_100014C3C();
    sub_10000645C(&v18, &qword_100021FB0, &qword_1000184A8);
    return sub_10000645C(&v17, &qword_100021FB8, &qword_1000184B0);
  }

  return result;
}

void sub_1000045F4(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_1000219A0 == -1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v19 = a1;
  swift_once();
  a1 = v19;
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = *(qword_100022C40 + 32);
  if (*(v3 + 16) > a1)
  {
    v4 = v3 + 16 * a1;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);

    sub_100006514(v5, v6);

    sub_100006690();
    v7 = sub_100014B4C();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    KeyPath = swift_getKeyPath();
    v15 = (a2 + *(sub_100005898(&qword_100021F70, &qword_100018438) + 36));
    v16 = *(sub_100005898(&qword_100021F78, &qword_100018440) + 28);
    v17 = enum case for Text.TruncationMode.tail(_:);
    v18 = sub_100014B3C();
    (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
    *v15 = swift_getKeyPath();
    *a2 = v7;
    *(a2 + 8) = v9;
    *(a2 + 16) = v11 & 1;
    *(a2 + 24) = v13;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    *(a2 + *(sub_100005898(&qword_100021F80, &qword_100018478) + 36)) = 256;
    return;
  }

LABEL_7:
  __break(1u);
}

void *sub_1000047C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100014BFC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014BEC();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v10 = sub_100014C0C();

  (*(v7 + 8))(v9, v6);
  sub_100014C8C();
  result = sub_1000149DC();
  v29 = 1;
  *&v28[6] = v30;
  *&v28[22] = v31;
  *&v28[38] = v32;
  if (qword_1000219A0 == -1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = swift_once();
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = *(qword_100022C40 + 32);
  if (*(v12 + 16) > a2)
  {
    v13 = v12 + 16 * a2;
    v15 = *(v13 + 32);
    v14 = *(v13 + 40);
    v27 = *(a1 + 72);

    sub_100005898(&qword_100021F50, &qword_1000183C0);
    sub_100014C2C();
    v16 = v26;
    if (*(v26 + 16))
    {
      v17 = sub_100013224(v15, v14);
      v19 = v18;

      if (v19)
      {
        v20 = *(*(v16 + 56) + v17);

        if (v20 == 1)
        {
          v21 = sub_100014BDC();
LABEL_11:
          v23 = v21;
          result = swift_getKeyPath();
          v24 = *&v28[16];
          *(a3 + 18) = *v28;
          *a3 = v10;
          *(a3 + 8) = 0;
          *(a3 + 16) = 1;
          *(a3 + 34) = v24;
          *(a3 + 50) = *&v28[32];
          *(a3 + 64) = *&v28[46];
          *(a3 + 72) = result;
          *(a3 + 80) = v23;
          return result;
        }

LABEL_10:
        v22 = [objc_opt_self() lightGrayColor];
        v21 = sub_100014B9C();
        goto LABEL_11;
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_100004A9C(void *result, unint64_t a2, char a3)
{
  v4 = result;
  if (qword_1000219A0 == -1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = a2;
  result = swift_once();
  a2 = v13;
  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  v5 = *(qword_100022C40 + 32);
  if (*(v5 + 16) <= a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = v5 + 16 * a2;
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);
  v9 = v4[9];
  v10 = v4[10];
  v18 = v10;
  v19 = v9;
  v15 = v9;
  v16 = v10;

  sub_1000067A0(&v19, v14, &qword_100021F58, &qword_1000183F8);
  sub_1000067A0(&v18, v14, &qword_100021F60, &qword_100018400);
  sub_100005898(&qword_100021F50, &qword_1000183C0);
  sub_100014C2C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14[0] = v17;
  sub_1000053A0(a3 & 1, v8, v7, isUniquelyReferenced_nonNull_native);

  v14[0] = v9;
  v14[1] = v10;
  sub_100014C3C();
  sub_10000645C(&v19, &qword_100021F58, &qword_1000183F8);
  result = sub_10000645C(&v18, &qword_100021F60, &qword_100018400);
  v12 = v4[23];
  if (v12)
  {
    v15 = v9;
    v16 = v10;
    sub_100014C2C();
    v12(v14[0]);
  }

  return result;
}

void *sub_100004C74@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100014BFC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014BEC();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v10 = sub_100014C0C();

  (*(v7 + 8))(v9, v6);
  sub_100014C8C();
  result = sub_1000149DC();
  v29 = 1;
  *&v28[6] = v30;
  *&v28[22] = v31;
  *&v28[38] = v32;
  if (qword_1000219A0 == -1)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = swift_once();
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_3:
  v12 = *(qword_100022C40 + 32);
  if (*(v12 + 16) > a2)
  {
    v13 = v12 + 16 * a2;
    v15 = *(v13 + 32);
    v14 = *(v13 + 40);
    v27 = *(a1 + 72);

    sub_100005898(&qword_100021F50, &qword_1000183C0);
    sub_100014C2C();
    v16 = v26;
    if (*(v26 + 16))
    {
      v17 = sub_100013224(v15, v14);
      v19 = v18;

      if (v19)
      {
        v20 = *(*(v16 + 56) + v17);

        if ((v20 & 1) == 0)
        {
          v21 = sub_100014BAC();
LABEL_11:
          v23 = v21;
          result = swift_getKeyPath();
          v24 = *&v28[16];
          *(a3 + 18) = *v28;
          *a3 = v10;
          *(a3 + 8) = 0;
          *(a3 + 16) = 1;
          *(a3 + 34) = v24;
          *(a3 + 50) = *&v28[32];
          *(a3 + 64) = *&v28[46];
          *(a3 + 72) = result;
          *(a3 + 80) = v23;
          return result;
        }

LABEL_10:
        v22 = [objc_opt_self() lightGrayColor];
        v21 = sub_100014B9C();
        goto LABEL_11;
      }
    }

    else
    {
    }

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_100004F44(uint64_t a1)
{
  if (*(a1 + 8))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10001498C();

    if (v5)
    {
      v2 = sub_1000142B8(&_swiftEmptyArrayStorage);
      if (qword_1000219B8 != -1)
      {
        swift_once();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        sub_1000128F0(3, v2);
      }
    }
  }

  else
  {
    type metadata accessor for AudioManager(0);
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000506C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100014C9C();
  sub_1000149EC();
}

uint64_t sub_1000050D8(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  v8 = v4;
  v9 = v3;
  v7[2] = v3;
  v7[3] = v4;
  sub_1000067A0(&v9, v7, &qword_100021FB0, &qword_1000184A8);
  sub_1000067A0(&v8, v7, &qword_100021FB8, &qword_1000184B0);
  sub_100005898(&qword_100021FC0, qword_1000184B8);
  sub_100014C2C();
  v5 = v7[4];
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1000052B0(v5);
  v5 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a2)
  {
    *(v5 + 16 * a2 + 32) = (*(v5 + 16 * a2 + 32) & 1) == 0;
    v7[0] = v3;
    v7[1] = v4;
    sub_100014C3C();
    sub_10000645C(&v9, &qword_100021FB0, &qword_1000184A8);
    return sub_10000645C(&v8, &qword_100021FB8, &qword_1000184B0);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000052D8(uint64_t a1)
{
  v2 = sub_100014B3C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100014A3C();
}

unint64_t sub_1000053A0(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100013224(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1000132E0(v16, a4 & 1);
      result = sub_100013224(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_100014F0C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100013C78();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_10000550C(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return &_swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_100014D5C();
    v7 = v6;
    *(v6 + 16) = a3;
    v8 = v4 & 1;
    *(v6 + 32) = v8;
    *(v6 + 40) = a2;
    v9 = a3 - 1;
    if (v9)
    {
      v10 = (v6 + 56);
      do
      {
        *(v10 - 8) = v8;
        *v10 = a2;
        v10 += 2;

        --v9;
      }

      while (v9);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1000055B0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AudioManager(0);
  sub_100005840();
  v2 = sub_100014A1C();
  v9 = v3;
  v10 = v2;
  sub_100014C1C();
  sub_100014C1C();
  sub_100014C1C();
  sub_100005898(&qword_100021DE8, &qword_100017FE0);
  sub_100014C1C();
  sub_100014C1C();
  sub_100014C1C();
  sub_100005898(&qword_100021DF0, &qword_100017FE8);
  sub_100014C1C();
  if (qword_1000219A0 != -1)
  {
    swift_once();
  }

  v4 = *(*(qword_100022C40 + 32) + 16);
  if (v4)
  {
    v5 = sub_100014D5C();
    v5[2] = v4;
    bzero(v5 + 4, v4);
  }

  else
  {
    v5 = &_swiftEmptyArrayStorage;
  }

  v6 = sub_100014BCC();
  v7 = sub_10000550C(0, v6, v4);

  *a1 = v4;
  *(a1 + 8) = v10;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v5;
  *(a1 + 64) = 0;
  *(a1 + 72) = &_swiftEmptyDictionarySingleton;
  *(a1 + 80) = 0;
  *(a1 + 88) = v11;
  *(a1 + 96) = v12;
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = v11;
  *(a1 + 128) = v12;
  *(a1 + 136) = v7;
  *(a1 + 144) = 0;
  *(a1 + 152) = v11;
  *(a1 + 160) = v12;
  *(a1 + 168) = v11;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = v12;
  return result;
}

unint64_t sub_100005840()
{
  result = qword_100021DE0;
  if (!qword_100021DE0)
  {
    type metadata accessor for AudioManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DE0);
  }

  return result;
}

uint64_t sub_100005898(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1000058E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000058EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005934(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MicrophoneTestEvaluatingView.AlertType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MicrophoneTestEvaluatingView.AlertType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100005AF8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100005B10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_100005B54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005B9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
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
      *(result + 200) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100005C48()
{
  result = qword_100021DF8;
  if (!qword_100021DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021DF8);
  }

  return result;
}

unint64_t sub_100005CE4()
{
  result = qword_100021E38;
  if (!qword_100021E38)
  {
    sub_100005D70(&qword_100021E28, &qword_100018248);
    sub_100005DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021E38);
  }

  return result;
}

uint64_t sub_100005D70(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005DB8()
{
  result = qword_100021E40;
  if (!qword_100021E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021E40);
  }

  return result;
}

uint64_t sub_100005E4C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005D70(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005ED0()
{
  result = qword_100021E60;
  if (!qword_100021E60)
  {
    sub_100005D70(&qword_100021E08, &qword_100018208);
    sub_100006090(&qword_100021E68, &qword_100021E00, &qword_100018200, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021E60);
  }

  return result;
}

unint64_t sub_100005FA4()
{
  result = qword_100021ED0;
  if (!qword_100021ED0)
  {
    sub_100005D70(&qword_100021EC8, &qword_1000182F8);
    sub_100006350(&qword_100021ED8, &qword_100021EE0, &qword_100018300);
    sub_100006090(&qword_100021EE8, &qword_100021EF0, &qword_100018308, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021ED0);
  }

  return result;
}

uint64_t sub_100006090(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100005D70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000060D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100014A6C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100006158(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005898(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1000061EC()
{
  result = qword_100021F18;
  if (!qword_100021F18)
  {
    sub_100005D70(&qword_100021F10, &qword_100018398);
    sub_1000062A4();
    sub_100006090(&qword_100021EE8, &qword_100021EF0, &qword_100018308, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021F18);
  }

  return result;
}

unint64_t sub_1000062A4()
{
  result = qword_100021F20;
  if (!qword_100021F20)
  {
    sub_100005D70(&qword_100021F28, &qword_1000183A0);
    sub_100006350(&qword_100021F30, &qword_100021F38, &qword_1000183A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021F20);
  }

  return result;
}

uint64_t sub_100006350(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005D70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000063EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005898(&qword_100021EC0, &qword_1000182F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000645C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005898(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000064BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100014A4C();
  *a1 = result;
  return result;
}

uint64_t sub_100006514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x74746F427466654CLL && a2 == 0xEA00000000006D6FLL;
  if (v3 || (sub_100014EFC() & 1) != 0)
  {
    v5 = 1413891404;
LABEL_7:
    v6 = v5 | 0x43494D5F00000000;
    v7 = 0xEF454E4F48504F52;
    return sub_100011930(v6, v7);
  }

  if (a1 == 0x746F427468676952 && a2 == 0xEB000000006D6F74 || (sub_100014EFC() & 1) != 0)
  {
    v8 = "RIGHT_MICROPHONE";
LABEL_12:
    v7 = ((v8 - 32) | 0x8000000000000000);
    v6 = 0xD000000000000010;
    return sub_100011930(v6, v7);
  }

  if (a1 == 0x746E6F7246 && a2 == 0xE500000000000000 || (sub_100014EFC() & 1) != 0)
  {
    v8 = "FRONT_MICROPHONE";
    goto LABEL_12;
  }

  if (a1 == 1801675074 && a2 == 0xE400000000000000 || (sub_100014EFC() & 1) != 0)
  {
    v5 = 1380009298;
    goto LABEL_7;
  }

  return 0;
}

unint64_t sub_100006690()
{
  result = qword_100021F68;
  if (!qword_100021F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021F68);
  }

  return result;
}

uint64_t sub_1000066E4@<X0>(uint64_t a1@<X8>)
{
  result = sub_100014A8C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000067A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005898(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006808(uint64_t a1)
{

  if (*(v1 + 200))
  {
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000068D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000690C()
{
  sub_100005D70(&qword_100021E18, &qword_100018218);
  sub_100005E4C(&qword_100021E50, &qword_100021E18, &qword_100018218, sub_100005E1C);
  return swift_getOpaqueTypeConformance2();
}

void *sub_1000069D8()
{
  type metadata accessor for MicrophoneTestSharedData();
  result = swift_allocObject();
  result[2] = 0x4008000000000000;
  result[3] = 100;
  result[4] = &_swiftEmptyArrayStorage;
  result[5] = 0;
  qword_100022C40 = result;
  return result;
}

uint64_t sub_100006A1C()
{

  return _swift_deallocClassInstance(v0, 48, 7);
}

char *sub_100006A80(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestCompletedViewController_testResults;
  *&v1[v3] = sub_1000142B8(&_swiftEmptyArrayStorage);
  sub_100011930(0xD000000000000010, 0x8000000100016010);
  v4 = sub_100014CFC();

  sub_100011930(0xD000000000000016, 0x8000000100016030);
  v5 = sub_100014CFC();

  v6 = sub_100014CFC();
  v9.receiver = v1;
  v9.super_class = type metadata accessor for MicrophoneTestCompletedViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithTitle:detailText:symbolName:contentLayout:", v4, v5, v6, 2);

  *&v7[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestCompletedViewController_testResults] = a1;

  return v7;
}

void sub_100006BB0()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MicrophoneTestCompletedViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v2 = [v0 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = [objc_opt_self() boldButton];
  sub_100011930(19279, 0xE200000000000000);
  v4 = sub_100014CFC();

  [v3 setTitle:v4 forState:0];

  sub_1000070A0();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = sub_100014E3C();
  [v3 addAction:v6 forControlEvents:{64, 0, 0, 0, sub_100007124, v5}];

  v7 = [v1 buttonTray];
  [v7 addButton:v3];
}

char *sub_100006D4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v17 = OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestCompletedViewController_testResults;
    v4 = *&result[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestCompletedViewController_testResults];
    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v9 = 0;
    do
    {
      if (!v7)
      {
        while (1)
        {
          v10 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            __break(1u);
            goto LABEL_22;
          }

          if (v10 >= v8)
          {
            break;
          }

          v7 = *(v4 + 64 + 8 * v10);
          ++v9;
          if (v7)
          {
            v9 = v10;
            goto LABEL_10;
          }
        }

        v4 = *&v3[v17];
        v15 = qword_1000219B8;

        if (v15 == -1)
        {
          goto LABEL_16;
        }

LABEL_22:
        swift_once();
LABEL_16:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v13 = Strong;
          v14 = 0;
          goto LABEL_18;
        }

        goto LABEL_19;
      }

LABEL_10:
      v7 &= v7 - 1;
      sub_100006690();
    }

    while ((sub_100014E6C() & 1) == 0);

    v4 = *&v3[v17];
    v11 = qword_1000219B8;

    if (v11 != -1)
    {
      swift_once();
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = 900;
LABEL_18:
      sub_100012324(v14, v4);
    }

LABEL_19:
  }

  return result;
}

id sub_100007038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicrophoneTestCompletedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000070A0()
{
  result = qword_100022100;
  if (!qword_100022100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100022100);
  }

  return result;
}

uint64_t sub_1000070EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10000712C(uint64_t a1)
{
  v1[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestRecordingViewController_shouldStop] = 0;
  *&v1[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestRecordingViewController_audioManager] = a1;

  sub_100011930(0xD000000000000010, 0x8000000100016160);
  v2 = sub_100014CFC();

  v3 = sub_100014CFC();
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  v9.receiver = v1;
  v9.super_class = type metadata accessor for MicrophoneTestRecordingViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithTitle:detailText:symbolName:contentLayout:", v2, 0, v3, v6);

  return v7;
}

void sub_100007258()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for MicrophoneTestRecordingViewController();
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = [v0 navigationController];
  sub_100014D7C();
  v3 = v0;
  v4 = sub_100014D6C();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = &protocol witness table for MainActor;
  v5[4] = v3;
  v6 = v3;
  v7 = sub_100014D6C();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  sub_100014C6C();
  type metadata accessor for AudioManager(0);
  sub_100005840();
  v9 = sub_100014A1C();
  sub_1000093C0(v9, v10, v2, v38, v39, v40, &v42);

  sub_10001495C();
  v11 = objc_allocWithZone(sub_100005898(&qword_100022140, &qword_100018578));
  v12 = sub_100014AEC();
  v13 = [v12 view];
  if (!v13)
  {
    goto LABEL_4;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [v6 contentView];
  [v15 addSubview:v14];

  sub_100005898(&qword_100022148, &qword_100018580);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100018540;
  v17 = [v14 leadingAnchor];
  v18 = [v6 contentView];
  v19 = [v18 leadingAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v16 + 32) = v20;
  v21 = [v14 trailingAnchor];
  v22 = [v6 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v16 + 40) = v24;
  v25 = [v14 centerYAnchor];
  v26 = [v6 view];
  if (v26)
  {
    v27 = v26;
    v28 = objc_opt_self();
    v29 = [v27 centerYAnchor];

    v30 = [v25 constraintEqualToAnchor:v29];
    *(v16 + 48) = v30;
    sub_100007C80(0, &qword_100022150, NSLayoutConstraint_ptr);
    isa = sub_100014D4C().super.isa;

    [v28 activateConstraints:isa];

    v32 = [objc_opt_self() linkButton];
    sub_100011930(0x4345525F504F5453, 0xEE00474E4944524FLL);
    v33 = sub_100014CFC();

    [v32 setTitle:v33 forState:0];

    sub_100007C80(0, &qword_100022100, UIAction_ptr);
    v34 = swift_allocObject();
    *(v34 + 16) = v6;
    v35 = v6;
    v36 = sub_100014E3C();
    [v32 addAction:v36 forControlEvents:{64, 0, 0, 0, sub_100007D00, v34}];

    v37 = [v35 buttonTray];
    [v37 addButton:v32];

    v12 = v37;
LABEL_4:

    return;
  }

  __break(1u);
}

void sub_100007840(uint64_t a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC15Diagnostic_600437MicrophoneTestRecordingViewController_shouldStop] = 1;
  sub_100011930(0xD00000000000001ELL, 0x80000001000161C0);
  sub_100011930(0xD00000000000001ELL, 0x80000001000161E0);
  v3 = sub_100014CFC();

  v4 = sub_100014CFC();

  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  sub_100011930(0xD000000000000026, 0x8000000100016200);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = a2;
  v8 = sub_100014CFC();

  v11[4] = sub_100007D08;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100007D30;
  v11[3] = &unk_10001D230;
  v9 = _Block_copy(v11);

  v10 = [objc_opt_self() actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v5 addAction:v10];
  [v7 presentViewController:v5 animated:1 completion:0];
}

void sub_100007A84(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}

id sub_100007BA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicrophoneTestRecordingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007C28()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007C80(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100007CC8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100007D30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100007D98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v88 = a1;
  v76 = sub_100005898(&qword_100022160, &qword_100018680);
  v3 = *(v76 - 8);
  __chkstk_darwin(v76);
  v5 = &v76 - v4;
  v6 = sub_100005898(&qword_100022168, &qword_100018688);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v76 - v8;
  v10 = sub_100005898(&qword_100022170, &qword_100018690);
  __chkstk_darwin(v10);
  v12 = &v76 - v11;
  v79 = sub_100005898(&qword_100022178, &qword_100018698);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v76 - v13;
  v81 = sub_100005898(&qword_100022180, &qword_1000186A0);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v89 = &v76 - v14;
  v85 = sub_100005898(&qword_100022188, &qword_1000186A8);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = &v76 - v15;
  v87 = sub_100005898(&qword_100022190, &qword_1000186B0);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v76 - v16;
  v90 = *(v1 + 32);
  sub_100005898(&qword_100022198, &qword_1000186B8);
  sub_100014C2C();
  v94 = 0;
  *&v90 = 0x3FF0000000000000;
  sub_100005898(&qword_1000221A0, &qword_1000186C0);
  sub_100009644();
  sub_1000096C8();
  sub_1000149CC();
  v17 = sub_100014AFC();
  v18 = [objc_opt_self() currentDevice];
  [v18 userInterfaceIdiom];

  sub_1000149BC();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  (*(v3 + 32))(v9, v5, v76);
  v27 = v10;
  v28 = &v9[*(v7 + 44)];
  *v28 = v17;
  *(v28 + 1) = v20;
  *(v28 + 2) = v22;
  *(v28 + 3) = v24;
  *(v28 + 4) = v26;
  v28[40] = 0;
  v29 = swift_allocObject();
  v30 = *(v2 + 112);
  v29[7] = *(v2 + 96);
  v29[8] = v30;
  *(v29 + 137) = *(v2 + 121);
  v31 = *(v2 + 48);
  v29[3] = *(v2 + 32);
  v29[4] = v31;
  v32 = *(v2 + 80);
  v29[5] = *(v2 + 64);
  v29[6] = v32;
  v33 = *(v2 + 16);
  v29[1] = *v2;
  v29[2] = v33;
  sub_100009728(v9, v12);
  v34 = &v12[*(v10 + 36)];
  *v34 = sub_100009720;
  v34[1] = v29;
  v34[2] = 0;
  v34[3] = 0;
  if (*v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_100009798(v2, &v90);
    sub_10001498C();

    LOBYTE(v93) = v90;
    v35 = swift_allocObject();
    v36 = *(v2 + 112);
    v35[7] = *(v2 + 96);
    v35[8] = v36;
    *(v35 + 137) = *(v2 + 121);
    v37 = *(v2 + 48);
    v35[3] = *(v2 + 32);
    v35[4] = v37;
    v38 = *(v2 + 80);
    v35[5] = *(v2 + 64);
    v35[6] = v38;
    v39 = *(v2 + 16);
    v35[1] = *v2;
    v35[2] = v39;
    sub_100009798(v2, &v90);
    v40 = sub_1000097E0();
    v41 = v77;
    sub_100014B8C();

    sub_10000645C(v12, &qword_100022170, &qword_100018690);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001498C();

    v42 = 0;
    if (v90)
    {
      v90 = *(v2 + 64);
      sub_100005898(&qword_100021F00, &qword_1000187F0);
      sub_100014C2C();
      v42 = v93;
    }

    LOBYTE(v93) = v42;
    v43 = swift_allocObject();
    v44 = *(v2 + 112);
    v43[7] = *(v2 + 96);
    v43[8] = v44;
    *(v43 + 137) = *(v2 + 121);
    v45 = *(v2 + 48);
    v43[3] = *(v2 + 32);
    v43[4] = v45;
    v46 = *(v2 + 80);
    v43[5] = *(v2 + 64);
    v43[6] = v46;
    v47 = *(v2 + 16);
    v43[1] = *v2;
    v43[2] = v47;
    sub_100009798(v2, &v90);
    *&v90 = v27;
    *(&v90 + 1) = &type metadata for Bool;
    v91 = v40;
    v92 = &protocol witness table for Bool;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = v79;
    sub_100014B8C();

    (*(v78 + 8))(v41, v49);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001498C();

    v50 = 0;
    v51 = v82;
    if (v90 == 1)
    {
      v90 = *(v2 + 80);
      sub_100005898(&qword_100021F00, &qword_1000187F0);
      sub_100014C2C();
      v50 = v93;
    }

    LOBYTE(v93) = v50;
    v52 = swift_allocObject();
    v53 = *(v2 + 112);
    v52[7] = *(v2 + 96);
    v52[8] = v53;
    *(v52 + 137) = *(v2 + 121);
    v54 = *(v2 + 48);
    v52[3] = *(v2 + 32);
    v52[4] = v54;
    v55 = *(v2 + 80);
    v52[5] = *(v2 + 64);
    v52[6] = v55;
    v56 = *(v2 + 16);
    v52[1] = *v2;
    v52[2] = v56;
    sub_100009798(v2, &v90);
    *&v90 = v49;
    *(&v90 + 1) = &type metadata for Bool;
    v91 = OpaqueTypeConformance2;
    v92 = &protocol witness table for Bool;
    v57 = swift_getOpaqueTypeConformance2();
    v58 = v81;
    v59 = v89;
    sub_100014B8C();

    (*(v80 + 8))(v59, v58);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10001498C();

    v60 = 0;
    if (v90 == 1)
    {
      v90 = *(v2 + 96);
      sub_100005898(&qword_100021F00, &qword_1000187F0);
      sub_100014C2C();
      v60 = v93;
    }

    LOBYTE(v93) = v60;
    v61 = swift_allocObject();
    v62 = *(v2 + 112);
    v61[7] = *(v2 + 96);
    v61[8] = v62;
    *(v61 + 137) = *(v2 + 121);
    v63 = *(v2 + 48);
    v61[3] = *(v2 + 32);
    v61[4] = v63;
    v64 = *(v2 + 80);
    v61[5] = *(v2 + 64);
    v61[6] = v64;
    v65 = *(v2 + 16);
    v61[1] = *v2;
    v61[2] = v65;
    sub_100009798(v2, &v90);
    *&v90 = v58;
    *(&v90 + 1) = &type metadata for Bool;
    v91 = v57;
    v92 = &protocol witness table for Bool;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = v84;
    v68 = v85;
    sub_100014B8C();

    (*(v83 + 8))(v51, v68);
    v90 = *(v2 + 120);
    LOBYTE(v91) = *(v2 + 136);
    sub_100005898(&qword_1000221D0, &qword_1000187E8);
    sub_100014C5C();
    v69 = swift_allocObject();
    v70 = *(v2 + 112);
    v69[7] = *(v2 + 96);
    v69[8] = v70;
    *(v69 + 137) = *(v2 + 121);
    v71 = *(v2 + 48);
    v69[3] = *(v2 + 32);
    v69[4] = v71;
    v72 = *(v2 + 80);
    v69[5] = *(v2 + 64);
    v69[6] = v72;
    v73 = *(v2 + 16);
    v69[1] = *v2;
    v69[2] = v73;
    sub_100009798(v2, &v90);
    *&v90 = v68;
    *(&v90 + 1) = &type metadata for Bool;
    v91 = v66;
    v92 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    v74 = v87;
    sub_100014B8C();

    return (*(v86 + 8))(v67, v74);
  }

  else
  {
    sub_100009798(v2, &v90);
    type metadata accessor for AudioManager(0);
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

void sub_100008A84(uint64_t a1@<X8>)
{
  sub_100011930(0xD000000000000013, 0x8000000100016250);
  sub_100006690();
  v2 = sub_100014B4C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100014B2C();
  sub_1000149BC();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = 0;
}

uint64_t sub_100008B3C(void *a1)
{
  sub_100008FF0();
  sub_100009A94();
  if (*a1)
  {

    sub_10000C648();
  }

  else
  {
    type metadata accessor for AudioManager(0);
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100008BBC(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_10001498C();

    if (v8 & 1) != 0 && (sub_100005898(&qword_100021F00, &qword_1000187F0), sub_100014C2C(), (v7))
    {
      v3 = a1[14];
      if (v3)
      {
        v4 = objc_allocWithZone(type metadata accessor for MicrophoneTestEvaluatingViewController());
        v5 = sub_1000102D8(v2);
        [v3 pushViewController:v5 animated:1];
      }

      else
      {
      }

      sub_10000C188();
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for AudioManager(0);
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100008D0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10001498C();

    if (v9)
    {
      v6 = sub_1000142B8(&_swiftEmptyArrayStorage);
      if (qword_1000219B8 != -1)
      {
        swift_once();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = Strong;
        sub_1000128F0(a4, v6);
      }
    }
  }

  else
  {
    type metadata accessor for AudioManager(0);
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

void *sub_100008E34(uint64_t a1)
{
  sub_100005898(&qword_1000221D0, &qword_1000187E8);
  result = sub_100014C5C();
  if (v2 == 1)
  {
    return sub_100008EA0();
  }

  return result;
}

uint64_t sub_100008EA0()
{
  sub_100005898(&qword_1000221D8, &qword_1000187F8);
  sub_100014C2C();
  [v2 invalidate];

  if (*v0)
  {

    sub_10000D238();
    sub_10000C188();
    sub_100005898(&qword_100021F00, &qword_1000187F0);
    sub_100014C3C();
    sub_100014C3C();
    sub_100014C3C();
    sub_100014C3C();
    sub_10000EBB8();
  }

  else
  {
    type metadata accessor for AudioManager(0);
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100008FF0()
{
  v1 = v0;
  v16[0] = v0[2];
  aBlock[0] = 0;
  sub_100005898(&qword_100022198, &qword_1000186B8);
  result = sub_100014C3C();
  if (qword_1000219A0 != -1)
  {
    result = swift_once();
  }

  v3 = *(qword_100022C40 + 16);
  v4 = v3 / 100.0;
  v5 = v3 / (v3 / 100.0);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 < 9.22337204e18)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v10 = v1[7];
    *(v9 + 112) = v1[6];
    *(v9 + 128) = v10;
    *(v9 + 137) = *(v1 + 121);
    v11 = v1[3];
    *(v9 + 48) = v1[2];
    *(v9 + 64) = v11;
    v12 = v1[5];
    *(v9 + 80) = v1[4];
    *(v9 + 96) = v12;
    v13 = v1[1];
    *(v9 + 16) = *v1;
    *(v9 + 32) = v13;
    *(v9 + 160) = v7;
    *(v9 + 168) = v6;
    aBlock[4] = sub_100009DA0;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007D30;
    aBlock[3] = &unk_10001D438;
    v14 = _Block_copy(aBlock);
    sub_100009798(v1, v16);

    v15 = [v8 scheduledTimerWithTimeInterval:1 repeats:v14 block:{v4, v16[0]}];
    _Block_release(v14);
    v16[0] = v1[1];
    aBlock[0] = v15;
    sub_100005898(&qword_1000221D8, &qword_1000187F8);
    sub_100014C3C();
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_10000924C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v12 = *(a2 + 2);
  sub_100005898(&qword_100022198, &qword_1000186B8);
  sub_100014C3C();
  result = swift_beginAccess();
  v9 = *(a3 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a3 + 16) = v11;
  if (v11 < a4)
  {
    return result;
  }

  if (!*a2)
  {
LABEL_7:
    type metadata accessor for AudioManager(0);
    sub_100005840();
    result = sub_100014A0C();
    __break(1u);
    return result;
  }

  sub_10000D238();

  return [a1 invalidate];
}

void *sub_1000093C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_100005898(&qword_100022158, &qword_100018590);
  sub_100014C1C();
  sub_100014C1C();
  sub_100014C1C();
  sub_100014C1C();
  sub_100014C1C();
  result = sub_100014C1C();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v15;
  *(a7 + 24) = v16;
  *(a7 + 32) = v15;
  *(a7 + 40) = v16;
  *(a7 + 48) = v15;
  *(a7 + 56) = v16;
  *(a7 + 64) = v15;
  *(a7 + 72) = v16;
  *(a7 + 80) = v15;
  *(a7 + 88) = v16;
  *(a7 + 96) = v15;
  *(a7 + 104) = v16;
  *(a7 + 112) = a3;
  *(a7 + 120) = a4;
  *(a7 + 128) = a5;
  *(a7 + 136) = a6;
  return result;
}

__n128 sub_100009538(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10000956C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000095B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100009644()
{
  result = qword_1000221A8;
  if (!qword_1000221A8)
  {
    sub_100005D70(&qword_1000221A0, &qword_1000186C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000221A8);
  }

  return result;
}

unint64_t sub_1000096C8()
{
  result = qword_1000221B0;
  if (!qword_1000221B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000221B0);
  }

  return result;
}

uint64_t sub_100009728(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005898(&qword_100022168, &qword_100018688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000097E0()
{
  result = qword_1000221B8;
  if (!qword_1000221B8)
  {
    sub_100005D70(&qword_100022170, &qword_100018690);
    sub_10000986C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000221B8);
  }

  return result;
}

unint64_t sub_10000986C()
{
  result = qword_1000221C0;
  if (!qword_1000221C0)
  {
    sub_100005D70(&qword_100022168, &qword_100018688);
    sub_1000098F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000221C0);
  }

  return result;
}

unint64_t sub_1000098F8()
{
  result = qword_1000221C8;
  if (!qword_1000221C8)
  {
    sub_100005D70(&qword_100022160, &qword_100018680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000221C8);
  }

  return result;
}

uint64_t sub_100009A04()
{

  return _swift_deallocObject(v0, 153, 7);
}

id sub_100009A94()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedInstance];
  v14 = 0;
  v2 = [v1 setCategory:AVAudioSessionCategoryRecord mode:AVAudioSessionModeDefault options:0 error:&v14];

  v3 = v14;
  if (v2 && (v4 = v14, v5 = [v0 sharedInstance], v14 = 0, v6 = objc_msgSend(v5, "setActive:withOptions:error:", 1, 0, &v14), v5, v3 = v14, v6))
  {

    return v3;
  }

  else
  {
    v8 = v3;
    sub_10001489C();

    swift_willThrow();
    v9 = sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v10 = qword_100022C48;
    if (os_log_type_enabled(qword_100022C48, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      swift_errorRetain();
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, v10, v9, "Failed to set up the recording session: %@", v11, 0xCu);
      sub_10000645C(v12, &unk_1000221E0, &unk_100018800);
    }
  }
}

uint64_t sub_100009D10()
{

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_100009DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100009DC4()
{
  sub_100005D70(&qword_100022190, &qword_1000186B0);
  sub_100005D70(&qword_100022188, &qword_1000186A8);
  sub_100005D70(&qword_100022180, &qword_1000186A0);
  sub_100005D70(&qword_100022178, &qword_100018698);
  sub_100005D70(&qword_100022170, &qword_100018690);
  sub_1000097E0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100009F38(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration;
  *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration) = 0x4008000000000000;
  v6 = *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey);
  v5 = *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey + 8);
  if (*(a1 + 16) && (v7 = sub_100013224(*(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey), *(v1 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey + 8)), (v8 & 1) != 0) && (sub_10000AEB4(*(a1 + 56) + 32 * v7, v65), (swift_dynamicCast() & 1) != 0) && (v64 >= 1.0 ? (v9 = v64 > 10.0) : (v9 = 1), !v9))
  {
    *(v1 + v4) = v64;
    if (!*(a1 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = sub_100014DAC();
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100018810;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_10000ACE8();
    *(v11 + 32) = v6;
    *(v11 + 40) = v5;
    sub_10000AD3C();

    v12 = sub_100014E4C();
    sub_10001493C("Input parameter validation: Default value is used for %@ ", 57, 2, &_mh_execute_header, v12, v10, v11);

    if (!*(a1 + 16))
    {
LABEL_15:
      v15 = sub_1000142B8(&_swiftEmptyArrayStorage);
      goto LABEL_16;
    }
  }

  v13 = sub_100013224(*(v2 + OBJC_IVAR___MicrophoneTestInputs_stringPropertiesKey), *(v2 + OBJC_IVAR___MicrophoneTestInputs_stringPropertiesKey + 8));
  if ((v14 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_10000AEB4(*(a1 + 56) + 32 * v13, v65);
  sub_100005898(&qword_1000222F8, &qword_100018850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v15 = *&v64;
  if (!*(*&v64 + 16))
  {

    goto LABEL_15;
  }

LABEL_16:
  *(v2 + OBJC_IVAR___MicrophoneTestInputs_stringProperties) = v15;

  v17 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey);
  v16 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey + 8);
  if (!*(a1 + 16))
  {
    goto LABEL_45;
  }

  v18 = sub_100013224(*(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey), *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey + 8));
  if ((v19 & 1) == 0)
  {
    goto LABEL_45;
  }

  sub_10000AEB4(*(a1 + 56) + 32 * v18, v65);
  sub_100005898(&qword_1000222E8, &qword_100018840);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  if (!*(*&v64 + 16))
  {

LABEL_45:
    v41 = sub_100014DBC();
LABEL_46:
    v42 = v41;
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100018810;
    *(v43 + 56) = &type metadata for String;
    *(v43 + 64) = sub_10000ACE8();
    *(v43 + 32) = v17;
    *(v43 + 40) = v16;
    sub_10000AD3C();

    v44 = sub_100014E4C();
    sub_10001493C("Input parameter validation: required value %@ is missing, abort text", 68, 2, &_mh_execute_header, v44, v42, v43);

    return 0;
  }

  v17 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey);
  v16 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey + 8);
  if (!*(a1 + 16))
  {
    goto LABEL_48;
  }

  v20 = sub_100013224(*(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey), *(v2 + OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey + 8));
  if ((v21 & 1) == 0)
  {
    goto LABEL_48;
  }

  sub_10000AEB4(*(a1 + 56) + 32 * v20, v65);
  sub_100005898(&qword_1000222F0, &qword_100018848);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_48;
  }

  if (!*(*&v64 + 16))
  {

LABEL_48:

    v41 = sub_100014DAC();
    goto LABEL_46;
  }

  v63 = *(*&v64 + 16);
  if (v63)
  {
    v22 = 0;
    v23 = &_swiftEmptyArrayStorage;
    while (2)
    {
      if (v22 >= *(*&v64 + 16))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v24 = *(*&v64 + 32 + 8 * v22++);
      v25 = 1 << *(*&v64 + 32);
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      else
      {
        v26 = -1;
      }

      v27 = v26 & *(*&v64 + 64);
      v28 = (v25 + 63) >> 6;

      v29 = 0;
      if (!v27)
      {
        goto LABEL_34;
      }

      do
      {
LABEL_32:
        while (1)
        {
          v30 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
          v31 = v30 | (v29 << 6);
          if (*(*(*&v64 + 56) + 8 * v31) == v24)
          {
            break;
          }

          if (!v27)
          {
            goto LABEL_34;
          }
        }

        v33 = (*(*&v64 + 48) + 16 * v31);
        v61 = *v33;
        v62 = v33[1];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_10000ABDC(0, *(v23 + 2) + 1, 1, v23);
        }

        v34 = v23;
        v35 = *(v23 + 2);
        v36 = v34;
        v37 = *(v34 + 3);
        v38 = v35 + 1;
        if (v35 >= v37 >> 1)
        {
          v40 = sub_10000ABDC((v37 > 1), v35 + 1, 1, v36);
          v38 = v35 + 1;
          v36 = v40;
        }

        *(v36 + 2) = v38;
        v39 = &v36[16 * v35];
        v23 = v36;
        *(v39 + 4) = v61;
        *(v39 + 5) = v62;
      }

      while (v27);
      while (1)
      {
LABEL_34:
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          __break(1u);
          goto LABEL_66;
        }

        if (v32 >= v28)
        {
          break;
        }

        v27 = *(*&v64 + 64 + 8 * v32);
        ++v29;
        if (v27)
        {
          v29 = v32;
          goto LABEL_32;
        }
      }

      if (v22 != v63)
      {
        continue;
      }

      break;
    }
  }

  else
  {

    v23 = &_swiftEmptyArrayStorage;
  }

  if (qword_1000219A0 != -1)
  {
LABEL_67:
    swift_once();
  }

  v46 = qword_100022C40;
  v47 = *(v23 + 2);
  if (v47)
  {
    v65[0] = &_swiftEmptyArrayStorage;
    sub_10000AD88(0, v47, 0);
    v48 = v65[0];
    v49 = *(v2 + OBJC_IVAR___MicrophoneTestInputs_microphoneNameMapping);
    v50 = (v23 + 40);
    do
    {
      v51 = *v50;
      if (*(v49 + 16))
      {
        v52 = *(v50 - 1);

        v53 = sub_100013224(v52, v51);
        if (v54)
        {
          v55 = (*(v49 + 56) + 16 * v53);
          v56 = *v55;
          v57 = v55[1];
        }

        else
        {
          v56 = 0;
          v57 = 0xE000000000000000;
        }
      }

      else
      {
        v56 = 0;
        v57 = 0xE000000000000000;
      }

      v65[0] = v48;
      v59 = v48[2];
      v58 = v48[3];
      if (v59 >= v58 >> 1)
      {
        sub_10000AD88((v58 > 1), v59 + 1, 1);
        v48 = v65[0];
      }

      v48[2] = v59 + 1;
      v60 = &v48[2 * v59];
      *(v60 + 4) = v56;
      *(v60 + 5) = v57;
      v50 += 2;
      --v47;
    }

    while (v47);
  }

  else
  {

    v48 = &_swiftEmptyArrayStorage;
  }

  *(v46 + 32) = v48;

  return 1;
}

uint64_t sub_10000A6A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(a1 + *a4) = sub_100014CEC();

  return 1;
}

id sub_10000A704()
{
  *&v0[OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration] = 0;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_stringProperties] = 0;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_microphoneSequence] = &_swiftEmptyArrayStorage;
  v1 = &v0[OBJC_IVAR___MicrophoneTestInputs_audioRecordingDurationKey];
  *v1 = 0xD000000000000016;
  *(v1 + 1) = 0x8000000100016290;
  v2 = &v0[OBJC_IVAR___MicrophoneTestInputs_stringPropertiesKey];
  *v2 = 0xD000000000000010;
  *(v2 + 1) = 0x80000001000162B0;
  v3 = &v0[OBJC_IVAR___MicrophoneTestInputs_microphoneSequenceKey];
  *v3 = 0x65636E6575716573;
  *(v3 + 1) = 0xE800000000000000;
  v4 = &v0[OBJC_IVAR___MicrophoneTestInputs_inputComponentsKey];
  *v4 = 0x6D6F437475706E69;
  *(v4 + 1) = 0xEF73746E656E6F70;
  v5 = OBJC_IVAR___MicrophoneTestInputs_microphoneNameMapping;
  v6 = sub_1000142B8(&off_10001CCB8);
  sub_100005898(&qword_100022308, &qword_100018860);
  swift_arrayDestroy();
  *&v0[v5] = v6;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_predicates] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_parameters] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR___MicrophoneTestInputs_specifications] = &_swiftEmptyDictionarySingleton;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for MicrophoneTestInputs();
  return objc_msgSendSuper2(&v8, "init");
}

id sub_10000A8A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MicrophoneTestInputs();
  return objc_msgSendSuper2(&v3, "dealloc");
}

char *sub_10000A9DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005898(&qword_100022318, &unk_100018870);
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

char *sub_10000AAE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005898(&qword_100022310, &qword_100018868);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

char *sub_10000ABDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005898(&qword_100022300, &qword_100018858);
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

unint64_t sub_10000ACE8()
{
  result = qword_1000222D8;
  if (!qword_1000222D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000222D8);
  }

  return result;
}

unint64_t sub_10000AD3C()
{
  result = qword_1000222E0;
  if (!qword_1000222E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000222E0);
  }

  return result;
}

char *sub_10000AD88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000ADA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000ADA8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100005898(&qword_100022300, &qword_100018858);
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

uint64_t sub_10000AEB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id sub_10000AF14(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC15Diagnostic_600436MicrophoneTestStartingViewController_audioManager] = a1;

  sub_100011930(0xD000000000000016, 0x8000000100016490);
  v3 = sub_100014CFC();

  v24 = 0;
  v25 = 0xE000000000000000;
  v4 = objc_opt_self();
  v5 = [v4 currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1)
  {
    v7 = 0xD000000000000029;
  }

  else
  {
    v7 = 0xD00000000000002BLL;
  }

  if (v6 == 1)
  {
    v8 = "INSTRUCTIONS_SECONDARY_IPAD";
  }

  else
  {
    v8 = "AUDIO_RECORDING_HEADER";
  }

  v9 = sub_100011930(v7, (v8 | 0x8000000000000000));
  v11 = v10;

  v26._countAndFlagsBits = v9;
  v26._object = v11;
  sub_100014D3C(v26);

  v27._countAndFlagsBits = 657930;
  v27._object = 0xE300000000000000;
  sub_100014D3C(v27);
  v12 = [v4 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (v13 == 1)
  {
    v14 = 0xD00000000000002BLL;
  }

  else
  {
    v14 = 0xD00000000000002DLL;
  }

  if (v13 == 1)
  {
    v15 = "INSTRUCTIONS_SECONDARY_IPHONE";
  }

  else
  {
    v15 = "INSTRUCTIONS_PRIMARY_IPHONE";
  }

  v16 = sub_100011930(v14, (v15 | 0x8000000000000000));
  v18 = v17;

  v28._countAndFlagsBits = v16;
  v28._object = v18;
  sub_100014D3C(v28);

  v19 = sub_100014CFC();

  v20 = sub_100014CFC();
  v23.receiver = v2;
  v23.super_class = type metadata accessor for MicrophoneTestStartingViewController();
  v21 = objc_msgSendSuper2(&v23, "initWithTitle:detailText:symbolName:contentLayout:", v3, v19, v20, 2);

  return v21;
}

void sub_10000B154()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for MicrophoneTestStartingViewController();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v1 = [objc_opt_self() boldButton];
  sub_100011930(0x45525F5452415453, 0xEF474E4944524F43);
  v2 = sub_100014CFC();

  [v1 setTitle:v2 forState:0];

  sub_1000070A0();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = v0;
  v14 = v3;
  v5 = sub_100014E3C();
  [v1 addAction:v5 forControlEvents:{64, 0, 0, 0, sub_10000B8DC, v14}];

  v6 = [objc_opt_self() linkButton];
  sub_100011930(0x455F4C45434E4143, 0xEB00000000544958);
  v7 = sub_100014CFC();

  [v6 setTitle:v7 forState:0];

  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;
  v9 = v4;
  v10 = v6;
  v11 = sub_100014E3C();
  [v10 addAction:v11 forControlEvents:{64, 0, 0, 0, sub_10000B924, v8}];

  v12 = [v9 buttonTray];
  [v12 addButton:v1];

  v13 = [v9 buttonTray];
  [v13 addButton:v10];
}

void sub_10000B40C(int a1, char *a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(type metadata accessor for MicrophoneTestRecordingViewController());

    v6 = sub_10000712C(v5);
    [v3 pushViewController:v6 animated:1];
  }
}

void sub_10000B4D0(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100011930(0xD000000000000018, 0x80000001000165B0);
  sub_100011930(0xD000000000000018, 0x80000001000165D0);
  v5 = sub_100014CFC();

  v6 = sub_100014CFC();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:0];

  v8 = [v7 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    [v8 setSourceItem:a2];
  }

  sub_100011930(5457241, 0xE300000000000000);
  v10 = sub_100014CFC();

  v13[4] = sub_10000B6FC;
  v13[5] = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100007D30;
  v13[3] = &unk_10001D4B0;
  v11 = _Block_copy(v13);

  v12 = [objc_opt_self() actionWithTitle:v10 style:2 handler:v11];
  _Block_release(v11);

  [v7 addAction:v12];
  [a3 presentViewController:v7 animated:1 completion:0];
}

uint64_t sub_10000B6FC()
{
  v0 = sub_1000142B8(&_swiftEmptyArrayStorage);
  if (qword_1000219B8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100012324(-900, v0);
  }
}

id sub_10000B83C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MicrophoneTestStartingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000B8A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B8E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B92C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B944()
{
  sub_100007C80(0, &qword_1000222E0, OS_os_log_ptr);
  result = sub_100014E5C();
  qword_100022C48 = result;
  return result;
}

uint64_t sub_10000BA4C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001498C();

  return v3;
}

uint64_t sub_10000BAB8()
{
  v1 = sub_10001492C();
  v38 = *(v1 - 8);
  v39 = v1;
  __chkstk_darwin(v1);
  v37 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100014DFC();
  v40 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100014DEC();
  __chkstk_darwin(v4);
  v34 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100014CCC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100005898(&qword_100022660, &qword_100018908);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v30 - v9;
  v11 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__stopRecordingCompleted;
  LOBYTE(v41) = 0;
  sub_10001497C();
  v12 = *(v8 + 32);
  v12(v0 + v11, v10, v7);
  v13 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioPlaybackCompleted;
  LOBYTE(v41) = 0;
  sub_10001497C();
  v12(v0 + v13, v10, v7);
  v14 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioStartRecordingFailed;
  LOBYTE(v41) = 0;
  sub_10001497C();
  v12(v0 + v14, v10, v7);
  v15 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioStopRecordingFailed;
  LOBYTE(v41) = 0;
  sub_10001497C();
  v12(v0 + v15, v10, v7);
  v16 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioPlaybackFailed;
  LOBYTE(v41) = 0;
  sub_10001497C();
  v12(v0 + v16, v10, v7);
  v17 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__createAudioFileFailed;
  LOBYTE(v41) = 0;
  sub_10001497C();
  v33 = v0;
  v12(v0 + v17, v10, v7);
  v18 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__readAudioFileFailed;
  LOBYTE(v41) = 0;
  sub_10001497C();
  v12(v0 + v18, v10, v7);
  v32 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioInputQueue;
  v30[0] = sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
  v31 = "com.apple.Diagnostics";
  sub_100014CBC();
  v41 = &_swiftEmptyArrayStorage;
  v30[2] = sub_10000FBAC(&qword_100022670, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v30[1] = sub_100005898(&qword_100022678, &qword_100018910);
  sub_10000FBF4(&qword_100022680, &qword_100022678, &qword_100018910);
  sub_100014E7C();
  v19 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v20 = *(v40 + 104);
  v40 += 104;
  v21 = v35;
  v22 = v36;
  v20(v35, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v36);
  v23 = sub_100014E2C();
  v24 = v33;
  *(v33 + v32) = v23;
  v31 = "sticsService.audioInputQueue";
  v32 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioOutputQueue;
  sub_100014CBC();
  v41 = &_swiftEmptyArrayStorage;
  sub_100014E7C();
  v20(v21, v19, v22);
  *(v24 + v32) = sub_100014E2C();
  v25 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest;
  *(v24 + v25) = [objc_allocWithZone(AVAudioDeviceTest) init];
  v26 = v37;
  sub_1000148BC();
  sub_1000148DC();
  (*(v38 + 8))(v26, v39);
  v27 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence;
  *(v24 + v27) = [objc_allocWithZone(AVAudioDeviceTestSequence) init];
  [*(v24 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest) setProcessSequenceAsynchronously:1];
  [*(v24 + v27) setOutputMode:0];
  [*(v24 + v27) setPriority:0];
  LODWORD(v28) = 1.0;
  [*(v24 + v27) setVolume:v28];
  [*(v24 + v27) setNumberOfChannels:4];
  return v24;
}

uint64_t sub_10000C188()
{
  v1 = sub_100014CAC();
  v11 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100014CCC();
  v4 = *(v10 - 8);
  __chkstk_darwin(v10);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
  v7 = sub_100014E0C();
  aBlock[4] = sub_100010204;
  v13 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010294;
  aBlock[3] = &unk_10001D780;
  v8 = _Block_copy(aBlock);

  sub_100014CBC();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005898(&qword_100022698, &qword_100018920);
  sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
  sub_100014E7C();
  sub_100014E1C();
  _Block_release(v8);

  (*(v11 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v10);
}

uint64_t sub_10000C454(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10001499C();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10001499C();
}

uint64_t sub_10000C648()
{
  v1 = v0;
  v2 = sub_100014CAC();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100014CCC();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10001492C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v35 - v11;
  sub_10000EE90();
  sub_1000148EC();
  sub_1000148FC();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v14 = sub_10001491C();
  v16 = v15;
  v13(v12, v6);
  v17 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence;
  v18 = *(v1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence);
  v19 = sub_100014CFC();
  [v18 setMicrophone:v19];

  v20 = sub_100014DCC();
  if (qword_1000219A8 != -1)
  {
    swift_once();
  }

  v21 = qword_100022C48;
  sub_100005898(&qword_1000222D0, &qword_100018838);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000188B0;
  v23 = *(v1 + v17);
  v24 = [v23 description];
  v25 = sub_100014D0C();
  v27 = v26;

  *(v22 + 56) = &type metadata for String;
  v28 = sub_10000ACE8();
  *(v22 + 32) = v25;
  *(v22 + 40) = v27;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v28;
  *(v22 + 64) = v28;
  *(v22 + 72) = v14;
  *(v22 + 80) = v16;

  sub_10001494C(v20, &_mh_execute_header, v21, "Recording audio with sequence: %@, urlPath: %@", 46, 2, v22);

  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = v14;
  v29[4] = v16;
  aBlock[4] = sub_100010130;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010294;
  aBlock[3] = &unk_10001D6E0;
  v30 = _Block_copy(aBlock);

  v31 = v36;
  sub_100014CBC();
  v42 = &_swiftEmptyArrayStorage;
  sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005898(&qword_100022698, &qword_100018920);
  sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
  v32 = v39;
  v33 = v41;
  sub_100014E7C();
  sub_100014E1C();
  _Block_release(v30);
  (*(v40 + 8))(v32, v33);
  (*(v37 + 8))(v31, v38);
}

void sub_10000CB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest);
  v7 = *(a1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence);
  v8 = sub_100014CFC();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_10001017C;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_10000D188;
  v11[3] = &unk_10001D730;
  v10 = _Block_copy(v11);

  [v6 startRecording:v7 filePath:v8 completion:v10];
  _Block_release(v10);
}

uint64_t sub_10000CCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100014CAC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100014CCC();
  v13 = __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = a2;
    v30 = v14;
    v31 = v13;
    v32 = v9;
    swift_errorRetain();
    v17 = sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v18 = qword_100022C48;
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100018810;
    aBlock[0] = a1;
    swift_errorRetain();
    sub_100005898(&qword_100022688, &qword_100018918);
    v20 = sub_100014D1C();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_10000ACE8();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_10001494C(v17, &_mh_execute_header, v18, "Error recording: %@", 19, 2, v19);

    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v23 = sub_100014E0C();
    aBlock[4] = sub_100010188;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100010294;
    aBlock[3] = &unk_10001D758;
    v24 = _Block_copy(aBlock);

    sub_100014CBC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    sub_100014E7C();
    sub_100014E1C();
    _Block_release(v24);

    (*(v32 + 8))(v11, v8);
    return (*(v30 + 8))(v16, v31);
  }

  else
  {
    v26 = sub_100014DCC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v27 = qword_100022C48;
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100018810;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_10000ACE8();
    *(v28 + 32) = a3;
    *(v28 + 40) = a4;

    sub_10001494C(v26, &_mh_execute_header, v27, "Started recording to %@", 23, 2, v28);
  }
}

void sub_10000D188(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10000D1F4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_10000D238()
{
  v1 = sub_100014CAC();
  v17 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100014CCC();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100014DCC();
  if (qword_1000219A8 != -1)
  {
    v14 = v7;
    swift_once();
    v7 = v14;
  }

  sub_10001494C(v7, &_mh_execute_header, qword_100022C48, "Stopping recording!", 19, 2, &_swiftEmptyArrayStorage, qword_100022C48);
  if (qword_1000219A0 != -1)
  {
    swift_once();
  }

  v8 = qword_100022C40;
  if (!*(qword_100022C40 + 40))
  {
    v9 = [objc_opt_self() exclavesStatusForSensors:1];
    v10 = sub_100014CEC();

    *(v8 + 40) = v10;
  }

  aBlock[4] = sub_100010028;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010294;
  aBlock[3] = &unk_10001D618;
  v11 = _Block_copy(aBlock);

  sub_100014CBC();
  v18 = &_swiftEmptyArrayStorage;
  sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005898(&qword_100022698, &qword_100018920);
  sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
  sub_100014E7C();
  sub_100014E1C();
  _Block_release(v11);
  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);

  v12 = sub_100014DCC();
  return sub_10001494C(v12, &_mh_execute_header, v15, "Stopping recording finished", 27, 2, &_swiftEmptyArrayStorage);
}

void sub_10000D614(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest);
  v3[4] = sub_100010030;
  v3[5] = a1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_10000D188;
  v3[3] = &unk_10001D640;
  v2 = _Block_copy(v3);

  [v1 stopRecording:v2];
  _Block_release(v2);
}

uint64_t sub_10000D6E4(void **a1, uint64_t a2)
{
  v4 = sub_100014CAC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100014CCC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v10;
  if (a1)
  {
    v27 = v9;
    v28 = v5;
    swift_errorRetain();
    v13 = sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v14 = qword_100022C48;
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100018810;
    aBlock = a1;
    swift_errorRetain();
    sub_100005898(&qword_100022688, &qword_100018918);
    v16 = sub_100014D1C();
    v18 = v17;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_10000ACE8();
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    sub_10001494C(v13, &_mh_execute_header, v14, "Error saving recording file: %@", 31, 2, v15);

    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v19 = sub_100014E0C();
    v34 = sub_100010064;
    v35 = a2;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_100010294;
    v33 = &unk_10001D690;
    v20 = _Block_copy(&aBlock);

    sub_100014CBC();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    sub_100014E7C();
    sub_100014E1C();
    _Block_release(v20);

    (*(v28 + 8))(v7, v4);
    return (*(v27 + 8))(v12, v29);
  }

  else
  {
    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v28 = sub_100014E0C();
    v34 = sub_100010038;
    v35 = a2;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_100010294;
    v33 = &unk_10001D668;
    v22 = _Block_copy(&aBlock);

    sub_100014CBC();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    sub_100014E7C();
    v23 = v28;
    sub_100014E1C();
    _Block_release(v22);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v29);
    v24 = sub_100014D9C();
    if (qword_1000219A8 != -1)
    {
      v25 = v24;
      swift_once();
      v24 = v25;
    }

    return sub_10001494C(v24, &_mh_execute_header, qword_100022C48, "Stop Recording is Completed", 27, 2, &_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10000DCBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100014CAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100014CCC();
  v10 = *(v17 - 8);
  __chkstk_darwin(v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioOutputQueue);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_10000FDE4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010294;
  aBlock[3] = &unk_10001D578;
  v14 = _Block_copy(aBlock);

  sub_100014CBC();
  v18 = &_swiftEmptyArrayStorage;
  sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005898(&qword_100022698, &qword_100018920);
  sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
  sub_100014E7C();
  sub_100014E1C();
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

void sub_10000DF94(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10001492C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v42 - v11;
  v13 = *(a1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest);
  [v13 stopPlayback];
  v14 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence;
  [*(a1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_sequence) setOutputMode:1];

  if (sub_10000FEDC(a2, a3) == 5)
  {
    v15 = sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      v41 = v15;
      swift_once();
      v15 = v41;
    }

    v16 = qword_100022C48;

    sub_10001494C(v15, &_mh_execute_header, v16, "Playback microphone name is invalid", 35, 2, &_swiftEmptyArrayStorage);
  }

  else
  {
    v45 = v13;
    v17 = *(a1 + v14);
    v18 = sub_100014CFC();
    [v17 setMicrophone:v18];

    v19 = *(a1 + v14);
    sub_1000148EC();
    sub_1000148FC();
    v20 = *(v7 + 8);
    v20(v10, v6);
    sub_1000148CC(v21);
    v23 = v22;
    v44 = v20;
    v20(v12, v6);
    [v19 setStimulusURL:v23];

    v43 = sub_100014DCC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v24 = v6;
    v42 = qword_100022C48;
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1000188B0;
    v26 = [*(a1 + v14) microphone];
    if (v26)
    {
      v27 = v26;
      v28 = sub_100014D0C();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    *(v25 + 56) = &type metadata for String;
    v31 = sub_10000ACE8();
    *(v25 + 64) = v31;
    v32 = 0x8000000100016910;
    v33 = 0xD000000000000010;
    if (v30)
    {
      v33 = v28;
      v32 = v30;
    }

    *(v25 + 32) = v33;
    *(v25 + 40) = v32;
    v34 = [*(a1 + v14) stimulusURL];
    sub_10001490C();

    v35 = sub_1000148AC();
    v37 = v36;
    v44(v12, v24);
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v31;
    *(v25 + 72) = v35;
    *(v25 + 80) = v37;
    sub_10001494C(v43, &_mh_execute_header, v42, "Playing audio with microphone: %@, StimulusURL: %@", 50, 2, v25);

    v38 = *(a1 + v14);
    aBlock[4] = sub_10000FF28;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D188;
    aBlock[3] = &unk_10001D5A0;
    v39 = _Block_copy(aBlock);
    v40 = v38;

    [v45 playback:v40 filePath:0 completion:v39];
    _Block_release(v39);
  }
}

uint64_t sub_10000E47C(uint64_t a1, uint64_t a2)
{
  v49 = sub_10001492C();
  v3 = *(v49 - 8);
  v4 = __chkstk_darwin(v49);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v41 - v7;
  v9 = sub_100014CAC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100014CCC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v14;
  if (v16)
  {
    v44 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v45 = v12;
    v18 = a2;
    v46 = v13;
    v47 = v10;
    v48 = v9;
    v19 = v16;
    swift_errorRetain();
    v42 = sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v41 = qword_100022C48;
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000188B0;
    aBlock = v19;
    swift_errorRetain();
    sub_100005898(&qword_100022688, &qword_100018918);
    v21 = sub_100014D1C();
    v43 = v19;
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    v24 = sub_10000ACE8();
    *(v20 + 64) = v24;
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    sub_1000148EC();
    sub_1000148FC();
    v25 = *(v3 + 8);
    v26 = v6;
    v27 = v49;
    v25(v26, v49);
    v28 = sub_1000148AC();
    v30 = v29;
    v25(v8, v27);
    *(v20 + 96) = &type metadata for String;
    *(v20 + 104) = v24;
    *(v20 + 72) = v28;
    *(v20 + 80) = v30;
    sub_10001494C(v42, &_mh_execute_header, v41, "Error reading recorded file: %@, file %@", 40, 2, v20);

    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v31 = sub_100014E0C();
    v55 = sub_10000FF5C;
    v56 = v18;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100010294;
    v54 = &unk_10001D5F0;
    v32 = _Block_copy(&aBlock);

    v33 = v44;
    sub_100014CBC();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    v34 = v45;
    v35 = v48;
    sub_100014E7C();
    sub_100014E1C();
    _Block_release(v32);

    (*(v47 + 8))(v34, v35);
    (*(v50 + 8))(v33, v46);
    sub_10000F470();
    sub_10000C188();
  }

  else
  {
    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v49 = sub_100014E0C();
    v55 = sub_10000FF30;
    v56 = a2;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_100010294;
    v54 = &unk_10001D5C8;
    v37 = _Block_copy(&aBlock);

    sub_100014CBC();
    aBlock = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    sub_100014E7C();
    v38 = v49;
    sub_100014E1C();
    _Block_release(v37);

    (*(v10 + 8))(v12, v9);
    (*(v50 + 8))(v17, v13);
    v39 = sub_100014D9C();
    if (qword_1000219A8 != -1)
    {
      v40 = v39;
      swift_once();
      v39 = v40;
    }

    return sub_10001494C(v39, &_mh_execute_header, qword_100022C48, "Playback is Completed", 21, 2, &_swiftEmptyArrayStorage);
  }
}

uint64_t sub_10000EBF8(uint64_t a1, uint64_t a2)
{
  v5 = sub_100014CAC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100014CCC();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioOutputQueue);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100010294;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_100014CBC();
  v16 = &_swiftEmptyArrayStorage;
  sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005898(&qword_100022698, &qword_100018920);
  sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
  sub_100014E7C();
  sub_100014E1C();
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_10000EE90()
{
  v1 = v0;
  v2 = sub_100014CAC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100014CCC();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000F470();
  sub_10000C188();
  v9 = [objc_opt_self() defaultManager];
  sub_1000148CC(&off_100022000);
  v11 = v10;
  aBlock[0] = 0;
  v12 = [v9 createDirectoryAtURL:v10 withIntermediateDirectories:0 attributes:0 error:aBlock];

  if (v12)
  {
    v13 = aBlock[0];
    v14 = sub_100014DCC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v15 = qword_100022C48;
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100018810;
    v17 = sub_10001491C();
    v19 = v18;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10000ACE8();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_10001494C(v14, &_mh_execute_header, v15, "Created directory: %@", 21, 2, v16);
  }

  else
  {
    v32 = v6;
    v33 = v3;
    v34 = v2;
    v21 = aBlock[0];
    v22 = sub_10001489C();

    swift_willThrow();
    v23 = sub_100014DAC();
    if (qword_1000219A8 != -1)
    {
      swift_once();
    }

    v24 = qword_100022C48;
    sub_100005898(&qword_1000222D0, &qword_100018838);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100018810;
    aBlock[0] = v22;
    swift_errorRetain();
    sub_100005898(&qword_100022688, &qword_100018918);
    v26 = sub_100014D1C();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_10000ACE8();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_10001494C(v23, &_mh_execute_header, v24, "Error creating directory: %@", 28, 2, v25);

    sub_100007C80(0, &qword_100022668, OS_dispatch_queue_ptr);
    v29 = sub_100014E0C();
    aBlock[4] = sub_10000FB68;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100010294;
    aBlock[3] = &unk_10001D4D8;
    v30 = _Block_copy(aBlock);

    sub_100014CBC();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10000FBAC(&qword_100022690, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100005898(&qword_100022698, &qword_100018920);
    sub_10000FBF4(&qword_1000226A0, &qword_100022698, &qword_100018920);
    v31 = v34;
    sub_100014E7C();
    sub_100014E1C();
    _Block_release(v30);

    (*(v33 + 8))(v5, v31);
    (*(v35 + 8))(v8, v32);
    sub_10000F470();
    sub_10000C188();
  }
}

uint64_t sub_10000F400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10001499C();
}

void sub_10000F470()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_10001491C();
  v2 = sub_100014CFC();

  v3 = [v1 fileExistsAtPath:v2];

  if (v3)
  {
    v4 = [v0 defaultManager];
    sub_1000148CC(v5);
    v7 = v6;
    v24 = 0;
    v8 = [v4 removeItemAtURL:v6 error:&v24];

    if (v8)
    {
      v9 = v24;
      v10 = sub_100014DCC();
      if (qword_1000219A8 != -1)
      {
        swift_once();
      }

      v11 = qword_100022C48;
      sub_100005898(&qword_1000222D0, &qword_100018838);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100018810;
      v13 = sub_10001491C();
      v15 = v14;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 64) = sub_10000ACE8();
      *(v12 + 32) = v13;
      *(v12 + 40) = v15;
      sub_10001494C(v10, &_mh_execute_header, v11, "Deleted directory: %@", 21, 2, v12);
    }

    else
    {
      v16 = v24;
      v17 = sub_10001489C();

      swift_willThrow();
      v18 = sub_100014DAC();
      if (qword_1000219A8 != -1)
      {
        swift_once();
      }

      v19 = qword_100022C48;
      sub_100005898(&qword_1000222D0, &qword_100018838);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100018810;
      v24 = v17;
      swift_errorRetain();
      sub_100005898(&qword_100022688, &qword_100018918);
      v21 = sub_100014D1C();
      v23 = v22;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_10000ACE8();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      sub_10001494C(v18, &_mh_execute_header, v19, "Error deleting directory: %@", 28, 2, v20);

      sub_10000F470();
      sub_10000C188();
    }
  }
}

uint64_t sub_10000F790()
{
  v1 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager__stopRecordingCompleted;
  v2 = sub_100005898(&qword_100022660, &qword_100018908);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioPlaybackCompleted, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioStartRecordingFailed, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioStopRecordingFailed, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__audioPlaybackFailed, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__createAudioFileFailed, v2);
  v3(v0 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager__readAudioFileFailed, v2);

  v4 = OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioFileFolderURL;
  v5 = sub_10001492C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t sub_10000F938()
{
  sub_10000F790();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AudioManager(uint64_t a1)
{
  result = qword_1000223C0;
  if (!qword_1000223C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000F9E4(uint64_t a1)
{
  sub_10000FACC();
  if (v1 <= 0x3F)
  {
    sub_10001492C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000FACC()
{
  if (!qword_1000223D0)
  {
    v0 = sub_1000149AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000223D0);
    }
  }
}

uint64_t sub_10000FB28@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AudioManager(0);
  result = sub_10001496C();
  *a2 = result;
  return result;
}

uint64_t sub_10000FB94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000FBAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000FBF4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005D70(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FDA0(SEL *a1)
{
  [*(v1 + OBJC_IVAR____TtC15Diagnostic_600412AudioManager_audioDeviceTest) *a1];
  sub_10000F470();

  return sub_10000C188();
}

uint64_t sub_10000FDF0@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001498C();

  *a4 = v6;
  return result;
}

uint64_t sub_10000FE6C(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10001499C();
}

unint64_t sub_10000FEDC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10001CD58;
  v6._object = a2;
  v4 = sub_100014EEC(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001013C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1000102D8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_checked] = &_swiftEmptyDictionarySingleton;
  *&v1[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_audioManager] = a1;

  sub_100011930(0xD000000000000015, 0x8000000100016BA0);
  v2 = sub_100014CFC();

  sub_100011930(0xD00000000000001BLL, 0x8000000100016BC0);
  v3 = sub_100014CFC();

  v4 = sub_100014CFC();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MicrophoneTestEvaluatingViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithTitle:detailText:symbolName:contentLayout:", v2, v3, v4, 3);

  return v5;
}

void sub_100010400(uint64_t a1)
{
  v68.receiver = v1;
  v68.super_class = type metadata accessor for MicrophoneTestEvaluatingViewController();
  objc_msgSendSuper2(&v68, "viewDidLoad");
  v2 = [v1 navigationItem];
  [v2 setHidesBackButton:1];

  v3 = swift_allocObject();
  sub_1000055B0(v69);
  v4 = v69[11];
  *(v3 + 176) = v69[10];
  *(v3 + 192) = v4;
  *(v3 + 208) = v70;
  v5 = v69[7];
  *(v3 + 112) = v69[6];
  *(v3 + 128) = v5;
  v6 = v69[9];
  *(v3 + 144) = v69[8];
  *(v3 + 160) = v6;
  v7 = v69[3];
  *(v3 + 48) = v69[2];
  *(v3 + 64) = v7;
  v8 = v69[5];
  *(v3 + 80) = v69[4];
  *(v3 + 96) = v8;
  v9 = v69[1];
  *(v3 + 16) = v69[0];
  *(v3 + 32) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v3;
  swift_beginAccess();
  v11 = *(v3 + 200);
  v12 = *(v3 + 208);
  *(v3 + 200) = sub_100011824;
  *(v3 + 208) = v10;
  v13 = v1;

  sub_10001182C(v11, v12);
  v14 = *(v3 + 64);
  v73 = *(v3 + 48);
  v74 = v14;
  v15 = *(v3 + 128);
  v77 = *(v3 + 112);
  v78 = v15;
  v16 = *(v3 + 96);
  v75 = *(v3 + 80);
  v76 = v16;
  v83 = *(v3 + 208);
  v17 = *(v3 + 192);
  v81 = *(v3 + 176);
  v82 = v17;
  v18 = *(v3 + 160);
  v79 = *(v3 + 144);
  v80 = v18;
  v19 = *(v3 + 32);
  v71 = *(v3 + 16);
  v72 = v19;
  v20 = *&v13[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_audioManager];
  type metadata accessor for AudioManager(0);

  sub_100005CAC(&v71, v64);
  sub_100005840();
  v21 = sub_10001495C();
  v64[10] = v81;
  v64[11] = v82;
  v64[6] = v77;
  v64[7] = v78;
  v64[8] = v79;
  v64[9] = v80;
  v64[2] = v73;
  v64[3] = v74;
  v64[4] = v75;
  v64[5] = v76;
  v64[0] = v71;
  v64[1] = v72;
  v65 = v83;
  v66 = v21;
  v67 = v20;
  v22 = objc_allocWithZone(sub_100005898(&qword_1000226E0, &qword_100018B58));
  v23 = sub_100014AEC();
  v24 = [v23 view];
  if (v24)
  {
    v25 = v24;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [v13 contentView];
    [v26 addSubview:v25];

    v63 = objc_opt_self();
    sub_100005898(&qword_100022148, &qword_100018580);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100018B20;
    v28 = [v25 leadingAnchor];
    v29 = [v13 contentView];
    v30 = [v29 leadingAnchor];

    v31 = [v28 constraintEqualToAnchor:v30];
    *(v27 + 32) = v31;
    v32 = [v25 trailingAnchor];
    v33 = [v13 contentView];
    v34 = [v33 trailingAnchor];

    v35 = [v32 constraintEqualToAnchor:v34];
    *(v27 + 40) = v35;
    v36 = [v25 topAnchor];
    v37 = [v13 contentView];
    v38 = [v37 topAnchor];

    v39 = [v36 constraintEqualToAnchor:v38];
    *(v27 + 48) = v39;
    v40 = [v25 bottomAnchor];
    v41 = [v13 contentView];
    v42 = [v41 bottomAnchor];

    v43 = [v40 constraintEqualToAnchor:v42];
    *(v27 + 56) = v43;
    sub_100007C80(0, &qword_100022150, NSLayoutConstraint_ptr);
    isa = sub_100014D4C().super.isa;

    [v63 activateConstraints:isa];

    v45 = [objc_opt_self() linkButton];
    sub_100011930(0x415F44524F434552, 0xEC0000004E494147);
    v46 = sub_100014CFC();

    [v45 setTitle:v46 forState:0];

    sub_100007C80(0, &qword_100022100, UIAction_ptr);
    v47 = swift_allocObject();
    *(v47 + 16) = v45;
    *(v47 + 24) = v13;
    v48 = v13;
    v49 = v45;
    v50 = sub_100014E3C();
    [v49 addAction:v50 forControlEvents:{64, 0, 0, 0, sub_10001187C, v47}];

    v51 = [v48 buttonTray];
    [v51 addButton:v49];

    v52 = [v48 navigationItem];
    sub_100007C80(0, &qword_1000226E8, UIBarButtonItem_ptr);
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v61 = v53;
    v84.value.super.super.isa = sub_100014E3C();
    v84.is_nil = 0;
    v54 = sub_100014DDC(UIBarButtonSystemItemCancel, v84, v86).super.super.isa;
    [v52 setLeftBarButtonItem:{v54, 0, 0, 0, sub_1000118BC, v61}];

    v55 = [v48 navigationItem];
    v56 = swift_allocObject();
    *(v56 + 16) = v48;
    v57 = v48;
    v62 = v56;
    v85.value.super.super.isa = sub_100014E3C();
    v85.is_nil = 0;
    v58 = sub_100014DDC(UIBarButtonSystemItemDone, v85, v87).super.super.isa;
    [v55 setRightBarButtonItem:{v58, 0, 0, 0, sub_1000118FC, v62}];

    v59 = [v57 navigationItem];
    v60 = [v59 rightBarButtonItem];

    if (v60)
    {
      [v60 setEnabled:0];
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_100010C34(uint64_t a1, char *a2, uint64_t a3)
{
  *&a2[OBJC_IVAR____TtC15Diagnostic_600438MicrophoneTestEvaluatingViewController_checked] = a1;

  v6 = [a2 navigationItem];
  v7 = [v6 rightBarButtonItem];

  if (v7)
  {
    v8 = *(a1 + 16);
    swift_beginAccess();
    [v7 setEnabled:v8 == *(a3 + 16)];
  }
}

void sub_100010CFC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100011930(0xD000000000000019, 0x8000000100016B60);
  sub_100011930(0xD000000000000019, 0x8000000100016B80);
  v5 = sub_100014CFC();

  v6 = sub_100014CFC();

  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:0];

  v8 = [v7 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    [v8 setSourceView:a2];
  }

  sub_100011930(5457241, 0xE300000000000000);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = a3;
  v12 = sub_100014CFC();

  v15[4] = sub_10001191C;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100007D30;
  v15[3] = &unk_10001D8C0;
  v13 = _Block_copy(v15);

  v14 = [objc_opt_self() actionWithTitle:v12 style:2 handler:v13];
  _Block_release(v13);

  [v7 addAction:v14];
  [v11 presentViewController:v7 animated:1 completion:0];
}

void sub_100010F58(uint64_t a1, char *a2)
{

  sub_10000EBD8();

  v3 = [a2 navigationController];
  if (v3)
  {
    v4 = v3;
  }
}

void sub_100011000(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100011930(0xD000000000000018, 0x80000001000165B0);
    sub_100011930(0xD000000000000018, 0x80000001000165D0);
    v4 = sub_100014CFC();

    v5 = sub_100014CFC();

    v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:0];

    v7 = [v6 popoverPresentationController];
    if (v7)
    {
      v8 = v7;
      v9 = [v3 navigationItem];
      v10 = [v9 leftBarButtonItem];

      [v8 setSourceItem:v10];
    }

    sub_100011930(5457241, 0xE300000000000000);
    v11 = sub_100014CFC();

    aBlock[4] = sub_10000B6FC;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007D30;
    aBlock[3] = &unk_10001D870;
    v12 = _Block_copy(aBlock);

    v13 = [objc_opt_self() actionWithTitle:v11 style:2 handler:v12];
    _Block_release(v12);

    [v6 addAction:v13];
    [v3 presentViewController:v6 animated:1 completion:0];
  }
}

uint64_t sub_100011288(uint64_t a1, char *a2)
{
  v10 = &_swiftEmptyDictionarySingleton;

  sub_100011388(v3, &v10);

  sub_10000F470();
  sub_10000C188();

  v4 = [a2 navigationController];
  if (v4)
  {
    v5 = v4;
    v6 = objc_allocWithZone(type metadata accessor for MicrophoneTestCompletedViewController());

    v8 = sub_100006A80(v7);
    [v5 pushViewController:v8 animated:1];
  }
}

uint64_t sub_100011388(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v34 = a2;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + v11) == 0;
    v16 = 1818845510;
    if (!v15)
    {
      v16 = 1936941392;
    }

    v36 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *a2;
    v37 = *a2;
    *a2 = 0x8000000000000000;
    v19 = sub_100013224(v14, v13);
    v21 = *(v18 + 16);
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_25;
    }

    v25 = v20;
    if (*(v18 + 24) < v24)
    {
      sub_100013838(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_100013224(v14, v13);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_27;
      }

LABEL_18:
      v27 = v37;
      if (v25)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_18;
    }

    v32 = v19;
    sub_100013F84();
    v19 = v32;
    v27 = v37;
    if (v25)
    {
LABEL_4:
      v9 = (v27[7] + 16 * v19);
      *v9 = v36;
      v9[1] = 0xE400000000000000;

      goto LABEL_5;
    }

LABEL_19:
    v27[(v19 >> 6) + 8] |= 1 << v19;
    v28 = (v27[6] + 16 * v19);
    *v28 = v14;
    v28[1] = v13;
    v29 = (v27[7] + 16 * v19);
    *v29 = v36;
    v29[1] = 0xE400000000000000;
    v30 = v27[2];
    v23 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v23)
    {
      goto LABEL_26;
    }

    v27[2] = v31;

LABEL_5:
    v6 &= v6 - 1;
    a2 = v34;
    *v34 = v27;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_100014F0C();
  __break(1u);
  return result;
}

id sub_100011688(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MicrophoneTestEvaluatingViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10001172C()
{

  if (*(v0 + 200))
  {
  }

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_1000117E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001182C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001183C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011884()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000118C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011904(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100011930(uint64_t a1, void *a2)
{
  if (qword_1000219B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1000226F0;
  if (!*(off_1000226F0 + 2) || (v5 = sub_100013224(a1, a2), (v6 & 1) == 0))
  {
    swift_endAccess();
LABEL_10:
    v11 = [objc_opt_self() mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    v16.value._countAndFlagsBits = 0;
    v16.value._object = 0;
    v12.super.isa = v11;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v8 = sub_10001488C(v15, v16, v12, v17, 0, v14);

    return v8;
  }

  v7 = (v4[7] + 16 * v5);
  v8 = *v7;
  v9 = v7[1];
  swift_endAccess();
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  return v8;
}

void *sub_100011A74()
{
  result = sub_1000142B8(&_swiftEmptyArrayStorage);
  off_1000226F0 = result;
  return result;
}

uint64_t sub_100011A9C()
{
  type metadata accessor for MicrophoneTestViewControllerManager();
  v0 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  qword_100022C68 = v0;
  return result;
}

uint64_t sub_100011AE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100011B3C(uint64_t a1, void *a2)
{
  if (a1)
  {
    type metadata accessor for MicrophoneTestInputs();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = v4;
      v6 = qword_1000219A0;
      result = swift_unknownObjectRetain();
      if (v6 != -1)
      {
        result = swift_once();
      }

      v8 = *(v5 + OBJC_IVAR___MicrophoneTestInputs_audioRecordingDuration);
      if (v8 > 10.0)
      {
        v8 = 10.0;
      }

      *(qword_100022C40 + 16) = v8;
      v9 = OBJC_IVAR___MicrophoneTestInputs_stringProperties;
      v10 = *(v5 + OBJC_IVAR___MicrophoneTestInputs_stringProperties);
      if (!v10)
      {
        goto LABEL_17;
      }

      if (*(v10 + 16))
      {
        if (qword_1000219B0 != -1)
        {
          result = swift_once();
          v10 = *(v5 + v9);
          if (!v10)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            return result;
          }
        }

        swift_beginAccess();
        off_1000226F0 = v10;
      }

      sub_100012174();
      *(v2 + OBJC_IVAR___MicrophoneTestViewController_responder) = a2;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      [a2 enableVolumeHUD:0];
      return swift_unknownObjectRelease();
    }
  }

  v11 = sub_1000142B8(&_swiftEmptyArrayStorage);
  sub_100012324(-912, v11);
}

id sub_100011D94()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = objc_opt_self();
  v3 = @"HeadphonesConnectedNotification";
  v4 = [v2 mainQueue];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_1000147C4;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100011F90;
  v9[3] = &unk_10001D910;
  v6 = _Block_copy(v9);

  v7 = [v1 addObserverForName:v3 object:0 queue:v4 usingBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();

  return [*(v0 + OBJC_IVAR___MicrophoneTestViewController_headphonesDetector) start];
}

void *sub_100011F1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_1000142B8(&_swiftEmptyArrayStorage);
    sub_1000128F0(4, v4);
  }

  return result;
}

uint64_t sub_100011F90(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001487C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_10001486C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_100012174()
{
  v1 = v0;
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor:v4];

    if (qword_1000219B8 != -1)
    {
      swift_once();
    }

    swift_unknownObjectWeakAssign();
    v5 = objc_allocWithZone(type metadata accessor for MicrophoneTestStartingViewController());

    v7 = sub_10000AF14(v6);
    v11 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v7];
    [v11 setModalPresentationStyle:0];
    [v1 presentViewController:v11 animated:1 completion:0];
    sub_100012C18();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = *(Strong + OBJC_IVAR___MicrophoneTestViewController_headphonesDetector);

      [v10 stop];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100012324(uint64_t a1, uint64_t a2)
{
  v5 = sub_100014DCC();
  if (qword_1000219A8 != -1)
  {
    swift_once();
  }

  v6 = qword_100022C48;
  if (os_log_type_enabled(qword_100022C48, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v6, v5, "Finished test with status %ld", v7, 0xCu);
  }

  v8 = sub_100012628(a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = &_swiftEmptyDictionarySingleton;
  sub_100014548(v8, sub_1000140FC, 0, isUniquelyReferenced_nonNull_native, &v21);

  v10 = v21;
  if (qword_1000219A0 != -1)
  {
    swift_once();
  }

  v11 = *(qword_100022C40 + 40);
  if (v11)
  {
    swift_bridgeObjectRetain_n();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v10;
    sub_100014548(v11, sub_1000140FC, 0, v12, &v21);
  }

  v13 = [v2 result];
  if (v11)
  {
    v14.super.isa = sub_100014CDC().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  v15 = objc_opt_self();
  isa = sub_100014D8C().super.super.isa;
  v17 = [v15 testResultOverrideForExclavesStatus:v14.super.isa originalResult:isa];

  [v13 setStatusCode:v17];
  v18 = [v2 result];
  v19 = sub_100014CDC().super.isa;

  [v18 setData:v19];

  return [v2 setFinished:1];
}

uint64_t sub_100012628(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100005898(&qword_100022818, &qword_100018BD8);
    v2 = sub_100014EDC();
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
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1000143D4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1000143D4(v29, v30);
    result = sub_100014E8C(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1000143D4(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_1000128F0(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = sub_100014DCC();
  if (qword_1000219A8 != -1)
  {
    swift_once();
  }

  v6 = qword_100022C48;
  if (os_log_type_enabled(qword_100022C48, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = qword_100018C00[v4];
    _os_log_impl(&_mh_execute_header, v6, v5, "Finished test with status %ld", v7, 0xCu);
  }

  v8 = sub_100012628(a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = &_swiftEmptyDictionarySingleton;
  sub_100014548(v8, sub_1000140FC, 0, isUniquelyReferenced_nonNull_native, &v21);

  v10 = v21;
  if (qword_1000219A0 != -1)
  {
    swift_once();
  }

  v11 = *(qword_100022C40 + 40);
  if (v11)
  {
    swift_bridgeObjectRetain_n();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v10;
    sub_100014548(v11, sub_1000140FC, 0, v12, &v21);
  }

  v13 = [v2 result];
  if (v11)
  {
    v14.super.isa = sub_100014CDC().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  v15 = objc_opt_self();
  isa = sub_100014D8C().super.super.isa;
  v17 = [v15 testResultOverrideForExclavesStatus:v14.super.isa originalResult:isa];

  [v13 setStatusCode:v17];
  v18 = [v2 result];
  v19 = sub_100014CDC().super.isa;

  [v18 setData:v19];

  return [v2 setFinished:1];
}

void sub_100012C18()
{
  v10 = 0;
  v1 = [objc_opt_self() sharedAVSystemController];
  if (v1)
  {
    v2 = v1;
    v3 = sub_100014CFC();
    [v2 getVolume:&v10 + 4 forCategory:v3];

    v4 = v2;
    v5 = sub_100014CFC();
    [v4 getVolume:&v10 forCategory:v5];

    v6 = v10;
    v7 = HIDWORD(v10);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = v0 + OBJC_IVAR___MicrophoneTestViewController_userPlayRecordVolume;
  *v8 = v7;
  *(v8 + 4) = 0;
  v9 = v0 + OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume;
  *v9 = v6;
  *(v9 + 4) = 0;
}

void sub_100012D6C()
{
  v1 = [objc_opt_self() sharedAVSystemController];
  if ((*(v0 + OBJC_IVAR___MicrophoneTestViewController_userPlayRecordVolume + 4) & 1) == 0)
  {
    if (v1)
    {
      v2 = *(v0 + OBJC_IVAR___MicrophoneTestViewController_userPlayRecordVolume);
      v9 = v1;
      v3 = v1;
      v4 = sub_100014CFC();
      LODWORD(v5) = v2;
      [v3 setVolumeTo:v4 forCategory:v5];

      v1 = v9;
      if ((*(v0 + OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume + 4) & 1) == 0)
      {
        v6 = *(v0 + OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume);
        v10 = v3;
        v7 = sub_100014CFC();
        LODWORD(v8) = v6;
        [v10 setVolumeTo:v7 forCategory:v8];

        v1 = v10;
      }
    }

    else if ((*(v0 + OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume + 4) & 1) == 0)
    {
      return;
    }
  }
}

id sub_100012EDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR___MicrophoneTestViewController_audioManager;
  type metadata accessor for AudioManager(0);
  swift_allocObject();
  *&v3[v7] = sub_10000BAB8();
  v8 = OBJC_IVAR___MicrophoneTestViewController_headphonesDetector;
  *&v4[v8] = [objc_allocWithZone(DAHeadphonesDetector) init];
  *&v4[OBJC_IVAR___MicrophoneTestViewController_responder] = 0;
  v9 = &v4[OBJC_IVAR___MicrophoneTestViewController_userPlayRecordVolume];
  *v9 = 0;
  v9[4] = 1;
  v10 = &v4[OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume];
  *v10 = 0;
  v10[4] = 1;
  if (a2)
  {
    v11 = sub_100014CFC();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = type metadata accessor for MicrophoneTestViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", v11, a3);

  return v12;
}

id sub_100013058(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MicrophoneTestViewController_audioManager;
  type metadata accessor for AudioManager(0);
  swift_allocObject();
  *&v1[v4] = sub_10000BAB8();
  v5 = OBJC_IVAR___MicrophoneTestViewController_headphonesDetector;
  *&v2[v5] = [objc_allocWithZone(DAHeadphonesDetector) init];
  *&v2[OBJC_IVAR___MicrophoneTestViewController_responder] = 0;
  v6 = &v2[OBJC_IVAR___MicrophoneTestViewController_userPlayRecordVolume];
  *v6 = 0;
  v6[4] = 1;
  v7 = &v2[OBJC_IVAR___MicrophoneTestViewController_userAudioVideoVolume];
  *v7 = 0;
  v7[4] = 1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for MicrophoneTestViewController();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

id sub_100013170(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MicrophoneTestViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100013224(uint64_t a1, uint64_t a2)
{
  sub_100014F1C();
  sub_100014D2C();
  v4 = sub_100014F3C();

  return sub_100013AF8(a1, a2, v4);
}

unint64_t sub_10001329C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100014E8C(*(v2 + 40));

  return sub_100013BB0(a1, v4);
}

uint64_t sub_1000132E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005898(&unk_100022830, &unk_100018BF0);
  v34 = v4;
  result = sub_100014ECC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_100014F1C();
      sub_100014D2C();
      result = sub_100014F3C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_100013580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005898(&qword_100022818, &qword_100018BD8);
  result = sub_100014ECC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1000143D4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100014484(v23, &v36);
        sub_10000AEB4(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_100014E8C(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1000143D4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100013838(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100005898(&qword_100022828, &qword_100018BE8);
  v37 = v4;
  result = sub_100014ECC();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_100014F1C();
      sub_100014D2C();
      result = sub_100014F3C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_100013AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100014EFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100013BB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100014484(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100014E9C();
      sub_100014430(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_100013C78()
{
  v1 = v0;
  sub_100005898(&unk_100022830, &unk_100018BF0);
  v2 = *v0;
  v3 = sub_100014EBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100013DE0()
{
  v1 = v0;
  sub_100005898(&qword_100022818, &qword_100018BD8);
  v2 = *v0;
  v3 = sub_100014EBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100014484(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000AEB4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000143D4(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100013F84()
{
  v1 = v0;
  sub_100005898(&qword_100022828, &qword_100018BE8);
  v2 = *v0;
  v3 = sub_100014EBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1000140FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100014484(a1, a2);

  return sub_10000AEB4(a1 + 40, a2 + 40);
}

_OWORD *sub_100014140@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_100014484(*(v3 + 48) + 40 * v13, &v17);
    sub_10000AEB4(*(v3 + 56) + 32 * v13, v22);
    v23 = v17;
    v24 = v18;
    *&v25 = v19;
    result = sub_1000143D4(v22, (&v25 + 8));
    v15 = *(&v24 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v16 = v1[5];
      v17 = v23;
      *&v18 = v24;
      *(&v18 + 1) = v15;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16(&v17);
      return sub_1000144E0(&v17);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1000142B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005898(&qword_100022828, &qword_100018BE8);
    v3 = sub_100014EDC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100013224(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_1000143D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000143E4(void *a1)
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

uint64_t sub_1000144E0(uint64_t a1)
{
  v2 = sub_100005898(&qword_100022820, &qword_100018BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014548(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v41 = a1;
  v42 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v43 = v8;
  v44 = 0;
  v45 = v11 & v9;
  v46 = a2;
  v47 = a3;

  sub_100014140(&v37);
  if (!*(&v38 + 1))
  {
LABEL_18:
    sub_1000143CC(v41);
  }

  while (1)
  {
    v34 = v37;
    v35 = v38;
    v36 = v39;
    sub_1000143D4(&v40, v33);
    v15 = *a5;
    v16 = sub_10001329C(&v34);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_100013580(v21, a4 & 1);
      v16 = sub_10001329C(&v34);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v30 = v16;
    sub_100013DE0();
    v16 = v30;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_10000AEB4(*(*a5 + 56) + 32 * v16, v32);
      sub_1000143E4(v33);
      sub_100014430(&v34);
      v14 = *(v12 + 56);
      sub_1000143E4((v14 + v13));
      sub_1000143D4(v32, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v24 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v25 = v24[6] + 40 * v16;
    v26 = v34;
    v27 = v35;
    *(v25 + 32) = v36;
    *v25 = v26;
    *(v25 + 16) = v27;
    sub_1000143D4(v33, (v24[7] + 32 * v16));
    v28 = v24[2];
    v20 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v24[2] = v29;
LABEL_7:
    sub_100014140(&v37);
    a4 = 1;
    if (!*(&v38 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_100014F0C();
  __break(1u);
  return result;
}

uint64_t sub_10001478C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000147CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}