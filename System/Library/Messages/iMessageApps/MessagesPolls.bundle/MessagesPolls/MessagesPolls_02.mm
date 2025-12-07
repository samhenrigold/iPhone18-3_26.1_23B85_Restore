uint64_t sub_2F04C(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v4 = v7[0];
  v3 = v7[1];

  sub_E8EC(v7);
  if (__PAIR128__(v2, v1) == __PAIR128__(v3, v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_48874();
  }

  return v5 & 1;
}

uint64_t sub_2F120@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v88 = a3;
  v95 = a4;
  v96 = a2;
  v7 = sub_54A4(&qword_638E0, &qword_4C938);
  v92 = *(v7 - 8);
  v93 = v7;
  __chkstk_darwin(v7, v8);
  v82 = &v79 - v9;
  v10 = sub_54A4(&qword_638E8, &qword_4C940);
  v12 = __chkstk_darwin(v10 - 8, v11);
  v81 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v80 = &v79 - v15;
  v16 = sub_54A4(&qword_638F0, &qword_4C948);
  v18 = __chkstk_darwin(v16 - 8, v17);
  v94 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v91 = &v79 - v21;
  v83 = sub_47A04();
  v22 = *(v83 - 8);
  v24 = __chkstk_darwin(v83, v23);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v27);
  v29 = &v79 - v28;
  v30 = _s11RowTextViewVMa(0);
  __chkstk_darwin(v30, v31);
  v33 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_54A4(&qword_638F8, &qword_4C950);
  v35 = __chkstk_darwin(v84, v34);
  v90 = &v79 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v35, v37);
  v85 = &v79 - v39;
  __chkstk_darwin(v38, v40);
  v89 = &v79 - v41;
  v42 = *a1;
  swift_getKeyPath();
  v43 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v107 = v42;
  v86 = sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  v87 = v43;
  sub_475C4();

  swift_beginAccess();
  sub_482D4();
  v44 = sub_482E4();

  v45 = *(a1 + 3);
  v46 = *(a1 + 7);
  v109 = *(a1 + 5);
  v110[0] = v46;
  *(v110 + 10) = *(a1 + 66);
  v107 = *(a1 + 1);
  v108 = v45;

  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48194();
  v47 = v30[6];

  sub_2B054(&v33[v47]);
  v48 = &v33[v30[7]];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  v49 = &v33[v30[8]];
  if (qword_61CB8 != -1)
  {
    swift_once();
  }

  v50 = unk_64180;
  v112[0] = xmmword_64170;
  v112[1] = unk_64180;
  v52 = xmmword_64190;
  v51 = *&qword_641A0;
  v112[2] = xmmword_64190;
  v112[3] = *&qword_641A0;
  *v49 = xmmword_64170;
  *(v49 + 1) = v50;
  *(v49 + 2) = v52;
  *(v49 + 3) = v51;
  v53 = &v33[v30[13]];
  *&v105[0] = 0;
  sub_321CC(v112, &v107);
  sub_48114();
  v54 = *(&v107 + 1);
  *v53 = v107;
  *(v53 + 1) = v54;
  v55 = v110[4];
  *(v33 + 24) = v110[5];
  v56 = v111[0];
  *(v33 + 40) = v110[6];
  *(v33 + 56) = v56;
  *(v33 + 66) = *(v111 + 10);
  *v33 = v42;
  *(v33 + 8) = v55;
  v33[v30[9]] = v88 & 1;
  *&v33[v30[10]] = v96;
  *&v33[v30[11]] = a5;
  v57 = v30[12];
  v96 = v44;
  *&v33[v57] = v44;
  sub_2B054(v29);
  v58 = v83;
  (*(v22 + 104))(v26, enum case for LayoutDirection.leftToRight(_:), v83);
  LOBYTE(v53) = sub_479F4();
  v59 = *(v22 + 8);
  v59(v26, v58);
  v59(v29, v58);
  if (v53)
  {
    sub_482B4();
  }

  else
  {
    sub_482C4();
  }

  v60 = v89;
  sub_47A94();
  v61 = v85;
  sub_32284(v33, v85, _s11RowTextViewVMa);
  v62 = (v61 + *(v84 + 36));
  v63 = v110[2];
  v62[4] = v110[1];
  v62[5] = v63;
  v62[6] = v110[3];
  v64 = v108;
  *v62 = v107;
  v62[1] = v64;
  v65 = v110[0];
  v62[2] = v109;
  v62[3] = v65;
  sub_E940(v61, v60, &qword_638F8, &qword_4C950);
  swift_getKeyPath();
  *&v105[0] = v42;
  sub_475C4();

  if (*(v42 + 98) == 1 && (swift_getKeyPath(), *&v105[0] = v42, sub_475C4(), , *(v42 + 97) != 1))
  {
    v73 = v91;
    (*(v92 + 56))(v91, 1, 1, v93);
  }

  else
  {
    sub_2FAC0(v105);
    _s18PollOptionCellViewVMa(0);
    sub_482A4();
    sub_47904();
    v99 = v105[2];
    v100 = v105[3];
    LOBYTE(v101) = v106;
    v97 = v105[0];
    v98 = v105[1];
    v66 = v80;
    sub_2FD28(v80);
    v67 = v81;
    sub_6128(v66, v81, &qword_638E8, &qword_4C940);
    v68 = v102;
    v69 = v82;
    *(v82 + 4) = v101;
    *(v69 + 80) = v68;
    *(v69 + 96) = v103;
    *(v69 + 112) = v104;
    v70 = v98;
    *v69 = v97;
    *(v69 + 16) = v70;
    v71 = v100;
    *(v69 + 32) = v99;
    *(v69 + 48) = v71;
    v72 = sub_54A4(&qword_63900, &qword_4C988);
    sub_6128(v67, v69 + *(v72 + 48), &qword_638E8, &qword_4C940);
    sub_60C8(v66, &qword_638E8, &qword_4C940);
    sub_60C8(v67, &qword_638E8, &qword_4C940);
    v73 = v91;
    sub_E940(v69, v91, &qword_638E0, &qword_4C938);
    (*(v92 + 56))(v73, 0, 1, v93);
  }

  v74 = v90;
  sub_6128(v60, v90, &qword_638F8, &qword_4C950);
  v75 = v94;
  sub_6128(v73, v94, &qword_638F0, &qword_4C948);
  v76 = v95;
  sub_6128(v74, v95, &qword_638F8, &qword_4C950);
  v77 = sub_54A4(&qword_63908, &qword_4C990);
  sub_6128(v75, v76 + *(v77 + 48), &qword_638F0, &qword_4C948);

  sub_60C8(v73, &qword_638F0, &qword_4C948);
  sub_60C8(v60, &qword_638F8, &qword_4C950);
  sub_60C8(v75, &qword_638F0, &qword_4C948);
  return sub_60C8(v74, &qword_638F8, &qword_4C950);
}

__n128 sub_2FAC0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_47A04();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v15 - v9;
  sub_2B054(&v15 - v9);
  (*(v3 + 104))(v7, enum case for LayoutDirection.leftToRight(_:), v2);
  v11 = sub_479F4();
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v10, v2);
  if (v11)
  {
    LOBYTE(v27) = 1;
    v26 = 0;
    v15 = 0;
    LOBYTE(v16) = 1;
    v22 = 0;
  }

  else
  {
    _s18PollOptionCellViewVMa(0);
    sub_482A4();
    sub_47904();
    v25 = 1;
    v24 = v28;
    v23 = v30;
    v26 = 1;
    v15 = 0;
    LOBYTE(v16) = 1;
    v17 = v27;
    LOBYTE(v18) = v28;
    v19 = v29;
    LOBYTE(v20) = v30;
    v21 = v31;
    v22 = 1;
  }

  sub_54A4(&qword_63928, &qword_4C9B0);
  sub_322EC();
  sub_47CC4();
  v13 = v35;
  *(a1 + 32) = v34;
  *(a1 + 48) = v13;
  *(a1 + 64) = v36;
  result = v33;
  *a1 = v32;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2FD28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = _s15AvatarStackViewVMa(0);
  __chkstk_darwin(v3, v4);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_54A4(&qword_63910, &qword_4C998);
  __chkstk_darwin(v51, v7);
  v52 = &v47[-v8];
  v9 = sub_54A4(&qword_63918, &qword_4C9A0);
  __chkstk_darwin(v9 - 8, v10);
  v53 = &v47[-v11];
  v12 = *(v1 + 3);
  v13 = *(v1 + 7);
  v65 = *(v1 + 5);
  *v66 = v13;
  *&v66[10] = *(v1 + 66);
  v63 = *(v1 + 1);
  v64 = v12;
  v50 = sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v14 = v62[3];
  v49 = v62[2];

  sub_E8EC(v62);
  v15 = *v1;

  v48 = sub_2E4FC();
  v16 = sub_3055C();
  swift_getKeyPath();
  *&v63 = v15;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  v17 = *(v15 + 156);
  KeyPath = swift_getKeyPath();
  v19 = v49;
  *v6 = 0;
  v6[1] = v19;
  v6[2] = v14;
  type metadata accessor for PollViewModel(0);
  sub_48214();
  *(v6 + v3[7]) = v48 & 1;
  *(v6 + v3[8]) = v16;
  *(v6 + v3[9]) = v17;
  v20 = (v6 + v3[10]);
  if (qword_61CC8 != -1)
  {
    swift_once();
  }

  v21 = unk_64200;
  v65 = xmmword_641F0;
  *v66 = unk_64200;
  v22 = unk_64210;
  *&v66[16] = unk_64210;
  v24 = xmmword_641D0;
  v23 = *&qword_641E0;
  v63 = xmmword_641D0;
  v64 = *&qword_641E0;
  v20[2] = xmmword_641F0;
  v20[3] = v21;
  v20[4] = v22;
  *v20 = v24;
  v20[1] = v23;
  v25 = v6 + v3[11];
  *v25 = KeyPath;
  v25[8] = 0;
  sub_54A4(&qword_63920, &qword_4C9A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_4C610;
  sub_32228(&v63, v60);
  v27 = sub_47E64();
  *(inited + 32) = v27;
  v28 = sub_47E74();
  *(inited + 33) = v28;
  v29 = sub_47E94();
  sub_47E94();
  if (sub_47E94() != v27)
  {
    v29 = sub_47E94();
  }

  sub_47E94();
  if (sub_47E94() != v28)
  {
    v29 = sub_47E94();
  }

  _s18PollOptionCellViewVMa(0);
  sub_47834();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = v52;
  sub_32284(v6, v52, _s15AvatarStackViewVMa);
  v39 = &v38[*(v51 + 36)];
  *v39 = v29;
  *(v39 + 1) = v31;
  *(v39 + 2) = v33;
  *(v39 + 3) = v35;
  *(v39 + 4) = v37;
  v39[40] = 0;
  v40 = v38;
  v41 = v53;
  sub_E940(v40, v53, &qword_63910, &qword_4C998);
  v42 = *(v2 + 3);
  v43 = *(v2 + 7);
  v60[2] = *(v2 + 5);
  v61[0] = v43;
  *(v61 + 10) = *(v2 + 66);
  v60[0] = *(v2 + 1);
  v60[1] = v42;
  sub_48164();
  v58[0] = v55;
  v58[1] = v56;
  v59[0] = v57[0];
  *(v59 + 10) = *(v57 + 10);
  sub_E8EC(v58);
  if (BYTE9(v59[1]))
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 1.0;
  }

  v45 = v54;
  sub_E940(v41, v54, &qword_63918, &qword_4C9A0);
  result = sub_54A4(&qword_638E8, &qword_4C940);
  *(v45 + *(result + 36)) = v44;
  return result;
}

void sub_3021C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ViewModelPollVote(0);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v29 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = (v26 - v11);
  sub_30FAC();
  if (v13)
  {
    v26[1] = v13;
    v26[2] = v2;
    v14 = *v2;
    swift_getKeyPath();
    v31 = v14;
    sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
    sub_475C4();

    swift_beginAccess();
    v15 = *(v14 + 72);
    v16 = *(v15 + 16);

    if (v16)
    {
      v17 = 0;
      v18 = _swiftEmptyArrayStorage;
      v27 = a1;
      v28 = a2;
      while (v17 < *(v15 + 16))
      {
        v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v20 = *(v6 + 72);
        sub_31EE4(v15 + v19 + v20 * v17, v12, type metadata accessor for ViewModelPollVote);
        v21 = v12[1];
        if (v21 && (*v12 == a1 ? (v22 = v21 == a2) : (v22 = 0), v22 || (sub_48874() & 1) != 0))
        {
          sub_32284(v12, v29, type metadata accessor for ViewModelPollVote);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21FD8(0, v18[2] + 1, 1);
            v18 = v30;
          }

          v25 = v18[2];
          v24 = v18[3];
          if (v25 >= v24 >> 1)
          {
            sub_21FD8((v24 > 1), v25 + 1, 1);
            v18 = v30;
          }

          v18[2] = v25 + 1;
          sub_32284(v29, v18 + v19 + v25 * v20, type metadata accessor for ViewModelPollVote);
          a1 = v27;
          a2 = v28;
        }

        else
        {
          sub_6C50(v12);
        }

        if (v16 == ++v17)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_19:

      _s18PollOptionCellViewVMa(0);
    }
  }
}

