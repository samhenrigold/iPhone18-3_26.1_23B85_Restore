void sub_2380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_239C(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = CLFLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "Error attempting to authenticate to access shared albums. %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = [*(a1 + 32) interfaceHelper];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_24CC;
    v8[3] = &unk_10968;
    v8[4] = *(a1 + 32);
    [v6 loadPlaylistsWithCompletionHandler:v8];
  }
}

Class sub_2A68(uint64_t a1)
{
  sub_2AC0();
  result = objc_getClass("APApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_8FEC();
  }

  qword_14E10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2AC0()
{
  v1[0] = 0;
  if (!qword_14E18)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_2BBC;
    v1[4] = &unk_109F0;
    v1[5] = v1;
    v2 = off_109D8;
    v3 = 0;
    qword_14E18 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_14E18)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_2BBC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_14E18 = result;
  return result;
}

Class sub_2C30(uint64_t a1)
{
  sub_2AC0();
  result = objc_getClass("APGuard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_9014();
  }

  qword_14E20 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_2F10(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v5 = [*(a1 + 32) curatorName];
  v3 = __AXStringForVariables();

  return v3;
}

uint64_t sub_2F98()
{
  v1 = v0;
  v16 = sub_917C();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_5170(&qword_14CE8, &qword_A880);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_90DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5C60(v1, v7, &qword_14CE8, &qword_A880);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_951C();
    v12 = sub_91DC();
    sub_908C();

    sub_916C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  v13 = sub_90CC();
  (*(v9 + 8))(v11, v8);
  return v13 & 1;
}

uint64_t sub_321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_5170(&qword_14BE8, &qword_A758);
  v4 = __chkstk_darwin(v3 - 8);
  v58 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v53 - v7;
  __chkstk_darwin(v6);
  v10 = &v53 - v9;
  v11 = type metadata accessor for PlaylistRow.Placeholder(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_5170(&qword_14BF0, &qword_A760);
  v16 = v15 - 8;
  v17 = __chkstk_darwin(v15);
  v60 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = (&v53 - v19);
  v21 = type metadata accessor for PlaylistRow(0);
  sub_59A8(a1 + *(v21 + 24), v14);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v23 = swift_allocObject();
  sub_5B18(v14, v23 + v22);
  v24 = sub_934C();
  v26 = v25;
  v27 = v20 + *(sub_5170(&qword_14BF8, &qword_A768) + 36);
  sub_424C(v27);
  v28 = (v27 + *(sub_5170(&qword_14C00, &qword_A770) + 36));
  *v28 = v24;
  v28[1] = v26;
  *v20 = sub_5B7C;
  v20[1] = v23;
  v29 = v20 + *(sub_5170(&qword_14C08, &qword_A778) + 36);
  *v29 = 0x3FF0000000000000;
  *(v29 + 4) = 0;
  sub_934C();
  sub_90AC();
  v30 = (v20 + *(sub_5170(&qword_14C10, &qword_A780) + 36));
  v31 = v62;
  *v30 = v61;
  v30[1] = v31;
  v30[2] = v63;
  v32 = v20 + *(v16 + 44);
  v33 = *(sub_90EC() + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = sub_91AC();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #10.0 }

  *v32 = _Q0;
  *&v32[*(sub_5170(&qword_14C18, &qword_A788) + 36)] = 256;
  sub_934C();
  sub_90AC();
  v56 = v66;
  v57 = v64;
  v55 = v68;
  v54 = v69;
  v72 = 1;
  v71 = v65;
  v70 = v67;
  v41 = sub_91BC();
  v42 = sub_2F98();
  *v8 = v41;
  *(v8 + 1) = 0;
  v8[16] = (v42 & 1) == 0;
  v43 = sub_5170(&qword_14C20, &qword_A790);
  sub_376C(a1, &v8[*(v43 + 44)]);
  v53 = v10;
  sub_5CC8(v8, v10, &qword_14BE8, &qword_A758);
  v44 = v60;
  sub_5C60(v20, v60, &qword_14BF0, &qword_A760);
  LOBYTE(v41) = v72;
  LOBYTE(a1) = v71;
  LOBYTE(v23) = v70;
  v45 = v58;
  sub_5C60(v10, v58, &qword_14BE8, &qword_A758);
  v46 = v44;
  v47 = v59;
  sub_5C60(v46, v59, &qword_14BF0, &qword_A760);
  v48 = sub_5170(&qword_14C28, &qword_A798);
  v49 = v47 + *(v48 + 48);
  *v49 = 0;
  *(v49 + 8) = v41;
  v50 = v56;
  *(v49 + 16) = v57;
  *(v49 + 24) = a1;
  *(v49 + 32) = v50;
  *(v49 + 40) = v23;
  v51 = v54;
  *(v49 + 48) = v55;
  *(v49 + 56) = v51;
  sub_5C60(v45, v47 + *(v48 + 64), &qword_14BE8, &qword_A758);
  sub_608C(v53, &qword_14BE8, &qword_A758);
  sub_608C(v20, &qword_14BF0, &qword_A760);
  sub_608C(v45, &qword_14BE8, &qword_A758);
  return sub_608C(v60, &qword_14BF0, &qword_A760);
}

uint64_t sub_376C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v103 = sub_5170(&qword_14C30, &qword_A7A0);
  v101 = *(v103 - 8);
  v3 = __chkstk_darwin(v103);
  v92 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v91 = v89 - v5;
  v6 = sub_5170(&qword_14C38, &qword_A7A8);
  v7 = __chkstk_darwin(v6 - 8);
  v104 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = v89 - v9;
  v107 = sub_5170(&qword_14C40, &qword_A7B0);
  v106 = *(v107 - 8);
  v10 = __chkstk_darwin(v107);
  v90 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v89 - v12;
  v98 = sub_5170(&qword_14C48, &qword_A7B8);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = v89 - v14;
  v94 = sub_5170(&qword_14C50, &qword_A7C0);
  v15 = __chkstk_darwin(v94);
  v99 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v95 = v89 - v18;
  __chkstk_darwin(v17);
  v108 = v89 - v19;
  v20 = *(type metadata accessor for PlaylistRow(0) + 20);
  v100 = a1;
  v93 = v20;
  *&v113 = sub_93DC();
  *(&v113 + 1) = v21;
  v89[1] = sub_5BFC();
  v22 = sub_926C();
  v24 = v23;
  v26 = v25;
  if (qword_14A40 != -1)
  {
    swift_once();
  }

  v27 = sub_925C();
  v29 = v28;
  v31 = v30;
  sub_5C50(v22, v24, v26 & 1);

  if (qword_14A48 != -1)
  {
    swift_once();
  }

  v32 = sub_924C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_5C50(v27, v29, v31 & 1);

  *&v113 = v32;
  *(&v113 + 1) = v34;
  LOBYTE(v114) = v36 & 1;
  *(&v114 + 1) = v38;
  sub_92DC();
  sub_5C50(v32, v34, v36 & 1);

  v39 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v39 lineHeight];

  *&v113 = &type metadata for Text;
  *(&v113 + 1) = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v40 = v96;
  v41 = v107;
  sub_92CC();
  (*(v106 + 8))(v13, v41);
  sub_2F98();
  v42 = v102;
  sub_934C();
  v43 = 1;
  sub_90FC();
  v44 = v95;
  (*(v97 + 32))(v95, v40, v98);
  v45 = (v44 + *(v94 + 36));
  v46 = v118;
  v45[4] = v117;
  v45[5] = v46;
  v45[6] = v119;
  v47 = v114;
  *v45 = v113;
  v45[1] = v47;
  v48 = v116;
  v45[2] = v115;
  v45[3] = v48;
  sub_5CC8(v44, v108, &qword_14C50, &qword_A7C0);
  v49 = sub_93BC();
  if (v50)
  {
    v109 = v49;
    v110 = v50;
    v51 = sub_926C();
    v53 = v52;
    v55 = v54;
    if (qword_14A50 != -1)
    {
      swift_once();
    }

    v56 = sub_925C();
    v58 = v57;
    v60 = v59;
    sub_5C50(v51, v53, v55 & 1);

    if (qword_14A58 != -1)
    {
      swift_once();
    }

    v61 = sub_924C();
    v63 = v62;
    v65 = v64;
    v67 = v66;
    sub_5C50(v56, v58, v60 & 1);

    v109 = v61;
    v110 = v63;
    v111 = v65 & 1;
    v112 = v67;
    v68 = v90;
    sub_92DC();
    sub_5C50(v61, v63, v65 & 1);

    v69 = sub_91EC();
    sub_2F98();
    sub_909C();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = v92;
    (*(v106 + 32))(v92, v68, v107);
    v79 = v103;
    v80 = &v78[*(v103 + 36)];
    *v80 = v69;
    *(v80 + 1) = v71;
    *(v80 + 2) = v73;
    *(v80 + 3) = v75;
    *(v80 + 4) = v77;
    v80[40] = 0;
    v81 = v78;
    v82 = v91;
    sub_5CC8(v81, v91, &qword_14C30, &qword_A7A0);
    sub_5CC8(v82, v42, &qword_14C30, &qword_A7A0);
    v43 = 0;
  }

  else
  {
    v79 = v103;
  }

  (*(v101 + 56))(v42, v43, 1, v79);
  v83 = v108;
  v84 = v99;
  sub_5C60(v108, v99, &qword_14C50, &qword_A7C0);
  v85 = v104;
  sub_5C60(v42, v104, &qword_14C38, &qword_A7A8);
  v86 = v105;
  sub_5C60(v84, v105, &qword_14C50, &qword_A7C0);
  v87 = sub_5170(&qword_14C60, &qword_A7C8);
  sub_5C60(v85, v86 + *(v87 + 48), &qword_14C38, &qword_A7A8);
  sub_608C(v42, &qword_14C38, &qword_A7A8);
  sub_608C(v83, &qword_14C50, &qword_A7C0);
  sub_608C(v85, &qword_14C38, &qword_A7A8);
  return sub_608C(v84, &qword_14C50, &qword_A7C0);
}

