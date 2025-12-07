unint64_t sub_10001EF04(uint64_t a1)
{
  sub_100040A6C();
  sub_10001F72C(&qword_100054E90, &type metadata accessor for PeopleURL.ArrayParameter, &protocol conformance descriptor for PeopleURL.ArrayParameter);
  v2 = sub_100041ECC();
  return sub_10001F0AC(a1, v2, &type metadata accessor for PeopleURL.ArrayParameter, &qword_100054E98, &type metadata accessor for PeopleURL.ArrayParameter, &protocol conformance descriptor for PeopleURL.ArrayParameter);
}

unint64_t sub_10001EFD8(uint64_t a1)
{
  sub_100040A8C();
  sub_10001F72C(&qword_100054EB0, &type metadata accessor for PeopleURL.Parameter, &protocol conformance descriptor for PeopleURL.Parameter);
  v2 = sub_100041ECC();
  return sub_10001F0AC(a1, v2, &type metadata accessor for PeopleURL.Parameter, &qword_100054EB8, &type metadata accessor for PeopleURL.Parameter, &protocol conformance descriptor for PeopleURL.Parameter);
}

unint64_t sub_10001F0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_10001F72C(v23, v24, v25);
      v19 = sub_100041EDC();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_10001F24C(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_100054EA0, &qword_100043668);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003DC0(&qword_100054EA8, &unk_100043670);
    v7 = sub_1000421EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100011258(v9, v5, &qword_100054EA0, &qword_100043668);
      result = sub_10001EFD8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100040A8C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10001F434(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_100054E80, &qword_100043658);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003DC0(&qword_100054E88, &qword_100043660);
    v7 = sub_1000421EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100011258(v9, v5, &qword_100054E80, &qword_100043658);
      result = sub_10001EF04(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100040A6C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10001F61C()
{
  result = qword_100054E68;
  if (!qword_100054E68)
  {
    sub_100003E08(&qword_100054E60, &qword_100043648);
    sub_10001F6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E68);
  }

  return result;
}

unint64_t sub_10001F6A8()
{
  result = qword_100054E70;
  if (!qword_100054E70)
  {
    sub_100003E08(&qword_100054E78, &qword_100043650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054E70);
  }

  return result;
}

uint64_t sub_10001F72C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001F788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10001F874(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_10001F958(uint64_t a1)
{
  sub_10001F9CC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10001F9CC(uint64_t a1)
{
  if (!qword_1000548C8)
  {
    sub_100041CFC();
    v1 = sub_1000411AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1000548C8);
    }
  }
}

uint64_t sub_10001FA38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10001FAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10001FB60(uint64_t a1)
{
  sub_10001F9CC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10001FBD0()
{
  result = qword_100054FE0;
  if (!qword_100054FE0)
  {
    sub_100003E08(&qword_100054FE8, "44");
    sub_10001E43C();
    sub_100004D80(&qword_100054E48, &qword_100054E38, &qword_100043638, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FE0);
  }

  return result;
}

unint64_t sub_10001FCC0()
{
  result = qword_100055028;
  if (!qword_100055028)
  {
    sub_100003E08(&qword_100055018, &qword_100043788);
    sub_100004D80(&qword_100055030, &qword_100055038, &qword_100043798, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055028);
  }

  return result;
}

uint64_t sub_10001FD78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10001FD8C()
{
  result = qword_100055068;
  if (!qword_100055068)
  {
    sub_100003E08(&qword_100055070, &qword_1000437C0);
    sub_100003E08(&qword_100055000, &unk_100043770);
    sub_100004D80(&qword_100055008, &qword_100055000, &unk_100043770, &protocol conformance descriptor for _ViewModifier_Content<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055068);
  }

  return result;
}

unint64_t sub_10001FE88()
{
  result = qword_100055078;
  if (!qword_100055078)
  {
    sub_100003E08(&qword_100055080, &qword_1000437C8);
    sub_10001FCC0();
    sub_100004D80(&qword_100055040, &qword_100055020, &qword_100043790, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055078);
  }

  return result;
}

uint64_t sub_10001FF60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100041CAC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[13];
      goto LABEL_3;
    }

    v14 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[14];
      goto LABEL_3;
    }

    v15 = sub_100003DC0(&qword_100054848, &unk_100042E60);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100020150(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100041CAC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_3;
  }

  v14 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[14];
    goto LABEL_3;
  }

  v15 = sub_100003DC0(&qword_100054848, &unk_100042E60);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[15];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for StatusAndNameView(uint64_t a1)
{
  result = qword_1000550E8;
  if (!qword_1000550E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100020378(uint64_t a1)
{
  sub_100020620(319, &qword_1000550F8, sub_100010EE4, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100041CAC();
    if (v2 <= 0x3F)
    {
      sub_100020558();
      if (v3 <= 0x3F)
      {
        sub_1000205BC(319);
        if (v4 <= 0x3F)
        {
          sub_100020620(319, &qword_1000548B8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            sub_100020620(319, &unk_100055118, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_100020620(319, &qword_1000548C8, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_100020558()
{
  result = qword_100055100;
  if (!qword_100055100)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100055100);
  }

  return result;
}

void sub_1000205BC(uint64_t a1)
{
  if (!qword_100055108)
  {
    sub_100003E08(&qword_100055110, qword_1000437F8);
    v1 = sub_1000411AC();
    if (!v2)
    {
      atomic_store(v1, &qword_100055108);
    }
  }
}

void sub_100020620(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000206A0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = sub_100003DC0(&qword_100055178, &qword_100043858);
  __chkstk_darwin(v3 - 8);
  v90 = (&v89 - v4);
  v106 = sub_100003DC0(&qword_100055180, &qword_100043860);
  v104 = *(v106 - 8);
  v5 = __chkstk_darwin(v106);
  v91 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v92 = &v89 - v7;
  v8 = sub_1000414EC();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v93 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003DC0(&qword_100055188, &qword_100043868);
  v11 = __chkstk_darwin(v10 - 8);
  v105 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v89 - v13;
  v15 = sub_10004169C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100003DC0(&qword_100055190, &qword_100043870);
  v19 = __chkstk_darwin(v100);
  v102 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v99 = &v89 - v22;
  __chkstk_darwin(v21);
  v23 = *a1;
  v103 = v14;
  v101 = &v89 - v24;
  v108 = a1;
  v97 = v23;
  if (v23)
  {
    v25 = type metadata accessor for StatusAndNameView(0);
    sub_100010A94((a1 + *(v25 + 32)), *(a1 + *(v25 + 32) + 24));
    v26 = v23;
    v27 = sub_1000410CC();
    v29 = v28;
  }

  else
  {
    v30 = sub_100041F4C();
    v27 = v30;
    v29 = v31;
  }

  *&v119 = v27;
  *(&v119 + 1) = v29;
  v98 = sub_100004924(v30, v31, v32);
  v33 = sub_10004178C();
  v35 = v34;
  v37 = v36;
  v96 = type metadata accessor for StatusAndNameView(0);
  (*(v16 + 104))(v18, enum case for Font.Leading.tight(_:), v15);
  sub_1000416AC();
  (*(v16 + 8))(v18, v15);
  v38 = sub_10004176C();
  v40 = v39;
  v42 = v41;

  sub_10001FD78(v33, v35, v37 & 1);

  sub_10004167C();
  v43 = sub_10004170C();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v40;
  v51 = v96;
  sub_10001FD78(v38, v50, v42 & 1);

  v52 = v108;
  v53 = *(v108 + *(v51 + 40));
  KeyPath = swift_getKeyPath();
  v55 = swift_getKeyPath();
  v118 = v47 & 1;
  v117 = 0;
  *&v112 = v43;
  *(&v112 + 1) = v45;
  LOBYTE(v113) = v47 & 1;
  *(&v113 + 1) = v49;
  *&v114 = KeyPath;
  *(&v114 + 1) = v53;
  LOBYTE(v115) = 0;
  *(&v115 + 1) = v55;
  v116 = 1;
  v56 = v97;
  if (v97)
  {
    sub_100010A94((v52 + *(v51 + 32)), *(v52 + *(v51 + 32) + 24));
    v57 = sub_1000410CC();
    v59 = v58;
  }

  else
  {
    v57 = sub_100041F4C();
    v59 = v60;
  }

  v61 = v101;
  *&v119 = v57;
  *(&v119 + 1) = v59;
  v62 = sub_10004178C();
  v64 = v63;
  v66 = v65;
  sub_100003DC0(&qword_100055198, &qword_1000438D8);
  sub_100021BF8();
  v67 = v99;
  sub_10004182C();
  sub_10001FD78(v62, v64, v66 & 1);

  v110[2] = v114;
  v110[3] = v115;
  v111 = v116;
  v110[0] = v112;
  v110[1] = v113;
  sub_1000049F8(v110, &qword_100055198, &qword_1000438D8);
  sub_100040B6C();
  sub_10004124C();

  sub_1000049F8(v67, &qword_100055190, &qword_100043870);
  v68 = v108;
  sub_100041C8C();
  v69 = v61;
  if (*(&v120 + 1))
  {
    sub_100004B44(&v119, v109);
    v70 = v93;
    sub_10002F610(v93);
    v71 = sub_1000414DC();
    (*(v94 + 8))(v70, v95);
    v72 = v103;
    if ((v71 & 1) == 0)
    {
      v73 = sub_1000414BC();
      v74 = v90;
      *v90 = v73;
      *(v74 + 8) = 0x4008000000000000;
      *(v74 + 16) = 0;
      v75 = sub_100003DC0(&qword_1000551E8, &qword_100043908);
      sub_10002108C(v68, v109, v74 + *(v75 + 44));
      sub_100041A9C();
      sub_10004125C();
      v76 = v91;
      sub_100004C8C(v74, v91, &qword_100055178, &qword_100043858);
      v77 = v106;
      v78 = (v76 + *(v106 + 36));
      v79 = v124;
      v78[4] = v123;
      v78[5] = v79;
      v78[6] = v125;
      v80 = v120;
      *v78 = v119;
      v78[1] = v80;
      v81 = v122;
      v78[2] = v121;
      v78[3] = v81;
      v82 = v76;
      v83 = v92;
      sub_100004C8C(v82, v92, &qword_100055180, &qword_100043860);
      sub_100004C8C(v83, v72, &qword_100055180, &qword_100043860);
      (*(v104 + 56))(v72, 0, 1, v77);
      sub_100010DCC(v109);
      goto LABEL_13;
    }

    sub_100010DCC(v109);
  }

  else
  {
    sub_1000049F8(&v119, &qword_1000551D8, &qword_100044540);
    v72 = v103;
  }

  (*(v104 + 56))(v72, 1, 1, v106);
LABEL_13:
  v84 = v102;
  sub_100011258(v61, v102, &qword_100055190, &qword_100043870);
  v85 = v105;
  sub_100011258(v72, v105, &qword_100055188, &qword_100043868);
  v86 = v107;
  sub_100011258(v84, v107, &qword_100055190, &qword_100043870);
  v87 = sub_100003DC0(&qword_1000551E0, &qword_100043900);
  sub_100011258(v85, v86 + *(v87 + 48), &qword_100055188, &qword_100043868);
  sub_1000049F8(v72, &qword_100055188, &qword_100043868);
  sub_1000049F8(v69, &qword_100055190, &qword_100043870);
  sub_1000049F8(v85, &qword_100055188, &qword_100043868);
  return sub_1000049F8(v84, &qword_100055190, &qword_100043870);
}

uint64_t sub_10002108C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a3;
  v94 = sub_100003DC0(&qword_1000551F0, &qword_100043910);
  __chkstk_darwin(v94);
  v93 = &v86 - v5;
  v6 = sub_100003DC0(&qword_1000551F8, &qword_100043918);
  v7 = __chkstk_darwin(v6 - 8);
  v96 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v86 - v9;
  v10 = sub_10004169C();
  v100 = *(v10 - 8);
  v101 = v10;
  __chkstk_darwin(v10);
  v99 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003DC0(&qword_100055200, &qword_100043920);
  __chkstk_darwin(v12);
  v14 = &v86 - v13;
  v15 = sub_100003DC0(&qword_100055208, &qword_100043928);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v86 - v17;
  v19 = sub_100003DC0(&qword_100055210, &unk_100043930);
  v20 = __chkstk_darwin(v19 - 8);
  v91 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v86 - v22;
  v90 = type metadata accessor for StatusAndNameView(0);
  v92 = a1;
  sub_100041C9C();
  v98 = v23;
  if (!v103)
  {
    sub_1000049F8(&v102, &qword_100055218, &unk_100044680);
    goto LABEL_7;
  }

  sub_100004B44(&v102, &v104);
  sub_100010A94(&v104, v106);
  if ((sub_100041C0C() & 1) == 0 || (sub_100010A94(&v104, v106), (v24 = sub_100041C1C()) == 0))
  {
    sub_100010DCC(&v104);
LABEL_7:
    (*(v16 + 56))(v23, 1, 1, v15);
    LODWORD(v89) = enum case for Font.Leading.tight(_:);
    goto LABEL_8;
  }

  v88 = v24;

  v86 = sub_10004179C();
  v26 = v25;
  v28 = v27;
  v89 = v29;
  v30 = &v14[*(sub_100003DC0(&qword_100055268, &qword_1000439C8) + 36)];
  v31 = *(sub_100003DC0(&qword_100055270, &qword_1000439D0) + 28);
  v87 = v12;
  v32 = enum case for Image.Scale.small(_:);
  v33 = sub_10004195C();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  *v14 = v86;
  *(v14 + 1) = v26;
  v14[16] = v28 & 1;
  *(v14 + 3) = v89;
  sub_1000416BC();
  v35 = v99;
  v34 = v100;
  v36 = *(v100 + 104);
  LODWORD(v89) = enum case for Font.Leading.tight(_:);
  v37 = v101;
  v36(v99);
  v38 = sub_1000416AC();

  (*(v34 + 8))(v35, v37);
  KeyPath = swift_getKeyPath();
  v40 = &v14[*(sub_100003DC0(&qword_100055278, &qword_100043A38) + 36)];
  *v40 = KeyPath;
  v40[1] = v38;
  sub_100010A94(&v104, v106);
  v41 = sub_100041BFC();
  v42 = swift_getKeyPath();
  v43 = &v14[*(v87 + 36)];
  *v43 = v42;
  v43[1] = v41;
  sub_1000221C0();
  sub_10004184C();

  sub_1000049F8(v14, &qword_100055200, &qword_100043920);
  v44 = v98;
  sub_100004C8C(v18, v98, &qword_100055208, &qword_100043928);
  (*(v16 + 56))(v44, 0, 1, v15);
  sub_100010DCC(&v104);
LABEL_8:
  sub_100010A94(a2, a2[3]);
  v104 = sub_100040C2C();
  v105 = v45;
  sub_100004924(v104, v45, v46);
  v47 = sub_10004178C();
  v49 = v48;
  v51 = v50;
  v104 = sub_100040C2C();
  v105 = v52;
  v53 = sub_10004178C();
  v55 = v54;
  v57 = v56;
  v88 = sub_10004174C();
  v59 = v58;
  v61 = v60;
  v87 = v62;
  sub_10001FD78(v53, v55, v57 & 1);

  sub_10001FD78(v47, v49, v51 & 1);

  sub_1000416BC();
  v64 = v99;
  v63 = v100;
  v65 = v101;
  (*(v100 + 104))(v99, v89, v101);
  sub_1000416AC();

  (*(v63 + 8))(v64, v65);
  v66 = v88;
  v101 = sub_10004176C();
  v68 = v67;
  LOBYTE(v65) = v69;
  v71 = v70;

  sub_10001FD78(v66, v59, v61 & 1);

  v72 = *(v92 + *(v90 + 36));
  v73 = swift_getKeyPath();
  v74 = swift_getKeyPath();
  LOBYTE(v66) = v65 & 1;
  LOBYTE(v104) = v65 & 1;
  LOBYTE(v102) = 0;
  v75 = swift_getKeyPath();
  v76 = *(v94 + 36);
  v77 = swift_getKeyPath();
  v78 = v93;
  *&v93[v76] = v77;
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  *v78 = v101;
  *(v78 + 8) = v68;
  *(v78 + 16) = v66;
  *(v78 + 24) = v71;
  *(v78 + 32) = v73;
  *(v78 + 40) = v72;
  *(v78 + 48) = 0;
  *(v78 + 56) = v74;
  *(v78 + 64) = 1;
  *(v78 + 72) = v75;
  *(v78 + 80) = 1;
  sub_100040B5C();
  sub_100021EE4();
  v79 = v95;
  sub_10004187C();

  sub_1000049F8(v78, &qword_1000551F0, &qword_100043910);
  v80 = v98;
  v81 = v91;
  sub_100011258(v98, v91, &qword_100055210, &unk_100043930);
  v82 = v96;
  sub_100011258(v79, v96, &qword_1000551F8, &qword_100043918);
  v83 = v97;
  sub_100011258(v81, v97, &qword_100055210, &unk_100043930);
  v84 = sub_100003DC0(&qword_100055260, &qword_1000439C0);
  sub_100011258(v82, v83 + *(v84 + 48), &qword_1000551F8, &qword_100043918);
  sub_1000049F8(v79, &qword_1000551F8, &qword_100043918);
  sub_1000049F8(v80, &qword_100055210, &unk_100043930);
  sub_1000049F8(v82, &qword_1000551F8, &qword_100043918);
  return sub_1000049F8(v81, &qword_100055210, &unk_100043930);
}

uint64_t sub_100021A30@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1000414FC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100003DC0(&qword_100055170, &qword_100043850);
  return sub_1000206A0(v2, a2 + *(v4 + 44));
}

uint64_t sub_100021A80@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004141C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100021AB4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10004141C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100021B48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004131C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100021B78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004131C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100021BF8()
{
  result = qword_1000551A0;
  if (!qword_1000551A0)
  {
    sub_100003E08(&qword_100055198, &qword_1000438D8);
    sub_100021CB0();
    sub_100004D80(&qword_1000551C8, &qword_1000551D0, &unk_1000438F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000551A0);
  }

  return result;
}

unint64_t sub_100021CB0()
{
  result = qword_1000551A8;
  if (!qword_1000551A8)
  {
    sub_100003E08(&qword_1000551B0, &qword_1000438E0);
    sub_100004D80(&qword_1000551B8, &qword_1000551C0, &qword_1000438E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000551A8);
  }

  return result;
}

uint64_t sub_100021D68(uint64_t a1)
{
  v2 = sub_10004195C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10004129C();
}

uint64_t sub_100021E30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000412FC();
  *a1 = result;
  return result;
}

uint64_t sub_100021E88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10004137C();
  *a1 = result;
  return result;
}

unint64_t sub_100021EE4()
{
  result = qword_100055220;
  if (!qword_100055220)
  {
    sub_100003E08(&qword_1000551F0, &qword_100043910);
    sub_100021F70();
    sub_1000220E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055220);
  }

  return result;
}

unint64_t sub_100021F70()
{
  result = qword_100055228;
  if (!qword_100055228)
  {
    sub_100003E08(&qword_100055230, &qword_1000439A8);
    sub_100022028();
    sub_100004D80(&qword_1000551C8, &qword_1000551D0, &unk_1000438F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055228);
  }

  return result;
}

unint64_t sub_100022028()
{
  result = qword_100055238;
  if (!qword_100055238)
  {
    sub_100003E08(&qword_100055240, &qword_1000439B0);
    sub_100021CB0();
    sub_100004D80(&qword_100055248, &qword_100055250, &qword_1000439B8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055238);
  }

  return result;
}

unint64_t sub_1000220E0()
{
  result = qword_100055258;
  if (!qword_100055258)
  {
    type metadata accessor for WidgetAccentModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055258);
  }

  return result;
}

uint64_t sub_100022168@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000412FC();
  *a1 = result;
  return result;
}

unint64_t sub_1000221C0()
{
  result = qword_100055280;
  if (!qword_100055280)
  {
    sub_100003E08(&qword_100055200, &qword_100043920);
    sub_100022278();
    sub_100004D80(&qword_1000552B0, &qword_1000552B8, &unk_1000444D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055280);
  }

  return result;
}

unint64_t sub_100022278()
{
  result = qword_100055288;
  if (!qword_100055288)
  {
    sub_100003E08(&qword_100055278, &qword_100043A38);
    sub_100022330();
    sub_100004D80(&qword_1000552A0, &qword_1000552A8, &unk_100043A70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055288);
  }

  return result;
}

unint64_t sub_100022330()
{
  result = qword_100055290;
  if (!qword_100055290)
  {
    sub_100003E08(&qword_100055268, &qword_1000439C8);
    sub_100004D80(&qword_100055298, &qword_100055270, &qword_1000439D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055290);
  }

  return result;
}

void sub_100022430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_allocWithZone(TUCallProviderManager) init];
  v8 = [v7 telephonyProvider];

  v9 = [objc_allocWithZone(TUDialRequest) initWithProvider:v8];
  v10 = objc_allocWithZone(CNPhoneNumber);
  v11 = sub_100041EEC();
  v12 = [v10 initWithStringValue:v11];

  v13 = [v12 stringValue];
  sub_100041EFC();

  sub_100041F5C();
  v15 = v14;

  if (v15)
  {

    v16 = 2;
  }

  else
  {
    v16 = 3;
  }

  v17 = objc_allocWithZone(TUHandle);
  v18 = sub_100041EEC();
  v19 = [v17 initWithType:v16 value:v18];

  [v9 setHandle:v19];
  [v9 setVideo:0];
  v21[4] = a3;
  v21[5] = a4;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 1107296256;
  v21[2] = sub_100022678;
  v21[3] = &unk_1000526E0;
  v20 = _Block_copy(v21);

  [v4 launchAppForDialRequest:v9 completion:v20];
  _Block_release(v20);
}

void sub_100022678(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100022708(uint64_t a1)
{
  sub_100010A94((v1 + 64), *(v1 + 88));
  v2 = sub_1000410DC();
  v3 = *(v2 + 16);
  if (v3)
  {
    v15 = &_swiftEmptyArrayStorage;
    sub_1000243FC(0, v3, 0);
    v4 = &_swiftEmptyArrayStorage;
    v5 = v2 + 32;
    do
    {
      sub_100010F30(v5, v14);
      sub_100010A94(v14, v14[3]);
      v6 = sub_100040E3C();
      v8 = v7;
      sub_100010DCC(v14);
      v15 = v4;
      v10 = v4[2];
      v9 = v4[3];
      if (v10 >= v9 >> 1)
      {
        sub_1000243FC((v9 > 1), v10 + 1, 1);
        v4 = v15;
      }

      v4[2] = v10 + 1;
      v11 = &v4[2 * v10];
      v11[4] = v6;
      v11[5] = v8;
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = &_swiftEmptyArrayStorage;
  }

  v12 = sub_1000259C8(v4);

  return v12;
}

id sub_100022868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003DC0(&qword_1000553D8, &qword_100043B68);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100043AA0;
  *(v8 + 32) = a1;
  v9 = objc_allocWithZone(INStartCallIntent);
  sub_100025A60(0, &qword_1000553E0, INPerson_ptr);
  v21 = a1;
  isa = sub_100041FBC().super.isa;

  v11 = [v9 initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:1 contacts:isa callCapability:a2];

  if (a4)
  {
    v12 = sub_100025A60(0, &qword_1000553E8, INStartCallIntent_ptr);
    v13 = sub_100022708(v12);
    v14 = sub_100022A44(a3, a4, v13);

    if ((v14 & 1) == 0)
    {
      if (a2 == 2)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_100043AA0;
        *(v15 + 32) = v21;
        v16 = objc_allocWithZone(INStartVideoCallIntent);
        v17 = v21;
        v18 = sub_100041FBC().super.isa;

        v19 = [v16 initWithContacts:v18];

        return v19;
      }

      else
      {

        return 0;
      }
    }
  }

  return v11;
}