uint64_t sub_3055C()
{
  v1 = v0;
  v60 = sub_47884();
  v58 = *(v60 - 8);
  v3 = __chkstk_darwin(v60, v2);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3, v5);
  v54 = &v49 - v6;
  v59 = sub_48304();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59, v7);
  v56 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_48254();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_48294();
  v13 = *(v62 - 8);
  v15 = __chkstk_darwin(v62, v14);
  v61 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15, v17);
  v51 = &v49 - v19;
  __chkstk_darwin(v18, v20);
  v22 = &v49 - v21;
  v53 = sub_54A4(&qword_638D0, &qword_4C8E0);
  __chkstk_darwin(v53, v23);
  v25 = &v49 - v24;
  v63 = sub_2B464();
  v26 = *v0;
  v27 = *(*v0 + 152);
  swift_getKeyPath();
  if (v27 != 1)
  {
    v64 = v26;
    sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
    sub_475C4();

    if (v26[98] == 1)
    {
      _s18PollOptionCellViewVMa(0);
      goto LABEL_33;
    }

    v39 = sub_2E4FC();
    v40 = sub_2B464();
    if (v39)
    {
      if ((v40 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

LABEL_32:
    if (qword_61D28 != -1)
    {
LABEL_43:
      swift_once();
    }

LABEL_33:

    goto LABEL_34;
  }

  v50 = v13;
  v64 = v26;
  sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  if (v26[98] != 1 || (swift_getKeyPath(), v64 = v26, sub_475C4(), , v26[97] != 1))
  {
    swift_getKeyPath();
    v64 = v26;
    sub_475C4();

    if (v26[98] == 1)
    {
      v38 = sub_48074();
LABEL_34:
      v64 = v38;
      return sub_47914();
    }

    v41 = sub_2E4FC();
    v42 = v41;
    if (v63)
    {
      if (v41 & 1) == 0 && (sub_2B464())
      {
        swift_getKeyPath();
        v64 = v26;
        sub_475C4();

        sub_48274();
        return sub_47914();
      }

      v45 = sub_2E4FC();
      v46 = v26[152];
      v47 = sub_2B464();
      if (v45)
      {
        if (v47)
        {
          if (qword_61D60 == -1)
          {
            goto LABEL_42;
          }
        }

        else if (qword_61D48 == -1)
        {
          goto LABEL_42;
        }
      }

      else if (v46)
      {
        if (qword_61D30 == -1)
        {
          goto LABEL_42;
        }
      }

      else if (qword_61D28 == -1)
      {
LABEL_42:

        swift_getKeyPath();
        v64 = v26;
        sub_475C4();

        sub_48284();

        return sub_47914();
      }

      swift_once();
      goto LABEL_42;
    }

    v43 = v26[152];
    v44 = sub_2B464();
    if (v42)
    {
      if ((v44 & 1) == 0)
      {
LABEL_22:
        if (qword_61D48 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_43;
      }

LABEL_14:
      if (qword_61D60 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    }

    if (v43)
    {
      if (qword_61D30 == -1)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    }

    goto LABEL_32;
  }

  if (v63)
  {
    sub_48244();
    sub_48264();
    (*(v52 + 8))(v12, v9);
    v28 = v54;
    sub_2B25C(v54);
    v29 = v58;
    v30 = v55;
    v31 = v60;
    (*(v58 + 104))(v55, enum case for ColorScheme.dark(_:), v60);
    v32 = sub_47874();
    v33 = *(v29 + 8);
    v33(v30, v31);
    v33(v28, v31);
    v35 = v56;
    v34 = v57;
    v36 = &enum case for BlendMode.plusLighter(_:);
    if ((v32 & 1) == 0)
    {
      v36 = &enum case for BlendMode.plusDarker(_:);
    }

    v37 = v59;
    (*(v57 + 104))(v56, *v36, v59);
    (*(v50 + 32))(v25, v22, v62);
    (*(v34 + 32))(&v25[*(v53 + 36)], v35, v37);
    sub_EAF0(&qword_638D8, &qword_638D0, &qword_4C8E0, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
  }

  else
  {
    v64 = *(v1 + *(_s18PollOptionCellViewVMa(0) + 40) + 104);
  }

  return sub_47914();
}

uint64_t sub_30EA8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 56);
  v13 = *(a1 + 40);
  v14[0] = v3;
  *(v14 + 10) = *(a1 + 66);
  v11 = *(a1 + 8);
  v12 = v2;
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v15[0] = v8;
  v15[1] = v9;
  *v16 = v10[0];
  *&v16[10] = *(v10 + 10);
  result = sub_E8EC(v15);
  if ((v16[25] & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 56);
    v13 = *(a1 + 40);
    v14[0] = v6;
    *(v14 + 10) = *(a1 + 66);
    v11 = *(a1 + 8);
    v12 = v5;
    sub_48164();
    v7 = v9;

    sub_E8EC(&v8);
    sub_1F554(v7, *(&v7 + 1));
  }

  return result;
}

void sub_30FAC()
{
  v1 = type metadata accessor for ViewModelPollVote(0);
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = (&v32 - v8);
  v10 = *v0;
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  v47 = v10;
  v37 = sub_31810(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  v38 = v11;
  sub_475C4();

  v12 = v10[6];
  v36 = *(v12 + 16);
  if (v36)
  {
    v35 = v12 + 32;

    swift_beginAccess();
    v13 = 0;
    v14 = 0;
    v43 = v6;
    v33 = v12;
    v34 = v10;
    while (v14 < *(v12 + 16))
    {
      v41 = v14;
      v42 = v13;
      v17 = (v35 + 48 * v14);
      v18 = v17[1];
      v45 = *v17;
      v19 = v17[3];
      v20 = v17[4];
      swift_getKeyPath();
      v46 = v10;
      v40 = v19;

      v39 = v20;

      sub_475C4();

      v21 = v10[9];
      v22 = *(v21 + 16);

      if (v22)
      {
        v23 = 0;
        v15 = _swiftEmptyArrayStorage;
        v44 = v18;
        while (v23 < *(v21 + 16))
        {
          v24 = (*(v2 + 80) + 32) & ~*(v2 + 80);
          v25 = *(v2 + 72);
          sub_31EE4(v21 + v24 + v25 * v23, v9, type metadata accessor for ViewModelPollVote);
          v26 = v9[1];
          if (v26 && (*v9 == v45 ? (v27 = v26 == v18) : (v27 = 0), v27 || (sub_48874() & 1) != 0))
          {
            sub_32284(v9, v6, type metadata accessor for ViewModelPollVote);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v46 = v15;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21FD8(0, v15[2] + 1, 1);
              v15 = v46;
            }

            v30 = v15[2];
            v29 = v15[3];
            if (v30 >= v29 >> 1)
            {
              sub_21FD8((v29 > 1), v30 + 1, 1);
              v15 = v46;
            }

            v15[2] = v30 + 1;
            v31 = v15 + v24 + v30 * v25;
            v6 = v43;
            sub_32284(v43, v31, type metadata accessor for ViewModelPollVote);
            v18 = v44;
          }

          else
          {
            sub_6C50(v9);
          }

          if (v22 == ++v23)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        break;
      }

      v15 = _swiftEmptyArrayStorage;
LABEL_4:
      v14 = v41 + 1;

      v16 = v15[2];

      v13 = v42;
      if (v42 <= v16)
      {
        v13 = v16;
      }

      v12 = v33;
      v10 = v34;
      if (v14 == v36)
      {

        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_31390()
{
  result = qword_63738;
  if (!qword_63738)
  {
    sub_A36C(&qword_636F0, &qword_4C698);
    sub_31448();
    sub_EAF0(&qword_62488, &qword_62490, &qword_4AF08, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63738);
  }

  return result;
}

unint64_t sub_31448()
{
  result = qword_63740;
  if (!qword_63740)
  {
    sub_A36C(&qword_63730, &unk_4C700);
    sub_31500();
    sub_EAF0(&qword_623D0, &qword_62390, &qword_4AE78, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63740);
  }

  return result;
}

unint64_t sub_31500()
{
  result = qword_63748;
  if (!qword_63748)
  {
    sub_A36C(&qword_63720, &qword_4C6F0);
    sub_EAF0(&qword_63750, &qword_63758, &qword_4C710, &protocol conformance descriptor for HStack<A>);
    sub_EAF0(&qword_63760, &qword_63728, &qword_4C6F8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63748);
  }

  return result;
}

uint64_t sub_315F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_636F8, &qword_4C6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_31664()
{
  result = qword_63768;
  if (!qword_63768)
  {
    sub_A36C(&qword_63700, &qword_4C6A8);
    sub_3171C();
    sub_EAF0(&qword_63788, &qword_63790, &qword_4C770, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63768);
  }

  return result;
}

unint64_t sub_3171C()
{
  result = qword_63770;
  if (!qword_63770)
  {
    sub_A36C(&qword_636F8, &qword_4C6A0);
    sub_A36C(&qword_636F0, &qword_4C698);
    sub_31390();
    swift_getOpaqueTypeConformance2();
    sub_EAF0(&qword_63778, &qword_63780, &qword_4C768, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63770);
  }

  return result;
}

uint64_t sub_31810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_31858(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_3189C(result, a2, a3 & 1);
  }

  return result;
}

void sub_3189C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_318B4()
{
  result = qword_637D8;
  if (!qword_637D8)
  {
    sub_A36C(&qword_637B8, &qword_4C7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_637D8);
  }

  return result;
}

unint64_t sub_31914()
{
  result = qword_63800;
  if (!qword_63800)
  {
    sub_A36C(&qword_637F0, &qword_4C810);
    sub_A36C(&qword_63808, &qword_4C820);
    sub_319DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63800);
  }

  return result;
}

unint64_t sub_319DC()
{
  result = qword_63810;
  if (!qword_63810)
  {
    sub_A36C(&qword_63808, &qword_4C820);
    sub_31A94();
    sub_EAF0(&qword_638B0, &qword_638B8, &qword_4C870, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63810);
  }

  return result;
}

unint64_t sub_31A94()
{
  result = qword_63818;
  if (!qword_63818)
  {
    sub_A36C(&qword_63820, &qword_4C828);
    sub_31B4C();
    sub_EAF0(&qword_638A0, &qword_638A8, &qword_4C868, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63818);
  }

  return result;
}

unint64_t sub_31B4C()
{
  result = qword_63828;
  if (!qword_63828)
  {
    sub_A36C(&qword_63830, &qword_4C830);
    sub_31BD8();
    sub_31E60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63828);
  }

  return result;
}

unint64_t sub_31BD8()
{
  result = qword_63838;
  if (!qword_63838)
  {
    sub_A36C(&qword_63840, &qword_4C838);
    sub_31C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63838);
  }

  return result;
}

unint64_t sub_31C64()
{
  result = qword_63848;
  if (!qword_63848)
  {
    sub_A36C(&qword_63850, &qword_4C840);
    sub_31CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63848);
  }

  return result;
}

unint64_t sub_31CF0()
{
  result = qword_63858;
  if (!qword_63858)
  {
    sub_A36C(&qword_63860, &qword_4C848);
    sub_31D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63858);
  }

  return result;
}

unint64_t sub_31D7C()
{
  result = qword_63868;
  if (!qword_63868)
  {
    sub_A36C(&qword_63870, &qword_4C850);
    sub_EAF0(&qword_63878, &qword_63880, &qword_4C858, &protocol conformance descriptor for HStack<A>);
    sub_EAF0(&qword_63888, &qword_63890, &qword_4C860, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63868);
  }

  return result;
}

unint64_t sub_31E60()
{
  result = qword_63898;
  if (!qword_63898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63898);
  }

  return result;
}

uint64_t sub_31EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_31F4C()
{
  v1 = _s18PollOptionCellViewVMa(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[6];
  sub_54A4(&qword_62500, &qword_4B000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_47A04();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[7];
  sub_54A4(&qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_47884();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_D60C(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  sub_D60C(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_32154()
{
  v1 = *(_s18PollOptionCellViewVMa(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_30EA8(v2);
}

uint64_t sub_32284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_322EC()
{
  result = qword_63930;
  if (!qword_63930)
  {
    sub_A36C(&qword_63928, &qword_4C9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63930);
  }

  return result;
}

uint64_t sub_323EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_54A4(&qword_62230, "v9");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_324BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_54A4(&qword_62230, "v9");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s15AvatarStackViewVMa(uint64_t a1)
{
  result = qword_639A0;
  if (!qword_639A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_325B8(uint64_t a1)
{
  sub_32680(319);
  if (v1 <= 0x3F)
  {
    sub_118BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_32680(uint64_t a1)
{
  if (!qword_622A0)
  {
    type metadata accessor for PollViewModel(255);
    v1 = sub_48234();
    if (!v2)
    {
      atomic_store(v1, &qword_622A0);
    }
  }
}

uint64_t sub_326F4()
{
  v1 = sub_47BF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(_s15AvatarStackViewVMa(0) + 44);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_48634();
    v8 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();
    sub_EB40(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

double sub_3284C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v37 = _s15AvatarStackViewVMa(0);
  v3 = *(v37 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v37, v5);
  v6 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_54A4(&qword_639F8, &qword_4CA58);
  v8 = v7 - 8;
  __chkstk_darwin(v7, v9);
  v11 = &v37 - v10;
  v40 = sub_54A4(&qword_63A00, &qword_4CA60);
  __chkstk_darwin(v40, v12);
  v39 = &v37 - v13;
  v38 = sub_54A4(&qword_63A08, &qword_4CA68);
  __chkstk_darwin(v38, v14);
  v16 = &v37 - v15;
  v17 = sub_32D98();
  v18 = *(v17 + 2);
  if (v18 >= 4)
  {
    v19 = v18 - 4;
  }

  else
  {
    v19 = 0;
  }

  sub_36F78((v17 + 32), v19, (2 * v18) | 1);
  v21 = v20;

  *&v43 = v21;
  swift_getKeyPath();
  sub_37A80(a1, &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), _s15AvatarStackViewVMa);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = swift_allocObject();
  sub_37B50(v6, v23 + v22, _s15AvatarStackViewVMa);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_372C0;
  *(v24 + 24) = v23;
  sub_54A4(&qword_63A10, &qword_4CA98);
  sub_54A4(&qword_63A18, &qword_4CAA0);
  sub_EAF0(&qword_63A20, &qword_63A10, &qword_4CA98, &protocol conformance descriptor for [A]);
  sub_373CC();
  v25 = v37;
  sub_481E4();
  sub_482A4();
  sub_47904();
  v26 = &v11[*(v8 + 44)];
  v27 = v44;
  *v26 = v43;
  *(v26 + 1) = v27;
  *(v26 + 2) = v45;
  sub_33E28();
  v29 = v28;
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v30 = *(v42 + 152);

  v31 = sub_326F4();
  if (v29)
  {
    if (v30)
    {
      if (qword_61D58 != -1)
      {
        swift_once();
      }

      v32 = &qword_643F0;
    }

    else
    {
      if (qword_61D50 != -1)
      {
        swift_once();
      }

      v32 = &qword_643E8;
    }
  }

  else if (v31)
  {
    if (qword_61D68 != -1)
    {
      swift_once();
    }

    v32 = &qword_64400;
  }

  else
  {
    if (qword_61D38 != -1)
    {
      swift_once();
    }

    v32 = &qword_643D0;
  }

  v33 = *v32;

  v34 = v39;
  sub_E940(v11, v39, &qword_639F8, &qword_4CA58);
  *(v34 + *(v40 + 36)) = v33;
  v35 = *(a1 + *(v25 + 32));
  sub_E940(v34, v16, &qword_63A00, &qword_4CA60);
  *&v16[*(v38 + 36)] = v35;
  sub_E940(v16, v41, &qword_63A08, &qword_4CA68);

  return result;
}

char *sub_32D98()
{
  v1 = sub_54A4(&qword_630B0, &unk_4C190);
  __chkstk_darwin(v1 - 8, v2);
  v4 = &v34 - v3;
  v38 = type metadata accessor for ViewModelPollVote(0);
  v5 = *(v38 - 8);
  __chkstk_darwin(v38, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_344C8();
  v10 = *(v9 + 16);
  if (!v10)
  {

    v13 = _swiftEmptyArrayStorage;
    sub_33E28();
    if (v24)
    {
      return v13;
    }

    goto LABEL_23;
  }

  v11 = *(v5 + 80);
  v34 = v9;
  v12 = v9 + ((v11 + 32) & ~v11);
  v36 = *(v5 + 72);
  v13 = _swiftEmptyArrayStorage;
  v35 = (v5 + 56);
  v37 = v0;
  do
  {
    sub_37A80(v12, v8, type metadata accessor for ViewModelPollVote);
    sub_37A80(v8, v4, type metadata accessor for ViewModelPollVote);
    (*v35)(v4, 0, 1, v38);
    v14 = sub_34120(v4);
    sub_60C8(v4, &qword_630B0, &unk_4C190);
    v16 = *(v8 + 3);
    if (v14)
    {
      if (v16)
      {
        v17 = *(v8 + 2);
        v18 = *(v8 + 3);
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_111F8(0, *(v13 + 2) + 1, 1, v13);
      }

      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v13 = sub_111F8((v19 > 1), v20 + 1, 1, v13);
      }
    }

    else
    {
      if (v16)
      {
        v17 = *(v8 + 2);
        v18 = *(v8 + 3);
      }

      else
      {
        v17 = 0;
        v18 = 0xE000000000000000;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_111F8(0, *(v13 + 2) + 1, 1, v13);
      }

      v20 = *(v13 + 2);
      v22 = *(v13 + 3);
      v21 = v20 + 1;
      if (v20 >= v22 >> 1)
      {
        v13 = sub_111F8((v22 > 1), v20 + 1, 1, v13);
      }

      v14 = 0;
    }

    sub_6C50(v8);
    *(v13 + 2) = v21;
    v15 = &v13[24 * v20];
    *(v15 + 4) = v17;
    *(v15 + 5) = v18;
    *(v15 + 6) = v14;
    v12 += v36;
    --v10;
  }

  while (v10);

  sub_33E28();
  if ((v23 & 1) == 0)
  {
LABEL_23:
    _s15AvatarStackViewVMa(0);
    sub_54A4(&qword_62230, "v9");
    sub_481F4();
    v25 = v39;
    swift_getKeyPath();
    v39 = v25;
    sub_37AF8(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
    sub_475C4();

    v27 = *(v25 + 80);
    v26 = *(v25 + 88);

    if (v26)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_111F8(0, *(v13 + 2) + 1, 1, v13);
    }

    v31 = *(v13 + 2);
    v30 = *(v13 + 3);
    if (v31 >= v30 >> 1)
    {
      v13 = sub_111F8((v30 > 1), v31 + 1, 1, v13);
    }

    *(v13 + 2) = v31 + 1;
    v32 = &v13[24 * v31];
    *(v32 + 4) = v28;
    *(v32 + 5) = v29;
    *(v32 + 6) = 1;
  }

  return v13;
}

uint64_t sub_331E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v24[0] = a3;
  v24[1] = a5;
  v8 = sub_54A4(&qword_63A90, &qword_4CAD0);
  __chkstk_darwin(v8, v9);
  v11 = v24 - v10;
  v12 = sub_54A4(&qword_63AE0, &qword_4CB48);
  __chkstk_darwin(v12, v13);
  v15 = v24 - v14;
  v16 = sub_54A4(&qword_63A38, &qword_4CAA8);
  __chkstk_darwin(v16, v17);
  v19 = v24 - v18;
  if (a4 == 1)
  {
    sub_33444(a1, v24 - v18);
    v20 = &qword_63A38;
    v21 = &qword_4CAA8;
    sub_6128(v19, v15, &qword_63A38, &qword_4CAA8);
    swift_storeEnumTagMultiPayload();
    sub_37458();
    sub_376B0();
    sub_47CC4();
    v22 = v19;
  }

  else
  {

    sub_337BC(a1, a2, v24[0], a4, v11);
    v20 = &qword_63A90;
    v21 = &qword_4CAD0;
    sub_6128(v11, v15, &qword_63A90, &qword_4CAD0);
    swift_storeEnumTagMultiPayload();
    sub_37458();
    sub_376B0();
    sub_47CC4();
    sub_13444(a4);
    v22 = v11;
  }

  return sub_60C8(v22, v20, v21);
}

uint64_t sub_33444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s15AvatarStackViewVMa(0);
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v7 = *&v46[0];
  v8 = *(v2 + *(v6 + 28));
  sub_481F4();
  v9 = *(*&v46[0] + 152);

  v10 = *(v2 + *(v6 + 36));
  KeyPath = swift_getKeyPath();
  v12 = _s11EmptyCircleVMa(0);
  *(a2 + *(v12 + 36)) = KeyPath;
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  v13 = swift_getKeyPath();
  *a2 = v7;
  if (qword_61CC8 != -1)
  {
    v44 = v13;
    swift_once();
    v13 = v44;
  }

  v14 = xmmword_641F0;
  v15 = unk_64200;
  v46[2] = xmmword_641F0;
  v46[3] = unk_64200;
  v16 = unk_64210;
  v46[4] = unk_64210;
  v17 = xmmword_641D0;
  v46[0] = xmmword_641D0;
  v46[1] = *&qword_641E0;
  *(a2 + 24) = *&qword_641E0;
  *(a2 + 40) = v14;
  *(a2 + 56) = v15;
  *(a2 + 72) = v16;
  *(a2 + 8) = v17;
  *(a2 + 88) = v8;
  *(a2 + 89) = v9;
  *(a2 + 92) = v10;
  v18 = a2 + *(v12 + 40);
  *v18 = v13;
  *(v18 + 8) = 0;
  sub_32228(v46, v45);
  v19 = sub_48084();
  sub_478A4();
  v20 = v45[0];
  v21 = v45[2];
  v22 = v45[3];
  v23 = v45[4];
  v24 = sub_482A4();
  v26 = v25;
  v27 = a2 + *(sub_54A4(&qword_63A58, &qword_4CAB8) + 36);
  v28 = *(sub_54A4(&qword_63AE8, &qword_4CBB0) + 36);
  v29 = enum case for BlendMode.destinationOut(_:);
  v30 = sub_48304();
  v31 = v45[1];
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = v20;
  *(v27 + 8) = v31;
  *(v27 + 16) = v21;
  *(v27 + 24) = v22;
  *(v27 + 32) = v23;
  *(v27 + 40) = v19;
  *(v27 + 48) = 256;
  *(v27 + 50) = v47;
  *(v27 + 54) = v48;
  *(v27 + 56) = v24;
  *(v27 + 64) = v26;
  v32 = sub_482A4();
  v34 = v33;
  v35 = (v27 + *(sub_54A4(&qword_63A70, &qword_4CAC0) + 36));
  *v35 = v32;
  v35[1] = v34;
  *(a2 + *(sub_54A4(&qword_63A48, &qword_4CAB0) + 36)) = a1;
  sub_48484(*(v3 + 8));
  v36 = sub_48314();
  v37 = sub_47D44();
  sub_48334();
  v39 = v38;
  v41 = v40;
  result = sub_54A4(&qword_63A38, &qword_4CAA8);
  v43 = a2 + *(result + 36);
  *v43 = 0x5F7974706D45;
  *(v43 + 8) = 0xE600000000000000;
  *(v43 + 16) = v36;
  *(v43 + 24) = v37;
  *(v43 + 32) = v39;
  *(v43 + 40) = v41;
  *(v43 + 48) = 1;
  return result;
}

uint64_t sub_337BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v83._countAndFlagsBits = a2;
  v83._object = a3;
  v75 = a1;
  v84 = a5;
  v8 = sub_47A64();
  v81 = *(v8 - 8);
  v82 = v8;
  v10 = __chkstk_darwin(v8, v9);
  v79 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v80 = &v67 - v13;
  v73 = sub_54A4(&qword_63AC0, &qword_4CAE8);
  __chkstk_darwin(v73, v14);
  v16 = &v67 - v15;
  v74 = sub_54A4(&qword_63AB0, &qword_4CAE0);
  __chkstk_darwin(v74, v17);
  v77 = &v67 - v18;
  v76 = sub_54A4(&qword_63AA0, &qword_4CAD8);
  __chkstk_darwin(v76, v19);
  v78 = &v67 - v20;
  sub_33E28();
  v22 = v21;
  v23 = _s15AvatarStackViewVMa(0);
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v72 = *(v89 + 152);

  v24 = sub_326F4();
  if (qword_61CC8 != -1)
  {
    v66 = v24;
    swift_once();
    v24 = v66;
  }

  v88[2] = xmmword_641F0;
  v88[3] = unk_64200;
  v88[4] = unk_64210;
  v88[0] = xmmword_641D0;
  v88[1] = *&qword_641E0;
  v91 = xmmword_641F0;
  v92 = unk_64200;
  v93 = unk_64210;
  v70 = v22 & 1;
  v71 = v24 & 1;
  v89 = xmmword_641D0;
  v90 = *&qword_641E0;
  sub_32228(v88, v87);

  v25 = sub_48084();
  v68 = v6 + *(v23 + 40);
  v69 = v25;
  v26 = 0;
  sub_478A4();
  v27 = v87[0];
  v28 = v87[2];
  v29 = v87[3];
  v30 = v87[4];
  v31 = sub_482A4();
  v33 = v32;
  v34 = &v16[*(sub_54A4(&qword_63AD0, &qword_4CAF0) + 36)];
  v35 = *(sub_54A4(&qword_63AE8, &qword_4CBB0) + 36);
  v36 = enum case for BlendMode.destinationOut(_:);
  v37 = sub_48304();
  v38 = v87[1];
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  *v34 = v27;
  *(v34 + 1) = v38;
  *(v34 + 2) = v28;
  *(v34 + 3) = v29;
  *(v34 + 4) = v30;
  *(v34 + 5) = v69;
  *(v34 + 24) = 256;
  *(v34 + 50) = v94;
  *(v34 + 27) = v95;
  *(v34 + 7) = v31;
  *(v34 + 8) = v33;
  v39 = sub_482A4();
  v41 = v40;
  v42 = &v34[*(sub_54A4(&qword_63A70, &qword_4CAC0) + 36)];
  *v42 = v39;
  v42[1] = v41;
  v43 = v93;
  *(v16 + 3) = v92;
  *(v16 + 4) = v43;
  v44 = v91;
  *(v16 + 1) = v90;
  *(v16 + 2) = v44;
  *v16 = v89;
  *(v16 + 10) = a4;
  v16[88] = v70;
  LOBYTE(v42) = v71;
  v16[89] = v72;
  v16[90] = v42;
  v45 = v75;
  *&v16[*(v73 + 36)] = v75;
  v46 = *(sub_32D98() + 2);

  if (v46 >= 4 && !v45)
  {
    v26 = *(v68 + 48);
  }

  if (a4)
  {
    v47 = 0xE600000000000000;
  }

  else
  {
    v47 = 0xEB00000000726174;
  }

  if (a4)
  {
    v48 = 0x726174617641;
  }

  else
  {
    v48 = 0x6176417974706D45;
  }

  v49 = v77;
  sub_E940(v16, v77, &qword_63AC0, &qword_4CAE8);
  v50 = (v49 + *(v74 + 36));
  *v50 = v26;
  v50[1] = 0;
  sub_48334();
  v51 = v80;
  sub_47A74();
  v53 = v81;
  v52 = v82;
  (*(v81 + 16))(v79, v51, v82);
  sub_37AF8(&qword_63AF0, &type metadata accessor for ScaleTransition, &protocol conformance descriptor for ScaleTransition);
  v54 = sub_47954();
  (*(v53 + 8))(v51, v52);
  v55 = v78;
  sub_E940(v49, v78, &qword_63AB0, &qword_4CAE0);
  *(v55 + *(v76 + 36)) = v54;
  v85 = v48;
  v86 = v47;
  v96._countAndFlagsBits = 95;
  v96._object = 0xE100000000000000;
  sub_48484(v96);
  sub_48484(v83);
  v56 = v85;
  v57 = v86;
  v58 = sub_48314();
  LODWORD(v52) = sub_47D44();
  sub_48334();
  v60 = v59;
  v62 = v61;
  v63 = v84;
  sub_E940(v55, v84, &qword_63AA0, &qword_4CAD8);
  result = sub_54A4(&qword_63A90, &qword_4CAD0);
  v65 = v63 + *(result + 36);
  *v65 = v56;
  *(v65 + 8) = v57;
  *(v65 + 16) = v58;
  *(v65 + 24) = v52;
  *(v65 + 32) = v60;
  *(v65 + 40) = v62;
  *(v65 + 48) = 1;
  return result;
}

void sub_33E28()
{
  v1 = type metadata accessor for ViewModelPollVote(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8, v3);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s15AvatarStackViewVMa(0);
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v6 = v22;
  swift_getKeyPath();
  v22 = v6;
  sub_37AF8(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  swift_beginAccess();
  v7 = *(v6 + 72);

  v8 = *(v0 + 8);
  v20 = *(v0 + 16);
  sub_481F4();
  v9 = v21;
  swift_getKeyPath();
  v21 = v9;
  sub_475C4();

  v11 = *(v9 + 80);
  v10 = *(v9 + 88);

  if (!v10)
  {
    goto LABEL_19;
  }

  v12 = *(v7 + 16);
  if (!v12)
  {
LABEL_18:

LABEL_19:

    return;
  }

  v13 = 0;
  v14 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  while (v13 < *(v7 + 16))
  {
    sub_37A80(v14 + *(v2 + 72) * v13, v5, type metadata accessor for ViewModelPollVote);
    v15 = v5[3];
    if (v15 && (v5[2] == v11 ? (v16 = v15 == v10) : (v16 = 0), (v16 || (sub_48874() & 1) != 0) && (v17 = v5[1]) != 0))
    {
      if (*v5 == v8 && v17 == v20)
      {
        sub_6C50(v5);
LABEL_22:

        return;
      }

      v18 = sub_48874();
      sub_6C50(v5);
      if (v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_6C50(v5);
    }

    if (v12 == ++v13)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_34120(uint64_t a1)
{
  v2 = sub_54A4(&qword_630B0, &unk_4C190);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v30 - v4;
  v6 = type metadata accessor for ViewModelPollVote(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6128(a1, v5, &qword_630B0, &unk_4C190);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_60C8(v5, &qword_630B0, &unk_4C190);
  }

  else
  {
    sub_37B50(v5, v10, type metadata accessor for ViewModelPollVote);
    v11 = *(v10 + 3);
    if (v11)
    {
      v30 = v10;
      v12 = *(v10 + 2);
      _s15AvatarStackViewVMa(0);
      sub_54A4(&qword_62230, "v9");
      sub_481F4();
      v13 = v33;
      swift_getKeyPath();
      v33 = v13;
      sub_37AF8(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
      sub_475C4();

      v14 = *(v13 + 104);

      if (v14 >> 62)
      {
        goto LABEL_24;
      }

      for (i = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)); i; i = sub_487E4())
      {
        v16 = 0;
        v31 = v14 & 0xFFFFFFFFFFFFFF8;
        v32 = v14 & 0xC000000000000001;
        while (1)
        {
          if (v32)
          {
            v17 = sub_487A4();
          }

          else
          {
            if (v16 >= *(v31 + 16))
            {
              goto LABEL_23;
            }

            v17 = *(v14 + 8 * v16 + 32);
          }

          v18 = v17;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          v20 = [v17 participantHandle];
          v21 = sub_48414();
          v23 = v22;

          if (v21 == v12 && v11 == v23)
          {

LABEL_21:

            v27 = [v18 avatarImage];
            v28 = sub_480D4();

            sub_6C50(v30);
            return v28;
          }

          v25 = sub_48874();

          if (v25)
          {
            goto LABEL_21;
          }

          ++v16;
          if (v19 == i)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        ;
      }

LABEL_25:

      v26 = v30;
    }

    else
    {
      v26 = v10;
    }

    sub_6C50(v26);
  }

  return 0;
}

void sub_344C8()
{
  v1 = type metadata accessor for ViewModelPollVote(0);
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1 - 8, v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = (&v23 - v8);
  _s15AvatarStackViewVMa(0);
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v10 = v27;
  swift_getKeyPath();
  v27 = v10;
  sub_37AF8(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  swift_beginAccess();
  v11 = *(v10 + 72);

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = *(v0 + 16);
    v25 = *(v0 + 8);
    v15 = _swiftEmptyArrayStorage;
    v23 = v14;
    v24 = v6;
    while (v13 < *(v11 + 16))
    {
      v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v17 = *(v2 + 72);
      sub_37A80(v11 + v16 + v17 * v13, v9, type metadata accessor for ViewModelPollVote);
      v18 = v9[1];
      if (v18 && (*v9 == v25 ? (v19 = v18 == v14) : (v19 = 0), v19 || (sub_48874() & 1) != 0))
      {
        sub_37B50(v9, v6, type metadata accessor for ViewModelPollVote);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21FD8(0, v15[2] + 1, 1);
          v15 = v26;
        }

        v22 = v15[2];
        v21 = v15[3];
        if (v22 >= v21 >> 1)
        {
          sub_21FD8((v21 > 1), v22 + 1, 1);
          v15 = v26;
        }

        v15[2] = v22 + 1;
        v6 = v24;
        sub_37B50(v24, v15 + v16 + v22 * v17, type metadata accessor for ViewModelPollVote);
        v14 = v23;
      }

      else
      {
        sub_6C50(v9);
      }

      if (v12 == ++v13)
      {
        goto LABEL_18;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_18:

    v26 = v15;

    sub_34BAC(&v26);
  }
}

uint64_t sub_3480C(uint64_t *a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = sub_47564();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v24 = type metadata accessor for ViewModelPollVote(0);
  v6 = *(v24 + 24);
  v7 = sub_54A4(&qword_62138, &qword_4AC00);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v23 - v10;
  sub_6128(v25 + v6, &v23 - v10, &qword_62138, &qword_4AC00);
  v12 = *(v3 + 48);
  if (v12(v11, 1, v2) == 1)
  {
    v13 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_47504();
    v14 = v12(v11, 1, v2);
    if (v14 != 1)
    {
      v14 = sub_60C8(v11, &qword_62138, &qword_4AC00);
    }
  }

  else
  {
    v13 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = (*(v3 + 32))(v13, v11, v2);
  }

  v25 = &v23;
  v16 = __chkstk_darwin(v14, v15);
  v17 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  sub_6128(v26 + v19, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_62138, &qword_4AC00);
  if (v12(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v2) == 1)
  {
    sub_47504();
    if (v12(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v2) != 1)
    {
      sub_60C8(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_62138, &qword_4AC00);
    }
  }

  else
  {
    (*(v3 + 32))(v17, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  }

  v20 = sub_47534();
  v21 = *(v3 + 8);
  v21(v17, v2);
  v21(v13, v2);
  return v20 & 1;
}

void sub_34B3C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -(*(v2 + *(a1 + 40)) * *(v2 + *(a1 + 40) + 16));
  *a2 = sub_47C14();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = sub_54A4(&qword_639F0, &qword_4CA50);
  sub_3284C(v2, a2 + *(v5 + 44));
}

Swift::Int sub_34BAC(uint64_t *a1)
{
  v2 = *(type metadata accessor for ViewModelPollVote(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_36F64(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_34C54(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_34C54(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_48844(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ViewModelPollVote(0);
        v6 = sub_48574();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ViewModelPollVote(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_352E0(v8, v9, a1, v4);
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
    return sub_34D80(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_34D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v77 = type metadata accessor for ViewModelPollVote(0);
  v9 = __chkstk_darwin(v77, v8);
  v67 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v14 = &v58 - v13;
  result = __chkstk_darwin(v12, v15);
  v19 = &v58 - v18;
  v60 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v65 = -v21;
    v66 = v20;
    v23 = a1 - a3;
    v59 = v21;
    v24 = v20 + v21 * a3;
    v68 = &v58 - v18;
    v69 = v14;
LABEL_5:
    v63 = v22;
    v64 = a3;
    v61 = v24;
    v62 = v23;
    v25 = v23;
    while (1)
    {
      v75 = v25;
      v76 = v24;
      sub_37A80(v24, v19, type metadata accessor for ViewModelPollVote);
      v74 = v22;
      sub_37A80(v22, v14, type metadata accessor for ViewModelPollVote);
      v26 = sub_47564();
      v73 = &v58;
      v78 = *(v26 - 8);
      v27 = *(v78 + 64);
      __chkstk_darwin(v26, v28);
      v29 = *(v77 + 24);
      v30 = sub_54A4(&qword_62138, &qword_4AC00);
      v71 = &v58;
      v31 = *(*(v30 - 8) + 64);
      __chkstk_darwin(v30 - 8, v32);
      v34 = &v58 - v33;
      v35 = v78;
      sub_6128(&v19[v29], &v58 - v33, &qword_62138, &qword_4AC00);
      v36 = *(v35 + 48);
      v37 = v36(v34, 1, v26);
      v72 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v37 == 1)
      {
        sub_47504();
        v38 = v36(v34, 1, v26);
        v40 = v26;
        if (v38 != 1)
        {
          v38 = sub_60C8(v34, &qword_62138, &qword_4AC00);
        }
      }

      else
      {
        v38 = (*(v35 + 32))(&v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v26);
        v40 = v26;
      }

      v71 = &v58;
      v41 = __chkstk_darwin(v38, v39);
      v42 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      v70 = &v58;
      __chkstk_darwin(v41, v43);
      v44 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      v14 = v69;
      sub_6128(&v69[v45], v44, &qword_62138, &qword_4AC00);
      v46 = v36(v44, 1, v40);
      v48 = v75;
      v47 = v76;
      if (v46 == 1)
      {
        sub_47504();
        v49 = v36(v44, 1, v40);
        v50 = v78;
        v51 = v40;
        if (v49 != 1)
        {
          sub_60C8(v44, &qword_62138, &qword_4AC00);
        }
      }

      else
      {
        v50 = v78;
        (*(v78 + 32))(v42, v44, v40);
        v51 = v40;
      }

      v52 = v72;
      v53 = sub_47534();
      v54 = *(v50 + 8);
      v54(v42, v51);
      v54(v52, v51);
      sub_6C50(v14);
      v19 = v68;
      result = sub_6C50(v68);
      v55 = v74;
      if ((v53 & 1) == 0)
      {
LABEL_4:
        a3 = v64 + 1;
        v22 = v63 + v59;
        v23 = v62 - 1;
        v24 = v61 + v59;
        if (v64 + 1 == v60)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v66)
      {
        break;
      }

      v56 = v67;
      sub_37B50(v47, v67, type metadata accessor for ViewModelPollVote);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_37B50(v56, v55, type metadata accessor for ViewModelPollVote);
      v22 = v55 + v65;
      v24 = v47 + v65;
      v57 = __CFADD__(v48, 1);
      v25 = v48 + 1;
      if (v57)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_352E0(unint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v5 = v4;
  v165 = a1;
  v8 = type metadata accessor for ViewModelPollVote(0);
  v175 = *(v8 - 8);
  v10 = __chkstk_darwin(v8, v9);
  v169 = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v182 = &v161 - v14;
  v16 = __chkstk_darwin(v13, v15);
  v183 = &v161 - v17;
  v19 = __chkstk_darwin(v16, v18);
  v190 = &v161 - v20;
  v22 = __chkstk_darwin(v19, v21);
  v179 = &v161 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v178 = &v161 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v164 = (&v161 - v29);
  result = __chkstk_darwin(v28, v30);
  v176 = a3;
  v33 = a3[1];
  if (v33 < 1)
  {
    v35 = _swiftEmptyArrayStorage;
LABEL_111:
    a3 = *v165;
    if (!*v165)
    {
      goto LABEL_151;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_145:
      result = sub_36E6C(v35);
      v35 = result;
    }

    v192 = v35;
    v157 = *(v35 + 2);
    if (v157 >= 2)
    {
      while (*v176)
      {
        v158 = *&v35[16 * v157];
        v159 = *&v35[16 * v157 + 24];
        sub_362B8(*v176 + *(v175 + 72) * v158, *v176 + *(v175 + 72) * *&v35[16 * v157 + 16], *v176 + *(v175 + 72) * v159, a3);
        if (v5)
        {
        }

        if (v159 < v158)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_36E6C(v35);
        }

        if (v157 - 2 >= *(v35 + 2))
        {
          goto LABEL_139;
        }

        v160 = &v35[16 * v157];
        *v160 = v158;
        *(v160 + 1) = v159;
        v192 = v35;
        result = sub_36DE0(v157 - 1);
        v35 = v192;
        v157 = *(v192 + 2);
        if (v157 <= 1)
        {
        }
      }

      goto LABEL_149;
    }
  }

  v163 = (&v161 - v32);
  v162 = a4;
  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v191 = v8;
  while (1)
  {
    v36 = v34;
    v37 = v34 + 1;
    v166 = v34;
    if (v34 + 1 < v33)
    {
      v177 = v33;
      v38 = v34;
      v39 = *v176;
      v40 = *(v175 + 72);
      v41 = *v176 + v40 * v37;
      v42 = v163;
      sub_37A80(v41, v163, type metadata accessor for ViewModelPollVote);
      a3 = v164;
      sub_37A80(v39 + v40 * v38, v164, type metadata accessor for ViewModelPollVote);
      LODWORD(v174) = sub_3480C(v42, a3);
      if (!v5)
      {
        sub_6C50(a3);
        sub_6C50(v42);
        v43 = (v38 + 2);
        result = v39 + v40 * (v38 + 2);
        v180 = v40;
        v172 = v35;
        v173 = 0;
        while (1)
        {
          v48 = v177;
          if (v177 == v43)
          {
            break;
          }

          v187 = result;
          v188 = v43;
          sub_37A80(result, v178, type metadata accessor for ViewModelPollVote);
          v189 = v41;
          sub_37A80(v41, v179, type metadata accessor for ViewModelPollVote);
          v49 = sub_47564();
          v186 = &v161;
          v50 = *(v49 - 8);
          v51 = *(v50 + 64);
          __chkstk_darwin(v49, v52);
          v53 = &v161 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
          v54 = *(v8 + 24);
          v55 = sub_54A4(&qword_62138, &qword_4AC00);
          v184 = &v161;
          v56 = *(*(v55 - 8) + 64);
          __chkstk_darwin(v55 - 8, v57);
          v59 = &v161 - v58;
          sub_6128(v178 + v54, &v161 - v58, &qword_62138, &qword_4AC00);
          v60 = *(v50 + 48);
          v61 = v60(v59, 1, v49);
          v185 = v50;
          if (v61 == 1)
          {
            sub_47504();
            v62 = v60(v59, 1, v49);
            if (v62 != 1)
            {
              v62 = sub_60C8(v59, &qword_62138, &qword_4AC00);
            }
          }

          else
          {
            v62 = (*(v50 + 32))(&v161 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0), v59, v49);
          }

          v184 = &v161;
          v64 = __chkstk_darwin(v62, v63);
          v65 = &v161 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
          v181 = &v161;
          __chkstk_darwin(v64, v66);
          v67 = &v161 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_6128(v179 + v68, v67, &qword_62138, &qword_4AC00);
          v69 = v60(v67, 1, v49);
          v70 = v189;
          if (v69 == 1)
          {
            sub_47504();
            v71 = v60(&v161 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v49);
            v35 = v172;
            v5 = v173;
            v44 = v185;
            if (v71 != 1)
            {
              sub_60C8(v67, &qword_62138, &qword_4AC00);
            }
          }

          else
          {
            v44 = v185;
            (v185[4])(v65, &v161 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0), v49);
            v35 = v172;
            v5 = v173;
          }

          v45 = sub_47534();
          v46 = *(v44 + 8);
          a3 = (v44 + 8);
          v46(v65, v49);
          v46(v53, v49);
          sub_6C50(v179);
          sub_6C50(v178);
          v47 = v174 ^ v45;
          v43 = (v188 + 1);
          v40 = v180;
          result = v187 + v180;
          v41 = v70 + v180;
          v8 = v191;
          if (v47)
          {
            v48 = v188;
            break;
          }
        }

        v36 = v166;
        if (v174)
        {
          if (v48 < v166)
          {
            goto LABEL_144;
          }

          if (v166 < v48)
          {
            v72 = v40 * (v48 - 1);
            v73 = v48 * v40;
            v177 = v48;
            v74 = v166;
            v75 = v166 * v40;
            do
            {
              if (v74 != --v48)
              {
                v76 = *v176;
                if (!*v176)
                {
                  goto LABEL_148;
                }

                a3 = (v76 + v75);
                sub_37B50(v76 + v75, v169, type metadata accessor for ViewModelPollVote);
                if (v75 < v72 || a3 >= (v76 + v73))
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v75 != v72)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_37B50(v169, v76 + v72, type metadata accessor for ViewModelPollVote);
                v40 = v180;
              }

              ++v74;
              v72 -= v40;
              v73 -= v40;
              v75 += v40;
            }

            while (v74 < v48);
            v8 = v191;
            v36 = v166;
            v48 = v177;
          }
        }

        goto LABEL_33;
      }

      sub_6C50(a3);
      sub_6C50(v42);
    }

    v48 = v34 + 1;
LABEL_33:
    v77 = v176[1];
    if (v48 >= v77)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v48, v36))
    {
      goto LABEL_141;
    }

    if (v48 - v36 >= v162)
    {
LABEL_41:
      v34 = v48;
      if (v48 < v36)
      {
        goto LABEL_140;
      }

      goto LABEL_42;
    }

    if (__OFADD__(v36, v162))
    {
      goto LABEL_142;
    }

    if (v36 + v162 < v77)
    {
      v77 = v36 + v162;
    }

    if (v77 < v36)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v168 = v77;
    if (v48 == v77)
    {
      goto LABEL_41;
    }

    v172 = v35;
    v173 = v5;
    v124 = *v176;
    v125 = *(v175 + 72);
    v126 = *v176 + v125 * (v48 - 1);
    v180 = -v125;
    v181 = v124;
    v127 = (v36 - v48);
    v167 = v125;
    a3 = (v124 + v48 * v125);
    v128 = v183;
LABEL_94:
    v177 = v48;
    v170 = a3;
    v171 = v127;
    v129 = v127;
    v174 = v126;
LABEL_95:
    v185 = a3;
    v186 = v129;
    v130 = v190;
    sub_37A80(a3, v190, type metadata accessor for ViewModelPollVote);
    v184 = v126;
    sub_37A80(v126, v128, type metadata accessor for ViewModelPollVote);
    v131 = sub_47564();
    v189 = &v161;
    v187 = *(v131 - 8);
    v132 = *(v187 + 64);
    __chkstk_darwin(v131, v133);
    v134 = *(v8 + 24);
    v135 = sub_54A4(&qword_62138, &qword_4AC00);
    v188 = &v161;
    v136 = *(*(v135 - 8) + 64);
    __chkstk_darwin(v135 - 8, v137);
    v139 = &v161 - v138;
    v140 = v187;
    sub_6128(v130 + v134, &v161 - v138, &qword_62138, &qword_4AC00);
    v141 = *(v140 + 48);
    if (v141(v139, 1, v131) == 1)
    {
      sub_47504();
      v142 = v141(v139, 1, v131);
      v144 = &v161 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (v142 != 1)
      {
        v142 = sub_60C8(v139, &qword_62138, &qword_4AC00);
      }
    }

    else
    {
      v142 = (*(v140 + 32))(&v161 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0), v139, v131);
      v144 = &v161 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
    }

    v145 = __chkstk_darwin(v142, v143);
    v146 = &v161 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
    v188 = &v161;
    __chkstk_darwin(v145, v147);
    v148 = &v161 - ((v136 + 15) & 0xFFFFFFFFFFFFFFF0);
    v128 = v183;
    sub_6128(&v183[v149], v148, &qword_62138, &qword_4AC00);
    if (v141(v148, 1, v131) == 1)
    {
      sub_47504();
      if (v141(v148, 1, v131) != 1)
      {
        sub_60C8(v148, &qword_62138, &qword_4AC00);
      }
    }

    else
    {
      (*(v140 + 32))(v146, v148, v131);
    }

    v150 = sub_47534();
    v151 = *(v140 + 8);
    v151(v146, v131);
    v151(v144, v131);
    sub_6C50(v128);
    result = sub_6C50(v190);
    if (v150)
    {
      break;
    }

    v8 = v191;
LABEL_93:
    v48 = v177 + 1;
    v126 = v174 + v167;
    v127 = (v171 - 1);
    a3 = (v170 + v167);
    if (v177 + 1 != v168)
    {
      goto LABEL_94;
    }

    v35 = v172;
    v5 = v173;
    v34 = v168;
    if (v168 < v166)
    {
      goto LABEL_140;
    }

LABEL_42:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_110F4(0, *(v35 + 2) + 1, 1, v35);
      v35 = result;
    }

    v79 = *(v35 + 2);
    v78 = *(v35 + 3);
    v80 = v79 + 1;
    if (v79 >= v78 >> 1)
    {
      result = sub_110F4((v78 > 1), v79 + 1, 1, v35);
      v35 = result;
    }

    *(v35 + 2) = v80;
    v81 = &v35[16 * v79];
    *(v81 + 4) = v166;
    *(v81 + 5) = v34;
    a3 = *v165;
    if (!*v165)
    {
      goto LABEL_150;
    }

    if (v79)
    {
      while (2)
      {
        v82 = v80 - 1;
        if (v80 >= 4)
        {
          v87 = &v35[16 * v80 + 32];
          v88 = *(v87 - 64);
          v89 = *(v87 - 56);
          v93 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          if (v93)
          {
            goto LABEL_127;
          }

          v92 = *(v87 - 48);
          v91 = *(v87 - 40);
          v93 = __OFSUB__(v91, v92);
          v85 = v91 - v92;
          v86 = v93;
          if (v93)
          {
            goto LABEL_128;
          }

          v94 = &v35[16 * v80];
          v96 = *v94;
          v95 = *(v94 + 1);
          v93 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v93)
          {
            goto LABEL_130;
          }

          v93 = __OFADD__(v85, v97);
          v98 = v85 + v97;
          if (v93)
          {
            goto LABEL_133;
          }

          if (v98 >= v90)
          {
            v116 = &v35[16 * v82 + 32];
            v118 = *v116;
            v117 = *(v116 + 1);
            v93 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v93)
            {
              goto LABEL_137;
            }

            if (v85 < v119)
            {
              v82 = v80 - 2;
            }
          }

          else
          {
LABEL_61:
            if (v86)
            {
              goto LABEL_129;
            }

            v99 = &v35[16 * v80];
            v101 = *v99;
            v100 = *(v99 + 1);
            v102 = __OFSUB__(v100, v101);
            v103 = v100 - v101;
            v104 = v102;
            if (v102)
            {
              goto LABEL_132;
            }

            v105 = &v35[16 * v82 + 32];
            v107 = *v105;
            v106 = *(v105 + 1);
            v93 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v93)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v103, v108))
            {
              goto LABEL_136;
            }

            if (v103 + v108 < v85)
            {
              goto LABEL_75;
            }

            if (v85 < v108)
            {
              v82 = v80 - 2;
            }
          }
        }

        else
        {
          if (v80 == 3)
          {
            v83 = *(v35 + 4);
            v84 = *(v35 + 5);
            v93 = __OFSUB__(v84, v83);
            v85 = v84 - v83;
            v86 = v93;
            goto LABEL_61;
          }

          v109 = &v35[16 * v80];
          v111 = *v109;
          v110 = *(v109 + 1);
          v93 = __OFSUB__(v110, v111);
          v103 = v110 - v111;
          v104 = v93;
LABEL_75:
          if (v104)
          {
            goto LABEL_131;
          }

          v112 = &v35[16 * v82];
          v114 = *(v112 + 4);
          v113 = *(v112 + 5);
          v93 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v93)
          {
            goto LABEL_134;
          }

          if (v115 < v103)
          {
            break;
          }
        }

        v120 = v82 - 1;
        if (v82 - 1 >= v80)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
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
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v176)
        {
          goto LABEL_147;
        }

        v121 = *&v35[16 * v120 + 32];
        v122 = *&v35[16 * v82 + 40];
        sub_362B8(*v176 + *(v175 + 72) * v121, *v176 + *(v175 + 72) * *&v35[16 * v82 + 32], *v176 + *(v175 + 72) * v122, a3);
        if (v5)
        {
        }

        if (v122 < v121)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_36E6C(v35);
        }

        if (v120 >= *(v35 + 2))
        {
          goto LABEL_126;
        }

        v123 = &v35[16 * v120];
        *(v123 + 4) = v121;
        *(v123 + 5) = v122;
        v192 = v35;
        result = sub_36DE0(v82);
        v35 = v192;
        v80 = *(v192 + 2);
        if (v80 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v33 = v176[1];
    if (v34 >= v33)
    {
      goto LABEL_111;
    }
  }

  v152 = v186;
  if (v181)
  {
    v153 = v185;
    v154 = v182;
    sub_37B50(v185, v182, type metadata accessor for ViewModelPollVote);
    v155 = v184;
    v8 = v191;
    swift_arrayInitWithTakeFrontToBack();
    sub_37B50(v154, v155, type metadata accessor for ViewModelPollVote);
    v126 = v155 + v180;
    a3 = (v153 + v180);
    v156 = __CFADD__(v152, 1);
    v129 = (v152 + 1);
    if (v156)
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
  return result;
}

uint64_t sub_362B8(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v100 = a3;
  v109 = type metadata accessor for ViewModelPollVote(0);
  v8 = __chkstk_darwin(v109, v7);
  v107 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v103 = (&v92 - v12);
  v14 = __chkstk_darwin(v11, v13);
  v108 = &v92 - v15;
  result = __chkstk_darwin(v14, v16);
  v19 = &v92 - v18;
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_78;
  }

  v22 = &v100[-a2];
  if (&v100[-a2] == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_79;
  }

  v23 = (a2 - a1) / v21;
  v112 = a1;
  v111 = a4;
  if (v23 >= v22 / v21)
  {
    v25 = v22 / v21 * v21;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = a4 + v25;
    if (v25 >= 1)
    {
      v56 = -v21;
      v57 = (a4 + v25);
      v104 = a4;
      v105 = a1;
      v58 = v100;
      v108 = v56;
      while (2)
      {
        while (1)
        {
          v93 = v55;
          v59 = a2;
          v60 = a2 + v56;
          v106 = v60;
          v95 = v59;
          while (1)
          {
            if (v59 <= a1)
            {
              v112 = v59;
              v110 = v93;
              goto LABEL_76;
            }

            v101 = v58;
            v102 = v57;
            v94 = v55;
            v96 = &v57[v56];
            sub_37A80(&v57[v56], v103, type metadata accessor for ViewModelPollVote);
            sub_37A80(v60, v107, type metadata accessor for ViewModelPollVote);
            v61 = sub_47564();
            v100 = &v92;
            v62 = *(v61 - 8);
            v63 = *(v62 + 64);
            __chkstk_darwin(v61, v64);
            v65 = *(v109 + 24);
            v66 = sub_54A4(&qword_62138, &qword_4AC00);
            v97 = &v92;
            v67 = *(*(v66 - 8) + 64);
            __chkstk_darwin(v66 - 8, v68);
            v70 = &v92 - v69;
            sub_6128(v103 + v65, &v92 - v69, &qword_62138, &qword_4AC00);
            v71 = *(v62 + 48);
            v72 = v71(v70, 1, v61);
            v98 = v62;
            v99 = &v92 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
            if (v72 == 1)
            {
              sub_47504();
              v73 = v71(v70, 1, v61);
              if (v73 != 1)
              {
                v73 = sub_60C8(v70, &qword_62138, &qword_4AC00);
              }
            }

            else
            {
              v73 = (*(v62 + 32))(&v92 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0), v70, v61);
            }

            v75 = __chkstk_darwin(v73, v74);
            v76 = &v92 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
            __chkstk_darwin(v75, v77);
            v78 = &v92 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_6128(v107 + v79, v78, &qword_62138, &qword_4AC00);
            v80 = v71(v78, 1, v61);
            v97 = &v92;
            if (v80 == 1)
            {
              sub_47504();
              v81 = v71(v78, 1, v61);
              a1 = v105;
              v82 = v98;
              v83 = v61;
              if (v81 != 1)
              {
                sub_60C8(v78, &qword_62138, &qword_4AC00);
              }
            }

            else
            {
              v82 = v98;
              (*(v98 + 32))(v76, v78, v61);
              a1 = v105;
              v83 = v61;
            }

            v84 = v101;
            v58 = &v101[v108];
            v85 = v99;
            v86 = sub_47534();
            v87 = *(v82 + 8);
            v87(v76, v83);
            v87(v85, v83);
            sub_6C50(v107);
            sub_6C50(v103);
            if (v86)
            {
              break;
            }

            v88 = v96;
            v55 = v96;
            v89 = v104;
            if (v84 < v102 || v58 >= v102)
            {
              swift_arrayInitWithTakeFrontToBack();
              v56 = v108;
              v60 = v106;
            }

            else
            {
              v90 = v84 == v102;
              v56 = v108;
              v60 = v106;
              if (!v90)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v57 = v55;
            v59 = v95;
            if (v88 <= v89)
            {
              a2 = v95;
              goto LABEL_75;
            }
          }

          v91 = v104;
          v57 = v102;
          if (v84 < v95 || v58 >= v95)
          {
            break;
          }

          v90 = v84 == v95;
          v55 = v94;
          v56 = v108;
          a2 = v106;
          if (!v90)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v57 <= v91)
          {
            goto LABEL_75;
          }
        }

        a2 = v106;
        swift_arrayInitWithTakeFrontToBack();
        v55 = v94;
        v56 = v108;
        if (v57 > v91)
        {
          continue;
        }

        break;
      }
    }

LABEL_75:
    v112 = a2;
    v110 = v55;
  }

  else
  {
    v24 = v23 * v21;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v99 = (a4 + v24);
    v110 = a4 + v24;
    if (v24 >= 1 && a2 < v100)
    {
      v97 = v19;
      v98 = v21;
      do
      {
        v105 = a1;
        v106 = a2;
        sub_37A80(a2, v19, type metadata accessor for ViewModelPollVote);
        v104 = a4;
        sub_37A80(a4, v108, type metadata accessor for ViewModelPollVote);
        v27 = sub_47564();
        v103 = &v92;
        v107 = *(v27 - 8);
        v28 = *(v107 + 64);
        __chkstk_darwin(v27, v29);
        v30 = *(v109 + 24);
        v31 = sub_54A4(&qword_62138, &qword_4AC00);
        v101 = &v92;
        v32 = *(*(v31 - 8) + 64);
        __chkstk_darwin(v31 - 8, v33);
        v35 = &v92 - v34;
        v36 = v107;
        sub_6128(&v19[v30], &v92 - v34, &qword_62138, &qword_4AC00);
        v37 = *(v36 + 48);
        v38 = v37(v35, 1, v27);
        v102 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v38 == 1)
        {
          sub_47504();
          v39 = v37(v35, 1, v27);
          v41 = v27;
          if (v39 != 1)
          {
            v39 = sub_60C8(v35, &qword_62138, &qword_4AC00);
          }
        }

        else
        {
          v39 = (*(v36 + 32))(&v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v27);
          v41 = v27;
        }

        v42 = __chkstk_darwin(v39, v40);
        v43 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
        __chkstk_darwin(v42, v44);
        v45 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_6128(v108 + v46, v45, &qword_62138, &qword_4AC00);
        if (v37(v45, 1, v41) == 1)
        {
          sub_47504();
          v47 = v37(v45, 1, v41);
          a2 = v106;
          v48 = v107;
          v49 = v41;
          v50 = v102;
          if (v47 != 1)
          {
            sub_60C8(v45, &qword_62138, &qword_4AC00);
          }
        }

        else
        {
          v48 = v107;
          (*(v107 + 32))(&v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v41);
          a2 = v106;
          v49 = v41;
          v50 = v102;
        }

        v51 = sub_47534();
        v52 = *(v48 + 8);
        v52(v43, v49);
        v52(v50, v49);
        sub_6C50(v108);
        v19 = v97;
        sub_6C50(v97);
        if (v51)
        {
          v53 = v98;
          a4 = v104;
          v54 = v105;
          if (v105 < a2 || v105 >= a2 + v98)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v105 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v53;
        }

        else
        {
          v54 = v105;
          v53 = v98;
          a4 = v104 + v98;
          if (v105 < v104 || v105 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v105 != v104)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v111 = a4;
        }

        a1 = v54 + v53;
        v112 = a1;
      }

      while (a4 < v99 && a2 < v100);
    }
  }

LABEL_76:
  sub_36E80(&v112, &v111, &v110);
  return 1;
}

uint64_t sub_36DE0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_36E6C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_36E80(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ViewModelPollVote(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_36F78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = _swiftEmptyArrayStorage;
  v5 = (a3 >> 1) - a2;
  if (a3 >> 1 != a2)
  {
    v7 = 0;
    v6 = 0;
    if (a2 > v3)
    {
      v3 = a2;
    }

    v8 = v3 - a2;
    v9 = (a1 + 24 * a2 + 8);
    v10 = &_swiftEmptyArrayStorage[4];
    v27 = v3 - a2;
    v28 = (a3 >> 1) - a2;
    while (1)
    {
      if (v8 == v7)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        return;
      }

      if (__OFADD__(v7, 1))
      {
        goto LABEL_34;
      }

      v12 = *(v9 - 1);
      v11 = *v9;
      v13 = v9[1];
      if (v6)
      {

        sub_37B40(v13);
        v14 = __OFSUB__(v6--, 1);
        if (v14)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      v15 = v4[3];
      if (((v15 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_36;
      }

      v29 = *(v9 - 1);
      v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
      if (v16 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16;
      }

      sub_54A4(&qword_63AF8, &qword_4CBB8);
      v18 = swift_allocObject();
      v19 = j__malloc_size(v18);
      v20 = v19 - 32;
      if (v19 < 32)
      {
        v20 = v19 - 1;
      }

      v21 = v20 >> 5;
      v18[2] = v17;
      v18[3] = 2 * v21;
      v22 = v4[3] >> 1;
      v10 = &v18[4 * v22 + 4];
      v23 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v22;
      if (!v4[2])
      {

        sub_37B40(v13);
        goto LABEL_27;
      }

      if (v18 < v4 || v18 + 4 >= &v4[4 * v22 + 4])
      {

        sub_37B40(v13);
      }

      else
      {

        sub_37B40(v13);
        if (v18 == v4)
        {
          goto LABEL_26;
        }
      }

      memmove(v18 + 4, v4 + 4, 32 * v22);
LABEL_26:
      v4[2] = 0;
LABEL_27:

      v4 = v18;
      v8 = v27;
      v5 = v28;
      v12 = v29;
      v14 = __OFSUB__(v23, 1);
      v6 = v23 - 1;
      if (v14)
      {
        goto LABEL_35;
      }

LABEL_28:
      *v10 = v7;
      v10[1] = v12;
      v10[2] = v11;
      v10[3] = v13;
      v10 += 4;
      ++v7;
      v9 += 3;
      if (v5 == v7)
      {
        goto LABEL_29;
      }
    }
  }

  v6 = 0;
LABEL_29:
  v24 = v4[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v14 = __OFSUB__(v25, v6);
    v26 = v25 - v6;
    if (v14)
    {
      goto LABEL_37;
    }

    v4[2] = v26;
  }
}

uint64_t sub_37194()
{
  v1 = (_s15AvatarStackViewVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_54A4(&qword_62230, "v9");
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  sub_EB40(*(v0 + v3 + v1[13]), *(v0 + v3 + v1[13] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_372C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  _s15AvatarStackViewVMa(0);

  return sub_331E4(a1, a2, a3, a4, a5);
}

uint64_t sub_37360()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_373CC()
{
  result = qword_63A28;
  if (!qword_63A28)
  {
    sub_A36C(&qword_63A18, &qword_4CAA0);
    sub_37458();
    sub_376B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A28);
  }

  return result;
}

unint64_t sub_37458()
{
  result = qword_63A30;
  if (!qword_63A30)
  {
    sub_A36C(&qword_63A38, &qword_4CAA8);
    sub_37510();
    sub_EAF0(&qword_63A78, &qword_63A80, &qword_4CAC8, &protocol conformance descriptor for _MatchedGeometryEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A30);
  }

  return result;
}

unint64_t sub_37510()
{
  result = qword_63A40;
  if (!qword_63A40)
  {
    sub_A36C(&qword_63A48, &qword_4CAB0);
    sub_375C8();
    sub_EAF0(&qword_62870, &qword_62878, &qword_4B410, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A40);
  }

  return result;
}

unint64_t sub_375C8()
{
  result = qword_63A50;
  if (!qword_63A50)
  {
    sub_A36C(&qword_63A58, &qword_4CAB8);
    sub_37AF8(&qword_63A60, _s11EmptyCircleVMa, &unk_4B394);
    sub_EAF0(&qword_63A68, &qword_63A70, &qword_4CAC0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A50);
  }

  return result;
}

unint64_t sub_376B0()
{
  result = qword_63A88;
  if (!qword_63A88)
  {
    sub_A36C(&qword_63A90, &qword_4CAD0);
    sub_37768();
    sub_EAF0(&qword_63A78, &qword_63A80, &qword_4CAC8, &protocol conformance descriptor for _MatchedGeometryEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A88);
  }

  return result;
}

unint64_t sub_37768()
{
  result = qword_63A98;
  if (!qword_63A98)
  {
    sub_A36C(&qword_63AA0, &qword_4CAD8);
    sub_37820();
    sub_EAF0(&qword_638B0, &qword_638B8, &qword_4C870, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63A98);
  }

  return result;
}

unint64_t sub_37820()
{
  result = qword_63AA8;
  if (!qword_63AA8)
  {
    sub_A36C(&qword_63AB0, &qword_4CAE0);
    sub_378AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63AA8);
  }

  return result;
}

unint64_t sub_378AC()
{
  result = qword_63AB8;
  if (!qword_63AB8)
  {
    sub_A36C(&qword_63AC0, &qword_4CAE8);
    sub_37964();
    sub_EAF0(&qword_62870, &qword_62878, &qword_4B410, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63AB8);
  }

  return result;
}

unint64_t sub_37964()
{
  result = qword_63AC8;
  if (!qword_63AC8)
  {
    sub_A36C(&qword_63AD0, &qword_4CAF0);
    sub_37A1C();
    sub_EAF0(&qword_63A68, &qword_63A70, &qword_4CAC0, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63AC8);
  }

  return result;
}

unint64_t sub_37A1C()
{
  result = qword_63AD8;
  if (!qword_63AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63AD8);
  }

  return result;
}

uint64_t sub_37A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_37AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_37B40(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_37B50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_37BC4()
{
  result = qword_63B00;
  if (!qword_63B00)
  {
    sub_A36C(&qword_63B08, &qword_4CBE8);
    sub_EAF0(&qword_63B10, &qword_63B18, &unk_4CBF0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63B00);
  }

  return result;
}

uint64_t sub_37C7C()
{
  v0 = sub_47814();
  sub_5F0C(v0, qword_64380);
  sub_5ED4(v0, qword_64380);
  sub_477E4();
  return sub_47804();
}

id sub_37CF0()
{
  sub_54A4(&qword_63C10, &qword_4CF60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_4CC00;
  v1 = NSAdaptiveImageGlyphAttributeName;
  *(v0 + 32) = NSAdaptiveImageGlyphAttributeName;
  v2 = qword_61D08;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_643A0;
  *(v0 + 40) = qword_643A0;
  v5 = qword_61D10;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_643A8;
  *(v0 + 48) = qword_643A8;
  v8 = qword_61D18;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_643B0;
  *(v0 + 56) = qword_643B0;
  v11 = qword_61D20;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = qword_643B8;
  *(v0 + 64) = qword_643B8;
  qword_64398 = v0;

  return v13;
}

void sub_37E64(void *a1)
{
  v2 = v1;
  v3 = a1;
  if ([a1 ck_containsIMTextEffect])
  {
    if (qword_61CF8 != -1)
    {
      swift_once();
    }

    v4 = sub_47814();
    sub_5ED4(v4, qword_64380);
    v5 = sub_477F4();
    v6 = sub_48624();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "Setting a poll option string that contains display attributes; did you mean to do this?", v7, 2u);
    }
  }

  if (qword_61D00 != -1)
  {
    swift_once();
  }

  type metadata accessor for Key(0);
  v8 = sub_48534();
  v9 = [v3 __ck_attributedStringByRemovingAllAttributesExcept:v8];

  if (!v9)
  {
    v10 = [v3 string];
    if (!v10)
    {
      sub_48414();
      v10 = sub_483D4();
    }

    v9 = [objc_allocWithZone(NSAttributedString) initWithString:v10];

    v3 = v10;
  }

  v11 = *(v2 + 16);
  *(v2 + 16) = v9;
}

void sub_38050()
{
  v1 = IMTextStyleAttributeNameFromStyle();
  if (v1)
  {
    v2 = v1;
    if ([v0 objectForKey:v2])
    {
      sub_48734();
      swift_unknownObjectRelease();
      sub_383D8(v4);
      [v0 removeObjectForKey:v2];
    }

    else
    {
      memset(v4, 0, sizeof(v4));
      sub_383D8(v4);
      v3 = sub_485F4();
      [v0 setObject:v3 forKey:v2];
    }
  }
}

uint64_t sub_38128()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t sub_381E4()
{
  sub_48794(37);

  v1 = *(v0 + 16);
  v2 = [v1 description];
  v3 = sub_48414();
  v5 = v4;

  v7._countAndFlagsBits = v3;
  v7._object = v5;
  sub_48484(v7);

  return 0xD000000000000023;
}

uint64_t sub_382F4(uint64_t a1)
{
  type metadata accessor for Key(0);
  sub_544C();
  v2 = sub_48374();
  v3 = [v2 mutableCopy];
  if (v3)
  {
    v4 = v3;
    sub_38050();
    sub_48384();
  }

  return a1;
}

uint64_t sub_383D8(uint64_t a1)
{
  v2 = sub_54A4(&qword_62128, &qword_4AA80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_38440()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643C0 = result;
  return result;
}

uint64_t sub_384DC()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643C8 = result;
  return result;
}

uint64_t sub_38578()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643D0 = result;
  return result;
}

uint64_t sub_38614()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643D8 = result;
  return result;
}

uint64_t sub_386B0()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643E0 = result;
  return result;
}

uint64_t sub_3874C()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643E8 = result;
  return result;
}

uint64_t sub_387E8()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643F0 = result;
  return result;
}

uint64_t sub_38884()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_643F8 = result;
  return result;
}

uint64_t sub_38920()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_64400 = result;
  return result;
}

uint64_t sub_389BC()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_64408 = result;
  return result;
}

uint64_t sub_38A58()
{
  v0 = sub_483D4();
  v1 = [objc_opt_self() bundleWithIdentifier:v0];

  result = sub_480C4();
  qword_64410 = result;
  return result;
}

uint64_t sub_38AF4(char a1)
{
  v2 = type metadata accessor for BlendedColor(0);
  v4 = __chkstk_darwin(v2, v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - v8;
  if (a1)
  {
    if (qword_61D30 != -1)
    {
      swift_once();
    }

    v10 = &qword_643C8;
  }

  else
  {
    if (qword_61D28 != -1)
    {
      swift_once();
    }

    v10 = &qword_643C0;
  }

  v11 = *v10;

  v12 = v2[6];
  v13 = enum case for BlendMode.normal(_:);
  v14 = sub_48304();
  v15 = *(v14 - 8);
  (*(v15 + 104))(&v9[v12], v13, v14);
  (*(v15 + 56))(&v9[v12], 0, 1, v14);
  sub_38FB4(&v9[v12], &v9[v2[5]]);
  v16 = v2[7];
  *&v9[v16] = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *v9 = v11;
  sub_3902C(v9, v6);
  sub_39090();
  v17 = sub_47914();
  sub_390E8(v9);
  return v17;
}

uint64_t sub_38D20(char a1, char a2, char a3)
{
  v6 = type metadata accessor for BlendedColor(0);
  v8 = __chkstk_darwin(v6, v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v8, v11);
  v14 = (&v26 - v13);
  if (a3)
  {
    if (a1)
    {
      if (qword_61D60 != -1)
      {
        swift_once();
      }
    }

    else
    {
      v15 = sub_48064();
    }

    v27 = v15;
    return sub_47914();
  }

  if ((a1 & 1) == 0)
  {
    v27 = sub_38AF4(a2 & 1);
    return sub_47914();
  }

  if (qword_61D48 != -1)
  {
    v25 = v12;
    swift_once();
    v12 = v25;
  }

  v16 = qword_643E0;
  v17 = *(v12 + 24);
  v18 = enum case for BlendMode.normal(_:);
  v19 = v12;
  v20 = sub_48304();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v14 + v17, v18, v20);
  (*(v21 + 56))(v14 + v17, 0, 1, v20);
  sub_38FB4(v14 + v17, v14 + *(v19 + 20));
  v22 = *(v19 + 28);
  *(v14 + v22) = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *v14 = v16;
  sub_3902C(v14, v10);
  sub_39090();

  v23 = sub_47914();
  sub_390E8(v14);
  return v23;
}

uint64_t sub_38FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62928, &qword_4B780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3902C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BlendedColor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_39090()
{
  result = qword_63C18;
  if (!qword_63C18)
  {
    type metadata accessor for BlendedColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63C18);
  }

  return result;
}

uint64_t sub_390E8(uint64_t a1)
{
  v2 = type metadata accessor for BlendedColor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_39144(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v35 = a1;
  v36 = a2;
  v5 = *(a3 + 16);
  v39 = sub_473E4();
  result = __chkstk_darwin(v39, v6);
  v38 = v9;
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v5;
  if (v5)
  {
    v11 = 0;
    v28 = (v8 + 8);
    v32 = (v8 + 32);
    v33 = v8 + 16;
    v37 = _swiftEmptyArrayStorage;
    v27 = v4;
    while (v11 < *(v4 + 16))
    {
      v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v16 = *(v8 + 72);
      v17 = v8;
      (*(v8 + 16))(v10, v4 + v15 + v16 * v11, v39);
      v18 = v35(v10);
      if (v3)
      {
        (*v28)(v10, v39);

        goto LABEL_15;
      }

      if (v18)
      {
        v30 = &v26;
        v31 = &v26;
        __chkstk_darwin(v18, v19);
        v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        v29 = *v32;
        v29(v21, v10, v39);
        v22 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_220CC(0, v22[2] + 1, 1);
          v22 = v40;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          sub_220CC((v24 > 1), v25 + 1, 1);
          v22 = v40;
        }

        v22[2] = v25 + 1;
        v37 = v22;
        v12 = (v29)(v22 + v15 + v25 * v16, v21, v39);
        v4 = v27;
      }

      else
      {
        v12 = (*v28)(v10, v39);
      }

      ++v11;
      result = __chkstk_darwin(v12, v13);
      v10 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      v8 = v17;
      if (v34 == v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_15:

    return v37;
  }

  return result;
}

uint64_t sub_39454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_54A4(&qword_62B80, &qword_4BC40);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_3DB20(a3, v26 - v11);
  v13 = sub_485E4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_60C8(v12, &qword_62B80, &qword_4BC40);
  }

  else
  {
    sub_485D4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_48594();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_48444() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_60C8(a3, &qword_62B80, &qword_4BC40);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_60C8(a3, &qword_62B80, &qword_4BC40);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_39744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_54A4(&qword_62B80, &qword_4BC40);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v26 - v11;
  sub_3DB20(a3, v26 - v11);
  v13 = sub_485E4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_60C8(v12, &qword_62B80, &qword_4BC40);
  }

  else
  {
    sub_485D4();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_48594();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_48444() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_54A4(&qword_63D40, &qword_4CD40);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_60C8(a3, &qword_62B80, &qword_4BC40);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_60C8(a3, &qword_62B80, &qword_4BC40);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_54A4(&qword_63D40, &qword_4CD40);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id sub_39A48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v92 = a4;
  v91 = a3;
  v6 = sub_474F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v10 = sub_54A4(&qword_63D30, &qword_4CD10);
  __chkstk_darwin(v10 - 8, v11);
  v13 = v82 - v12;
  sub_54A4(&qword_63D50, &qword_4CD58);
  sub_47704();
  v90 = v8;
  v86 = a2;
  if ((*(v7 + 48))(v13, 1, v6) == 1)
  {
    sub_60C8(v13, &qword_63D30, &qword_4CD10);
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v14 = sub_47814();
    sub_5ED4(v14, qword_64418);
    v15 = sub_477F4();
    v16 = sub_48624();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_0, v15, v16, "Could not create poll URL", v17, 2u);
    }

    return 0;
  }

  else
  {
    v88 = v7;
    v89 = v6;
    v19 = (*(v7 + 32))(v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v6);
    v84 = v82;
    __chkstk_darwin(v19, v20);
    v22 = v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_54A4(&qword_626C8, &qword_4B2B0);
    sub_473E4();
    *(swift_allocObject() + 16) = xmmword_4C610;
    sub_473B4();

    v23 = a1;
    v24 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = *(sub_476B4() + 16);

    v93[0] = v25;
    sub_48854();
    sub_473B4();

    v87 = v22;
    sub_474E4();

    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v26 = sub_47814();
    v27 = sub_5ED4(v26, qword_64418);
    v28 = sub_476F4();
    v83 = v82;
    v29 = *(v28 - 8);
    __chkstk_darwin(v28, v30);
    v32 = v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v23, v28);
    v33 = sub_477F4();
    v34 = sub_48604();
    v35 = os_log_type_enabled(v33, v34);
    v85 = v24;
    if (v35)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v93[0] = v37;
      *v36 = 136315138;
      sub_476B4();
      sub_47674();
      v38 = sub_48554();
      v82[1] = v27;
      v39 = v38;
      v41 = v40;

      (*(v29 + 8))(v32, v28);
      v42 = sub_3DD80(v39, v41, v93);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_0, v33, v34, "pollDef: %s", v36, 0xCu);
      sub_6020(v37);
    }

    else
    {

      v43 = (*(v29 + 8))(v32, v28);
    }

    __chkstk_darwin(v43, v44);
    v46 = v82 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    v47 = v88;
    v48 = v89;
    (*(v88 + 16))(v46, v87, v89);
    v49 = sub_477F4();
    v50 = sub_48604();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v83 = v82;
      v52 = v51;
      v53 = swift_slowAlloc();
      v93[0] = v53;
      *v52 = 136315138;
      v54 = sub_474B4();
      v56 = v55;
      v90 = *(v47 + 8);
      v90(v46, v48);
      v57 = sub_3DD80(v54, v56, v93);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_0, v49, v50, "Created Poll Data: %s", v52, 0xCu);
      sub_6020(v53);
    }

    else
    {

      v90 = *(v47 + 8);
      v90(v46, v48);
    }

    v58 = v92;
    v59 = sub_477F4();
    v60 = sub_48604();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v93[0] = v62;
      *v61 = 136315138;
      v63 = 0xE700000000000000;
      v64 = 0x6E776F6E6B6E55;
      v65 = 0xE900000000000075;
      v66 = 0x6E654D20646E6553;
      if (v58 != 2)
      {
        v66 = 0xD000000000000013;
        v65 = 0x8000000000049B50;
      }

      if (v58)
      {
        v64 = 0x6C5020736C6C6F50;
        v63 = 0xEC0000006E696775;
      }

      if (v58 <= 1u)
      {
        v67 = v64;
      }

      else
      {
        v67 = v66;
      }

      if (v58 <= 1u)
      {
        v68 = v63;
      }

      else
      {
        v68 = v65;
      }

      v69 = sub_3DD80(v67, v68, v93);

      *(v61 + 4) = v69;
      _os_log_impl(&dword_0, v59, v60, "Source of message: %s", v61, 0xCu);
      sub_6020(v62);
    }

    v70 = [objc_allocWithZone(MSMessage) initWithSession:v86];
    if (qword_61CD0 != -1)
    {
      swift_once();
    }

    sub_47494();
    v71 = sub_483D4();

    [v70 setSummaryText:v71];

    v72 = v87;
    v73 = sub_474C4();
    [v70 setURL:v73];

    [v70 setRequiresValidation:1];
    v74 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    sub_47494();
    v75 = sub_483D4();

    [v74 setCaption:v75];

    v76 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v74];
    [v76 setLiveEditableInEntryView:v91 & 1];
    sub_54A4(&qword_626A0, &qword_4B288);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_4A9C0;
    *(v77 + 32) = sub_48414();
    *(v77 + 40) = v78;
    v79 = sub_48534();

    [v76 setRequiredCapabilities:v79];

    [v76 setSendAlternateLayoutAsText:1];
    [v70 setLayout:v76];

    v80 = v89;
    v81 = v90;
    v90(v72, v89);
    v81(v85, v80);
    return v70;
  }
}