uint64_t sub_424C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_907C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_5170(&qword_14C68, &qword_A7D0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  v12 = sub_938C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaylistRow(0);
  sub_93EC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_608C(v11, &qword_14C68, &qword_A7D0);
    v16 = 1;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    sub_906C();
    (*(v13 + 8))(v15, v12);
    (*(v3 + 32))(a1, v5, v2);
    v16 = 0;
  }

  return (*(v3 + 56))(a1, v16, 1, v2);
}

uint64_t sub_4540()
{
  v1 = sub_5170(&qword_14BD0, &qword_A748);
  __chkstk_darwin(v1);
  v3 = &v7 - v2;
  if (sub_2F98())
  {
    v4 = sub_918C();
  }

  else
  {
    v4 = sub_919C();
  }

  *v3 = v4;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v5 = sub_5170(&qword_14BD8, &qword_A750);
  sub_321C(v0, &v3[*(v5 + 44)]);
  sub_6044(&qword_14BE0, &qword_14BD0, &qword_A748, &protocol conformance descriptor for HStack<A>);
  sub_92EC();
  return sub_608C(v3, &qword_14BD0, &qword_A748);
}

uint64_t sub_466C()
{
  v1 = v0;
  v2 = sub_5170(&qword_14B10, &qword_A510);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_939C();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  sub_5C60(v1, v4, &qword_14B10, &qword_A510);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v12 = 0x6F6E2E636973756DLL;
    sub_608C(v4, &qword_14B10, &qword_A510);
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v13 = (*(v6 + 88))(v9, v5);
    if (v13 == enum case for Playlist.Variant.smart(_:))
    {
      (*(v6 + 8))(v11, v5);
      return 0x7061687372616567;
    }

    else if (v13 == enum case for Playlist.Variant.genius(_:))
    {
      (*(v6 + 8))(v11, v5);
      return 0x7375696E6567;
    }

    else
    {
      v14 = enum case for Playlist.Variant.folder(_:);
      v15 = *(v6 + 8);
      v16 = v13;
      v15(v11, v5);
      if (v16 == v14)
      {
        return 0x7265646C6F66;
      }

      else
      {
        v12 = 0x6F6E2E636973756DLL;
        v15(v9, v5);
      }
    }
  }

  return v12;
}

