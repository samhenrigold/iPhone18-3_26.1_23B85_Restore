uint64_t sub_100001B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001D6E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_100001C34(&qword_10002C140, &unk_10001E680);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
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

uint64_t sub_100001C34(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001C90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001D6E0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100001C34(&qword_10002C140, &unk_10001E680);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for DynamicIslandWorkoutTimeView(uint64_t a1)
{
  result = qword_10002C1A0;
  if (!qword_10002C1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100001DF0(uint64_t a1)
{
  sub_10001D6E0();
  if (v1 <= 0x3F)
  {
    sub_100001E84(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100001E84(uint64_t a1)
{
  if (!qword_10002C1B0)
  {
    sub_10001D6E0();
    v1 = sub_10001E210();
    if (!v2)
    {
      atomic_store(v1, &qword_10002C1B0);
    }
  }
}

double sub_100001EE0()
{
  v1 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = sub_10001D6E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DynamicIslandWorkoutTimeView(0);
  sub_100003A7C(v0 + *(v11 + 24), v6, &qword_10002C140, &unk_10001E680);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    sub_100003A7C(v0 + *(v11 + 20), v4, &qword_10002C140, &unk_10001E680);
    if (v12(v4, 1, v7) == 1)
    {
      sub_10001D6D0();
      if (v12(v4, 1, v7) != 1)
      {
        sub_100004088(v4, &qword_10002C140, &unk_10001E680);
      }
    }

    else
    {
      (*(v8 + 32))(v10, v4, v7);
    }

    if (v12(v6, 1, v7) != 1)
    {
      sub_100004088(v6, &qword_10002C140, &unk_10001E680);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  sub_10001D6B0();
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  return v14;
}

void sub_100002190()
{
  v1 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  v2 = __chkstk_darwin(v1 - 8);
  v21 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v6 = &v20 - v5;
  __chkstk_darwin(v4);
  v8 = &v20 - v7;
  v9 = type metadata accessor for DynamicIslandWorkoutTimeView(0);
  v10 = *(v9 + 24);
  sub_100003A7C(v0 + v10, v8, &qword_10002C140, &unk_10001E680);
  v11 = sub_10001D6E0();
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v8, 1, v11);
  sub_100004088(v8, &qword_10002C140, &unk_10001E680);
  if (v13 != 1)
  {
    sub_10001DE90();
    return;
  }

  sub_100003A7C(v0 + *(v9 + 20), v6, &qword_10002C140, &unk_10001E680);
  v14 = v12(v6, 1, v11);
  sub_100004088(v6, &qword_10002C140, &unk_10001E680);
  if (v14 != 1)
  {
    v15 = v21;
    sub_100003A7C(v0 + v10, v21, &qword_10002C140, &unk_10001E680);
    v16 = v12(v15, 1, v11);
    sub_100004088(v15, &qword_10002C140, &unk_10001E680);
    if (v16 == 1)
    {
      sub_10001DE70();
      sub_10001DEA0();

      return;
    }
  }

  v17 = [objc_opt_self() elapsedTimeColors];
  if (!v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v17 nonGradientTextColor];

  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_10001DEE0();
}

uint64_t sub_100002434@<X0>(uint64_t a1@<X8>)
{
  v115 = a1;
  v100 = sub_100001C34(&qword_10002C1E8, &unk_10001FA70);
  v2 = __chkstk_darwin(v100);
  v99 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v98 = &v93 - v4;
  v5 = sub_10001D6E0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v111 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100001C34(&qword_10002C1F0, &qword_10001E750);
  __chkstk_darwin(v95);
  v96 = &v93 - v8;
  v113 = sub_100001C34(&qword_10002C1F8, &qword_10001E758);
  __chkstk_darwin(v113);
  v114 = &v93 - v9;
  v119 = sub_10001DC60();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10001E2B0();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v106 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10001E2F0();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10001E300();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100001C34(&qword_10002C200, &qword_10001E760);
  v15 = __chkstk_darwin(v120);
  v97 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v101 = &v93 - v18;
  __chkstk_darwin(v17);
  v20 = &v93 - v19;
  v112 = sub_100001C34(&qword_10002C208, &qword_10001E768);
  __chkstk_darwin(v112);
  v102 = &v93 - v21;
  v22 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  v23 = __chkstk_darwin(v22 - 8);
  v94 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v93 - v25;
  v116 = type metadata accessor for DynamicIslandWorkoutTimeView(0);
  sub_100003A7C(&v1[*(v116 + 24)], v26, &qword_10002C140, &unk_10001E680);
  v27 = v6;
  v28 = v5;
  LODWORD(v6) = (*(v6 + 48))(v26, 1, v5);
  sub_100004088(v26, &qword_10002C140, &unk_10001E680);
  if (v6 == 1)
  {
    v29 = v111;
    sub_10001D6A0();
    sub_1000040E8(&qword_10002C210, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v30 = v1;
    result = sub_10001E120();
    if (result)
    {
      v32 = v27;
      v33 = v98;
      (*(v27 + 16))(v98, v30, v28);
      v34 = v100;
      v35 = *(v27 + 32);
      v35(v33 + *(v100 + 48), v29, v28);
      v36 = v99;
      sub_100003A7C(v33, v99, &qword_10002C1E8, &unk_10001FA70);
      v37 = *(v34 + 48);
      v38 = v96;
      v35(v96, v36, v28);
      v111 = v30;
      v39 = *(v32 + 8);
      v39(v36 + v37, v28);
      sub_1000035C0(v33, v36, &qword_10002C1E8, &unk_10001FA70);
      v35(&v38[*(v95 + 36)], (v36 + *(v34 + 48)), v28);
      v39(v36, v28);
      v40 = v111;
      v41 = v116;
      sub_100003A7C(&v111[*(v116 + 20)], v94, &qword_10002C140, &unk_10001E680);
      v42 = sub_10001DCE0();
      v44 = v43;
      v46 = v45;
      if (v40[*(v41 + 28)])
      {
        sub_10001DCB0();
      }

      else
      {
        sub_100001EE0();
        sub_10001DC90();
      }

      v81 = v117;
      sub_10001DC40();
      sub_10001DCC0();
      (*(v118 + 8))(v81, v119);
      sub_10001DC70();

      v119 = sub_10001DD20();
      v118 = v82;
      v84 = v83;
      v117 = v85;

      sub_100003470(v42, v44, v46 & 1);

      KeyPath = swift_getKeyPath();
      sub_100001EE0();
      sub_10001DF80();
      sub_10001D920();
      LOBYTE(v121) = v84 & 1;
      *&v124[7] = v125;
      *&v124[23] = v126;
      *&v124[39] = v127;
      sub_100002190();
      v88 = v87;
      v89 = v97;
      v90 = &v97[*(v120 + 36)];
      sub_100001C34(&qword_10002C218, &qword_10001E7A0);
      sub_10001D990();
      *v90 = swift_getKeyPath();
      v91 = *&v124[16];
      *(v89 + 41) = *v124;
      v92 = v118;
      *v89 = v119;
      *(v89 + 8) = v92;
      *(v89 + 16) = v84 & 1;
      *(v89 + 24) = v117;
      *(v89 + 32) = KeyPath;
      *(v89 + 40) = 2;
      *(v89 + 57) = v91;
      *(v89 + 73) = *&v124[32];
      *(v89 + 88) = *&v124[47];
      *(v89 + 96) = v88;
      v79 = &qword_10002C200;
      v80 = &qword_10001E760;
      v78 = v101;
      sub_1000035C0(v89, v101, &qword_10002C200, &qword_10001E760);
      sub_100003A7C(v78, v114, &qword_10002C200, &qword_10001E760);
      swift_storeEnumTagMultiPayload();
      sub_100003628();
      sub_10000372C();
      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {
    v47 = v1;
    sub_100001EE0();
    sub_10001E320();
    v48 = sub_100001EE0();
    v49 = v103 + 104;
    v50 = v106;
    v51 = v104;
    (*(v103 + 104))(v106, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v104);
    v52 = (v49 - 96);
    if (v48 >= 3600.0)
    {
      sub_10001E2E0();
    }

    else
    {
      sub_10001E2D0();
    }

    (*v52)(v50, v51);
    v53 = v105;
    sub_10001D650();
    (*(v107 + 8))(v13, v108);
    sub_1000040E8(&qword_10002C290, &type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
    v54 = v110;
    sub_10001E310();
    v55 = (*(v109 + 8))(v53, v54);
    v121 = v125;
    v111 = sub_100003A28(v55, v56, v57);
    v58 = sub_10001DD40();
    v60 = v59;
    v62 = v61;
    if (v47[*(v116 + 28)])
    {
      sub_10001DCB0();
      v116 = 0;
    }

    else
    {
      sub_100001EE0();
      v116 = 0x4049000000000000;
      sub_10001DC90();
    }

    v63 = v117;
    sub_10001DC40();
    sub_10001DCC0();
    (*(v118 + 8))(v63, v119);
    sub_10001DC70();

    v119 = sub_10001DD20();
    v118 = v64;
    v66 = v65;
    v117 = v67;

    sub_100003470(v58, v60, v62 & 1);

    v68 = swift_getKeyPath();
    sub_100001EE0();
    sub_10001DF80();
    sub_10001D920();
    v123 = v66 & 1;
    *&v122[7] = v125;
    *&v122[23] = v126;
    *&v122[39] = v127;
    sub_100002190();
    v70 = v69;
    v71 = &v20[*(v120 + 36)];
    sub_100001C34(&qword_10002C218, &qword_10001E7A0);
    sub_10001D990();
    *v71 = swift_getKeyPath();
    v72 = *&v122[16];
    *(v20 + 41) = *v122;
    v73 = v118;
    *v20 = v119;
    *(v20 + 1) = v73;
    v20[16] = v66 & 1;
    *(v20 + 3) = v117;
    *(v20 + 4) = v68;
    v20[40] = 2;
    *(v20 + 57) = v72;
    *(v20 + 73) = *&v122[32];
    *(v20 + 11) = *&v122[47];
    *(v20 + 12) = v70;
    sub_100001EE0();
    result = AXDurationStringForDuration();
    if (result)
    {
      v74 = result;
      v75 = sub_10001E140();
      v77 = v76;

      *&v121 = v75;
      *(&v121 + 1) = v77;
      sub_10000372C();
      v78 = v102;
      sub_10001DE00();

      sub_100004088(v20, &qword_10002C200, &qword_10001E760);
      v79 = &qword_10002C208;
      v80 = &qword_10001E768;
      sub_100003A7C(v78, v114, &qword_10002C208, &qword_10001E768);
      swift_storeEnumTagMultiPayload();
      sub_100003628();
LABEL_15:
      sub_10001DB60();
      return sub_100004088(v78, v79, v80);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100003470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000034A4(uint64_t a1)
{
  v2 = sub_10001D9A0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001DA00();
}

uint64_t sub_10000356C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001DA30();
  *a1 = result;
  return result;
}

uint64_t sub_1000035C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001C34(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100003628()
{
  result = qword_10002C220;
  if (!qword_10002C220)
  {
    sub_1000036E4(&qword_10002C208, &qword_10001E768);
    sub_10000372C();
    sub_1000040E8(&qword_10002C288, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C220);
  }

  return result;
}

uint64_t sub_1000036E4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10000372C()
{
  result = qword_10002C228;
  if (!qword_10002C228)
  {
    sub_1000036E4(&qword_10002C200, &qword_10001E760);
    sub_1000037E4();
    sub_1000039E0(&qword_10002C280, &qword_10002C218, &qword_10001E7A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C228);
  }

  return result;
}

unint64_t sub_1000037E4()
{
  result = qword_10002C230;
  if (!qword_10002C230)
  {
    sub_1000036E4(&qword_10002C238, &qword_10001E7D8);
    sub_10000389C();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C230);
  }

  return result;
}

unint64_t sub_10000389C()
{
  result = qword_10002C240;
  if (!qword_10002C240)
  {
    sub_1000036E4(&qword_10002C248, &qword_10001E7E0);
    sub_100003928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C240);
  }

  return result;
}

unint64_t sub_100003928()
{
  result = qword_10002C250;
  if (!qword_10002C250)
  {
    sub_1000036E4(&qword_10002C258, &qword_10001E7E8);
    sub_1000039E0(&qword_10002C260, &qword_10002C268, &unk_10001E7F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C250);
  }

  return result;
}

uint64_t sub_1000039E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C298;
  if (!qword_10002C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C298);
  }

  return result;
}

uint64_t sub_100003A7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001C34(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D6E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v39[-v12];
  v14 = sub_100001C34(&qword_10002C2A0, &qword_10001E800);
  v15 = __chkstk_darwin(v14);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v39[-v18];
  if ((sub_10001D6C0() & 1) == 0)
  {
    goto LABEL_16;
  }

  v41 = v11;
  v42 = v7;
  v20 = type metadata accessor for DynamicIslandWorkoutTimeView(0);
  v21 = *(v20 + 20);
  v22 = *(v14 + 48);
  v46 = v5;
  v43 = v20;
  v44 = a1;
  sub_100003A7C(a1 + v21, v19, &qword_10002C140, &unk_10001E680);
  v45 = a2;
  v23 = v46;
  sub_100003A7C(a2 + v21, &v19[v22], &qword_10002C140, &unk_10001E680);
  v24 = *(v23 + 48);
  if (v24(v19, 1, v4) != 1)
  {
    sub_100003A7C(v19, v13, &qword_10002C140, &unk_10001E680);
    if (v24(&v19[v22], 1, v4) != 1)
    {
      v26 = v42;
      (*(v23 + 32))(v42, &v19[v22], v4);
      sub_1000040E8(&qword_10002C2A8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v40 = sub_10001E130();
      v27 = *(v23 + 8);
      v27(v26, v4);
      v27(v13, v4);
      sub_100004088(v19, &qword_10002C140, &unk_10001E680);
      if ((v40 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    (*(v23 + 8))(v13, v4);
LABEL_7:
    v25 = v19;
LABEL_15:
    sub_100004088(v25, &qword_10002C2A0, &qword_10001E800);
    goto LABEL_16;
  }

  if (v24(&v19[v22], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_100004088(v19, &qword_10002C140, &unk_10001E680);
LABEL_9:
  v28 = v43;
  v29 = *(v43 + 24);
  v30 = *(v14 + 48);
  sub_100003A7C(v44 + v29, v17, &qword_10002C140, &unk_10001E680);
  sub_100003A7C(v45 + v29, &v17[v30], &qword_10002C140, &unk_10001E680);
  if (v24(v17, 1, v4) == 1)
  {
    if (v24(&v17[v30], 1, v4) == 1)
    {
      sub_100004088(v17, &qword_10002C140, &unk_10001E680);
LABEL_19:
      v32 = *(v44 + *(v28 + 28)) ^ *(v45 + *(v28 + 28)) ^ 1;
      return v32 & 1;
    }

    goto LABEL_14;
  }

  v31 = v41;
  sub_100003A7C(v17, v41, &qword_10002C140, &unk_10001E680);
  if (v24(&v17[v30], 1, v4) == 1)
  {
    (*(v46 + 8))(v31, v4);
LABEL_14:
    v25 = v17;
    goto LABEL_15;
  }

  v34 = v46;
  v35 = &v17[v30];
  v36 = v42;
  (*(v46 + 32))(v42, v35, v4);
  sub_1000040E8(&qword_10002C2A8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v37 = sub_10001E130();
  v38 = *(v34 + 8);
  v38(v36, v4);
  v38(v31, v4);
  sub_100004088(v17, &qword_10002C140, &unk_10001E680);
  if (v37)
  {
    goto LABEL_19;
  }

LABEL_16:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_100004088(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001C34(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000040E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100004134()
{
  result = qword_10002C2B0;
  if (!qword_10002C2B0)
  {
    sub_1000036E4(&qword_10002C2B8, qword_10001E808);
    sub_100003628();
    sub_10000372C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C2B0);
  }

  return result;
}

uint64_t sub_1000041EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100001C34(&qword_10002C2D8, &qword_10001E8A8);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_10001D8B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C34(&qword_10002C2D0, &qword_10001E8A0);
  sub_10001DFD0();
  sub_10001D810();
  v9 = sub_10001D700();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_100004628(v4);
    v11 = 0xE600000000000000;
    v12 = 0x455649544341;
  }

  else
  {
    v12 = sub_10001D6F0();
    v11 = v13;
    (*(v10 + 8))(v4, v9);
  }

  *a1 = v12;
  a1[1] = v11;
  v14 = type metadata accessor for MirroredLockScreenView(0);
  return (*(v6 + 32))(a1 + *(v14 + 20), v8, v5);
}

uint64_t sub_1000043EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001D8B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C34(&qword_10002C2D0, &qword_10001E8A0);
  sub_10001DFD0();
  sub_100019070(v5, a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000044E0()
{
  sub_10001D8C0();
  type metadata accessor for MirroredLockScreenView(0);
  sub_1000045E0(&qword_10002C2C0, &type metadata accessor for MirroredWidgetAttributes, &protocol conformance descriptor for MirroredWidgetAttributes);
  sub_1000045E0(&qword_10002C2C8, type metadata accessor for MirroredLockScreenView, &unk_10001FF28);
  return sub_10001DFE0();
}

uint64_t sub_1000045E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100004628(uint64_t a1)
{
  v2 = sub_100001C34(&qword_10002C2D8, &qword_10001E8A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100004694()
{
  result = qword_10002C2E0;
  if (!qword_10002C2E0)
  {
    sub_1000036E4(&qword_10002C2E8, &qword_10001E8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C2E0);
  }

  return result;
}

unint64_t sub_1000046FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C2F0;
  if (!qword_10002C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C2F0);
  }

  return result;
}

unint64_t sub_100004754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C2F8;
  if (!qword_10002C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C2F8);
  }

  return result;
}

unint64_t sub_1000047AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C300;
  if (!qword_10002C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C300);
  }

  return result;
}

unint64_t sub_100004804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C308;
  if (!qword_10002C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C308);
  }

  return result;
}

uint64_t sub_10000488C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001D7F0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10001D8F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D8D0();
  (*(v5 + 16))(v7, a1, v4);
  v12 = sub_10001D8E0();
  v13 = sub_10001E1D0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v9;
    v17 = v16;
    v26 = v16;
    *v15 = 136315138;
    sub_100005E64();
    v18 = sub_10001E2A0();
    v25 = a2;
    v20 = v19;
    (*(v5 + 8))(v7, v4);
    v21 = sub_1000058BC(v18, v20, &v26);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "We should never have been requested to run command %s, it should have routed to the app.", v15, 0xCu);
    sub_100005EBC(v17);

    (*(v23 + 8))(v11, v24);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  return sub_10001D640();
}

uint64_t sub_100004B50()
{
  v0 = sub_10001D680();
  sub_100005FA0(v0, qword_10002E3C8);
  sub_100005F68(v0, qword_10002E3C8);
  return sub_10001D670();
}

uint64_t sub_100004BE0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001D7F0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100004CA0, 0, 0);
}

uint64_t sub_100004CA0()
{
  sub_10001E1C0();
  *(v0 + 48) = sub_10001E1B0();
  v2 = sub_10001E1A0();

  return _swift_task_switch(sub_100004D34, v2, v1);
}

uint64_t sub_100004D34()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for DataLinkCommand.resume(_:), v2);
  sub_10000488C(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100004DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100004754(a1, a2, a3);

  return static AppIntent.persistentIdentifier.getter(a1, v4);
}

unint64_t sub_100004E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C310;
  if (!qword_10002C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C310);
  }

  return result;
}

unint64_t sub_100004E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C318;
  if (!qword_10002C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C318);
  }

  return result;
}

unint64_t sub_100004EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C320;
  if (!qword_10002C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C320);
  }

  return result;
}

unint64_t sub_100004F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C328;
  if (!qword_10002C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C328);
  }

  return result;
}

uint64_t sub_100004FCC()
{
  v0 = sub_10001D680();
  sub_100005FA0(v0, qword_10002E3E0);
  sub_100005F68(v0, qword_10002E3E0);
  return sub_10001D670();
}

uint64_t sub_100005068(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001D7F0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100005128, 0, 0);
}

uint64_t sub_100005128()
{
  sub_10001E1C0();
  *(v0 + 48) = sub_10001E1B0();
  v2 = sub_10001E1A0();

  return _swift_task_switch(sub_1000051BC, v2, v1);
}

uint64_t sub_1000051BC()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for DataLinkCommand.pause(_:), v2);
  sub_10000488C(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100005284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100004E94(a1, a2, a3);

  return static AppIntent.persistentIdentifier.getter(a1, v4);
}

unint64_t sub_1000052C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C330;
  if (!qword_10002C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C330);
  }

  return result;
}

unint64_t sub_10000531C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C338;
  if (!qword_10002C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C338);
  }

  return result;
}

unint64_t sub_100005374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C340;
  if (!qword_10002C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C340);
  }

  return result;
}

unint64_t sub_1000053CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C348;
  if (!qword_10002C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C348);
  }

  return result;
}

uint64_t sub_1000054A8()
{
  v0 = sub_10001D680();
  sub_100005FA0(v0, qword_10002E3F8);
  sub_100005F68(v0, qword_10002E3F8);
  return sub_10001D670();
}

uint64_t sub_100005530@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_10001D680();
  v7 = sub_100005F68(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1000055CC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001D7F0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000568C, 0, 0);
}

uint64_t sub_10000568C()
{
  sub_10001E1C0();
  *(v0 + 48) = sub_10001E1B0();
  v2 = sub_10001E1A0();

  return _swift_task_switch(sub_100005720, v2, v1);
}

uint64_t sub_100005720()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for DataLinkCommand.markSegment(_:), v2);
  sub_10000488C(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000057E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000531C(a1, a2, a3);

  return static AppIntent.persistentIdentifier.getter(a1, v4);
}

unint64_t sub_100005858()
{
  result = qword_10002C350;
  if (!qword_10002C350)
  {
    sub_1000036E4(&qword_10002C358, &qword_10001ECE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C350);
  }

  return result;
}

unint64_t sub_1000058BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100005988(v11, 0, 0, 1, a1, a2);
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
    sub_100005F08(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005EBC(v11);
  return v7;
}

