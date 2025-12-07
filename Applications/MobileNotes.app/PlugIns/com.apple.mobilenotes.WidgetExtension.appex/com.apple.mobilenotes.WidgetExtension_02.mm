void *sub_10003A23C(void *a1)
{
  v2 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v105 = &v95 - v6;
  v7 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v8 = __chkstk_darwin(v7 - 8);
  v122 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v95 - v11;
  __chkstk_darwin(v10);
  v104 = &v95 - v13;
  v103 = type metadata accessor for Note(0);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = [a1 managedObjectContext];
  if (!v95)
  {
    return 0;
  }

  v100 = v12;
  v16 = [a1 predicateForVisibleNotes];
  v121 = objc_opt_self();
  isa = [v121 sortDescriptorsForCurrentTypeIncludingPinnedNotes:0];
  if (!isa)
  {
    sub_10000D894(0, &qword_100097FF8, NSSortDescriptor_ptr);
    sub_10006B320();
    isa = sub_10006B310().super.isa;
  }

  v101 = v5;
  sub_10000D894(0, &qword_100097C80, ICNote_ptr);
  v18 = [swift_getObjCClassFromMetadata() ic_objectsMatchingPredicate:v16 sortDescriptors:isa relationshipKeyPathsForPrefetching:0 fetchLimit:16 context:v95];

  sub_10000D894(0, &qword_100097C88, NSManagedObject_ptr);
  v19 = sub_10006B320();

  v123 = &_swiftEmptyArrayStorage;
  v20 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    goto LABEL_76;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10006B4F0())
  {
    v22 = &_swiftEmptyArrayStorage;
    if (i)
    {
      v23 = 0;
      do
      {
        v24 = v23;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v25 = sub_10006B480();
          }

          else
          {
            if (v24 >= *(v20 + 16))
            {
              goto LABEL_73;
            }

            v25 = *(v19 + 8 * v24 + 32);
          }

          v26 = v25;
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            __break(1u);
LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v24;
          if (v23 == i)
          {
            goto LABEL_20;
          }
        }

        sub_10006B300();
        if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10006B330();
        }

        sub_10006B340();
        v22 = v123;
      }

      while (v23 != i);
    }

LABEL_20:

    v123 = &_swiftEmptyArrayStorage;
    v19 = v22 >> 62 ? sub_10006B4F0() : *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = &_swiftEmptyArrayStorage;
    if (!v19)
    {
      break;
    }

    v28 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v29 = sub_10006B480();
      }

      else
      {
        if (v28 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v29 = *(v22 + 8 * v28 + 32);
      }

      v30 = v29;
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v32 = [objc_opt_self() sharedWidget];
      v20 = [v32 hidesObject:v30];

      if (v20)
      {
      }

      else
      {
        sub_10006B4A0();
        v20 = *(v123 + 16);
        sub_10006B4D0();
        sub_10006B4E0();
        sub_10006B4B0();
      }

      ++v28;
      if (v31 == v19)
      {
        v33 = v123;
        v27 = &_swiftEmptyArrayStorage;
        goto LABEL_36;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    ;
  }

  v33 = &_swiftEmptyArrayStorage;
LABEL_36:

  if ((v33 & 0x8000000000000000) == 0 && (v33 & 0x4000000000000000) == 0)
  {
    v34 = *(v33 + 16);
    if (v34)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

  v34 = sub_10006B4F0();
  if (!v34)
  {
LABEL_79:

    return v27;
  }

LABEL_39:
  v123 = &_swiftEmptyArrayStorage;
  result = sub_100037FD8(0, v34 & ~(v34 >> 63), 0);
  if ((v34 & 0x8000000000000000) == 0)
  {
    v27 = v123;
    v97 = v33 & 0xC000000000000001;
    v36 = objc_opt_self();
    v37 = v33;
    v96 = v36;
    v38 = 0;
    v99 = v37;
    v98 = v34;
    do
    {
      v120 = v27;
      if (v97)
      {
        v39 = sub_10006B480();
      }

      else
      {
        v39 = *(v37 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v100;
      v42 = [v39 identifier];
      if (v42)
      {
        v43 = v42;
        v44 = sub_10006B290();
        v117 = v45;
        v118 = v44;
      }

      else
      {
        v117 = 0xE000000000000000;
        v118 = 0;
      }

      v46 = [v40 title];
      if (v46)
      {
        v47 = v46;
        v48 = sub_10006B290();
        v115 = v49;
        v116 = v48;
      }

      else
      {
        v115 = 0xE000000000000000;
        v116 = 0;
      }

      v50 = [v40 widgetInfoText];
      v51 = sub_10006B290();
      v113 = v52;
      v114 = v51;

      v53 = [v121 dateForCurrentSortTypeForNote:v40 folderNoteSortType:0];
      if (v53)
      {
        v54 = v53;
        sub_10006A540();

        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

      v56 = sub_10006A560();
      v57 = *(v56 - 8);
      v58 = *(v57 + 56);
      v58(v41, v55, 1, v56);
      v59 = v41;
      v60 = v104;
      sub_1000096C0(v59, v104, &qword_100097C70, &qword_100076A60);
      if ((*(v57 + 48))(v60, 1, v56) == 1)
      {
        sub_100009790(v60, &qword_100097C70, &qword_100076A60);
        v111 = 0xE000000000000000;
        v112 = 0;
      }

      else
      {
        v61 = sub_10006A530();
        v111 = v62;
        v112 = v61;
        (*(v57 + 8))(v60, v56);
      }

      v63 = v122;
      v64 = [v121 dateForCurrentSortTypeAccessibilityStringForNote:v40 folderNoteSortType:0];
      if (v64)
      {
        v65 = v64;
        v66 = sub_10006B290();
        v109 = v67;
        v110 = v66;
      }

      else
      {
        v109 = 0xE000000000000000;
        v110 = 0;
      }

      v108 = [v40 isSharedViaICloud];
      v68 = [v40 modificationDate];
      if (v68)
      {
        v69 = v68;
        sub_10006A540();

        v70 = 0;
      }

      else
      {
        v70 = 1;
      }

      v58(v63, v70, 1, v56);
      v71 = [v40 shareDescription];
      if (v71)
      {
        v72 = v71;
        v73 = sub_10006B290();
        v106 = v74;
        v107 = v73;
      }

      else
      {
        v106 = 0;
        v107 = 0;
      }

      v75 = v101;
      v76 = [v96 appURLForNote:v40];
      v119 = v38;
      if (v76)
      {
        v77 = v76;
        sub_10006A4F0();

        v78 = 0;
      }

      else
      {
        v78 = 1;
      }

      v79 = sub_10006A520();
      (*(*(v79 - 8) + 56))(v75, v78, 1, v79);
      v80 = v105;
      sub_1000096C0(v75, v105, &qword_100096B30, &qword_10006F548);
      v81 = sub_1000301BC(v40);
      v82 = sub_1000306D4(v40, 10);
      v83 = sub_1000306D4(v40, 11);
      v84 = [v40 ic_hasLightBackground];
      v85 = v117;
      *v15 = v118;
      *(v15 + 1) = v85;
      v86 = v115;
      *(v15 + 2) = v116;
      *(v15 + 3) = v86;
      v87 = v113;
      *(v15 + 4) = v114;
      *(v15 + 5) = v87;
      v88 = v111;
      *(v15 + 6) = v112;
      *(v15 + 7) = v88;
      v89 = v109;
      *(v15 + 8) = v110;
      *(v15 + 9) = v89;
      v15[80] = v108;
      v90 = v103;
      sub_1000096C0(v122, &v15[*(v103 + 40)], &qword_100097C70, &qword_100076A60);
      v91 = &v15[v90[11]];
      v92 = v106;
      *v91 = v107;
      *(v91 + 1) = v92;
      sub_1000096C0(v80, &v15[v90[12]], &qword_100096B30, &qword_10006F548);
      *&v15[v90[13]] = v81;
      *&v15[v90[14]] = &_swiftEmptyArrayStorage;
      *&v15[v90[15]] = v82;
      *&v15[v90[16]] = v83;
      v15[v90[17]] = v84;
      [v40 turnAttachmentsIntoFaults];

      v27 = v120;
      v123 = v120;
      v94 = v120[2];
      v93 = v120[3];
      if (v94 >= v93 >> 1)
      {
        sub_100037FD8((v93 > 1), v94 + 1, 1);
        v27 = v123;
      }

      v38 = v119 + 1;
      v27[2] = v94 + 1;
      sub_10003AF30(v15, v27 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v94, type metadata accessor for Note);
      v37 = v99;
    }

    while (v98 != v38);

    return v27;
  }

  __break(1u);
  return result;
}

_OWORD *sub_10003AD74(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10003AD84()
{
  v1 = sub_10006B200();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003AE50(uint64_t a1)
{
  sub_10006B200();
  v3 = *(v1 + 16);

  return sub_1000354C0(a1, v3);
}

uint64_t sub_10003AEC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003AF30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003AF98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003B00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_10003B144(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100007DF0(&qword_100096A58, &unk_100075C30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for NoteWidgetView(uint64_t a1)
{
  result = qword_100098070;
  if (!qword_100098070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B2B4(uint64_t a1)
{
  sub_10003B3B8(319, &qword_1000969B8, type metadata accessor for Note, type metadata accessor for ObjectStates);
  if (v1 <= 0x3F)
  {
    sub_10003B3B8(319, &unk_100096AE0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10003B41C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003B3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10003B41C()
{
  if (!qword_100096AD0)
  {
    v0 = sub_10006A750();
    if (!v1)
    {
      atomic_store(v0, &qword_100096AD0);
    }
  }
}

uint64_t sub_10003B488()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NoteWidgetView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10006B3B0();
    v7 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10003B5E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v108 = a1;
  v3 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v4 = __chkstk_darwin(v3 - 8);
  v106 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v107 = &v79 - v6;
  v7 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v8 = __chkstk_darwin(v7 - 8);
  v105 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v102 = &v79 - v11;
  __chkstk_darwin(v10);
  v101 = &v79 - v12;
  v91 = type metadata accessor for Note(0);
  v100 = *(v91 - 8);
  v13 = __chkstk_darwin(v91);
  v82 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v81 = &v79 - v16;
  __chkstk_darwin(v15);
  v80 = &v79 - v17;
  v109 = sub_10006AAB0();
  v99 = *(v109 - 8);
  __chkstk_darwin(v109);
  v96 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_10006AB00();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v90 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10006A9D0();
  v84 = *(v87 - 8);
  __chkstk_darwin(v87);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10006ABF0();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100007DF0(&qword_1000980B0, &qword_100075660);
  __chkstk_darwin(v26);
  v28 = &v79 - v27;
  v86 = sub_100007DF0(&qword_1000980B8, &qword_100075668);
  v88 = *(v86 - 8);
  __chkstk_darwin(v86);
  v30 = &v79 - v29;
  v85 = sub_100007DF0(&qword_1000980C0, &qword_100075670);
  v89 = *(v85 - 8);
  __chkstk_darwin(v85);
  v32 = &v79 - v31;
  v95 = sub_100007DF0(&qword_1000980C8, &qword_100075678);
  v93 = *(v95 - 8);
  __chkstk_darwin(v95);
  v83 = &v79 - v33;
  v111 = sub_100007DF0(&qword_1000980D0, &qword_100075680);
  v34 = __chkstk_darwin(v111);
  v97 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v98 = &v79 - v36;
  v37 = sub_100007DF0(&qword_1000980D8, &qword_100075688);
  v103 = *(v37 - 8);
  v104 = v37;
  __chkstk_darwin(v37);
  v110 = &v79 - v38;
  *v28 = sub_10006A9F0();
  *(v28 + 1) = 0;
  v28[16] = 0;
  v39 = sub_100007DF0(&qword_1000980E0, &qword_100075690);
  sub_10003C46C(v2, &v28[*(v39 + 44)]);
  (*(v23 + 104))(v25, enum case for Font.TextStyle.footnote(_:), v22);
  v40 = sub_10006AB90();
  (*(v23 + 8))(v25, v22);
  KeyPath = swift_getKeyPath();
  v42 = &v28[*(v26 + 36)];
  *v42 = KeyPath;
  v42[1] = v40;
  v43 = v84;
  v44 = v87;
  (*(v84 + 104))(v21, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v87);
  v45 = sub_10003EEFC();
  sub_10006ACD0();
  (*(v43 + 8))(v21, v44);
  sub_100009790(v28, &qword_1000980B0, &qword_100075660);
  v46 = v90;
  sub_10006AAF0();
  sub_10006AFB0();
  v112 = v26;
  v113 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v85;
  v49 = v86;
  sub_10006AD80();
  (*(v92 + 8))(v46, v94);
  (*(v88 + 8))(v30, v49);
  v50 = v96;
  sub_10006AA90();
  v112 = v49;
  v113 = &type metadata for Color;
  v114 = OpaqueTypeConformance2;
  v115 = &protocol witness table for Color;
  v51 = v83;
  v52 = swift_getOpaqueTypeConformance2();
  sub_10006AD90();
  v53 = v101;
  (*(v99 + 8))(v50, v109);
  v54 = v32;
  v55 = v100;
  (*(v89 + 8))(v54, v48);
  v109 = v2;
  sub_100009728(v2, v53, &qword_100096948, &qword_1000751E0);
  v56 = *(v55 + 48);
  v57 = v91;
  if (!v56(v53, 2))
  {
    v58 = v51;
    v59 = v80;
    sub_10003F5BC(v53, v80, type metadata accessor for Note);
    sub_100065AC4();
    v60 = v59;
    v51 = v58;
    sub_100030A4C(v60);
  }

  v112 = v48;
  v113 = v52;
  swift_getOpaqueTypeConformance2();
  v61 = v97;
  v62 = v95;
  sub_10006AD30();

  (*(v93 + 8))(v51, v62);
  v63 = v102;
  sub_100009728(v109, v102, &qword_100096948, &qword_1000751E0);
  if (!(v56)(v63, 2, v57))
  {
    v64 = v81;
    sub_10003F5BC(v63, v81, type metadata accessor for Note);

    sub_100030A4C(v64);
  }

  v65 = v98;
  sub_10006A7D0();

  sub_100009790(v61, &qword_1000980D0, &qword_100075680);
  v66 = sub_10003EFE0();
  sub_10006AD60();
  sub_100009790(v65, &qword_1000980D0, &qword_100075680);
  v67 = v105;
  sub_100009728(v109, v105, &qword_100096948, &qword_1000751E0);
  if ((v56)(v67, 2, v57))
  {
    v68 = sub_10006A520();
    v69 = v106;
    (*(*(v68 - 8) + 56))(v106, 1, 1, v68);
    v70 = v107;
  }

  else
  {
    v71 = v67;
    v72 = v82;
    sub_10003F5BC(v71, v82, type metadata accessor for Note);
    v69 = v106;
    sub_100009728(v72 + *(v57 + 48), v106, &qword_100096B30, &qword_10006F548);
    sub_100030A4C(v72);
    v68 = sub_10006A520();
    v73 = *(v68 - 8);
    v74 = (*(v73 + 48))(v69, 1, v68);
    v70 = v107;
    if (v74 != 1)
    {
      (*(v73 + 32))(v107, v69, v68);
      goto LABEL_11;
    }
  }

  v75 = [objc_opt_self() appURLForFolderList];
  sub_10006A4F0();

  sub_10006A520();
  if ((*(*(v68 - 8) + 48))(v69, 1, v68) != 1)
  {
    sub_100009790(v69, &qword_100096B30, &qword_10006F548);
  }

LABEL_11:
  sub_10006A520();
  (*(*(v68 - 8) + 56))(v70, 0, 1, v68);
  v112 = v111;
  v113 = v66;
  swift_getOpaqueTypeConformance2();
  v76 = v104;
  v77 = v110;
  sub_10006ACF0();
  sub_100009790(v70, &qword_100096B30, &qword_10006F548);
  return (*(v103 + 8))(v77, v76);
}

uint64_t sub_10003C46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
  __chkstk_darwin(v3 - 8);
  v5 = (&KeyPath - v4);
  v6 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v6 - 8);
  v8 = &KeyPath - v7;
  v9 = type metadata accessor for WidgetHeader(0);
  v10 = *(v9 - 1);
  v11 = __chkstk_darwin(v9);
  v13 = (&KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v61 = &KeyPath - v14;
  v15 = sub_100007DF0(&qword_100098108, &qword_1000756D8);
  v16 = __chkstk_darwin(v15 - 8);
  v63 = &KeyPath - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &KeyPath - v18;
  v62 = a1;
  if (sub_10003B488())
  {
    v20 = sub_10006A520();
    (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
    KeyPath = swift_getKeyPath();
    *v5 = swift_getKeyPath();
    sub_100007DF0(&qword_100096A40, &unk_10006F460);
    swift_storeEnumTagMultiPayload();
    v21 = objc_opt_self();
    v22 = -17.0;
    if ([v21 ic_isiPad])
    {
      v23 = -19.0;
    }

    else
    {
      v23 = -17.0;
    }

    if ([v21 ic_isiPad])
    {
      v22 = -18.0;
    }

    *v13 = swift_getKeyPath();
    sub_100007DF0(&qword_100098128, &qword_100075CE0);
    swift_storeEnumTagMultiPayload();
    v24 = v9[5];
    *(v13 + v24) = swift_getKeyPath();
    sub_100007DF0(&qword_100096A38, &qword_1000757C0);
    swift_storeEnumTagMultiPayload();
    v25 = v13 + v9[6];
    *v25 = KeyPath;
    v25[8] = 0;
    sub_1000096C0(v5, v13 + v9[7], &qword_100096A58, &unk_100075C30);
    sub_1000096C0(v8, v13 + v9[8], &qword_100096B30, &qword_10006F548);
    *(v13 + v9[9]) = 0;
    *(v13 + v9[10]) = xmmword_1000755D0;
    *(v13 + v9[11]) = 0;
    v26 = _UISolariumEnabled();
    v27 = 2.0;
    if (!v26)
    {
      v27 = 0.0;
    }

    *(v13 + v9[12]) = v27;
    v28 = _UISolariumEnabled();
    v29 = 4.0;
    if (v28)
    {
      v29 = 5.0;
    }

    *(v13 + v9[13]) = v29;
    v30 = _UISolariumEnabled();
    v31 = 0.125;
    if (!v30)
    {
      v31 = 0.0;
    }

    *(v13 + v9[14]) = v31;
    v32 = _UISolariumEnabled();
    v33 = 0.31;
    if (v32)
    {
      v33 = 0.25;
    }

    *(v13 + v9[15]) = v33;
    v34 = _UISolariumEnabled();
    v35 = -1.5;
    if (!v34)
    {
      v35 = 0.0;
    }

    *(v13 + v9[16]) = v35;
    *(v13 + v9[17]) = v23;
    *(v13 + v9[18]) = v22;
    v36 = v61;
    sub_10003F5BC(v13, v61, type metadata accessor for WidgetHeader);
    sub_10003F5BC(v36, v19, type metadata accessor for WidgetHeader);
    v37 = v19;
    (*(v10 + 56))(v19, 0, 1, v9);
  }

  else
  {
    v37 = v19;
    (*(v10 + 56))(v19, 1, 1, v9);
  }

  v61 = sub_10006A9F0();
  v79 = 0;
  sub_10003CC74(v62, &v69);
  v85 = *&v70[48];
  v86 = *&v70[64];
  v87 = *&v70[80];
  v88 = v70[96];
  v81 = v69;
  v82 = *v70;
  v83 = *&v70[16];
  v84 = *&v70[32];
  v89[0] = v69;
  v89[1] = *v70;
  v89[2] = *&v70[16];
  v89[3] = *&v70[32];
  v89[4] = *&v70[48];
  v89[5] = *&v70[64];
  v89[6] = *&v70[80];
  v90 = v70[96];
  sub_100009728(&v81, v65, &qword_100098110, &qword_1000756E0);
  sub_100009790(v89, &qword_100098110, &qword_1000756E0);
  *&v78[71] = v85;
  *&v78[87] = v86;
  *&v78[103] = v87;
  v78[119] = v88;
  *&v78[7] = v81;
  *&v78[23] = v82;
  *&v78[39] = v83;
  *&v78[55] = v84;
  v38 = v79;
  v39 = sub_10006AB40();
  if (sub_10003B488())
  {
    _UISolariumEnabled();
  }

  sub_10006A720();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v80 = 0;
  v48 = v63;
  sub_100009728(v37, v63, &qword_100098108, &qword_1000756D8);
  v49 = v64;
  sub_100009728(v48, v64, &qword_100098108, &qword_1000756D8);
  v50 = *(sub_100007DF0(&qword_100098118, &qword_1000756E8) + 48);
  *(&v66[4] + 1) = *&v78[64];
  *(&v66[5] + 1) = *&v78[80];
  *(&v66[6] + 1) = *&v78[96];
  *(&v66[1] + 1) = *&v78[16];
  *(&v66[2] + 1) = *&v78[32];
  v51 = (v49 + v50);
  v52 = v61;
  v65[0] = v61;
  v65[1] = 0;
  LOBYTE(v66[0]) = v38;
  *(&v66[7] + 1) = *&v78[112];
  *(&v66[3] + 1) = *&v78[48];
  *(v66 + 1) = *v78;
  LOBYTE(v67) = v39;
  *(&v67 + 1) = v41;
  *&v68[0] = v43;
  *(&v68[0] + 1) = v45;
  *&v68[1] = v47;
  BYTE8(v68[1]) = 0;
  v53 = v66[0];
  *v51 = v61;
  v51[1] = v53;
  v54 = v66[6];
  v51[6] = v66[5];
  v51[7] = v54;
  v55 = v66[4];
  v51[4] = v66[3];
  v51[5] = v55;
  v56 = v66[2];
  v51[2] = v66[1];
  v51[3] = v56;
  *(v51 + 169) = *(v68 + 9);
  v57 = v68[0];
  v58 = v67;
  v51[8] = v66[7];
  v51[9] = v58;
  v51[10] = v57;
  sub_100009728(v65, &v69, &qword_100098120, &qword_1000756F0);
  sub_100009790(v37, &qword_100098108, &qword_1000756D8);
  *&v70[65] = *&v78[64];
  *&v70[81] = *&v78[80];
  *&v70[97] = *&v78[96];
  *&v70[1] = *v78;
  *&v70[17] = *&v78[16];
  *&v70[33] = *&v78[32];
  v69 = v52;
  v70[0] = v38;
  v71 = *&v78[112];
  *&v70[49] = *&v78[48];
  v72 = v39;
  v73 = v41;
  v74 = v43;
  v75 = v45;
  v76 = v47;
  v77 = 0;
  sub_100009790(&v69, &qword_100098120, &qword_1000756F0);
  return sub_100009790(v48, &qword_100098108, &qword_1000756D8);
}

double sub_10003CC74@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoteWidgetView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22[-v9];
  sub_100009728(a1, &v22[-v9], &qword_100096948, &qword_1000751E0);
  v11 = type metadata accessor for Note(0);
  v12 = (*(*(v11 - 8) + 48))(v10, 2, v11);
  if (!v12)
  {
    sub_100009790(v10, &qword_100096948, &qword_1000751E0);
    goto LABEL_6;
  }

  if (v12 != 1)
  {
LABEL_6:
    sub_10003FA70(a1, &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NoteWidgetView);
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    sub_10003F5BC(v7, v14 + v13, type metadata accessor for NoteWidgetView);
    v15 = sub_10006A970();
    LOBYTE(v29) = 0;
    sub_10003EA7C(a1, v24);
    *&v49[7] = v24[0];
    *&v49[23] = v24[1];
    *&v49[39] = v24[2];
    *&v49[55] = v25;
    v26[0] = v15;
    v26[1] = 0;
    LOBYTE(v27[0]) = v29;
    *(v27 + 1) = *v49;
    *(&v27[1] + 1) = *&v49[16];
    *(&v27[2] + 1) = *&v49[32];
    v27[3] = *&v49[47];
    v46 = v27[2];
    v47 = *&v49[47];
    v43 = v15;
    v44 = v27[0];
    v45 = v27[1];
    v40 = v27[2];
    v41 = *&v49[47];
    v39 = v27[1];
    v37 = v15;
    v38 = v27[0];
    v23 = 0;
    *&v22[7] = v15;
    *&v22[71] = *&v49[47];
    *&v22[55] = v27[2];
    *&v22[39] = v27[1];
    *&v22[23] = v27[0];

    sub_100009728(v26, v49, &qword_100098188, &qword_1000757F8);

    sub_100009728(&v37, v49, &qword_100098188, &qword_1000757F8);
    sub_100009790(&v43, &qword_100098188, &qword_1000757F8);

    v28 = 0;
    *&v49[57] = *&v22[32];
    *&v49[73] = *&v22[48];
    *&v49[89] = *&v22[64];
    *&v49[25] = *v22;
    *v49 = sub_10003F624;
    *&v49[8] = v14;
    *&v49[16] = 0x4000000000000000;
    v49[24] = 0;
    *&v49[104] = *&v22[79];
    *&v49[41] = *&v22[16];
    v50 = 0;
    sub_100007DF0(&qword_100098168, &qword_1000757E8);
    sub_100007DF0(&qword_100098170, &qword_1000757F0);
    sub_1000095F4(&qword_100098178, &qword_100098168, &qword_1000757E8, &protocol conformance descriptor for TupleView<A>);
    sub_10003F234();
    sub_10006AA50();
    sub_100009790(v26, &qword_100098188, &qword_1000757F8);

    *&v49[64] = v33;
    *&v49[80] = v34[0];
    *&v49[96] = v34[1];
    v50 = v35;
    *v49 = v29;
    *&v49[16] = v30;
    *&v49[32] = v31;
    *&v49[48] = v32;
    goto LABEL_9;
  }

  if (sub_10003B488())
  {
    sub_10003D350(v49);
    LOBYTE(v29) = v49[16];
    LOBYTE(v37) = v49[40];
    LOBYTE(v26[0]) = 0;
    v49[105] = 0;
  }

  else
  {
    v16 = sub_10006A9F0();
    LOBYTE(v26[0]) = 1;
    sub_10003D490(v49);
    v39 = *&v49[32];
    v40 = *&v49[48];
    v41 = *&v49[64];
    v42 = v49[80];
    v37 = *v49;
    v38 = *&v49[16];
    LOBYTE(v34[0]) = v49[80];
    v31 = *&v49[32];
    v32 = *&v49[48];
    v33 = *&v49[64];
    v29 = *v49;
    v30 = *&v49[16];
    sub_100009728(&v37, &v43, &qword_100098130, &qword_1000757C8);
    sub_100009790(&v29, &qword_100098130, &qword_1000757C8);
    *&v36[39] = v39;
    *&v36[55] = v40;
    *&v36[71] = v41;
    v36[87] = v42;
    *&v36[7] = v37;
    *&v36[23] = v38;
    *&v49[49] = *&v36[32];
    *&v49[65] = *&v36[48];
    *&v49[81] = *&v36[64];
    *&v49[17] = *v36;
    v17 = v26[0];
    LOBYTE(v26[0]) = 1;
    *v49 = v16;
    v49[16] = v17;
    *&v49[97] = *&v36[80];
    *&v49[33] = *&v36[16];
    v49[105] = 1;
  }

  sub_100007DF0(&qword_100098138, &qword_1000757D0);
  sub_100007DF0(&qword_100098140, &qword_1000757D8);
  sub_10003F184();
  sub_1000095F4(&qword_100098160, &qword_100098140, &qword_1000757D8, &protocol conformance descriptor for VStack<A>);
  sub_10006AA50();
  v33 = v47;
  v34[0] = v48[0];
  *(v34 + 10) = *(v48 + 10);
  v29 = v43;
  v30 = v44;
  v31 = v45;
  v32 = v46;
  LOBYTE(v37) = 1;
  v35 = 1;
  sub_100007DF0(&qword_100098168, &qword_1000757E8);
  sub_100007DF0(&qword_100098170, &qword_1000757F0);
  sub_1000095F4(&qword_100098178, &qword_100098168, &qword_1000757E8, &protocol conformance descriptor for TupleView<A>);
  sub_10003F234();
  sub_10006AA50();
LABEL_9:
  v18 = *&v49[80];
  *(a2 + 64) = *&v49[64];
  *(a2 + 80) = v18;
  *(a2 + 96) = *&v49[96];
  *(a2 + 112) = v50;
  v19 = *&v49[16];
  *a2 = *v49;
  *(a2 + 16) = v19;
  result = *&v49[32];
  v21 = *&v49[48];
  *(a2 + 32) = *&v49[32];
  *(a2 + 48) = v21;
  return result;
}

uint64_t sub_10003D328@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006ADA0();
  *a1 = result;
  return result;
}

double sub_10003D350@<D0>(uint64_t a1@<X8>)
{
  sub_10006A980();
  v2 = sub_10006AC90();
  v4 = v3;
  v6 = v5;
  sub_10006AA80();
  v7 = sub_10006AC70();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10000832C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_10000833C(v7, v9, v11 & 1);

  sub_10000832C(v7, v9, v11 & 1);

  return result;
}

double sub_10003D490@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_10006A970();
  sub_10003D560(v11);
  v4 = v11[0];
  v5 = v11[1];
  v6 = v12;
  v8 = v13;
  v7 = v14;
  v9 = v15;
  LOBYTE(v11[0]) = 1;
  v17 = v12;
  v16 = v15;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v8;
  *(a2 + 56) = v7;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  sub_10000833C(v4, v5, v6);

  sub_10000832C(v4, v5, v6);

  return result;
}

double sub_10003D560@<D0>(uint64_t a1@<X8>)
{
  sub_10006A980();
  v2 = sub_10006AC90();
  v4 = v3;
  v6 = v5;
  if (sub_10003B488())
  {
    sub_10006AE50();
  }

  else
  {
    sub_10006AE20();
  }

  v7 = sub_10006AC70();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_10000832C(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_10000833C(v7, v9, v11 & 1);

  sub_10000832C(v7, v9, v11 & 1);

  return result;
}

uint64_t sub_10003D6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10006A9F0();
  *(a3 + 8) = 0x4000000000000000;
  *(a3 + 16) = 0;
  v6 = sub_100007DF0(&qword_100098190, &qword_100075830);
  return sub_10003D728(a2, a1, a3 + *(v6 + 44));
}

uint64_t sub_10003D728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a2;
  v134 = a3;
  v122 = type metadata accessor for NoteWidgetView(0);
  v102 = *(v122 - 8);
  __chkstk_darwin(v122);
  v104 = v4;
  v106 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10006A7B0();
  v103 = *(v105 - 8);
  __chkstk_darwin(v105);
  v99 = v5;
  v101 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_100007DF0(&qword_100098198, &qword_100075838);
  __chkstk_darwin(v129);
  v132 = (&v95 - v6);
  v110 = sub_10006A700();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100007DF0(&qword_1000981A0, &qword_100075840);
  v8 = __chkstk_darwin(v130);
  v107 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v111 = &v95 - v10;
  v11 = sub_100007DF0(&qword_1000981A8, &qword_100075848);
  v12 = __chkstk_darwin(v11 - 8);
  v133 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v131 = &v95 - v14;
  v15 = sub_10006ABF0();
  v125 = *(v15 - 8);
  v126 = v15;
  __chkstk_darwin(v15);
  v124 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v18 = __chkstk_darwin(v17 - 8);
  v127 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v95 - v21;
  __chkstk_darwin(v20);
  v24 = &v95 - v23;
  v25 = type metadata accessor for Note(0);
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v98 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v112 = &v95 - v30;
  v97 = v31;
  __chkstk_darwin(v29);
  v33 = &v95 - v32;
  v116 = sub_100007DF0(&qword_1000981B0, &unk_100075850);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v95 - v34;
  v113 = sub_100007DF0(&qword_1000981B8, &unk_1000767A0);
  __chkstk_darwin(v113);
  v36 = &v95 - v35;
  v117 = sub_100007DF0(&qword_1000981C0, &unk_100075860);
  __chkstk_darwin(v117);
  v38 = &v95 - v37;
  v121 = sub_100007DF0(&qword_1000981C8, &qword_1000767B0);
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v119 = &v95 - v39;
  v118 = sub_100007DF0(&qword_1000981D0, &qword_100075870);
  v40 = __chkstk_darwin(v118);
  v128 = &v95 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v44 = &v95 - v43;
  __chkstk_darwin(v42);
  v135 = &v95 - v45;
  sub_100009728(a1, v24, &qword_100096948, &qword_1000751E0);
  v96 = v26;
  v136 = *(v26 + 48);
  if (v136(v24, 2, v25))
  {
    v46 = sub_10006B2D0();
    v48 = v47;
  }

  else
  {
    sub_10003F5BC(v24, v33, type metadata accessor for Note);
    v46 = *(v33 + 2);
    v48 = *(v33 + 3);

    sub_100030A4C(v33);
  }

  sub_100009728(a1, v22, &qword_100096948, &qword_1000751E0);
  v49 = v136(v22, 2, v25);
  v123 = v25;
  if (v49)
  {
    v137 = sub_10006AC30();
    v50 = sub_10006AF20();
  }

  else
  {
    v137 = v46;
    v138 = v48;
    LOBYTE(v139) = 0;
    v140 = &_swiftEmptyArrayStorage;
    v50 = sub_10006AF20();
    sub_100009790(v22, &qword_100096948, &qword_1000751E0);
  }

  v51 = *(a1 + *(v122 + 28));
  KeyPath = swift_getKeyPath();
  v137 = v50;
  v138 = KeyPath;
  v139 = v51;
  LOBYTE(v140) = 0;
  sub_100007DF0(&qword_1000981D8, &qword_100075878);
  sub_100040118(&qword_1000981E0, &qword_1000981D8, &qword_100075878);
  v53 = v114;
  sub_10006AD70();

  if (sub_10003B488())
  {
    v54 = sub_10006AE50();
  }

  else
  {
    v55 = [objc_opt_self() ICTintColor];
    v54 = sub_10006ADD0();
  }

  v56 = v54;
  v57 = v117;
  (*(v115 + 32))(v36, v53, v116);
  *&v36[*(v113 + 36)] = v56;
  sub_1000096C0(v36, v38, &qword_1000981B8, &unk_1000767A0);
  *&v38[*(v57 + 36)] = 0x3FF0000000000000;
  if (sub_10003B488())
  {
    sub_10006ABD0();
  }

  else
  {
    sub_10006ABE0();
  }

  sub_10003F76C();
  v58 = v119;
  sub_10006AD20();
  sub_100009790(v38, &qword_1000981C0, &unk_100075860);
  v59 = sub_10003B488();
  v61 = v124;
  v60 = v125;
  v62 = &enum case for Font.TextStyle.caption(_:);
  if ((v59 & 1) == 0)
  {
    v62 = &enum case for Font.TextStyle.body(_:);
  }

  v63 = v126;
  (*(v125 + 104))(v124, *v62, v126);
  v64 = sub_10006AB90();
  (*(v60 + 8))(v61, v63);
  v65 = swift_getKeyPath();
  (*(v120 + 32))(v44, v58, v121);
  v66 = &v44[*(v118 + 36)];
  *v66 = v65;
  v66[1] = v64;
  v67 = v44;
  v68 = v135;
  sub_1000096C0(v67, v135, &qword_1000981D0, &qword_100075870);
  v69 = v127;
  sub_100009728(a1, v127, &qword_100096948, &qword_1000751E0);
  if (v136(v69, 2, v123))
  {
    sub_100009790(v69, &qword_100096948, &qword_1000751E0);
    v70 = v108;
    sub_10006A6F0();
    v71 = sub_10003B488();
    v72 = v131;
    if (v71)
    {
      v73 = sub_10006AE50();
    }

    else
    {
      v73 = sub_10006AE20();
    }

    v87 = v73;
    v88 = v107;
    (*(v109 + 32))(v107, v70, v110);
    *(v88 + *(v130 + 36)) = v87;
    v89 = v111;
    sub_1000096C0(v88, v111, &qword_1000981A0, &qword_100075840);
    sub_100009728(v89, v132, &qword_1000981A0, &qword_100075840);
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100098218, &qword_100075898);
    sub_1000095F4(&qword_100098220, &qword_100098218, &qword_100075898, &protocol conformance descriptor for GeometryReader<A>);
    sub_10003F940();
    sub_10006AA50();
    sub_100009790(v89, &qword_1000981A0, &qword_100075840);
  }

  else
  {
    v74 = v69;
    v75 = v112;
    sub_10003F5BC(v74, v112, type metadata accessor for Note);
    v76 = v103;
    v77 = v101;
    v78 = v105;
    (*(v103 + 16))(v101, v100, v105);
    v79 = v106;
    sub_10003FA70(a1, v106, type metadata accessor for NoteWidgetView);
    v80 = v98;
    sub_10003FA70(v75, v98, type metadata accessor for Note);
    v81 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v82 = (v99 + *(v102 + 80) + v81) & ~*(v102 + 80);
    v83 = (v104 + *(v96 + 80) + v82) & ~*(v96 + 80);
    v84 = swift_allocObject();
    v85 = v77;
    v68 = v135;
    (*(v76 + 32))(v84 + v81, v85, v78);
    sub_10003F5BC(v79, v84 + v82, type metadata accessor for NoteWidgetView);
    sub_10003F5BC(v80, v84 + v83, type metadata accessor for Note);
    v86 = v132;
    *v132 = sub_10003FFD8;
    v86[1] = v84;
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100098218, &qword_100075898);
    sub_1000095F4(&qword_100098220, &qword_100098218, &qword_100075898, &protocol conformance descriptor for GeometryReader<A>);
    sub_10003F940();
    v72 = v131;
    sub_10006AA50();
    sub_100030A4C(v112);
  }

  v90 = v128;
  sub_100009728(v68, v128, &qword_1000981D0, &qword_100075870);
  v91 = v133;
  sub_100009728(v72, v133, &qword_1000981A8, &qword_100075848);
  v92 = v134;
  sub_100009728(v90, v134, &qword_1000981D0, &qword_100075870);
  v93 = sub_100007DF0(&qword_100098238, &qword_1000758A0);
  sub_100009728(v91, v92 + *(v93 + 48), &qword_1000981A8, &qword_100075848);
  sub_100009790(v72, &qword_1000981A8, &qword_100075848);
  sub_100009790(v68, &qword_1000981D0, &qword_100075870);
  sub_100009790(v91, &qword_1000981A8, &qword_100075848);
  return sub_100009790(v90, &qword_1000981D0, &qword_100075870);
}

uint64_t sub_10003E71C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v30 = sub_100007DF0(&qword_100098240, &qword_1000758A8);
  v6 = *(v30 - 8);
  __chkstk_darwin(v30);
  v8 = &v29 - v7;
  v9 = sub_100007DF0(&qword_100098248, &unk_1000758B0);
  v31 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  sub_10006A7A0();
  v16 = v15;
  sub_10006A7A0();
  v18 = v17;
  result = type metadata accessor for NoteWidgetView(0);
  v20 = *(a1 + *(result + 28));
  if (v18 / v20 <= v16)
  {
    v29 = a3;
    v22 = v20 - 1;
    if (__OFSUB__(v20, 1))
    {
      __break(1u);
    }

    else
    {
      v24 = *(a2 + 32);
      v23 = *(a2 + 40);
      KeyPath = swift_getKeyPath();
      v32 = v24;
      v33 = v23;
      v34 = 0;
      v35 = &_swiftEmptyArrayStorage;
      v36 = KeyPath;
      v37 = v22;
      v38 = 0;
      sub_100007DF0(&qword_100098250, &qword_1000767D0);
      sub_100040118(&qword_100098258, &qword_100098250, &qword_1000767D0);
      sub_10006AD70();

      if (sub_10003B488())
      {
        v26 = sub_10006AE60();
      }

      else if (sub_10003B488())
      {
        v26 = sub_10006AE50();
      }

      else
      {
        v26 = sub_10006AE20();
      }

      v27 = v26;
      (*(v6 + 32))(v12, v8, v30);
      *&v12[*(v9 + 36)] = v27;
      sub_1000096C0(v12, v14, &qword_100098248, &unk_1000758B0);
      v28 = v29;
      sub_1000096C0(v14, v29, &qword_100098248, &unk_1000758B0);
      return (*(v31 + 56))(v28, 0, 1, v9);
    }
  }

  else
  {
    v21 = *(v31 + 56);

    return v21(a3, 1, 1, v9);
  }

  return result;
}

void sub_10003EA7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  v5 = __chkstk_darwin(v4 - 8);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v31 - v8;
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Note(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v32 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v18 = a1;
  sub_100009728(a1, v11, &qword_100096948, &qword_1000751E0);
  v19 = *(v13 + 48);
  if (v19(v11, 2, v12))
  {
    v20 = sub_10006B2D0();
    v22 = v21;
  }

  else
  {
    sub_10003F5BC(v11, v17, type metadata accessor for Note);
    v20 = *(v17 + 6);
    v22 = *(v17 + 7);

    sub_100030A4C(v17);
  }

  v23 = v18;
  sub_100009728(v18, v9, &qword_100096948, &qword_1000751E0);
  if (v19(v9, 2, v12))
  {
    v34 = sub_10006AC30();
    v24 = sub_10006AF20();
  }

  else
  {
    v34 = v20;
    v35 = v22;
    v36 = 0;
    v37 = &_swiftEmptyArrayStorage;
    v24 = sub_10006AF20();
    sub_100009790(v9, &qword_100096948, &qword_1000751E0);
  }

  v25 = v33;
  KeyPath = swift_getKeyPath();
  v27 = sub_10006AA80();
  sub_100009728(v23, v25, &qword_100096948, &qword_1000751E0);
  if (v19(v25, 2, v12))
  {
    sub_100009790(v25, &qword_100096948, &qword_1000751E0);
LABEL_12:
    v30 = 0;
    v29 = 0;
    goto LABEL_13;
  }

  v28 = v32;
  sub_10003F5BC(v25, v32, type metadata accessor for Note);
  if (*(v28 + 80) != 1)
  {
    sub_100030A4C(v28);
    goto LABEL_12;
  }

  v29 = *(v28 + *(v12 + 56));
  swift_bridgeObjectRetain_n();
  sub_100030A4C(v28);

  v30 = 0x4020000000000000;
LABEL_13:
  *a2 = v24;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 28) = v27;
  *(a2 + 32) = v30;
  *(a2 + 40) = 0;
  *(a2 + 48) = v29;
}

uint64_t sub_10003EE4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A8C0();
  *a1 = result;
  return result;
}

uint64_t sub_10003EE78@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006A8C0();
  *a1 = result;
  return result;
}

unint64_t sub_10003EEFC()
{
  result = qword_1000980E8;
  if (!qword_1000980E8)
  {
    sub_100008154(&qword_1000980B0, &qword_100075660);
    sub_1000095F4(&qword_1000980F0, &qword_1000980F8, &unk_1000756C8, &protocol conformance descriptor for VStack<A>);
    sub_1000095F4(&qword_100096BD8, &qword_100096BE0, &qword_10006F610, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000980E8);
  }

  return result;
}

unint64_t sub_10003EFE0()
{
  result = qword_100098100;
  if (!qword_100098100)
  {
    sub_100008154(&qword_1000980D0, &qword_100075680);
    sub_100008154(&qword_1000980C0, &qword_100075670);
    sub_100008154(&qword_1000980B8, &qword_100075668);
    sub_100008154(&qword_1000980B0, &qword_100075660);
    sub_10003EEFC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10003FA28(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098100);
  }

  return result;
}

unint64_t sub_10003F184()
{
  result = qword_100098148;
  if (!qword_100098148)
  {
    sub_100008154(&qword_100098138, &qword_1000757D0);
    sub_1000095F4(&qword_100098150, &qword_100098158, &qword_1000757E0, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098148);
  }

  return result;
}

unint64_t sub_10003F234()
{
  result = qword_100098180;
  if (!qword_100098180)
  {
    sub_100008154(&qword_100098170, &qword_1000757F0);
    sub_10003F184();
    sub_1000095F4(&qword_100098160, &qword_100098140, &qword_1000757D8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098180);
  }

  return result;
}

uint64_t sub_10003F2EC()
{
  v1 = type metadata accessor for NoteWidgetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for Note(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 2, v6))
  {

    v7 = *(v6 + 40);
    v8 = sub_10006A560();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    v10 = *(v6 + 48);
    v11 = sub_10006A520();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  v13 = *(v1 + 20);
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10006B0C0();
    (*(*(v14 - 8) + 8))(v5 + v13, v14);
  }

  else
  {
  }

  sub_1000096B4(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003F5BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003F624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NoteWidgetView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10003D6C0(a1, v6, a2);
}

uint64_t sub_10003F6A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10006A920();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10003F6D8@<X0>(uint64_t a1@<X8>)
{
  result = sub_10006A920();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10003F76C()
{
  result = qword_1000981F8;
  if (!qword_1000981F8)
  {
    sub_100008154(&qword_1000981C0, &unk_100075860);
    sub_10003F824();
    sub_1000095F4(&qword_100098208, &qword_100098210, &qword_100075890, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000981F8);
  }

  return result;
}

unint64_t sub_10003F824()
{
  result = qword_100098200;
  if (!qword_100098200)
  {
    sub_100008154(&qword_1000981B8, &unk_1000767A0);
    sub_100008154(&qword_1000981D8, &qword_100075878);
    sub_100040118(&qword_1000981E0, &qword_1000981D8, &qword_100075878);
    swift_getOpaqueTypeConformance2();
    sub_1000095F4(&qword_100097E28, &qword_100097E30, &qword_100075480, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098200);
  }

  return result;
}

unint64_t sub_10003F940()
{
  result = qword_100098228;
  if (!qword_100098228)
  {
    sub_100008154(&qword_1000981A0, &qword_100075840);
    sub_10003FA28(&qword_100098230, &type metadata accessor for PlaceholderText, &protocol conformance descriptor for PlaceholderText);
    sub_1000095F4(&qword_100097E28, &qword_100097E30, &qword_100075480, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098228);
  }

  return result;
}

uint64_t sub_10003FA28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10003FA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003FAD8()
{
  v1 = sub_10006A7B0();
  v2 = *(v1 - 8);
  v32 = *(v2 + 80);
  v3 = (v32 + 16) & ~v32;
  v4 = *(v2 + 64);
  v5 = type metadata accessor for NoteWidgetView(0);
  v30 = *(*(v5 - 8) + 80);
  v6 = (v3 + v4 + v30) & ~v30;
  v7 = *(*(v5 - 8) + 64);
  v8 = type metadata accessor for Note(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v6 + v7 + v10;
  v31 = *(v9 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v12 = v0 + v6;
  if (!(*(v9 + 48))(v0 + v6, 2, v8))
  {

    v13 = *(v8 + 40);
    v14 = sub_10006A560();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v12 + v13, 1, v14))
    {
      (*(v15 + 8))(v12 + v13, v14);
    }

    v16 = *(v8 + 48);
    v17 = sub_10006A520();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v12 + v16, 1, v17))
    {
      (*(v18 + 8))(v12 + v16, v17);
    }
  }

  v19 = v11 & ~v10;
  v20 = *(v5 + 20);
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_10006B0C0();
    (*(*(v21 - 8) + 8))(v12 + v20, v21);
  }

  else
  {
  }

  sub_1000096B4(*(v12 + *(v5 + 24)), *(v12 + *(v5 + 24) + 8));
  v22 = v0 + v19;

  v23 = *(v8 + 40);
  v24 = sub_10006A560();
  v25 = *(v24 - 8);
  if (!(*(v25 + 48))(v0 + v19 + v23, 1, v24))
  {
    (*(v25 + 8))(v22 + v23, v24);
  }

  v26 = *(v8 + 48);
  v27 = sub_10006A520();
  v28 = *(v27 - 8);
  if (!(*(v28 + 48))(v22 + v26, 1, v27))
  {
    (*(v28 + 8))(v22 + v26, v27);
  }

  return _swift_deallocObject(v0, v19 + v31, v32 | v30 | v10 | 7);
}

