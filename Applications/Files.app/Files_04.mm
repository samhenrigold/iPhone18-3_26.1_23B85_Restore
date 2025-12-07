double sub_10006C398(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v28 = a5;
  v29 = a6;
  v27 = a4;
  HIDWORD(v26) = a1;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a3, v10);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = BYTE4(v26);
  *(v18 + 24) = a2;
  (*(v11 + 32))(v18 + v14, v13, v10);
  v20 = v27;
  v19 = v28;
  *(v18 + v15) = v27;
  *(v18 + v16) = v19;
  v21 = v30;
  *(v18 + v17) = v29;
  v22 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v31;
  *v22 = v21;
  v22[1] = v23;

  v24 = v20;

  DOCRunInMainThread(_:)();

  return result;
}

uint64_t sub_10006C564(char a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, uint64_t, uint64_t, id))
{
  if ((a1 & 1) == 0)
  {
    v11 = [a4 options];
    swift_beginAccess();
    v12 = *(a5 + 16);
    swift_beginAccess();
    v13 = *(a6 + 16);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10003A72C(a3, v11, 0, v12, v13);
      swift_unknownObjectRelease();
    }
  }

  return (a7)(0, a2, a3, a4, a5, a6);
}

uint64_t sub_10006C650()
{
  v0 = URLQueryItem.name.getter();
  v2 = v1;
  if (v0 == DeepLinkComponents.QueryName.rawValue.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_10006C6EC()
{
  swift_unknownObjectWeakDestroy();
  sub_10006E4B8(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_10006C750@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100047C94(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_100047C94((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_100047C94(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100047C94(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100047C94((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_10006CB10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006CB30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10006CB30(void *result, int64_t a2, char a3, void *a4)
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

  sub_10000DB4C(&unk_100093C40, "&+");
  v10 = *(type metadata accessor for URL() - 8);
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
  v15 = *(type metadata accessor for URL() - 8);
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

uint64_t sub_10006CD08(uint64_t a1, void *a2, uint64_t a3, int a4, void *a5)
{
  v133 = a3;
  v119 = a2;
  v146 = a1;
  v143 = 0;
  v7 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v7 - 8);
  v129 = &v113 - v8;
  v9 = type metadata accessor for URL();
  v130 = *(v9 - 8);
  v131 = v9;
  __chkstk_darwin(v9);
  v117 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for DeepLinkComponents.Scheme();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v122 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for URLComponents();
  v141 = *(v145 - 8);
  v12 = __chkstk_darwin(v145);
  v132 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v13;
  __chkstk_darwin(v12);
  v138 = &v113 - v14;
  v15 = sub_10000DB4C(&qword_100094420, &qword_100074A80);
  __chkstk_darwin(v15 - 8);
  v137 = &v113 - v16;
  Name = type metadata accessor for DeepLinkComponents.QueryName();
  v18 = *(Name - 8);
  v19 = __chkstk_darwin(Name);
  v128 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v127 = &v113 - v22;
  v23 = __chkstk_darwin(v21);
  v121 = &v113 - v24;
  __chkstk_darwin(v23);
  v26 = &v113 - v25;
  v27 = sub_10000DB4C(&qword_100094418, &unk_100074A70);
  v28 = __chkstk_darwin(v27 - 8);
  v116 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v126 = &v113 - v31;
  v32 = __chkstk_darwin(v30);
  v120 = &v113 - v33;
  __chkstk_darwin(v32);
  v35 = &v113 - v34;
  v36 = type metadata accessor for URLQueryItem();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = __chkstk_darwin(v36);
  v113 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v39);
  v135 = &v113 - v41;
  __chkstk_darwin(v40);
  v136 = &v113 - v42;
  v43 = swift_allocObject();
  v118 = a4;
  *(v43 + 16) = a4;
  v142 = v43;
  *(v43 + 24) = a5;
  v44 = *(v18 + 104);
  v144 = Name;
  v134 = v44;
  v44(v26, enum case for DeepLinkComponents.QueryName.location(_:), Name);
  v115 = a5;
  v114 = a5;
  v45 = URLComponents.queryItems.getter();
  if (v45)
  {
    v46 = v45;
    __chkstk_darwin(v45);
    *(&v113 - 2) = v26;
    v47 = v143;
    sub_1000693EC(sub_10006E4E0, v46, v35);
    v143 = v47;
  }

  else
  {
    (*(v37 + 56))(v35, 1, 1, v36);
  }

  v48 = v37;
  v49 = v144;
  v139 = *(v18 + 8);
  v140 = v18 + 8;
  v139(v26, v144);
  v50 = *(v37 + 48);
  if (v50(v35, 1, v36) != 1)
  {
    v144 = *(v37 + 32);
    v62 = v136;
    v144(v136, v35, v36);
    v63 = type metadata accessor for TaskPriority();
    (*(*(v63 - 8) + 56))(v137, 1, 1, v63);
    (*(v37 + 16))(v135, v62, v36);
    v64 = v141;
    (*(v141 + 16))(v138, v146, v145);
    type metadata accessor for MainActor();
    v65 = v48;
    v66 = v133;

    v67 = static MainActor.shared.getter();
    v68 = (*(v65 + 80) + 40) & ~*(v65 + 80);
    v69 = (v38 + *(v64 + 80) + v68) & ~*(v64 + 80);
    v70 = (v124 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    *(v71 + 2) = v67;
    *(v71 + 3) = &protocol witness table for MainActor;
    *(v71 + 4) = v66;
    v72 = 1;
    v144(&v71[v68], v135, v36);
    (*(v64 + 32))(&v71[v69], v138, v145);
    v73 = &v71[v70];
    v74 = v142;
    *v73 = sub_10006DDCC;
    v73[1] = v74;
    sub_10006BCC0(0, 0, v137, &unk_100074A90, v71);

    (*(v65 + 8))(v136, v36);
    v146 = v74;
    goto LABEL_33;
  }

  v137 = v37;
  v138 = v50;
  v136 = v36;
  sub_100005A04(v35, &qword_100094418, &unk_100074A70);
  v51 = v132;
  (*(v141 + 16))(v132, v146, v145);
  v52 = v123;
  v53 = v122;
  v54 = v125;
  (*(v123 + 104))(v122, enum case for DeepLinkComponents.Scheme.file(_:), v125);
  DeepLinkComponents.Scheme.rawValue.getter();
  (*(v52 + 8))(v53, v54);
  URLComponents.scheme.setter();
  v55 = v121;
  v56 = v134;
  v134(v121, enum case for DeepLinkComponents.QueryName.open(_:), v49);
  v57 = URLComponents.queryItems.getter();
  if (v57)
  {
    v58 = v57;
    __chkstk_darwin(v57);
    *(&v113 - 2) = v55;
    v59 = v120;
    sub_1000693EC(sub_10006E4E0, v58, v120);

    v60 = v55;
    v61 = v136;
  }

  else
  {
    v59 = v120;
    v60 = v55;
    v61 = v136;
    (*(v137 + 56))(v120, 1, 1, v136);
  }

  v75 = v128;
  v139(v60, v49);
  v76 = (v138)(v59, 1, v61);
  sub_100005A04(v59, &qword_100094418, &unk_100074A70);
  LODWORD(v136) = v76;
  if (v76 != 1)
  {
    URLComponents.queryItems.setter();
  }

  v143 = swift_allocObject();
  *(v143 + 16) = 1;
  v146 = swift_allocObject();
  *(v146 + 16) = 1;
  v77 = v127;
  v78 = v144;
  v56(v127, enum case for DeepLinkComponents.QueryName.reveal(_:), v144);
  v79 = URLComponents.queryItems.getter();
  if (v79)
  {
    v80 = v79;
    __chkstk_darwin(v79);
    *(&v113 - 2) = v77;
    v81 = v126;
    sub_1000693EC(sub_10006E4E0, v80, v126);
    v82 = v81;
    v56 = v134;

    v78 = v144;
  }

  else
  {
    v82 = v126;
    (*(v137 + 56))(v126, 1, 1, v61);
  }

  v139(v77, v78);
  v83 = v138;
  v84 = (v138)(v82, 1, v61);
  v85 = v82;
  v86 = v84;
  sub_100005A04(v85, &qword_100094418, &unk_100074A70);
  if (v86 != 1)
  {
    *(v143 + 16) = 0;
    v56(v75, enum case for DeepLinkComponents.QueryName.showcontents(_:), v78);
    v87 = URLComponents.queryItems.getter();
    if (v87)
    {
      v88 = v87;
      __chkstk_darwin(v87);
      *(&v113 - 2) = v75;
      v89 = v116;
      sub_1000693EC(sub_10006E4E0, v88, v116);

      v78 = v144;
      v90 = v137;
    }

    else
    {
      v90 = v137;
      v89 = v116;
      (*(v137 + 56))(v116, 1, 1, v61);
    }

    v139(v75, v78);
    if ((v83)(v89, 1, v61) == 1)
    {
      sub_100005A04(v89, &qword_100094418, &unk_100074A70);
    }

    else
    {
      v91 = v113;
      (*(v90 + 32))(v113, v89, v61);
      v92 = URLQueryItem.value.getter();
      if (v93)
      {
        if (v92 == 0x65736C6166 && v93 == 0xE500000000000000)
        {

          (*(v137 + 8))(v91, v61);
        }

        else
        {
          v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

          (*(v137 + 8))(v91, v61);
          if ((v94 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        *(v146 + 16) = 0;
        goto LABEL_27;
      }

      (*(v90 + 8))(v91, v61);
    }

LABEL_27:
    URLComponents.queryItems.setter();
  }

  v95 = v129;
  URLComponents.url.getter();
  v97 = v130;
  v96 = v131;
  if ((*(v130 + 48))(v95, 1, v131) == 1)
  {
    sub_100005A04(v95, &qword_100093F50, &qword_100074090);
    v98 = type metadata accessor for DeepLinkComponents.DeepLinkError();
    sub_10006DDD8();
    swift_allocError();
    (*(*(v98 - 8) + 104))(v99, enum case for DeepLinkComponents.DeepLinkError.noURLToReveal(_:), v98);
    if (v118)
    {
      *(swift_allocObject() + 16) = v115;
      v100 = v114;
      DOCRunInMainThread(_:)();
    }

    (*(v141 + 8))(v51, v145);

    v72 = 0;
  }

  else
  {
    v101 = v136 != 1;
    v102 = v117;
    (*(v97 + 32))(v117, v95, v96);
    v103 = swift_allocObject();
    *(v103 + 16) = v133;
    *(v103 + 24) = v101;
    v104 = v119;
    v105 = v146;
    v106 = v142;
    v107 = v143;
    *(v103 + 32) = v119;
    *(v103 + 40) = v107;
    *(v103 + 48) = v105;
    *(v103 + 56) = sub_10006DDCC;
    *(v103 + 64) = v106;
    v108 = objc_opt_self();

    v109 = v104;

    v110 = [v108 defaultManager];
    v111 = swift_allocObject();
    *(v111 + 16) = sub_10006DE38;
    *(v111 + 24) = v103;

    FPItemManager.doc_fetchItem(for:completionHandler:)();

    (*(v97 + 8))(v102, v96);
    (*(v141 + 8))(v132, v145);

    v72 = 1;
  }

LABEL_33:

  return v72;
}

unint64_t sub_10006DDD8()
{
  result = qword_100094428;
  if (!qword_100094428)
  {
    type metadata accessor for DeepLinkComponents.DeepLinkError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094428);
  }

  return result;
}

uint64_t sub_10006DE58(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for URLQueryItem() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for URLComponents() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_10005DD38;

  return sub_10006B998(a1, v10, v11, v12, v1 + v6, v1 + v9, v14, v15);
}

uint64_t sub_10006DFF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10005DD38;

  return sub_10000B0A0(a1, v4);
}

uint64_t sub_10006E0BC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_10006B504(v2, v3, v4);
}

double sub_10006E120(int a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return sub_10006C398(a1, v11, v1 + v4, v8, v9, v10, v13, v14);
}

uint64_t sub_10006E1E8()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v3);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + 24);
  v11 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10006C564(v6, v10, v0 + v2, v7, v8, v9, v11);
}

void sub_10006E2B0()
{
  v1 = *(sub_10000DB4C(&qword_100094438, &unk_100074AB8) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for URLComponents() - 8);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_10006A360(v5, v6, v0 + v2, v7);
}

uint64_t sub_10006E38C(uint64_t a1)
{
  v3 = *(sub_10000DB4C(&qword_100094438, &unk_100074AB8) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for URLComponents() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10006A648(a1, v1 + v4, v1 + v7, v8);
}

void sub_10006E500(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v54 - v7;
  v9 = static DOCLog.UI.getter();
  v10 = static os_log_type_t.debug.getter();
  v56 = sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v11 = swift_allocObject();
  v54 = xmmword_1000736D0;
  *(v11 + 16) = xmmword_1000736D0;
  v12 = 0x80000001000768B0;
  *(v11 + 56) = &type metadata for String;
  v57 = sub_1000061E8();
  *(v11 + 64) = v57;
  *(v11 + 32) = 0xD00000000000001ALL;
  *(v11 + 40) = 0x80000001000768B0;
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  *(v11 + 96) = sub_100070698();
  *(v11 + 104) = sub_1000706E4();
  *(v11 + 72) = v15;
  v16 = v10;
  v17 = v3;
  v18 = v55;
  os_log(_:dso:log:type:_:)("%@: %@", 6, 2, &_mh_execute_header, v9, v16, v11);

  (*(v17 + 16))(v6, a1, v2);
  v19 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  sub_1000482AC(v8, v6);
  (*(v17 + 8))(v8, v2);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v21 = Strong;
  v22 = static DOCLog.UI.getter();
  v23 = static os_log_type_t.debug.getter();
  v24 = swift_allocObject();
  *(v24 + 16) = v54;
  v25 = v57;
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = v25;
  *(v24 + 32) = 0xD00000000000001ALL;
  *(v24 + 40) = 0x80000001000768B0;
  v26 = *(*&v18[v19] + 16);
  *(v24 + 96) = &type metadata for Int;
  *(v24 + 104) = &protocol witness table for Int;
  *(v24 + 72) = v26;
  os_log(_:dso:log:type:_:)("%@: updating existing import picker for %d urls", 47, 2, &_mh_execute_header, v22, v23, v24);

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    goto LABEL_11;
  }

  v28 = v27;
  v29 = *&v18[v19];
  v18 = *(v29 + 16);
  if (!v18)
  {
    v50 = v21;
    goto LABEL_10;
  }

  v12 = sub_10006FFE4(*(v29 + 16), 0);
  v30 = sub_1000700E0(aBlock, &v12[(*(v17 + 80) + 32) & ~*(v17 + 80)], v18, v29);
  v31 = aBlock[0];
  v56 = v59;
  v57 = v30;
  v32 = v21;

  sub_100052240(v31);
  if (v57 == v18)
  {
LABEL_10:
    v51 = objc_allocWithZone(DOCPickerContext);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v53 = [v51 initWithURLs:isa];

    [v28 setPickerContext:v53];
    v21 = v53;
    goto LABEL_11;
  }

  __break(1u);
LABEL_6:
  v33 = OBJC_IVAR____TtC5Files23DOCImportFileController_deferredFileURLImportTimer;
  v34 = *&v18[OBJC_IVAR____TtC5Files23DOCImportFileController_deferredFileURLImportTimer];
  if (v34)
  {
    v35 = v34;
    v36 = static DOCLog.UI.getter();
    v37 = static os_log_type_t.debug.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100073FE0;
    v39 = v57;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = v39;
    *(v38 + 32) = 0xD00000000000001ALL;
    *(v38 + 40) = v12;
    os_log(_:dso:log:type:_:)("%@: existing timer found, killing it", 36, 2, &_mh_execute_header, v36, v37, v38);

    [v35 invalidate];

    v40 = *&v18[v33];
    *&v18[v33] = 0;
  }

  v41 = static DOCLog.UI.getter();
  v42 = static os_log_type_t.debug.getter();
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100073FE0;
  v44 = v57;
  *(v43 + 56) = &type metadata for String;
  *(v43 + 64) = v44;
  *(v43 + 32) = 0xD00000000000001ALL;
  *(v43 + 40) = v12;
  os_log(_:dso:log:type:_:)("%@: starting a new timer", 24, 2, &_mh_execute_header, v41, v42, v43);

  v45 = objc_opt_self();
  v46 = swift_allocObject();
  *(v46 + 16) = v18;
  v59 = sub_10007073C;
  v60 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047A04;
  aBlock[3] = &unk_10008FB88;
  v47 = _Block_copy(aBlock);
  v48 = v18;

  v49 = [v45 scheduledTimerWithTimeInterval:0 repeats:v47 block:0.15];
  _Block_release(v47);
  v21 = *&v18[v33];
  *&v18[v33] = v49;
LABEL_11:
}

void sub_10006EB04(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  if (*(*(a2 + v3) + 16))
  {
    sub_10006EDE4();
  }
}

uint64_t sub_10006EB58@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v11 + 16))
  {

    URL.init(fileURLWithPath:)();

    URL.appendingPathComponent(_:)();
    (*(v3 + 8))(v5, v2);
    v12 = 0;
  }

  else
  {

    static Logger.Picker.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not locate documents directory", v15, 2u);
    }

    (*(v7 + 8))(v9, v6);
    v12 = 1;
  }

  return (*(v3 + 56))(a1, v12, 1, v2);
}

void sub_10006EDE4()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v41 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC5Files23DOCImportFileController_deferredFileURLImportTimer;
  [*(v1 + OBJC_IVAR____TtC5Files23DOCImportFileController_deferredFileURLImportTimer) invalidate];
  v6 = *(v1 + v5);
  *(v1 + v5) = 0;

  v7 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v8 + 16);
  v42 = v1;
  if (v9)
  {
    v39 = v2;
    v40 = v7;
    v10 = sub_10006FFE4(v9, 0);
    v11 = *(type metadata accessor for URL() - 8);
    v12 = sub_1000700E0(&v43, &v10[(*(v11 + 80) + 32) & ~*(v11 + 80)], v9, v8);
    v13 = v43;

    sub_100052240(v13);
    if (v12 != v9)
    {
      __break(1u);
      goto LABEL_13;
    }

    v1 = v42;
    v2 = v39;
    v7 = v40;
  }

  v14 = objc_opt_self();
  v15 = type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v14 configurationForExportingDocumentsToURLs:isa mode:2];

  [v17 setForPickingDocuments:1];
  [v17 setInProcess:1];
  [v17 setIsContentManaged:0];
  [v17 setSupportsRemovableFileProviders:1];
  UUID.init()();
  UUID.uuidString.getter();
  (*(v41 + 8))(v4, v2);
  v18 = String._bridgeToObjectiveC()();

  [v17 setSceneIdentifier:v18];

  v19 = static DOCLog.UI.getter();
  v20 = static os_log_type_t.debug.getter();
  sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000736D0;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_1000061E8();
  *(v21 + 32) = 0xD00000000000001FLL;
  *(v21 + 40) = 0x8000000100076880;
  v22 = *(*(v1 + v7) + 16);
  *(v21 + 96) = &type metadata for Int;
  *(v21 + 104) = &protocol witness table for Int;
  *(v21 + 72) = v22;
  os_log(_:dso:log:type:_:)("%@: showing modal import picker for %d urls", 43, 2, &_mh_execute_header, v19, v20, v21);

  v23 = *(v1 + v7);
  v24 = *(v23 + 16);
  if (!v24)
  {
    v29 = v17;
    goto LABEL_8;
  }

  v25 = sub_10006FFE4(*(v23 + 16), 0);
  v41 = v15;
  v26 = sub_1000700E0(&v43, &v25[(*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80)], v24, v23);
  v27 = v43;
  v28 = v17;

  sub_100052240(v27);
  if (v26 != v24)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v1 = v42;
LABEL_8:
  v30 = objc_allocWithZone(DOCPickerContext);
  v31 = Array._bridgeToObjectiveC()().super.isa;

  v32 = [v30 initWithURLs:v31];

  v33 = [objc_allocWithZone(DOCDocumentPickerViewController) initWithConfiguration:v17 context:v32];
  [v33 setPickerDelegate:v1];
  v34 = v33;
  [v34 setModalInPresentation:1];
  swift_unknownObjectWeakAssign();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = *(Strong + OBJC_IVAR____TtC5Files20BrowserSceneDelegate_viewController);
    v37 = v36;
    swift_unknownObjectRelease();
    if (v36)
    {
      v38 = v37;
      [v38 presentViewController:v34 animated:1 completion:0];

      v34 = v38;
    }
  }
}

