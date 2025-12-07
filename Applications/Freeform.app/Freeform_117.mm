uint64_t sub_100E7FB60(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRLPreviewImages.Item(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100E76DA4(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_100E84904();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100E89E40(v13 + 1);
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  sub_1006C83D0(v27);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_10000C83C(*(v15 + 48) + v19 * a2, v12, type metadata accessor for CRLPreviewImages.Item);
      v20 = sub_1006CC4F0(v12, a1);
      sub_100026028(v12, type metadata accessor for CRLPreviewImages.Item);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for CRLPreviewImages.Item);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100E7FDA4(Swift::Int result, uint64_t a2, char a3, unint64_t a4, char a5, double a6)
{
  v11 = *(*v6 + 16);
  v12 = *(*v6 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a5)
  {
    sub_100E775F8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      v13 = a4;
      sub_100E84B10();
      a4 = v13;
      goto LABEL_36;
    }

    sub_100E8A640(v11 + 1);
  }

  v14 = *v6;
  Hasher.init(_seed:)();
  if (a3)
  {
    v15 = dbl_1014B71A8[result];
  }

  else
  {
    v15 = *&result;
  }

  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  Hasher._combine(_:)(*&v15);
  if (a3)
  {
    v16 = dbl_1014B71A8[result];
  }

  else
  {
    v16 = *&a2;
  }

  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  Hasher._combine(_:)(*&v16);
  if (a6 == 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = a6;
  }

  Hasher._combine(_:)(*&v17);
  v18 = Hasher._finalize()();
  v19 = -1 << *(v14 + 32);
  a4 = v18 & ~v19;
  if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v20 = ~v19;
    do
    {
      v21 = *(v14 + 48) + 32 * a4;
      if (*(v21 + 16) == 1)
      {
        v22 = &dbl_1014B71A8[*v21];
        v23 = *v22;
      }

      else
      {
        v22 = (v21 + 8);
        v23 = *v21;
      }

      v24 = *&result;
      v25 = *&a2;
      if (a3)
      {
        v24 = dbl_1014B71A8[result];
        v25 = v24;
      }

      v26 = v23 == v24 && *v22 == v25;
      if (v26 && *(v21 + 24) == a6)
      {
        goto LABEL_39;
      }

      a4 = (a4 + 1) & v20;
    }

    while (((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_36:
  v28 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v29 = *(v28 + 48) + 32 * a4;
  *v29 = result;
  *(v29 + 8) = a2;
  *(v29 + 16) = a3 & 1;
  *(v29 + 24) = a6;
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v28 + 16) = v32;
    return;
  }

  __break(1u);
LABEL_39:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100E7FFD4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v28 = v3;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_100E77770(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_100E84C6C();
      goto LABEL_19;
    }

    sub_100E8A77C(v9 + 1);
  }

  v11 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v12 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v13 = (a1 + *(v12 + 20));
  v14 = *v13;
  v15 = v13[1];
  String.hash(into:)();
  v30 = *(a1 + *(v31 + 20));
  Hasher._combine(_:)(v30);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v11 + 32);
  a2 = v16 & ~v17;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v29 + 72);
    do
    {
      sub_10000C83C(*(v11 + 48) + v19 * a2, v8, type metadata accessor for CRLBoardIdentifierAndValue);
      if (static UUID.== infix(_:_:)())
      {
        v20 = &v8[*(v12 + 20)];
        v21 = *v20 == v14 && *(v20 + 1) == v15;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v30 == v8[*(v31 + 20)])
        {
          goto LABEL_22;
        }
      }

      sub_100026028(v8, type metadata accessor for CRLBoardIdentifierAndValue);
      a2 = (a2 + 1) & v18;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v22 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v22 + 48) + *(v29 + 72) * a2, type metadata accessor for CRLBoardIdentifierAndValue);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v22 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_22:
  sub_100026028(v8, type metadata accessor for CRLBoardIdentifierAndValue);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E802FC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100E77AF4(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_100E84E78();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100E8AAD0(v13 + 1);
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  sub_100F8ED58(v27);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_10000C83C(*(v15 + 48) + v19 * a2, v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v20 = sub_100F92694(v12, a1);
      sub_100026028(v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E80540(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v7 - 8);
  v78 = &v76[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_1005B981C(&qword_1019F3460, &unk_10148E220);
  __chkstk_darwin(v84);
  v92 = &v76[-v9];
  v97 = sub_1005B981C(&qword_101A000E0, &unk_10146FA20);
  __chkstk_darwin(v97);
  v11 = &v76[-v10];
  v88 = _s4NodeVMa(0);
  v82 = *(v88 - 8);
  __chkstk_darwin(v88);
  v13 = &v76[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = _s5BoardVMa(0);
  __chkstk_darwin(v14 - 8);
  v83 = &v76[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v85 = &v76[-v17];
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v18 - 8);
  v80 = &v76[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v91 = &v76[-v21];
  __chkstk_darwin(v22);
  v90 = &v76[-v23];
  __chkstk_darwin(v24);
  v26 = &v76[-v25];
  v27 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v27);
  v29 = &v76[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v89 = &v76[-v31];
  __chkstk_darwin(v32);
  v93 = &v76[-v33];
  __chkstk_darwin(v34);
  v36 = &v76[-v35];
  v86 = v3;
  v37 = *(*v3 + 16);
  v38 = *(*v3 + 24);
  if (v38 <= v37 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v39 = v86;
      sub_100E77D90(v37 + 1);
    }

    else
    {
      if (v38 > v37)
      {
        sub_100E85084();
        goto LABEL_52;
      }

      v39 = v86;
      sub_100E8AD38(v37 + 1);
    }

    v96 = *v39;
    Hasher.init(_seed:)();
    sub_10000C83C(a1, v36, type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_100025668(v36, v26, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        sub_100F8D588(v98);
        v41 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v42 = v26;
      }

      else
      {
        v43 = v85;
        sub_100025668(v36, v85, _s5BoardVMa);
        type metadata accessor for UUID();
        sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
        v41 = _s5BoardVMa;
        v42 = v43;
      }

      sub_100026028(v42, v41);
    }

    else
    {
      Hasher._combine(_:)(*v36);
    }

    v81 = *(a1 + *(v88 + 20));
    sub_100E90344(v98, v81);
    v44 = Hasher._finalize()();
    v45 = v96 + 56;
    v46 = -1 << *(v96 + 32);
    a2 = v44 & ~v46;
    v47 = v92;
    if ((*(v96 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v95 = ~v46;
      v94 = *(v82 + 72);
      v87 = v29;
      v79 = a1;
      do
      {
        sub_10000C83C(*(v96 + 48) + v94 * a2, v13, _s4NodeVMa);
        v50 = *(v97 + 48);
        sub_10000C83C(v13, v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000C83C(a1, &v11[v50], type metadata accessor for CRLBoardLibraryViewModel.Item);
        v51 = swift_getEnumCaseMultiPayload();
        if (v51)
        {
          if (v51 == 1)
          {
            v52 = v89;
            sub_10000C83C(v11, v89, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v48 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
              v49 = v52;
LABEL_17:
              sub_100026028(v49, v48);
LABEL_18:
              sub_10000CAAC(v11, &qword_101A000E0, &unk_10146FA20);
              goto LABEL_19;
            }

            v53 = v90;
            sub_100025668(v52, v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v54 = &v11[v50];
            v55 = v91;
            sub_100025668(v54, v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v56 = *(v84 + 48);
            sub_10000C83C(v53, v47, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            sub_10000C83C(v55, v47 + v56, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v57 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
            v58 = *(*(v57 - 8) + 48);
            v59 = v58(v47, 5, v57);
            if (v59 > 2)
            {
              if (v59 == 3)
              {
                sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v47 = v92;
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v60 = v58(v47 + v56, 5, v57) == 3;
              }

              else if (v59 == 4)
              {
                sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v47 = v92;
                v60 = v58(&v92[v56], 5, v57) == 4;
              }

              else
              {
                sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v47 = v92;
                v60 = v58(&v92[v56], 5, v57) == 5;
              }

LABEL_42:
              a1 = v79;
              v29 = v87;
              if (!v60)
              {
                goto LABEL_48;
              }

              sub_100026028(v47, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            }

            else
            {
              if (v59)
              {
                if (v59 == 1)
                {
                  sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  v47 = v92;
                  v60 = v58(&v92[v56], 5, v57) == 1;
                }

                else
                {
                  sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  v47 = v92;
                  v60 = v58(&v92[v56], 5, v57) == 2;
                }

                goto LABEL_42;
              }

              sub_10000C83C(v47, v80, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              if (v58(v47 + v56, 5, v57))
              {
                sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v80, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                a1 = v79;
                v29 = v87;
LABEL_48:
                sub_10000CAAC(v47, &qword_1019F3460, &unk_10148E220);
LABEL_49:
                sub_100026028(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
                goto LABEL_19;
              }

              v69 = v78;
              sub_100025668(v47 + v56, v78, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              v70 = v80;
              v77 = sub_100F92694(v80, v69);
              sub_100026028(v69, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              sub_100026028(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v47 = v92;
              sub_100026028(v70, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              sub_100026028(v47, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              a1 = v79;
              v29 = v87;
              if (!v77)
              {
                goto LABEL_49;
              }
            }

            sub_100026028(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
            goto LABEL_46;
          }

          sub_10000C83C(v11, v29, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            v48 = _s5BoardVMa;
            v49 = v29;
            goto LABEL_17;
          }

          v63 = v29;
          v64 = v85;
          sub_100025668(v63, v85, _s5BoardVMa);
          v65 = &v11[v50];
          v66 = v83;
          sub_100025668(v65, v83, _s5BoardVMa);
          v67 = sub_1013030EC(v64, v66);
          sub_100026028(v66, _s5BoardVMa);
          v68 = v64;
          v29 = v87;
          v47 = v92;
          sub_100026028(v68, _s5BoardVMa);
          sub_100026028(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (!v67)
          {
            goto LABEL_19;
          }
        }

        else
        {
          sub_10000C83C(v11, v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_18;
          }

          v61 = *v93;
          v62 = v11[v50];
          sub_100026028(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v61 != v62)
          {
            goto LABEL_19;
          }
        }

LABEL_46:
        if (sub_10066F2C0(*&v13[*(v88 + 20)], v81))
        {
          goto LABEL_55;
        }

LABEL_19:
        sub_100026028(v13, _s4NodeVMa);
        a2 = (a2 + 1) & v95;
      }

      while (((*(v45 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_52:
  v71 = *v86;
  *(*v86 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v71 + 48) + *(v82 + 72) * a2, _s4NodeVMa);
  v73 = *(v71 + 16);
  v74 = __OFADD__(v73, 1);
  v75 = v73 + 1;
  if (v74)
  {
    __break(1u);
LABEL_55:
    sub_100026028(v13, _s4NodeVMa);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v71 + 16) = v75;
  }

  return result;
}

uint64_t sub_100E81298(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s5BoardVMa(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100E77F98(v13 + 1, _s5BoardVMa, &qword_101A21C88, &unk_1014B6568, _s5BoardVMa);
  }

  else
  {
    if (v14 > v13)
    {
      sub_100E85290();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100E8AF04(v13 + 1);
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_10000C83C(*(v15 + 48) + v19 * a2, v12, _s5BoardVMa);
      v20 = sub_1013030EC(v12, a1);
      sub_100026028(v12, _s5BoardVMa);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v21 + 48) + *(v9 + 72) * a2, _s5BoardVMa);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100E81578(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E782F8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100E8549C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E8B244(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4 & 1);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100E816CC(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for CRLFolderIdentifier(0);
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    v29 = v8;
    sub_100E78548(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E855DC();
      goto LABEL_18;
    }

    v29 = v8;
    sub_100E8B464(v11 + 1);
  }

  v13 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v14 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v15 = (a1 + *(v14 + 20));
  v16 = *v15;
  v17 = v15[1];
  String.hash(into:)();
  v18 = Hasher._finalize()();
  v19 = -1 << *(v13 + 32);
  a2 = v18 & ~v19;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v31 + 72);
    while (1)
    {
      sub_10000C83C(*(v13 + 48) + v21 * a2, v10, type metadata accessor for CRLFolderIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v22 = &v10[*(v14 + 20)];
        v23 = *v22 == v16 && *(v22 + 1) == v17;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      sub_100026028(v10, type metadata accessor for CRLFolderIdentifier);
      a2 = (a2 + 1) & v20;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_100026028(v10, type metadata accessor for CRLFolderIdentifier);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_18:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v24 + 48) + *(v31 + 72) * a2, type metadata accessor for CRLFolderIdentifier);
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

uint64_t sub_100E819C8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest(0);
  __chkstk_darwin(v33);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*v3 + 16);
  v10 = *(*v3 + 24);
  v30 = v3;
  v31 = v11;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_20;
  }

  if (a3)
  {
    sub_100E788B8(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_100E857E8();
      goto LABEL_20;
    }

    sub_100E8B7A4(v9 + 1);
  }

  v12 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v13 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v14 = (a1 + *(v13 + 20));
  v15 = *v14;
  v16 = v14[1];
  String.hash(into:)();
  v17 = v33;
  v32 = *(v33 + 20);
  dispatch thunk of Hashable.hash(into:)();
  v29 = *(v17 + 24);
  dispatch thunk of Hashable.hash(into:)();
  v18 = Hasher._finalize()();
  v19 = -1 << *(v12 + 32);
  a2 = v18 & ~v19;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v31 + 72);
    while (1)
    {
      sub_10000C83C(*(v12 + 48) + v21 * a2, v8, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      if (static UUID.== infix(_:_:)())
      {
        v22 = &v8[*(v13 + 20)];
        v23 = *v22 == v15 && *(v22 + 1) == v16;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)())
        {
          break;
        }
      }

      sub_100026028(v8, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      a2 = (a2 + 1) & v20;
      if (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_100026028(v8, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_20:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v24 + 48) + *(v31 + 72) * a2, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
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

uint64_t sub_100E81D38(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = _s17CategoryViewModelVMa(0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v4 + 16);
  v13 = *(*v4 + 24);
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_37;
  }

  if (a3)
  {
    sub_100E78C90(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100E859F4();
      goto LABEL_37;
    }

    sub_100E8BB38(v12 + 1);
  }

  v14 = *v4;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v15 = (a1 + v8[5]);
  v16 = v15[1];
  v48 = *v15;
  v53 = v16;
  String.hash(into:)();
  v17 = (a1 + v8[6]);
  v18 = *v17;
  v19 = v17[1];
  if (v19)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v20 = (a1 + v8[7]);
  v21 = *v20;
  v50 = v20[1];
  v51 = v21;
  String.hash(into:)();
  v47 = *(a1 + v8[8]);
  Hasher._combine(_:)(v47);
  v22 = Hasher._finalize()();
  v23 = -1 << *(v14 + 32);
  a2 = v22 & ~v23;
  v54 = v14 + 56;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v52 = v19;
    v49 = v18;
    v24 = ~v23;
    v25 = *(v9 + 72);
    v26 = v48;
    while (1)
    {
      sub_10000C83C(*(v14 + 48) + v25 * a2, v11, _s17CategoryViewModelVMa);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v27 = &v11[v8[5]];
      v28 = *v27 == v26 && *(v27 + 1) == v53;
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v29 = &v11[v8[6]];
      v30 = *(v29 + 1);
      if (v30)
      {
        if (!v52)
        {
          break;
        }

        v31 = *v29 == v49 && v30 == v52;
        if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v52)
      {
        break;
      }

      v32 = &v11[v8[7]];
      v33 = *v32 == v51 && *(v32 + 1) == v50;
      if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v34 = v8[8];
      v35 = v8;
      v36 = v14;
      v37 = a1;
      v38 = v9;
      v39 = v4;
      v40 = *&v11[v34];
      sub_100026028(v11, _s17CategoryViewModelVMa);
      v28 = v40 == v47;
      v4 = v39;
      v9 = v38;
      a1 = v37;
      v14 = v36;
      v8 = v35;
      v26 = v48;
      if (v28)
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_37;
      }

LABEL_15:
      a2 = (a2 + 1) & v24;
      if (((*(v54 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    sub_100026028(v11, _s17CategoryViewModelVMa);
    goto LABEL_15;
  }

LABEL_37:
  v41 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v41 + 48) + *(v9 + 72) * a2, _s17CategoryViewModelVMa);
  v43 = *(v41 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
  }

  else
  {
    *(v41 + 16) = v45;
  }

  return result;
}

void sub_100E82154(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E7909C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100E85FE8(&qword_1019F3798, &qword_101468B10);
      goto LABEL_12;
    }

    sub_100E8BF18(v6 + 1);
  }

  v8 = *v3;
  type metadata accessor for CalculateExpression();
  sub_1000066D0(&qword_1019F37A0, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000066D0(&qword_1019F37A8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100E8234C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E79330(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E8649C(&type metadata accessor for UTType, &qword_101A21FF8, &qword_1014B6AE8);
      goto LABEL_12;
    }

    sub_100E8C190(v11 + 1);
  }

  v13 = *v3;
  sub_1000066D0(&unk_101A22910, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1000066D0(&qword_101A07820, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E82614(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = &v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_100E7968C(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_100E85C78();
      goto LABEL_12;
    }

    v26 = v10;
    sub_100E8C4AC(v13 + 1);
  }

  v15 = *v4;
  Hasher.init(_seed:)();
  sub_1007F0E00(v27);
  v16 = Hasher._finalize()();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_10000C83C(*(v15 + 48) + v19 * a2, v12, type metadata accessor for CRLSELibraryViewModel.Item);
      v20 = sub_1007F5338(v12, a1);
      sub_100026028(v12, type metadata accessor for CRLSELibraryViewModel.Item);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for CRLSELibraryViewModel.Item);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100E82858(uint64_t a1, unsigned __int8 a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a4)
  {
    sub_100E79994(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_100E85E84();
      goto LABEL_48;
    }

    sub_100E8C784(v9 + 1);
  }

  v11 = *v4;
  Hasher.init(_seed:)();
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v13 = 4;
        }

        else
        {
          v13 = 5;
        }
      }

      else
      {
        v13 = 3;
      }

      Hasher._combine(_:)(v13);
      goto LABEL_19;
    }

    v12 = 2;
  }

  else
  {
    v12 = a2 != 0;
  }

  Hasher._combine(_:)(v12);
  NSObject.hash(into:)();
LABEL_19:
  v14 = Hasher._finalize()();
  v15 = -1 << *(v11 + 32);
  a3 = v14 & ~v15;
  if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_48;
  }

  v16 = ~v15;
  v17 = a2 == 3;
  v18 = a1 == 2 && a2 == 3;
  v19 = a1 == 1 && a2 == 3;
  v35 = v19;
  v36 = v18;
  if (a1)
  {
    v17 = 0;
  }

  v34 = v17;
  while (1)
  {
    v20 = *(v11 + 48) + 16 * a3;
    v21 = *v20;
    v22 = *(v20 + 8);
    if (v22 <= 1)
    {
      if (v22)
      {
        if (a2 != 1)
        {
          goto LABEL_30;
        }

        sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
        v28 = v21;
        v24 = static NSObject.== infix(_:_:)();
        v25 = v21;
        v26 = 1;
      }

      else
      {
        if (a2)
        {
          goto LABEL_30;
        }

        sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
        v23 = v21;
        v24 = static NSObject.== infix(_:_:)();
        v25 = v21;
        v26 = 0;
      }

      goto LABEL_29;
    }

    if (v22 == 2)
    {
      if (a2 != 2)
      {
        goto LABEL_30;
      }

      sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
      v27 = v21;
      v24 = static NSObject.== infix(_:_:)();
      v25 = v21;
      v26 = 2;
LABEL_29:
      sub_1007A98C8(v25, v26);
      if (v24)
      {
        goto LABEL_47;
      }

      goto LABEL_30;
    }

    if (v21)
    {
      break;
    }

    if (v34)
    {
      goto LABEL_47;
    }

LABEL_30:
    a3 = (a3 + 1) & v16;
    if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if (v21 == 1)
  {
    if (v35)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  if (!v36)
  {
    goto LABEL_30;
  }

LABEL_47:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_48:
  v29 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v30 = *(v29 + 48) + 16 * a3;
  *v30 = a1;
  *(v30 + 8) = a2;
  v31 = *(v29 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v33;
  }
}

void sub_100E82B5C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100E79C50(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_100E85FE8(&qword_101A21FC0, &unk_1014B6AB0);
        goto LABEL_35;
      }

      sub_100E8CA14(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    sub_100BD3B78(v36, *(a1 + 16));
    v9 = a1 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata;
    sub_100D6FEA0(v36);
    v10 = Hasher._finalize()();
    v11 = -1 << *(v8 + 32);
    a2 = v10 & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      _s8ItemDataCMa(0);
      do
      {
        v13 = *(*(v8 + 48) + 8 * a2);
        v14 = *(v13 + 16);
        v15 = *(a1 + 16);

        if ((sub_100BC5454(v14, v15) & 1) == 0)
        {
          goto LABEL_33;
        }

        v16 = v13 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata;
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_33;
        }

        v17 = _s13ItemViewModelVMa(0);
        v18 = v17[8];
        v19 = *(v16 + v18);
        v20 = *(v16 + v18 + 8);
        v21 = (v9 + v18);
        v22 = v19 == *v21 && v20 == v21[1];
        if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_33;
        }

        v23 = v17[9];
        v24 = (v16 + v23);
        v25 = *(v16 + v23 + 8);
        v26 = (v9 + v23);
        v27 = v26[1];
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_33;
          }

          v28 = *v24 == *v26 && v25 == v27;
          if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if (v27)
        {
          goto LABEL_33;
        }

        sub_100BC569C(*(v16 + v17[11]), *(v9 + v17[11]));
        if (v29)
        {
          type metadata accessor for CGImage(0);
          sub_1000066D0(&unk_101A1F1A0, type metadata accessor for CGImage, a5_1);
          if (static _CFObject.== infix(_:_:)() & 1) != 0 && *(v16 + v17[12]) == *(v9 + v17[12]) && *(v16 + v17[13]) == *(v9 + v17[13]) && (static Date.== infix(_:_:)())
          {
            v30 = static Date.== infix(_:_:)();

            if (v30)
            {
              goto LABEL_38;
            }

            goto LABEL_34;
          }
        }

LABEL_33:

LABEL_34:
        a2 = (a2 + 1) & v12;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_35:
  v31 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v31 + 48) + 8 * a2) = a1;
  v32 = *(v31 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
LABEL_38:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v34;
  }
}

void sub_100E82E7C(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E7A2AC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100E86334();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E8D00C(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100E82F9C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E7A4D0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E8649C(&type metadata accessor for IndexPath, &qword_101A21E98, &qword_1014B6870);
      goto LABEL_12;
    }

    sub_100E8D1FC(v11 + 1);
  }

  v13 = *v3;
  sub_1000066D0(&unk_101A23C60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1000066D0(&unk_101A226D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100E83264(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E7A82C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_100E866E8();
      goto LABEL_12;
    }

    sub_100E8D518(v7 + 1);
  }

  v9 = *v3;
  v10 = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_100064110(*(v9 + 48) + 40 * a2, v20);
      v13 = static AnyHashable.== infix(_:_:)();
      sub_100064234(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(result + 16);
  *v15 = *result;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100E833DC()
{
  v1 = v0;
  v2 = _s6CellIDVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21DB0, &qword_1014B6728);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, _s6CellIDVMa);
        sub_100025668(v5, *(v8 + 48) + v21, _s6CellIDVMa);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E83624()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D18, &unk_1014B6638);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_100E83778()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D40, &unk_1014B6670);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 56);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 112 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[3];
        v20 = v18[4];
        v21 = v18[6];
        v25[5] = v18[5];
        v25[6] = v21;
        v25[3] = v19;
        v25[4] = v20;
        v23 = v18[1];
        v22 = v18[2];
        v25[0] = *v18;
        v25[1] = v23;
        v25[2] = v22;
        memmove((*(v4 + 48) + v17), v18, 0x70uLL);
        sub_10000BE14(v25, &v24, &qword_1019FFF80, &qword_101489000);
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
}

void sub_100E83928(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(v22 + 8) = v20)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = 16 * v16;
      v20 = *(v4 + 48) + v19;
      v21 = *v20;
      LOBYTE(v20) = *(v20 + 8);
      v22 = *(v6 + 48) + v19;
      *v22 = v21;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_100E83A6C()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D68, &unk_1014B66B0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_100E83BAC()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D70, &unk_1014B66C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 4) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 8 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 4);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_100E83D00()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D78, &qword_1014B66D8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        sub_100962438(v19, v20, v22);
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
}

void sub_100E83E68()
{
  v1 = v0;
  sub_1005B981C(&qword_1019F3488, &unk_101468AC0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_100E83FC4()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21E68, &unk_1014B6828);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 48 * (v14 | (v8 << 6));
        sub_10063FD8C(*(v2 + 48) + v17, v21);
        v18 = (*(v4 + 48) + v17);
        v19 = v21[0];
        v20 = v21[2];
        v18[1] = v21[1];
        v18[2] = v20;
        *v18 = v19;
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
}

void sub_100E84138()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_1019F3350, &qword_1014C5DC0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLBoardIdentifier);
        sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLBoardIdentifier);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E84344()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21EA0, &qword_1014B6878);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 32);
        v24 = *(v18 + 40);
        v25 = *(v4 + 48) + v17;
        v26 = *(v18 + 48);
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v23;
        *(v25 + 40) = v24;
        *(v25 + 48) = v26;
        sub_100076F8C(v19, v20, v21, v22, v23, v24, v26);
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
}

void sub_100E844BC()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  v22 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  sub_1005B981C(&qword_101A22008, &qword_1014B6B08);
  v5 = *v0;
  v6 = static _SetStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v21 = v1;
    v8 = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 56);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v22 + 72) * (v17 | (v11 << 6));
        sub_10000BE14(*(v5 + 48) + v20, v4, &unk_101A096C0, &qword_101489120);
        sub_10003DFF8(v4, *(v7 + 48) + v20, &unk_101A096C0, &qword_101489120);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v21;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_100E846F8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21EA8, &qword_1014B6880);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E84904()
{
  v1 = v0;
  v2 = type metadata accessor for CRLPreviewImages.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_1019F3470, &unk_1014B65D0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLPreviewImages.Item);
        sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLPreviewImages.Item);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E84B10()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21CE8, &unk_1014B65E0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 24) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 32 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *(v4 + 48) + v17;
      *v21 = *v18;
      *(v21 + 16) = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_100E84C6C()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_1019F3680, &unk_101468AE0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLBoardIdentifierAndValue);
        sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLBoardIdentifierAndValue);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E84E78()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&unk_1019F33F0, &unk_101468A90);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E85084()
{
  v1 = v0;
  v2 = _s4NodeVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21C90, &qword_1014B6578);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, _s4NodeVMa);
        sub_100025668(v5, *(v8 + 48) + v21, _s4NodeVMa);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E85290()
{
  v1 = v0;
  v2 = _s5BoardVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21C88, &unk_1014B6568);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, _s5BoardVMa);
        sub_100025668(v5, *(v8 + 48) + v21, _s5BoardVMa);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E8549C()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21C78, &qword_1014B6560);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_100E855DC()
{
  v1 = v0;
  v2 = type metadata accessor for CRLFolderIdentifier(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_1019F3790, &qword_101468B08);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLFolderIdentifier);
        sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLFolderIdentifier);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E857E8()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A22058, &unk_1014B6B80);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
        sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E859F4()
{
  v1 = v0;
  v2 = _s17CategoryViewModelVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21FB8, &qword_1014B6AA8);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, _s17CategoryViewModelVMa);
        sub_100025668(v5, *(v8 + 48) + v21, _s17CategoryViewModelVMa);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E85C78()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21FE0, &unk_1014B6AD0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLSELibraryViewModel.Item);
        sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLSELibraryViewModel.Item);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E85E84()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21D98, &qword_1014B6708);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        sub_10089D774(v19, v21);
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
}

