void *sub_10031834C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnerSharingCircle(0);
  v5 = *(v4 - 1);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  sub_1000BC4D4(&qword_101698E50, &unk_101390D40);
  v11 = *(v5 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_101385D80;
  sub_1003158CC(a2, v13 + v12);
  if (*(*(a2 + v4[8]) + 16) < 2uLL)
  {
    return _swiftEmptyArrayStorage;
  }

  v24 = *(a2 + v4[8]);

  sub_1007A9FEC(a1);
  UUID.init()();
  v14 = v4[6];
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 16))(&v10[v14], a2 + v14, v15);
  v16 = v4[7];
  v17 = *(a2 + v16);
  v18 = v24;
  *v10 = xmmword_10138C660;
  v10[v16] = v17;
  *&v10[v4[8]] = v18;
  v10[v4[9]] = 1;
  sub_1003158CC(v10, v8);
  v19 = sub_100A5BC94(0, 1, 1, _swiftEmptyArrayStorage);
  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_100A5BC94((v20 > 1), v21 + 1, 1, v19);
  }

  sub_100315930(v10);
  v19[2] = v21 + 1;
  sub_10031598C(v8, v19 + v12 + v21 * v11);
  return v19;
}

uint64_t sub_1003185B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v50 = a5;
  v42 = type metadata accessor for UUID();
  v9 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_10169DB08, &qword_10139CBE8);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = -1 << *(a1 + 32);
  v16 = ~v15;
  v17 = *(a1 + 64);
  v18 = -v15;
  v43 = a1;
  v44 = a1 + 64;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v45 = v16;
  v46 = 0;
  v47 = v19 & v17;
  v48 = a2;
  v49 = a3;
  v20 = (v9 + 32);
  v40 = (v9 + 8);
  v41 = v9;

  v39 = a3;

  while (1)
  {
    sub_10061D55C(v14);
    v21 = sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
    {
      sub_1000128F8(v43);
    }

    v22 = *(v21 + 48);
    v23 = *v20;
    (*v20)(v11, v14, v42);
    v24 = v14[v22];
    v25 = *v50;
    v27 = sub_1000210EC(v11);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((a4 & 1) == 0)
      {
        sub_1010062B8();
      }
    }

    else
    {
      sub_100FE88DC(v30, a4 & 1);
      v32 = sub_1000210EC(v11);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_19;
      }

      v27 = v32;
    }

    v34 = *v50;
    if (v31)
    {
      (*v40)(v11, v42);
      *(v34[7] + v27) = v24;
      a4 = 1;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v23((v34[6] + *(v41 + 72) * v27), v11, v42);
      *(v34[7] + v27) = v24;
      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_18;
      }

      v34[2] = v37;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_1003188F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v5 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for OwnerSharingCircle(0);
  v9 = *(v8 - 1);
  v10 = __chkstk_darwin(v8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v43 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v43 - v17;
  __chkstk_darwin(v16);
  v50 = &v43 - v19;
  v21 = sub_10031834C(a1, a2);
  if (*(a2 + v8[7]))
  {
    v45 = v18;
    v46 = a2;
    v47 = v20;
    v48 = v12;
    sub_1000BC4D4(&qword_10169DB28, &unk_10139CC18);
    v22 = v9;
    v23 = (sub_1000BC4D4(&qword_10169DB10, &qword_1013B3510) - 8);
    v24 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    v26 = v25 + v24;
    v27 = v23[14];
    v28 = type metadata accessor for UUID();
    v29 = *(v28 - 8);
    v30 = *(v29 + 16);
    v43 = v29 + 16;
    v44 = v30;
    v30(v26, a1, v28);
    *(v26 + v27) = 1;
    v31 = v22;
    v32 = sub_100908D20(v25);
    swift_setDeallocating();
    sub_10000B3A8(v26, &qword_10169DB10, &qword_1013B3510);
    swift_deallocClassInstance();
    sub_1000D2A70(v49, v7, &unk_1016AFA00, &qword_10138C4D0);
    if ((*(v22 + 48))(v7, 1, v8) == 1)
    {
      sub_10000B3A8(v7, &unk_1016AFA00, &qword_10138C4D0);
      v33 = v48;
    }

    else
    {
      v34 = v50;
      sub_10031598C(v7, v50);
      v35 = *(v34 + v8[8]);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = v32;
      sub_1003185B8(v35, sub_1003153D0, 0, isUniquelyReferenced_nonNull_native, &v51);

      v32 = v51;
      sub_1003158CC(v34, v45);
      v37 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_100A5BC94(0, v37[2] + 1, 1, v37);
      }

      v33 = v48;
      v39 = v37[2];
      v38 = v37[3];
      if (v39 >= v38 >> 1)
      {
        v37 = sub_100A5BC94((v38 > 1), v39 + 1, 1, v37);
      }

      sub_100315930(v50);
      v37[2] = v39 + 1;
      sub_10031598C(v45, v37 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v39);
    }

    UUID.init()();
    v44(&v15[v8[6]], v46 + v8[6], v28);
    *v15 = xmmword_10138C660;
    v15[v8[7]] = 0;
    *&v15[v8[8]] = v32;
    v15[v8[9]] = 1;
    sub_1003158CC(v15, v33);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_100A5BC94(0, v21[2] + 1, 1, v21);
    }

    v41 = v21[2];
    v40 = v21[3];
    if (v41 >= v40 >> 1)
    {
      v21 = sub_100A5BC94((v40 > 1), v41 + 1, 1, v21);
    }

    sub_100315930(v15);
    v21[2] = v41 + 1;
    sub_10031598C(v33, v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v41);
  }

  return v21;
}

void *sub_100318E20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v102 = a2;
  v108 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v107 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_10169DB18, &unk_10139CC00);
  v8 = __chkstk_darwin(v7 - 8);
  v101 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v86 - v10;
  v11 = type metadata accessor for OwnerSharingCircle(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v87 = &v86 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v86 - v19;
  v21 = __chkstk_darwin(v18);
  v89 = &v86 - v22;
  v23 = __chkstk_darwin(v21);
  v94 = &v86 - v24;
  v25 = __chkstk_darwin(v23);
  v90 = (&v86 - v26);
  v27 = __chkstk_darwin(v25);
  v92 = (&v86 - v28);
  v29 = __chkstk_darwin(v27);
  v91 = &v86 - v30;
  __chkstk_darwin(v29);
  v32 = &v86 - v31;
  v33 = sub_1000BC4D4(&unk_1016AFA00, &qword_10138C4D0);
  v34 = __chkstk_darwin(v33 - 8);
  v104 = &v86 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v105 = &_swiftEmptySetSingleton;
  v110 = &_swiftEmptySetSingleton;
  v99 = a3;
  v103 = &v86 - v36;
  sub_1000D2A70(a3, &v86 - v36, &unk_1016AFA00, &qword_10138C4D0);
  v106 = v32;
  result = sub_1003158CC(v108, v32);
  v38 = 0;
  v39 = *(v102 + 16);
  v97 = (v12 + 48);
  v98 = (v5 + 32);
  v95 = (v5 + 8);
  v86 = (v12 + 56);
  v96 = v4;
  v88 = v39;
  v40 = v39 == 0;
  if (v39)
  {
    goto LABEL_3;
  }

LABEL_2:
  v41 = sub_1000BC4D4(&qword_10169DB20, &qword_10139CC10);
  v42 = v101;
  (*(*(v41 - 8) + 56))(v101, 1, 1, v41);
  v93 = v39;
  v43 = v107;
  v44 = v105;
  while (1)
  {
    v48 = v42;
    v49 = v100;
    sub_1000D2AD8(v48, v100, &qword_10169DB18, &unk_10139CC00);
    v50 = sub_1000BC4D4(&qword_10169DB20, &qword_10139CC10);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1)
    {
      goto LABEL_33;
    }

    v51 = *(v49 + *(v50 + 48));
    (*v98)(v43, v49, v4);
    if (v51 == 1)
    {
      v52 = sub_1003188F4(v43, v106, v103);
    }

    else
    {
      v52 = sub_10031834C(v43, v106);
    }

    v54 = v52;
    v55 = v53;
    v56 = v104;
    swift_bridgeObjectRetain_n();

    v57 = sub_1003ADF48(v54, v44);

    v44 = sub_100612D48(v55, v57);
    LOBYTE(v57) = sub_1005C8B7C(v108, v55);

    if (v57)
    {
      v58 = v92;
      sub_1003158CC(v108, v92);
      v59 = v15;
      v60 = v44;
      v61 = v91;
      v62 = v58;
      v56 = v104;
      sub_100DEC12C(v91, v62);
      v63 = v61;
      v44 = v60;
      v15 = v59;
      sub_100315930(v63);
    }

    sub_1000D2A70(v99, v56, &unk_1016AFA00, &qword_10138C4D0);
    if ((*v97)(v56, 1, v11) != 1)
    {
      v65 = v90;
      sub_10031598C(v56, v90);
      v66 = sub_1005C8B7C(v65, v55);

      if (v66)
      {
        v67 = v92;
        sub_1003158CC(v65, v92);
        v68 = v91;
        sub_100DEC12C(v91, v67);
        sub_100315930(v68);
      }

      result = sub_100315930(v65);
      v64 = *(v54 + 16);
      if (v64)
      {
        goto LABEL_18;
      }

LABEL_32:
      (*v95)(v107, v96);
      swift_bridgeObjectRelease_n();
LABEL_33:
      v79 = v44[2];
      if (v79)
      {
        v80 = sub_1003A8660(v44[2], 0);
        v81 = sub_1003A9FFC(&v109, v80 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v79, v44);
        sub_1000128F8(v109);
        if (v81 == v79)
        {
          goto LABEL_37;
        }

        __break(1u);
      }

      v80 = _swiftEmptyArrayStorage;
LABEL_37:
      v82 = v110;
      v83 = v110[2];
      if (v83)
      {
        v84 = sub_1003A8660(v110[2], 0);
        v85 = sub_1003A9FFC(&v109, v84 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v83, v82);
        sub_1000128F8(v109);
        if (v85 == v83)
        {
LABEL_41:
          sub_100315930(v106);
          sub_10000B3A8(v103, &unk_1016AFA00, &qword_10138C4D0);
          return v80;
        }

        __break(1u);
      }

      goto LABEL_41;
    }

    result = sub_10000B3A8(v56, &unk_1016AFA00, &qword_10138C4D0);
    v64 = *(v54 + 16);
    if (!v64)
    {
      goto LABEL_32;
    }

LABEL_18:
    v69 = 0;
    while (1)
    {
      if (v69 >= *(v54 + 16))
      {
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v70 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v71 = *(v12 + 72);
      sub_1003158CC(v54 + v70 + v71 * v69, v20);
      if (v20[*(v11 + 28)] == 2)
      {
        break;
      }

      ++v69;
      result = sub_100315930(v20);
      if (v64 == v69)
      {
        goto LABEL_32;
      }
    }

    v105 = v44;

    v72 = v89;
    sub_10031598C(v20, v89);
    result = sub_10031598C(v72, v94);
    v73 = *(v54 + 16);
    if (v73)
    {
      v74 = 0;
      v75 = v54 + v70;
      while (v74 < *(v54 + 16))
      {
        sub_1003158CC(v75, v15);
        if (!v15[*(v11 + 28)])
        {

          v4 = v96;
          (*v95)(v107, v96);
          v76 = v106;
          sub_100315930(v106);
          v77 = v103;
          sub_10000B3A8(v103, &unk_1016AFA00, &qword_10138C4D0);
          v78 = v87;
          sub_10031598C(v15, v87);
          sub_10031598C(v78, v77);
          (*v86)(v77, 0, 1, v11);
          goto LABEL_30;
        }

        ++v74;
        result = sub_100315930(v15);
        v75 += v71;
        if (v73 == v74)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_43;
    }

LABEL_28:

    v4 = v96;
    (*v95)(v107, v96);
    v76 = v106;
    sub_100315930(v106);
LABEL_30:
    result = sub_10031598C(v94, v76);
    v39 = v88;
    v38 = v93;
    v40 = v93 >= v88;
    if (v93 == v88)
    {
      goto LABEL_2;
    }

LABEL_3:
    v42 = v101;
    if (v40)
    {
      break;
    }

    v45 = sub_1000BC4D4(&qword_10169DB20, &qword_10139CC10);
    v46 = *(v45 - 8);
    result = sub_1000D2A70(v102 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v38, v42, &qword_10169DB20, &qword_10139CC10);
    v47 = __OFADD__(v38, 1);
    v93 = v38 + 1;
    v44 = v105;
    if (v47)
    {
      goto LABEL_45;
    }

    (*(v46 + 56))(v42, 0, 1, v45);
    v43 = v107;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1003198A0(uint64_t a1)
{
  v1 = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void *sub_100319914(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3, char a4)
{
  if (!a4)
  {
    return _swiftEmptyArrayStorage;
  }

  if (a4 != 1)
  {
    v22 = *(a1 + 16);

    if (v22)
    {
      v23 = a1 + 32;
      v21 = _swiftEmptyArrayStorage;
      do
      {
        sub_10001F280(v23, &v55);
        v24 = v56;
        v25 = v57;
        sub_1000035D0(&v55, v56);
        if ((*(v25 + 112))(v24, v25))
        {
          sub_100031694(&v55, v52);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100025B1C(0, v21[2] + 1, 1);
            v21 = v58;
          }

          v28 = v21[2];
          v27 = v21[3];
          if (v28 >= v27 >> 1)
          {
            sub_100025B1C((v27 > 1), v28 + 1, 1);
          }

          v29 = v53;
          v30 = v54;
          v31 = sub_10015049C(v52, v53);
          __chkstk_darwin(v31);
          v33 = &v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v34 + 16))(v33);
          sub_1006252D4(v28, v33, &v58, v29, v30);
          sub_100007BAC(v52);
          v21 = v58;
        }

        else
        {
          sub_100007BAC(&v55);
        }

        v23 += 40;
        --v22;
      }

      while (v22);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    return v21;
  }

  v51 = swift_allocObject();
  *(v51 + 16) = &off_101608A18;
  v7 = *(a1 + 16);

  if (v7)
  {
    v8 = a1 + 32;
    v9 = _swiftEmptyArrayStorage;
    do
    {
      sub_10001F280(v8, &v55);
      v10 = v56;
      v11 = v57;
      sub_1000035D0(&v55, v56);
      if ((*(v11 + 112))(v10, v11))
      {
        sub_100031694(&v55, v52);
        v12 = swift_isUniquelyReferenced_nonNull_native();
        v58 = v9;
        if ((v12 & 1) == 0)
        {
          sub_100025B1C(0, v9[2] + 1, 1);
          v9 = v58;
        }

        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          sub_100025B1C((v13 > 1), v14 + 1, 1);
        }

        v15 = v53;
        v16 = v54;
        v17 = sub_10015049C(v52, v53);
        __chkstk_darwin(v17);
        v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19);
        sub_1006252D4(v14, v19, &v58, v15, v16);
        sub_100007BAC(v52);
        v9 = v58;
      }

      else
      {
        sub_100007BAC(&v55);
      }

      v8 += 40;
      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v35 = v9[2];

  v36 = v51;

  if (!v35)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_37:

    return v21;
  }

  v38 = 0;
  v39 = (v9 + 4);
  v21 = _swiftEmptyArrayStorage;
  v50 = a2;
  while (v38 < v9[2])
  {
    sub_10001F280(v39, &v55);
    if (sub_100319F48(&v55, a3, a2, sub_100319F00, v36))
    {
      sub_100031694(&v55, v52);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v58 = v21;
      if ((v40 & 1) == 0)
      {
        sub_100025B1C(0, v21[2] + 1, 1);
        v21 = v58;
      }

      v42 = v21[2];
      v41 = v21[3];
      if (v42 >= v41 >> 1)
      {
        sub_100025B1C((v41 > 1), v42 + 1, 1);
      }

      v43 = v53;
      v44 = v54;
      v45 = sub_10015049C(v52, v53);
      __chkstk_darwin(v45);
      v47 = &v49 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v48 + 16))(v47);
      sub_1006252D4(v42, v47, &v58, v43, v44);
      result = sub_100007BAC(v52);
      v21 = v58;
      a2 = v50;
      v36 = v51;
    }

    else
    {
      result = sub_100007BAC(&v55);
    }

    ++v38;
    v39 += 40;
    if (v35 == v38)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_100319F00(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + *(type metadata accessor for BeaconObservation(0) + 24));

  return sub_1005C8B3C(v3, v2);
}

BOOL sub_100319F48(void *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t (*a4)(char *), uint64_t a5)
{
  v74 = a2;
  v75 = a5;
  v73 = a4;
  v67 = a3;
  v6 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  __chkstk_darwin(v6 - 8);
  v76 = &v60 - v7;
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v77 = &v60 - v9;
  v10 = sub_1000BC4D4(&qword_10169DBD0, &unk_1013D6790);
  __chkstk_darwin(v10 - 8);
  v62 = &v60 - v11;
  v78 = type metadata accessor for UUID();
  v12 = *(v78 - 8);
  v13 = __chkstk_darwin(v78);
  v68 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v60 - v15;
  v17 = sub_1000BC4D4(&qword_10169DBD8, &qword_1013BF910);
  __chkstk_darwin(v17 - 8);
  v19 = &v60 - v18;
  v66 = type metadata accessor for BeaconStatus(0);
  v20 = *(v66 - 8);
  __chkstk_darwin(v66);
  v61 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v72 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v71 = &v60 - v27;
  v28 = __chkstk_darwin(v26);
  v70 = &v60 - v29;
  __chkstk_darwin(v28);
  v69 = &v60 - v30;
  v32 = a1[3];
  v31 = a1[4];
  v33 = sub_1000035D0(a1, v32);
  v34 = *(*(v31 + 8) + 8);
  v35 = *(v34 + 32);
  v64 = v33;
  v65 = v32;
  v63 = v35;
  v35(v32, v34);
  v36 = v62;
  sub_100AC6DA0(v16, v62);
  v67 = *(v12 + 8);
  v67(v16, v78);
  v37 = sub_1000BC4D4(&qword_10169DBE0, &unk_1013BD7D0);
  if ((*(*(v37 - 8) + 48))(v36, 1, v37) == 1)
  {
    sub_10000B3A8(v36, &qword_10169DBD0, &unk_1013D6790);
    v38 = 1;
  }

  else
  {
    sub_10031A7A4(v36, v19);
    v38 = 0;
  }

  v39 = v66;
  (*(v20 + 56))(v19, v38, 1, v66);
  v40 = v39;
  v41 = (*(v20 + 48))(v19, 1, v39);
  v43 = v69;
  v42 = v70;
  if (v41 == 1)
  {
    sub_10000B3A8(v19, &qword_10169DBD8, &qword_1013BF910);
LABEL_8:
    static Date.distantPast.getter();
    goto LABEL_10;
  }

  v44 = v19;
  v45 = v61;
  sub_10031A7A4(v44, v61);
  if (*(v45 + *(v40 + 32)))
  {
    sub_10031A808(v45, type metadata accessor for BeaconStatus);
    goto LABEL_8;
  }

  (*(v23 + 16))(v43, v45 + *(v40 + 24), v22);
  sub_10031A808(v45, type metadata accessor for BeaconStatus);
LABEL_10:
  v46 = v68;
  v63(v65, v34);
  v47 = sub_100035730(v46, v73, v75);
  v67(v46, v78);
  v48 = v76;
  sub_1012BB138(v47, v76);

  v49 = type metadata accessor for BeaconObservation(0);
  if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
  {
    sub_10000B3A8(v48, &qword_1016A42E0, &qword_1013B0010);
    v50 = v77;
    (*(v23 + 56))(v77, 1, 1, v22);
    static Date.distantPast.getter();
    if ((*(v23 + 48))(v50, 1, v22) != 1)
    {
      sub_10000B3A8(v50, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v51 = v48 + *(v49 + 20);
    v52 = v77;
    (*(v23 + 16))(v77, v51, v22);
    sub_10031A808(v48, type metadata accessor for BeaconObservation);
    (*(v23 + 56))(v52, 0, 1, v22);
    (*(v23 + 32))(v42, v52, v22);
  }

  sub_10031A74C();
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    v53 = v42;
  }

  else
  {
    v53 = v43;
  }

  v54 = v71;
  (*(v23 + 16))(v71, v53, v22);
  v55 = v72;
  static Date.trustedNow.getter(v72);
  Date.timeIntervalSince(_:)();
  v57 = v56;
  v58 = *(v23 + 8);
  v58(v55, v22);
  v58(v54, v22);
  v58(v42, v22);
  v58(v43, v22);
  return fabs(v57) <= 1800.0;
}

unint64_t sub_10031A74C()
{
  result = qword_1016C9070;
  if (!qword_1016C9070)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9070);
  }

  return result;
}