uint64_t sub_10003FFD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10006A7B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for NoteWidgetView(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Note(0) - 8);
  v10 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_10003E71C(v1 + v7, v10, a1);
}

uint64_t sub_100040118(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008154(a2, a3);
    sub_1000095F4(&qword_1000981E8, &qword_1000981F0, &unk_100075880, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000401BC()
{
  sub_100008154(&qword_1000980D8, &qword_100075688);
  sub_100008154(&qword_1000980D0, &qword_100075680);
  sub_10003EFE0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004025C()
{
  v0 = sub_100007DF0(&qword_100098338, &qword_100075A18);
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v20 - v1;
  v3 = sub_10006A1A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100098340, &qword_100075A20);
  __chkstk_darwin(v7);
  sub_100017C78();
  sub_10006A230();
  v30._countAndFlagsBits = 0xD000000000000031;
  v30._object = 0x8000000100078C30;
  sub_10006A220(v30);
  v27 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = *(v4 + 104);
  v25 = v3;
  v26 = v8;
  v8(v6);
  sub_10006A210();
  v9 = *(v4 + 8);
  v28 = v4 + 8;
  v29 = v9;
  v9(v6, v3);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10006A220(v31);
  sub_10006A240();
  v23 = sub_10006A1C0();
  v24 = v0;
  v10 = *(v22 + 8);
  v10(v2, v0);
  sub_10006A200();
  v22 = sub_10006A1C0();
  v10(v2, v0);
  sub_10006A230();
  v32._countAndFlagsBits = 0xD000000000000026;
  v32._object = 0x8000000100078CA0;
  sub_10006A220(v32);
  v11 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v11);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10006A220(v33);
  sub_10006A240();
  v21 = sub_10006A1C0();
  v12 = v24;
  v10(v2, v24);
  sub_10006A200();
  v20 = sub_10006A1C0();
  v10(v2, v12);
  sub_10006A230();
  v34._countAndFlagsBits = 0xD00000000000002DLL;
  v34._object = 0x8000000100078D00;
  sub_10006A220(v34);
  v13 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v13);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10006A220(v35);
  sub_10006A240();
  v14 = sub_10006A1C0();
  v10(v2, v24);
  sub_100007DF0(&qword_100098348, &qword_100075A28);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000758C0;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  v17 = v20;
  *(v15 + 48) = v21;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_10006A1B0();

  return v18;
}

uint64_t sub_100040780()
{
  v0 = sub_100007DF0(&qword_100098320, &qword_100075A00);
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v20 - v1;
  v3 = sub_10006A1A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100098328, &qword_100075A08);
  __chkstk_darwin(v7);
  sub_1000152E8();
  sub_10006A230();
  v30._countAndFlagsBits = 0xD000000000000034;
  v30._object = 0x8000000100078B20;
  sub_10006A220(v30);
  v27 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = *(v4 + 104);
  v25 = v3;
  v26 = v8;
  v8(v6);
  sub_10006A210();
  v9 = *(v4 + 8);
  v28 = v4 + 8;
  v29 = v9;
  v9(v6, v3);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10006A220(v31);
  sub_10006A240();
  v23 = sub_10006A1C0();
  v24 = v0;
  v10 = *(v22 + 8);
  v10(v2, v0);
  sub_10006A200();
  v22 = sub_10006A1C0();
  v10(v2, v0);
  sub_10006A230();
  v32._countAndFlagsBits = 0xD000000000000029;
  v32._object = 0x8000000100078B90;
  sub_10006A220(v32);
  v11 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v11);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10006A220(v33);
  sub_10006A240();
  v21 = sub_10006A1C0();
  v12 = v24;
  v10(v2, v24);
  sub_10006A200();
  v20 = sub_10006A1C0();
  v10(v2, v12);
  sub_10006A230();
  v34._countAndFlagsBits = 0xD000000000000030;
  v34._object = 0x8000000100078BF0;
  sub_10006A220(v34);
  v13 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v13);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10006A220(v35);
  sub_10006A240();
  v14 = sub_10006A1C0();
  v10(v2, v24);
  sub_100007DF0(&qword_100098330, &qword_100075A10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000758C0;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  v17 = v20;
  *(v15 + 48) = v21;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_10006A1B0();

  return v18;
}

uint64_t sub_100040CA8()
{
  v0 = sub_100007DF0(&qword_100098308, &qword_1000759E8);
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v20 - v1;
  v3 = sub_10006A1A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100098310, &qword_1000759F0);
  __chkstk_darwin(v7);
  sub_100021F28();
  sub_10006A230();
  v30._countAndFlagsBits = 0xD000000000000033;
  v30._object = 0x8000000100078A20;
  sub_10006A220(v30);
  v27 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = *(v4 + 104);
  v25 = v3;
  v26 = v8;
  v8(v6);
  sub_10006A210();
  v9 = *(v4 + 8);
  v28 = v4 + 8;
  v29 = v9;
  v9(v6, v3);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10006A220(v31);
  sub_10006A240();
  v23 = sub_10006A1C0();
  v24 = v0;
  v10 = *(v22 + 8);
  v10(v2, v0);
  sub_10006A200();
  v22 = sub_10006A1C0();
  v10(v2, v0);
  sub_10006A230();
  v32._countAndFlagsBits = 0xD000000000000028;
  v32._object = 0x8000000100078A90;
  sub_10006A220(v32);
  v11 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v11);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10006A220(v33);
  sub_10006A240();
  v21 = sub_10006A1C0();
  v12 = v24;
  v10(v2, v24);
  sub_10006A200();
  v20 = sub_10006A1C0();
  v10(v2, v12);
  sub_10006A230();
  v34._countAndFlagsBits = 0xD00000000000002FLL;
  v34._object = 0x8000000100078AF0;
  sub_10006A220(v34);
  v13 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v13);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10006A220(v35);
  sub_10006A240();
  v14 = sub_10006A1C0();
  v10(v2, v24);
  sub_100007DF0(&qword_100098318, &qword_1000759F8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000758C0;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  v17 = v20;
  *(v15 + 48) = v21;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_10006A1B0();

  return v18;
}

uint64_t sub_1000411D0()
{
  v0 = sub_100007DF0(&qword_1000982F0, &qword_1000759D0);
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v20 - v1;
  v3 = sub_10006A1A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_1000982F8, &qword_1000759D8);
  __chkstk_darwin(v7);
  sub_10001AA38();
  sub_10006A230();
  v30._countAndFlagsBits = 0xD000000000000034;
  v30._object = 0x8000000100078910;
  sub_10006A220(v30);
  v27 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = *(v4 + 104);
  v25 = v3;
  v26 = v8;
  v8(v6);
  sub_10006A210();
  v9 = *(v4 + 8);
  v28 = v4 + 8;
  v29 = v9;
  v9(v6, v3);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10006A220(v31);
  sub_10006A240();
  v23 = sub_10006A1C0();
  v24 = v0;
  v10 = *(v22 + 8);
  v10(v2, v0);
  sub_10006A200();
  v22 = sub_10006A1C0();
  v10(v2, v0);
  sub_10006A230();
  v32._countAndFlagsBits = 0xD000000000000029;
  v32._object = 0x8000000100078980;
  sub_10006A220(v32);
  v11 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v11);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10006A220(v33);
  sub_10006A240();
  v21 = sub_10006A1C0();
  v12 = v24;
  v10(v2, v24);
  sub_10006A200();
  v20 = sub_10006A1C0();
  v10(v2, v12);
  sub_10006A230();
  v34._countAndFlagsBits = 0xD000000000000030;
  v34._object = 0x80000001000789E0;
  sub_10006A220(v34);
  v13 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v13);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10006A220(v35);
  sub_10006A240();
  v14 = sub_10006A1C0();
  v10(v2, v24);
  sub_100007DF0(&qword_100098300, &qword_1000759E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000758C0;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  v17 = v20;
  *(v15 + 48) = v21;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_10006A1B0();

  return v18;
}

uint64_t sub_1000416F4()
{
  v0 = sub_100007DF0(&qword_1000982D8, &qword_1000759B8);
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v20 - v1;
  v3 = sub_10006A1A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_1000982E0, &qword_1000759C0);
  __chkstk_darwin(v7);
  sub_10001F61C();
  sub_10006A230();
  v30._countAndFlagsBits = 0xD000000000000035;
  v30._object = 0x8000000100078800;
  sub_10006A220(v30);
  v27 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = *(v4 + 104);
  v25 = v3;
  v26 = v8;
  v8(v6);
  sub_10006A210();
  v9 = *(v4 + 8);
  v28 = v4 + 8;
  v29 = v9;
  v9(v6, v3);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10006A220(v31);
  sub_10006A240();
  v23 = sub_10006A1C0();
  v24 = v0;
  v10 = *(v22 + 8);
  v10(v2, v0);
  sub_10006A200();
  v22 = sub_10006A1C0();
  v10(v2, v0);
  sub_10006A230();
  v32._countAndFlagsBits = 0xD00000000000002ALL;
  v32._object = 0x8000000100078870;
  sub_10006A220(v32);
  v11 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v11);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10006A220(v33);
  sub_10006A240();
  v21 = sub_10006A1C0();
  v12 = v24;
  v10(v2, v24);
  sub_10006A200();
  v20 = sub_10006A1C0();
  v10(v2, v12);
  sub_10006A230();
  v34._countAndFlagsBits = 0xD000000000000031;
  v34._object = 0x80000001000788D0;
  sub_10006A220(v34);
  v13 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v13);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10006A220(v35);
  sub_10006A240();
  v14 = sub_10006A1C0();
  v10(v2, v24);
  sub_100007DF0(&qword_1000982E8, &qword_1000759C8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000758C0;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  v17 = v20;
  *(v15 + 48) = v21;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_10006A1B0();

  return v18;
}

uint64_t sub_100041C18()
{
  v0 = sub_100007DF0(&qword_1000982C0, &qword_1000759A0);
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v20 - v1;
  v3 = sub_10006A1A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_1000982C8, &qword_1000759A8);
  __chkstk_darwin(v7);
  sub_100012934();
  sub_10006A230();
  v30._countAndFlagsBits = 0xD00000000000002ELL;
  v30._object = 0x8000000100078720;
  sub_10006A220(v30);
  v27 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = *(v4 + 104);
  v25 = v3;
  v26 = v8;
  v8(v6);
  sub_10006A210();
  v9 = *(v4 + 8);
  v28 = v4 + 8;
  v29 = v9;
  v9(v6, v3);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10006A220(v31);
  sub_10006A240();
  v23 = sub_10006A1C0();
  v24 = v0;
  v10 = *(v22 + 8);
  v10(v2, v0);
  sub_10006A200();
  v22 = sub_10006A1C0();
  v10(v2, v0);
  sub_10006A230();
  v32._countAndFlagsBits = 0xD000000000000023;
  v32._object = 0x8000000100078770;
  sub_10006A220(v32);
  v11 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v11);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10006A220(v33);
  sub_10006A240();
  v21 = sub_10006A1C0();
  v12 = v24;
  v10(v2, v24);
  sub_10006A200();
  v20 = sub_10006A1C0();
  v10(v2, v12);
  sub_10006A230();
  v34._countAndFlagsBits = 0xD00000000000002ALL;
  v34._object = 0x80000001000787D0;
  sub_10006A220(v34);
  v13 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v13);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10006A220(v35);
  sub_10006A240();
  v14 = sub_10006A1C0();
  v10(v2, v24);
  sub_100007DF0(&qword_1000982D0, &qword_1000759B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000758C0;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  v17 = v20;
  *(v15 + 48) = v21;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_10006A1B0();

  return v18;
}

uint64_t sub_10004213C()
{
  v0 = sub_100007DF0(&qword_1000982A8, &qword_100075988);
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v20 - v1;
  v3 = sub_10006A1A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_1000982B0, &qword_100075990);
  __chkstk_darwin(v7);
  sub_10002C1A8();
  sub_10006A230();
  v30._countAndFlagsBits = 0xD000000000000036;
  v30._object = 0x8000000100078610;
  sub_10006A220(v30);
  v27 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = *(v4 + 104);
  v25 = v3;
  v26 = v8;
  v8(v6);
  sub_10006A210();
  v9 = *(v4 + 8);
  v28 = v4 + 8;
  v29 = v9;
  v9(v6, v3);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10006A220(v31);
  sub_10006A240();
  v23 = sub_10006A1C0();
  v24 = v0;
  v10 = *(v22 + 8);
  v10(v2, v0);
  sub_10006A200();
  v22 = sub_10006A1C0();
  v10(v2, v0);
  sub_10006A230();
  v32._countAndFlagsBits = 0xD00000000000002BLL;
  v32._object = 0x8000000100078680;
  sub_10006A220(v32);
  v11 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v11);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10006A220(v33);
  sub_10006A240();
  v21 = sub_10006A1C0();
  v12 = v24;
  v10(v2, v24);
  sub_10006A200();
  v20 = sub_10006A1C0();
  v10(v2, v12);
  sub_10006A230();
  v34._countAndFlagsBits = 0xD000000000000032;
  v34._object = 0x80000001000786E0;
  sub_10006A220(v34);
  v13 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v13);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10006A220(v35);
  sub_10006A240();
  v14 = sub_10006A1C0();
  v10(v2, v24);
  sub_100007DF0(&qword_1000982B8, &qword_100075998);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000758C0;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  v17 = v20;
  *(v15 + 48) = v21;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_10006A1B0();

  return v18;
}