double sub_10006F350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v93 = type metadata accessor for Logger();
  v91 = *(v93 - 8);
  v6 = __chkstk_darwin(v93);
  v94 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v79 - v8;
  v10 = sub_10000DB4C(&qword_100093F50, &qword_100074090);
  __chkstk_darwin(v10 - 8);
  v12 = v79 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v92 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = v79 - v18;
  __chkstk_darwin(v17);
  v21 = v79 - v20;
  sub_10006EB58(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100005A04(v12, &qword_100093F50, &qword_100074090);
  }

  else
  {
    v83 = a1;
    v85 = v14;
    (*(v14 + 32))(v21, v12, v13);
    v97 = objc_opt_self();
    v22 = [v97 defaultManager];
    v82 = v21;
    URL._bridgeToObjectiveC()(&v100);
    v24 = v23;
    type metadata accessor for URLResourceKey(0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v99[0] = 0;
    v26 = [v22 contentsOfDirectoryAtURL:v24 includingPropertiesForKeys:isa options:0 error:v99];

    v27 = v99[0];
    if (v26)
    {
      v80 = v3;
      v81 = a2;
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v27;

      v31 = *(v28 + 16);
      if (v31)
      {
        v96 = *(v85 + 16);
        v32 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v79[1] = v28;
        v33 = v28 + v32;
        v95 = *(v85 + 72);
        v98 = (v85 + 8);
        ++v91;
        *&v30 = 138412546;
        v84 = v30;
        v85 += 16;
        v90 = v19;
        do
        {
          v36 = v96;
          v96(v19, v33, v13);
          v37 = [v97 defaultManager];
          URL._bridgeToObjectiveC()(v38);
          v40 = v39;
          v99[0] = 0;
          v41 = [v37 removeItemAtURL:v39 error:v99];

          if (v41)
          {
            v34 = *v98;
            v35 = v99[0];
            v34(v19, v13);
          }

          else
          {
            v42 = v99[0];
            _convertNSErrorToError(_:)();

            swift_willThrow();
            v43 = v94;
            static Logger.Picker.getter();
            v44 = v92;
            v36(v92, v19, v13);
            swift_errorRetain();
            v45 = Logger.logObject.getter();
            v46 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v88 = v46;
              v48 = v47;
              v49 = swift_slowAlloc();
              v86 = v49;
              v89 = swift_slowAlloc();
              v99[0] = v89;
              *v48 = v84;
              v87 = v45;
              URL._bridgeToObjectiveC()(v50);
              v52 = v51;
              v34 = *v98;
              (*v98)(v44, v13);
              *(v48 + 4) = v52;
              *v49 = v52;
              *(v48 + 12) = 2080;
              v53 = _convertErrorToNSError(_:)();
              v54 = v13;
              v55 = [v53 localizedDescription];

              v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v58 = v57;

              v13 = v54;
              v59 = sub_100005D28(v56, v58, v99);
              v60 = v93;

              *(v48 + 14) = v59;
              v61 = v87;
              _os_log_impl(&_mh_execute_header, v87, v88, "Could not cleanup %@ in Inbox. Error: %s", v48, 0x16u);
              sub_100005A04(v86, &qword_1000937D0, &unk_1000743F0);

              sub_100034948(v89);

              (*v91)(v94, v60);
              v19 = v90;
              v34(v90, v54);
            }

            else
            {

              v34 = *v98;
              (*v98)(v44, v13);
              (*v91)(v43, v93);
              v19 = v90;
              v34(v90, v13);
            }
          }

          v33 += v95;
          --v31;
        }

        while (v31);
      }

      else
      {

        v34 = *(v85 + 8);
      }

      v34(v82, v13);
      a2 = v81;
      v3 = v80;
    }

    else
    {
      v62 = v99[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      static Logger.Picker.getter();
      swift_errorRetain();
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v99[0] = v97;
        *v65 = 136315138;
        v66 = _convertErrorToNSError(_:)();
        v67 = [v66 localizedDescription];

        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v98 = v13;
        v69 = v3;
        v71 = v70;

        v72 = sub_100005D28(v68, v71, v99);
        v3 = v69;

        *(v65 + 4) = v72;
        _os_log_impl(&_mh_execute_header, v63, v64, "Could not list Inbox. Error: %s", v65, 0xCu);
        sub_100034948(v97);

        v91[1](v9, v93);
        (*(v85 + 8))(v82, v98);
      }

      else
      {

        v91[1](v9, v93);
        (*(v85 + 8))(v82, v13);
      }
    }

    a1 = v83;
  }

  v73 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  *&v3[v73] = &_swiftEmptySetSingleton;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v76 = Strong;
    v77 = swift_allocObject();
    v77[2] = v3;
    v77[3] = a1;
    v77[4] = a2;
    v78 = v3;

    UIViewController.doc_dismiss(animated:includingPresented:completion:)();
  }

  return result;
}