uint64_t sub_3A614(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_474F4();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v11 = &v151[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [a3 URL];
  if (!v12)
  {
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v23 = sub_47814();
    sub_5ED4(v23, qword_64418);
    v24 = sub_477F4();
    v25 = sub_48624();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_0, v24, v25, "URL not present in message", v26, 2u);
    }

    sub_3F0F0();
    swift_allocError();
    return swift_willThrow();
  }

  v170 = v3;
  v171 = v9;
  v168 = a2;
  v169 = a3;
  v167 = a1;
  v13 = v12;
  sub_474D4();

  v14 = sub_47434();
  v173 = v151;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16);
  v18 = &v151[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_54A4(&qword_63D68, &qword_4CD68);
  __chkstk_darwin(v19 - 8, v20);
  v22 = &v151[-v21];
  sub_47414();
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    sub_60C8(v22, &qword_63D68, &qword_4CD68);
  }

  else
  {
    (*(v15 + 32))(v18, v22, v14);
    v28 = sub_473F4();
    if (v28)
    {
      v29 = v28;
      v165 = v18;
      v166 = v8;
      v163 = v15;
      v164 = v14;
      v160 = v11;
      v162 = v7;
      v30 = sub_473E4();
      v159 = v151;
      v8 = *(v30 - 8);
      v32 = __chkstk_darwin(v30, v31);
      v158 = &v151[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v161 = v151;
      v179 = v33;
      v35 = __chkstk_darwin(v32, v34);
      v157 = &v151[-v36];
      v175 = *(v29 + 16);
      if (!v175)
      {
LABEL_19:

        v46 = v163;
        v45 = v164;
        if (qword_61D80 != -1)
        {
LABEL_81:
          swift_once();
        }

        v47 = sub_47814();
        sub_5ED4(v47, qword_64418);
        v48 = sub_477F4();
        v49 = sub_48624();
        v50 = os_log_type_enabled(v48, v49);
        v51 = v166;
        if (v50)
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_0, v48, v49, "Missing message source", v52, 2u);
        }

        sub_3F0F0();
        swift_allocError();
        swift_willThrow();
        (*(v46 + 8))(v165, v45);
        return (*(v51 + 8))(v160, v162);
      }

      v11 = 0;
      v176 = (v8 + 8);
      v177 = v8 + 16;
      v178 = v30;
      while (1)
      {
        if (v11 >= *(v29 + 16))
        {
          __break(1u);
          goto LABEL_79;
        }

        v7 = v151;
        v37 = v29;
        v174 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v38 = *(v8 + 72);
        __chkstk_darwin(v35, v29 + v174 + v38 * v11);
        v40 = &v151[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
        v41 = *(v8 + 16);
        v41(v40);
        if (sub_473C4() == 6517363 && v42 == 0xE300000000000000)
        {
          break;
        }

        v44 = sub_48874();

        if (v44)
        {
          goto LABEL_29;
        }

        ++v11;
        v35 = (*v176)(v40, v178);
        v29 = v37;
        if (v175 == v11)
        {
          goto LABEL_19;
        }
      }

LABEL_29:
      v57 = *(v8 + 32);
      v58 = v157;
      v59 = v178;
      v57(v157, v40, v178);
      v157 = (v8 + 32);
      v156 = v57;
      v57(v158, v58, v59);
      v60 = sub_473D4();
      v63 = v163;
      v62 = v164;
      v64 = v166;
      if (v61)
      {
        v65 = v60;
        v66 = v61;

        v155 = v65;
        v67 = sub_3FFC8(v65, v66);
        if (v67 != 4)
        {
          v152 = v67;
          if (qword_61D80 != -1)
          {
            swift_once();
          }

          v72 = sub_47814();
          v73 = sub_5ED4(v72, qword_64418);

          v161 = v73;
          v74 = sub_477F4();
          v75 = sub_48604();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            LODWORD(v154) = v75;
            v77 = v76;
            v78 = swift_slowAlloc();
            v180 = v78;
            *v77 = 136315138;
            v79 = sub_3DD80(v155, v66, &v180);

            *(v77 + 4) = v79;
            _os_log_impl(&dword_0, v74, v154, "query value: %s", v77, 0xCu);
            sub_6020(v78);
          }

          else
          {
          }

          v46 = v178;
          v80 = v37;
          __chkstk_darwin(v81, v82);
          *&v151[-16] = v158;

          v83 = v172;
          v172 = sub_39144(sub_40014, &v151[-32], v37);
          v153 = v83;
          v155 = v151;
          v85 = __chkstk_darwin(v172, v84);
          v154 = &v151[-((v87 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v45 = 0;
          v88 = v37 + v174;
          while (1)
          {
            if (v45 >= *(v80 + 16))
            {
              __break(1u);
              goto LABEL_81;
            }

            __chkstk_darwin(v85, v86);
            v90 = &v151[-((v89 + 15) & 0xFFFFFFFFFFFFFFF0)];
            (v41)(v90, v88, v46);
            if (sub_473C4() == 99 && v91 == 0xE100000000000000)
            {

              goto LABEL_53;
            }

            v93 = sub_48874();

            if (v93)
            {
              break;
            }

            ++v45;
            v94 = *v176;
            v46 = v178;
            v85 = (*v176)(v90, v178);
            v88 += v38;
            v80 = v37;
            if (v175 == v45)
            {

              v97 = v156;
              goto LABEL_57;
            }
          }

          v46 = v178;
LABEL_53:

          v98 = v154;
          v97 = v156;
          v156(v154, v90, v46);
          v99 = sub_473D4();
          if (v100)
          {
            v101 = sub_3CA54(v99, v100);
            v103 = v102;
            v94 = *v176;
            v95 = (*v176)(v98, v46);
            if ((v103 & 1) == 0)
            {
              goto LABEL_62;
            }
          }

          else
          {
            v94 = *v176;
            v95 = (*v176)(v98, v46);
          }

LABEL_57:
          __chkstk_darwin(v95, v96);
          v105 = &v151[-((v104 + 15) & 0xFFFFFFFFFFFFFFF0)];
          sub_473B4();
          v106 = v172;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v106 = sub_10DE0(0, v106[2] + 1, 1, v106);
          }

          v108 = v106[2];
          v107 = v106[3];
          if (v108 >= v107 >> 1)
          {
            v106 = sub_10DE0((v107 > 1), v108 + 1, 1, v106);
          }

          v106[2] = v108 + 1;
          v172 = v106;
          v97(v106 + v174 + v108 * v38, v105, v46);
          v101 = 0;
LABEL_62:
          v109 = sub_477F4();
          v110 = sub_48604();
          if (os_log_type_enabled(v109, v110))
          {
            v111 = swift_slowAlloc();
            *v111 = 134217984;
            *(v111 + 4) = v101;
            _os_log_impl(&dword_0, v109, v110, "Option count: %ld", v111, 0xCu);
          }

          v112 = sub_47404();
          __chkstk_darwin(v112, v113);
          v115 = &v151[-((v114 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v116 = sub_54A4(&qword_63D30, &qword_4CD10);
          __chkstk_darwin(v116 - 8, v117);
          v119 = &v151[-v118];
          sub_47424();
          v120 = v166;
          v121 = v162;
          if ((*(v166 + 48))(v119, 1, v162) == 1)
          {
            sub_60C8(v119, &qword_63D30, &qword_4CD10);
            v122 = sub_477F4();
            v123 = sub_48624();
            if (os_log_type_enabled(v122, v123))
            {
              v124 = swift_slowAlloc();
              *v124 = 0;
              _os_log_impl(&dword_0, v122, v123, "URL badly formed in message", v124, 2u);
            }

            sub_3F0F0();
            swift_allocError();
            swift_willThrow();
            (*(v163 + 8))(v165, v164);
            (*(v166 + 8))(v160, v162);
            return v94(v158, v178);
          }

          (*(v120 + 32))(v115, v119, v121);
          v125 = sub_476F4();
          v179 = v151;
          v126 = *(v125 - 8);
          __chkstk_darwin(v125, v127);
          v129 = &v151[-((v128 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v130 = sub_54A4(&qword_63D70, &qword_4CD70);
          __chkstk_darwin(v130 - 8, v131);
          v133 = &v151[-v132];
          sub_54A4(&qword_63D50, &qword_4CD58);
          v134 = v153;
          sub_47714();
          if (v134)
          {

            (*(v126 + 56))(v133, 1, 1, v125);
LABEL_71:
            sub_60C8(v133, &qword_63D70, &qword_4CD70);
            v135 = sub_477F4();
            v136 = sub_48624();
            if (os_log_type_enabled(v135, v136))
            {
              v137 = swift_slowAlloc();
              *v137 = 0;
              _os_log_impl(&dword_0, v135, v136, "Could not decode poll definition from URL", v137, 2u);
            }

            sub_3F0F0();
            swift_allocError();
            swift_willThrow();
            v138 = *(v166 + 8);
            v139 = v162;
            v138(v115, v162);
            (*(v163 + 8))(v165, v164);
            v138(v160, v139);
            return v94(v158, v178);
          }

          v177 = 0;
          if ((*(v126 + 48))(v133, 1, v125) == 1)
          {
            goto LABEL_71;
          }

          v140 = *(v126 + 32);
          v174 = v126 + 32;
          v172 = v140;
          (v140)(v129, v133, v125);
          v141 = sub_476A4();
          v175 = v151;
          v171 = *(v141 - 8);
          __chkstk_darwin(v141, v142);
          v144 = &v151[-((v143 + 15) & 0xFFFFFFFFFFFFFFF0)];
          v145 = v177;
          sub_3CDD0(v169, v144);
          if (v145)
          {
            (*(v126 + 8))(v129, v125);
            v146 = *(v166 + 8);
            v147 = v162;
            v146(v115, v162);
            (*(v163 + 8))(v165, v164);
            v146(v160, v147);
            return v94(v158, v178);
          }

          v177 = v141;
          v148 = *(v166 + 8);
          v149 = v115;
          v150 = v162;
          v148(v149, v162);
          (*(v163 + 8))(v165, v164);
          v148(v160, v150);
          (v172)(v167, v129, v125);
          (*(v171 + 32))(v168, v144, v177);
          v94(v158, v178);
          return v152;
        }
      }

      if (qword_61D80 != -1)
      {
        swift_once();
      }

      v68 = sub_47814();
      sub_5ED4(v68, qword_64418);
      v69 = sub_477F4();
      v70 = sub_48624();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_0, v69, v70, "Incorrect source parameter type", v71, 2u);
      }

      sub_3F0F0();
      swift_allocError();
      swift_willThrow();
      (*(v63 + 8))(v165, v62);
      (*(v64 + 8))(v160, v162);
      return (*v176)(v158, v178);
    }

    (*(v15 + 8))(v18, v14);
  }

  if (qword_61D80 != -1)
  {
LABEL_79:
    swift_once();
  }

  v53 = sub_47814();
  sub_5ED4(v53, qword_64418);
  v54 = sub_477F4();
  v55 = sub_48624();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_0, v54, v55, "No components", v56, 2u);
  }

  sub_3F0F0();
  swift_allocError();
  swift_willThrow();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_3BB14()
{
  v0 = sub_47814();
  sub_5F0C(v0, qword_64418);
  sub_5ED4(v0, qword_64418);
  return sub_47804();
}

void sub_3BB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_39A48(a1, a2, 1, a3);
  if (v5)
  {
    v13 = v5;
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v6 = sub_47814();
    sub_5ED4(v6, qword_64418);
    v7 = sub_477F4();
    v8 = sub_48604();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "Updating poll in entry view", v9, 2u);
    }

    v10 = *(v4 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation);
    v11 = v13;
    if (v10)
    {
      v12 = v10;
      [v12 insertMessage:v13 completionHandler:0];

      v11 = v13;
    }
  }
}