uint64_t sub_10031A7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10031A808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10031A868(uint64_t a1)
{
  *(a1 + 8) = sub_10031A898();
  result = sub_10031A8EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10031A898()
{
  result = qword_10169DBE8;
  if (!qword_10169DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DBE8);
  }

  return result;
}

unint64_t sub_10031A8EC()
{
  result = qword_10169DBF0;
  if (!qword_10169DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DBF0);
  }

  return result;
}

uint64_t sub_10031A940(void *a1)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v13 = *v1;
  v7 = *v1;
  sub_10015049C(v8, v9);
  sub_1001022C4(&v13, v6);
  sub_100165078();
  dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
  sub_100016590(v7, *(&v7 + 1));
  if (!v2)
  {
    v12 = v1[1];
    v7 = v1[1];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v12, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v11 = v1[3];
    v7 = v1[3];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v11, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v10 = v1[2];
    v7 = v1[2];
    sub_10015049C(v8, v9);
    sub_1001022C4(&v10, v6);
    dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    sub_100016590(v7, *(&v7 + 1));
    v4 = *(v1 + 9);
    if (v4 >> 60 != 15)
    {
      *&v7 = *(v1 + 8);
      *(&v7 + 1) = v4;
      sub_10015049C(v8, v9);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    }

    v5 = *(v1 + 11);
    if (v5 >> 60 != 15)
    {
      *&v7 = *(v1 + 10);
      *(&v7 + 1) = v5;
      sub_10015049C(v8, v9);
      dispatch thunk of BinaryEncodingContaining.encode<A>(sequence:)();
    }
  }

  return sub_100007BAC(v8);
}

double sub_10031ABD8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10031AC3C(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_10031AC3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v48, v49);
  v5 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v48);
    return sub_100007BAC(a1);
  }

  v7 = v5;
  v8 = v6;
  sub_10015049C(v48, v49);
  v9 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v50 = v10;
  sub_10015049C(v48, v49);
  v46 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v47 = v11;
  sub_10015049C(v48, v49);
  v43 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v44 = v12;
  sub_10015049C(v48, v49);
  v41 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v42 = v13;
  sub_10015049C(v48, v49);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(v8);
LABEL_14:
      v19 = v50;
      v21 = v46;
      v20 = v47;
      v22 = v43;
      v23 = v44;
      goto LABEL_15;
    }

LABEL_12:
    if (__OFSUB__(HIDWORD(v7), v7))
    {
      __break(1u);
      goto LABEL_48;
    }

    v17 = HIDWORD(v7) - v7;
    goto LABEL_14;
  }

  v18 = v16 == 2;
  v19 = v50;
  v21 = v46;
  v20 = v47;
  v22 = v43;
  v23 = v44;
  if (!v18)
  {
    goto LABEL_51;
  }

  v25 = *(v7 + 16);
  v24 = *(v7 + 24);
  v26 = __OFSUB__(v24, v25);
  v17 = v24 - v25;
  if (v26)
  {
    __break(1u);
    goto LABEL_12;
  }

LABEL_15:
  if (v17 != 89)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v27 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v27)
    {
      v28 = BYTE6(v19);
      goto LABEL_25;
    }

LABEL_23:
    LODWORD(v28) = HIDWORD(v9) - v9;
    if (!__OFSUB__(HIDWORD(v9), v9))
    {
      v28 = v28;
      goto LABEL_25;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v27 != 2)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v30 = *(v9 + 16);
  v29 = *(v9 + 24);
  v26 = __OFSUB__(v29, v30);
  v28 = v29 - v30;
  if (v26)
  {
    __break(1u);
    goto LABEL_23;
  }

LABEL_25:
  if (v28 != 32)
  {
    goto LABEL_52;
  }

  v31 = v20 >> 62;
  if ((v20 >> 62) <= 1)
  {
    if (!v31)
    {
      v32 = BYTE6(v20);
      goto LABEL_35;
    }

LABEL_33:
    LODWORD(v32) = HIDWORD(v21) - v21;
    if (!__OFSUB__(HIDWORD(v21), v21))
    {
      v32 = v32;
      goto LABEL_35;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v31 != 2)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v34 = *(v21 + 16);
  v33 = *(v21 + 24);
  v26 = __OFSUB__(v33, v34);
  v32 = v33 - v34;
  if (v26)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_35:
  if (v32 != 100)
  {
    goto LABEL_53;
  }

  v35 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v35)
    {
      v36 = BYTE6(v23);
      goto LABEL_45;
    }

LABEL_43:
    LODWORD(v36) = HIDWORD(v22) - v22;
    if (!__OFSUB__(HIDWORD(v22), v22))
    {
      v36 = v36;
      goto LABEL_45;
    }

    goto LABEL_50;
  }

  if (v35 != 2)
  {
    goto LABEL_54;
  }

  v38 = *(v22 + 16);
  v37 = *(v22 + 24);
  v26 = __OFSUB__(v37, v38);
  v36 = v37 - v38;
  if (v26)
  {
    __break(1u);
    goto LABEL_43;
  }

LABEL_45:
  if (v36 == 60)
  {
    v39 = v22;
    v50 = result;
    v40 = v19;
    v45 = v15;
    sub_100007BAC(v48);
    result = sub_100007BAC(a1);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v40;
    a2[4] = v39;
    a2[5] = v23;
    a2[6] = v46;
    a2[7] = v47;
    a2[8] = v41;
    a2[9] = v42;
    a2[10] = v50;
    a2[11] = v45;
    return result;
  }

LABEL_54:
  __break(1u);
  return result;
}

__n128 sub_10031AFD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_10031AFEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 96))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10031B040(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_10031B0B8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10169DBF8);
  v1 = sub_1000076D4(v0, qword_10169DBF8);
  if (qword_101694678 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AC00);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10031B180()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177A930);
  sub_1000076D4(v0, qword_10177A930);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B240()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177A948);
  sub_1000076D4(v0, qword_10177A948);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B300()
{
  v0 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_100044B3C(v0, qword_10177A960);
  sub_1000076D4(v0, qword_10177A960);
  sub_1000041A4(&qword_10169DDA0, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B3B0()
{
  v0 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  sub_100044B3C(v0, qword_10177A978);
  sub_1000076D4(v0, qword_10177A978);
  sub_1000041A4(&qword_10169DDA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B464()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177A990);
  sub_1000076D4(v0, qword_10177A990);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B524()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177A9A8);
  sub_1000076D4(v0, qword_10177A9A8);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B5E4()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177A9C0);
  sub_1000076D4(v0, qword_10177A9C0);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B6A4()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177A9D8);
  sub_1000076D4(v0, qword_10177A9D8);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B750()
{
  v0 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_100044B3C(v0, qword_10177A9F0);
  sub_1000076D4(v0, qword_10177A9F0);
  sub_1000041A4(&qword_10169DE18, &qword_101699E88, &unk_10139D170, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B810()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177AA08);
  sub_1000076D4(v0, qword_10177AA08);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B8C0()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177AA20);
  sub_1000076D4(v0, qword_10177AA20);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031B980()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177AA38);
  sub_1000076D4(v0, qword_10177AA38);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BA3C()
{
  v0 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  sub_100044B3C(v0, qword_10177AA50);
  sub_1000076D4(v0, qword_10177AA50);
  sub_1000041A4(&qword_10169DE10, &qword_101699EA8, &unk_101393170, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BAFC()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177AA68);
  sub_1000076D4(v0, qword_10177AA68);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BBBC()
{
  v0 = sub_1000BC4D4(&qword_10169DDB8, &unk_10139D130);
  sub_100044B3C(v0, qword_10177AA80);
  sub_1000076D4(v0, qword_10177AA80);
  sub_1000041A4(&qword_10169DDC0, &qword_10169DDB8, &unk_10139D130, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BC78()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177AA98);
  sub_1000076D4(v0, qword_10177AA98);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BD38()
{
  v0 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_100044B3C(v0, qword_10177AAB0);
  sub_1000076D4(v0, qword_10177AAB0);
  sub_1000041A4(&qword_10169DDD8, &qword_10169DDD0, &unk_10139D140, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BDF0()
{
  v0 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_100044B3C(v0, qword_10177AAC8);
  sub_1000076D4(v0, qword_10177AAC8);
  sub_1000041A4(&qword_101699D20, &qword_101699D08, &unk_1013D7C10, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BEB0()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177AAE0);
  sub_1000076D4(v0, qword_10177AAE0);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031BF70()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177AAF8);
  sub_1000076D4(v0, qword_10177AAF8);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C030()
{
  v0 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_100044B3C(v0, qword_10177AB10);
  sub_1000076D4(v0, qword_10177AB10);
  sub_1000041A4(&qword_10169DDC8, &qword_101699D60, &qword_1013B6DE0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C0F0()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177AB28);
  sub_1000076D4(v0, qword_10177AB28);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C1A0()
{
  v0 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_100044B3C(v0, qword_10177AB40);
  sub_1000076D4(v0, qword_10177AB40);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C258()
{
  v0 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_100044B3C(v0, qword_10177AB58);
  sub_1000076D4(v0, qword_10177AB58);
  sub_1000041A4(&qword_10169DE08, &qword_10169DE00, &unk_10139D160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C310()
{
  v0 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_100044B3C(v0, qword_10177AB70);
  sub_1000076D4(v0, qword_10177AB70);
  sub_1000041A4(&qword_101699EB0, &qword_101699E70, &unk_101393160, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C3D0()
{
  v0 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_100044B3C(v0, qword_10177AB88);
  sub_1000076D4(v0, qword_10177AB88);
  sub_1000041A4(&qword_10169DDB0, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C490()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177ABA0);
  sub_1000076D4(v0, qword_10177ABA0);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C54C()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177ABB8);
  sub_1000076D4(v0, qword_10177ABB8);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C5FC()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177ABD0);
  sub_1000076D4(v0, qword_10177ABD0);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C6AC()
{
  v0 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_100044B3C(v0, qword_10177ABE8);
  sub_1000076D4(v0, qword_10177ABE8);
  sub_1000041A4(&qword_10169DDE8, &qword_10169DDE0, &unk_1013B6420, &protocol conformance descriptor for Expression<A>);
  return ExpressionType.init(_:)();
}

uint64_t sub_10031C764(char a1)
{
  sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0;
  sub_1000BC4D4(&qword_10169DDF0, &qword_1013BF4F0);
  v4 = swift_allocObject();
  *(v4 + 20) = 0;
  *(v4 + 16) = 0;
  *(v1 + 32) = v4;
  sub_1000BC4D4(&qword_10169DDF8, &unk_10139D150);
  swift_allocObject();
  *(v1 + 40) = AsyncStreamProvider.init()();
  *(v1 + 48) = 13;
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  Table.init(_:database:)();
  *(v1 + 52) = a1;
  if (a1)
  {
    *(v1 + 53) = 0;
    if (qword_101694580 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    v6 = sub_1000076D4(v5, qword_10169DBF8);
    sub_100C63640(v6);
  }

  else
  {
    *(v1 + 53) = 1;
  }

  return v1;
}

uint64_t sub_10031CA38(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v48 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v48 - v12;
  __chkstk_darwin(v11);
  v15 = &v48 - v14;
  result = *(a1 + 24);
  if (result)
  {
    *(a1 + 24) = 0;

    if ((*(a1 + 52) & 1) == 0)
    {
      v52 = v10;
      v53 = v1;
      v51 = v13;
      sub_10031CF3C();
      v50 = [objc_opt_self() defaultManager];
      if (qword_101694580 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_1000076D4(v17, qword_10169DBF8);
      (*(v4 + 16))(v7, v15, v3);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v54 = v48;
        *v20 = 136446210;
        sub_10032542C(&qword_1016B14E0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v22 = v4;
        v24 = v23;
        v49 = *(v22 + 8);
        v49(v7, v3);
        v25 = sub_1000136BC(v21, v24, &v54);

        *(v20 + 4) = v25;
        _os_log_impl(&_mh_execute_header, v18, v19, "Purging database: %{public}s", v20, 0xCu);
        sub_100007BAC(v48);
      }

      else
      {

        v49 = *(v4 + 8);
        v49(v7, v3);
      }

      URL._bridgeToObjectiveC()(v26);
      v28 = v27;
      v54 = 0;
      v29 = v50;
      v30 = [v50 removeItemAtURL:v27 error:&v54];

      v32 = v51;
      v31 = v52;
      if (v30)
      {
        v33 = v54;
      }

      else
      {
        v35 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v53 = 0;
      }

      URL._bridgeToObjectiveC()(v34);
      v37 = v36;
      v54 = 0;
      v38 = [v29 removeItemAtURL:v36 error:&v54];

      if (v38)
      {
        v39 = v54;
      }

      else
      {
        v41 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v53 = 0;
      }

      URL._bridgeToObjectiveC()(v40);
      v43 = v42;
      v54 = 0;
      v44 = [v29 removeItemAtURL:v42 error:&v54];

      if (v44)
      {
        v45 = v54;
      }

      else
      {
        v46 = v54;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v53 = 0;
      }

      v47 = v49;
      v49(v31, v3);
      v47(v32, v3);
      return (v47)(v15, v3);
    }
  }

  return result;
}

uint64_t sub_10031CF3C()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v4 = sub_1000076D4(v0, qword_10177BA58);
  v5 = *(v1 + 16);
  v5(v3, v4, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v6 = *(v1 + 8);
  v6(v3, v0);
  v5(v3, v4, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  v6(v3, v0);
  v5(v3, v4, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (v6)(v3, v0);
}

uint64_t sub_10031D144(uint64_t a1, uint64_t a2)
{
  if (qword_101694580 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = sub_1000076D4(v5, qword_10169DBF8);
  v7 = *(a1 + 52);
  v8 = sub_10032542C(&qword_101699E80, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0E0);
  result = static Database.establishConnection(logger:temporary:)(v6, v7, a2, v8);
  if (!v2)
  {
    *(a1 + 24) = result;
  }

  return result;
}

void sub_10031D230(int a1, int a2, uint64_t a3)
{
  v81 = a1;
  v82 = a2;
  v79 = type metadata accessor for Connection.TransactionMode();
  v5 = *(v79 - 8);
  v6 = __chkstk_darwin(v79);
  v71 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v77 = &v69 - v9;
  v10 = __chkstk_darwin(v8);
  v76 = &v69 - v11;
  v12 = __chkstk_darwin(v10);
  v75 = &v69 - v13;
  v14 = __chkstk_darwin(v12);
  v74 = &v69 - v15;
  v16 = __chkstk_darwin(v14);
  v73 = &v69 - v17;
  v18 = __chkstk_darwin(v16);
  v72 = &v69 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v69 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v69 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v69 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v69 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = &v69 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v69 - v36;
  v78 = v3;
  if ((*(v3 + 52) & 1) == 0)
  {
    v70 = a3;
    if (qword_101694580 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000076D4(v38, qword_10169DBF8);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v69 = v5;
      *v41 = 67109376;
      *(v41 + 4) = v81;
      *(v41 + 8) = 1024;
      *(v41 + 10) = v82;
      _os_log_impl(&_mh_execute_header, v39, v40, "Migrate schema %d -> %d", v41, 0xEu);
      v5 = v69;
    }

    a3 = v70;
  }

  v42 = v82;
  switch(v82)
  {
    case 1:
      v43._countAndFlagsBits = 0xD00000000000001FLL;
      v43._object = 0x80000001013513F0;
      Connection.execute(_:)(v43);
      if (!v44)
      {
        v45._object = 0x8000000101351410;
        v45._countAndFlagsBits = 0xD000000000000018;
        Connection.execute(_:)(v45);
        if (!v47)
        {
          __chkstk_darwin(v46);
          v48 = v78;
          v49 = v79;
          *(&v69 - 2) = a3;
          *(&v69 - 1) = v48;
          v28 = v71;
          (*(v5 + 104))(v71, enum case for Connection.TransactionMode.deferred(_:), v49);
          goto LABEL_25;
        }
      }

      return;
    case 2:
      __chkstk_darwin(v35);
      v28 = v77;
      v60 = v78;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v60;
      v49 = v79;
      (*(v5 + 104))(v28, enum case for Connection.TransactionMode.deferred(_:), v79);
      goto LABEL_25;
    case 3:
      __chkstk_darwin(v35);
      v56 = v78;
      v49 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v56;
      v28 = v76;
      (*(v5 + 104))(v76, enum case for Connection.TransactionMode.deferred(_:), v49);
      goto LABEL_25;
    case 4:
      __chkstk_darwin(v35);
      v57 = v78;
      v49 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v57;
      v28 = v75;
      (*(v5 + 104))(v75, enum case for Connection.TransactionMode.deferred(_:), v49);
      goto LABEL_25;
    case 5:
      __chkstk_darwin(v35);
      v52 = v78;
      v49 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v52;
      v28 = v74;
      (*(v5 + 104))(v74, enum case for Connection.TransactionMode.deferred(_:), v49);
      goto LABEL_25;
    case 6:
      __chkstk_darwin(v35);
      v61 = v78;
      v49 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v61;
      v28 = v73;
      (*(v5 + 104))(v73, enum case for Connection.TransactionMode.deferred(_:), v49);
      goto LABEL_25;
    case 7:
      __chkstk_darwin(v35);
      v63 = v78;
      v49 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v63;
      v28 = v72;
      (*(v5 + 104))(v72, enum case for Connection.TransactionMode.deferred(_:), v49);
      goto LABEL_25;
    case 8:
      __chkstk_darwin(v35);
      v58 = v78;
      v49 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v58;
      (*(v5 + 104))(v22, enum case for Connection.TransactionMode.deferred(_:), v49);
      v59 = v80;
      Connection.transaction(_:block:)();
      if (v59)
      {
        (*(v5 + 8))(v22, v49);
        return;
      }

      v28 = v22;
      goto LABEL_26;
    case 9:
      __chkstk_darwin(v35);
      v66 = v78;
      v67 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v66;
      (*(v5 + 104))(v25, enum case for Connection.TransactionMode.deferred(_:), v67);
      v68 = v80;
      Connection.transaction(_:block:)();
      if (v68)
      {
        (*(v5 + 8))(v25, v67);
        return;
      }

      v28 = v25;
      v49 = v67;
      goto LABEL_26;
    case 10:
      __chkstk_darwin(v35);
      v55 = v78;
      v49 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v55;
      (*(v5 + 104))(v28, enum case for Connection.TransactionMode.deferred(_:), v49);
LABEL_25:
      Connection.transaction(_:block:)();
      goto LABEL_26;
    case 11:
      __chkstk_darwin(v35);
      v64 = v78;
      v49 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v64;
      (*(v5 + 104))(v31, enum case for Connection.TransactionMode.deferred(_:), v49);
      v65 = v80;
      Connection.transaction(_:block:)();
      if (v65)
      {
        (*(v5 + 8))(v31, v49);
        return;
      }

      v28 = v31;
      goto LABEL_26;
    case 12:
      __chkstk_darwin(v35);
      v50 = v78;
      v49 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v50;
      (*(v5 + 104))(v34, enum case for Connection.TransactionMode.deferred(_:), v49);
      v51 = v80;
      Connection.transaction(_:block:)();
      if (v51)
      {
        (*(v5 + 8))(v34, v49);
        return;
      }

      v28 = v34;
      goto LABEL_26;
    case 13:
      __chkstk_darwin(v35);
      v53 = v78;
      v49 = v79;
      *(&v69 - 2) = a3;
      *(&v69 - 1) = v53;
      (*(v5 + 104))(v37, enum case for Connection.TransactionMode.deferred(_:), v49);
      v54 = v80;
      Connection.transaction(_:block:)();
      if (v54)
      {
        (*(v5 + 8))(v37, v49);
      }

      else
      {
        v28 = v37;
LABEL_26:
        (*(v5 + 8))(v28, v49);
      }

      return;
    default:
      sub_10020223C();
      swift_allocError();
      *v62 = v42;
      *(v62 + 4) = 0;
      swift_willThrow();
      return;
  }
}

uint64_t sub_10031DCFC()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138B360;
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177AB88);
  *(v1 + 56) = v2;
  v4 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v1 + 64) = v4;
  v5 = sub_1000280DC((v1 + 32));
  v6 = *(*(v2 - 8) + 16);
  v6(v5, v3, v2);
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v7 = sub_1000076D4(v2, qword_10177A930);
  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  v8 = sub_1000280DC((v1 + 72));
  v6(v8, v7, v2);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v9 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 136) = v2;
  *(v1 + 144) = v4;
  v10 = sub_1000280DC((v1 + 112));
  v6(v10, v9, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_10031DFF0()
{
  v0 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v0 - 8);
  v2 = v18 - v1;
  v3 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v9, qword_10177AB88);
  v10 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v11 = (*(v10 - 8) + 56);
  v18[0] = *v11;
  v18[1] = v11;
  (v18[0])(v8, 1, 1, v10);
  v12 = *(*(v9 - 8) + 56);
  v12(v5, 1, 1, v9);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v5, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177A948);
  (v18[0])(v8, 1, 1, v10);
  v12(v5, 1, 1, v9);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v5, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v9, qword_10177A930);
  (v18[0])(v8, 1, 1, v10);
  v12(v5, 1, 1, v9);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v5, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v13, qword_10177AA38);
  v14 = v18[0];
  (v18[0])(v8, 1, 1, v10);
  v15 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  v16 = *(*(v15 - 8) + 56);
  v16(v2, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  if (qword_101694658 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v13, qword_10177ABA0);
  v14(v8, 1, 1, v10);
  v16(v2, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  if (qword_101694660 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v13, qword_10177ABB8);
  v14(v8, 1, 1, v10);
  v16(v2, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  if (qword_101694668 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v13, qword_10177ABD0);
  v14(v8, 1, 1, v10);
  v16(v2, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  if (qword_101694670 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v13, qword_10177ABE8);
  v14(v8, 1, 1, v10);
  v16(v2, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE20, &unk_10139D180);
  return sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_10031E868()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101391790;
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177AB88);
  *(v1 + 56) = v2;
  v4 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v1 + 64) = v4;
  v5 = sub_1000280DC((v1 + 32));
  v6 = *(*(v2 - 8) + 16);
  v6(v5, v3, v2);
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v7 = sub_1000076D4(v2, qword_10177A930);
  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  v8 = sub_1000280DC((v1 + 72));
  v6(v8, v7, v2);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v10 = sub_1000076D4(v9, qword_10177A978);
  *(v1 + 136) = v9;
  *(v1 + 144) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  v11 = sub_1000280DC((v1 + 112));
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v13 = sub_1000076D4(v12, qword_10177A960);
  *(v1 + 176) = v12;
  *(v1 + 184) = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  v14 = sub_1000280DC((v1 + 152));
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_10031EC8C(uint64_t a1)
{
  v40 = a1;
  v38 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v35 = v31 - v1;
  v2 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = v31 - v4;
  v5 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v5 - 8);
  v34 = v31 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  __chkstk_darwin(v7 - 8);
  v33 = v31 - v8;
  v9 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v9 - 8);
  v32 = v31 - v10;
  v11 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v11 - 8);
  v13 = v31 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v14 - 8);
  v16 = v31 - v15;
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v17, qword_10177AB88);
  v39 = v3;
  v18 = *(v3 + 56);
  v18(v16, 1, 1, v2);
  v19 = *(*(v17 - 8) + 56);
  v19(v13, 1, 1, v17);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177A930);
  v18(v16, 1, 1, v2);
  v19(v13, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v17, qword_10177A948);
  v18(v16, 1, 1, v2);
  v19(v13, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v21 = sub_1000076D4(v20, qword_10177A978);
  v18(v16, 1, 1, v2);
  v22 = v32;
  (*(*(v20 - 8) + 56))(v32, 1, 1, v20);
  v31[1] = sub_100028088();
  v31[2] = v21;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v23 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v23, qword_10177A960);
  v18(v16, 1, 1, v2);
  v24 = v33;
  (*(*(v23 - 8) + 56))(v33, 1, 1, v23);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v24, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  if (qword_101694630 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v25, qword_10177AB28);
  v18(v16, 1, 1, v2);
  v26 = v34;
  (*(*(v25 - 8) + 56))(v34, 1, 1, v25);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v16, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v27 = v35;
  ExpressionType<>.length.getter();
  v42 = 6;
  v28 = v37;
  == infix<A>(_:_:)();
  (*(v36 + 8))(v27, v38);
  TableBuilder.check(_:)();
  v29 = *(v39 + 8);
  v29(v28, v2);
  v41 = 256;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v29)(v28, v2);
}

uint64_t sub_10031F644()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  v4 = sub_1000280DC((v1 + 32));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_10031F858()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  v3 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v9, qword_10177A948);
  v10 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 1, 1, v10);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v5, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  if (qword_101694618 != -1)
  {
    swift_once();
  }

  v14 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v14, qword_10177AAE0);
  v12(v8, 1, 1, v10);
  v15 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  v16 = *(v15 - 8);
  v20 = v12;
  v17 = *(v16 + 56);
  v19 = v13;
  v17(v2, 1, 1, v15);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  if (qword_101694620 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v14, qword_10177AAF8);
  v20(v8, 1, 1, v10);
  v17(v2, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE58, &unk_10139D1B0);
  sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
  if (qword_101694628 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v14, qword_10177AB10);
  v20(v8, 1, 1, v10);
  v17(v2, 1, 1, v15);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE58, &unk_10139D1B0);
  return sub_10000B3A8(v8, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_10031FD84()
{
  v1 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v1 - 8);
  v3 = &v6 - v2;
  if (qword_101694610 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  sub_1000076D4(v4, qword_10177AAC8);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v7 = 0;
  Table.addColumn<A>(_:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE30, &unk_10139D190);
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_10031FF3C()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_10031FFE0()
{
  v0 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v0 - 8);
  v2 = v22 - v1;
  v3 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v3 - 8);
  v5 = v22 - v4;
  v6 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v6 - 8);
  v8 = v22 - v7;
  v9 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  if (qword_101694638 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v12, qword_10177AB40);
  v13 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v15(v11, 1, 1, v13);
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v8, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694640 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v17, qword_10177AB58);
  v15(v11, 1, 1, v13);
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v5, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694648 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699E70, &unk_101393160);
  sub_1000076D4(v18, qword_10177AB70);
  v15(v11, 1, 1, v13);
  v19 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v20 = *(*(v19 - 8) + 56);
  v22[1] = v16;
  v20(v2, 1, 1, v19);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694650 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v19, qword_10177AB88);
  v15(v11, 1, 1, v13);
  v20(v2, 1, 1, v19);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE28, &unk_1013BF4E0);
  return sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_100320580()
{
  v1 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - v2;
  if (qword_101694608 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_10169DDD0, &unk_10139D140);
  sub_1000076D4(v4, qword_10177AAB0);
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v7 = xmmword_10138BBF0;
  Table.addColumn<A>(_:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE30, &unk_10139D190);
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_10032074C()
{
  v1 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v1 - 8);
  v3 = &v7[-v2];
  if (qword_1016945E8 != -1)
  {
    swift_once();
  }

  v4 = sub_1000BC4D4(&qword_101699EA8, &unk_101393170);
  sub_1000076D4(v4, qword_10177AA50);
  v5 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v7[15] = 0;
  Table.addColumn<A>(_:check:defaultValue:)();
  sub_10000B3A8(v3, &qword_10169DE30, &unk_10139D190);
  Connection.run(_:_:)();
  if (v0)
  {
  }
}