uint64_t sub_100042660()
{
  v0 = sub_100007DF0(&qword_100098290, &qword_100075970);
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v20 - v1;
  v3 = sub_10006A1A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100098298, &qword_100075978);
  __chkstk_darwin(v7);
  sub_100026F00();
  sub_10006A230();
  v30._countAndFlagsBits = 0xD00000000000002ELL;
  v30._object = 0x8000000100078530;
  sub_10006A220(v30);
  v27 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = *(v4 + 104);
  v25 = v3;
  v26 = v8;
  v8(v6);
  sub_10006A210();
  v9 = *(v4 + 8);
  v28 = v4 + 8;
  v29 = v9;
  v9(v6, v3);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10006A220(v31);
  sub_10006A240();
  v23 = sub_10006A1C0();
  v24 = v0;
  v10 = *(v22 + 8);
  v10(v2, v0);
  sub_10006A200();
  v22 = sub_10006A1C0();
  v10(v2, v0);
  sub_10006A230();
  v32._countAndFlagsBits = 0xD000000000000023;
  v32._object = 0x8000000100078580;
  sub_10006A220(v32);
  v11 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v11);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10006A220(v33);
  sub_10006A240();
  v21 = sub_10006A1C0();
  v12 = v24;
  v10(v2, v24);
  sub_10006A200();
  v20 = sub_10006A1C0();
  v10(v2, v12);
  sub_10006A230();
  v34._countAndFlagsBits = 0xD00000000000002ALL;
  v34._object = 0x80000001000785E0;
  sub_10006A220(v34);
  v13 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v13);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10006A220(v35);
  sub_10006A240();
  v14 = sub_10006A1C0();
  v10(v2, v24);
  sub_100007DF0(&qword_1000982A0, &qword_100075980);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000758C0;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  v17 = v20;
  *(v15 + 48) = v21;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_10006A1B0();

  return v18;
}

uint64_t sub_100042B84()
{
  v0 = sub_100007DF0(&qword_100098278, &qword_100075958);
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v20 - v1;
  v3 = sub_10006A1A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100098280, &qword_100075960);
  __chkstk_darwin(v7);
  sub_100029748();
  sub_10006A230();
  v30._countAndFlagsBits = 0xD00000000000002FLL;
  v30._object = 0x8000000100078440;
  sub_10006A220(v30);
  v27 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v8 = *(v4 + 104);
  v25 = v3;
  v26 = v8;
  v8(v6);
  sub_10006A210();
  v9 = *(v4 + 8);
  v28 = v4 + 8;
  v29 = v9;
  v9(v6, v3);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10006A220(v31);
  sub_10006A240();
  v23 = sub_10006A1C0();
  v24 = v0;
  v10 = *(v22 + 8);
  v10(v2, v0);
  sub_10006A200();
  v22 = sub_10006A1C0();
  v10(v2, v0);
  sub_10006A230();
  v32._countAndFlagsBits = 0xD000000000000024;
  v32._object = 0x80000001000784A0;
  sub_10006A220(v32);
  v11 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v11);
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10006A220(v33);
  sub_10006A240();
  v21 = sub_10006A1C0();
  v12 = v24;
  v10(v2, v24);
  sub_10006A200();
  v20 = sub_10006A1C0();
  v10(v2, v12);
  sub_10006A230();
  v34._countAndFlagsBits = 0xD00000000000002BLL;
  v34._object = 0x8000000100078500;
  sub_10006A220(v34);
  v13 = v25;
  v26(v6, v27, v25);
  sub_10006A210();
  v29(v6, v13);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  sub_10006A220(v35);
  sub_10006A240();
  v14 = sub_10006A1C0();
  v10(v2, v24);
  sub_100007DF0(&qword_100098288, &qword_100075968);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000758C0;
  v16 = v22;
  *(v15 + 32) = v23;
  *(v15 + 40) = v16;
  v17 = v20;
  *(v15 + 48) = v21;
  *(v15 + 56) = v17;
  *(v15 + 64) = v14;
  v18 = sub_10006A1B0();

  return v18;
}

uint64_t sub_1000430AC()
{
  v0 = sub_10006A1E0();
  v1 = sub_10006A1E0();
  v2 = sub_10006A1E0();
  sub_100007DF0(&qword_100098268, &qword_100075948);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10006F2A0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  v4 = sub_10006A1D0();

  return v4;
}

uint64_t sub_100043184()
{
  v0 = sub_10006A190();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100017C78();
  sub_10006A180();
  v4 = sub_10006A170();
  (*(v1 + 8))(v3, v0);
  sub_100007DF0(&qword_100098260, &qword_100075940);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10006F820;
  *(v5 + 32) = v4;
  v6 = sub_10006A160();

  return v6;
}

uint64_t sub_1000432D4()
{
  v0 = sub_10006A270();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100018524();
  sub_100017C78();
  sub_10006A280();
  v17 = sub_10006A260();
  v4 = *(v1 + 8);
  v4(v3, v0);
  v18 = sub_100015874();
  sub_1000152E8();
  sub_10006A280();
  v16 = sub_10006A260();
  v4(v3, v0);
  v18 = sub_100022480();
  sub_100021F28();
  sub_10006A280();
  v15 = sub_10006A260();
  v4(v3, v0);
  v18 = sub_10001AF2C();
  sub_10001AA38();
  sub_10006A280();
  v5 = sub_10006A260();
  v4(v3, v0);
  v18 = sub_10001F928();
  sub_10001F61C();
  sub_10006A280();
  v6 = sub_10006A260();
  v4(v3, v0);
  v18 = sub_100012CB8();
  sub_100012934();
  sub_10006A280();
  v7 = sub_10006A260();
  v4(v3, v0);
  v18 = sub_10002CC28();
  sub_10002C1A8();
  sub_10006A280();
  v8 = sub_10006A260();
  v4(v3, v0);
  v18 = sub_10002720C();
  sub_100026F00();
  sub_10006A280();
  v9 = sub_10006A260();
  v4(v3, v0);
  v18 = sub_100029CA0();
  sub_100029748();
  sub_10006A280();
  v10 = sub_10006A260();
  v4(v3, v0);
  sub_100007DF0(&qword_100098270, &qword_100075950);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000758D0;
  v12 = v16;
  *(v11 + 32) = v17;
  *(v11 + 40) = v12;
  *(v11 + 48) = v15;
  *(v11 + 56) = v5;
  *(v11 + 64) = v6;
  *(v11 + 72) = v7;
  *(v11 + 80) = v8;
  *(v11 + 88) = v9;
  *(v11 + 96) = v10;
  v13 = sub_10006A250();

  return v13;
}

uint64_t sub_10004380C()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_100098350);
  sub_10000CEB8(v0, qword_100098350);
  return sub_10006A6A0();
}

uint64_t sub_100043858()
{
  v0 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000D8DC(v0, qword_100098368);
  sub_10000CEB8(v0, qword_100098368);
  sub_10000D894(0, &qword_1000983B8, ICNoteContext_ptr);
  return sub_10006A610();
}

void *sub_1000438E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100043910();
  *a1 = result;
  return result;
}

void *sub_100043910()
{
  v0 = sub_10006B010();
  v37 = *(v0 - 8);
  __chkstk_darwin(v0);
  v35 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10006B030();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10006B000();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10006B050();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v14 = objc_opt_self();
  [v14 startSharedContextWithOptions:8389186];
  v15 = [v14 sharedContext];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 databaseOpenError];
    if (!v17)
    {
      return v16;
    }

    v18 = v17;
  }

  if (qword_1000968E0 != -1)
  {
    swift_once();
  }

  v32 = v0;
  v19 = sub_10006A6C0();
  sub_10000CEB8(v19, qword_100098350);
  v20 = sub_10006A6B0();
  v21 = sub_10006B3A0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Cannot create modern note context for Widget Extension — returning nil and exiting shortly", v22, 2u);
  }

  sub_10000D894(0, &qword_100098398, OS_dispatch_queue_ptr);
  v31 = sub_10006B3E0();
  sub_10006B040();
  *v6 = 1;
  (*(v4 + 104))(v6, enum case for DispatchTimeInterval.seconds(_:), v3);
  sub_10006B060();
  (*(v4 + 8))(v6, v3);
  v23 = *(v8 + 8);
  v23(v11, v7);
  aBlock[4] = sub_100043E64;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002CBE4;
  aBlock[3] = &unk_1000934B8;
  v24 = _Block_copy(aBlock);
  v25 = v33;
  sub_10006B020();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_10004452C();
  sub_100007DF0(&qword_1000983A8, &unk_100075A30);
  sub_100044584();
  v26 = v35;
  v27 = v32;
  sub_10006B440();
  v28 = v31;
  sub_10006B3D0();
  _Block_release(v24);

  (*(v37 + 8))(v26, v27);
  (*(v34 + 8))(v25, v36);
  v23(v13, v7);
  return 0;
}

uint64_t sub_100043E70()
{
  v0 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000D8DC(v0, qword_100098380);
  sub_10000CEB8(v0, qword_100098380);
  sub_10000D894(0, &qword_100096D48, NoteContext_ptr);
  return sub_10006A610();
}

id sub_100043F00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100043F28();
  *a1 = result;
  return result;
}

id sub_100043F28()
{
  v0 = sub_10006B010();
  v43 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10006B030();
  v42 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006B000();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10006B050();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  result = [objc_allocWithZone(NoteContext) initWithPrivateQueue:1];
  if (!result)
  {
    v35 = v15;
    v36 = v9;
    v37 = v10;
    v38 = v5;
    v39 = v3;
    v40 = v0;
    if (qword_1000968E0 != -1)
    {
      swift_once();
    }

    v17 = sub_10006A6C0();
    sub_10000CEB8(v17, qword_100098350);
    v18 = sub_10006A6B0();
    v19 = sub_10006B3A0();
    v20 = os_log_type_enabled(v18, v19);
    v34 = v2;
    v21 = v35;
    v22 = v41;
    if (v20)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Cannot create HTML note context for Widget Extension — returning nil and exiting shortly", v23, 2u);
    }

    sub_10000D894(0, &qword_100098398, OS_dispatch_queue_ptr);
    v33 = sub_10006B3E0();
    sub_10006B040();
    *v8 = 1;
    (*(v22 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v6);
    sub_10006B060();
    (*(v22 + 8))(v8, v6);
    v24 = *(v37 + 8);
    v25 = v13;
    v26 = v36;
    v24(v25, v36);
    aBlock[4] = sub_100044438;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002CBE4;
    aBlock[3] = &unk_100093490;
    v27 = _Block_copy(aBlock);
    v28 = v38;
    sub_10006B020();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10004452C();
    sub_100007DF0(&qword_1000983A8, &unk_100075A30);
    sub_100044584();
    v29 = v34;
    v30 = v40;
    sub_10006B440();
    v31 = v33;
    sub_10006B3D0();
    _Block_release(v27);

    (*(v43 + 8))(v29, v30);
    (*(v42 + 8))(v28, v39);
    v24(v21, v26);
    return 0;
  }

  return result;
}

void sub_100044444(const char *a1)
{
  if (qword_1000968E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10006A6C0();
  sub_10000CEB8(v2, qword_100098350);
  v3 = sub_10006A6B0();
  v4 = sub_10006B390();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, a1, v5, 2u);
  }

  exit(1);
}

uint64_t sub_100044514(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004452C()
{
  result = qword_1000983A0;
  if (!qword_1000983A0)
  {
    sub_10006B010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000983A0);
  }

  return result;
}

unint64_t sub_100044584()
{
  result = qword_1000983B0;
  if (!qword_1000983B0)
  {
    sub_100008154(&qword_1000983A8, &unk_100075A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000983B0);
  }

  return result;
}

uint64_t sub_1000445F0()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_1000983C0);
  sub_10000CEB8(v0, qword_1000983C0);
  return sub_10006A6A0();
}

void sub_10004463C()
{
  v0 = sub_10006B280();
  v1 = sub_10006B280();
  v2 = [objc_opt_self() attributeWithDomain:v0 name:v1];

  qword_1000983D8 = v2;
}

uint64_t sub_1000446E0()
{
  v0 = sub_100007DF0(&qword_100098400, &qword_100075BA8);
  __chkstk_darwin(v0);
  v2 = &v13 - v1;
  v3 = sub_100007DF0(&qword_100098408, &qword_100075BB0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  sub_10004587C();
  sub_10006AA70();
  v10 = *(v4 + 16);
  v10(v7, v9, v3);
  v10(v2, v7, v3);
  sub_10006A770();
  v11 = *(v4 + 8);
  v11(v9, v3);
  return (v11)(v7, v3);
}

uint64_t sub_1000448A8@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_10006B3F0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[5] = 0u;
  v24 = a1 + 5;
  *a1 = 0u;
  a1[10] = 0u;
  v23 = a1 + 10;
  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  sub_10006B400();

  sub_1000458D0();
  v8 = sub_10006A6E0();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = sub_10006A6D0();
  v26 = v10;
  v27 = &protocol witness table for AnyCancellable;
  v25[0] = v8;
  sub_100045928(v25, a1);
  v11 = [v6 defaultCenter];
  sub_10006B400();

  v12 = sub_10006A6E0();
  v9(v5, v2);
  v26 = v10;
  v27 = &protocol witness table for AnyCancellable;
  v25[0] = v12;
  sub_100045928(v25, a1 + 40);
  v13 = [v6 defaultCenter];
  sub_10006B400();

  v14 = sub_10006A6E0();
  v9(v5, v2);
  v26 = v10;
  v27 = &protocol witness table for AnyCancellable;
  v25[0] = v14;
  sub_100045928(v25, v23);
  v15 = [v6 defaultCenter];
  sub_10006B400();

  v16 = sub_10006A6E0();
  v9(v5, v2);
  v26 = v10;
  v27 = &protocol witness table for AnyCancellable;
  v25[0] = v16;
  sub_100045928(v25, a1 + 200);
  v17 = [v6 defaultCenter];
  sub_10006B400();

  v18 = sub_10006A6E0();
  v9(v5, v2);
  v26 = v10;
  v27 = &protocol witness table for AnyCancellable;
  v25[0] = v18;
  sub_100045928(v25, v24);
  v19 = [v6 defaultCenter];
  sub_10006B400();

  v20 = sub_10006A6E0();
  v9(v5, v2);
  v26 = v10;
  v27 = &protocol witness table for AnyCancellable;
  v25[0] = v20;
  return sub_100045928(v25, a1 + 120);
}

void sub_100044D20()
{
  v0 = [objc_opt_self() currentProcess];
  sub_100007DF0(&qword_100096D58, &unk_100075BC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10006F750;
  if (qword_100096900 != -1)
  {
    swift_once();
  }

  v2 = qword_1000983D8;
  *(v1 + 32) = qword_1000983D8;
  v3 = objc_allocWithZone(RBSAssertion);
  v4 = v2;
  v5 = sub_10006B280();
  sub_100045998();
  isa = sub_10006B310().super.isa;

  v7 = [v3 initWithExplanation:v5 target:v0 attributes:isa];

  v8 = qword_1000983E0;
  qword_1000983E0 = v7;

  v9 = qword_1000983E0;
  if (qword_1000983E0)
  {
    v12[4] = sub_100044F04;
    v12[5] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100044F18;
    v12[3] = &unk_1000935C0;
    v10 = _Block_copy(v12);
    v11 = v9;
    [v11 acquireWithInvalidationHandler:v10];
    _Block_release(v10);
  }
}

void sub_100044F18(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

void sub_100044FB8()
{
  v0 = [objc_opt_self() currentProcess];
  sub_100007DF0(&qword_100096D58, &unk_100075BC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10006F750;
  if (qword_100096900 != -1)
  {
    swift_once();
  }

  v2 = qword_1000983D8;
  *(v1 + 32) = qword_1000983D8;
  v3 = objc_allocWithZone(RBSAssertion);
  v4 = v2;
  v5 = sub_10006B280();
  sub_100045998();
  isa = sub_10006B310().super.isa;

  v7 = [v3 initWithExplanation:v5 target:v0 attributes:isa];

  v8 = qword_1000983F0;
  qword_1000983F0 = v7;

  v9 = qword_1000983F0;
  if (qword_1000983F0)
  {
    v12[4] = sub_10004519C;
    v12[5] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100044F18;
    v12[3] = &unk_100093598;
    v10 = _Block_copy(v12);
    v11 = v9;
    [v11 acquireWithInvalidationHandler:v10];
    _Block_release(v10);
  }
}

void sub_1000451C4()
{
  v0 = [objc_opt_self() currentProcess];
  sub_100007DF0(&qword_100096D58, &unk_100075BC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10006F750;
  if (qword_100096900 != -1)
  {
    swift_once();
  }

  v2 = qword_1000983D8;
  *(v1 + 32) = qword_1000983D8;
  v3 = objc_allocWithZone(RBSAssertion);
  v4 = v2;
  v5 = sub_10006B280();
  sub_100045998();
  isa = sub_10006B310().super.isa;

  v7 = [v3 initWithExplanation:v5 target:v0 attributes:isa];

  v8 = qword_1000983E8;
  qword_1000983E8 = v7;

  v9 = qword_1000983E8;
  if (qword_1000983E8)
  {
    v12[4] = sub_1000453A8;
    v12[5] = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100044F18;
    v12[3] = &unk_100093570;
    v10 = _Block_copy(v12);
    v11 = v9;
    [v11 acquireWithInvalidationHandler:v10];
    _Block_release(v10);
  }
}

void sub_1000453BC(uint64_t a1, uint64_t a2, const char *a3, void **a4, ...)
{
  if (qword_1000968F8 != -1)
  {
    swift_once();
  }

  v7 = sub_10006A6C0();
  sub_10000CEB8(v7, qword_1000983C0);
  swift_errorRetain();
  v8 = sub_10006A6B0();
  v9 = sub_10006B380();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    if (a2)
    {
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      v13 = v12;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    *(v10 + 4) = v12;
    *v11 = v13;
    _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0xCu);
    sub_1000459FC(v11);
  }

  v14 = *a4;
  *a4 = 0;
}

void sub_100045544(uint64_t a1, void **a2, const char *a3)
{
  if (*a2)
  {
    if (qword_1000968F8 != -1)
    {
      swift_once();
    }

    v5 = sub_10006A6C0();
    sub_10000CEB8(v5, qword_1000983C0);
    v6 = sub_10006A6B0();
    v7 = sub_10006B390();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, a3, v8, 2u);
    }

    v9 = *a2;
    if (*a2)
    {
      [v9 invalidate];
      v9 = *a2;
    }

    *a2 = 0;
  }
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000456B4();
  sub_10006A780();
  return 0;
}

unint64_t sub_1000456B4()
{
  result = qword_1000983F8;
  if (!qword_1000983F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000983F8);
  }

  return result;
}