unint64_t sub_100005988(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100005A94(a5, a6);
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
    result = sub_10001E280();
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

char *sub_100005A94(uint64_t a1, unint64_t a2)
{
  v3 = sub_100005AE0(a1, a2);
  sub_100005C10(&off_100029240);
  return v3;
}

char *sub_100005AE0(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100005CFC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10001E280();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10001E180();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005CFC(v10, 0);
        result = sub_10001E250();
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

uint64_t sub_100005C10(uint64_t result)
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

  result = sub_100005D70(result, v11, 1, v3);
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

void *sub_100005CFC(uint64_t a1, uint64_t a2)
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

  sub_100001C34(&qword_10002C368, &unk_10001ECF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005D70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001C34(&qword_10002C368, &unk_10001ECF0);
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

unint64_t sub_100005E64()
{
  result = qword_10002C360;
  if (!qword_10002C360)
  {
    sub_10001D7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C360);
  }

  return result;
}

uint64_t sub_100005EBC(void *a1)
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

uint64_t sub_100005F08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100005F68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005FA0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_100006044(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001D750();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  sub_10001D760();
  v9 = (*(v5 + 88))(v7, v4);
  if (v9 == enum case for WorkoutNotification.NotificationType.interval(_:) || v9 == enum case for WorkoutNotification.NotificationType.intervalWithResult(_:))
  {

    v13 = sub_10001D770();
    *&v51 = v13;
    BYTE8(v51) = 0;
LABEL_9:
    v16 = sub_1000069E8(v13, v14, v15);
    sub_100006A3C(v16, v17, v18);
    sub_10001DB60();
    *&v51 = v54;
    WORD4(v51) = BYTE8(v54);
LABEL_10:
    sub_100001C34(&qword_10002C3B0, &qword_10001EDD8);
    sub_100001C34(&qword_10002C3D0, &qword_10001EDE0);
    sub_10000695C();
    sub_100006A90();
    sub_10001DB60();
    v19 = 256;
    if (!BYTE9(v54))
    {
      v19 = 0;
    }

    *&v51 = v54;
    *(&v51 + 1) = v19 | BYTE8(v54);
    v52 = 0uLL;
    v53 = 0;
    goto LABEL_13;
  }

  if (v9 == enum case for WorkoutNotification.NotificationType.milestone(_:))
  {

    v13 = sub_10001D770();
    *&v51 = v13;
    BYTE8(v51) = 1;
    goto LABEL_9;
  }

  if (v9 == enum case for WorkoutNotification.NotificationType.pacerComplete(_:))
  {

    *&v51 = sub_10001D770();
    BYTE8(v51) = 0;
    v26 = sub_100006B1C(v51, v24, v25);
    sub_100006B70(v26, v27, v28);
    sub_10001DB60();
    *&v51 = v54;
    BYTE8(v51) = BYTE8(v54);
    BYTE9(v51) = 1;
    goto LABEL_10;
  }

  if (v9 == enum case for WorkoutNotification.NotificationType.raceComplete(_:))
  {

    *&v51 = sub_10001D770();
    BYTE8(v51) = 1;
    v31 = sub_100006B1C(v51, v29, v30);
    sub_100006B70(v31, v32, v33);
    sub_10001DB60();
    *&v51 = v54;
    BYTE8(v51) = BYTE8(v54);
    BYTE9(v51) = 1;
    goto LABEL_10;
  }

  if (v9 == enum case for WorkoutNotification.NotificationType.standard(_:))
  {
LABEL_21:
    *&v51 = v8;
    BYTE8(v51) = 0;
    v34 = sub_100006828(v9, v10, v11);
    sub_10000687C(v34, v35, v36);
    v37 = v8;
    sub_10001DB60();
    *&v51 = v54;
    *(&v51 + 1) = BYTE8(v54);
    v52 = 0uLL;
    LOBYTE(v53) = 0;
    sub_100001C34(&qword_10002C370, &qword_10001EDC0);
    sub_10000679C();
    sub_10001DB60();
    v51 = v54;
    v52 = v55;
    LOBYTE(v53) = v56;
    HIBYTE(v53) = 1;
    sub_100001C34(&qword_10002C390, &qword_10001EDC8);
    sub_100001C34(&qword_10002C398, &qword_10001EDD0);
    sub_1000068D0();
    sub_100006BC4();
    sub_10001DB60();

    goto LABEL_14;
  }

  if (v9 != enum case for WorkoutNotification.NotificationType.transcript(_:))
  {
    if (v9 != enum case for WorkoutNotification.NotificationType.zone(_:))
    {

      sub_10001DAF0();
      v43 = sub_10001DD30();
      v45 = v44;
      v47 = v46 & 1;
      *&v51 = v43;
      *(&v51 + 1) = v44;
      *&v52 = v46 & 1;
      *(&v52 + 1) = v48;
      *&v50 = v48;
      LOBYTE(v53) = 1;
      sub_10000678C(v43, v44, v46 & 1);

      sub_100001C34(&qword_10002C370, &qword_10001EDC0);
      sub_10000679C();
      sub_10001DB60();
      v51 = v54;
      v52 = v55;
      LOBYTE(v53) = v56;
      HIBYTE(v53) = 1;
      sub_100001C34(&qword_10002C390, &qword_10001EDC8);
      sub_100001C34(&qword_10002C398, &qword_10001EDD0);
      sub_1000068D0();
      sub_100006BC4();
      sub_10001DB60();
      sub_100003470(v43, v45, v47);

      v49 = v55;
      v50 = v54;
      v22 = v56;
      v23 = v57;
      (*(v5 + 8))(v7, v4);
      v21 = v49;
      v20 = v50;
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  *&v51 = sub_10001D770();
  BYTE8(v51) = 1;
  v40 = sub_100006828(v51, v38, v39);
  sub_10000687C(v40, v41, v42);
  sub_10001DB60();
  *&v51 = v54;
  *(&v51 + 1) = BYTE8(v54);
  v52 = 0uLL;
  LOBYTE(v53) = 0;
  sub_100001C34(&qword_10002C370, &qword_10001EDC0);
  sub_10000679C();
  sub_10001DB60();
  v51 = v54;
  v52 = v55;
  LOBYTE(v53) = v56;
  HIBYTE(v53) = 1;
LABEL_13:
  sub_100001C34(&qword_10002C390, &qword_10001EDC8);
  sub_100001C34(&qword_10002C398, &qword_10001EDD0);
  sub_1000068D0();
  sub_100006BC4();
  sub_10001DB60();
LABEL_14:
  v20 = v54;
  v21 = v55;
  v22 = v56;
  v23 = v57;
LABEL_15:
  *a2 = v20;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 33) = v23;
}

__n128 sub_100006718@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_10001DB40();
  sub_100006044(v3, v9);
  v5 = v10;
  v6 = v11;
  result = v9[0];
  v8 = v9[1];
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 40) = v8;
  *(a1 + 56) = v5;
  *(a1 + 57) = v6;
  return result;
}

uint64_t sub_10000678C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000679C()
{
  result = qword_10002C378;
  if (!qword_10002C378)
  {
    v1 = sub_1000036E4(&qword_10002C370, &qword_10001EDC0);
    v6 = sub_100006828(v1, v2, v3);
    sub_10000687C(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C378);
  }

  return result;
}

unint64_t sub_100006828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C380;
  if (!qword_10002C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C380);
  }

  return result;
}

unint64_t sub_10000687C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C388;
  if (!qword_10002C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C388);
  }

  return result;
}

unint64_t sub_1000068D0()
{
  result = qword_10002C3A0;
  if (!qword_10002C3A0)
  {
    sub_1000036E4(&qword_10002C390, &qword_10001EDC8);
    sub_10000695C();
    sub_100006A90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3A0);
  }

  return result;
}

unint64_t sub_10000695C()
{
  result = qword_10002C3A8;
  if (!qword_10002C3A8)
  {
    v1 = sub_1000036E4(&qword_10002C3B0, &qword_10001EDD8);
    v6 = sub_1000069E8(v1, v2, v3);
    sub_100006A3C(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3A8);
  }

  return result;
}

unint64_t sub_1000069E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C3B8;
  if (!qword_10002C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3B8);
  }

  return result;
}

unint64_t sub_100006A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C3C0;
  if (!qword_10002C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3C0);
  }

  return result;
}

unint64_t sub_100006A90()
{
  result = qword_10002C3C8;
  if (!qword_10002C3C8)
  {
    v1 = sub_1000036E4(&qword_10002C3D0, &qword_10001EDE0);
    v6 = sub_100006B1C(v1, v2, v3);
    sub_100006B70(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3C8);
  }

  return result;
}

unint64_t sub_100006B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C3D8;
  if (!qword_10002C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3D8);
  }

  return result;
}

unint64_t sub_100006B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C3E0;
  if (!qword_10002C3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3E0);
  }

  return result;
}

unint64_t sub_100006BC4()
{
  result = qword_10002C3E8;
  if (!qword_10002C3E8)
  {
    sub_1000036E4(&qword_10002C398, &qword_10001EDD0);
    sub_10000679C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C3E8);
  }

  return result;
}

uint64_t sub_100006D10(unint64_t a1)
{
  v2 = sub_10001D780();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v16 - v7;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_10001E270();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    sub_10001D7C0();
    (*(v3 + 104))(v6, enum case for WorkoutNotificationUnit.NotificationUnitType.heading(_:), v2);
    sub_10000A2E0(&qword_10002C480, &type metadata accessor for WorkoutNotificationUnit.NotificationUnitType, &protocol conformance descriptor for WorkoutNotificationUnit.NotificationUnitType);
    sub_10001E190();
    sub_10001E190();
    if (v16[2] == v16[0] && v16[3] == v16[1])
    {
      v10 = *(v3 + 8);
      v10(v6, v2);
      v10(v8, v2);
    }

    else
    {
      v11 = sub_10001E2C0();
      v12 = *(v3 + 8);
      v12(v6, v2);
      v12(v8, v2);

      if ((v11 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v13 = sub_10001D7A0();
    if (v14)
    {
      if (v13 == 0xD000000000000017 && v14 == 0x8000000100025A60)
      {

        return 2;
      }

      v15 = sub_10001E2C0();

      if (v15)
      {
        return 2;
      }

      return 0;
    }

LABEL_14:

    return 0;
  }

  result = sub_10001E290();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10000701C(unint64_t a1)
{
  v2 = sub_10001D780();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v18 - v7;
  v9 = sub_100006D10(a1);
  if (a1 >> 62)
  {
    result = sub_10001E290();
    if (v9 >= result)
    {
      return v9;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= result)
    {
      return v9;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10001E270();
  }

  else
  {
    if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  sub_10001D7C0();
  (*(v3 + 104))(v6, enum case for WorkoutNotificationUnit.NotificationUnitType.heading(_:), v2);
  sub_10000A2E0(&qword_10002C480, &type metadata accessor for WorkoutNotificationUnit.NotificationUnitType, &protocol conformance descriptor for WorkoutNotificationUnit.NotificationUnitType);
  sub_10001E190();
  sub_10001E190();
  if (v18[2] == v18[0] && v18[3] == v18[1])
  {
    v11 = *(v3 + 8);
    v11(v6, v2);
    v11(v8, v2);
  }

  else
  {
    v12 = sub_10001E2C0();
    v13 = *(v3 + 8);
    v13(v6, v2);
    v13(v8, v2);

    if ((v12 & 1) == 0)
    {
LABEL_17:

      return v9;
    }
  }

  ++v9;
  v14 = COERCE_DOUBLE(sub_10001D7D0());
  v16 = v15;

  if (v16)
  {
    return v9;
  }

  if ((~*&v14 & 0x7FF0000000000000) == 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v14 < 9.22337204e18)
  {
    v17 = __OFADD__(v9, v14);
    v9 += v14;
    if (!v17)
    {
      return v9;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_100007338(unint64_t a1)
{
  result = sub_10000701C(a1);
  if (a1 >> 62)
  {
    v7 = result;
    v8 = sub_10001E290();
    result = v7;
    if (v7 >= v8)
    {
      goto LABEL_14;
    }
  }

  else if (result >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10001E270();
LABEL_7:
    v3 = sub_10001D7A0();
    v5 = v4;

    if (v5)
    {
      if (v3 == 0xD000000000000011 && v5 == 0x8000000100025A40)
      {
        v6 = 1;
      }

      else
      {
        v6 = sub_10001E2C0();
      }

      return v6 & 1;
    }

LABEL_14:
    v6 = 0;
    return v6 & 1;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100007464@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C470, &qword_10001F180);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v20 - v8;
  sub_100007648(a1, v20 - v8);
  v10 = sub_10000701C(a1);
  if (a1 >> 62)
  {
    result = sub_10001E290();
    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v12 >= result)
  {
    v13 = 0;
    v16 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v13 = sub_10001DAA0();
    sub_1000085DC(a1, v10, v20);
    v14 = v20[0];
    v15 = v20[1];
    v16 = 1;
    v17 = v20[2];
    v18 = v20[3];
  }

  sub_100009EE8(v9, v7);
  sub_100009EE8(v7, a2);
  v19 = (a2 + *(sub_100001C34(&qword_10002C478, &qword_10001F188) + 48));
  *v19 = v13;
  v19[1] = 0;
  v19[2] = v16;
  v19[3] = v14;
  v19[4] = v15;
  v19[5] = v17;
  v19[6] = v18;
  sub_100009F58(v13, 0, v16, v14, v15, v17, v18);
  sub_100009FFC(v9);
  sub_10000A064(v13, 0, v16, v14, v15, v17, v18);
  return sub_100009FFC(v7);
}

uint64_t sub_100007648@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C488, &qword_10001F190);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v29[-v6];
  v7 = sub_10001D780();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v29[-v12];
  v14 = sub_100001C34(&qword_10002C490, &qword_10001F198);
  v37 = *(v14 - 8);
  v38 = v14;
  __chkstk_darwin(v14);
  v36 = &v29[-v15];
  v16 = sub_100006D10(a1);
  if (a1 >> 62)
  {
    result = sub_10001E290();
    if (v16 < result)
    {
      goto LABEL_3;
    }

LABEL_13:
    v27 = v38;
    v28 = *(v37 + 56);

    return v28(a2, 1, 1, v27);
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v16 >= result)
  {
    goto LABEL_13;
  }

LABEL_3:
  v33 = v4;
  v34 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v18 = sub_10001E270();
LABEL_6:
    v31 = v18;
    v32 = v5;
    sub_10001D7C0();
    (*(v8 + 104))(v11, enum case for WorkoutNotificationUnit.NotificationUnitType.heading(_:), v7);
    sub_10000A2E0(&qword_10002C480, &type metadata accessor for WorkoutNotificationUnit.NotificationUnitType, &protocol conformance descriptor for WorkoutNotificationUnit.NotificationUnitType);
    sub_10001E190();
    sub_10001E190();
    if (v49 == v39)
    {
      v19 = *(v8 + 8);
      v19(v11, v7);
      v19(v13, v7);
    }

    else
    {
      v30 = sub_10001E2C0();
      v20 = *(v8 + 8);
      v20(v11, v7);
      v20(v13, v7);

      if ((v30 & 1) == 0)
      {

        v24 = v36;
        (*(v32 + 56))(v36, 1, 1, v33);
        goto LABEL_11;
      }
    }

    v21 = sub_10001DAA0();
    v42 = 1;
    sub_100007C70(a1, v16, &v49);
    v45 = v51;
    v46[0] = *v52;
    *(v46 + 9) = *&v52[9];
    v43 = v49;
    v44 = v50;
    v47[2] = v51;
    v48[0] = *v52;
    *(v48 + 9) = *&v52[9];
    v47[0] = v49;
    v47[1] = v50;
    sub_100003A7C(&v43, &v39, &qword_10002C498, &qword_10001F1A0);
    sub_100004088(v47, &qword_10002C498, &qword_10001F1A0);
    *(v41 + 7) = v43;
    v41[4] = *(v46 + 9);
    *(&v41[3] + 7) = v46[0];
    *(&v41[2] + 7) = v45;
    *(&v41[1] + 7) = v44;
    *&v40[17] = v41[1];
    *&v40[33] = v41[2];
    *&v40[49] = v41[3];
    *&v40[65] = v41[4];
    v39 = v21;
    v40[0] = v42;
    *&v40[1] = v41[0];
    sub_100001C34(&qword_10002C4A0, &qword_10001F1A8);
    sub_1000039E0(&qword_10002C4A8, &qword_10002C4A0, &qword_10001F1A8, &protocol conformance descriptor for HStack<A>);
    v22 = v35;
    sub_10001DD60();
    *&v52[16] = *&v40[48];
    v53 = *&v40[64];
    v54 = v40[80];
    v49 = v39;
    v50 = *v40;
    v51 = *&v40[16];
    *v52 = *&v40[32];
    sub_100004088(&v49, &qword_10002C4A0, &qword_10001F1A8);
    LODWORD(v21) = sub_10001DB80();

    v23 = v33;
    *(v22 + *(v33 + 36)) = v21;
    v24 = v36;
    sub_1000035C0(v22, v36, &qword_10002C488, &qword_10001F190);
    (*(v32 + 56))(v24, 0, 1, v23);
LABEL_11:
    v25 = v34;
    v26 = v38;
    sub_1000035C0(v24, v34, &qword_10002C490, &qword_10001F198);
    return (*(v37 + 56))(v25, 0, 1, v26);
  }

  if (v16 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_100007C70@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10001E110();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = COERCE_DOUBLE(sub_10001D7D0());
  if ((v11 & 1) != 0 || v10 != 5.0)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = a2 + 5;
    if (!__OFADD__(a2, 5))
    {
      goto LABEL_5;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v12 = sub_10001E290();
  v13 = a2 + 5;
  if (__OFADD__(a2, 5))
  {
    goto LABEL_56;
  }

LABEL_5:
  if (v13 >= v12)
  {
LABEL_12:
    result = sub_10001D7A0();
    if (v27)
    {
      (*(v7 + 104))(v9, enum case for LocalizationFeature.workout(_:), v6);
      v28 = sub_10001E0B0();
      v30 = v29;

      v31 = (*(v7 + 8))(v9, v6);
      *&v112 = v28;
      *(&v112 + 1) = v30;
      sub_100003A28(v31, v32, v33);
      v34 = sub_10001DD40();
      v119 = v35 & 1;
      v118 = 1;
      *&v106 = v34;
      *(&v106 + 1) = v36;
      LOBYTE(v107) = v35 & 1;
      *(&v107 + 1) = v96;
      DWORD1(v107) = *(&v96 + 3);
      v108 = v101;
      v109 = v102;
      *(&v107 + 1) = v37;
      v110 = v103;
      v111 = 1;
      sub_100001C34(&qword_10002C4B0, &qword_10001F1B0);
      sub_1000039E0(&qword_10002C4B8, &qword_10002C4B0, &qword_10001F1B0, &protocol conformance descriptor for TupleView<A>);
      result = sub_10001DB60();
      v38 = v112;
      v39 = v113;
      v40 = v114;
      v41 = v115;
      v42 = v116;
      v43 = v117;
    }

    else
    {
      v42 = 0;
      v38 = 0uLL;
      v43 = -1;
      v39 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
    }

    goto LABEL_39;
  }

  result = a2 + 1;
  v93 = a1 & 0xC000000000000001;
  v90 = a3;
  v88 = v13;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (a2 < -1)
    {
      __break(1u);
    }

    else if (result < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_60;
  }

LABEL_57:
  sub_10001E270();
LABEL_10:
  sub_10001D7A0();
  v16 = v15;

  if (v16)
  {
    (*(v7 + 104))(v9, enum case for LocalizationFeature.workout(_:), v6);
    v17 = sub_10001E0B0();
    v19 = v18;

    v20 = (*(v7 + 8))(v9, v6);
    *&v112 = v17;
    *(&v112 + 1) = v19;
    sub_100003A28(v20, v21, v22);
    v16 = sub_10001DD40();
    v24 = v23;
    v94 = v26;
    v95 = v25 & 1;
    sub_10000678C(v16, v26, v25 & 1);
    v89 = v24;
  }

  else
  {
    v94 = 0;
    v95 = 0;
    v89 = 0;
  }

  result = a2 + 2;
  v92 = v16;
  if (v93)
  {
    sub_10001E270();
    goto LABEL_21;
  }

  if (a2 < -2)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (result >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_21:
  sub_10001D7A0();
  v45 = v44;

  if (v45)
  {
    v45 = sub_10001DF00();
  }

  result = a2 + 3;
  if (v93)
  {
    sub_10001E270();
    goto LABEL_28;
  }

  if (a2 < -3)
  {
    goto LABEL_61;
  }

  if (result >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_28:
  v87 = sub_10001D7A0();
  v47 = v46;

  v91 = v45;
  if (!v47)
  {
    v48 = 0;
LABEL_37:
    v52 = 0;
    v53 = 0;
LABEL_38:
    v54 = v94;
    v55 = v95;
    *&v96 = v92;
    *(&v96 + 1) = v94;
    v56 = v89;
    *&v97 = v95;
    *(&v97 + 1) = v89;
    *&v98 = v45;
    *(&v98 + 1) = v48;
    *&v99 = v47;
    *(&v99 + 1) = v52;
    v100 = v53;
    v105 = v53;
    v103 = v98;
    v104 = v99;
    v101 = v96;
    v102 = v97;
    v57 = v92;
    sub_10000A328(v92, v94, v95, v89);

    sub_10000A328(v48, v47, v52, v53);
    sub_10000A36C(v48, v47, v52, v53);

    sub_10000A36C(v57, v54, v55, v56);
    v119 = 0;
    v108 = v103;
    v109 = v104;
    v110 = v105;
    v106 = v101;
    v107 = v102;
    v111 = 0;
    sub_100003A7C(&v96, &v112, &qword_10002C4C0, &qword_10001F1B8);
    sub_100001C34(&qword_10002C4B0, &qword_10001F1B0);
    sub_1000039E0(&qword_10002C4B8, &qword_10002C4B0, &qword_10001F1B0, &protocol conformance descriptor for TupleView<A>);
    sub_10001DB60();
    sub_10000A36C(v48, v47, v52, v53);

    sub_10000A36C(v92, v94, v95, v56);
    result = sub_100004088(&v96, &qword_10002C4C0, &qword_10001F1B8);
    v38 = v112;
    v39 = v113;
    v40 = v114;
    v41 = v115;
    v42 = v116;
    v43 = v117;
    a3 = v90;
LABEL_39:
    *a3 = v38;
    *(a3 + 16) = v39;
    *(a3 + 32) = v40;
    *(a3 + 48) = v41;
    *(a3 + 64) = v42;
    *(a3 + 72) = v43;
    return result;
  }

  result = a2 + 4;
  if (v93)
  {
    sub_10001E270();
    goto LABEL_35;
  }

  if (a2 < -4)
  {
    goto LABEL_64;
  }

  if (result >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

LABEL_35:
  v49 = COERCE_DOUBLE(sub_10001D7D0());
  v51 = v50;

  if (v51)
  {

    v48 = 0;
    v47 = 0;
    goto LABEL_37;
  }

  if (v93)
  {
    sub_10001E270();
    goto LABEL_45;
  }

  if ((v88 & 0x8000000000000000) != 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v88 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_45:
    v58 = COERCE_DOUBLE(sub_10001D7D0());
    v60 = v59;

    if (v60)
    {

      v48 = 0;
      v47 = 0;
      v52 = 0;
      v53 = 0;
      v45 = v91;
      goto LABEL_38;
    }

    (*(v7 + 104))(v9, enum case for LocalizationFeature.workout(_:), v6);
    sub_10001E0B0();
    v62 = v61;

    (*(v7 + 8))(v9, v6);
    sub_100001C34(&qword_10002C4C8, &qword_10001F1C0);
    result = swift_allocObject();
    *(result + 16) = xmmword_10001ED00;
    if ((~*&v49 & 0x7FF0000000000000) != 0)
    {
      if (v49 > -9.22337204e18)
      {
        v93 = v62;
        if (v49 < 9.22337204e18)
        {
          v65 = result;
          *&v112 = v49;
          sub_10000A3B0(result, v63, v64);
          v66 = sub_10001E240();
          v68 = v67;
          v65[7] = &type metadata for String;
          result = sub_10000A404(v66, v67, v69);
          v65[8] = result;
          v65[4] = v66;
          v65[5] = v68;
          if ((~*&v58 & 0x7FF0000000000000) != 0)
          {
            v70 = v58;
            if (v58 > -9.22337204e18)
            {
              v45 = v91;
              if (v70 < 9.22337204e18)
              {
                v71 = result;
                *&v112 = v70;
                v72 = sub_10001E240();
                v65[12] = &type metadata for String;
                v65[13] = v71;
                v65[9] = v72;
                v65[10] = v73;
                v74 = sub_10001E150();
                v76 = v75;

                *&v112 = v74;
                *(&v112 + 1) = v76;
                sub_100003A28(v77, v78, v79);
                v80 = sub_10001E220();
                v82 = v81;

                *&v106 = v80;
                *(&v106 + 1) = v82;
                v83 = sub_10001DD40();
                v47 = v84;
                v53 = v85;
                v52 = v86 & 1;
                v48 = v83;
                sub_10000678C(v83, v84, v86 & 1);

                goto LABEL_38;
              }

              goto LABEL_71;
            }

LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_1000085DC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = a3;
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v7 = sub_10001E270();
    v8 = sub_10001E270();
    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v6 <= a2)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v7 = *(a1 + 32 + 8 * result);
  v8 = *(a1 + 32 + 8 * a2);

LABEL_7:
  sub_10000A104();
  v10 = v9;
  if (sub_100007338(a1))
  {
    v11 = 0;
  }

  else
  {
    swift_retain_n();
    v11 = v7;
  }

  swift_retain_n();
  swift_retain_n();
  sub_100009FB8(v11, 0);
  sub_10000A0C4(v11, 0);

  *v3 = v8;
  v3[1] = v10;
  v3[2] = v11;
  v3[3] = 0;
  sub_10000A0C4(v11, 0);
}

void sub_10000875C(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C4E8, &qword_10001F1D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v24 - v6);
  v8 = sub_100001C34(&qword_10002C4F0, &qword_10001F1D8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  if (a1 >> 62)
  {
    v14 = sub_10001E290();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = v5;
  v27 = v4;
  if (v14 < 2)
  {
    v17 = 0;
    v16 = 0;
    v18 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  v25 = v7;
  v15 = sub_10001DA90();
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = sub_10001E270();
    v17 = sub_10001E270();
  }

  else
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_19;
    }

    v17 = *(a1 + 32);
    v16 = *(a1 + 40);
  }

  v18 = 1;
  if (v14 == 2)
  {
LABEL_11:
    (*(v26 + 56))(v13, 1, 1, v27);
LABEL_15:
    sub_100003A7C(v13, v11, &qword_10002C4F0, &qword_10001F1D8);
    *a2 = v15;
    a2[1] = 0;
    a2[2] = v18;
    a2[3] = v16;
    a2[4] = 0;
    a2[5] = v17;
    a2[6] = 0;
    v23 = sub_100001C34(&qword_10002C4F8, &qword_10001F1E0);
    sub_100003A7C(v11, a2 + *(v23 + 48), &qword_10002C4F0, &qword_10001F1D8);
    sub_10000A458(v15, 0, v18, v16, 0, v17, 0);
    sub_10000A4BC(v15, 0, v18, v16, 0, v17, 0);
    sub_100004088(v13, &qword_10002C4F0, &qword_10001F1D8);
    sub_100004088(v11, &qword_10002C4F0, &qword_10001F1D8);
    sub_10000A4BC(v15, 0, v18, v16, 0, v17, 0);
    return;
  }

  v19 = sub_10001DA90();
  v20 = v25;
  *v25 = v19;
  v20[1] = 0;
  *(v20 + 16) = 1;
  if (a1 >> 62)
  {
    v21 = sub_10001E290();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 >= 2)
  {
    v24[1] = *(sub_100001C34(&qword_10002C500, &qword_10001F1E8) + 44);
    v28 = 2;
    v29 = v21;
    v24[4] = swift_getKeyPath();
    *(swift_allocObject() + 16) = a1;

    v24[3] = sub_100001C34(&qword_10002C508, &qword_10001F208);
    v24[2] = sub_100001C34(&qword_10002C510, &qword_10001F210);
    sub_10000A560();
    sub_1000039E0(&qword_10002C528, &qword_10002C510, &qword_10001F210, &protocol conformance descriptor for TupleView<A>);
    v22 = v25;
    sub_10001DF60();
    sub_1000035C0(v22, v13, &qword_10002C4E8, &qword_10001F1D0);
    v18 = 1;
    (*(v26 + 56))(v13, 0, 1, v27);
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

uint64_t sub_100008BCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10001D780();
  result = __chkstk_darwin(v6);
  v10 = 0;
  v11 = *a1;
  if (v11 >= 3)
  {
    (*(v9 + 104))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for WorkoutNotificationUnit.NotificationUnitType.string(_:));
    sub_10001D7E0();
    swift_allocObject();
    v10 = sub_10001D7B0();
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v12 = sub_10001E270();
    goto LABEL_7;
  }

  if (v11 < 0)
  {
    __break(1u);
  }

  else if (v11 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(a2 + 8 * v11 + 32);

LABEL_7:
    sub_100009FB8(v10, 0);

    sub_10000A0C4(v10, 0);
    *a3 = v10;
    a3[1] = 0;
    a3[2] = v12;
    a3[3] = 0;

    return sub_10000A0C4(v10, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_100008DA0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v9 = *v4;
  *a4 = sub_10001DB40();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_100001C34(a1, a2);
  return a3(v9);
}

uint64_t sub_100008E0C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C530, &qword_10001F218);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  if (a1 >> 62)
  {
    v16 = v5;
    v13 = sub_10001E290();
    v5 = v16;
    if (v13 >= 3)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3)
  {
LABEL_3:
    v16 = v5;
    result = sub_10001DA90();
    *v7 = result;
    *(v7 + 1) = 0;
    v7[16] = 1;
    if (a1 >> 62)
    {
      result = sub_10001E290();
      v9 = result;
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 < 2)
    {
      __break(1u);
    }

    else
    {
      sub_100001C34(&qword_10002C538, &qword_10001F220);
      v17 = 2;
      v18 = v9;
      swift_getKeyPath();
      *(swift_allocObject() + 16) = a1;

      sub_100001C34(&qword_10002C508, &qword_10001F208);
      v10 = sub_10000A560();
      sub_100009E94(v10, v11, v12);
      sub_10001DF60();
      sub_1000035C0(v7, a2, &qword_10002C530, &qword_10001F218);
      return (*(v16 + 56))(a2, 0, 1, v4);
    }

    return result;
  }

  v14 = *(v5 + 56);

  return v14(a2, 1, 1, v4);
}

unint64_t sub_10000908C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = sub_10001E270();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(a2 + 8 * result + 32);

LABEL_5:
    result = sub_10001DE90();
    *a3 = v5;
    a3[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100009100@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C530, &qword_10001F218);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  if (a1 >> 62)
  {
    v16 = v5;
    v13 = sub_10001E290();
    v5 = v16;
    if (v13 >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:
    v16 = v5;
    result = sub_10001DA90();
    *v7 = result;
    *(v7 + 1) = 0;
    v7[16] = 1;
    if (a1 >> 62)
    {
      result = sub_10001E290();
      v9 = result;
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 < 3)
    {
      __break(1u);
    }

    else
    {
      sub_100001C34(&qword_10002C538, &qword_10001F220);
      v17 = 3;
      v18 = v9;
      swift_getKeyPath();
      *(swift_allocObject() + 16) = a1;

      sub_100001C34(&qword_10002C508, &qword_10001F208);
      v10 = sub_10000A560();
      sub_100009E94(v10, v11, v12);
      sub_10001DF60();
      sub_1000035C0(v7, a2, &qword_10002C530, &qword_10001F218);
      return (*(v16 + 56))(a2, 0, 1, v4);
    }

    return result;
  }

  v14 = *(v5 + 56);

  return v14(a2, 1, 1, v4);
}

unint64_t sub_100009380@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    result = sub_10001E270();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_5:
    *a3 = result;
    a3[1] = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100009458@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;
  a2[1] = 0;
}

uint64_t sub_100009464@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_10001DA90();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_100001C34(&qword_10002C400, &unk_10001F110);
  sub_10001D770();
  swift_getKeyPath();
  sub_100001C34(&qword_10002C408, &qword_10001F138);
  sub_1000039E0(&qword_10002C410, &qword_10002C408, &qword_10001F138, &protocol conformance descriptor for [A]);
  v3 = sub_10000A2E0(&qword_10002C418, &type metadata accessor for WorkoutNotificationUnit, &protocol conformance descriptor for WorkoutNotificationUnit);
  sub_100009E94(v3, v4, v5);
  return sub_10001DF60();
}

uint64_t sub_1000095A8@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = sub_10001D780();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10001E110();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001C34(&qword_10002C440, &qword_10001F150);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  *v14 = sub_10001DA90();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = sub_100001C34(&qword_10002C448, &qword_10001F158);
  sub_1000098F4(&v14[*(v15 + 44)]);
  (*(v6 + 104))(v8, enum case for LocalizationFeature.workout(_:), v5);
  sub_10001E0B0();
  (*(v6 + 8))(v8, v5);
  (*(v2 + 104))(v4, enum case for WorkoutNotificationUnit.NotificationUnitType.string(_:), v1);
  sub_10001D7E0();
  swift_allocObject();
  v16 = sub_10001D7B0();
  v17 = sub_10001DEC0();
  sub_100003A7C(v14, v12, &qword_10002C440, &qword_10001F150);
  v18 = v22;
  sub_100003A7C(v12, v22, &qword_10002C440, &qword_10001F150);
  v19 = (v18 + *(sub_100001C34(&qword_10002C450, &qword_10001F160) + 48));
  *v19 = v16;
  v19[1] = v17;

  sub_100004088(v14, &qword_10002C440, &qword_10001F150);

  return sub_100004088(v12, &qword_10002C440, &qword_10001F150);
}

uint64_t sub_1000098F4@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v27 = sub_10001E110();
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001D780();
  v25 = v4;
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001C34(&qword_10002C458, &qword_10001F168);
  v9 = __chkstk_darwin(v8 - 8);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = *(v5 + 104);
  v13(v7, enum case for WorkoutNotificationUnit.NotificationUnitType.image(_:), v4);
  sub_10001D7E0();
  swift_allocObject();
  v14 = sub_10001D7B0();
  v15 = sub_10001DEB0();
  v29 = v14;
  v30 = v15;
  sub_100009E94(v15, v16, v17);
  sub_10001DE10();

  v18 = v27;
  (*(v1 + 104))(v3, enum case for LocalizationFeature.workout(_:), v27);
  sub_10001E0B0();
  (*(v1 + 8))(v3, v18);
  v13(v7, enum case for WorkoutNotificationUnit.NotificationUnitType.string(_:), v25);
  swift_allocObject();
  v19 = sub_10001D7B0();
  v20 = sub_10001DEB0();
  v21 = v26;
  sub_100003A7C(v12, v26, &qword_10002C458, &qword_10001F168);
  v22 = v28;
  sub_100003A7C(v21, v28, &qword_10002C458, &qword_10001F168);
  v23 = (v22 + *(sub_100001C34(&qword_10002C460, &qword_10001F170) + 48));
  *v23 = v19;
  v23[1] = v20;

  sub_100004088(v12, &qword_10002C458, &qword_10001F168);

  return sub_100004088(v21, &qword_10002C458, &qword_10001F168);
}

uint64_t sub_100009CC8()
{
  v0 = sub_10001DBE0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001C34(&qword_10002C428, &qword_10001F140);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  *v6 = sub_10001DB40();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100001C34(&qword_10002C430, &qword_10001F148);
  sub_1000095A8(&v6[*(v7 + 44)]);
  sub_10001DBD0();
  sub_1000039E0(&qword_10002C438, &qword_10002C428, &qword_10001F140, &protocol conformance descriptor for VStack<A>);
  sub_10001DE20();
  (*(v1 + 8))(v3, v0);
  return sub_100004088(v6, &qword_10002C428, &qword_10001F140);
}

unint64_t sub_100009E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C420;
  if (!qword_10002C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C420);
  }

  return result;
}

uint64_t sub_100009EE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C34(&qword_10002C470, &qword_10001F180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100009F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {

    sub_100009FB8(a6, a7);
  }
}

uint64_t sub_100009FB8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009FFC(uint64_t a1)
{
  v2 = sub_100001C34(&qword_10002C470, &qword_10001F180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000A064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {

    sub_10000A0C4(a6, a7);
  }
}

uint64_t sub_10000A0C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_10000A104()
{
  v0 = sub_10001D780();
  v1 = *(v0 - 1);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D7C0();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for WorkoutNotificationUnit.NotificationUnitType.distance(_:))
  {
    v5 = [objc_opt_self() distanceColors];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 nonGradientTextColor];

      if (v7)
      {
LABEL_4:
        sub_10001DEE0();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v4 == enum case for WorkoutNotificationUnit.NotificationUnitType.string(_:))
  {
    sub_10001E1E0();
    sub_10001DEE0();
    return;
  }

  if (v4 == enum case for WorkoutNotificationUnit.NotificationUnitType.time(_:))
  {
    v8 = [objc_opt_self() elapsedTimeColors];
    if (!v8)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v0 = v8;
    v9 = [v8 nonGradientTextColor];

    if (v9)
    {
      goto LABEL_4;
    }

    __break(1u);
  }

  (*(v1 + 8))(v3, v0);
}

uint64_t sub_10000A2E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10000A328(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000678C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10000A36C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100003470(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10000A3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C4D0;
  if (!qword_10002C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4D0);
  }

  return result;
}

unint64_t sub_10000A404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C4D8;
  if (!qword_10002C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4D8);
  }

  return result;
}

void sub_10000A458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
  }
}

void sub_10000A4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
  {
  }
}

uint64_t sub_10000A520()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10000A560()
{
  result = qword_10002C518;
  if (!qword_10002C518)
  {
    v1 = sub_1000036E4(&qword_10002C508, &qword_10001F208);
    sub_10000A5EC(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C518);
  }

  return result;
}

unint64_t sub_10000A5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C520;
  if (!qword_10002C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C520);
  }

  return result;
}