void sub_3BCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_54A4(&qword_62B80, &qword_4BC40);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v36 - v8;
  v10 = sub_474F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_54A4(&qword_63D30, &qword_4CD10);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v36 - v17;
  sub_54A4(&qword_63D38, &qword_4CD18);
  sub_47704();
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_60C8(v18, &qword_63D30, &qword_4CD10);
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v19 = sub_47814();
    sub_5ED4(v19, qword_64418);
    v20 = sub_477F4();
    v21 = sub_48624();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "Could not create votes URL", v22, 2u);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v23 = sub_47564();
    v37 = a3;
    v38 = &v36;
    v24 = *(v23 - 8);
    __chkstk_darwin(v23, v25);
    v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_47554();
    v28 = objc_allocWithZone(_MSMessageCustomAcknowledgement);
    v29 = sub_47514();
    v30 = [v28 initWithSession:v37 isFromMe:1 time:v29];

    (*(v24 + 8))(v27, v23);
    v31 = sub_474C4();
    [v30 setURL:v31];

    [v30 setIsFromMe:1];
    v32 = sub_485E4();
    (*(*(v32 - 8) + 56))(v9, 1, 1, v32);
    sub_485B4();

    v33 = v30;
    v34 = sub_485A4();
    v35 = swift_allocObject();
    v35[2] = v34;
    v35[3] = &protocol witness table for MainActor;
    v35[4] = v4;
    v35[5] = v33;
    sub_39744(0, 0, v9, &unk_4CD28, v35);

    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_3C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_485B4();
  v5[21] = sub_485A4();
  v7 = sub_48594();
  v5[22] = v7;
  v5[23] = v6;

  return _swift_task_switch(sub_3C258, v7, v6);
}