uint64_t sub_100045708(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100045720(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_100045764(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000457C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10004587C()
{
  result = qword_100098410;
  if (!qword_100098410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098410);
  }

  return result;
}

unint64_t sub_1000458D0()
{
  result = qword_100098418;
  if (!qword_100098418)
  {
    sub_10006B3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098418);
  }

  return result;
}

uint64_t sub_100045928(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100098420, &qword_100075BB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100045998()
{
  result = qword_100098428;
  if (!qword_100098428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100098428);
  }

  return result;
}

uint64_t sub_1000459E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000459FC(uint64_t a1)
{
  v2 = sub_100007DF0(&qword_100096D40, &unk_10006F770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100045A68()
{
  result = qword_100098430;
  if (!qword_100098430)
  {
    sub_100008154(&qword_100098438, &unk_100075BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098430);
  }

  return result;
}

uint64_t sub_100045ADC()
{
  result = sub_10006AE80();
  qword_1000A5758 = result;
  return result;
}

uint64_t sub_100045B18()
{
  result = sub_10006AE80();
  qword_1000A5760 = result;
  return result;
}

uint64_t sub_100045B80(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007DF0(&qword_100096A50, &unk_10006F470);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100045D6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100007DF0(&qword_100096A50, &unk_10006F470);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = sub_100007DF0(&qword_100096B30, &qword_10006F548);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for WidgetHeader(uint64_t a1)
{
  result = qword_1000984A0;
  if (!qword_1000984A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100045F80(uint64_t a1)
{
  sub_100046204(319, &qword_1000984B0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100046204(319, &qword_100096AD8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100046268(319, &qword_100096AD0, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100046204(319, &unk_100096AE0, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_100046204(319, &qword_100096DD0, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_100046268(319, &qword_1000984B8, &type metadata for Image, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              sub_100046268(319, &qword_100096DC8, &type metadata for String, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_100046268(319, &unk_1000984C0, &type metadata for AnyView, &type metadata accessor for Optional);
                if (v8 <= 0x3F)
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

void sub_100046204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100046268(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1000462D4()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for WidgetHeader(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10006B3B0();
    v7 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10004642C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006A950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100096A40, &unk_10006F460);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WidgetHeader(0);
  sub_100009728(v1 + *(v10 + 28), v9, &qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10006B0C0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10006B3B0();
    v13 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100046634@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v43 = sub_10006A9C0();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007DF0(&qword_100098528, &qword_100075CA8);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = sub_100007DF0(&qword_100098530, &qword_100075CB0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_100007DF0(&qword_100098538, &qword_100075CB8);
  __chkstk_darwin(v11 - 8);
  v13 = &v41 - v12;
  v42 = sub_100007DF0(&qword_100098540, &qword_100075CC0);
  __chkstk_darwin(v42);
  v15 = &v41 - v14;
  *v7 = sub_10006A9E0();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v16 = sub_100007DF0(&qword_100098548, &qword_100075CC8);
  sub_100046A74(v1, &v7[*(v16 + 44)]);
  _UISolariumEnabled();
  sub_1000462D4();
  sub_10006AFB0();
  sub_10006A790();
  sub_1000096C0(v7, v10, &qword_100098528, &qword_100075CA8);
  v17 = &v10[*(v8 + 36)];
  v18 = v46;
  *v17 = v45;
  *(v17 + 1) = v18;
  *(v17 + 2) = v47;
  sub_10006A9B0();
  sub_10004A2B4();
  sub_10006AD40();
  (*(v2 + 8))(v4, v43);
  sub_100009790(v10, &qword_100098530, &qword_100075CB0);
  v19 = sub_10006AB20();
  if (sub_1000462D4())
  {
    type metadata accessor for WidgetHeader(0);
  }

  sub_10006A720();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_1000096C0(v13, v15, &qword_100098538, &qword_100075CB8);
  v28 = &v15[*(v42 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = sub_10006AB40();
  if (sub_1000462D4())
  {
    type metadata accessor for WidgetHeader(0);
  }

  sub_10006A720();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v44;
  sub_1000096C0(v15, v44, &qword_100098540, &qword_100075CC0);
  result = sub_100007DF0(&qword_100098560, &qword_100075CD0);
  v40 = v38 + *(result + 36);
  *v40 = v29;
  *(v40 + 8) = v31;
  *(v40 + 16) = v33;
  *(v40 + 24) = v35;
  *(v40 + 32) = v37;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_100046A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = type metadata accessor for WidgetHeader(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v7 - 8);
  v9 = &v53 - v8;
  v10 = sub_100007DF0(&qword_100098568, &qword_100075CD8);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v60 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v53 - v14;
  v53 = v3;
  sub_100009728(a1 + *(v3 + 32), v9, &qword_100096B30, &qword_10006F548);
  sub_10004A36C(a1, v6);
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v58 = v5;
  v17 = swift_allocObject();
  sub_10004A3D4(v6, v17 + v16);
  sub_100007DF0(&qword_100098570, &qword_100075CE8);
  sub_10004A4A8();
  sub_10006A710();
  v18 = sub_10006AFB0();
  v20 = v19;
  v21 = *(v11 + 44);
  v22 = v15;
  v23 = &v15[v21];
  sub_1000473E4(v23);
  v24 = (v23 + *(sub_100007DF0(&qword_1000985D0, &qword_100075D20) + 36));
  *v24 = v18;
  v24[1] = v20;
  if (sub_1000462D4())
  {
    sub_10004A36C(a1, v6);
    v55 = swift_allocObject();
    sub_10004A3D4(v6, v55 + v16);
    sub_10006AFB0();
    sub_10006A790();
    v25 = v72;
    v58 = v74;
    v56 = v70;
    v57 = v75;
    LOBYTE(v68[0]) = v71;
    LOBYTE(v62) = v73;
    v26 = sub_10006AB40();
    sub_10006A720();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v35 = LOBYTE(v68[0]);
    v36 = v62;
    v61 = 0;
    v37 = v26;
    v38 = sub_10004AAB4;
  }

  else
  {
    v38 = 0;
    v55 = 0;
    v56 = 0;
    v25 = 0;
    v57 = 0;
    v58 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
    v28 = 0;
    v30 = 0;
    v32 = 0;
    v34 = 0;
  }

  v53 = v35;
  v54 = v22;
  v39 = v60;
  sub_100009728(v22, v60, &qword_100098568, &qword_100075CD8);
  v40 = v59;
  sub_100009728(v39, v59, &qword_100098568, &qword_100075CD8);
  v41 = (v40 + *(sub_100007DF0(&qword_1000985D8, &qword_100075D28) + 48));
  v42 = v38;
  v43 = v55;
  v44 = v56;
  *&v62 = v38;
  *(&v62 + 1) = v55;
  *&v63 = v56;
  *(&v63 + 1) = v35;
  *&v64 = v25;
  *(&v64 + 1) = v36;
  v46 = v57;
  v45 = v58;
  *&v65 = v58;
  *(&v65 + 1) = v57;
  v47 = v37;
  *&v66 = v37;
  *(&v66 + 1) = v28;
  *&v67[0] = v30;
  *(&v67[0] + 1) = v32;
  *&v67[1] = v34;
  BYTE8(v67[1]) = 0;
  v48 = v63;
  *v41 = v62;
  v41[1] = v48;
  v49 = v65;
  v41[2] = v64;
  v41[3] = v49;
  v50 = v67[0];
  v41[4] = v66;
  v41[5] = v50;
  *(v41 + 89) = *(v67 + 9);
  v51 = v43;
  sub_100009728(&v62, v68, &qword_1000985E0, &qword_100075D30);
  sub_100009790(v54, &qword_100098568, &qword_100075CD8);
  v68[0] = v42;
  v68[1] = v51;
  v68[2] = v44;
  v68[3] = v53;
  v68[4] = v25;
  v68[5] = v36;
  v68[6] = v45;
  v68[7] = v46;
  v68[8] = v47;
  v68[9] = v28;
  v68[10] = v30;
  v68[11] = v32;
  v68[12] = v34;
  v69 = 0;
  sub_100009790(v68, &qword_1000985E0, &qword_100075D30);
  return sub_100009790(v39, &qword_100098568, &qword_100075CD8);
}

uint64_t sub_100046F4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10006B0C0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_100007DF0(&qword_100098588, &qword_100075CF0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v17 - v11;
  sub_10004712C(&v17 - v11);
  *&v12[*(v10 + 44)] = sub_10006AE20();
  sub_10004642C(v8);
  sub_10006B0A0();
  v13 = sub_10006B080();
  v14 = *(v3 + 8);
  v14(v6, v2);
  v14(v8, v2);
  if (v13)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  sub_1000096C0(v12, a1, &qword_100098588, &qword_100075CF0);
  result = sub_100007DF0(&qword_100098570, &qword_100075CE8);
  *(a1 + *(result + 36)) = v15;
  return result;
}

double sub_10004712C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_100007DF0(&qword_1000985C8, &unk_100075D10);
  __chkstk_darwin(v3 - 8);
  v5 = v29 - v4;
  v6 = sub_100007DF0(&qword_1000985B8, &qword_100075D08);
  __chkstk_darwin(v6);
  v8 = v29 - v7;
  v9 = sub_100007DF0(&qword_1000985A8, &qword_100075D00);
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  *v5 = sub_10006A970();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v12 = sub_100007DF0(&qword_100098730, &qword_100075E40);
  sub_100047E10(v1, &v5[*(v12 + 44)]);
  if (sub_1000462D4())
  {
    v13 = sub_10006AE20();
  }

  else
  {
    v14 = [objc_opt_self() ICTintColor];
    v13 = sub_10006ADD0();
  }

  v15 = v13;
  sub_1000096C0(v5, v8, &qword_1000985C8, &unk_100075D10);
  *&v8[*(v6 + 36)] = v15;
  v16 = sub_10006AB20();
  sub_1000462D4();
  sub_10006A720();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1000096C0(v8, v11, &qword_1000985B8, &qword_100075D08);
  v25 = &v11[*(v9 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  sub_1000462D4();
  sub_10006AFB0();
  sub_10006A790();
  sub_1000096C0(v11, a1, &qword_1000985A8, &qword_100075D00);
  v26 = (a1 + *(sub_100007DF0(&qword_100098598, &qword_100075CF8) + 36));
  v27 = v29[1];
  *v26 = v29[0];
  v26[1] = v27;
  result = *&v30;
  v26[2] = v30;
  return result;
}

uint64_t sub_1000473E4@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v35 = sub_100007DF0(&qword_1000985F0, &qword_100075D40);
  __chkstk_darwin(v35);
  v30 = v29 - v1;
  v33 = sub_100007DF0(&qword_1000985F8, &qword_100075D48);
  __chkstk_darwin(v33);
  v31 = (v29 - v2);
  v32 = sub_10006B0C0();
  v3 = *(v32 - 8);
  v4 = __chkstk_darwin(v32);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v29 - v7;
  v9 = sub_100007DF0(&qword_100098600, &qword_100075D50);
  __chkstk_darwin(v9);
  v11 = v29 - v10;
  v12 = sub_100007DF0(&qword_100098608, &qword_100075D58);
  __chkstk_darwin(v12);
  v14 = (v29 - v13);
  v15 = sub_100007DF0(&qword_100098610, &unk_100075D60);
  __chkstk_darwin(v15);
  v17 = v29 - v16;
  if (sub_1000462D4())
  {
    v29[1] = v12;
    v29[2] = v15;
    v29[3] = v9;
    sub_10004642C(v8);
    sub_10006B090();
    v18 = sub_10006B080();
    v19 = *(v3 + 8);
    v20 = v32;
    v19(v6, v32);
    v19(v8, v20);
    if (v18)
    {
      v21 = sub_10006ADC0();
      v22 = v31;
      v23 = (v31 + *(v33 + 36));
      v24 = *(sub_100007DF0(&qword_100096C98, &qword_10006F6B0) + 28);
      v25 = enum case for ColorScheme.dark(_:);
      v26 = sub_10006A740();
      (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
      *v23 = swift_getKeyPath();
      *v22 = v21;
      sub_100009728(v22, v14, &qword_1000985F8, &qword_100075D48);
      swift_storeEnumTagMultiPayload();
      sub_10004AB3C();
      sub_10006AA50();
      sub_100009728(v17, v11, &qword_100098610, &unk_100075D60);
      swift_storeEnumTagMultiPayload();
      sub_10004ABF4();
      sub_10004AC80();
      sub_10006AA50();
      sub_100009790(v17, &qword_100098610, &unk_100075D60);
      return sub_100009790(v22, &qword_1000985F8, &qword_100075D48);
    }

    else
    {
      v28 = v30;
      sub_100047974(v30);
      sub_100009728(v28, v11, &qword_1000985F0, &qword_100075D40);
      swift_storeEnumTagMultiPayload();
      sub_10004ABF4();
      sub_10004AC80();
      sub_10006AA50();
      return sub_100009790(v28, &qword_1000985F0, &qword_100075D40);
    }
  }

  else
  {
    *v14 = sub_10006AE10();
    swift_storeEnumTagMultiPayload();
    sub_10004AB3C();

    sub_10006AA50();
    sub_100009728(v17, v11, &qword_100098610, &unk_100075D60);
    swift_storeEnumTagMultiPayload();
    sub_10004ABF4();
    sub_10004AC80();
    sub_10006AA50();

    return sub_100009790(v17, &qword_100098610, &unk_100075D60);
  }
}

uint64_t sub_100047974@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_100007DF0(&qword_1000986B8, &qword_100075DE0);
  __chkstk_darwin(v1);
  v3 = &v46 - v2;
  v4 = sub_100007DF0(&qword_100098668, &qword_100075D88);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_100007DF0(&qword_100098658, &qword_100075D80);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v47 = sub_100007DF0(&qword_100098648, &qword_100075D78);
  __chkstk_darwin(v47);
  v49 = &v46 - v10;
  v48 = sub_100007DF0(&qword_100098638, &qword_100075D70);
  __chkstk_darwin(v48);
  v50 = &v46 - v11;
  sub_100049464(v6);
  if (_UISolariumEnabled())
  {
    v12 = sub_10006AE10();
  }

  else
  {
    v12 = sub_10006AE80();
  }

  v13 = v12;
  sub_1000096C0(v6, v9, &qword_100098668, &qword_100075D88);
  v14 = *(v7 + 36);
  v51 = v9;
  v15 = &v9[v14];
  *v15 = v13;
  *(v15 + 8) = xmmword_100075BE0;
  *(v15 + 3) = 0x3FF0000000000000;
  sub_10006AFB0();
  sub_10006A790();
  v16 = v57;
  v17 = v58;
  v18 = v59;
  v19 = v60;
  v20 = v61;
  v21 = v62;
  v56 = v58;
  v55 = v60;
  if (_UISolariumEnabled())
  {
    v22 = sub_10006AE10();
  }

  else
  {
    v22 = sub_10006AE80();
  }

  v23 = v22;
  v24 = *(v1 + 36);
  v25 = enum case for BlendMode.plusDarker(_:);
  v26 = sub_10006AFD0();
  (*(*(v26 - 8) + 104))(&v3[v24], v25, v26);
  *v3 = v16;
  v3[8] = v17;
  *(v3 + 9) = *v54;
  *(v3 + 3) = *&v54[3];
  *(v3 + 2) = v18;
  v3[24] = v19;
  *(v3 + 25) = *v53;
  *(v3 + 7) = *&v53[3];
  *(v3 + 4) = v20;
  *(v3 + 5) = v21;
  *(v3 + 3) = xmmword_100075BF0;
  *(v3 + 8) = v23;
  *(v3 + 9) = 0;
  *(v3 + 10) = 0;
  *(v3 + 11) = 0xBFF0000000000000;
  v27 = sub_10006AFA0();
  v29 = v28;
  v30 = v49;
  v31 = &v49[*(v47 + 36)];
  sub_1000096C0(v3, v31, &qword_1000986B8, &qword_100075DE0);
  v32 = (v31 + *(sub_100007DF0(&qword_1000986A0, &qword_100075DA0) + 36));
  *v32 = v27;
  v32[1] = v29;
  sub_1000096C0(v51, v30, &qword_100098658, &qword_100075D80);
  v33 = v50;
  sub_1000096C0(v30, v50, &qword_100098648, &qword_100075D78);
  *(v33 + *(v48 + 36)) = 0;
  LOBYTE(v27) = sub_10006AB20();
  sub_10006A720();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v33;
  v43 = v52;
  sub_1000096C0(v42, v52, &qword_100098638, &qword_100075D70);
  result = sub_100007DF0(&qword_1000985F0, &qword_100075D40);
  v45 = v43 + *(result + 36);
  *v45 = v27;
  *(v45 + 8) = v35;
  *(v45 + 16) = v37;
  *(v45 + 24) = v39;
  *(v45 + 32) = v41;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_100047E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a2;
  v3 = sub_100007DF0(&qword_100098738, &qword_100075E48);
  v129 = *(v3 - 8);
  v130 = v3;
  __chkstk_darwin(v3);
  v113 = (&v99 - v4);
  v109 = sub_10006A9D0();
  v107 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100007DF0(&qword_100098740, &qword_100075E50);
  v111 = *(v112 - 8);
  v6 = __chkstk_darwin(v112);
  v110 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v108 = &v99 - v8;
  v9 = sub_100007DF0(&qword_100098748, &qword_100075E58);
  v10 = __chkstk_darwin(v9 - 8);
  v128 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v127 = &v99 - v12;
  v124 = sub_100007DF0(&qword_100098750, &qword_100075E60);
  v115 = *(v124 - 8);
  __chkstk_darwin(v124);
  v114 = &v99 - v13;
  v120 = sub_100007DF0(&qword_100098758, &qword_100075E68);
  __chkstk_darwin(v120);
  v116 = &v99 - v14;
  v123 = sub_100007DF0(&qword_100098760, &qword_100075E70);
  __chkstk_darwin(v123);
  v99 = &v99 - v15;
  v104 = sub_10006B0C0();
  v103 = *(v104 - 8);
  v16 = __chkstk_darwin(v104);
  v102 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v101 = &v99 - v18;
  v19 = sub_100007DF0(&qword_100098768, &qword_100075E78);
  v20 = __chkstk_darwin(v19 - 8);
  v126 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v134 = &v99 - v22;
  v23 = sub_100007DF0(&qword_100098770, &qword_100075E80);
  v117 = *(v23 - 8);
  v118 = v23;
  __chkstk_darwin(v23);
  v105 = &v99 - v24;
  v25 = sub_10006ABF0();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100007DF0(&qword_100098778, &qword_100075E88);
  v30 = __chkstk_darwin(v29);
  v32 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = (&v99 - v33);
  v35 = sub_100007DF0(&qword_100098780, &qword_100075E90);
  v36 = __chkstk_darwin(v35 - 8);
  v125 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v99 - v38;
  v132 = type metadata accessor for WidgetHeader(0);
  v40 = *(a1 + *(v132 + 36));
  v121 = v26;
  v122 = v25;
  v119 = v28;
  if (v40)
  {
    (*(v26 + 104))(v28, enum case for Font.TextStyle.body(_:), v25);

    v100 = sub_10006AB90();
    (*(v26 + 8))(v28, v25);
    KeyPath = swift_getKeyPath();
    v42 = (v34 + *(v29 + 36));
    v43 = *(sub_100007DF0(&qword_100097D88, &qword_1000753D0) + 28);
    v44 = enum case for Image.Scale.medium(_:);
    v45 = sub_10006AEE0();
    (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
    *v42 = swift_getKeyPath();
    *v34 = v40;
    v34[1] = KeyPath;
    v34[2] = v100;

    if (sub_1000462D4())
    {
      v46 = 0x4024000000000000;
    }

    else
    {
      v46 = 0x4010000000000000;
    }

    sub_100009728(v34, v32, &qword_100098778, &qword_100075E88);
    v47 = v105;
    sub_100009728(v32, v105, &qword_100098778, &qword_100075E88);
    v48 = *(sub_100007DF0(&qword_1000987E0, &qword_100075F38) + 48);

    v49 = v47 + v48;
    *v49 = v46;
    *(v49 + 8) = 0;
    sub_100009790(v34, &qword_100098778, &qword_100075E88);
    sub_100009790(v32, &qword_100098778, &qword_100075E88);
    sub_1000096C0(v47, v39, &qword_100098770, &qword_100075E80);
    (*(v117 + 56))(v39, 0, 1, v118);
  }

  else
  {
    (*(v117 + 56))(v39, 1, 1, v118);
  }

  v50 = v39;
  v51 = v132;
  v52 = v127;
  if (*(a1 + *(v132 + 40) + 8) || (v53 = v101, sub_10004642C(v101), v54 = v102, sub_10006B0B0(), v55 = sub_10006B080(), v56 = *(v103 + 8), v57 = v54, v58 = v104, v56(v57, v104), v56(v53, v58), (v55 & 1) == 0))
  {
    v66 = v114;
    sub_100048D00(v114);
    v67 = v115;
    v68 = v124;
    (*(v115 + 16))(v116, v66, v124);
    swift_storeEnumTagMultiPayload();
    sub_10004B0A0();
    v69 = sub_100008154(&qword_100098790, &qword_100075E98);
    v70 = sub_10004B168();
    v135 = v69;
    v136 = v70;
    swift_getOpaqueTypeConformance2();
    sub_10006AA50();
    (*(v67 + 8))(v66, v68);
  }

  else
  {
    v59 = v99;
    sub_100048D00(v99);
    v60 = *(v123 + 36);
    v61 = enum case for BlendMode.plusLighter(_:);
    v62 = sub_10006AFD0();
    (*(*(v62 - 8) + 104))(v59 + v60, v61, v62);
    sub_100009728(v59, v116, &qword_100098760, &qword_100075E70);
    swift_storeEnumTagMultiPayload();
    sub_10004B0A0();
    v63 = sub_100008154(&qword_100098790, &qword_100075E98);
    v64 = sub_10004B168();
    v135 = v63;
    v136 = v64;
    swift_getOpaqueTypeConformance2();
    sub_10006AA50();
    v65 = v59;
    v51 = v132;
    sub_100009790(v65, &qword_100098760, &qword_100075E70);
  }

  v71 = *(a1 + *(v51 + 44));
  v73 = v121;
  v72 = v122;
  v74 = v119;
  v133 = v50;
  if (v71)
  {
    (*(v121 + 104))(v119, enum case for Font.TextStyle.body(_:), v122);

    v75 = sub_10006AB90();
    (*(v73 + 8))(v74, v72);
    v76 = swift_getKeyPath();
    v135 = v71;
    v136 = v76;
    v137 = v75;
    v77 = v107;
    v78 = v106;
    v79 = v109;
    (*(v107 + 104))(v106, enum case for ContentSizeCategory.large(_:), v109);

    sub_100007DF0(&qword_1000987C8, &unk_100075EE8);
    sub_10004B3A8();
    v80 = v52;
    v81 = v108;
    sub_10006ACD0();
    (*(v77 + 8))(v78, v79);

    v82 = v111;
    v83 = *(v111 + 16);
    v84 = v110;
    v85 = v112;
    v83(v110, v81, v112);
    v86 = v113;
    *v113 = 0x4024000000000000;
    *(v86 + 8) = 0;
    v87 = sub_100007DF0(&qword_1000987D8, &unk_100075EF8);
    v83((v86 + *(v87 + 48)), v84, v85);

    v88 = *(v82 + 8);
    v89 = v81;
    v52 = v80;
    v50 = v133;
    v88(v89, v85);
    v88(v84, v85);
    sub_1000096C0(v86, v52, &qword_100098738, &qword_100075E48);
    v90 = 0;
  }

  else
  {
    v90 = 1;
  }

  (*(v129 + 56))(v52, v90, 1, v130);
  v91 = v125;
  sub_100009728(v50, v125, &qword_100098780, &qword_100075E90);
  v92 = v134;
  v93 = v126;
  sub_100009728(v134, v126, &qword_100098768, &qword_100075E78);
  v94 = v128;
  sub_100009728(v52, v128, &qword_100098748, &qword_100075E58);
  v95 = v52;
  v96 = v131;
  sub_100009728(v91, v131, &qword_100098780, &qword_100075E90);
  v97 = sub_100007DF0(&qword_1000987C0, &qword_100075EB0);
  sub_100009728(v93, v96 + *(v97 + 48), &qword_100098768, &qword_100075E78);
  sub_100009728(v94, v96 + *(v97 + 64), &qword_100098748, &qword_100075E58);
  sub_100009790(v95, &qword_100098748, &qword_100075E58);
  sub_100009790(v92, &qword_100098768, &qword_100075E78);
  sub_100009790(v133, &qword_100098780, &qword_100075E90);
  sub_100009790(v94, &qword_100098748, &qword_100075E58);
  sub_100009790(v93, &qword_100098768, &qword_100075E78);
  return sub_100009790(v91, &qword_100098780, &qword_100075E90);
}

uint64_t sub_100048D00@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v62 = sub_10006A9D0();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10006B100();
  v52 = *(v53 - 8);
  v3 = __chkstk_darwin(v53);
  v50 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = &v47 - v5;
  v6 = sub_10006ABF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100007DF0(&qword_1000987E8, &qword_100075F40);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v47 - v10;
  v57 = sub_100007DF0(&qword_100098790, &qword_100075E98);
  __chkstk_darwin(v57);
  v58 = &v47 - v11;
  v47 = type metadata accessor for WidgetHeader(0);
  v12 = *(v47 + 40);
  v51 = v1;
  v13 = *(v1 + v12 + 8);
  if (!v13)
  {
    sub_10006B2D0();
  }

  v48 = v13 == 0;
  (*(v7 + 104))(v9, enum case for Font.TextStyle.subheadline(_:), v6);

  sub_10006AB90();
  (*(v7 + 8))(v9, v6);
  v14 = sub_10006AC80();
  v16 = v15;
  v18 = v17;

  sub_10006ABE0();
  v19 = sub_10006AC40();
  v21 = v20;
  v23 = v22;
  sub_10000832C(v14, v16, v18 & 1);

  v24 = sub_10006AC50();
  v26 = v25;
  v28 = v27;
  sub_10000832C(v19, v21, v23 & 1);

  v29 = v49;
  sub_10005CB68(v49);
  v30 = v52;
  v31 = v50;
  v32 = v53;
  (*(v52 + 104))(v50, enum case for WidgetFamily.systemSmall(_:), v53);
  sub_10004B7A8(&qword_1000987F0, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10006B2F0();
  sub_10006B2F0();
  v33 = *(v30 + 8);
  v33(v31, v32);
  v33(v29, v32);
  v34 = sub_10006AC30();
  sub_10000832C(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  *&v63 = v34;
  *(&v63 + 1) = KeyPath;
  *&v64 = 1;
  BYTE8(v64) = 0;
  *&v65 = v36;
  *(&v65 + 1) = 0xC020000000000000;
  sub_100007DF0(&qword_1000987A0, &qword_100075EA0);
  sub_10004B230();
  v37 = v54;
  sub_10006AD70();

  sub_10006AFC0();
  sub_10006A7F0();
  v38 = v58;
  (*(v55 + 32))(v58, v37, v56);
  v39 = (v38 + *(v57 + 36));
  v40 = v68;
  v39[4] = v67;
  v39[5] = v40;
  v39[6] = v69;
  v41 = v64;
  *v39 = v63;
  v39[1] = v41;
  v42 = v66;
  v39[2] = v65;
  v39[3] = v42;
  v43 = v60;
  v44 = v59;
  v45 = v62;
  (*(v60 + 104))(v59, enum case for ContentSizeCategory.accessibilityMedium(_:), v62);
  sub_10004B168();
  sub_10006ACD0();
  (*(v43 + 8))(v44, v45);
  return sub_100009790(v38, &qword_100098790, &qword_100075E98);
}

uint64_t sub_100049464@<X0>(uint64_t a2@<X8>)
{
  v23 = a2;
  v2 = sub_100007DF0(&qword_1000986C0, &qword_100075DE8);
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v22 = sub_100007DF0(&qword_100098688, &qword_100075D98);
  __chkstk_darwin(v22);
  v6 = (&v21 - v5);
  v7 = sub_10006B0C0();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  sub_10004642C(&v21 - v12);
  sub_10006B0A0();
  sub_10004B7A8(&qword_1000986C8, &type metadata accessor for WidgetRenderingMode, &protocol conformance descriptor for WidgetRenderingMode);
  v14 = sub_10006B250();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if (v14)
  {
    *v6 = sub_10006AFB0();
    v6[1] = v16;
    v17 = sub_100007DF0(&qword_1000986D8, &qword_100075DF8);
    sub_100049878(v6 + *(v17 + 44));
    sub_100009728(v6, v4, &qword_100098688, &qword_100075D98);
    swift_storeEnumTagMultiPayload();
    sub_1000095F4(&qword_100098680, &qword_100098688, &qword_100075D98, &protocol conformance descriptor for ZStack<A>);
    sub_10004B044();
    sub_10006AA50();
    return sub_100009790(v6, &qword_100098688, &qword_100075D98);
  }

  else
  {
    sub_100007DF0(&qword_1000986D0, &qword_100075DF0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100075C00;
    *(v19 + 32) = sub_10006AE80();
    *(v19 + 40) = sub_10006AE80();
    sub_10006AF90();
    sub_10006AFE0();
    sub_10006AFF0();
    sub_10006A7C0();
    v20 = v25;
    *v4 = v24;
    *(v4 + 1) = v20;
    *(v4 + 4) = v26;
    swift_storeEnumTagMultiPayload();
    sub_1000095F4(&qword_100098680, &qword_100098688, &qword_100075D98, &protocol conformance descriptor for ZStack<A>);
    sub_10004B044();
    return sub_10006AA50();
  }
}

uint64_t sub_100049878@<X0>(char *a2@<X8>)
{
  v31 = a2;
  v29 = sub_10006ADE0();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_1000986E0, &qword_100075E00);
  __chkstk_darwin(v4);
  v6 = (&v27 - v5);
  v7 = sub_100007DF0(&qword_1000986E8, &qword_100075E08);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v28 = &v27 - v11;
  *v6 = sub_10006AFB0();
  v6[1] = v12;
  v13 = sub_100007DF0(&qword_1000986F0, &qword_100075E10);
  sub_100049C78(v6 + *(v13 + 44));
  _UISolariumEnabled();
  sub_1000095F4(&qword_1000986F8, &qword_1000986E0, &qword_100075E00, &protocol conformance descriptor for ZStack<A>);
  sub_10006ACE0();
  sub_100009790(v6, &qword_1000986E0, &qword_100075E00);
  sub_100007DF0(&qword_1000986D0, &qword_100075DF0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100075C00;
  type metadata accessor for WidgetHeader(0);
  v15 = enum case for Color.RGBColorSpace.sRGB(_:);
  v16 = *(v27 + 104);
  v17 = v29;
  v16(v3, enum case for Color.RGBColorSpace.sRGB(_:), v29);
  *(v14 + 32) = sub_10006AE70();
  v16(v3, v15, v17);
  *(v14 + 40) = sub_10006AE70();
  sub_10006AFE0();
  sub_10006AFF0();
  sub_10006AF90();
  sub_10006A7C0();
  v18 = *(v8 + 16);
  v19 = v30;
  v20 = v28;
  v18(v30, v28, v7);
  v22 = v31;
  v21 = v32;
  v18(v31, v19, v7);
  v23 = &v22[*(sub_100007DF0(&qword_100098700, &qword_100075E18) + 48)];
  *v23 = v21;
  v24 = v33;
  *(v23 + 24) = v34;
  *(v23 + 8) = v24;
  v25 = *(v8 + 8);

  v25(v20, v7);

  return (v25)(v19, v7);
}

uint64_t sub_100049C78@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v1 = sub_100007DF0(&qword_100098708, &qword_100075E20);
  __chkstk_darwin(v1);
  v3 = (v25 - v2);
  v4 = sub_100007DF0(&qword_100098710, &qword_100075E28);
  v5 = __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v25 - v8;
  v10 = sub_100007DF0(&qword_100098718, &qword_100075E30);
  __chkstk_darwin(v10);
  v12 = v25 - v11;
  v13 = sub_100007DF0(&qword_100098598, &qword_100075CF8);
  __chkstk_darwin(v13);
  v15 = v25 - v14;
  if (_UISolariumEnabled())
  {
    sub_10004712C(v15);
    sub_100009728(v15, v12, &qword_100098598, &qword_100075CF8);
    swift_storeEnumTagMultiPayload();
    sub_10004A5EC();
    sub_1000095F4(&qword_100098728, &qword_100098708, &qword_100075E20, &protocol conformance descriptor for TupleView<A>);
    sub_10006AA50();
    v16 = v15;
    v17 = &qword_100098598;
    v18 = &qword_100075CF8;
  }

  else
  {
    v25[0] = v1;
    if (qword_100096908 != -1)
    {
      swift_once();
    }

    v19 = qword_1000A5758;
    sub_10004712C(v9);
    v20 = *(v4 + 36);
    v21 = enum case for BlendMode.destinationOut(_:);
    v22 = sub_10006AFD0();
    (*(*(v22 - 8) + 104))(&v9[v20], v21, v22);
    sub_100009728(v9, v7, &qword_100098710, &qword_100075E28);
    *v3 = v19;
    v23 = sub_100007DF0(&qword_100098720, &qword_100075E38);
    sub_100009728(v7, v3 + *(v23 + 48), &qword_100098710, &qword_100075E28);
    swift_retain_n();
    sub_100009790(v7, &qword_100098710, &qword_100075E28);

    sub_100009728(v3, v12, &qword_100098708, &qword_100075E20);
    swift_storeEnumTagMultiPayload();
    sub_10004A5EC();
    sub_1000095F4(&qword_100098728, &qword_100098708, &qword_100075E20, &protocol conformance descriptor for TupleView<A>);
    sub_10006AA50();
    sub_100009790(v3, &qword_100098708, &qword_100075E20);
    v16 = v9;
    v17 = &qword_100098710;
    v18 = &qword_100075E28;
  }

  return sub_100009790(v16, v17, v18);
}

__n128 sub_10004A08C@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10006AC20();
  v5 = sub_10006ADB0();
  sub_100007DF0(&qword_1000985E8, &qword_100075D38);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100075C00;
  *(v6 + 32) = 0x3F50624DD2F1A9FCLL;
  *(v6 + 40) = *(a2 + *(type metadata accessor for WidgetHeader(0) + 52));
  sub_10006A760();
  v7 = sub_10006AFB0();
  *(a3 + 32) = v12;
  *(a3 + 48) = v13;
  *(a3 + 64) = v14;
  result = v11;
  *a3 = v10;
  *(a3 + 16) = v11;
  *(a3 + 80) = v5;
  *(a3 + 88) = 256;
  *(a3 + 96) = v7;
  *(a3 + 104) = v9;
  return result;
}

void sub_10004A1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006A7A0();
  v5 = v4;
  v6 = type metadata accessor for WidgetHeader(0);
  v11.x = remainder(v5, *(a3 + *(v6 + 52))) * 0.5;
  v11.y = 4.0;
  sub_10006AC00(v11);
  sub_10006A7A0();
  v8 = v7 * 0.25;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v8 - 0x2000000000000000) >> 62 == 3)
  {
    v9 = (4 * v8);
    sub_10006A7A0();
    v12.x = v9 + remainder(v10, 4.0) * -0.5;
    v12.y = 4.0;
    sub_10006AC10(v12);
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_10004A2B4()
{
  result = qword_100098550;
  if (!qword_100098550)
  {
    sub_100008154(&qword_100098530, &qword_100075CB0);
    sub_1000095F4(&qword_100098558, &qword_100098528, &qword_100075CA8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098550);
  }

  return result;
}

uint64_t sub_10004A36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetHeader(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004A438@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WidgetHeader(0);

  return sub_100046F4C(a1);
}

unint64_t sub_10004A4A8()
{
  result = qword_100098578;
  if (!qword_100098578)
  {
    sub_100008154(&qword_100098570, &qword_100075CE8);
    sub_10004A534();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098578);
  }

  return result;
}

unint64_t sub_10004A534()
{
  result = qword_100098580;
  if (!qword_100098580)
  {
    sub_100008154(&qword_100098588, &qword_100075CF0);
    sub_10004A5EC();
    sub_1000095F4(&qword_100097E28, &qword_100097E30, &qword_100075480, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098580);
  }

  return result;
}

unint64_t sub_10004A5EC()
{
  result = qword_100098590;
  if (!qword_100098590)
  {
    sub_100008154(&qword_100098598, &qword_100075CF8);
    sub_10004A678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098590);
  }

  return result;
}

unint64_t sub_10004A678()
{
  result = qword_1000985A0;
  if (!qword_1000985A0)
  {
    sub_100008154(&qword_1000985A8, &qword_100075D00);
    sub_10004A704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000985A0);
  }

  return result;
}

unint64_t sub_10004A704()
{
  result = qword_1000985B0;
  if (!qword_1000985B0)
  {
    sub_100008154(&qword_1000985B8, &qword_100075D08);
    sub_1000095F4(&qword_1000985C0, &qword_1000985C8, &unk_100075D10, &protocol conformance descriptor for HStack<A>);
    sub_1000095F4(&qword_100097E28, &qword_100097E30, &qword_100075480, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000985B0);
  }

  return result;
}

uint64_t sub_10004A7E8()
{
  v1 = type metadata accessor for WidgetHeader(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10006A9D0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10006B100();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_1000096B4(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v9 = v1[7];
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_10006B0C0();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
  }

  v11 = v1[8];
  v12 = sub_10006A520();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_10004AAB4@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for WidgetHeader(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  *&result = sub_10004A08C(v5, a2).n128_u64[0];
  return result;
}

unint64_t sub_10004AB3C()
{
  result = qword_100098618;
  if (!qword_100098618)
  {
    sub_100008154(&qword_1000985F8, &qword_100075D48);
    sub_1000095F4(&qword_100096C90, &qword_100096C98, &qword_10006F6B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098618);
  }

  return result;
}

unint64_t sub_10004ABF4()
{
  result = qword_100098620;
  if (!qword_100098620)
  {
    sub_100008154(&qword_100098610, &unk_100075D60);
    sub_10004AB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098620);
  }

  return result;
}

unint64_t sub_10004AC80()
{
  result = qword_100098628;
  if (!qword_100098628)
  {
    sub_100008154(&qword_1000985F0, &qword_100075D40);
    sub_10004AD0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098628);
  }

  return result;
}

unint64_t sub_10004AD0C()
{
  result = qword_100098630;
  if (!qword_100098630)
  {
    sub_100008154(&qword_100098638, &qword_100075D70);
    sub_10004ADC4();
    sub_1000095F4(&qword_1000986A8, &qword_1000986B0, &qword_100075DA8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098630);
  }

  return result;
}

unint64_t sub_10004ADC4()
{
  result = qword_100098640;
  if (!qword_100098640)
  {
    sub_100008154(&qword_100098648, &qword_100075D78);
    sub_10004AE7C();
    sub_1000095F4(&qword_100098698, &qword_1000986A0, &qword_100075DA0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098640);
  }

  return result;
}

unint64_t sub_10004AE7C()
{
  result = qword_100098650;
  if (!qword_100098650)
  {
    sub_100008154(&qword_100098658, &qword_100075D80);
    sub_10004AF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098650);
  }

  return result;
}

unint64_t sub_10004AF08()
{
  result = qword_100098660;
  if (!qword_100098660)
  {
    sub_100008154(&qword_100098668, &qword_100075D88);
    sub_10004AF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098660);
  }

  return result;
}

unint64_t sub_10004AF8C()
{
  result = qword_100098670;
  if (!qword_100098670)
  {
    sub_100008154(&qword_100098678, &qword_100075D90);
    sub_1000095F4(&qword_100098680, &qword_100098688, &qword_100075D98, &protocol conformance descriptor for ZStack<A>);
    sub_10004B044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098670);
  }

  return result;
}

unint64_t sub_10004B044()
{
  result = qword_100098690;
  if (!qword_100098690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098690);
  }

  return result;
}

unint64_t sub_10004B0A0()
{
  result = qword_100098788;
  if (!qword_100098788)
  {
    sub_100008154(&qword_100098760, &qword_100075E70);
    sub_100008154(&qword_100098790, &qword_100075E98);
    sub_10004B168();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098788);
  }

  return result;
}

unint64_t sub_10004B168()
{
  result = qword_100098798;
  if (!qword_100098798)
  {
    sub_100008154(&qword_100098790, &qword_100075E98);
    sub_100008154(&qword_1000987A0, &qword_100075EA0);
    sub_10004B230();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098798);
  }

  return result;
}

unint64_t sub_10004B230()
{
  result = qword_1000987A8;
  if (!qword_1000987A8)
  {
    sub_100008154(&qword_1000987A0, &qword_100075EA0);
    sub_10004B2E8();
    sub_1000095F4(&qword_1000987B0, &qword_1000987B8, &qword_100075EA8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000987A8);
  }

  return result;
}

unint64_t sub_10004B2E8()
{
  result = qword_1000981E0;
  if (!qword_1000981E0)
  {
    sub_100008154(&qword_1000981D8, &qword_100075878);
    sub_1000095F4(&qword_1000981E8, &qword_1000981F0, &unk_100075880, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000981E0);
  }

  return result;
}

unint64_t sub_10004B3A8()
{
  result = qword_1000987D0;
  if (!qword_1000987D0)
  {
    sub_100008154(&qword_1000987C8, &unk_100075EE8);
    sub_1000095F4(&qword_100096BD8, &qword_100096BE0, &qword_10006F610, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000987D0);
  }

  return result;
}

uint64_t sub_10004B4A8(uint64_t a1)
{
  v2 = sub_10006AEE0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10006A810();
}

unint64_t sub_10004B5D4()
{
  result = qword_1000987F8;
  if (!qword_1000987F8)
  {
    sub_100008154(&qword_100098560, &qword_100075CD0);
    sub_10004B660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000987F8);
  }

  return result;
}

unint64_t sub_10004B660()
{
  result = qword_100098800;
  if (!qword_100098800)
  {
    sub_100008154(&qword_100098540, &qword_100075CC0);
    sub_10004B6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098800);
  }

  return result;
}

unint64_t sub_10004B6EC()
{
  result = qword_100098808;
  if (!qword_100098808)
  {
    sub_100008154(&qword_100098538, &qword_100075CB8);
    sub_10004A2B4();
    sub_10004B7A8(&qword_100096B98, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100098808);
  }

  return result;
}

uint64_t sub_10004B7A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004B7F4()
{
  v0 = sub_10006A6C0();
  sub_10000D8DC(v0, qword_100098810);
  sub_10000CEB8(v0, qword_100098810);
  return sub_10006A6A0();
}

uint64_t sub_10004B840()
{
  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v0 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v0, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v1 = v22;
  swift_endAccess();
  if (!v22)
  {
    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v8 = sub_10006A6C0();
    sub_10000CEB8(v8, qword_100098810);
    v1 = sub_10006A6B0();
    v9 = sub_10006B3A0();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v1, v9, "No modern or HTML note context — returning nil default intent note", v10, 2u);
    }

    goto LABEL_28;
  }

  if (qword_1000968F0 != -1)
  {
    swift_once();
  }

  v2 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000CEB8(v2, qword_100098380);
  swift_beginAccess();
  sub_10006A620();
  swift_endAccess();
  v3 = [objc_opt_self() defaultAccountWithHTMLNoteContext:v22];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = v4;
      v6 = [v22 managedObjectContext];
      __chkstk_darwin(v6);
      sub_100007DF0(&qword_1000988D8, &qword_100076068);
LABEL_9:
      sub_10006B410();

      return v23;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v5 = v4;
      v15 = [v22 managedObjectContext];
      if (v15)
      {
        v6 = v15;
        __chkstk_darwin(v15);
        sub_100007DF0(&qword_1000988D8, &qword_100076068);
        goto LABEL_9;
      }

      goto LABEL_27;
    }

    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v16 = sub_10006A6C0();
    sub_10000CEB8(v16, qword_100098810);
    v17 = v4;
    v12 = sub_10006A6B0();
    v18 = sub_10006B3A0();

    if (os_log_type_enabled(v12, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = [v17 objectID];
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v12, v18, "Unknown default account type — returning nil default intent note {objectID: %@}", v19, 0xCu);
      sub_100009790(v20, &qword_100096D40, &unk_10006F770);
    }
  }

  else
  {
    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v11 = sub_10006A6C0();
    sub_10000CEB8(v11, qword_100098810);
    v12 = sub_10006A6B0();
    v13 = sub_10006B3A0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Cannot get default account — returning nil default intent note", v14, 2u);
    }
  }

LABEL_27:
LABEL_28:

  return 0;
}

void sub_10004BDC8(id a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = [a1 defaultFolder];
  v4 = sub_10004DB6C(v3);

  *a2 = v4;
}

void sub_10004BE24(id a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = [a1 defaultStore];
  if (v3)
  {
    v4 = v3;
    v5 = sub_10004E040(v3);

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10004BE88(uint64_t a1, void (*a2)(char *))
{
  v3 = sub_100007DF0(&qword_1000988E0, &unk_100076070);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = _s5EntryVMa_0(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007DF0(&qword_1000988C8, &qword_100076048);
  v10 = sub_10006B230();
  if (*(v10 + 16))
  {
    sub_10004E5A8(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, _s5EntryVMa_0);

    (*(v7 + 56))(v5, 0, 1, v6);
    sub_10004E610(v5, v9, _s5EntryVMa_0);
  }

  else
  {

    (*(v7 + 56))(v5, 1, 1, v6);
    v11 = *(v6 + 20);
    v12 = type metadata accessor for Note(0);
    (*(*(v12 - 8) + 56))(&v9[v11], 2, 2, v12);
    sub_10006A550();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_100009790(v5, &qword_1000988E0, &unk_100076070);
    }
  }

  a2(v9);
  return sub_10004E678(v9, _s5EntryVMa_0);
}

uint64_t sub_10004C0FC(void *a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v105 = a2;
  v113 = a4;
  v116 = a3;
  v5 = sub_10006B1A0();
  __chkstk_darwin(v5 - 8);
  v111 = (&v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10006A560();
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v107 = &v105 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  __chkstk_darwin(v9 - 8);
  v108 = &v105 - v10;
  v11 = sub_100007DF0(&qword_1000988C8, &qword_100076048);
  v114 = *(v11 - 8);
  v115 = v11;
  __chkstk_darwin(v11);
  v112 = &v105 - v12;
  v13 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v105 - v17;
  v19 = type metadata accessor for Note(0);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v105 - v24;
  if (qword_1000968E8 != -1)
  {
    swift_once();
  }

  v26 = sub_100007DF0(&qword_100097B78, &qword_100074C70);
  sub_10000CEB8(v26, qword_100098368);
  swift_beginAccess();
  sub_10006A620();
  v27 = v117;
  swift_endAccess();
  if (!v27)
  {
    goto LABEL_15;
  }

  if (qword_1000968F0 != -1)
  {
    swift_once();
  }

  v28 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000CEB8(v28, qword_100098380);
  swift_beginAccess();
  sub_10006A620();
  v29 = v117;
  swift_endAccess();
  if (!v29)
  {

LABEL_15:
    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v45 = sub_10006A6C0();
    sub_10000CEB8(v45, qword_100098810);
    v46 = sub_10006A6B0();
    v47 = sub_10006B3A0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "No modern or HTML note context — returning placeholder timeline", v48, 2u);
    }

    sub_100007DF0(&qword_1000988D0, &qword_100076060);
    v49 = _s5EntryVMa_0(0);
    v50 = (*(*(v49 - 8) + 80) + 32) & ~*(*(v49 - 8) + 80);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10006F820;
    v52 = v51 + v50;
    v53 = v108;
    (*(v20 + 56))(v108, 2, 2, v19);
    v54 = v107;
    sub_10006A550();
    (*(v109 + 32))(v52, v54, v110);
    sub_10004DAC4(v53, v52 + *(v49 + 20));
    sub_10006B190();
    sub_10004D858();
    v55 = v112;
    sub_10006B220();
    v116(v55);
    return (*(v114 + 8))(v55, v115);
  }

  v30 = [a1 note];
  if (!v30)
  {
    v57 = sub_10004B840();
    if (v57)
    {
      v58 = v57;
      v59 = v27;
      v60 = v29;
      v61 = v58;
      sub_10002E5E4(v61, v59, v60, v16);
      if ((*(v20 + 48))(v16, 1, v19) != 1)
      {
        sub_10004E610(v16, v23, type metadata accessor for Note);
        if (qword_100096918 != -1)
        {
          swift_once();
        }

        v84 = sub_10006A6C0();
        sub_10000CEB8(v84, qword_100098810);
        v85 = v61;
        v86 = sub_10006A6B0();
        v87 = sub_10006B390();

        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v118[0] = v111;
          *v88 = 136315138;
          v89 = [v85 identifier];
          if (v89)
          {
            v90 = v89;
            v91 = sub_10006B290();
            v93 = v92;
          }

          else
          {
            v91 = 9732322;
            v93 = 0xA300000000000000;
          }

          v103 = sub_1000378C4(v91, v93, v118);

          *(v88 + 4) = v103;
          _os_log_impl(&_mh_execute_header, v86, v87, "Returning timeline for default note {identifier: %s}", v88, 0xCu);
          sub_10000804C(v111);
        }

        v104 = v112;
        sub_10004D084(v23, v112);
        v116(v104);

        (*(v114 + 8))(v104, v115);
        return sub_10004E678(v23, type metadata accessor for Note);
      }

      sub_100009790(v16, &qword_100097C78, &unk_100076050);
    }

    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v62 = sub_10006A6C0();
    sub_10000CEB8(v62, qword_100098810);
    v63 = sub_10006A6B0();
    v64 = sub_10006B3A0();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "There is no intent note and cannot get default note — returning placeholder timeline", v65, 2u);
    }

    sub_100007DF0(&qword_1000988D0, &qword_100076060);
    v66 = _s5EntryVMa_0(0);
    v67 = (*(*(v66 - 8) + 80) + 32) & ~*(*(v66 - 8) + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_10006F820;
    v69 = v68 + v67;
    v70 = v108;
    (*(v20 + 56))(v108, 2, 2, v19);
    v71 = v107;
    sub_10006A550();
    (*(v109 + 32))(v69, v71, v110);
    sub_10004DAC4(v70, v69 + *(v66 + 20));
    sub_10006B190();
    sub_10004D858();
    v55 = v112;
    sub_10006B220();
    v116(v55);

    return (*(v114 + 8))(v55, v115);
  }

  v31 = v30;
  v32 = v27;
  v33 = v29;
  sub_10002E5E4(v31, v32, v33, v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_100009790(v18, &qword_100097C78, &unk_100076050);
    if (qword_100096918 != -1)
    {
      swift_once();
    }

    v34 = sub_10006A6C0();
    sub_10000CEB8(v34, qword_100098810);
    v35 = v31;
    v36 = sub_10006A6B0();
    v37 = sub_10006B3A0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v32;
      v39 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v118[0] = v105;
      *v39 = 136315138;
      v106 = v35;
      v40 = [v35 identifier];
      if (v40)
      {
        v41 = v40;
        v42 = sub_10006B290();
        v44 = v43;
      }

      else
      {
        v42 = 9732322;
        v44 = 0xA300000000000000;
      }

      v32 = v38;
      v94 = sub_1000378C4(v42, v44, v118);

      *(v39 + 4) = v94;
      _os_log_impl(&_mh_execute_header, v36, v37, "Cannot fetch note — returning deleted timeline {identifier: %s}", v39, 0xCu);
      sub_10000804C(v105);

      v35 = v106;
    }

    else
    {
    }

    sub_100007DF0(&qword_1000988D0, &qword_100076060);
    v95 = _s5EntryVMa_0(0);
    v96 = (*(*(v95 - 8) + 80) + 32) & ~*(*(v95 - 8) + 80);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_10006F820;
    v98 = v97 + v96;
    v99 = v108;
    (*(v20 + 56))(v108, 1, 2, v19);
    v100 = v107;
    sub_10006A550();
    (*(v109 + 32))(v98, v100, v110);
    sub_10004DAC4(v99, v98 + *(v95 + 20));
    sub_10006B190();
    sub_10004D858();
    v55 = v112;
    sub_10006B220();
    v116(v55);

    return (*(v114 + 8))(v55, v115);
  }

  sub_10004E610(v18, v25, type metadata accessor for Note);
  if (qword_100096918 != -1)
  {
    swift_once();
  }

  v72 = sub_10006A6C0();
  sub_10000CEB8(v72, qword_100098810);
  v73 = v31;
  v74 = sub_10006A6B0();
  v75 = sub_10006B390();

  if (os_log_type_enabled(v74, v75))
  {
    v111 = v32;
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v118[0] = v77;
    *v76 = 136315138;
    v78 = [v73 identifier];
    if (v78)
    {
      v79 = v33;
      v80 = v78;
      v81 = sub_10006B290();
      v83 = v82;

      v33 = v79;
    }

    else
    {
      v81 = 9732322;
      v83 = 0xA300000000000000;
    }

    v101 = sub_1000378C4(v81, v83, v118);

    *(v76 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v74, v75, "Returning timeline for note {identifier: %s}", v76, 0xCu);
    sub_10000804C(v77);

    v32 = v111;
  }

  else
  {
  }

  v102 = v112;
  sub_10004D084(v25, v112);
  v116(v102);

  (*(v114 + 8))(v102, v115);
  return sub_10004E678(v25, type metadata accessor for Note);
}

