uint64_t sub_100E6DE34(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_100E7EC1C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100E6DFC0(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v74 = &v64[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v73 = &v64[-v7];
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = sub_1005B981C(&qword_1019F3460, &unk_10148E220);
  __chkstk_darwin(v72);
  v12 = &v64[-v11];
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v13 - 8);
  v70 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v78 = &v64[-v16];
  __chkstk_darwin(v17);
  v77 = &v64[-v18];
  v19 = sub_1005B981C(&qword_101A000E0, &unk_10146FA20);
  __chkstk_darwin(v19);
  v21 = &v64[-v20];
  v22 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v80 = &v64[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v79 = &v64[-v26];
  __chkstk_darwin(v27);
  v81 = &v64[-v28];
  __chkstk_darwin(v29);
  v31 = &v64[-v30];
  __chkstk_darwin(v32);
  v67 = &v64[-v33];
  v68 = v2;
  v34 = *v2;
  Hasher.init(_seed:)();
  sub_100F8B698(v86);
  v35 = Hasher._finalize()();
  v36 = v34 + 56;
  v84 = v34 + 56;
  v85 = v34;
  v37 = -1 << *(v34 + 32);
  v38 = v35 & ~v37;
  if (((*(v36 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
  {
LABEL_34:
    v60 = v68;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v67;
    sub_10000C83C(a2, v67, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v86[0] = *v60;
    sub_100E7EF20(v62, v38, isUniquelyReferenced_nonNull_native);
    *v60 = v86[0];
    sub_100025668(a2, v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
    return 1;
  }

  v66 = v10;
  v82 = ~v37;
  v83 = *(v23 + 72);
  v75 = v12;
  v76 = v19;
  v71 = a2;
  while (1)
  {
    v40 = v83 * v38;
    sub_10000C83C(*(v85 + 48) + v83 * v38, v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v41 = *(v19 + 48);
    sub_10000C83C(v31, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000C83C(a2, &v21[v41], type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000C83C(v21, v81, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_5;
      }

      v51 = *v81;
      v52 = v21[v41];
      sub_100026028(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (v51 == v52)
      {
        goto LABEL_37;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v43 = v80;
    sub_10000C83C(v21, v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v39 = _s5BoardVMa;
      goto LABEL_4;
    }

    v53 = v73;
    sub_100025668(v43, v73, _s5BoardVMa);
    v54 = &v21[v41];
    v55 = v74;
    sub_100025668(v54, v74, _s5BoardVMa);
    v56 = sub_1013030EC(v53, v55);
    sub_100026028(v55, _s5BoardVMa);
    v57 = v53;
    v19 = v76;
    sub_100026028(v57, _s5BoardVMa);
    sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v12 = v75;
    sub_100026028(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (v56)
    {
      goto LABEL_37;
    }

LABEL_6:
    v38 = (v38 + 1) & v82;
    if (((*(v84 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  v43 = v79;
  sub_10000C83C(v21, v79, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v39 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_4:
    sub_100026028(v43, v39);
LABEL_5:
    sub_10000CAAC(v21, &qword_101A000E0, &unk_10146FA20);
    goto LABEL_6;
  }

  v44 = v77;
  sub_100025668(v43, v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v45 = v78;
  sub_100025668(&v21[v41], v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v46 = *(v72 + 48);
  sub_10000C83C(v44, v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_10000C83C(v45, &v12[v46], type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v47 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  v48 = *(*(v47 - 8) + 48);
  v49 = v48(v12, 5, v47);
  if (v49 > 2)
  {
    if (v49 == 3)
    {
      sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v12 = v75;
      sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v50 = v48(&v12[v46], 5, v47) == 3;
    }

    else if (v49 == 4)
    {
      sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v12 = v75;
      v50 = v48(&v75[v46], 5, v47) == 4;
    }

    else
    {
      sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v12 = v75;
      v50 = v48(&v75[v46], 5, v47) == 5;
    }

    goto LABEL_29;
  }

  if (v49)
  {
    if (v49 == 1)
    {
      sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v12 = v75;
      v50 = v48(&v75[v46], 5, v47) == 1;
    }

    else
    {
      sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v12 = v75;
      v50 = v48(&v75[v46], 5, v47) == 2;
    }

LABEL_29:
    a2 = v71;
    v19 = v76;
    if (v50)
    {
      goto LABEL_36;
    }

LABEL_30:
    sub_10000CAAC(v12, &qword_1019F3460, &unk_10148E220);
LABEL_31:
    sub_100026028(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    goto LABEL_6;
  }

  sub_10000C83C(v12, v70, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (v48(&v12[v46], 5, v47))
  {
    sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100026028(v70, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    a2 = v71;
    v19 = v76;
    goto LABEL_30;
  }

  v58 = v66;
  sub_100025668(&v12[v46], v66, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v59 = v70;
  v65 = sub_100F92694(v70, v58);
  sub_100026028(v58, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_100026028(v77, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_100026028(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v12 = v75;
  sub_100026028(v59, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  a2 = v71;
  v19 = v76;
  if (!v65)
  {
    sub_100026028(v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    goto LABEL_31;
  }

LABEL_36:
  sub_100026028(v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_100026028(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_37:
  sub_100026028(a2, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10000C83C(*(v85 + 48) + v40, v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return 0;
}

uint64_t sub_100E6EC58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for CRLPreviewImages.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_1006C83D0(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_10000C83C(*(v9 + 48) + v14 * v12, v8, type metadata accessor for CRLPreviewImages.Item);
      v15 = sub_1006CC4F0(v8, a2);
      sub_100026028(v8, type metadata accessor for CRLPreviewImages.Item);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100026028(a2, type metadata accessor for CRLPreviewImages.Item);
    sub_10000C83C(*(v9 + 48) + v14 * v12, v19, type metadata accessor for CRLPreviewImages.Item);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000C83C(a2, v8, type metadata accessor for CRLPreviewImages.Item);
    v20[0] = *v3;
    sub_100E7FB60(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_100025668(a2, v17, type metadata accessor for CRLPreviewImages.Item);
    return 1;
  }
}

uint64_t sub_100E6EE98(uint64_t a1, Swift::Int a2, uint64_t a3, char a4, double a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  if (a4)
  {
    v12 = dbl_1014B71A8[a2];
  }

  else
  {
    v12 = *&a2;
  }

  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  Hasher._combine(_:)(*&v12);
  if (a4)
  {
    v13 = dbl_1014B71A8[a2];
  }

  else
  {
    v13 = *&a3;
  }

  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  Hasher._combine(_:)(*&v13);
  if (a5 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = a5;
  }

  Hasher._combine(_:)(*&v14);
  v15 = Hasher._finalize()();
  v16 = -1 << *(v11 + 32);
  v17 = v15 & ~v16;
  if ((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    while (1)
    {
      v19 = *(v11 + 48) + 32 * v17;
      if (*(v19 + 16) == 1)
      {
        v20 = dbl_1014B71A8[*v19];
        v21 = v20;
      }

      else
      {
        v20 = *v19;
        v21 = *(v19 + 8);
      }

      v22 = *&a2;
      v23 = *&a3;
      if (a4)
      {
        v22 = dbl_1014B71A8[a2];
        v23 = v22;
      }

      v24 = v20 == v22 && v21 == v23;
      if (v24 && *(v19 + 24) == a5)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v11 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    result = 0;
    a2 = *v19;
    a3 = *(v19 + 8);
    a4 = *(v19 + 16);
    a5 = *(v19 + 24);
  }

  else
  {
LABEL_29:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v5;
    sub_100E7FDA4(a2, a3, a4 & 1, v17, isUniquelyReferenced_nonNull_native, a5);
    *v5 = v28;
    result = 1;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4 & 1;
  *(a1 + 24) = a5;
  return result;
}

uint64_t sub_100E6F088(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v26 = &v25 - v9;
  v27 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v31 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v11 = (a2 + *(v31 + 20));
  v13 = *v11;
  v12 = v11[1];
  String.hash(into:)();
  v30 = v4;
  v29 = *(a2 + *(v4 + 20));
  Hasher._combine(_:)(v29);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_10000C83C(*(v10 + 48) + v18 * v16, v7, type metadata accessor for CRLBoardIdentifierAndValue);
      if (static UUID.== infix(_:_:)())
      {
        v19 = &v7[*(v31 + 20)];
        v20 = *v19 == v13 && *(v19 + 1) == v12;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v29 == v7[*(v30 + 20)])
        {
          break;
        }
      }

      sub_100026028(v7, type metadata accessor for CRLBoardIdentifierAndValue);
      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_100026028(v7, type metadata accessor for CRLBoardIdentifierAndValue);
    sub_100026028(a2, type metadata accessor for CRLBoardIdentifierAndValue);
    sub_10000C83C(*(v10 + 48) + v18 * v16, v28, type metadata accessor for CRLBoardIdentifierAndValue);
    return 0;
  }

  else
  {
LABEL_12:
    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v26;
    sub_10000C83C(a2, v26, type metadata accessor for CRLBoardIdentifierAndValue);
    v32 = *v21;
    sub_100E7FFD4(v23, v16, isUniquelyReferenced_nonNull_native);
    *v21 = v32;
    sub_100025668(a2, v28, type metadata accessor for CRLBoardIdentifierAndValue);
    return 1;
  }
}

uint64_t sub_100E6F3DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_100F8ED58(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_10000C83C(*(v9 + 48) + v14 * v12, v8, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v15 = sub_100F92694(v8, a2);
      sub_100026028(v8, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100026028(a2, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_10000C83C(*(v9 + 48) + v14 * v12, v19, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000C83C(a2, v8, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v20[0] = *v3;
    sub_100E802FC(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_100025668(a2, v17, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    return 1;
  }
}

uint64_t sub_100E6F61C(uint64_t a1, uint64_t a2)
{
  v78 = a1;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v4 - 8);
  v75 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = sub_1005B981C(&qword_1019F3460, &unk_10148E220);
  __chkstk_darwin(v82);
  v7 = &v73[-v6];
  v95 = sub_1005B981C(&qword_101A000E0, &unk_10146FA20);
  __chkstk_darwin(v95);
  v9 = &v73[-v8];
  v85 = _s4NodeVMa(0);
  v93 = *(v85 - 8);
  __chkstk_darwin(v85);
  v11 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v76 = &v73[-v13];
  v14 = _s5BoardVMa(0);
  __chkstk_darwin(v14 - 8);
  v81 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v83 = &v73[-v17];
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v18 - 8);
  v79 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v90 = &v73[-v21];
  __chkstk_darwin(v22);
  v89 = &v73[-v23];
  __chkstk_darwin(v24);
  v26 = &v73[-v25];
  v27 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v27);
  v29 = &v73[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v30);
  v88 = &v73[-v31];
  __chkstk_darwin(v32);
  v91 = &v73[-v33];
  __chkstk_darwin(v34);
  v36 = &v73[-v35];
  v77 = v2;
  v96 = *v2;
  Hasher.init(_seed:)();
  v37 = a2;
  sub_10000C83C(a2, v36, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100025668(v36, v26, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100F8D588(v97);
      v39 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v40 = v26;
    }

    else
    {
      v41 = v83;
      sub_100025668(v36, v83, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v39 = _s5BoardVMa;
      v40 = v41;
    }

    sub_100026028(v40, v39);
  }

  else
  {
    Hasher._combine(_:)(*v36);
  }

  v84 = *(a2 + *(v85 + 20));
  sub_100E90344(v97, v84);
  v42 = Hasher._finalize()();
  v43 = -1 << *(v96 + 32);
  v44 = v42 & ~v43;
  v94 = v96 + 56;
  if ((*(v96 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44))
  {
    v92 = ~v43;
    v93 = *(v93 + 72);
    v86 = v7;
    v87 = v29;
    v80 = a2;
    do
    {
      v47 = v93 * v44;
      sub_10000C83C(*(v96 + 48) + v93 * v44, v11, _s4NodeVMa);
      v48 = *(v95 + 48);
      sub_10000C83C(v11, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000C83C(v37, &v9[v48], type metadata accessor for CRLBoardLibraryViewModel.Item);
      v49 = swift_getEnumCaseMultiPayload();
      if (v49)
      {
        if (v49 == 1)
        {
          v50 = v88;
          sub_10000C83C(v9, v88, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v45 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
            v46 = v50;
LABEL_10:
            sub_100026028(v46, v45);
LABEL_11:
            sub_10000CAAC(v9, &qword_101A000E0, &unk_10146FA20);
            goto LABEL_12;
          }

          v51 = v89;
          sub_100025668(v50, v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v52 = &v9[v48];
          v53 = v90;
          sub_100025668(v52, v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v54 = *(v82 + 48);
          sub_10000C83C(v51, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          sub_10000C83C(v53, &v7[v54], type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v55 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
          v56 = *(*(v55 - 8) + 48);
          v57 = v56(v7, 5, v55);
          if (v57 > 2)
          {
            if (v57 == 3)
            {
              sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v7 = v86;
              sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v58 = v56(&v7[v54], 5, v55) == 3;
            }

            else if (v57 == 4)
            {
              sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v7 = v86;
              v58 = v56(&v86[v54], 5, v55) == 4;
            }

            else
            {
              sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v7 = v86;
              v58 = v56(&v86[v54], 5, v55) == 5;
            }

LABEL_35:
            v37 = v80;
            v29 = v87;
            if (!v58)
            {
              goto LABEL_41;
            }

            sub_100026028(v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          }

          else
          {
            if (v57)
            {
              if (v57 == 1)
              {
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v7 = v86;
                v58 = v56(&v86[v54], 5, v55) == 1;
              }

              else
              {
                sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                v7 = v86;
                v58 = v56(&v86[v54], 5, v55) == 2;
              }

              goto LABEL_35;
            }

            sub_10000C83C(v7, v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            if (v56(&v7[v54], 5, v55))
            {
              sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              v37 = v80;
              v29 = v87;
LABEL_41:
              sub_10000CAAC(v7, &qword_1019F3460, &unk_10148E220);
LABEL_42:
              sub_100026028(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
              goto LABEL_12;
            }

            v67 = v75;
            sub_100025668(&v7[v54], v75, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v68 = v79;
            v74 = sub_100F92694(v79, v67);
            sub_100026028(v67, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_100026028(v90, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            sub_100026028(v89, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v7 = v86;
            sub_100026028(v68, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_100026028(v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v37 = v80;
            v29 = v87;
            if (!v74)
            {
              goto LABEL_42;
            }
          }

          sub_100026028(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_39;
        }

        sub_10000C83C(v9, v29, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v45 = _s5BoardVMa;
          v46 = v29;
          goto LABEL_10;
        }

        v61 = v29;
        v62 = v83;
        sub_100025668(v61, v83, _s5BoardVMa);
        v63 = &v9[v48];
        v64 = v81;
        sub_100025668(v63, v81, _s5BoardVMa);
        v65 = sub_1013030EC(v62, v64);
        sub_100026028(v64, _s5BoardVMa);
        v66 = v62;
        v7 = v86;
        v29 = v87;
        sub_100026028(v66, _s5BoardVMa);
        sub_100026028(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (!v65)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_10000C83C(v9, v91, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload())
        {
          goto LABEL_11;
        }

        v59 = *v91;
        v60 = v9[v48];
        sub_100026028(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (v59 != v60)
        {
          goto LABEL_12;
        }
      }

LABEL_39:
      if (sub_10066F2C0(*&v11[*(v85 + 20)], v84))
      {
        sub_100026028(v11, _s4NodeVMa);
        sub_100026028(v37, _s4NodeVMa);
        sub_10000C83C(*(v96 + 48) + v47, v78, _s4NodeVMa);
        return 0;
      }

LABEL_12:
      sub_100026028(v11, _s4NodeVMa);
      v44 = (v44 + 1) & v92;
    }

    while (((*(v94 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) != 0);
  }

  v69 = v77;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v71 = v76;
  sub_10000C83C(v37, v76, _s4NodeVMa);
  v97[0] = *v69;
  sub_100E80540(v71, v44, isUniquelyReferenced_nonNull_native);
  *v69 = v97[0];
  sub_100025668(v37, v78, _s4NodeVMa);
  return 1;
}

uint64_t sub_100E703AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = _s5BoardVMa(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_10000C83C(*(v9 + 48) + v14 * v12, v8, _s5BoardVMa);
      v15 = sub_1013030EC(v8, a2);
      sub_100026028(v8, _s5BoardVMa);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100026028(a2, _s5BoardVMa);
    sub_10000C83C(*(v9 + 48) + v14 * v12, v19, _s5BoardVMa);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000C83C(a2, v8, _s5BoardVMa);
    v20 = *v3;
    sub_100E81298(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20;
    sub_100025668(a2, v17, _s5BoardVMa);
    return 1;
  }
}

uint64_t sub_100E70650(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  Hasher._combine(_:)(v7);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_100E81578(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_100E70750(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v26 = &v25 - v9;
  v27 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v29 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v11 = (a2 + *(v29 + 20));
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_10000C83C(*(v10 + 48) + v18 * v16, v7, type metadata accessor for CRLFolderIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v19 = &v7[*(v29 + 20)];
        v20 = *v19 == v12 && *(v19 + 1) == v13;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      sub_100026028(v7, type metadata accessor for CRLFolderIdentifier);
      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_100026028(v7, type metadata accessor for CRLFolderIdentifier);
    sub_100026028(a2, type metadata accessor for CRLFolderIdentifier);
    sub_10000C83C(*(v10 + 48) + v18 * v16, v28, type metadata accessor for CRLFolderIdentifier);
    return 0;
  }

  else
  {
LABEL_11:
    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v26;
    sub_10000C83C(a2, v26, type metadata accessor for CRLFolderIdentifier);
    v30 = *v22;
    sub_100E816CC(v24, v16, isUniquelyReferenced_nonNull_native);
    *v22 = v30;
    sub_100025668(a2, v28, type metadata accessor for CRLFolderIdentifier);
    return 1;
  }
}

uint64_t sub_100E70A6C(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v4 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v25 = &v25 - v9;
  v26 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v30 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v11 = (a2 + *(v30 + 20));
  v12 = *v11;
  v13 = v11[1];
  String.hash(into:)();
  v29 = *(v4 + 20);
  dispatch thunk of Hashable.hash(into:)();
  v31 = v4;
  v28 = *(v4 + 24);
  dispatch thunk of Hashable.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_10000C83C(*(v10 + 48) + v18 * v16, v7, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      if (static UUID.== infix(_:_:)())
      {
        v19 = &v7[*(v30 + 20)];
        v20 = *v19 == v12 && *(v19 + 1) == v13;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (static UUID.== infix(_:_:)() & 1) != 0 && (static UUID.== infix(_:_:)())
        {
          break;
        }
      }

      sub_100026028(v7, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    sub_100026028(v7, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    sub_100026028(a2, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    sub_10000C83C(*(v10 + 48) + v18 * v16, v27, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    return 0;
  }

  else
  {
LABEL_13:
    v22 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v25;
    sub_10000C83C(a2, v25, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    v32 = *v22;
    sub_100E819C8(v24, v16, isUniquelyReferenced_nonNull_native);
    *v22 = v32;
    sub_100025668(a2, v27, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    return 1;
  }
}

uint64_t sub_100E70E80(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v4 = _s17CategoryViewModelVMa(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = &v42 - v9;
  v43 = v2;
  v10 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v11 = (a2 + v4[5]);
  v12 = *v11;
  v46 = v11[1];
  String.hash(into:)();
  v13 = (a2 + v4[6]);
  v14 = *v13;
  v15 = v13[1];
  if (v15)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v16 = (a2 + v4[7]);
  v17 = *v16;
  v48 = v16[1];
  v49 = v17;
  String.hash(into:)();
  v45 = *(a2 + v4[8]);
  Hasher._combine(_:)(v45);
  v18 = Hasher._finalize()();
  v19 = -1 << *(v10 + 32);
  v20 = v18 & ~v19;
  v51 = v10 + 56;
  if ((*(v10 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v50 = v15;
    v47 = v14;
    v21 = v5;
    v22 = ~v19;
    v23 = *(v21 + 72);
    v24 = v46;
    while (1)
    {
      sub_10000C83C(*(v10 + 48) + v23 * v20, v7, _s17CategoryViewModelVMa);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v25 = &v7[v4[5]];
      v26 = *v25 == v12 && *(v25 + 1) == v24;
      if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v27 = &v7[v4[6]];
      v28 = *(v27 + 1);
      if (v28)
      {
        if (!v50)
        {
          break;
        }

        v29 = *v27 == v47 && v28 == v50;
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v50)
      {
        break;
      }

      v30 = &v7[v4[7]];
      v31 = *v30 == v49 && *(v30 + 1) == v48;
      if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v32 = v4[8];
      v33 = v4;
      v34 = v10;
      v35 = a2;
      v36 = v12;
      v37 = *&v7[v32];
      sub_100026028(v7, _s17CategoryViewModelVMa);
      v26 = v37 == v45;
      v12 = v36;
      a2 = v35;
      v10 = v34;
      v4 = v33;
      v24 = v46;
      if (v26)
      {
        sub_100026028(a2, _s17CategoryViewModelVMa);
        sub_10000C83C(*(v10 + 48) + v23 * v20, v44, _s17CategoryViewModelVMa);
        return 0;
      }

LABEL_8:
      v20 = (v20 + 1) & v22;
      if (((*(v51 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_100026028(v7, _s17CategoryViewModelVMa);
    goto LABEL_8;
  }

LABEL_30:
  v39 = v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v42;
  sub_10000C83C(a2, v42, _s17CategoryViewModelVMa);
  v52 = *v39;
  sub_100E81D38(v41, v20, isUniquelyReferenced_nonNull_native);
  *v39 = v52;
  sub_100025668(a2, v44, _s17CategoryViewModelVMa);
  return 1;
}

uint64_t sub_100E712C8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for CalculateExpression();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_100E73348(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_100E7909C(v17 + 1);
    }

    sub_100E7B27C(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for CalculateExpression();
  sub_1000066D0(&qword_1019F37A0, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_100E82154(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_1000066D0(&qword_1019F37A8, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_100E715B0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000066D0(&unk_101A22910, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000066D0(&qword_101A07820, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100E8234C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100E71890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  Hasher.init(_seed:)();
  sub_1007F0E00(v20);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_10000C83C(*(v9 + 48) + v14 * v12, v8, type metadata accessor for CRLSELibraryViewModel.Item);
      v15 = sub_1007F5338(v8, a2);
      sub_100026028(v8, type metadata accessor for CRLSELibraryViewModel.Item);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100026028(a2, type metadata accessor for CRLSELibraryViewModel.Item);
    sub_10000C83C(*(v9 + 48) + v14 * v12, v19, type metadata accessor for CRLSELibraryViewModel.Item);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_10000C83C(a2, v8, type metadata accessor for CRLSELibraryViewModel.Item);
    v20[0] = *v3;
    sub_100E82614(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_100025668(a2, v17, type metadata accessor for CRLSELibraryViewModel.Item);
    return 1;
  }
}

uint64_t sub_100E71AD0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v7 = *v3;
  Hasher.init(_seed:)();
  v34 = v3;
  if (v4 > 1u)
  {
    if (v4 != 2)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          v9 = 4;
        }

        else
        {
          v9 = 5;
        }
      }

      else
      {
        v9 = 3;
      }

      Hasher._combine(_:)(v9);
      goto LABEL_12;
    }

    v8 = 2;
  }

  else
  {
    v8 = v4 != 0;
  }

  Hasher._combine(_:)(v8);
  NSObject.hash(into:)();
LABEL_12:
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v34;
    sub_10089D774(a2, v4);
    sub_100E82858(a2, v4, v12, isUniquelyReferenced_nonNull_native);
    *v34 = v35;
    *a1 = a2;
    *(a1 + 8) = v4;
    return 1;
  }

  v13 = ~v11;
  v14 = v4 == 3;
  v15 = a2 == 2 && v4 == 3;
  v16 = a2 == 1 && v4 == 3;
  v32 = v16;
  v33 = v15;
  if (a2)
  {
    v14 = 0;
  }

  v31 = v14;
  while (1)
  {
    v17 = *(v7 + 48) + 16 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
    if (v19 <= 1)
    {
      break;
    }

    if (v19 == 2)
    {
      if (v4 != 2)
      {
        goto LABEL_23;
      }

      sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
      v24 = v18;
      v21 = static NSObject.== infix(_:_:)();
      v22 = v18;
      v23 = 2;
      goto LABEL_22;
    }

    if (v18)
    {
      if (v18 == 1)
      {
        if (v32)
        {
          goto LABEL_43;
        }
      }

      else if (v33)
      {
        goto LABEL_43;
      }
    }

    else if (v31)
    {
      goto LABEL_43;
    }

LABEL_23:
    v12 = (v12 + 1) & v13;
    if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (*(v17 + 8))
  {
    if (v4 != 1)
    {
      goto LABEL_23;
    }

    sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
    v25 = v18;
    v21 = static NSObject.== infix(_:_:)();
    v22 = v18;
    v23 = 1;
  }

  else
  {
    if (v4)
    {
      goto LABEL_23;
    }

    sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
    v20 = v18;
    v21 = static NSObject.== infix(_:_:)();
    v22 = v18;
    v23 = 0;
  }

LABEL_22:
  sub_1007A98C8(v22, v23);
  if ((v21 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1007A98C8(a2, v19);
LABEL_43:
  v28 = *(v7 + 48) + 16 * v12;
  v29 = *v28;
  *a1 = *v28;
  v30 = *(v28 + 8);
  *(a1 + 8) = v30;
  sub_10089D774(v29, v30);
  return 0;
}

uint64_t sub_100E71DC8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v38 = v2;
    Hasher.init(_seed:)();
    sub_100BD3B78(v40, *(a2 + 16));
    v10 = a2 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata;
    sub_100D6FEA0(v40);
    v11 = Hasher._finalize()();
    v12 = -1 << *(v6 + 32);
    v13 = v11 & ~v12;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
LABEL_34:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v40[0] = *v38;

      sub_100E82B5C(v34, v13, isUniquelyReferenced_nonNull_native);
      *v38 = *&v40[0];
      *a1 = a2;
      return 1;
    }

    v14 = ~v12;
    while (1)
    {
      v15 = *(*(v6 + 48) + 8 * v13);
      v16 = *(v15 + 16);
      v17 = *(a2 + 16);

      if ((sub_100BC5454(v16, v17) & 1) == 0)
      {
        break;
      }

      v18 = v15 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata;
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v19 = _s13ItemViewModelVMa(0);
      v20 = v19[8];
      v21 = *(v18 + v20);
      v22 = *(v18 + v20 + 8);
      v23 = (v10 + v20);
      v24 = v21 == *v23 && v22 == v23[1];
      if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v25 = v19[9];
      v26 = (v18 + v25);
      v27 = *(v18 + v25 + 8);
      v28 = (v10 + v25);
      v29 = v28[1];
      if (v27)
      {
        if (!v29)
        {
          break;
        }

        v30 = *v26 == *v28 && v27 == v29;
        if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }
      }

      else if (v29)
      {
        break;
      }

      sub_100BC569C(*(v18 + v19[11]), *(v10 + v19[11]));
      if ((v31 & 1) == 0)
      {
        break;
      }

      type metadata accessor for CGImage(0);
      sub_1000066D0(&unk_101A1F1A0, type metadata accessor for CGImage, a5_1);
      if ((static _CFObject.== infix(_:_:)() & 1) == 0 || *(v18 + v19[12]) != *(v10 + v19[12]) || *(v18 + v19[13]) != *(v10 + v19[13]) || (static Date.== infix(_:_:)() & 1) == 0)
      {
        break;
      }

      v32 = static Date.== infix(_:_:)();

      if (v32)
      {

        *a1 = *(*(v6 + 48) + 8 * v13);

        return 0;
      }

LABEL_33:
      v13 = (v13 + 1) & v14;
      if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_33;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  v8 = __CocoaSet.member(for:)();

  if (v8)
  {

    v41 = v8;
    _s8ItemDataCMa(0);
    swift_dynamicCast();
    result = 0;
    *a1 = *&v40[0];
    return result;
  }

  result = __CocoaSet.count.getter();
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v35 = sub_100E737C4(v7, result + 1);
  *&v40[0] = v35;
  v36 = v35[2];
  if (v35[3] <= v36)
  {
    sub_100E79C50(v36 + 1);
    v35 = *&v40[0];
  }

  sub_100E7B408(v37, v35);

  *v3 = v35;
  *a1 = a2;
  return 1;
}

uint64_t sub_100E7219C(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_100E82E7C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100E7227C(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_100006370(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_100E72F28(v15, result + 1, a5, a6, a3, a4);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_100E7AA8C(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_100E7B4C4(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_100006370(0, a3, a4);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_100E7D960(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_100E724F0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000066D0(&unk_101A23C60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1000066D0(&unk_101A226D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_100E82F9C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_100E7280C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100064110(*(v6 + 48) + 40 * v9, v16);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_100064234(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100064234(a2);
    sub_100064110(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100064110(a2, v16);
    v15 = *v3;
    sub_100E83264(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_100E72958(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_100E73150(v15, result + 1, a4, a5, a6);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          sub_100E7AA8C(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_100E7B4C4(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_100E7ED9C(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_100E72BE0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1005B981C(&qword_101A21D90, &qword_1014B6700);
    v7 = static _SetStorage.convert(_:capacity:)();
    v27 = v7;
    __CocoaSet.makeIterator()();
    v8 = __CocoaSet.Iterator.next()();
    if (v8)
    {
      v9 = v8;
      type metadata accessor for CRLTransactableHashableWrapper();
      v10 = v9;
      v11 = (v4 + 8);
      do
      {
        v26[1] = v10;
        swift_dynamicCast();
        v21 = *(v7 + 16);
        if (*(v7 + 24) <= v21)
        {
          sub_100E7400C(v21 + 1);
        }

        v12 = v26[10];
        v7 = v27;
        Hasher.init(_seed:)();
        v13 = *(v12 + 24);
        ObjectType = swift_getObjectType();
        (*(v13 + 32))(ObjectType, v13);
        sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v11)(v6, v3);
        result = Hasher._finalize()();
        v16 = v7 + 56;
        v17 = -1 << *(v7 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v7 + 56 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v7 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = 0;
          v23 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v23 && (v22 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v24 = v19 == v23;
            if (v19 == v23)
            {
              v19 = 0;
            }

            v22 |= v24;
            v25 = *(v16 + 8 * v19);
          }

          while (v25 == -1);
          v20 = __clz(__rbit64(~v25)) + (v19 << 6);
        }

        *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v7 + 48) + 8 * v20) = v12;
        ++*(v7 + 16);
        v10 = __CocoaSet.Iterator.next()();
      }

      while (v10);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v7;
}

Swift::Int sub_100E72F28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    sub_1005B981C(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100006370(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_100E7AA8C(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v10;
}

Swift::Int sub_100E73150(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    sub_1005B981C(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_100E7AA8C(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v8;
}

uint64_t sub_100E73348(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_1019F3798, &qword_101468B10);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CalculateExpression();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100E7909C(v9 + 1);
        }

        v2 = v15;
        sub_1000066D0(&qword_1019F37A0, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100E7357C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_101A21FA0, &qword_1014B6968);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CRLCloudAccountChangeObserverWrapper();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10002DA5C(v9 + 1);
        }

        v2 = v15;
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v14);
        result = Hasher._finalize()();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v2;
}

void *sub_100E737C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1005B981C(&qword_101A21FC0, &unk_1014B6AB0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v12 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      _s8ItemDataCMa(0);
      v5 = v4;
      do
      {
        *&v10[0] = v5;
        swift_dynamicCast();
        v8 = v2[2];
        if (v2[3] <= v8)
        {
          sub_100E79C50(v8 + 1);
        }

        v6 = v11;
        v2 = v12;
        Hasher.init(_seed:)();
        sub_100BD3B78(v10, *(v6 + 16));
        sub_100D6FEA0(v10);
        Hasher._finalize()();
        v7 = _HashTable.nextHole(atOrAfter:)();
        *(v2 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v7;
        *(v2[6] + 8 * v7) = v6;
        ++v2[2];
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptySetSingleton;
  }

  return v2;
}

void sub_100E73990(uint64_t a1)
{
  v2 = v1;
  v3 = _s6CellIDVMa(0);
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_101A21DB0, &qword_1014B6728);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v30 = v1;
    v9 = 0;
    v10 = (v6 + 56);
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
      v20 = *(v31 + 72);
      sub_100025668(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, _s6CellIDVMa);
      Hasher.init(_seed:)();
      UUID.hash(into:)();
      UUID.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
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

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v20, _s6CellIDVMa);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_100E73CB0(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1005B981C(&qword_1019F37B8, &unk_101468B20);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100E7400C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_101A21D90, &qword_1014B6700);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v34 = v1;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v36 = (v3 + 8);
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v6 + 48) + 8 * (v17 | (v9 << 6)));
      Hasher.init(_seed:)();
      v21 = *(v20 + 24);
      ObjectType = swift_getObjectType();
      (*(v21 + 32))(ObjectType, v21);
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23 = v37;
      dispatch thunk of Hashable.hash(into:)();
      (*v36)(v5, v23);
      v24 = Hasher._finalize()();
      v25 = -1 << *(v8 + 32);
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

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v6 + 32);
    if (v32 >= 64)
    {
      bzero(v10, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    v2 = v34;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_100E7436C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D18, &unk_1014B6638);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      Hasher.init(_seed:)();
      if (v20 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v19);
      }

      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E745F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D40, &unk_1014B6670);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v21 = *(v3 + 48) + 112 * (v18 | (v6 << 6));
      v22 = *(v21 + 48);
      v49 = *(v21 + 32);
      v50 = v22;
      v23 = *(v21 + 80);
      v51 = *(v21 + 64);
      v52 = v23;
      v24 = *(v21 + 16);
      v47 = *v21;
      v48 = v24;
      v25 = *(v21 + 96);
      v26 = *(v21 + 104);
      Hasher.init(_seed:)();
      if (v25)
      {
        v38 = v49;
        v39 = v50;
        v40 = v51;
        v41 = v52;
        v36 = v47;
        v37 = v48;
        *&v42 = v25;
        *(&v42 + 1) = v26;
        Hasher._combine(_:)(1u);
        v43[2] = v49;
        v43[3] = v50;
        v43[4] = v51;
        v43[5] = v52;
        v43[0] = v47;
        v43[1] = v48;
        v44 = v25;
        v45 = v26;
        sub_1007A971C(v43, v46);
        sub_1007A9778();
        dispatch thunk of Hashable.hash(into:)();
        v46[4] = v40;
        v46[5] = v41;
        v46[6] = v42;
        v46[0] = v36;
        v46[1] = v37;
        v46[2] = v38;
        v46[3] = v39;
        sub_1007A97CC(v46);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v27 = Hasher._finalize()();
      v28 = -1 << *(v5 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 112 * v13;
      v15 = v50;
      *(v14 + 32) = v49;
      *(v14 + 48) = v15;
      v16 = v52;
      *(v14 + 64) = v51;
      *(v14 + 80) = v16;
      v17 = v48;
      *v14 = v47;
      *(v14 + 16) = v17;
      *(v14 + 96) = v25;
      *(v14 + 104) = v26;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      bzero((v3 + 56), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v35;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E74920(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1005B981C(a2, a3);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 56;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = *(v7 + 48) + 16 * (v19 | (v10 << 6));
      v23 = *v22;
      v24 = *(v22 + 8);
      Hasher.init(_seed:)();
      if (v24 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        sub_1005B981C(a4, a5);
        CRExtensible.hash(into:)();
      }

      v25 = Hasher._finalize()();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v23;
      *(v18 + 8) = v24;
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero((v7 + 56), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    v6 = v5;
    *(v7 + 16) = 0;
  }

  *v6 = v9;
}

void sub_100E74BB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D68, &unk_1014B66B0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      if (v17 == 2)
      {
        v18 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v18 = v17 & 1;
      }

      Hasher._combine(_:)(v18);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E74E24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D70, &unk_1014B66C0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 8 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 4);
      Hasher.init(_seed:)();
      if (v20 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v19 & 0x7FFFFFFF) != 0)
        {
          v21 = v19;
        }

        else
        {
          v21 = 0;
        }

        Hasher._combine(_:)(v21);
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

LABEL_36:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 8 * v13;
      *v14 = v19;
      *(v14 + 4) = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E750AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D78, &qword_1014B66D8);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      Hasher.init(_seed:)();
      if (v21 == 255)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
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

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v20;
      *(v14 + 8) = v19;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E75388(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_1019F3488, &unk_101468AC0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E755E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21E68, &unk_1014B6828);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v28 = *v18;
      v29 = v18[1];
      *v30 = v18[2];
      Hasher.init(_seed:)();
      AnyHashable.hash(into:)();
      Hasher._combine(_:)(v30[1]);
      v19 = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 48 * v13);
      *v14 = v28;
      v14[1] = v29;
      v14[2] = *v30;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E75868(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21EA0, &qword_1014B6878);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v19 = *(v3 + 48) + 56 * (v16 | (v6 << 6));
      v20 = *(v19 + 16);
      v31 = *v19;
      v32 = v20;
      v33 = *(v19 + 32);
      v34 = *(v19 + 48);
      Hasher.init(_seed:)();
      sub_100068D24(v30);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 56 * v13;
      v15 = v32;
      *v14 = v31;
      *(v14 + 16) = v15;
      *(v14 + 32) = v33;
      *(v14 + 48) = v34;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v18 = v7[v6];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v10 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E75AEC(uint64_t a1)
{
  v112 = type metadata accessor for AnyCRValue();
  v2 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_101A04C30, &qword_1014B6B00);
  __chkstk_darwin(v4 - 8);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v82 - v8);
  v92 = type metadata accessor for URL();
  v10 = *(v92 - 8);
  __chkstk_darwin(v92);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v12 - 8);
  v14 = &v82 - v13;
  v15 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v96 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  v100 = *(v18 - 8);
  __chkstk_darwin(v18 - 8);
  v95 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v94 = &v82 - v21;
  v91 = v1;
  v22 = *v1;
  sub_1005B981C(&qword_101A22008, &qword_1014B6B08);
  v23 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v22 + 16))
  {
    v24 = 0;
    v25 = *(v22 + 56);
    v89 = (v22 + 56);
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
    v29 = (v26 + 63) >> 6;
    v99 = (v16 + 48);
    v90 = (v10 + 48);
    v84 = (v10 + 32);
    v83 = (v10 + 8);
    v104 = v2 + 16;
    v110 = (v2 + 32);
    v108 = (v2 + 8);
    v98 = v23 + 56;
    v106 = v2;
    v105 = v6;
    v109 = v9;
    v30 = v96;
    v93 = v22;
    v31 = v23;
    v32 = v95;
    v33 = v94;
    v97 = v29;
    v88 = v14;
    v87 = v15;
    v86 = v23;
    while (1)
    {
      if (!v28)
      {
        v36 = v24;
        while (1)
        {
          v24 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_54;
          }

          if (v24 >= v29)
          {
            v80 = 1 << *(v22 + 32);
            if (v80 >= 64)
            {
              bzero(v89, ((v80 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
            }

            else
            {
              *v89 = -1 << v80;
            }

            v81 = v91;
            *(v93 + 16) = 0;

            goto LABEL_52;
          }

          v37 = v89[v24];
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
      v103 = v24;
      v38 = *(v22 + 48);
      v101 = *(v100 + 72);
      sub_10003DFF8(v38 + v101 * (v35 | (v24 << 6)), v33, &unk_101A096C0, &qword_101489120);
      Hasher.init(_seed:)();
      sub_10000BE14(v33, v32, &unk_101A096C0, &qword_101489120);
      if ((*v99)(v32, 1, v15) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        sub_100025668(v32, v30, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        Hasher._combine(_:)(1u);
        v39 = *(v30 + 8);
        *&v114 = *v30;
        BYTE8(v114) = v39;
        sub_1005B981C(&unk_101A0D940, &unk_101490740);
        CRExtensible.hash(into:)();
        sub_10000BE14(v30 + *(v15 + 20), v14, &unk_1019F33C0, &unk_101468A60);
        v40 = v92;
        if ((*v90)(v14, 1, v92) == 1)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          v41 = v85;
          (*v84)(v85, v14, v40);
          Hasher._combine(_:)(1u);
          sub_1000066D0(&qword_101A00578, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          dispatch thunk of Hashable.hash(into:)();
          (*v83)(v41, v40);
        }

        String.hash(into:)();
        v42 = *(v30 + *(v15 + 28));
        v45 = *(v42 + 64);
        v44 = v42 + 64;
        v43 = v45;
        v46 = 1 << *(*(v30 + *(v15 + 28)) + 32);
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        else
        {
          v47 = -1;
        }

        v48 = v47 & v43;
        v49 = (v46 + 63) >> 6;
        v107 = *(v30 + *(v15 + 28));

        v50 = 0;
        v113 = 0;
        if (!v48)
        {
LABEL_25:
          if (v49 <= v50 + 1)
          {
            v52 = v50 + 1;
          }

          else
          {
            v52 = v49;
          }

          v53 = v52 - 1;
          v54 = v109;
          while (1)
          {
            v51 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              break;
            }

            if (v51 >= v49)
            {
              v71 = sub_1005B981C(&qword_101A04C38, &qword_1014820D0);
              (*(*(v71 - 8) + 56))(v6, 1, 1, v71);
              v48 = 0;
              goto LABEL_33;
            }

            v48 = *(v44 + 8 * v51);
            ++v50;
            if (v48)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        while (1)
        {
          v51 = v50;
LABEL_32:
          v55 = __clz(__rbit64(v48));
          v48 &= v48 - 1;
          v56 = v55 | (v51 << 6);
          v57 = *(*(v107 + 48) + 8 * v56);
          v58 = v106;
          v59 = v111;
          v60 = v112;
          (*(v106 + 16))(v111, *(v107 + 56) + *(v106 + 72) * v56, v112);
          v61 = sub_1005B981C(&qword_101A04C38, &qword_1014820D0);
          v62 = *(v61 + 48);
          v63 = v105;
          *v105 = v57;
          v64 = v59;
          v6 = v63;
          (*(v58 + 32))(&v63[v62], v64, v60);
          (*(*(v61 - 8) + 56))(v6, 0, 1, v61);
          v53 = v51;
          v54 = v109;
LABEL_33:
          sub_10003DFF8(v6, v54, &qword_101A04C30, &qword_1014B6B00);
          v65 = sub_1005B981C(&qword_101A04C38, &qword_1014820D0);
          if ((*(*(v65 - 8) + 48))(v54, 1, v65) == 1)
          {
            break;
          }

          v66 = *v54;
          v67 = v54 + *(v65 + 48);
          v68 = v111;
          v69 = v112;
          (*v110)(v111, v67, v112);
          v116 = v121;
          v117 = v122;
          v118 = v123;
          v114 = v119;
          v115 = v120;
          Hasher._combine(_:)(v66);
          sub_1000066D0(&qword_101A04C40, &type metadata accessor for AnyCRValue, &protocol conformance descriptor for AnyCRValue);
          dispatch thunk of Hashable.hash(into:)();
          (*v108)(v68, v69);
          v70 = Hasher._finalize()();
          v50 = v53;
          v113 ^= v70;
          if (!v48)
          {
            goto LABEL_25;
          }
        }

        Hasher._combine(_:)(v113);
        v30 = v96;
        sub_100026028(v96, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v14 = v88;
        v15 = v87;
        v22 = v93;
        v31 = v86;
        v32 = v95;
        v33 = v94;
      }

      v72 = Hasher._finalize()();
      v73 = -1 << *(v31 + 32);
      v74 = v72 & ~v73;
      v75 = v74 >> 6;
      if (((-1 << v74) & ~*(v98 + 8 * (v74 >> 6))) == 0)
      {
        break;
      }

      v34 = __clz(__rbit64((-1 << v74) & ~*(v98 + 8 * (v74 >> 6)))) | v74 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v98 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      sub_10003DFF8(v33, *(v31 + 48) + v34 * v101, &unk_101A096C0, &qword_101489120);
      ++*(v31 + 16);
      v24 = v103;
      v29 = v97;
      v28 = v102;
    }

    v76 = 0;
    v77 = (63 - v73) >> 6;
    while (++v75 != v77 || (v76 & 1) == 0)
    {
      v78 = v75 == v77;
      if (v75 == v77)
      {
        v75 = 0;
      }

      v76 |= v78;
      v79 = *(v98 + 8 * v75);
      if (v79 != -1)
      {
        v34 = __clz(__rbit64(~v79)) + (v75 << 6);
        goto LABEL_7;
      }
    }

LABEL_55:
    __break(1u);
  }

  else
  {
    v31 = v23;

    v81 = v91;
LABEL_52:
    *v81 = v31;
  }
}

void sub_100E7671C(uint64_t a1)
{
  v2 = v1;
  v3 = _s5BoardVMa(0);
  __chkstk_darwin(v3 - 8);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v8 - 8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v59 = *(v13 - 8);
  v60 = v13;
  __chkstk_darwin(v13);
  v61 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v53 - v16;
  v18 = *v1;
  sub_1005B981C(&qword_101A21EA8, &qword_1014B6880);
  v19 = static _SetStorage.resize(original:capacity:move:)();
  v20 = v18;
  v21 = v19;
  if (*(v18 + 16))
  {
    v53 = v7;
    v54 = v2;
    v22 = 0;
    v23 = (v20 + 56);
    v24 = 1 << *(v20 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v20 + 56);
    v27 = (v24 + 63) >> 6;
    v28 = v19 + 56;
    v55 = v12;
    v58 = v20;
    while (1)
    {
      if (!v26)
      {
        v31 = v22;
        while (1)
        {
          v22 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v22 >= v27)
          {
            break;
          }

          v32 = v23[v22];
          ++v31;
          if (v32)
          {
            v30 = __clz(__rbit64(v32));
            v26 = (v32 - 1) & v32;
            goto LABEL_15;
          }
        }

        v52 = 1 << *(v20 + 32);
        if (v52 >= 64)
        {
          bzero(v23, ((v52 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v23 = -1 << v52;
        }

        v2 = v54;
        *(v20 + 16) = 0;
        goto LABEL_44;
      }

      v30 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_15:
      v33 = *(v59 + 72);
      sub_100025668(*(v20 + 48) + v33 * (v30 | (v22 << 6)), v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
      Hasher.init(_seed:)();
      sub_10000C83C(v17, v61, type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        Hasher._combine(_:)(*v61);
        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      v39 = v56;
      sub_100025668(v61, v56, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v40 = _s5BoardVMa;
      v41 = v39;
      v12 = v55;
LABEL_30:
      sub_100026028(v41, v40);
LABEL_31:
      v44 = Hasher._finalize()();
      v45 = -1 << *(v21 + 32);
      v46 = v44 & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v28 + 8 * (v46 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v45) >> 6;
        v20 = v58;
        while (++v47 != v49 || (v48 & 1) == 0)
        {
          v50 = v47 == v49;
          if (v47 == v49)
          {
            v47 = 0;
          }

          v48 |= v50;
          v51 = *(v28 + 8 * v47);
          if (v51 != -1)
          {
            v29 = __clz(__rbit64(~v51)) + (v47 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return;
      }

      v29 = __clz(__rbit64((-1 << v46) & ~*(v28 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
      v20 = v58;
LABEL_7:
      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      sub_100025668(v17, *(v21 + 48) + v29 * v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
      ++*(v21 + 16);
    }

    sub_100025668(v61, v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v35 = v57;
    sub_10000C83C(v12, v57, type metadata accessor for CRLBoardLibraryViewModel.Filter);
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
    }

    else
    {
      if (!v37)
      {
        v42 = v53;
        sub_100025668(v57, v53, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58(v62);
        v43 = v42;
        v12 = v55;
        sub_100026028(v43, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_29:
        v40 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v41 = v12;
        goto LABEL_30;
      }

      v38 = v37 != 1;
    }

    Hasher._combine(_:)(v38);
    goto LABEL_29;
  }

LABEL_44:

  *v2 = v21;
}

void sub_100E76DA4(uint64_t a1)
{
  v2 = v1;
  v74 = type metadata accessor for UUID();
  v3 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = &v64 - v15;
  v72 = type metadata accessor for CRLPreviewImages.Item(0);
  v75 = *(v72 - 8);
  __chkstk_darwin(v72);
  v79 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v78 = &v64 - v18;
  v19 = *v1;
  sub_1005B981C(&unk_1019F3470, &unk_1014B65D0);
  v20 = static _SetStorage.resize(original:capacity:move:)();
  v21 = v20;
  if (*(v19 + 16))
  {
    v65 = v10;
    v66 = v2;
    v22 = 0;
    v23 = (v19 + 56);
    v24 = 1 << *(v19 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v19 + 56);
    v27 = (v24 + 63) >> 6;
    v68 = (v3 + 32);
    v67 = (v3 + 8);
    v28 = v20 + 56;
    v29 = v19;
    v30 = v20;
    v69 = v13;
    v70 = v20;
    while (1)
    {
      if (!v26)
      {
        v33 = v22;
        while (1)
        {
          v22 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v22 >= v27)
          {
            break;
          }

          v34 = v23[v22];
          ++v33;
          if (v34)
          {
            v32 = __clz(__rbit64(v34));
            v77 = (v34 - 1) & v34;
            goto LABEL_15;
          }
        }

        v63 = 1 << *(v29 + 32);
        if (v63 >= 64)
        {
          bzero(v23, ((v63 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v23 = -1 << v63;
        }

        v2 = v66;
        *(v29 + 16) = 0;

        goto LABEL_45;
      }

      v32 = __clz(__rbit64(v26));
      v77 = (v26 - 1) & v26;
LABEL_15:
      v35 = *(v29 + 48);
      v76 = *(v75 + 72);
      v36 = v78;
      sub_100025668(v35 + v76 * (v32 | (v22 << 6)), v78, type metadata accessor for CRLPreviewImages.Item);
      Hasher.init(_seed:)();
      sub_10000C83C(v36, v79, type metadata accessor for CRLPreviewImages.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_100025668(v79, v7, type metadata accessor for CRLBoardIdentifier);
        sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
      }

      else
      {
        v42 = *(sub_1005B981C(&unk_1019FB780, &unk_101468AB0) + 48);
        v43 = v79;
        sub_100025668(v79, v7, type metadata accessor for CRLBoardIdentifier);
        v44 = v29;
        v45 = v7;
        v46 = v71;
        v47 = v74;
        (*v68)(v71, v43 + v42, v74);
        sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for CRLBoardIdentifierStorage(0);
        String.hash(into:)();
        v30 = v70;
        dispatch thunk of Hashable.hash(into:)();
        v48 = v46;
        v7 = v45;
        v29 = v44;
        v49 = v47;
        v13 = v69;
        (*v67)(v48, v49);
      }

      v50 = type metadata accessor for CRLBoardIdentifier;
      v51 = v7;
LABEL_31:
      sub_100026028(v51, v50);
      v55 = Hasher._finalize()();
      v56 = -1 << *(v30 + 32);
      v57 = v55 & ~v56;
      v58 = v57 >> 6;
      if (((-1 << v57) & ~*(v28 + 8 * (v57 >> 6))) == 0)
      {
        v59 = 0;
        v60 = (63 - v56) >> 6;
        while (++v58 != v60 || (v59 & 1) == 0)
        {
          v61 = v58 == v60;
          if (v58 == v60)
          {
            v58 = 0;
          }

          v59 |= v61;
          v62 = *(v28 + 8 * v58);
          if (v62 != -1)
          {
            v31 = __clz(__rbit64(~v62)) + (v58 << 6);
            goto LABEL_7;
          }
        }

LABEL_47:
        __break(1u);
        return;
      }

      v31 = __clz(__rbit64((-1 << v57) & ~*(v28 + 8 * (v57 >> 6)))) | v57 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v28 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      sub_100025668(v78, *(v30 + 48) + v31 * v76, type metadata accessor for CRLPreviewImages.Item);
      ++*(v30 + 16);
      v26 = v77;
    }

    v38 = v73;
    sub_100025668(v79, v73, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10000C83C(v38, v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v39 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    v40 = (*(*(v39 - 8) + 48))(v13, 5, v39);
    if (v40 > 2)
    {
      if (v40 == 3)
      {
        v41 = 2;
      }

      else if (v40 == 4)
      {
        v41 = 3;
      }

      else
      {
        v41 = 4;
      }
    }

    else
    {
      if (!v40)
      {
        v52 = v29;
        v53 = v65;
        sub_100025668(v13, v65, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        Hasher._combine(_:)(5uLL);
        sub_100F8ED58(v80);
        v54 = v53;
        v29 = v52;
        v30 = v70;
        sub_100026028(v54, type metadata accessor for CRLBoardLibraryViewModel.Folder);
LABEL_30:
        v50 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        v51 = v73;
        goto LABEL_31;
      }

      v41 = v40 != 1;
    }

    Hasher._combine(_:)(v41);
    goto LABEL_30;
  }

  v30 = v21;
LABEL_45:
  *v2 = v30;
}

void sub_100E775F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21CE8, &unk_1014B65E0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(v3 + 48) + 32 * (v11 | (v5 << 6));
      sub_100E7AE54(*v14, *(v14 + 8), *(v14 + 16), v4, *(v14 + 24));
    }

    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return;
      }

      if (v5 >= v10)
      {
        break;
      }

      v13 = v6[v5];
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v3 + 32);
    if (v15 >= 64)
    {
      bzero((v3 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v15;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v4;
}

void sub_100E77770(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLBoardIdentifierAndValue(0);
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_1019F3680, &unk_101468AE0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
      v21 = *(v34 + 72);
      sub_100025668(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for CRLBoardIdentifierAndValue);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      Hasher._combine(_:)(v5[*(v35 + 20)]);
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

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v21, type metadata accessor for CRLBoardIdentifierAndValue);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_100E77AF4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v25 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1005B981C(&unk_1019F33F0, &unk_101468A90);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    v8 = 0;
    v9 = (v5 + 56);
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
    v24 = v6 + 56;
    for (i = v25; v12; ++*(v7 + 16))
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v18 = *(v26 + 72);
      sub_100025668(*(v5 + 48) + v18 * (v15 | (v8 << 6)), i, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      Hasher.init(_seed:)();
      sub_100F8ED58(v27);
      Hasher._finalize()();
      v19 = v24;
      v20 = _HashTable.nextHole(atOrAfter:)();
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_100025668(i, *(v7 + 48) + v20 * v18, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v21 = 1 << *(v5 + 32);
    if (v21 >= 64)
    {
      bzero((v5 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v21;
    }

    v2 = v23;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100E77D90(uint64_t a1)
{
  v2 = v1;
  v3 = _s4NodeVMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1005B981C(&qword_101A21C90, &qword_1014B6578);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  if (*(v7 + 16))
  {
    v9 = 0;
    v10 = (v7 + 56);
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_100025668(*(v7 + 48) + *(v4 + 72) * (v15 | (v9 << 6)), v6, _s4NodeVMa);
      sub_100E7AF84(v6, v8);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    v18 = 1 << *(v7 + 32);
    if (v18 >= 64)
    {
      bzero((v7 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v18;
    }

    *(v7 + 16) = 0;
  }

  *v2 = v8;
}

void sub_100E77F98(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = v5;
  v10 = a2(0);
  v40 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v41 = &v37 - v11;
  v12 = *v5;
  sub_1005B981C(a3, a4);
  v13 = static _SetStorage.resize(original:capacity:move:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v38 = v5;
    v39 = v12;
    v15 = 0;
    v16 = (v12 + 56);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v21 = v13 + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v12 + 48);
      v27 = *(v40 + 72);
      sub_100025668(v26 + v27 * (v23 | (v15 << 6)), v41, a5);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v14 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v21 + 8 * v31);
          if (v35 != -1)
          {
            v22 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_100025668(v41, *(v14 + 48) + v22 * v27, a5);
      ++*(v14 + 16);
      v12 = v39;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v36 = 1 << *(v12 + 32);
    if (v36 >= 64)
    {
      bzero(v16, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v36;
    }

    v9 = v38;
    *(v12 + 16) = 0;
  }

  *v9 = v14;
}

void sub_100E782F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21C78, &qword_1014B6560);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      v18 = Hasher._finalize()();
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

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E78548(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLFolderIdentifier(0);
  v33 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_1019F3790, &qword_101468B08);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
      sub_100025668(v20 + v21 * (v17 | (v9 << 6)), v5, type metadata accessor for CRLFolderIdentifier);
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

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v21, type metadata accessor for CRLFolderIdentifier);
      ++*(v8 + 16);
      v6 = v32;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_100E788B8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest(0);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_101A22058, &unk_1014B6B80);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
      v36 = (v13 - 1) & v13;
LABEL_15:
      v20 = *(v6 + 48);
      v35 = *(v33 + 72);
      sub_100025668(v20 + v35 * (v17 | (v9 << 6)), v5, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
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
        v6 = v32;
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

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
      v6 = v32;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v35, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      ++*(v8 + 16);
      v13 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_100E78C90(uint64_t a1)
{
  v2 = v1;
  v3 = _s17CategoryViewModelVMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1005B981C(&qword_101A21FB8, &qword_1014B6AA8);
  v8 = static _SetStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v31 = v1;
    v10 = 0;
    v11 = *(v7 + 56);
    v32 = (v7 + 56);
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
    v33 = v15;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v35 = (v14 - 1) & v14;
LABEL_15:
      v21 = *(v7 + 48);
      v34 = *(v4 + 72);
      sub_100025668(v21 + v34 * (v18 | (v10 << 6)), v6, _s17CategoryViewModelVMa);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      if (*&v6[*(v3 + 24) + 8])
      {
        Hasher._combine(_:)(1u);
        v15 = v33;
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

LABEL_33:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      sub_100025668(v6, *(v9 + 48) + v17 * v34, _s17CategoryViewModelVMa);
      ++*(v9 + 16);
      v14 = v35;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v32[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v35 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      bzero(v32, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v32 = -1 << v30;
    }

    v2 = v31;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
}

void sub_100E7909C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_1019F3798, &qword_101468B10);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v3;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
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

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v27;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E79330(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UTType();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1005B981C(&qword_101A21FF8, &qword_1014B6AE8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1000066D0(&unk_101A22910, &type metadata accessor for UTType, &protocol conformance descriptor for UTType);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100E7968C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v32 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1005B981C(&qword_101A21FE0, &unk_1014B6AD0);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v9 = 0;
    v10 = (v6 + 56);
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
      v20 = *(v32 + 72);
      sub_100025668(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for CRLSELibraryViewModel.Item);
      Hasher.init(_seed:)();
      sub_1007F0E00(v33);
      v21 = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
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

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_100025668(v5, *(v8 + 48) + v16 * v20, type metadata accessor for CRLSELibraryViewModel.Item);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_100E79994(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21D98, &qword_1014B6708);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_41;
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

        v31 = 1 << *(v3 + 32);
        if (v31 >= 64)
        {
          bzero((v3 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v31;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_39;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      Hasher.init(_seed:)();
      if (v20 <= 1)
      {
        break;
      }

      if (v20 == 2)
      {
        v21 = 2;
        goto LABEL_19;
      }

      if (v19)
      {
        if (v19 == 1)
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
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      ++*(v5 + 16);
    }

    v21 = v20 != 0;
LABEL_19:
    Hasher._combine(_:)(v21);
    NSObject.hash(into:)();
    goto LABEL_26;
  }

LABEL_39:

  *v2 = v5;
}

void sub_100E79C50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21FC0, &unk_1014B6AB0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    for (i = v4 + 56; v10; ++*(v5 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_12:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      sub_100BD3B78(v19, *(v16 + 16));
      sub_100D6FEA0(v19);
      Hasher._finalize()();
      v17 = _HashTable.nextHole(atOrAfter:)();
      *(i + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v5 + 48) + 8 * v17) = v16;
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v18 = 1 << *(v3 + 32);
    if (v18 >= 64)
    {
      bzero((v3 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v18;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E79E48(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v38 - v9;
  v10 = *v1;
  sub_1005B981C(&qword_101A21FD0, &unk_1014B6AC0);
  v11 = static _SetStorage.resize(original:capacity:move:)();
  v12 = v11;
  if (*(v10 + 16))
  {
    v39 = v1;
    v40 = v10;
    v13 = 0;
    v14 = (v10 + 56);
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
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v10 + 48);
      v25 = *(v42 + 72);
      v26 = v44;
      sub_100025668(v24 + v25 * (v21 | (v13 << 6)), v44, type metadata accessor for CRLSpotlightManager.ChangeType);
      Hasher.init(_seed:)();
      v27 = v41;
      sub_10000C83C(v26, v41, type metadata accessor for CRLSpotlightManager.ChangeType);
      v28 = swift_getEnumCaseMultiPayload() == 1;
      sub_100025668(v27, v5, type metadata accessor for CRLBoardIdentifier);
      Hasher._combine(_:)(v28);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      sub_100026028(v5, type metadata accessor for CRLBoardIdentifier);
      v29 = Hasher._finalize()();
      v30 = -1 << *(v12 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
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

LABEL_30:
        __break(1u);
        return;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      sub_100025668(v44, *(v12 + 48) + v20 * v25, type metadata accessor for CRLSpotlightManager.ChangeType);
      ++*(v12 + 16);
      v10 = v40;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v10 + 32);
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    v2 = v39;
    *(v10 + 16) = 0;
  }

  *v2 = v12;
}

void sub_100E7A2AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_101A21E28, &qword_1014B67D0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
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
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = static Hasher._hash(seed:_:)();
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

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E7A4D0(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for IndexPath();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1005B981C(&qword_101A21E98, &qword_1014B6870);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
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
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1000066D0(&unk_101A23C60, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_100E7A82C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1005B981C(&qword_1019F3610, &qword_101468AD0);
  v4 = static _SetStorage.resize(original:capacity:move:)();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v28 = *v18;
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      v19 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v28;
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_100E7AA8C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  sub_1005B981C(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v21 = -1 << *(v7 + 32);
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_100E7ACAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v8 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  (*(v8 + 32))(ObjectType, v8);
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v5 + 8))(v7, v4);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100E7AE54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  Hasher.init(_seed:)();
  if (a3)
  {
    v10 = dbl_1014B71A8[a1];
  }

  else
  {
    v10 = *&a1;
  }

  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  Hasher._combine(_:)(*&v10);
  if (a3)
  {
    v11 = dbl_1014B71A8[a1];
  }

  else
  {
    v11 = *&a2;
  }

  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  Hasher._combine(_:)(*&v11);
  if (a5 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = a5;
  }

  Hasher._combine(_:)(*&v12);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v14 = *(a4 + 48) + 32 * result;
  *v14 = a1;
  *(v14 + 8) = a2;
  *(v14 + 16) = a3 & 1;
  *(v14 + 24) = a5;
  ++*(a4 + 16);
  return result;
}

uint64_t sub_100E7AF84(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v10);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_10000C83C(a1, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100025668(v12, v9, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_100F8D588(v20);
      v14 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v15 = v9;
    }

    else
    {
      sub_100025668(v12, v6, _s5BoardVMa);
      type metadata accessor for UUID();
      sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLBoardIdentifierStorage(0);
      String.hash(into:)();
      v14 = _s5BoardVMa;
      v15 = v6;
    }

    sub_100026028(v15, v14);
  }

  else
  {
    Hasher._combine(_:)(*v12);
  }

  v16 = _s4NodeVMa(0);
  sub_100E90344(v20, *(a1 + *(v16 + 20)));
  Hasher._finalize()();
  v17 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
  result = sub_100025668(a1, *(a2 + 48) + *(*(v16 - 8) + 72) * v17, _s4NodeVMa);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100E7B27C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CalculateExpression();
  sub_1000066D0(&qword_1019F37A0, &type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100E7B364(Swift::UInt a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100E7B408(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_100BD3B78(v5, *(a1 + 16));
  sub_100D6FEA0(v5);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100E7B4C4(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_100E7B548(uint64_t a1, unint64_t a2, char a3)
{
  v37 = a1;
  v6 = type metadata accessor for CRKeyPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = _s6CellIDVMa(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*v3 + 16);
  v18 = *(*v3 + 24);
  v32 = v14;
  v33 = v3;
  if (v18 > v17 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E73990(v17 + 1);
  }

  else
  {
    if (v18 > v17)
    {
      sub_100E833DC();
      goto LABEL_12;
    }

    sub_100E869A0(v17 + 1);
  }

  v19 = *v3;
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  UUID.hash(into:)();
  v20 = Hasher._finalize()();
  v35 = v19 + 56;
  v36 = v19;
  v21 = -1 << *(v19 + 32);
  a2 = v20 & ~v21;
  if ((*(v19 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v21;
    v22 = *(v14 + 72);
    v23 = (v7 + 8);
    do
    {
      sub_10000C83C(*(v36 + 48) + v22 * a2, v16, _s6CellIDVMa);
      sub_1000066D0(&unk_101A0B020, _s6CellIDVMa, byte_1014D2118);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      sub_1000066D0(&unk_101A2C5A0, &type metadata accessor for CRKeyPath, &protocol conformance descriptor for CRKeyPath);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *v23;
      (*v23)(v9, v6);
      v25(v12, v6);
      sub_100026028(v16, _s6CellIDVMa);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v34;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(v37, *(v26 + 48) + *(v32 + 72) * a2, _s6CellIDVMa);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E7B90C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = type metadata accessor for UUID();
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
    sub_100E73CB0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E8649C(&type metadata accessor for UUID, &qword_1019F37B8, &unk_101468B20);
      goto LABEL_12;
    }

    sub_100E86C90(v11 + 1);
  }

  v13 = *v3;
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
      sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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

void sub_100E7BBD4(uint64_t a1, unint64_t a2, char a3)
{
  v39 = a1;
  v38 = type metadata accessor for UUID();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v32 - v10;
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v33 = v3;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100E7400C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_100E85FE8(&qword_101A21D90, &qword_1014B6700);
      goto LABEL_12;
    }

    sub_100E86FAC(v12 + 1);
  }

  v14 = *v3;
  Hasher.init(_seed:)();
  v15 = *(v39 + 24);
  ObjectType = swift_getObjectType();
  (*(v15 + 32))(ObjectType, v15);
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v17 = v38;
  dispatch thunk of Hashable.hash(into:)();
  v18 = *(v6 + 8);
  v37 = v6 + 8;
  v18(v11, v17);
  v19 = Hasher._finalize()();
  v35 = v14 + 56;
  v36 = v14;
  v20 = -1 << *(v14 + 32);
  a2 = v19 & ~v20;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v20;
    v32[1] = type metadata accessor for CRLTransactableHashableWrapper();
    do
    {
      v21 = *(*(*(v36 + 48) + 8 * a2) + 24);
      v22 = swift_getObjectType();
      v23 = *(v21 + 32);

      v23(v22, v21);
      v24 = *(v39 + 24);
      v25 = swift_getObjectType();
      (*(v24 + 32))(v25, v24);
      v26 = static UUID.== infix(_:_:)();

      v27 = v38;
      v18(v8, v38);
      v18(v11, v27);
      if (v26)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v34;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v28 = *v33;
  *(v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + 8 * a2) = v39;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v28 + 16) = v31;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100E7BF20(Swift::UInt result, char a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E7436C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      sub_100E83624();
      a3 = v9;
      goto LABEL_19;
    }

    sub_100E8730C(v7 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(result);
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v10 + 48) + 16 * a3;
      if (*(v14 + 8))
      {
        if (a2)
        {
          goto LABEL_18;
        }
      }

      else if ((a2 & 1) == 0 && *v14 == result)
      {
LABEL_18:
        sub_1005B981C(&qword_101A21D10, &qword_1014B6630);
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = *(v15 + 48) + 16 * a3;
  *v16 = result;
  *(v16 + 8) = a2 & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }
}

void sub_100E7C0C4(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E74920(v8 + 1, &qword_101A21D28, &unk_1014B6650, &qword_1019FFF60, &unk_10148EB20);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100E83928(&qword_101A21D28, &unk_1014B6650);
      goto LABEL_19;
    }

    sub_100E87888(v8 + 1, &qword_101A21D28, &unk_1014B6650, &qword_1019FFF60, &unk_10148EB20);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFF60, &unk_10148EB20);
    CRExtensible.hash(into:)();
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      if (*(*(v10 + 48) + 16 * a3 + 8) == 255)
      {
        if (a2 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 != -1)
      {
        sub_1007A96C8();
        if (static CRExtensible.== infix(_:_:)())
        {
LABEL_18:
          sub_1005B981C(&qword_101A21D20, &qword_1014B6648);
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v14 = *v19;
  *(*v19 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = result;
  *(v15 + 8) = a2;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }
}

void sub_100E7C350(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E74920(v8 + 1, &qword_101A21D88, &unk_1014B66F0, &qword_1019FFFD8, &qword_1014B66E0);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100E83928(&qword_101A21D88, &unk_1014B66F0);
      goto LABEL_19;
    }

    sub_100E87888(v8 + 1, &qword_101A21D88, &unk_1014B66F0, &qword_1019FFFD8, &qword_1014B66E0);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFFD8, &qword_1014B66E0);
    CRExtensible.hash(into:)();
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      if (*(*(v10 + 48) + 16 * a3 + 8) == 255)
      {
        if (a2 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPWritingDirection(0);
        sub_1000066D0(&unk_1019FFFE0, type metadata accessor for CRLWPWritingDirection, aA_25);
        if (static CRExtensible.== infix(_:_:)())
        {
LABEL_18:
          sub_1005B981C(&qword_101A21D80, &qword_1014B66E8);
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v14 = *v19;
  *(*v19 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = result;
  *(v15 + 8) = a2;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }
}

void sub_100E7C610(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E74920(v8 + 1, &qword_101A21D38, &qword_1014B6668, &qword_1019FFF70, &unk_10148EB10);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100E83928(&qword_101A21D38, &qword_1014B6668);
      goto LABEL_19;
    }

    sub_100E87888(v8 + 1, &qword_101A21D38, &qword_1014B6668, &qword_1019FFF70, &unk_10148EB10);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFF70, &unk_10148EB10);
    CRExtensible.hash(into:)();
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      if (*(*(v10 + 48) + 16 * a3 + 8) == 255)
      {
        if (a2 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPParagraphAlignment(0);
        sub_1000066D0(&qword_1019FFF78, type metadata accessor for CRLWPParagraphAlignment, byte_1014675F0);
        if (static CRExtensible.== infix(_:_:)())
        {
LABEL_18:
          sub_1005B981C(&qword_101A21D30, &qword_1014B6660);
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v14 = *v19;
  *(*v19 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = result;
  *(v15 + 8) = a2;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }
}

void sub_100E7C8D0(__int128 *result, unint64_t a2, char a3)
{
  v5 = v3;
  v8 = result[5];
  v101 = result[4];
  v102 = v8;
  v103 = result[6];
  v9 = result[1];
  v97 = *result;
  v98 = v9;
  v10 = result[3];
  v99 = result[2];
  v100 = v10;
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100E745F0(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_100E83778();
        goto LABEL_23;
      }

      sub_100E87560(v11 + 1);
    }

    v46 = *v3;
    Hasher.init(_seed:)();
    v13 = *(result + 12);
    if (v13)
    {
      v87 = v101;
      v88 = v102;
      v89 = v103;
      v83 = v97;
      v84 = v98;
      v85 = v99;
      v86 = v100;
      Hasher._combine(_:)(1u);
      v94 = v101;
      v95 = v102;
      v96 = v103;
      v90 = v97;
      v91 = v98;
      v92 = v99;
      v93 = v100;
      sub_1007A971C(&v90, &v56);
      sub_1007A9778();
      dispatch thunk of Hashable.hash(into:)();
      v60 = v87;
      v61 = v88;
      v62 = v89;
      v56 = v83;
      v57 = v84;
      v58 = v85;
      v59 = v86;
      sub_1007A97CC(&v56);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v14 = Hasher._finalize()();
    v15 = -1 << *(v46 + 32);
    a2 = v14 & ~v15;
    if ((*(v46 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v45 = ~v15;
      while (1)
      {
        v16 = (*(v46 + 48) + 112 * a2);
        v18 = v16[1];
        v17 = v16[2];
        v90 = *v16;
        v91 = v18;
        v92 = v17;
        v19 = v16[3];
        v20 = v16[4];
        v21 = v16[6];
        v95 = v16[5];
        v96 = v21;
        v93 = v19;
        v94 = v20;
        v22 = v16[3];
        v79 = v16[2];
        v80 = v22;
        v23 = v16[5];
        v81 = v16[4];
        v82 = v23;
        v24 = v16[1];
        v77 = *v16;
        v78 = v24;
        v4 = *(&v21 + 1);
        v25 = v21;
        v26 = result[1];
        v71 = *result;
        v72 = v26;
        v27 = result[2];
        v28 = result[3];
        v29 = result[5];
        v75 = result[4];
        v76 = v29;
        v73 = v27;
        v74 = v28;
        v30 = *(result + 13);
        if (!v25)
        {
          break;
        }

        v58 = v79;
        v59 = v80;
        v60 = v81;
        v61 = v82;
        v56 = v77;
        v57 = v78;
        v62 = __PAIR128__(v4, v25);
        v83 = v77;
        v84 = v78;
        v85 = v79;
        v86 = v80;
        v87 = v81;
        v88 = v82;
        v89 = __PAIR128__(v4, v25);
        if (!v13)
        {
          v53 = v60;
          v54 = v61;
          v55 = v62;
          v49 = v56;
          v50 = v57;
          v51 = v58;
          v52 = v59;
          sub_10000BE14(result, v48, &qword_1019FFF80, &qword_101489000);
          sub_10000BE14(&v90, v48, &qword_1019FFF80, &qword_101489000);
          sub_10000BE14(&v56, v48, &qword_1019FFF80, &qword_101489000);
          sub_1007A97CC(&v49);
LABEL_20:
          v58 = v79;
          v59 = v80;
          v60 = v81;
          v61 = v82;
          v56 = v77;
          v57 = v78;
          *&v62 = v25;
          *(&v62 + 1) = v4;
          v63 = v71;
          v64 = v72;
          v67 = v75;
          v68 = v76;
          v65 = v73;
          v66 = v74;
          v69 = v13;
          v70 = v30;
          sub_10000CAAC(&v56, &qword_1019FFF90, &unk_10148E930);
          goto LABEL_21;
        }

        v31 = result[3];
        v51 = result[2];
        v52 = v31;
        v32 = result[5];
        v53 = result[4];
        v54 = v32;
        v33 = result[1];
        v49 = *result;
        v50 = v33;
        *&v55 = v13;
        *(&v55 + 1) = v30;
        sub_10000BE14(result, v48, &qword_1019FFF80, &qword_101489000);
        sub_10000BE14(&v90, v48, &qword_1019FFF80, &qword_101489000);
        sub_10000BE14(&v56, v48, &qword_1019FFF80, &qword_101489000);
        sub_1007A9820();
        v34 = dispatch thunk of static Equatable.== infix(_:_:)();
        v47[4] = v53;
        v47[5] = v54;
        v47[6] = v55;
        v47[0] = v49;
        v47[1] = v50;
        v47[2] = v51;
        v47[3] = v52;
        sub_1007A97CC(v47);
        v48[4] = v87;
        v48[5] = v88;
        v48[6] = v89;
        v48[0] = v83;
        v48[1] = v84;
        v48[2] = v85;
        v48[3] = v86;
        sub_1007A97CC(v48);
        v51 = v79;
        v52 = v80;
        v53 = v81;
        v54 = v82;
        v49 = v77;
        v50 = v78;
        v55 = __PAIR128__(v4, v25);
        sub_10000CAAC(&v49, &qword_1019FFF80, &qword_101489000);
        if (v34)
        {
          goto LABEL_27;
        }

LABEL_21:
        a2 = (a2 + 1) & v45;
        if (((*(v46 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_23;
        }

        v13 = *(result + 12);
      }

      if (!v13)
      {
        goto LABEL_26;
      }

      sub_10000BE14(result, &v56, &qword_1019FFF80, &qword_101489000);
      sub_10000BE14(&v90, &v56, &qword_1019FFF80, &qword_101489000);
      goto LABEL_20;
    }
  }

LABEL_23:
  v35 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v36 = (*(v35 + 48) + 112 * a2);
  v38 = result[1];
  v37 = result[2];
  *v36 = *result;
  v36[1] = v38;
  v36[2] = v37;
  v39 = result[3];
  v40 = result[4];
  v41 = result[6];
  v36[5] = result[5];
  v36[6] = v41;
  v36[3] = v39;
  v36[4] = v40;
  v42 = *(v35 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
LABEL_26:
    v58 = v79;
    v59 = v80;
    v60 = v81;
    v61 = v82;
    v56 = v77;
    v57 = v78;
    *&v62 = 0;
    *(&v62 + 1) = v4;
    sub_10000BE14(result, &v83, &qword_1019FFF80, &qword_101489000);
    sub_10000BE14(&v90, &v83, &qword_1019FFF80, &qword_101489000);
    sub_10000CAAC(&v56, &qword_1019FFF80, &qword_101489000);
LABEL_27:
    sub_1005B981C(&qword_1019FFF80, &qword_101489000);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v35 + 16) = v44;
  }
}

void sub_100E7CE38(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E74920(v8 + 1, &qword_101A21D50, &unk_1014B6688, &unk_1019FFFA0, &qword_10148FCA0);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100E83928(&qword_101A21D50, &unk_1014B6688);
      goto LABEL_19;
    }

    sub_100E87888(v8 + 1, &qword_101A21D50, &unk_1014B6688, &unk_1019FFFA0, &qword_10148FCA0);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&unk_1019FFFA0, &qword_10148FCA0);
    CRExtensible.hash(into:)();
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      if (*(*(v10 + 48) + 16 * a3 + 8) == 255)
      {
        if (a2 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPStrikethru(0);
        sub_1000066D0(&unk_101A0DA50, type metadata accessor for CRLWPStrikethru, a9_16);
        if (static CRExtensible.== infix(_:_:)())
        {
LABEL_18:
          sub_1005B981C(&qword_101A21D48, &qword_1014B6680);
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v14 = *v19;
  *(*v19 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = result;
  *(v15 + 8) = a2;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }
}

void sub_100E7D0F8(Swift::Int result, char a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a4)
  {
    sub_100E74920(v8 + 1, &qword_101A21D60, &unk_1014B66A0, &unk_1019FFFB0, &unk_10148EB00);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100E83928(&qword_101A21D60, &unk_1014B66A0);
      goto LABEL_19;
    }

    sub_100E87888(v8 + 1, &qword_101A21D60, &unk_1014B66A0, &unk_1019FFFB0, &unk_10148EB00);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&unk_1019FFFB0, &unk_10148EB00);
    CRExtensible.hash(into:)();
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      if (*(*(v10 + 48) + 16 * a3 + 8) == 255)
      {
        if (a2 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPUnderline(0);
        sub_1000066D0(&unk_101A0DA60, type metadata accessor for CRLWPUnderline, aY_35);
        if (static CRExtensible.== infix(_:_:)())
        {
LABEL_18:
          sub_1005B981C(&qword_101A21D58, &qword_1014B6698);
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_19:
  v14 = *v19;
  *(*v19 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v15 = *(v14 + 48) + 16 * a3;
  *v15 = result;
  *(v15 + 8) = a2;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v18;
  }
}

void sub_100E7D3B8(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_100E74BB8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100E83A6C();
      a2 = v7;
      goto LABEL_19;
    }

    sub_100E87AF0(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  if (v4 == 2)
  {
    v9 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v9 = v4 & 1;
  }

  Hasher._combine(_:)(v9);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v8 + 48) + a2);
      if (v13 == 2)
      {
        if (v4 == 2)
        {
          goto LABEL_18;
        }
      }

      else if (v4 != 2 && ((v13 ^ v4) & 1) == 0)
      {
LABEL_18:
        sub_1005B981C(&unk_101A08E00, &qword_101489090);
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v4;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v17;
  }
}

void sub_100E7D554(Swift::Int result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_100E74E24(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100E83BAC();
      a2 = v7;
      goto LABEL_25;
    }

    sub_100E87D2C(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  if ((result & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((result & 0x7FFFFF) == 0 && (result & 0x7F800000) == 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = result;
    }

    Hasher._combine(_:)(v10);
  }

  v11 = Hasher._finalize()();
  v12 = -1 << *(v8 + 32);
  a2 = v11 & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(v8 + 48) + 8 * a2;
      if (*(v14 + 4))
      {
        if ((result & 0x100000000) != 0)
        {
          goto LABEL_24;
        }
      }

      else if ((result & 0x100000000) == 0 && *v14 == *&result)
      {
LABEL_24:
        sub_1005B981C(&unk_101A095E0, &qword_10146DBA0);
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v16 = *(v15 + 48) + 8 * a2;
  *v16 = result;
  *(v16 + 4) = BYTE4(result) & 1;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v19;
  }
}

void sub_100E7D6FC(Swift::Int result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a5)
  {
    sub_100E750AC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E83D00();
      goto LABEL_19;
    }

    sub_100E87F84(v10 + 1);
  }

  v12 = *v5;
  Hasher.init(_seed:)();
  if (a3 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFFC8, &qword_10147C028);
    CRExtensible.hash(into:)();
  }

  v13 = Hasher._finalize()();
  v14 = -1 << *(v12 + 32);
  a4 = v13 & ~v14;
  if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      if (*(*(v12 + 48) + 24 * a4 + 16) == 255)
      {
        if (a3 == -1)
        {
          goto LABEL_18;
        }
      }

      else if (a3 != -1)
      {
        sub_1007A9874();
        if (static CRExtensible.== infix(_:_:)())
        {
LABEL_18:
          sub_1005B981C(&qword_1019FFFC0, &qword_1014B66D0);
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_19:
  v16 = *v21;
  *(*v21 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v17 = *(v16 + 48) + 24 * a4;
  *v17 = result;
  *(v17 + 8) = a2;
  *(v17 + 16) = a3;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }
}

void sub_100E7D960(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_100E7AA8C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E86860(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_100E8D744(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_100006370(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100E7DAF0(Swift::Int result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_100E755E8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100E83FC4();
      goto LABEL_15;
    }

    sub_100E8844C(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  AnyHashable.hash(into:)();
  v9 = *(result + 40);
  Hasher._combine(_:)(v9);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_10063FD8C(*(v8 + 48) + 48 * a2, v20);
      if (static AnyHashable.== infix(_:_:)())
      {
        v13 = v21;
        sub_10063FDE8(v20);
        if (v13 == v9)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_10063FDE8(v20);
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = (*(v14 + 48) + 48 * a2);
  v16 = *(result + 16);
  *v15 = *result;
  v15[1] = v16;
  v15[2] = *(result + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v14 + 16) = v19;
  }
}

void sub_100E7DCA8(Swift::Int result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100E75868(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_100E84344();
        goto LABEL_74;
      }

      sub_100E889D4(v6 + 1);
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    sub_100068D24(&v57);
    v9 = Hasher._finalize()();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v55 = ~v10;
      do
      {
        v11 = *(v8 + 48) + 56 * a2;
        v12 = *(v11 + 48);
        v13 = *(v11 + 32);
        v14 = *v11;
        v58 = *(v11 + 16);
        v59 = v13;
        v57 = v14;
        v60 = v12;
        sub_1000693DC(&v57, v56);
        v15 = sub_100068F28();
        v17 = v16;
        if (v15 == sub_100068F28() && v17 == v18)
        {
        }

        else
        {
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v19 & 1) == 0)
          {
            goto LABEL_11;
          }
        }

        v20 = v58;
        v21 = BYTE8(v58);
        v22 = v60;
        v23 = v60 >> 6;
        if (v23 > 1)
        {
          v26 = v59;
          v27 = (*(&v58 + 9) << 8) | ((*(&v58 + 13) | (HIBYTE(v58) << 16)) << 40);
          if (v23 == 2)
          {
            v28 = *(result + 48);
            if ((v28 & 0xC0) != 0x80)
            {
              goto LABEL_11;
            }

            v29 = *(result + 8);
            v30 = *(result + 16);
            v32 = *(result + 24);
            v31 = *(result + 32);
            v33 = *(result + 40);
            if (*(&v57 + 1))
            {
              if (!v29)
              {
                goto LABEL_11;
              }

              if (v57 != *result)
              {
                v52 = *(result + 32);
                v53 = *(result + 40);
                v50 = *(result + 16);
                v51 = *(result + 24);
                v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v30 = v50;
                v32 = v51;
                v31 = v52;
                v33 = v53;
                if ((v34 & 1) == 0)
                {
                  goto LABEL_11;
                }
              }
            }

            else if (v29)
            {
              goto LABEL_11;
            }

            if (v27 | v21)
            {
              if (!v32 || (v20 != v30 || (v27 | v21) != v32) && (v35 = v33, v36 = v31, v37 = _stringCompareWithSmolCheck(_:_:expecting:)(), v31 = v36, v33 = v35, (v37 & 1) == 0))
              {
LABEL_11:
                sub_1000698D0(&v57);
                goto LABEL_12;
              }
            }

            else if (v32)
            {
              goto LABEL_11;
            }

            if (!*(&v26 + 1))
            {
              v42 = v33;
              sub_1000698D0(&v57);
              if (v42)
              {
                goto LABEL_12;
              }

              goto LABEL_69;
            }

            if (!v33)
            {
              goto LABEL_11;
            }

            if (v26 == __PAIR128__(v33, v31))
            {
              sub_1000698D0(&v57);
LABEL_69:
              if (((v22 ^ v28) & 1) == 0)
              {
                goto LABEL_78;
              }

              goto LABEL_12;
            }

            v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1000698D0(&v57);
            if ((v22 ^ v28) & 1) == 0 && (v43)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v38 = v27 | BYTE8(v58);
            v39 = v58 | *(&v57 + 1);
            if (v60 != 192 || v39 | v57 | v59 | *(&v59 + 1) | v38)
            {
              if (v60 == 192 && v57 == 1 && !(v39 | v59 | *(&v59 + 1) | v38))
              {
                if (*(result + 48) != 192 || *result != 1)
                {
                  goto LABEL_12;
                }
              }

              else if (*(result + 48) != 192 || *result != 2)
              {
                goto LABEL_12;
              }

              v41 = vorrq_s8(*(result + 16), *(result + 32));
              if (!(*&vorr_s8(*v41.i8, *&vextq_s8(v41, v41, 8uLL)) | *(result + 8)))
              {
                goto LABEL_78;
              }
            }

            else if (*(result + 48) == 192)
            {
              v40 = vorrq_s8(*(result + 16), *(result + 32));
              if (!(*&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | *(result + 8) | *result))
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v23)
        {
          if ((*(result + 48) & 0xC0) == 0x40 && *result == v57 && *(result + 8) == *(&v57 + 1))
          {
            if (BYTE8(v58))
            {
              if (*(result + 24))
              {
                goto LABEL_78;
              }
            }

            else if ((*(result + 24) & 1) == 0 && *(result + 16) == *&v58)
            {
              goto LABEL_78;
            }
          }
        }

        else
        {
          if (*(result + 48) >= 0x40u)
          {
            goto LABEL_11;
          }

          v24 = *(result + 8);
          if (*(&v57 + 1))
          {
            if (!v24)
            {
              goto LABEL_11;
            }

            if (v57 == *result)
            {
              goto LABEL_77;
            }

            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1000698D0(&v57);
            if (v25)
            {
              goto LABEL_78;
            }
          }

          else
          {
            sub_1000698D0(&v57);
            if (!v24)
            {
              goto LABEL_78;
            }
          }
        }

LABEL_12:
        a2 = (a2 + 1) & v55;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_74:
  v44 = *v54;
  *(*v54 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v45 = *(v44 + 48) + 56 * a2;
  v46 = *(result + 16);
  *v45 = *result;
  *(v45 + 16) = v46;
  *(v45 + 32) = *(result + 32);
  *(v45 + 48) = *(result + 48);
  v47 = *(v44 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
LABEL_77:
    sub_1000698D0(&v57);
LABEL_78:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v44 + 16) = v49;
  }
}

uint64_t sub_100E7E1C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v88 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v9 - 8);
  v73 = &v66 - v10;
  v74 = sub_1005B981C(&unk_101A0B780, &unk_101480630);
  __chkstk_darwin(v74);
  v77 = &v66 - v11;
  v12 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v79 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1005B981C(&qword_101A00180, &qword_101490890);
  __chkstk_darwin(v85);
  v16 = &v66 - v15;
  v17 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  v76 = *(v17 - 8);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v22 = &v66 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v75 = v3;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    v80 = v20;
    v87 = v12;
    if (a3)
    {
      v66 = v19;
      sub_100E75AEC(v23 + 1);
    }

    else
    {
      if (v24 > v23)
      {
        sub_100E844BC();
        goto LABEL_33;
      }

      v66 = v19;
      sub_100E88C34(v23 + 1);
    }

    v25 = *v3;
    Hasher.init(_seed:)();
    sub_100E8FF94(&v92);
    v26 = Hasher._finalize()();
    v27 = -1 << *(v25 + 32);
    a2 = v26 & ~v27;
    v84 = v25 + 56;
    if ((*(v25 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v86 = v16;
      v71 = v6;
      v83 = ~v27;
      v81 = (v13 + 48);
      v82 = *(v76 + 72);
      v70 = (v7 + 48);
      v68 = (v7 + 32);
      v69 = (v7 + 8);
      v28 = &unk_101468A60;
      v78 = v25;
      while (1)
      {
        v31 = v28;
        v32 = *(v25 + 48);
        v89 = a2;
        sub_10000BE14(v32 + v82 * a2, v22, &unk_101A096C0, &qword_101489120);
        a3 = v86;
        v33 = *(v85 + 48);
        sub_10000BE14(v22, v86, &unk_101A096C0, &qword_101489120);
        sub_10000BE14(v88, a3 + v33, &unk_101A096C0, &qword_101489120);
        v34 = *v81;
        v35 = v22;
        v36 = v87;
        if ((*v81)(a3, 1, v87) == 1)
        {
          break;
        }

        v37 = v80;
        sub_10000BE14(a3, v80, &unk_101A096C0, &qword_101489120);
        if (v34(a3 + v33, 1, v36) == 1)
        {
          v22 = v35;
          sub_10000CAAC(v35, &unk_101A096C0, &qword_101489120);
          sub_100026028(v37, type metadata accessor for CRLWPHyperlinkSmartFieldData);
          v25 = v78;
LABEL_11:
          sub_10000CAAC(a3, &qword_101A00180, &qword_101490890);
          v28 = v31;
          v30 = v89;
          goto LABEL_12;
        }

        v38 = a3 + v33;
        v39 = v79;
        sub_100025668(v38, v79, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v40 = *(v37 + 8);
        v92 = *v37;
        v93 = v40;
        v41 = *(v39 + 8);
        v90 = *v39;
        v91 = v41;
        sub_1007AB290();
        v22 = v35;
        if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
        {
          sub_10000CAAC(v35, &unk_101A096C0, &qword_101489120);
          v25 = v78;
          v28 = v31;
          v30 = v89;
          goto LABEL_32;
        }

        v42 = *(v87 + 20);
        v43 = *(v74 + 48);
        v44 = v77;
        v28 = v31;
        sub_10000BE14(v37 + v42, v77, &unk_1019F33C0, v31);
        sub_10000BE14(v39 + v42, v44 + v43, &unk_1019F33C0, v31);
        v45 = *v70;
        v46 = v71;
        if ((*v70)(v44, 1, v71) == 1)
        {
          if (v45(v44 + v43, 1, v46) != 1)
          {
            sub_10000CAAC(v22, &unk_101A096C0, &qword_101489120);
LABEL_24:
            v25 = v78;
            a3 = v86;
            v30 = v89;
            sub_10000CAAC(v77, &unk_101A0B780, &unk_101480630);
LABEL_32:
            sub_100026028(v79, type metadata accessor for CRLWPHyperlinkSmartFieldData);
            sub_100026028(v80, type metadata accessor for CRLWPHyperlinkSmartFieldData);
            sub_10000CAAC(a3, &unk_101A096C0, &qword_101489120);
            goto LABEL_12;
          }

          sub_10000CAAC(v44, &unk_1019F33C0, v31);
          a3 = v86;
          v47 = v87;
          v30 = v89;
        }

        else
        {
          v48 = v73;
          sub_10000BE14(v44, v73, &unk_1019F33C0, v28);
          if (v45(v44 + v43, 1, v46) == 1)
          {
            sub_10000CAAC(v22, &unk_101A096C0, &qword_101489120);
            (*v69)(v48, v46);
            goto LABEL_24;
          }

          v49 = v44 + v43;
          v50 = v72;
          (*v68)(v72, v49, v46);
          sub_1000066D0(&qword_101A00190, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v67 = dispatch thunk of static Equatable.== infix(_:_:)();
          v51 = *v69;
          (*v69)(v50, v46);
          v51(v48, v46);
          sub_10000CAAC(v44, &unk_1019F33C0, v28);
          a3 = v86;
          v47 = v87;
          v30 = v89;
          if ((v67 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v52 = *(v47 + 24);
        v53 = v80;
        v54 = *(v80 + v52);
        v55 = *(v80 + v52 + 8);
        v56 = v79;
        v57 = (v79 + v52);
        if (v54 != *v57 || v55 != v57[1])
        {
          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v53 = v80;
          if ((v58 & 1) == 0)
          {
LABEL_31:
            sub_10000CAAC(v22, &unk_101A096C0, &qword_101489120);
            v25 = v78;
            goto LABEL_32;
          }
        }

        sub_100B3216C(*(v53 + *(v87 + 28)), *(v56 + *(v87 + 28)));
        v60 = v59;
        sub_10000CAAC(v22, &unk_101A096C0, &qword_101489120);
        sub_100026028(v56, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        sub_100026028(v53, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        sub_10000CAAC(a3, &unk_101A096C0, &qword_101489120);
        v25 = v78;
        if (v60)
        {
          goto LABEL_37;
        }

LABEL_12:
        a2 = (v30 + 1) & v83;
        if (((*(v84 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      sub_10000CAAC(v35, &unk_101A096C0, &qword_101489120);
      v29 = v34(a3 + v33, 1, v36);
      v22 = v35;
      if (v29 == 1)
      {
        goto LABEL_36;
      }

      goto LABEL_11;
    }
  }

LABEL_33:
  v61 = *v75;
  *(*v75 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10003DFF8(v88, *(v61 + 48) + *(v76 + 72) * a2, &unk_101A096C0, &qword_101489120);
  v63 = *(v61 + 16);
  v64 = __OFADD__(v63, 1);
  v65 = v63 + 1;
  if (v64)
  {
    __break(1u);
LABEL_36:
    sub_10000CAAC(a3, &unk_101A096C0, &qword_101489120);
LABEL_37:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v61 + 16) = v65;
  }

  return result;
}

void sub_100E7EC1C(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100E75388(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_100E83E68();
      goto LABEL_16;
    }

    sub_100E88214(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100E7ED9C(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_100E7AA8C(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_100E86860(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_100E8D744(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100E7EF20(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s5BoardVMa(0);
  __chkstk_darwin(v7 - 8);
  v74 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v73 = &v65[-v10];
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v65[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = sub_1005B981C(&qword_1019F3460, &unk_10148E220);
  __chkstk_darwin(v72);
  v80 = &v65[-v14];
  v15 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v65[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v79 = &v65[-v19];
  __chkstk_darwin(v20);
  v78 = &v65[-v21];
  v22 = sub_1005B981C(&qword_101A000E0, &unk_10146FA20);
  __chkstk_darwin(v22);
  v24 = &v65[-v23];
  v25 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v71 = *(v25 - 8);
  __chkstk_darwin(v25);
  v77 = &v65[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v76 = &v65[-v28];
  __chkstk_darwin(v29);
  v81 = &v65[-v30];
  __chkstk_darwin(v31);
  v33 = &v65[-v32];
  v34 = *(*v3 + 16);
  v35 = *(*v3 + 24);
  v70 = v3;
  if (v35 <= v34 || (a3 & 1) == 0)
  {
    v68 = v17;
    if (a3)
    {
      v67 = v13;
      sub_100E7671C(v34 + 1);
    }

    else
    {
      if (v35 > v34)
      {
        sub_100E846F8();
        goto LABEL_41;
      }

      v67 = v13;
      sub_100E89804(v34 + 1);
    }

    v36 = *v3;
    Hasher.init(_seed:)();
    sub_100F8B698(v85);
    v37 = Hasher._finalize()();
    v38 = -1 << *(v36 + 32);
    a2 = v37 & ~v38;
    v84 = v36 + 56;
    v13 = v80;
    if ((*(v36 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v83 = ~v38;
      v82 = *(v71 + 72);
      v75 = v22;
      v69 = a1;
      do
      {
        sub_10000C83C(*(v36 + 48) + v82 * a2, v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v40 = *(v22 + 48);
        sub_10000C83C(v33, v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000C83C(a1, &v24[v40], type metadata accessor for CRLBoardLibraryViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v42 = v76;
            sub_10000C83C(v24, v76, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v43 = v78;
              sub_100025668(v42, v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v44 = v79;
              sub_100025668(&v24[v40], v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v45 = *(v72 + 48);
              sub_10000C83C(v43, v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              sub_10000C83C(v44, &v13[v45], type metadata accessor for CRLBoardLibraryViewModel.Filter);
              v46 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
              v47 = *(*(v46 - 8) + 48);
              v48 = v47(v13, 5, v46);
              if (v48 > 2)
              {
                if (v48 == 3)
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  v13 = v80;
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  v49 = v47(&v13[v45], 5, v46) == 3;
                }

                else if (v48 == 4)
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  v13 = v80;
                  v49 = v47(&v80[v45], 5, v46) == 4;
                }

                else
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  v13 = v80;
                  v49 = v47(&v80[v45], 5, v46) == 5;
                }

                goto LABEL_36;
              }

              if (v48)
              {
                if (v48 == 1)
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  v13 = v80;
                  v49 = v47(&v80[v45], 5, v46) == 1;
                }

                else
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  v13 = v80;
                  v49 = v47(&v80[v45], 5, v46) == 2;
                }

LABEL_36:
                a1 = v69;
                v22 = v75;
                if (v49)
                {
                  goto LABEL_44;
                }

LABEL_37:
                sub_10000CAAC(v13, &qword_1019F3460, &unk_10148E220);
              }

              else
              {
                sub_10000C83C(v13, v68, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                if (v47(&v13[v45], 5, v46))
                {
                  sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                  sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                  sub_100026028(v68, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                  a1 = v69;
                  v22 = v75;
                  goto LABEL_37;
                }

                v57 = &v13[v45];
                v58 = v67;
                sub_100025668(v57, v67, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                v59 = v68;
                v66 = sub_100F92694(v68, v58);
                sub_100026028(v58, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                sub_100026028(v79, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v78, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
                v13 = v80;
                sub_100026028(v59, type metadata accessor for CRLBoardLibraryViewModel.Folder);
                sub_100026028(v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
                a1 = v69;
                v22 = v75;
                if (v66)
                {
                  goto LABEL_45;
                }
              }

              sub_100026028(v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
              goto LABEL_13;
            }

            sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v39 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
            goto LABEL_11;
          }

          v42 = v77;
          sub_10000C83C(v24, v77, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v39 = _s5BoardVMa;
LABEL_11:
            sub_100026028(v42, v39);
LABEL_12:
            sub_10000CAAC(v24, &qword_101A000E0, &unk_10146FA20);
            goto LABEL_13;
          }

          v52 = v73;
          sub_100025668(v42, v73, _s5BoardVMa);
          v53 = &v24[v40];
          v54 = v74;
          sub_100025668(v53, v74, _s5BoardVMa);
          v55 = sub_1013030EC(v52, v54);
          sub_100026028(v54, _s5BoardVMa);
          v56 = v52;
          v22 = v75;
          sub_100026028(v56, _s5BoardVMa);
          sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v13 = v80;
          sub_100026028(v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v55)
          {
            goto LABEL_46;
          }
        }

        else
        {
          sub_100026028(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10000C83C(v24, v81, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload())
          {
            goto LABEL_12;
          }

          v50 = *v81;
          v51 = v24[v40];
          sub_100026028(v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v50 == v51)
          {
            goto LABEL_46;
          }
        }

LABEL_13:
        a2 = (a2 + 1) & v83;
      }

      while (((*(v84 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_41:
  v60 = *v70;
  *(*v70 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(a1, *(v60 + 48) + *(v71 + 72) * a2, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v62 = *(v60 + 16);
  v63 = __OFADD__(v62, 1);
  v64 = v62 + 1;
  if (v63)
  {
    __break(1u);
LABEL_44:
    sub_100026028(v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_45:
    sub_100026028(v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_46:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v60 + 16) = v64;
  }

  return result;
}