id sub_10006FD84(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCImportFileController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006FE48(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000505E8(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10006FF24(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000505E8(&_swiftEmptyArrayStorage);

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_10006FFE4(uint64_t a1, uint64_t a2)
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

  sub_10000DB4C(&unk_100093C40, "&+");
  v4 = *(type metadata accessor for URL() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000700E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for URL();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

double sub_100070384(uint64_t a1)
{
  v3 = static DOCLog.UI.getter();
  v4 = static os_log_type_t.debug.getter();
  sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000736D0;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_1000061E8();
  *(v5 + 32) = 0xD000000000000028;
  *(v5 + 40) = 0x8000000100076820;
  v6 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  v7 = *(*&v1[v6] + 16);
  *(v5 + 96) = &type metadata for Int;
  *(v5 + 104) = &protocol witness table for Int;
  *(v5 + 72) = v7;
  os_log(_:dso:log:type:_:)("%@: user imported %d files from AirDrop", 39, 2, &_mh_execute_header, v3, v4, v5);

  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = a1;
  v9 = v1;

  sub_10006F350(sub_100070650, v8);

  return result;
}

double sub_1000704EC(uint64_t a1)
{
  v2 = static DOCLog.UI.getter();
  v3 = static os_log_type_t.debug.getter();
  sub_10000DB4C(&unk_100093B10, qword_1000749B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000736D0;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_1000061E8();
  *(v4 + 32) = 0xD00000000000001BLL;
  *(v4 + 40) = 0x80000001000767D0;
  v5 = OBJC_IVAR____TtC5Files23DOCImportFileController_fileURLsToImport;
  swift_beginAccess();
  v6 = *(*&v1[v5] + 16);
  *(v4 + 96) = &type metadata for Int;
  *(v4 + 104) = &protocol witness table for Int;
  *(v4 + 72) = v6;
  os_log(_:dso:log:type:_:)("%@: user cancelled importing %d files from AirDrop", 50, 2, &_mh_execute_header, v2, v3, v4);

  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = v1;
  sub_10006F350(sub_100070648, v7);

  return result;
}

uint64_t sub_100070658()
{
  v1 = *(v0 + 24);
  v2 = swift_unknownObjectWeakAssign();
  return v1(v2);
}

unint64_t sub_100070698()
{
  result = qword_100094510;
  if (!qword_100094510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100094510);
  }

  return result;
}

unint64_t sub_1000706E4()
{
  result = qword_100094518;
  if (!qword_100094518)
  {
    sub_100070698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094518);
  }

  return result;
}

unint64_t sub_100070744()
{
  sub_10000DB4C(&qword_100094520, &qword_100074B78);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100073FE0;
  v1 = type metadata accessor for DocumentManagerExecutablesIntentsPackage();
  result = sub_100070818();
  *(v0 + 32) = v1;
  *(v0 + 40) = result;
  qword_1000945F0 = v0;
  return result;
}

uint64_t sub_1000707AC()
{
  if (qword_100093400 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100070818()
{
  result = qword_100094528;
  if (!qword_100094528)
  {
    type metadata accessor for DocumentManagerExecutablesIntentsPackage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100094528);
  }

  return result;
}

Swift::String __swiftcall DOCLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = DOCLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName._countAndFlagsBits, tableName._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}