uint64_t sub_10004D084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v71 = a2;
  v2 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  __chkstk_darwin(v2 - 8);
  v70 = &v58 - v3;
  v4 = sub_100007DF0(&qword_100097FC8, &unk_100075580);
  __chkstk_darwin(v4 - 8);
  v63 = &v58 - v5;
  v6 = sub_10006B1A0();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = __chkstk_darwin(v6);
  v65 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v58 - v9;
  v62 = sub_10006A560();
  v73 = *(v62 - 8);
  v10 = __chkstk_darwin(v62);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v58 - v13;
  v15 = sub_10006A5F0();
  v60 = v15;
  v64 = *(v15 - 8);
  v16 = v64;
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10006A600();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v59 = &v58 - v24;
  v25 = sub_100007DF0(&qword_100097C70, &qword_100076A60);
  v26 = __chkstk_darwin(v25 - 8);
  v61 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v58 - v28;
  sub_10006A5E0();
  v30 = v18;
  (*(v16 + 104))(v18, enum case for Calendar.Component.day(_:), v15);
  sub_10006A5E0();
  sub_10006A550();
  sub_10006A5C0();
  v31 = *(v73 + 8);
  v32 = v12;
  v33 = v62;
  v31(v32, v62);
  v34 = *(v20 + 8);
  v58 = v20 + 8;
  v34(v23, v19);
  v35 = v29;
  v36 = v59;
  sub_10006A5D0();
  v72 = v14;
  v37 = v33;
  v38 = v31;
  v31(v14, v37);
  v39 = v63;
  (*(v64 + 8))(v30, v60);
  v40 = v73;
  v34(v36, v19);
  v41 = v37;
  v42 = v61;
  v64 = v35;
  sub_100037854(v35, v61);
  v43 = (*(v40 + 48))(v42, 1, v41);
  v44 = 1;
  if (v43 != 1)
  {
    v45 = v72;
    (*(v40 + 32))(v72, v42, v41);
    sub_10006B180();
    v38(v45, v41);
    v44 = 0;
  }

  v47 = v68;
  v46 = v69;
  (*(v68 + 56))(v39, v44, 1, v69);
  v48 = *(v47 + 48);
  if (v48(v39, 1, v46) == 1)
  {
    v49 = v66;
    sub_10006B190();
    if (v48(v39, 1, v46) != 1)
    {
      sub_100009790(v39, &qword_100097FC8, &unk_100075580);
    }
  }

  else
  {
    v49 = v66;
    (*(v47 + 32))(v66, v39, v46);
  }

  sub_100007DF0(&qword_1000988D0, &qword_100076060);
  v50 = _s5EntryVMa_0(0);
  v51 = (*(*(v50 - 8) + 80) + 32) & ~*(*(v50 - 8) + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10006F820;
  v53 = v52 + v51;
  v54 = v70;
  sub_10004E5A8(v67, v70, type metadata accessor for Note);
  v55 = type metadata accessor for Note(0);
  (*(*(v55 - 8) + 56))(v54, 0, 2, v55);
  v56 = v72;
  sub_10006A550();
  (*(v40 + 32))(v53, v56, v41);
  sub_10004DAC4(v54, v53 + *(v50 + 20));
  (*(v47 + 16))(v65, v49, v46);
  sub_10004D858();
  sub_10006B220();
  (*(v47 + 8))(v49, v46);
  return sub_100009790(v64, &qword_100097C70, &qword_100076A60);
}

unint64_t sub_10004D858()
{
  result = qword_1000988C0;
  if (!qword_1000988C0)
  {
    _s5EntryVMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000988C0);
  }

  return result;
}

uint64_t sub_10004D8B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(_s5EntryVMa_0(0) + 20);
  v3 = type metadata accessor for Note(0);
  (*(*(v3 - 8) + 56))(a1 + v2, 2, 2, v3);

  return sub_10006A550();
}

uint64_t sub_10004D930(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10006B200();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  (*(v10 + 16))(v12, a2, v9);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = v13;
  (*(v10 + 32))(&v15[v14], v12, v9);

  sub_10004C0FC(a1, a2, sub_10004E530, v15);
}

uint64_t sub_10004DAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007DF0(&qword_100096948, &qword_1000751E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10004DB6C(void *a1)
{
  v2 = sub_10006A520();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 managedObjectContext];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = objc_opt_self();
  v9 = [a1 customNoteSortType];
  isa = [v8 sortDescriptorsForCurrentTypeIncludingPinnedNotes:0 folderNoteSortType:v9];

  if (!isa)
  {
    sub_10000D894(0, &qword_100097FF8, NSSortDescriptor_ptr);
    sub_10006B320();
    isa = sub_10006B310().super.isa;
  }

  sub_10000D894(0, &qword_100097C80, ICNote_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [a1 predicateForVisibleNotes];
  v13 = [ObjCClassFromMetadata ic_objectsMatchingPredicate:v12 sortDescriptors:isa context:v7];

  sub_10000D894(0, &qword_100097C88, NSManagedObject_ptr);
  v14 = sub_10006B320();

  if (v14 >> 62)
  {
    result = sub_10006B4F0();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_16:

    goto LABEL_17;
  }

  result = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = sub_10006B480();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = v15;

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = [objc_opt_self() appURLForNote:v17];
    if (v19)
    {
      v20 = v19;
      sub_10006A4F0();

      sub_10006A4D0();
      v21 = [v18 title];
      if (v21)
      {
        v22 = v21;
        sub_10006B290();
      }

      v23 = objc_allocWithZone(ICIntentNote);
      v24 = sub_10006B280();

      v25 = sub_10006B280();

      v26 = [v23 initWithIdentifier:v24 displayString:v25];

      (*(v3 + 8))(v5, v2);
      return v26;
    }
  }

LABEL_17:
  if (qword_100096918 != -1)
  {
    swift_once();
  }

  v27 = sub_10006A6C0();
  sub_10000CEB8(v27, qword_100098810);
  v28 = a1;
  v29 = sub_10006A6B0();
  v30 = sub_10006B390();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = [v28 objectID];
    *(v31 + 4) = v33;
    *v32 = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "No note in folder — returning nil intent note {objectID: %@}", v31, 0xCu);
    sub_100009790(v32, &qword_100096D40, &unk_10006F770);
  }

  return 0;
}

id sub_10004E040(void *a1)
{
  v2 = sub_10006A520();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (qword_1000968F0 != -1)
  {
    swift_once();
  }

  v6 = sub_100007DF0(&qword_100097FE0, &qword_1000755A8);
  sub_10000CEB8(v6, qword_100098380);
  swift_beginAccess();
  sub_10006A620();
  v7 = v29;
  swift_endAccess();
  if (v7)
  {
    v8 = [v7 allVisibleNotesInCollection:a1 sorted:1];

    if (v8)
    {
      v9 = sub_10006B320();

      if (*(v9 + 16))
      {
        sub_100037E6C(v9 + 32, v28);

        sub_10000D894(0, &qword_100098008, NoteObject_ptr);
        if (swift_dynamicCast())
        {
          v10 = v29;
          v11 = [objc_opt_self() appURLForHTMLNote:v29];
          if (v11)
          {
            v12 = v11;
            sub_10006A4F0();

            sub_10006A4D0();
            v13 = [v10 title];
            if (v13)
            {
              v14 = v13;
              sub_10006B290();
            }

            v23 = objc_allocWithZone(ICIntentNote);
            v24 = sub_10006B280();

            v25 = sub_10006B280();

            v26 = [v23 initWithIdentifier:v24 displayString:v25];

            (*(v3 + 8))(v5, v2);
            return v26;
          }
        }
      }

      else
      {
      }
    }
  }

  if (qword_100096918 != -1)
  {
    swift_once();
  }

  v15 = sub_10006A6C0();
  sub_10000CEB8(v15, qword_100098810);
  v16 = a1;
  v17 = sub_10006A6B0();
  v18 = sub_10006B390();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = [v16 objectID];
    *(v19 + 4) = v21;
    *v20 = v21;
    _os_log_impl(&_mh_execute_header, v17, v18, "No note in HTML folder — returning nil intent note {objectID: %@}", v19, 0xCu);
    sub_100009790(v20, &qword_100096D40, &unk_10006F770);
  }

  return 0;
}

uint64_t sub_10004E464()
{
  v1 = sub_10006B200();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10004E530(uint64_t a1)
{
  sub_10006B200();
  v3 = *(v1 + 16);

  return sub_10004BE88(a1, v3);
}

uint64_t sub_10004E5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004E610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004E678(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004E6FC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Note(0);
    return a2;
  }

  return result;
}

uint64_t sub_10004E7B4(uint64_t a1)
{
  v2 = sub_10006A9D0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10006A870();
}

uint64_t sub_10004E87C()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NotesFolderWidgetView(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10006B3B0();
    v7 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10004E9D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_10006AB00();
  v24 = *(v3 - 8);
  v25 = v3;
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006ABF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007DF0(&qword_100098988, &qword_100076190);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v23 = sub_100007DF0(&qword_100098990, &qword_100076198);
  v13 = *(v23 - 8);
  __chkstk_darwin(v23);
  v15 = &v23 - v14;
  *v12 = sub_10006A9F0();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v16 = sub_100007DF0(&qword_100098998, &qword_1000761A0);
  sub_10004ED6C(v2, &v12[*(v16 + 44)]);
  (*(v7 + 104))(v9, enum case for Font.TextStyle.footnote(_:), v6);
  v17 = sub_10006AB90();
  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath();
  v19 = &v12[*(v10 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  sub_10006AAF0();
  sub_10006AFB0();
  v20 = sub_10005CD98();
  sub_10006AD80();
  (*(v24 + 8))(v5, v25);
  sub_100009790(v12, &qword_100098988, &qword_100076190);
  v27 = v10;
  v28 = &type metadata for Color;
  v29 = v20;
  v30 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v21 = v23;
  sub_10006AD60();
  return (*(v13 + 8))(v15, v21);
}

uint64_t sub_10004ED6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_10006AAB0();
  v52 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100007DF0(&qword_1000989B8, &qword_1000761E8);
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v7 = &v50 - v6;
  v8 = sub_100007DF0(&qword_1000989C0, &qword_1000761F0);
  __chkstk_darwin(v8);
  v10 = (&v50 - v9);
  v57 = sub_100007DF0(&qword_1000989C8, &qword_1000761F8);
  __chkstk_darwin(v57);
  v12 = &v50 - v11;
  v55 = sub_100007DF0(&qword_1000989D0, &qword_100076200);
  __chkstk_darwin(v55);
  v56 = (&v50 - v13);
  v14 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - v15;
  v17 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(a1 + *(v17 + 28), v16, &qword_100097E60, &qword_100076080);
  v18 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v19 = (*(*(v18 - 8) + 48))(v16, 2, v18);
  if (v19)
  {
    if (v19 == 1)
    {
      sub_10004F80C(&v64);
      v20 = v64;
      sub_10006A980();
      v21 = sub_10006AC90();
      v23 = v22;
      v25 = v24;
      sub_100050AA0(v21, v22, v24 & 1, v26, &v64);
      sub_10000832C(v21, v23, v25 & 1);

      v27 = v64;

      *v10 = v20;
      v10[1] = v27;

      swift_storeEnumTagMultiPayload();

      sub_100007DF0(&qword_1000989F8, &qword_100076218);
      sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218, &protocol conformance descriptor for TupleView<A>);
      v28 = sub_100008154(&qword_1000989D8, &qword_100076208);
      v29 = sub_10005CE7C();
      *&v64 = v28;
      *(&v64 + 1) = v29;
      swift_getOpaqueTypeConformance2();
      sub_10006AA50();
      sub_100009728(v12, v56, &qword_1000989C8, &qword_1000761F8);
      swift_storeEnumTagMultiPayload();
      sub_100007DF0(&qword_100098A08, &qword_100076220);
      sub_10005CF2C();
      sub_10005CFDC();
      sub_10006AA50();

      return sub_100009790(v12, &qword_1000989C8, &qword_1000761F8);
    }

    else
    {
      sub_100051700(a1, &v59);
      sub_10006AA90();
      v35 = sub_100007DF0(&qword_1000989D8, &qword_100076208);
      v36 = sub_10005CE7C();
      v51 = v7;
      sub_10006AD90();
      (*(v52 + 8))(v5, v3);
      v66 = v61;
      v67 = v62;
      v68 = v63;
      v64 = v59;
      v65 = v60;
      sub_100009790(&v64, &qword_1000989D8, &qword_100076208);
      v37 = v53;
      v38 = v7;
      v39 = v54;
      (*(v53 + 16))(v10, v38, v54);
      swift_storeEnumTagMultiPayload();
      sub_100007DF0(&qword_1000989F8, &qword_100076218);
      sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218, &protocol conformance descriptor for TupleView<A>);
      *&v59 = v35;
      *(&v59 + 1) = v36;
      swift_getOpaqueTypeConformance2();
      sub_10006AA50();
      sub_100009728(v12, v56, &qword_1000989C8, &qword_1000761F8);
      swift_storeEnumTagMultiPayload();
      sub_100007DF0(&qword_100098A08, &qword_100076220);
      sub_10005CF2C();
      sub_10005CFDC();
      sub_10006AA50();
      sub_100009790(v12, &qword_1000989C8, &qword_1000761F8);
      return (*(v37 + 8))(v51, v39);
    }
  }

  else if (*(*&v16[*(v18 + 48)] + 16))
  {
    sub_10004F80C(&v64);
    v31 = v64;
    sub_1000512D8(&v64);
    v32 = v64;

    *&v59 = v31;
    *(&v59 + 1) = v32;
    LOBYTE(v60) = 1;

    sub_100007DF0(&qword_1000989F8, &qword_100076218);
    sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218, &protocol conformance descriptor for TupleView<A>);
    sub_10006AA50();
    v33 = v65;
    v34 = v56;
    *v56 = v64;
    *(v34 + 16) = v33;
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100098A08, &qword_100076220);
    sub_10005CF2C();
    sub_10005CFDC();
    sub_10006AA50();

    return sub_100009790(v16, &qword_100097E68, &qword_1000755A0);
  }

  else
  {
    sub_10004F80C(&v64);
    v40 = v64;
    sub_10006A980();
    v41 = sub_10006AC90();
    v43 = v42;
    v45 = v44;
    sub_100050AA0(v41, v42, v44 & 1, v46, &v64);
    sub_10000832C(v41, v43, v45 & 1);

    v47 = v64;

    *&v59 = v40;
    *(&v59 + 1) = v47;
    LOBYTE(v60) = 0;

    sub_100007DF0(&qword_1000989F8, &qword_100076218);
    sub_1000095F4(&qword_100098A00, &qword_1000989F8, &qword_100076218, &protocol conformance descriptor for TupleView<A>);
    sub_10006AA50();
    v48 = v65;
    v49 = v56;
    *v56 = v64;
    *(v49 + 16) = v48;
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100098A08, &qword_100076220);
    sub_10005CF2C();
    sub_10005CFDC();
    sub_10006AA50();

    return sub_10005D0D8(v16, type metadata accessor for NotesFolder);
  }
}