uint64_t sub_495C@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v1 = sub_5170(&qword_14C70, &qword_A7D8);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_5170(&qword_14C78, &qword_A7E0);
  __chkstk_darwin(v4);
  v6 = &v22 - v5;
  sub_90BC();
  sub_90BC();
  v7 = [objc_opt_self() tertiarySystemFillColor];
  v23 = sub_932C();
  sub_466C();
  v8 = sub_933C();
  v9 = sub_92FC();
  KeyPath = swift_getKeyPath();
  v11 = sub_921C();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = sub_923C();
  sub_608C(v3, &qword_14C70, &qword_A7D8);
  v13 = swift_getKeyPath();
  v25 = v8;
  v26 = KeyPath;
  v27 = v9;
  v28 = v13;
  v29 = v12;
  sub_922C();
  sub_5170(&qword_14C80, &qword_A848);
  sub_5DE0();
  sub_929C();

  *&v6[*(v4 + 36)] = 0x3FF0000000000000;
  v14 = sub_5170(&qword_14CC0, &qword_A868);
  v15 = v24;
  v16 = v24 + *(v14 + 36);
  sub_5F50();
  sub_92AC();
  sub_608C(v6, &qword_14C78, &qword_A7E0);
  v17 = sub_934C();
  v19 = v18;
  result = sub_5170(&qword_14CE0, &qword_A878);
  v21 = &v16[*(result + 36)];
  *v21 = v17;
  v21[1] = v19;
  *v15 = v23;
  return result;
}