uint64_t sub_100320910()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177AA68);
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  v4 = sub_1000280DC((v1 + 32));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100320B24()
{
  v0 = sub_1000BC4D4(&qword_10169DE58, &unk_10139D1B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  v3 = sub_1000BC4D4(&qword_10169DE60, &unk_10139D1C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  if (qword_1016945F0 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v12, qword_10177AA68);
  v13 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v14 = *(*(v13 - 8) + 56);
  v14(v11, 1, 1, v13);
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v8, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945F8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000BC4D4(&qword_10169DDB8, &unk_10139D130);
  sub_1000076D4(v15, qword_10177AA80);
  v14(v11, 1, 1, v13);
  v16 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v5, &qword_10169DE60, &unk_10139D1C0);
  sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
  if (qword_101694600 != -1)
  {
    swift_once();
  }

  v17 = sub_1000BC4D4(&qword_101699D60, &qword_1013B6DE0);
  sub_1000076D4(v17, qword_10177AA98);
  v14(v11, 1, 1, v13);
  v18 = sub_1000BC4D4(&qword_101699D78, &unk_1013BF4B0);
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  type metadata accessor for Date();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v2, &qword_10169DE58, &unk_10139D1B0);
  return sub_10000B3A8(v11, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_100320FF4()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101391790;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A930);
  *(v1 + 56) = v2;
  v4 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v1 + 64) = v4;
  v5 = sub_1000280DC((v1 + 32));
  v6 = *(*(v2 - 8) + 16);
  v6(v5, v3, v2);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v7 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  v8 = sub_1000280DC((v1 + 72));
  v6(v8, v7, v2);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v9 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v10 = sub_1000076D4(v9, qword_10177A978);
  *(v1 + 136) = v9;
  *(v1 + 144) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  v11 = sub_1000280DC((v1 + 112));
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v12 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v13 = sub_1000076D4(v12, qword_10177A960);
  *(v1 + 176) = v12;
  *(v1 + 184) = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  v14 = sub_1000280DC((v1 + 152));
  (*(*(v12 - 8) + 16))(v14, v13, v12);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100321440()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138BBE0;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A930);
  *(v1 + 56) = v2;
  v4 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v1 + 64) = v4;
  v5 = sub_1000280DC((v1 + 32));
  v6 = *(*(v2 - 8) + 16);
  v6(v5, v3, v2);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v7 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 96) = v2;
  *(v1 + 104) = v4;
  v8 = sub_1000280DC((v1 + 72));
  v6(v8, v7, v2);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_1003216D0()
{
  v0 = sub_1000BC4D4(&qword_10169DE60, &unk_10139D1C0);
  __chkstk_darwin(v0 - 8);
  v28 = v26 - v1;
  v2 = sub_1000BC4D4(&qword_10169DE20, &unk_10139D180);
  __chkstk_darwin(v2 - 8);
  v4 = v26 - v3;
  v5 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v5 - 8);
  v7 = v26 - v6;
  v8 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v8 - 8);
  v10 = v26 - v9;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v11, qword_10177A930);
  v12 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v29 = v13 + 56;
  v30 = v14;
  v14(v10, 1, 1, v12);
  v15 = *(*(v11 - 8) + 56);
  v15(v7, 1, 1, v11);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v11, qword_10177A948);
  v30(v10, 1, 1, v12);
  v15(v7, 1, 1, v11);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v7, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945C0 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_10169DE00, &unk_10139D160);
  sub_1000076D4(v16, qword_10177A9D8);
  v17 = v30;
  v30(v10, 1, 1, v12);
  v18 = *(v16 - 8);
  v19 = *(v18 + 56);
  v26[1] = v18 + 56;
  v27 = v19;
  v19(v4, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v4, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945C8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  sub_1000076D4(v20, qword_10177A9F0);
  v17(v10, 1, 1, v12);
  v21 = v28;
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v21, &qword_10169DE60, &unk_10139D1C0);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945D0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000BC4D4(&qword_10169DDE0, &unk_1013B6420);
  sub_1000076D4(v28, qword_10177AA08);
  v17(v10, 1, 1, v12);
  v22 = v12;
  v23 = v17;
  v24 = v27;
  v27(v4, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v4, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945D8 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177AA20);
  v23(v10, 1, 1, v22);
  v24(v4, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v4, &qword_10169DE20, &unk_10139D180);
  sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945E0 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v28, qword_10177AA38);
  v23(v10, 1, 1, v22);
  v24(v4, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v4, &qword_10169DE20, &unk_10139D180);
  return sub_10000B3A8(v10, &qword_10169DE30, &unk_10139D190);
}

uint64_t sub_100321F00()
{
  type metadata accessor for Table();
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v0)
  {
  }

  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101391790;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A930);
  *(v1 + 56) = v2;
  v26 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v1 + 64) = v26;
  v4 = sub_1000280DC((v1 + 32));
  v5 = *(*(v2 - 8) + 16);
  v24 = v3;
  v5(v4, v3, v2);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 96) = v2;
  *(v1 + 104) = v26;
  v7 = sub_1000280DC((v1 + 72));
  v22 = v6;
  v25 = v2;
  v23 = v5;
  v5(v7, v6, v2);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v9 = sub_1000076D4(v8, qword_10177A978);
  *(v1 + 136) = v8;
  *(v1 + 144) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  v10 = sub_1000280DC((v1 + 112));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v11 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v12 = sub_1000076D4(v11, qword_10177A960);
  *(v1 + 176) = v11;
  v20 = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  *(v1 + 184) = v20;
  v13 = sub_1000280DC((v1 + 152));
  v14 = (*(v11 - 8) + 16);
  v21 = *v14;
  (*v14)(v13, v12, v11);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10138B360;
  *(v15 + 56) = v25;
  *(v15 + 64) = v26;
  v16 = sub_1000280DC((v15 + 32));
  v23(v16, v24, v25);
  *(v15 + 96) = v25;
  *(v15 + 104) = v26;
  v17 = sub_1000280DC((v15 + 72));
  v23(v17, v22, v25);
  *(v15 + 136) = v11;
  *(v15 + 144) = v20;
  v18 = sub_1000280DC((v15 + 112));
  v21(v18, v12, v11);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100322568(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37[1] = a5;
  v45 = a4;
  v42 = a2;
  v43 = a3;
  v50 = a1;
  v48 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = v37 - v5;
  v6 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v37 - v8;
  v9 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v9 - 8);
  v41 = v37 - v10;
  v11 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  __chkstk_darwin(v11 - 8);
  v40 = v37 - v12;
  v13 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v13 - 8);
  v38 = v37 - v14;
  v15 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v15 - 8);
  v17 = v37 - v16;
  v18 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v18 - 8);
  v20 = v37 - v19;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v21, qword_10177A930);
  v49 = v7;
  v22 = *(v7 + 56);
  v22(v20, 1, 1, v6);
  v23 = *(*(v21 - 8) + 56);
  v23(v17, 1, 1, v21);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v21, qword_10177A948);
  v22(v20, 1, 1, v6);
  v23(v17, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v17, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v24 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v25 = sub_1000076D4(v24, qword_10177A978);
  v22(v20, 1, 1, v6);
  v26 = v38;
  (*(*(v24 - 8) + 56))(v38, 1, 1, v24);
  v27 = sub_100028088();
  v39 = v25;
  v37[2] = v27;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v26, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  v28 = v6;
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v29 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v29, qword_10177A960);
  v22(v20, 1, 1, v6);
  v30 = v40;
  (*(*(v29 - 8) + 56))(v40, 1, 1, v29);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v30, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  if (*v42 != -1)
  {
    swift_once();
  }

  v31 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v31, v43);
  v22(v20, 1, 1, v28);
  v32 = v41;
  (*(*(v31 - 8) + 56))(v41, 1, 1, v31);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v32, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v20, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v33 = v44;
  ExpressionType<>.length.getter();
  v52 = v45;
  v34 = v47;
  == infix<A>(_:_:)();
  (*(v46 + 8))(v33, v48);
  TableBuilder.check(_:)();
  v35 = *(v49 + 8);
  v35(v34, v28);
  v51 = 512;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v35)(v34, v28);
}

uint64_t sub_100322E58(uint64_t a1)
{
  v34 = a1;
  v1 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v31 = &v26 - v2;
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v29 = &v26 - v5;
  v6 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v6 - 8);
  v28 = &v26 - v7;
  v8 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  __chkstk_darwin(v8 - 8);
  v27 = &v26 - v9;
  v10 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  if (qword_101694588 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v16, qword_10177A930);
  v30 = v4;
  v17 = *(v4 + 56);
  v17(v15, 1, 1, v3);
  v18 = *(*(v16 - 8) + 56);
  v18(v12, 1, 1, v16);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v12, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  sub_1000076D4(v16, qword_10177A948);
  v17(v15, 1, 1, v3);
  v18(v12, 1, 1, v16);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v12, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v19, qword_10177A960);
  v17(v15, 1, 1, v3);
  v20 = v27;
  (*(*(v19 - 8) + 56))(v27, 1, 1, v19);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v20, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945B8 != -1)
  {
    swift_once();
  }

  v21 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v21, qword_10177A9C0);
  v17(v15, 1, 1, v3);
  v22 = v28;
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v22, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v23 = v31;
  ExpressionType<>.length.getter();
  v35 = 32;
  v24 = v29;
  == infix<A>(_:_:)();
  (*(v32 + 8))(v23, v33);
  TableBuilder.check(_:)();
  return (*(v30 + 8))(v24, v3);
}

uint64_t sub_100323594()
{
  type metadata accessor for Table();
  SchemaType.drop(ifExists:)(0);
  Connection.run(_:_:)();
  if (v0)
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138B360;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 56) = v2;
  *(v1 + 64) = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  v4 = sub_1000280DC((v1 + 32));
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v6 = sub_1000076D4(v5, qword_10177A978);
  *(v1 + 96) = v5;
  *(v1 + 104) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  v7 = sub_1000280DC((v1 + 72));
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v9 = sub_1000076D4(v8, qword_10177A960);
  *(v1 + 136) = v8;
  *(v1 + 144) = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  v10 = sub_1000280DC((v1 + 112));
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100323994()
{
  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();
  if (v0)
  {
  }

  Table.create(temporary:ifNotExists:withoutRowid:block:)();
  Connection.run(_:_:)();

  sub_1000BC4D4(&qword_101699D90, &unk_1013930F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10138B360;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v2 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  v3 = sub_1000076D4(v2, qword_10177A948);
  *(v1 + 56) = v2;
  v18 = sub_1000041A4(&qword_101699D18, &qword_101699D10, &unk_1013930B0, &protocol conformance descriptor for Expression<A>);
  *(v1 + 64) = v18;
  v4 = sub_1000280DC((v1 + 32));
  v19 = v3;
  v20 = v2;
  v17 = *(*(v2 - 8) + 16);
  v17(v4, v3, v2);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v6 = sub_1000076D4(v5, qword_10177A978);
  *(v1 + 96) = v5;
  *(v1 + 104) = sub_1000041A4(&qword_101699DA8, &qword_101699DA0, &unk_10139D120, &protocol conformance descriptor for Expression<A>);
  v7 = sub_1000280DC((v1 + 72));
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v8 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  v9 = sub_1000076D4(v8, qword_10177A960);
  *(v1 + 136) = v8;
  v10 = sub_1000041A4(&qword_10169DE38, &qword_101699DE8, &qword_101393120, &protocol conformance descriptor for Expression<A>);
  *(v1 + 144) = v10;
  v11 = sub_1000280DC((v1 + 112));
  v16 = *(*(v8 - 8) + 16);
  v16(v11, v9, v8);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138BBE0;
  *(v12 + 56) = v20;
  *(v12 + 64) = v18;
  v13 = sub_1000280DC((v12 + 32));
  v17(v13, v19, v20);
  *(v12 + 96) = v8;
  *(v12 + 104) = v10;
  v14 = sub_1000280DC((v12 + 72));
  v16(v14, v9, v8);
  Table.createIndex(_:unique:ifNotExists:)();

  Connection.run(_:_:)();
}

uint64_t sub_100323EA0(uint64_t a1, int a2)
{
  v39 = a2;
  v37 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v34 = v32 - v2;
  v3 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v36 = v32 - v5;
  v6 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v6 - 8);
  v33 = v32 - v7;
  v8 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  __chkstk_darwin(v8 - 8);
  v10 = v32 - v9;
  v11 = sub_1000BC4D4(&qword_10169DE50, &qword_10139D1A8);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - v12;
  v14 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v14 - 8);
  v16 = v32 - v15;
  v17 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v17 - 8);
  v19 = v32 - v18;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v20, qword_10177A948);
  v38 = v4;
  v21 = *(v4 + 56);
  v21(v19, 1, 1, v3);
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v16, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1000BC4D4(&qword_101699DA0, &unk_10139D120);
  v23 = sub_1000076D4(v22, qword_10177A978);
  v21(v19, 1, 1, v3);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v32[0] = sub_100028088();
  v32[1] = v23;
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v13, &qword_10169DE50, &qword_10139D1A8);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  v24 = v3;
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v25 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v25, qword_10177A960);
  v21(v19, 1, 1, v24);
  (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v10, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945A8 != -1)
  {
    swift_once();
  }

  v26 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v26, qword_10177A990);
  v21(v19, 1, 1, v24);
  v27 = v33;
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v27, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v19, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v28 = v34;
  ExpressionType<>.length.getter();
  v42 = 6;
  v29 = v36;
  == infix<A>(_:_:)();
  (*(v35 + 8))(v28, v37);
  TableBuilder.check(_:)();
  v30 = *(v38 + 8);
  v30(v29, v24);
  v40 = v39;
  v41 = 2;
  ~= infix<A>(_:_:)();
  TableBuilder.check(_:)();
  return (v30)(v29, v24);
}