uint64_t sub_10004F80C@<X0>(uint64_t *a1@<X8>)
{
  v170 = a1;
  v2 = sub_10006A590();
  v163 = *(v2 - 8);
  v164 = v2;
  __chkstk_darwin(v2);
  v162 = &v143 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006AAB0();
  v168 = *(v4 - 8);
  v169 = v4;
  __chkstk_darwin(v4);
  v167 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007DF0(&qword_100096A58, &unk_100075C30);
  v7 = __chkstk_darwin(v6 - 8);
  v158 = (&v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __chkstk_darwin(v7);
  v156 = (&v143 - v10);
  __chkstk_darwin(v9);
  v152 = (&v143 - v11);
  v147 = sub_10006B100();
  v145 = *(v147 - 8);
  v12 = __chkstk_darwin(v147);
  v146 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = &v143 - v14;
  v15 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  v16 = __chkstk_darwin(v15 - 8);
  v154 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v153 = &v143 - v19;
  __chkstk_darwin(v18);
  v161 = &v143 - v20;
  v165 = type metadata accessor for WidgetHeader(0);
  v21 = __chkstk_darwin(v165);
  v150 = (&v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v21);
  v149 = (&v143 - v24);
  __chkstk_darwin(v23);
  v159 = (&v143 - v25);
  v166 = sub_100007DF0(&qword_100098C78, &qword_100076450);
  v151 = *(v166 - 8);
  v26 = __chkstk_darwin(v166);
  v157 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v155 = &v143 - v29;
  __chkstk_darwin(v28);
  v160 = &v143 - v30;
  v31 = sub_100007DF0(&qword_100098C80, &qword_100076458);
  __chkstk_darwin(v31);
  v33 = (&v143 - v32);
  v34 = type metadata accessor for NotesFolder(0);
  __chkstk_darwin(v34);
  v36 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v37 - 8);
  v39 = &v143 - v38;
  v40 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(v1 + *(v40 + 28), v39, &qword_100097E60, &qword_100076080);
  v41 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v42 = (*(*(v41 - 8) + 48))(v39, 2, v41);
  if (v42)
  {
    if (v42 == 1)
    {
      v43 = sub_10006A520();
      v44 = v153;
      (*(*(v43 - 8) + 56))(v153, 1, 1, v43);
      v45 = v162;
      sub_10006A580();
      sub_10006A570();

      v163[1](v45, v164);
      v46 = [objc_opt_self() defaultSystemImageName];
      sub_10006B290();

      v47 = sub_10006AEA0();
      KeyPath = swift_getKeyPath();
      v49 = swift_getKeyPath();
      v50 = v156;
      *v156 = v49;
      sub_100007DF0(&qword_100096A40, &unk_10006F460);
      swift_storeEnumTagMultiPayload();
      v51 = objc_opt_self();
      v52 = -17.0;
      if ([v51 ic_isiPad])
      {
        v53 = -19.0;
      }

      else
      {
        v53 = -17.0;
      }

      if ([v51 ic_isiPad])
      {
        v52 = -18.0;
      }

      v54 = swift_getKeyPath();
      v55 = v149;
      *v149 = v54;
      sub_100007DF0(&qword_100098128, &qword_100075CE0);
      swift_storeEnumTagMultiPayload();
      v56 = v165;
      v57 = *(v165 + 20);
      *(v55 + v57) = swift_getKeyPath();
      sub_100007DF0(&qword_100096A38, &qword_1000757C0);
      swift_storeEnumTagMultiPayload();
      v58 = v55 + v56[6];
      *v58 = KeyPath;
      *(v58 + 8) = 0;
      sub_1000096C0(v50, v55 + v56[7], &qword_100096A58, &unk_100075C30);
      sub_1000096C0(v44, v55 + v56[8], &qword_100096B30, &qword_10006F548);
      *(v55 + v56[9]) = v47;
      *(v55 + v56[10]) = xmmword_1000755D0;
      *(v55 + v56[11]) = 0;
      v59 = _UISolariumEnabled();
      v60 = 2.0;
      if (!v59)
      {
        v60 = 0.0;
      }

      *(v55 + v56[12]) = v60;
      v61 = _UISolariumEnabled();
      v62 = 4.0;
      if (v61)
      {
        v62 = 5.0;
      }

      *(v55 + v56[13]) = v62;
      v63 = _UISolariumEnabled();
      v64 = 0.125;
      if (!v63)
      {
        v64 = 0.0;
      }

      *(v55 + v56[14]) = v64;
      v65 = _UISolariumEnabled();
      v66 = 0.31;
      if (v65)
      {
        v66 = 0.25;
      }

      *(v55 + v56[15]) = v66;
      v67 = _UISolariumEnabled();
      v68 = -1.5;
      if (!v67)
      {
        v68 = 0.0;
      }

      *(v55 + v56[16]) = v68;
      *(v55 + v56[17]) = v53;
      *(v55 + v56[18]) = v52;
      v69 = v167;
      sub_10006AA90();
      v70 = sub_10005DE74(&qword_100098C88, type metadata accessor for WidgetHeader, &unk_100075C54);
      sub_10006AD90();
      (*(v168 + 8))(v69, v169);
      sub_10005D0D8(v55, type metadata accessor for WidgetHeader);
      v171 = v56;
    }

    else
    {
      v84 = sub_10006A520();
      v85 = v154;
      (*(*(v84 - 8) + 56))(v154, 1, 1, v84);
      v86 = v162;
      sub_10006A580();
      sub_10006A570();

      v163[1](v86, v164);
      v87 = [objc_opt_self() defaultSystemImageName];
      sub_10006B290();

      v88 = sub_10006AEA0();
      v89 = swift_getKeyPath();
      v90 = swift_getKeyPath();
      v91 = v158;
      *v158 = v90;
      sub_100007DF0(&qword_100096A40, &unk_10006F460);
      swift_storeEnumTagMultiPayload();
      v92 = objc_opt_self();
      v93 = -17.0;
      if ([v92 ic_isiPad])
      {
        v94 = -19.0;
      }

      else
      {
        v94 = -17.0;
      }

      if ([v92 ic_isiPad])
      {
        v93 = -18.0;
      }

      v95 = swift_getKeyPath();
      v96 = v150;
      *v150 = v95;
      sub_100007DF0(&qword_100098128, &qword_100075CE0);
      swift_storeEnumTagMultiPayload();
      v97 = v165;
      v98 = *(v165 + 20);
      *(v96 + v98) = swift_getKeyPath();
      sub_100007DF0(&qword_100096A38, &qword_1000757C0);
      swift_storeEnumTagMultiPayload();
      v99 = v96 + v97[6];
      *v99 = v89;
      *(v99 + 8) = 0;
      sub_1000096C0(v91, v96 + v97[7], &qword_100096A58, &unk_100075C30);
      sub_1000096C0(v85, v96 + v97[8], &qword_100096B30, &qword_10006F548);
      *(v96 + v97[9]) = v88;
      v100 = (v96 + v97[10]);
      *v100 = 0;
      v100[1] = 0;
      *(v96 + v97[11]) = 0;
      v101 = _UISolariumEnabled();
      v102 = 2.0;
      if (!v101)
      {
        v102 = 0.0;
      }

      *(v96 + v97[12]) = v102;
      v103 = _UISolariumEnabled();
      v104 = 4.0;
      if (v103)
      {
        v104 = 5.0;
      }

      *(v96 + v97[13]) = v104;
      v105 = _UISolariumEnabled();
      v106 = 0.125;
      if (!v105)
      {
        v106 = 0.0;
      }

      *(v96 + v97[14]) = v106;
      v107 = _UISolariumEnabled();
      v108 = 0.31;
      if (v107)
      {
        v108 = 0.25;
      }

      *(v96 + v97[15]) = v108;
      v109 = _UISolariumEnabled();
      v110 = -1.5;
      if (!v109)
      {
        v110 = 0.0;
      }

      *(v96 + v97[16]) = v110;
      *(v96 + v97[17]) = v94;
      *(v96 + v97[18]) = v93;
      v111 = v167;
      sub_10006AA90();
      v70 = sub_10005DE74(&qword_100098C88, type metadata accessor for WidgetHeader, &unk_100075C54);
      sub_10006AD90();
      (*(v168 + 8))(v111, v169);
      sub_10005D0D8(v96, type metadata accessor for WidgetHeader);
      v171 = v97;
    }

    v172 = v70;
    swift_getOpaqueTypeConformance2();
    result = sub_10006AF20();
  }

  else
  {
    v71 = v148;
    v163 = v33;
    v164 = v31;

    sub_10005E174(v39, v36, type metadata accessor for NotesFolder);
    sub_100009728(&v36[*(v34 + 32)], v161, &qword_100096B30, &qword_10006F548);
    v72 = *&v36[*(v34 + 36)];
    v74 = *(v36 + 2);
    v73 = *(v36 + 3);
    v75 = v36[32] == 1;
    v144 = v36;
    if (v75)
    {
      v76 = v36;
      v77 = v34;
      v162 = v74;
      v158 = v72;

      v116 = v73;

      v78 = v71;
      sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v71);
      v79 = v145;
      v80 = v146;
      v81 = v147;
      (*(v145 + 104))(v146, enum case for WidgetFamily.systemSmall(_:), v147);
      sub_10005DE74(&qword_100098A20, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
      v82 = sub_10006B250();
      v83 = *(v79 + 8);
      v83(v80, v81);
      v83(v78, v81);
      if (v82)
      {
        v114 = 0;
      }

      else
      {
        v171 = *&v76[*(v77 + 40)];
        sub_10005EDF4();

        v114 = sub_10006AF20();
      }

      v115 = v152;
      v74 = v162;
      v113 = v158;
    }

    else
    {
      v113 = v72;

      v114 = 0;
      v115 = v152;
      v116 = v73;
    }

    v117 = swift_getKeyPath();
    *v115 = swift_getKeyPath();
    sub_100007DF0(&qword_100096A40, &unk_10006F460);
    swift_storeEnumTagMultiPayload();
    v118 = objc_opt_self();
    v119 = -17.0;
    if ([v118 ic_isiPad])
    {
      v120 = -19.0;
    }

    else
    {
      v120 = -17.0;
    }

    if ([v118 ic_isiPad])
    {
      v119 = -18.0;
    }

    v121 = swift_getKeyPath();
    v122 = v159;
    *v159 = v121;
    sub_100007DF0(&qword_100098128, &qword_100075CE0);
    swift_storeEnumTagMultiPayload();
    v123 = v165;
    v124 = *(v165 + 20);
    *(v122 + v124) = swift_getKeyPath();
    sub_100007DF0(&qword_100096A38, &qword_1000757C0);
    swift_storeEnumTagMultiPayload();
    v125 = v122 + v123[6];
    *v125 = v117;
    *(v125 + 8) = 0;
    sub_1000096C0(v115, v122 + v123[7], &qword_100096A58, &unk_100075C30);
    sub_1000096C0(v161, v122 + v123[8], &qword_100096B30, &qword_10006F548);
    *(v122 + v123[9]) = v113;
    v126 = (v122 + v123[10]);
    *v126 = v74;
    v126[1] = v116;
    *(v122 + v123[11]) = v114;
    v127 = _UISolariumEnabled();
    v128 = 2.0;
    if (!v127)
    {
      v128 = 0.0;
    }

    *(v122 + v123[12]) = v128;
    v129 = _UISolariumEnabled();
    v130 = 4.0;
    if (v129)
    {
      v130 = 5.0;
    }

    *(v122 + v123[13]) = v130;
    v131 = _UISolariumEnabled();
    v132 = 0.125;
    if (!v131)
    {
      v132 = 0.0;
    }

    *(v122 + v123[14]) = v132;
    v133 = _UISolariumEnabled();
    v134 = 0.31;
    if (v133)
    {
      v134 = 0.25;
    }

    *(v122 + v123[15]) = v134;
    v135 = _UISolariumEnabled();
    v136 = -1.5;
    if (!v135)
    {
      v136 = 0.0;
    }

    *(v122 + v123[16]) = v136;
    *(v122 + v123[17]) = v120;
    *(v122 + v123[18]) = v119;
    v137 = v167;
    sub_10006AA90();
    v138 = sub_10005DE74(&qword_100098C88, type metadata accessor for WidgetHeader, &unk_100075C54);
    v139 = v160;
    sub_10006AD90();
    (*(v168 + 8))(v137, v169);
    sub_10005D0D8(v122, type metadata accessor for WidgetHeader);
    v140 = v144;
    sub_100009994();
    v171 = v123;
    v172 = v138;
    swift_getOpaqueTypeConformance2();
    v141 = v166;
    sub_10006AD30();

    (*(v151 + 8))(v139, v141);
    sub_10005ECD8();
    v142 = sub_10006AF20();
    sub_10005D0D8(v140, type metadata accessor for NotesFolder);
    result = v142;
  }

  *v170 = result;
  return result;
}

uint64_t sub_100050AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v61 = a4;
  v59 = a3;
  v60 = a2;
  v58 = a1;
  v62 = a5;
  v49[0] = sub_100007DF0(&qword_100098B80, &qword_100076328);
  __chkstk_darwin(v49[0]);
  v7 = v49 - v6;
  v52 = sub_100007DF0(&qword_100098B88, &qword_100076330);
  __chkstk_darwin(v52);
  v50 = v49 - v8;
  v51 = sub_100007DF0(&qword_100098B90, &qword_100076338);
  __chkstk_darwin(v51);
  v49[1] = v49 - v9;
  v57 = sub_10006AAB0();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007DF0(&qword_100098B98, &qword_100076340);
  __chkstk_darwin(v12);
  v14 = v49 - v13;
  v55 = sub_100007DF0(&qword_100098BA0, &qword_100076348);
  __chkstk_darwin(v55);
  v16 = v49 - v15;
  v54 = sub_100007DF0(&qword_100098BA8, &qword_100076350);
  __chkstk_darwin(v54);
  v53 = v49 - v17;
  v18 = sub_10006B100();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NotesFolderWidgetView(0);
  v22 = v5;
  sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v21);
  v23 = (*(v19 + 88))(v21, v18);
  if (v23 == enum case for WidgetFamily.systemSmall(_:))
  {
    *v14 = sub_10006A9E0();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v24 = sub_100007DF0(&qword_100098BD8, &qword_100076368);
    sub_100053E60(v58, v60, v59 & 1, v61, v5, &v14[*(v24 + 44)]);
    v25 = sub_10006AB40();
    v26 = &v14[*(v12 + 36)];
    *v26 = v25;
    *(v26 + 8) = 0u;
    *(v26 + 24) = 0u;
    v26[40] = 1;
    sub_10006AFB0();
    sub_10006A7F0();
    sub_1000096C0(v14, v16, &qword_100098B98, &qword_100076340);
    v27 = v55;
    v28 = &v16[*(v55 + 36)];
    v29 = v70;
    *(v28 + 4) = v69;
    *(v28 + 5) = v29;
    *(v28 + 6) = v71;
    v30 = v66;
    *v28 = v65;
    *(v28 + 1) = v30;
    v31 = v68;
    *(v28 + 2) = v67;
    *(v28 + 3) = v31;
    sub_10006AAA0();
    v32 = sub_10005EA80(&qword_100098BE0, &qword_100098BA0, &qword_100076348, sub_10005EBBC);
    sub_10006AD90();
    (*(v56 + 8))(v11, v57);
    sub_100009790(v16, &qword_100098BA0, &qword_100076348);
    v63 = v27;
    v64 = v32;
    swift_getOpaqueTypeConformance2();
  }

  else
  {
    v33 = v59;
    v34 = v58;
    v36 = v60;
    v35 = v61;
    if (v23 != enum case for WidgetFamily.systemMedium(_:) && v23 != enum case for WidgetFamily.systemLarge(_:) && v23 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      *v62 = sub_10006AF20();
      return (*(v19 + 8))(v21, v18);
    }

    *v7 = sub_10006A9E0();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v38 = sub_100007DF0(&qword_100098BB0, &qword_100076358);
    sub_1000545F4(v34, v36, v33 & 1, v35, v22, &v7[*(v38 + 44)]);
    v39 = sub_10006AB30();
    v40 = &v7[*(v49[0] + 36)];
    *v40 = v39;
    *(v40 + 8) = 0u;
    *(v40 + 24) = 0u;
    v40[40] = 1;
    sub_10006AFB0();
    sub_10006A7F0();
    v41 = v50;
    sub_1000096C0(v7, v50, &qword_100098B80, &qword_100076328);
    v42 = v52;
    v43 = (v41 + *(v52 + 36));
    v44 = v70;
    v43[4] = v69;
    v43[5] = v44;
    v43[6] = v71;
    v45 = v66;
    *v43 = v65;
    v43[1] = v45;
    v46 = v68;
    v43[2] = v67;
    v43[3] = v46;
    v47 = v11;
    sub_10006AAA0();
    v48 = sub_10005EA80(&qword_100098BB8, &qword_100098B88, &qword_100076330, sub_10005EB04);
    sub_10006AD90();
    (*(v56 + 8))(v47, v57);
    sub_100009790(v41, &qword_100098B88, &qword_100076330);
    v63 = v42;
    v64 = v48;
    swift_getOpaqueTypeConformance2();
  }

  result = sub_10006AF20();
  *v62 = result;
  return result;
}

uint64_t sub_1000512D8@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v2 = sub_10006B100();
  v27 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = type metadata accessor for NotesFolderWidgetView(0);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  sub_100009728(v1 + *(v8 + 28), &v26 - v12, &qword_100097E60, &qword_100076080);
  v14 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if ((*(*(v14 - 8) + 48))(v13, 2, v14))
  {
    result = sub_10006AF20();
    *v28 = result;
  }

  else
  {
    v16 = *&v13[*(v14 + 48)];
    sub_10005E108(v1, &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotesFolderWidgetView);
    v17 = (*(v26 + 80) + 24) & ~*(v26 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    sub_10005E174(v10, v18 + v17, type metadata accessor for NotesFolderWidgetView);
    v19 = sub_10006AB50();
    v26 = v1;
    sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v7);
    v20 = v27;
    (*(v27 + 104))(v5, enum case for WidgetFamily.systemSmall(_:), v2);
    sub_10005DE74(&qword_100098A20, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    sub_10006B250();
    v21 = *(v20 + 8);
    v21(v5, v2);
    v21(v7, v2);
    sub_10006A720();
    v37 = 0;
    v29 = sub_10005D3FC;
    v30 = v18;
    v31 = v19;
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v36 = 0;
    sub_100007DF0(&qword_100098A28, &qword_100076228);
    sub_10005D480();
    *v28 = sub_10006AF20();
    return sub_10005D0D8(v13, type metadata accessor for NotesFolder);
  }

  return result;
}

uint64_t sub_100051700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10006B100();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v10 = &v27[-v9 - 8];
  v11 = type metadata accessor for NotesFolderWidgetView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10004F80C(&v28);
  v26 = v28;
  sub_10005E108(a1, v14, type metadata accessor for NotesFolderWidgetView);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  sub_10005E174(v14, v16 + v15, type metadata accessor for NotesFolderWidgetView);
  LOBYTE(v15) = sub_10006AB50();
  sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v10);
  (*(v5 + 104))(v8, enum case for WidgetFamily.systemSmall(_:), v4);
  sub_10005DE74(&qword_100098A20, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
  sub_10006B250();
  v17 = *(v5 + 8);
  v17(v8, v4);
  v17(v10, v4);
  sub_10006A720();
  v27[64] = 0;
  *&v28 = sub_10005F104;
  *(&v28 + 1) = v16;
  LOBYTE(v29) = v15;
  *(&v29 + 1) = v18;
  *v30 = v19;
  *&v30[8] = v20;
  *&v30[16] = v21;
  v30[24] = 0;
  *a2 = v26;
  v22 = v28;
  v23 = v29;
  v24 = *v30;
  *(a2 + 49) = *&v30[9];
  *(a2 + 40) = v24;
  *(a2 + 24) = v23;
  *(a2 + 8) = v22;

  sub_100009728(&v28, v27, &qword_100098CA0, &qword_100076498);
}

uint64_t sub_100051A40(char *a1, uint64_t a2)
{
  v4 = sub_10006A9D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007DF0(&qword_100098CA8, &qword_1000764A0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  *v10 = sub_10006A9E0();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = sub_100007DF0(&qword_100098CB0, &qword_1000764A8);
  sub_100051C24(a2, a1, &v10[*(v11 + 44)]);
  (*(v5 + 104))(v7, enum case for ContentSizeCategory.accessibilityMedium(_:), v4);
  sub_1000095F4(&qword_100098CB8, &qword_100098CA8, &qword_1000764A0, &protocol conformance descriptor for VStack<A>);
  sub_10006ACD0();
  (*(v5 + 8))(v7, v4);
  return sub_100009790(v10, &qword_100098CA8, &qword_1000764A0);
}

uint64_t sub_100051C24@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X8>)
{
  v43 = a2;
  v49 = a3;
  v4 = sub_10006B100();
  v44 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v40 - v8;
  v10 = sub_10006A7B0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v42 = v12;
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for NotesFolderWidgetView(0);
  v41 = *(v45 - 8);
  v14 = *(v41 + 64);
  __chkstk_darwin(v45);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100007DF0(&qword_100098CC0, &qword_1000764B0);
  v48 = *(v50 - 8);
  v16 = __chkstk_darwin(v50);
  v47 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v46 = v40 - v18;
  result = sub_100052168();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v40[0] = result;
    v40[1] = a1;
    sub_10005E108(a1, v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotesFolderWidgetView);
    v20 = v10;
    (*(v11 + 16))(v13, v43, v10);
    v21 = *(v41 + 80);
    v22 = v44;
    v43 = v9;
    v23 = v4;
    v24 = (v21 + 16) & ~v21;
    v25 = (v14 + *(v11 + 80) + v24) & ~*(v11 + 80);
    v26 = swift_allocObject();
    sub_10005E174(v15, v26 + v24, type metadata accessor for NotesFolderWidgetView);
    (*(v11 + 32))(v26 + v25, v13, v20);
    sub_100007DF0(&qword_100098CC8, &qword_1000764B8);
    sub_10005F56C();
    v27 = v46;
    sub_10006AF60();
    v28 = v43;
    sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v43);
    (*(v22 + 104))(v7, enum case for WidgetFamily.systemSmall(_:), v23);
    sub_10005DE74(&qword_100098A20, &type metadata accessor for WidgetFamily, &protocol conformance descriptor for WidgetFamily);
    v29 = sub_10006B250();
    v30 = *(v22 + 8);
    v30(v7, v23);
    v30(v28, v23);
    v31 = v29 & 1;
    if (v31)
    {
      v32 = 0;
    }

    else
    {
      v32 = 0x4010000000000000;
    }

    v34 = v47;
    v33 = v48;
    v35 = *(v48 + 16);
    v36 = v50;
    v35(v47, v27, v50);
    v37 = v49;
    v35(v49, v34, v36);
    v38 = &v37[*(sub_100007DF0(&qword_100098CE8, &qword_1000764C8) + 48)];
    *v38 = v32;
    v38[8] = 0;
    v38[9] = v31;
    v39 = *(v33 + 8);
    v39(v27, v36);
    return (v39)(v34, v36);
  }

  return result;
}

uint64_t sub_100052168()
{
  v1 = sub_10006A950();
  v41 = *(v1 - 8);
  v42 = v1;
  __chkstk_darwin(v1);
  v40 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  __chkstk_darwin(v44);
  v45 = &v40 - v3;
  v4 = sub_10006B100();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = __chkstk_darwin(v4);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v16 - 8);
  v18 = &v40 - v17;
  v19 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(v0 + *(v19 + 28), v18, &qword_100097E60, &qword_100076080);
  v20 = (*(v10 + 48))(v18, 2, v9);
  if (v20)
  {
    v21 = v20;
    result = 0;
    if (v21 != 1)
    {
      v23 = v0 + *(v19 + 20);
      v24 = v45;
      sub_100009728(v23, v45, &qword_100096A38, &qword_1000757C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v46;
        v26 = v43;
        v27 = v24;
        v28 = v47;
        (*(v46 + 32))(v43, v27, v47);
      }

      else
      {
        sub_10006B3B0();
        v34 = sub_10006AB10();
        sub_10006A690();

        v35 = v40;
        sub_10006A940();
        v26 = v43;
        swift_getAtKeyPath();

        (*(v41 + 8))(v35, v42);
        v25 = v46;
        v28 = v47;
      }

      v36 = (*(v25 + 88))(v26, v28);
      if (v36 == enum case for WidgetFamily.systemSmall(_:))
      {
        return 1;
      }

      else if (v36 == enum case for WidgetFamily.systemMedium(_:))
      {
        return 3;
      }

      else if (v36 == enum case for WidgetFamily.systemLarge(_:))
      {
        return 6;
      }

      else if (v36 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        return 8;
      }

      else
      {
        (*(v25 + 8))(v26, v28);
        return 0;
      }
    }
  }

  else
  {
    sub_1000096C0(v18, v15, &qword_100097E68, &qword_1000755A0);
    sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v8);
    v30 = v46;
    v29 = v47;
    v31 = (*(v46 + 88))(v8, v47);
    if (v31 == enum case for WidgetFamily.systemSmall(_:))
    {
      v32 = sub_100054AF8();
      sub_100009790(v15, &qword_100097E68, &qword_1000755A0);
      return v32;
    }

    else if (v31 == enum case for WidgetFamily.systemMedium(_:) || v31 == enum case for WidgetFamily.systemLarge(_:) || v31 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      sub_100009728(v15, v13, &qword_100097E68, &qword_1000755A0);
      v37 = *(*&v13[*(v9 + 48)] + 16);

      v38 = sub_100054AF8();
      sub_100009790(v15, &qword_100097E68, &qword_1000755A0);
      if (v38 >= v37)
      {
        v39 = v37;
      }

      else
      {
        v39 = v38;
      }

      sub_10005D0D8(v13, type metadata accessor for NotesFolder);
      return v39;
    }

    else
    {
      v33 = sub_100054AF8();
      sub_100009790(v15, &qword_100097E68, &qword_1000755A0);
      (*(v30 + 8))(v8, v29);
      return v33;
    }
  }

  return result;
}

double sub_1000527A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  *a4 = sub_10006A9E0();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v7 = sub_100007DF0(&qword_100098CF0, &qword_1000764D0);
  sub_100052874(a2, a1, a4 + *(v7 + 44));
  sub_100053CC4();
  sub_10006AFB0();
  sub_10006A790();
  v8 = (a4 + *(sub_100007DF0(&qword_100098CC8, &qword_1000764B8) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_100052874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a2;
  v97 = a3;
  v4 = sub_100007DF0(&qword_100098CF8, &qword_1000764D8);
  v93 = *(v4 - 8);
  v94 = v4;
  __chkstk_darwin(v4);
  v82 = &v75 - v5;
  v6 = sub_100007DF0(&qword_100098D00, &qword_1000764E0);
  v7 = __chkstk_darwin(v6 - 8);
  v96 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v75 - v9;
  v76 = sub_100007DF0(&qword_100098D08, &qword_1000764E8);
  __chkstk_darwin(v76);
  v78 = &v75 - v10;
  v86 = sub_100007DF0(&qword_100098D10, &qword_1000764F0);
  __chkstk_darwin(v86);
  v79 = &v75 - v11;
  v77 = type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0);
  __chkstk_darwin(v77);
  v80 = (&v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = type metadata accessor for NotesFolderWidgetView.MediumNoteRow(0);
  __chkstk_darwin(v88);
  v81 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100007DF0(&qword_100098D18, &qword_1000764F8);
  __chkstk_darwin(v98);
  v89 = &v75 - v14;
  v83 = sub_100007DF0(&qword_100098D20, &qword_100076500);
  __chkstk_darwin(v83);
  v85 = &v75 - v15;
  v87 = sub_100007DF0(&qword_100098D28, &qword_100076508);
  __chkstk_darwin(v87);
  v17 = &v75 - v16;
  v84 = sub_100007DF0(&qword_100098D30, &qword_100076510);
  __chkstk_darwin(v84);
  v19 = &v75 - v18;
  v99 = sub_100007DF0(&qword_100098D38, &qword_100076518);
  __chkstk_darwin(v99);
  v21 = &v75 - v20;
  v22 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  __chkstk_darwin(v22);
  v24 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10006B100();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100007DF0(&qword_100098D40, &qword_100076520);
  v30 = __chkstk_darwin(v29 - 8);
  v90 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v75 - v32;
  type metadata accessor for NotesFolderWidgetView(0);
  v92 = a1;
  sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v28);
  v34 = (*(v26 + 88))(v28, v25);
  if (v34 == enum case for WidgetFamily.systemSmall(_:))
  {
    *v24 = swift_getKeyPath();
    v24[8] = 0;
    v35 = *(v22 + 20);
    v36 = type metadata accessor for NotesFolder(0);
    (*(*(v36 - 8) + 56))(&v24[v35], 1, 1, v36);
    v37 = *(v22 + 24);
    v38 = type metadata accessor for Note(0);
    (*(*(v38 - 8) + 56))(&v24[v37], 1, 1, v38);
    sub_10005E108(v24, v17, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
    swift_storeEnumTagMultiPayload();
    sub_10005DE74(&qword_100098B70, type metadata accessor for NotesFolderWidgetView.SmallNoteRow, &unk_100076560);
    sub_10005DE74(&qword_100098B68, type metadata accessor for NotesFolderWidgetView.MediumNoteRow, &unk_1000765B0);
    sub_10006AA50();
    sub_100009728(v19, v85, &qword_100098D30, &qword_100076510);
    swift_storeEnumTagMultiPayload();
    sub_10005F6B0();
    sub_10005F79C();
    sub_10006AA50();
    sub_100009790(v19, &qword_100098D30, &qword_100076510);
    sub_100009728(v21, v89, &qword_100098D38, &qword_100076518);
    swift_storeEnumTagMultiPayload();
    sub_10005F624();
    sub_10006AA50();
    sub_100009790(v21, &qword_100098D38, &qword_100076518);
    v39 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow;
    v40 = v24;
LABEL_7:
    sub_10005D0D8(v40, v39);
    v55 = v95;
    goto LABEL_8;
  }

  v41 = v88;
  v75 = v21;
  if (v34 == enum case for WidgetFamily.systemMedium(_:))
  {
    v42 = type metadata accessor for Note(0);
    v43 = v81;
    (*(*(v42 - 8) + 56))(v81, 1, 1, v42);
    v44 = v43 + *(v41 + 20);
    *v44 = swift_getKeyPath();
    *(v44 + 8) = 0;
    sub_10005E108(v43, v17, type metadata accessor for NotesFolderWidgetView.MediumNoteRow);
    swift_storeEnumTagMultiPayload();
    sub_10005DE74(&qword_100098B70, type metadata accessor for NotesFolderWidgetView.SmallNoteRow, &unk_100076560);
    sub_10005DE74(&qword_100098B68, type metadata accessor for NotesFolderWidgetView.MediumNoteRow, &unk_1000765B0);
    sub_10006AA50();
    sub_100009728(v19, v85, &qword_100098D30, &qword_100076510);
    swift_storeEnumTagMultiPayload();
    sub_10005F6B0();
    sub_10005F79C();
    v45 = v75;
    sub_10006AA50();
    sub_100009790(v19, &qword_100098D30, &qword_100076510);
    sub_100009728(v45, v89, &qword_100098D38, &qword_100076518);
    swift_storeEnumTagMultiPayload();
    sub_10005F624();
    sub_10006AA50();
    sub_100009790(v45, &qword_100098D38, &qword_100076518);
    v39 = type metadata accessor for NotesFolderWidgetView.MediumNoteRow;
    v40 = v81;
    goto LABEL_7;
  }

  v46 = v89;
  if (v34 == enum case for WidgetFamily.systemLarge(_:))
  {
    KeyPath = swift_getKeyPath();
    v48 = v80;
    *v80 = KeyPath;
    sub_100007DF0(&qword_100098128, &qword_100075CE0);
    swift_storeEnumTagMultiPayload();
    v49 = v77;
    v50 = *(v77 + 20);
    v51 = type metadata accessor for Note(0);
    (*(*(v51 - 8) + 56))(v48 + v50, 1, 1, v51);
    v52 = v48 + *(v49 + 24);
    *v52 = swift_getKeyPath();
    *(v52 + 8) = 0;
    sub_10005E108(v48, v78, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
    swift_storeEnumTagMultiPayload();
    sub_10005DE74(&qword_100098B60, type metadata accessor for NotesFolderWidgetView.LargeNoteRow, &unk_100076600);
    v53 = v79;
    sub_10006AA50();
    sub_100009728(v53, v85, &qword_100098D10, &qword_1000764F0);
    swift_storeEnumTagMultiPayload();
    sub_10005F6B0();
    sub_10005F79C();
    v54 = v75;
    sub_10006AA50();
    sub_100009790(v53, &qword_100098D10, &qword_1000764F0);
    sub_100009728(v54, v46, &qword_100098D38, &qword_100076518);
    swift_storeEnumTagMultiPayload();
    sub_10005F624();
    sub_10006AA50();
    sub_100009790(v54, &qword_100098D38, &qword_100076518);
    v39 = type metadata accessor for NotesFolderWidgetView.LargeNoteRow;
    v40 = v48;
    goto LABEL_7;
  }

  v55 = v95;
  if (v34 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v67 = swift_getKeyPath();
    v68 = v80;
    *v80 = v67;
    sub_100007DF0(&qword_100098128, &qword_100075CE0);
    swift_storeEnumTagMultiPayload();
    v69 = v77;
    v70 = *(v77 + 20);
    v71 = type metadata accessor for Note(0);
    (*(*(v71 - 8) + 56))(v68 + v70, 1, 1, v71);
    v72 = v68 + *(v69 + 24);
    *v72 = swift_getKeyPath();
    *(v72 + 8) = 0;
    sub_10005E108(v68, v78, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
    swift_storeEnumTagMultiPayload();
    sub_10005DE74(&qword_100098B60, type metadata accessor for NotesFolderWidgetView.LargeNoteRow, &unk_100076600);
    v73 = v79;
    sub_10006AA50();
    sub_100009728(v73, v85, &qword_100098D10, &qword_1000764F0);
    swift_storeEnumTagMultiPayload();
    sub_10005F6B0();
    sub_10005F79C();
    v74 = v75;
    sub_10006AA50();
    sub_100009790(v73, &qword_100098D10, &qword_1000764F0);
    sub_100009728(v74, v46, &qword_100098D38, &qword_100076518);
    swift_storeEnumTagMultiPayload();
    sub_10005F624();
    sub_10006AA50();
    sub_100009790(v74, &qword_100098D38, &qword_100076518);
    sub_10005D0D8(v68, type metadata accessor for NotesFolderWidgetView.LargeNoteRow);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10005F624();
    sub_10006AA50();
    (*(v26 + 8))(v28, v25);
  }

LABEL_8:
  v56 = sub_100053940(v91);
  v57 = 1;
  v58 = v94;
  if ((v56 & 1) == 0)
  {
    v59 = v82;
    sub_10006AF30();
    v60 = sub_10006AB60();
    v61 = v59 + *(v58 + 36);
    *v61 = v60;
    *(v61 + 8) = 0u;
    *(v61 + 24) = 0u;
    *(v61 + 40) = 1;
    sub_1000096C0(v59, v55, &qword_100098CF8, &qword_1000764D8);
    v57 = 0;
  }

  (*(v93 + 56))(v55, v57, 1, v58);
  v62 = v90;
  sub_100009728(v33, v90, &qword_100098D40, &qword_100076520);
  v63 = v96;
  sub_100009728(v55, v96, &qword_100098D00, &qword_1000764E0);
  v64 = v97;
  sub_100009728(v62, v97, &qword_100098D40, &qword_100076520);
  v65 = sub_100007DF0(&qword_100098D60, &unk_100076528);
  sub_100009728(v63, v64 + *(v65 + 48), &qword_100098D00, &qword_1000764E0);
  sub_100009790(v55, &qword_100098D00, &qword_1000764E0);
  sub_100009790(v33, &qword_100098D40, &qword_100076520);
  sub_100009790(v63, &qword_100098D00, &qword_1000764E0);
  return sub_100009790(v62, &qword_100098D40, &qword_100076520);
}

uint64_t sub_100053940(uint64_t a1)
{
  v20 = a1;
  v22 = sub_10006A950();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_10006B100();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for NotesFolderWidgetView(0) + 20);
  v21 = v1;
  sub_100009728(v1 + v12, v7, &qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_10006B3B0();
    v13 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v22);
  }

  LODWORD(v14) = (*(v9 + 88))(v11, v8);
  if (v14 == enum case for WidgetFamily.systemSmall(_:))
  {
    return 1;
  }

  if (v14 != enum case for WidgetFamily.systemMedium(_:))
  {
    if (v14 == enum case for WidgetFamily.systemLarge(_:))
    {
      v14 = sub_100054AF8();
      v18 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        return v18 <= v20;
      }

      __break(1u);
    }

    if (v14 != enum case for WidgetFamily.systemExtraLarge(_:))
    {
      (*(v9 + 8))(v11, v8);
      return 1;
    }

    result = sub_100054AF8();
    v18 = result - 1;
    if (__OFSUB__(result, 1))
    {
      goto LABEL_24;
    }

    return v18 <= v20;
  }

  result = sub_100054AF8();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v20;
  if (result - 1 <= v20)
  {
    return 1;
  }

  v17 = sub_100052168();
  if (v17 >= sub_100054AF8())
  {
    return 0;
  }

  result = sub_100054AF8();
  if (__OFSUB__(result, 2))
  {
LABEL_25:
    __break(1u);
    return result;
  }

  return result - 2 <= v16;
}