uint64_t sub_10000A694()
{
  sub_1000036E4(&qword_10002C428, &qword_10001F140);
  sub_1000039E0(&qword_10002C438, &qword_10002C428, &qword_10001F140, &protocol conformance descriptor for VStack<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10000A7B8()
{
  result = qword_10002C570;
  if (!qword_10002C570)
  {
    sub_1000036E4(&qword_10002C578, &unk_10001F240);
    sub_1000039E0(&qword_10002C580, &qword_10002C530, &qword_10001F218, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C570);
  }

  return result;
}

__n128 sub_10000A87C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000A888(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000A8D0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10000A938(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v583 = a2;
  v592 = a3;
  v3 = sub_10001DAE0();
  __chkstk_darwin(v3 - 8);
  v437 = &v428 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = sub_100001C34(&qword_10002C588, &qword_10001F310);
  __chkstk_darwin(v452);
  v453 = &v428 - v5;
  v491 = sub_100001C34(&qword_10002C590, &qword_10001F318);
  __chkstk_darwin(v491);
  v454 = &v428 - v6;
  v441 = sub_100001C34(&qword_10002C598, &qword_10001F320);
  __chkstk_darwin(v441);
  v442 = &v428 - v7;
  v8 = sub_100001C34(&qword_10002C5A0, &qword_10001F328);
  v439 = *(v8 - 8);
  v440 = v8;
  v9 = __chkstk_darwin(v8);
  v433 = &v428 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v448 = &v428 - v11;
  v456 = sub_100001C34(&qword_10002C5A8, &qword_10001F330);
  v12 = __chkstk_darwin(v456);
  v429 = &v428 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v430 = &v428 - v15;
  v16 = __chkstk_darwin(v14);
  v438 = &v428 - v17;
  __chkstk_darwin(v16);
  v455 = &v428 - v18;
  v451 = sub_100001C34(&qword_10002C5B0, &qword_10001F338);
  __chkstk_darwin(v451);
  v457 = &v428 - v19;
  v20 = sub_10001E0D0();
  v446 = *(v20 - 8);
  v447 = v20;
  v21 = __chkstk_darwin(v20);
  v436 = &v428 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v458 = &v428 - v23;
  v24 = sub_100001C34(&qword_10002C5B8, &qword_10001F340);
  v461 = *(v24 - 8);
  v462 = v24;
  v25 = __chkstk_darwin(v24);
  v432 = &v428 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v431 = &v428 - v28;
  v29 = __chkstk_darwin(v27);
  v444 = &v428 - v30;
  __chkstk_darwin(v29);
  v443 = &v428 - v31;
  v486 = sub_100001C34(&qword_10002C5C0, &qword_10001F348);
  v32 = __chkstk_darwin(v486);
  v445 = &v428 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v481 = &v428 - v34;
  v487 = sub_100001C34(&qword_10002C5C8, &qword_10001F350);
  __chkstk_darwin(v487);
  v489 = &v428 - v35;
  v483 = sub_100001C34(&qword_10002C5D0, &qword_10001F358);
  __chkstk_darwin(v483);
  v484 = &v428 - v36;
  v488 = sub_100001C34(&qword_10002C5D8, &qword_10001F360);
  __chkstk_darwin(v488);
  v485 = &v428 - v37;
  v523 = sub_100001C34(&qword_10002C5E0, &qword_10001F368);
  __chkstk_darwin(v523);
  v490 = &v428 - v38;
  v479 = sub_100001C34(&qword_10002C5E8, &qword_10001F370);
  __chkstk_darwin(v479);
  v480 = &v428 - v39;
  v40 = sub_10001E0A0();
  v475 = *(v40 - 8);
  v476 = v40;
  v41 = __chkstk_darwin(v40);
  v463 = &v428 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v482 = &v428 - v43;
  v478 = sub_100001C34(&qword_10002C5F0, &qword_10001F378);
  v44 = __chkstk_darwin(v478);
  v449 = &v428 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v44);
  v450 = &v428 - v47;
  v48 = __chkstk_darwin(v46);
  v459 = &v428 - v49;
  __chkstk_darwin(v48);
  v460 = &v428 - v50;
  v494 = sub_100001C34(&qword_10002C5F8, &qword_10001F380);
  v493 = *(v494 - 8);
  __chkstk_darwin(v494);
  v477 = &v428 - v51;
  v52 = sub_10001E2B0();
  v473 = *(v52 - 8);
  v474 = v52;
  __chkstk_darwin(v52);
  v468 = &v428 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10001E2F0();
  v469 = *(v54 - 8);
  v470 = v54;
  __chkstk_darwin(v54);
  v466 = &v428 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10001E300();
  v471 = *(v56 - 8);
  v472 = v56;
  __chkstk_darwin(v56);
  v467 = &v428 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v501 = sub_100001C34(&qword_10002C600, &qword_10001F388);
  __chkstk_darwin(v501);
  v495 = &v428 - v58;
  v499 = sub_100001C34(&qword_10002C608, &qword_10001F390);
  __chkstk_darwin(v499);
  v500 = &v428 - v59;
  v517 = sub_100001C34(&qword_10002C610, &qword_10001F398);
  __chkstk_darwin(v517);
  v502 = &v428 - v60;
  v519 = sub_100001C34(&qword_10002C618, &qword_10001F3A0);
  __chkstk_darwin(v519);
  v521 = &v428 - v61;
  v514 = sub_100001C34(&qword_10002C620, &qword_10001F3A8);
  __chkstk_darwin(v514);
  v516 = &v428 - v62;
  v511 = sub_100001C34(&qword_10002C628, &qword_10001F3B0);
  __chkstk_darwin(v511);
  v512 = &v428 - v63;
  v515 = sub_100001C34(&qword_10002C630, &qword_10001F3B8);
  __chkstk_darwin(v515);
  v513 = &v428 - v64;
  v520 = sub_100001C34(&qword_10002C638, &qword_10001F3C0);
  __chkstk_darwin(v520);
  v518 = &v428 - v65;
  v587 = sub_100001C34(&qword_10002C640, &qword_10001F3C8);
  __chkstk_darwin(v587);
  v522 = &v428 - v66;
  v508 = sub_100001C34(&qword_10002C648, &qword_10001F3D0);
  v507 = *(v508 - 8);
  __chkstk_darwin(v508);
  v506 = &v428 - v67;
  v510 = sub_100001C34(&qword_10002C650, &qword_10001F3D8);
  __chkstk_darwin(v510);
  v509 = &v428 - v68;
  v69 = sub_100001C34(&qword_10002C658, &qword_10001F3E0);
  __chkstk_darwin(v69 - 8);
  v524 = (&v428 - v70);
  v544 = sub_100001C34(&qword_10002C660, &qword_10001F3E8);
  __chkstk_darwin(v544);
  v525 = &v428 - v71;
  v546 = sub_100001C34(&qword_10002C668, &qword_10001F3F0);
  v527 = *(v546 - 8);
  __chkstk_darwin(v546);
  v526 = &v428 - v72;
  v542 = sub_100001C34(&qword_10002C670, &qword_10001F3F8);
  __chkstk_darwin(v542);
  v543 = &v428 - v73;
  v555 = sub_100001C34(&qword_10002C678, &qword_10001F400);
  __chkstk_darwin(v555);
  v545 = &v428 - v74;
  v534 = sub_10001DB30();
  v533 = *(v534 - 8);
  __chkstk_darwin(v534);
  v532 = &v428 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v530 = sub_10001DC60();
  v529 = *(v530 - 8);
  __chkstk_darwin(v530);
  v528 = &v428 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v539 = sub_100001C34(&qword_10002C680, &qword_10001F408);
  v538 = *(v539 - 8);
  __chkstk_darwin(v539);
  v531 = &v428 - v77;
  v537 = sub_10001E110();
  v536 = *(v537 - 8);
  __chkstk_darwin(v537);
  v535 = &v428 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v541 = sub_100001C34(&qword_10002C688, &qword_10001F410);
  __chkstk_darwin(v541);
  v540 = &v428 - v79;
  v553 = sub_100001C34(&qword_10002C690, &qword_10001F418);
  __chkstk_darwin(v553);
  v554 = &v428 - v80;
  v581 = sub_100001C34(&qword_10002C698, &qword_10001F420);
  __chkstk_darwin(v581);
  v556 = &v428 - v81;
  v589 = sub_100001C34(&qword_10002C6A0, &qword_10001F428);
  __chkstk_darwin(v589);
  v591 = (&v428 - v82);
  v584 = sub_100001C34(&qword_10002C6A8, &qword_10001F430);
  __chkstk_darwin(v584);
  v586 = &v428 - v83;
  v578 = sub_100001C34(&qword_10002C6B0, &qword_10001F438);
  __chkstk_darwin(v578);
  v580 = &v428 - v84;
  v566 = sub_100001C34(&qword_10002C6B8, &qword_10001F440);
  __chkstk_darwin(v566);
  v567 = &v428 - v85;
  v569 = sub_100001C34(&qword_10002C6C0, &qword_10001F448);
  __chkstk_darwin(v569);
  v570 = &v428 - v86;
  v577 = sub_100001C34(&qword_10002C6C8, &qword_10001F450);
  __chkstk_darwin(v577);
  v571 = &v428 - v87;
  v579 = sub_100001C34(&qword_10002C6D0, &qword_10001F458);
  __chkstk_darwin(v579);
  v568 = &v428 - v88;
  v585 = sub_100001C34(&qword_10002C6D8, &qword_10001F460);
  __chkstk_darwin(v585);
  v582 = &v428 - v89;
  v590 = sub_100001C34(&qword_10002C6E0, &qword_10001F468);
  __chkstk_darwin(v590);
  v588 = &v428 - v90;
  v575 = sub_10001DBE0();
  v576 = *(v575 - 8);
  __chkstk_darwin(v575);
  v92 = &v428 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v593 = sub_100001C34(&qword_10002C6E8, &qword_10001F470);
  __chkstk_darwin(v593);
  v94 = &v428 - v93;
  v572 = sub_100001C34(&qword_10002C6F0, &qword_10001F478);
  v573 = *(v572 - 8);
  v95 = __chkstk_darwin(v572);
  v492 = &v428 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __chkstk_darwin(v95);
  v497 = &v428 - v98;
  v99 = __chkstk_darwin(v97);
  v504 = &v428 - v100;
  v101 = __chkstk_darwin(v99);
  v548 = &v428 - v102;
  v103 = __chkstk_darwin(v101);
  v551 = &v428 - v104;
  v105 = __chkstk_darwin(v103);
  v558 = &v428 - v106;
  v107 = __chkstk_darwin(v105);
  v561 = &v428 - v108;
  v109 = __chkstk_darwin(v107);
  v564 = &v428 - v110;
  __chkstk_darwin(v109);
  v112 = &v428 - v111;
  v574 = sub_100001C34(&qword_10002C6F8, &unk_10001F480);
  v113 = __chkstk_darwin(v574);
  v464 = &v428 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __chkstk_darwin(v113);
  v465 = &v428 - v116;
  v117 = __chkstk_darwin(v115);
  v496 = &v428 - v118;
  v119 = __chkstk_darwin(v117);
  v498 = &v428 - v120;
  v121 = __chkstk_darwin(v119);
  v503 = &v428 - v122;
  v123 = __chkstk_darwin(v121);
  v505 = &v428 - v124;
  v125 = __chkstk_darwin(v123);
  v547 = &v428 - v126;
  v127 = __chkstk_darwin(v125);
  v549 = &v428 - v128;
  v129 = __chkstk_darwin(v127);
  v550 = &v428 - v130;
  v131 = __chkstk_darwin(v129);
  v552 = &v428 - v132;
  v133 = __chkstk_darwin(v131);
  v557 = &v428 - v134;
  v135 = __chkstk_darwin(v133);
  v559 = &v428 - v136;
  v137 = __chkstk_darwin(v135);
  v560 = &v428 - v138;
  v139 = __chkstk_darwin(v137);
  v562 = &v428 - v140;
  v141 = __chkstk_darwin(v139);
  v143 = &v428 - v142;
  v144 = __chkstk_darwin(v141);
  v563 = &v428 - v145;
  v146 = __chkstk_darwin(v144);
  v148 = &v428 - v147;
  __chkstk_darwin(v146);
  v565 = &v428 - v149;
  v150 = sub_10001D780();
  v151 = *(v150 - 8);
  v152 = __chkstk_darwin(v150);
  v434 = &v428 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v152);
  v155 = &v428 - v154;
  sub_10001D7C0();
  v435 = v151;
  v156 = (*(v151 + 88))(v155, v150);
  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.averageCadence(_:))
  {
    *v94 = sub_10001DA90();
    *(v94 + 1) = 0;
    v94[16] = 0;
    v157 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v158 = v583;
    sub_10001015C(&v94[*(v157 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470, &protocol conformance descriptor for HStack<A>);
    sub_10001DE20();
    (*(v576 + 8))(v92, v575);
    sub_100004088(v94, &qword_10002C6E8, &qword_10001F470);
    if (v158)
    {
      v159 = v158;
    }

    else
    {
      v159 = sub_10001DE50();
    }

    (*(v573 + 32))(v148, v112, v572);
    *&v148[*(v574 + 36)] = v159;
    v169 = &qword_10002C6F8;
    v170 = &unk_10001F480;
    v171 = v565;
    sub_1000035C0(v148, v565, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v171, v570, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010688();

    v172 = v571;
    sub_10001DB60();
    sub_100003A7C(v172, v567, &qword_10002C6C8, &qword_10001F450);
    swift_storeEnumTagMultiPayload();
    sub_100010658();
    v173 = v568;
    sub_10001DB60();
    sub_100004088(v172, &qword_10002C6C8, &qword_10001F450);
    sub_100003A7C(v173, v580, &qword_10002C6D0, &qword_10001F458);
    swift_storeEnumTagMultiPayload();
    sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
    sub_1000107B0();
    v174 = v582;
    sub_10001DB60();
    sub_100004088(v173, &qword_10002C6D0, &qword_10001F458);
    sub_100003A7C(v174, v586, &qword_10002C6D8, &qword_10001F460);
    swift_storeEnumTagMultiPayload();
    sub_1000105A0();
    sub_100010C3C();
    v175 = v588;
    sub_10001DB60();
    sub_100004088(v174, &qword_10002C6D8, &qword_10001F460);
    sub_100003A7C(v175, v591, &qword_10002C6E0, &qword_10001F468);
    swift_storeEnumTagMultiPayload();
    sub_100010514();
    sub_10001DB60();
    sub_100004088(v175, &qword_10002C6E0, &qword_10001F468);
    v176 = v171;
    goto LABEL_28;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.averagePace(_:))
  {
    *v94 = sub_10001DA90();
    *(v94 + 1) = 0;
    v94[16] = 0;
    v160 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v161 = v583;
    sub_10001015C(&v94[*(v160 + 44)]);
    v162 = v92;
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470, &protocol conformance descriptor for HStack<A>);
    v163 = v564;
    sub_10001DE20();
    (*(v576 + 8))(v162, v575);
    sub_100004088(v94, &qword_10002C6E8, &qword_10001F470);
    if (v161)
    {
      v164 = v161;
LABEL_18:
      (*(v573 + 32))(v143, v163, v572);
      *&v143[*(v574 + 36)] = v164;
      v169 = &qword_10002C6F8;
      v170 = &unk_10001F480;
      v185 = v563;
      sub_1000035C0(v143, v563, &qword_10002C6F8, &unk_10001F480);
      sub_100003A7C(v185, v570, &qword_10002C6F8, &unk_10001F480);
      swift_storeEnumTagMultiPayload();
      sub_100010688();

      v186 = v571;
      sub_10001DB60();
      sub_100003A7C(v186, v567, &qword_10002C6C8, &qword_10001F450);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      sub_100010658();
      v194 = v568;
      sub_10001DB60();
      sub_100004088(v186, &qword_10002C6C8, &qword_10001F450);
      v195 = &qword_10002C6D0;
      v196 = &qword_10001F458;
      sub_100003A7C(v194, v580, &qword_10002C6D0, &qword_10001F458);
      swift_storeEnumTagMultiPayload();
LABEL_26:
      sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
      sub_1000107B0();
      v197 = v582;
      sub_10001DB60();
      sub_100004088(v194, v195, v196);
      v198 = &qword_10002C6D8;
      v199 = &qword_10001F460;
      sub_100003A7C(v197, v586, &qword_10002C6D8, &qword_10001F460);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      sub_1000105A0();
      sub_100010C3C();
      v200 = v588;
      sub_10001DB60();
      sub_100004088(v197, v198, v199);
      sub_100003A7C(v200, v591, &qword_10002C6E0, &qword_10001F468);
      swift_storeEnumTagMultiPayload();
      sub_100010514();
      sub_10001DB60();
      sub_100004088(v200, &qword_10002C6E0, &qword_10001F468);
      v176 = v185;
LABEL_28:
      v201 = v169;
      v202 = v170;
LABEL_29:
      sub_100004088(v176, v201, v202);
      return;
    }

    v182 = [objc_opt_self() paceColors];
    if (v182)
    {
      v183 = v182;
      v184 = [v182 nonGradientTextColor];

      if (v184)
      {
        v164 = sub_10001DEE0();
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_154;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.averagePower(_:))
  {
    *v94 = sub_10001DA90();
    *(v94 + 1) = 0;
    v94[16] = 0;
    v165 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v166 = v583;
    sub_10001015C(&v94[*(v165 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470, &protocol conformance descriptor for HStack<A>);
    v167 = v561;
    sub_10001DE20();
    (*(v576 + 8))(v92, v575);
    sub_100004088(v94, &qword_10002C6E8, &qword_10001F470);
    if (v166)
    {
      v168 = v166;
    }

    else
    {
      v191 = [objc_opt_self() powerColors];
      v192 = [v191 nonGradientTextColor];

      if (!v192)
      {
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      v168 = sub_10001DEE0();
    }

    v193 = v560;
    (*(v573 + 32))(v560, v167, v572);
    *(v193 + *(v574 + 36)) = v168;
    v169 = &qword_10002C6F8;
    v170 = &unk_10001F480;
    v185 = v562;
    sub_1000035C0(v193, v562, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v185, v570, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010688();

    v186 = v571;
    sub_10001DB60();
    sub_100003A7C(v186, v567, &qword_10002C6C8, &qword_10001F450);
    goto LABEL_25;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.cadence(_:))
  {
    *v94 = sub_10001DA90();
    *(v94 + 1) = 0;
    v94[16] = 0;
    v177 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v178 = v583;
    sub_10001015C(&v94[*(v177 + 44)]);
    v179 = v92;
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470, &protocol conformance descriptor for HStack<A>);
    v180 = v558;
    sub_10001DE20();
    (*(v576 + 8))(v179, v575);
    sub_100004088(v94, &qword_10002C6E8, &qword_10001F470);
    if (v178)
    {
      v181 = v178;
    }

    else
    {
      v181 = sub_10001DE50();
    }

    v207 = v557;
    (*(v573 + 32))(v557, v180, v572);
    *(v207 + *(v574 + 36)) = v181;
    v208 = v559;
    sub_1000035C0(v207, v559, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v208, v570, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010688();

    v209 = v571;
    sub_10001DB60();
    sub_100003A7C(v209, v567, &qword_10002C6C8, &qword_10001F450);
    swift_storeEnumTagMultiPayload();
    sub_100010658();
    v210 = v568;
    sub_10001DB60();
    sub_100004088(v209, &qword_10002C6C8, &qword_10001F450);
    sub_100003A7C(v210, v580, &qword_10002C6D0, &qword_10001F458);
    swift_storeEnumTagMultiPayload();
    sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
    sub_1000107B0();
    v211 = v582;
    sub_10001DB60();
    sub_100004088(v210, &qword_10002C6D0, &qword_10001F458);
    sub_100003A7C(v211, v586, &qword_10002C6D8, &qword_10001F460);
    swift_storeEnumTagMultiPayload();
    sub_1000105A0();
    sub_100010C3C();
    v212 = v588;
    sub_10001DB60();
    sub_100004088(v211, &qword_10002C6D8, &qword_10001F460);
    sub_100003A7C(v212, v591, &qword_10002C6E0, &qword_10001F468);
    swift_storeEnumTagMultiPayload();
    sub_100010514();
    sub_10001DB60();
    sub_100004088(v212, &qword_10002C6E0, &qword_10001F468);
    v176 = v208;
    v201 = &qword_10002C6F8;
    v202 = &unk_10001F480;
    goto LABEL_29;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.distance(_:))
  {
    *v94 = sub_10001DA90();
    *(v94 + 1) = 0;
    v94[16] = 0;
    v187 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v188 = v583;
    sub_10001015C(&v94[*(v187 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470, &protocol conformance descriptor for HStack<A>);
    v189 = v551;
    sub_10001DE20();
    (*(v576 + 8))(v92, v575);
    sub_100004088(v94, &qword_10002C6E8, &qword_10001F470);
    if (v188)
    {
      v190 = v188;
    }

    else
    {
      v232 = [objc_opt_self() distanceColors];
      if (!v232)
      {
LABEL_155:
        __break(1u);
        goto LABEL_156;
      }

      v233 = v232;
      v234 = [v232 nonGradientTextColor];

      if (!v234)
      {
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v190 = sub_10001DEE0();
    }

    v235 = v550;
    (*(v573 + 32))(v550, v189, v572);
    *(v235 + *(v574 + 36)) = v190;
    v169 = &qword_10002C6F8;
    v170 = &unk_10001F480;
    v185 = v552;
    sub_1000035C0(v235, v552, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v185, v570, &qword_10002C6F8, &unk_10001F480);
LABEL_53:
    swift_storeEnumTagMultiPayload();
    sub_100010688();

    v263 = v571;
    sub_10001DB60();
    sub_100003A7C(v263, v554, &qword_10002C6C8, &qword_10001F450);
    swift_storeEnumTagMultiPayload();
    sub_100010658();
    sub_10001083C();
    v194 = v556;
    sub_10001DB60();
    sub_100004088(v263, &qword_10002C6C8, &qword_10001F450);
    v195 = &qword_10002C698;
    v196 = &qword_10001F420;
    sub_100003A7C(v194, v580, &qword_10002C698, &qword_10001F420);
    swift_storeEnumTagMultiPayload();
    goto LABEL_26;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.energy(_:))
  {
    *v94 = sub_10001DA90();
    *(v94 + 1) = 0;
    v94[16] = 0;
    v203 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v204 = v583;
    sub_10001015C(&v94[*(v203 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470, &protocol conformance descriptor for HStack<A>);
    v205 = v548;
    sub_10001DE20();
    (*(v576 + 8))(v92, v575);
    sub_100004088(v94, &qword_10002C6E8, &qword_10001F470);
    if (v204)
    {
      v206 = v204;
    }

    else
    {
      v259 = [objc_opt_self() energyColors];
      if (!v259)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v260 = v259;
      v261 = [v259 nonGradientTextColor];

      if (!v261)
      {
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v206 = sub_10001DEE0();
    }

    v262 = v547;
    (*(v573 + 32))(v547, v205, v572);
    *(v262 + *(v574 + 36)) = v206;
    v169 = &qword_10002C6F8;
    v170 = &unk_10001F480;
    v185 = v549;
    sub_1000035C0(v262, v549, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v185, v570, &qword_10002C6F8, &unk_10001F480);
    goto LABEL_53;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.heading(_:))
  {
    sub_10001D7A0();
    if (v213)
    {
      v214 = v536;
      v215 = v535;
      v216 = v537;
      (*(v536 + 104))(v535, enum case for LocalizationFeature.workout(_:), v537);
      v217 = sub_10001E0B0();
      v219 = v218;

      v220 = (*(v214 + 8))(v215, v216);
      *&v604[0] = v217;
      *(&v604[0] + 1) = v219;
      sub_100003A28(v220, v221, v222);
      v223 = sub_10001E220();
      v225 = v224;

      *&v604[0] = v223;
      *(&v604[0] + 1) = v225;
      v226 = sub_10001DD40();
      v228 = v227;
      v230 = v229;
      if (v583)
      {
        v231 = v583;
      }

      else
      {
        v231 = sub_10001DE90();
      }

      *&v604[0] = v231;

      v272 = sub_10001DD00();
      v274 = v273;
      v276 = v275;
      sub_100003470(v226, v228, v230 & 1);

      sub_10001DC90();
      v277 = v528;
      sub_10001DC50();
      sub_10001DCC0();
      (*(v529 + 8))(v277, v530);
      v278 = sub_10001DD20();
      v280 = v279;
      v282 = v281;
      v284 = v283;

      sub_100003470(v272, v274, v276 & 1);

      v285 = sub_10001DC00();
      FIUICurrentLanguageRequiresTallScript();
      sub_10001D900();
      v287 = v286;
      v289 = v288;
      v291 = v290;
      v293 = v292;
      v607 = v282 & 1;
      v606 = 0;
      LOBYTE(v272) = sub_10001DC10();
      sub_10001D900();
      v295 = v294;
      v297 = v296;
      v299 = v298;
      v301 = v300;
      v608 = 0;
      LOBYTE(v274) = sub_10001DC20();
      sub_10001D900();
      LOBYTE(v609) = 0;
      *&v594 = v278;
      *(&v594 + 1) = v280;
      LOBYTE(v595) = v282 & 1;
      *(&v595 + 1) = v284;
      LOBYTE(v596) = v285;
      *(&v596 + 1) = v287;
      *&v597 = v289;
      *(&v597 + 1) = v291;
      *&v598 = v293;
      BYTE8(v598) = 0;
      LOBYTE(v599) = v272;
      *(&v599 + 1) = v295;
      *&v600 = v297;
      *(&v600 + 1) = v299;
      *&v601 = v301;
      BYTE8(v601) = 0;
      LOBYTE(v602) = v274;
      *(&v602 + 1) = v302;
      *&v603[0] = v303;
      *(&v603[0] + 1) = v304;
      *&v603[1] = v305;
      BYTE8(v603[1]) = 0;
      v306 = v532;
      sub_10001DB20();
      sub_100001C34(&qword_10002C758, &qword_10001F490);
      sub_100010A50(&qword_10002C750, &qword_10002C758, &qword_10001F490, sub_100010A20);
      v307 = v531;
      sub_10001DE30();
      (*(v533 + 8))(v306, v534);
      v604[8] = v602;
      v605[0] = v603[0];
      *(v605 + 9) = *(v603 + 9);
      v604[4] = v598;
      v604[5] = v599;
      v604[7] = v601;
      v604[6] = v600;
      v604[0] = v594;
      v604[1] = v595;
      v604[3] = v597;
      v604[2] = v596;
      sub_100004088(v604, &qword_10002C758, &qword_10001F490);
      v267 = v540;
      sub_1000035C0(v307, v540, &qword_10002C680, &qword_10001F408);
      (*(v538 + 56))(v267, 0, 1, v539);
    }

    else
    {
      v267 = v540;
      (*(v538 + 56))(v540, 1, 1, v539);
    }

    v308 = &qword_10002C688;
    v309 = &qword_10001F410;
    sub_100003A7C(v267, v543, &qword_10002C688, &qword_10001F410);
    swift_storeEnumTagMultiPayload();
    sub_1000112C0(&qword_10002C740, &qword_10002C688, &qword_10001F410, sub_100010938);
    v310 = sub_100010B58();
    *&v604[0] = v544;
    *(&v604[0] + 1) = v310;
    swift_getOpaqueTypeConformance2();
    v311 = v545;
    sub_10001DB60();
    sub_100003A7C(v311, v554, &qword_10002C678, &qword_10001F400);
    swift_storeEnumTagMultiPayload();
    sub_100010658();
    sub_10001083C();
    v312 = v556;
    sub_10001DB60();
    sub_100004088(v311, &qword_10002C678, &qword_10001F400);
    sub_100003A7C(v312, v580, &qword_10002C698, &qword_10001F420);
    swift_storeEnumTagMultiPayload();
    sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
    sub_1000107B0();
    v313 = v582;
    sub_10001DB60();
    sub_100004088(v312, &qword_10002C698, &qword_10001F420);
    v314 = &qword_10002C6D8;
    v315 = &qword_10001F460;
    sub_100003A7C(v313, v586, &qword_10002C6D8, &qword_10001F460);
    goto LABEL_67;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.heartRate(_:))
  {
    v236 = sub_10001DA90();
    v237 = v524;
    *v524 = v236;
    *(v237 + 8) = 0;
    *(v237 + 16) = 0;
    v238 = sub_100001C34(&qword_10002C850, &qword_10001F4C8);
    v239 = v583;
    sub_10000FB74(v583, (v237 + *(v238 + 44)));
    v240 = v239;
    v241 = v576;
    v242 = v575;
    v243 = v92;
    if (!v239)
    {
      v244 = [objc_opt_self() heartRateColors];
      if (!v244)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      v245 = v244;
      v246 = [v244 nonGradientTextColor];

      if (!v246)
      {
LABEL_163:
        __break(1u);
        goto LABEL_164;
      }

      v240 = sub_10001DEE0();
    }

    KeyPath = swift_getKeyPath();
    v248 = v525;
    sub_1000035C0(v237, v525, &qword_10002C658, &qword_10001F3E0);
    v249 = v544;
    v250 = (v248 + *(v544 + 36));
    *v250 = KeyPath;
    v250[1] = v240;

    sub_10001DBC0();
    v251 = sub_100010B58();
    v252 = v526;
    sub_10001DE20();
    (*(v241 + 8))(v243, v242);
    sub_100004088(v248, &qword_10002C660, &qword_10001F3E8);
    v253 = v527;
    v254 = v546;
    (*(v527 + 16))(v543, v252, v546);
    swift_storeEnumTagMultiPayload();
    sub_1000112C0(&qword_10002C740, &qword_10002C688, &qword_10001F410, sub_100010938);
    *&v604[0] = v249;
    *(&v604[0] + 1) = v251;
    swift_getOpaqueTypeConformance2();
    v255 = v545;
    sub_10001DB60();
    sub_100003A7C(v255, v554, &qword_10002C678, &qword_10001F400);
    swift_storeEnumTagMultiPayload();
    sub_100010658();
    sub_10001083C();
    v256 = v556;
    sub_10001DB60();
    sub_100004088(v255, &qword_10002C678, &qword_10001F400);
    sub_100003A7C(v256, v580, &qword_10002C698, &qword_10001F420);
    swift_storeEnumTagMultiPayload();
    sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
    sub_1000107B0();
    v257 = v582;
    sub_10001DB60();
    sub_100004088(v256, &qword_10002C698, &qword_10001F420);
    sub_100003A7C(v257, v586, &qword_10002C6D8, &qword_10001F460);
    swift_storeEnumTagMultiPayload();
    sub_1000105A0();
    sub_100010C3C();
    v258 = v588;
    sub_10001DB60();
    sub_100004088(v257, &qword_10002C6D8, &qword_10001F460);
    sub_100003A7C(v258, v591, &qword_10002C6E0, &qword_10001F468);
    swift_storeEnumTagMultiPayload();
    sub_100010514();
    sub_10001DB60();
    sub_100004088(v258, &qword_10002C6E0, &qword_10001F468);
    (*(v253 + 8))(v252, v254);
    return;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.image(_:))
  {
    sub_10001D7A0();
    if (v264)
    {
      v265 = sub_10001DF00();
      v185 = v509;
      if (v583)
      {
        v266 = v583;
      }

      else
      {
        v266 = sub_10001DE90();
      }

      *&v604[0] = v265;
      *(&v604[0] + 1) = v266;

      sub_100001C34(&qword_10002C7C0, &qword_10001F4B0);
      sub_100010EA0();
      v327 = v506;
      sub_10001DD70();

      v323 = v507;
      v322 = v508;
      (*(v507 + 32))(v185, v327, v508);
      v321 = 0;
    }

    else
    {
      v321 = 1;
      v185 = v509;
      v322 = v508;
      v323 = v507;
    }

    (*(v323 + 56))(v185, v321, 1, v322);
    v169 = &qword_10002C650;
    v170 = &qword_10001F3D8;
    sub_100003A7C(v185, v512, &qword_10002C650, &qword_10001F3D8);
    swift_storeEnumTagMultiPayload();
    sub_100010DE0();
    sub_100010688();
    v328 = v513;
LABEL_81:
    sub_10001DB60();
    v333 = &qword_10002C630;
    v334 = &qword_10001F3B8;
    sub_100003A7C(v328, v516, &qword_10002C630, &qword_10001F3B8);
LABEL_82:
    swift_storeEnumTagMultiPayload();
    sub_100010D54();
    sub_100010F58();
    v335 = v518;
    sub_10001DB60();
    sub_100004088(v328, v333, v334);
    v336 = &qword_10002C638;
    v337 = &qword_10001F3C0;
    sub_100003A7C(v335, v521, &qword_10002C638, &qword_10001F3C0);
LABEL_83:
    swift_storeEnumTagMultiPayload();
    sub_100010CC8();
    sub_10001117C();
    v197 = v522;
    sub_10001DB60();
    sub_100004088(v335, v336, v337);
    v198 = &qword_10002C640;
    v199 = &qword_10001F3C8;
    sub_100003A7C(v197, v586, &qword_10002C640, &qword_10001F3C8);
    goto LABEL_27;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.pace(_:) || v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.paceWithoutGPS(_:))
  {
    *v94 = sub_10001DA90();
    *(v94 + 1) = 0;
    v94[16] = 0;
    v317 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v318 = v583;
    sub_10001015C(&v94[*(v317 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470, &protocol conformance descriptor for HStack<A>);
    v319 = v504;
    sub_10001DE20();
    (*(v576 + 8))(v92, v575);
    sub_100004088(v94, &qword_10002C6E8, &qword_10001F470);
    if (v318)
    {
      v320 = v318;
    }

    else
    {
      v329 = [objc_opt_self() paceColors];
      if (!v329)
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v330 = v329;
      v331 = [v329 nonGradientTextColor];

      if (!v331)
      {
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v320 = sub_10001DEE0();
    }

    v332 = v503;
    (*(v573 + 32))(v503, v319, v572);
    *(v332 + *(v574 + 36)) = v320;
    v169 = &qword_10002C6F8;
    v170 = &unk_10001F480;
    v185 = v505;
    sub_1000035C0(v332, v505, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v185, v512, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010DE0();
    sub_100010688();

    v328 = v513;
    goto LABEL_81;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.power(_:))
  {
    *v94 = sub_10001DA90();
    *(v94 + 1) = 0;
    v94[16] = 0;
    v268 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v269 = v583;
    sub_10001015C(&v94[*(v268 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470, &protocol conformance descriptor for HStack<A>);
    v270 = v497;
    sub_10001DE20();
    (*(v576 + 8))(v92, v575);
    sub_100004088(v94, &qword_10002C6E8, &qword_10001F470);
    if (v269)
    {
      v271 = v269;
    }

    else
    {
      v341 = [objc_opt_self() powerColors];
      v342 = [v341 nonGradientTextColor];

      if (!v342)
      {
LABEL_169:
        __break(1u);
        goto LABEL_170;
      }

      v271 = sub_10001DEE0();
    }

    v343 = v496;
    (*(v573 + 32))(v496, v270, v572);
    *(v343 + *(v574 + 36)) = v271;
    v169 = &qword_10002C6F8;
    v170 = &unk_10001F480;
    v185 = v498;
    sub_1000035C0(v343, v498, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v185, v500, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010688();
    sub_100010FE4();

    v328 = v502;
    sub_10001DB60();
    v333 = &qword_10002C610;
    v334 = &qword_10001F398;
    sub_100003A7C(v328, v516, &qword_10002C610, &qword_10001F398);
    goto LABEL_82;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.raceTime(_:))
  {
    v324 = sub_10001D7D0();
    if (v325)
    {
      v326 = 1;
      v267 = v495;
    }

    else
    {
      v344 = *&v324;
      sub_10001E320();
      v346 = v473;
      v345 = v474;
      v347 = v468;
      (*(v473 + 104))(v468, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v474);
      v348 = v466;
      sub_10001E2E0();
      (*(v346 + 8))(v347, v345);
      v349 = v467;
      sub_10001D650();
      (*(v469 + 8))(v348, v470);
      sub_1000116D8(&qword_10002C290, &type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
      v350 = v472;
      sub_10001E310();
      (*(v471 + 8))(v349, v350);
      sub_10001D7A0();
      if (v351)
      {
        v352 = v536;
        v353 = v535;
        v354 = v537;
        (*(v536 + 104))(v535, enum case for LocalizationFeature.workout(_:), v537);
        sub_10001E0B0();

        (*(v352 + 8))(v353, v354);
        sub_10001E090();
        if (v583)
        {
          v355 = v583;
        }

        else
        {
          sub_10001D740();
          sub_10001D730();
          v355 = sub_10001DEE0();
        }

        v377 = v459;
        (*(v475 + 32))(v459, v482, v476);
        *(v377 + *(v478 + 36)) = v355;
        v378 = v460;
        sub_1000035C0(v377, v460, &qword_10002C5F0, &qword_10001F378);
        sub_100003A7C(v378, v480, &qword_10002C5F0, &qword_10001F378);
        swift_storeEnumTagMultiPayload();
        sub_100011094();

        v379 = v477;
      }

      else
      {
        sub_10001E090();
        sub_10001D740();
        if (v344 >= 0.0)
        {
          sub_10001D720();
        }

        else
        {
          sub_10001D710();
        }

        v380 = sub_10001DEE0();
        v381 = v449;
        (*(v475 + 32))(v449, v463, v476);
        *(v381 + *(v478 + 36)) = v380;
        v378 = v450;
        sub_1000035C0(v381, v450, &qword_10002C5F0, &qword_10001F378);
        sub_100003A7C(v378, v480, &qword_10002C5F0, &qword_10001F378);
        swift_storeEnumTagMultiPayload();
        sub_100011094();
        v379 = v477;
      }

      sub_10001DB60();
      sub_100004088(v378, &qword_10002C5F0, &qword_10001F378);
      v267 = v495;
      sub_1000035C0(v379, v495, &qword_10002C5F8, &qword_10001F380);
      v326 = 0;
    }

    (*(v493 + 56))(v267, v326, 1, v494);
    v308 = &qword_10002C600;
    v309 = &qword_10001F388;
    sub_100003A7C(v267, v500, &qword_10002C600, &qword_10001F388);
    swift_storeEnumTagMultiPayload();
    sub_100010688();
    sub_100010FE4();
    v382 = v502;
    sub_10001DB60();
    sub_100003A7C(v382, v516, &qword_10002C610, &qword_10001F398);
    swift_storeEnumTagMultiPayload();
    sub_100010D54();
    sub_100010F58();
    v383 = v518;
    sub_10001DB60();
    sub_100004088(v382, &qword_10002C610, &qword_10001F398);
    v384 = &qword_10002C638;
    v385 = &qword_10001F3C0;
    sub_100003A7C(v383, v521, &qword_10002C638, &qword_10001F3C0);
    goto LABEL_127;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.rollingPace(_:))
  {
    *v94 = sub_10001DA90();
    *(v94 + 1) = 0;
    v94[16] = 0;
    v338 = sub_100001C34(&qword_10002C848, &qword_10001F4C0);
    v339 = v583;
    sub_10001015C(&v94[*(v338 + 44)]);
    sub_10001DBC0();
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470, &protocol conformance descriptor for HStack<A>);
    sub_10001DE20();
    (*(v576 + 8))(v92, v575);
    sub_100004088(v94, &qword_10002C6E8, &qword_10001F470);
    if (v339)
    {
      v340 = v339;
    }

    else
    {
      v368 = [objc_opt_self() paceColors];
      if (!v368)
      {
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      v369 = v368;
      v370 = [v368 nonGradientTextColor];

      if (!v370)
      {
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v340 = sub_10001DEE0();
    }

    v371 = v464;
    (*(v573 + 32))(v464, v492, v572);
    *(v371 + *(v574 + 36)) = v340;
    v169 = &qword_10002C6F8;
    v170 = &unk_10001F480;
    v185 = v465;
    sub_1000035C0(v371, v465, &qword_10002C6F8, &unk_10001F480);
    sub_100003A7C(v185, v484, &qword_10002C6F8, &unk_10001F480);
    swift_storeEnumTagMultiPayload();
    sub_100010688();
    sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);

    v372 = v485;
    sub_10001DB60();
    v373 = &qword_10002C5D8;
    v374 = &qword_10001F360;
    sub_100003A7C(v372, v489, &qword_10002C5D8, &qword_10001F360);
    goto LABEL_104;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.split(_:))
  {
    sub_10001D7D0();
    if (v356)
    {
      (*(v461 + 56))(v481, 1, 1, v462);
    }

    else
    {
      sub_10001E0C0();
      if (v583)
      {
        v375 = v583;
      }

      else
      {
        v393 = [objc_opt_self() splitsColors];
        v394 = [v393 nonGradientTextColor];

        if (!v394)
        {
LABEL_172:
          __break(1u);
          goto LABEL_173;
        }

        v375 = sub_10001DEE0();
      }

      v395 = v444;
      (*(v446 + 32))(v444, v458, v447);
      v396 = v462;
      *&v395[*(v462 + 36)] = v375;
      v397 = v395;
      v398 = v443;
      sub_1000035C0(v397, v443, &qword_10002C5B8, &qword_10001F340);
      v399 = v398;
      v400 = v481;
      sub_1000035C0(v399, v481, &qword_10002C5B8, &qword_10001F340);
      (*(v461 + 56))(v400, 0, 1, v396);
    }

    v308 = &qword_10002C5C0;
    v309 = &qword_10001F348;
    v267 = v481;
    sub_100003A7C(v481, v484, &qword_10002C5C0, &qword_10001F348);
    swift_storeEnumTagMultiPayload();
    sub_100010688();
    sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);
    v401 = v485;
    sub_10001DB60();
    v402 = &qword_10002C5D8;
    v403 = &qword_10001F360;
    sub_100003A7C(v401, v489, &qword_10002C5D8, &qword_10001F360);
    goto LABEL_126;
  }

  if (v156 == enum case for WorkoutNotificationUnit.NotificationUnitType.string(_:))
  {
    sub_10001D7A0();
    if (v357)
    {
      v358 = v536;
      v359 = v535;
      v360 = v537;
      (*(v536 + 104))(v535, enum case for LocalizationFeature.workout(_:), v537);
      v361 = sub_10001E0B0();
      v363 = v362;

      v364 = (*(v358 + 8))(v359, v360);
      *&v604[0] = v361;
      *(&v604[0] + 1) = v363;
      *&v594 = 10;
      *(&v594 + 1) = 0xE100000000000000;
      v609 = 32;
      v610 = 0xE100000000000000;
      sub_100003A28(v364, v365, v366);
      sub_10001E230();

      sub_10001E070();

      if (v583)
      {
        v367 = v583;
      }

      else
      {
        v405 = sub_10001D7D0();
        v406 = *&v405;
        if (v407)
        {
          v406 = 16777215.0;
        }

        else if ((v405 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        if (v406 <= -1.0)
        {
LABEL_160:
          __break(1u);
          goto LABEL_161;
        }

        if (v406 >= 4294967300.0)
        {
LABEL_161:
          __break(1u);
          goto LABEL_162;
        }

        v367 = sub_10001DE50();
      }

      v408 = v438;
      (*(v439 + 32))(v438, v448, v440);
      v409 = v455;
      *(v408 + *(v456 + 36)) = v367;
      sub_1000035C0(v408, v409, &qword_10002C5A8, &qword_10001F330);
    }

    else
    {
      sub_10001D790();
      if (!v391)
      {
        v410 = 1;
LABEL_151:
        v427 = sub_100001C34(&qword_10002C838, &qword_10001F4B8);
        v185 = v457;
        (*(*(v427 - 8) + 56))(v457, v410, 1, v427);
        v169 = &qword_10002C5B0;
        v170 = &qword_10001F338;
        sub_100003A7C(v185, v453, &qword_10002C5B0, &qword_10001F338);
        swift_storeEnumTagMultiPayload();
        sub_1000114DC();
        sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);
        v372 = v454;
        sub_10001DB60();
        v373 = &qword_10002C590;
        v374 = &qword_10001F318;
        sub_100003A7C(v372, v489, &qword_10002C590, &qword_10001F318);
LABEL_104:
        swift_storeEnumTagMultiPayload();
        sub_100011208();
        sub_100011424();
        v335 = v490;
        sub_10001DB60();
        sub_100004088(v372, v373, v374);
        v336 = &qword_10002C5E0;
        v337 = &qword_10001F368;
        sub_100003A7C(v335, v521, &qword_10002C5E0, &qword_10001F368);
        goto LABEL_83;
      }

      sub_10001E070();

      if (v583)
      {
        v392 = v583;
      }

      else
      {
        v420 = sub_10001D7D0();
        v421 = *&v420;
        if (v422)
        {
          v421 = 16777215.0;
        }

        else if ((v420 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
LABEL_164:
          __break(1u);
          goto LABEL_165;
        }

        if (v421 <= -1.0)
        {
LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        if (v421 >= 4294967300.0)
        {
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        v392 = sub_10001DE50();
      }

      v423 = v429;
      (*(v439 + 32))(v429, v433, v440);
      *&v423[*(v456 + 36)] = v392;
      v424 = v423;
      v425 = v430;
      sub_1000035C0(v424, v430, &qword_10002C5A8, &qword_10001F330);
      v455 = v425;
    }

    v426 = v455;
    sub_100003A7C(v455, v442, &qword_10002C5A8, &qword_10001F330);
    swift_storeEnumTagMultiPayload();
    sub_100011608();

    sub_10001DB60();
    sub_100004088(v426, &qword_10002C5A8, &qword_10001F330);
    v410 = 0;
    goto LABEL_151;
  }

  if (v156 != enum case for WorkoutNotificationUnit.NotificationUnitType.time(_:))
  {
    sub_10001DAD0();
    v611._object = 0x8000000100025A80;
    v611._countAndFlagsBits = 0xD000000000000021;
    sub_10001DAC0(v611);
    sub_10001D7C0();
    v612._countAndFlagsBits = sub_10001E160();
    sub_10001DAB0(v612);

    v613._countAndFlagsBits = 0;
    v613._object = 0xE000000000000000;
    sub_10001DAC0(v613);
    sub_10001DB00();
    v386 = sub_10001DD30();
    v387 = v591;
    *v591 = v386;
    v387[1] = v388;
    *(v387 + 16) = v389 & 1;
    v387[3] = v390;
    swift_storeEnumTagMultiPayload();
    sub_100010514();
    sub_10001DB60();
    (*(v435 + 8))(v155, v150);
    return;
  }

  sub_10001D7D0();
  if (v376)
  {
    (*(v461 + 56))(v445, 1, 1, v462);
LABEL_142:
    v308 = &qword_10002C5C0;
    v309 = &qword_10001F348;
    v267 = v445;
    sub_100003A7C(v445, v453, &qword_10002C5C0, &qword_10001F348);
    swift_storeEnumTagMultiPayload();
    sub_1000114DC();
    sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);
    v401 = v454;
    sub_10001DB60();
    v402 = &qword_10002C590;
    v403 = &qword_10001F318;
    sub_100003A7C(v401, v489, &qword_10002C590, &qword_10001F318);
LABEL_126:
    swift_storeEnumTagMultiPayload();
    sub_100011208();
    sub_100011424();
    v383 = v490;
    sub_10001DB60();
    sub_100004088(v401, v402, v403);
    v384 = &qword_10002C5E0;
    v385 = &qword_10001F368;
    sub_100003A7C(v383, v521, &qword_10002C5E0, &qword_10001F368);
LABEL_127:
    swift_storeEnumTagMultiPayload();
    sub_100010CC8();
    sub_10001117C();
    v313 = v522;
    sub_10001DB60();
    sub_100004088(v383, v384, v385);
    v314 = &qword_10002C640;
    v315 = &qword_10001F3C8;
    sub_100003A7C(v313, v586, &qword_10002C640, &qword_10001F3C8);
LABEL_67:
    swift_storeEnumTagMultiPayload();
    sub_1000105A0();
    sub_100010C3C();
    v316 = v588;
    sub_10001DB60();
    sub_100004088(v313, v314, v315);
    sub_100003A7C(v316, v591, &qword_10002C6E0, &qword_10001F468);
    swift_storeEnumTagMultiPayload();
    sub_100010514();
    sub_10001DB60();
    sub_100004088(v316, &qword_10002C6E0, &qword_10001F468);
    sub_100004088(v267, v308, v309);
    return;
  }

  sub_10001E0C0();
  if (v583)
  {
    v404 = v583;
LABEL_141:
    v414 = v432;
    (*(v446 + 32))(v432, v436, v447);
    v415 = v462;
    *&v414[*(v462 + 36)] = v404;
    v416 = v414;
    v417 = v431;
    sub_1000035C0(v416, v431, &qword_10002C5B8, &qword_10001F340);
    v418 = v417;
    v419 = v445;
    sub_1000035C0(v418, v445, &qword_10002C5B8, &qword_10001F340);
    (*(v461 + 56))(v419, 0, 1, v415);

    goto LABEL_142;
  }

  v411 = [objc_opt_self() elapsedTimeColors];
  if (!v411)
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  v412 = v411;
  v413 = [v411 nonGradientTextColor];

  if (v413)
  {
    v404 = sub_10001DEE0();
    goto LABEL_141;
  }

LABEL_174:
  __break(1u);
}

void sub_10000FB74(uint64_t a1@<X1>, char *a2@<X8>)
{
  v63 = a2;
  v58 = sub_10001E110();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10001DC60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001C34(&qword_10002C858, &qword_10001F500);
  v9 = __chkstk_darwin(v8 - 8);
  v62 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v61 = v52 - v11;
  v59 = sub_100001C34(&qword_10002C860, &qword_10001F508);
  v57 = *(v59 - 8);
  v12 = __chkstk_darwin(v59);
  v60 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v52 - v14;
  v16 = sub_10001D7A0();
  if (v17)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0;
  }

  v20 = 0xE000000000000000;
  if (v17)
  {
    v20 = v17;
  }

  v66 = v19;
  v67 = v20;
  v54 = sub_100003A28(v16, v17, v18);
  v21 = sub_10001DD40();
  v23 = v22;
  v66 = v21;
  v67 = v22;
  v25 = v24 & 1;
  LOBYTE(v68) = v24 & 1;
  v69 = v26;
  v55 = v15;
  sub_10001DD70();
  sub_100003470(v21, v23, v25);

  v27 = sub_10001DF00();
  sub_10001E0E0();
  sub_10001DCB0();
  sub_10001DC40();
  v28 = sub_10001DCC0();
  (*(v5 + 8))(v7, v4);
  KeyPath = swift_getKeyPath();
  v30 = swift_getKeyPath();
  if (a1)
  {
    v31 = a1;
LABEL_11:
    v66 = v27;
    v67 = KeyPath;
    v68 = v28;
    v69 = v30;
    v70 = 0x3FE0000000000000;
    v71 = v31;
    v35 = v56;
    v36 = *(v56 + 104);
    v37 = v53;
    v52[1] = v27;
    v38 = v58;
    v36(v53, enum case for LocalizationFeature.workout(_:), v58);

    v39 = sub_10001E0B0();
    v41 = v40;
    (*(v35 + 8))(v37, v38);
    v64 = v39;
    v65 = v41;
    sub_100001C34(&qword_10002C868, &qword_10001F570);
    sub_100011784();
    v42 = v61;
    sub_10001DE00();

    v43 = v57;
    v44 = *(v57 + 16);
    v45 = v59;
    v46 = v60;
    v47 = v55;
    v44(v60, v55, v59);
    v48 = v62;
    sub_100003A7C(v42, v62, &qword_10002C858, &qword_10001F500);
    v49 = v63;
    v44(v63, v46, v45);
    v50 = sub_100001C34(&qword_10002C8B8, &qword_10001F598);
    sub_100003A7C(v48, &v49[*(v50 + 48)], &qword_10002C858, &qword_10001F500);
    sub_100004088(v42, &qword_10002C858, &qword_10001F500);
    v51 = *(v43 + 8);
    v51(v47, v45);
    sub_100004088(v48, &qword_10002C858, &qword_10001F500);
    v51(v46, v45);
    return;
  }

  v32 = [objc_opt_self() heartRateColors];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 nonGradientTextColor];

    if (v34)
    {
      v31 = sub_10001DEE0();
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10001015C@<X0>(char *a1@<X8>)
{
  v52 = a1;
  v51 = sub_100001C34(&qword_10002C8C0, &qword_10001F5A0);
  v49 = *(v51 - 8);
  v1 = __chkstk_darwin(v51);
  v50 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v53 = &v44 - v3;
  v48 = sub_100001C34(&qword_10002C860, &qword_10001F508);
  v4 = *(v48 - 8);
  v46 = v4;
  v5 = __chkstk_darwin(v48);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = sub_10001D7A0();
  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = 0xE000000000000000;
  if (v10)
  {
    v13 = v10;
  }

  v54 = v12;
  v55 = v13;
  sub_100003A28(v9, v10, v11);
  v14 = sub_10001DD40();
  v16 = v15;
  v54 = v14;
  v55 = v15;
  v18 = v17 & 1;
  v56 = v17 & 1;
  v57 = v19;
  v45 = v8;
  sub_10001DD70();
  sub_100003470(v14, v16, v18);

  v20 = sub_10001D790();
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0xE000000000000000;
  if (v21)
  {
    v23 = v21;
  }

  v54 = v22;
  v55 = v23;
  v24 = sub_10001DD40();
  v26 = v25;
  v54 = v24;
  v55 = v25;
  v28 = v27 & 1;
  v56 = v27 & 1;
  v57 = v29;
  v30 = v53;
  sub_10001DD60();
  sub_100003470(v24, v26, v28);

  v31 = *(v4 + 16);
  v32 = v47;
  v33 = v8;
  v34 = v48;
  v31(v47, v33, v48);
  v36 = v49;
  v35 = v50;
  v37 = *(v49 + 16);
  v38 = v51;
  v37(v50, v30, v51);
  v39 = v52;
  v31(v52, v32, v34);
  v40 = sub_100001C34(&qword_10002C8C8, &qword_10001F5A8);
  v37(&v39[*(v40 + 48)], v35, v38);
  v41 = *(v36 + 8);
  v41(v53, v38);
  v42 = *(v46 + 8);
  v42(v45, v34);
  v41(v35, v38);
  return (v42)(v32, v34);
}

unint64_t sub_100010514()
{
  result = qword_10002C700;
  if (!qword_10002C700)
  {
    sub_1000036E4(&qword_10002C6E0, &qword_10001F468);
    sub_1000105A0();
    sub_100010C3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C700);
  }

  return result;
}

unint64_t sub_1000105A0()
{
  result = qword_10002C708;
  if (!qword_10002C708)
  {
    sub_1000036E4(&qword_10002C6D8, &qword_10001F460);
    sub_10001158C(&qword_10002C710, &qword_10002C6D0, &qword_10001F458, sub_100010658);
    sub_1000107B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C708);
  }

  return result;
}

unint64_t sub_100010688()
{
  result = qword_10002C720;
  if (!qword_10002C720)
  {
    sub_1000036E4(&qword_10002C6F8, &unk_10001F480);
    sub_1000036E4(&qword_10002C6E8, &qword_10001F470);
    sub_1000039E0(&qword_10002C728, &qword_10002C6E8, &qword_10001F470, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C720);
  }

  return result;
}

unint64_t sub_1000107B0()
{
  result = qword_10002C730;
  if (!qword_10002C730)
  {
    sub_1000036E4(&qword_10002C698, &qword_10001F420);
    sub_100010658();
    sub_10001083C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C730);
  }

  return result;
}

unint64_t sub_10001083C()
{
  result = qword_10002C738;
  if (!qword_10002C738)
  {
    sub_1000036E4(&qword_10002C678, &qword_10001F400);
    sub_1000112C0(&qword_10002C740, &qword_10002C688, &qword_10001F410, sub_100010938);
    sub_1000036E4(&qword_10002C660, &qword_10001F3E8);
    sub_100010B58();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C738);
  }

  return result;
}

unint64_t sub_100010938()
{
  result = qword_10002C748;
  if (!qword_10002C748)
  {
    sub_1000036E4(&qword_10002C680, &qword_10001F408);
    sub_100010A50(&qword_10002C750, &qword_10002C758, &qword_10001F490, sub_100010A20);
    sub_1000116D8(&qword_10002C288, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C748);
  }

  return result;
}

uint64_t sub_100010A50(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100010AD4()
{
  result = qword_10002C770;
  if (!qword_10002C770)
  {
    sub_1000036E4(&qword_10002C778, &qword_10001F4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C770);
  }

  return result;
}

unint64_t sub_100010B58()
{
  result = qword_10002C780;
  if (!qword_10002C780)
  {
    sub_1000036E4(&qword_10002C660, &qword_10001F3E8);
    sub_1000039E0(&qword_10002C788, &qword_10002C658, &qword_10001F3E0, &protocol conformance descriptor for HStack<A>);
    sub_1000039E0(&qword_10002C790, &qword_10002C798, &qword_10001F4A8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C780);
  }

  return result;
}

unint64_t sub_100010C3C()
{
  result = qword_10002C7A0;
  if (!qword_10002C7A0)
  {
    sub_1000036E4(&qword_10002C640, &qword_10001F3C8);
    sub_100010CC8();
    sub_10001117C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7A0);
  }

  return result;
}

unint64_t sub_100010CC8()
{
  result = qword_10002C7A8;
  if (!qword_10002C7A8)
  {
    sub_1000036E4(&qword_10002C638, &qword_10001F3C0);
    sub_100010D54();
    sub_100010F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7A8);
  }

  return result;
}

unint64_t sub_100010D54()
{
  result = qword_10002C7B0;
  if (!qword_10002C7B0)
  {
    sub_1000036E4(&qword_10002C630, &qword_10001F3B8);
    sub_100010DE0();
    sub_100010688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7B0);
  }

  return result;
}

unint64_t sub_100010DE0()
{
  result = qword_10002C7B8;
  if (!qword_10002C7B8)
  {
    sub_1000036E4(&qword_10002C650, &qword_10001F3D8);
    sub_1000036E4(&qword_10002C7C0, &qword_10001F4B0);
    sub_100010EA0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7B8);
  }

  return result;
}

unint64_t sub_100010EA0()
{
  result = qword_10002C7C8;
  if (!qword_10002C7C8)
  {
    sub_1000036E4(&qword_10002C7C0, &qword_10001F4B0);
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7C8);
  }

  return result;
}

unint64_t sub_100010F58()
{
  result = qword_10002C7D0;
  if (!qword_10002C7D0)
  {
    sub_1000036E4(&qword_10002C610, &qword_10001F398);
    sub_100010688();
    sub_100010FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7D0);
  }

  return result;
}

unint64_t sub_100010FE4()
{
  result = qword_10002C7D8;
  if (!qword_10002C7D8)
  {
    sub_1000036E4(&qword_10002C600, &qword_10001F388);
    sub_10001158C(&qword_10002C7E0, &qword_10002C5F8, &qword_10001F380, sub_100011094);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7D8);
  }

  return result;
}

unint64_t sub_100011094()
{
  result = qword_10002C7E8;
  if (!qword_10002C7E8)
  {
    sub_1000036E4(&qword_10002C5F0, &qword_10001F378);
    sub_1000116D8(&qword_10002C7F0, &type metadata accessor for MetricText, &protocol conformance descriptor for MetricText);
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7E8);
  }

  return result;
}

unint64_t sub_10001117C()
{
  result = qword_10002C7F8;
  if (!qword_10002C7F8)
  {
    sub_1000036E4(&qword_10002C5E0, &qword_10001F368);
    sub_100011208();
    sub_100011424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7F8);
  }

  return result;
}

unint64_t sub_100011208()
{
  result = qword_10002C800;
  if (!qword_10002C800)
  {
    sub_1000036E4(&qword_10002C5D8, &qword_10001F360);
    sub_100010688();
    sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C800);
  }

  return result;
}

uint64_t sub_1000112C0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001133C()
{
  result = qword_10002C810;
  if (!qword_10002C810)
  {
    sub_1000036E4(&qword_10002C5B8, &qword_10001F340);
    sub_1000116D8(&qword_10002C818, &type metadata accessor for ElapsedTimeView, &protocol conformance descriptor for ElapsedTimeView);
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C810);
  }

  return result;
}

unint64_t sub_100011424()
{
  result = qword_10002C820;
  if (!qword_10002C820)
  {
    sub_1000036E4(&qword_10002C590, &qword_10001F318);
    sub_1000114DC();
    sub_1000112C0(&qword_10002C808, &qword_10002C5C0, &qword_10001F348, sub_10001133C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C820);
  }

  return result;
}

unint64_t sub_1000114DC()
{
  result = qword_10002C828;
  if (!qword_10002C828)
  {
    sub_1000036E4(&qword_10002C5B0, &qword_10001F338);
    sub_10001158C(&qword_10002C830, &qword_10002C838, &qword_10001F4B8, sub_100011608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C828);
  }

  return result;
}

uint64_t sub_10001158C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100011608()
{
  result = qword_10002C840;
  if (!qword_10002C840)
  {
    sub_1000036E4(&qword_10002C5A8, &qword_10001F330);
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C840);
  }

  return result;
}

uint64_t sub_1000116D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100011784()
{
  result = qword_10002C870;
  if (!qword_10002C870)
  {
    sub_1000036E4(&qword_10002C868, &qword_10001F570);
    sub_10001183C();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C870);
  }

  return result;
}

unint64_t sub_10001183C()
{
  result = qword_10002C878;
  if (!qword_10002C878)
  {
    sub_1000036E4(&qword_10002C880, &qword_10001F578);
    sub_1000118F4();
    sub_1000039E0(&qword_10002C8A8, &qword_10002C8B0, &qword_10001F590, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C878);
  }

  return result;
}

unint64_t sub_1000118F4()
{
  result = qword_10002C888;
  if (!qword_10002C888)
  {
    sub_1000036E4(&qword_10002C890, &unk_10001F580);
    sub_1000039E0(&qword_10002C898, &qword_10002C8A0, &qword_10001F6D0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C888);
  }

  return result;
}

unint64_t sub_1000119B0()
{
  result = qword_10002C8D0;
  if (!qword_10002C8D0)
  {
    sub_1000036E4(&qword_10002C8D8, &qword_10001F5B0);
    sub_100010514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8D0);
  }

  return result;
}

__n128 sub_100011A3C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100011A58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100011AA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100011B1C@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v77 = sub_100001C34(&qword_10002C8E0, &qword_10001F680);
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v71 - v2;
  v78 = sub_100001C34(&qword_10002C8E8, &qword_10001F688);
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v71 - v3;
  v81 = sub_100001C34(&qword_10002C8F0, &qword_10001F690);
  __chkstk_darwin(v81);
  v82 = &v71 - v4;
  v5 = sub_100001C34(&qword_10002C8F8, &qword_10001F698);
  v6 = __chkstk_darwin(v5 - 8);
  v85 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v84 = &v71 - v8;
  v9 = sub_100001C34(&qword_10002C900, &qword_10001F6A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v71 - v11;
  v72 = sub_100001C34(&qword_10002C908, &qword_10001F6A8);
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v87 = &v71 - v13;
  v14 = sub_100001C34(&qword_10002C910, &qword_10001F6B0);
  v15 = __chkstk_darwin(v14 - 8);
  v80 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v71 - v17;
  v18 = sub_100012AC0((v1 + 16), *(v1 + 40));
  __chkstk_darwin(v18);
  (*(v20 + 16))(&v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = v1;
  sub_100001C34(&qword_10002C918, &qword_10001F6B8);
  sub_100012C5C(&qword_10002C920, &qword_10002C918, &qword_10001F6B8, sub_100012B0C);
  sub_10001DF50();
  v83 = v1;
  v88 = *(v1 + 56);
  if (v88 == 1)
  {
    v21 = sub_10001DE50();
  }

  else
  {
    v21 = sub_10001DE90();
  }

  v22 = sub_10001DE50();
  v90 = v21;
  v91 = v22;
  v23 = sub_1000039E0(&qword_10002C948, &qword_10002C900, &qword_10001F6A0, &protocol conformance descriptor for Button<A>);
  v26 = sub_100012C00(v23, v24, v25);
  sub_10001DDD0();

  (*(v10 + 8))(v12, v9);
  sub_10001DAF0();
  LOWORD(v70._object) = 256;
  v27 = sub_10001DD30();
  v29 = v28;
  v31 = v30;
  v90 = v9;
  v91 = &type metadata for WidgetButtonStyle;
  v92 = v23;
  v93 = v26;
  swift_getOpaqueTypeConformance2();
  v32 = v79;
  v33 = v72;
  v34 = v87;
  sub_10001DDF0();
  sub_100003470(v27, v29, v31 & 1);

  v35 = (*(v71 + 8))(v34, v33);
  __chkstk_darwin(v35);
  v36 = v83;
  sub_100001C34(&qword_10002C958, &qword_10001F6E0);
  v37 = sub_100012C5C(&qword_10002C960, &qword_10002C958, &qword_10001F6E0, sub_1000118F4);
  sub_10000531C(v37, v38, v39);
  v40 = v73;
  sub_10001DF50();
  if (v88)
  {
    sub_10001DE70();
    v41 = sub_10001DEA0();

    sub_10001DE70();
    v42 = sub_10001DEA0();
  }

  else
  {
    v41 = sub_10001DE90();
    v42 = sub_10001DE50();
  }

  v90 = v41;
  v91 = v42;
  sub_1000039E0(&qword_10002C968, &qword_10002C8E0, &qword_10001F680, &protocol conformance descriptor for Button<A>);
  v43 = v74;
  v44 = v77;
  sub_10001DDD0();

  (*(v75 + 8))(v40, v44);
  KeyPath = swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v88;
  v47 = v82;
  (*(v76 + 32))(v82, v43, v78);
  v48 = (v47 + *(v81 + 36));
  *v48 = KeyPath;
  v48[1] = sub_100012D48;
  v48[2] = v46;
  v49 = [objc_opt_self() mainBundle];
  v70._countAndFlagsBits = 0xE000000000000000;
  v94._countAndFlagsBits = 0xD00000000000001BLL;
  v94._object = 0x8000000100025AF0;
  v95.value._countAndFlagsBits = 0;
  v95.value._object = 0;
  v50.super.isa = v49;
  v96._countAndFlagsBits = 0;
  v96._object = 0xE000000000000000;
  sub_10001D660(v94, v95, v50, v96, 0, v70);

  sub_100001C34(&qword_10002C4C8, &qword_10001F1C0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_10001F5C0;
  v52 = *(v36 + 8);
  *(v51 + 56) = &type metadata for Int;
  *(v51 + 64) = &protocol witness table for Int;
  *(v51 + 32) = v52;
  v53 = sub_10001E150();
  v55 = v54;

  v90 = v53;
  v91 = v55;
  sub_100003A28(v56, v57, v58);
  v59 = sub_10001DD40();
  v61 = v60;
  v63 = v62;
  sub_100012D60();
  v64 = v84;
  sub_10001DDF0();
  sub_100003470(v59, v61, v63 & 1);

  sub_100004088(v47, &qword_10002C8F0, &qword_10001F690);
  v65 = v80;
  sub_100003A7C(v32, v80, &qword_10002C910, &qword_10001F6B0);
  v66 = v85;
  sub_100003A7C(v64, v85, &qword_10002C8F8, &qword_10001F698);
  v67 = v86;
  sub_100003A7C(v65, v86, &qword_10002C910, &qword_10001F6B0);
  v68 = sub_100001C34(&qword_10002C988, &qword_10001F728);
  sub_100003A7C(v66, v67 + *(v68 + 48), &qword_10002C8F8, &qword_10001F698);
  sub_100004088(v64, &qword_10002C8F8, &qword_10001F698);
  sub_100004088(v32, &qword_10002C910, &qword_10001F6B0);
  sub_100004088(v66, &qword_10002C8F8, &qword_10001F698);
  return sub_100004088(v65, &qword_10002C910, &qword_10001F6B0);
}

double sub_100012650@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a1;
  v22 = a2;
  v21 = sub_100001C34(&qword_10002C998, &qword_10001F768);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = v20 - v3;
  v5 = sub_100001C34(&qword_10002C930, &unk_10001F6C0);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = v20 - v7;
  v9 = sub_10001DF00();
  v10 = sub_10001DC30();
  KeyPath = swift_getKeyPath();
  *&v23 = v9;
  *(&v23 + 1) = KeyPath;
  *&v24 = v10;
  sub_10001DCB0();
  sub_100001C34(&qword_10002C890, &unk_10001F580);
  sub_1000118F4();
  sub_10001DDC0();

  v12 = &v8[*(v6 + 44)];
  v13 = *(sub_100001C34(&qword_10002C940, &qword_10001F6D8) + 28);
  v14 = enum case for Image.Scale.small(_:);
  v15 = sub_10001DF30();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  (*(v2 + 32))(v8, v4, v21);
  sub_10001DF80();
  sub_10001D920();
  v16 = v22;
  sub_100012F14(v8, v22);
  v17 = (v16 + *(sub_100001C34(&qword_10002C918, &qword_10001F6B8) + 36));
  v18 = v24;
  *v17 = v23;
  v17[1] = v18;
  result = *&v25;
  v17[2] = v25;
  return result;
}

double sub_10001292C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100001C34(&qword_10002C990, &qword_10001F730);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v14[1] = a1[1];
  *&v15 = sub_10001E2A0();
  *(&v15 + 1) = v7;
  v18._countAndFlagsBits = 0x656C637269632ELL;
  v18._object = 0xE700000000000000;
  sub_10001E170(v18);
  v8 = sub_10001DF00();
  sub_10001DCA0();
  v9 = sub_10001DC80();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = sub_10001DCD0();
  sub_100012E9C(v6);
  KeyPath = swift_getKeyPath();
  sub_10001DF80();
  sub_10001D920();
  *a2 = v8;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v10;
  v12 = v16;
  *(a2 + 24) = v15;
  *(a2 + 40) = v12;
  result = *&v17;
  *(a2 + 56) = v17;
  return result;
}

void *sub_100012AC0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100012B0C()
{
  result = qword_10002C928;
  if (!qword_10002C928)
  {
    sub_1000036E4(&qword_10002C930, &unk_10001F6C0);
    sub_1000036E4(&qword_10002C890, &unk_10001F580);
    sub_1000118F4();
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002C938, &qword_10002C940, &qword_10001F6D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C928);
  }

  return result;
}

unint64_t sub_100012C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002C950;
  if (!qword_10002C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C950);
  }

  return result;
}

uint64_t sub_100012C5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100012CE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001DA70();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100012D60()
{
  result = qword_10002C970;
  if (!qword_10002C970)
  {
    sub_1000036E4(&qword_10002C8F0, &qword_10001F690);
    sub_1000036E4(&qword_10002C8E0, &qword_10001F680);
    v3 = sub_1000039E0(&qword_10002C968, &qword_10002C8E0, &qword_10001F680, &protocol conformance descriptor for Button<A>);
    sub_100012C00(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002C978, &qword_10002C980, &qword_10001F720, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C970);
  }

  return result;
}

uint64_t sub_100012E9C(uint64_t a1)
{
  v2 = sub_100001C34(&qword_10002C990, &qword_10001F730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100012F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C34(&qword_10002C930, &unk_10001F6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001E2B0();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10001E2F0();
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = sub_10001D6E0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = sub_10001D8B0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v39 = a2;
  v19(a2, a1, v17);
  v20 = a1;
  sub_10001D870();
  v21 = *(v11 + 48);
  if (v21(v9, 1, v10) == 1)
  {
    sub_10001D6D0();
    if (v21(v9, 1, v10) != 1)
    {
      sub_100004088(v9, &qword_10002C140, &unk_10001E680);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  sub_10001D8A0();
  sub_10001D6B0();
  v23 = v22;
  v24 = *(v11 + 8);
  v24(v14, v10);
  v24(v16, v10);
  v25 = type metadata accessor for LockScreenSummaryView(0);
  v27 = v38;
  v26 = v39;
  *(v39 + *(v25 + 20)) = v23;
  v28 = v37;
  v29 = v35;
  (*(v37 + 104))(v35, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v27);
  v30 = v33;
  if (v23 >= 3600.0)
  {
    sub_10001E2E0();
  }

  else
  {
    sub_10001E2D0();
  }

  (*(v18 + 8))(v20, v17);
  (*(v28 + 8))(v29, v27);
  return (*(v34 + 32))(v26 + *(v25 + 24), v30, v36);
}

uint64_t type metadata accessor for LockScreenSummaryView(uint64_t a1)
{
  result = qword_10002CA08;
  if (!qword_10002CA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100013474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001D8B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_10001E2F0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100013578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10001D8B0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_10001E2F0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_100013674(uint64_t a1)
{
  result = sub_10001D8B0();
  if (v2 <= 0x3F)
  {
    result = sub_10001E2F0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001371C@<X0>(uint64_t a2@<X8>)
{
  v51 = a2;
  v2 = sub_10001D960();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = __chkstk_darwin(v2);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v46 = &v42 - v5;
  v44 = sub_10001E080();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001E100();
  v10 = *(v9 - 8);
  v42 = v9;
  v43 = v10;
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100001C34(&qword_10002CA70, &qword_10001F860);
  v49 = *(v13 - 8);
  v50 = v13;
  __chkstk_darwin(v13);
  v15 = &v42 - v14;
  v16 = sub_100001C34(&qword_10002CA78, &qword_10001F868);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  v22 = sub_100001C34(&qword_10002CA80, &qword_10001F870);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v42 - v26;
  *v27 = sub_10001DAA0();
  *(v27 + 1) = 0;
  v28 = 1;
  v27[16] = 1;
  v29 = sub_100001C34(&qword_10002CA88, &qword_10001F878);
  sub_100013CF4(&v27[*(v29 + 44)]);
  v30 = sub_10001D880();
  if (!v30)
  {
    goto LABEL_5;
  }

  if (!*(v30 + 16))
  {

LABEL_5:
    v38 = v50;
    goto LABEL_6;
  }

  v31 = v12;
  sub_10001E0F0();
  v32 = v44;
  (*(v6 + 104))(v8, enum case for WorkoutViewStyle.iOSLiveActivityMetric(_:), v44);
  sub_100014C18(&qword_10002CA98, &type metadata accessor for HorizontalMetricRow, &protocol conformance descriptor for HorizontalMetricRow);
  v33 = v42;
  sub_10001DD50();
  (*(v6 + 8))(v8, v32);
  (*(v43 + 8))(v31, v33);
  v34 = v46;
  sub_10001D950();
  v36 = v47;
  v35 = v48;
  (*(v47 + 16))(v45, v34, v48);
  sub_100014C18(&qword_10002CAA0, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
  v37 = sub_10001D930();
  (*(v36 + 8))(v34, v35);
  v38 = v50;
  *&v15[*(v50 + 36)] = v37;
  sub_100014BA8(v15, v21);
  v28 = 0;
LABEL_6:
  (*(v49 + 56))(v21, v28, 1, v38);
  sub_100003A7C(v27, v25, &qword_10002CA80, &qword_10001F870);
  sub_100014B38(v21, v19);
  v39 = v51;
  sub_100003A7C(v25, v51, &qword_10002CA80, &qword_10001F870);
  v40 = sub_100001C34(&qword_10002CA90, &qword_10001F880);
  sub_100014B38(v19, v39 + *(v40 + 48));
  sub_100004088(v21, &qword_10002CA78, &qword_10001F868);
  sub_100004088(v27, &qword_10002CA80, &qword_10001F870);
  sub_100004088(v19, &qword_10002CA78, &qword_10001F868);
  return sub_100004088(v25, &qword_10002CA80, &qword_10001F870);
}

id sub_100013CF4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100001C34(&qword_10002CAA8, &qword_10001F888);
  v4 = __chkstk_darwin(v3 - 8);
  v55 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = (v50 - v6);
  v56 = sub_10001DC60();
  v7 = *(v56 - 8);
  __chkstk_darwin(v56);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10001E300();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10001D820();
  v52 = sub_10001D890();
  v51 = sub_10001D800();
  type metadata accessor for LockScreenSummaryView(0);
  sub_10001E320();
  sub_10001D650();
  sub_100014C18(&qword_10002C290, &type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
  sub_10001E310();
  v14 = (*(v11 + 8))(v13, v10);
  v57 = v59;
  v58 = v60;
  v50[1] = sub_100003A28(v14, v15, v16);
  v17 = sub_10001DD40();
  v19 = v18;
  v21 = v20;
  sub_10001DC90();
  sub_10001DC40();
  sub_10001DCC0();
  (*(v7 + 8))(v9, v56);
  sub_10001DC70();

  v22 = sub_10001DD20();
  v24 = v23;
  LOBYTE(v7) = v25;

  sub_100003470(v17, v19, v21 & 1);

  v59 = sub_10001DE90();
  v26 = sub_10001DD00();
  v28 = v27;
  v30 = v29;
  sub_100003470(v22, v24, v7 & 1);

  result = AXDurationStringForDuration();
  if (result)
  {
    v32 = result;
    v33 = sub_10001E140();
    v35 = v34;

    v59 = v33;
    v60 = v35;
    v36 = sub_10001DD10();
    v38 = v37;
    LOBYTE(v32) = v39;
    v56 = v40;
    sub_100003470(v26, v28, v30 & 1);

    v41 = sub_10001DF80();
    v42 = v54;
    *v54 = v41;
    *(v42 + 8) = v43;
    v44 = sub_100001C34(&qword_10002CAB0, &qword_10001F890);
    sub_10001424C(v42 + *(v44 + 44));
    LOBYTE(v33) = v52 & 1;
    v45 = v51 & 1;
    v46 = v55;
    sub_100003A7C(v42, v55, &qword_10002CAA8, &qword_10001F888);
    v47 = v53;
    *a2 = v53;
    *(a2 + 8) = v33;
    *(a2 + 9) = v45;
    *(a2 + 16) = xmmword_10001F7B0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = v36;
    *(a2 + 56) = v38;
    LOBYTE(v32) = v32 & 1;
    *(a2 + 64) = v32;
    *(a2 + 72) = v56;
    *(a2 + 80) = 0;
    *(a2 + 88) = 1;
    v48 = sub_100001C34(&qword_10002CAB8, &unk_10001F898);
    sub_100003A7C(v46, a2 + *(v48 + 96), &qword_10002CAA8, &qword_10001F888);
    v49 = v47;
    sub_10000678C(v36, v38, v32);

    sub_100004088(v42, &qword_10002CAA8, &qword_10001F888);
    sub_100004088(v46, &qword_10002CAA8, &qword_10001F888);
    sub_100003470(v36, v38, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10001424C(uint64_t a1@<X8>)
{
  v49 = sub_10001DB30();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100001C34(&qword_10002C990, &qword_10001F730);
  __chkstk_darwin(v4 - 8);
  v6 = &v44 - v5;
  v51 = sub_100001C34(&qword_10002CAC0, &qword_10001F8A8);
  v7 = __chkstk_darwin(v51);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v44 - v10;
  v50 = sub_100001C34(&qword_10002CAC8, &qword_10001F8B0);
  v11 = __chkstk_darwin(v50);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v44 - v15;
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v19 = sub_100001C34(&qword_10002CAD0, &qword_10001F8B8);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v44 - v23;
  if (FIUICircularWorkoutGradientImageWithGoal())
  {
    v44 = v22;
    v45 = v18;
    v46 = v13;
    v47 = a1;
    *&v55[0] = sub_10001DEF0();
    sub_10001DE10();

    v25 = sub_10001DF00();
    sub_10001DC90();
    v26 = sub_10001DC80();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    v27 = sub_10001DCD0();
    sub_100004088(v6, &qword_10002C990, &qword_10001F730);
    KeyPath = swift_getKeyPath();
    sub_10001DF80();
    sub_10001D920();
    v29 = [objc_opt_self() metricColorsForGoalTypeIdentifier:0];
    v30 = [v29 nonGradientTextColor];

    if (v30)
    {
      v31 = sub_10001DEE0();
      *&v54[8] = v55[5];
      *&v54[24] = v55[6];
      *&v54[40] = v55[7];
      *&v53 = v25;
      *(&v53 + 1) = KeyPath;
      *v54 = v27;
      *&v54[56] = v31;
      sub_10001DB10();
      sub_100001C34(&qword_10002CAD8, &unk_10001F8F0);
      sub_100014C68();
      sub_10001DE40();
      (*(v48 + 8))(v3, v49);
      v55[3] = *&v54[32];
      v55[4] = *&v54[48];
      v55[1] = *v54;
      v55[2] = *&v54[16];
      v55[0] = v53;
      sub_100004088(v55, &qword_10002CAD8, &unk_10001F8F0);
      sub_10001DAF0();
      v32 = sub_10001DD30();
      v34 = v33;
      v36 = v35;
      v37 = v52;
      sub_10001D970();
      sub_100003470(v32, v34, v36 & 1);

      sub_100004088(v9, &qword_10002CAC0, &qword_10001F8A8);
      v38 = &v16[*(v50 + 36)];
      sub_100001C34(&qword_10002CAE8, &unk_10001FED0);
      sub_10001D980();
      *v38 = 0;
      sub_1000035C0(v37, v16, &qword_10002CAC0, &qword_10001F8A8);
      v39 = v45;
      sub_1000035C0(v16, v45, &qword_10002CAC8, &qword_10001F8B0);
      v40 = v44;
      sub_100003A7C(v24, v44, &qword_10002CAD0, &qword_10001F8B8);
      v41 = v46;
      sub_100003A7C(v39, v46, &qword_10002CAC8, &qword_10001F8B0);
      v42 = v47;
      sub_100003A7C(v40, v47, &qword_10002CAD0, &qword_10001F8B8);
      v43 = sub_100001C34(&qword_10002CAF0, qword_10001F910);
      sub_100003A7C(v41, v42 + *(v43 + 48), &qword_10002CAC8, &qword_10001F8B0);
      sub_100004088(v39, &qword_10002CAC8, &qword_10001F8B0);
      sub_100004088(v24, &qword_10002CAD0, &qword_10001F8B8);
      sub_100004088(v41, &qword_10002CAC8, &qword_10001F8B0);
      sub_100004088(v40, &qword_10002CAD0, &qword_10001F8B8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100014954()
{
  v0 = sub_100001C34(&qword_10002CA48, &qword_10001F848);
  __chkstk_darwin(v0);
  v2 = &v7 - v1;
  *v2 = sub_10001DB40();
  *(v2 + 1) = 0;
  v2[16] = 1;
  v3 = sub_100001C34(&qword_10002CA50, &qword_10001F850);
  sub_10001371C(&v2[*(v3 + 44)]);
  v4 = sub_10001DBF0();
  v5 = &v2[*(v0 + 36)];
  *v5 = v4;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  sub_10001DE80();
  sub_100014A80();
  sub_10001DD80();

  return sub_100004088(v2, &qword_10002CA48, &qword_10001F848);
}

unint64_t sub_100014A80()
{
  result = qword_10002CA58;
  if (!qword_10002CA58)
  {
    sub_1000036E4(&qword_10002CA48, &qword_10001F848);
    sub_1000039E0(&qword_10002CA60, &qword_10002CA68, &qword_10001F858, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA58);
  }

  return result;
}

uint64_t sub_100014B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C34(&qword_10002CA78, &qword_10001F868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C34(&qword_10002CA70, &qword_10001F860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100014C18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100014C68()
{
  result = qword_10002CAE0;
  if (!qword_10002CAE0)
  {
    sub_1000036E4(&qword_10002CAD8, &unk_10001F8F0);
    sub_100014D20();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CAE0);
  }

  return result;
}

unint64_t sub_100014D20()
{
  result = qword_10002C960;
  if (!qword_10002C960)
  {
    sub_1000036E4(&qword_10002C958, &qword_10001F6E0);
    sub_1000118F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C960);
  }

  return result;
}

uint64_t sub_100014DAC()
{
  sub_1000036E4(&qword_10002CA48, &qword_10001F848);
  sub_100014A80();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100014E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D8B0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100014EA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001D8B0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for LockScreenInSessionView(uint64_t a1)
{
  result = qword_10002CB50;
  if (!qword_10002CB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100014F60(uint64_t a1)
{
  result = sub_10001D8B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100014FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = sub_10001E100();
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v74 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100001C34(&qword_10002CA70, &qword_10001F860);
  __chkstk_darwin(v85);
  v77 = &v73 - v5;
  v89 = sub_100001C34(&qword_10002CBB0, &qword_10001F9C8);
  __chkstk_darwin(v89);
  v78 = &v73 - v6;
  v84 = sub_100001C34(&qword_10002CBB8, &qword_10001F9D0);
  __chkstk_darwin(v84);
  v88 = &v73 - v7;
  v79 = sub_100001C34(&qword_10002CBC0, &qword_10001F9D8);
  __chkstk_darwin(v79);
  v87 = &v73 - v8;
  v83 = sub_100001C34(&qword_10002CBC8, &qword_10001F9E0);
  __chkstk_darwin(v83);
  v80 = &v73 - v9;
  v86 = sub_10001D960();
  v82 = *(v86 - 8);
  v10 = __chkstk_darwin(v86);
  v81 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v73 - v12;
  v14 = sub_10001E080();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100001C34(&qword_10002CBD0, &qword_10001F9E8);
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  v21 = sub_100001C34(&qword_10002CBD8, &qword_10001F9F0);
  __chkstk_darwin(v21);
  v23 = &v73 - v22;
  v24 = sub_100001C34(&qword_10002CBE0, &qword_10001F9F8);
  v25 = __chkstk_darwin(v24 - 8);
  v93 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v91 = &v73 - v27;
  v28 = sub_100001C34(&qword_10002CBE8, &qword_10001FA00);
  v29 = __chkstk_darwin(v28 - 8);
  v92 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v73 - v31;
  *v32 = sub_10001DAA0();
  *(v32 + 1) = 0;
  v32[16] = 1;
  v33 = *(sub_100001C34(&qword_10002CBF0, &qword_10001FA08) + 44);
  v90 = v32;
  sub_100015C64(a1, &v32[v33]);
  if (sub_10001D860())
  {
    sub_100016CA8(v20);
    (*(v15 + 104))(v17, enum case for WorkoutViewStyle.iOSLiveActivityNotificationMetric(_:), v14);
    sub_10001749C();
    sub_10001DD50();
    (*(v15 + 8))(v17, v14);
    sub_100004088(v20, &qword_10002CBD0, &qword_10001F9E8);
    sub_10001D950();
    v34 = v82;
    v35 = v86;
    (*(v82 + 16))(v81, v13, v86);
    sub_100017938(&qword_10002CAA0, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
    v36 = sub_10001D930();
    (*(v34 + 8))(v13, v35);
    *&v23[*(v21 + 36)] = v36;
    v37 = &qword_10002CBD8;
    v38 = &qword_10001F9F0;
    sub_100003A7C(v23, v87, &qword_10002CBD8, &qword_10001F9F0);
    swift_storeEnumTagMultiPayload();
    sub_1000173A8();
    sub_10001754C();
    v39 = v80;
    sub_10001DB60();
    sub_100003A7C(v39, v88, &qword_10002CBC8, &qword_10001F9E0);
    swift_storeEnumTagMultiPayload();
    sub_10001731C();
    sub_100017684();
    v40 = v91;
    sub_10001DB60();
    v41 = v39;
  }

  else
  {
    v42 = v14;
    v73 = v21;
    v43 = v86;
    v44 = v87;
    v46 = v88;
    v45 = v89;
    v47 = sub_10001D830();
    if (!v47)
    {
      v66 = sub_10001D880();
      if (v66)
      {
        if (*(v66 + 16))
        {
          v67 = v42;
          v68 = v74;
          sub_10001E0F0();
          (*(v15 + 104))(v17, enum case for WorkoutViewStyle.iOSLiveActivityMetric(_:), v42);
          sub_100017938(&qword_10002CA98, &type metadata accessor for HorizontalMetricRow, &protocol conformance descriptor for HorizontalMetricRow);
          v69 = v76;
          v70 = v77;
          sub_10001DD50();
          (*(v15 + 8))(v17, v67);
          (*(v75 + 8))(v68, v69);
          sub_10001D950();
          v71 = v82;
          (*(v82 + 16))(v81, v13, v43);
          sub_100017938(&qword_10002CAA0, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
          v72 = sub_10001D930();
          (*(v71 + 8))(v13, v43);
          *&v70[*(v85 + 36)] = v72;
          v37 = &qword_10002CA70;
          v38 = &qword_10001F860;
          sub_100003A7C(v70, v46, &qword_10002CA70, &qword_10001F860);
          swift_storeEnumTagMultiPayload();
          sub_10001731C();
          sub_100017684();
          v40 = v91;
          sub_10001DB60();
          v57 = v70;
          goto LABEL_6;
        }
      }

      v58 = 1;
      v40 = v91;
      goto LABEL_7;
    }

    v95 = v47;
    v48 = *(v15 + 104);
    v77 = v47;
    v49 = v42;
    v50 = v48(v17, enum case for WorkoutViewStyle.iOSLiveActivityNotificationMetric(_:), v42);
    sub_100017630(v50, v51, v52);
    v23 = v78;
    sub_10001DD50();
    (*(v15 + 8))(v17, v49);
    v53 = v13;
    sub_10001D950();
    v54 = v82;
    (*(v82 + 16))(v81, v53, v43);
    sub_100017938(&qword_10002CAA0, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
    v55 = sub_10001D930();
    (*(v54 + 8))(v53, v43);
    *&v23[*(v45 + 36)] = v55;
    v37 = &qword_10002CBB0;
    v38 = &qword_10001F9C8;
    sub_100003A7C(v23, v44, &qword_10002CBB0, &qword_10001F9C8);
    swift_storeEnumTagMultiPayload();
    sub_1000173A8();
    sub_10001754C();
    v56 = v80;
    sub_10001DB60();
    sub_100003A7C(v56, v46, &qword_10002CBC8, &qword_10001F9E0);
    swift_storeEnumTagMultiPayload();
    sub_10001731C();
    sub_100017684();
    v40 = v91;
    sub_10001DB60();

    v41 = v56;
  }

  sub_100004088(v41, &qword_10002CBC8, &qword_10001F9E0);
  v57 = v23;
LABEL_6:
  sub_100004088(v57, v37, v38);
  v58 = 0;
LABEL_7:
  v59 = sub_100001C34(&qword_10002CBF8, &qword_10001FA10);
  (*(*(v59 - 8) + 56))(v40, v58, 1, v59);
  v60 = v90;
  v61 = v92;
  sub_100003A7C(v90, v92, &qword_10002CBE8, &qword_10001FA00);
  v62 = v93;
  sub_100003A7C(v40, v93, &qword_10002CBE0, &qword_10001F9F8);
  v63 = v94;
  sub_100003A7C(v61, v94, &qword_10002CBE8, &qword_10001FA00);
  v64 = sub_100001C34(&qword_10002CC00, &qword_10001FA18);
  sub_100003A7C(v62, v63 + *(v64 + 48), &qword_10002CBE0, &qword_10001F9F8);
  sub_100004088(v40, &qword_10002CBE0, &qword_10001F9F8);
  sub_100004088(v60, &qword_10002CBE8, &qword_10001FA00);
  sub_100004088(v62, &qword_10002CBE0, &qword_10001F9F8);
  return sub_100004088(v61, &qword_10002CBE8, &qword_10001FA00);
}

void sub_100015C64(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v115 = sub_100001C34(&qword_10002CC88, &qword_10001FA50);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v125 = &v101 - v3;
  v4 = sub_100001C34(&qword_10002CC90, &qword_10001FA58);
  v117 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v116 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v126 = &v101 - v7;
  v108 = sub_100001C34(&qword_10002CC98, &unk_10001FA60);
  __chkstk_darwin(v108);
  v109 = &v101 - v8;
  v9 = sub_10001DC60();
  v122 = *(v9 - 8);
  v123 = v9;
  __chkstk_darwin(v9);
  v121 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001C34(&qword_10002C140, &unk_10001E680);
  __chkstk_darwin(v11 - 8);
  v13 = &v101 - v12;
  v14 = sub_100001C34(&qword_10002C1E8, &unk_10001FA70);
  v15 = __chkstk_darwin(v14);
  v17 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v101 - v18;
  v20 = sub_10001D6E0();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v101 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v101 - v25;
  v119 = sub_100001C34(&qword_10002C1F0, &qword_10001E750);
  __chkstk_darwin(v119);
  v120 = &v101 - v27;
  v106 = sub_100001C34(&qword_10002CCA0, &qword_10001FA80);
  v28 = __chkstk_darwin(v106);
  v113 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v107 = &v101 - v31;
  __chkstk_darwin(v30);
  v127 = &v101 - v32;
  v112 = sub_10001D820();
  v111 = sub_10001D890();
  v110 = sub_10001D800();
  v124 = a1;
  sub_10001D8A0();
  sub_10001D6A0();
  sub_100017938(&qword_10002C210, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  if ((sub_10001E120() & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v104 = v4;
  v105 = v13;
  v33 = *(v21 + 32);
  v101 = v21 + 32;
  v103 = v26;
  v33(v19, v26, v20);
  v33(&v19[*(v14 + 48)], v24, v20);
  sub_100003A7C(v19, v17, &qword_10002C1E8, &unk_10001FA70);
  v34 = *(v14 + 48);
  v35 = v120;
  v33(v120, v17, v20);
  v36 = *(v21 + 8);
  v36(&v17[v34], v20);
  sub_1000035C0(v19, v17, &qword_10002C1E8, &unk_10001FA70);
  v37 = &v35[*(v119 + 36)];
  v38 = &v17[*(v14 + 48)];
  v102 = v33;
  v33(v37, v38, v20);
  v119 = v20;
  v36(v17, v20);
  v39 = v124;
  sub_10001D850();
  v40 = sub_10001DCE0();
  v42 = v41;
  LOBYTE(v34) = v43;
  sub_10001DC90();
  v44 = v121;
  sub_10001DC40();
  sub_10001DCC0();
  (*(v122 + 8))(v44, v123);
  sub_10001DC70();

  v45 = sub_10001DD20();
  v47 = v46;
  v49 = v48;

  sub_100003470(v40, v42, v34 & 1);

  if ((sub_10001D890() & 1) == 0)
  {
    v50 = [objc_opt_self() elapsedTimeColors];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 nonGradientTextColor];

      if (v52)
      {
        sub_10001DEE0();
        goto LABEL_7;
      }

LABEL_25:
      __break(1u);
      return;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_10001DE70();
  sub_10001DEA0();

LABEL_7:
  v53 = sub_10001DCF0();
  v55 = v54;
  v57 = v56;
  v59 = v58;

  sub_100003470(v45, v47, v49 & 1);

  KeyPath = swift_getKeyPath();
  v61 = v103;
  v62 = v39;
  sub_10001D8A0();
  v63 = v109;
  v102(&v109[*(v108 + 36)], v61, v119);
  *v63 = 0;
  v64 = v107;
  sub_100003A7C(v63, &v107[*(v106 + 36)], &qword_10002CC98, &unk_10001FA60);
  *v64 = v53;
  *(v64 + 8) = v55;
  *(v64 + 16) = v57 & 1;
  *(v64 + 24) = v59;
  *(v64 + 32) = KeyPath;
  *(v64 + 40) = 1;
  sub_100004088(v63, &qword_10002CC98, &unk_10001FA60);
  sub_1000035C0(v64, v127, &qword_10002CCA0, &qword_10001FA80);
  v65 = sub_10001D890();
  if (v65)
  {
    v68 = &type metadata for ResumeMirroredWorkout;
    v69 = sub_100004754(v65, v66, v67);
  }

  else
  {
    v68 = &type metadata for PauseMirroredWorkout;
    v69 = sub_100004E94(v65, v66, v67);
  }

  v70 = v110;
  v130[3] = v68;
  v130[4] = v69;
  v71 = sub_100012AC0(v130, v68);
  __chkstk_darwin(v71);
  v74 = (*(v73 + 16))(&v101 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v74);
  *(&v101 - 2) = v62;
  sub_100001C34(&qword_10002CCA8, &unk_10001FAB8);
  sub_10001787C();
  sub_10001DF50();
  if (sub_10001D860())
  {
    sub_10001DE70();
    v75 = sub_10001DEA0();

    sub_10001DE70();
    sub_10001DEA0();

    v76 = v118;
    v77 = v114;
    v78 = v111;
    v79 = v70;
  }

  else
  {
    v80 = sub_10001D890();
    v76 = v118;
    v77 = v114;
    v78 = v111;
    v79 = v70;
    if (v80)
    {
      v75 = sub_10001DE50();
    }

    else
    {
      v75 = sub_10001DE90();
    }

    sub_10001DE50();
  }

  if (sub_10001D860())
  {
    v81 = v117;
    sub_10001DE70();
    sub_10001DEA0();

    sub_10001DE70();
    v82 = sub_10001DEA0();
  }

  else
  {
    if (sub_10001D890())
    {
      v81 = v117;
      sub_10001DE50();
    }

    else
    {
      v81 = v117;
      sub_10001DE90();
    }

    v82 = sub_10001DE50();
  }

  v83 = v115;

  v128 = v75;
  v129 = v82;
  v84 = sub_1000039E0(&qword_10002CCB8, &qword_10002CC88, &qword_10001FA50, &protocol conformance descriptor for Button<A>);
  sub_100012C00(v84, v85, v86);
  v87 = v126;
  v88 = v125;
  sub_10001DDD0();

  (*(v77 + 8))(v88, v83);
  sub_100005EBC(v130);
  v89 = v78 & 1;
  LOBYTE(v83) = v79 & 1;
  v90 = v113;
  sub_100003A7C(v127, v113, &qword_10002CCA0, &qword_10001FA80);
  v91 = v81;
  v92 = *(v81 + 16);
  v93 = v116;
  v94 = v87;
  v95 = v104;
  v92(v116, v94, v104);
  v96 = v112;
  *v76 = v112;
  *(v76 + 8) = v89;
  *(v76 + 9) = v83;
  *(v76 + 16) = xmmword_10001F7B0;
  *(v76 + 32) = 0;
  *(v76 + 40) = 1;
  v97 = sub_100001C34(&qword_10002CCC0, &unk_10001FAC8);
  sub_100003A7C(v90, v76 + v97[16], &qword_10002CCA0, &qword_10001FA80);
  v98 = v76 + v97[20];
  *v98 = 0;
  *(v98 + 8) = 1;
  v92((v76 + v97[24]), v93, v95);
  v99 = *(v91 + 8);
  v100 = v96;
  v99(v126, v95);
  sub_100004088(v127, &qword_10002CCA0, &qword_10001FA80);
  v99(v93, v95);
  sub_100004088(v90, &qword_10002CCA0, &qword_10001FA80);
}

uint64_t sub_100016A04()
{
  v0 = sub_100001C34(&qword_10002C990, &qword_10001F730);
  __chkstk_darwin(v0 - 8);
  v2 = v13 - v1;
  sub_10001D890();
  v3 = sub_10001DF00();
  sub_10001DCB0();
  v4 = sub_10001DC80();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_10001DCD0();
  sub_100004088(v2, &qword_10002C990, &qword_10001F730);
  KeyPath = swift_getKeyPath();
  sub_10001DF80();
  sub_10001D920();
  *&v15 = v3;
  *(&v15 + 1) = KeyPath;
  *&v16 = v5;
  sub_10001D890();
  sub_10001DAF0();
  v7 = sub_10001DD30();
  v9 = v8;
  LOBYTE(v2) = v10;
  sub_100001C34(&qword_10002C958, &qword_10001F6E0);
  sub_100014D20();
  sub_10001DDF0();
  sub_100003470(v7, v9, v2 & 1);

  v13[2] = v17;
  v13[3] = v18;
  v14 = v19;
  v13[0] = v15;
  v13[1] = v16;
  return sub_100004088(v13, &qword_10002C958, &qword_10001F6E0);
}

uint64_t sub_100016CA8@<X0>(char *a1@<X8>)
{
  v36 = a1;
  v1 = sub_100001C34(&qword_10002CC58, &qword_10001FA30);
  __chkstk_darwin(v1);
  v3 = &v28 - v2;
  v4 = sub_100001C34(&qword_10002CC60, &qword_10001FA38);
  v35 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v33 = &v28 - v8;
  v9 = __chkstk_darwin(v7);
  v32 = &v28 - v10;
  __chkstk_darwin(v9);
  v37 = &v28 - v11;
  v12 = sub_10001E110();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = enum case for LocalizationFeature.workout(_:);
  v30 = *(v13 + 104);
  v30(v15);
  sub_10001E0B0();
  v16 = *(v13 + 8);
  v16(v15, v12);
  sub_10001E070();

  v17 = sub_10001DB70();
  v29 = v1;
  *&v3[*(v1 + 36)] = v17;
  sub_10001DCB0();
  sub_10001779C();
  sub_10001DDC0();
  sub_100004088(v3, &qword_10002CC58, &qword_10001FA30);
  (v30)(v15, v31, v12);
  sub_10001E0B0();
  v16(v15, v12);
  sub_10001E070();

  *&v3[*(v29 + 36)] = sub_10001DB80();
  sub_10001DCB0();
  v18 = v32;
  sub_10001DDC0();
  sub_100004088(v3, &qword_10002CC58, &qword_10001FA30);
  v19 = v35;
  v20 = *(v35 + 16);
  v21 = v33;
  v22 = v37;
  v20(v33, v37, v4);
  v23 = v34;
  v20(v34, v18, v4);
  v24 = v36;
  v20(v36, v21, v4);
  v25 = sub_100001C34(&qword_10002CC80, &qword_10001FA48);
  v20(&v24[*(v25 + 48)], v23, v4);
  v26 = *(v19 + 8);
  v26(v18, v4);
  v26(v22, v4);
  v26(v23, v4);
  return (v26)(v21, v4);
}

uint64_t sub_100017138()
{
  v1 = sub_100001C34(&qword_10002CB88, &qword_10001F9A8);
  __chkstk_darwin(v1);
  v3 = &v8 - v2;
  *v3 = sub_10001DB40();
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = sub_100001C34(&qword_10002CB90, &qword_10001F9B0);
  sub_100014FE8(v0, &v3[*(v4 + 44)]);
  v5 = sub_10001DBF0();
  v6 = &v3[*(v1 + 36)];
  *v6 = v5;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  v6[40] = 1;
  sub_10001DE80();
  sub_100017264();
  sub_10001DD80();

  return sub_100004088(v3, &qword_10002CB88, &qword_10001F9A8);
}

unint64_t sub_100017264()
{
  result = qword_10002CB98;
  if (!qword_10002CB98)
  {
    sub_1000036E4(&qword_10002CB88, &qword_10001F9A8);
    sub_1000039E0(&qword_10002CBA0, &qword_10002CBA8, &unk_10001F9B8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB98);
  }

  return result;
}

unint64_t sub_10001731C()
{
  result = qword_10002CC08;
  if (!qword_10002CC08)
  {
    sub_1000036E4(&qword_10002CBC8, &qword_10001F9E0);
    sub_1000173A8();
    sub_10001754C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC08);
  }

  return result;
}

unint64_t sub_1000173A8()
{
  result = qword_10002CC10;
  if (!qword_10002CC10)
  {
    sub_1000036E4(&qword_10002CBD8, &qword_10001F9F0);
    sub_1000036E4(&qword_10002CBD0, &qword_10001F9E8);
    sub_10001749C();
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002CC30, &qword_10002CC38, &qword_10001FA28, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC10);
  }

  return result;
}

unint64_t sub_10001749C()
{
  result = qword_10002CC18;
  if (!qword_10002CC18)
  {
    sub_1000036E4(&qword_10002CBD0, &qword_10001F9E8);
    sub_1000039E0(&qword_10002CC20, &qword_10002CC28, &qword_10001FA20, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC18);
  }

  return result;
}

unint64_t sub_10001754C()
{
  result = qword_10002CC40;
  if (!qword_10002CC40)
  {
    v1 = sub_1000036E4(&qword_10002CBB0, &qword_10001F9C8);
    sub_100017630(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002CC30, &qword_10002CC38, &qword_10001FA28, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC40);
  }

  return result;
}

unint64_t sub_100017630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002CC48;
  if (!qword_10002CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC48);
  }

  return result;
}

unint64_t sub_100017684()
{
  result = qword_10002CC50;
  if (!qword_10002CC50)
  {
    sub_1000036E4(&qword_10002CA70, &qword_10001F860);
    sub_10001E100();
    sub_100017938(&qword_10002CA98, &type metadata accessor for HorizontalMetricRow, &protocol conformance descriptor for HorizontalMetricRow);
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002CC30, &qword_10002CC38, &qword_10001FA28, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC50);
  }

  return result;
}

unint64_t sub_10001779C()
{
  result = qword_10002CC68;
  if (!qword_10002CC68)
  {
    sub_1000036E4(&qword_10002CC58, &qword_10001FA30);
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002CC70, &qword_10002CC78, &qword_10001FA40, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC68);
  }

  return result;
}

unint64_t sub_10001787C()
{
  result = qword_10002CCB0;
  if (!qword_10002CCB0)
  {
    sub_1000036E4(&qword_10002CCA8, &unk_10001FAB8);
    sub_100014D20();
    sub_100017938(&qword_10002C288, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB0);
  }

  return result;
}

uint64_t sub_100017938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100017988()
{
  sub_1000036E4(&qword_10002CB88, &qword_10001F9A8);
  sub_100017264();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100017A18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100001C34(&qword_10002CCC8, &qword_10001FBC0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v24 - v9);
  v11 = sub_100001C34(&qword_10002CCD0, &qword_10001FBC8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = (&v24 - v15);
  FIUIIconSize();
  *v16 = sub_10001DF80();
  v16[1] = v17;
  v18 = sub_100001C34(&qword_10002CCD8, &qword_10001FBD0);
  sub_100017C9C(a1, v16 + *(v18 + 44));
  *v10 = sub_10001DF80();
  v10[1] = v19;
  v20 = sub_100001C34(&qword_10002CCE0, &qword_10001FBD8);
  sub_1000182C4(v10 + *(v20 + 44));
  sub_100003A7C(v16, v14, &qword_10002CCD0, &qword_10001FBC8);
  sub_100003A7C(v10, v8, &qword_10002CCC8, &qword_10001FBC0);
  sub_100003A7C(v14, a2, &qword_10002CCD0, &qword_10001FBC8);
  v21 = sub_100001C34(&qword_10002CCE8, &qword_10001FBE0);
  v22 = a2 + *(v21 + 48);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_100003A7C(v8, a2 + *(v21 + 64), &qword_10002CCC8, &qword_10001FBC0);
  sub_100004088(v10, &qword_10002CCC8, &qword_10001FBC0);
  sub_100004088(v16, &qword_10002CCD0, &qword_10001FBC8);
  sub_100004088(v8, &qword_10002CCC8, &qword_10001FBC0);
  return sub_100004088(v14, &qword_10002CCD0, &qword_10001FBC8);
}

void sub_100017C9C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v6 = sub_10001DF10();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100001C34(&qword_10002CD38, &qword_10001FC88);
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v42 - v10;
  v11 = sub_100001C34(&qword_10002CD40, &qword_10001FC90);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v42 - v15;
  v17 = sub_100001C34(&qword_10002CAD0, &qword_10001F8B8);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v42 - v21;
  sub_100018B78();
  isa = sub_10001E1F0(0x393937u).super.isa;
  v24 = FIUICircularImage();

  if (v24)
  {
    v44 = a2;
    *&v56[0] = sub_10001DEF0();
    sub_10001DE10();

    v25 = FIUIStaticScalableWorkoutIconImage();
    if (v25)
    {
      v26 = v25;
      v27 = [v25 imageWithRenderingMode:2];
      sub_10001DEF0();
      (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
      v28 = sub_10001DF40();

      (*(v7 + 8))(v9, v6);
      v29 = sub_10001DE90();
      sub_10001DF80();
      sub_10001D920();
      v50 = v28;
      LOWORD(v51) = 1;
      *(&v51 + 1) = v29;
      v55 = 1;
      v30 = [v47 localizedName];
      v31 = sub_10001E140();
      v33 = v32;

      v48 = v31;
      v49 = v33;
      sub_100001C34(&qword_10002CD58, &qword_10001FCA0);
      v34 = sub_100018BC4();
      sub_100003A28(v34, v35, v36);
      v37 = v43;
      sub_10001DE00();

      v56[2] = v52;
      v56[3] = v53;
      v56[4] = v54;
      v57 = v55;
      v56[0] = v50;
      v56[1] = v51;
      sub_100004088(v56, &qword_10002CD58, &qword_10001FCA0);
      v38 = v46;
      v39 = (v37 + *(v46 + 36));
      sub_100001C34(&qword_10002CAE8, &unk_10001FED0);
      sub_10001D980();

      *v39 = 0;
      sub_1000035C0(v37, v16, &qword_10002CD38, &qword_10001FC88);
      (*(v45 + 56))(v16, 0, 1, v38);
    }

    else
    {
      (*(v45 + 56))(v16, 1, 1, v46);
    }

    sub_100003A7C(v22, v20, &qword_10002CAD0, &qword_10001F8B8);
    sub_100003A7C(v16, v14, &qword_10002CD40, &qword_10001FC90);
    v40 = v44;
    sub_100003A7C(v20, v44, &qword_10002CAD0, &qword_10001F8B8);
    v41 = sub_100001C34(&qword_10002CD50, &qword_10001FC98);
    sub_100003A7C(v14, v40 + *(v41 + 48), &qword_10002CD40, &qword_10001FC90);
    sub_100004088(v16, &qword_10002CD40, &qword_10001FC90);
    sub_100004088(v22, &qword_10002CAD0, &qword_10001F8B8);
    sub_100004088(v14, &qword_10002CD40, &qword_10001FC90);
    sub_100004088(v20, &qword_10002CAD0, &qword_10001F8B8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000182C4(uint64_t a1@<X8>)
{
  v61 = a1;
  v2 = sub_10001DB30();
  v55 = *(v2 - 8);
  v56 = v2;
  __chkstk_darwin(v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100001C34(&qword_10002CCF0, &qword_10001FBE8);
  __chkstk_darwin(v62);
  v6 = (&v49 - v5);
  v51 = sub_100001C34(&qword_10002CCF8, &qword_10001FBF0);
  __chkstk_darwin(v51);
  v8 = &v49 - v7;
  v53 = sub_100001C34(&qword_10002CD00, &qword_10001FBF8);
  v9 = __chkstk_darwin(v53);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v57 = &v49 - v11;
  v52 = sub_100001C34(&qword_10002CD08, &unk_10001FC00);
  v12 = __chkstk_darwin(v52);
  v60 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v49 - v15;
  __chkstk_darwin(v14);
  v59 = &v49 - v17;
  v18 = sub_100001C34(&qword_10002CAD0, &qword_10001F8B8);
  v19 = __chkstk_darwin(v18 - 8);
  v58 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v49 - v21;
  if (FIUICircularWorkoutGradientImageWithGoal())
  {
    *&v63 = sub_10001DEF0();
    v50 = v22;
    sub_10001DE10();

    v23 = sub_10001DF00();
    v24 = sub_10001DC30();
    KeyPath = swift_getKeyPath();
    v26 = (v6 + *(sub_100001C34(&qword_10002CD10, &unk_10001FC40) + 36));
    v27 = *(sub_100001C34(&qword_10002C940, &qword_10001F6D8) + 28);
    v28 = enum case for Image.Scale.small(_:);
    v29 = sub_10001DF30();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    *v6 = v23;
    v6[1] = KeyPath;
    v6[2] = v24;
    sub_10001DF80();
    sub_10001D920();
    v30 = (v6 + *(v62 + 36));
    v31 = v64;
    *v30 = v63;
    v30[1] = v31;
    v30[2] = v65;
    v32 = [objc_opt_self() metricColorsForGoalTypeIdentifier:0];
    v33 = [v32 nonGradientTextColor];

    if (v33)
    {
      v34 = sub_10001DEE0();
      sub_1000035C0(v6, v8, &qword_10002CCF0, &qword_10001FBE8);
      *&v8[*(v51 + 36)] = v34;
      sub_10001DB10();
      sub_100018D08(&qword_10002CD18, &qword_10002CCF8, &qword_10001FBF0, sub_100018A34);
      v35 = v54;
      sub_10001DE40();
      (*(v55 + 8))(v4, v56);
      sub_100004088(v8, &qword_10002CCF8, &qword_10001FBF0);
      sub_10001DAF0();
      v36 = sub_10001DD30();
      v38 = v37;
      v40 = v39;
      v41 = v57;
      sub_10001D970();
      sub_100003470(v36, v38, v40 & 1);

      sub_100004088(v35, &qword_10002CD00, &qword_10001FBF8);
      v42 = &v16[*(v52 + 36)];
      sub_100001C34(&qword_10002CAE8, &unk_10001FED0);
      sub_10001D980();
      *v42 = 0;
      sub_1000035C0(v41, v16, &qword_10002CD00, &qword_10001FBF8);
      v43 = v59;
      sub_1000035C0(v16, v59, &qword_10002CD08, &unk_10001FC00);
      v44 = v50;
      v45 = v58;
      sub_100003A7C(v50, v58, &qword_10002CAD0, &qword_10001F8B8);
      v46 = v60;
      sub_100003A7C(v43, v60, &qword_10002CD08, &unk_10001FC00);
      v47 = v61;
      sub_100003A7C(v45, v61, &qword_10002CAD0, &qword_10001F8B8);
      v48 = sub_100001C34(&qword_10002CD30, &qword_10001FC80);
      sub_100003A7C(v46, v47 + *(v48 + 48), &qword_10002CD08, &unk_10001FC00);
      sub_100004088(v43, &qword_10002CD08, &unk_10001FC00);
      sub_100004088(v44, &qword_10002CAD0, &qword_10001F8B8);
      sub_100004088(v46, &qword_10002CD08, &unk_10001FC00);
      sub_100004088(v45, &qword_10002CAD0, &qword_10001F8B8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_100018A34()
{
  result = qword_10002CD20;
  if (!qword_10002CD20)
  {
    sub_1000036E4(&qword_10002CCF0, &qword_10001FBE8);
    sub_100018AC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD20);
  }

  return result;
}

unint64_t sub_100018AC0()
{
  result = qword_10002CD28;
  if (!qword_10002CD28)
  {
    sub_1000036E4(&qword_10002CD10, &unk_10001FC40);
    sub_1000118F4();
    sub_1000039E0(&qword_10002C938, &qword_10002C940, &qword_10001F6D8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD28);
  }

  return result;
}

unint64_t sub_100018B78()
{
  result = qword_10002CD48;
  if (!qword_10002CD48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002CD48);
  }

  return result;
}

unint64_t sub_100018BC4()
{
  result = qword_10002CD60;
  if (!qword_10002CD60)
  {
    sub_1000036E4(&qword_10002CD58, &qword_10001FCA0);
    v3 = sub_100018C50();
    sub_100018E3C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD60);
  }

  return result;
}

unint64_t sub_100018C50()
{
  result = qword_10002CD68;
  if (!qword_10002CD68)
  {
    sub_1000036E4(&qword_10002CD70, &qword_10001FCA8);
    sub_100018D08(&qword_10002CD78, &qword_10002CD80, &qword_10001FCB0, sub_100018DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD68);
  }

  return result;
}

uint64_t sub_100018D08(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000036E4(a2, a3);
    a4();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100018DB8()
{
  result = qword_10002CD88;
  if (!qword_10002CD88)
  {
    sub_1000036E4(&qword_10002CD90, &qword_10001FCB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD88);
  }

  return result;
}

unint64_t sub_100018E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002CD98;
  if (!qword_10002CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD98);
  }

  return result;
}

uint64_t sub_100018ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100018FD0(a1, a2, a3);

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v3, &type metadata for MirroredWidgetLiveActivity, v3);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100018F50(*&argc, argv, envp);
  sub_10001D910();
  return 0;
}

unint64_t sub_100018F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002CDB0;
  if (!qword_10002CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDB0);
  }

  return result;
}

unint64_t sub_100018FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002CDB8;
  if (!qword_10002CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDB8);
  }

  return result;
}

uint64_t sub_100019070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_10001D8B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_10001D890();
  if (v9)
  {
    v12 = &type metadata for ResumeMirroredWorkout;
    v13 = sub_100004754(v9, v10, v11);
  }

  else
  {
    v12 = &type metadata for PauseMirroredWorkout;
    v13 = sub_100004E94(v9, v10, v11);
  }

  v35[3] = v12;
  v35[4] = v13;
  v28 = *(v4 + 16);
  v28(v8, a1, v3);
  sub_100019ABC(v35, v34);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v27 = a1;
  v15 = (v14 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = *(v4 + 32);
  v32 = v16;
  v17(v16 + v14, v8, v3);
  sub_100019BBC(v34, v16 + v15);
  v18 = v30;
  v19 = v27;
  v20 = v28;
  v28(v30, v27, v3);
  v31 = swift_allocObject();
  v17(v31 + v14, v18, v3);
  v20(v18, v19, v3);
  v29 = swift_allocObject();
  v17(v29 + v14, v18, v3);
  v20(v18, v19, v3);
  v21 = swift_allocObject();
  v17(v21 + v14, v18, v3);
  sub_100001C34(&qword_10002CDC0, &qword_10001FD60);
  type metadata accessor for DynamicIslandWorkoutTimeView(0);
  v22 = sub_1000039E0(&qword_10002CDC8, &qword_10002CDC0, &qword_10001FD60, &protocol conformance descriptor for TupleView<A>);
  sub_10001A6D4(v22, v23, v24);
  sub_10001AE54(&qword_10002CDD8, type metadata accessor for DynamicIslandWorkoutTimeView, &unk_10001E6F8);
  sub_10001DFC0();
  return sub_100005EBC(v35);
}

uint64_t sub_100019414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v31 = sub_100001C34(&qword_10002CDE0, &qword_10001FD68);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v23 = &v20 - v5;
  v28 = sub_100001C34(&qword_10002CDE8, &qword_10001FD70);
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v20 - v6;
  v26 = sub_100001C34(&qword_10002CDF0, &qword_10001FD78);
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v9 = &v20 - v8;
  v24 = sub_100001C34(&qword_10002CDF8, &qword_10001FD80);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v11 = &v20 - v10;
  v12 = sub_10001E060();
  __chkstk_darwin(v12 - 8);
  v21 = sub_100001C34(&qword_10002CE00, &qword_10001FD88);
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = &v20 - v14;
  sub_10001E040();
  v39 = a1;
  v40 = a2;
  v16 = sub_100001C34(&qword_10002CE08, &qword_10001FD90);
  v17 = sub_1000039E0(&qword_10002CE10, &qword_10002CE08, &qword_10001FD90, &protocol conformance descriptor for HStack<A>);
  sub_10001E000();
  sub_10001E050();
  v38 = a1;
  type metadata accessor for DynamicIslandWorkoutTimeView(0);
  sub_10001AE54(&qword_10002CDD8, type metadata accessor for DynamicIslandWorkoutTimeView, &unk_10001E6F8);
  sub_10001E000();
  sub_10001E030();
  v37 = a1;
  sub_100001C34(&qword_10002CE18, &qword_10001FD98);
  sub_10001A7A4();
  sub_10001E000();
  v36 = v15;
  sub_100001C34(&qword_10002CE38, &qword_10001FDA8);
  v41 = v16;
  v42 = v17;
  swift_getOpaqueTypeConformance2();
  sub_10001E010();
  v34 = v7;
  v35 = v11;
  sub_100001C34(&qword_10002CE40, &qword_10001FDB0);
  sub_1000039E0(&qword_10002CE48, &qword_10002CE40, &qword_10001FDB0, &protocol conformance descriptor for TupleView<A>);
  v18 = v23;
  sub_10001E010();
  v32 = v18;
  v33 = v9;
  sub_100001C34(&qword_10002CDC0, &qword_10001FD60);
  sub_1000039E0(&qword_10002CDC8, &qword_10002CDC0, &qword_10001FD60, &protocol conformance descriptor for TupleView<A>);
  sub_10001E010();
  (*(v29 + 8))(v18, v31);
  (*(v27 + 8))(v7, v28);
  (*(v25 + 8))(v9, v26);
  (*(v22 + 8))(v11, v24);
  return (*(v13 + 8))(v15, v21);
}

uint64_t sub_100019ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100019B20()
{
  v1 = sub_10001D8B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100005EBC((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_100019BBC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100019BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_10001D8B0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_100019414(v1 + v4, v5, a1);
}

uint64_t sub_100019C70(double a1, uint64_t a2, uint64_t a3)
{
  if (sub_10001D800())
  {
    v18[0] = sub_10001D820();
    *&v18[1] = a1;
    v19 = 0;
    v7 = sub_10001AEF8(v18[0], v5, v6);
    sub_10001AF4C(v7, v8, v9);
    return sub_10001DB60();
  }

  else
  {
    v11 = sub_10001D840();
    sub_100019ABC(a3, v21);
    *v20 = a1;
    v20[1] = v11;
    v21[40] = sub_10001D890() & 1;
    v12 = sub_10001AE9C(v20, v18);
    v19 = 1;
    v15 = sub_10001AEF8(v12, v13, v14);
    sub_10001AF4C(v15, v16, v17);
    sub_10001DB60();
    return sub_10001AFA0(v20);
  }
}

uint64_t sub_100019D78@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_10001E100();
  v2 = *(v1 - 8);
  v44 = v1;
  v45 = v2;
  __chkstk_darwin(v1);
  v47 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100001C34(&qword_10002CA70, &qword_10001F860);
  __chkstk_darwin(v48);
  v46 = v43 - v4;
  v50 = sub_100001C34(&qword_10002CE70, &qword_10001FDD8);
  __chkstk_darwin(v50);
  v49 = v43 - v5;
  v6 = sub_10001D960();
  v51 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v43 - v10;
  v12 = sub_10001E080();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100001C34(&qword_10002CBB0, &qword_10001F9C8);
  __chkstk_darwin(v16);
  v18 = v43 - v17;
  v19 = sub_10001D830();
  if (v19)
  {
    v20 = v19;
    v53 = v19;
    v21 = (*(v13 + 104))(v15, enum case for WorkoutViewStyle.iOSLiveActivityNotificationMetric(_:), v12);
    sub_100017630(v21, v22, v23);
    sub_10001DD50();
    (*(v13 + 8))(v15, v12);
    sub_10001D950();
    v24 = v51;
    (*(v51 + 16))(v9, v11, v6);
    sub_10001AE54(&qword_10002CAA0, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
    v25 = sub_10001D930();
    (*(v24 + 8))(v11, v6);
    *&v18[*(v16 + 36)] = v25;
    sub_100003A7C(v18, v49, &qword_10002CBB0, &qword_10001F9C8);
    swift_storeEnumTagMultiPayload();
    sub_10001754C();
    sub_100017684();
    v26 = v52;
    sub_10001DB60();

    sub_100004088(v18, &qword_10002CBB0, &qword_10001F9C8);
    v27 = sub_100001C34(&qword_10002CE30, &qword_10001FDA0);
    return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  }

  else
  {
    v29 = v46;
    v30 = v47;
    v43[0] = v6;
    v43[1] = v16;
    v31 = v51;
    v32 = sub_10001D880();
    v33 = v52;
    if (v32)
    {
      if (*(v32 + 16))
      {
        sub_10001E0F0();
        (*(v13 + 104))(v15, enum case for WorkoutViewStyle.iOSLiveActivityMetric(_:), v12);
        sub_10001AE54(&qword_10002CA98, &type metadata accessor for HorizontalMetricRow, &protocol conformance descriptor for HorizontalMetricRow);
        v34 = v29;
        v35 = v44;
        sub_10001DD50();
        (*(v13 + 8))(v15, v12);
        (*(v45 + 8))(v30, v35);
        sub_10001D950();
        v36 = v43[0];
        (*(v31 + 16))(v9, v11, v43[0]);
        sub_10001AE54(&qword_10002CAA0, &type metadata accessor for MoveTransition, &protocol conformance descriptor for MoveTransition);
        v37 = sub_10001D930();
        (*(v31 + 8))(v11, v36);
        v38 = v49;
        *(v34 + *(v48 + 36)) = v37;
        sub_100003A7C(v34, v38, &qword_10002CA70, &qword_10001F860);
        swift_storeEnumTagMultiPayload();
        sub_10001754C();
        sub_100017684();
        v39 = v52;
        sub_10001DB60();
        sub_100004088(v34, &qword_10002CA70, &qword_10001F860);
        v40 = sub_100001C34(&qword_10002CE30, &qword_10001FDA0);
        return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
      }
    }

    v41 = sub_100001C34(&qword_10002CE30, &qword_10001FDA0);
    v42 = *(*(v41 - 8) + 56);

    return v42(v33, 1, 1, v41);
  }
}

uint64_t sub_10001A4C0@<X0>(char a2@<W1>, uint64_t a3@<X8>)
{
  sub_10001D8A0();
  v5 = type metadata accessor for DynamicIslandWorkoutTimeView(0);
  sub_10001D850();
  result = sub_10001D870();
  *(a3 + *(v5 + 28)) = a2;
  return result;
}

double sub_10001A588@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_10001D820();
  v4 = sub_10001D890();
  v5 = sub_10001D800();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
  *(a2 + 9) = v5 & 1;
  result = 21.0;
  *(a2 + 16) = xmmword_10001FD50;
  return result;
}

uint64_t sub_10001A5E8()
{
  v1 = sub_10001D8B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_10001A6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002CDD0;
  if (!qword_10002CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CDD0);
  }

  return result;
}

uint64_t sub_10001A728@<X0>(uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a2 = sub_10001DAA0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_100019C70(50.0, v5, v4);
}

unint64_t sub_10001A7A4()
{
  result = qword_10002CE20;
  if (!qword_10002CE20)
  {
    sub_1000036E4(&qword_10002CE18, &qword_10001FD98);
    sub_10001A828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE20);
  }

  return result;
}

unint64_t sub_10001A828()
{
  result = qword_10002CE28;
  if (!qword_10002CE28)
  {
    sub_1000036E4(&qword_10002CE30, &qword_10001FDA0);
    sub_10001754C();
    sub_100017684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE28);
  }

  return result;
}

uint64_t sub_10001A8F4@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v1 = sub_100001C34(&qword_10002CE50, &qword_10001FDB8);
  v20 = *(v1 - 8);
  v2 = v20;
  v3 = __chkstk_darwin(v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_100001C34(&qword_10002CE40, &qword_10001FDB0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  sub_100001C34(&qword_10002CDE0, &qword_10001FD68);
  sub_10001E020();
  sub_100001C34(&qword_10002CDF0, &qword_10001FD78);
  sub_10001DFF0();
  sub_100003A7C(v13, v11, &qword_10002CE40, &qword_10001FDB0);
  v14 = *(v2 + 16);
  v15 = v1;
  v14(v5, v7, v1);
  v16 = v21;
  sub_100003A7C(v11, v21, &qword_10002CE40, &qword_10001FDB0);
  v17 = sub_100001C34(&qword_10002CE58, &qword_10001FDC0);
  v14((v16 + *(v17 + 48)), v5, v15);
  v18 = *(v20 + 8);
  v18(v7, v15);
  sub_100004088(v13, &qword_10002CE40, &qword_10001FDB0);
  v18(v5, v15);
  return sub_100004088(v11, &qword_10002CE40, &qword_10001FDB0);
}

uint64_t sub_10001AB74@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v1 = sub_100001C34(&qword_10002CE60, &qword_10001FDC8);
  v25 = *(v1 - 8);
  v2 = v25;
  v3 = __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  v8 = sub_100001C34(&qword_10002CE38, &qword_10001FDA8);
  v26 = *(v8 - 8);
  v9 = v26;
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  sub_100001C34(&qword_10002CDE8, &qword_10001FD70);
  sub_10001E020();
  sub_100001C34(&qword_10002CDF8, &qword_10001FD80);
  v24 = v7;
  sub_10001DFF0();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v17 = v7;
  v18 = v1;
  v16(v5, v17, v1);
  v19 = v27;
  v15(v27, v12, v8);
  v20 = &v19[*(sub_100001C34(&qword_10002CE68, &qword_10001FDD0) + 48)];
  v16(v20, v5, v18);
  v21 = *(v25 + 8);
  v21(v24, v18);
  v22 = *(v26 + 8);
  v22(v14, v8);
  v21(v5, v18);
  return (v22)(v12, v8);
}

uint64_t sub_10001AE54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10001AEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002CE78;
  if (!qword_10002CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE78);
  }

  return result;
}

unint64_t sub_10001AF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10002CE80;
  if (!qword_10002CE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE80);
  }

  return result;
}

uint64_t sub_10001B02C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v28 = a1;
  v29 = a2;
  v2 = sub_10001DB90();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001C34(&qword_10002CE88, &qword_10001FE80);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v9 = sub_100001C34(&qword_10002CE90, &qword_10001FE88);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v26 - v11;
  v13 = sub_100001C34(&qword_10002CE98, &qword_10001FE90);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v26 - v15;
  sub_10001DBA0();
  sub_10001DBB0();
  v17 = sub_10001DEA0();
  KeyPath = swift_getKeyPath();
  (*(v26 + 32))(v8, v4, v27);
  v19 = &v8[*(v6 + 44)];
  *v19 = KeyPath;
  v19[1] = v17;
  sub_10001DBB0();
  v20 = sub_10001DEA0();
  LOBYTE(v6) = sub_10001DBF0();
  sub_1000035C0(v8, v12, &qword_10002CE88, &qword_10001FE80);
  v21 = &v12[*(v10 + 44)];
  *v21 = v20;
  v21[8] = v6;
  sub_1000035C0(v12, v16, &qword_10002CE90, &qword_10001FE88);
  *&v16[*(v14 + 44)] = 256;
  v22 = sub_100001C34(&qword_10002CEA0, &qword_10001FEC8);
  v23 = v29;
  v24 = (v29 + *(v22 + 36));
  sub_100001C34(&qword_10002CAE8, &unk_10001FED0);
  sub_10001D980();
  *v24 = 0;
  return sub_1000035C0(v16, v23, &qword_10002CE98, &qword_10001FE90);
}

uint64_t sub_10001B338@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D9D0();
  *a1 = result;
  return result;
}

uint64_t sub_10001B364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D9D0();
  *a1 = result;
  return result;
}

unint64_t sub_10001B3EC()
{
  result = qword_10002CEA8;
  if (!qword_10002CEA8)
  {
    sub_1000036E4(&qword_10002CEA0, &qword_10001FEC8);
    sub_10001B4A4();
    sub_1000039E0(&qword_10002CEF0, &qword_10002CAE8, &unk_10001FED0, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEA8);
  }

  return result;
}

unint64_t sub_10001B4A4()
{
  result = qword_10002CEB0;
  if (!qword_10002CEB0)
  {
    sub_1000036E4(&qword_10002CE98, &qword_10001FE90);
    sub_10001B55C();
    sub_1000039E0(&qword_10002CEE0, &qword_10002CEE8, qword_10001FEE8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEB0);
  }

  return result;
}

unint64_t sub_10001B55C()
{
  result = qword_10002CEB8;
  if (!qword_10002CEB8)
  {
    sub_1000036E4(&qword_10002CE90, &qword_10001FE88);
    sub_10001B614();
    sub_1000039E0(&qword_10002CED0, &qword_10002CED8, &qword_10001FEE0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEB8);
  }

  return result;
}

unint64_t sub_10001B614()
{
  result = qword_10002CEC0;
  if (!qword_10002CEC0)
  {
    sub_1000036E4(&qword_10002CE88, &qword_10001FE80);
    sub_10001B6CC();
    sub_1000039E0(&qword_10002C790, &qword_10002C798, &qword_10001F4A8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEC0);
  }

  return result;
}

unint64_t sub_10001B6CC()
{
  result = qword_10002CEC8;
  if (!qword_10002CEC8)
  {
    sub_10001DB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CEC8);
  }

  return result;
}

uint64_t sub_10001B738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10001D8B0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001B7F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10001D8B0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MirroredLockScreenView(uint64_t a1)
{
  result = qword_10002CF50;
  if (!qword_10002CF50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001B8E8(uint64_t a1)
{
  result = sub_10001D8B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001B980@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v32 = type metadata accessor for LockScreenInSessionView(0);
  __chkstk_darwin(v32);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100001C34(&qword_10002CF88, &qword_10001FF78);
  __chkstk_darwin(v28);
  v30 = &v25 - v3;
  v4 = sub_100001C34(&qword_10002CF90, &qword_10001FF80);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_10001D8B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LockScreenSummaryView(0);
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100001C34(&qword_10002CF98, &qword_10001FF88);
  v26 = *(v29 - 8);
  __chkstk_darwin(v29);
  v15 = &v25 - v14;
  v16 = *(type metadata accessor for MirroredLockScreenView(0) + 20);
  v17 = sub_10001D800();
  v18 = *(v8 + 16);
  if (v17)
  {
    v18(v10, v1 + v16, v7);
    sub_100012FC8(v10, v13);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_10001E260(32);

    v33 = 0xD00000000000001ELL;
    v34 = 0x8000000100025BB0;
    sub_10001E170(*v1);
    sub_10001D690();

    v19 = sub_10001BF40(&qword_10002CFA0, type metadata accessor for LockScreenSummaryView, &unk_10001F7F8);
    sub_10001DD90();
    sub_10001BF88(v6);
    sub_10001BFF0(v13, type metadata accessor for LockScreenSummaryView);
    v20 = v26;
    v21 = v29;
    (*(v26 + 16))(v30, v15, v29);
    swift_storeEnumTagMultiPayload();
    v33 = v11;
    v34 = v19;
    swift_getOpaqueTypeConformance2();
    sub_10001BF40(&qword_10002CFA8, type metadata accessor for LockScreenInSessionView, &unk_10001F958);
    sub_10001DB60();
    return (*(v20 + 8))(v15, v21);
  }

  else
  {
    v23 = v27;
    v18(v27, v1 + v16, v7);
    sub_10001BEDC(v23, v30);
    swift_storeEnumTagMultiPayload();
    v24 = sub_10001BF40(&qword_10002CFA0, type metadata accessor for LockScreenSummaryView, &unk_10001F7F8);
    v33 = v11;
    v34 = v24;
    swift_getOpaqueTypeConformance2();
    sub_10001BF40(&qword_10002CFA8, type metadata accessor for LockScreenInSessionView, &unk_10001F958);
    sub_10001DB60();
    return sub_10001BFF0(v23, type metadata accessor for LockScreenInSessionView);
  }
}

uint64_t sub_10001BEDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LockScreenInSessionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001BF88(uint64_t a1)
{
  v2 = sub_100001C34(&qword_10002CF90, &qword_10001FF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001BFF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001C054()
{
  result = qword_10002CFB0;
  if (!qword_10002CFB0)
  {
    sub_1000036E4(&qword_10002CFB8, &qword_10001FF90);
    type metadata accessor for LockScreenSummaryView(255);
    sub_10001BF40(&qword_10002CFA0, type metadata accessor for LockScreenSummaryView, &unk_10001F7F8);
    swift_getOpaqueTypeConformance2();
    sub_10001BF40(&qword_10002CFA8, type metadata accessor for LockScreenInSessionView, &unk_10001F958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CFB0);
  }

  return result;
}

__n128 sub_10001C170(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001C17C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001C1C4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10001C214()
{
  v0 = sub_10001DE60();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001C34(&qword_10002D068, qword_100020138);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10001ED00;
  v5 = enum case for Color.RGBColorSpace.sRGB(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for Color.RGBColorSpace.sRGB(_:), v0);
  *(v4 + 32) = sub_10001DED0();
  v6(v3, v5, v0);
  result = sub_10001DED0();
  *(v4 + 40) = result;
  qword_10002CFC0 = v4;
  return result;
}

void sub_10001C390()
{
  v0 = [objc_opt_self() metricColorsForGoalTypeIdentifier:0];
  v1 = [v0 nonGradientTextColor];

  if (v1)
  {
    qword_10002CFC8 = sub_10001DEE0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001C408()
{
  v0 = sub_10001DE60();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = sub_10001DED0();
  qword_10002CFD0 = result;
  return result;
}

uint64_t sub_10001C4E8(uint64_t a1)
{
  result = sub_10001DE90();
  qword_10002CFD8 = result;
  return result;
}

uint64_t sub_10001C530(uint64_t a1, uint64_t *a2, double a3)
{
  sub_10001DE70();
  v4 = sub_10001DEA0();

  *a2 = v4;
  return result;
}

uint64_t sub_10001C584@<X0>(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v8 = (a2 >> 8) & 1;
  v9 = sub_10001DBE0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100001C34(&qword_10002CFF0, &qword_100020080);
  __chkstk_darwin(v13);
  v15 = &v30[-v14];
  sub_10001CEEC(v5 & 1, v8);
  sub_10001DFA0();
  sub_10001DFB0();
  sub_10001DF70();
  sub_10001D940();
  v16 = v32;
  sub_10001DF80();
  sub_10001D920();
  *&v31[6] = v35;
  *&v31[22] = v36;
  *&v31[38] = v37;
  sub_10001DF90();
  v18 = v17;
  v20 = v19;
  v21 = &v15[*(sub_100001C34(&qword_10002CFF8, &qword_100020088) + 36)];
  sub_10001C8B4(a1, v5 & 0x101, v21);
  v22 = sub_10001DF80();
  v24 = v23;
  v25 = &v21[*(sub_100001C34(&qword_10002D000, &qword_100020090) + 36)];
  *v25 = v22;
  v25[1] = v24;
  *v15 = v16;
  v26 = v33;
  *(v15 + 24) = v34;
  *(v15 + 8) = v26;
  *(v15 + 20) = 256;
  *(v15 + 11) = *&v31[46];
  *(v15 + 12) = 0xBFD657184AE74487;
  *(v15 + 74) = *&v31[32];
  v27 = *v31;
  *(v15 + 58) = *&v31[16];
  *(v15 + 42) = v27;
  *(v15 + 13) = v18;
  *(v15 + 14) = v20;
  v15[*(v13 + 36)] = 1;
  sub_10001DBC0();
  sub_10001D038();
  sub_10001DE20();
  (*(v10 + 8))(v12, v9);
  sub_100004088(v15, &qword_10002CFF0, &qword_100020080);
  v28 = (a3 + *(sub_100001C34(&qword_10002D050, &unk_1000200B0) + 36));
  sub_100001C34(&qword_10002CAE8, &unk_10001FED0);
  result = sub_10001D980();
  *v28 = 0;
  return result;
}

uint64_t sub_10001C8B4@<X0>(void *a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  v35[1] = a3;
  v6 = sub_100001C34(&qword_10002C990, &qword_10001F730);
  __chkstk_darwin(v6 - 8);
  v8 = v35 - v7;
  v9 = sub_100001C34(&qword_10002CD10, &unk_10001FC40);
  __chkstk_darwin(v9);
  v11 = (v35 - v10);
  v12 = sub_100001C34(&qword_10002D058, &qword_1000200C0);
  __chkstk_darwin(v12);
  v14 = v35 - v13;
  v35[0] = a1;
  v15 = [a1 symbolName];
  if (v15)
  {
    v16 = v15;
    sub_10001E140();
  }

  v17 = sub_10001DF20();
  sub_10001DCA0();
  v18 = sub_10001DC80();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = sub_10001DCD0();
  sub_100004088(v8, &qword_10002C990, &qword_10001F730);
  KeyPath = swift_getKeyPath();
  v21 = (v11 + *(v9 + 36));
  v22 = *(sub_100001C34(&qword_10002C940, &qword_10001F6D8) + 28);
  v23 = enum case for Image.Scale.medium(_:);
  v24 = sub_10001DF30();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v11 = v17;
  v11[1] = KeyPath;
  v11[2] = v19;
  if ((a2 & 0x100) != 0)
  {
    if (qword_10002C128 != -1)
    {
      swift_once();
    }

    v25 = &qword_10002CFD8;
  }

  else if (a2)
  {
    if (qword_10002C138 != -1)
    {
      swift_once();
    }

    v25 = &qword_10002CFE8;
  }

  else
  {
    if (qword_10002C118 != -1)
    {
      swift_once();
    }

    v25 = &qword_10002CFC8;
  }

  v26 = *v25;

  sub_10001D340(v11, v14);
  *&v14[*(v12 + 36)] = v26;
  v27 = [v35[0] localizedName];
  v28 = sub_10001E140();
  v30 = v29;

  v35[2] = v28;
  v35[3] = v30;
  v31 = sub_10001D3B0();
  sub_100003A28(v31, v32, v33);
  sub_10001DE00();

  return sub_100004088(v14, &qword_10002D058, &qword_1000200C0);
}

uint64_t sub_10001CCC4@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_10001C584(*v1, v2 | *(v1 + 8), a1);
}

BOOL sub_10001CCE8(double *a1, double *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 9);
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  v9 = a2[2];
  v8 = a2[3];
  sub_10001D468();
  v10 = sub_10001E200();
  result = 0;
  if ((v10 & 1) != 0 && ((v2 ^ v6) & 1) == 0 && ((v3 ^ v7) & 1) == 0 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t sub_10001CDA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001DA50();
  *a1 = result;
  return result;
}

uint64_t sub_10001CE24(uint64_t a1)
{
  v2 = sub_10001DF30();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001D9C0();
}

uint64_t sub_10001CEEC(char a1, char a2)
{
  if (a2)
  {
    sub_100001C34(&qword_10002D068, qword_100020138);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10001ED00;
    if (qword_10002C120 != -1)
    {
      swift_once();
    }

    v3 = qword_10002CFD0;
LABEL_9:
    *(v2 + 32) = v3;
    *(v2 + 40) = v3;
    swift_retain_n();
    return v2;
  }

  if (a1)
  {
    sub_100001C34(&qword_10002D068, qword_100020138);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10001ED00;
    if (qword_10002C130 != -1)
    {
      swift_once();
    }

    v3 = qword_10002CFE0;
    goto LABEL_9;
  }

  if (qword_10002C110 != -1)
  {
    swift_once();
  }

  v2 = qword_10002CFC0;

  return v2;
}

unint64_t sub_10001D038()
{
  result = qword_10002D008;
  if (!qword_10002D008)
  {
    sub_1000036E4(&qword_10002CFF0, &qword_100020080);
    v3 = sub_10001D0C4();
    sub_100018E3C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D008);
  }

  return result;
}

unint64_t sub_10001D0C4()
{
  result = qword_10002D010;
  if (!qword_10002D010)
  {
    sub_1000036E4(&qword_10002CFF8, &qword_100020088);
    sub_10001D17C();
    sub_1000039E0(&qword_10002D048, &qword_10002D000, &qword_100020090, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D010);
  }

  return result;
}

unint64_t sub_10001D17C()
{
  result = qword_10002D018;
  if (!qword_10002D018)
  {
    sub_1000036E4(&qword_10002D020, &qword_100020098);
    sub_10001D208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D018);
  }

  return result;
}

unint64_t sub_10001D208()
{
  result = qword_10002D028;
  if (!qword_10002D028)
  {
    sub_1000036E4(&qword_10002D030, &qword_1000200A0);
    sub_1000039E0(&qword_10002D038, &qword_10002D040, &qword_1000200A8, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D028);
  }

  return result;
}

uint64_t sub_10001D2C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001DA50();
  *a1 = result;
  return result;
}

uint64_t sub_10001D340(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001C34(&qword_10002CD10, &unk_10001FC40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001D3B0()
{
  result = qword_10002D060;
  if (!qword_10002D060)
  {
    sub_1000036E4(&qword_10002D058, &qword_1000200C0);
    sub_100018AC0();
    sub_1000039E0(&qword_10002C270, &qword_10002C278, &unk_10001F900, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D060);
  }

  return result;
}

unint64_t sub_10001D468()
{
  result = qword_10002D070;
  if (!qword_10002D070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002D070);
  }

  return result;
}

unint64_t sub_10001D4B8()
{
  result = qword_10002D078;
  if (!qword_10002D078)
  {
    sub_1000036E4(&qword_10002D050, &unk_1000200B0);
    sub_1000036E4(&qword_10002CFF0, &qword_100020080);
    sub_10001D038();
    swift_getOpaqueTypeConformance2();
    sub_1000039E0(&qword_10002CEF0, &qword_10002CAE8, &unk_10001FED0, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002D078);
  }

  return result;
}