uint64_t sub_1003246B4()
{
  v0 = sub_1000BC4D4(&qword_101699E88, &unk_10139D170);
  v29 = *(v0 - 8);
  v30 = v0;
  __chkstk_darwin(v0);
  v28 = &v24 - v1;
  v2 = sub_1000BC4D4(&qword_101699D08, &unk_1013D7C10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = &v24 - v4;
  v5 = sub_1000BC4D4(&qword_10169DE40, &unk_1013D7C00);
  __chkstk_darwin(v5 - 8);
  v25 = &v24 - v6;
  v7 = sub_1000BC4D4(&qword_10169DE48, &qword_10139D1A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_1000BC4D4(&qword_10169DE28, &unk_1013BF4E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_1000BC4D4(&qword_10169DE30, &unk_10139D190);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  if (qword_101694590 != -1)
  {
    swift_once();
  }

  v16 = sub_1000BC4D4(&qword_101699D10, &unk_1013930B0);
  sub_1000076D4(v16, qword_10177A948);
  v27 = v3;
  v17 = *(v3 + 56);
  v17(v15, 1, 1, v2);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  type metadata accessor for UUID();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v12, &qword_10169DE28, &unk_1013BF4E0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_101694598 != -1)
  {
    swift_once();
  }

  v18 = sub_1000BC4D4(&qword_101699DE8, &qword_101393120);
  sub_1000076D4(v18, qword_10177A960);
  v17(v15, 1, 1, v2);
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_100029580();
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v9, &qword_10169DE48, &qword_10139D1A0);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  if (qword_1016945B8 != -1)
  {
    swift_once();
  }

  v19 = sub_1000BC4D4(&qword_101699DC0, &unk_10139D110);
  sub_1000076D4(v19, qword_10177A9C0);
  v17(v15, 1, 1, v2);
  v20 = v25;
  (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
  TableBuilder.column<A>(_:unique:check:defaultValue:)();
  sub_10000B3A8(v20, &qword_10169DE40, &unk_1013D7C00);
  sub_10000B3A8(v15, &qword_10169DE30, &unk_10139D190);
  sub_1000041A4(&qword_101699E90, &qword_101699DC0, &unk_10139D110, &protocol conformance descriptor for Expression<A>);
  v21 = v28;
  ExpressionType<>.length.getter();
  v31 = 32;
  v22 = v26;
  == infix<A>(_:_:)();
  (*(v29 + 8))(v21, v30);
  TableBuilder.check(_:)();
  return (*(v27 + 8))(v22, v2);
}

char *sub_100324D08()
{

  v1 = OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_keys;
  v2 = type metadata accessor for Table();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_nearOwnerKeys, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_connectionKeys, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_beaconAttributes, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_sharingCircleSecret, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_delegatedBeaconMetadata, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_lostItemDates, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_publicKeysSuffix, v2);
  v3(v0 + OBJC_IVAR____TtC12searchpartyd22ItemSharingKeyDatabase_importedBeaconAttributes, v2);
  return v0;
}

uint64_t sub_100324E7C()
{
  sub_100324D08();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ItemSharingKeyDatabase(uint64_t a1)
{
  result = qword_10169DC38;
  if (!qword_10169DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100324F28(uint64_t a1)
{
  result = type metadata accessor for Table();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100324FFC()
{
  sub_1000BC4D4(&qword_10169DD98, &unk_1013BF4A0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  return v1;
}

uint64_t sub_10032507C()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2;
}

uint64_t sub_1003250B4()
{
  sub_1000BC4D4(&qword_10169DD90, &unk_10139D100);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_101385D80;
  v2 = *(v0 + 32);
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  *(v1 + 32) = v3;
  AsyncStreamProvider.stream(initialEvents:)();
}

uint64_t sub_100325274()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 20));
  *(v1 + 16) = 1;
  os_unfair_lock_unlock((v1 + 20));
  return AsyncStreamProvider.yield(value:transaction:)();
}

uint64_t sub_10032531C(uint64_t a1)
{
  result = sub_10032542C(&qword_10169DD88, type metadata accessor for ItemSharingKeyDatabase, &unk_10139D0B8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100325390()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AC00);
  sub_1000076D4(v0, qword_10177AC00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10032542C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100325474()
{
  v1 = type metadata accessor for Keychain.DataProtectionClass();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = static Keychain.data(account:service:)();
  if (!v0 && v6 >> 60 == 15)
  {
    v7 = static Data.random(bytes:)();
    v9 = v8;
    v11[0] = v7;
    v11[1] = v8;
    (*(v2 + 104))(v4, enum case for Keychain.DataProtectionClass.c(_:), v1);
    v12 = v7;
    sub_100017D5C(v7, v9);
    sub_1000E0A3C();
    static Keychain.set<A>(data:account:service:dataProtectionClass:)();
    (*(v2 + 8))(v4, v1);
    v10 = v12;
    sub_100016590(v12, v9);
    return v10;
  }

  return result;
}

uint64_t type metadata accessor for ShareInstruction(uint64_t a1)
{
  result = qword_10169DEC0;
  if (!qword_10169DEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100325AA8(uint64_t a1)
{
  type metadata accessor for OwnedBeaconRecord(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_100157BAC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100325B64(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  Hasher._combine(_:)(*v1);
  String.hash(into:)();
  v10 = type metadata accessor for ShareInstruction(0);
  sub_100D6178C(a1);
  Hasher._combine(_:)(v1[*(v10 + 28)]);
  String.hash(into:)();
  type metadata accessor for UUID();
  sub_100326740(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D3410(&v1[*(v10 + 36)], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    sub_100326740(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }
}

Swift::Int sub_100325DF8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11[-1] - v6;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  String.hash(into:)();
  v8 = type metadata accessor for ShareInstruction(0);
  sub_100D6178C(v11);
  Hasher._combine(_:)(v0[*(v8 + 28)]);
  String.hash(into:)();
  type metadata accessor for UUID();
  sub_100326740(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D3410(&v0[*(v8 + 36)], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    sub_100326740(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1003260A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13[-1] - v9;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v2);
  String.hash(into:)();
  sub_100D6178C(v13);
  Hasher._combine(_:)(v2[*(a2 + 28)]);
  String.hash(into:)();
  type metadata accessor for UUID();
  sub_100326740(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D3410(&v2[*(a2 + 36)], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    sub_100326740(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

BOOL sub_100326398(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  v12 = __chkstk_darwin(v11);
  v14 = &v27 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v12;
  if ((*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = type metadata accessor for ShareInstruction(0);
  if ((sub_100D65130(&a1[v16[6]], &a2[v16[6]]) & 1) == 0)
  {
    return 0;
  }

  v17 = v16[7];
  v18 = &a1[v17];
  v19 = a1[v17];
  v20 = &a2[v17];
  if (v19 != *v20)
  {
    return 0;
  }

  if ((*(v18 + 1) != *(v20 + 1) || *(v18 + 2) != *(v20 + 2)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v21 = v16[9];
  v22 = *(v15 + 48);
  sub_1000D3410(&a1[v21], v14);
  sub_1000D3410(&a2[v21], &v14[v22]);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v22], 1, v4) == 1)
    {
      sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
      return 1;
    }

    goto LABEL_16;
  }

  sub_1000D3410(v14, v10);
  if (v23(&v14[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_16:
    sub_10000B3A8(v14, &unk_1016B1660, &unk_10138CE10);
    return 0;
  }

  (*(v5 + 32))(v7, &v14[v22], v4);
  sub_100326740(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v10, v4);
  sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
  return (v25 & 1) != 0;
}

uint64_t sub_100326740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1003267B0(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_100326850(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100326850(uint64_t a1)
{
  if (!qword_10169DF78[0])
  {
    type metadata accessor for UUID();
    sub_10000972C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, qword_10169DF78);
    }
  }
}

void sub_1003268EC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = __chkstk_darwin(v3 - 8);
  v88 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = v80 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = v80 - v10;
  __chkstk_darwin(v9);
  v13 = v80 - v12;
  v90 = type metadata accessor for UUID();
  v14 = *(v90 - 8);
  v15 = __chkstk_darwin(v90);
  v87 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = v80 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = v80 - v21;
  __chkstk_darwin(v20);
  v89 = v80 - v23;
  if (CKRecord.recordType.getter() == 0xD000000000000013 && 0x800000010139D230 == v24)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      sub_100328668();
      swift_allocError();
      *v39 = 0;
      goto LABEL_13;
    }
  }

  v83 = v19;
  v84 = v22;
  v26 = [a1 recordID];
  v27 = [v26 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v28 = *(v14 + 48);
  v29 = v90;
  if (v28(v13, 1, v90) != 1)
  {
    v82 = v14;
    v31 = *(v14 + 32);
    v80[1] = v14 + 32;
    v81 = v31;
    v31(v89, v13, v29);
    v32 = a1;
    v33 = [a1 encryptedValues];
    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 objectForKeyedSubscript:v34];

    if (!v35)
    {
      goto LABEL_11;
    }

    v93 = v35;
    v36 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    UUID.init(uuidString:)();

    v37 = v90;
    if (v28(v11, 1, v90) == 1)
    {
      sub_1002EA198(v11);
LABEL_11:
      sub_100328668();
      swift_allocError();
      *v38 = 2;
      swift_willThrow();
      swift_unknownObjectRelease();

      (*(v82 + 8))(v89, v90);
      return;
    }

    v80[0] = v36;
    v81(v84, v11, v37);
    v40 = String._bridgeToObjectiveC()();
    v41 = [v33 objectForKeyedSubscript:v40];

    if (!v41)
    {
      goto LABEL_19;
    }

    v93 = v41;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    UUID.init(uuidString:)();

    v42 = v90;
    if (v28(v8, 1, v90) == 1)
    {
      sub_1002EA198(v8);
LABEL_19:
      sub_100328668();
      swift_allocError();
      *v43 = 3;
      swift_willThrow();
      swift_unknownObjectRelease();

      v44 = *(v82 + 8);
      v45 = v84;
      v46 = v90;
LABEL_20:
      v44(v45, v46);
      v44(v89, v46);
      return;
    }

    v81(v83, v8, v42);
    v47 = String._bridgeToObjectiveC()();
    v48 = [v33 objectForKeyedSubscript:v47];

    if (v48)
    {
      v93 = v48;
      if (swift_dynamicCast())
      {
        v49 = v88;
        UUID.init(uuidString:)();

        v50 = v90;
        if (v28(v49, 1, v90) != 1)
        {
          v53 = v87;
          v81(v87, v49, v50);
          v54 = String._bridgeToObjectiveC()();
          v88 = v33;
          v55 = [v33 objectForKeyedSubscript:v54];

          v57 = v82;
          v56 = v83;
          v58 = v32;
          if (v55 && (v93 = v55, (swift_dynamicCast() & 1) != 0))
          {
            v60 = v91;
            v59 = v92;
            type metadata accessor for PropertyListDecoder();
            swift_allocObject();
            PropertyListDecoder.init()();
            sub_1000BC4D4(&qword_10169DFE8, &unk_10139D320);
            sub_1003286BC();
            v61 = v86;
            dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
            if (v61)
            {

              sub_100016590(v60, v59);
              swift_unknownObjectRelease();

              v44 = *(v57 + 8);
              v62 = v53;
            }

            else
            {
              v86 = v60;
              v64 = v59;

              v65 = v91;
              v66 = String._bridgeToObjectiveC()();
              v67 = [v88 objectForKeyedSubscript:v66];

              if (v67)
              {
                v91 = v67;
                if (swift_dynamicCast())
                {
                  LODWORD(v80[0]) = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(v93);
                  if (LOBYTE(v80[0]) != 6)
                  {
                    v70 = objc_autoreleasePoolPush();
                    v71 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
                    [v32 encodeSystemFieldsWithCoder:v71];
                    [v71 finishEncoding];
                    v72 = [v71 encodedData];
                    v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                    v82 = v74;

                    objc_autoreleasePoolPop(v70);
                    sub_100016590(v86, v64);
                    swift_unknownObjectRelease();

                    v75 = v85;
                    v76 = v82;
                    *v85 = v73;
                    v75[1] = v76;
                    v77 = type metadata accessor for MemberSharingCircle(0);
                    v78 = v90;
                    v79 = v81;
                    v81(v75 + v77[5], v89, v90);
                    v79(v75 + v77[6], v84, v78);
                    v79(v75 + v77[7], v83, v78);
                    v79(v75 + v77[8], v87, v78);
                    *(v75 + v77[9]) = v65;
                    *(v75 + v77[10]) = v80[0];
                    return;
                  }

                  v57 = v82;
                  v58 = v32;
                }

                else
                {

                  v57 = v82;
                }
              }

              else
              {
              }

              v68 = v86;
              sub_100328668();
              swift_allocError();
              *v69 = 6;
              swift_willThrow();
              sub_100016590(v68, v59);
              swift_unknownObjectRelease();

              v44 = *(v57 + 8);
              v62 = v87;
            }

            v46 = v90;
            v44(v62, v90);
            v52 = v83;
          }

          else
          {
            sub_100328668();
            swift_allocError();
            *v63 = 5;
            swift_willThrow();
            swift_unknownObjectRelease();

            v44 = *(v57 + 8);
            v46 = v90;
            v44(v53, v90);
            v52 = v56;
          }

          goto LABEL_26;
        }

        sub_1002EA198(v49);
      }
    }

    sub_100328668();
    swift_allocError();
    *v51 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    v52 = v83;
    v44 = *(v82 + 8);
    v46 = v90;
LABEL_26:
    v44(v52, v46);
    v45 = v84;
    goto LABEL_20;
  }

  sub_1002EA198(v13);
  sub_100328668();
  swift_allocError();
  *v30 = 1;
LABEL_13:
  swift_willThrow();
}

unint64_t sub_10032740C()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x737265626D656DLL;
  if (v1 != 5)
  {
    v3 = 0x6E61747065636361;
  }

  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x72656E776FLL;
  }

  if (*v0 <= 4u)
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

uint64_t sub_100327504@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100328D30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10032752C(uint64_t a1)
{
  v2 = sub_1003289F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100327568(uint64_t a1)
{
  v2 = sub_1003289F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1003275A8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177AC60);
  sub_1000076D4(v0, qword_10177AC60);
  v5 = objc_autoreleasePoolPush();
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v6 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v6, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  (*(v1 + 8))(v4, v0);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_10032771C(id *a1)
{
  v1 = *a1;
  [*a1 encryptedValues];
  v2 = static os_log_type_t.debug.getter();
  if (qword_101695040 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C388;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  v5 = v1;
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100008C00();
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "Updating MemberSharingCircle record: %@", 39, 2, v4);

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for MemberSharingCircle(0);

  sub_1000BC4D4(&qword_10169DFE8, &unk_10139D320);
  sub_100328898();
  v10 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v12 = v11;
  swift_getObjectType();

  UUID.uuidString.getter();
  CKRecordKeyValueSetting.subscript.setter();
  UUID.uuidString.getter();
  CKRecordKeyValueSetting.subscript.setter();
  UUID.uuidString.getter();
  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(v10, v12);
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();
  swift_unknownObjectRelease();
  return sub_100016590(v10, v12);
}

uint64_t sub_100327B40(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&unk_10169E050, &qword_10139D338);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_1003289F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v14 = 0;
  sub_100017D5C(v12, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v12, v13);
  }

  else
  {
    sub_100016590(v12, v13);
    v10 = type metadata accessor for MemberSharingCircle(0);
    LOBYTE(v12) = 1;
    type metadata accessor for UUID();
    sub_10000972C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + *(v10 + 36));
    v14 = 5;
    sub_1000BC4D4(&qword_10169DFE8, &unk_10139D320);
    sub_100328898();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + *(v10 + 40));
    v14 = 6;
    sub_100328B5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100327E70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = __chkstk_darwin(v3);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v42 = &v37 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - v10;
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = sub_1000BC4D4(&qword_10169E030, &qword_10139D330);
  v45 = *(v14 - 8);
  v46 = v14;
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = type metadata accessor for MemberSharingCircle(0);
  __chkstk_darwin(v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v48 = a1;
  sub_1000035D0(a1, v20);
  sub_1003289F4();
  v21 = v16;
  v22 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return sub_100007BAC(v48);
  }

  v23 = v11;
  v24 = v45;
  v39 = v17;
  v47 = v19;
  v51 = 0;
  sub_1000E307C();
  v25 = v46;
  v26 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v47;
  *v47 = v49;
  LOBYTE(v49) = 1;
  sub_10000972C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v28 = v13;
  v29 = v43;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v30 = v27 + v39[5];
  v38 = *(v44 + 32);
  v38(v30, v28, v29);
  LOBYTE(v49) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v38;
  v38(v47 + v39[6], v23, v29);
  LOBYTE(v49) = 3;
  v32 = v42;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v50 = 1;
  v31(v47 + v39[7], v32, v29);
  LOBYTE(v49) = 4;
  v33 = v41;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31(v47 + v39[8], v33, v29);
  sub_1000BC4D4(&qword_10169DFE8, &unk_10139D320);
  v51 = 5;
  sub_1003286BC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v47;
  *(v47 + v39[9]) = v49;
  v51 = 6;
  sub_100328A48();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v24 + 8))(v26, v25);
  v35 = v40;
  *(v34 + v39[10]) = v49;
  sub_100328A9C(v34, v35);
  sub_100007BAC(v48);
  return sub_100328B00(v34);
}

uint64_t sub_10032858C(uint64_t a1)
{
  *(a1 + 8) = sub_10000972C(&qword_10169DFC8, type metadata accessor for MemberSharingCircle, &unk_10139D2B4);
  result = sub_10000972C(&qword_10169DFD0, type metadata accessor for MemberSharingCircle, &unk_10139D28C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100328610(uint64_t a1)
{
  result = sub_10000972C(&unk_1016B1620, type metadata accessor for MemberSharingCircle, &unk_10139D2DC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100328668()
{
  result = qword_10169DFD8;
  if (!qword_10169DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DFD8);
  }

  return result;
}

unint64_t sub_1003286BC()
{
  result = qword_10169DFF0;
  if (!qword_10169DFF0)
  {
    sub_1000BC580(&qword_10169DFE8, &unk_10139D320);
    sub_10000972C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100328778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169DFF0);
  }

  return result;
}

unint64_t sub_100328778()
{
  result = qword_10169E000;
  if (!qword_10169E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E000);
  }

  return result;
}

BOOL sub_1003287CC(_BOOL8 *a1, uint64_t *a2)
{
  if (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, a1[1], *a2, a2[1]) && (v4 = type metadata accessor for MemberSharingCircle(0), (static UUID.== infix(_:_:)() & 1) != 0) && (static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)() & 1) != 0 && (sub_100DE7C90(*(a1 + *(v4 + 36)), *(a2 + *(v4 + 36))) & 1) != 0)
  {
    return *(a1 + *(v4 + 40)) == *(a2 + *(v4 + 40));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100328898()
{
  result = qword_10169E008;
  if (!qword_10169E008)
  {
    sub_1000BC580(&qword_10169DFE8, &unk_10139D320);
    sub_10000972C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_100328954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E008);
  }

  return result;
}

unint64_t sub_100328954()
{
  result = qword_10169E018;
  if (!qword_10169E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E018);
  }

  return result;
}

unint64_t sub_1003289A8()
{
  result = qword_10169E020;
  if (!qword_10169E020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10169E020);
  }

  return result;
}

unint64_t sub_1003289F4()
{
  result = qword_10169E038;
  if (!qword_10169E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E038);
  }

  return result;
}

unint64_t sub_100328A48()
{
  result = qword_10169E048;
  if (!qword_10169E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E048);
  }

  return result;
}

uint64_t sub_100328A9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MemberSharingCircle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100328B00(uint64_t a1)
{
  v2 = type metadata accessor for MemberSharingCircle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100328B5C()
{
  result = qword_10169E060;
  if (!qword_10169E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E060);
  }

  return result;
}

unint64_t sub_100328BD4()
{
  result = qword_10169E068;
  if (!qword_10169E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E068);
  }

  return result;
}

unint64_t sub_100328C2C()
{
  result = qword_10169E070;
  if (!qword_10169E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E070);
  }

  return result;
}

unint64_t sub_100328C84()
{
  result = qword_10169E078;
  if (!qword_10169E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E078);
  }

  return result;
}

unint64_t sub_100328CDC()
{
  result = qword_10169E080;
  if (!qword_10169E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10169E080);
  }

  return result;
}

uint64_t sub_100328D30(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000017 && 0x80000001013512F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72656E776FLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737265626D656DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E61747065636361 && a2 == 0xEF65746174536563)
  {

    return 6;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t type metadata accessor for SubmitEndpoint(uint64_t a1)
{
  result = qword_10169E0E8;
  if (!qword_10169E0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100329008(uint64_t a1)
{
  result = type metadata accessor for AnonymousCrowdSourceNetworkURLComponents();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FMNAccountType();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10032908C()
{
  sub_1000BC4D4(&qword_101696D88, &unk_10138B760);
  OS_dispatch_queue.sync<A>(execute:)();
  URLComponents.init()();
  URLComponents.scheme.setter();
  URLComponents.host.setter();
  URLComponents.path.setter();
  v0 = URLComponents.path.modify();
  v1._countAndFlagsBits = 0x74696D6275732FLL;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);
  return v0(&v3, 0);
}

uint64_t sub_100329194()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177AC78);
  sub_1000076D4(v0, qword_10177AC78);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100329218(uint64_t a1)
{
  v1[10] = a1;
  v2 = type metadata accessor for XPCActivity.Criteria.Options();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for XPCActivity.Priority();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100329334, 0, 0);
}

uint64_t sub_100329334()
{
  (*(v0[15] + 104))(v0[16], enum case for XPCActivity.Priority.utility(_:), v0[14]);
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v1 = qword_10177B348;
  v0[17] = qword_10177B348;

  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_100329458;

  return unsafeBlocking<A>(_:)(v0 + 6, sub_1000DFF78, v1, &type metadata for Configuration);
}

uint64_t sub_100329458()
{

  return _swift_task_switch(sub_100329570, 0, 0);
}

uint64_t sub_100329570()
{
  v1 = sub_101073FE4(*(v0 + 48));

  v6 = (v1 * 60) >> 64;
  *(v0 + 16) = 60 * v1;
  *(v0 + 24) = v6 != (60 * v1) >> 63;
  if (v6 == (60 * v1) >> 63)
  {

    v7 = swift_task_alloc();
    *(v0 + 152) = v7;
    *v7 = v0;
    v7[1] = sub_100329674;
    v4 = *(v0 + 136);
    v5 = &type metadata for Configuration;
    v3 = sub_1000DFF78;
    v2 = v0 + 56;
  }

  else
  {
    __break(1u);
  }

  return unsafeBlocking<A>(_:)(v2, v3, v4, v5);
}

uint64_t sub_100329674()
{

  return _swift_task_switch(sub_10032978C, 0, 0);
}

uint64_t sub_10032978C()
{
  v1 = sub_10107401C(*(v0 + 56));

  v6 = (v1 * 60) >> 64;
  *(v0 + 32) = 60 * v1;
  *(v0 + 40) = v6 != (60 * v1) >> 63;
  if (v6 == (60 * v1) >> 63)
  {

    v7 = swift_task_alloc();
    *(v0 + 160) = v7;
    *v7 = v0;
    v7[1] = sub_100329890;
    v4 = *(v0 + 136);
    v5 = &type metadata for Configuration;
    v3 = sub_1000DFF78;
    v2 = v0 + 64;
  }

  else
  {
    __break(1u);
  }

  return unsafeBlocking<A>(_:)(v2, v3, v4, v5);
}

uint64_t sub_100329890()
{

  return _swift_task_switch(sub_1003299A8, 0, 0);
}

uint64_t sub_1003299A8()
{
  v1 = sub_101073FE4(v0[8]);

  if ((v1 * 60) >> 64 == (60 * v1) >> 63)
  {
    sub_1000BC4D4(&qword_10169E378, &unk_10139D820);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10138C0D0;
    static XPCActivity.Criteria.Options.wakeDevice.getter();
    static XPCActivity.Criteria.Options.powerNap.getter();
    static XPCActivity.Criteria.Options.allowBattery.getter();
    static XPCActivity.Criteria.Options.requiresNetwork.getter();
    static XPCActivity.Criteria.Options.requiresClassC.getter();
    v0[9] = v3;
    sub_10003A260(&qword_101696CE0, 255, &type metadata accessor for XPCActivity.Criteria.Options, &protocol conformance descriptor for XPCActivity.Criteria.Options);
    sub_1000BC4D4(&qword_10169E380, &unk_1013B8530);
    sub_100359D10();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();

    v4 = v0[1];

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100329BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4[3] = swift_task_alloc();
  v5 = swift_task_alloc();
  v4[4] = v5;
  *v5 = v4;
  v5[1] = sub_100329C74;

  return sub_100338580();
}

uint64_t sub_100329C74()
{
  v2 = *(*v1 + 16);
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_100329E9C;
  }

  else
  {
    v3 = sub_100329D9C;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100329D9C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_10025F0D4(0, 0, v2, &unk_10139D730, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100329E9C()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AC78);
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
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to checkin xpc activity: %{public}@.", v4, 0xCu);
    sub_10000B3A8(v5, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10032A048(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v3[22] = *(v6 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[25] = v7;
  *v7 = v3;
  v7[1] = sub_10032A1E8;

  return daemon.getter();
}

uint64_t sub_10032A1E8(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[26] = a1;

  v3 = swift_task_alloc();
  v2[27] = v3;
  v4 = type metadata accessor for Daemon();
  v2[28] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[29] = v5;
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[30] = v6;
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[31] = v7;
  *v3 = v9;
  v3[1] = sub_10032A3E4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10032A3E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);
    v6 = sub_10032A93C;
  }

  else
  {

    *(v4 + 264) = a1;
    v6 = sub_10032A520;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10032A520()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  v5 = *(v0 + 104);
  v6 = *(v3 + 16);
  *(v0 + 272) = v6;
  *(v0 + 280) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 408) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 296) = v10;
  *(v0 + 304) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 312) = v11;
  v12 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v11 = v0;
  v11[1] = sub_10032A6BC;

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v9, v12);
}

uint64_t sub_10032A6BC()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_10032A80C, v1, 0);
}