double sub_100053CC4()
{
  v0 = sub_10006B100();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NotesFolderWidgetView(0);
  sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v3);
  if ((*(v1 + 88))(v3, v0) == enum case for WidgetFamily.systemMedium(_:))
  {
    v4 = sub_100052168();
    if (v4 < sub_100054AF8())
    {
      sub_10006A7A0();
      v6 = v5;
      v7 = sub_100054AF8();
      v8 = __OFSUB__(v7, 1);
      v9 = v7 - 1;
      if (!v8)
      {
        goto LABEL_7;
      }

      __break(1u);
    }
  }

  sub_10006A7A0();
  v6 = v10;
  v9 = sub_100054AF8();
LABEL_7:
  v11 = v6 / v9;
  (*(v1 + 8))(v3, v0);
  return v11;
}

uint64_t sub_100053E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v11 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - v12;
  v14 = type metadata accessor for NotesFolder(0);
  __chkstk_darwin(v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100007DF0(&qword_100098C00, &qword_100076378);
  v18 = __chkstk_darwin(v17 - 8);
  v35 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v35 - v20;
  *v21 = sub_10006A970();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = sub_100007DF0(&qword_100098C08, &qword_100076380);
  sub_100054378(a1, a2, a3 & 1, a4, &v21[*(v22 + 44)]);
  v23 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(a5 + *(v23 + 28), v13, &qword_100097E60, &qword_100076080);
  v24 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  if ((*(*(v24 - 8) + 48))(v13, 2, v24))
  {
    sub_100009790(v13, &qword_100097E60, &qword_100076080);
LABEL_6:
    LOBYTE(v44[0]) = 0;
    LOBYTE(v39) = 1;
    *&v46 = 0x4030000000000000;
    BYTE8(v46) = 0;
    v50 = 1;
    sub_100007DF0(&qword_100098C10, &qword_100076388);
    sub_1000095F4(&qword_100098C18, &qword_100098C10, &qword_100076388, &protocol conformance descriptor for TupleView<A>);
    sub_10006AA50();
    goto LABEL_7;
  }

  sub_10005E174(v13, v16, type metadata accessor for NotesFolder);
  if (v16[32] != 1)
  {
    sub_10005D0D8(v16, type metadata accessor for NotesFolder);
    goto LABEL_6;
  }

  v25 = sub_10006A970();
  LOBYTE(v39) = 1;
  v38 = 0;
  v37 = 1;

  LOBYTE(v44[0]) = 0;
  *&v51 = 0;
  BYTE8(v51) = v39;
  v52 = v25;
  LOBYTE(v53) = v38;
  *(&v53 + 1) = 0;
  LOBYTE(v54) = v37;
  *(&v54 + 1) = v26;
  v55 = 0;
  sub_100007DF0(&qword_100098C10, &qword_100076388);
  sub_1000095F4(&qword_100098C18, &qword_100098C10, &qword_100076388, &protocol conformance descriptor for TupleView<A>);
  sub_10006AA50();
  sub_10005D0D8(v16, type metadata accessor for NotesFolder);
  v53 = v48;
  v54 = v49;
  v55 = v50;
  v51 = v46;
  v52 = v47;
LABEL_7:
  v27 = v35;
  sub_100009728(v21, v35, &qword_100098C00, &qword_100076378);
  v41 = v53;
  v42 = v54;
  v43 = v55;
  v39 = v51;
  v40 = v52;
  v28 = v36;
  sub_100009728(v27, v36, &qword_100098C00, &qword_100076378);
  v29 = v28 + *(sub_100007DF0(&qword_100098C20, &qword_100076390) + 48);
  v30 = v43;
  v45 = v43;
  v31 = v42;
  v44[2] = v41;
  v44[3] = v42;
  v33 = v39;
  v32 = v40;
  v44[0] = v39;
  v44[1] = v40;
  *(v29 + 32) = v41;
  *(v29 + 48) = v31;
  *(v29 + 64) = v30;
  *v29 = v33;
  *(v29 + 16) = v32;
  sub_100009728(v44, &v46, &qword_100098C28, &qword_100076398);
  sub_100009790(v21, &qword_100098C00, &qword_100076378);
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v46 = v39;
  v47 = v40;
  sub_100009790(&v46, &qword_100098C28, &qword_100076398);
  return sub_100009790(v27, &qword_100098C00, &qword_100076378);
}

uint64_t sub_100054378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[0] = a1;
  v23[1] = a2;
  v24 = a3;
  v25 = a4;
  v6 = sub_100007DF0(&qword_100098C30, &qword_1000763A0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = sub_100007DF0(&qword_100098C38, &qword_1000763A8);
  v11 = __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v23 - v15;
  __chkstk_darwin(v14);
  v18 = v23 - v17;
  sub_10006AD70();
  if (sub_10004E87C())
  {
    v19 = sub_10006AE60();
  }

  else if (sub_10004E87C())
  {
    v19 = sub_10006AE50();
  }

  else
  {
    v19 = sub_10006AE20();
  }

  v20 = v19;
  (*(v7 + 32))(v16, v9, v6);
  *&v16[*(v10 + 36)] = v20;
  sub_1000096C0(v16, v18, &qword_100098C38, &qword_1000763A8);
  sub_100009728(v18, v13, &qword_100098C38, &qword_1000763A8);
  sub_100009728(v13, a5, &qword_100098C38, &qword_1000763A8);
  v21 = a5 + *(sub_100007DF0(&qword_100098C40, &qword_1000763B0) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_100009790(v18, &qword_100098C38, &qword_1000763A8);
  return sub_100009790(v13, &qword_100098C38, &qword_1000763A8);
}

uint64_t sub_1000545F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a5;
  v48 = a6;
  *&v49 = a1;
  *(&v49 + 1) = a2;
  LOBYTE(v50) = a3;
  *(&v50 + 1) = a4;
  v6 = sub_10006ABF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007DF0(&qword_100098C48, &qword_1000763B8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v42 - v12;
  v44 = sub_100007DF0(&qword_100098C50, &qword_1000763C0);
  __chkstk_darwin(v44);
  v15 = &v42 - v14;
  v43 = sub_100007DF0(&qword_100098C58, &qword_1000763C8);
  __chkstk_darwin(v43);
  v17 = &v42 - v16;
  v45 = sub_100007DF0(&qword_100098C60, &qword_1000763D0);
  v18 = __chkstk_darwin(v45);
  v47 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v42 - v21;
  __chkstk_darwin(v20);
  v46 = &v42 - v23;
  sub_10006AD70();
  (*(v7 + 104))(v9, enum case for Font.TextStyle.body(_:), v6);
  v24 = sub_10006AB90();
  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath();
  v26 = &v13[*(sub_100007DF0(&qword_100098C68, &qword_1000763D8) + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = swift_getKeyPath();
  v28 = &v13[*(v11 + 44)];
  *v28 = v27;
  v28[8] = 1;
  if (sub_10004E87C())
  {
    v29 = sub_10006AE60();
  }

  else if (sub_10004E87C())
  {
    v29 = sub_10006AE50();
  }

  else
  {
    v29 = sub_10006AE20();
  }

  v30 = v29;
  sub_1000096C0(v13, v15, &qword_100098C48, &qword_1000763B8);
  *&v15[*(v44 + 36)] = v30;
  v31 = swift_getKeyPath();
  sub_1000096C0(v15, v17, &qword_100098C50, &qword_1000763C0);
  v32 = &v17[*(v43 + 36)];
  *v32 = v31;
  *(v32 + 1) = 2;
  v32[16] = 0;
  sub_10006AFB0();
  sub_10006A7F0();
  sub_1000096C0(v17, v22, &qword_100098C58, &qword_1000763C8);
  v33 = &v22[*(v45 + 36)];
  v34 = v54;
  *(v33 + 4) = v53;
  *(v33 + 5) = v34;
  *(v33 + 6) = v55;
  v35 = v50;
  *v33 = v49;
  *(v33 + 1) = v35;
  v36 = v52;
  *(v33 + 2) = v51;
  *(v33 + 3) = v36;
  v37 = v46;
  sub_1000096C0(v22, v46, &qword_100098C60, &qword_1000763D0);
  v38 = v47;
  sub_100009728(v37, v47, &qword_100098C60, &qword_1000763D0);
  v39 = v48;
  sub_100009728(v38, v48, &qword_100098C60, &qword_1000763D0);
  v40 = v39 + *(sub_100007DF0(&qword_100098C70, &unk_100076440) + 48);
  *v40 = 0x4030000000000000;
  *(v40 + 8) = 0;
  sub_100009790(v37, &qword_100098C60, &qword_1000763D0);
  return sub_100009790(v38, &qword_100098C60, &qword_1000763D0);
}

uint64_t sub_100054AF8()
{
  v16 = sub_10006A950();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10006B100();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(v0 + *(v11 + 20), v6, &qword_100096A38, &qword_1000757C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_10006B3B0();
    v12 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = (*(v8 + 88))(v10, v7);
  if (v13 == enum case for WidgetFamily.systemSmall(_:))
  {
    return 1;
  }

  if (v13 == enum case for WidgetFamily.systemMedium(_:))
  {
    return 3;
  }

  if (v13 == enum case for WidgetFamily.systemLarge(_:))
  {
    return 6;
  }

  if (v13 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    return 8;
  }

  (*(v8 + 8))(v10, v7);
  return 0;
}

uint64_t sub_100054E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a1;
  v37 = a4;
  v6 = sub_10006A9D0();
  v35 = *(v6 - 8);
  v36 = v6;
  __chkstk_darwin(v6);
  v34 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10006A7B0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for NotesFolderWidgetView(0);
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  __chkstk_darwin(v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100007DF0(&qword_100098A48, &qword_100076238);
  __chkstk_darwin(v33);
  v15 = &v29 - v14;
  *v15 = sub_10006A9E0();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v31 = *(sub_100007DF0(&qword_100098A50, &qword_100076240) + 44);

  v16 = sub_100052168();
  sub_10004E6FC(v16, a2);
  v20 = sub_10005D73C(v17, v18, v19);
  swift_unknownObjectRelease();
  v38 = v20;
  swift_getKeyPath();
  sub_10005E108(a3, v13, type metadata accessor for NotesFolderWidgetView);
  (*(v9 + 16))(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v8);
  v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v22 = (v12 + *(v9 + 80) + v21) & ~*(v9 + 80);
  v23 = swift_allocObject();
  sub_10005E174(v13, v23 + v21, type metadata accessor for NotesFolderWidgetView);
  (*(v9 + 32))(v23 + v22, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10005DA7C;
  *(v24 + 24) = v23;
  sub_100007DF0(&qword_100098A58, &qword_100076268);
  sub_100007DF0(&qword_100098A60, &qword_100076270);
  sub_1000095F4(&qword_100098A68, &qword_100098A58, &qword_100076268, &protocol conformance descriptor for [A]);
  sub_10005DC08();
  sub_10006AF50();
  v26 = v34;
  v25 = v35;
  v27 = v36;
  (*(v35 + 104))(v34, enum case for ContentSizeCategory.accessibilityMedium(_:), v36);
  sub_1000095F4(&qword_100098AA8, &qword_100098A48, &qword_100076238, &protocol conformance descriptor for VStack<A>);
  sub_10006ACD0();
  (*(v25 + 8))(v26, v27);
  return sub_100009790(v15, &qword_100098A48, &qword_100076238);
}

uint64_t sub_1000552BC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a4;
  v52 = a2;
  v41 = a1;
  v51 = a5;
  v6 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v6 - 8);
  v49 = &v38 - v7;
  v48 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v50 = *(v48 - 8);
  __chkstk_darwin(v48);
  v38 = &v38 - v8;
  v9 = sub_10006AAB0();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10006A9C0();
  v12 = *(v40 - 8);
  __chkstk_darwin(v40);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007DF0(&qword_100098A90, &qword_100076280);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  v18 = sub_100007DF0(&qword_100098A78, &qword_100076278);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  v21 = sub_100007DF0(&qword_100098AB8, &qword_100076298);
  v46 = *(v21 - 8);
  v47 = v21;
  __chkstk_darwin(v21);
  v23 = &v38 - v22;
  v45 = sub_100007DF0(&qword_100098A60, &qword_100076270);
  __chkstk_darwin(v45);
  v25 = &v38 - v24;
  *v17 = sub_10006A9E0();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v26 = &v17[*(sub_100007DF0(&qword_100098AC0, &qword_1000762A0) + 44)];
  v39 = a3;
  sub_100055930(a3, v52, v41, v26);
  sub_100053CC4();
  sub_10006AFB0();
  sub_10006A790();
  v27 = &v17[*(v15 + 36)];
  v28 = v56;
  *v27 = v55;
  *(v27 + 1) = v28;
  *(v27 + 2) = v57;
  sub_10006A9A0();
  sub_10005DDBC();
  sub_10006AD40();
  (*(v12 + 8))(v14, v40);
  v29 = v18;
  sub_100009790(v17, &qword_100098A90, &qword_100076280);
  sub_10006AA90();
  v30 = sub_10005DD00();
  sub_10006AD90();
  v31 = v49;
  (*(v43 + 8))(v11, v44);
  v32 = v20;
  v33 = v48;
  sub_100009790(v32, &qword_100098A78, &qword_100076278);
  v34 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(v39 + *(v34 + 28), v31, &qword_100097E60, &qword_100076080);
  if (!(*(v50 + 48))(v31, 2, v33))
  {
    v35 = v38;
    sub_1000096C0(v31, v38, &qword_100097E68, &qword_1000755A0);

    sub_100009BBC(v52);
    sub_10005D0D8(v35, type metadata accessor for NotesFolder);
  }

  v53 = v29;
  v54 = v30;
  swift_getOpaqueTypeConformance2();
  v36 = v47;
  sub_10006AD30();

  (*(v46 + 8))(v23, v36);

  sub_10006A7D0();

  return sub_100009790(v25, &qword_100098A60, &qword_100076270);
}

uint64_t sub_100055930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v130 = a3;
  v124 = a2;
  v135 = a4;
  v5 = sub_10006AF40();
  v131 = *(v5 - 8);
  v132 = v5;
  __chkstk_darwin(v5);
  v112 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100098AC8, &qword_1000762A8);
  v8 = __chkstk_darwin(v7 - 8);
  v134 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v133 = &v96 - v10;
  v102 = sub_100007DF0(&qword_100098AD0, &qword_1000762B0);
  __chkstk_darwin(v102);
  v103 = &v96 - v11;
  v121 = sub_100007DF0(&qword_100098AD8, &qword_1000762B8);
  __chkstk_darwin(v121);
  v104 = &v96 - v12;
  v106 = sub_100007DF0(&qword_100098AE0, &qword_1000762C0);
  v98 = *(v106 - 8);
  __chkstk_darwin(v106);
  v97 = &v96 - v13;
  v117 = sub_100007DF0(&qword_100098AE8, &qword_1000762C8);
  v105 = *(v117 - 8);
  __chkstk_darwin(v117);
  v107 = &v96 - v14;
  v15 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v15 - 8);
  v101 = &v96 - v16;
  v100 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v96 - v17;
  v128 = sub_100007DF0(&qword_100098AF0, &qword_1000762D0);
  __chkstk_darwin(v128);
  v136 = &v96 - v18;
  v118 = sub_100007DF0(&qword_100098AF8, &qword_1000762D8);
  __chkstk_darwin(v118);
  v126 = &v96 - v19;
  v114 = sub_100007DF0(&qword_100098B00, &qword_1000762E0);
  __chkstk_darwin(v114);
  v115 = &v96 - v20;
  v119 = sub_100007DF0(&qword_100098B08, &qword_1000762E8);
  __chkstk_darwin(v119);
  v123 = &v96 - v21;
  v127 = sub_100007DF0(&qword_100098B10, &unk_1000762F0);
  __chkstk_darwin(v127);
  v120 = &v96 - v22;
  v23 = type metadata accessor for Note(0);
  v116 = *(v23 - 8);
  v24 = *(v116 + 64);
  __chkstk_darwin(v23);
  v122 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for NotesFolderWidgetView(0);
  v108 = *(v25 - 8);
  v26 = *(v108 + 64);
  __chkstk_darwin(v25);
  v109 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100007DF0(&qword_100096B30, &qword_10006F548);
  __chkstk_darwin(v27 - 8);
  v29 = &v96 - v28;
  v113 = sub_100007DF0(&qword_100098B18, &qword_100076300);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v96 - v30;
  v31 = sub_10006B100();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100007DF0(&qword_100098B20, &qword_100076308);
  v36 = __chkstk_darwin(v35 - 8);
  v129 = &v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v125 = &v96 - v38;
  v39 = a1;
  sub_10005CB90(&qword_100096A38, &qword_1000757C0, &type metadata accessor for WidgetFamily, v34);
  v40 = (*(v32 + 88))(v34, v31);
  if (v40 == enum case for WidgetFamily.systemSmall(_:))
  {
    v41 = v124;
    sub_100009728(v124 + *(v23 + 48), v29, &qword_100096B30, &qword_10006F548);
    v42 = v109;
    sub_10005E108(a1, v109, type metadata accessor for NotesFolderWidgetView);
    v43 = v122;
    sub_10005E108(v41, v122, type metadata accessor for Note);
    v44 = (*(v108 + 80) + 16) & ~*(v108 + 80);
    v45 = (v26 + *(v116 + 80) + v44) & ~*(v116 + 80);
    v46 = swift_allocObject();
    sub_10005E174(v42, v46 + v44, type metadata accessor for NotesFolderWidgetView);
    sub_10005E174(v43, v46 + v45, type metadata accessor for Note);
    type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
    sub_10005DE74(&qword_100098B70, type metadata accessor for NotesFolderWidgetView.SmallNoteRow, &unk_100076560);
    v47 = v110;
    sub_10006A710();
    v48 = v111;
    v49 = v113;
    (*(v111 + 16))(v115, v47, v113);
    swift_storeEnumTagMultiPayload();
    sub_1000095F4(&qword_100098B38, &qword_100098B18, &qword_100076300, &protocol conformance descriptor for Link<A>);
    sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8, &protocol conformance descriptor for Link<A>);
    v50 = v123;
    sub_10006AA50();
    sub_100009728(v50, v126, &qword_100098B08, &qword_1000762E8);
    swift_storeEnumTagMultiPayload();
    sub_10005DF48();
    sub_10005E028();
    v51 = v120;
    sub_10006AA50();
    sub_100009790(v50, &qword_100098B08, &qword_1000762E8);
    sub_100009728(v51, v136, &qword_100098B10, &unk_1000762F0);
    swift_storeEnumTagMultiPayload();
    sub_10005DEBC();
    v52 = v125;
    sub_10006AA50();
    sub_100009790(v51, &qword_100098B10, &unk_1000762F0);
    (*(v48 + 8))(v47, v49);
    v53 = v132;
    v54 = v133;
    v55 = v52;
  }

  else
  {
    v110 = v24;
    v57 = v122;
    v56 = v123;
    v58 = v124;
    v111 = v39;
    if (v40 == enum case for WidgetFamily.systemMedium(_:))
    {
      v59 = v111 + *(v25 + 28);
      v60 = v101;
      sub_100009728(v59, v101, &qword_100097E60, &qword_100076080);
      v61 = v100;
      if ((*(v99 + 48))(v60, 2, v100))
      {
        v62 = 0;
      }

      else
      {
        v72 = v60;
        v73 = v96;
        sub_1000096C0(v72, v96, &qword_100097E68, &qword_1000755A0);
        v62 = *(*(v73 + *(v61 + 48)) + 16);

        sub_10005D0D8(v73, type metadata accessor for NotesFolder);
      }

      v54 = v133;
      v74 = v56;
      v75 = sub_100054AF8();
      sub_100009728(v58 + *(v23 + 48), v29, &qword_100096B30, &qword_10006F548);
      v76 = v57;
      sub_10005E108(v58, v57, type metadata accessor for Note);
      v77 = (*(v116 + 80) + 16) & ~*(v116 + 80);
      v55 = v125;
      v78 = v115;
      v79 = swift_allocObject();
      sub_10005E174(v76, v79 + v77, type metadata accessor for Note);
      if (v62 >= v75)
      {
        type metadata accessor for NotesFolderWidgetView.MediumNoteRow(0);
        sub_10005DE74(&qword_100098B68, type metadata accessor for NotesFolderWidgetView.MediumNoteRow, &unk_1000765B0);
        v84 = v97;
        sub_10006A710();
        v85 = v98;
        (*(v98 + 16))(v103, v84, v106);
        swift_storeEnumTagMultiPayload();
        sub_1000095F4(&qword_100098B50, &qword_100098AE0, &qword_1000762C0, &protocol conformance descriptor for Link<A>);
        sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8, &protocol conformance descriptor for Link<A>);
        v86 = v104;
        sub_10006AA50();
        sub_100009728(v86, v126, &qword_100098AD8, &qword_1000762B8);
        swift_storeEnumTagMultiPayload();
        sub_10005DF48();
        sub_10005E028();
        v87 = v120;
        sub_10006AA50();
        sub_100009790(v86, &qword_100098AD8, &qword_1000762B8);
        sub_100009728(v87, v136, &qword_100098B10, &unk_1000762F0);
        swift_storeEnumTagMultiPayload();
        sub_10005DEBC();
        sub_10006AA50();
        sub_100009790(v87, &qword_100098B10, &unk_1000762F0);
        (*(v85 + 8))(v84, v106);
      }

      else
      {
        type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0);
        sub_10005DE74(&qword_100098B60, type metadata accessor for NotesFolderWidgetView.LargeNoteRow, &unk_100076600);
        v80 = v107;
        sub_10006A710();
        v81 = v105;
        v82 = v117;
        (*(v105 + 16))(v78, v80, v117);
        swift_storeEnumTagMultiPayload();
        sub_1000095F4(&qword_100098B38, &qword_100098B18, &qword_100076300, &protocol conformance descriptor for Link<A>);
        sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8, &protocol conformance descriptor for Link<A>);
        sub_10006AA50();
        sub_100009728(v74, v126, &qword_100098B08, &qword_1000762E8);
        swift_storeEnumTagMultiPayload();
        sub_10005DF48();
        sub_10005E028();
        v83 = v120;
        sub_10006AA50();
        sub_100009790(v74, &qword_100098B08, &qword_1000762E8);
        sub_100009728(v83, v136, &qword_100098B10, &unk_1000762F0);
        swift_storeEnumTagMultiPayload();
        sub_10005DEBC();
        sub_10006AA50();
        sub_100009790(v83, &qword_100098B10, &unk_1000762F0);
        (*(v81 + 8))(v107, v82);
      }
    }

    else
    {
      if (v40 == enum case for WidgetFamily.systemLarge(_:) || v40 == enum case for WidgetFamily.systemExtraLarge(_:))
      {
        v63 = v124 + *(v23 + 48);
        v64 = v126;
        sub_100009728(v63, v29, &qword_100096B30, &qword_10006F548);
        sub_10005E108(v58, v57, type metadata accessor for Note);
        v65 = (*(v116 + 80) + 16) & ~*(v116 + 80);
        v66 = swift_allocObject();
        sub_10005E174(v57, v66 + v65, type metadata accessor for Note);
        type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0);
        sub_10005DE74(&qword_100098B60, type metadata accessor for NotesFolderWidgetView.LargeNoteRow, &unk_100076600);
        v67 = v107;
        sub_10006A710();
        v68 = v105;
        v69 = v117;
        (*(v105 + 16))(v103, v67, v117);
        swift_storeEnumTagMultiPayload();
        sub_1000095F4(&qword_100098B50, &qword_100098AE0, &qword_1000762C0, &protocol conformance descriptor for Link<A>);
        sub_1000095F4(&qword_100098B40, &qword_100098AE8, &qword_1000762C8, &protocol conformance descriptor for Link<A>);
        v70 = v104;
        sub_10006AA50();
        sub_100009728(v70, v64, &qword_100098AD8, &qword_1000762B8);
        swift_storeEnumTagMultiPayload();
        sub_10005DF48();
        sub_10005E028();
        v71 = v120;
        sub_10006AA50();
        sub_100009790(v70, &qword_100098AD8, &qword_1000762B8);
        sub_100009728(v71, v136, &qword_100098B10, &unk_1000762F0);
        swift_storeEnumTagMultiPayload();
        sub_10005DEBC();
        v55 = v125;
        sub_10006AA50();
        sub_100009790(v71, &qword_100098B10, &unk_1000762F0);
        (*(v68 + 8))(v67, v69);
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_10005DEBC();
        v55 = v125;
        sub_10006AA50();
        (*(v32 + 8))(v34, v31);
      }

      v54 = v133;
    }

    v53 = v132;
  }

  if (sub_100053940(v130))
  {
    v88 = 1;
    v89 = v131;
  }

  else
  {
    v90 = v112;
    sub_10006AF30();
    v89 = v131;
    (*(v131 + 32))(v54, v90, v53);
    v88 = 0;
  }

  (*(v89 + 56))(v54, v88, 1, v53);
  v91 = v129;
  sub_100009728(v55, v129, &qword_100098B20, &qword_100076308);
  v92 = v134;
  sub_100009728(v54, v134, &qword_100098AC8, &qword_1000762A8);
  v93 = v135;
  sub_100009728(v91, v135, &qword_100098B20, &qword_100076308);
  v94 = sub_100007DF0(&qword_100098B58, &unk_100076310);
  sub_100009728(v92, v93 + *(v94 + 48), &qword_100098AC8, &qword_1000762A8);
  sub_100009790(v54, &qword_100098AC8, &qword_1000762A8);
  sub_100009790(v55, &qword_100098B20, &qword_100076308);
  sub_100009790(v92, &qword_100098AC8, &qword_1000762A8);
  return sub_100009790(v91, &qword_100098B20, &qword_100076308);
}

uint64_t sub_100057054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_100007DF0(&qword_100097E68, &qword_1000755A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - v11;
  v13 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = type metadata accessor for NotesFolderWidgetView(0);
  sub_100009728(a1 + *(v16 + 28), v8, &qword_100097E60, &qword_100076080);
  if ((*(v10 + 48))(v8, 2, v9))
  {
    v17 = 1;
  }

  else
  {
    sub_1000096C0(v8, v12, &qword_100097E68, &qword_1000755A0);

    sub_10005E174(v12, v15, type metadata accessor for NotesFolder);
    v17 = 0;
  }

  v18 = type metadata accessor for NotesFolder(0);
  (*(*(v18 - 8) + 56))(v15, v17, 1, v18);
  v19 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v20 = *(v19 + 24);
  sub_10005E108(a2, a3 + v20, type metadata accessor for Note);
  v21 = type metadata accessor for Note(0);
  (*(*(v21 - 8) + 56))(a3 + v20, 0, 1, v21);
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  return sub_1000096C0(v15, a3 + *(v19 + 20), &qword_100096D30, &unk_10006F760);
}

uint64_t sub_100057338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10005E108(a1, a2, type metadata accessor for Note);
  v3 = type metadata accessor for Note(0);
  (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
  KeyPath = swift_getKeyPath();
  result = type metadata accessor for NotesFolderWidgetView.MediumNoteRow(0);
  v6 = a2 + *(result + 20);
  *v6 = KeyPath;
  *(v6 + 8) = 0;
  return result;
}