uint64_t sub_100022A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_10004226C();
  sub_100041F2C();
  v6 = sub_10004227C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_10004222C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_100022B3C(uint64_t a1, uint64_t a2, void (*a3)(void *), void (*a4)(void *))
{
  v179 = a2;
  v177 = a3;
  v178 = a4;
  v5 = sub_10004098C();
  v169 = *(v5 - 8);
  v170 = v5;
  v6 = __chkstk_darwin(v5);
  v167 = &v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v171 = &v156 - v8;
  v9 = sub_100003DC0(&qword_1000553B0, &qword_100043B38);
  __chkstk_darwin(v9 - 8);
  v173 = &v156 - v10;
  v163 = sub_100040BEC();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003DC0(&qword_100054CF0, &unk_100043230);
  v13 = __chkstk_darwin(v12 - 8);
  v160 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v159 = &v156 - v16;
  v17 = __chkstk_darwin(v15);
  v166 = &v156 - v18;
  v19 = __chkstk_darwin(v17);
  v174 = &v156 - v20;
  v21 = __chkstk_darwin(v19);
  v176 = &v156 - v22;
  v23 = __chkstk_darwin(v21);
  v158 = &v156 - v24;
  __chkstk_darwin(v23);
  v168 = &v156 - v25;
  v26 = sub_100040DFC();
  v175 = *(v26 - 8);
  v27 = __chkstk_darwin(v26);
  v29 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v156 - v30;
  v32 = sub_100003DC0(&qword_1000549E8, &qword_100043520);
  __chkstk_darwin(v32 - 8);
  v165 = &v156 - v33;
  v34 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v34 - 8);
  v36 = &v156 - v35;
  v172 = sub_10004083C();
  v37 = *(v172 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v172);
  v40 = &v156 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v42 = &v156 - v41;
  v43 = a1;
  if (sub_100040C9C())
  {
    v164 = a1;
    sub_100040C8C();
    if ((*(v37 + 48))(v36, 1, v172) != 1)
    {
      v57 = *(v37 + 32);
      v58 = v42;
      v59 = v42;
      v157 = v42;
      v60 = v172;
      v57(v59, v36, v172);
      v61 = sub_10004205C();
      v62 = v165;
      (*(*(v61 - 8) + 56))(v165, 1, 1, v61);
      (*(v37 + 16))(v40, v58, v60);
      v63 = (*(v37 + 80) + 40) & ~*(v37 + 80);
      v64 = swift_allocObject();
      *(v64 + 2) = 0;
      *(v64 + 3) = 0;
      *(v64 + 4) = v180;
      v57(&v64[v63], v40, v60);
      v65 = &v64[(v38 + v63 + 7) & 0xFFFFFFFFFFFFFFF8];
      v66 = v178;
      *v65 = v177;
      v65[1] = v66;

      sub_1000279C0(0, 0, v62, &unk_100043B48, v64);

      (*(v37 + 8))(v157, v60);
      return;
    }

    sub_1000049F8(v36, &qword_1000546B0, &qword_100043630);
    v43 = v164;
  }

  sub_100040CBC();
  v44 = v175;
  v175[13](v29, enum case for QuickActionType.videoCall(_:), v26);
  sub_1000256B4();
  sub_100041F9C();
  sub_100041F9C();
  if (v183 == v181 && v184 == v182)
  {
    v45 = 2;
  }

  else
  {
    v46 = sub_10004222C();
    v45 = 1;
    if (v46)
    {
      v45 = 2;
    }
  }

  v172 = v45;
  v47 = v44[1];
  v47(v29, v26);
  v47(v31, v26);

  sub_100040CCC();
  if (v48)
  {
    v49 = objc_allocWithZone(CNPhoneNumber);
    v50 = sub_100041EEC();
    v51 = [v49 initWithStringValue:v50];

    if (v51)
    {

      v52 = 2;
    }

    else
    {
      v52 = 1;
    }

    v67 = objc_allocWithZone(INPersonHandle);
    v68 = sub_100041EEC();

    v69 = [v67 initWithValue:v68 type:v52];
    goto LABEL_30;
  }

  v53 = v168;
  sub_10002570C(v179, v168);
  v54 = sub_10004116C();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(v53, 1, v54) == 1)
  {
    sub_1000049F8(v53, &qword_100054CF0, &unk_100043230);
  }

  else
  {
    v70 = v162;
    v71 = v161;
    v72 = v163;
    (*(v162 + 104))(v161, enum case for HandleType.phoneNumber(_:), v163);
    v175 = sub_10004110C();
    v74 = v73;
    (*(v70 + 8))(v71, v72);
    (*(v55 + 8))(v53, v54);
    if (v74)
    {
      v75 = objc_allocWithZone(CNPhoneNumber);
      v76 = sub_100041EEC();
      v77 = [v75 initWithStringValue:v76];

      if (v77)
      {

        v78 = 2;
      }

      else
      {
        v78 = 1;
      }

      v88 = objc_allocWithZone(INPersonHandle);
      v68 = sub_100041EEC();

      v69 = [v88 initWithValue:v68 type:v78];
      goto LABEL_30;
    }
  }

  sub_100040CCC();
  if (!v79)
  {
    v82 = v158;
    sub_10002570C(v179, v158);
    if (v56(v82, 1, v54) == 1)
    {
      sub_1000049F8(v82, &qword_100054CF0, &unk_100043230);
      v80 = objc_allocWithZone(INPersonHandle);
    }

    else
    {
      v83 = v162;
      v84 = v161;
      v85 = v163;
      (*(v162 + 104))(v161, enum case for HandleType.email(_:), v163);
      sub_10004110C();
      v87 = v86;
      (*(v83 + 8))(v84, v85);
      (*(v55 + 8))(v82, v54);
      v80 = objc_allocWithZone(INPersonHandle);
      if (v87)
      {
        goto LABEL_22;
      }
    }

    v68 = 0;
    goto LABEL_27;
  }

  v80 = objc_allocWithZone(INPersonHandle);
LABEL_22:
  v81 = v80;
  v68 = sub_100041EEC();

  v80 = v81;
LABEL_27:
  v69 = [v80 initWithValue:v68 type:1];
LABEL_30:
  v89 = v69;
  v90 = v176;

  v91 = sub_1000407DC();
  v92 = *(v91 - 8);
  v93 = v173;
  (*(v92 + 56))(v173, 1, 1, v91);
  v175 = v89;
  sub_100040C7C();
  sub_100040C6C();
  v94 = v93;
  v96 = v95;
  v97 = (*(v92 + 48))(v93, 1, v91);
  v98 = 0;
  if (v97 != 1)
  {
    v98 = sub_1000407CC();
    (*(v92 + 8))(v94, v91);
  }

  v99 = sub_100041EEC();

  if (v96)
  {
    v100 = sub_100041EEC();
  }

  else
  {
    v100 = 0;
  }

  v101 = v174;
  v102 = v175;
  v103 = [objc_allocWithZone(INPerson) initWithPersonHandle:v175 nameComponents:v98 displayName:0 image:0 contactIdentifier:v99 customIdentifier:v100];

  v104 = sub_100040CDC();
  v106 = sub_100022868(v103, v172, v104, v105);

  if (v106)
  {
    v174 = v103;
    v107 = v171;
    sub_100040ABC();
    sub_10002570C(v179, v90);
    v108 = v106;
    v109 = sub_10004097C();
    v110 = sub_1000420CC();

    if (os_log_type_enabled(v109, v110))
    {
      v164 = v43;
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v183 = v113;
      *v111 = 138412546;
      *(v111 + 4) = v108;
      *v112 = v106;
      *(v111 + 12) = 2080;
      sub_10002570C(v90, v101);
      v114 = sub_10004116C();
      v115 = *(v114 - 8);
      v116 = (*(v115 + 48))(v101, 1, v114);
      v117 = v108;
      if (v116 == 1)
      {
        sub_1000049F8(v101, &qword_100054CF0, &unk_100043230);
        v118 = 0xE100000000000000;
        v119 = 45;
      }

      else
      {
        v135 = sub_1000410EC();
        v136 = v101;
        v119 = v135;
        v118 = v137;
        (*(v115 + 8))(v136, v114);
      }

      sub_1000049F8(v176, &qword_100054CF0, &unk_100043230);
      v138 = sub_10001BA5C(v119, v118, &v183);

      *(v111 + 14) = v138;
      _os_log_impl(&_mh_execute_header, v109, v110, "handling call intent: %@ for person: %s", v111, 0x16u);
      sub_1000049F8(v112, &qword_1000553B8, "p8");

      sub_100010DCC(v113);

      (*(v169 + 8))(v171, v170);
      v102 = v175;
    }

    else
    {

      sub_1000049F8(v90, &qword_100054CF0, &unk_100043230);
      (*(v169 + 8))(v107, v170);
    }

    v139 = sub_100040CDC();
    sub_10002A38C(v108, v139, v140, v177, v178);
  }

  else
  {
    v120 = sub_100040CCC();
    if (v121)
    {
      v122 = v120;
      v123 = v121;
      v174 = v103;
      v124 = v167;
      sub_100040ABC();
      v125 = v166;
      sub_10002570C(v179, v166);

      v126 = sub_10004097C();
      v127 = sub_1000420CC();

      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v183 = v129;
        *v128 = 136315394;
        *(v128 + 4) = sub_10001BA5C(v122, v123, &v183);
        *(v128 + 12) = 2080;
        v130 = v159;
        sub_10002570C(v125, v159);
        v131 = sub_10004116C();
        v132 = *(v131 - 8);
        if ((*(v132 + 48))(v130, 1, v131) == 1)
        {
          sub_1000049F8(v130, &qword_100054CF0, &unk_100043230);
          v133 = 0xE100000000000000;
          v134 = 45;
        }

        else
        {
          v179 = v129;
          v149 = v122;
          v150 = v130;
          v134 = sub_1000410EC();
          v133 = v151;
          v152 = v150;
          v122 = v149;
          (*(v132 + 8))(v152, v131);
        }

        sub_1000049F8(v166, &qword_100054CF0, &unk_100043230);
        v153 = sub_10001BA5C(v134, v133, &v183);

        *(v128 + 14) = v153;
        _os_log_impl(&_mh_execute_header, v126, v127, "handling telephony voice call for handle: %s, person: %s", v128, 0x16u);
        swift_arrayDestroy();

        (*(v169 + 8))(v167, v170);
        v102 = v175;
      }

      else
      {

        sub_1000049F8(v125, &qword_100054CF0, &unk_100043230);
        (*(v169 + 8))(v124, v170);
      }

      v154 = v180[5];
      v155 = v180[6];
      sub_100010A94(v180 + 2, v154);
      (*(v155 + 8))(v122, v123, v177, v178, v154, v155);
    }

    else
    {
      v183 = 0;
      v184 = 0xE000000000000000;
      sub_10004217C(56);
      v185._object = 0x800000010004C550;
      v185._countAndFlagsBits = 0xD000000000000036;
      sub_100041F6C(v185);
      v141 = v160;
      sub_10002570C(v179, v160);
      v142 = sub_10004116C();
      v143 = *(v142 - 8);
      if ((*(v143 + 48))(v141, 1, v142) == 1)
      {
        sub_1000049F8(v141, &qword_100054CF0, &unk_100043230);
        v144 = 0xE100000000000000;
        v145._countAndFlagsBits = 45;
      }

      else
      {
        v146 = sub_1000410EC();
        v144 = v147;
        (*(v143 + 8))(v141, v142);
        v145._countAndFlagsBits = v146;
      }

      v145._object = v144;
      sub_100041F6C(v145);

      v148 = sub_100040A9C();

      v177(v148);
    }
  }
}

uint64_t sub_100023E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return _swift_task_switch(sub_100023EB8, 0, 0);
}

uint64_t sub_100023EB8()
{
  v1 = v0[30];
  sub_100003DC0(&qword_1000553C0, &unk_100043B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100042C30;
  *(inited + 32) = sub_100041EFC();
  *(inited + 40) = v3;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v4 = sub_100029484(inited);
  swift_setDeallocating();
  sub_1000049F8(inited + 32, &qword_1000553C8, &unk_100043CB0);
  v5 = *(v1 + 104);
  sub_10004081C(v6);
  v8 = v7;
  v0[34] = v7;
  sub_100027CC0(v4);

  isa = sub_100041EBC().super.isa;
  v0[35] = isa;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1000240CC;
  v10 = swift_continuation_init();
  v0[27] = sub_100003DC0(&qword_1000553D0, &qword_100043B60);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100027F88;
  v0[23] = &unk_1000526B8;
  v0[24] = v10;
  [v5 openSensitiveURLInBackground:v8 withOptions:isa completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000240CC()
{

  return _swift_task_switch(sub_1000241AC, 0, 0);
}

uint64_t sub_1000241AC()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];

  v3(0);
  v4 = v0[1];

  return v4();
}

uint64_t sub_100024230()
{
  sub_100010DCC((v0 + 16));

  sub_100010DCC((v0 + 64));

  return _swift_deallocClassInstance(v0, 112, 7);
}

void *sub_1000242CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002443C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000242EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024584(a1, a2, a3, *v3, &qword_100054A60, &qword_1000430D0, &type metadata accessor for PersonInfo);
  *v3 = result;
  return result;
}

void *sub_100024330(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024584(a1, a2, a3, *v3, &qword_1000549F0, &unk_100043060, type metadata accessor for MultipleContactsEntry);
  *v3 = result;
  return result;
}

void *sub_100024374(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024584(a1, a2, a3, *v3, &qword_100055408, &unk_100043B80, type metadata accessor for PersonEntryType);
  *v3 = result;
  return result;
}

void *sub_1000243B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024584(a1, a2, a3, *v3, &qword_100054DF8, &qword_100043540, type metadata accessor for SingleContactTimelineEntry);
  *v3 = result;
  return result;
}