uint64_t sub_4C4C()
{
  result = sub_920C();
  qword_151C8 = result;
  return result;
}

uint64_t sub_4C6C()
{
  result = sub_930C();
  qword_151D0 = result;
  return result;
}

uint64_t sub_4C8C()
{
  result = sub_91FC();
  qword_151D8 = result;
  return result;
}

uint64_t sub_4CAC()
{
  result = sub_931C();
  qword_151E0 = result;
  return result;
}

uint64_t sub_4CD4(uint64_t a1, id *a2)
{
  result = sub_942C();
  *a2 = 0;
  return result;
}

uint64_t sub_4D4C(uint64_t a1, id *a2)
{
  v3 = sub_943C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_4DCC@<X0>(uint64_t *a1@<X8>)
{
  sub_944C();
  v2 = sub_941C();

  *a1 = v2;
  return result;
}

uint64_t sub_4E10()
{
  sub_944C();
  v0 = sub_947C();

  return v0;
}

uint64_t sub_4E4C(uint64_t a1)
{
  sub_944C();
  sub_946C();
}

Swift::Int sub_4EA0(uint64_t a1)
{
  sub_944C();
  sub_957C();
  sub_946C();
  v1 = sub_958C();

  return v1;
}

uint64_t sub_4F14(void *a1, uint64_t *a2)
{
  v2 = sub_944C();
  v4 = v3;
  if (v2 == sub_944C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_956C();
  }

  return v7 & 1;
}

uint64_t sub_4F9C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_941C();

  *a2 = v3;
  return result;
}