uint64_t sub_1000573DC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for NotesFolderWidgetView.LargeNoteRow(0);
  v5 = *(v4 + 20);
  sub_10005E108(a1, &a2[v5], type metadata accessor for Note);
  v6 = type metadata accessor for Note(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 0, 1, v6);
  KeyPath = swift_getKeyPath();
  *a2 = swift_getKeyPath();
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  result = swift_storeEnumTagMultiPayload();
  v9 = &a2[*(v4 + 24)];
  *v9 = KeyPath;
  v9[8] = 0;
  return result;
}

uint64_t sub_1000574D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100097E60, &qword_100076080);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = _s5EntryVMa(0);
  sub_100009728(a1 + *(v7 + 20), v6, &qword_100097E60, &qword_100076080);
  KeyPath = swift_getKeyPath();
  v9 = objc_opt_self();
  v10 = -17.0;
  if ([v9 ic_isiPad])
  {
    v11 = -19.0;
  }

  else
  {
    v11 = -17.0;
  }

  v12 = [v9 ic_isiPad];
  sub_10005D0D8(a1, _s5EntryVMa);
  if (v12)
  {
    v10 = -18.0;
  }

  *a2 = swift_getKeyPath();
  sub_100007DF0(&qword_100098128, &qword_100075CE0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for NotesFolderWidgetView(0);
  v14 = v13[5];
  *(a2 + v14) = swift_getKeyPath();
  sub_100007DF0(&qword_100096A38, &qword_1000757C0);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v13[6];
  *v15 = KeyPath;
  v15[8] = 0;
  result = sub_1000096C0(v6, a2 + v13[7], &qword_100097E60, &qword_100076080);
  *(a2 + v13[8]) = v11;
  *(a2 + v13[9]) = v10;
  return result;
}

uint64_t sub_100057734(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007DF0(&qword_100096A50, &unk_10006F470);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 254)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 > 1)
    {
      return (v14 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v15 = sub_100007DF0(&qword_100097E60, &qword_100076080);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000578DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100007DF0(&qword_100098440, &unk_100075C20);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100007DF0(&qword_100096A50, &unk_10006F470);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 254)
  {
    *(a1 + a4[6] + 8) = -a2;
  }

  else
  {
    v15 = sub_100007DF0(&qword_100097E60, &qword_100076080);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_100057A74(uint64_t a1)
{
  sub_100061668(319, &qword_1000984B0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100061668(319, &qword_100096AD8, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_10003B41C();
      if (v3 <= 0x3F)
      {
        sub_1000336F0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100057BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006A950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007DF0(&qword_100096A40, &unk_10006F460);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NotesFolderWidgetView.Thumbnail(0);
  sub_100009728(v1 + *(v10 + 20), v9, &qword_100096A40, &unk_10006F460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10006B0C0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10006B3B0();
    v13 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100057DBC@<X0>(uint64_t a1@<X8>)
{
  v102 = a1;
  v101 = sub_10006A740();
  v100 = *(v101 - 8);
  v1 = __chkstk_darwin(v101);
  v97 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v96 = &v79 - v3;
  v99 = sub_10006AFD0();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10006A7E0();
  __chkstk_darwin(v90);
  v91 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007DF0(&qword_100099128, &qword_100076848);
  __chkstk_darwin(v6 - 8);
  v93 = &v79 - v7;
  v92 = sub_100007DF0(&qword_100099130, &qword_100076850);
  __chkstk_darwin(v92);
  v94 = &v79 - v8;
  v82 = sub_10006B0C0();
  v9 = *(v82 - 8);
  v10 = __chkstk_darwin(v82);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v79 - v13;
  v15 = sub_100007DF0(&qword_100096CE0, &unk_1000753B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v79 - v16;
  v18 = sub_10006AEB0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100007DF0(&qword_100096CE8, &qword_10006F720);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v23 = &v79 - v22;
  *&v87 = sub_100007DF0(&qword_100099138, &qword_100076858);
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = &v79 - v24;
  v81 = sub_100007DF0(&qword_100099140, &qword_100076860);
  __chkstk_darwin(v81);
  v88 = &v79 - v25;
  v80 = sub_100007DF0(&qword_100099148, &qword_100076868);
  __chkstk_darwin(v80);
  v89 = &v79 - v26;
  type metadata accessor for NotesFolderWidgetView.Thumbnail(0);
  (*(v19 + 104))(v21, enum case for Image.ResizingMode.stretch(_:), v18);
  sub_10006AF00();
  (*(v19 + 8))(v21, v18);
  sub_100057BB4(v14);
  sub_10006B0B0();
  v27 = sub_10006B080();
  v28 = *(v9 + 8);
  v29 = v12;
  v30 = v82;
  v28(v29, v82);
  v28(v14, v30);
  if ((v27 & 1) != 0 && _UISolariumEnabled())
  {
    sub_10006B0E0();
  }

  else
  {
    sub_10006B0D0();
  }

  v31 = sub_10006B0F0();
  (*(*(v31 - 8) + 56))(v17, 0, 1, v31);
  sub_10006AEF0();

  sub_100009790(v17, &qword_100096CE0, &unk_1000753B0);
  swift_getOpaqueTypeConformance2();
  v32 = v83;
  v33 = v85;
  sub_10006ACC0();
  (*(v84 + 8))(v23, v33);
  sub_10006AFB0();
  sub_10006A7F0();
  v34 = v88;
  (*(v86 + 32))(v88, v32, v87);
  v35 = (v34 + *(v81 + 36));
  v36 = v108;
  v35[4] = v107;
  v35[5] = v36;
  v35[6] = v109;
  v37 = v104;
  *v35 = v103;
  v35[1] = v37;
  v38 = v106;
  v35[2] = v105;
  v35[3] = v38;
  v39 = v89;
  v40 = &v89[*(v80 + 36)];
  v41 = v90;
  v42 = *(v90 + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_10006A990();
  v45 = *(*(v44 - 8) + 104);
  v45(&v40[v42], v43, v44);
  __asm { FMOV            V0.2D, #5.0 }

  v87 = _Q0;
  *v40 = _Q0;
  *&v40[*(sub_100007DF0(&qword_100099150, &qword_100076870) + 36)] = 256;
  sub_1000096C0(v34, v39, &qword_100099140, &qword_100076860);
  v51 = v91;
  v45(&v91[*(v41 + 20)], v43, v44);
  *v51 = v87;
  v52 = sub_10006ADB0();
  sub_10006A760();
  v53 = v93;
  sub_10005E108(v51, v93, &type metadata accessor for RoundedRectangle);
  v54 = v53 + *(sub_100007DF0(&qword_100099158, &qword_100076878) + 36);
  v55 = v111;
  *v54 = v110;
  *(v54 + 16) = v55;
  *(v54 + 32) = v112;
  v56 = sub_100007DF0(&qword_100099160, &qword_100076880);
  *(v53 + *(v56 + 52)) = v52;
  *(v53 + *(v56 + 56)) = 256;
  v57 = sub_10006AFB0();
  v59 = v58;
  sub_10005D0D8(v51, &type metadata accessor for RoundedRectangle);
  v60 = (v53 + *(sub_100007DF0(&qword_100099168, &qword_100076888) + 36));
  *v60 = v57;
  v60[1] = v59;
  v61 = v96;
  sub_10005CB90(&qword_100096A30, &qword_100076650, &type metadata accessor for ColorScheme, v96);
  v62 = v100;
  v63 = v97;
  v64 = v101;
  (*(v100 + 104))(v97, enum case for ColorScheme.light(_:), v101);
  LOBYTE(v57) = sub_10006A730();
  v65 = *(v62 + 8);
  v65(v63, v64);
  v65(v61, v64);
  v66 = v98;
  v67 = &enum case for BlendMode.plusDarker(_:);
  if ((v57 & 1) == 0)
  {
    v67 = &enum case for BlendMode.plusLighter(_:);
  }

  v68 = v95;
  v69 = v99;
  (*(v98 + 104))(v95, *v67, v99);
  v70 = v94;
  (*(v66 + 32))(&v94[*(v92 + 36)], v68, v69);
  sub_1000096C0(v53, v70, &qword_100099128, &qword_100076848);
  v71 = sub_10006AFB0();
  v73 = v72;
  v74 = sub_100007DF0(&qword_100099170, &qword_100076890);
  v75 = v102;
  v76 = v102 + *(v74 + 36);
  sub_1000096C0(v70, v76, &qword_100099130, &qword_100076850);
  v77 = (v76 + *(sub_100007DF0(&qword_100099178, &qword_100076898) + 36));
  *v77 = v71;
  v77[1] = v73;
  return sub_1000096C0(v39, v75, &qword_100099148, &qword_100076868);
}

uint64_t sub_10005898C()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_10006B3B0();
    v6 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_100058AD8()
{
  v1 = sub_10006A9D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006A9F0();
  v29 = 0;
  sub_100058D98(v0, &v17);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v39[0] = v17;
  v39[1] = v18;
  v39[2] = v19;
  v39[3] = v20;
  v39[4] = v21;
  v39[5] = v22;
  v39[6] = v23;
  v40 = v24;
  sub_100009728(&v31, &v13, &qword_100099020, &qword_100076758);
  sub_100009790(v39, &qword_100099020, &qword_100076758);
  *(&v28[4] + 7) = v35;
  *(&v28[5] + 7) = v36;
  *(&v28[6] + 7) = v37;
  *(v28 + 7) = v31;
  *(&v28[1] + 7) = v32;
  *(&v28[2] + 7) = v33;
  *(&v28[7] + 7) = v38;
  *(&v28[3] + 7) = v34;
  v6 = v29;
  v7 = sub_10006AB40();
  sub_10005898C();
  sub_10006A720();
  *(&v14[4] + 1) = v28[4];
  *(&v14[5] + 1) = v28[5];
  *(&v14[6] + 1) = v28[6];
  v14[7] = *(&v28[6] + 15);
  *(v14 + 1) = v28[0];
  *(&v14[1] + 1) = v28[1];
  *(&v14[2] + 1) = v28[2];
  v30 = 0;
  v13 = v5;
  LOBYTE(v14[0]) = v6;
  *(&v14[3] + 1) = v28[3];
  LOBYTE(v15) = v7;
  *(&v15 + 1) = v8;
  *&v16[0] = v9;
  *(&v16[0] + 1) = v10;
  *&v16[1] = v11;
  BYTE8(v16[1]) = 0;
  (*(v2 + 104))(v4, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v1);
  sub_100007DF0(&qword_100099028, &qword_100076760);
  sub_100060754();
  sub_10006ACD0();
  (*(v2 + 8))(v4, v1);
  v25 = v14[7];
  v26 = v15;
  v27[0] = v16[0];
  *(v27 + 9) = *(v16 + 9);
  v21 = v14[3];
  v22 = v14[4];
  v23 = v14[5];
  v24 = v14[6];
  v17 = v13;
  v18 = v14[0];
  v19 = v14[1];
  v20 = v14[2];
  return sub_100009790(&v17, &qword_100099028, &qword_100076760);
}

uint64_t sub_100058D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10005E108(a1, &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10005E174(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
  v9 = sub_10006A970();
  LOBYTE(v25[0]) = 0;
  sub_10005A1F8(a1, v21);
  *&v20[55] = v22;
  *&v20[39] = v21[2];
  *&v20[23] = v21[1];
  *&v20[7] = v21[0];
  v10 = v25[0];
  v19 = 0;
  v23[0] = v9;
  v23[1] = 0;
  v24[0] = v25[0];
  *&v24[1] = *v20;
  *&v24[64] = *(&v22 + 1);
  *&v24[49] = *&v20[48];
  *&v24[33] = *&v20[32];
  *&v24[17] = *&v20[16];
  *(&v18[1] + 7) = *v24;
  *(v18 + 7) = v9;
  *(&v18[5] + 7) = *&v24[64];
  *(&v18[4] + 7) = *&v24[48];
  *(&v18[3] + 7) = *&v24[32];
  *(&v18[2] + 7) = *&v24[16];
  *a2 = sub_100060B6C;
  *(a2 + 8) = v8;
  *(a2 + 16) = 0x4000000000000000;
  *(a2 + 24) = 0;
  v11 = v18[0];
  *(a2 + 41) = v18[1];
  *(a2 + 25) = v11;
  v12 = v18[2];
  v13 = v18[3];
  v14 = v18[4];
  *(a2 + 104) = *(&v18[4] + 15);
  *(a2 + 89) = v14;
  *(a2 + 73) = v13;
  *(a2 + 57) = v12;
  v25[0] = v9;
  v25[1] = 0;
  v26 = v10;
  v27 = *v20;
  *&v30[15] = *&v20[63];
  *v30 = *&v20[48];
  v29 = *&v20[32];
  v28 = *&v20[16];

  sub_100009728(v23, &v17, &qword_100099048, &qword_100076770);
  sub_100009790(v25, &qword_100099048, &qword_100076770);
}

uint64_t sub_100059014()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_10006B3B0();
    v6 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  if (v5)
  {
    return 3;
  }

  else
  {
    return 10;
  }
}

uint64_t sub_100059168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_10006A9F0();
  *(a3 + 8) = 0x4000000000000000;
  *(a3 + 16) = 0;
  v6 = sub_100007DF0(&qword_100099050, &qword_100076778);
  return sub_1000591D0(a2, a1, (a3 + *(v6 + 44)));
}

uint64_t sub_1000591D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v87 = a2;
  v110 = a3;
  v4 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v5 = v4 - 8;
  v89 = *(v4 - 8);
  __chkstk_darwin(v4);
  v91 = v6;
  v93 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10006A7B0();
  v90 = *(v92 - 8);
  __chkstk_darwin(v92);
  v86 = v7;
  v88 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100007DF0(&qword_100099058, &unk_100076780);
  __chkstk_darwin(v105);
  v109 = (v79 - v8);
  v84 = sub_10006A700();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100007DF0(&qword_1000981A0, &qword_100075840);
  v10 = __chkstk_darwin(v107);
  v80 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v85 = v79 - v12;
  v13 = type metadata accessor for Note(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v81 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79[1] = v16;
  __chkstk_darwin(v15);
  v101 = v79 - v17;
  v18 = sub_100007DF0(&qword_100099060, &unk_100076790);
  v19 = __chkstk_darwin(v18 - 8);
  v108 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v106 = v79 - v21;
  v22 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v23 = __chkstk_darwin(v22 - 8);
  v99 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = v79 - v26;
  __chkstk_darwin(v25);
  v29 = v79 - v28;
  v97 = sub_100007DF0(&qword_1000981B0, &unk_100075850);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = v79 - v30;
  v94 = sub_100007DF0(&qword_1000981B8, &unk_1000767A0);
  __chkstk_darwin(v94);
  v32 = v79 - v31;
  v98 = sub_100007DF0(&qword_1000981C0, &unk_100075860);
  __chkstk_darwin(v98);
  v34 = v79 - v33;
  v35 = sub_100007DF0(&qword_1000981C8, &qword_1000767B0);
  v103 = *(v35 - 8);
  v104 = v35;
  v36 = __chkstk_darwin(v35);
  v102 = v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v113 = v79 - v38;
  v111 = *(v5 + 32);
  sub_100009728(a1 + v111, v29, &qword_100097C78, &unk_100076050);
  v79[0] = v14;
  v112 = *(v14 + 48);
  if (v112(v29, 1, v13) == 1)
  {
    sub_100009790(v29, &qword_100097C78, &unk_100076050);
    sub_10006B2D0();
  }

  else
  {

    sub_10005D0D8(v29, type metadata accessor for Note);
  }

  sub_100009728(a1 + v111, v27, &qword_100097C78, &unk_100076050);
  v100 = v13;
  v112(v27, 1, v13);
  sub_100009790(v27, &qword_100097C78, &unk_100076050);
  v39 = sub_10006AC30();

  v40 = sub_100059014();
  KeyPath = swift_getKeyPath();
  v114 = v39;
  v115 = KeyPath;
  v116 = v40;
  v117 = 0;
  sub_100007DF0(&qword_1000981D8, &qword_100075878);
  sub_100040118(&qword_1000981E0, &qword_1000981D8, &qword_100075878);
  v42 = v95;
  v43 = a1;
  sub_10006AD70();

  if (sub_10005898C())
  {
    v44 = sub_10006AE50();
  }

  else
  {
    v44 = sub_10006AE20();
  }

  v45 = v44;
  (*(v96 + 32))(v32, v42, v97);
  *&v32[*(v94 + 36)] = v45;
  sub_1000096C0(v32, v34, &qword_1000981B8, &unk_1000767A0);
  *&v34[*(v98 + 36)] = 0x3FF0000000000000;
  v46 = sub_10005898C();
  v47 = v100;
  if (v46)
  {
    sub_10006ABD0();
  }

  else
  {
    sub_10006ABE0();
  }

  sub_10003F76C();
  sub_10006AD20();
  sub_100009790(v34, &qword_1000981C0, &unk_100075860);
  v48 = v99;
  sub_100009728(a1 + v111, v99, &qword_100097C78, &unk_100076050);
  if (v112(v48, 1, v47) == 1)
  {
    sub_100009790(v48, &qword_100097C78, &unk_100076050);
    v49 = v82;
    sub_10006A6F0();
    v50 = sub_10005898C();
    v51 = v106;
    if (v50)
    {
      v52 = sub_10006AE50();
    }

    else
    {
      v52 = sub_10006AE20();
    }

    v66 = v52;
    v67 = v80;
    (*(v83 + 32))(v80, v49, v84);
    *(v67 + *(v107 + 36)) = v66;
    v68 = v85;
    sub_1000096C0(v67, v85, &qword_1000981A0, &qword_100075840);
    sub_100009728(v68, v109, &qword_1000981A0, &qword_100075840);
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100099068, &qword_1000767B8);
    sub_1000095F4(&qword_100099070, &qword_100099068, &qword_1000767B8, &protocol conformance descriptor for GeometryReader<A>);
    sub_10003F940();
    sub_10006AA50();
    sub_100009790(v68, &qword_1000981A0, &qword_100075840);
    v65 = v51;
  }

  else
  {
    v53 = v48;
    v54 = v101;
    sub_10005E174(v53, v101, type metadata accessor for Note);
    v55 = v90;
    v56 = v88;
    v57 = v92;
    (*(v90 + 16))(v88, v87, v92);
    v58 = v93;
    sub_10005E108(v43, v93, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
    v59 = v81;
    sub_10005E108(v54, v81, type metadata accessor for Note);
    v60 = (*(v55 + 80) + 16) & ~*(v55 + 80);
    v61 = (v86 + *(v89 + 80) + v60) & ~*(v89 + 80);
    v62 = (v91 + *(v79[0] + 80) + v61) & ~*(v79[0] + 80);
    v63 = swift_allocObject();
    (*(v55 + 32))(v63 + v60, v56, v57);
    sub_10005E174(v58, v63 + v61, type metadata accessor for NotesFolderWidgetView.SmallNoteRow);
    sub_10005E174(v59, v63 + v62, type metadata accessor for Note);
    v64 = v109;
    *v109 = sub_1000611D0;
    v64[1] = v63;
    swift_storeEnumTagMultiPayload();
    sub_100007DF0(&qword_100099068, &qword_1000767B8);
    sub_1000095F4(&qword_100099070, &qword_100099068, &qword_1000767B8, &protocol conformance descriptor for GeometryReader<A>);
    sub_10003F940();
    v65 = v106;
    sub_10006AA50();
    sub_10005D0D8(v101, type metadata accessor for Note);
  }

  v70 = v102;
  v69 = v103;
  v71 = *(v103 + 16);
  v72 = v113;
  v73 = v104;
  v71(v102, v113, v104);
  v74 = v108;
  sub_100009728(v65, v108, &qword_100099060, &unk_100076790);
  v75 = v110;
  v71(v110, v70, v73);
  v76 = sub_100007DF0(&qword_100099078, &qword_1000767C0);
  sub_100009728(v74, &v75[*(v76 + 48)], &qword_100099060, &unk_100076790);
  sub_100009790(v65, &qword_100099060, &unk_100076790);
  v77 = *(v69 + 8);
  v77(v72, v73);
  sub_100009790(v74, &qword_100099060, &unk_100076790);
  return (v77)(v70, v73);
}

uint64_t sub_100059FA4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = sub_100007DF0(&qword_100099080, &qword_1000767C8);
  v16[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  sub_10006A7A0();
  v8 = v7;
  sub_10006A7A0();
  if (v9 / sub_100059014() <= v8)
  {
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);

    result = sub_100059014();
    v14 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v16[1] = v13;
      v16[2] = v12;
      v17 = 0;
      v18 = &_swiftEmptyArrayStorage;
      v19 = KeyPath;
      v20 = v14;
      v21 = 0;
      sub_100007DF0(&qword_100098250, &qword_1000767D0);
      sub_100040118(&qword_100098258, &qword_100098250, &qword_1000767D0);
      sub_10006AD70();

      *&v6[*(v4 + 36)] = sub_10006AA80();
      sub_1000096C0(v6, a2, &qword_100099080, &qword_1000767C8);
      return (*(v16[0] + 56))(a2, 0, 1, v4);
    }
  }

  else
  {
    v10 = *(v16[0] + 56);

    return v10(a2, 1, 1, v4);
  }

  return result;
}

void sub_10005A1F8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = sub_100007DF0(&qword_100096D30, &unk_10006F760);
  __chkstk_darwin(v3 - 8);
  v43 = &v36 - v4;
  v42 = type metadata accessor for NotesFolder(0);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = type metadata accessor for NotesFolderWidgetView.SmallNoteRow(0);
  v38 = *(v12 + 24);
  v39 = v12;
  sub_100009728(a1 + v38, v11, &qword_100097C78, &unk_100076050);
  v13 = type metadata accessor for Note(0);
  v37 = *(*(v13 - 8) + 48);
  v14 = v37(v11, 1, v13);
  v41 = a1;
  if (v14 == 1)
  {
    sub_100009790(v11, &qword_100097C78, &unk_100076050);
    v15 = sub_10006B2D0();
    v17 = v16;
  }

  else
  {
    v15 = *(v11 + 6);
    v17 = *(v11 + 7);

    sub_10005D0D8(v11, type metadata accessor for Note);
  }

  v45 = v15;
  v46 = v17;
  sub_100060700();
  v18 = sub_10006ACB0();
  v20 = v19;
  v22 = v21;
  v23 = v41;
  sub_100009728(v41 + v38, v9, &qword_100097C78, &unk_100076050);
  v37(v9, 1, v13);
  sub_100009790(v9, &qword_100097C78, &unk_100076050);
  v24 = sub_10006AC30();
  sub_10000832C(v18, v20, v22 & 1);

  KeyPath = swift_getKeyPath();
  if (sub_10005898C())
  {
    v26 = sub_10006AE60();
    v27 = v43;
  }

  else
  {
    v28 = sub_10005898C();
    v27 = v43;
    if (v28)
    {
      v29 = sub_10006AE50();
    }

    else
    {
      v29 = sub_10006AE20();
    }

    v26 = v29;
  }

  v30 = v42;
  sub_100009728(v23 + *(v39 + 20), v27, &qword_100096D30, &unk_10006F760);
  if ((*(v40 + 48))(v27, 1, v30) == 1)
  {
    sub_100009790(v27, &qword_100096D30, &unk_10006F760);
LABEL_15:
    v34 = 0;
    v33 = 0;
    goto LABEL_16;
  }

  v31 = v27;
  v32 = v36;
  sub_10005E174(v31, v36, type metadata accessor for NotesFolder);
  if (*(v32 + 32) != 1)
  {
    sub_10005D0D8(v32, type metadata accessor for NotesFolder);
    goto LABEL_15;
  }

  v33 = *(v32 + *(v30 + 40));
  swift_bridgeObjectRetain_n();
  sub_10005D0D8(v32, type metadata accessor for NotesFolder);

  v34 = 0x4020000000000000;
LABEL_16:
  v35 = v44;
  *v44 = v24;
  v35[1] = KeyPath;
  v35[2] = 1;
  *(v35 + 24) = 0;
  v35[4] = v26;
  v35[5] = v34;
  v35[6] = 0;
  v35[7] = v33;
}

uint64_t sub_10005A678()
{
  v1 = sub_10006A950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for NotesFolderWidgetView.MediumNoteRow(0) + 20);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_10006B3B0();
    v7 = sub_10006AB10();
    sub_10006A690();

    sub_10006A940();
    swift_getAtKeyPath();
    sub_1000096B4(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10005A7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_100007DF0(&qword_100098F50, &qword_100076668);
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v64 = (&v61 - v4);
  v61 = sub_100007DF0(&qword_100098F58, &qword_100076670);
  v5 = __chkstk_darwin(v61);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = (&v61 - v7);
  v8 = sub_100007DF0(&qword_100098F60, &qword_100076678);
  v9 = __chkstk_darwin(v8 - 8);
  v69 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = &v61 - v11;
  v12 = sub_100007DF0(&qword_100097C78, &unk_100076050);
  v13 = __chkstk_darwin(v12 - 8);
  v66 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v61 - v16;
  __chkstk_darwin(v15);
  v19 = &v61 - v18;
  v76 = a1;
  sub_100009728(a1, &v61 - v18, &qword_100097C78, &unk_100076050);
  v20 = type metadata accessor for Note(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v74 = v21 + 48;
  v75 = v22;
  if ((v22)(v19, 1, v20) == 1)
  {
    sub_100009790(v19, &qword_100097C78, &unk_100076050);
    v23 = sub_10006B2D0();
    v25 = v24;
  }

  else
  {
    v23 = *(v19 + 2);
    v25 = *(v19 + 3);

    sub_10005D0D8(v19, type metadata accessor for Note);
  }

  v80 = v23;
  v81 = v25;
  sub_100060700();
  v26 = sub_10006ACB0();
  v28 = v27;
  v30 = v29;
  sub_100009728(v76, v17, &qword_100097C78, &unk_100076050);
  v65 = v20;
  v75(v17, 1, v20);
  sub_100009790(v17, &qword_100097C78, &unk_100076050);
  v31 = sub_10006AC30();
  sub_10000832C(v26, v28, v30 & 1);

  if (sub_10005A678())
  {
    v32 = sub_10006AE50();
  }

  else
  {
    v32 = sub_10006AE20();
  }

  v73 = v32;
  v33 = v66;
  KeyPath = swift_getKeyPath();
  sub_10006AFC0();
  sub_10006A7F0();
  *&v92[55] = v94[3];
  *&v92[71] = v94[4];
  *&v92[87] = v94[5];
  *&v92[103] = v94[6];
  *&v92[7] = v94[0];
  *&v92[23] = v94[1];
  v93 = 0;
  *&v92[39] = v94[2];
  sub_100009728(v76, v33, &qword_100097C78, &unk_100076050);
  v35 = v65;
  v36 = (v75)(v33, 1, v65);
  v71 = v31;
  if (v36 == 1)
  {
    sub_100009790(v33, &qword_100097C78, &unk_100076050);
LABEL_11:
    v50 = 1;
    goto LABEL_12;
  }

  v37 = *(v33 + *(v35 + 52));

  sub_10005D0D8(v33, type metadata accessor for Note);
  if (!v37)
  {
    goto LABEL_11;
  }

  v38 = swift_getKeyPath();
  v39 = KeyPath;
  v40 = type metadata accessor for NotesFolderWidgetView.Thumbnail(0);
  v41 = v62;
  *(v62 + *(v40 + 20)) = v38;
  sub_100007DF0(&qword_100096A40, &unk_10006F460);
  swift_storeEnumTagMultiPayload();
  *v41 = swift_getKeyPath();
  sub_100007DF0(&qword_100096A30, &qword_100076650);
  swift_storeEnumTagMultiPayload();
  *(v41 + *(v40 + 24)) = v37;

  LOBYTE(v38) = sub_10006AB80();
  sub_10006A720();
  v42 = v41 + *(v61 + 36);
  *v42 = v38;
  *(v42 + 1) = v43;
  *(v42 + 2) = v44;
  *(v42 + 3) = v45;
  *(v42 + 4) = v46;
  v42[40] = 0;
  v47 = v63;
  sub_100009728(v41, v63, &qword_100098F58, &qword_100076670);
  v48 = v64;
  *v64 = 0x4024000000000000;
  *(v48 + 8) = 0;
  v49 = sub_100007DF0(&qword_100098F80, &qword_1000766C8);
  sub_100009728(v47, v48 + *(v49 + 48), &qword_100098F58, &qword_100076670);

  sub_100009790(v41, &qword_100098F58, &qword_100076670);
  v31 = v71;
  KeyPath = v39;
  sub_100009790(v47, &qword_100098F58, &qword_100076670);
  sub_1000096C0(v48, v72, &qword_100098F50, &qword_100076668);
  v50 = 0;
LABEL_12:
  v51 = v72;
  (*(v67 + 56))(v72, v50, 1, v68);
  v52 = v69;
  sub_100009728(v51, v69, &qword_100098F60, &qword_100076678);
  *&v77 = v31;
  *(&v77 + 1) = v73;
  *&v78 = KeyPath;
  *(&v78 + 1) = 1;
  v79[0] = 0;
  *&v79[1] = *v92;
  *&v79[17] = *&v92[16];
  *&v79[65] = *&v92[64];
  *&v79[81] = *&v92[80];
  *&v79[97] = *&v92[96];
  *&v79[112] = *&v92[111];
  v53 = *&v92[111];
  *&v79[33] = *&v92[32];
  *&v79[49] = *&v92[48];
  v54 = *&v79[80];
  v55 = v70;
  *(v70 + 96) = *&v79[64];
  *(v55 + 112) = v54;
  *(v55 + 128) = *&v79[96];
  *(v55 + 144) = v53;
  v56 = *&v79[16];
  *(v55 + 32) = *v79;
  *(v55 + 48) = v56;
  v57 = *&v79[48];
  *(v55 + 64) = *&v79[32];
  *(v55 + 80) = v57;
  v58 = v78;
  *v55 = v77;
  *(v55 + 16) = v58;
  v59 = sub_100007DF0(&qword_100099010, &qword_100076748);
  sub_100009728(v52, v55 + *(v59 + 48), &qword_100098F60, &qword_100076678);
  sub_100009728(&v77, &v80, &qword_100099018, &qword_100076750);
  sub_100009790(v51, &qword_100098F60, &qword_100076678);
  sub_100009790(v52, &qword_100098F60, &qword_100076678);
  v89 = *&v92[64];
  v90 = *&v92[80];
  *v91 = *&v92[96];
  v85 = *v92;
  v86 = *&v92[16];
  v87 = *&v92[32];
  v80 = v71;
  v81 = v73;
  v82 = KeyPath;
  v83 = 1;
  v84 = 0;
  *&v91[15] = *&v92[111];
  v88 = *&v92[48];
  return sub_100009790(&v80, &qword_100099018, &qword_100076750);
}