uint64_t sub_3C258()
{
  v1 = *(v0[19] + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation);
  v0[24] = v1;
  if (v1)
  {
    v2 = v0[20];
    v0[2] = v0;
    v0[3] = sub_3C3D8;
    v3 = swift_continuation_init();
    v0[17] = sub_54A4(&qword_63D48, &qword_4CD50);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_3C60C;
    v0[13] = &unk_5EF20;
    v0[14] = v3;
    [v1 sendCustomAcknowledgement:v2 completionHandler:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v4 = v0[18];

    *v4 = 1;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_3C3D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_3C578;
  }

  else
  {
    v5 = sub_3C508;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_3C508()
{
  v1 = v0[24];
  v2 = v0[18];

  *v2 = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_3C578()
{
  v1 = v0[24];
  v2 = v0[18];

  swift_willThrow();

  *v2 = 1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_3C60C(uint64_t a1, void *a2)
{
  v3 = sub_6190((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_54A4(&qword_62BB0, &qword_4BCA0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_3C6B8()
{
  v1 = OBJC_IVAR____TtC13MessagesPolls14PollNetworking_definitionCodableHelper;
  v2 = sub_54A4(&qword_63D50, &qword_4CD58);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13MessagesPolls14PollNetworking_pollResponseCodableHelper;
  v4 = sub_54A4(&qword_63D38, &qword_4CD18);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for PollNetworking(uint64_t a1)
{
  result = qword_63C58;
  if (!qword_63C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_3C810(uint64_t a1)
{
  sub_3C8E4(319);
  if (v1 <= 0x3F)
  {
    sub_3C99C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_3C8E4(uint64_t a1)
{
  if (!qword_63C68)
  {
    sub_476F4();
    sub_400F0(&qword_62B88, &type metadata accessor for PollDefinition, &protocol conformance descriptor for PollDefinition);
    sub_400F0(&qword_62B90, &type metadata accessor for PollDefinition, &protocol conformance descriptor for PollDefinition);
    v1 = sub_47734();
    if (!v2)
    {
      atomic_store(v1, &qword_63C68);
    }
  }
}

void sub_3C99C(uint64_t a1)
{
  if (!qword_63C70)
  {
    sub_476A4();
    sub_400F0(&qword_62B98, &type metadata accessor for PollResponse, &protocol conformance descriptor for PollResponse);
    sub_400F0(&qword_62BA0, &type metadata accessor for PollResponse, &protocol conformance descriptor for PollResponse);
    v1 = sub_47734();
    if (!v2)
    {
      atomic_store(v1, &qword_63C70);
    }
  }
}

unint64_t sub_3CA54(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_487C4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_3E328(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

BOOL sub_3CD54(uint64_t a1, uint64_t a2)
{
  sub_473E4();
  sub_400F0(&qword_63D88, &type metadata accessor for URLQueryItem, &protocol conformance descriptor for URLQueryItem);
  return (sub_483C4() & 1) == 0;
}

uint64_t sub_3CDD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v110 = _swiftEmptyArrayStorage;
  v4 = [a1 customAcknowledgements];
  if (!v4)
  {
    return sub_47684();
  }

  v5 = v4;
  sub_40034();
  v6 = sub_48544();

  if (v6 >> 62)
  {
LABEL_40:
    v7 = sub_487E4();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  v67 = _swiftEmptyArrayStorage;
  if (!v7)
  {
LABEL_36:

    return sub_47684();
  }

  v8 = 0;
  v71 = OBJC_IVAR____TtC13MessagesPolls14PollNetworking_pollResponseCodableHelper;
  v74 = v6 & 0xC000000000000001;
  v73 = v6 & 0xFFFFFFFFFFFFFF8;
  v70 = v6 + 32;
  v72 = v6;
  v69 = v7;
  while (1)
  {
    if (v74)
    {
      v9 = sub_487A4();
    }

    else
    {
      if (v8 >= *(v73 + 16))
      {
        goto LABEL_39;
      }

      v9 = *(v70 + 8 * v8);
    }

    v86 = v9;
    v10 = __OFADD__(v8, 1);
    v11 = v8 + 1;
    if (v10)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v81 = v11;
    v12 = sub_474F4();
    v84 = *(v12 - 8);
    __chkstk_darwin(v12, v13);
    v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = [v86 URL];
    sub_474D4();

    v17 = sub_476A4();
    v82 = &v66;
    v18 = *(v17 - 8);
    __chkstk_darwin(v17, v19);
    v85 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = sub_54A4(&qword_63D80, &qword_4CD78);
    __chkstk_darwin(v21 - 8, v22);
    v24 = &v66 - v23;
    sub_54A4(&qword_63D38, &qword_4CD18);
    v83 = v15;
    sub_47714();
    if (v3)
    {

      (*(v18 + 56))(v24, 1, 1, v17);
      goto LABEL_30;
    }

    if ((*(v18 + 48))(v24, 1, v17) == 1)
    {
      break;
    }

    v79 = v18;
    v25 = *(v18 + 32);
    v80 = v17;
    v25(v85, v24, v17);
    v26 = sub_47694();
    v27 = *(v26 + 16);
    if (v27)
    {
      v76 = v12;
      v77 = &v66;
      v78 = 0;
      v109 = _swiftEmptyArrayStorage;
      sub_22074(0, v27, 0);
      v28 = v109;
      v29 = sub_47784();
      v30 = *(v29 - 8);
      v31 = *(v30 + 16);
      v30 += 16;
      v94 = v31;
      v32 = (*(v30 + 64) + 32) & ~*(v30 + 64);
      v75 = v26;
      v92 = v32;
      v93 = v30;
      v33 = v26 + v32;
      v34 = *(v30 + 48);
      v90 = *(v30 + 56);
      v91 = v34;
      v89 = (v30 - 8);
      v88 = (v30 + 16);
      v95 = v29;
      do
      {
        v107 = v28;
        v108 = v27;
        v105 = &v66;
        v35 = __chkstk_darwin(v29, v33);
        v104 = &v66 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        v103 = &v66;
        __chkstk_darwin(v35, v37);
        v39 = &v66 - v38;
        v106 = v40;
        v94(&v66 - v38);
        v41 = sub_47774();
        v101 = v42;
        v102 = v41;
        v43 = sub_47754();
        v98 = v44;
        v99 = v43;
        v45 = sub_54A4(&qword_62138, &qword_4AC00);
        v100 = &v66;
        v46 = *(*(v45 - 8) + 64);
        v48 = __chkstk_darwin(v45 - 8, v47);
        v49 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
        v97 = &v66;
        __chkstk_darwin(v48, v50);
        sub_47744();
        v51 = sub_47564();
        v52 = *(v51 - 8);
        v96 = *(v52 + 48);
        if (v96(&v66 - v49, 1, v51) == 1)
        {
          v53 = [v86 time];
          v87 = &v66;
          if (__chkstk_darwin(v53, v54))
          {
            sub_47544();

            v55 = 0;
          }

          else
          {
            v55 = 1;
          }

          (*(v52 + 56))(&v66 - v49, v55, 1, v51);
          sub_40080(&v66 - v49, &v66 - v49);
          if (v96(&v66 - v49, 1, v51) != 1)
          {
            sub_60C8(&v66 - v49, &qword_62138, &qword_4AC00);
          }
        }

        else
        {
          (*(v52 + 32))(&v66 - v49, &v66 - v49, v51);
          (*(v52 + 56))(&v66 - v49, 0, 1, v51);
        }

        v56 = v104;
        sub_47764();
        v57 = v95;
        (*v89)(v39, v95);
        v28 = v107;
        v109 = v107;
        v59 = v107[2];
        v58 = v107[3];
        if (v59 >= v58 >> 1)
        {
          sub_22074((v58 > 1), v59 + 1, 1);
          v28 = v109;
        }

        v28[2] = v59 + 1;
        v60 = v90;
        v29 = (*v88)(v28 + v92 + v59 * v90, v56, v57);
        v33 = v106 + v60;
        v27 = v108 - 1;
      }

      while (v108 != 1);

      v3 = v78;
      v12 = v76;
    }

    else
    {

      v28 = _swiftEmptyArrayStorage;
    }

    sub_21E74(v28);

    (*(v79 + 8))(v85, v80);
    (*(v84 + 8))(v83, v12);
    v8 = v81;
    v6 = v72;
    if (v81 == v69)
    {
      v67 = v110;
      goto LABEL_36;
    }
  }

LABEL_30:
  sub_60C8(v24, &qword_63D80, &qword_4CD78);
  if (qword_61D80 != -1)
  {
    swift_once();
  }

  v61 = sub_47814();
  sub_5ED4(v61, qword_64418);
  v62 = sub_477F4();
  v63 = sub_48624();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_0, v62, v63, "Could not parse data from poll votes", v64, 2u);
  }

  sub_3F0F0();
  swift_allocError();
  swift_willThrow();

  return (*(v84 + 8))(v83, v12);
}

Swift::Int sub_3D84C()
{
  sub_488D4();
  sub_48464();

  return sub_48904();
}

uint64_t sub_3D8A8(uint64_t a1)
{
  sub_48464();
}

Swift::Int sub_3D8E8(uint64_t a1)
{
  sub_488D4();
  sub_48464();

  return sub_48904();
}

unint64_t sub_3D940@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_3FFC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_3D98C()
{
  v1 = 0x6E776F6E6B6E55;
  v2 = 0x6E654D20646E6553;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x6C5020736C6C6F50;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_3DA18()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_3DA60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C43C;

  return sub_3C1BC(a1, v4, v5, v7, v6);
}

uint64_t sub_3DB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62B80, &qword_4BC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3DB90(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_3DC88;

  return v6(a1);
}

uint64_t sub_3DC88()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_3DD80(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3DE4C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_606C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_6020(v11);
  return v7;
}

unint64_t sub_3DE4C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_3DF58(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_487C4();
    a6 = v11;
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

void *sub_3DF58(uint64_t a1, unint64_t a2)
{
  v3 = sub_3DFA4(a1, a2);
  sub_3E0D4(&off_5DF78);
  return v3;
}

void *sub_3DFA4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_3E1C0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_487C4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_48494();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_3E1C0(v10, 0);
        result = sub_48784();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_3E0D4(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_3E234(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_3E1C0(uint64_t a1, uint64_t a2)
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

  sub_54A4(&qword_63D58, &qword_4CD60);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3E234(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_63D58, &qword_4CD60);
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

unsigned __int8 *sub_3E328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_484F4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_3E8B4(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_487C4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_3E8B4(uint64_t a1, unint64_t a2)
{
  v2 = sub_48504();
  v6 = sub_3E934(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_3E934(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_486F4();
    if (!v9 || (v10 = v9, v11 = sub_3E1C0(v9, 0), v12 = sub_3EA8C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_48454();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_48454();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_487C4();
LABEL_4:

  return sub_48454();
}

unint64_t sub_3EA8C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_3ECAC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_484C4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_487C4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_3ECAC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_484A4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_3ECAC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_484D4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_484B4();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_3ED28(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_3EE1C;

  return v5(v2 + 32);
}

uint64_t sub_3EE1C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_3EF30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C7CC;

  return sub_3ED28(a1, v4);
}

uint64_t sub_3EFE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3F020(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C43C;

  return sub_3ED28(a1, v4);
}

unint64_t sub_3F0F0()
{
  result = qword_63D60;
  if (!qword_63D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63D60);
  }

  return result;
}

unint64_t sub_3F144(void *a1)
{
  v3 = sub_474F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 URL];
  if (!v8)
  {
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v19 = sub_47814();
    sub_5ED4(v19, qword_64418);
    v20 = sub_477F4();
    v21 = sub_48624();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "URL not present in message", v22, 2u);
    }

    sub_3F0F0();
    swift_allocError();
    swift_willThrow();
    return v21;
  }

  v128 = v1;
  v9 = v8;
  sub_474D4();

  v10 = sub_47434();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_54A4(&qword_63D68, &qword_4CD68);
  __chkstk_darwin(v15 - 8, v16);
  v18 = &v113 - v17;
  sub_47414();
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_60C8(v18, &qword_63D68, &qword_4CD68);
    goto LABEL_25;
  }

  (*(v11 + 32))(v14, v18, v10);
  v23 = sub_473F4();
  if (!v23)
  {
    (*(v11 + 8))(v14, v10);
LABEL_25:
    if (qword_61D80 == -1)
    {
LABEL_26:
      v46 = sub_47814();
      sub_5ED4(v46, qword_64418);
      v47 = sub_477F4();
      v21 = sub_48624();
      if (os_log_type_enabled(v47, v21))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v47, v21, "No components", v48, 2u);
      }

      sub_3F0F0();
      swift_allocError();
      swift_willThrow();
      (*(v4 + 8))(v7, v3);
      return v21;
    }

LABEL_115:
    swift_once();
    goto LABEL_26;
  }

  v24 = v23;
  v126 = v3;
  v127 = v14;
  v121 = v10;
  v122 = v11;
  v123 = &v113;
  v124 = v7;
  v125 = v4;
  v25 = sub_473E4();
  v120 = &v113;
  v130 = *(v25 - 8);
  v27 = __chkstk_darwin(v25, v26);
  v135 = v28;
  v118 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = *(v24 + 16);
  if (!v131)
  {
LABEL_19:

    v37 = v124;
    v38 = v127;
    if (qword_61D80 != -1)
    {
      swift_once();
    }

    v39 = sub_47814();
    sub_5ED4(v39, qword_64418);
    v40 = sub_477F4();
    v21 = sub_48624();
    v41 = os_log_type_enabled(v40, v21);
    v43 = v125;
    v42 = v126;
    v44 = v122;
    if (v41)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v40, v21, "Missing poll count", v45, 2u);
      v38 = v127;
    }

    sub_3F0F0();
    swift_allocError();
    swift_willThrow();
    (*(v44 + 8))(v38, v121);
    (*(v43 + 8))(v37, v42);
    return v21;
  }

  v29 = 0;
  v119 = v130 + 8;
  v132 = (v130 + 8);
  v133 = v130 + 16;
  v134 = v25;
  while (1)
  {
    if (v29 >= *(v24 + 16))
    {
      __break(1u);
LABEL_114:
      __break(1u);
      goto LABEL_115;
    }

    v7 = ((*(v130 + 80) + 32) & ~*(v130 + 80));
    v30 = v24;
    v3 = *(v130 + 72);
    __chkstk_darwin(v27, &v7[v24 + v3 * v29]);
    v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = *(v33 + 16);
    v34(v32);
    if (sub_473C4() == 99 && v35 == 0xE100000000000000)
    {
      break;
    }

    v4 = sub_48874();

    if (v4)
    {
      goto LABEL_31;
    }

    ++v29;
    v27 = (*v132)(v32, v134);
    v24 = v30;
    if (v131 == v29)
    {
      goto LABEL_19;
    }
  }

LABEL_31:
  v50 = *(v130 + 32);
  v51 = v118;
  v4 = v134;
  v130 += 32;
  v115 = v50;
  v50(v118, v32, v134);
  if (qword_61D80 != -1)
  {
    swift_once();
  }

  v52 = sub_47814();
  v53 = sub_5ED4(v52, qword_64418);
  v117 = &v113;
  __chkstk_darwin(v53, v54);
  v56 = &v113 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  (v34)(v56, v51, v4);
  v57 = sub_477F4();
  v58 = sub_48604();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v116 = v59;
    v129 = swift_slowAlloc();
    v136[0] = v129;
    *v59 = 136315138;
    sub_400F0(&qword_63D90, &type metadata accessor for URLQueryItem, &protocol conformance descriptor for URLQueryItem);
    v114 = v57;
    v60 = sub_48854();
    v62 = v61;
    v63 = *v132;
    (*v132)(v56, v134);
    v64 = sub_3DD80(v60, v62, v136);
    v4 = v134;

    v65 = v116;
    *(v116 + 4) = v64;
    v66 = v63;
    v67 = v114;
    _os_log_impl(&dword_0, v114, v58, "Query item: %s", v65, 0xCu);
    sub_6020(v129);
  }

  else
  {

    v70 = v56;
    v66 = *v132;
    v68 = (*v132)(v70, v4);
  }

  v116 = &v113;
  v71 = __chkstk_darwin(v68, v69);
  v117 = &v113 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = 0;
  v7 += v30;
  v119 = v119 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v129 = v66;
  while (1)
  {
    if (v74 >= *(v30 + 16))
    {
      goto LABEL_114;
    }

    __chkstk_darwin(v71, v72);
    v76 = &v113 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v34)(v76, v7, v4);
    if (sub_473C4() == 99 && v77 == 0xE100000000000000)
    {

      goto LABEL_47;
    }

    v79 = sub_48874();

    if (v79)
    {
      break;
    }

    ++v74;
    v4 = v134;
    v80 = v129;
    v71 = (v129)(v76, v134);
    v7 += v3;
    if (v131 == v74)
    {

      v21 = 0;
      v82 = v125;
      v81 = v126;
      v83 = v124;
      v84 = v122;
LABEL_119:
      v80(v118, v4);
      (*(v84 + 8))(v127, v121);
      (*(v82 + 8))(v83, v81);
      return v21;
    }
  }

  v4 = v134;
LABEL_47:

  v85 = v117;
  v115(v117, v76, v4);
  result = sub_473D4();
  v82 = v125;
  v81 = v126;
  v83 = v124;
  v84 = v122;
  if (!v86)
  {
    v94 = v85;
LABEL_112:
    v80 = v129;
    v129(v94, v4);
    v21 = 0;
    goto LABEL_119;
  }

  v87 = HIBYTE(v86) & 0xF;
  v88 = result & 0xFFFFFFFFFFFFLL;
  if ((v86 & 0x2000000000000000) != 0)
  {
    v89 = HIBYTE(v86) & 0xF;
  }

  else
  {
    v89 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v89)
  {

    goto LABEL_111;
  }

  if ((v86 & 0x1000000000000000) != 0)
  {
    v21 = sub_3E328(result, v86, 10);
    v111 = v110;

    if (v111)
    {
      goto LABEL_111;
    }

    goto LABEL_118;
  }

  if ((v86 & 0x2000000000000000) != 0)
  {
    v136[0] = result;
    v136[1] = v86 & 0xFFFFFFFFFFFFFFLL;
    if (result == 43)
    {
      if (!v87)
      {
        goto LABEL_124;
      }

      v88 = v87 - 1;
      if (v87 != 1)
      {
        v21 = 0;
        v101 = v136 + 1;
        while (1)
        {
          v102 = *v101 - 48;
          if (v102 > 9)
          {
            break;
          }

          v103 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v103 + v102;
          if (__OFADD__(v103, v102))
          {
            break;
          }

          ++v101;
          if (!--v88)
          {
            goto LABEL_110;
          }
        }
      }
    }

    else if (result == 45)
    {
      if (!v87)
      {
        goto LABEL_122;
      }

      v88 = v87 - 1;
      if (v87 != 1)
      {
        v21 = 0;
        v95 = v136 + 1;
        while (1)
        {
          v96 = *v95 - 48;
          if (v96 > 9)
          {
            break;
          }

          v97 = 10 * v21;
          if ((v21 * 10) >> 64 != (10 * v21) >> 63)
          {
            break;
          }

          v21 = v97 - v96;
          if (__OFSUB__(v97, v96))
          {
            break;
          }

          ++v95;
          if (!--v88)
          {
            goto LABEL_110;
          }
        }
      }
    }

    else if (v87)
    {
      v21 = 0;
      v106 = v136;
      while (1)
      {
        v107 = *v106 - 48;
        if (v107 > 9)
        {
          break;
        }

        v108 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          break;
        }

        v21 = v108 + v107;
        if (__OFADD__(v108, v107))
        {
          break;
        }

        v106 = (v106 + 1);
        if (!--v87)
        {
          goto LABEL_108;
        }
      }
    }

LABEL_109:
    v21 = 0;
    LOBYTE(v88) = 1;
    goto LABEL_110;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    result = (v86 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_487C4();
    v88 = v112;
  }

  v90 = *result;
  if (v90 == 43)
  {
    if (v88 < 1)
    {
      goto LABEL_123;
    }

    if (!--v88)
    {
      goto LABEL_109;
    }

    v21 = 0;
    if (!result)
    {
      goto LABEL_108;
    }

    v98 = (result + 1);
    while (1)
    {
      v99 = *v98 - 48;
      if (v99 > 9)
      {
        goto LABEL_109;
      }

      v100 = 10 * v21;
      if ((v21 * 10) >> 64 != (10 * v21) >> 63)
      {
        goto LABEL_109;
      }

      v21 = v100 + v99;
      if (__OFADD__(v100, v99))
      {
        goto LABEL_109;
      }

      ++v98;
      if (!--v88)
      {
        goto LABEL_110;
      }
    }
  }

  if (v90 != 45)
  {
    if (!v88)
    {
      goto LABEL_109;
    }

    v21 = 0;
    if (!result)
    {
      goto LABEL_108;
    }

    while (1)
    {
      v104 = *result - 48;
      if (v104 > 9)
      {
        goto LABEL_109;
      }

      v105 = 10 * v21;
      if ((v21 * 10) >> 64 != (10 * v21) >> 63)
      {
        goto LABEL_109;
      }

      v21 = v105 + v104;
      if (__OFADD__(v105, v104))
      {
        goto LABEL_109;
      }

      ++result;
      if (!--v88)
      {
        goto LABEL_110;
      }
    }
  }

  if (v88 >= 1)
  {
    if (!--v88)
    {
      goto LABEL_109;
    }

    v21 = 0;
    if (result)
    {
      v91 = (result + 1);
      while (1)
      {
        v92 = *v91 - 48;
        if (v92 > 9)
        {
          goto LABEL_109;
        }

        v93 = 10 * v21;
        if ((v21 * 10) >> 64 != (10 * v21) >> 63)
        {
          goto LABEL_109;
        }

        v21 = v93 - v92;
        if (__OFSUB__(v93, v92))
        {
          goto LABEL_109;
        }

        ++v91;
        if (!--v88)
        {
          goto LABEL_110;
        }
      }
    }

LABEL_108:
    LOBYTE(v88) = 0;
LABEL_110:
    v137 = v88;
    v109 = v88;

    if (v109)
    {
LABEL_111:
      v94 = v117;
      v4 = v134;
      goto LABEL_112;
    }

LABEL_118:
    v4 = v134;
    v80 = v129;
    v129(v117, v134);
    goto LABEL_119;
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
  return result;
}

unint64_t sub_3FFC8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_5DFA0;
  v6._object = a2;
  v4 = sub_48834(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_40034()
{
  result = qword_63D78;
  if (!qword_63D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_63D78);
  }

  return result;
}

uint64_t sub_40080(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62138, &qword_4AC00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_400F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_40138(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C7CC;

  return sub_3DB90(a1, v4);
}

uint64_t getEnumTagSinglePayload for PollSource(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PollSource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_40370()
{
  result = qword_63D98;
  if (!qword_63D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63D98);
  }

  return result;
}

unint64_t sub_403C8()
{
  result = qword_63DA0;
  if (!qword_63DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63DA0);
  }

  return result;
}

id sub_40428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:*(a1 + 16)];
  v6 = [v5 length];
  sub_4060C(*(v3 + 16), *(v3 + 32));
  if (a2 || (a2 = *(v3 + 24)) != 0)
  {
    [v5 addAttribute:NSForegroundColorAttributeName value:a2 range:{0, v6}];
  }

  if (qword_61D08 != -1)
  {
    swift_once();
  }

  [v5 removeAttribute:qword_643A0 range:{0, v6}];
  if (qword_61D10 != -1)
  {
    swift_once();
  }

  [v5 removeAttribute:qword_643A8 range:{0, v6}];
  if (qword_61D18 != -1)
  {
    swift_once();
  }

  [v5 removeAttribute:qword_643B0 range:{0, v6}];
  if (qword_61D20 != -1)
  {
    swift_once();
  }

  [v5 removeAttribute:qword_643B8 range:{0, v6}];

  return v5;
}

void sub_4060C(uint64_t a1, char a2)
{
  [v2 addAttribute:NSFontAttributeName value:a1 range:{0, objc_msgSend(v2, "length")}];
  v39 = v2;
  v40 = 1;
  v41 = a1;
  v42 = a2;
  v5 = IMTextStyleAttributeNameFromStyle();
  if (v5 && (v7 = v5, v8 = [v2 length], v9 = swift_allocObject(), *(v9 + 16) = sub_43288, *(v9 + 24) = &v38, v10 = swift_allocObject(), *(v10 + 16) = sub_4383C, *(v10 + 24) = v9, v47 = sub_43838, v48 = v10, aBlock = _NSConcreteStackBlock, v44 = 1107296256, v45 = sub_41E80, v46 = &unk_5F3D8, v11 = _Block_copy(&aBlock), , , objc_msgSend(v2, "enumerateAttribute:inRange:options:usingBlock:", v7, 0, v8, 0, v11), v7, _Block_release(v11), LOBYTE(v7) = swift_isEscapingClosureAtFileLocation(), , v5 = , (v7 & 1) != 0))
  {
    __break(1u);
  }

  else
  {
    v12 = a2 & 1;
    __chkstk_darwin(v5, v6);
    v34 = v2;
    v35 = 2;
    v36 = a1;
    v37 = a2 & 1;
    v13 = IMTextStyleAttributeNameFromStyle();
    if (v13)
    {
      v15 = v13;
      v16 = [v2 length];
      v17 = swift_allocObject();
      *(v17 + 16) = sub_43834;
      *(v17 + 24) = v33;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_4383C;
      *(v18 + 24) = v17;
      v47 = sub_43838;
      v48 = v18;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_41E80;
      v46 = &unk_5F360;
      v19 = _Block_copy(&aBlock);

      [v2 enumerateAttribute:v15 inRange:0 options:v16 usingBlock:{0, v19}];

      _Block_release(v19);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        __break(1u);
      }
    }

    __chkstk_darwin(v13, v14);
    v34 = v2;
    v35 = 4;
    v36 = a1;
    v37 = v12;
    v20 = IMTextStyleAttributeNameFromStyle();
    if (v20)
    {
      v22 = v20;
      v23 = [v2 length];
      v24 = swift_allocObject();
      *(v24 + 16) = sub_43834;
      *(v24 + 24) = v33;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_4383C;
      *(v25 + 24) = v24;
      v47 = sub_43838;
      v48 = v25;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_41E80;
      v46 = &unk_5F2E8;
      v26 = _Block_copy(&aBlock);

      [v2 enumerateAttribute:v22 inRange:0 options:v23 usingBlock:{0, v26}];

      _Block_release(v26);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        __break(1u);
      }
    }

    __chkstk_darwin(v20, v21);
    v34 = v2;
    v35 = 8;
    v36 = a1;
    v37 = v12;
    v27 = IMTextStyleAttributeNameFromStyle();
    if (v27)
    {
      v28 = v27;
      v29 = [v2 length];
      v30 = swift_allocObject();
      *(v30 + 16) = sub_43834;
      *(v30 + 24) = v33;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_432C0;
      *(v31 + 24) = v30;
      v47 = sub_43838;
      v48 = v31;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_41E80;
      v46 = &unk_5F270;
      v32 = _Block_copy(&aBlock);

      [v2 enumerateAttribute:v28 inRange:0 options:v29 usingBlock:{0, v32}];

      _Block_release(v32);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if (v28)
      {
        __break(1u);
      }
    }
  }
}

id sub_40CFC(void *a1)
{
  v3 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:a1];
  sub_40F54(*(v1 + 32), *(v1 + 16));
  sub_54A4(&qword_63C10, &qword_4CF60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_4CC00;
  v5 = NSAdaptiveImageGlyphAttributeName;
  *(v4 + 32) = NSAdaptiveImageGlyphAttributeName;
  v6 = qword_61D08;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_643A0;
  *(v4 + 40) = qword_643A0;
  v9 = qword_61D10;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_643A8;
  *(v4 + 48) = qword_643A8;
  v12 = qword_61D18;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_643B0;
  *(v4 + 56) = qword_643B0;
  v15 = qword_61D20;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = qword_643B8;
  *(v4 + 64) = qword_643B8;
  type metadata accessor for Key(0);
  v18 = v17;
  v19 = sub_48534();

  v20 = [v3 __ck_attributedStringByRemovingAllAttributesExcept:v19];

  if (!v20)
  {
    v21 = [a1 string];
    if (!v21)
    {
      sub_48414();
      v21 = sub_483D4();
    }

    v20 = [objc_allocWithZone(NSAttributedString) initWithString:v21];

    v3 = v21;
  }

  return v20;
}

void sub_40F54(char a1, void *a2)
{
  v4 = [v2 length];
  *v44 = 0;
  v43 = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v44;
  *(v5 + 40) = &v44[1];
  *(v5 + 48) = &v43;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_424C0;
  *(v6 + 24) = v5;
  v41 = sub_424F0;
  v42 = v6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v39 = sub_41E80;
  v40 = &unk_5F108;
  v7 = _Block_copy(&aBlock);
  v8 = v2;

  [v8 enumerateAttribute:NSFontAttributeName inRange:0 options:v4 usingBlock:{0, v7}];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_42530;
  *(v10 + 24) = v9;
  v41 = sub_43838;
  v42 = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v39 = sub_41E80;
  v40 = &unk_5F180;
  v11 = _Block_copy(&aBlock);
  v12 = v8;

  [v12 enumerateAttribute:NSUnderlineStyleAttributeName inRange:0 options:v4 usingBlock:{0, v11}];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_425B4;
  *(v14 + 24) = v13;
  v41 = sub_43838;
  v42 = v14;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v39 = sub_41E80;
  v40 = &unk_5F1F8;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  [v16 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v4 usingBlock:{0, v15}];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v18 = v44[1];
  v34 = v44[0];
  v35 = v43;
  v19 = [a2 fontDescriptor];
  v20 = [v19 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_432C8(&qword_61ED0, type metadata accessor for AttributeName, &unk_4A91C);
  v21 = sub_48394();

  v22 = [a2 fontDescriptor];
  v23 = [v22 symbolicTraits];

  if (v18 == 1)
  {
    if (*(v21 + 16))
    {
      v24 = sub_6244();
      if (v25)
      {
        sub_606C(*(v21 + 56) + 32 * v24, &aBlock);
        sub_54A4(&qword_63E70, &qword_4CF68);
        if (swift_dynamicCast())
        {
          v40 = &type metadata for CGFloat;
          *&aBlock = UIFontWeightBold;
          sub_54EC(&aBlock, v37);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_4302C(v37, UIFontWeightTrait, isUniquelyReferenced_nonNull_native, sub_6244, &qword_63E78, &unk_4CF70, type metadata accessor for TraitKey);
        }
      }
    }
  }

  else if (v34)
  {
    v23 &= ~2u;
  }

  if (v35)
  {
    v27 = v23 & 0xFFFFFFFE;
  }

  else
  {
    v27 = v23;
  }

  v28 = objc_allocWithZone(UIFontDescriptor);
  v29 = sub_48374();

  v30 = [v28 initWithFontAttributes:v29];

  v31 = [v30 fontDescriptorWithSymbolicTraits:v27];
  if (v31)
  {
    [a2 pointSize];
    v33 = [objc_opt_self() fontWithDescriptor:v31 size:v32];
  }

  else
  {
    v33 = a2;
  }

  [v16 removeAttribute:NSFontAttributeName range:{0, v4}];
  [v16 addAttribute:NSFontAttributeName value:v33 range:{0, v4}];
  [v16 removeAttribute:NSUnderlineStyleAttributeName range:{0, v4}];
  [v16 removeAttribute:NSStrikethroughStyleAttributeName range:{0, v4}];
}

uint64_t sub_416E4()
{

  return _swift_deallocClassInstance(v0, 33, 7);
}

void sub_41748(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v12 = [v5 attributesAtIndex:a2 longestEffectiveRange:0 inRange:{a2, a3}];
  type metadata accessor for Key(0);
  sub_432C8(&qword_61EE0, type metadata accessor for Key, &unk_4A960);
  v13 = sub_48394();

  if (!*(v13 + 16) || (v14 = sub_6244(), (v15 & 1) == 0))
  {

LABEL_9:
    v16 = a4;
    if (a1 > 3)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 == 1)
    {
      v44 = [v16 fontDescriptor];
      v26 = [v44 fontAttributes];
      type metadata accessor for AttributeName(0);
      sub_432C8(&qword_61ED0, type metadata accessor for AttributeName, &unk_4A91C);
      v27 = sub_48394();

      v28 = &UIFontWeightBold;
      if (a5)
      {
        v28 = &UIFontWeightHeavy;
      }

      v29 = *v28;
      v45 = a5;
      if (*(v27 + 16) && (v30 = sub_6244(), (v31 & 1) != 0) && (sub_606C(*(v27 + 56) + 32 * v30, &v47), sub_54A4(&qword_63E70, &qword_4CF68), (swift_dynamicCast() & 1) != 0))
      {
        v48 = &type metadata for CGFloat;
        *&v47 = v29;
        sub_54EC(&v47, v46);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_4302C(v46, UIFontWeightTrait, isUniquelyReferenced_nonNull_native, sub_6244, &qword_63E78, &unk_4CF70, type metadata accessor for TraitKey);
      }

      else
      {
        sub_54A4(&qword_63E90, &qword_4CF80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_4A9C0;
        *(inited + 32) = UIFontWeightTrait;
        *(inited + 40) = v29;
        v34 = UIFontWeightTrait;
        v35 = sub_5D80(inited);
        swift_setDeallocating();
        sub_60C8(inited + 32, &qword_63E98, &qword_4CF88);
        v48 = sub_54A4(&qword_63EA0, &qword_4CF90);
        *&v47 = v35;
        sub_54EC(&v47, v46);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        sub_4302C(v46, UIFontDescriptorTraitsAttribute, v36, sub_6244, &qword_63EA8, &qword_4CF98, type metadata accessor for AttributeName);
      }

      v37 = objc_allocWithZone(UIFontDescriptor);
      v38 = sub_48374();
      v39 = [v37 initWithFontAttributes:v38];

      if ((v45 & 1) == 0)
      {
        v40 = [v39 ck_fontDescriptorBySettingBoldEnabled:1];

        v39 = v40;
      }

      v41 = v39;
      [v16 pointSize];
      v43 = [objc_opt_self() fontWithDescriptor:v41 size:v42];

      v23 = v43;
      [v6 addAttribute:NSFontAttributeName value:v23 range:{a2, a3}];

      goto LABEL_25;
    }

    if (a1 == 2)
    {
      v18 = [v16 fontDescriptor];
      v19 = [v18 ck_fontDescriptorByAddingSymbolicTrait:1];

      v20 = v19;
      [v16 pointSize];
      v22 = [objc_opt_self() fontWithDescriptor:v20 size:v21];

      v23 = v22;
      [v6 addAttribute:NSFontAttributeName value:v23 range:{a2, a3}];

      v16 = v20;
LABEL_25:

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  sub_606C(*(v13 + 56) + 32 * v14, &v47);

  sub_61D4(0, &qword_63E88, UIFont_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v16 = v46[0];
  if (a1 <= 3)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (a1 == 4)
  {
    v17 = &NSUnderlineStyleAttributeName;
    goto LABEL_14;
  }

  if (a1 == 8)
  {
    v17 = &NSStrikethroughStyleAttributeName;
LABEL_14:
    v24 = *v17;
    v25 = sub_485F4();
    [v6 addAttribute:v24 value:v25 range:{a2, a3}];
    v23 = v16;
    v16 = v25;
    goto LABEL_25;
  }

LABEL_26:
}

void sub_41DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  sub_43218(a1, v9);
  if (v10)
  {
    sub_61D4(0, &qword_63E80, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      if ([v8 integerValue] == &dword_0 + 1)
      {
        a5(a2, a3);
      }
    }
  }

  else
  {
    sub_60C8(v9, &qword_62128, &qword_4AA80);
  }
}

uint64_t sub_41E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v10 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v12 = a2;
    sub_54EC(&v12, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  swift_unknownObjectRetain();
  v10(v14, a3, a4, a5);
  return sub_60C8(v14, &qword_62128, &qword_4AA80);
}

void sub_41F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, BOOL *a7, _BYTE *a8, _BYTE *a9)
{
  sub_43218(a1, v24);
  if (!v25)
  {
    sub_60C8(v24, &qword_62128, &qword_4AA80);
    return;
  }

  sub_61D4(0, &qword_63E88, UIFont_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v15 = [v23 fontDescriptor];
  v16 = v15;
  if ((a5 & 1) == 0)
  {
    v18 = [v15 symbolicTraits];

    if ((v18 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_8:
    if (qword_61D08 != -1)
    {
      swift_once();
    }

    v19 = qword_643A0;
    v20 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    [a6 addAttribute:v19 value:v20 range:{a2, a3}];

    *a7 = (a5 & 1) == 0;
    *a8 = a5 & 1;
    goto LABEL_11;
  }

  v17 = sub_422C4();

  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  if ([v23 ck_hasItalicTrait])
  {
    if (qword_61D10 != -1)
    {
      swift_once();
    }

    v21 = qword_643A8;
    v22 = [objc_allocWithZone(NSNumber) initWithInteger:1];
    [a6 addAttribute:v21 value:v22 range:{a2, a3}];

    *a9 = 1;
  }

  else
  {
  }
}

void sub_4217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t *a7, uint64_t a8)
{
  sub_43218(a1, v16);
  if (v17)
  {
    sub_61D4(0, &qword_63E80, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      if ([v15 integerValue] == &dword_0 + 1)
      {
        if (*a6 != -1)
        {
          swift_once();
        }

        v13 = *a7;
        v14 = [objc_allocWithZone(NSNumber) initWithInteger:1];
        [a5 addAttribute:v13 value:v14 range:{a2, a3}];
      }

      else
      {
      }
    }
  }

  else
  {
    sub_60C8(v16, &qword_62128, &qword_4AA80);
  }
}

BOOL sub_422C4()
{
  v1 = [v0 fontAttributes];
  type metadata accessor for AttributeName(0);
  sub_432C8(&qword_61ED0, type metadata accessor for AttributeName, &unk_4A91C);
  v2 = sub_48394();

  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_6244();
  if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_606C(*(v2 + 56) + 32 * v3, v11);

  sub_54A4(&qword_63E70, &qword_4CF68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!v10[2] || (v5 = sub_6244(), (v6 & 1) == 0))
  {
LABEL_8:

    return 0;
  }

  sub_606C(v10[7] + 32 * v5, v11);

  sub_61D4(0, &qword_63E80, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    [v10 floatValue];
    v8 = v7;

    return UIFontWeightHeavy == v8;
  }

  return 0;
}

uint64_t sub_42488()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_42518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4257C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_425F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_54A4(&qword_63EB0, &qword_4CFA8);
  v36 = v4;
  v6 = sub_48804();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_488D4();
      sub_48464();
      v26 = sub_48904();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_42894(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for ViewModelPollVote(0);
  v36 = *(v5 - 8);
  __chkstk_darwin(v5 - 8, v6);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_54A4(&qword_630D0, &qword_4CFA0);
  v37 = v4;
  v9 = sub_48804();
  v10 = v9;
  if (*(v8 + 16))
  {
    v35 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v36 + 72);
      v24 = *(v8 + 56) + v23 * v22;
      v39 = *(*(v8 + 48) + 16 * v22);
      v25 = *(&v39 + 1);
      if (v37)
      {
        sub_7A64(v24, v38);
      }

      else
      {
        sub_6BEC(v24, v38);
      }

      sub_488D4();
      if (v25)
      {
        sub_488F4(1u);
        sub_48464();
      }

      else
      {
        sub_488F4(0);
      }

      v26 = sub_48904();
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v39;
      sub_7A64(v38, *(v10 + 56) + v23 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_37;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_37:
  *v3 = v10;
}

void sub_42BEC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_54A4(a3, a4);
  v37 = v6;
  v8 = sub_48804();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v4;
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
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = (v22 + 32 * v21);
      if (v37)
      {
        sub_54EC(v24, v38);
      }

      else
      {
        sub_606C(v24, v38);
        v25 = v23;
      }

      sub_48414();
      sub_488D4();
      sub_48464();
      v26 = sub_48904();

      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      sub_54EC(v38, (*(v9 + 56) + 32 * v17));
      ++*(v9 + 16);
      v7 = v36;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v5 = v9;
}

uint64_t sub_42EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_4D30(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_425F0(v16, a4 & 1);
      v11 = sub_4D30(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_48884();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_43310();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

_OWORD *sub_4302C(_OWORD *a1, void *a2, char a3, uint64_t (*a4)(void *), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      sub_436AC(a5, a6);
      v16 = v24;
      goto LABEL_8;
    }

    sub_42BEC(v21, a3 & 1, a5, a6);
    v16 = a4(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a7(0);
      result = sub_48884();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (v26[7] + 32 * v16);
    sub_6020(v27);

    return sub_54EC(a1, v27);
  }

  else
  {
    sub_431B0(v16, a2, a1, v26);

    return a2;
  }
}

_OWORD *sub_431B0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_54EC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}