uint64_t sub_10032A80C()
{
  if (*(v0 + 80))
  {
    sub_10000A748((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_10032A9D0;
    v2 = *(v0 + 96);

    return sub_10032F2D8(v2, v0 + 16);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    v4 = swift_task_alloc();
    *(v0 + 336) = v4;
    *v4 = v0;
    v4[1] = sub_10032AB90;

    return daemon.getter();
  }
}

uint64_t sub_10032A93C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032A9D0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_10032B6DC;
  }

  else
  {
    v4 = sub_10032AAFC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10032AAFC()
{
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032AB90(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[43] = a1;

  v4 = swift_task_alloc();
  v2[44] = v4;
  *v4 = v3;
  v4[1] = sub_10032AD1C;
  v5 = v2[31];
  v6 = v2[30];
  v7 = v2[29];
  v8 = v2[28];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_10032AD1C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);
    v6 = sub_10032B474;
  }

  else
  {

    *(v4 + 368) = a1;
    v6 = sub_10032AE58;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10032AE58()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 296);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = (*(v0 + 408) + 24) & ~*(v0 + 408);
  (*(v0 + 272))(v3, *(v0 + 104), v4);
  v6 = swift_allocObject();
  *(v0 + 376) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *v7 = v0;
  v7[1] = sub_10032AFA8;
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100359F3C, v6, v9);
}

uint64_t sub_10032AFA8()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_10032B0F8, v1, 0);
}

uint64_t sub_10032B0F8()
{
  v26 = v0;
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v2 = v0[34];
    v3 = v0[23];
    v4 = v0[20];
    v5 = v0[13];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AC78);
    v2(v3, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[23];
    v11 = v0[20];
    v12 = v0[21];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v10, v11);
      v18 = sub_1000136BC(v15, v17, &v25);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Beacon/group does not exist for given UUID %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      (*(v12 + 8))(v10, v11);
    }

    sub_100358F3C();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }

  else
  {
    sub_100359DA8(v1, v0[19], type metadata accessor for OwnedBeaconGroup);
    v19 = swift_task_alloc();
    v0[49] = v19;
    *v19 = v0;
    v19[1] = sub_10032B508;
    v20 = v0[19];
    v21 = v0[12];

    return sub_10032B818(v21, v20);
  }
}

uint64_t sub_10032B474()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032B508()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_10032B770;
  }

  else
  {
    v4 = sub_10032B634;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10032B634()
{
  sub_100359E10(*(v0 + 152), type metadata accessor for OwnedBeaconGroup);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032B6DC()
{
  sub_100007BAC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032B770()
{
  sub_100359E10(*(v0 + 152), type metadata accessor for OwnedBeaconGroup);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032B818(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1000BC4D4(&qword_10169E348, &unk_10139D7A0);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  type metadata accessor for NotifyWhenFoundRecord(0);
  v3[13] = swift_task_alloc();
  v3[14] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for OwnedBeaconRecord(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[23] = v6;
  v7 = *(v6 - 8);
  v3[24] = v7;
  v3[25] = *(v7 + 64);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_10032BAC4, v2, 0);
}

uint64_t sub_10032BAC4()
{
  v83 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 64);
  v5 = *(type metadata accessor for OwnedBeaconGroup(0) + 24);
  v6 = *(v3 + 16);
  *(v0 + 280) = v6;
  *(v0 + 288) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);
  v10 = *(v0 + 184);
  v11 = *(v0 + 56);
  v12 = type metadata accessor for Logger();
  *(v0 + 296) = sub_1000076D4(v12, qword_10177AC78);
  v6(v7, v8, v10);
  v6(v9, v11, v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 256);
  v16 = *(v0 + 264);
  v19 = *(v0 + 184);
  v18 = *(v0 + 192);
  if (v15)
  {
    v80 = v14;
    v20 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    log = v13;
    v26 = *(v18 + 8);
    v25 = v18 + 8;
    v24 = v26;
    v26(v16, v19);
    v27 = sub_1000136BC(v21, v23, v82);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v26(v17, v19);
    v31 = sub_1000136BC(v28, v30, v82);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v80, "enableNotifyWhenFound for group %{private,mask.hash}s, commandId %{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v32 = *(v18 + 8);
    v25 = v18 + 8;
    v24 = v32;
    v32(v17, v19);
    v32(v16, v19);
  }

  *(v0 + 304) = v25;
  *(v0 + 312) = v24;
  sub_100519FB0();
  *(v0 + 320) = v33;
  v34 = *(v33 + 32);
  *(v0 + 644) = v34;
  v35 = -1;
  v36 = -1 << v34;
  v37 = *(v33 + 56);
  if (-v36 < 64)
  {
    v35 = ~(-1 << -v36);
  }

  *(v0 + 328) = _swiftEmptyArrayStorage;
  v38 = v35 & v37;
  if (v38)
  {
    v39 = 0;
LABEL_13:
    *(v0 + 336) = v38;
    *(v0 + 344) = v39;
    v42 = *(v0 + 240);
    v43 = *(v0 + 248);
    v44 = *(v0 + 184);
    v45 = *(v0 + 192);
    (*(v0 + 280))(v43, *(v33 + 48) + *(v45 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v44);
    v46 = *(v45 + 32);
    *(v0 + 352) = v46;
    *(v0 + 360) = (v45 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v46(v42, v43, v44);
    v47 = swift_task_alloc();
    *(v0 + 368) = v47;
    *v47 = v0;
    v47[1] = sub_10032C2CC;

    return daemon.getter();
  }

  v40 = 0;
  v41 = ((63 - v36) >> 6) - 1;
  while (v41 != v40)
  {
    v39 = v40 + 1;
    v38 = *(v33 + 8 * v40++ + 64);
    if (v38)
    {
      goto LABEL_13;
    }
  }

  v48 = _swiftEmptyArrayStorage[2];
  *(v0 + 432) = v48;
  if (v48)
  {
    v49 = *(v0 + 128);
    *(v0 + 528) = 0;
    *(v0 + 520) = _swiftEmptyArrayStorage;
    v50 = *(v0 + 328);
    if (!*(v50 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v51 = *(v0 + 144);
    v52 = *(*(v0 + 136) + 80);
    sub_100034E04(v50 + ((v52 + 32) & ~v52), v51, type metadata accessor for OwnedBeaconRecord);
    UUID.init()();
    v53 = *(v49 + 20);
    v54 = swift_task_alloc();
    *(v0 + 536) = v54;
    *v54 = v0;
    v54[1] = sub_10032DDE8;
    v55 = *(v0 + 224);
    v56 = *(v0 + 104);

    return sub_10033064C(v56, v55, v51 + v53);
  }

  else
  {
    v58 = *(v0 + 272);
    v59 = *(v0 + 280);
    v60 = *(v0 + 208);
    v61 = *(v0 + 184);

    v59(v60, v58, v61);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 312);
    v66 = *(v0 + 208);
    v67 = *(v0 + 184);
    if (v64)
    {
      v81 = *(v0 + 312);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v82[0] = v69;
      *v68 = 141558275;
      *(v68 + 4) = 1752392040;
      *(v68 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      v81(v66, v67);
      v73 = sub_1000136BC(v70, v72, v82);

      *(v68 + 14) = v73;
      _os_log_impl(&_mh_execute_header, v62, v63, "No eligible member beacon to enable notify when found for group %{private,mask.hash}s", v68, 0x16u);
      sub_100007BAC(v69);
    }

    else
    {

      v65(v66, v67);
    }

    v74 = *(v0 + 312);
    v75 = *(v0 + 272);
    v76 = *(v0 + 184);
    sub_100358F3C();
    swift_allocError();
    *v77 = 0;
    swift_willThrow();
    v74(v75, v76);

    v78 = *(v0 + 8);

    return v78();
  }
}

uint64_t sub_10032C2CC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[47] = a1;

  v3 = swift_task_alloc();
  v2[48] = v3;
  v4 = type metadata accessor for Daemon();
  v2[49] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[50] = v5;
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[51] = v6;
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[52] = v7;
  *v3 = v9;
  v3[1] = sub_10032C4C8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10032C4C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 424) = v1;

  if (v1)
  {
    v5 = *(v4 + 72);
    v6 = sub_10032CEBC;
  }

  else
  {

    *(v4 + 440) = a1;
    v6 = sub_10032C604;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10032C604()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 352);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  (*(v0 + 280))(v3, *(v0 + 240), v6);
  v7 = *(v5 + 80);
  *(v0 + 640) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = v8 + v4;
  v10 = swift_allocObject();
  *(v0 + 448) = v10;
  *(v10 + 16) = v1;
  v2(v10 + v8, v3, v6);
  *(v10 + v9) = 1;

  v11 = swift_task_alloc();
  *(v0 + 456) = v11;
  *v11 = v0;
  v11[1] = sub_10032C764;
  v13 = *(v0 + 168);
  v12 = *(v0 + 176);

  return unsafeBlocking<A>(context:_:)(v12, 0xD000000000000010, 0x800000010134A8C0, sub_100259A6C, v10, v13);
}

uint64_t sub_10032C764()
{
  v1 = *(*v0 + 440);

  return _swift_task_switch(sub_10032C890, v1, 0);
}

uint64_t sub_10032C890()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 72);

  *(v0 + 645) = *v1;
  sub_10000B3A8(&v1[*(v2 + 48)], &unk_101696900, &unk_10138B1E0);

  return _swift_task_switch(sub_10032C92C, v3, 0);
}

uint64_t sub_10032C92C()
{
  v46 = v0;
  if ((*(v0 + 645) & 1) == 0)
  {
    v4 = swift_task_alloc();
    *(v0 + 464) = v4;
    *v4 = v0;
    v5 = sub_10032D044;
    goto LABEL_10;
  }

  (*(v0 + 312))(*(v0 + 240), *(v0 + 184));
  v1 = *(v0 + 344);
  v2 = (*(v0 + 336) - 1) & *(v0 + 336);
  if (v2)
  {
    v3 = *(v0 + 320);
LABEL_9:
    *(v0 + 336) = v2;
    *(v0 + 344) = v1;
    v7 = *(v0 + 240);
    v8 = *(v0 + 248);
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    (*(v0 + 280))(v8, *(v3 + 48) + *(v10 + 72) * (__clz(__rbit64(v2)) | (v1 << 6)), v9);
    v11 = *(v10 + 32);
    *(v0 + 352) = v11;
    *(v0 + 360) = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v7, v8, v9);
    v4 = swift_task_alloc();
    *(v0 + 368) = v4;
    *v4 = v0;
    v5 = sub_10032C2CC;
LABEL_10:
    v4[1] = v5;

    return daemon.getter();
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v6 >= (((1 << *(v0 + 644)) + 63) >> 6))
    {
      break;
    }

    v3 = *(v0 + 320);
    v2 = *(v3 + 8 * v6 + 56);
    ++v1;
    if (v2)
    {
      v1 = v6;
      goto LABEL_9;
    }
  }

  v12 = *(v0 + 328);

  v13 = *(v12 + 16);
  *(v0 + 432) = v13;
  if (v13)
  {
    v14 = *(v0 + 128);
    *(v0 + 528) = 0;
    *(v0 + 520) = _swiftEmptyArrayStorage;
    v15 = *(v0 + 328);
    if (*(v15 + 16))
    {
      v16 = *(v0 + 144);
      v17 = *(*(v0 + 136) + 80);
      sub_100034E04(v15 + ((v17 + 32) & ~v17), v16, type metadata accessor for OwnedBeaconRecord);
      UUID.init()();
      v18 = *(v14 + 20);
      v19 = swift_task_alloc();
      *(v0 + 536) = v19;
      *v19 = v0;
      v19[1] = sub_10032DDE8;
      v20 = *(v0 + 224);
      v21 = *(v0 + 104);

      return sub_10033064C(v21, v20, v16 + v18);
    }

LABEL_25:
    __break(1u);
    return daemon.getter();
  }

  v23 = *(v0 + 272);
  v24 = *(v0 + 280);
  v25 = *(v0 + 208);
  v26 = *(v0 + 184);

  v24(v25, v23, v26);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  v29 = os_log_type_enabled(v27, v28);
  v30 = *(v0 + 312);
  v31 = *(v0 + 208);
  v32 = *(v0 + 184);
  if (v29)
  {
    v44 = *(v0 + 312);
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = v34;
    *v33 = 141558275;
    *(v33 + 4) = 1752392040;
    *(v33 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    v44(v31, v32);
    v38 = sub_1000136BC(v35, v37, &v45);

    *(v33 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v27, v28, "No eligible member beacon to enable notify when found for group %{private,mask.hash}s", v33, 0x16u);
    sub_100007BAC(v34);
  }

  else
  {

    v30(v31, v32);
  }

  v39 = *(v0 + 312);
  v40 = *(v0 + 272);
  v41 = *(v0 + 184);
  sub_100358F3C();
  swift_allocError();
  *v42 = 0;
  swift_willThrow();
  v39(v40, v41);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_10032CEBC()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[23];

  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10032D044(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[59] = a1;

  v4 = swift_task_alloc();
  v2[60] = v4;
  *v4 = v3;
  v4[1] = sub_10032D1D0;
  v5 = v2[52];
  v6 = v2[51];
  v7 = v2[50];
  v8 = v2[49];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_10032D1D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 488) = v1;

  if (v1)
  {
    v5 = *(v4 + 72);
    v6 = sub_10032DC60;
  }

  else
  {

    *(v4 + 496) = a1;
    v6 = sub_10032D30C;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10032D30C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 352);
  v3 = *(v0 + 232);
  v4 = *(v0 + 184);
  v5 = (*(v0 + 640) + 24) & ~*(v0 + 640);
  (*(v0 + 280))(v3, *(v0 + 240), v4);
  v6 = swift_allocObject();
  *(v0 + 504) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 512) = v7;
  *v7 = v0;
  v7[1] = sub_10032D458;
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100359F38, v6, v9);
}

uint64_t sub_10032D458()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_10032D5A8, v1, 0);
}