void sub_100E85FE8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_100E86128()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A21FD0, &unk_1014B6AC0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_10000C83C(*(v6 + 48) + v21, v5, type metadata accessor for CRLSpotlightManager.ChangeType);
        sub_100025668(v5, *(v8 + 48) + v21, type metadata accessor for CRLSpotlightManager.ChangeType);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_100E86334()
{
  v1 = v0;
  sub_1005B981C(&qword_101A21E28, &qword_1014B67D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_100E8649C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - v9;
  sub_1005B981C(a2, a3);
  v11 = *v3;
  v12 = static _SetStorage.copy(original:)();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_100E866E8()
{
  v1 = v0;
  sub_1005B981C(&qword_1019F3610, &qword_101468AD0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 40 * (v14 | (v8 << 6));
        sub_100064110(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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
}

void sub_100E86860(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1005B981C(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_100E869A0(uint64_t a1)
{
  v2 = v1;
  v3 = _s6CellIDVMa(0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_101A21DB0, &qword_1014B6728);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_10000C83C(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, _s6CellIDVMa);
      Hasher.init(_seed:)();
      UUID.hash(into:)();
      UUID.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_100025668(v5, *(v8 + 48) + v15 * v19, _s6CellIDVMa);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }
}

void sub_100E86C90(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for UUID();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_1019F37B8, &unk_101468B20);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_100E86FAC(uint64_t a1)
{
  v2 = v1;
  v39 = type metadata accessor for UUID();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1005B981C(&qword_101A21D90, &qword_1014B6700);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v2;
    v35 = (v3 + 8);
    v14 = v6 + 56;
    v36 = v6;
    v37 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      Hasher.init(_seed:)();
      v20 = *(v19 + 24);
      ObjectType = swift_getObjectType();
      v22 = *(v20 + 32);
      v40 = v19;

      v23 = v38;
      v22(ObjectType, v20);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = v39;
      dispatch thunk of Hashable.hash(into:)();
      (*v35)(v23, v24);
      v25 = Hasher._finalize()();
      v7 = v36;
      v26 = -1 << *(v36 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v5 = v37;
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v5 = v37;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v12 = v41;
      *(*(v7 + 48) + 8 * v15) = v40;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v2 = v34;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
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
    *v2 = v7;
  }
}

void sub_100E8730C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D18, &unk_1014B6638);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      Hasher.init(_seed:)();
      if (v19 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v18);
      }

      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
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
        goto LABEL_29;
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
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_100E87560(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D40, &unk_1014B6670);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v19 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v22 = (*(v3 + 48) + 112 * (v19 | (v6 << 6)));
      v24 = *v22;
      v23 = v22[1];
      v47 = v22[2];
      v25 = v22[3];
      v26 = v22[4];
      v27 = v22[6];
      v50 = v22[5];
      v51 = v27;
      v48 = v25;
      v49 = v26;
      v45 = v24;
      v46 = v23;
      Hasher.init(_seed:)();
      if (v51)
      {
        v40 = v49;
        v41 = v50;
        v42 = v51;
        v36 = v45;
        v37 = v46;
        v38 = v47;
        v39 = v48;
        Hasher._combine(_:)(1u);
        v43[4] = v49;
        v43[5] = v50;
        v43[6] = v51;
        v43[0] = v45;
        v43[1] = v46;
        v43[2] = v47;
        v43[3] = v48;
        sub_10000BE14(&v45, v44, &qword_1019FFF80, &qword_101489000);
        sub_1007A971C(v43, v44);
        sub_1007A9778();
        dispatch thunk of Hashable.hash(into:)();
        v44[4] = v40;
        v44[5] = v41;
        v44[6] = v42;
        v44[0] = v36;
        v44[1] = v37;
        v44[2] = v38;
        v44[3] = v39;
        sub_1007A97CC(v44);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v28 = Hasher._finalize()();
      v29 = -1 << *(v5 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v11 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v11 + 8 * v31);
          if (v35 != -1)
          {
            v12 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v30) & ~*(v11 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 112 * v12);
      v14 = v47;
      v15 = v45;
      v13[1] = v46;
      v13[2] = v14;
      v16 = v48;
      v17 = v49;
      v18 = v51;
      v13[5] = v50;
      v13[6] = v18;
      v13[3] = v16;
      v13[4] = v17;
      *v13 = v15;
      ++*(v5 + 16);
    }

    v20 = v6;
    while (1)
    {
      v6 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v21 = *(v3 + 56 + 8 * v6);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v9 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_100E87888(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1005B981C(a2, a3);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v8 + 56;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = *(v7 + 48) + 16 * (v18 | (v10 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      Hasher.init(_seed:)();
      if (v23 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        sub_1005B981C(a4, a5);
        CRExtensible.hash(into:)();
      }

      v24 = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v9 + 48) + 16 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v5;
        goto LABEL_29;
      }

      v20 = *(v7 + 56 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v6 = v9;
  }
}

void sub_100E87AF0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D68, &unk_1014B66B0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v16 == 2)
      {
        v17 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v17 = v16 & 1;
      }

      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_100E87D2C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D70, &unk_1014B66C0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 8 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 4);
      Hasher.init(_seed:)();
      if (v19 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v18 & 0x7FFFFFFF) != 0)
        {
          v20 = v18;
        }

        else
        {
          v20 = 0;
        }

        Hasher._combine(_:)(v20);
      }

      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_34;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 8 * v12;
      *v13 = v18;
      *(v13 + 4) = v19;
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
        goto LABEL_32;
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
LABEL_34:
    __break(1u);
  }

  else
  {

LABEL_32:
    *v2 = v5;
  }
}