char *sub_1000243FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100024760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10002441C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002486C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10002443C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003DC0(&qword_100055410, &unk_100043B90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003DC0(&qword_100054A30, &unk_1000430A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100024584(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003DC0(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_100024760(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003DC0(&qword_100054A58, &qword_1000430C8);
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

char *sub_10002486C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003DC0(&qword_100055418, &unk_100043BA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100024994(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_10004226C();
  sub_100041F2C();
  v8 = sub_10004227C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_10004222C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100024D44(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100024AE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003DC0(&qword_1000553F0, &unk_100043B70);
  result = sub_10004215C();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_10004226C();
      sub_100041F2C();
      result = sub_10004227C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100024D44(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100024AE4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100024EC4();
      goto LABEL_16;
    }

    sub_100025020(v8 + 1);
  }

  v10 = *v4;
  sub_10004226C();
  sub_100041F2C();
  result = sub_10004227C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_10004222C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_10004223C();
  __break(1u);
  return result;
}

void *sub_100024EC4()
{
  v1 = v0;
  sub_100003DC0(&qword_1000553F0, &unk_100043B70);
  v2 = *v0;
  v3 = sub_10004214C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_100025020(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003DC0(&qword_1000553F0, &unk_100043B70);
  result = sub_10004215C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_10004226C();

      sub_100041F2C();
      result = sub_10004227C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

id sub_100025258()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = objc_opt_self();
  result = [v1 defaultWorkspace];
  if (result)
  {
    v3 = result;
    v4 = sub_100025A60(0, &qword_1000553F8, LSApplicationWorkspace_ptr);
    v13 = v4;
    v14 = &off_100052828;
    *&v12 = v3;
    type metadata accessor for IntentLauncher();
    v5 = swift_allocObject();
    sub_100004B44(&v12, v5 + 16);
    result = [v1 defaultWorkspace];
    if (result)
    {
      v6 = result;
      v7 = [objc_allocWithZone(CNLaunchServices) init];
      v13 = sub_100025A60(0, &qword_100055400, TUCallCenter_ptr);
      v14 = &off_100052668;
      *&v12 = v0;
      v10 = v4;
      v11 = &protocol witness table for LSApplicationWorkspace;
      *&v9 = v6;
      type metadata accessor for CallActionHandler();
      v8 = swift_allocObject();
      sub_100004B44(&v12, v8 + 16);
      *(v8 + 56) = v5;
      sub_100004B44(&v9, v8 + 64);
      *(v8 + 104) = v7;
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000253DC(uint64_t a1)
{
  v2 = sub_100040DFC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v21 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v20 = v19 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = v19 - v9;
  __chkstk_darwin(v8);
  v12 = v19 - v11;
  v19[1] = a1;
  sub_100040CBC();
  v19[0] = *(v3 + 104);
  (v19[0])(v10, enum case for QuickActionType.videoCall(_:), v2);
  sub_1000256B4();
  sub_100041F9C();
  sub_100041F9C();
  if (v24 == v22 && v25 == v23)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_10004222C();
  }

  v14 = *(v3 + 8);
  v14(v10, v2);
  v14(v12, v2);

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v16 = v20;
    sub_100040CBC();
    v17 = v21;
    (v19[0])(v21, enum case for QuickActionType.voiceCall(_:), v2);
    sub_100041F9C();
    sub_100041F9C();
    if (v24 == v22 && v25 == v23)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_10004222C();
    }

    v14(v17, v2);
    v14(v16, v2);
  }

  return v15 & 1;
}

unint64_t sub_1000256B4()
{
  result = qword_1000553A8;
  if (!qword_1000553A8)
  {
    sub_100040DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000553A8);
  }

  return result;
}

uint64_t sub_10002570C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100054CF0, &unk_100043230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002577C()
{
  v1 = sub_10004083C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100025860(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004083C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000AB88;

  return sub_100023E94(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1000259C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10004206C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100024994(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100025A60(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_100025AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100025AC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100040E0C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010A94((v1 + 24), *(v1 + 48));
  sub_100040C7C();
  v7 = sub_10004109C();

  if (v7)
  {
    (*(v4 + 104))(v6, enum case for ContactFormatter.Style.shortName(_:), v3);
    v8 = v7;
    sub_100041F4C();
    v14[3] = sub_100040E2C();
    v14[4] = &protocol witness table for ContactFormatter;
    sub_100004AC8(v14);
    sub_100040E1C();
    sub_10004113C();

    v9 = sub_10004116C();
    return (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
  }

  else
  {
    v11 = sub_10004116C();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t sub_100025D10(uint64_t a1)
{
  v2 = sub_100040CEC();
  v107 = *(v2 - 8);
  v108 = v2;
  v3 = __chkstk_darwin(v2);
  v95 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v98 = &v93 - v6;
  v7 = __chkstk_darwin(v5);
  v97 = &v93 - v8;
  v99 = v9;
  __chkstk_darwin(v7);
  v11 = &v93 - v10;
  v12 = sub_10004098C();
  v105 = *(v12 - 8);
  v106 = v12;
  v13 = __chkstk_darwin(v12);
  v96 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v100 = &v93 - v16;
  __chkstk_darwin(v15);
  v18 = &v93 - v17;
  v19 = sub_100003DC0(&qword_100054CF0, &unk_100043230);
  v20 = __chkstk_darwin(v19 - 8);
  v101 = (&v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v24 = &v93 - v23;
  __chkstk_darwin(v22);
  v26 = &v93 - v25;
  v27 = sub_100040DFC();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100040B3C();
  sub_100040B2C();
  sub_100040CBC();
  sub_100040B1C();

  v31 = v27;
  v32 = v18;
  v33 = v107;
  (*(v28 + 8))(v30, v31);
  v34 = v24;
  v35 = v11;
  v36 = v108;
  sub_100025AC4(v26);
  sub_100040AAC();
  v37 = *(v33 + 16);
  v104 = a1;
  v109 = v37;
  v110 = v33 + 16;
  v37(v35, a1, v36);
  v103 = v26;
  sub_10002570C(v26, v34);
  v38 = sub_10004097C();
  v39 = sub_10004209C();
  if (os_log_type_enabled(v38, v39))
  {
    v94 = v32;
    v40 = swift_slowAlloc();
    v114[0] = swift_slowAlloc();
    *v40 = 136315394;
    sub_100026D5C();
    v41 = sub_1000421FC();
    v43 = v42;
    v102 = *(v33 + 8);
    v102(v35, v36);
    v44 = sub_10001BA5C(v41, v43, v114);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    v45 = v34;
    v46 = v101;
    sub_10002570C(v34, v101);
    v47 = sub_10004116C();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      sub_1000049F8(v46, &qword_100054CF0, &unk_100043230);
      v49 = 0xE100000000000000;
      v50 = 45;
    }

    else
    {
      v50 = sub_1000410EC();
      v49 = v55;
      (*(v48 + 8))(v46, v47);
    }

    v53 = v104;
    sub_1000049F8(v45, &qword_100054CF0, &unk_100043230);
    v56 = sub_10001BA5C(v50, v49, v114);

    *(v40 + 14) = v56;
    _os_log_impl(&_mh_execute_header, v38, v39, "Attempting to handle action: %s, for person: %s", v40, 0x16u);
    swift_arrayDestroy();

    v51 = v106;
    v101 = *(v105 + 8);
    v52 = (v101)(v94, v106);
    v33 = v107;
    v36 = v108;
    v54 = v103;
  }

  else
  {

    sub_1000049F8(v34, &qword_100054CF0, &unk_100043230);
    v102 = *(v33 + 8);
    v102(v35, v36);
    v51 = v106;
    v101 = *(v105 + 8);
    v52 = (v101)(v32, v106);
    v54 = v103;
    v53 = v104;
  }

  __chkstk_darwin(v52);
  *(&v93 - 2) = v53;
  *(&v93 - 1) = v54;
  sub_100026898(sub_100026CE8, v57, &v112);
  if (v113)
  {
    sub_100004B44(&v112, v114);
    v58 = v100;
    sub_100040AAC();
    sub_100010F30(v114, &v112);
    v59 = v97;
    v109(v97, v53, v36);
    v60 = sub_10004097C();
    v61 = sub_10004209C();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v62 = 136315394;
      v63 = v59;
      sub_100010A94(&v112, v113);
      swift_getDynamicType();
      v64 = sub_10004228C();
      v66 = v65;
      sub_100010DCC(&v112);
      v67 = sub_10001BA5C(v64, v66, v111);

      *(v62 + 4) = v67;
      *(v62 + 12) = 2080;
      sub_100026D5C();
      v68 = sub_1000421FC();
      v70 = v69;
      v102(v63, v36);
      v71 = sub_10001BA5C(v68, v70, v111);

      *(v62 + 14) = v71;
      _os_log_impl(&_mh_execute_header, v60, v61, "Got handler: %s for action: %s", v62, 0x16u);
      swift_arrayDestroy();
      v53 = v104;

      v72 = v106;
      v73 = v100;
    }

    else
    {

      v102(v59, v36);
      sub_100010DCC(&v112);
      v73 = v58;
      v72 = v51;
    }

    (v101)(v73, v72);
    v87 = v115;
    v88 = v116;
    sub_100010A94(v114, v115);
    v89 = v98;
    v109(v98, v53, v36);
    v90 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v91 = swift_allocObject();
    (*(v33 + 32))(v91 + v90, v89, v36);
    (*(v88 + 16))(v53, v54, sub_100026E3C, v91, v87, v88);

    sub_100010DCC(v114);
  }

  else
  {
    sub_1000049F8(&v112, &qword_1000554D8, "~;");
    v74 = v96;
    sub_100040AAC();
    v75 = v95;
    v109(v95, v53, v36);
    v76 = sub_10004097C();
    v77 = sub_1000420AC();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = v75;
      v80 = swift_slowAlloc();
      v114[0] = v80;
      *v78 = 136315138;
      sub_100026D5C();
      v81 = sub_1000421FC();
      v83 = v82;
      v102(v79, v36);
      v84 = sub_10001BA5C(v81, v83, v114);

      *(v78 + 4) = v84;
      _os_log_impl(&_mh_execute_header, v76, v77, "No available handler for action: %s", v78, 0xCu);
      sub_100010DCC(v80);

      v85 = v106;
      v86 = v96;
    }

    else
    {

      v102(v75, v36);
      v86 = v74;
      v85 = v51;
    }

    (v101)(v86, v85);
  }

  return sub_1000049F8(v54, &qword_100054CF0, &unk_100043230);
}

uint64_t (*sub_100026898@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_100010F30(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return sub_100010DCC(v9);
      }

      if (v8)
      {
        return sub_100004B44(v9, a3);
      }

      result = sub_100010DCC(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100026950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100040CEC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004098C();
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_100040AAC();
    (*(v5 + 16))(v7, a2, v4);
    swift_errorRetain();
    v13 = sub_10004097C();
    v14 = sub_1000420AC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v26 = v8;
      v16 = v15;
      v24 = swift_slowAlloc();
      v27 = v24;
      *v16 = 136315394;
      sub_100026D5C();
      v17 = sub_1000421FC();
      v25 = v9;
      v19 = v18;
      (*(v5 + 8))(v7, v4);
      v20 = sub_10001BA5C(v17, v19, &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v21 = sub_10004225C();
      v23 = sub_10001BA5C(v21, v22, &v27);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to handle action: %s with error: %s", v16, 0x16u);
      swift_arrayDestroy();

      return (*(v25 + 8))(v12, v26);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

uint64_t sub_100026C84()
{

  sub_100010DCC((v0 + 24));

  return _swift_deallocClassInstance(v0, 64, 7);
}

uint64_t sub_100026CE8(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[3];
  v5 = a1[4];
  sub_100010A94(a1, v4);
  return (*(v5 + 8))(v3, v2, v4, v5) & 1;
}

unint64_t sub_100026D5C()
{
  result = qword_1000554E0;
  if (!qword_1000554E0)
  {
    sub_100040CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000554E0);
  }

  return result;
}

uint64_t sub_100026DB4()
{
  v1 = sub_100040CEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100026E3C(uint64_t a1)
{
  v3 = *(sub_100040CEC() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100026950(a1, v4);
}

id sub_100026EAC()
{
  sub_100003DC0(&qword_1000554E8, &unk_100043C00);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100043BB0;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v12 = sub_100027020();
    v13 = &off_100052828;
    *&v11 = v2;
    type metadata accessor for IntentLauncher();
    v3 = swift_allocObject();
    sub_100004B44(&v11, v3 + 16);
    v4 = [objc_allocWithZone(CNLaunchServices) init];
    v5 = type metadata accessor for MessageActionHandler();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    *(v0 + 56) = v5;
    *(v0 + 64) = &off_100052730;
    *(v0 + 32) = v6;
    v7 = sub_100025258();
    *(v0 + 96) = type metadata accessor for CallActionHandler();
    *(v0 + 104) = &off_100052678;
    *(v0 + 72) = v7;
    v8 = sub_100040D9C();
    v9 = sub_100040D8C();
    v12 = v8;
    v13 = &protocol witness table for ContactFetcher;
    *&v11 = v9;
    type metadata accessor for ActionLauncher();
    v10 = swift_allocObject();
    *(v10 + 16) = v0;
    sub_100004B44(&v11, v10 + 24);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100027020()
{
  result = qword_1000553F8;
  if (!qword_1000553F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000553F8);
  }

  return result;
}

uint64_t sub_10002706C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v71 = a2;
  v77 = a1;
  v3 = sub_10004098C();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = __chkstk_darwin(v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v62 - v7;
  v9 = sub_100003DC0(&qword_100054E10, &qword_100043558);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_100040A4C();
  v76 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v62 - v17;
  __chkstk_darwin(v16);
  v20 = &v62 - v19;
  v21 = sub_100041CAC();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_AXSPrefersHorizontalTextLayout())
  {
    goto LABEL_9;
  }

  v66 = v20;
  v67 = v22;
  v69 = v8;
  v70 = v21;
  v64 = v15;
  v65 = v11;
  v62 = v18;
  v63 = v6;
  v68 = v12;
  if (qword_100054548 != -1)
  {
    swift_once();
  }

  sub_100010A94(qword_1000554F0, qword_100055508);
  v25 = sub_10004114C();
  sub_1000410CC();
  v27 = v26;

  v28 = sub_100041F3C(8);
  v29 = v70;
  if (!v28)
  {
LABEL_8:

LABEL_9:
    v37 = 0;
    return v37 & 1;
  }

  sub_10004115C();
  sub_100040F9C();
  sub_100041CBC();

  sub_100041C8C();
  (*(v67 + 8))(v24, v29);
  v30 = v68;
  v31 = v76;
  if (v79)
  {
    sub_100010A94(v78, v79);
    sub_100040C2C();
    v33 = v32;
    sub_100010DCC(v78);

    v34 = sub_100041F3C(8);

    v35 = v69;
    v36 = v74;
    if (!v34)
    {

      goto LABEL_8;
    }
  }

  else
  {
    sub_1000049F8(v78, &qword_1000551D8, &qword_100044540);
    v33 = 0;
    v35 = v69;
    v36 = v74;
  }

  v39 = v65;
  sub_100027950(v36, v65);
  v40 = (*(v31 + 48))(v39, 1, v30);
  v41 = v66;
  if (v40 == 1)
  {

    sub_1000049F8(v39, &qword_100054E10, &qword_100043558);
    v42 = v63;
    sub_100040ACC();

    v43 = sub_10004097C();
    v44 = sub_1000420CC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 67109120;
      *(v45 + 4) = sub_100040FAC() & 1;

      _os_log_impl(&_mh_execute_header, v43, v44, "Using device language to determine vertical layout: %{BOOL}d", v45, 8u);
    }

    else
    {
    }

    (*(v72 + 8))(v42, v73);
    v37 = sub_100040FAC();
    return v37 & 1;
  }

  v77 = v27;
  (*(v31 + 32))(v66, v39, v30);
  sub_100040ACC();
  v46 = v62;
  v75 = *(v31 + 16);
  v75(v62, v41, v30);
  v47 = sub_10004097C();
  v48 = sub_1000420CC();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    LODWORD(v70) = v48;
    v50 = v46;
    v51 = v49;
    v52 = swift_slowAlloc();
    v78[0] = v52;
    *v51 = 136315138;
    v53 = sub_100040A3C();
    v74 = v33;
    v54 = v53;
    v56 = v55;
    v57 = *(v31 + 8);
    v57(v50, v30);
    v58 = sub_10001BA5C(v54, v56, v78);

    *(v51 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v47, v70, "Using app intent configuration to determine vertical layout, kind: %s", v51, 0xCu);
    sub_100010DCC(v52);
    v41 = v66;

    (*(v72 + 8))(v69, v73);
  }

  else
  {

    v57 = *(v31 + 8);
    v57(v46, v30);
    (*(v72 + 8))(v35, v73);
  }

  v59 = v64;
  v75(v64, v41, v30);
  v60 = (*(v31 + 88))(v59, v30);
  if (v60 == enum case for PeopleWidgetVerticalLayoutToggleKind.showVerticalLayoutToggleDT(_:))
  {

    v61 = sub_100040D3C();
LABEL_24:
    v37 = v61;
    v57(v41, v30);
    return v37 & 1;
  }

  if (v60 == enum case for PeopleWidgetVerticalLayoutToggleKind.showVerticalLayoutToggleDF(_:))
  {

    v61 = sub_100040D2C();
    goto LABEL_24;
  }

  result = sub_10004221C();
  __break(1u);
  return result;
}

uint64_t sub_100027838()
{
  v0 = sub_100040E0C();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ContactFormatter.Style.shortName(_:));
  sub_100041F4C();
  qword_100055508 = sub_100040E2C();
  unk_100055510 = &protocol witness table for ContactFormatter;
  sub_100004AC8(qword_1000554F0);
  return sub_100040E1C();
}

uint64_t sub_100027950(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100054E10, &qword_100043558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000279C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100003DC0(&qword_1000549E8, &qword_100043520);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100011258(a3, v25 - v10, &qword_1000549E8, &qword_100043520);
  v12 = sub_10004205C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000049F8(v11, &qword_1000549E8, &qword_100043520);
  }

  else
  {
    sub_10004204C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_10004200C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100041F0C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000049F8(a3, &qword_1000549E8, &qword_100043520);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000049F8(a3, &qword_1000549E8, &qword_100043520);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100027CC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100003DC0(&qword_1000555D8, &qword_100043CC0);
    v2 = sub_1000421EC();
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
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10001C004(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100029C18(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100029C18(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100029C18(v31, v32);
    result = sub_10004213C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100029C18(v32, (v2[7] + 32 * v10));
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

uint64_t sub_100027F88(uint64_t a1, char a2, void *a3)
{
  v5 = sub_100010A94((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a3;

  return _swift_continuation_resume(v6);
}

void sub_100027FFC(char *a1, uint64_t a2, void (*a3)(void *), void (*a4)(void *))
{
  v112 = a3;
  v113 = a4;
  v6 = sub_1000407AC();
  __chkstk_darwin(v6 - 8);
  v105 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000407BC();
  v106 = *(v8 - 8);
  __chkstk_darwin(v8);
  v104 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004098C();
  v102 = *(v10 - 8);
  v103 = v10;
  __chkstk_darwin(v10);
  v109 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003DC0(&qword_1000553B0, &qword_100043B38);
  __chkstk_darwin(v12 - 8);
  v110 = (&v94 - v13);
  v14 = sub_100040BEC();
  v100 = *(v14 - 8);
  v101 = v14;
  __chkstk_darwin(v14);
  v99 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003DC0(&qword_100054CF0, &unk_100043230);
  v17 = __chkstk_darwin(v16 - 8);
  v98 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v94 - v20;
  __chkstk_darwin(v19);
  v108 = &v94 - v22;
  v23 = sub_100003DC0(&qword_1000549E8, &qword_100043520);
  __chkstk_darwin(v23 - 8);
  v107 = &v94 - v24;
  v25 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v25 - 8);
  v27 = &v94 - v26;
  v28 = sub_10004083C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v32 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v94 - v33;
  if (sub_100040C9C())
  {
    v97 = v21;
    sub_100040C8C();
    if ((*(v29 + 48))(v27, 1, v28) != 1)
    {
      v110 = *(v29 + 32);
      v110(v34, v27, v28);
      v45 = sub_10004205C();
      v46 = v107;
      (*(*(v45 - 8) + 56))(v107, 1, 1, v45);
      (*(v29 + 16))(v32, v34, v28);
      v47 = (*(v29 + 80) + 40) & ~*(v29 + 80);
      v48 = swift_allocObject();
      *(v48 + 2) = 0;
      *(v48 + 3) = 0;
      v49 = v110;
      *(v48 + 4) = v111;
      v49(&v48[v47], v32, v28);
      v50 = &v48[(v30 + v47 + 7) & 0xFFFFFFFFFFFFFFF8];
      v51 = v113;
      *v50 = v112;
      v50[1] = v51;

      sub_1000279C0(0, 0, v46, &unk_100043C88, v48);

      (*(v29 + 8))(v34, v28);
      return;
    }

    sub_1000049F8(v27, &qword_1000546B0, &qword_100043630);
    v21 = v97;
  }

  sub_100040CCC();
  if (v35)
  {
    goto LABEL_5;
  }

  v97 = a1;
  v107 = a2;
  v41 = v108;
  sub_100011258(a2, v108, &qword_100054CF0, &unk_100043230);
  v42 = sub_10004116C();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  if (v44(v41, 1, v42) == 1)
  {
    sub_1000049F8(v41, &qword_100054CF0, &unk_100043230);
LABEL_18:
    v111 = v8;
    v78 = v109;
    sub_100040ABC();
    sub_100011258(v107, v21, &qword_100054CF0, &unk_100043230);
    v79 = sub_10004097C();
    v80 = sub_1000420AC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = v21;
      v84 = v82;
      v114 = v82;
      *v81 = 136315138;
      v97 = v83;
      v85 = v98;
      sub_100011258(v83, v98, &qword_100054CF0, &unk_100043230);
      if (v44(v85, 1, v42) == 1)
      {
        sub_1000049F8(v85, &qword_100054CF0, &unk_100043230);
        v86 = 0;
        v87 = 0xE000000000000000;
      }

      else
      {
        v88 = v85;
        v86 = sub_1000410EC();
        v87 = v89;
        (*(v43 + 8))(v88, v42);
      }

      sub_1000049F8(v97, &qword_100054CF0, &unk_100043230);
      v90 = sub_10001BA5C(v86, v87, &v114);

      *(v81 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v79, v80, "Could not find handle for person %s", v81, 0xCu);
      sub_100010DCC(v84);

      (*(v102 + 8))(v109, v103);
    }

    else
    {

      sub_1000049F8(v21, &qword_100054CF0, &unk_100043230);
      (*(v102 + 8))(v78, v103);
    }

    sub_10004079C();
    sub_100029484(&_swiftEmptyArrayStorage);
    sub_1000297A4(&qword_1000555D0, &type metadata accessor for CocoaError, &protocol conformance descriptor for CocoaError);
    v91 = v104;
    v92 = v111;
    sub_1000407EC();
    v93 = sub_10004078C();
    (*(v106 + 8))(v91, v92);
    v112(v93);

    return;
  }

  v95 = v44;
  v96 = v42;
  v71 = v100;
  v70 = v101;
  v72 = v43;
  v73 = v99;
  (*(v100 + 104))(v99, enum case for HandleType.phoneNumber(_:), v101);
  v74 = v41;
  sub_10004110C();
  v76 = v75;
  v77 = v73;
  v43 = v72;
  v42 = v96;
  (*(v71 + 8))(v77, v70);
  v44 = v95;
  (*(v43 + 8))(v74, v42);
  if (!v76)
  {
    goto LABEL_18;
  }

LABEL_5:
  v36 = objc_allocWithZone(CNPhoneNumber);
  v37 = sub_100041EEC();
  v38 = [v36 initWithStringValue:v37];

  v39 = v110;
  if (v38)
  {

    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  v52 = objc_allocWithZone(INPersonHandle);
  v53 = sub_100041EEC();

  v54 = [v52 initWithValue:v53 type:v40];

  v55 = sub_1000407DC();
  v56 = *(v55 - 8);
  (*(v56 + 56))(v39, 1, 1, v55);
  sub_100040C7C();
  sub_100040C6C();
  v58 = v57;
  v59 = 0;
  if ((*(v56 + 48))(v39, 1, v55) != 1)
  {
    v59 = sub_1000407CC();
    (*(v56 + 8))(v39, v55);
  }

  v60 = sub_100041EEC();

  if (v58)
  {
    v61 = sub_100041EEC();
  }

  else
  {
    v61 = 0;
  }

  v62 = [objc_allocWithZone(INPerson) initWithPersonHandle:v54 nameComponents:v59 displayName:0 image:0 contactIdentifier:v60 customIdentifier:v61];

  sub_100003DC0(&qword_1000553D8, &qword_100043B68);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_100043AA0;
  *(v63 + 32) = v62;
  v64 = objc_allocWithZone(INSendMessageIntent);
  sub_1000297EC();
  v65 = v62;
  isa = sub_100041FBC().super.isa;

  v67 = [v64 initWithRecipients:isa outgoingMessageType:1 content:0 speakableGroupName:0 conversationIdentifier:0 serviceName:0 sender:0 attachments:0];

  v68 = sub_100040CDC();
  sub_10002A38C(v67, v68, v69, v112, v113);
}

uint64_t sub_100028C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[32] = a6;
  v7[33] = a7;
  v7[30] = a4;
  v7[31] = a5;
  return _swift_task_switch(sub_100028CA0, 0, 0);
}

uint64_t sub_100028CA0()
{
  v1 = v0[30];
  sub_100003DC0(&qword_1000553C0, &unk_100043B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100042C30;
  *(inited + 32) = sub_100041EFC();
  *(inited + 40) = v3;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v4 = sub_100029484(inited);
  swift_setDeallocating();
  sub_1000049F8(inited + 32, &qword_1000553C8, &unk_100043CB0);
  v5 = *(v1 + 24);
  sub_10004081C(v6);
  v8 = v7;
  v0[34] = v7;
  sub_100027CC0(v4);

  isa = sub_100041EBC().super.isa;
  v0[35] = isa;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1000240CC;
  v10 = swift_continuation_init();
  v0[27] = sub_100003DC0(&qword_1000553D0, &qword_100043B60);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_100027F88;
  v0[23] = &unk_1000527C0;
  v0[24] = v10;
  [v5 openSensitiveURLInBackground:v8 withOptions:isa completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100028EB4()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100028F40(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100029038;

  return v6(a1);
}

uint64_t sub_100029038()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_100029130(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10004222C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100029200(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_10004226C();
  sub_100041F2C();
  v5 = sub_10004227C();

  return a3(a1, a2, v5);
}

unint64_t sub_100029284(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_1000555E8, &unk_100043CD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003DC0(&qword_100054A50, &qword_1000430C0);
    v7 = sub_1000421EC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100011258(v9, v5, &qword_1000555E8, &unk_100043CD0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100029200(*v5, v12, sub_100029130);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_100041C6C();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100029484(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003DC0(&qword_1000555E0, &qword_100043CC8);
    v3 = sub_1000421EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_100011258(v4, &v13, &qword_1000553C8, &unk_100043CB0);
      v5 = v13;
      v6 = v14;
      result = sub_100029200(v13, v14, sub_100029130);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100029C18(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1000295C8()
{
  v0 = sub_100040DFC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  sub_100040CBC();
  (*(v1 + 104))(v4, enum case for QuickActionType.message(_:), v0);
  sub_1000297A4(&qword_1000553A8, &type metadata accessor for QuickActionType, &protocol conformance descriptor for QuickActionType);
  sub_100041F9C();
  sub_100041F9C();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10004222C();
  }

  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_1000297A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000297EC()
{
  result = qword_1000553E0;
  if (!qword_1000553E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000553E0);
  }

  return result;
}

uint64_t sub_100029838()
{
  v1 = sub_10004083C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10002991C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004083C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000AB88;

  return sub_100028C7C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_100029A58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100029A90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100011628;

  return sub_100028F40(a1, v4);
}

uint64_t sub_100029B48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AB88;

  return sub_100028F40(a1, v4);
}

_OWORD *sub_100029C18(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100029C2C()
{
  v0 = sub_100003DC0(&qword_1000555F8, &qword_100043D38);

  return TupleWidget.init(_:)(v0, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100029CB4(*&argc, argv, envp);
  sub_1000411FC();
  return 0;
}

unint64_t sub_100029CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000555F0;
  if (!qword_1000555F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000555F0);
  }

  return result;
}

unint64_t sub_100029D38()
{
  result = qword_100055600;
  if (!qword_100055600)
  {
    sub_100003E08(&qword_100055608, &qword_100043D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055600);
  }

  return result;
}

uint64_t sub_100029DC8@<X0>(uint64_t a1@<X8>)
{
  v29 = sub_10004193C();
  v28 = sub_10004163C();
  KeyPath = swift_getKeyPath();
  v30 = sub_100041F4C();
  sub_100004924(v30, v2, v3);
  v4 = sub_10004178C();
  v6 = v5;
  v8 = v7;
  sub_1000418FC();
  v9 = sub_10004173C();
  v11 = v10;
  v13 = v12;

  sub_10001FD78(v4, v6, v8 & 1);

  sub_1000416CC();
  v14 = sub_10004176C();
  v16 = v15;
  v18 = v17;

  sub_10001FD78(v9, v11, v13 & 1);

  sub_10004167C();
  v19 = sub_10004170C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_10001FD78(v14, v16, v18 & 1);

  *a1 = v29;
  *(a1 + 8) = KeyPath;
  *(a1 + 16) = v28;
  *(a1 + 24) = v19;
  *(a1 + 32) = v21;
  v23 &= 1u;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25;

  sub_10002A118(v19, v21, v23);

  sub_10001FD78(v19, v21, v23);
}

__n128 sub_100029FF4@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_1000414FC();
  v14 = 0;
  sub_100029DC8(v10);
  v4 = v11;
  v5 = v12;
  v6 = v13;
  v8 = v10[0];
  result = v10[1];
  v9 = v14;
  *a2 = v3;
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(a2 + 40) = result;
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  return result;
}

uint64_t sub_10002A068@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004139C();
  *a1 = result;
  return result;
}

uint64_t sub_10002A094@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004139C();
  *a1 = result;
  return result;
}

uint64_t sub_10002A118(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10002A12C()
{
  result = qword_100055610;
  if (!qword_100055610)
  {
    sub_100003E08(&qword_100055618, &unk_100043DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055610);
  }

  return result;
}

void sub_10002A190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {

    v9 = sub_100041EEC();
    v10 = [objc_opt_self() applicationProxyForIdentifier:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_10002AAE0;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10002A2F0;
  v13[3] = &unk_100052888;
  v12 = _Block_copy(v13);

  [v5 openUserActivity:a1 withApplicationProxy:v10 completionHandler:v12];
  _Block_release(v12);
}

void sub_10002A2F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10002A38C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v46 = a4;
  v47 = a5;
  v10 = sub_10004098C();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {

    v13 = sub_100041EEC();
    v14 = [objc_opt_self() applicationProxyForIdentifier:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [objc_allocWithZone(INInteraction) initWithIntent:a1 response:0];
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v17)
  {
    sub_100041EFC();
    v17 = sub_100041EEC();
  }

  v18 = [objc_allocWithZone(NSUserActivity) initWithActivityType:v17];

  v43 = v15;
  [v18 _setInteraction:v15 donate:0];
  sub_100040ABC();
  v19 = v14;
  v20 = a1;
  v21 = v12;
  v22 = sub_10004097C();
  v23 = sub_1000420CC();
  v48 = v19;

  if (os_log_type_enabled(v22, v23))
  {
    v40 = v21;
    v41 = v6;
    v42 = a2;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49 = v26;
    *v24 = 138412546;
    *(v24 + 4) = v20;
    *v25 = v20;
    *(v24 + 12) = 2080;
    v27 = v20;
    if (v14)
    {
      v28 = a3;
      v29 = [v48 description];
      v30 = sub_100041EFC();
      v32 = v31;

      a3 = v28;
    }

    else
    {
      v32 = 0xE100000000000000;
      v30 = 45;
    }

    v33 = sub_10001BA5C(v30, v32, &v49);

    *(v24 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v22, v23, "Launching intent: %@ with application proxy: %s", v24, 0x16u);
    sub_10002AA78(v25);

    sub_100010DCC(v26);

    (*(v44 + 8))(v40, v45);
    v6 = v41;
    a2 = v42;
  }

  else
  {

    (*(v44 + 8))(v21, v45);
  }

  v34 = v46;
  v35 = v6[5];
  v36 = v6[6];
  sub_100010A94(v6 + 2, v35);
  v37 = swift_allocObject();
  *(v37 + 16) = v34;
  *(v37 + 24) = v47;
  v38 = *(v36 + 8);

  v38(v18, a2, a3, sub_10002AA70, v37, v35, v36);
}

uint64_t sub_10002A7A4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_10004098C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_100040AAC();
    swift_errorRetain();
    v8 = sub_10004097C();
    v9 = sub_1000420AC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = v5;
      v11 = v10;
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_10004225C();
      v15 = sub_10001BA5C(v13, v14, &v22);
      v20 = v4;
      v16 = a2;
      v17 = v15;

      *(v11 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to launch activity: %s", v11, 0xCu);
      sub_100010DCC(v12);

      (*(v21 + 8))(v7, v20);
      return v16(a1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1);
}

uint64_t sub_10002A9DC()
{
  sub_100010DCC((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_10002AA38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002AA78(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_1000553B8, "p8");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002AB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002AB28()
{
  sub_1000409FC();
  result = sub_1000409DC();
  byte_1000574A8 = result & 1;
  return result;
}

unint64_t sub_10002AB84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000556C8;
  if (!qword_1000556C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000556C8);
  }

  return result;
}

unint64_t sub_10002ABDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000556D0;
  if (!qword_1000556D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000556D0);
  }

  return result;
}

unint64_t sub_10002AC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1000556D8;
  if (!qword_1000556D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000556D8);
  }

  return result;
}

uint64_t sub_10002ACF0()
{
  v0 = sub_10004080C();
  sub_10002F960(v0, qword_1000574B0);
  sub_10002F928(v0, qword_1000574B0);
  return sub_1000407FC();
}

uint64_t sub_10002AD54(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10004083C();
  v2[4] = swift_task_alloc();
  sub_100003DC0(&qword_100055708, &qword_100043FC8);
  v2[5] = swift_task_alloc();
  v3 = sub_100040CEC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10002AE78, 0, 0);
}

uint64_t sub_10002AE78()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  sub_10004074C();
  sub_100040CAC();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000049F8(v0[5], &qword_100055708, &qword_100043FC8);
  }

  else
  {
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    (*(v5 + 32))(v4, v0[5], v6);
    sub_100026EAC();
    sub_100025D10(v4);

    (*(v5 + 8))(v4, v6);
  }

  sub_10004073C();

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002AFC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100054558 != -1)
  {
    swift_once();
  }

  v2 = sub_10004080C();
  v3 = sub_10002F928(v2, qword_1000574B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002B084(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000AB88;

  return sub_10002AD54(a1, v4);
}

uint64_t sub_10002B124@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = sub_10004077C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003DC0(&qword_1000556F0, &unk_100043FA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_100003DC0(&qword_1000556F8, &qword_100043FB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_10004080C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  sub_100003DC0(&qword_100055700, &qword_100043FB8);
  sub_1000407FC();
  (*(v15 + 56))(v13, 1, 1, v14);
  v16 = sub_10004083C();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = sub_10004072C();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  (*(v2 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v1);
  result = sub_10004076C();
  *v20 = result;
  return result;
}

uint64_t sub_10002B454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002AC9C(a1, a2, a3);

  return static AppIntent.persistentIdentifier.getter(a1, v4);
}

uint64_t sub_10002B4E4()
{
  v1 = v0;
  v2 = sub_100003DC0(&qword_100055970, &qword_1000442A8);
  __chkstk_darwin(v2);
  v4 = v19 - v3;
  sub_10002B6A0(v1, v19 - v3);
  v5 = sub_1000418FC();
  KeyPath = swift_getKeyPath();
  v7 = &v4[*(sub_100003DC0(&qword_100055978, &qword_1000442E0) + 36)];
  *v7 = KeyPath;
  v7[1] = v5;
  v8 = &v4[*(v2 + 36)];
  sub_100003DC0(&qword_100055980, &qword_1000442E8);
  sub_10004126C();
  *v8 = swift_getKeyPath();
  v9 = type metadata accessor for WidgetButton(0);
  v10 = &v1[*(v9 + 24)];
  v11 = *(v10 + 1);
  v19[2] = *v10;
  v19[3] = v11;
  sub_100004924(v9, v12, v13);

  v14 = sub_10004178C();
  v16 = v15;
  LOBYTE(KeyPath) = v17;
  sub_100030C6C();
  sub_10004182C();
  sub_10001FD78(v14, v16, KeyPath & 1);

  return sub_1000049F8(v4, &qword_100055970, &qword_1000442A8);
}

uint64_t sub_10002B6A0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = sub_100003DC0(&qword_1000559C0, &qword_100044330);
  v29 = *(v34 - 8);
  __chkstk_darwin(v34);
  v28 = &v28 - v3;
  v31 = sub_100003DC0(&qword_1000559F0, &qword_100044350);
  __chkstk_darwin(v31);
  v30 = &v28 - v4;
  v32 = sub_100003DC0(&qword_1000559D0, &qword_100044338);
  __chkstk_darwin(v32);
  v6 = &v28 - v5;
  v7 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_10004083C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  sub_100011258(a1, v9, &qword_1000546B0, &qword_100043630);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v17 = sub_1000049F8(v9, &qword_1000546B0, &qword_100043630);
    __chkstk_darwin(v17);
    *(&v28 - 2) = a1;
    sub_1000419DC();
    KeyPath = swift_getKeyPath();
    v19 = swift_allocObject();
    *(v19 + 16) = 1;
    v20 = &v6[*(v32 + 36)];
    *v20 = KeyPath;
    v20[1] = sub_100031080;
    v20[2] = v19;
    sub_100011258(v6, v30, &qword_1000559D0, &qword_100044338);
    swift_storeEnumTagMultiPayload();
    sub_100004D80(&qword_1000559B8, &qword_1000559C0, &qword_100044330, &protocol conformance descriptor for Button<A>);
    sub_100030F18();
    sub_10004158C();
    return sub_1000049F8(v6, &qword_1000559D0, &qword_100044338);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 16))(v14, v16, v10);
    v35 = sub_100031098(v14);
    v22 = __chkstk_darwin(v35);
    *(&v28 - 2) = a1;
    sub_10002AC9C(v22, v23, v24);
    v25 = v28;
    sub_1000419CC();
    v26 = v29;
    v27 = v34;
    (*(v29 + 16))(v30, v25, v34);
    swift_storeEnumTagMultiPayload();
    sub_100004D80(&qword_1000559B8, &qword_1000559C0, &qword_100044330, &protocol conformance descriptor for Button<A>);
    sub_100030F18();
    sub_10004158C();
    (*(v26 + 8))(v25, v27);
    return (*(v11 + 8))(v16, v10);
  }
}

uint64_t sub_10002BC34@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WidgetButton(0);

  result = sub_10004193C();
  *a2 = result;
  return result;
}

uint64_t sub_10002BC8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004146C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003DC0(&qword_100054700, &qword_100042B60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  sub_100011258(v1 + *(v10 + 20), v9, &qword_100054700, &qword_100042B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004119C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000420BC();
    v13 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_10002BE98()
{
  v1 = sub_10004116C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  sub_100011258(v0 + *(v8 + 24), v7, &qword_1000546B8, &unk_100042AD0);
  v9 = sub_100041BAC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_1000049F8(v7, &qword_1000546B8, &unk_100042AD0);
    isa = 0;
  }

  else
  {
    sub_100041B8C();
    (*(v10 + 8))(v7, v9);
    v12 = sub_10004114C();
    (*(v2 + 8))(v4, v1);
    isa = [v12 memojiMetadata];

    if (isa)
    {
      v13 = sub_10004085C();
      v15 = v14;

      isa = sub_10004084C().super.isa;
      sub_100010FFC(v13, v15);
    }
  }

  v16 = [objc_opt_self() memojiMetadataFromData:isa];

  return v16;
}

unint64_t sub_10002C104()
{
  v17 = sub_10004189C();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002BE98();
  if (!v3)
  {
    sub_100003DC0(&qword_100055840, &qword_1000440C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100042C30;
    *(v14 + 32) = sub_1000418CC();
    return v14;
  }

  v4 = v3;
  v18 = &_swiftEmptyArrayStorage;
  result = [v3 backgroundColorDescription];
  if (result)
  {
    v6 = result;
    v7 = [objc_allocWithZone(CNMemojiBackgroundParameters) initWithColorDescription:result];

    result = [v7 numberOfLayers];
    if ((result & 0x8000000000000000) == 0)
    {
      v8 = result;
      if (result)
      {
        v16 = v4;
        v9 = 0;
        v10 = (v0 + 104);
        v11 = enum case for Color.RGBColorSpace.sRGB(_:);
        do
        {
          v13 = [v7 colorAtIndex:0 forLayer:v9];
          if (v13)
          {
            v12 = v13;
            [v13 red];
            [v12 green];
            [v12 blue];
            [v12 alpha];
            (*v10)(v2, v11, v17);
            sub_10004191C();
            sub_100041FAC();
            if (v18[2] >= v18[3] >> 1)
            {
              sub_100041FDC();
            }

            sub_100041FFC();
          }

          else
          {
            sub_1000418DC();
            sub_100041FAC();
            if (v18[2] >= v18[3] >> 1)
            {
              sub_100041FDC();
            }

            sub_100041FFC();
          }

          ++v9;
        }

        while (v8 != v9);
        v14 = v18;
      }

      else
      {

        return &_swiftEmptyArrayStorage;
      }

      return v14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C420()
{
  v0 = sub_10004189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10004119C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  sub_10002BC8C(&v14 - v9);
  (*(v5 + 104))(v8, enum case for ColorScheme.dark(_:), v4);
  v11 = sub_10004118C();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if (v11)
  {
    type metadata accessor for SingleContactQuickActionWidgetView(0);
  }

  (*(v1 + 104))(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  return sub_10004191C();
}

uint64_t sub_10002C670@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1000415CC();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000415AC();
  v38 = *(v39 - 8);
  __chkstk_darwin(v39);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100003DC0(&qword_1000557C8, &qword_100044058);
  __chkstk_darwin(v34);
  v8 = &v33 - v7;
  v37 = sub_100003DC0(&qword_1000557D0, &qword_100044060);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v33 - v9;
  v40 = sub_100003DC0(&qword_1000557D8, &qword_100044068);
  __chkstk_darwin(v40);
  v11 = &v33 - v10;
  v12 = sub_10004116C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  v19 = *(type metadata accessor for SingleContactQuickActionWidgetView(0) + 24);
  v41 = v2;
  sub_100011258(v2 + v19, v18, &qword_1000546B8, &unk_100042AD0);
  v20 = sub_100041BAC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_1000049F8(v18, &qword_1000546B8, &unk_100042AD0);
LABEL_4:
    sub_100041F4C();

    goto LABEL_5;
  }

  sub_100041B8C();
  (*(v21 + 8))(v18, v20);
  sub_1000410FC();
  v23 = v22;
  (*(v13 + 8))(v15, v12);
  if (!v23)
  {
    goto LABEL_4;
  }

LABEL_5:

  *v8 = sub_1000414FC();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v24 = sub_100003DC0(&qword_1000557E0, &qword_100044070);
  sub_10002CD18(v41, &v8[*(v24 + 44)]);
  sub_10004159C();
  sub_100004D80(&qword_1000557E8, &qword_1000557C8, &qword_100044058, &protocol conformance descriptor for VStack<A>);
  v25 = v35;
  sub_10004186C();
  (*(v38 + 8))(v6, v39);
  sub_1000049F8(v8, &qword_1000557C8, &qword_100044058);
  sub_100041A9C();
  sub_10004125C();
  (*(v36 + 32))(v11, v25, v37);
  v26 = &v11[*(v40 + 36)];
  v27 = v51;
  *(v26 + 4) = v50;
  *(v26 + 5) = v27;
  *(v26 + 6) = v52;
  v28 = v47;
  *v26 = v46;
  *(v26 + 1) = v28;
  v29 = v49;
  *(v26 + 2) = v48;
  *(v26 + 3) = v29;
  v30 = v42;
  v31 = sub_1000415BC();
  __chkstk_darwin(v31);
  sub_100041A9C();
  sub_100003DC0(&qword_1000557F0, &qword_100044078);
  sub_10002FFA8();
  sub_1000300A4();
  sub_10004185C();
  (*(v44 + 8))(v30, v45);
  return sub_100030238(v11);
}

uint64_t sub_10002CD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_100003DC0(&qword_100055848, &qword_1000440C8);
  v79 = *(v3 - 8);
  v80 = v3;
  __chkstk_darwin(v3);
  v72 = (&v71 - v4);
  v5 = sub_100003DC0(&qword_100055850, &qword_1000440D0);
  v6 = __chkstk_darwin(v5 - 8);
  v82 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v81 = &v71 - v8;
  v9 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  __chkstk_darwin(v9 - 8);
  v75 = &v71 - v10;
  v11 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v12 = __chkstk_darwin(v11 - 8);
  v71 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v77 = &v71 - v15;
  __chkstk_darwin(v14);
  v17 = &v71 - v16;
  v74 = sub_1000415AC();
  v18 = *(v74 - 8);
  __chkstk_darwin(v74);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100003DC0(&qword_100055858, &qword_1000440D8);
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v85 = sub_100003DC0(&qword_100055860, &unk_1000440E0);
  v24 = *(v85 - 8);
  __chkstk_darwin(v85);
  v26 = &v71 - v25;
  v76 = sub_100003DC0(&qword_100054698, &qword_100042AB8);
  v27 = __chkstk_darwin(v76);
  v78 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v73 = &v71 - v30;
  __chkstk_darwin(v29);
  v84 = &v71 - v31;
  *v23 = sub_1000414FC();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v32 = sub_100003DC0(&qword_100055868, &qword_1000440F0);
  sub_10002D64C(a1, &v23[*(v32 + 44)]);
  sub_10004159C();
  sub_100004D80(&qword_100055870, &qword_100055858, &qword_1000440D8, &protocol conformance descriptor for VStack<A>);
  sub_10004186C();
  (*(v18 + 8))(v20, v74);
  sub_1000049F8(v23, &qword_100055858, &qword_1000440D8);
  v74 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v33 = *(v74 + 24);
  sub_100041B4C();
  v34 = sub_10004083C();
  v35 = *(v34 - 8);
  (*(v35 + 56))(v17, 0, 1, v34);
  v36 = sub_10003BAEC(v17);
  sub_1000049F8(v17, &qword_1000546B0, &qword_100043630);
  v37 = a1;
  v38 = v75;
  (*(v24 + 8))(v26, v85);
  v88 = v36;
  v85 = v37;
  sub_100011258(v37 + v33, v38, &qword_1000546B8, &unk_100042AD0);
  v39 = sub_100041BAC();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_1000049F8(v38, &qword_1000546B8, &unk_100042AD0);
    v41 = sub_100041F4C();
    v44 = v41;
    v45 = v42;
  }

  else
  {
    v44 = sub_100041B6C();
    v45 = v46;
    v41 = (*(v40 + 8))(v38, v39);
  }

  v86 = v44;
  v87 = v45;
  sub_100004924(v41, v42, v43);
  v47 = v73;
  sub_10004183C();

  sub_100040B7C();
  sub_10004124C();

  sub_1000049F8(v47, &qword_100054698, &qword_100042AB8);
  v48 = v74;
  v49 = v77;
  sub_100011258(v85 + *(v74 + 36), v77, &qword_1000546B0, &qword_100043630);
  v50 = *(v35 + 48);
  LODWORD(v47) = v50(v49, 1, v34);
  sub_1000049F8(v49, &qword_1000546B0, &qword_100043630);
  v52 = v80;
  v51 = v81;
  if (v47 != 1 || (v53 = v71, sub_100011258(v85 + *(v48 + 32), v71, &qword_1000546B0, &qword_100043630), v54 = 1, v55 = v50(v53, 1, v34), sub_1000049F8(v53, &qword_1000546B0, &qword_100043630), v55 != 1))
  {
    v56 = sub_1000414BC();
    v57 = v72;
    *v72 = v56;
    *(v57 + 8) = 0;
    *(v57 + 16) = 1;
    v58 = sub_100003DC0(&qword_100055880, &qword_100044100);
    sub_10002E810(v85, v57 + *(v58 + 44));
    v59 = sub_1000415FC();
    sub_10004117C();
    v60 = v57 + *(v52 + 36);
    *v60 = v59;
    *(v60 + 8) = v61;
    *(v60 + 16) = v62;
    *(v60 + 24) = v63;
    *(v60 + 32) = v64;
    *(v60 + 40) = 0;
    sub_100004C8C(v57, v51, &qword_100055848, &qword_1000440C8);
    v54 = 0;
  }

  (*(v79 + 56))(v51, v54, 1, v52);
  v65 = v84;
  v66 = v78;
  sub_100011258(v84, v78, &qword_100054698, &qword_100042AB8);
  v67 = v82;
  sub_100011258(v51, v82, &qword_100055850, &qword_1000440D0);
  v68 = v83;
  sub_100011258(v66, v83, &qword_100054698, &qword_100042AB8);
  v69 = sub_100003DC0(&qword_100055878, &qword_1000440F8);
  sub_100011258(v67, v68 + *(v69 + 48), &qword_100055850, &qword_1000440D0);
  sub_1000049F8(v51, &qword_100055850, &qword_1000440D0);
  sub_1000049F8(v65, &qword_100054698, &qword_100042AB8);
  sub_1000049F8(v67, &qword_100055850, &qword_1000440D0);
  return sub_1000049F8(v66, &qword_100054698, &qword_100042AB8);
}

uint64_t sub_10002D64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v148 = sub_100040E0C();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v150 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for StatusAndNameView(0);
  v4 = __chkstk_darwin(v153);
  v6 = (&v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v155 = &v127 - v7;
  v154 = sub_100003DC0(&qword_1000558C8, &qword_100044168);
  v8 = __chkstk_darwin(v154);
  v157 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v152 = &v127 - v11;
  __chkstk_darwin(v10);
  v156 = &v127 - v12;
  v13 = sub_100041CAC();
  v164 = *(v13 - 8);
  v165 = v13;
  v14 = __chkstk_darwin(v13);
  v151 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v139 = &v127 - v16;
  v17 = sub_1000408CC();
  v162 = *(v17 - 8);
  v163 = v17;
  __chkstk_darwin(v17);
  v161 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v19 - 8);
  v160 = &v127 - v20;
  v142 = sub_10004116C();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  v23 = __chkstk_darwin(v22 - 8);
  v143 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v138 = &v127 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v127 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v127 - v31;
  __chkstk_darwin(v30);
  v34 = &v127 - v33;
  v35 = sub_100003DC0(&qword_1000546F8, &qword_100042B00);
  v36 = __chkstk_darwin(v35 - 8);
  v145 = &v127 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v144 = &v127 - v39;
  v40 = __chkstk_darwin(v38);
  v135 = &v127 - v41;
  __chkstk_darwin(v40);
  v43 = &v127 - v42;
  v44 = type metadata accessor for AvatarView(0);
  v45 = __chkstk_darwin(v44);
  v149 = &v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __chkstk_darwin(v45);
  v49 = &v127 - v48;
  __chkstk_darwin(v47);
  v146 = &v127 - v50;
  v134 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v51 = *(v134 + 24);
  v168 = a1;
  v52 = v51;
  sub_100011258(a1 + v51, v34, &qword_1000546B8, &unk_100042AD0);
  v53 = sub_100041BAC();
  v54 = *(v53 - 8);
  v166 = *(v54 + 48);
  v167 = v54 + 48;
  v55 = v166(v34, 1, v53);
  v159 = v54;
  if (v55 == 1)
  {
    sub_1000049F8(v34, &qword_1000546B8, &unk_100042AD0);
    v56 = 1;
  }

  else
  {
    sub_100041B7C();
    (*(v54 + 8))(v34, v53);
    v56 = 0;
  }

  v57 = *(v164 + 56);
  v137 = v164 + 56;
  v136 = v57;
  v57(v43, v56, 1, v165);
  v58 = v52;
  sub_100011258(v168 + v52, v32, &qword_1000546B8, &unk_100042AD0);
  if (v166(v32, 1, v53) == 1)
  {
    sub_1000049F8(v32, &qword_1000546B8, &unk_100042AD0);
    v130 = 0;
  }

  else
  {
    v59 = v140;
    sub_100041B8C();
    (*(v159 + 8))(v32, v53);
    v130 = sub_10004114C();
    (*(v141 + 8))(v59, v142);
  }

  sub_100011258(v168 + v58, v29, &qword_1000546B8, &unk_100042AD0);
  v60 = v166(v29, 1, v53);
  v132 = v58;
  if (v60 == 1)
  {
    sub_1000049F8(v29, &qword_1000546B8, &unk_100042AD0);
    v61 = sub_100041C6C();
    (*(*(v61 - 8) + 56))(v160, 1, 1, v61);
  }

  else
  {
    sub_100041B5C();
    (*(v159 + 8))(v29, v53);
  }

  (*(v162 + 16))(v161, v168 + *(v134 + 28), v163);
  sub_100040D9C();
  v129 = sub_100040D8C();
  v62 = v44[7];
  v63 = sub_100041C6C();
  v64 = *(*(v63 - 8) + 56);
  v128 = v62;
  v64(&v49[v62], 1, 1, v63);
  v127 = sub_100040D8C();
  v65 = &v49[v44[12]];
  KeyPath = swift_getKeyPath();
  *(v65 + 1) = 0;
  *(v65 + 2) = 0;
  *v65 = KeyPath;
  *(v65 + 12) = 0;
  v67 = v44[13];
  sub_100041B0C();
  *&v49[v67] = v68;
  v69 = &v49[v44[14]];
  *v69 = xmmword_100042940;
  *(v69 + 1) = xmmword_100042950;
  v70 = v44[15];
  *&v49[v70] = swift_getKeyPath();
  v131 = sub_100003DC0(&qword_100054700, &qword_100042B60);
  swift_storeEnumTagMultiPayload();
  v71 = v135;
  sub_100011258(v43, v135, &qword_1000546F8, &qword_100042B00);
  v73 = v164;
  v72 = v165;
  v74 = v164 + 48;
  v75 = *(v164 + 48);
  v76 = v75(v71, 1, v165);
  v134 = v74;
  v133 = v75;
  if (v76 == 1)
  {
    v77 = v139;
    sub_100041B1C();
    sub_1000049F8(v43, &qword_1000546F8, &qword_100042B00);
    v78 = v75(v71, 1, v72) == 1;
    v79 = v71;
    v80 = v72;
    if (!v78)
    {
      sub_1000049F8(v79, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v43, &qword_1000546F8, &qword_100042B00);
    v81 = *(v73 + 32);
    v77 = v139;
    v81(v139, v71, v72);
    v80 = v72;
  }

  v82 = v44[5];
  v83 = &v49[v44[6]];
  v84 = v44[8];
  v164 = *(v164 + 32);
  (v164)(v49, v77, v80);
  *&v49[v82] = v130;
  *v83 = 0;
  v83[8] = 1;
  sub_100004A58(v160, &v49[v128]);

  *&v49[v84] = v129;
  v49[v44[9]] = 0;
  v49[v44[10]] = 1;
  (*(v162 + 32))(&v49[v44[11]], v161, v163);
  v85 = v146;
  sub_10003079C(v49, v146, type metadata accessor for AvatarView);
  v86 = v132;
  v87 = v138;
  sub_100011258(v168 + v132, v138, &qword_1000546B8, &unk_100042AD0);
  if (v166(v87, 1, v53) == 1)
  {
    sub_1000049F8(v87, &qword_1000546B8, &unk_100042AD0);
    v88 = 0;
    v89 = v143;
    v90 = v159;
  }

  else
  {
    v91 = v140;
    sub_100041B8C();
    v90 = v159;
    (*(v159 + 8))(v87, v53);
    v88 = sub_10004114C();
    (*(v141 + 8))(v91, v142);
    v89 = v143;
  }

  sub_100011258(v168 + v86, v89, &qword_1000546B8, &unk_100042AD0);
  v92 = v166(v89, 1, v53);
  v93 = v165;
  if (v92 == 1)
  {
    sub_1000049F8(v89, &qword_1000546B8, &unk_100042AD0);
    v94 = 1;
    v95 = v144;
  }

  else
  {
    v95 = v144;
    sub_100041B7C();
    (*(v90 + 8))(v89, v53);
    v94 = 0;
  }

  v136(v95, v94, 1, v93);
  v168 = sub_1000416CC();
  (*(v147 + 104))(v150, enum case for ContactFormatter.Style.shortName(_:), v148);
  sub_100041F4C();
  v170 = sub_100040E2C();
  v171 = &protocol witness table for ContactFormatter;
  sub_100004AC8(&v169);
  sub_100040E1C();
  v96 = v153;
  v97 = v6 + *(v153 + 48);
  *v97 = swift_getKeyPath();
  *(v97 + 1) = 0;
  v97[16] = 0;
  v98 = v96[13];
  *(v6 + v98) = swift_getKeyPath();
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  swift_storeEnumTagMultiPayload();
  v99 = v96[14];
  *(v6 + v99) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v100 = v96[15];
  *(v6 + v100) = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  *v6 = v88;
  v101 = v145;
  sub_100011258(v95, v145, &qword_1000546F8, &qword_100042B00);
  v102 = v133;
  if (v133(v101, 1, v93) == 1)
  {
    v103 = v85;
    v104 = v102;
    v105 = v151;
    sub_100041B1C();
    sub_1000049F8(v95, &qword_1000546F8, &qword_100042B00);
    v106 = v104(v101, 1, v93);
    v85 = v103;
    v107 = v164;
    if (v106 != 1)
    {
      sub_1000049F8(v101, &qword_1000546F8, &qword_100042B00);
    }
  }

  else
  {
    sub_1000049F8(v95, &qword_1000546F8, &qword_100042B00);
    v105 = v151;
    v107 = v164;
    (v164)(v151, v101, v93);
  }

  v107(v6 + v96[5], v105, v93);
  *(v6 + v96[6]) = v168;
  *(v6 + v96[7]) = 0x4008000000000000;
  sub_100004B44(&v169, v6 + v96[8]);
  *(v6 + v96[9]) = 1;
  *(v6 + v96[10]) = 1;
  *(v6 + v96[11]) = 0x4060C00000000000;
  v108 = v155;
  sub_10003079C(v6, v155, type metadata accessor for StatusAndNameView);
  v109 = sub_1000415FC();
  sub_10004117C();
  v111 = v110;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  v118 = v108;
  v119 = v152;
  sub_10003079C(v118, v152, type metadata accessor for StatusAndNameView);
  v120 = v119 + *(v154 + 36);
  *v120 = v109;
  *(v120 + 8) = v111;
  *(v120 + 16) = v113;
  *(v120 + 24) = v115;
  *(v120 + 32) = v117;
  *(v120 + 40) = 0;
  v121 = v156;
  sub_100004C8C(v119, v156, &qword_1000558C8, &qword_100044168);
  v122 = v149;
  sub_100030814(v85, v149, type metadata accessor for AvatarView);
  v123 = v157;
  sub_100011258(v121, v157, &qword_1000558C8, &qword_100044168);
  v124 = v158;
  sub_100030814(v122, v158, type metadata accessor for AvatarView);
  v125 = sub_100003DC0(&qword_1000558D0, &qword_100044240);
  sub_100011258(v123, v124 + *(v125 + 48), &qword_1000558C8, &qword_100044168);
  sub_1000049F8(v121, &qword_1000558C8, &qword_100044168);
  sub_10003087C(v85);
  sub_1000049F8(v123, &qword_1000558C8, &qword_100044168);
  return sub_10003087C(v122);
}

uint64_t sub_10002E810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v77 = a1;
  v69 = sub_100003DC0(&qword_100055888, &qword_100044108);
  __chkstk_darwin(v69);
  v70 = &v64 - v2;
  v73 = sub_100003DC0(&qword_100055890, &qword_100044110);
  __chkstk_darwin(v73);
  v4 = &v64 - v3;
  v68 = sub_100003DC0(&qword_100055898, &qword_100044118);
  v5 = __chkstk_darwin(v68);
  v75 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v74 = &v64 - v7;
  v8 = sub_100003DC0(&qword_100055708, &qword_100043FC8);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - v9;
  v11 = sub_100040CEC();
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v64 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v13 - 8);
  v15 = &v64 - v14;
  v16 = sub_10004083C();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v64 - v21;
  v23 = sub_100003DC0(&qword_1000558A0, &qword_100044120);
  v24 = __chkstk_darwin(v23 - 8);
  v72 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v71 = &v64 - v26;
  v67 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v27 = *(v67 + 36);
  sub_100011258(v77 + v27, v15, &qword_1000546B0, &qword_100043630);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v28 = &qword_1000546B0;
    v29 = &qword_100043630;
    v30 = v15;
  }

  else
  {
    (*(v17 + 32))(v22, v15, v16);
    v31 = *(v17 + 16);
    v31(v20, v22, v16);
    sub_100040CAC();
    if ((*(v65 + 48))(v10, 1, v66) != 1)
    {
      (*(v65 + 32))();
      v31(v4, v22, v16);
      (*(v17 + 56))(v4, 0, 1, v16);
      v43 = sub_100040C5C();
      v45 = v44;
      v46 = sub_100041F4C();
      v48 = v47;
      v36 = type metadata accessor for WidgetButton(0);
      v49 = &v4[*(v36 + 20)];
      *v49 = v43;
      v49[1] = v45;
      v50 = &v4[*(v36 + 24)];
      *v50 = v46;
      v50[1] = v48;
      v39 = v73;
      v51 = *(v73 + 36);
      *&v4[v51] = swift_getKeyPath();
      sub_100003DC0(&qword_100054710, &unk_100042C00);
      swift_storeEnumTagMultiPayload();
      sub_100040B8C();
      sub_100030658();
      v41 = v74;
      sub_10004187C();

      sub_1000049F8(v4, &qword_100055890, &qword_100044110);
      sub_100011258(v41, v70, &qword_100055898, &qword_100044118);
      swift_storeEnumTagMultiPayload();
      sub_100031510(&qword_1000558B8, &qword_100055898, &qword_100044118, sub_100030658);
      v42 = v71;
      sub_10004158C();
      sub_1000049F8(v41, &qword_100055898, &qword_100044118);
      (*(v65 + 8))(v64, v66);
      (*(v17 + 8))(v22, v16);
      v32 = v77;
      goto LABEL_7;
    }

    (*(v17 + 8))(v22, v16);
    v28 = &qword_100055708;
    v29 = &qword_100043FC8;
    v30 = v10;
  }

  sub_1000049F8(v30, v28, v29);
  v32 = v77;
  sub_100011258(v77 + v27, v4, &qword_1000546B0, &qword_100043630);
  v33 = sub_100041F4C();
  v35 = v34;
  v36 = type metadata accessor for WidgetButton(0);
  v37 = &v4[*(v36 + 20)];
  *v37 = 0x69662E656E6F6870;
  *(v37 + 1) = 0xEA00000000006C6CLL;
  v38 = &v4[*(v36 + 24)];
  *v38 = v33;
  v38[1] = v35;
  v39 = v73;
  v40 = *(v73 + 36);
  *&v4[v40] = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  sub_100040B8C();
  sub_100030658();
  v41 = v74;
  sub_10004187C();

  sub_1000049F8(v4, &qword_100055890, &qword_100044110);
  sub_100011258(v41, v70, &qword_100055898, &qword_100044118);
  swift_storeEnumTagMultiPayload();
  sub_100031510(&qword_1000558B8, &qword_100055898, &qword_100044118, sub_100030658);
  v42 = v71;
  sub_10004158C();
  sub_1000049F8(v41, &qword_100055898, &qword_100044118);
LABEL_7:
  sub_100011258(v32 + *(v67 + 32), v4, &qword_1000546B0, &qword_100043630);
  v52 = sub_100041F4C();
  v54 = v53;
  type metadata accessor for WidgetButton(0);
  v55 = &v4[*(v36 + 20)];
  strcpy(v55, "message.fill");
  v55[13] = 0;
  *(v55 + 7) = -5120;
  v56 = &v4[*(v36 + 24)];
  *v56 = v52;
  v56[1] = v54;
  v57 = *(v39 + 36);
  *&v4[v57] = swift_getKeyPath();
  sub_100003DC0(&qword_100054710, &unk_100042C00);
  swift_storeEnumTagMultiPayload();
  sub_100040B9C();
  sub_100030658();
  sub_10004187C();

  sub_1000049F8(v4, &qword_100055890, &qword_100044110);
  v58 = v72;
  sub_100011258(v42, v72, &qword_1000558A0, &qword_100044120);
  v59 = v75;
  sub_100011258(v41, v75, &qword_100055898, &qword_100044118);
  v60 = v76;
  sub_100011258(v58, v76, &qword_1000558A0, &qword_100044120);
  v61 = sub_100003DC0(&qword_1000558C0, &qword_100044160);
  v62 = v60 + *(v61 + 48);
  *v62 = 0;
  *(v62 + 8) = 1;
  sub_100011258(v59, v60 + *(v61 + 64), &qword_100055898, &qword_100044118);
  sub_1000049F8(v41, &qword_100055898, &qword_100044118);
  sub_1000049F8(v42, &qword_1000558A0, &qword_100044120);
  sub_1000049F8(v59, &qword_100055898, &qword_100044118);
  return sub_1000049F8(v58, &qword_1000558A0, &qword_100044120);
}

uint64_t sub_10002F22C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v16[1] = sub_10002C104();
  swift_getKeyPath();
  sub_100030814(a1, v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SingleContactQuickActionWidgetView);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_10003079C(v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for SingleContactQuickActionWidgetView);
  sub_100003DC0(&qword_100055828, &qword_1000440B8);
  v10 = sub_100004D80(&qword_100055830, &qword_100055828, &qword_1000440B8, &protocol conformance descriptor for [A]);
  sub_1000305DC(v10, v11, v12);
  sub_100041A2C();
  v13 = *(a1 + *(v5 + 56));
  *(a2 + *(sub_100003DC0(&qword_100055810, &qword_100044080) + 36)) = v13;
  sub_10002C420();
  v14 = sub_1000418EC();

  result = sub_100003DC0(&qword_1000557F0, &qword_100044078);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_10002F464@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10004146C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a1;
  v11 = *a2;
  if (*(a2 + 8) != 1)
  {

    sub_1000420BC();
    v13 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();
    sub_10000FEBC(v11, 0);
    (*(v7 + 8))(v9, v6);
    if (v14[15] != 1)
    {
      goto LABEL_3;
    }

LABEL_5:

    goto LABEL_6;
  }

  if (v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = sub_1000418CC();
  v10 = result;
LABEL_6:
  *a3 = v10;
  return result;
}

uint64_t sub_10002F638@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10004146C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003DC0(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100011258(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1000420BC();
    v19 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10002F860(uint64_t a1)
{
  v2 = sub_10004127C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10004134C();
}

uint64_t sub_10002F928(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10002F960(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10002F9D8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = sub_1000408CC();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_10002FBBC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100003DC0(&qword_1000546B8, &unk_100042AD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = sub_1000408CC();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_10002FDB0(uint64_t a1)
{
  sub_10000E1FC();
  if (v1 <= 0x3F)
  {
    sub_10002FF20(319, &unk_100055118, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10002FF20(319, &qword_100054C48, &type metadata accessor for PersonInfo, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000408CC();
        if (v4 <= 0x3F)
        {
          sub_10002FF20(319, &unk_100055778, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10002FF20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10002FFA8()
{
  result = qword_1000557F8;
  if (!qword_1000557F8)
  {
    sub_100003E08(&qword_1000557D8, &qword_100044068);
    sub_100003E08(&qword_1000557C8, &qword_100044058);
    sub_100004D80(&qword_1000557E8, &qword_1000557C8, &qword_100044058, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000557F8);
  }

  return result;
}

unint64_t sub_1000300A4()
{
  result = qword_100055800;
  if (!qword_100055800)
  {
    sub_100003E08(&qword_1000557F0, &qword_100044078);
    sub_100030130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055800);
  }

  return result;
}

unint64_t sub_100030130()
{
  result = qword_100055808;
  if (!qword_100055808)
  {
    sub_100003E08(&qword_100055810, &qword_100044080);
    sub_1000301BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055808);
  }

  return result;
}

unint64_t sub_1000301BC()
{
  result = qword_100055818;
  if (!qword_100055818)
  {
    sub_100003E08(&qword_100055820, &unk_100044088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055818);
  }

  return result;
}

uint64_t sub_100030238(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_1000557D8, &qword_100044068);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000302A0()
{
  v1 = type metadata accessor for SingleContactQuickActionWidgetView(0);
  v2 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_10000FEBC(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_100003DC0(&qword_100054700, &qword_100042B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10004119C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[6];
  v8 = sub_100041BAC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v10 = v1[7];
  v11 = sub_1000408CC();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);
  v12 = v1[8];
  v13 = sub_10004083C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (!v15(v4 + v12, 1, v13))
  {
    (*(v14 + 8))(v4 + v12, v13);
  }

  v16 = v1[9];
  if (!v15(v4 + v16, 1, v13))
  {
    (*(v14 + 8))(v4 + v16, v13);
  }

  return _swift_deallocObject(v0, v3 + v18, v2 | 7);
}

uint64_t sub_10003055C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for SingleContactQuickActionWidgetView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10002F464(a1, v6, a2);
}

unint64_t sub_1000305DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100055838;
  if (!qword_100055838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055838);
  }

  return result;
}

unint64_t sub_100030658()
{
  result = qword_1000558A8;
  if (!qword_1000558A8)
  {
    sub_100003E08(&qword_100055890, &qword_100044110);
    sub_100030744(&qword_1000558B0, type metadata accessor for WidgetButton, &unk_100044258);
    sub_100030744(&qword_100055258, type metadata accessor for WidgetAccentModifier, &unk_100043710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000558A8);
  }

  return result;
}

uint64_t sub_100030744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003079C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100030814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003087C(uint64_t a1)
{
  v2 = type metadata accessor for AvatarView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000308EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
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

uint64_t sub_1000309CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003DC0(&qword_1000546B0, &qword_100043630);
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

void sub_100030A94(uint64_t a1)
{
  sub_10002FF20(319, &unk_100055778, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100030B40()
{
  sub_100003E08(&qword_1000557D8, &qword_100044068);
  sub_100003E08(&qword_1000557F0, &qword_100044078);
  sub_10002FFA8();
  sub_1000300A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100030BEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004143C();
  *a1 = result;
  return result;
}

unint64_t sub_100030C6C()
{
  result = qword_100055988;
  if (!qword_100055988)
  {
    sub_100003E08(&qword_100055970, &qword_1000442A8);
    sub_100030D24();
    sub_100004D80(&qword_1000559E8, &qword_100055980, &qword_1000442E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055988);
  }

  return result;
}

unint64_t sub_100030D24()
{
  result = qword_100055990;
  if (!qword_100055990)
  {
    sub_100003E08(&qword_100055978, &qword_1000442E0);
    sub_100030DDC();
    sub_100004D80(&qword_1000552B0, &qword_1000552B8, &unk_1000444D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055990);
  }

  return result;
}

unint64_t sub_100030DDC()
{
  result = qword_100055998;
  if (!qword_100055998)
  {
    sub_100003E08(&qword_1000559A0, &qword_100044320);
    sub_100030E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055998);
  }

  return result;
}

unint64_t sub_100030E60()
{
  result = qword_1000559A8;
  if (!qword_1000559A8)
  {
    sub_100003E08(&qword_1000559B0, &qword_100044328);
    sub_100004D80(&qword_1000559B8, &qword_1000559C0, &qword_100044330, &protocol conformance descriptor for Button<A>);
    sub_100030F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000559A8);
  }

  return result;
}

unint64_t sub_100030F18()
{
  result = qword_1000559C8;
  if (!qword_1000559C8)
  {
    sub_100003E08(&qword_1000559D0, &qword_100044338);
    sub_100004D80(&qword_1000559B8, &qword_1000559C0, &qword_100044330, &protocol conformance descriptor for Button<A>);
    sub_100004D80(&qword_1000559D8, &qword_1000559E0, &unk_100044340, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000559C8);
  }

  return result;
}

uint64_t sub_100031018@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000413FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100031098(uint64_t a1)
{
  v32 = a1;
  v1 = sub_10004083C();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v30 = &v27 - v5;
  v6 = sub_10004077C();
  v28 = *(v6 - 8);
  v29 = v6;
  __chkstk_darwin(v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003DC0(&qword_1000556F0, &unk_100043FA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = sub_100003DC0(&qword_1000546B0, &qword_100043630);
  __chkstk_darwin(v12 - 8);
  v14 = &v27 - v13;
  v15 = sub_100003DC0(&qword_1000556F8, &qword_100043FB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = sub_10004080C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  sub_100003DC0(&qword_100055700, &qword_100043FB8);
  sub_1000407FC();
  (*(v19 + 56))(v17, 1, 1, v18);
  (*(v2 + 56))(v14, 1, 1, v1);
  v20 = sub_10004072C();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  (*(v28 + 104))(v8, enum case for InputConnectionBehavior.default(_:), v29);
  v21 = sub_10004076C();
  v22 = *(v2 + 16);
  v23 = v30;
  v24 = v32;
  v22(v30, v32, v1);
  v22(v31, v23, v1);

  sub_10004075C();

  v25 = *(v2 + 8);
  v25(v24, v1);
  v25(v23, v1);
  return v21;
}

uint64_t sub_100031510(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E08(a2, a3);
    a4();
    sub_100030744(&qword_1000546A0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000315E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100041CAC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[7];
      goto LABEL_3;
    }

    v14 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_100031788(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100041CAC();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 24) = (a2 - 1);
    return result;
  }

  v13 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_3;
  }

  v14 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for StatusAndNameViewVertical(uint64_t a1)
{
  result = qword_100055A60;
  if (!qword_100055A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031960(uint64_t a1)
{
  sub_100031ABC(319, &qword_1000550F8, sub_100010EE4, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100041CAC();
    if (v2 <= 0x3F)
    {
      sub_100020558();
      if (v3 <= 0x3F)
      {
        sub_100031ABC(319, &qword_1000548B8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100031ABC(319, &unk_100055118, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100031ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100031B3C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = sub_100003DC0(&qword_100055AB0, &qword_100044418);
  v127 = *(v3 - 8);
  v128 = v3;
  __chkstk_darwin(v3);
  v100 = (&v100 - v4);
  v103 = sub_1000414EC();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003DC0(&qword_100055AB8, &qword_100044420);
  v7 = __chkstk_darwin(v6 - 8);
  v129 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v126 = &v100 - v9;
  v117 = sub_10004172C();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100003DC0(&qword_100055AC0, &qword_100044428);
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v13 = &v100 - v12;
  v105 = sub_100003DC0(&qword_100055AC8, &qword_100044430);
  __chkstk_darwin(v105);
  v15 = &v100 - v14;
  v106 = sub_100003DC0(&qword_100055AD0, &qword_100044438);
  __chkstk_darwin(v106);
  v111 = &v100 - v16;
  v110 = sub_100003DC0(&qword_100055AD8, &qword_100044440);
  __chkstk_darwin(v110);
  v113 = &v100 - v17;
  v122 = sub_100003DC0(&qword_100055AE0, &qword_100044448);
  __chkstk_darwin(v122);
  v19 = &v100 - v18;
  v123 = sub_100003DC0(&qword_100055AE8, &qword_100044450);
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v119 = &v100 - v20;
  v120 = sub_100003DC0(&qword_100055AF0, &qword_100044458);
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v112 = &v100 - v21;
  v109 = sub_100003DC0(&qword_100055AF8, &qword_100044460);
  __chkstk_darwin(v109);
  v108 = &v100 - v22;
  v107 = sub_100003DC0(&qword_100055B00, &qword_100044468);
  v23 = __chkstk_darwin(v107);
  v125 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = &v100 - v26;
  __chkstk_darwin(v25);
  v124 = &v100 - v28;
  v29 = *a1;
  v104 = a1;
  if (v29)
  {
    v30 = type metadata accessor for StatusAndNameViewVertical(0);
    sub_100010A94((a1 + *(v30 + 24)), *(a1 + *(v30 + 24) + 24));
    v31 = v29;
    v32 = sub_1000410CC();
    v34 = v33;
  }

  else
  {
    v35 = sub_100041F4C();
    v32 = v35;
    v34 = v36;
  }

  v133 = v32;
  v134 = v34;
  sub_100004924(v35, v36, v37);
  v38 = sub_10004178C();
  v40 = v39;
  v133 = v38;
  v134 = v39;
  v42 = v41 & 1;
  v135 = v41 & 1;
  v136 = v43;
  sub_10004171C();
  sub_1000417FC();
  (*(v115 + 8))(v11, v117);
  sub_10001FD78(v38, v40, v42);

  v44 = sub_1000418FC();
  KeyPath = swift_getKeyPath();
  (*(v114 + 32))(v15, v13, v116);
  v46 = &v15[*(v105 + 36)];
  *v46 = KeyPath;
  v46[1] = v44;
  LOBYTE(v44) = sub_10004161C();
  sub_10004117C();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v111;
  sub_100004C8C(v15, v111, &qword_100055AC8, &qword_100044430);
  v56 = v55 + *(v106 + 36);
  *v56 = v44;
  *(v56 + 8) = v48;
  *(v56 + 16) = v50;
  *(v56 + 24) = v52;
  *(v56 + 32) = v54;
  *(v56 + 40) = 0;
  LOBYTE(v44) = sub_10004160C();
  sub_10004117C();
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = v113;
  sub_100004C8C(v55, v113, &qword_100055AD0, &qword_100044438);
  v66 = v65 + *(v110 + 36);
  *v66 = v44;
  *(v66 + 8) = v58;
  *(v66 + 16) = v60;
  *(v66 + 24) = v62;
  *(v66 + 32) = v64;
  *(v66 + 40) = 0;
  v67 = sub_1000416CC();
  v68 = swift_getKeyPath();
  sub_100004C8C(v65, v19, &qword_100055AD8, &qword_100044440);
  v69 = v122;
  v70 = &v19[*(v122 + 36)];
  *v70 = v68;
  v70[1] = v67;
  v71 = sub_100033474();
  v72 = v119;
  sub_10004188C();
  sub_1000049F8(v19, &qword_100055AE0, &qword_100044448);
  sub_10004167C();
  v133 = v69;
  v134 = v71;
  swift_getOpaqueTypeConformance2();
  v73 = v112;
  v74 = v123;
  sub_1000417EC();
  (*(v121 + 8))(v72, v74);
  v75 = swift_getKeyPath();
  v76 = v108;
  (*(v118 + 32))(v108, v73, v120);
  v77 = v76 + *(v109 + 36);
  *v77 = v75;
  *(v77 + 8) = 1;
  v78 = swift_getKeyPath();
  sub_100004C8C(v76, v27, &qword_100055AF8, &qword_100044460);
  v79 = &v27[*(v107 + 36)];
  *v79 = v78;
  *(v79 + 1) = 1;
  v79[16] = 0;
  v80 = v124;
  sub_100004C8C(v27, v124, &qword_100055B00, &qword_100044468);
  type metadata accessor for StatusAndNameViewVertical(0);
  v81 = v104;
  sub_100041C8C();
  if (v132)
  {
    sub_100004B44(&v131, &v133);
    v82 = v101;
    sub_10002F610(v101);
    v83 = sub_1000414DC();
    (*(v102 + 8))(v82, v103);
    v84 = v126;
    if ((v83 & 1) == 0)
    {
      v85 = sub_1000414FC();
      v86 = v100;
      *v100 = v85;
      *(v86 + 8) = 0x4004000000000000;
      *(v86 + 16) = 0;
      v87 = sub_100003DC0(&qword_100055B30, &qword_100044550);
      sub_10003280C(v81, &v133, v86 + *(v87 + 44));
      v88 = sub_10004160C();
      sub_10004117C();
      v89 = v128;
      v90 = v86 + *(v128 + 36);
      *v90 = v88;
      *(v90 + 8) = v91;
      *(v90 + 16) = v92;
      *(v90 + 24) = v93;
      *(v90 + 32) = v94;
      *(v90 + 40) = 0;
      sub_100004C8C(v86, v84, &qword_100055AB0, &qword_100044418);
      (*(v127 + 56))(v84, 0, 1, v89);
      sub_100010DCC(&v133);
      goto LABEL_10;
    }

    sub_100010DCC(&v133);
  }

  else
  {
    sub_1000049F8(&v131, &qword_1000551D8, &qword_100044540);
    v84 = v126;
  }

  (*(v127 + 56))(v84, 1, 1, v128);
LABEL_10:
  v95 = v125;
  sub_100011258(v80, v125, &qword_100055B00, &qword_100044468);
  v96 = v129;
  sub_100011258(v84, v129, &qword_100055AB8, &qword_100044420);
  v97 = v130;
  sub_100011258(v95, v130, &qword_100055B00, &qword_100044468);
  v98 = sub_100003DC0(&qword_100055B28, &qword_100044548);
  sub_100011258(v96, v97 + *(v98 + 48), &qword_100055AB8, &qword_100044420);
  sub_1000049F8(v84, &qword_100055AB8, &qword_100044420);
  sub_1000049F8(v80, &qword_100055B00, &qword_100044468);
  sub_1000049F8(v96, &qword_100055AB8, &qword_100044420);
  return sub_1000049F8(v95, &qword_100055B00, &qword_100044468);
}

uint64_t sub_10003280C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v5 = sub_10004119C();
  v126 = *(v5 - 8);
  v127 = v5;
  v6 = __chkstk_darwin(v5);
  v122 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v121 = &v94 - v8;
  v9 = sub_100041AAC();
  v124 = *(v9 - 8);
  v125 = v9;
  __chkstk_darwin(v9);
  v120 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004172C();
  v103 = *(v11 - 8);
  v104 = v11;
  __chkstk_darwin(v11);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100003DC0(&qword_100055B38, &qword_100044558);
  __chkstk_darwin(v108);
  v15 = &v94 - v14;
  v111 = sub_100003DC0(&qword_100055B40, &qword_100044560);
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v105 = &v94 - v16;
  v17 = sub_100003DC0(&qword_100055B48, &qword_100044568);
  v116 = *(v17 - 8);
  v117 = v17;
  __chkstk_darwin(v17);
  v115 = &v94 - v18;
  v107 = sub_100003DC0(&qword_100055B50, &qword_100044570);
  __chkstk_darwin(v107);
  v114 = &v94 - v19;
  v112 = sub_100003DC0(&qword_100055B58, &qword_100044578);
  __chkstk_darwin(v112);
  v113 = &v94 - v20;
  v110 = sub_100003DC0(&qword_100055B60, &unk_100044580);
  v21 = __chkstk_darwin(v110);
  v119 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v106 = &v94 - v24;
  __chkstk_darwin(v23);
  v118 = &v94 - v25;
  v26 = sub_10004194C();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for StatusAndNameViewVertical(0);
  v123 = a1;
  sub_100041C9C();
  if (*(&v135 + 1))
  {
    v95 = a2;
    sub_100004B44(&v134, &v142);
    sub_100010A94(&v142, v145);
    if ((sub_100041C0C() & 1) != 0 && (sub_100010A94(&v142, v145), sub_100041C1C()))
    {
      (*(v27 + 104))(v29, enum case for Image.ResizingMode.stretch(_:), v26);
      v102 = sub_10004197C();
      (*(v27 + 8))(v29, v26);
      sub_100041A9C();
      sub_10004120C();
      v30 = v158;
      v100 = v159;
      v101 = v157;
      v31 = v160;
      v99 = v161;
      v132 = v162;
      sub_100010A94(&v142, v145);
      v97 = sub_100041BFC();
      KeyPath = swift_getKeyPath();
      LOBYTE(v134) = v30;
      v133 = v31;
      v130 = v30;
      v131 = KeyPath;
      v128 = v31;
      v33 = sub_10004161C();
      sub_10004117C();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      sub_100010DCC(&v142);
      v129 = v33;
    }

    else
    {
      sub_100010DCC(&v142);
      v101 = 0;
      v102 = 0;
      v99 = 0;
      v100 = 0;
      v131 = 0;
      v132 = 0;
      v97 = 0;
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v35 = 0;
      v37 = 0;
      v39 = 0;
      v41 = 0;
    }

    a2 = v95;
  }

  else
  {
    sub_1000049F8(&v134, &qword_100055218, &unk_100044680);
    v101 = 0;
    v102 = 0;
    v99 = 0;
    v100 = 0;
    v131 = 0;
    v132 = 0;
    v97 = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v35 = 0;
    v37 = 0;
    v39 = 0;
    v41 = 0;
  }

  sub_100010A94(a2, a2[3]);
  v142 = sub_100040C2C();
  v143 = v42;
  sub_100004924(v142, v42, v43);
  v44 = sub_10004178C();
  v46 = v45;
  v142 = v44;
  v143 = v45;
  v48 = v47 & 1;
  LOBYTE(v144) = v47 & 1;
  v145 = v49;
  sub_10004171C();
  sub_1000417FC();
  (*(v103 + 8))(v13, v104);
  sub_10001FD78(v44, v46, v48);

  v50 = sub_1000416BC();
  v51 = swift_getKeyPath();
  v52 = &v15[*(sub_100003DC0(&qword_100055B68, &qword_100044590) + 36)];
  *v52 = v51;
  v52[1] = v50;
  v53 = sub_10004190C();
  v54 = swift_getKeyPath();
  v55 = v108;
  v56 = &v15[*(v108 + 36)];
  *v56 = v54;
  v56[1] = v53;
  sub_10004166C();
  v57 = sub_100033704();
  v58 = v105;
  sub_1000417EC();
  sub_1000049F8(v15, &qword_100055B38, &qword_100044558);
  v142 = v55;
  v143 = v57;
  swift_getOpaqueTypeConformance2();
  v59 = v115;
  v60 = v111;
  sub_10004188C();
  (*(v109 + 8))(v58, v60);
  v61 = v121;
  sub_10002F838(v121);
  v63 = v126;
  v62 = v127;
  v64 = v122;
  (*(v126 + 104))(v122, enum case for ColorScheme.dark(_:), v127);
  LOBYTE(v53) = sub_10004118C();
  v65 = *(v63 + 8);
  v65(v64, v62);
  v65(v61, v62);
  v66 = v124;
  v67 = &enum case for BlendMode.plusLighter(_:);
  if ((v53 & 1) == 0)
  {
    v67 = &enum case for BlendMode.plusDarker(_:);
  }

  v68 = v120;
  v69 = v125;
  (*(v124 + 104))(v120, *v67, v125);
  v70 = v114;
  (*(v66 + 32))(&v114[*(v107 + 36)], v68, v69);
  (*(v116 + 32))(v70, v59, v117);
  v71 = swift_getKeyPath();
  v72 = v113;
  sub_100004C8C(v70, v113, &qword_100055B50, &qword_100044570);
  v73 = v72 + *(v112 + 36);
  *v73 = v71;
  *(v73 + 8) = 1;
  *(v73 + 16) = 0;
  v74 = swift_getKeyPath();
  v75 = v72;
  v76 = v106;
  sub_100004C8C(v75, v106, &qword_100055B58, &qword_100044578);
  v77 = v76 + *(v110 + 36);
  *v77 = v74;
  *(v77 + 8) = 1;
  v78 = v118;
  sub_100004C8C(v76, v118, &qword_100055B60, &unk_100044580);
  v79 = v119;
  sub_100011258(v78, v119, &qword_100055B60, &unk_100044580);
  v81 = v101;
  v80 = v102;
  *&v134 = v102;
  *(&v134 + 1) = v101;
  v83 = v99;
  v82 = v100;
  *&v135 = v130;
  *(&v135 + 1) = v100;
  *&v136 = v128;
  *(&v136 + 1) = v99;
  *&v137 = v132;
  *(&v137 + 1) = v131;
  v85 = v97;
  v84 = v98;
  *&v138 = v97;
  *(&v138 + 1) = v129;
  *&v139 = v35;
  *(&v139 + 1) = v37;
  *&v140 = v39;
  *(&v140 + 1) = v41;
  v141 = 0;
  v86 = v134;
  v87 = v135;
  v88 = v137;
  *(v98 + 32) = v136;
  *(v84 + 48) = v88;
  *v84 = v86;
  *(v84 + 16) = v87;
  v89 = v138;
  v90 = v139;
  v91 = v140;
  *(v84 + 112) = 0;
  *(v84 + 80) = v90;
  *(v84 + 96) = v91;
  *(v84 + 64) = v89;
  v92 = sub_100003DC0(&qword_100055B80, &qword_100044598);
  sub_100011258(v79, v84 + *(v92 + 48), &qword_100055B60, &unk_100044580);
  sub_1000338A4(&v134, &v142);
  sub_1000049F8(v78, &qword_100055B60, &unk_100044580);
  sub_1000049F8(v79, &qword_100055B60, &unk_100044580);
  v142 = v80;
  v143 = v81;
  v144 = v130;
  v145 = v82;
  v146 = v128;
  v147 = v83;
  v148 = v132;
  v149 = v131;
  v150 = v85;
  v151 = v129;
  v152 = v35;
  v153 = v37;
  v154 = v39;
  v155 = v41;
  v156 = 0;
  return sub_1000049F8(&v142, &qword_100055B88, &qword_1000445A0);
}

uint64_t sub_100033410@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000414AC();
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = 0;
  v3 = sub_100003DC0(&qword_100055AA8, &qword_100044410);
  return sub_100031B3C(v1, a1 + *(v3 + 44));
}

unint64_t sub_100033474()
{
  result = qword_100055B08;
  if (!qword_100055B08)
  {
    sub_100003E08(&qword_100055AE0, &qword_100044448);
    sub_100033588(&qword_100055B10, &qword_100055AD8, &qword_100044440, sub_100033558);
    sub_100004D80(&qword_1000552A0, &qword_1000552A8, &unk_100043A70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055B08);
  }

  return result;
}

uint64_t sub_100033588(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E08(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003360C()
{
  result = qword_100055B20;
  if (!qword_100055B20)
  {
    sub_100003E08(&qword_100055AC8, &qword_100044430);
    swift_getOpaqueTypeConformance2();
    sub_100004D80(&qword_1000552B0, &qword_1000552B8, &unk_1000444D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055B20);
  }

  return result;
}

unint64_t sub_100033704()
{
  result = qword_100055B70;
  if (!qword_100055B70)
  {
    sub_100003E08(&qword_100055B38, &qword_100044558);
    sub_1000337BC();
    sub_100004D80(&qword_1000552B0, &qword_1000552B8, &unk_1000444D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055B70);
  }

  return result;
}

unint64_t sub_1000337BC()
{
  result = qword_100055B78;
  if (!qword_100055B78)
  {
    sub_100003E08(&qword_100055B68, &qword_100044590);
    swift_getOpaqueTypeConformance2();
    sub_100004D80(&qword_1000552A0, &qword_1000552A8, &unk_100043A70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055B78);
  }

  return result;
}

uint64_t sub_1000338A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100055B88, &qword_1000445A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003396C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100041CAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20));
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
    v12 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100033ABC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100041CAC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  else
  {
    v11 = sub_100003DC0(&qword_100054840, &unk_1000437D0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for StatusBadgeView(uint64_t a1)
{
  result = qword_100055BF8;
  if (!qword_100055BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100033C38(uint64_t a1)
{
  sub_100041CAC();
  if (v1 <= 0x3F)
  {
    sub_100033D44(319, &unk_100055C08, type metadata accessor for CTFont, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100033D44(319, &qword_1000548B8, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100033D44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100033DC4(uint64_t a1)
{
  v2 = sub_100040C1C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  v7 = *(v1 + 40);
  type metadata accessor for CGSize(0);
  sub_1000421AC();
  sub_100010A94(v1, *(v1 + 24));
  sub_100040CFC();
  sub_100036A84(&qword_100055D80, &protocol conformance descriptor for StatusType);
  v10._countAndFlagsBits = sub_1000421FC();
  sub_100041F6C(v10);

  (*(v3 + 8))(v5, v2);
  sub_100041F6C(*(v1 + 56));
  sub_100041F2C();
}

Swift::Int sub_100033F58()
{
  sub_10004226C();
  sub_100033DC4(v1);
  return sub_10004227C();
}

Swift::Int sub_100033F9C(uint64_t a1)
{
  sub_10004226C();
  sub_100033DC4(v2);
  return sub_10004227C();
}

uint64_t sub_100033FDC@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t sub_100033FE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v196 = a1;
  v3 = sub_100003DC0(&qword_100055C48, &qword_100044650);
  __chkstk_darwin(v3 - 8);
  v5 = &v169 - v4;
  v180 = sub_100003DC0(&qword_100055C50, &qword_100044658);
  v6 = __chkstk_darwin(v180);
  v182 = &v169 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v181 = &v169 - v8;
  v184 = sub_100003DC0(&qword_100055C58, &qword_100044660);
  __chkstk_darwin(v184);
  v183 = (&v169 - v9);
  v10 = type metadata accessor for StatusBadgeView(0);
  v186 = *(v10 - 8);
  __chkstk_darwin(v10);
  v187 = v11;
  v188 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003DC0(&qword_100055C60, &qword_100044668);
  v190 = *(v12 - 8);
  v191 = v12;
  v13 = __chkstk_darwin(v12);
  v189 = &v169 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v192 = &v169 - v15;
  v16 = sub_100003DC0(&qword_100055C68, &qword_100044670);
  v194 = *(v16 - 8);
  v195 = v16;
  __chkstk_darwin(v16);
  v193 = (&v169 - v17);
  v202 = sub_1000408CC();
  v18 = *(v202 - 1);
  __chkstk_darwin(v202);
  v201 = &v169 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000414EC();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v176 = &v169 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v169 - v24;
  v26 = *(sub_100041C7C() + 16);

  v185 = v10;
  v172 = *(v10 + 32);
  sub_10002F610(v25);
  v27 = sub_1000414DC();
  v177 = v21;
  v178 = v20;
  v28 = *(v21 + 8);
  v174 = v21 + 8;
  v175 = v25;
  v173 = v28;
  v28(v25, v20);
  if (v27)
  {
    sub_100041B3C();
  }

  else
  {
    sub_100041AFC();
  }

  v31 = v29;
  v32 = v30;
  v33 = *(sub_100041C7C() + 16);

  v197 = v2;
  v179 = v5;
  if (v33)
  {
    v34 = sub_100041A8C();
  }

  else
  {
    v34 = sub_100041A9C();
  }

  v36 = v34;
  v37 = v35;
  v38 = sub_100041C7C();
  v39 = *(v38 + 16);
  if (!v39)
  {

    v202 = &_swiftEmptyArrayStorage;
    v57 = v196;
LABEL_16:
    sub_100041C9C();
    if (*(&v224 + 1))
    {
      sub_10002242C(&v223, v226);
      sub_100010A94(v226, v227);
      if (sub_100041C1C())
      {

        v58 = v193;
        *v193 = v36;
        v58[1] = v37;
        *&v223 = v202;
        v59 = v197;
        v60 = v188;
        sub_100035CEC(v197, v188);
        v61 = (*(v186 + 80) + 16) & ~*(v186 + 80);
        v62 = (v187 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
        v63 = swift_allocObject();
        sub_100035EBC(v60, v63 + v61);
        v64 = (v63 + v62);
        *v64 = xmmword_1000445B0;
        v64[1] = xmmword_1000445C0;
        v65 = (v63 + ((v62 + 39) & 0xFFFFFFFFFFFFFFF8));
        *v65 = v31;
        v65[1] = v32;

        sub_100003DC0(&qword_100055C78, &qword_100044690);
        v66 = sub_100004D80(&qword_100055C80, &qword_100055C78, &qword_100044690, &protocol conformance descriptor for [A]);
        sub_100035FE4(v66, v67, v68);
        sub_100041A3C();
        v69 = sub_100041A9C();
        v71 = v70;
        sub_100010A94(v226, v227);
        v72 = sub_100041C1C();
        if (v72)
        {
          v73 = v72;
          v201 = v71;
          v74 = v175;
          sub_10002F610(v175);
          v75 = v176;
          v76 = v178;
          (*(v177 + 104))(v176, enum case for ContentSizeCategory.accessibilityLarge(_:), v178);
          v77 = sub_100010598(v74, v75);
          v78 = v173;
          v173(v75, v76);
          v78(v74, v76);
          v198 = v73;
          if (v77)
          {
            v79 = *(v59 + *(v185 + 20));
            if (!v79)
            {
              sub_100036804();
              v79 = 0;
            }

            v81 = v179;
            v82 = v201;
            v83 = v79;
            v199 = sub_1000416EC();
          }

          else
          {
            sub_100010A94(v226, v227);
            v199 = sub_100041BDC();
            v81 = v179;
            v82 = v201;
          }

          v84 = v183;
          *v183 = v69;
          v84[1] = v82;
          v85 = v84 + *(sub_100003DC0(&qword_100055CA0, &qword_1000446A8) + 44);
          sub_100010A94(v226, v227);
          v188 = sub_100041BCC();
          v86 = v185;
          v87 = v197;
          sub_100041A9C();
          sub_10004120C();
          v88 = *(v87 + *(v86 + 28));
          sub_100010A94(v226, v227);
          sub_100041BEC();
          sub_100041A4C();
          sub_100041ACC();
          sub_100041ABC();
          sub_10004123C();
          v197 = v228;
          v89 = v229;
          v90 = v230;
          v200 = v32;
          v201 = v31;
          v91 = v231;
          v92 = v232;
          sub_100041A9C();
          sub_10004120C();
          *&v203[6] = v233[0];
          *&v203[22] = v233[1];
          *&v203[38] = v233[2];
          sub_100041D1C();
          v93 = sub_100041D2C();
          (*(*(v93 - 8) + 56))(v81, 0, 1, v93);
          v94 = v181;
          sub_10004196C();
          sub_1000049F8(v81, &qword_100055C48, &qword_100044650);
          v95 = *(sub_100003DC0(&qword_100055CA8, &qword_1000446B0) + 36);
          *(v94 + v95) = swift_getKeyPath();
          sub_100003DC0(&qword_100054710, &unk_100042C00);
          swift_storeEnumTagMultiPayload();
          KeyPath = swift_getKeyPath();
          v97 = (v94 + *(sub_100003DC0(&qword_100055CB0, &qword_100044720) + 36));
          v98 = v199;
          *v97 = KeyPath;
          v97[1] = v98;
          v199 = v98;
          sub_100010A94(v226, v227);

          v99 = sub_100041BFC();
          v100 = swift_getKeyPath();
          v101 = (v94 + *(sub_100003DC0(&qword_100055CB8, &qword_100044758) + 36));
          *v101 = v100;
          v101[1] = v99;
          sub_100010A94(v226, v227);
          sub_100041BBC();
          v102 = (v94 + *(v180 + 36));
          *v102 = v103;
          v102[1] = v104;
          v105 = v182;
          sub_10003632C(v94, v182);
          v106 = v188;
          *&v210 = v188;
          WORD4(v210) = 256;
          *(&v210 + 10) = v208;
          HIWORD(v210) = v209;
          *&v211 = 0x4010000000000000;
          BYTE8(v211) = 0;
          HIDWORD(v211) = *&v207[3];
          *(&v211 + 9) = *v207;
          *&v212[0] = 0x3FE3333333333333;
          *(&v212[1] + 8) = v205;
          *(v212 + 8) = v204;
          *(&v212[2] + 8) = v206;
          *(&v212[3] + 1) = 0;
          v213 = v88;
          v107 = v211;
          v108 = v212[0];
          *v85 = v210;
          *(v85 + 1) = v107;
          v109 = v212[1];
          v110 = v212[3];
          *(v85 + 4) = v212[2];
          *(v85 + 5) = v110;
          *(v85 + 12) = v213;
          *(v85 + 2) = v108;
          *(v85 + 3) = v109;
          v111 = v197;
          *&v214 = v197;
          *(&v214 + 1) = v89;
          *&v215 = v90;
          *(&v215 + 1) = v91;
          *&v216[0] = v92;
          WORD4(v216[0]) = 256;
          *(&v216[3] + 1) = *&v203[46];
          *(&v216[2] + 10) = *&v203[32];
          *(&v216[1] + 10) = *&v203[16];
          *(v216 + 10) = *v203;
          v112 = v214;
          *(v85 + 120) = v215;
          *(v85 + 104) = v112;
          v113 = v216[0];
          v114 = v216[1];
          v115 = v216[2];
          *(v85 + 184) = v216[3];
          *(v85 + 168) = v115;
          *(v85 + 152) = v114;
          *(v85 + 136) = v113;
          v116 = sub_100003DC0(&qword_100055CC0, &qword_100044760);
          sub_10003632C(v105, &v85[*(v116 + 64)]);
          sub_100011258(&v210, &v223, &qword_100055CC8, &qword_100044768);
          sub_100011258(&v214, &v223, &qword_100055CD0, &qword_100044770);
          sub_10003639C(v94);
          sub_10003639C(v105);
          v217 = v111;
          v218[0] = v89;
          v218[1] = v90;
          v218[2] = v91;
          v218[3] = v92;
          v219 = 256;
          v220 = *v203;
          v221 = *&v203[16];
          *v222 = *&v203[32];
          *&v222[14] = *&v203[46];
          sub_1000049F8(&v217, &qword_100055CD0, &qword_100044770);
          *&v225[1] = v204;
          *&v223 = v106;
          WORD4(v223) = 256;
          *(&v223 + 10) = v208;
          HIWORD(v223) = v209;
          *&v224 = 0x4010000000000000;
          BYTE8(v224) = 0;
          *(&v224 + 9) = *v207;
          HIDWORD(v224) = *&v207[3];
          v225[0] = 0x3FE3333333333333;
          *&v225[3] = v205;
          *&v225[5] = v206;
          v225[7] = 0;
          v225[8] = v88;
          sub_1000049F8(&v223, &qword_100055CC8, &qword_100044768);
          LOBYTE(v111) = sub_1000415FC();
          sub_10004117C();
          v118 = v117;
          v120 = v119;
          v122 = v121;
          v124 = v123;
          v125 = v84 + *(sub_100003DC0(&qword_100055CD8, &qword_100044778) + 36);
          *v125 = v111;
          *(v125 + 1) = v118;
          *(v125 + 2) = v120;
          *(v125 + 3) = v122;
          *(v125 + 4) = v124;
          v125[40] = 0;
          LOBYTE(v111) = sub_10004160C();
          sub_10004117C();
          v127 = v126;
          v129 = v128;
          v131 = v130;
          v133 = v132;
          v134 = v84 + *(sub_100003DC0(&qword_100055CE0, &qword_100044780) + 36);
          *v134 = v111;
          *(v134 + 1) = v127;
          *(v134 + 2) = v129;
          *(v134 + 3) = v131;
          *(v134 + 4) = v133;
          v134[40] = 0;
          LOBYTE(v111) = sub_10004161C();
          sub_10004117C();
          v136 = v135;
          v138 = v137;
          v140 = v139;
          v142 = v141;
          v143 = v84 + *(sub_100003DC0(&qword_100055CE8, &qword_100044788) + 36);
          *v143 = v111;
          *(v143 + 1) = v136;
          *(v143 + 2) = v138;
          *(v143 + 3) = v140;
          *(v143 + 4) = v142;
          v143[40] = 0;
          LOBYTE(v111) = sub_10004162C();
          sub_10004117C();
          v145 = v144;
          v147 = v146;
          v149 = v148;
          v151 = v150;
          v152 = v84 + *(sub_100003DC0(&qword_100055CF0, &qword_100044790) + 36);
          *v152 = v111;
          *(v152 + 1) = v145;
          *(v152 + 2) = v147;
          *(v152 + 3) = v149;
          *(v152 + 4) = v151;
          v152[40] = 0;
          *(v84 + *(sub_100003DC0(&qword_100055CF8, &qword_100044798) + 36)) = xmmword_1000445D0;
          sub_100041A9C();
          sub_10004120C();
          v153 = (v84 + *(sub_100003DC0(&qword_100055D00, &qword_1000447A0) + 36));
          v154 = v233[4];
          *v153 = v233[3];
          v153[1] = v154;
          v153[2] = v233[5];
          v155 = (v84 + *(v184 + 36));
          sub_100036404();
          *v155 = 0;
          v155[1] = 0;
          v80 = sub_1000419EC();
        }

        else
        {
          v80 = sub_1000419EC();
          v200 = v32;
          v201 = v31;
        }

        v156 = sub_100003DC0(&qword_100055C90, &qword_100044698);
        v157 = v192;
        v158 = v193;
        v159 = v193 + *(v156 + 44);
        v161 = v189;
        v160 = v190;
        v162 = *(v190 + 16);
        v163 = v191;
        v162(v189, v192, v191);
        v162(v159, v161, v163);
        *&v159[*(sub_100003DC0(&qword_100055C98, &qword_1000446A0) + 48)] = v80;
        v164 = *(v160 + 8);

        v164(v157, v163);

        v164(v161, v163);

        sub_100041A9C();
        sub_10004120C();
        v165 = v195;
        v166 = v196;
        v167 = (v158 + *(v195 + 36));
        v168 = v224;
        *v167 = v223;
        v167[1] = v168;
        v167[2] = *v225;
        sub_100036038(v158, v166);
        (*(v194 + 56))(v166, 0, 1, v165);
        return sub_100010DCC(v226);
      }

      sub_100010DCC(v226);
    }

    else
    {

      sub_1000049F8(&v223, &qword_100055218, &unk_100044680);
    }

    return (*(v194 + 56))(v57, 1, 1, v195);
  }

  v170 = v37;
  v171 = v36;
  *&v214 = &_swiftEmptyArrayStorage;
  v40 = v38;
  sub_10002441C(0, v39, 0);
  result = v40;
  v42 = 0;
  v43 = v214;
  v44 = *(v40 + 16);
  v198 = (v18 + 8);
  v199 = v39;
  v45 = v40 + 40 * v44 - 8;
  v200 = v40;
  while (v44)
  {
    if (v44 > *(result + 16))
    {
      goto LABEL_32;
    }

    v46 = v43;
    sub_100010F30(v45, &v210 + 8);
    v217 = v42;
    sub_10002242C((&v210 + 8), v218);
    sub_100010F30(v218, &v223);
    v47 = v201;
    sub_1000408BC();
    v48 = sub_1000408AC();
    v50 = v49;
    (*v198)(v47, v202);
    v225[3] = v48;
    v225[4] = v50;
    *&v225[1] = v26 * 6.0;
    v225[2] = 0;
    sub_1000049F8(&v217, &qword_100055C70, &qword_100044678);
    v43 = v46;
    *&v214 = v46;
    v52 = v46[2];
    v51 = v46[3];
    if (v52 >= v51 >> 1)
    {
      sub_10002441C((v51 > 1), v52 + 1, 1);
      v43 = v214;
    }

    ++v42;
    v43[2] = v52 + 1;
    v53 = &v43[9 * v52];
    *(v53 + 2) = v223;
    v54 = v224;
    v55 = *v225;
    v56 = *&v225[2];
    v53[12] = v225[4];
    *(v53 + 4) = v55;
    *(v53 + 5) = v56;
    *(v53 + 3) = v54;
    --v26;
    v45 -= 40;
    --v44;
    result = v200;
    if (v199 == v42)
    {
      v202 = v43;

      v57 = v196;
      v37 = v170;
      v36 = v171;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10003524C@<X0>(void *a1@<X0>, double a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v132 = a2;
  v17 = sub_100003DC0(&qword_100055C48, &qword_100044650);
  __chkstk_darwin(v17 - 8);
  v126 = v120 - v18;
  v127 = sub_100003DC0(&qword_100055C50, &qword_100044658);
  v19 = __chkstk_darwin(v127);
  v129 = v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v128 = v120 - v21;
  v130 = sub_100003DC0(&qword_100055C58, &qword_100044660);
  __chkstk_darwin(v130);
  v133 = (v120 - v22);
  v23 = sub_1000414EC();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin(v23);
  v27 = v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = v120 - v28;
  v30 = a1[5];
  *&v31 = COERCE_DOUBLE(sub_100041A8C());
  v124 = v32;
  v125 = *&v31;
  sub_100010A94(a1, a1[3]);
  v33 = sub_100041C1C();
  if (v33)
  {
    v131 = v33;
    v123 = a3;
    v34 = type metadata accessor for StatusBadgeView(0);
    sub_10002F610(v29);
    (*(v24 + 104))(v27, enum case for ContentSizeCategory.accessibilityLarge(_:), v23);
    v35 = sub_100010598(v29, v27);
    v36 = *(v24 + 8);
    v36(v27, v23);
    v36(v29, v23);
    v121 = v30;
    v122 = a7;
    if (v35)
    {
      v37 = v132;
      v38 = *(*&v132 + *(v34 + 20));
      v39 = a4;
      if (!v38)
      {
        sub_100036804();
        v38 = 0;
      }

      v42 = a6;
      v44 = v38;
      v43 = sub_1000416EC();
    }

    else
    {
      v39 = a4;
      v42 = a6;
      sub_100010A94(a1, a1[3]);
      v43 = sub_100041BDC();
      v37 = v132;
    }

    v45 = v133;
    v46 = v124;
    *v133 = v125;
    *(v45 + 1) = v46;
    v47 = v45 + *(sub_100003DC0(&qword_100055CA0, &qword_1000446A8) + 44);
    sub_100010A94(a1, a1[3]);
    v124 = sub_100041BCC();
    sub_100041A9C();
    sub_10004120C();
    v48 = *(*&v37 + *(v34 + 28));
    sub_100010A94(a1, a1[3]);
    sub_100041BEC();
    sub_100041A4C();
    sub_100041ACC();
    sub_100041ABC();
    sub_10004123C();
    v120[0] = v166;
    v49 = v167;
    v50 = v168;
    v125 = a8;
    v132 = a9;
    v51 = v169;
    v52 = v170;
    sub_100041A9C();
    sub_10004120C();
    *&v134[6] = v171[0];
    *&v134[22] = v171[1];
    *&v134[38] = v171[2];
    v53 = v126;
    sub_100041D1C();
    v54 = sub_100041D2C();
    (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
    v55 = v128;
    sub_10004196C();
    sub_1000049F8(v53, &qword_100055C48, &qword_100044650);
    v56 = *(sub_100003DC0(&qword_100055CA8, &qword_1000446B0) + 36);
    *(v55 + v56) = swift_getKeyPath();
    sub_100003DC0(&qword_100054710, &unk_100042C00);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v58 = (v55 + *(sub_100003DC0(&qword_100055CB0, &qword_100044720) + 36));
    *v58 = KeyPath;
    v58[1] = v43;
    v120[1] = v43;
    sub_100010A94(a1, a1[3]);

    v59 = sub_100041BFC();
    v60 = swift_getKeyPath();
    v61 = (v55 + *(sub_100003DC0(&qword_100055CB8, &qword_100044758) + 36));
    *v61 = v60;
    v61[1] = v59;
    sub_100010A94(a1, a1[3]);
    sub_100041BBC();
    v62 = (v55 + *(v127 + 36));
    *v62 = v63;
    v62[1] = v64;
    v65 = v129;
    sub_10003632C(v55, v129);
    v66 = v124;
    *&v141 = v124;
    WORD4(v141) = 256;
    *(&v141 + 10) = v139;
    HIWORD(v141) = v140;
    *&v142 = 0x4010000000000000;
    BYTE8(v142) = 0;
    HIDWORD(v142) = *&v138[3];
    *(&v142 + 9) = *v138;
    *&v143[0] = 0x3FE3333333333333;
    *(&v143[1] + 8) = v136;
    *(v143 + 8) = v135;
    *(&v143[2] + 8) = v137;
    *(&v143[3] + 1) = 0;
    v144 = v48;
    v67 = v142;
    v68 = v143[0];
    *v47 = v141;
    *(v47 + 1) = v67;
    v69 = v143[1];
    v70 = v143[3];
    *(v47 + 4) = v143[2];
    *(v47 + 5) = v70;
    *(v47 + 12) = v144;
    *(v47 + 2) = v68;
    *(v47 + 3) = v69;
    v71 = v120[0];
    *&v145 = v120[0];
    *(&v145 + 1) = v49;
    *&v146 = v50;
    *(&v146 + 1) = v51;
    *&v147[0] = v52;
    WORD4(v147[0]) = 256;
    *(&v147[3] + 1) = *&v134[46];
    *(&v147[2] + 10) = *&v134[32];
    *(&v147[1] + 10) = *&v134[16];
    *(v147 + 10) = *v134;
    v72 = v145;
    *(v47 + 120) = v146;
    *(v47 + 104) = v72;
    v73 = v147[0];
    v74 = v147[1];
    v75 = v147[2];
    *(v47 + 184) = v147[3];
    *(v47 + 168) = v75;
    *(v47 + 152) = v74;
    *(v47 + 136) = v73;
    v76 = sub_100003DC0(&qword_100055CC0, &qword_100044760);
    sub_10003632C(v65, &v47[*(v76 + 64)]);
    sub_100011258(&v141, &v153, &qword_100055CC8, &qword_100044768);
    sub_100011258(&v145, &v153, &qword_100055CD0, &qword_100044770);
    sub_10003639C(v55);
    sub_10003639C(v65);
    v148[0] = v71;
    v148[1] = v49;
    v148[2] = v50;
    v148[3] = v51;
    v148[4] = v52;
    v149 = 256;
    v150 = *v134;
    v151 = *&v134[16];
    *v152 = *&v134[32];
    *&v152[14] = *&v134[46];
    sub_1000049F8(v148, &qword_100055CD0, &qword_100044770);
    v161 = v135;
    v153 = v66;
    v154 = 256;
    v155 = v139;
    v156 = v140;
    v157 = 0x4010000000000000;
    v158 = 0;
    *v159 = *v138;
    *&v159[3] = *&v138[3];
    v160 = 0x3FE3333333333333;
    v162 = v136;
    v163 = v137;
    v164 = 0;
    v165 = v48;
    sub_1000049F8(&v153, &qword_100055CC8, &qword_100044768);
    LOBYTE(v65) = sub_1000415FC();
    sub_10004117C();
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v85 = sub_100003DC0(&qword_100055CD8, &qword_100044778);
    v86 = v133;
    v87 = v133 + *(v85 + 36);
    *v87 = v65;
    *(v87 + 1) = v78;
    *(v87 + 2) = v80;
    *(v87 + 3) = v82;
    *(v87 + 4) = v84;
    v87[40] = 0;
    LOBYTE(v65) = sub_10004160C();
    sub_10004117C();
    v89 = v88;
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = v86 + *(sub_100003DC0(&qword_100055CE0, &qword_100044780) + 36);
    *v96 = v65;
    *(v96 + 1) = v89;
    *(v96 + 2) = v91;
    *(v96 + 3) = v93;
    *(v96 + 4) = v95;
    v96[40] = 0;
    LOBYTE(v65) = sub_10004161C();
    sub_10004117C();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v105 = v86 + *(sub_100003DC0(&qword_100055CE8, &qword_100044788) + 36);
    *v105 = v65;
    *(v105 + 1) = v98;
    *(v105 + 2) = v100;
    *(v105 + 3) = v102;
    *(v105 + 4) = v104;
    v105[40] = 0;
    LOBYTE(v65) = sub_10004162C();
    v106 = v122;
    sub_10004117C();
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v115 = v86 + *(sub_100003DC0(&qword_100055CF0, &qword_100044790) + 36);
    *v115 = v65;
    *(v115 + 1) = v108;
    *(v115 + 2) = v110;
    *(v115 + 3) = v112;
    *(v115 + 4) = v114;
    v115[40] = 0;
    v116 = (v86 + *(sub_100003DC0(&qword_100055CF8, &qword_100044798) + 36));
    *v116 = (v106 - a5) * 0.5;
    v116[1] = (v42 - v39) * 0.5;
    sub_100041A9C();
    sub_10004120C();
    v117 = (v86 + *(sub_100003DC0(&qword_100055D00, &qword_1000447A0) + 36));
    v118 = v171[4];
    *v117 = v171[3];
    v117[1] = v118;
    v117[2] = v171[5];
    v119 = (v86 + *(v130 + 36));
    *v119 = v121;
    v119[1] = 0;
    sub_100036404();
    v41 = sub_1000419EC();

    a3 = v123;
  }

  else
  {
    result = sub_1000419EC();
    v41 = result;
  }

  *a3 = v41;
  return result;
}

uint64_t sub_100035CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusBadgeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035D50()
{
  v1 = (type metadata accessor for StatusBadgeView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100041CAC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[10];
  sub_100003DC0(&qword_100054708, &qword_100042D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000414EC();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100035EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusBadgeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035F20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for StatusBadgeView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = *(v2 + v8);
  v15 = *(v2 + v8 + 8);

  return sub_10003524C(a1, COERCE_DOUBLE(v2 + v6), a2, v10, v11, v12, v13, v14, v15);
}

unint64_t sub_100035FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100055C88;
  if (!qword_100055C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055C88);
  }

  return result;
}

uint64_t sub_100036038(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100055C68, &qword_100044670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000360A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100040C1C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v17 - v9;
  if (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    goto LABEL_5;
  }

  sub_100010A94(a1, *(a1 + 24));
  sub_100040CFC();
  sub_100010A94(a2, *(a2 + 24));
  sub_100040CFC();
  sub_100036A84(&qword_100055D88, &protocol conformance descriptor for StatusType);
  sub_100041F9C();
  sub_100041F9C();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v10, v4);
  }

  else
  {
    v14 = sub_10004222C();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v15(v10, v4);

    if ((v14 & 1) == 0)
    {
LABEL_5:
      v12 = 0;
      return v12 & 1;
    }
  }

  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_10004222C();
  }

  return v12 & 1;
}

uint64_t sub_10003632C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DC0(&qword_100055C50, &qword_100044658);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003639C(uint64_t a1)
{
  v2 = sub_100003DC0(&qword_100055C50, &qword_100044658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100036404()
{
  result = qword_100055D08;
  if (!qword_100055D08)
  {
    sub_100003E08(&qword_100055C58, &qword_100044660);
    sub_100036490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D08);
  }

  return result;
}

unint64_t sub_100036490()
{
  result = qword_100055D10;
  if (!qword_100055D10)
  {
    sub_100003E08(&qword_100055D00, &qword_1000447A0);
    sub_10003651C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D10);
  }

  return result;
}

unint64_t sub_10003651C()
{
  result = qword_100055D18;
  if (!qword_100055D18)
  {
    sub_100003E08(&qword_100055CF8, &qword_100044798);
    sub_1000365A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D18);
  }

  return result;
}

unint64_t sub_1000365A8()
{
  result = qword_100055D20;
  if (!qword_100055D20)
  {
    sub_100003E08(&qword_100055CF0, &qword_100044790);
    sub_100036634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D20);
  }

  return result;
}

unint64_t sub_100036634()
{
  result = qword_100055D28;
  if (!qword_100055D28)
  {
    sub_100003E08(&qword_100055CE8, &qword_100044788);
    sub_1000366C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D28);
  }

  return result;
}

unint64_t sub_1000366C0()
{
  result = qword_100055D30;
  if (!qword_100055D30)
  {
    sub_100003E08(&qword_100055CE0, &qword_100044780);
    sub_10003674C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D30);
  }

  return result;
}

unint64_t sub_10003674C()
{
  result = qword_100055D38;
  if (!qword_100055D38)
  {
    sub_100003E08(&qword_100055CD8, &qword_100044778);
    sub_100004D80(&qword_100055D40, &qword_100055D48, &qword_1000447A8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D38);
  }

  return result;
}

__n128 sub_100036814(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100036838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100036880(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1000368E4()
{
  result = qword_100055D50;
  if (!qword_100055D50)
  {
    sub_100003E08(&qword_100055D58, "bB");
    sub_100036968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D50);
  }

  return result;
}

unint64_t sub_100036968()
{
  result = qword_100055D60;
  if (!qword_100055D60)
  {
    sub_100003E08(&qword_100055C68, &qword_100044670);
    sub_100004D80(&qword_100055D68, &qword_100055D70, &qword_1000447F0, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D60);
  }

  return result;
}

unint64_t sub_100036A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100055D78;
  if (!qword_100055D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055D78);
  }

  return result;
}

uint64_t sub_100036A84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100040C1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t EnvironmentValues.avatarSizeBinding.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100036B0C(a1, a2, a3);
  sub_10004147C();
  return v4;
}

unint64_t sub_100036B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_100055DB0;
  if (!qword_100055DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055DB0);
  }

  return result;
}

uint64_t sub_100036BF8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100054560 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_100055D98;
  v2 = qword_100055DA0;
  v3 = byte_100055DA8;
  *a1 = qword_100055D90;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

void (*EnvironmentValues.avatarSizeBinding.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = sub_100036B0C(v3, v4, v5);
  sub_10004147C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  *v6 = *(v6 + 32);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  return sub_100036D30;
}

void sub_100036D30(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v2[4] = **a1;
  v4 = v2[2];
  v5 = *(v2 + 24);
  v2[5] = v3;
  v2[6] = v4;
  *(v2 + 56) = v5;
  if (a2)
  {

    sub_10004148C();
  }

  else
  {
    sub_10004148C();
  }

  free(v2);
}

uint64_t sub_100036E0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100041CAC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_6:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[7];
LABEL_5:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_6;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v15 = *(a1 + a3[8]);
    if (v15 >= 0xFFFFFFFF)
    {
      LODWORD(v15) = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1000408CC();
    if (*(*(v16 - 8) + 84) == a2)
    {
      v8 = v16;
      v12 = *(v16 - 8);
      v13 = a3[11];
      goto LABEL_5;
    }

    v17 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
    v18 = *(*(v17 - 8) + 48);
    v19 = a1 + a3[15];

    return v18(v19, a2, v17);
  }
}

uint64_t sub_100036FF4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100041CAC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_6:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
LABEL_5:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_6;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[8]) = (a2 - 1);
    return result;
  }

  v16 = sub_1000408CC();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_5;
  }

  v17 = sub_100003DC0(&qword_100055088, &unk_100043FD0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[15];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for AvatarView(uint64_t a1)
{
  result = qword_100055E10;
  if (!qword_100055E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100037214(uint64_t a1)
{
  sub_100041CAC();
  if (v1 <= 0x3F)
  {
    sub_10003749C(319, &qword_1000550F8, sub_100010EE4, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000373E8();
      if (v3 <= 0x3F)
      {
        sub_10003749C(319, &qword_100055E20, &type metadata accessor for ContactImage, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100040D9C();
          if (v5 <= 0x3F)
          {
            sub_1000408CC();
            if (v6 <= 0x3F)
            {
              sub_100037438(319);
              if (v7 <= 0x3F)
              {
                type metadata accessor for UIEdgeInsets(319);
                if (v8 <= 0x3F)
                {
                  sub_10003749C(319, &unk_100055118, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000373E8()
{
  if (!qword_100054618)
  {
    v0 = sub_1000420FC();
    if (!v1)
    {
      atomic_store(v0, &qword_100054618);
    }
  }
}

void sub_100037438(uint64_t a1)
{
  if (!qword_100055E28)
  {
    sub_100003E08(&unk_100055E30, qword_100044930);
    v1 = sub_1000411AC();
    if (!v2)
    {
      atomic_store(v1, &qword_100055E28);
    }
  }
}

void sub_10003749C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10003751C()
{
  v1 = sub_10004146C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for AvatarView(0) + 48);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  if (*(v5 + 25) == 1)
  {
  }

  else
  {

    sub_1000420BC();
    v10 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();
    sub_10003A45C(v6, v7, v8, v9, 0);
    (*(v2 + 8))(v4, v1);
    return v12;
  }

  return v6;
}

uint64_t sub_1000376BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004146C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003DC0(&qword_100054700, &qword_100042B60);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AvatarView(0);
  sub_100011258(v1 + *(v10 + 60), v9, &qword_100054700, &qword_100042B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10004119C();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000420BC();
    v13 = sub_1000415DC();
    sub_1000408FC();

    sub_10004145C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000378C4(double a1)
{
  v2 = sub_10004119C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v26 = sub_100003DC0(&qword_100056050, &qword_100044B20);
  v9 = *(v26 - 8);
  v10 = __chkstk_darwin(v26);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v25 - v14;
  v30 = 0x3FF0000000000000;
  v31 = 0.0;
  v27 = 0;
  v28 = 0;
  v29 = 1;
  sub_10003B010(v13, v16, v17);
  sub_100040C3C();
  v30 = 0x3FD3333333333333;
  v31 = 0.0;
  v27 = 0;
  v28 = 0;
  v29 = 1;
  sub_100040C3C();
  sub_1000376BC(v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
  v18 = sub_10004118C();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v8, v2);
  if (v18)
  {
    v20 = *(v9 + 8);
    v21 = v26;
    v20(v12, v26);
    return (v20)(v15, v21);
  }

  else
  {
    v31 = a1;
    v23 = v26;
    sub_100040C4C();
    v24 = *(v9 + 8);
    v24(v12, v23);
    return (v24)(v15, v23);
  }
}

double sub_100037BD0(double a1)
{
  v2 = sub_10004119C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v24 = sub_100003DC0(&qword_100056050, &qword_100044B20);
  v9 = *(v24 - 8);
  v10 = __chkstk_darwin(v24);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v24 - v14;
  v28 = 0x3FF0000000000000;
  v29 = 0.0;
  v25 = 0.0;
  v26 = 0;
  v27 = 1;
  sub_10003B010(v13, v16, v17);
  sub_100040C3C();
  sub_1000376BC(v8);
  (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
  v18 = sub_10004118C();
  v19 = *(v3 + 8);
  v19(v6, v2);
  v19(v8, v2);
  if (v18)
  {
    v29 = 0.75;
    v20 = 0x3FE4CCCCCCCCCCCDLL;
  }

  else
  {
    v29 = 0.6;
    v20 = 0x3FE199999999999ALL;
  }

  v28 = v20;
  v25 = 0.0;
  v26 = 0;
  v27 = 1;
  sub_100040C3C();
  v29 = a1;
  v21 = v24;
  sub_100040C4C();
  v22 = *(v9 + 8);
  v22(v12, v21);
  v22(v15, v21);
  return v25;
}

void sub_100037EC4(uint64_t a2@<X8>)
{
  v3 = sub_1000418CC();
  sub_10004121C();
  type metadata accessor for AvatarView(0);
  sub_10004121C();
  sub_100041A9C();
  sub_10004120C();
  *&v36[6] = v37;
  *&v36[22] = v38;
  *&v36[38] = v39;
  v4 = sub_10004161C();
  sub_10004117C();
  v34 = v6;
  v35 = v5;
  v32 = v8;
  v33 = v7;
  v9 = sub_10004162C();
  sub_10004117C();
  v11 = v10;
  v13 = v12;
  v31 = v14;
  v16 = v15;
  v17 = sub_1000415FC();
  sub_10004117C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = sub_10004160C();
  sub_10004117C();
  *(a2 + 10) = *v36;
  *a2 = v3;
  *(a2 + 8) = 256;
  *(a2 + 26) = *&v36[16];
  *(a2 + 42) = *&v36[32];
  *(a2 + 56) = *(&v39 + 1);
  *(a2 + 64) = v4;
  *(a2 + 72) = v35;
  *(a2 + 80) = v34;
  *(a2 + 88) = v33;
  *(a2 + 96) = v32;
  *(a2 + 104) = 0;
  *(a2 + 112) = v9;
  *(a2 + 120) = v11;
  *(a2 + 128) = v13;
  *(a2 + 136) = v31;
  *(a2 + 144) = v16;
  *(a2 + 152) = 0;
  *(a2 + 160) = v17;
  *(a2 + 168) = v19;
  *(a2 + 176) = v21;
  *(a2 + 184) = v23;
  *(a2 + 192) = v25;
  *(a2 + 200) = 0;
  *(a2 + 208) = v26;
  *(a2 + 216) = v27;
  *(a2 + 224) = v28;
  *(a2 + 232) = v29;
  *(a2 + 240) = v30;
  *(a2 + 248) = 0;
}

double sub_100038098@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_100003DC0(&qword_100056040, &unk_100044B08);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = sub_10004102C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041C8C();
  if (!*(&v58 + 1))
  {
    sub_1000049F8(&v57, &qword_1000551D8, &qword_100044540);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_6;
  }

  sub_100003DC0(&qword_100056048, &qword_100044B18);
  v9 = swift_dynamicCast();
  (*(v6 + 56))(v4, v9 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_6:
    sub_1000049F8(v4, &qword_100056040, &unk_100044B08);
LABEL_7:
    v54 = 0u;
    v55 = 0u;
    v56 = 1;
    sub_10004158C();
    goto LABEL_8;
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_100040E6C();
  sub_100040E5C();
  v10 = sub_100040E4C();

  if ((v10 & 1) == 0)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_7;
  }

  *&v57 = sub_10004101C();
  *(&v57 + 1) = v11;
  sub_100004924(v57, v11, v12);
  v13 = sub_10004178C();
  v15 = v14;
  v17 = v16;
  sub_1000418DC();
  v18 = sub_10004173C();
  v52 = v19;
  v53 = v18;
  LODWORD(v48) = v20;
  v51 = v21;

  sub_10001FD78(v13, v15, v17 & 1);

  sub_1000416BC();
  v22 = v52;
  v23 = v53;
  v24 = sub_10004176C();
  v49 = v25;
  v50 = v24;
  v27 = v26;
  v29 = v28;

  sub_10001FD78(v23, v22, v48 & 1);

  v53 = v8;
  v30 = v29;
  v31 = v50;
  v48 = sub_10004175C();
  v52 = v32;
  LODWORD(v51) = v33;
  sub_10001FD78(v31, v27, v30 & 1);

  sub_1000418BC();
  v34 = v52;
  v35 = sub_10004177C();
  v37 = v36;
  v39 = v38;

  sub_10001FD78(v48, v34, v51 & 1);

  sub_1000418AC();
  LOBYTE(v22) = v39;
  v40 = sub_10004177C();
  v51 = v42;
  v52 = v41;
  LOBYTE(v34) = v43;

  sub_10001FD78(v35, v37, v22 & 1);

  *&v54 = v40;
  *(&v54 + 1) = v52;
  *&v55 = v34 & 1;
  *(&v55 + 1) = v51;
  v56 = 0;
  sub_10004158C();
  (*(v6 + 8))(v53, v5);
LABEL_8:
  result = *&v57;
  v45 = v58;
  v46 = v59;
  *a1 = v57;
  *(a1 + 16) = v45;
  *(a1 + 32) = v46;
  return result;
}

double sub_10003857C@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AvatarView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10003A1B4(v2, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10003AEA4(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for AvatarView);
  sub_100041A9C();
  sub_10004125C();
  *&v16[54] = v21;
  *&v16[70] = v22;
  *&v16[86] = v23;
  *&v16[102] = v24;
  *&v16[22] = v19;
  *&v16[38] = v20;
  v17 = 0;
  *&v16[6] = v18;
  sub_100041A9C();
  sub_10004120C();
  *a1 = sub_10003A49C;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
  *(a1 + 90) = *&v16[64];
  v9 = *&v16[96];
  *(a1 + 106) = *&v16[80];
  *(a1 + 122) = v9;
  *(a1 + 136) = *&v16[110];
  v10 = *&v16[16];
  *(a1 + 26) = *v16;
  *(a1 + 42) = v10;
  v11 = *&v16[48];
  *(a1 + 58) = *&v16[32];
  *(a1 + 74) = v11;
  v12 = v14[2];
  *(a1 + 144) = v14[1];
  *(a1 + 160) = v12;
  result = v15[0];
  *(a1 + 176) = *v15;
  return result;
}

uint64_t sub_100038818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AvatarView(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10004121C();
  v11 = v10;
  v13 = v12;
  *a3 = sub_100041A6C();
  a3[1] = v14;
  v15 = sub_100003DC0(&qword_100055E88, &qword_100044990);
  sub_1000389E8(a2, a1, a3 + *(v15 + 44));
  sub_10003A1B4(a2, &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = swift_allocObject();
  sub_10003AEA4(&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AvatarView);
  v18 = (v17 + ((v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = v11;
  v18[1] = v13;
  v19 = (a3 + *(sub_100003DC0(&qword_100055E90, &qword_100044998) + 36));
  *v19 = sub_10003A76C;
  v19[1] = v17;
  v19[2] = 0;
  v19[3] = 0;
  v20 = (a2 + *(v7 + 64));
  v21 = -v20[1] - v20[3];
  v22 = -*v20;
  result = sub_100003DC0(&qword_100055E98, &qword_1000449A0);
  v24 = (a3 + *(result + 36));
  *v24 = v21;
  v24[1] = v22;
  return result;
}

uint64_t sub_1000389E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v203 = a3;
  v204 = a2;
  v4 = sub_100003DC0(&qword_100055EA0, &qword_1000449A8);
  v202 = *(v4 - 8);
  __chkstk_darwin(v4);
  v200 = &v154[-v5];
  v187 = sub_100040C1C();
  v184 = *(v187 - 8);
  __chkstk_darwin(v187);
  v182 = &v154[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v180 = type metadata accessor for StatusBadgeView(0);
  __chkstk_darwin(v180);
  v181 = &v154[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v183 = sub_100003DC0(&qword_100055EA8, &qword_1000449B0);
  __chkstk_darwin(v183);
  v186 = &v154[-v8];
  v9 = sub_100003DC0(&qword_100055EB0, &qword_1000449B8);
  v197 = *(v9 - 8);
  v198 = v9;
  __chkstk_darwin(v9);
  v185 = &v154[-v10];
  v11 = sub_100003DC0(&qword_100055EB8, &qword_1000449C0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v154[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v199 = &v154[-v15];
  v194 = sub_100003DC0(&qword_100055EC0, &unk_1000449C8);
  __chkstk_darwin(v194);
  v195 = &v154[-v16];
  v17 = sub_1000414CC();
  v178 = *(v17 - 8);
  v179 = v17;
  __chkstk_darwin(v17);
  v177 = &v154[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_100003DC0(&qword_100055C48, &qword_100044650);
  __chkstk_darwin(v19 - 8);
  v171 = &v154[-v20];
  v170 = sub_10004194C();
  v193 = *(v170 - 8);
  __chkstk_darwin(v170);
  v188 = &v154[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v173 = sub_100003DC0(&qword_100055EC8, &qword_1000449D8);
  __chkstk_darwin(v173);
  v172 = &v154[-v22];
  v23 = sub_100003DC0(&qword_100055ED0, &qword_1000449E0);
  __chkstk_darwin(v23);
  v174 = &v154[-v24];
  v25 = sub_100003DC0(&qword_100055ED8, &qword_1000449E8);
  v176 = *(v25 - 8);
  __chkstk_darwin(v25);
  v175 = &v154[-v26];
  v27 = sub_100003DC0(&qword_1000546F0, &unk_100044170);
  __chkstk_darwin(v27 - 8);
  v29 = &v154[-v28];
  v30 = sub_100041C6C();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v154[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_100003DC0(&qword_100055EE0, &qword_1000449F0);
  v35 = __chkstk_darwin(v34 - 8);
  v196 = &v154[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v35);
  v201 = &v154[-v37];
  v38 = type metadata accessor for AvatarView(0);
  v39 = *(v38 + 24);
  v205 = a1;
  if (*(a1 + v39 + 8) != 1 || *(v205 + *(v38 + 40)) == 1)
  {
    v190 = v23;
    v191 = v14;
    v40 = v25;
    v192 = v4;
    v41 = v38;
    v42 = v205;
    sub_100037EC4(&v226);
    v169 = v41;
    sub_100011258(v42 + *(v41 + 28), v29, &qword_1000546F0, &unk_100044170);
    v43 = (*(v31 + 48))(v29, 1, v30);
    v189 = v40;
    if (v43 == 1)
    {
      sub_1000049F8(v29, &qword_1000546F0, &unk_100044170);
    }

    else
    {
      v44 = v29;
      v45 = v33;
      (*(v31 + 32))(v33, v44, v30);
      v46 = sub_100041C5C();
      if (v46)
      {
        v47 = v46;
        v48 = COERCE_DOUBLE(sub_100041C3C());
        if (v49)
        {
          v50 = 0.0;
        }

        else
        {
          v50 = v48;
        }

        v51 = COERCE_DOUBLE(sub_100041C4C());
        v155 = v52;
        v53 = 2.1 - v51;
        sub_1000378C4(v50);
        v55 = v54;
        v56 = sub_100041A8C();
        v156 = v57;
        v157 = v56;
        v58 = *(sub_100003DC0(&qword_100055F28, &qword_100044A18) + 36);
        v167 = v45;
        v59 = v172;
        v60 = &v172[v58];
        v164 = enum case for Image.ResizingMode.stretch(_:);
        v61 = v193;
        v165 = v31;
        v62 = *(v193 + 104);
        v162 = v193 + 104;
        v163 = v62;
        v63 = v188;
        v64 = v170;
        v62(v188);
        sub_10004197C();
        v65 = *(v61 + 8);
        v193 = v61 + 8;
        v161 = v65;
        v65(v63, v64);
        v168 = v47;
        v66 = v171;
        sub_100041D1C();
        v159 = sub_100041D2C();
        v67 = *(v159 - 8);
        v158 = *(v67 + 56);
        v160 = v67 + 56;
        v158(v66, 0, 1, v159);
        sub_10004196C();

        sub_1000049F8(v66, &qword_100055C48, &qword_100044650);
        sub_10004121C();
        v166 = v30;
        sub_10004121C();
        sub_100041A9C();
        sub_10004120C();
        v68 = &v60[*(sub_100003DC0(&qword_100055FE0, &qword_100044AA8) + 36)];
        v69 = v220;
        *v68 = v219;
        v68[1] = v69;
        v68[2] = v221;
        v70 = &v60[*(sub_100003DC0(&qword_100055FE8, &qword_100044AB0) + 36)];
        *v70 = 0;
        *(v70 + 4) = 1;
        *&v60[*(sub_100003DC0(&qword_100055FF0, &qword_100044AB8) + 36)] = 256;
        *&v60[*(sub_100003DC0(&qword_100055FF8, &qword_100044AC0) + 36)] = v55;
        if (v155)
        {
          v71 = 2.1;
        }

        else
        {
          v71 = v53;
        }

        *&v60[*(sub_100003DC0(&qword_100056000, &qword_100044AC8) + 36)] = v71;
        v72 = &v60[*(sub_100003DC0(&qword_100056008, &qword_100044AD0) + 36)];
        *v72 = 0x4020000000000000;
        v72[8] = 0;
        sub_100041ADC();
        v74 = v73;
        v76 = v75;
        v77 = &v60[*(sub_100003DC0(&qword_100056010, &qword_100044AD8) + 36)];
        *v77 = vdupq_n_s64(0x3FEB333333333333uLL);
        v77[1].i64[0] = v74;
        v77[1].i64[1] = v76;
        v78 = sub_100037BD0(v50);
        *&v60[*(sub_100003DC0(&qword_100056018, &qword_100044AE0) + 36)] = v78;
        *&v60[*(sub_100003DC0(&qword_100056020, &qword_100044AE8) + 36)] = xmmword_1000445B0;
        v79 = &v60[*(sub_100003DC0(&qword_100055F90, &qword_100044A48) + 36)];
        v80 = v156;
        *v79 = v157;
        v79[1] = v80;
        v81 = v229;
        v59[2] = v228;
        v59[3] = v81;
        v82 = v227;
        *v59 = v226;
        v59[1] = v82;
        v83 = v233;
        v59[6] = v232;
        v59[7] = v83;
        v84 = v231;
        v59[4] = v230;
        v59[5] = v84;
        v85 = v237;
        v59[10] = v236;
        v59[11] = v85;
        v86 = v235;
        v59[8] = v234;
        v59[9] = v86;
        *(v59 + 233) = *(v240 + 9);
        v87 = v240[0];
        v59[13] = v239;
        v59[14] = v87;
        v59[12] = v238;
        sub_100011258(&v226, v206, &qword_100055EE8, &qword_1000449F8);
        v88 = sub_100041A8C();
        v156 = v89;
        v157 = v88;
        v90 = v59 + *(sub_100003DC0(&qword_100055F18, &qword_100044A10) + 36);
        v91 = v188;
        v163(v188, v164, v64);
        sub_10004197C();
        v161(v91, v64);
        sub_100041D1C();
        v158(v66, 0, 1, v159);
        sub_10004196C();

        sub_1000049F8(v66, &qword_100055C48, &qword_100044650);
        v92 = &v90[*(sub_100003DC0(&qword_100056028, &qword_100044AF0) + 36)];
        *v92 = 0;
        *(v92 + 4) = 1;
        sub_10004121C();
        sub_10004121C();
        sub_100041A9C();
        sub_10004120C();
        v93 = &v90[*(sub_100003DC0(&qword_100056030, &qword_100044AF8) + 36)];
        v94 = v206[1];
        *v93 = v206[0];
        *(v93 + 1) = v94;
        *(v93 + 2) = v206[2];
        *&v90[*(sub_100003DC0(&qword_100056038, &qword_100044B00) + 36)] = 256;
        v95 = &v90[*(sub_100003DC0(&qword_100055FA0, &qword_100044A50) + 36)];
        v96 = v156;
        *v95 = v157;
        v95[1] = v96;
        v97 = sub_100041A5C();
        v99 = v98;
        sub_100038098(&v213);
        v100 = v215;
        v101 = v214;
        v102 = v59 + *(v173 + 36);
        *v102 = v213;
        *(v102 + 1) = v101;
        v102[32] = v100;
        *(v102 + 5) = v97;
        *(v102 + 6) = v99;
        sub_10003A8B8();
        v103 = v174;
        sub_10004184C();
        sub_1000049F8(v59, &qword_100055EC8, &qword_1000449D8);
        v105 = v177;
        v104 = v178;
        v106 = v179;
        (*(v178 + 104))(v177, enum case for ColorRenderingMode.nonLinear(_:), v179);
        v107 = sub_10003A7FC();
        v109 = v189;
        v108 = v190;
        v110 = v175;
        sub_10004180C();
        (*(v104 + 8))(v105, v106);
        sub_1000049F8(v103, &qword_100055ED0, &qword_1000449E0);
        v111 = v176;
        (*(v176 + 16))(v195, v110, v109);
        swift_storeEnumTagMultiPayload();
        sub_100003DC0(&qword_100055EF8, &qword_100044A08);
        *&v213 = v108;
        *(&v213 + 1) = v107;
        swift_getOpaqueTypeConformance2();
        sub_10003ACD8();
        v112 = v201;
        sub_10004158C();

        (*(v111 + 8))(v110, v109);
        (*(v165 + 8))(v167, v166);
LABEL_18:
        sub_100041C9C();
        v121 = v191;
        if (*(&v208 + 1))
        {
          sub_10002242C(&v207, &v213);
          sub_100010A94(&v213, *(&v214 + 1));
          if ((sub_100041C0C() & 1) == 0)
          {
            v123 = sub_100041CAC();
            v124 = v181;
            v125 = v205;
            (*(*(v123 - 8) + 16))(v181, v205, v123);
            UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 25.0, 0);
            v127 = v180;
            *(v124 + *(v180 + 20)) = UIFontForLanguage;
            *(v124 + v127[6]) = 0x4000000000000000;
            *(v124 + v127[7]) = 0x4010000000000000;
            v128 = v127[8];
            *(v124 + v128) = swift_getKeyPath();
            sub_100003DC0(&qword_100054708, &qword_100042D90);
            swift_storeEnumTagMultiPayload();
            v129 = 0.0;
            if (*(v125 + *(v169 + 36)))
            {
              v129 = 2.0;
            }

            v130 = (v125 + *(v169 + 56));
            v131 = v129 - v130[1] - v130[3];
            v132 = -v129 - *v130;
            v133 = v186;
            sub_10003AEA4(v124, v186, type metadata accessor for StatusBadgeView);
            v134 = &v133[*(v183 + 36)];
            *v134 = v131;
            v134[1] = v132;
            sub_100010A94(&v213, *(&v214 + 1));
            v135 = v182;
            sub_100040CFC();
            v136 = sub_100040C0C();
            v138 = v137;
            v139 = (*(v184 + 8))(v135, v187);
            *&v207 = v136;
            *(&v207 + 1) = v138;
            sub_100004924(v139, v140, v141);
            v142 = sub_10004178C();
            v144 = v143;
            v146 = v145;
            sub_10003AF0C();
            v147 = v185;
            sub_10004182C();
            sub_10001FD78(v142, v144, v146 & 1);

            v148 = v133;
            v112 = v201;
            sub_1000049F8(v148, &qword_100055EA8, &qword_1000449B0);
            sub_100040BAC();
            v149 = v198;
            v122 = v199;
            sub_10004124C();

            sub_1000049F8(v147, &qword_100055EB0, &qword_1000449B8);
            (*(v197 + 56))(v122, 0, 1, v149);
            sub_100010DCC(&v213);
            goto LABEL_26;
          }

          sub_100010DCC(&v213);
        }

        else
        {
          sub_1000049F8(&v207, &qword_100055218, &unk_100044680);
        }

        v122 = v199;
        (*(v197 + 56))(v199, 1, 1, v198);
LABEL_26:
        v150 = v196;
        sub_10003ADBC(v112, v196);
        sub_100011258(v122, v121, &qword_100055EB8, &qword_1000449C0);
        v151 = v200;
        sub_10003ADBC(v150, v200);
        v152 = sub_100003DC0(&qword_100055FC8, &qword_100044A68);
        sub_100011258(v121, &v151[*(v152 + 48)], &qword_100055EB8, &qword_1000449C0);
        sub_1000049F8(&v226, &qword_100055EE8, &qword_1000449F8);
        sub_1000049F8(v122, &qword_100055EB8, &qword_1000449C0);
        sub_1000049F8(v112, &qword_100055EE0, &qword_1000449F0);
        sub_1000049F8(v121, &qword_100055EB8, &qword_1000449C0);
        sub_1000049F8(v150, &qword_100055EE0, &qword_1000449F0);
        v153 = v203;
        sub_10003AE2C(v151, v203);
        return (*(v202 + 56))(v153, 0, 1, v192);
      }

      (*(v31 + 8))(v33, v30);
    }

    v116 = v190;
    v117 = sub_100041A8C();
    v119 = v118;
    sub_100039F38(&v207);
    v215 = v209;
    v216 = v210;
    v217 = v211;
    v213 = v207;
    v214 = v208;
    *&v218 = v117;
    *(&v218 + 1) = v119;
    v212[12] = v238;
    v212[13] = v239;
    v212[14] = v240[0];
    *(&v212[14] + 9) = *(v240 + 9);
    v212[8] = v234;
    v212[9] = v235;
    v212[10] = v236;
    v212[11] = v237;
    v212[4] = v230;
    v212[5] = v231;
    v212[6] = v232;
    v212[7] = v233;
    v212[0] = v226;
    v212[1] = v227;
    v212[2] = v228;
    v212[3] = v229;
    v212[18] = v209;
    v212[19] = v210;
    v212[20] = v211;
    v212[21] = v218;
    v212[16] = v207;
    v212[17] = v208;
    v221 = v209;
    v222 = v210;
    v223 = v211;
    v219 = v207;
    v220 = v208;
    v224 = v117;
    v225 = v119;
    sub_100011258(&v226, v206, &qword_100055EE8, &qword_1000449F8);
    sub_100011258(&v213, v206, &qword_100055EF0, &qword_100044A00);
    sub_1000049F8(&v219, &qword_100055EF0, &qword_100044A00);
    memcpy(v195, v212, 0x160uLL);
    swift_storeEnumTagMultiPayload();
    sub_100003DC0(&qword_100055EF8, &qword_100044A08);
    v120 = sub_10003A7FC();
    *&v206[0] = v116;
    *(&v206[0] + 1) = v120;
    swift_getOpaqueTypeConformance2();
    sub_10003ACD8();
    v112 = v201;
    sub_10004158C();
    goto LABEL_18;
  }

  v113 = v203;
  v114 = *(v202 + 56);

  return v114(v113, 1, 1, v4);
}

double sub_100039F38@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10004119C();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v17 - v7;
  sub_1000376BC(v17 - v7);
  (*(v3 + 104))(v6, enum case for ColorScheme.dark(_:), v2);
  v9 = sub_10004118C();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    v11 = 0x3FC3333333333333;
    v12 = sub_1000418DC();
  }

  else
  {
    v11 = 0x3FAEB851EB851EB8;
    v12 = sub_1000418BC();
  }

  v13 = v12;
  v14 = sub_1000415EC();
  sub_10004121C();
  sub_10004121C();
  sub_100041A9C();
  sub_10004120C();
  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 16) = v11;
  v15 = v17[1];
  *(a1 + 24) = v17[0];
  *(a1 + 40) = v15;
  result = *&v18;
  *(a1 + 56) = v18;
  *(a1 + 72) = 256;
  return result;
}

uint64_t sub_10003A11C(double a1)
{
  sub_10003751C();
  sub_100003DC0(&unk_100055E30, qword_100044930);
  sub_1000419FC();
}

uint64_t sub_10003A1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvatarView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003A218()
{
  v1 = type metadata accessor for AvatarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100041CAC();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[7];
  v8 = sub_100041C6C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[11];
  v11 = sub_1000408CC();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v5 + v1[12];
  sub_10003A45C(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 25));
  v13 = v1[15];
  sub_100003DC0(&qword_100054700, &qword_100042B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10004119C();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003A45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_10003A49C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for AvatarView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100038818(a1, v6, a2);
}

uint64_t sub_10003A51C()
{
  v1 = type metadata accessor for AvatarView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_100041CAC();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v1[7];
  v8 = sub_100041C6C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[11];
  v11 = sub_1000408CC();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v5 + v1[12];
  sub_10003A45C(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 25));
  v13 = v1[15];
  sub_100003DC0(&qword_100054700, &qword_100042B60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10004119C();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}