uint64_t sub_10032D5A8()
{
  v56 = v0;
  v1 = *(v0 + 120);
  if ((*(*(v0 + 136) + 48))(v1, 1, *(v0 + 128)) != 1)
  {
    v6 = *(v0 + 152);
    v5 = *(v0 + 160);
    sub_100359DA8(v1, v5, type metadata accessor for OwnedBeaconRecord);
    sub_100034E04(v5, v6, type metadata accessor for OwnedBeaconRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 328);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

  (*(v0 + 312))(*(v0 + 240), *(v0 + 184));
  sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
  v2 = *(v0 + 344);
  v3 = (*(v0 + 336) - 1) & *(v0 + 336);
  if (v3)
  {
LABEL_3:
    v4 = *(v0 + 320);
LABEL_12:
    *(v0 + 336) = v3;
    *(v0 + 344) = v2;
    v16 = *(v0 + 240);
    v17 = *(v0 + 248);
    v18 = *(v0 + 184);
    v19 = *(v0 + 192);
    (*(v0 + 280))(v17, *(v4 + 48) + *(v19 + 72) * (__clz(__rbit64(v3)) | (v2 << 6)), v18);
    v20 = *(v19 + 32);
    *(v0 + 352) = v20;
    *(v0 + 360) = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v16, v17, v18);
    v21 = swift_task_alloc();
    *(v0 + 368) = v21;
    *v21 = v0;
    v21[1] = sub_10032C2CC;

    return daemon.getter();
  }

  while (1)
  {
    while (1)
    {
      v15 = v2 + 1;
      if (!__OFADD__(v2, 1))
      {
        break;
      }

      __break(1u);
LABEL_27:
      v1 = sub_100A5C050(0, v1[2] + 1, 1, v1);
LABEL_5:
      v9 = v1[2];
      v8 = v1[3];
      if (v9 >= v8 >> 1)
      {
        v1 = sub_100A5C050((v8 > 1), v9 + 1, 1, v1);
      }

      v10 = *(v0 + 312);
      v11 = *(v0 + 240);
      v12 = *(v0 + 184);
      v13 = *(v0 + 152);
      v14 = *(v0 + 136);
      sub_100359E10(*(v0 + 160), type metadata accessor for OwnedBeaconRecord);
      v10(v11, v12);
      v1[2] = v9 + 1;
      sub_100359DA8(v13, v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v9, type metadata accessor for OwnedBeaconRecord);
      v2 = *(v0 + 344);
      v3 = (*(v0 + 336) - 1) & *(v0 + 336);
      *(v0 + 328) = v1;
      if (v3)
      {
        goto LABEL_3;
      }
    }

    if (v15 >= (((1 << *(v0 + 644)) + 63) >> 6))
    {
      break;
    }

    v4 = *(v0 + 320);
    v3 = *(v4 + 8 * v15 + 56);
    ++v2;
    if (v3)
    {
      v2 = v15;
      goto LABEL_12;
    }
  }

  v22 = *(v0 + 328);

  v23 = *(v22 + 16);
  *(v0 + 432) = v23;
  if (v23)
  {
    v24 = *(v0 + 128);
    *(v0 + 528) = 0;
    *(v0 + 520) = _swiftEmptyArrayStorage;
    v25 = *(v0 + 328);
    if (!*(v25 + 16))
    {
      __break(1u);
      return daemon.getter();
    }

    v26 = *(v0 + 144);
    v27 = *(*(v0 + 136) + 80);
    sub_100034E04(v25 + ((v27 + 32) & ~v27), v26, type metadata accessor for OwnedBeaconRecord);
    UUID.init()();
    v28 = *(v24 + 20);
    v29 = swift_task_alloc();
    *(v0 + 536) = v29;
    *v29 = v0;
    v29[1] = sub_10032DDE8;
    v30 = *(v0 + 224);
    v31 = *(v0 + 104);

    return sub_10033064C(v31, v30, v26 + v28);
  }

  else
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    v36 = *(v0 + 184);

    v34(v35, v33, v36);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 312);
    v41 = *(v0 + 208);
    v42 = *(v0 + 184);
    if (v39)
    {
      v54 = *(v0 + 312);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v55 = v44;
      *v43 = 141558275;
      *(v43 + 4) = 1752392040;
      *(v43 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      v54(v41, v42);
      v48 = sub_1000136BC(v45, v47, &v55);

      *(v43 + 14) = v48;
      _os_log_impl(&_mh_execute_header, v37, v38, "No eligible member beacon to enable notify when found for group %{private,mask.hash}s", v43, 0x16u);
      sub_100007BAC(v44);
    }

    else
    {

      v40(v41, v42);
    }

    v49 = *(v0 + 312);
    v50 = *(v0 + 272);
    v51 = *(v0 + 184);
    sub_100358F3C();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    v49(v50, v51);

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_10032DC60()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[23];

  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10032DDE8()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  if (v0)
  {
    v3 = v2[39];
    v4 = v2[28];
    v5 = v2[23];
    v6 = v2[9];
    v2[79] = v2[38] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v3(v4, v5);

    v7 = sub_10032EF30;
    v8 = v6;
  }

  else
  {
    v9 = v2[9];
    (v2[39])(v2[28], v2[23]);
    v7 = sub_10032DF68;
    v8 = v9;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_10032DF68()
{
  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v0[5] = v0[16];
  v0[6] = sub_10003A260(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
  v5 = sub_1000280DC(v0 + 2);
  sub_100034E04(v1, v5, type metadata accessor for OwnedBeaconRecord);
  v6 = *(v4 + 48);
  sub_10000A748(v0 + 1, v3);
  sub_100034E04(v2, v3 + v6, type metadata accessor for NotifyWhenFoundRecord);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v0[65];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100A5CAC0(0, v8[2] + 1, 1, v0[65]);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100A5CAC0((v9 > 1), v10 + 1, 1, v8);
  }

  v0[69] = v8;
  v11 = v0[54];
  v12 = v0[18];
  v13 = v0[12];
  v14 = v0[11];
  v15 = v0[66] + 1;
  sub_100359E10(v0[13], type metadata accessor for NotifyWhenFoundRecord);
  sub_100359E10(v12, type metadata accessor for OwnedBeaconRecord);
  v8[2] = v10 + 1;
  result = sub_1000D2AD8(v13, v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10, &qword_10169E348, &unk_10139D7A0);
  if (v15 == v11)
  {

    v17 = swift_task_alloc();
    v0[70] = v17;
    *v17 = v0;
    v17[1] = sub_10032E2A8;

    return sub_10034AE3C(v8);
  }

  else
  {
    v18 = v0[66] + 1;
    v0[66] = v18;
    v0[65] = v8;
    v19 = v0[41];
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
    }

    else
    {
      v20 = v0[18];
      v21 = v0[16];
      sub_100034E04(v19 + ((*(v0[17] + 80) + 32) & ~*(v0[17] + 80)) + *(v0[17] + 72) * v18, v20, type metadata accessor for OwnedBeaconRecord);
      UUID.init()();
      v22 = *(v21 + 20);
      v23 = swift_task_alloc();
      v0[67] = v23;
      *v23 = v0;
      v23[1] = sub_10032DDE8;
      v24 = v0[28];
      v25 = v0[13];

      return sub_10033064C(v25, v24, v20 + v22);
    }
  }

  return result;
}

uint64_t sub_10032E2A8()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_10032F09C;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_10032E3D0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10032E3D0()
{
  v17 = v0;
  (*(v0 + 280))(*(v0 + 216), *(v0 + 272), *(v0 + 184));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 312);
  v5 = *(v0 + 216);
  v6 = *(v0 + 184);
  if (v3)
  {
    v15 = *(v0 + 312);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    v15(v5, v6);
    v12 = sub_1000136BC(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Enabled notify when found for group %s.", v7, 0xCu);
    sub_100007BAC(v8);
  }

  else
  {

    v4(v5, v6);
  }

  v13 = swift_task_alloc();
  *(v0 + 576) = v13;
  *v13 = v0;
  v13[1] = sub_10032E5E4;

  return daemon.getter();
}

uint64_t sub_10032E5E4(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 584) = a1;

  v3 = swift_task_alloc();
  *(v2 + 592) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10032E7C8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10032E7C8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 600) = v1;

  if (v1)
  {
    v5 = *(v4 + 72);
    v6 = sub_10032ECF4;
  }

  else
  {

    *(v4 + 608) = a1;
    v6 = sub_10032E904;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10032E904()
{
  v1 = v0[76];
  v2 = swift_allocObject();
  v0[77] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 15;

  v3 = swift_task_alloc();
  v0[78] = v3;
  *v3 = v0;
  v3[1] = sub_10032EA10;

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_100359F44, v2, &type metadata for () + 1);
}

uint64_t sub_10032EA10()
{
  v1 = *(*v0 + 608);

  return _swift_task_switch(sub_10032EB3C, v1, 0);
}

uint64_t sub_10032EB3C()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_10032EBA8, v1, 0);
}

uint64_t sub_10032EBA8()
{
  (*(v0 + 312))(*(v0 + 272), *(v0 + 184));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10032ECF4()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error publishing notifyWhenFound keys: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v6 = v0[39];
  v7 = v0[34];
  v8 = v0[23];

  swift_willThrow();
  v6(v7, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10032EF30()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[23];
  sub_100359E10(v0[18], type metadata accessor for OwnedBeaconRecord);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10032F09C()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error publishing notifyWhenFound keys: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v6 = v0[39];
  v7 = v0[34];
  v8 = v0[23];

  swift_willThrow();
  v6(v7, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10032F2D8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  type metadata accessor for NotifyWhenFoundRecord(0);
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10032F3E0, v2, 0);
}

uint64_t sub_10032F3E0()
{
  v39 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v6 = type metadata accessor for Logger();
  v0[16] = sub_1000076D4(v6, qword_10177AC78);
  sub_10001F280(v4, (v0 + 2));
  (*(v3 + 16))(v1, v5, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[15];
  if (v9)
  {
    v11 = v0[14];
    v13 = v0[11];
    v12 = v0[12];
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    v37 = v8;
    v16 = v0[5];
    v15 = v0[6];
    sub_1000035D0(v0 + 2, v16);
    (*(*(*(v15 + 8) + 8) + 32))(v16);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    log = v7;
    v20 = *(v12 + 8);
    v20(v11, v13);
    sub_100007BAC(v0 + 2);
    v21 = sub_1000136BC(v17, v19, &v38);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2082;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v20(v10, v13);
    v25 = sub_1000136BC(v22, v24, &v38);

    *(v14 + 24) = v25;
    _os_log_impl(&_mh_execute_header, log, v37, "enableNotifyWhenFound for %{private,mask.hash}s, commandId %{public}s", v14, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v26 = v0[11];
    v27 = v0[12];

    v20 = *(v27 + 8);
    v20(v10, v26);
    sub_100007BAC(v0 + 2);
  }

  v0[17] = v20;
  v28 = v0[8];
  v29 = v28[3];
  v30 = v28[4];
  sub_1000035D0(v28, v29);
  (*(*(*(v30 + 8) + 8) + 32))(v29);
  v31 = swift_task_alloc();
  v0[18] = v31;
  *v31 = v0;
  v31[1] = sub_10032F78C;
  v32 = v0[13];
  v33 = v0[10];
  v34 = v0[7];

  return sub_10033064C(v33, v34, v32);
}

uint64_t sub_10032F78C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = v2[17];
  v4 = v2[13];
  v5 = v2[11];
  v6 = v2[9];
  v3(v4, v5);
  if (v0)
  {
    v7 = sub_100330420;
  }

  else
  {
    v7 = sub_10032F91C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10032F91C()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_1000BC4D4(&qword_10169E3A0, &unk_10139D850);
  v3 = (sub_1000BC4D4(&qword_10169E348, &unk_10139D7A0) - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = swift_allocObject();
  v0[20] = v5;
  *(v5 + 16) = xmmword_101385D80;
  v6 = v5 + v4;
  v7 = v3[14];
  sub_10001F280(v2, v6);
  sub_100034E04(v1, v6 + v7, type metadata accessor for NotifyWhenFoundRecord);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_10032FA9C;

  return sub_10034AE3C(v5);
}

uint64_t sub_10032FA9C()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[9];

    return _swift_task_switch(sub_1003304AC, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[23] = v4;
    *v4 = v2;
    v4[1] = sub_10032FC10;

    return daemon.getter();
  }
}

uint64_t sub_10032FC10(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 192) = a1;

  v3 = swift_task_alloc();
  *(v2 + 200) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_10032FDF4;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10032FDF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = *(v4 + 72);
    v6 = sub_100330280;
  }

  else
  {

    *(v4 + 216) = a1;
    v6 = sub_10032FF30;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10032FF30()
{
  v1 = v0[27];
  v2 = swift_allocObject();
  v0[28] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 15;

  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_10033003C;

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_100359F44, v2, &type metadata for () + 1);
}

uint64_t sub_10033003C()
{
  v1 = *(*v0 + 216);

  return _swift_task_switch(sub_100330168, v1, 0);
}

uint64_t sub_100330168()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_1003301D4, v1, 0);
}

uint64_t sub_1003301D4()
{
  sub_100359E10(*(v0 + 80), type metadata accessor for NotifyWhenFoundRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100330280()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error publishing notifyWhenFound keys: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v6 = *(v0 + 80);

  swift_willThrow();
  sub_100359E10(v6, type metadata accessor for NotifyWhenFoundRecord);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100330420()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003304AC()
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Error publishing notifyWhenFound keys: %{public}@", v3, 0xCu);
    sub_10000B3A8(v4, &qword_10169BB30, &unk_10138B3C0);
  }

  v6 = *(v0 + 80);

  swift_willThrow();
  sub_100359E10(v6, type metadata accessor for NotifyWhenFoundRecord);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10033064C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v4[6] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v4[8] = v5;
  v6 = *(v5 - 8);
  v4[9] = v6;
  v4[10] = *(v6 + 64);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v4[14] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v4[15] = found;
  v4[16] = *(found - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[21] = v8;
  *v8 = v4;
  v8[1] = sub_100330880;

  return daemon.getter();
}

uint64_t sub_100330880(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[22] = a1;

  v3 = swift_task_alloc();
  v2[23] = v3;
  v4 = type metadata accessor for Daemon();
  v2[24] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[25] = v5;
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[26] = v6;
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[27] = v7;
  *v3 = v9;
  v3[1] = sub_100330A7C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100330A7C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = *(v4 + 40);
    v6 = sub_100331404;
  }

  else
  {

    *(v4 + 232) = a1;
    v6 = sub_100330BB8;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100330BB8()
{
  v1 = v0[29];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[8];
  v5 = v0[4];
  v6 = *(v3 + 16);
  v0[30] = v6;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[32] = v8;
  *(v8 + 16) = v1;
  (*(v3 + 32))(v8 + v7, v2, v4);

  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_100330D28;
  v11 = v0[13];
  v10 = v0[14];

  return unsafeBlocking<A>(context:_:)(v10, 0xD000000000000010, 0x800000010134A8C0, sub_100359F34, v8, v11);
}

uint64_t sub_100330D28()
{
  v1 = *(*v0 + 40);

  return _swift_task_switch(sub_100330E78, v1, 0);
}

uint64_t sub_100330E78()
{
  v42 = v0;
  v1 = v0[14];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v2 = v0[30];
    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[4];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AC78);
    v2(v3, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[11];
    v11 = v0[8];
    v12 = v0[9];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v41 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v10, v11);
      v18 = sub_1000136BC(v15, v17, &v41);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Creating new NWF record for %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      (*(v12 + 8))(v10, v11);
    }

    v33 = v0[30];
    v34 = v0[17];
    v35 = v0[15];
    v36 = v0[8];
    v37 = v0[4];
    v33(&v34[*(v35 + 20)], v0[3], v36);
    v33(&v34[*(v35 + 24)], v37, v36);
    *v34 = xmmword_10138C660;
    v38 = swift_task_alloc();
    v0[34] = v38;
    *v38 = v0;
    v38[1] = sub_1003314E0;

    return daemon.getter();
  }

  else
  {
    sub_100359DA8(v1, v0[20], type metadata accessor for NotifyWhenFoundRecord);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v19 = v0[19];
    v20 = v0[20];
    v21 = type metadata accessor for Logger();
    sub_1000076D4(v21, qword_10177AC78);
    sub_100034E04(v20, v19, type metadata accessor for NotifyWhenFoundRecord);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[19];
    if (v24)
    {
      v26 = v0[18];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v27 = 136315138;
      sub_100034E04(v25, v26, type metadata accessor for NotifyWhenFoundRecord);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      sub_100359E10(v25, type metadata accessor for NotifyWhenFoundRecord);
      v32 = sub_1000136BC(v29, v31, &v41);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "Found existing NWF record %s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {

      sub_100359E10(v25, type metadata accessor for NotifyWhenFoundRecord);
    }

    sub_100359DA8(v0[20], v0[2], type metadata accessor for NotifyWhenFoundRecord);

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_100331404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003314E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[35] = a1;

  v4 = swift_task_alloc();
  v2[36] = v4;
  *v4 = v3;
  v4[1] = sub_10033166C;
  v5 = v2[27];
  v6 = v2[26];
  v7 = v2[25];
  v8 = v2[24];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_10033166C(uint64_t a1)
{
  v3 = *v2;
  v3[37] = a1;
  v3[38] = v1;

  if (v1)
  {
    v4 = v3[5];
    v5 = sub_10033192C;
  }

  else
  {
    v6 = v3[5];

    v5 = sub_100331794;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100331794()
{
  v1 = v0[38];
  v2 = v0[17];
  v3 = v0[7];
  *(swift_task_alloc() + 16) = v2;
  sub_100EC0C48(sub_100359E70, v3);
  v4 = v0[37];
  if (v1)
  {
    v5 = v0[17];

    sub_100359E10(v5, type metadata accessor for NotifyWhenFoundRecord);

    v6 = v0[1];

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100331A28, v4, 0);
  }
}

uint64_t sub_10033192C()
{
  v1 = *(v0 + 136);

  sub_100359E10(v1, type metadata accessor for NotifyWhenFoundRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100331A50()
{
  v1 = v0[39];
  v2 = v0[7];
  v3 = swift_task_alloc();
  v0[40] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[41] = v4;
  *v4 = v0;
  v4[1] = sub_100331B48;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_100331B48()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100331E78;
  }

  else
  {

    v2 = sub_100331C64;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100331C64()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_10000B3A8(v1, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100331CEC, v2, 0);
}

uint64_t sub_100331CEC()
{
  v1 = v0[17];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  sub_10025F0D4(0, 0, v2, &unk_10139D848, v6);

  sub_100359DA8(v1, v4, type metadata accessor for NotifyWhenFoundRecord);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100331E78()
{
  v1 = *(v0 + 296);

  return _swift_task_switch(sub_100331EE4, v1, 0);
}

uint64_t sub_100331EE4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  sub_10000B3A8(v1, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100331F6C, v2, 0);
}

uint64_t sub_100331F6C()
{
  sub_100359E10(*(v0 + 136), type metadata accessor for NotifyWhenFoundRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10033205C(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[16] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v3[22] = *(v6 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[25] = v7;
  *v7 = v3;
  v7[1] = sub_1003321FC;

  return daemon.getter();
}

uint64_t sub_1003321FC(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[26] = a1;

  v3 = swift_task_alloc();
  v2[27] = v3;
  v4 = type metadata accessor for Daemon();
  v2[28] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[29] = v5;
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[30] = v6;
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[31] = v7;
  *v3 = v9;
  v3[1] = sub_1003323F8;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_1003323F8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);
    v6 = sub_100359F40;
  }

  else
  {

    *(v4 + 264) = a1;
    v6 = sub_100332534;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100332534()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 160);
  v5 = *(v0 + 104);
  v6 = *(v3 + 16);
  *(v0 + 272) = v6;
  *(v0 + 280) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v4);
  v7 = *(v3 + 80);
  *(v0 + 408) = v7;
  v8 = (v7 + 24) & ~v7;
  v9 = swift_allocObject();
  *(v0 + 288) = v9;
  *(v9 + 16) = v1;
  v10 = *(v3 + 32);
  *(v0 + 296) = v10;
  *(v0 + 304) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v9 + v8, v2, v4);

  v11 = swift_task_alloc();
  *(v0 + 312) = v11;
  v12 = sub_1000BC4D4(&qword_101696920, &unk_10138B200);
  *v11 = v0;
  v11[1] = sub_1003326D0;

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_1002DBC7C, v9, v12);
}

uint64_t sub_1003326D0()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100332820, v1, 0);
}

uint64_t sub_100332820()
{
  if (*(v0 + 80))
  {
    sub_10000A748((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 320) = v1;
    *v1 = v0;
    v1[1] = sub_100332950;
    v2 = *(v0 + 96);

    return sub_100335FE8(v2, v0 + 16);
  }

  else
  {
    sub_10000B3A8(v0 + 56, &qword_101696920, &unk_10138B200);
    v4 = swift_task_alloc();
    *(v0 + 336) = v4;
    *v4 = v0;
    v4[1] = sub_100332A7C;

    return daemon.getter();
  }
}

uint64_t sub_100332950()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_100359F0C;
  }

  else
  {
    v4 = sub_100359F2C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100332A7C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[43] = a1;

  v4 = swift_task_alloc();
  v2[44] = v4;
  *v4 = v3;
  v4[1] = sub_100332C08;
  v5 = v2[31];
  v6 = v2[30];
  v7 = v2[29];
  v8 = v2[28];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_100332C08(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);
    v6 = sub_100359F30;
  }

  else
  {

    *(v4 + 368) = a1;
    v6 = sub_100332D44;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100332D44()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 296);
  v3 = *(v0 + 192);
  v4 = *(v0 + 160);
  v5 = (*(v0 + 408) + 24) & ~*(v0 + 408);
  (*(v0 + 272))(v3, *(v0 + 104), v4);
  v6 = swift_allocObject();
  *(v0 + 376) = v6;
  *(v6 + 16) = v1;
  v2(v6 + v5, v3, v4);

  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *v7 = v0;
  v7[1] = sub_100332E94;
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100359F3C, v6, v9);
}