void sub_100E87F84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D78, &qword_1014B66D8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();
      if (v21 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        sub_100962384(v19, v20, v21 & 1);
        sub_1005B981C(&qword_1019FFFC8, &qword_10147C028);
        CRExtensible.hash(into:)();
      }

      v22 = Hasher._finalize()();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
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

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
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

        v2 = v1;
        goto LABEL_29;
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
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }
}

void sub_100E88214(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_1019F3488, &unk_101468AC0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v20 = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_100E8844C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21E68, &unk_1014B6828);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_10063FD8C(*(v3 + 48) + 48 * (v16 | (v6 << 6)), v27);
      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      Hasher._combine(_:)(v28[1]);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
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
      v13 = (*(v5 + 48) + 48 * v12);
      v14 = v27[0];
      v15 = *v28;
      v13[1] = v27[1];
      v13[2] = v15;
      *v13 = v14;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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
}

void sub_100E88694(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v32 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&unk_1019F3350, &qword_1014C5DC0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_10000C83C(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for CRLBoardIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v21, type metadata accessor for CRLBoardIdentifier);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v8;
  }
}

void sub_100E889D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21EA0, &qword_1014B6878);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v20 = *(v3 + 48) + 56 * (v17 | (v6 << 6));
      v21 = *v20;
      v22 = *(v20 + 48);
      v23 = *(v20 + 32);
      v35 = *(v20 + 16);
      v36 = v23;
      v37 = v22;
      v34 = v21;
      Hasher.init(_seed:)();
      sub_1000693DC(&v34, v32);
      sub_100068D24(v33);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v5 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 56 * v12;
      v14 = v34;
      v15 = v35;
      v16 = v36;
      *(v13 + 48) = v37;
      *(v13 + 16) = v15;
      *(v13 + 32) = v16;
      *v13 = v14;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
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
}