uint64_t sub_4FE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_944C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_5024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5170(&qword_14A60, &unk_A4B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_93FC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for PlaylistRow.Placeholder(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_5170(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_51EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5170(&qword_14A60, &unk_A4B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_93FC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for PlaylistRow.Placeholder(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_5364(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_539C(uint64_t a1)
{
  sub_56A4(319, &unk_14AD0, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_93FC();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlaylistRow.Placeholder(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_5494(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_54A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_54C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_5500(uint64_t a1, uint64_t a2)
{
  v4 = sub_5170(&qword_14B10, &qword_A510);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_558C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5170(&qword_14B10, &qword_A510);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_5608(uint64_t a1)
{
  sub_56A4(319, &unk_14B80, &type metadata accessor for Playlist.Variant, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_56A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_571C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_5768(uint64_t a1)
{
  v2 = sub_58B4(&qword_14CF0, type metadata accessor for OpenExternalURLOptionsKey, &unk_A704);
  v3 = sub_58B4(&qword_14CF8, type metadata accessor for OpenExternalURLOptionsKey, &unk_A608);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_58B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_5960(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_59A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistRow.Placeholder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5A0C()
{
  v1 = *(type metadata accessor for PlaylistRow.Placeholder(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_939C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistRow.Placeholder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5B7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PlaylistRow.Placeholder(0);

  return sub_495C(a1);
}

unint64_t sub_5BFC()
{
  result = qword_14C58;
  if (!qword_14C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C58);
  }

  return result;
}

uint64_t sub_5C50(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_5C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5170(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_5CC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_5170(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_5D30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_912C();
  *a1 = result;
  return result;
}

uint64_t sub_5D88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_914C();
  *a1 = result;
  return result;
}

unint64_t sub_5DE0()
{
  result = qword_14C88;
  if (!qword_14C88)
  {
    sub_5960(&qword_14C80, &qword_A848);
    sub_5E98();
    sub_6044(&qword_14CB0, &qword_14CB8, &qword_A860, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C88);
  }

  return result;
}

unint64_t sub_5E98()
{
  result = qword_14C90;
  if (!qword_14C90)
  {
    sub_5960(&qword_14C98, &qword_A850);
    sub_6044(&qword_14CA0, &qword_14CA8, &qword_A858, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14C90);
  }

  return result;
}

unint64_t sub_5F50()
{
  result = qword_14CC8;
  if (!qword_14CC8)
  {
    sub_5960(&qword_14C78, &qword_A7E0);
    sub_5960(&qword_14C80, &qword_A848);
    sub_5DE0();
    swift_getOpaqueTypeConformance2();
    sub_6044(&qword_14CD0, &qword_14CD8, &qword_A870, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14CC8);
  }

  return result;
}

uint64_t sub_6044(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_5960(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_608C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_5170(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_60F0()
{
  result = qword_14D00;
  if (!qword_14D00)
  {
    sub_5960(&qword_14D08, qword_A888);
    sub_6044(&qword_14BE0, &qword_14BD0, &qword_A748, &protocol conformance descriptor for HStack<A>);
    sub_58B4(&qword_14D10, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14D00);
  }

  return result;
}

uint64_t sub_6230()
{
  v1[9] = v0;
  v2 = sub_93FC();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = sub_5170(&qword_14D48, &qword_A8C0);
  v1[15] = swift_task_alloc();
  v3 = sub_5170(&qword_14D50, &qword_A8C8);
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_5170(&qword_14D58, &qword_A8D0);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v4 = sub_5170(&qword_14D60, &qword_A8D8);
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();
  sub_94BC();
  v1[26] = sub_94AC();
  v6 = sub_949C();
  v1[27] = v6;
  v1[28] = v5;

  return _swift_task_switch(sub_6498, v6, v5);
}

uint64_t sub_6498()
{
  sub_936C();
  v1 = swift_task_alloc();
  v0[29] = v1;
  *v1 = v0;
  v1[1] = sub_6548;
  v2 = v0[22];
  v3 = v0[23];

  return MusicLibraryRequest.response()(v2, v3);
}

uint64_t sub_6548()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_6C10;
  }

  else
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_666C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_666C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  v3 = sub_5170(&qword_14D68, &qword_A8E0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  sub_5C60(v2, v1, &qword_14D58, &qword_A8D0);
  v4 = sub_5170(&qword_14D68, &qword_A8E0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v7 = *(v52 + 192);
    v6 = *(v52 + 200);
    v8 = *(v52 + 184);
    v9 = *(v52 + 168);
    sub_608C(*(v52 + 176), &qword_14D58, &qword_A8D0);
    (*(v7 + 8))(v6, v8);
    sub_608C(v9, &qword_14D58, &qword_A8D0);
  }

  else
  {
    v11 = *(v52 + 160);
    v10 = *(v52 + 168);
    v12 = *(v52 + 144);
    v13 = *(v52 + 152);
    v14 = *(v52 + 128);
    v15 = *(v52 + 136);
    v16 = *(v52 + 120);
    v54 = *(v52 + 112);
    sub_937C();
    (*(v5 + 8))(v10, v4);
    (*(v15 + 32))(v11, v13, v14);
    v51 = [objc_allocWithZone(NSMutableArray) init];
    (*(v15 + 16))(v12, v11, v14);
    sub_6044(&qword_14D70, &qword_14D50, &qword_A8C8, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_948C();
    v17 = *(v54 + 36);
    sub_6044(&qword_14D78, &qword_14D50, &qword_A8C8, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_94EC();
    if (*(v16 + v17) != *(v52 + 64))
    {
      v18 = v17;
      v19 = *(v52 + 88);
      v50 = (v19 + 8);
      v55 = v16;
      v20 = (v19 + 16);
      do
      {
        v21 = *(v52 + 104);
        v53 = *(v52 + 96);
        v22 = *(v52 + 80);
        v23 = sub_950C();
        v24 = *v20;
        (*v20)(v21);
        v23(v52 + 16, 0);
        sub_94FC();
        (v24)(v53, v21, v22);
        v25 = type metadata accessor for CLMPlaylist(0);
        v26 = objc_allocWithZone(v25);
        v27 = v22;
        (v24)(&v26[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_playlist], v53, v22);
        v28 = sub_93CC();
        v29 = &v26[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_musicItemID];
        *v29 = v28;
        v29[1] = v30;
        v31 = sub_93DC();
        v32 = &v26[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_name];
        *v32 = v31;
        v32[1] = v33;
        v34 = sub_93BC();
        v35 = &v26[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_curatorName];
        *v35 = v34;
        v35[1] = v36;
        *(v52 + 48) = v26;
        *(v52 + 56) = v25;
        v37 = objc_msgSendSuper2((v52 + 48), "init");
        v38 = *v50;
        (*v50)(v53, v27);
        [v51 addObject:v37];

        v38(v21, v27);
        sub_94EC();
      }

      while (*(v55 + v18) != *(v52 + 64));
    }

    v40 = *(v52 + 192);
    v39 = *(v52 + 200);
    v42 = *(v52 + 176);
    v41 = *(v52 + 184);
    v43 = *(v52 + 160);
    v44 = *(v52 + 128);
    v45 = *(v52 + 136);
    v46 = *(v52 + 72);
    sub_608C(*(v52 + 120), &qword_14D48, &qword_A8C0);
    (*(v45 + 8))(v43, v44);
    sub_608C(v42, &qword_14D58, &qword_A8D0);
    (*(v40 + 8))(v39, v41);
    v47 = *(v46 + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists);
    *(v46 + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists) = v51;
  }

  v48 = *(v52 + 8);

  return v48();
}

uint64_t sub_6C10()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  v3 = sub_5170(&qword_14D68, &qword_A8E0);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_5C60(v2, v1, &qword_14D58, &qword_A8D0);
  v4 = sub_5170(&qword_14D68, &qword_A8E0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v7 = *(v52 + 192);
    v6 = *(v52 + 200);
    v8 = *(v52 + 184);
    v9 = *(v52 + 168);
    sub_608C(*(v52 + 176), &qword_14D58, &qword_A8D0);
    (*(v7 + 8))(v6, v8);
    sub_608C(v9, &qword_14D58, &qword_A8D0);
  }

  else
  {
    v11 = *(v52 + 160);
    v10 = *(v52 + 168);
    v12 = *(v52 + 144);
    v13 = *(v52 + 152);
    v14 = *(v52 + 128);
    v15 = *(v52 + 136);
    v16 = *(v52 + 120);
    v54 = *(v52 + 112);
    sub_937C();
    (*(v5 + 8))(v10, v4);
    (*(v15 + 32))(v11, v13, v14);
    v51 = [objc_allocWithZone(NSMutableArray) init];
    (*(v15 + 16))(v12, v11, v14);
    sub_6044(&qword_14D70, &qword_14D50, &qword_A8C8, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_948C();
    v17 = *(v54 + 36);
    sub_6044(&qword_14D78, &qword_14D50, &qword_A8C8, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_94EC();
    if (*(v16 + v17) != *(v52 + 64))
    {
      v18 = v17;
      v19 = *(v52 + 88);
      v50 = (v19 + 8);
      v55 = v16;
      v20 = (v19 + 16);
      do
      {
        v21 = *(v52 + 104);
        v53 = *(v52 + 96);
        v22 = *(v52 + 80);
        v23 = sub_950C();
        v24 = *v20;
        (*v20)(v21);
        v23(v52 + 16, 0);
        sub_94FC();
        (v24)(v53, v21, v22);
        v25 = type metadata accessor for CLMPlaylist(0);
        v26 = objc_allocWithZone(v25);
        v27 = v22;
        (v24)(&v26[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_playlist], v53, v22);
        v28 = sub_93CC();
        v29 = &v26[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_musicItemID];
        *v29 = v28;
        v29[1] = v30;
        v31 = sub_93DC();
        v32 = &v26[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_name];
        *v32 = v31;
        v32[1] = v33;
        v34 = sub_93BC();
        v35 = &v26[OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_curatorName];
        *v35 = v34;
        v35[1] = v36;
        *(v52 + 48) = v26;
        *(v52 + 56) = v25;
        v37 = objc_msgSendSuper2((v52 + 48), "init");
        v38 = *v50;
        (*v50)(v53, v27);
        [v51 addObject:v37];

        v38(v21, v27);
        sub_94EC();
      }

      while (*(v55 + v18) != *(v52 + 64));
    }

    v40 = *(v52 + 192);
    v39 = *(v52 + 200);
    v42 = *(v52 + 176);
    v41 = *(v52 + 184);
    v43 = *(v52 + 160);
    v44 = *(v52 + 128);
    v45 = *(v52 + 136);
    v46 = *(v52 + 72);
    sub_608C(*(v52 + 120), &qword_14D48, &qword_A8C0);
    (*(v45 + 8))(v43, v44);
    sub_608C(v42, &qword_14D58, &qword_A8D0);
    (*(v40 + 8))(v39, v41);
    v47 = *(v46 + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists);
    *(v46 + OBJC_IVAR____TtC22ClarityUIMusicSettings18CLMInterfaceHelper_playlists) = v51;
  }

  v48 = *(v52 + 8);

  return v48();
}

uint64_t sub_7328(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_94BC();
  v2[4] = sub_94AC();
  v4 = sub_949C();

  return _swift_task_switch(sub_73C0, v4, v3);
}

uint64_t sub_73C0()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_7470;

  return sub_6230();
}

uint64_t sub_7470()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_75AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_93FC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7, a1 + OBJC_IVAR____TtC22ClarityUIMusicSettings11CLMPlaylist_playlist, v4);
  *a2 = swift_getKeyPath();
  sub_5170(&qword_14CE8, &qword_A880);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for PlaylistRow(0);
  *(a2 + *(v9 + 28)) = vdupq_n_s64(0x4050000000000000uLL);
  v8(a2 + *(v9 + 20), v7, v4);
  sub_93AC();
  return (*(v5 + 8))(v7, v4);
}

id sub_7954()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLMInterfaceHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_79BC(uint64_t a1)
{
  v2 = sub_90DC();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_911C();
}

uint64_t sub_7A84(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_8CF8;

  return v6();
}

uint64_t sub_7B6C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_7C54;

  return v7();
}

uint64_t sub_7C54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_7D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_5170(&qword_14D98, &qword_A900);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_5C60(a3, v23 - v10, &qword_14D98, &qword_A900);
  v12 = sub_94DC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_608C(v11, &qword_14D98, &qword_A900);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_94CC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_949C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_945C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_608C(a3, &qword_14D98, &qword_A900);

    return v21;
  }

LABEL_8:
  sub_608C(a3, &qword_14D98, &qword_A900);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_8044(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_813C;

  return v6(a1);
}

uint64_t sub_813C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_8234(uint64_t a1)
{
  sub_944C();
  sub_957C();
  sub_946C();
  v2 = sub_958C();

  return sub_82C8(a1, v2);
}

unint64_t sub_82C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_944C();
      v8 = v7;
      if (v6 == sub_944C() && v8 == v9)
      {
        break;
      }

      v11 = sub_956C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_83CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_5170(&qword_14D88, &qword_A8F0);
    v3 = sub_954C();
    v4 = a1 + 32;

    while (1)
    {
      sub_5C60(v4, &v11, &qword_14D90, &qword_A8F8);
      v5 = v11;
      result = sub_8234(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_87A0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

_OWORD *sub_87A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_87B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_87F0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_7C54;

  return sub_7328(v2, v3);
}

uint64_t sub_889C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_8CF8;

  return sub_7A84(v2, v3, v4);
}

uint64_t sub_8960()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_89A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_8CF8;

  return sub_7B6C(a1, v4, v5, v6);
}

uint64_t sub_8A6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8AA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_8CF8;

  return sub_8044(a1, v4);
}

uint64_t sub_8B5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_7C54;

  return sub_8044(a1, v4);
}

uint64_t *sub_8C1C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_8C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_8D74(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_941C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id sub_8E10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLMPlaylist(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CLMPlaylist(uint64_t a1)
{
  result = qword_14DF8;
  if (!qword_14DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_8F44(uint64_t a1)
{
  result = sub_93FC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}