uint64_t sub_100332E94()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_100332FE4, v1, 0);
}

uint64_t sub_100332FE4()
{
  v26 = v0;
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    if (qword_101694688 != -1)
    {
      swift_once();
    }

    v2 = v0[34];
    v3 = v0[23];
    v4 = v0[20];
    v5 = v0[13];
    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_10177AC78);
    v2(v3, v5, v4);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[23];
    v11 = v0[20];
    v12 = v0[21];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      (*(v12 + 8))(v10, v11);
      v18 = sub_1000136BC(v15, v17, &v25);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Beacon/group does not exist for given UUID %{private,mask.hash}s", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      (*(v12 + 8))(v10, v11);
    }

    sub_100358F3C();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }

  else
  {
    sub_100359DA8(v1, v0[19], type metadata accessor for OwnedBeaconGroup);
    v19 = swift_task_alloc();
    v0[49] = v19;
    *v19 = v0;
    v19[1] = sub_100333360;
    v20 = v0[19];
    v21 = v0[12];

    return sub_10033348C(v21, v20);
  }
}

uint64_t sub_100333360()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_100359F28;
  }

  else
  {
    v4 = sub_100359F04;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10033348C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for OwnedBeaconRecord(0);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[18] = v5;
  v6 = *(v5 - 8);
  v3[19] = v6;
  v3[20] = *(v6 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_100333668, v2, 0);
}

uint64_t sub_100333668()
{
  v84 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 64);
  v5 = *(type metadata accessor for OwnedBeaconGroup(0) + 24);
  v6 = *(v3 + 16);
  *(v0 + 232) = v6;
  *(v0 + 240) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  v9 = *(v0 + 208);
  v10 = *(v0 + 144);
  v11 = *(v0 + 56);
  v12 = type metadata accessor for Logger();
  *(v0 + 248) = sub_1000076D4(v12, qword_10177AC78);
  v6(v7, v8, v10);
  v6(v9, v11, v10);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v19 = *(v0 + 144);
  v18 = *(v0 + 152);
  if (v15)
  {
    v81 = v14;
    v20 = swift_slowAlloc();
    v83[0] = swift_slowAlloc();
    *v20 = 141558531;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    log = v13;
    v26 = *(v18 + 8);
    v25 = v18 + 8;
    v24 = v26;
    v26(v16, v19);
    v27 = sub_1000136BC(v21, v23, v83);

    *(v20 + 14) = v27;
    *(v20 + 22) = 2082;
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v26(v17, v19);
    v31 = sub_1000136BC(v28, v30, v83);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v81, "disableNotifyWhenFound for %{private,mask.hash}s, commandId %{public}s", v20, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v32 = *(v18 + 8);
    v25 = v18 + 8;
    v24 = v32;
    v32(v17, v19);
    v32(v16, v19);
  }

  *(v0 + 256) = v25;
  *(v0 + 264) = v24;
  sub_100519FB0();
  *(v0 + 272) = v33;
  v34 = *(v33 + 32);
  *(v0 + 492) = v34;
  v35 = -1;
  v36 = -1 << v34;
  v37 = *(v33 + 56);
  if (-v36 < 64)
  {
    v35 = ~(-1 << -v36);
  }

  *(v0 + 280) = _swiftEmptyArrayStorage;
  v38 = v35 & v37;
  if (v38)
  {
    v39 = 0;
LABEL_13:
    *(v0 + 288) = v38;
    *(v0 + 296) = v39;
    v42 = *(v0 + 192);
    v43 = *(v0 + 200);
    v44 = *(v0 + 144);
    v45 = *(v0 + 152);
    (*(v0 + 232))(v43, *(v33 + 48) + *(v45 + 72) * (__clz(__rbit64(v38)) | (v39 << 6)), v44);
    v46 = *(v45 + 32);
    *(v0 + 304) = v46;
    *(v0 + 312) = (v45 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v46(v42, v43, v44);
    v47 = swift_task_alloc();
    *(v0 + 320) = v47;
    *v47 = v0;
    v47[1] = sub_100333E90;

    return daemon.getter();
  }

  else
  {
    v40 = 0;
    v41 = ((63 - v36) >> 6) - 1;
    while (v41 != v40)
    {
      v39 = v40 + 1;
      v38 = *(v33 + 8 * v40++ + 64);
      if (v38)
      {
        goto LABEL_13;
      }
    }

    v48 = _swiftEmptyArrayStorage[2];
    *(v0 + 352) = v48;
    if (v48)
    {
      v49 = *(v0 + 280);
      v51 = *(v0 + 96);
      v50 = *(v0 + 104);
      v52 = *(v50 + 80);
      *(v0 + 488) = v52;
      v53 = *(v50 + 72);
      *(v0 + 392) = 0;
      *(v0 + 400) = 0;
      *(v0 + 384) = v53;
      v54 = *(v0 + 120);
      sub_100034E04(v49 + ((v52 + 32) & ~v52), v54, type metadata accessor for OwnedBeaconRecord);
      *(v0 + 40) = v51;
      *(v0 + 48) = sub_10003A260(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
      v55 = sub_1000280DC((v0 + 16));
      sub_100034E04(v54, v55, type metadata accessor for OwnedBeaconRecord);
      v56 = swift_task_alloc();
      *(v0 + 408) = v56;
      *v56 = v0;
      v56[1] = sub_100334C78;
      v57 = *(v0 + 56);

      return sub_100335FE8(v57, v0 + 16);
    }

    else
    {
      v58 = *(v0 + 224);
      v59 = *(v0 + 232);
      v60 = *(v0 + 168);
      v61 = *(v0 + 144);

      v59(v60, v58, v61);
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.error.getter();
      v64 = os_log_type_enabled(v62, v63);
      v65 = *(v0 + 264);
      v66 = *(v0 + 168);
      v67 = *(v0 + 144);
      if (v64)
      {
        v82 = *(v0 + 264);
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v83[0] = v69;
        *v68 = 141558275;
        *(v68 + 4) = 1752392040;
        *(v68 + 12) = 2081;
        sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v70 = dispatch thunk of CustomStringConvertible.description.getter();
        v72 = v71;
        v82(v66, v67);
        v73 = sub_1000136BC(v70, v72, v83);

        *(v68 + 14) = v73;
        _os_log_impl(&_mh_execute_header, v62, v63, "No eligible member beacon to disable notify when found for group %{private,mask.hash}s", v68, 0x16u);
        sub_100007BAC(v69);
      }

      else
      {

        v65(v66, v67);
      }

      v74 = *(v0 + 264);
      v75 = *(v0 + 224);
      v76 = *(v0 + 144);
      sub_100358F3C();
      swift_allocError();
      *v77 = 0;
      swift_willThrow();
      v74(v75, v76);

      v78 = *(v0 + 8);

      return v78();
    }
  }
}

uint64_t sub_100333E90(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 328) = a1;

  v3 = swift_task_alloc();
  *(v2 + 336) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100334074;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100334074(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v5 = *(v4 + 72);
    v6 = sub_100334B1C;
  }

  else
  {

    *(v4 + 360) = a1;
    v6 = sub_1003341B0;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1003341B0()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 304);
  v3 = *(v0 + 184);
  v4 = *(v0 + 152);
  v5 = *(v0 + 144);
  (*(v0 + 232))(v3, *(v0 + 192), v5);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v0 + 368) = v7;
  *(v7 + 16) = v1;
  v2(v7 + v6, v3, v5);

  v8 = swift_task_alloc();
  *(v0 + 376) = v8;
  *v8 = v0;
  v8[1] = sub_1003342FC;
  v10 = *(v0 + 80);
  v9 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100359F38, v7, v10);
}

uint64_t sub_1003342FC()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_10033444C, v1, 0);
}

uint64_t sub_10033444C()
{
  v57 = v0;
  v1 = *(v0 + 88);
  if ((*(*(v0 + 104) + 48))(v1, 1, *(v0 + 96)) != 1)
  {
    v6 = *(v0 + 128);
    v5 = *(v0 + 136);
    sub_100359DA8(v1, v5, type metadata accessor for OwnedBeaconRecord);
    sub_100034E04(v5, v6, type metadata accessor for OwnedBeaconRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 280);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

  (*(v0 + 264))(*(v0 + 192), *(v0 + 144));
  sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
  v2 = *(v0 + 296);
  v3 = (*(v0 + 288) - 1) & *(v0 + 288);
  if (v3)
  {
LABEL_3:
    v4 = *(v0 + 272);
LABEL_12:
    *(v0 + 288) = v3;
    *(v0 + 296) = v2;
    v16 = *(v0 + 192);
    v17 = *(v0 + 200);
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    (*(v0 + 232))(v17, *(v4 + 48) + *(v19 + 72) * (__clz(__rbit64(v3)) | (v2 << 6)), v18);
    v20 = *(v19 + 32);
    *(v0 + 304) = v20;
    *(v0 + 312) = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v20(v16, v17, v18);
    v21 = swift_task_alloc();
    *(v0 + 320) = v21;
    *v21 = v0;
    v21[1] = sub_100333E90;

    return daemon.getter();
  }

  else
  {
    while (1)
    {
      while (1)
      {
        v15 = v2 + 1;
        if (!__OFADD__(v2, 1))
        {
          break;
        }

        __break(1u);
LABEL_26:
        v1 = sub_100A5C050(0, v1[2] + 1, 1, v1);
LABEL_5:
        v9 = v1[2];
        v8 = v1[3];
        if (v9 >= v8 >> 1)
        {
          v1 = sub_100A5C050((v8 > 1), v9 + 1, 1, v1);
        }

        v10 = *(v0 + 264);
        v11 = *(v0 + 192);
        v12 = *(v0 + 144);
        v13 = *(v0 + 128);
        v14 = *(v0 + 104);
        sub_100359E10(*(v0 + 136), type metadata accessor for OwnedBeaconRecord);
        v10(v11, v12);
        v1[2] = v9 + 1;
        sub_100359DA8(v13, v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v9, type metadata accessor for OwnedBeaconRecord);
        v2 = *(v0 + 296);
        v3 = (*(v0 + 288) - 1) & *(v0 + 288);
        *(v0 + 280) = v1;
        if (v3)
        {
          goto LABEL_3;
        }
      }

      if (v15 >= (((1 << *(v0 + 492)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v0 + 272);
      v3 = *(v4 + 8 * v15 + 56);
      ++v2;
      if (v3)
      {
        v2 = v15;
        goto LABEL_12;
      }
    }

    v22 = *(v0 + 280);

    v23 = *(v22 + 16);
    *(v0 + 352) = v23;
    if (v23)
    {
      v24 = *(v0 + 280);
      v26 = *(v0 + 96);
      v25 = *(v0 + 104);
      v27 = *(v25 + 80);
      *(v0 + 488) = v27;
      v28 = *(v25 + 72);
      *(v0 + 392) = 0;
      *(v0 + 400) = 0;
      *(v0 + 384) = v28;
      v29 = *(v0 + 120);
      sub_100034E04(v24 + ((v27 + 32) & ~v27), v29, type metadata accessor for OwnedBeaconRecord);
      *(v0 + 40) = v26;
      *(v0 + 48) = sub_10003A260(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
      v30 = sub_1000280DC((v0 + 16));
      sub_100034E04(v29, v30, type metadata accessor for OwnedBeaconRecord);
      v31 = swift_task_alloc();
      *(v0 + 408) = v31;
      *v31 = v0;
      v31[1] = sub_100334C78;
      v32 = *(v0 + 56);

      return sub_100335FE8(v32, v0 + 16);
    }

    else
    {
      v33 = *(v0 + 224);
      v34 = *(v0 + 232);
      v35 = *(v0 + 168);
      v36 = *(v0 + 144);

      v34(v35, v33, v36);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 264);
      v41 = *(v0 + 168);
      v42 = *(v0 + 144);
      if (v39)
      {
        v55 = *(v0 + 264);
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v56 = v44;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        v55(v41, v42);
        v48 = sub_1000136BC(v45, v47, &v56);

        *(v43 + 14) = v48;
        _os_log_impl(&_mh_execute_header, v37, v38, "No eligible member beacon to disable notify when found for group %{private,mask.hash}s", v43, 0x16u);
        sub_100007BAC(v44);
      }

      else
      {

        v40(v41, v42);
      }

      v49 = *(v0 + 264);
      v50 = *(v0 + 224);
      v51 = *(v0 + 144);
      sub_100358F3C();
      swift_allocError();
      *v52 = 0;
      swift_willThrow();
      v49(v50, v51);

      v53 = *(v0 + 8);

      return v53();
    }
  }
}

uint64_t sub_100334B1C()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[18];

  v1(v3, v4);
  v1(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100334C78()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = sub_100335A18;
  }

  else
  {
    v5 = *(v2 + 72);
    sub_100007BAC((v2 + 16));
    v4 = sub_100334DA0;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100334DA0()
{
  v28 = v0;
  sub_100359E10(*(v0 + 120), type metadata accessor for OwnedBeaconRecord);
  v1 = *(v0 + 400);
  *(v0 + 424) = *(v0 + 392);
  v2 = v1 + 1;
  if (v1 + 1 == *(v0 + 352))
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 232);
    v5 = *(v0 + 176);
    v6 = *(v0 + 144);

    v4(v5, v3, v6);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 264);
    v11 = *(v0 + 176);
    v12 = *(v0 + 144);
    if (v9)
    {
      v26 = *(v0 + 264);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v26(v11, v12);
      v18 = sub_1000136BC(v15, v17, &v27);

      *(v13 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v7, v8, "Disabled notify when found for group %{private,mask.hash}s.", v13, 0x16u);
      sub_100007BAC(v14);
    }

    else
    {

      v10(v11, v12);
    }

    v25 = swift_task_alloc();
    *(v0 + 432) = v25;
    *v25 = v0;
    v25[1] = sub_100335134;

    return daemon.getter();
  }

  else
  {
    *(v0 + 400) = v2;
    v19 = *(v0 + 120);
    v20 = *(v0 + 96);
    sub_100034E04(*(v0 + 280) + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(v0 + 384) * v2, v19, type metadata accessor for OwnedBeaconRecord);
    *(v0 + 40) = v20;
    *(v0 + 48) = sub_10003A260(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
    v21 = sub_1000280DC((v0 + 16));
    sub_100034E04(v19, v21, type metadata accessor for OwnedBeaconRecord);
    v22 = swift_task_alloc();
    *(v0 + 408) = v22;
    *v22 = v0;
    v22[1] = sub_100334C78;
    v23 = *(v0 + 56);

    return sub_100335FE8(v23, v0 + 16);
  }
}

uint64_t sub_100335134(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 440) = a1;

  v3 = swift_task_alloc();
  *(v2 + 448) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100335318;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100335318(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 456) = v1;

  if (v1)
  {
    v5 = *(v4 + 72);
    v6 = sub_1003358DC;
  }

  else
  {

    *(v4 + 464) = a1;
    v6 = sub_100335454;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100335454()
{
  v1 = v0[58];
  v2 = swift_allocObject();
  v0[59] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 15;

  v3 = swift_task_alloc();
  v0[60] = v3;
  *v3 = v0;
  v3[1] = sub_100335560;

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_100359F44, v2, &type metadata for () + 1);
}

uint64_t sub_100335560()
{
  v1 = *(*v0 + 464);

  return _swift_task_switch(sub_10033568C, v1, 0);
}

uint64_t sub_10033568C()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_1003356F8, v1, 0);
}

uint64_t sub_1003356F8(uint64_t a1)
{
  v2 = v1[33];
  v3 = v1[28];
  if (v1[53])
  {
    v4 = v1[18];
    swift_willThrow();
    v2(v3, v4);
  }

  else
  {
    v2(v3, v1[18]);
  }

  v5 = v1[1];

  return v5();
}

uint64_t sub_1003358DC()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[18];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100335A18()
{
  v45 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  sub_100007BAC((v0 + 16));
  sub_100034E04(v1, v2, type metadata accessor for OwnedBeaconRecord);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v42 = *(v0 + 120);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44 = v8;
    *v6 = 141558531;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    sub_100359E10(v5, type metadata accessor for OwnedBeaconRecord);
    v12 = sub_1000136BC(v9, v11, &v44);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v13;
    *v7 = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not disable notify when found for %{private,mask.hash}s, error: %{public}@", v6, 0x20u);
    sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v8);

    v14 = v42;
  }

  else
  {
    v16 = *(v0 + 112);
    v15 = *(v0 + 120);

    sub_100359E10(v16, type metadata accessor for OwnedBeaconRecord);
    v14 = v15;
  }

  sub_100359E10(v14, type metadata accessor for OwnedBeaconRecord);
  v17 = *(v0 + 416);
  *(v0 + 424) = v17;
  v18 = *(v0 + 400) + 1;
  if (v18 == *(v0 + 352))
  {
    v19 = *(v0 + 224);
    v20 = *(v0 + 232);
    v21 = *(v0 + 176);
    v22 = *(v0 + 144);

    v20(v21, v19, v22);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    v25 = os_log_type_enabled(v23, v24);
    v26 = *(v0 + 264);
    v27 = *(v0 + 176);
    v28 = *(v0 + 144);
    if (v25)
    {
      v43 = *(v0 + 264);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v30;
      *v29 = 141558275;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      v43(v27, v28);
      v34 = sub_1000136BC(v31, v33, &v44);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Disabled notify when found for group %{private,mask.hash}s.", v29, 0x16u);
      sub_100007BAC(v30);
    }

    else
    {

      v26(v27, v28);
    }

    v41 = swift_task_alloc();
    *(v0 + 432) = v41;
    *v41 = v0;
    v41[1] = sub_100335134;

    return daemon.getter();
  }

  else
  {
    *(v0 + 392) = v17;
    *(v0 + 400) = v18;
    v35 = *(v0 + 120);
    v36 = *(v0 + 96);
    sub_100034E04(*(v0 + 280) + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(v0 + 384) * v18, v35, type metadata accessor for OwnedBeaconRecord);
    *(v0 + 40) = v36;
    *(v0 + 48) = sub_10003A260(&qword_1016B1810, 255, type metadata accessor for OwnedBeaconRecord, &unk_1013E7DBC);
    v37 = sub_1000280DC((v0 + 16));
    sub_100034E04(v35, v37, type metadata accessor for OwnedBeaconRecord);
    v38 = swift_task_alloc();
    *(v0 + 408) = v38;
    *v38 = v0;
    v38[1] = sub_100334C78;
    v39 = *(v0 + 56);

    return sub_100335FE8(v39, v0 + 16);
  }
}

uint64_t sub_100335FE8(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v3[15] = swift_task_alloc();
  sub_1000BC4D4(&qword_1016975C8, &qword_10138C1F0);
  v3[16] = swift_task_alloc();
  v3[17] = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v3[18] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v3[19] = found;
  v3[20] = *(found - 8);
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[22] = v5;
  v6 = *(v5 - 8);
  v3[23] = v6;
  v3[24] = *(v6 + 64);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1003361D4, v2, 0);
}

uint64_t sub_1003361D4()
{
  v34 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  v5 = v0[12];
  v4 = v0[13];
  v6 = type metadata accessor for Logger();
  v0[28] = sub_1000076D4(v6, qword_10177AC78);
  sub_10001F280(v4, (v0 + 2));
  v7 = *(v3 + 16);
  v0[29] = v7;
  v0[30] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v5, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[27];
  if (v10)
  {
    v12 = v0[26];
    v14 = v0[22];
    v13 = v0[23];
    log = v8;
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v15 = 136315394;
    v31 = v9;
    v17 = v0[5];
    v16 = v0[6];
    sub_1000035D0(v0 + 2, v17);
    (*(*(*(v16 + 8) + 8) + 32))(v17);
    sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v13 + 8);
    v21(v12, v14);
    sub_100007BAC(v0 + 2);
    v22 = sub_1000136BC(v18, v20, &v33);

    *(v15 + 4) = v22;
    *(v15 + 12) = 2080;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v21(v11, v14);
    v26 = sub_1000136BC(v23, v25, &v33);

    *(v15 + 14) = v26;
    _os_log_impl(&_mh_execute_header, log, v31, "disableNotifyWhenFound for %s, commandId %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v28 = v0[22];
    v27 = v0[23];

    v21 = *(v27 + 8);
    v21(v11, v28);
    sub_100007BAC(v0 + 2);
  }

  v0[31] = v21;
  v29 = swift_task_alloc();
  v0[32] = v29;
  *v29 = v0;
  v29[1] = sub_100336530;

  return daemon.getter();
}