void sub_100E88C34(uint64_t a1)
{
  v111 = type metadata accessor for AnyCRValue();
  v2 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A04C30, &qword_1014B6B00);
  __chkstk_darwin(v4 - 8);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v81 - v8);
  v92 = type metadata accessor for URL();
  v10 = *(v92 - 8);
  __chkstk_darwin(v92);
  v84 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v12 - 8);
  v14 = &v81 - v13;
  v15 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v96 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  v100 = *(v18 - 8);
  __chkstk_darwin(v18 - 8);
  v95 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v94 = &v81 - v21;
  v91 = v1;
  v22 = *v1;
  sub_1005B981C(&qword_101A22008, &qword_1014B6B08);
  v23 = static _SetStorage.resize(original:capacity:move:)();
  v24 = v22;
  if (*(v22 + 16))
  {
    v25 = *(v22 + 56);
    v89 = v22 + 56;
    v26 = 1 << *(v22 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & v25;
    v88 = (v26 + 63) >> 6;
    v99 = (v16 + 48);
    v29 = 0;
    v90 = (v10 + 48);
    v83 = (v10 + 32);
    v82 = (v10 + 8);
    v103 = v2 + 16;
    v109 = (v2 + 32);
    v107 = (v2 + 8);
    v98 = v23 + 56;
    v105 = v2;
    v104 = v6;
    v108 = v9;
    v30 = v96;
    v31 = v95;
    v32 = v94;
    v33 = v23;
    v87 = v14;
    v86 = v15;
    v97 = v24;
    v85 = v23;
    while (1)
    {
      if (!v28)
      {
        v36 = v29;
        while (1)
        {
          v29 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_51;
          }

          if (v29 >= v88)
          {

            goto LABEL_49;
          }

          v37 = *(v89 + 8 * v29);
          ++v36;
          if (v37)
          {
            v35 = __clz(__rbit64(v37));
            v102 = (v37 - 1) & v37;
            goto LABEL_15;
          }
        }
      }

      v35 = __clz(__rbit64(v28));
      v102 = (v28 - 1) & v28;
LABEL_15:
      v38 = *(v24 + 48);
      v101 = *(v100 + 72);
      sub_10000BE14(v38 + v101 * (v35 | (v29 << 6)), v32, &unk_101A096C0, &qword_101489120);
      Hasher.init(_seed:)();
      sub_10000BE14(v32, v31, &unk_101A096C0, &qword_101489120);
      if ((*v99)(v31, 1, v15) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        sub_100025668(v31, v30, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        Hasher._combine(_:)(1u);
        v39 = *(v30 + 8);
        *&v113 = *v30;
        BYTE8(v113) = v39;
        sub_1005B981C(&unk_101A0D940, &unk_101490740);
        CRExtensible.hash(into:)();
        sub_10000BE14(v30 + *(v15 + 20), v14, &unk_1019F33C0, &unk_101468A60);
        v40 = v92;
        v41 = (*v90)(v14, 1, v92);
        v93 = v29;
        if (v41 == 1)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          v42 = v84;
          (*v83)(v84, v14, v40);
          Hasher._combine(_:)(1u);
          sub_1000066D0(&qword_101A00578, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          dispatch thunk of Hashable.hash(into:)();
          (*v82)(v42, v40);
        }

        String.hash(into:)();
        v43 = *(v30 + *(v15 + 28));
        v46 = *(v43 + 64);
        v45 = v43 + 64;
        v44 = v46;
        v47 = 1 << *(*(v30 + *(v15 + 28)) + 32);
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        else
        {
          v48 = -1;
        }

        v49 = v48 & v44;
        v50 = (v47 + 63) >> 6;
        v106 = *(v30 + *(v15 + 28));

        v51 = 0;
        v112 = 0;
        if (!v49)
        {
LABEL_25:
          if (v50 <= v51 + 1)
          {
            v53 = v51 + 1;
          }

          else
          {
            v53 = v50;
          }

          v54 = v53 - 1;
          v55 = v108;
          while (1)
          {
            v52 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v52 >= v50)
            {
              v72 = sub_1005B981C(&qword_101A04C38, &qword_1014820D0);
              (*(*(v72 - 8) + 56))(v6, 1, 1, v72);
              v49 = 0;
              goto LABEL_33;
            }

            v49 = *(v45 + 8 * v52);
            ++v51;
            if (v49)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        while (1)
        {
          v52 = v51;
LABEL_32:
          v56 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
          v57 = v56 | (v52 << 6);
          v58 = *(*(v106 + 48) + 8 * v57);
          v59 = v105;
          v60 = v110;
          v61 = v111;
          (*(v105 + 16))(v110, *(v106 + 56) + *(v105 + 72) * v57, v111);
          v62 = sub_1005B981C(&qword_101A04C38, &qword_1014820D0);
          v63 = *(v62 + 48);
          v64 = v104;
          *v104 = v58;
          v65 = v61;
          v6 = v64;
          (*(v59 + 32))(&v64[v63], v60, v65);
          (*(*(v62 - 8) + 56))(v6, 0, 1, v62);
          v54 = v52;
          v55 = v108;
LABEL_33:
          sub_10003DFF8(v6, v55, &qword_101A04C30, &qword_1014B6B00);
          v66 = sub_1005B981C(&qword_101A04C38, &qword_1014820D0);
          if ((*(*(v66 - 8) + 48))(v55, 1, v66) == 1)
          {
            break;
          }

          v67 = *v55;
          v68 = v55 + *(v66 + 48);
          v69 = v110;
          v70 = v111;
          (*v109)(v110, v68, v111);
          v115 = v120;
          v116 = v121;
          v117 = v122;
          v113 = v118;
          v114 = v119;
          Hasher._combine(_:)(v67);
          sub_1000066D0(&qword_101A04C40, &type metadata accessor for AnyCRValue, &protocol conformance descriptor for AnyCRValue);
          dispatch thunk of Hashable.hash(into:)();
          (*v107)(v69, v70);
          v71 = Hasher._finalize()();
          v51 = v54;
          v112 ^= v71;
          if (!v49)
          {
            goto LABEL_25;
          }
        }

        Hasher._combine(_:)(v112);
        v30 = v96;
        sub_100026028(v96, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v14 = v87;
        v15 = v86;
        v31 = v95;
        v32 = v94;
        v33 = v85;
        v29 = v93;
      }

      v73 = Hasher._finalize()();
      v74 = -1 << *(v33 + 32);
      v75 = v73 & ~v74;
      v76 = v75 >> 6;
      if (((-1 << v75) & ~*(v98 + 8 * (v75 >> 6))) == 0)
      {
        break;
      }

      v34 = __clz(__rbit64((-1 << v75) & ~*(v98 + 8 * (v75 >> 6)))) | v75 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v98 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      sub_10003DFF8(v32, *(v33 + 48) + v34 * v101, &unk_101A096C0, &qword_101489120);
      ++*(v33 + 16);
      v24 = v97;
      v28 = v102;
    }

    v77 = 0;
    v78 = (63 - v74) >> 6;
    while (++v76 != v78 || (v77 & 1) == 0)
    {
      v79 = v76 == v78;
      if (v76 == v78)
      {
        v76 = 0;
      }

      v77 |= v79;
      v80 = *(v98 + 8 * v76);
      if (v80 != -1)
      {
        v34 = __clz(__rbit64(~v80)) + (v76 << 6);
        goto LABEL_7;
      }
    }

LABEL_52:
    __break(1u);
  }

  else
  {

    v33 = v23;
LABEL_49:
    *v91 = v33;
  }
}

void sub_100E89804(uint64_t a1)
{
  v2 = v1;
  v3 = _s5BoardVMa(0);
  __chkstk_darwin(v3 - 8);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v8 - 8);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v51 - v11;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v17 = *v1;
  sub_1005B981C(&qword_101A21EA8, &qword_1014B6880);
  v18 = static _SetStorage.resize(original:capacity:move:)();
  v19 = v18;
  if (!*(v17 + 16))
  {

LABEL_42:
    *v2 = v19;
    return;
  }

  v51 = v7;
  v52 = v1;
  v20 = 0;
  v21 = v17 + 56;
  v22 = 1 << *(v17 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v17 + 56);
  v25 = (v22 + 63) >> 6;
  v26 = v18 + 56;
  v56 = v17;
  while (v24)
  {
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
LABEL_15:
    v31 = *(v57 + 72);
    sub_10000C83C(*(v17 + 48) + v31 * (v28 | (v20 << 6)), v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
    Hasher.init(_seed:)();
    sub_10000C83C(v16, v59, type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      Hasher._combine(_:)(*v59);
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v33 = v55;
      sub_100025668(v59, v55, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v34 = v33;
      v35 = v54;
      sub_10000C83C(v34, v54, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v36 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
      v37 = (*(*(v36 - 8) + 48))(v35, 5, v36);
      if (v37 > 2)
      {
        if (v37 == 3)
        {
          v38 = 2;
        }

        else if (v37 == 4)
        {
          v38 = 3;
        }

        else
        {
          v38 = 4;
        }

LABEL_28:
        Hasher._combine(_:)(v38);
      }

      else
      {
        if (v37)
        {
          v38 = v37 != 1;
          goto LABEL_28;
        }

        v42 = v51;
        sub_100025668(v54, v51, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58(v60);
        sub_100026028(v42, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      v40 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v41 = v55;
      goto LABEL_30;
    }

    v39 = v53;
    sub_100025668(v59, v53, _s5BoardVMa);
    type metadata accessor for UUID();
    sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLBoardIdentifierStorage(0);
    String.hash(into:)();
    v40 = _s5BoardVMa;
    v41 = v39;
LABEL_30:
    sub_100026028(v41, v40);
LABEL_31:
    v43 = Hasher._finalize()();
    v44 = -1 << *(v19 + 32);
    v45 = v43 & ~v44;
    v46 = v45 >> 6;
    if (((-1 << v45) & ~*(v26 + 8 * (v45 >> 6))) == 0)
    {
      v47 = 0;
      v48 = (63 - v44) >> 6;
      while (++v46 != v48 || (v47 & 1) == 0)
      {
        v49 = v46 == v48;
        if (v46 == v48)
        {
          v46 = 0;
        }

        v47 |= v49;
        v50 = *(v26 + 8 * v46);
        if (v50 != -1)
        {
          v27 = __clz(__rbit64(~v50)) + (v46 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_44;
    }

    v27 = __clz(__rbit64((-1 << v45) & ~*(v26 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v26 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    sub_100025668(v16, *(v19 + 48) + v27 * v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
    ++*(v19 + 16);
    v17 = v56;
  }

  v29 = v20;
  while (1)
  {
    v20 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v20 >= v25)
    {

      v2 = v52;
      goto LABEL_42;
    }

    v30 = *(v21 + 8 * v20);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v24 = (v30 - 1) & v30;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_100E89E40(uint64_t a1)
{
  v2 = v1;
  v69 = type metadata accessor for UUID();
  v3 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v11 - 8);
  v67 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v60 - v14;
  v16 = type metadata accessor for CRLPreviewImages.Item(0);
  v71 = *(v16 - 8);
  v72 = v16;
  __chkstk_darwin(v16);
  v68 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v75 = &v60 - v19;
  v20 = *v1;
  sub_1005B981C(&unk_1019F3470, &unk_1014B65D0);
  v21 = static _SetStorage.resize(original:capacity:move:)();
  v22 = v20;
  if (!*(v20 + 16))
  {

LABEL_41:
    *v2 = v21;
    return;
  }

  v61 = v10;
  v62 = v1;
  v23 = 0;
  v24 = v20 + 56;
  v25 = 1 << *(v20 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v20 + 56);
  v28 = (v25 + 63) >> 6;
  v64 = (v3 + 32);
  v63 = (v3 + 8);
  v29 = v21 + 56;
  v30 = v68;
  v65 = v15;
  v70 = v22;
  while (v27)
  {
    v32 = __clz(__rbit64(v27));
    v74 = (v27 - 1) & v27;
LABEL_15:
    v35 = *(v22 + 48);
    v73 = *(v71 + 72);
    v36 = v75;
    sub_10000C83C(v35 + v73 * (v32 | (v23 << 6)), v75, type metadata accessor for CRLPreviewImages.Item);
    Hasher.init(_seed:)();
    sub_10000C83C(v36, v30, type metadata accessor for CRLPreviewImages.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_100025668(v30, v15, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v40 = v67;
      sub_10000C83C(v15, v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v41 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
      v42 = (*(*(v41 - 8) + 48))(v40, 5, v41);
      if (v42 > 2)
      {
        if (v42 == 3)
        {
          v43 = 2;
        }

        else if (v42 == 4)
        {
          v43 = 3;
        }

        else
        {
          v43 = 4;
        }

LABEL_28:
        Hasher._combine(_:)(v43);
      }

      else
      {
        if (v42)
        {
          v43 = v42 != 1;
          goto LABEL_28;
        }

        v50 = v61;
        sub_100025668(v67, v61, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58(v76);
        v51 = v50;
        v30 = v68;
        sub_100026028(v51, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      v38 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v39 = v15;
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_100025668(v30, v7, type metadata accessor for CRLBoardIdentifier);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v38 = type metadata accessor for CRLBoardIdentifier;
      v39 = v7;
    }

    else
    {
      v44 = *(sub_1005B981C(&unk_1019FB780, &unk_101468AB0) + 48);
      sub_100025668(v30, v7, type metadata accessor for CRLBoardIdentifier);
      v45 = v7;
      v46 = v66;
      v47 = v69;
      (*v64)(v66, v30 + v44, v69);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v30 = v68;
      dispatch thunk of Hashable.hash(into:)();
      v48 = v46;
      v7 = v45;
      v49 = v47;
      v15 = v65;
      (*v63)(v48, v49);
      v38 = type metadata accessor for CRLBoardIdentifier;
      v39 = v45;
    }

LABEL_30:
    sub_100026028(v39, v38);
    v52 = Hasher._finalize()();
    v53 = -1 << *(v21 + 32);
    v54 = v52 & ~v53;
    v55 = v54 >> 6;
    if (((-1 << v54) & ~*(v29 + 8 * (v54 >> 6))) == 0)
    {
      v56 = 0;
      v57 = (63 - v53) >> 6;
      while (++v55 != v57 || (v56 & 1) == 0)
      {
        v58 = v55 == v57;
        if (v55 == v57)
        {
          v55 = 0;
        }

        v56 |= v58;
        v59 = *(v29 + 8 * v55);
        if (v59 != -1)
        {
          v31 = __clz(__rbit64(~v59)) + (v55 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_43;
    }

    v31 = __clz(__rbit64((-1 << v54) & ~*(v29 + 8 * (v54 >> 6)))) | v54 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    sub_100025668(v75, *(v21 + 48) + v31 * v73, type metadata accessor for CRLPreviewImages.Item);
    ++*(v21 + 16);
    v22 = v70;
    v27 = v74;
  }

  v33 = v23;
  while (1)
  {
    v23 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v23 >= v28)
    {

      v2 = v62;
      goto LABEL_41;
    }

    v34 = *(v24 + 8 * v23);
    ++v33;
    if (v34)
    {
      v32 = __clz(__rbit64(v34));
      v74 = (v34 - 1) & v34;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_100E8A640(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21CE8, &unk_1014B65E0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(v3 + 48) + 32 * (v10 | (v5 << 6));
      sub_100E7AE54(*v13, *(v13 + 8), *(v13 + 16), v4, *(v13 + 24));
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v4;
  }
}

void sub_100E8A77C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_1019F3680, &unk_101468AE0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_10000C83C(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for CRLBoardIdentifierAndValue);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      Hasher._combine(_:)(v5[*(v34 + 20)]);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v21, type metadata accessor for CRLBoardIdentifierAndValue);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v8;
  }
}

void sub_100E8AAD0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v22 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&unk_1019F33F0, &unk_101468A90);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v21 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    for (i = v7 + 56; v12; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v22 + 72);
      sub_10000C83C(*(v6 + 48) + v18 * (v15 | (v9 << 6)), v5, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      Hasher.init(_seed:)();
      sub_100F8ED58(v23);
      Hasher._finalize()();
      v19 = _HashTable.nextHole(atOrAfter:)();
      *(i + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      sub_100025668(v5, *(v8 + 48) + v19 * v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v21;
        goto LABEL_16;
      }

      v17 = *(v6 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_16:
    *v2 = v8;
  }
}

void sub_100E8AD38(uint64_t a1)
{
  v2 = v1;
  v3 = _s4NodeVMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1005B981C(&qword_101A21C90, &qword_1014B6578);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v7 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v7 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v7 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_11:
      sub_10000C83C(*(v7 + 48) + *(v4 + 72) * (v14 | (v9 << 6)), v6, _s4NodeVMa);
      sub_100E7AF84(v6, v8);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_13;
      }

      v16 = *(v7 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v8;
  }
}

void sub_100E8AF04(uint64_t a1)
{
  v2 = v1;
  v3 = _s5BoardVMa(0);
  v32 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_101A21C88, &unk_1014B6568);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_10000C83C(v20 + v21 * (v17 | (v9 << 6)), v5, _s5BoardVMa);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v21, _s5BoardVMa);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v8;
  }
}

void sub_100E8B244(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21C78, &qword_1014B6560);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      v17 = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

void sub_100E8B464(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLFolderIdentifier(0);
  v32 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_1019F3790, &qword_101468B08);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_10000C83C(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for CRLFolderIdentifier);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLFolderIdentifierStorage(0);
      String.hash(into:)();
      v22 = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v21, type metadata accessor for CRLFolderIdentifier);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v8;
  }
}

void sub_100E8B7A4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest(0);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_101A22058, &unk_1014B6B80);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v35 = (v13 - 1) & v13;
LABEL_15:
      v20 = *(v6 + 48);
      v34 = *(v32 + 72);
      sub_10000C83C(v20 + v34 * (v17 | (v9 << 6)), v5, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      dispatch thunk of Hashable.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        v6 = v31;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v6 = v31;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v34, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      ++*(v8 + 16);
      v13 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v35 = (v19 - 1) & v19;
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
    *v2 = v8;
  }
}

void sub_100E8BB38(uint64_t a1)
{
  v2 = v1;
  v3 = _s17CategoryViewModelVMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1005B981C(&qword_101A21FB8, &qword_1014B6AA8);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = *(v7 + 56);
    v31 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & v11;
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 56;
    v32 = v15;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v34 = (v14 - 1) & v14;
LABEL_15:
      v21 = *(v7 + 48);
      v33 = *(v4 + 72);
      sub_10000C83C(v21 + v33 * (v18 | (v10 << 6)), v6, _s17CategoryViewModelVMa);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      if (*&v6[*(v3 + 24) + 8])
      {
        Hasher._combine(_:)(1u);
        v15 = v32;
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      String.hash(into:)();
      Hasher._combine(_:)(*&v6[*(v3 + 32)]);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v9 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      sub_100025668(v6, *(v9 + 48) + v17 * v33, _s17CategoryViewModelVMa);
      ++*(v9 + 16);
      v14 = v34;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_29;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v9;
  }
}

void sub_100E8BF18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_1019F3798, &qword_101468B10);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v27 = (v10 - 1) & v10;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      type metadata accessor for CalculateExpression();
      sub_1000066D0(&qword_1019F37A0, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);

      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v26;
      v10 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v27 = (v16 - 1) & v16;
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
}

void sub_100E8C190(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for UTType();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_101A21FF8, &qword_1014B6AE8);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1000066D0(&unk_101A22910, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_100E8C4AC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v30 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_101A21FE0, &unk_1014B6AD0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_10000C83C(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for CRLSELibraryViewModel.Item);
      Hasher.init(_seed:)();
      sub_1007F0E00(v31);
      v20 = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_100025668(v5, *(v8 + 48) + v15 * v19, type metadata accessor for CRLSELibraryViewModel.Item);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v8;
  }
}

void sub_100E8C784(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D98, &qword_1014B6708);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_37:
    *v2 = v5;
    return;
  }

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
  v11 = v4 + 56;
  while (v9)
  {
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
    v18 = *v17;
    v19 = *(v17 + 8);
    Hasher.init(_seed:)();
    if (v19 <= 1)
    {
      v20 = v19 != 0;
LABEL_19:
      Hasher._combine(_:)(v20);
      v21 = v18;
      NSObject.hash(into:)();
      goto LABEL_26;
    }

    if (v19 == 2)
    {
      v20 = 2;
      goto LABEL_19;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        v22 = 4;
      }

      else
      {
        v22 = 5;
      }
    }

    else
    {
      v22 = 3;
    }

    Hasher._combine(_:)(v22);
LABEL_26:
    v23 = Hasher._finalize()();
    v24 = -1 << *(v5 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v26);
        if (v30 != -1)
        {
          v12 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_39;
    }

    v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = *(v5 + 48) + 16 * v12;
    *v13 = v18;
    *(v13 + 8) = v19;
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
      goto LABEL_37;
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
LABEL_39:
  __break(1u);
}

void sub_100E8CA14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21FC0, &unk_1014B6AB0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    for (i = v4 + 56; v9; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
      Hasher.init(_seed:)();
      v16 = *(v15 + 16);

      sub_100BD3B78(v18, v16);
      sub_100D6FEA0(v18);
      Hasher._finalize()();
      v17 = _HashTable.nextHole(atOrAfter:)();
      *(i + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + 8 * v17) = v15;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_14;
      }

      v14 = *(v3 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v2 = v5;
  }
}

void sub_100E8CBD8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v3 - 8);
  v40 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = *v1;
  sub_1005B981C(&qword_101A21FD0, &unk_1014B6AC0);
  v11 = static _SetStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v37 = v1;
    v38 = v10;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = v11 + 56;
    v39 = v9;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v42 + 72);
      sub_10000C83C(*(v10 + 48) + v24 * (v21 | (v13 << 6)), v9, type metadata accessor for CRLSpotlightManager.ChangeType);
      Hasher.init(_seed:)();
      v25 = v41;
      sub_10000C83C(v9, v41, type metadata accessor for CRLSpotlightManager.ChangeType);
      v26 = swift_getEnumCaseMultiPayload() == 1;
      v27 = v25;
      v28 = v40;
      sub_100025668(v27, v40, type metadata accessor for CRLBoardIdentifier);
      Hasher._combine(_:)(v26);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      sub_100026028(v28, type metadata accessor for CRLBoardIdentifier);
      v29 = Hasher._finalize()();
      v30 = -1 << *(v12 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v9 = v39;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v9 = v39;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_100025668(v9, *(v12 + 48) + v20 * v24, type metadata accessor for CRLSpotlightManager.ChangeType);
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v37;
        goto LABEL_26;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v12;
  }
}

void sub_100E8D00C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21E28, &qword_1014B67D0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = static Hasher._hash(seed:_:)();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_100E8D1FC(uint64_t a1)
{
  v2 = v1;
  v34 = type metadata accessor for IndexPath();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_101A21E98, &qword_1014B6870);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1000066D0(&unk_101A23C60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }
}

void sub_100E8D518(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_1019F3610, &qword_101468AD0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_100064110(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v27);
      v19 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
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
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v27[0];
      v15 = v27[1];
      *(v13 + 32) = v28;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
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
}

void sub_100E8D744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1005B981C(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v7 + 40);
      v19 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(v18);
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v19;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v28;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }
}

Swift::Int sub_100E8D950(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_101A0F2C8, &qword_101492968);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100006370(0, &qword_101A04270, NSValue_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100006370(0, &qword_1019FF3E0, NSNumber_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100A91CB0(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_100E8DB9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_101A0F1D0, &qword_101492860);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for CRLSyncRecordGroup();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100A92794(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_100E8DDD0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_101A0F0A8, &unk_1014926F0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100006370(0, &qword_1019F6E98, CKRecordID_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_100006370(0, &unk_101A22DC0, CKRecord_ptr);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100A93CA4(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

void sub_100E8E01C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UUID();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UUID() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100E8E5D4(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100E8E240(0, v2, 1, a1);
  }
}

Swift::Int sub_100E8E148(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100E8EFFC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100E8E504(0, v2, 1, a1);
  }

  return result;
}

void sub_100E8E240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for UUID();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1000066D0(&unk_101A09E30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100E8E504(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100E8E5D4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_10113DE48(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_100E8F5D8(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10113DE48(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_10113DDBC(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_1000066D0(&unk_101A09E30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100B355CC(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_100B355CC((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_100E8F5D8(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10113DE48(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_10113DDBC(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1000066D0(&unk_101A09E30, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}