uint64_t sub_100336530(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[33] = a1;

  v3 = swift_task_alloc();
  v2[34] = v3;
  v4 = type metadata accessor for Daemon();
  v2[35] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[36] = v5;
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[37] = v6;
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[38] = v7;
  *v3 = v9;
  v3[1] = sub_10033672C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10033672C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 312) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);
    v6 = sub_100336FAC;
  }

  else
  {
    v7 = *(v4 + 112);

    *(v4 + 320) = a1;
    v6 = sub_10033686C;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10033686C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 104);
  v3 = v2[3];
  v4 = v2[4];
  sub_1000035D0(v2, v3);
  (*(*(*(v4 + 8) + 8) + 32))(v3);

  return _swift_task_switch(sub_100336914, v1, 0);
}

uint64_t sub_100336914()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  (*(v0 + 232))(v2, *(v0 + 208), v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 328) = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  *(v0 + 336) = v7;
  *v7 = v0;
  v7[1] = sub_100336A68;
  v9 = *(v0 + 136);
  v8 = *(v0 + 144);

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100359F34, v6, v9);
}

uint64_t sub_100336A68()
{
  v1 = *v0;
  v2 = *(*v0 + 248);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 184);
  v5 = *(*v0 + 176);
  v6 = *(*v0 + 112);

  *(v1 + 344) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v3, v5);

  return _swift_task_switch(sub_100336C3C, v6, 0);
}

uint64_t sub_100336C3C()
{
  v21 = v0;
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    v2 = v0[13];
    sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
    sub_10001F280(v2, (v0 + 7));
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[31];
      v6 = v0[26];
      v7 = v0[22];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 141558275;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2081;
      v11 = v0[10];
      v10 = v0[11];
      sub_1000035D0(v0 + 7, v11);
      (*(*(*(v10 + 8) + 8) + 32))(v11);
      sub_10003A260(&qword_101696930, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      v5(v6, v7);
      sub_100007BAC(v0 + 7);
      v15 = sub_1000136BC(v12, v14, &v20);

      *(v8 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v3, v4, "No notify when found record for beacon %{private,mask.hash}s.", v8, 0x16u);
      sub_100007BAC(v9);
    }

    else
    {

      sub_100007BAC(v0 + 7);
    }

    sub_100358F3C();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    v18 = v0[1];

    return v18();
  }

  else
  {
    sub_100359DA8(v1, v0[21], type metadata accessor for NotifyWhenFoundRecord);
    v16 = swift_task_alloc();
    v0[44] = v16;
    *v16 = v0;
    v16[1] = sub_100337070;

    return daemon.getter();
  }
}

uint64_t sub_100336FAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100337070(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[45] = a1;

  v4 = swift_task_alloc();
  v2[46] = v4;
  *v4 = v3;
  v4[1] = sub_1003371FC;
  v5 = v2[38];
  v6 = v2[37];
  v7 = v2[36];
  v8 = v2[35];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_1003371FC(uint64_t a1)
{
  v3 = *v2;
  v3[47] = a1;
  v3[48] = v1;

  if (v1)
  {
    v4 = v3[14];
    v5 = sub_1003374A0;
  }

  else
  {
    v6 = v3[14];

    v5 = sub_100337324;
    v4 = v6;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100337324()
{
  v1 = v0[48];
  v2 = v0[21];
  v3 = v0[16];
  *(swift_task_alloc() + 16) = v2;
  sub_100EC0C48(sub_100359D7C, v3);
  v4 = v0[47];
  if (v1)
  {
    v5 = v0[21];

    sub_100359E10(v5, type metadata accessor for NotifyWhenFoundRecord);

    v6 = v0[1];

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100337584, v4, 0);
  }
}

uint64_t sub_1003374A0()
{
  v1 = *(v0 + 168);

  sub_100359E10(v1, type metadata accessor for NotifyWhenFoundRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1003375AC()
{
  v1 = v0[49];
  v2 = v0[16];
  v3 = swift_task_alloc();
  v0[50] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[51] = v4;
  *v4 = v0;
  v4[1] = sub_1003376A4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD000000000000011, 0x800000010134B790, sub_100111F54, v3, &type metadata for () + 1);
}

uint64_t sub_1003376A4()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_100337A74;
  }

  else
  {

    v2 = sub_1003377C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003377C0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  sub_10000B3A8(v1, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100337848, v2, 0);
}

uint64_t sub_100337848()
{
  v1 = v0[20];
  v2 = v0[21];
  sub_1000BC4D4(&qword_10169E398, &qword_10139D838);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  v0[53] = v4;
  *(v4 + 16) = xmmword_101385D80;
  sub_100034E04(v2, v4 + v3, type metadata accessor for NotifyWhenFoundRecord);
  v5 = swift_task_alloc();
  v0[54] = v5;
  *v5 = v0;
  v5[1] = sub_10033794C;

  return sub_10034C794(v4);
}

uint64_t sub_10033794C()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_10033849C;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_100337C40;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100337A74()
{
  v1 = *(v0 + 376);

  return _swift_task_switch(sub_100337AE0, v1, 0);
}

uint64_t sub_100337AE0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);

  sub_10000B3A8(v1, &qword_1016975C8, &qword_10138C1F0);

  return _swift_task_switch(sub_100337B68, v2, 0);
}

uint64_t sub_100337B68()
{
  sub_100359E10(*(v0 + 168), type metadata accessor for NotifyWhenFoundRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100337C40()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_10025F0D4(0, 0, v2, &unk_10139D840, v4);

  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_100337D70;

  return daemon.getter();
}

uint64_t sub_100337D70(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[57] = a1;

  v4 = swift_task_alloc();
  v2[58] = v4;
  *v4 = v3;
  v4[1] = sub_100337EFC;
  v5 = v2[38];
  v6 = v2[37];
  v7 = v2[36];
  v8 = v2[35];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_100337EFC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 472) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);
    v6 = sub_1003383B8;
  }

  else
  {

    *(v4 + 480) = a1;
    v6 = sub_100338038;
    v5 = a1;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100338038()
{
  v1 = v0[60];
  v2 = swift_allocObject();
  v0[61] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = 15;

  v3 = swift_task_alloc();
  v0[62] = v3;
  *v3 = v0;
  v3[1] = sub_100338144;

  return unsafeBlocking<A>(context:_:)(v3, 0xD000000000000010, 0x800000010134A8C0, sub_1001BA7C4, v2, &type metadata for () + 1);
}

uint64_t sub_100338144()
{
  v1 = *(*v0 + 480);

  return _swift_task_switch(sub_100338270, v1, 0);
}

uint64_t sub_100338270()
{
  v1 = *(v0 + 112);

  return _swift_task_switch(sub_1003382DC, v1, 0);
}

uint64_t sub_1003382DC()
{
  sub_100359E10(*(v0 + 168), type metadata accessor for NotifyWhenFoundRecord);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003383B8()
{
  v1 = *(v0 + 168);

  sub_100359E10(v1, type metadata accessor for NotifyWhenFoundRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10033849C()
{
  v1 = *(v0 + 168);

  sub_100359E10(v1, type metadata accessor for NotifyWhenFoundRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100338580()
{
  v1[2] = v0;
  v1[3] = *v0;
  type metadata accessor for DispatchQoS();
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100338638, v0, 0);
}

uint64_t sub_100338638()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_10177AC78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Registering new xpc activity for Notify WhenFound.", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_100338784;

  return daemon.getter();
}

uint64_t sub_100338784(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  *(v2 + 48) = a1;

  v3 = swift_task_alloc();
  *(v2 + 56) = v3;
  v4 = type metadata accessor for Daemon();
  v5 = type metadata accessor for BeaconStoreActor();
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  *v3 = v9;
  v3[1] = sub_100338968;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_100338968(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = *(v4 + 16);
    v6 = sub_100338DA4;
  }

  else
  {
    v7 = *(v4 + 16);

    *(v4 + 72) = a1;
    v6 = sub_100338AA8;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100338AA8()
{
  v1 = v0[9];
  v2 = v0[3];
  type metadata accessor for XPCActivity();
  static DispatchQoS.default.getter();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  swift_weakInit();

  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100338C00;
  v6 = v0[4];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000026, 0x8000000101351560, v6, &unk_10139D7F0, v3, &unk_10139D800, v4);
}

uint64_t sub_100338C00(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100338D18, v2, 0);
}

uint64_t sub_100338D18()
{
  v1 = v0[11];
  v2 = v0[2];

  *(v2 + 136) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100338DA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100338E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  sub_1000BC4D4(&qword_10169E370, &qword_1013BA3F0);
  v4[5] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Criteria();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[9] = v7;
  *v7 = v4;
  v7[1] = sub_100338F44;

  return sub_100359234(a3);
}

uint64_t sub_100338F44(char a1)
{
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_100339044, 0, 0);
}

uint64_t sub_100339044()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 48);
    v2 = *(v0 + 56);
    v3 = *(v0 + 40);
    sub_1000D2A70(*(v0 + 24), v3, &qword_10169E370, &qword_1013BA3F0);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_10000B3A8(*(v0 + 40), &qword_10169E370, &qword_1013BA3F0);
      v4 = swift_task_alloc();
      *(v0 + 80) = v4;
      *v4 = v0;
      v4[1] = sub_100339208;
      v5 = *(v0 + 16);

      return sub_100329218(v5);
    }

    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = *(v0 + 16);
    v11 = *(*(v0 + 56) + 32);
    v11(v8, *(v0 + 40), v9);
    v11(v10, v8, v9);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  (*(*(v0 + 56) + 56))(*(v0 + 16), v7, 1, *(v0 + 48));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100339208()
{

  return _swift_task_switch(sub_100339304, 0, 0);
}

uint64_t sub_100339304()
{
  (*(v0[7] + 56))(v0[2], 0, 1, v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100339390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for XPCActivity.State();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_100339460, 0, 0);
}

uint64_t sub_100339460()
{
  v38 = v0;
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177AC78);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[11];
  v12 = v0[8];
  v11 = v0[9];
  if (v9)
  {
    buf = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *buf = 136446210;
    sub_10003A260(&qword_101696CD0, 255, &type metadata accessor for XPCActivity.State, &protocol conformance descriptor for XPCActivity.State);
    v34 = v8;
    v13 = v6;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = v14;
    v6 = v13;
    v19 = sub_1000136BC(v18, v16, &v37);

    *(buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v7, v34, "Notify when found activity state: %{public}s.", buf, 0xCu);
    sub_100007BAC(v36);
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v10, v12);
  }

  v21 = v0[9];
  v20 = v0[10];
  v22 = v0[8];
  v6(v20, v0[6], v22);
  v23 = (*(v21 + 88))(v20, v22);
  if (v23 != enum case for XPCActivity.State.checkIn(_:) && v23 != enum case for XPCActivity.State.wait(_:))
  {
    if (v23 == enum case for XPCActivity.State.run(_:))
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v0[12] = Strong;
      if (Strong)
      {
        v28 = swift_task_alloc();
        v0[13] = v28;
        *v28 = v0;
        v28[1] = sub_100339A18;

        return sub_100339F7C();
      }

      type metadata accessor for XPCActivity();
      sub_10003A260(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v29 = dispatch thunk of Actor.unownedExecutor.getter();
      v31 = v33;
      v32 = sub_100339BA8;
      goto LABEL_26;
    }

    if (v23 == enum case for XPCActivity.State.defer(_:))
    {
      type metadata accessor for XPCActivity();
      sub_10003A260(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
      v29 = dispatch thunk of Actor.unownedExecutor.getter();
      v31 = v30;
      v32 = sub_100339948;
LABEL_26:

      return _swift_task_switch(v32, v29, v31);
    }

    if (v23 != enum case for XPCActivity.State.continue(_:) && v23 != enum case for XPCActivity.State.done(_:) && v23 != enum case for XPCActivity.State.invalidated(_:))
    {
      v17(v0[10], v0[8]);
    }
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_100339948()
{
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_1003399B0, 0, 0);
}

uint64_t sub_1003399B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100339A18()
{

  type metadata accessor for XPCActivity();
  sub_10003A260(&qword_101696CC0, 255, &type metadata accessor for XPCActivity, &protocol conformance descriptor for XPCActivity);
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100339BA8, v1, v0);
}

uint64_t sub_100339BA8()
{
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100359F08, 0, 0);
}

uint64_t sub_100339C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_100339C30, a4, 0);
}

uint64_t sub_100339C30()
{
  *(v0 + 32) = *(*(v0 + 24) + 136);

  return _swift_task_switch(sub_100339CA4, 0, 0);
}

uint64_t sub_100339CA4()
{
  if (v0[4])
  {
    v7 = (&async function pointer to dispatch thunk of XPCActivity.updateCriteria() + async function pointer to dispatch thunk of XPCActivity.updateCriteria());
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_100339DC8;
    v2 = v0[2];

    return v7(v2);
  }

  else
  {
    v4 = v0[2];
    v5 = type metadata accessor for XPCActivity.State();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100339DC8()
{

  return _swift_task_switch(sub_100339EE0, 0, 0);
}

uint64_t sub_100339EE0()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for XPCActivity.State();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100339F7C()
{
  v1[8] = v0;
  v2 = sub_1000BC4D4(&qword_10169E348, &unk_10139D7A0);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v1[14] = *(v4 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v1[18] = swift_task_alloc();
  found = type metadata accessor for NotifyWhenFoundRecord(0);
  v1[19] = found;
  v1[20] = *(found - 8);
  v1[21] = swift_task_alloc();

  return _swift_task_switch(sub_10033A150, v0, 0);
}

uint64_t sub_10033A150()
{
  if (qword_101694688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 176) = sub_1000076D4(v1, qword_10177AC78);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "schedulerFired", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_10033A2A0;

  return daemon.getter();
}

uint64_t sub_10033A2A0(uint64_t a1)
{
  v2 = *v1;
  v9 = *v1;
  v2[24] = a1;

  v3 = swift_task_alloc();
  v2[25] = v3;
  v4 = type metadata accessor for Daemon();
  v2[26] = v4;
  v5 = type metadata accessor for BeaconStoreActor();
  v2[27] = v5;
  v6 = sub_10003A260(&qword_1016AA400, 255, &type metadata accessor for Daemon, &protocol conformance descriptor for Daemon);
  v2[28] = v6;
  v7 = sub_10003A260(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor, &unk_1013EB1B8);
  v2[29] = v7;
  *v3 = v9;
  v3[1] = sub_10033A49C;

  return ActorServiceDaemon.getService<A>()(v4, v5, v6, v7);
}

uint64_t sub_10033A49C(uint64_t a1)
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

    *(v4 + 240) = a1;

    return _swift_task_switch(sub_10033A650, a1, 0);
  }
}

uint64_t sub_10033A650()
{

  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  v2 = sub_1000BC4D4(&unk_1016AA410, &unk_101395200);
  *v1 = v0;
  v1[1] = sub_10033A73C;
  v3 = *(v0 + 240);

  return unsafeBlocking<A>(context:_:)(v0 + 56, 0xD000000000000010, 0x800000010134A8C0, sub_100259A64, v3, v2);
}

uint64_t sub_10033A73C()
{
  v1 = *(*v0 + 240);

  return _swift_task_switch(sub_10033A854, v1, 0);
}

uint64_t sub_10033A854()
{
  v1 = v0[8];

  v0[32] = v0[7];

  return _swift_task_switch(sub_10033A8C8, v1, 0);
}

uint64_t sub_10033A8C8()
{
  v1 = v0[32];
  v2 = *(v1 + 16);
  v0[33] = v2;
  if (v2)
  {
    v0[34] = 0;
    v0[35] = _swiftEmptyArrayStorage;
    sub_10001F280(v1 + 32, (v0 + 2));
    v3 = swift_task_alloc();
    v0[36] = v3;
    *v3 = v0;
    v3[1] = sub_10033AAFC;

    return daemon.getter();
  }

  else
  {

    v0[42] = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage[2])
    {
      v4 = swift_task_alloc();
      v0[43] = v4;
      *v4 = v0;
      v4[1] = sub_10033B7B4;

      return sub_10034AE3C(_swiftEmptyArrayStorage);
    }

    else
    {

      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "No notify records to publish", v7, 2u);
      }

      v8 = v0[1];

      return v8();
    }
  }
}

uint64_t sub_10033AAFC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[37] = a1;

  v4 = swift_task_alloc();
  v2[38] = v4;
  *v4 = v3;
  v4[1] = sub_10033AC88;
  v5 = v2[29];
  v6 = v2[28];
  v7 = v2[27];
  v8 = v2[26];

  return ActorServiceDaemon.getService<A>()(v8, v7, v6, v5);
}

uint64_t sub_10033AC88(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = *(v4 + 64);
  if (v1)
  {

    v7 = sub_10033B540;
  }

  else
  {

    *(v5 + 312) = a1;
    v7 = sub_10033ADF0;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10033ADF0()
{
  v1 = v0[39];
  v2 = v0[5];
  v3 = v0[6];
  sub_1000035D0(v0 + 2, v2);
  (*(*(*(v3 + 8) + 8) + 32))(v2);

  return _swift_task_switch(sub_10033AE98, v1, 0);
}

uint64_t sub_10033AE98()
{
  v1 = v0[39];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[12];
  (*(v3 + 16))(v2, v0[16], v4);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[40] = v6;
  *(v6 + 16) = v1;
  (*(v3 + 32))(v6 + v5, v2, v4);

  v7 = swift_task_alloc();
  v0[41] = v7;
  *v7 = v0;
  v7[1] = sub_10033AFF0;
  v9 = v0[17];
  v8 = v0[18];

  return unsafeBlocking<A>(context:_:)(v8, 0xD000000000000010, 0x800000010134A8C0, sub_100359F34, v6, v9);
}

uint64_t sub_10033AFF0()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 64);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10033B19C, v4, 0);
}

uint64_t sub_10033B19C()
{
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E328, &unk_10139D740);
    v2 = v0[35];
  }

  else
  {
    v3 = v0[21];
    v4 = v0[11];
    v5 = v0[9];
    sub_100359DA8(v1, v3, type metadata accessor for NotifyWhenFoundRecord);
    v6 = *(v5 + 48);
    sub_10001F280((v0 + 2), v4);
    sub_100034E04(v3, v4 + v6, type metadata accessor for NotifyWhenFoundRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = v0[35];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v2 = sub_100A5CAC0(0, v2[2] + 1, 1, v0[35]);
    }

    v9 = v2[2];
    v8 = v2[3];
    if (v9 >= v8 >> 1)
    {
      v2 = sub_100A5CAC0((v8 > 1), v9 + 1, 1, v2);
    }

    v11 = v0[10];
    v10 = v0[11];
    sub_100359E10(v0[21], type metadata accessor for NotifyWhenFoundRecord);
    v2[2] = v9 + 1;
    sub_1000D2AD8(v10, v2 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9, &qword_10169E348, &unk_10139D7A0);
  }

  v12 = v0[33];
  v13 = v0[34] + 1;
  sub_100007BAC(v0 + 2);
  if (v13 == v12)
  {

    v0[42] = v2;
    if (v2[2])
    {
      v14 = swift_task_alloc();
      v0[43] = v14;
      *v14 = v0;
      v14[1] = sub_10033B7B4;

      return sub_10034AE3C(v2);
    }

    else
    {

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "No notify records to publish", v20, 2u);
      }

      v21 = v0[1];

      return v21();
    }
  }

  else
  {
    v16 = v0[34];
    v0[34] = v16 + 1;
    v0[35] = v2;
    sub_10001F280(v0[32] + 40 * v16 + 72, (v0 + 2));
    v17 = swift_task_alloc();
    v0[36] = v17;
    *v17 = v0;
    v17[1] = sub_10033AAFC;

    return daemon.getter();
  }
}

uint64_t sub_10033B540()
{
  (*(v0[20] + 56))(v0[18], 1, 1, v0[19]);
  sub_10000B3A8(v0[18], &qword_10169E328, &unk_10139D740);
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34] + 1;
  sub_100007BAC(v0 + 2);
  if (v3 == v2)
  {

    v0[42] = v1;
    if (*(v1 + 16))
    {
      v4 = swift_task_alloc();
      v0[43] = v4;
      *v4 = v0;
      v4[1] = sub_10033B7B4;

      return sub_10034AE3C(v1);
    }

    else
    {

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "No notify records to publish", v10, 2u);
      }

      v11 = v0[1];

      return v11();
    }
  }

  else
  {
    v6 = v0[34];
    v0[34] = v6 + 1;
    v0[35] = v1;
    sub_10001F280(v0[32] + 40 * v6 + 72, (v0 + 2));
    v7 = swift_task_alloc();
    v0[36] = v7;
    *v7 = v0;
    v7[1] = sub_10033AAFC;

    return daemon.getter();
  }
}