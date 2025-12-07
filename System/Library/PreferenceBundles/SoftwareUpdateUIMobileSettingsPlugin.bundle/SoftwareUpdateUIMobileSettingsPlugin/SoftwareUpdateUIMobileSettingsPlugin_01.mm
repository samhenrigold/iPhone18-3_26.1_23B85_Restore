void *sub_28DA4(uint64_t *a1)
{
  v38 = a1;
  v45 = 0;
  v56 = 0;
  v35 = 0;
  v36 = (*(*(sub_23FC(&qword_64640, &qword_52260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v37 = v17 - v36;
  v39 = sub_50DB0();
  v40 = *(v39 - 8);
  v41 = v40;
  v1 = __chkstk_darwin(v38);
  v42 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v1;
  sub_50D90();
  v47 = sub_50DA0();
  v43 = v47;
  v46 = sub_51480();
  v44 = v46;
  sub_23FC(&qword_64648, &qword_51E60);
  v48 = sub_51650();
  if (os_log_type_enabled(v47, v46))
  {
    v3 = v35;
    v26 = sub_514F0();
    v22 = v26;
    v23 = sub_23FC(&qword_64650, &unk_53930);
    v24 = 0;
    v27 = sub_121D4(0, v23, v23);
    v25 = v27;
    v28 = sub_121D4(v24, &type metadata for Any + 8, &type metadata for Any + 8);
    v52 = v26;
    v51 = v27;
    v50 = v28;
    v29 = 0;
    v30 = &v52;
    sub_12228(0, &v52);
    sub_12228(v29, v30);
    v49 = v48;
    v31 = v17;
    __chkstk_darwin(v17);
    v32 = &v17[-6];
    v17[-4] = v4;
    v17[-3] = &v51;
    v17[-2] = &v50;
    v33 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v34 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v43, v44, "User Action: Clicked 'Cancel Install Tonight' on the automaticUpdatesCancellation alert in AutomaticUpdatesView", v22, 2u);
      v20 = 0;
      sub_12288(v25, 0, v23);
      sub_12288(v28, v20, &type metadata for Any + 8);
      sub_514D0();

      v21 = v34;
    }
  }

  else
  {

    v21 = v35;
  }

  (*(v41 + 8))(v42, v39);
  sub_51430();
  v17[0] = 0;
  v5 = *(*(sub_51450() - 8) + 56);
  v18 = 0;
  v5(v37);
  sub_18F68(v38, v55);
  v6 = swift_allocObject();
  v7 = v17[0];
  v8 = v37;
  v9 = v38;
  *(v6 + 16) = v17[0];
  *(v6 + 24) = v7;
  v10 = *v9;
  v11 = *(v9 + 1);
  v12 = *(v9 + 2);
  *(v6 + 80) = *(v9 + 3);
  *(v6 + 64) = v12;
  *(v6 + 48) = v11;
  *(v6 + 32) = v10;
  v17[1] = sub_F350(v7, v7, v8, &unk_52E50, v6, &type metadata for () + 8);
  sub_14BA4(v37);

  sub_18F68(v38, v54);
  v13 = *v38;
  v14 = *(v38 + 1);
  v15 = *(v38 + 2);
  v53[3] = *(v38 + 3);
  v53[2] = v15;
  v53[1] = v14;
  v53[0] = v13;
  v19 = v53;
  sub_1E434(v18);
  result = v19;
  sub_180B8(v19);
  return result;
}

uint64_t sub_293D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 232) = a4;
  *(v4 + 208) = v4;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 304) = 0;
  v5 = sub_50DB0();
  *(v4 + 240) = v5;
  *(v4 + 248) = *(v5 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 216) = a4;

  return _swift_task_switch(sub_294E8);
}

uint64_t sub_294E8()
{
  v1 = v0[29];
  v0[26] = v0;
  memcpy(v0 + 2, v1, 0x40uLL);
  sub_51410();
  v0[34] = sub_51400();
  sub_513F0();

  return _swift_task_switch(sub_2959C);
}

uint64_t sub_2959C()
{
  *(v0 + 208) = v0;
  *(v0 + 280) = sub_184E0();

  v1 = swift_task_alloc();
  *(v3 + 288) = v1;
  *v1 = *(v3 + 208);
  v1[1] = sub_29670;

  return ReactiveUIManager.unscheduleTargetedUpdate(delegate:)(0);
}

uint64_t sub_29670(char a1)
{
  v5 = *v2;
  *(v5 + 208) = *v2;
  *(v5 + 305) = a1;
  *(v5 + 296) = v1;

  if (v1)
  {
    v3 = sub_2A428;
  }

  else
  {

    v3 = sub_297F8;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_297F8(uint64_t a1)
{
  v42 = v1;
  v2 = *(v1 + 305);
  v16 = v2;
  __src = *(v1 + 232);
  *(v1 + 208) = v1;
  *(v1 + 304) = v2 & 1;
  sub_50D90();
  sub_18F68(__src, v1 + 144);
  v17 = swift_allocObject();
  memcpy((v17 + 16), __src, 0x40uLL);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  v35 = sub_50DA0();
  v36 = sub_51490();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_3E504;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_3E5EC;
  *(v19 + 24) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_3E638;
  *(v27 + 24) = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2B068;
  *(v20 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_3E738;
  *(v30 + 24) = v20;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_3E538;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_3E838;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_3E884;
  *(v24 + 24) = v23;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_3E8D0;
  *(v33 + 24) = v24;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v34 = v3;

  *v34 = sub_3E570;
  v34[1] = v25;

  v34[2] = sub_3E5A4;
  v34[3] = v26;

  v34[4] = sub_3E684;
  v34[5] = v27;

  v34[6] = sub_3E6BC;
  v34[7] = v28;

  v34[8] = sub_3E6F0;
  v34[9] = v29;

  v34[10] = sub_3E784;
  v34[11] = v30;

  v34[12] = sub_3E7BC;
  v34[13] = v31;

  v34[14] = sub_3E7F0;
  v34[15] = v32;

  v34[16] = sub_3E91C;
  v34[17] = v33;
  sub_1489C();

  if (os_log_type_enabled(v35, v36))
  {
    v4 = v14[37];
    buf = sub_514F0();
    v10 = sub_23FC(&qword_64650, &unk_53930);
    v12 = sub_121D4(0, v10, v10);
    v13 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v37 = buf;
    v38 = v12;
    v39 = v13;
    sub_12228(2, &v37);
    sub_12228(3, &v37);
    v40 = sub_3E570;
    v41 = v25;
    sub_1223C(&v40, &v37, &v38, &v39);
    if (v4)
    {
    }

    v40 = sub_3E5A4;
    v41 = v26;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3E684;
    v41 = v27;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3E6BC;
    v41 = v28;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3E6F0;
    v41 = v29;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3E784;
    v41 = v30;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3E7BC;
    v41 = v31;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3E7F0;
    v41 = v32;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_3E91C;
    v41 = v33;
    sub_1223C(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_0, v35, v36, "%s.%s: unscheduleTargetedUpdate result: %{BOOL}d", buf, 0x1Cu);
    sub_12288(v12, 0, v10);
    sub_12288(v13, 2, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v8 = v14[33];
  v9 = v14[30];
  v7 = v14[31];
  _objc_release(v35);
  (*(v7 + 8))(v8, v9);

  v6 = *(v14[26] + 8);

  return v6();
}

uint64_t sub_2A428()
{
  v38 = v0;
  v13 = v0[37];
  __src = v0[29];
  v0[26] = v0;

  swift_errorRetain();
  v0[28] = v13;
  sub_50D90();
  sub_18F68(__src, (v0 + 10));
  v14 = swift_allocObject();
  memcpy((v14 + 16), __src, 0x40uLL);
  swift_errorRetain();
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  sub_28D78();

  v31 = sub_50DA0();
  v32 = sub_514A0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_3DF40;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_3E038;
  *(v16 + 24) = v15;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_3E084;
  *(v23 + 24) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2B0B0;
  *(v17 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_3E184;
  *(v26 + 24) = v17;
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_3DF88;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_3E284;
  *(v20 + 24) = v19;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_3E2D0;
  *(v29 + 24) = v20;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v30 = v1;

  *v30 = sub_3DFBC;
  v30[1] = v21;

  v30[2] = sub_3DFF0;
  v30[3] = v22;

  v30[4] = sub_3E0D0;
  v30[5] = v23;

  v30[6] = sub_3E108;
  v30[7] = v24;

  v30[8] = sub_3E13C;
  v30[9] = v25;

  v30[10] = sub_3E1D0;
  v30[11] = v26;

  v30[12] = sub_3E208;
  v30[13] = v27;

  v30[14] = sub_3E23C;
  v30[15] = v28;

  v30[16] = sub_3E4A0;
  v30[17] = v29;
  sub_1489C();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_514F0();
    v7 = sub_23FC(&qword_64650, &unk_53930);
    v9 = sub_121D4(1, v7, v7);
    v10 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = buf;
    v34 = v9;
    v35 = v10;
    sub_12228(2, &v33);
    sub_12228(3, &v33);
    v36 = sub_3DFBC;
    v37 = v21;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3DFF0;
    v37 = v22;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3E0D0;
    v37 = v23;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3E108;
    v37 = v24;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3E13C;
    v37 = v25;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3E1D0;
    v37 = v26;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3E208;
    v37 = v27;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3E23C;
    v37 = v28;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_3E4A0;
    v37 = v29;
    sub_1223C(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_0, v31, v32, "%s.%s: Failed to unschedule targeted update: %@", buf, 0x20u);
    sub_12288(v9, 1, v7);
    sub_12288(v10, 2, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v5 = v11[32];
  v6 = v11[30];
  v4 = v11[31];
  _objc_release(v31);
  (*(v4 + 8))(v5, v6);

  v2 = *(v11[26] + 8);

  return v2();
}

void *sub_2B108(uint64_t *a1)
{
  v27 = a1;
  v34 = 0;
  v44 = 0;
  v26 = 0;
  v28 = sub_50DB0();
  v29 = *(v28 - 8);
  v30 = v29;
  v1 = __chkstk_darwin(v27);
  v31 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1;
  sub_50D90();
  v36 = sub_50DA0();
  v32 = v36;
  v35 = sub_51480();
  v33 = v35;
  sub_23FC(&qword_64648, &qword_51E60);
  v37 = sub_51650();
  if (os_log_type_enabled(v36, v35))
  {
    v3 = v26;
    v17 = sub_514F0();
    v13 = v17;
    v14 = sub_23FC(&qword_64650, &unk_53930);
    v15 = 0;
    v18 = sub_121D4(0, v14, v14);
    v16 = v18;
    v19 = sub_121D4(v15, &type metadata for Any + 8, &type metadata for Any + 8);
    v41 = v17;
    v40 = v18;
    v39 = v19;
    v20 = 0;
    v21 = &v41;
    sub_12228(0, &v41);
    sub_12228(v20, v21);
    v38 = v37;
    v22 = &v9;
    __chkstk_darwin(&v9);
    v23 = &v9 - 6;
    *(&v9 - 4) = v4;
    *(&v9 - 3) = &v40;
    *(&v9 - 2) = &v39;
    v24 = sub_23FC(&qword_64698, &qword_52170);
    sub_181A0();
    sub_513C0();
    v25 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_0, v32, v33, "User Action: Clicked 'Cancel' on the automaticUpdatesCancellation alert in AutomaticUpdatesView", v13, 2u);
      v11 = 0;
      sub_12288(v16, 0, v14);
      sub_12288(v19, v11, &type metadata for Any + 8);
      sub_514D0();

      v12 = v25;
    }
  }

  else
  {

    v12 = v26;
  }

  (*(v30 + 8))(v31, v28);
  sub_18F68(v27, v43);
  v5 = *v27;
  v6 = *(v27 + 1);
  v7 = *(v27 + 2);
  v42[3] = *(v27 + 3);
  v42[2] = v7;
  v42[1] = v6;
  v42[0] = v5;
  v10 = v42;
  sub_1E434(0);
  result = v10;
  sub_180B8(v10);
  return result;
}

uint64_t sub_2B570@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  memset(__b, 0, 0x22uLL);
  v116 = 0u;
  v117 = 0u;
  v104 = 0u;
  v105 = 0u;
  __b[5] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v56 = sub_1E3B0();
  if (v56)
  {
    if (v56 == 1)
    {
      HIBYTE(v26) = 1;
      sub_51350("Are you sure you want to turn off automatic updates, or cancel updates scheduled to be installed tonight?", 0x69uLL, 1);
      sub_50F60();
      v18 = *sub_411D0();
      v18;
      v113 = 0;
      v114 = 0;
      v115 = v26 & 0x100;
      v109 = sub_50FD0();
      v110 = v3;
      v111 = v4;
      v112 = v5;
      v106[0] = v109;
      v106[1] = v3;
      v107 = v4 & 1;
      v108 = v5;
      sub_6394(v106, &type metadata for Text, &v116);
      sub_3BE9C(v106);
      v19 = v116;
      v20 = v117;
      v21 = *(&v117 + 1);
      sub_3BF28(v116, *(&v116 + 1), v117 & 1);

      v101 = v19;
      v102 = v20 & 1;
      v103 = v21;
      sub_99E8(&v101, &type metadata for Text, &v104);
      sub_3BE9C(&v101);
      v22 = v104;
      v23 = v105;
      v24 = *(&v105 + 1);
      sub_3BF28(v104, *(&v104 + 1), v105 & 1);

      v90 = v22;
      v91 = v23 & 1;
      v92 = v24;
      sub_B418(&v90, &type metadata for Text, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, v93);
      sub_3BE9C(&v90);
      v88[0] = v93[0];
      v88[1] = v93[1];
      v88[2] = v93[2];
      v88[3] = v93[3];
      v89 = v94 & 1;
      v25 = sub_23FC(&qword_647A0, qword_53410);
      v6 = sub_382C4();
      sub_B2D4(v88, v25, &type metadata for EmptyView, v6, &protocol witness table for EmptyView, &v95);
      sub_3CDD4(v88);
      v28 = v95;
      v29 = v96;
      v30 = v97;
      v31 = v98;
      v32 = v99;
      v27 = v100;
      sub_3CBF4(v95, v96, v97, v98, v99, v100 & 1);
      __b[0] = v28;
      __b[1] = v29;
      __b[2] = v30;
      __b[3] = v31;
      LOBYTE(__b[4]) = v32;
      BYTE1(__b[4]) = v27 & 1;
      sub_3BE9C(&v104);
      sub_3BE9C(&v116);
      v48 = v28;
      v49 = v29;
      v50 = v30;
      v51 = v31;
      v52 = v32;
      v53 = v27;
    }

    else
    {
      memcpy(v83, a1, sizeof(v83));
      sub_2BDB0(v80);
      v77[0] = v80[0];
      v77[1] = v80[1];
      v78 = v81 & 1;
      v79 = v82;
      sub_6394(v77, &type metadata for Text, &v84);
      sub_3BE9C(v77);
      v33 = v84;
      v34 = v85;
      v35 = v86;
      v36 = v87;
      sub_3BF28(v84, v85, v86 & 1);

      v70[0] = v33;
      v70[1] = v34;
      v71 = v35 & 1;
      v72 = v36;
      sub_99E8(v70, &type metadata for Text, &v73);
      sub_3BE9C(v70);
      v37 = v73;
      v38 = v74;
      v39 = v75;
      v40 = v76;
      sub_3BF28(v73, v74, v75 & 1);

      v59[0] = v37;
      v59[1] = v38;
      v60 = v39 & 1;
      v61 = v40;
      sub_B2D4(v59, &type metadata for Text, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, v62);
      sub_3BE9C(v59);
      v57[0] = v62[0];
      v57[1] = v62[1];
      v57[2] = v62[2];
      v57[3] = v62[3];
      v58 = v63 & 1;
      v41 = sub_23FC(&qword_647A0, qword_53410);
      v2 = sub_382C4();
      sub_B2D4(v57, v41, &type metadata for EmptyView, v2, &protocol witness table for EmptyView, &v64);
      sub_3CDD4(v57);
      v43 = v64;
      v44 = v65;
      v45 = v66;
      v46 = v67;
      v47 = v68;
      v42 = v69;
      sub_3CBF4(v64, v65, v66, v67, v68, v69 & 1);
      __b[0] = v43;
      __b[1] = v44;
      __b[2] = v45;
      __b[3] = v46;
      LOBYTE(__b[4]) = v47;
      BYTE1(__b[4]) = v42 & 1;
      sub_3BE9C(&v73);
      sub_3BE9C(&v84);
      v48 = v43;
      v49 = v44;
      v50 = v45;
      v51 = v46;
      v52 = v47;
      v53 = v42;
    }
  }

  else
  {
    sub_511E0();
    sub_6394(v11, &type metadata for EmptyView, v11);
    sub_99E8(v11, &type metadata for EmptyView, v11);
    v10 = sub_23FC(&qword_647A0, qword_53410);
    v7 = sub_382C4();
    sub_B418(v11, v10, &type metadata for EmptyView, v7, &protocol witness table for EmptyView, &v121);
    v13 = v121;
    v14 = v122;
    v15 = v123;
    v16 = v124;
    v17 = v125;
    v12 = v126;
    sub_3CBF4(v121, v122, v123, v124, v125, v126 & 1);
    __b[0] = v13;
    __b[1] = v14;
    __b[2] = v15;
    __b[3] = v16;
    LOBYTE(__b[4]) = v17;
    BYTE1(__b[4]) = v12 & 1;
    v48 = v13;
    v49 = v14;
    v50 = v15;
    v51 = v16;
    v52 = v17;
    v53 = v12;
  }

  v118[0] = v48;
  v118[1] = v49;
  v118[2] = v50;
  v118[3] = v51;
  v119 = v52;
  v120 = v53 & 1;
  v9 = sub_23FC(&qword_64750, &qword_52338);
  sub_38220();
  sub_99E8(v118, v9, a2);
  sub_3CCC0(v118);
  return sub_3CCC0(__b);
}

uint64_t sub_2BDB0@<X0>(uint64_t *a1@<X8>)
{
  v157 = a1;
  v158 = sub_3A2F0;
  v159 = sub_3A3A0;
  v160 = sub_3A3EC;
  v161 = sub_352B0;
  v162 = sub_3A4EC;
  v163 = sub_3A324;
  v164 = sub_3A358;
  v165 = sub_3A438;
  v166 = sub_3A470;
  v167 = sub_3A4A4;
  v168 = sub_3A538;
  v169 = sub_3A59C;
  v170 = sub_3A64C;
  v171 = sub_3A698;
  v172 = sub_35270;
  v173 = sub_3A798;
  v174 = sub_3A5D0;
  v175 = sub_3A604;
  v176 = sub_3A6E4;
  v177 = sub_3A71C;
  v178 = sub_3A750;
  v179 = sub_3A7E4;
  v224 = 0;
  v180 = 0;
  v204 = 0;
  v205 = 0;
  v183 = 0;
  v181 = (*(*(sub_50990() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v182 = v66 - v181;
  v184 = (*(*(sub_512F0() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v183);
  v185 = v66 - v184;
  v186 = sub_50DB0();
  v187 = *(v186 - 8);
  v188 = v186 - 8;
  v189 = (*(v187 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v186);
  v190 = v66 - v189;
  v191 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v66 - v189);
  v192 = v66 - v191;
  v193 = __dst;
  v194 = 64;
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(v225, __dst, sizeof(v225));
  v195 = sub_184E0();
  v196 = sub_50B90();

  v197 = [v196 currentInstalledNeRDInfo];
  _objc_release(v196);
  if (v197)
  {
    v156 = v197;
    v153 = v197;
    v154 = sub_51290();
    _objc_release(v153);
    v155 = v154;
  }

  else
  {
    v155 = 0;
  }

  v152 = v155;
  v224 = v155;
  v223 = v155;
  v151 = v155 != 0;
  if (v155)
  {

    if (v152)
    {
      v150 = v152;
      v145 = v152;
      v146 = sub_512A0();
      v147 = v3;

      v148 = v146;
      v149 = v147;
    }

    else
    {
      v148 = 0;
      v149 = 0;
    }

    v143 = v149;
    v144 = v148;
    if (v149)
    {
      v141 = v144;
      v142 = v143;
      v137 = v143;
      v138 = v144;
      v204 = v144;
      v205 = v143;
      v203[2] = v144;
      v203[3] = v143;
      v4 = sub_51350("", 0, 1);
      v139 = v203;
      v203[0] = v4;
      v203[1] = v5;
      v140 = sub_51360();
      sub_37EA8(v139);
      if ((v140 & 1) == 0)
      {

        v136 = v202;
        v202[0] = v138;
        v202[1] = v137;
        sub_37E30();
        v6 = sub_50FE0();
        v7 = v157;
        v198 = v6;
        v199 = v8;
        v200 = v9;
        v201 = v10;
        *v157 = v6;
        v7[1] = v8;
        *(v7 + 16) = v9 & 1;
        v7[3] = v10;
      }
    }

    sub_50D90();
    v115 = __dst;
    sub_18F68(__dst, &v211);
    v123 = 7;
    v116 = swift_allocObject();
    memcpy((v116 + 16), v115, 0x40uLL);
    v134 = sub_50DA0();
    v135 = sub_514A0();
    v120 = 17;
    v125 = swift_allocObject();
    v119 = 32;
    *(v125 + 16) = 32;
    v126 = swift_allocObject();
    v121 = 8;
    *(v126 + 16) = 8;
    v122 = 32;
    v12 = swift_allocObject();
    v13 = v116;
    v117 = v12;
    *(v12 + 16) = v169;
    *(v12 + 24) = v13;
    v14 = swift_allocObject();
    v15 = v117;
    v118 = v14;
    *(v14 + 16) = v170;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v118;
    v127 = v16;
    *(v16 + 16) = v171;
    *(v16 + 24) = v17;
    v128 = swift_allocObject();
    *(v128 + 16) = v119;
    v129 = swift_allocObject();
    *(v129 + 16) = v121;
    v18 = swift_allocObject();
    v124 = v18;
    *(v18 + 16) = v172;
    *(v18 + 24) = 0;
    v19 = swift_allocObject();
    v20 = v124;
    v131 = v19;
    *(v19 + 16) = v173;
    *(v19 + 24) = v20;
    v133 = sub_23FC(&qword_64648, &qword_51E60);
    v130 = sub_51650();
    v132 = v21;

    v22 = v125;
    v23 = v132;
    *v132 = v174;
    v23[1] = v22;

    v24 = v126;
    v25 = v132;
    v132[2] = v175;
    v25[3] = v24;

    v26 = v127;
    v27 = v132;
    v132[4] = v176;
    v27[5] = v26;

    v28 = v128;
    v29 = v132;
    v132[6] = v177;
    v29[7] = v28;

    v30 = v129;
    v31 = v132;
    v132[8] = v178;
    v31[9] = v30;

    v32 = v131;
    v33 = v132;
    v132[10] = v179;
    v33[11] = v32;
    sub_1489C();

    if (os_log_type_enabled(v134, v135))
    {
      v34 = v180;
      v107 = sub_514F0();
      v106 = sub_23FC(&qword_64650, &unk_53930);
      v108 = sub_121D4(0, v106, v106);
      v109 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v111 = &v210;
      v210 = v107;
      v112 = &v209;
      v209 = v108;
      v113 = &v208;
      v208 = v109;
      v110 = 2;
      sub_12228(2, &v210);
      sub_12228(v110, v111);
      v206 = v174;
      v207 = v125;
      sub_1223C(&v206, v111, v112, v113);
      v114 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {
        v206 = v175;
        v207 = v126;
        sub_1223C(&v206, &v210, &v209, &v208);
        v105 = 0;
        v206 = v176;
        v207 = v127;
        sub_1223C(&v206, &v210, &v209, &v208);
        v104 = 0;
        v206 = v177;
        v207 = v128;
        sub_1223C(&v206, &v210, &v209, &v208);
        v103 = 0;
        v206 = v178;
        v207 = v129;
        sub_1223C(&v206, &v210, &v209, &v208);
        v102 = 0;
        v206 = v179;
        v207 = v131;
        sub_1223C(&v206, &v210, &v209, &v208);
        _os_log_impl(&dword_0, v134, v135, "%s.%s: Couldn't convert NeRD info to string", v107, 0x16u);
        sub_12288(v108, 0, v106);
        sub_12288(v109, 2, &type metadata for Any + 8);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v134);
    (*(v187 + 8))(v192, v186);
  }

  else
  {
    sub_50D90();
    v81 = __dst;
    sub_18F68(__dst, v222);
    v89 = 7;
    v82 = swift_allocObject();
    memcpy((v82 + 16), v81, 0x40uLL);
    v100 = sub_50DA0();
    v101 = sub_514A0();
    v86 = 17;
    v91 = swift_allocObject();
    v85 = 32;
    *(v91 + 16) = 32;
    v92 = swift_allocObject();
    v87 = 8;
    *(v92 + 16) = 8;
    v88 = 32;
    v35 = swift_allocObject();
    v36 = v82;
    v83 = v35;
    *(v35 + 16) = v158;
    *(v35 + 24) = v36;
    v37 = swift_allocObject();
    v38 = v83;
    v84 = v37;
    *(v37 + 16) = v159;
    *(v37 + 24) = v38;
    v39 = swift_allocObject();
    v40 = v84;
    v93 = v39;
    *(v39 + 16) = v160;
    *(v39 + 24) = v40;
    v94 = swift_allocObject();
    *(v94 + 16) = v85;
    v95 = swift_allocObject();
    *(v95 + 16) = v87;
    v41 = swift_allocObject();
    v90 = v41;
    *(v41 + 16) = v161;
    *(v41 + 24) = 0;
    v42 = swift_allocObject();
    v43 = v90;
    v97 = v42;
    *(v42 + 16) = v162;
    *(v42 + 24) = v43;
    v99 = sub_23FC(&qword_64648, &qword_51E60);
    v96 = sub_51650();
    v98 = v44;

    v45 = v91;
    v46 = v98;
    *v98 = v163;
    v46[1] = v45;

    v47 = v92;
    v48 = v98;
    v98[2] = v164;
    v48[3] = v47;

    v49 = v93;
    v50 = v98;
    v98[4] = v165;
    v50[5] = v49;

    v51 = v94;
    v52 = v98;
    v98[6] = v166;
    v52[7] = v51;

    v53 = v95;
    v54 = v98;
    v98[8] = v167;
    v54[9] = v53;

    v55 = v97;
    v56 = v98;
    v98[10] = v168;
    v56[11] = v55;
    sub_1489C();

    if (os_log_type_enabled(v100, v101))
    {
      v57 = v180;
      v73 = sub_514F0();
      v72 = sub_23FC(&qword_64650, &unk_53930);
      v74 = sub_121D4(0, v72, v72);
      v75 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v77 = v216;
      v216[0] = v73;
      v78 = &v215;
      v215 = v74;
      v79 = &v214;
      v214 = v75;
      v76 = 2;
      sub_12228(2, v216);
      sub_12228(v76, v77);
      v212 = v163;
      v213 = v91;
      sub_1223C(&v212, v77, v78, v79);
      v80 = v57;
      if (v57)
      {

        __break(1u);
      }

      else
      {
        v212 = v164;
        v213 = v92;
        sub_1223C(&v212, v216, &v215, &v214);
        v71 = 0;
        v212 = v165;
        v213 = v93;
        sub_1223C(&v212, v216, &v215, &v214);
        v70 = 0;
        v212 = v166;
        v213 = v94;
        sub_1223C(&v212, v216, &v215, &v214);
        v69 = 0;
        v212 = v167;
        v213 = v95;
        sub_1223C(&v212, v216, &v215, &v214);
        v68 = 0;
        v212 = v168;
        v213 = v97;
        sub_1223C(&v212, v216, &v215, &v214);
        _os_log_impl(&dword_0, v100, v101, "%s.%s: Couldn't fetch RecoveryOS info", v73, 0x16u);
        sub_12288(v74, 0, v72);
        sub_12288(v75, 2, &type metadata for Any + 8);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v100);
    (*(v187 + 8))(v190, v186);
  }

  v67 = 1;
  sub_51350("No RecoveryOS information available.", 0x24uLL, 1);
  sub_512E0();
  v66[0] = *sub_411D0();
  v66[0];
  sub_20CD4();
  v219[2] = 0;
  v219[3] = 0;
  v220 = 0;
  v221 = v67 & 1;
  v58 = sub_51320();
  v66[1] = v219;
  v219[0] = v58;
  v219[1] = v59;
  sub_37E30();
  v60 = sub_50FE0();
  v61 = v67;
  v62 = v157;
  v216[1] = v60;
  v216[2] = v63;
  v217 = v64;
  v218 = v65;
  *v157 = v60;
  v62[1] = v63;
  *(v62 + 16) = v64 & 1 & v61;
  v62[3] = v65;
}

uint64_t sub_2D188(void *__src)
{
  v3 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  return sub_2D1D4();
}

uint64_t sub_2D1D4()
{
  v125 = sub_3A848;
  v127 = sub_3A8F8;
  v129 = sub_3A944;
  v134 = sub_352F0;
  v137 = sub_3AA44;
  v139 = sub_3A87C;
  v141 = sub_3A8B0;
  v143 = sub_3A990;
  v145 = sub_3A9C8;
  v147 = sub_3A9FC;
  v150 = sub_3AA90;
  v104 = sub_3AAF4;
  v105 = sub_3ABA4;
  v106 = sub_3ABF0;
  v107 = sub_35408;
  v108 = sub_3ACF0;
  v109 = sub_3AB28;
  v110 = sub_3AB5C;
  v111 = sub_3AC3C;
  v112 = sub_3AC74;
  v113 = sub_3ACA8;
  v114 = sub_3AD3C;
  v115 = 0;
  v116 = sub_50DB0();
  v117 = *(v116 - 8);
  v118 = v116 - 8;
  v119 = (*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v116);
  v120 = &v50 - v119;
  v121 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v50 - v119);
  v122 = &v50 - v121;
  v123 = __dst;
  v124 = 64;
  memcpy(__dst, v1, sizeof(__dst));
  sub_50D90();
  sub_18F68(v123, v170);
  v136 = 7;
  v126 = swift_allocObject();
  memcpy((v126 + 16), v123, v124);
  v154 = sub_50DA0();
  v155 = sub_51490();
  v132 = 17;
  v140 = swift_allocObject();
  v131 = 32;
  *(v140 + 16) = 32;
  v142 = swift_allocObject();
  v133 = 8;
  *(v142 + 16) = 8;
  v135 = 32;
  v2 = swift_allocObject();
  v3 = v126;
  v128 = v2;
  *(v2 + 16) = v125;
  *(v2 + 24) = v3;
  v4 = swift_allocObject();
  v5 = v128;
  v130 = v4;
  *(v4 + 16) = v127;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v130;
  v144 = v6;
  *(v6 + 16) = v129;
  *(v6 + 24) = v7;
  v146 = swift_allocObject();
  *(v146 + 16) = v131;
  v148 = swift_allocObject();
  *(v148 + 16) = v133;
  v8 = swift_allocObject();
  v138 = v8;
  *(v8 + 16) = v134;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v138;
  v151 = v9;
  *(v9 + 16) = v137;
  *(v9 + 24) = v10;
  v153 = sub_23FC(&qword_64648, &qword_51E60);
  v149 = sub_51650();
  v152 = v11;

  v12 = v140;
  v13 = v152;
  *v152 = v139;
  v13[1] = v12;

  v14 = v142;
  v15 = v152;
  v152[2] = v141;
  v15[3] = v14;

  v16 = v144;
  v17 = v152;
  v152[4] = v143;
  v17[5] = v16;

  v18 = v146;
  v19 = v152;
  v152[6] = v145;
  v19[7] = v18;

  v20 = v148;
  v21 = v152;
  v152[8] = v147;
  v21[9] = v20;

  v22 = v151;
  v23 = v152;
  v152[10] = v150;
  v23[11] = v22;
  sub_1489C();

  if (os_log_type_enabled(v154, v155))
  {
    v24 = v115;
    v96 = sub_514F0();
    v95 = sub_23FC(&qword_64650, &unk_53930);
    v97 = sub_121D4(0, v95, v95);
    v98 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v100 = &v160;
    v160 = v96;
    v101 = &v159;
    v159 = v97;
    v102 = &v158;
    v158 = v98;
    v99 = 2;
    sub_12228(2, &v160);
    sub_12228(v99, v100);
    v156 = v139;
    v157 = v140;
    sub_1223C(&v156, v100, v101, v102);
    v103 = v24;
    if (v24)
    {

      __break(1u);
    }

    else
    {
      v156 = v141;
      v157 = v142;
      sub_1223C(&v156, &v160, &v159, &v158);
      v93 = 0;
      v156 = v143;
      v157 = v144;
      sub_1223C(&v156, &v160, &v159, &v158);
      v92 = 0;
      v156 = v145;
      v157 = v146;
      sub_1223C(&v156, &v160, &v159, &v158);
      v91 = 0;
      v156 = v147;
      v157 = v148;
      sub_1223C(&v156, &v160, &v159, &v158);
      v90 = 0;
      v156 = v150;
      v157 = v151;
      sub_1223C(&v156, &v160, &v159, &v158);
      v89 = 0;
      _os_log_impl(&dword_0, v154, v155, "%s.%s: Automatic Updates: Shake gesture triggered", v96, 0x16u);
      sub_12288(v97, 0, v95);
      sub_12288(v98, 2, &type metadata for Any + 8);
      sub_514D0();

      v94 = v89;
    }
  }

  else
  {
    v25 = v115;

    v94 = v25;
  }

  v86 = v94;
  _objc_release(v154);
  v87 = *(v117 + 8);
  v88 = v117 + 8;
  v87(v122, v116);
  memcpy(v169, __dst, sizeof(v169));
  result = sub_35320();
  if (result)
  {
    sub_50D90();
    v66 = __dst;
    sub_18F68(__dst, &v168);
    v74 = 7;
    v67 = swift_allocObject();
    memcpy((v67 + 16), v66, 0x40uLL);
    v84 = sub_50DA0();
    v85 = sub_51490();
    v71 = 17;
    v76 = swift_allocObject();
    v70 = 32;
    *(v76 + 16) = 32;
    v77 = swift_allocObject();
    v72 = 8;
    *(v77 + 16) = 8;
    v73 = 32;
    v27 = swift_allocObject();
    v28 = v67;
    v68 = v27;
    *(v27 + 16) = v104;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v68;
    v69 = v29;
    *(v29 + 16) = v105;
    *(v29 + 24) = v30;
    v31 = swift_allocObject();
    v32 = v69;
    v78 = v31;
    *(v31 + 16) = v106;
    *(v31 + 24) = v32;
    v79 = swift_allocObject();
    *(v79 + 16) = v70;
    v80 = swift_allocObject();
    *(v80 + 16) = v72;
    v33 = swift_allocObject();
    v75 = v33;
    *(v33 + 16) = v107;
    *(v33 + 24) = 0;
    v34 = swift_allocObject();
    v35 = v75;
    v82 = v34;
    *(v34 + 16) = v108;
    *(v34 + 24) = v35;
    v81 = sub_51650();
    v83 = v36;

    v37 = v76;
    v38 = v83;
    *v83 = v109;
    v38[1] = v37;

    v39 = v77;
    v40 = v83;
    v83[2] = v110;
    v40[3] = v39;

    v41 = v78;
    v42 = v83;
    v83[4] = v111;
    v42[5] = v41;

    v43 = v79;
    v44 = v83;
    v83[6] = v112;
    v44[7] = v43;

    v45 = v80;
    v46 = v83;
    v83[8] = v113;
    v46[9] = v45;

    v47 = v82;
    v48 = v83;
    v83[10] = v114;
    v48[11] = v47;
    sub_1489C();

    if (os_log_type_enabled(v84, v85))
    {
      v49 = v86;
      v58 = sub_514F0();
      v57 = sub_23FC(&qword_64650, &unk_53930);
      v59 = sub_121D4(0, v57, v57);
      v60 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
      v62 = &v165;
      v165 = v58;
      v63 = &v164;
      v164 = v59;
      v64 = &v163;
      v163 = v60;
      v61 = 2;
      sub_12228(2, &v165);
      sub_12228(v61, v62);
      v161 = v109;
      v162 = v76;
      sub_1223C(&v161, v62, v63, v64);
      v65 = v49;
      if (v49)
      {

        __break(1u);
      }

      else
      {
        v161 = v110;
        v162 = v77;
        sub_1223C(&v161, &v165, &v164, &v163);
        v56 = 0;
        v161 = v111;
        v162 = v78;
        sub_1223C(&v161, &v165, &v164, &v163);
        v55 = 0;
        v161 = v112;
        v162 = v79;
        sub_1223C(&v161, &v165, &v164, &v163);
        v54 = 0;
        v161 = v113;
        v162 = v80;
        sub_1223C(&v161, &v165, &v164, &v163);
        v53 = 0;
        v161 = v114;
        v162 = v82;
        sub_1223C(&v161, &v165, &v164, &v163);
        _os_log_impl(&dword_0, v84, v85, "%s.%s: Automatic Updates: Presenting RecoveryOS Info Menu", v58, 0x16u);
        sub_12288(v59, 0, v57);
        sub_12288(v60, 2, &type metadata for Any + 8);
        sub_514D0();
      }
    }

    else
    {
    }

    _objc_release(v84);
    v87(v120, v116);
    v51 = __dst;
    sub_18F68(__dst, &v167);
    v52 = v166;
    memcpy(v166, v51, sizeof(v166));
    sub_1E434(2);
    result = v52;
    sub_180B8(v52);
  }

  return result;
}

uint64_t sub_2E15C@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v56 = a1;
  v44 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v46 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v79 = 0;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v61 = 0;
  v20 = sub_50F50();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v24 = &v14 - v23;
  v25 = sub_23FC(&qword_64880, &qword_52E00);
  v26 = *(v25 - 8);
  v27 = v25 - 8;
  v28 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v29 = &v14 - v28;
  v30 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v28);
  v31 = &v14 - v30;
  v32 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v30);
  v33 = &v14 - v32;
  v79 = &v14 - v32;
  v34 = sub_23FC(&qword_64888, &qword_52E08);
  v35 = (*(*(v34 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v34);
  v36 = &v14 - v35;
  v37 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v35);
  v38 = &v14 - v37;
  v39 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v37);
  v40 = &v14 - v39;
  v78 = &v14 - v39;
  v53 = sub_23FC(&qword_64830, &qword_523A8);
  v50 = *(v53 - 8);
  v51 = v53 - 8;
  v41 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v52 = &v14 - v41;
  v42 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v14 - v41);
  v48 = &v14 - v42;
  v77 = &v14 - v42;
  v76 = v7;
  v57 = 64;
  memcpy(__dst, v7, sizeof(__dst));
  sub_2E8B4(v52);
  v45 = sub_6320(&qword_64838, &qword_523B0);
  v43 = sub_6320(&qword_64840, &qword_523B8);
  v8 = sub_388CC();
  v73 = v43;
  v74 = v8;
  v47 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v71 = v45;
  v72 = OpaqueTypeConformance2;
  v49 = swift_getOpaqueTypeConformance2();
  sub_6394(v52, v53, v48);
  v54 = *(v50 + 8);
  v55 = v50 + 8;
  v54(v52, v53);
  memcpy(v70, v56, v57);
  v58 = sub_18D58();
  v59 = v10;
  v67 = v58;
  v68 = v10;
  v69 = v11 & 1;
  sub_23FC(&qword_64730, &qword_52328);
  sub_511A0();
  v60 = v66;

  if (v60)
  {
    (*(v26 + 56))(v36, 1, 1, v25);
    sub_3C530();
    sub_B3CC(v36, v25, v38);
    sub_3C678(v36);
    sub_3C74C(v38, v40);
  }

  else
  {
    memcpy(v62, v56, sizeof(v62));
    sub_2EEE0(v52);
    sub_20B80();
    v12 = sub_3BF78();
    sub_20B98(v24, v53, v20, v49, v12, v31);
    (*(v21 + 8))(v24, v20);
    v54(v52, v53);
    v18 = sub_3C530();
    sub_6394(v31, v25, v33);
    sub_3CAB4(v31);
    v61 = v31;
    sub_3CB44(v33, v29);
    sub_99E8(v29, v25, v31);
    sub_3CAB4(v29);
    sub_3CB44(v31, v36);
    (*(v26 + 56))(v36, 0, 1, v25);
    sub_B3CC(v36, v25, v38);
    sub_3C678(v36);
    sub_3C74C(v38, v40);
    sub_3CAB4(v31);
    sub_3CAB4(v33);
  }

  (*(v50 + 16))(v52, v48, v53);
  v17 = v65;
  v65[0] = v52;
  sub_3C8A8(v40, v38);
  v65[1] = v38;
  v15 = v64;
  v64[0] = v53;
  v64[1] = v34;
  v16 = v63;
  v63[0] = v49;
  v63[1] = sub_3CA1C();
  sub_63F8(v17, 2uLL, v15, v19);
  sub_3C678(v38);
  v54(v52, v53);
  sub_3C678(v40);
  return (v54)(v48, v53);
}

uint64_t sub_2E8B4@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v15 = 0;
  v14 = sub_31864;
  v32 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v42 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v61 = 0;
  v60 = 0;
  v34 = 0;
  v26 = sub_50C30();
  v23 = *(v26 - 8);
  v24 = v26 - 8;
  v8 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v26);
  v25 = &v7 - v8;
  v22 = sub_23FC(&qword_64858, &qword_523C0);
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v9 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v21 = &v7 - v9;
  v30 = sub_23FC(&qword_64840, &qword_523B8);
  v10 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v27 = &v7 - v10;
  v40 = sub_23FC(&qword_64838, &qword_523B0);
  v37 = *(v40 - 8);
  v38 = v40 - 8;
  v11 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v39 = &v7 - v11;
  v50 = sub_23FC(&qword_64830, &qword_523A8);
  v44 = *(v50 - 8);
  v45 = v50 - 8;
  v12 = (*(v44 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v48 = &v7 - v12;
  v13 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v12);
  v49 = &v7 - v13;
  v61 = &v7 - v13;
  v28 = __dst;
  v29 = 64;
  memcpy(__dst, v1, sizeof(__dst));
  v60 = v1;
  memcpy(v59, __dst, sizeof(v59));
  sub_18D58();
  sub_51190();
  memcpy(v58 + 1, v28, v29);
  v3 = sub_187A0();
  v16 = v3;
  KeyPath = swift_getKeyPath();
  (*(*v3 + 192))(v58);
  v17 = LOBYTE(v58[0]);

  sub_38974();
  sub_51100();

  (*(v19 + 8))(v21, v22);
  (*(v23 + 104))(v25, enum case for AccessibilityIdentifiers.automaticInstallSwitch(_:), v26);
  v31 = sub_388CC();
  sub_50FF0();
  (*(v23 + 8))(v25, v26);
  sub_3AD48(v27);
  memcpy(&v57, v28, v29);
  v35 = sub_18D58();
  v36 = v4;
  v33 = v5;
  v55 = v30;
  v56 = v31;
  v43 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_51010();

  (*(v37 + 8))(v39, v40);
  v53 = v40;
  v54 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  sub_6394(v48, v50, v49);
  v52 = *(v44 + 8);
  v51 = v44 + 8;
  v52(v48, v50);
  (*(v44 + 16))(v48, v49, v50);
  sub_99E8(v48, v50, v46);
  v52(v48, v50);
  return (v52)(v49, v50);
}

uint64_t sub_2EEE0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v14 = 0;
  v13 = sub_31AA0;
  v31 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v40 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v59 = 0;
  v58 = 0;
  v25 = sub_50C30();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v7 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v24 = &v7 - v7;
  v21 = sub_23FC(&qword_64858, &qword_523C0);
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v20 = &v7 - v8;
  v29 = sub_23FC(&qword_64840, &qword_523B8);
  v9 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v26 = &v7 - v9;
  v38 = sub_23FC(&qword_64838, &qword_523B0);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v10 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v37 = &v7 - v10;
  v48 = sub_23FC(&qword_64830, &qword_523A8);
  v42 = *(v48 - 8);
  v43 = v48 - 8;
  v11 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v46 = &v7 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v11);
  v47 = &v7 - v12;
  v59 = &v7 - v12;
  v27 = __dst;
  v28 = 64;
  memcpy(__dst, v1, sizeof(__dst));
  v58 = v1;
  memcpy(v57, __dst, sizeof(v57));
  sub_1B9A0();
  sub_51190();
  memcpy(v56 + 1, v27, v28);
  v3 = sub_187A0();
  v15 = v3;
  KeyPath = swift_getKeyPath();
  (*(*v3 + 192))(v56);
  v16 = LOBYTE(v56[0]);

  sub_38974();
  sub_51100();

  (*(v18 + 8))(v20, v21);
  (*(v22 + 104))(v24, enum case for AccessibilityIdentifiers.automaticDownloadSwitch(_:), v25);
  v30 = sub_388CC();
  sub_50FF0();
  (*(v22 + 8))(v24, v25);
  sub_3AD48(v26);
  memcpy(&v55, v27, v28);
  v33 = sub_1B9A0();
  v34 = v4;
  v32 = v5;
  v53 = v29;
  v54 = v30;
  v41 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_51010();

  (*(v35 + 8))(v37, v38);
  v51 = v38;
  v52 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  sub_6394(v46, v48, v47);
  v50 = *(v42 + 8);
  v49 = v42 + 8;
  v50(v46, v48);
  (*(v42 + 16))(v46, v47, v48);
  sub_99E8(v46, v48, v44);
  v50(v46, v48);
  return (v50)(v47, v48);
}

uint64_t sub_2F510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = a1;
  v123 = 0;
  v59 = sub_50F50();
  v60 = *(v59 - 8);
  v61 = v59 - 8;
  v62 = (*(v60 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v59);
  v63 = &v13 - v62;
  v123 = v2;
  memcpy(__dst, v2, sizeof(__dst));
  v64 = sub_18D58();
  v65 = v3;
  v114 = v64;
  v115 = v3;
  v116 = v4 & 1;
  sub_23FC(&qword_64730, &qword_52328);
  sub_511A0();
  v66 = v113;

  if (v66)
  {
    v17 = v107;
    memset(v107, 0, sizeof(v107));
    v16 = sub_23FC(&qword_647D8, &qword_52380);
    sub_38470();
    sub_B3CC(v17, v16, &v108);
    v18 = v108;
    v19 = v109;
    v20 = v110;
    v21 = v111;
    v22 = v112;
    sub_3C464(v108, v109, v110, v111, v112);
    v118 = v18;
    v119 = v19;
    v120 = v20;
    v121 = v21;
    v122 = v22;
    v52 = v18;
    v53 = v19;
    v54 = v20;
    v55 = v21;
    v56 = v22;
  }

  else
  {
    v33 = 1;
    sub_51350("OSName Updates", 0xEuLL, 1);
    v27 = sub_50F60();
    v23 = v5;
    v24 = v6;
    v25 = v7;
    v26 = *sub_411D0();
    v26;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = v33 & 1;
    v89 = sub_50FD0();
    v90 = v8;
    v91 = v9;
    v92 = v10;
    v28 = v86;
    v86[0] = v89;
    v86[1] = v8;
    v87 = v9 & 1 & v33;
    v88 = v10;
    sub_20B80();
    v11 = sub_3BF78();
    sub_20B98(v63, &type metadata for Text, v59, &protocol witness table for Text, v11, v97);
    (*(v60 + 8))(v63, v59);
    sub_3BE9C(v28);
    v29 = v82;
    v82[0] = v97[0];
    v82[1] = v97[1];
    v83 = v98 & 1 & v33;
    v84 = v99;
    v85 = v100;
    v42 = sub_23FC(&qword_647D8, &qword_52380);
    v43 = sub_38470();
    v46 = &v101;
    sub_6394(v29, v42, &v101);
    sub_3BFF8(v29);
    v30 = v101;
    v31 = v102;
    v32 = v103;
    v34 = v104;
    v35 = v105;
    sub_3BF28(v101, v102, v103 & 1);

    v36 = v73;
    v73[0] = v30;
    v73[1] = v31;
    v74 = v32 & 1 & v33;
    v75 = v34;
    v76 = v35;
    v45 = &v77;
    sub_99E8(v73, v42, &v77);
    sub_3BFF8(v36);
    v38 = v77;
    v39 = v78;
    v37 = v79;
    v40 = v80;
    v41 = v81;
    sub_3BF28(v77, v78, v79 & 1);

    v44 = v67;
    v67[0] = v38;
    v67[1] = v39;
    v67[2] = v37 & 1;
    v67[3] = v40;
    v67[4] = v41;
    sub_B3CC(v67, v42, &v68);
    sub_3C4CC(v44);
    v47 = v68;
    v48 = v69;
    v49 = v70;
    v50 = v71;
    v51 = v72;
    sub_3C464(v68, v69, v70, v71, v72);
    v118 = v47;
    v119 = v48;
    v120 = v49;
    v121 = v50;
    v122 = v51;
    sub_3BFF8(v45);
    sub_3BFF8(v46);
    v52 = v47;
    v53 = v48;
    v54 = v49;
    v55 = v50;
    v56 = v51;
  }

  v15 = v106;
  v106[0] = v52;
  v106[1] = v53;
  v106[2] = v54;
  v106[3] = v55;
  v106[4] = v56;
  v14 = sub_23FC(&qword_647B0, &qword_52368);
  sub_383D8();
  sub_99E8(v15, v14, v57);
  sub_3C4CC(v15);
  return sub_3C4CC(&v118);
}

uint64_t sub_2FAE0(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v280 = v2;
  v283 = v1;
  v562 = 0;
  __c = 0;
  memset(__b, 0, 0x2BuLL);
  __len = 41;
  memset(v504, 0, 0x29uLL);
  memset(v459, 0, 0x29uLL);
  memset(v398, 0, 0x29uLL);
  memset(v353, 0, 0x29uLL);
  v284 = sub_50F50();
  v285 = *(v284 - 8);
  v286 = v284 - 8;
  v287 = (*(v285 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v284);
  v288 = &v47 - v287;
  v562 = v3;
  memcpy(__dst, v3, sizeof(__dst));
  v290 = sub_18D58();
  v291 = v4;
  v557 = v290;
  v558 = v4;
  v559 = v5 & 1;
  v289 = sub_23FC(&qword_64730, &qword_52328);
  sub_511A0();
  v292 = v556[71];

  if (v292)
  {
    memcpy(v397, v283, sizeof(v397));
    v278 = sub_1892C();
    v279 = sub_50D60();

    if (v279)
    {
      v263 = 1;
      sub_51350("Automatically download and install OSName software updates and system files when this ProductFamilyName is connected to WLAN, charging, and locked. ProductFamilyName may reserve storage space to ensure updates can be installed.", 0xE3uLL, 1);
      v246 = sub_50F60();
      v242 = v6;
      v243 = v7;
      v244 = v8;
      v245 = *sub_411D0();
      v245;
      v323 = 0;
      v324 = 0;
      v325 = 0;
      v326 = v263 & 1;
      v319 = sub_50FD0();
      v320 = v9;
      v321 = v10;
      v322 = v11;
      v247 = v316;
      v316[0] = v319;
      v316[1] = v9;
      v317 = v10 & 1 & v263;
      v318 = v11;
      sub_20B80();
      v12 = sub_3BF78();
      sub_20B98(v288, &type metadata for Text, v284, &protocol witness table for Text, v12, v327);
      (*(v285 + 8))(v288, v284);
      sub_3BE9C(v247);
      v248 = v312;
      v312[0] = v327[0];
      v312[1] = v327[1];
      v313 = v328 & 1 & v263;
      v314 = v329;
      v315 = v330;
      v260 = sub_23FC(&qword_647D8, &qword_52380);
      v261 = sub_38470();
      v265 = &v331;
      sub_6394(v248, v260, &v331);
      sub_3BFF8(v248);
      v249 = v331;
      v250 = v332;
      v251 = v333;
      v252 = v334;
      v253 = v335;
      sub_3BF28(v331, v332, v333 & 1);

      v254 = v303;
      v303[0] = v249;
      v303[1] = v250;
      v304 = v251 & 1 & v263;
      v305 = v252;
      v306 = v253;
      v264 = &v307;
      sub_99E8(v303, v260, &v307);
      sub_3BFF8(v254);
      v255 = v307;
      v256 = v308;
      v257 = v309;
      v258 = v310;
      v259 = v311;
      sub_3BF28(v307, v308, v309 & 1);

      v262 = v293;
      v293[0] = v255;
      v293[1] = v256;
      v294 = v257 & 1 & v263;
      v295 = v258;
      v296 = v259;
      sub_B2D4(v293, v260, v260, v261, v261, &v297);
      sub_3BFF8(v262);
      v267 = v297;
      v268 = v298;
      v269 = v299;
      v270 = v300;
      v271 = v301;
      v266 = v302;
      sub_3C160(v297, v298, v299, v300, v301);
      v398[0] = v267;
      v398[1] = v268;
      v398[2] = v269;
      v398[3] = v270;
      v398[4] = v271;
      LOBYTE(v398[5]) = v266 & 1 & v263;
      sub_3BFF8(v264);
      sub_3BFF8(v265);
      v272 = v267;
      v273 = v268;
      v274 = v269;
      v275 = v270;
      v276 = v271;
      v277 = v266;
    }

    else
    {
      v233 = 1;
      sub_51350("Automatically download and install OSName software updates and system files when this ProductFamilyName is connected to Wi-Fi, charging, and locked. ProductFamilyName may reserve storage space to ensure updates can be installed.", 0xE4uLL, 1);
      v216 = sub_50F60();
      v212 = v13;
      v213 = v14;
      v214 = v15;
      v215 = *sub_411D0();
      v215;
      v384 = 0;
      v385 = 0;
      v386 = 0;
      v387 = v233 & 1;
      v380 = sub_50FD0();
      v381 = v16;
      v382 = v17;
      v383 = v18;
      v217 = v377;
      v377[0] = v380;
      v377[1] = v16;
      v378 = v17 & 1 & v233;
      v379 = v18;
      sub_20B80();
      v19 = sub_3BF78();
      sub_20B98(v288, &type metadata for Text, v284, &protocol witness table for Text, v19, v388);
      (*(v285 + 8))(v288, v284);
      sub_3BE9C(v217);
      v218 = v373;
      v373[0] = v388[0];
      v373[1] = v388[1];
      v374 = v389 & 1 & v233;
      v375 = v390;
      v376 = v391;
      v230 = sub_23FC(&qword_647D8, &qword_52380);
      v231 = sub_38470();
      v235 = &v392;
      sub_6394(v218, v230, &v392);
      sub_3BFF8(v218);
      v219 = v392;
      v220 = v393;
      v221 = v394;
      v222 = v395;
      v223 = v396;
      sub_3BF28(v392, v393, v394 & 1);

      v224 = v364;
      v364[0] = v219;
      v364[1] = v220;
      v365 = v221 & 1 & v233;
      v366 = v222;
      v367 = v223;
      v234 = &v368;
      sub_99E8(v364, v230, &v368);
      sub_3BFF8(v224);
      v225 = v368;
      v226 = v369;
      v227 = v370;
      v228 = v371;
      v229 = v372;
      sub_3BF28(v368, v369, v370 & 1);

      v232 = v354;
      v354[0] = v225;
      v354[1] = v226;
      v355 = v227 & 1 & v233;
      v356 = v228;
      v357 = v229;
      sub_B418(v354, v230, v230, v231, v231, &v358);
      sub_3BFF8(v232);
      v237 = v358;
      v238 = v359;
      v239 = v360;
      v240 = v361;
      v241 = v362;
      v236 = v363;
      sub_3C160(v358, v359, v360, v361, v362);
      v398[0] = v237;
      v398[1] = v238;
      v398[2] = v239;
      v398[3] = v240;
      v398[4] = v241;
      LOBYTE(v398[5]) = v236 & 1 & v233;
      sub_3BFF8(v234);
      sub_3BFF8(v235);
      v272 = v237;
      v273 = v238;
      v274 = v239;
      v275 = v240;
      v276 = v241;
      v277 = v236;
    }

    v182 = v351;
    v351[0] = v272;
    v351[1] = v273;
    v351[2] = v274;
    v351[3] = v275;
    v351[4] = v276;
    v196 = 1;
    v352 = v277 & 1;
    v189 = sub_23FC(&qword_64818, &qword_52398);
    v190 = sub_3876C();
    v197 = v353;
    sub_99E8(v182, v189, v353);
    sub_3C3D0(v182);
    v183 = v353[0];
    v184 = v353[1];
    v185 = v353[2];
    v186 = v353[3];
    v187 = v353[4];
    v188 = LOBYTE(v353[5]);
    sub_3C160(v353[0], v353[1], v353[2], v353[3], v353[4]);
    v191 = v339;
    v339[0] = v183;
    v339[1] = v184;
    v339[2] = v185;
    v339[3] = v186;
    v339[4] = v187;
    v340 = v188 & 1 & v196;
    sub_B2D4(v339, v189, v189, v190, v190, v341);
    sub_3C3D0(v191);
    v195 = v336;
    v336[0] = v341[0];
    v336[1] = v341[1];
    v336[2] = v341[2];
    v336[3] = v341[3];
    v336[4] = v341[4];
    v337 = v342;
    v338 = v343 & 1 & v196;
    v192 = sub_23FC(&qword_64808, &qword_52390);
    v193 = sub_23FC(&qword_647D8, &qword_52380);
    v194 = sub_386CC();
    v20 = sub_38470();
    sub_B2D4(v195, v192, v193, v194, v20, &v344);
    sub_3C418(v195);
    v199 = v344;
    v200 = v345;
    v201 = v346;
    v202 = v347;
    v203 = v348;
    v204 = v349;
    v198 = v350;
    sub_3C04C(v344, v345, v346, v347, v348, v349, v350 & 1);
    __b[0] = v199;
    __b[1] = v200;
    __b[2] = v201;
    __b[3] = v202;
    __b[4] = v203;
    LOWORD(__b[5]) = v204;
    BYTE2(__b[5]) = v198 & 1 & v196;
    sub_3C3D0(v197);
    sub_3C3D0(v398);
    v205 = v199;
    v206 = v200;
    v207 = v201;
    v208 = v202;
    v209 = v203;
    v210 = v204;
    v211 = v198;
  }

  else
  {
    memcpy(v556, v283, 0x40uLL);
    v179 = sub_1B9A0();
    v180 = v21;
    v553 = v179;
    v554 = v21;
    v555 = v22 & 1;
    sub_511A0();
    v181 = v552;

    if (v181)
    {
      memcpy(v503, v283, sizeof(v503));
      v177 = sub_1892C();
      v178 = sub_50D60();

      if (v178)
      {
        v162 = 1;
        sub_51350("Automatically download OSName software updates and system files when this ProductFamilyName is connected to WLAN, charging, and locked.", 0x87uLL, 1);
        v145 = sub_50F60();
        v141 = v23;
        v142 = v24;
        v143 = v25;
        v144 = *sub_411D0();
        v144;
        v429 = 0;
        v430 = 0;
        v431 = 0;
        v432 = v162 & 1;
        v425 = sub_50FD0();
        v426 = v26;
        v427 = v27;
        v428 = v28;
        v146 = v422;
        v422[0] = v425;
        v422[1] = v26;
        v423 = v27 & 1 & v162;
        v424 = v28;
        sub_20B80();
        v29 = sub_3BF78();
        sub_20B98(v288, &type metadata for Text, v284, &protocol witness table for Text, v29, v433);
        (*(v285 + 8))(v288, v284);
        sub_3BE9C(v146);
        v147 = v418;
        v418[0] = v433[0];
        v418[1] = v433[1];
        v419 = v434 & 1 & v162;
        v420 = v435;
        v421 = v436;
        v159 = sub_23FC(&qword_647D8, &qword_52380);
        v160 = sub_38470();
        v164 = &v437;
        sub_6394(v147, v159, &v437);
        sub_3BFF8(v147);
        v148 = v437;
        v149 = v438;
        v150 = v439;
        v151 = v440;
        v152 = v441;
        sub_3BF28(v437, v438, v439 & 1);

        v153 = v409;
        v409[0] = v148;
        v409[1] = v149;
        v410 = v150 & 1 & v162;
        v411 = v151;
        v412 = v152;
        v163 = &v413;
        sub_99E8(v409, v159, &v413);
        sub_3BFF8(v153);
        v154 = v413;
        v155 = v414;
        v156 = v415;
        v157 = v416;
        v158 = v417;
        sub_3BF28(v413, v414, v415 & 1);

        v161 = v399;
        v399[0] = v154;
        v399[1] = v155;
        v400 = v156 & 1 & v162;
        v401 = v157;
        v402 = v158;
        sub_B2D4(v399, v159, v159, v160, v160, &v403);
        sub_3BFF8(v161);
        v166 = v403;
        v167 = v404;
        v168 = v405;
        v169 = v406;
        v170 = v407;
        v165 = v408;
        sub_3C160(v403, v404, v405, v406, v407);
        v504[0] = v166;
        v504[1] = v167;
        v504[2] = v168;
        v504[3] = v169;
        v504[4] = v170;
        LOBYTE(v504[5]) = v165 & 1 & v162;
        sub_3BFF8(v163);
        sub_3BFF8(v164);
        v171 = v166;
        v172 = v167;
        v173 = v168;
        v174 = v169;
        v175 = v170;
        v176 = v165;
      }

      else
      {
        v132 = 1;
        sub_51350("Automatically download OSName software updates and system files when this ProductFamilyName is connected to Wi-Fi, charging, and locked.", 0x88uLL, 1);
        v115 = sub_50F60();
        v111 = v30;
        v112 = v31;
        v113 = v32;
        v114 = *sub_411D0();
        v114;
        v490 = 0;
        v491 = 0;
        v492 = 0;
        v493 = v132 & 1;
        v486 = sub_50FD0();
        v487 = v33;
        v488 = v34;
        v489 = v35;
        v116 = v483;
        v483[0] = v486;
        v483[1] = v33;
        v484 = v34 & 1 & v132;
        v485 = v35;
        sub_20B80();
        v36 = sub_3BF78();
        sub_20B98(v288, &type metadata for Text, v284, &protocol witness table for Text, v36, v494);
        (*(v285 + 8))(v288, v284);
        sub_3BE9C(v116);
        v117 = v479;
        v479[0] = v494[0];
        v479[1] = v494[1];
        v480 = v495 & 1 & v132;
        v481 = v496;
        v482 = v497;
        v129 = sub_23FC(&qword_647D8, &qword_52380);
        v130 = sub_38470();
        v134 = &v498;
        sub_6394(v117, v129, &v498);
        sub_3BFF8(v117);
        v118 = v498;
        v119 = v499;
        v120 = v500;
        v121 = v501;
        v122 = v502;
        sub_3BF28(v498, v499, v500 & 1);

        v123 = v470;
        v470[0] = v118;
        v470[1] = v119;
        v471 = v120 & 1 & v132;
        v472 = v121;
        v473 = v122;
        v133 = &v474;
        sub_99E8(v470, v129, &v474);
        sub_3BFF8(v123);
        v124 = v474;
        v125 = v475;
        v126 = v476;
        v127 = v477;
        v128 = v478;
        sub_3BF28(v474, v475, v476 & 1);

        v131 = v460;
        v460[0] = v124;
        v460[1] = v125;
        v461 = v126 & 1 & v132;
        v462 = v127;
        v463 = v128;
        sub_B418(v460, v129, v129, v130, v130, &v464);
        sub_3BFF8(v131);
        v136 = v464;
        v137 = v465;
        v138 = v466;
        v139 = v467;
        v140 = v468;
        v135 = v469;
        sub_3C160(v464, v465, v466, v467, v468);
        v504[0] = v136;
        v504[1] = v137;
        v504[2] = v138;
        v504[3] = v139;
        v504[4] = v140;
        LOBYTE(v504[5]) = v135 & 1 & v132;
        sub_3BFF8(v133);
        sub_3BFF8(v134);
        v171 = v136;
        v172 = v137;
        v173 = v138;
        v174 = v139;
        v175 = v140;
        v176 = v135;
      }

      v81 = v457;
      v457[0] = v171;
      v457[1] = v172;
      v457[2] = v173;
      v457[3] = v174;
      v457[4] = v175;
      v95 = 1;
      v458 = v176 & 1;
      v88 = sub_23FC(&qword_64818, &qword_52398);
      v89 = sub_3876C();
      v96 = v459;
      sub_99E8(v81, v88, v459);
      sub_3C3D0(v81);
      v82 = v459[0];
      v83 = v459[1];
      v84 = v459[2];
      v85 = v459[3];
      v86 = v459[4];
      v87 = LOBYTE(v459[5]);
      sub_3C160(v459[0], v459[1], v459[2], v459[3], v459[4]);
      v90 = v445;
      v445[0] = v82;
      v445[1] = v83;
      v445[2] = v84;
      v445[3] = v85;
      v445[4] = v86;
      v446 = v87 & 1 & v95;
      sub_B418(v445, v88, v88, v89, v89, v447);
      sub_3C3D0(v90);
      v94 = v442;
      v442[0] = v447[0];
      v442[1] = v447[1];
      v442[2] = v447[2];
      v442[3] = v447[3];
      v442[4] = v447[4];
      v443 = v448;
      v444 = v449 & 1 & v95;
      v91 = sub_23FC(&qword_64808, &qword_52390);
      v92 = sub_23FC(&qword_647D8, &qword_52380);
      v93 = sub_386CC();
      v37 = sub_38470();
      sub_B2D4(v94, v91, v92, v93, v37, &v450);
      sub_3C418(v94);
      v98 = v450;
      v99 = v451;
      v100 = v452;
      v101 = v453;
      v102 = v454;
      v103 = v455;
      v97 = v456;
      sub_3C04C(v450, v451, v452, v453, v454, v455, v456 & 1);
      __b[0] = v98;
      __b[1] = v99;
      __b[2] = v100;
      __b[3] = v101;
      __b[4] = v102;
      LOWORD(__b[5]) = v103;
      BYTE2(__b[5]) = v97 & 1 & v95;
      sub_3C3D0(v96);
      sub_3C3D0(v504);
      v104 = v98;
      v105 = v99;
      v106 = v100;
      v107 = v101;
      v108 = v102;
      v109 = v103;
      v110 = v97;
    }

    else
    {
      v71 = 1;
      sub_51350("You will be notified when software updates are ready to be downloaded.", 0x46uLL, 1);
      v53 = sub_50F60();
      v49 = v38;
      v50 = v39;
      v51 = v40;
      v52 = *sub_411D0();
      v52;
      v539 = 0;
      v540 = 0;
      v541 = 0;
      v542 = v71 & 1;
      v535 = sub_50FD0();
      v536 = v41;
      v537 = v42;
      v538 = v43;
      v54 = v532;
      v532[0] = v535;
      v532[1] = v41;
      v533 = v42 & 1 & v71;
      v534 = v43;
      sub_20B80();
      v44 = sub_3BF78();
      sub_20B98(v288, &type metadata for Text, v284, &protocol witness table for Text, v44, v543);
      (*(v285 + 8))(v288, v284);
      sub_3BE9C(v54);
      v55 = v528;
      v528[0] = v543[0];
      v528[1] = v543[1];
      v529 = v544 & 1 & v71;
      v530 = v545;
      v531 = v546;
      v68 = sub_23FC(&qword_647D8, &qword_52380);
      v69 = sub_38470();
      v73 = &v547;
      sub_6394(v55, v68, &v547);
      sub_3BFF8(v55);
      v56 = v547;
      v57 = v548;
      v58 = v549;
      v59 = v550;
      v60 = v551;
      sub_3BF28(v547, v548, v549 & 1);

      v61 = v519;
      v519[0] = v56;
      v519[1] = v57;
      v520 = v58 & 1 & v71;
      v521 = v59;
      v522 = v60;
      v72 = &v523;
      sub_99E8(v519, v68, &v523);
      sub_3BFF8(v61);
      v62 = v523;
      v63 = v524;
      v64 = v525;
      v65 = v526;
      v66 = v527;
      sub_3BF28(v523, v524, v525 & 1);

      v70 = v508;
      v508[0] = v62;
      v508[1] = v63;
      v509 = v64 & 1 & v71;
      v510 = v65;
      v511 = v66;
      v67 = sub_23FC(&qword_64808, &qword_52390);
      v45 = sub_386CC();
      sub_B418(v70, v67, v68, v45, v69, &v512);
      sub_3BFF8(v70);
      v75 = v512;
      v76 = v513;
      v77 = v514;
      v78 = v515;
      v79 = v516;
      v80 = v517;
      v74 = v518;
      sub_3C04C(v512, v513, v514, v515, v516, v517, v518 & 1);
      __b[0] = v75;
      __b[1] = v76;
      __b[2] = v77;
      __b[3] = v78;
      __b[4] = v79;
      LOWORD(__b[5]) = v80;
      BYTE2(__b[5]) = v74 & 1 & v71;
      sub_3BFF8(v72);
      sub_3BFF8(v73);
      v104 = v75;
      v105 = v76;
      v106 = v77;
      v107 = v78;
      v108 = v79;
      v109 = v80;
      v110 = v74;
    }

    v205 = v104;
    v206 = v105;
    v207 = v106;
    v208 = v107;
    v209 = v108;
    v210 = v109;
    v211 = v110;
  }

  v48 = v505;
  v505[0] = v205;
  v505[1] = v206;
  v505[2] = v207;
  v505[3] = v208;
  v505[4] = v209;
  v506 = v210;
  v507 = v211 & 1;
  v47 = sub_23FC(&qword_647C0, &qword_52378);
  sub_38624();
  sub_99E8(v48, v47, v280);
  sub_3C1E8(v48);
  return sub_3C1E8(__b);
}

uint64_t sub_316F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a7;
  v25 = a1;
  v26 = a2;
  v19 = a3;
  v18 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a8;
  v30 = a9;
  v20 = a10;
  v21 = a11;
  v33 = a5;
  v32 = a6;
  v31 = a8;
  v16 = (*(*(a8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = &v16 - v16;
  v17 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(&v16 - v16);
  v23 = &v16 - v17;
  v14 = v13(v12);
  v19(v14);
  return sub_511C0();
}

uint64_t sub_31864@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("Automatically Install", 0x15uLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

void sub_31A34(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 shouldDisableAutoInstallUpdates];
  _objc_release(v2);
}

uint64_t sub_31AA0@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("Automatically Download", 0x16uLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

void sub_31C70(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 shouldDisableAutoDownloadUpdates];
  _objc_release(v2);
}

uint64_t sub_31CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v7[1] = a1;
  v11 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v13 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v30 = 0;
  v29 = 0;
  v21 = sub_23FC(&qword_64830, &qword_523A8);
  v15 = *(v21 - 8);
  v16 = v21 - 8;
  v8 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v19 = v7 - v8;
  v9 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7 - v8);
  v20 = v7 - v9;
  v30 = v7 - v9;
  v29 = v3;
  memcpy(__dst, v3, sizeof(__dst));
  sub_31F58(v19);
  v12 = sub_6320(&qword_64838, &qword_523B0);
  v10 = sub_6320(&qword_64840, &qword_523B8);
  v4 = sub_388CC();
  v26 = v10;
  v27 = v4;
  v14 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v12;
  v25 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  sub_6394(v19, v21, v20);
  v23 = *(v15 + 8);
  v22 = v15 + 8;
  v23(v19, v21);
  (*(v15 + 16))(v19, v20, v21);
  sub_99E8(v19, v21, v17);
  v23(v19, v21);
  return (v23)(v20, v21);
}

uint64_t sub_31F58@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v14 = 0;
  v13 = sub_32928;
  v31 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v40 = &opaque type descriptor for <<opaque return type of View.analyticsForToggle(onType:offType:isOn:)>>;
  v59 = 0;
  v58 = 0;
  v25 = sub_50C30();
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v7 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v25);
  v24 = &v7 - v7;
  v21 = sub_23FC(&qword_64858, &qword_523C0);
  v18 = *(v21 - 8);
  v19 = v21 - 8;
  v8 = (*(v18 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v20 = &v7 - v8;
  v29 = sub_23FC(&qword_64840, &qword_523B8);
  v9 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v26 = &v7 - v9;
  v38 = sub_23FC(&qword_64838, &qword_523B0);
  v35 = *(v38 - 8);
  v36 = v38 - 8;
  v10 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38);
  v37 = &v7 - v10;
  v48 = sub_23FC(&qword_64830, &qword_523A8);
  v42 = *(v48 - 8);
  v43 = v48 - 8;
  v11 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v46 = &v7 - v11;
  v12 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v11);
  v47 = &v7 - v12;
  v59 = &v7 - v12;
  v27 = __dst;
  v28 = 64;
  memcpy(__dst, v1, sizeof(__dst));
  v58 = v1;
  memcpy(v57, __dst, sizeof(v57));
  sub_1AEF8();
  sub_51190();
  memcpy(v56 + 1, v27, v28);
  v3 = sub_187A0();
  v15 = v3;
  KeyPath = swift_getKeyPath();
  (*(*v3 + 192))(v56);
  v16 = LOBYTE(v56[0]);

  sub_38974();
  sub_51100();

  (*(v18 + 8))(v20, v21);
  (*(v22 + 104))(v24, enum case for AccessibilityIdentifiers.automaticInstallSystemFiles(_:), v25);
  v30 = sub_388CC();
  sub_50FF0();
  (*(v22 + 8))(v24, v25);
  sub_3AD48(v26);
  memcpy(&v55, v27, v28);
  v33 = sub_1AEF8();
  v34 = v4;
  v32 = v5;
  v53 = v29;
  v54 = v30;
  v41 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_51010();

  (*(v35 + 8))(v37, v38);
  v51 = v38;
  v52 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeConformance2();
  sub_6394(v46, v48, v47);
  v50 = *(v42 + 8);
  v49 = v42 + 8;
  v50(v46, v48);
  (*(v42 + 16))(v46, v47, v48);
  sub_99E8(v46, v48, v44);
  v50(v46, v48);
  return (v50)(v47, v48);
}

uint64_t sub_32588@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("System Files", 0xCuLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

uint64_t sub_32758@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("System files improve ProductFamilyName functionality without changing the software version. ProductFamilyName may reserve storage space to ensure updates can be installed.", 0xABuLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

uint64_t sub_32928@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("Automatically Install", 0x15uLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

void sub_32AF8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 shouldDisableRSR];
  _objc_release(v2);
}

__int128 *sub_32BAC(char a1)
{
  v11 = a1 & 1;
  memcpy(__dst, v1, sizeof(__dst));
  v10 = v1;
  if (a1)
  {
    memcpy(v7, __dst, sizeof(v7));
    sub_25A50(1u, 1, 0);
    memcpy(v6, __dst, sizeof(v6));
    sub_25A50(1u, 2, 0);
    memcpy(v5, __dst, sizeof(v5));
    v2 = sub_25A44();
    return sub_25A50(1u, 0, v2 & 1);
  }

  else
  {
    sub_18F68(__dst, v9);
    memcpy(v8, __dst, sizeof(v8));
    sub_1E434(1);
    result = v8;
    sub_180B8(v8);
  }

  return result;
}

uint64_t sub_32CF8()
{

  return swift_deallocObject();
}

__int128 *sub_32DC8(char a1)
{
  v12 = a1 & 1;
  memcpy(__dst, v1, sizeof(__dst));
  v11 = v1;
  if (a1)
  {
    memcpy(v9, __dst, sizeof(v9));
    sub_25A50(1u, 1, 0);
    memcpy(v8, __dst, sizeof(v8));
    sub_25A50(1u, 2, 0);
    memcpy(v7, __dst, sizeof(v7));
    v4 = AutomaticUpdatesView.mobileStatefulManager.getter();
    v5 = [v4 client];
    _objc_release(v4);
    [v5 autoScanAndDownloadIfAvailable:0];
    _objc_release(v5);
  }

  memcpy(v10, __dst, sizeof(v10));
  v2 = sub_25A44();
  return sub_25A50(a1 & 1, 0, v2 & 1);
}

void sub_32F80(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 previousUserSpecifiedAutomaticUpdateEnabled];
  _objc_release(v2);
}

void sub_32FEC(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setPreviousUserSpecifiedAutomaticUpdateEnabled:v3 & 1];
  _objc_release(v2);
}

uint64_t sub_330E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 232) = a4;
  *(v4 + 208) = v4;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  *(v4 + 304) = 0;
  v5 = sub_50DB0();
  *(v4 + 240) = v5;
  *(v4 + 248) = *(v5 - 8);
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 216) = a4;

  return _swift_task_switch(sub_331F8);
}

uint64_t sub_331F8()
{
  v1 = v0[29];
  v0[26] = v0;
  memcpy(v0 + 2, v1, 0x40uLL);
  sub_51410();
  v0[34] = sub_51400();
  sub_513F0();

  return _swift_task_switch(sub_332AC);
}

uint64_t sub_332AC()
{
  *(v0 + 208) = v0;
  *(v0 + 280) = sub_184E0();

  v1 = swift_task_alloc();
  *(v3 + 288) = v1;
  *v1 = *(v3 + 208);
  v1[1] = sub_33380;

  return ReactiveUIManager.unscheduleTargetedUpdate(delegate:)(0);
}

uint64_t sub_33380(char a1)
{
  v5 = *v2;
  *(v5 + 208) = *v2;
  *(v5 + 305) = a1;
  *(v5 + 296) = v1;

  if (v1)
  {
    v3 = sub_34138;
  }

  else
  {

    v3 = sub_33508;
  }

  return _swift_task_switch(v3);
}

uint64_t sub_33508(uint64_t a1)
{
  v42 = v1;
  v2 = *(v1 + 305);
  v16 = v2;
  __src = *(v1 + 232);
  *(v1 + 208) = v1;
  *(v1 + 304) = v2 & 1;
  sub_50D90();
  sub_18F68(__src, v1 + 144);
  v17 = swift_allocObject();
  memcpy((v17 + 16), __src, 0x40uLL);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  v35 = sub_50DA0();
  v36 = sub_51490();
  v25 = swift_allocObject();
  *(v25 + 16) = 32;
  v26 = swift_allocObject();
  *(v26 + 16) = 8;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_403D8;
  *(v18 + 24) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_404C0;
  *(v19 + 24) = v18;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_4050C;
  *(v27 + 24) = v19;
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_34D78;
  *(v20 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_4060C;
  *(v30 + 24) = v20;
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_4040C;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_4070C;
  *(v23 + 24) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_40758;
  *(v24 + 24) = v23;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_407A4;
  *(v33 + 24) = v24;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v34 = v3;

  *v34 = sub_40444;
  v34[1] = v25;

  v34[2] = sub_40478;
  v34[3] = v26;

  v34[4] = sub_40558;
  v34[5] = v27;

  v34[6] = sub_40590;
  v34[7] = v28;

  v34[8] = sub_405C4;
  v34[9] = v29;

  v34[10] = sub_40658;
  v34[11] = v30;

  v34[12] = sub_40690;
  v34[13] = v31;

  v34[14] = sub_406C4;
  v34[15] = v32;

  v34[16] = sub_407F0;
  v34[17] = v33;
  sub_1489C();

  if (os_log_type_enabled(v35, v36))
  {
    v4 = v14[37];
    buf = sub_514F0();
    v10 = sub_23FC(&qword_64650, &unk_53930);
    v12 = sub_121D4(0, v10, v10);
    v13 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v37 = buf;
    v38 = v12;
    v39 = v13;
    sub_12228(2, &v37);
    sub_12228(3, &v37);
    v40 = sub_40444;
    v41 = v25;
    sub_1223C(&v40, &v37, &v38, &v39);
    if (v4)
    {
    }

    v40 = sub_40478;
    v41 = v26;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_40558;
    v41 = v27;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_40590;
    v41 = v28;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_405C4;
    v41 = v29;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_40658;
    v41 = v30;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_40690;
    v41 = v31;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_406C4;
    v41 = v32;
    sub_1223C(&v40, &v37, &v38, &v39);
    v40 = sub_407F0;
    v41 = v33;
    sub_1223C(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_0, v35, v36, "%s.%s: unscheduleTargetedUpdate result: %{BOOL}d", buf, 0x1Cu);
    sub_12288(v12, 0, v10);
    sub_12288(v13, 2, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v8 = v14[33];
  v9 = v14[30];
  v7 = v14[31];
  _objc_release(v35);
  (*(v7 + 8))(v8, v9);

  v6 = *(v14[26] + 8);

  return v6();
}

uint64_t sub_34138()
{
  v38 = v0;
  v13 = v0[37];
  __src = v0[29];
  v0[26] = v0;

  swift_errorRetain();
  v0[28] = v13;
  sub_50D90();
  sub_18F68(__src, (v0 + 10));
  v14 = swift_allocObject();
  memcpy((v14 + 16), __src, 0x40uLL);
  swift_errorRetain();
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  sub_28D78();

  v31 = sub_50DA0();
  v32 = sub_514A0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_3FF98;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_40090;
  *(v16 + 24) = v15;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_400DC;
  *(v23 + 24) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_34DC0;
  *(v17 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_401DC;
  *(v26 + 24) = v17;
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_3FFE0;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_402DC;
  *(v20 + 24) = v19;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_40328;
  *(v29 + 24) = v20;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v30 = v1;

  *v30 = sub_40014;
  v30[1] = v21;

  v30[2] = sub_40048;
  v30[3] = v22;

  v30[4] = sub_40128;
  v30[5] = v23;

  v30[6] = sub_40160;
  v30[7] = v24;

  v30[8] = sub_40194;
  v30[9] = v25;

  v30[10] = sub_40228;
  v30[11] = v26;

  v30[12] = sub_40260;
  v30[13] = v27;

  v30[14] = sub_40294;
  v30[15] = v28;

  v30[16] = sub_40374;
  v30[17] = v29;
  sub_1489C();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_514F0();
    v7 = sub_23FC(&qword_64650, &unk_53930);
    v9 = sub_121D4(1, v7, v7);
    v10 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = buf;
    v34 = v9;
    v35 = v10;
    sub_12228(2, &v33);
    sub_12228(3, &v33);
    v36 = sub_40014;
    v37 = v21;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_40048;
    v37 = v22;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_40128;
    v37 = v23;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_40160;
    v37 = v24;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_40194;
    v37 = v25;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_40228;
    v37 = v26;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_40260;
    v37 = v27;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_40294;
    v37 = v28;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_40374;
    v37 = v29;
    sub_1223C(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_0, v31, v32, "%s.%s: Failed to unschedule targeted update: %@", buf, 0x20u);
    sub_12288(v9, 1, v7);
    sub_12288(v10, 2, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v5 = v11[32];
  v6 = v11[30];
  v4 = v11[31];
  _objc_release(v31);
  (*(v4 + 8))(v5, v6);

  v2 = *(v11[26] + 8);

  return v2();
}

uint64_t sub_34E6C(const void *a1, char a2, char a3)
{
  v15 = a1;
  __dst[72] = a2 & 1;
  __dst[64] = a3 & 1;
  memcpy(__dst, a1, 0x40uLL);
  v9 = sub_187A0();
  KeyPath = swift_getKeyPath();
  v13 = a2;
  (*(*v9 + 208))(&v13, KeyPath);

  if (a3)
  {
    memcpy(v12, a1, sizeof(v12));
    v6 = sub_187A0();
    v5 = swift_getKeyPath();
    v11 = a2;
    (*(*v6 + 208))(&v11, v5);
  }

  return result;
}

void sub_35068(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 previousUserSpecifiedAutoInstallSecurityResponse];
  _objc_release(v2);
}

void sub_350D4(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setPreviousUserSpecifiedAutoInstallSecurityResponse:v3 & 1];
  _objc_release(v2);
}

void sub_35188(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *a1;
  *a1;
  *a2 = [v2 autoInstallSystemAndDataFiles];
  _objc_release(v2);
}

void sub_351F4(char *a1, id *a2)
{
  v3 = *a1;
  v2 = *a2;
  *a2;
  [v2 setAutoInstallSystemAndDataFiles:v3 & 1];
  _objc_release(v2);
}

uint64_t sub_35320()
{
  memset(__b, 0, sizeof(__b));
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  __b[0] = *v0;
  LOBYTE(__b[1]) = v1 & 1;
  __b[2] = v2;
  LOBYTE(__b[3]) = v3 & 1;
  __b[4] = v4;
  LOBYTE(__b[5]) = v5 & 1;
  LOBYTE(__b[6]) = v6;
  __b[7] = v7;
  v9 = [objc_opt_self() sharedDefaults];
  v10 = [v9 isNeRDProfileStatusInstalled];
  _objc_release(v9);
  return v10;
}

BOOL sub_35478(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else if (a1 == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else if (a2 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

BOOL sub_35740(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

void *sub_359C4@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  swift_getKeyPath();
  sub_50E00();
  __b[0] = v8;
  LOBYTE(__b[1]) = v9 & 1;
  swift_getKeyPath();
  sub_50E00();
  __b[2] = v6;
  LOBYTE(__b[3]) = v7 & 1;
  swift_getKeyPath();
  sub_50E00();
  __b[4] = v4;
  LOBYTE(__b[5]) = v5 & 1;
  LOBYTE(__b[6]) = sub_1E364(0);
  __b[7] = v1;
  return memcpy(a1, __b, 0x40uLL);
}

uint64_t sub_35ACC()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_35B08@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  sub_50E00();
  *(a3 + 16) = a1;
  *(a3 + 24) = a2 & 1;
  swift_getKeyPath();
  sub_50E00();
  result = sub_1E364(0);
  *(a3 + 48) = result;
  *(a3 + 56) = v4;
  return result;
}

uint64_t sub_35BF4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

void *sub_35D20(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  v2;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_3604C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v23 = a6;
  v25 = a1;
  v19 = 0;
  v29 = a6;
  v20 = *(a6 - 8);
  v21 = v20;
  __chkstk_darwin(0);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8();
  v26 = sub_51600() >> 3;
  v27 = *v25;
  v28 = v27;
  if (v26 < 0)
  {
    result = sub_51630();
    __break(1u);
  }

  else
  {
    v18 = v27 + v26;
    v17 = &v17;
    v9 = __chkstk_darwin(v22);
    v15 = v28;
    v16 = v10;
    sub_36288(v9, sub_40CD4, &v14, v11, &type metadata for Never, &type metadata for () + 8, v12, &type metadata for ());
    (*(v21 + 8))(v22, v23);
    result = v17;
    *v25 = v18;
  }

  return result;
}

uint64_t sub_36288@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v11[2] = a8;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v17 = a7;
  v18 = "Fatal error";
  v19 = "UnsafeRawBufferPointer with negative count";
  v20 = "Swift/UnsafeRawBufferPointer.swift";
  v28 = a4;
  v27 = a5;
  v26 = a6;
  v21 = *(a5 - 8);
  v22 = a5 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v24 = v11 - v23;
  v25 = *(*(v8 - 8) + 64);
  if (v25 < 0)
  {
    result = sub_51630();
    __break(1u);
  }

  else
  {
    v9 = v16;
    result = v13(v12, v12 + v25, v24);
    v11[1] = v9;
    if (v9)
    {
      return (*(v21 + 32))(v17, v24, v15);
    }
  }

  return result;
}

uint64_t sub_36564@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_3662C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_366A0()
{
  v2 = qword_646D8;
  if (!qword_646D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_646D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_36718()
{

  return swift_deallocObject();
}

uint64_t sub_36B88(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_36BFC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_36C6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_36CDC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_36D4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_36DBC()
{

  return swift_deallocObject();
}

uint64_t sub_3722C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_372A0()
{

  return swift_deallocObject();
}

uint64_t sub_37710(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_37784()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_377E4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_378B4;

  return sub_330E0(a1, v6, v7, v1 + 32);
}

uint64_t sub_378B4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_379DC()
{

  return swift_deallocObject();
}

uint64_t sub_37CC0()
{

  return swift_deallocObject();
}

unint64_t sub_37D20()
{
  v2 = qword_64728;
  if (!qword_64728)
  {
    sub_6320(&qword_64720, &qword_52320);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64728);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_37DA8()
{
  v2 = qword_64738;
  if (!qword_64738)
  {
    sub_6320(&qword_646E8, &qword_522E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64738);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_37E30()
{
  v2 = qword_64740;
  if (!qword_64740)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64740);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_37ED4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_37F44()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_37FC4()
{
  v2 = qword_64758;
  if (!qword_64758)
  {
    sub_6320(&qword_64748, &qword_52330);
    sub_38068();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64758);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38068()
{
  v2 = qword_64760;
  if (!qword_64760)
  {
    sub_6320(&qword_64768, &qword_52340);
    sub_38110();
    sub_38198();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64760);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38110()
{
  v2 = qword_64770;
  if (!qword_64770)
  {
    sub_6320(&qword_64778, &qword_52348);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64770);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38198()
{
  v2 = qword_64780;
  if (!qword_64780)
  {
    sub_6320(&qword_64788, &unk_52350);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64780);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38220()
{
  v2 = qword_64790;
  if (!qword_64790)
  {
    sub_6320(&qword_64750, &qword_52338);
    sub_382C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64790);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_382C4()
{
  v2 = qword_64798;
  if (!qword_64798)
  {
    sub_6320(&qword_647A0, qword_53410);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64798);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_38360()
{

  return swift_deallocObject();
}

unint64_t sub_383D8()
{
  v2 = qword_647C8;
  if (!qword_647C8)
  {
    sub_6320(&qword_647B0, &qword_52368);
    sub_38470();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_647C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38470()
{
  v2 = qword_647D0;
  if (!qword_647D0)
  {
    sub_6320(&qword_647D8, &qword_52380);
    sub_38514();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_647D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38514()
{
  v2 = qword_647E0;
  if (!qword_647E0)
  {
    sub_6320(&qword_647E8, &qword_52388);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_647E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3859C()
{
  v2 = qword_647F0;
  if (!qword_647F0)
  {
    sub_6320(&qword_647B8, &qword_52370);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_647F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38624()
{
  v2 = qword_647F8;
  if (!qword_647F8)
  {
    sub_6320(&qword_647C0, &qword_52378);
    sub_386CC();
    sub_38470();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_647F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_386CC()
{
  v2 = qword_64800;
  if (!qword_64800)
  {
    sub_6320(&qword_64808, &qword_52390);
    sub_3876C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64800);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3876C()
{
  v2 = qword_64810;
  if (!qword_64810)
  {
    sub_6320(&qword_64818, &qword_52398);
    sub_38470();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64810);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3880C()
{
  v2 = qword_64820;
  if (!qword_64820)
  {
    sub_6320(&qword_647A8, &qword_52360);
    sub_383D8();
    sub_3859C();
    sub_38624();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64820);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_388CC()
{
  v2 = qword_64848;
  if (!qword_64848)
  {
    sub_6320(&qword_64840, &qword_523B8);
    sub_38974();
    sub_389FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64848);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38974()
{
  v2 = qword_64850;
  if (!qword_64850)
  {
    sub_6320(&qword_64858, &qword_523C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64850);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_389FC()
{
  v2 = qword_64860;
  if (!qword_64860)
  {
    sub_6320(&qword_64868, qword_523C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64860);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_38A84()
{
  v2 = qword_64870;
  if (!qword_64870)
  {
    sub_6320(&qword_64828, &qword_523A0);
    sub_6320(&qword_64838, &qword_523B0);
    sub_6320(&qword_64840, &qword_523B8);
    sub_388CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64870);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_38BD0()
{

  return swift_deallocObject();
}

uint64_t sub_38E94()
{

  return swift_deallocObject();
}

uint64_t sub_39304(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_39390()
{

  return swift_deallocObject();
}

uint64_t sub_39800(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_3988C()
{

  return swift_deallocObject();
}

uint64_t sub_39CFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_39DB4()
{

  return swift_deallocObject();
}

uint64_t sub_3A224(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_3A298()
{

  return swift_deallocObject();
}

uint64_t sub_3A544()
{

  return swift_deallocObject();
}

uint64_t sub_3A7F0()
{

  return swift_deallocObject();
}

uint64_t sub_3AA9C()
{

  return swift_deallocObject();
}

uint64_t sub_3AD48(uint64_t a1)
{
  v1 = sub_23FC(&qword_64858, &qword_523C0);
  (*(*(v1 - 8) + 8))(a1);
  sub_23FC(&qword_64840, &qword_523B8);

  return a1;
}

unint64_t sub_3ADEC()
{
  v2 = qword_64EF8;
  if (!qword_64EF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64EF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3AE68()
{
  v2 = qword_64F00[0];
  if (!qword_64F00[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_64F00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3AF6C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 64))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*(a1 + 56) < 0x100000000uLL)
      {
        v4 = *(a1 + 56);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_3B0B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_3B2C0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_3B428(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_3B64C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_3B7B4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_3B9EC()
{
  sub_6320(&qword_64710, &qword_52310);
  sub_6320(&qword_64708, &qword_52308);
  sub_6320(&qword_64700, &qword_52300);
  sub_6320(&qword_646F8, &qword_522F8);
  sub_6320(&qword_64748, &qword_52330);
  sub_6320(&qword_64750, &qword_52338);
  sub_6320(&qword_646F0, &qword_522F0);
  sub_6320(&qword_646E8, &qword_522E8);
  sub_37DA8();
  swift_getOpaqueTypeConformance2();
  sub_37E30();
  swift_getOpaqueTypeConformance2();
  sub_37FC4();
  sub_38220();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3BC90()
{
  sub_6320(&qword_64838, &qword_523B0);
  sub_6320(&qword_64840, &qword_523B8);
  sub_388CC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_3BD8C()
{
  v2 = qword_65090[0];
  if (!qword_65090[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_65090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_3BE20()
{
  v2 = qword_65120[0];
  if (!qword_65120[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_65120);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3BE9C(uint64_t a1)
{
  sub_3BEE4(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_3BEE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_3BF28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_3BF78()
{
  v2 = qword_64878;
  if (!qword_64878)
  {
    sub_50F50();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64878);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3BFF8(uint64_t a1)
{
  sub_3BEE4(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_3C04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    return sub_3C0DC(a1, a2, a3, a4, a5, a6);
  }

  sub_3BF28(a1, a2, a3 & 1);
}

uint64_t sub_3C160(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_3BF28(a1, a2, a3 & 1);
}

uint64_t sub_3C234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
    return sub_3C2C4(a1, a2, a3, a4, a5, a6);
  }

  sub_3BEE4(a1, a2, a3 & 1);
}

uint64_t sub_3C348(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_3BEE4(a1, a2, a3 & 1);
}

uint64_t sub_3C464(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_3BF28(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_3C4CC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_3BEE4(*a1, *(a1 + 8), *(a1 + 16) & 1);
  }

  return a1;
}

unint64_t sub_3C530()
{
  v2 = qword_64890;
  if (!qword_64890)
  {
    sub_6320(&qword_64880, &qword_52E00);
    sub_6320(&qword_64838, &qword_523B0);
    sub_6320(&qword_64840, &qword_523B8);
    sub_388CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_38514();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64890);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3C678(uint64_t a1)
{
  v4 = sub_23FC(&qword_64880, &qword_52E00);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_23FC(&qword_64830, &qword_523A8);
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

char *sub_3C74C(char *a1, char *a2)
{
  v7 = sub_23FC(&qword_64880, &qword_52E00);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = sub_23FC(&qword_64888, &qword_52E08);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_23FC(&qword_64830, &qword_523A8);
    (*(*(v2 - 8) + 32))(a2, a1);
    *&a2[*(v7 + 36)] = *&a1[*(v7 + 36)];
    (*(v8 + 56))();
  }

  return a2;
}

char *sub_3C8A8(char *a1, char *a2)
{
  v9 = sub_23FC(&qword_64880, &qword_52E00);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(a1, 1))
  {
    v3 = sub_23FC(&qword_64888, &qword_52E08);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_23FC(&qword_64830, &qword_523A8);
    (*(*(v2 - 8) + 16))(a2, a1);
    v5 = *(v9 + 36);
    v6 = *&a1[v5];

    *&a2[v5] = v6;
    (*(v10 + 56))();
  }

  return a2;
}

unint64_t sub_3CA1C()
{
  v2 = qword_64898;
  if (!qword_64898)
  {
    sub_6320(&qword_64888, &qword_52E08);
    sub_3C530();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64898);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3CAB4(uint64_t a1)
{
  v1 = sub_23FC(&qword_64830, &qword_523A8);
  (*(*(v1 - 8) + 8))(a1);
  sub_23FC(&qword_64880, &qword_52E00);

  return a1;
}

uint64_t sub_3CB44(uint64_t a1, uint64_t a2)
{
  v2 = sub_23FC(&qword_64830, &qword_523A8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(sub_23FC(&qword_64880, &qword_52E00) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_3CBF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_3CC4C(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_3CD08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_3CD60(result, a2, a3, a4);
  }

  return result;
}

char *sub_3CE18(char *a1, char *a2)
{
  v11 = sub_23FC(&qword_648B0, &qword_52E20);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v11 - 8) + 64));
  }

  else
  {
    sub_23FC(&qword_648B8, &qword_52E28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_23FC(&qword_648A8, &qword_52E18);
      v6 = *(*(v5 - 8) + 32);
      v6(a2, a1);
      v4 = sub_23FC(&qword_648C8, &unk_52E38);
      (v6)(&a2[*(v4 + 48)], &a1[*(v4 + 48)], v5);
      (v6)(&a2[*(v4 + 64)], &a1[*(v4 + 64)], v5);
    }

    else
    {
      v7 = sub_23FC(&qword_648A8, &qword_52E18);
      v8 = *(*(v7 - 8) + 32);
      v8(a2, a1);
      v2 = sub_23FC(&qword_648C0, &qword_52E30);
      (v8)(&a2[*(v2 + 48)], &a1[*(v2 + 48)], v7);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

char *sub_3D074(char *a1, char *a2)
{
  v11 = sub_23FC(&qword_648B0, &qword_52E20);
  if (swift_getEnumCaseMultiPayload())
  {
    memcpy(a2, a1, *(*(v11 - 8) + 64));
  }

  else
  {
    sub_23FC(&qword_648B8, &qword_52E28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = sub_23FC(&qword_648A8, &qword_52E18);
      v6 = *(*(v5 - 8) + 16);
      v6(a2, a1);
      v4 = sub_23FC(&qword_648C8, &unk_52E38);
      (v6)(&a2[*(v4 + 48)], &a1[*(v4 + 48)], v5);
      (v6)(&a2[*(v4 + 64)], &a1[*(v4 + 64)], v5);
    }

    else
    {
      v7 = sub_23FC(&qword_648A8, &qword_52E18);
      v8 = *(*(v7 - 8) + 16);
      v8(a2, a1);
      v2 = sub_23FC(&qword_648C0, &qword_52E30);
      (v8)(&a2[*(v2 + 48)], &a1[*(v2 + 48)], v7);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_3D2D0(uint64_t a1)
{
  sub_23FC(&qword_648B0, &qword_52E20);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_23FC(&qword_648B8, &qword_52E28);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = sub_23FC(&qword_648A8, &qword_52E18);
      v5 = *(*(v4 - 8) + 8);
      v5(a1);
      v3 = sub_23FC(&qword_648C8, &unk_52E38);
      (v5)(a1 + *(v3 + 48), v4);
      (v5)(a1 + *(v3 + 64), v4);
    }

    else
    {
      v6 = sub_23FC(&qword_648A8, &qword_52E18);
      v7 = *(*(v6 - 8) + 8);
      v7(a1);
      v1 = sub_23FC(&qword_648C0, &qword_52E30);
      (v7)(a1 + *(v1 + 48), v6);
    }
  }

  return a1;
}

uint64_t sub_3D490()
{

  return swift_deallocObject();
}

unint64_t sub_3D4F0()
{
  v2 = qword_648D0;
  if (!qword_648D0)
  {
    sub_6320(&qword_648A8, &qword_52E18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_648D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3D578()
{

  return swift_deallocObject();
}

uint64_t sub_3D5D8()
{

  return swift_deallocObject();
}

uint64_t sub_3D638(uint64_t a1, uint64_t a2)
{
  v4 = sub_23FC(&qword_648A8, &qword_52E18);
  v5 = *(*(v4 - 8) + 16);
  v5(a2, a1);
  v6 = sub_23FC(&qword_648C8, &unk_52E38);
  (v5)(a2 + *(v6 + 48), a1 + *(v6 + 48), v4);
  (v5)(a2 + *(v6 + 64), a1 + *(v6 + 64), v4);
  return a2;
}

uint64_t sub_3D730(uint64_t a1)
{
  v3 = sub_23FC(&qword_648A8, &qword_52E18);
  v4 = *(*(v3 - 8) + 8);
  v4(a1);
  v2 = sub_23FC(&qword_648C8, &unk_52E38);
  (v4)(a1 + *(v2 + 48), v3);
  (v4)(a1 + *(v2 + 64), v3);
  return a1;
}

uint64_t sub_3D80C(uint64_t a1)
{
  sub_23FC(&qword_648B8, &qword_52E28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_23FC(&qword_648A8, &qword_52E18);
    v5 = *(*(v4 - 8) + 8);
    v5(a1);
    v3 = sub_23FC(&qword_648C8, &unk_52E38);
    (v5)(a1 + *(v3 + 48), v4);
    (v5)(a1 + *(v3 + 64), v4);
  }

  else
  {
    v6 = sub_23FC(&qword_648A8, &qword_52E18);
    v7 = *(*(v6 - 8) + 8);
    v7(a1);
    v1 = sub_23FC(&qword_648C0, &qword_52E30);
    (v7)(a1 + *(v1 + 48), v6);
  }

  return a1;
}

uint64_t sub_3D9A0()
{

  return swift_deallocObject();
}

uint64_t sub_3DA00()
{

  return swift_deallocObject();
}

uint64_t sub_3DA60(uint64_t a1, uint64_t a2)
{
  v5 = sub_23FC(&qword_648A8, &qword_52E18);
  v6 = *(*(v5 - 8) + 16);
  v6(a2, a1);
  v2 = sub_23FC(&qword_648C0, &qword_52E30);
  (v6)(a2 + *(v2 + 48), a1 + *(v2 + 48), v5);
  return a2;
}

uint64_t sub_3DB20(uint64_t a1)
{
  v3 = sub_23FC(&qword_648A8, &qword_52E18);
  v4 = *(*(v3 - 8) + 8);
  v4(a1);
  v1 = sub_23FC(&qword_648C0, &qword_52E30);
  (v4)(a1 + *(v1 + 48), v3);
  return a1;
}

uint64_t sub_3DC60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_3DCC0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3DD90;

  return sub_293D0(a1, v6, v7, v1 + 32);
}

uint64_t sub_3DD90()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_3DEE8()
{

  return swift_deallocObject();
}

void sub_3E2DC(uint64_t *a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = (a4)(a1, a2, a3);
  v7 = *a1;
  v8;
  sub_51510();
  if (v8)
  {
    _objc_release(v8);
  }

  *a1 = v7 + 8;
  v4 = *a2;
  if (*a2)
  {
    v8;
    *v4 = v8;
    _objc_release(v8);
    *a2 = v4 + 1;
  }

  else
  {
    _objc_release(v8);
  }
}

uint64_t sub_3E4AC()
{

  return swift_deallocObject();
}

uint64_t sub_3E91C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_3E990()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_3E9F0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3EAC0;

  return sub_23C60(a1, v6, v7, v1 + 32);
}

uint64_t sub_3EAC0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_3EC18()
{

  return swift_deallocObject();
}

uint64_t sub_3F058()
{

  return swift_deallocObject();
}

uint64_t sub_3F4C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

unint64_t sub_3F53C()
{
  v2 = qword_648F8;
  if (!qword_648F8)
  {
    sub_6320(&qword_648D8, &qword_52E68);
    sub_38A84();
    sub_38514();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_648F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3F5E4(uint64_t a1)
{
  v3 = sub_23FC(&qword_648E0, &qword_52E70);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_3F698(const void *a1, void *a2)
{
  v6 = sub_23FC(&qword_648E0, &qword_52E70);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_23FC(&qword_648E8, &qword_52E78);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_3F7CC(const void *a1, void *a2)
{
  v6 = sub_23FC(&qword_648E0, &qword_52E70);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_23FC(&qword_648E8, &qword_52E78);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_3F900()
{
  v2 = qword_64900;
  if (!qword_64900)
  {
    sub_6320(&qword_648E8, &qword_52E78);
    sub_6320(&qword_648D8, &qword_52E68);
    sub_3F53C();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64900);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_3F9E8(uint64_t a1)
{
  v1 = sub_23FC(&qword_64828, &qword_523A0);
  (*(*(v1 - 8) + 8))(a1);
  sub_23FC(&qword_648D8, &qword_52E68);

  return a1;
}

uint64_t sub_3FAC0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3FBB4;

  return sub_12634(a1, v6);
}

uint64_t sub_3FBB4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_3FD24(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_3FE18;

  return sub_12634(a1, v6);
}

uint64_t sub_3FE18()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_3FF40()
{

  return swift_deallocObject();
}

uint64_t sub_40380()
{

  return swift_deallocObject();
}

uint64_t sub_407F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_40A28(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_40C60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

uint64_t sub_40EFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v4 = sub_366A0();

  return sub_3604C(a1, a2, a3, v8, v9, &type metadata for Int32, v4);
}

void *sub_40F70(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void *sub_40FA8(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

id sub_410A4()
{
  sub_410EC();
  _s11LookupClassCMa();
  result = sub_41178();
  qword_651C0 = result;
  return result;
}

unint64_t sub_410EC()
{
  v2 = qword_64908;
  if (!qword_64908)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_64908);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_41178()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass:ObjCClassFromMetadata];

  return v0;
}

uint64_t *sub_411D0()
{
  if (qword_651B8 != -1)
  {
    swift_once();
  }

  return &qword_651C0;
}

void *static NSBundle.softwareUpdateUISettingsPlugin.getter()
{
  v1 = *sub_411D0();
  v1;
  return v1;
}

void *sub_41270()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v2;
  swift_endAccess();
  return v2;
}

void sub_412D4(void *a1)
{
  a1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

void sub_41408(void *a1@<X0>, void *a2@<X8>)
{
  a1;
  *a2 = a1;
  _objc_release(a1);
}

void *sub_41460()
{
  swift_getKeyPath();
  (*(*v0 + 224))();

  return sub_41270();
}

uint64_t sub_414DC@<X0>(void **a2@<X8>)
{

  *a2 = sub_41460();
}

uint64_t sub_41538(id *a1, void *a2)
{
  v3 = *a1;
  *a1;

  sub_415B4(v3);
}

void sub_415B4(void *a1)
{
  v15 = a1;
  v14 = 0;
  v19 = 0;
  v12 = 0;
  v20 = a1;
  v17 = sub_41270();
  v16 = sub_4407C();
  sub_440E0();
  v18 = sub_44008(v17, v15, v16);

  if (v18)
  {
    v1 = v13;
    v2 = v12;
    KeyPath = swift_getKeyPath();
    v8 = KeyPath;

    v3 = v15;
    v10 = &v6;
    v4 = __chkstk_darwin(KeyPath);
    (*(*v1 + 232))(v4, sub_44160);
    v11 = v2;

    v7 = v11;
  }

  else
  {
    v5 = v15;
    sub_412D4(v15);
    v7 = v12;
  }
}

void (*sub_417E4(void *a1))(uint64_t *a1, char a2)
{
  v7 = sub_4418C(0x40uLL, 57511);
  *a1 = v7;
  v7[5] = v1;
  v6 = sub_509F0();
  v4 = *(v6 - 8);
  v5 = sub_4418C(*(v4 + 64), 57511);
  v7[6] = v5;
  swift_getKeyPath();
  (*(*v1 + 224))();

  (*(v4 + 16))(v5, v3 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar, v6);
  v7[4] = v3;
  swift_getKeyPath();
  sub_441E0();
  sub_509D0();

  (*(v4 + 8))(v5, v6);
  v7[7] = sub_41364();
  return sub_419BC;
}

void sub_419BC(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v3 = *(v6 + 48);
    v2 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_41A78(v2);
    free(v3);
  }

  else
  {
    v5 = *(v6 + 48);
    v4 = *(v6 + 40);
    (*(v6 + 56))(v6, 0);
    sub_41A78(v4);
    free(v5);
  }

  free(v6);
}

uint64_t sub_41A78(uint64_t a1)
{
  v4 = a1;
  v12 = 0;
  v10 = sub_509F0();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v9 = &v2 - v3;
  v12 = v4;
  (*(v7 + 16))(&v2 - v3, v4 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar);
  v5 = &v11;
  v11 = v4;
  KeyPath = swift_getKeyPath();
  sub_441E0();
  sub_509C0();

  return (*(v7 + 8))(v9, v10);
}

uint64_t sub_41BCC@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_registrar;
  v2 = sub_509F0();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_41C40()
{
  sub_50900();
  sub_51650();
  sub_442D4();
  return sub_51460();
}

uint64_t sub_41C90()
{
  v2 = (v0 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_observations);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_41CF8(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_observations);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t ReactiveMobilePreferencesManager.init(wrapping:)(void *a1)
{
  v61 = a1;
  v82 = 0;
  v81 = 0;
  v46 = 0;
  v48 = sub_509F0();
  v10 = *(v48 - 8);
  v11 = v48 - 8;
  v5 = (v10[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v51 = &v4 - v5;
  v82 = __chkstk_darwin(v61);
  v81 = v1;
  v43 = &unk_65000;
  sub_509E0();
  v55 = &unk_65000;
  v8 = OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_observations;
  v6 = sub_50900();
  v7 = sub_51650();
  sub_442D4();
  *(v1 + v8) = sub_51460();
  sub_509E0();
  v61;
  sub_41408(v61, (v1 + 16));
  v80[1] = v62;
  v9 = &unk_52FB0;
  KeyPath = swift_getKeyPath();
  v41 = &unk_52FD8;
  v13 = swift_getKeyPath();
  v12 = swift_getKeyPath();
  v2 = v43[60];
  v45 = v10[2];
  v44 = v10 + 2;
  v45(v51, v62 + v2, v48);
  v47 = sub_441E0();
  v14 = sub_50A00();
  v50 = v10[1];
  v49 = v10 + 1;
  v50(v51, v48);

  v15 = v80;
  v80[0] = v14;
  v16 = &v79;
  v56 = 33;
  v57 = 0;
  swift_beginAccess();
  v59 = sub_23FC(&qword_649C8, qword_53010);
  sub_51470();
  swift_endAccess();
  _objc_release(v80[2]);
  v78[1] = v62;
  v17 = &unk_53038;
  v67 = swift_getKeyPath();
  v19 = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v45(v51, v62 + v43[60], v48);
  v20 = sub_50A00();
  v50(v51, v48);

  v21 = v78;
  v78[0] = v20;
  v22 = &v77;
  swift_beginAccess();
  sub_51470();
  swift_endAccess();
  _objc_release(v78[2]);
  v76[1] = v62;
  v23 = &unk_53090;
  v66 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v45(v51, v62 + v43[60], v48);
  v26 = sub_50A00();
  v50(v51, v48);

  v27 = v76;
  v76[0] = v26;
  v28 = &v75;
  swift_beginAccess();
  sub_51470();
  swift_endAccess();
  _objc_release(v76[2]);
  v74[1] = v62;
  v29 = &unk_530E0;
  v65 = swift_getKeyPath();
  v31 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  v45(v51, v62 + v43[60], v48);
  v32 = sub_50A00();
  v50(v51, v48);

  v33 = v74;
  v74[0] = v32;
  v34 = &v73;
  swift_beginAccess();
  sub_51470();
  swift_endAccess();
  _objc_release(v74[2]);
  v72[1] = v62;
  v35 = &unk_53148;
  v64 = swift_getKeyPath();
  v37 = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v45(v51, v62 + v43[60], v48);
  v38 = sub_50A00();
  v50(v51, v48);

  v39 = v72;
  v72[0] = v38;
  v40 = &v71;
  swift_beginAccess();
  sub_51470();
  swift_endAccess();
  _objc_release(v72[2]);
  v70[1] = v62;
  v42 = &unk_53190;
  v63 = swift_getKeyPath();
  v53 = swift_getKeyPath();
  v52 = swift_getKeyPath();
  v45(v51, v62 + v43[60], v48);
  v54 = sub_50A00();
  v50(v51, v48);

  v58 = v70;
  v70[0] = v54;
  v60 = &v69;
  swift_beginAccess();
  sub_51470();
  swift_endAccess();
  _objc_release(v70[2]);
  _objc_release(v61);
  return v62;
}

BOOL sub_42798(void *a1, void *a2)
{

  sub_23FC(&qword_64B20, &unk_532B8);
  v3 = sub_512D0();

  return (v3 & 1) != 0;
}

uint64_t sub_428BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;

  v9 = v4;
  v7 = *a2;

  (*(*v4 + 200))(&v8, v7);
  *a3 = v8;
}

uint64_t sub_42960(char *a1, uint64_t *a2, uint64_t *a3)
{
  v8 = *a3;

  v7 = *a1;
  v6 = *a2;

  v10 = v6;
  v9 = v7;
  (*(*v6 + 208))(&v9, v8);
}

uint64_t sub_42A04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v16 = a1;
  v23 = 0;
  v21 = 0;
  v5 = *a1;
  v13 = sub_509F0();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v2 = __chkstk_darwin(v16);
  v12 = &v5 - v3;
  v23 = v2;
  v6 = *(v5 + class metadata base offset for KeyPath + 8);
  v22 = v6;
  v21 = v8;
  (*(v10 + 16))(&v5 - v3, v8 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_registrar);
  v7 = &v20;
  v20 = v8;

  v17 = v6;
  v18 = v16;
  KeyPath = swift_getKeyPath();
  sub_441E0();
  sub_509B0();

  (*(v10 + 8))(v12, v13);
  v14 = sub_41460();

  v19 = v14;
  swift_getAtKeyPath();
  _objc_release(v19);
}

BOOL sub_42BF8(void *a1, void *a2, uint64_t a3)
{

  sub_4407C();
  sub_516A0();
  v4 = sub_512D0();

  return (v4 & 1) != 0;
}

uint64_t sub_42CE4(uint64_t a1, uint64_t a2)
{
  sub_4407C();
  sub_516A0();
  return sub_512B0();
}

uint64_t sub_42D4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v8 = a2;
  v13 = *(a2 + a3 - 8);
  v17 = v13;
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v6 - v6;
  v7 = *__chkstk_darwin(a1);

  v16 = v7;
  v4 = v7;
  v15 = v7;
  v14 = *v8;

  (*(*v4 + 192))(v14);
  (*(v9 + 32))(v11, v12, v13);
}

uint64_t sub_42E80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a4;
  v8 = a2;
  v13 = *(a2 + a3 - 8);
  v17 = v13;
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v6 - v6;
  v7 = *__chkstk_darwin(a1);

  v16 = v7;
  v4 = v7;
  v15 = v7;
  v14 = *v8;

  (*(*v4 + 200))(v14);
  (*(v9 + 32))(v11, v12, v13);
}

uint64_t sub_42FB4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v11 = a2;
  v10 = *(a3 + a4 - 8);
  v17 = v10;
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v6 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(a1);
  v12 = &v6 - v6;
  v14 = *v4;

  (*(v7 + 16))(v12, v9, v10);
  v13 = *v11;

  v16 = v13;
  v15 = v13;
  (*(*v13 + 208))(v12, v14);
}

uint64_t sub_430E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v18 = a1;
  v26 = 0;
  v24 = 0;
  v6 = *a1;
  v13 = sub_509F0();
  v10 = *(v13 - 8);
  v11 = v13 - 8;
  v2 = __chkstk_darwin(v18);
  v12 = &v5 - v3;
  v26 = v2;
  v14 = *(v6 + class metadata base offset for WritableKeyPath + 8);
  v25 = v14;
  v24 = v8;
  (*(v10 + 16))(&v5 - v3, v8 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_registrar);
  v7 = &v23;
  v23 = v8;

  v19 = v14;
  v20 = v18;
  KeyPath = swift_getKeyPath();
  sub_441E0();
  sub_509B0();

  (*(v10 + 8))(v12, v13);

  v22 = sub_41460();
  v17 = &v21;
  v16 = swift_readAtKeyPath();
  (*(*(v14 - 8) + 16))(v15);
  v16();
  _objc_release(v22);
}

BOOL sub_43324(void *a1, void *a2, uint64_t a3)
{

  sub_4407C();
  sub_515F0();
  v4 = sub_512D0();

  return (v4 & 1) != 0;
}

uint64_t sub_43410(uint64_t a1, uint64_t a2)
{
  sub_4407C();
  sub_515F0();
  return sub_512B0();
}

uint64_t sub_43478(uint64_t a1, void *a2)
{
  v11 = a1;
  v13 = a2;
  v15 = sub_44560;
  v28 = 0;
  v26 = 0;
  v25 = 0;
  v7 = *a2;
  v6[0] = sub_509F0();
  v8 = *(v6[0] - 8);
  v6[1] = v6[0] - 8;
  v2 = __chkstk_darwin(v11);
  v9 = v6 - v3;
  v28 = v2;
  v10 = *(v7 + class metadata base offset for WritableKeyPath + 8);
  v27 = v10;
  v26 = v4;
  v25 = v12;
  (*(v8 + 16))(v6 - v3, v12 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_registrar);
  v17 = &v24;
  v24 = v12;

  v22 = v10;
  v23 = v13;
  KeyPath = swift_getKeyPath();

  v16 = &v18;
  v19 = v12;
  v20 = v13;
  v21 = v11;
  sub_441E0();
  sub_509A0();

  (*(v8 + 8))(v9, v6[0]);

  return (*(*(v10 - 8) + 8))(v11);
}

uint64_t sub_43700(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v8 = a3;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v9 = *(*a2 + class metadata base offset for WritableKeyPath + 8);
  v18 = v9;
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v5 - v5;
  v17 = a1;
  v16 = __chkstk_darwin(a2);
  v15 = v3;

  (*(v6 + 16))(v10, v8, v9);
  v11 = v14;
  v12 = sub_417E4(v14);
  swift_setAtWritableKeyPath();
  v12();
}

void (*sub_43874(void *a1, void *a2))(void **a1, char a2)
{
  v7 = sub_4418C(0x30uLL, 5827);
  *a1 = v7;
  v7[1] = v2;
  *v7 = a2;
  v3 = *(*a2 + class metadata base offset for WritableKeyPath + 8);
  v7[2] = v3;
  v5 = *(v3 - 8);
  v7[3] = v5;
  v6 = *(v5 + 64);
  v7[4] = sub_4418C(v6, 5827);
  v10 = sub_4418C(v6, 5827);
  v7[5] = v10;

  sub_430E0(a2, v10);
  return sub_439E8;
}

void sub_439E8(void **a1, char a2)
{
  v9 = *a1;
  if (a2)
  {
    v5 = v9[5];
    v6 = v9[4];
    v3 = v9[2];
    v4 = *v9;
    v2 = v9[3];
    (*(v2 + 16))();
    sub_43478(v6, v4);
    (*(v2 + 8))(v5, v3);

    free(v5);
    free(v6);
  }

  else
  {
    v7 = v9[5];
    v8 = v9[4];
    sub_43478(v7, *v9);

    free(v7);
    free(v8);
  }

  free(v9);
}

uint64_t sub_43B08@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar;
  v2 = sub_509F0();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_43B7C(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_509F0();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = __chkstk_darwin(v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + class metadata base offset for KeyPath + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_441E0();
  sub_509B0();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_43CEC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_509F0();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = __chkstk_darwin(v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + class metadata base offset for KeyPath + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_441E0();
  v8 = v22;
  sub_509A0();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

uint64_t sub_43F90(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = sub_51680();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v3 & 1;
}

unint64_t sub_4407C()
{
  v2 = qword_649A8;
  if (!qword_649A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_649A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_440E0()
{
  v2 = qword_649B0;
  if (!qword_649B0)
  {
    sub_4407C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_649B0);
    return WitnessTable;
  }

  return v2;
}

void *sub_4418C(size_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

unint64_t sub_441E0()
{
  v2 = qword_649B8;
  if (!qword_649B8)
  {
    type metadata accessor for ReactiveMobilePreferencesManager(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_649B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ReactiveMobilePreferencesManager(uint64_t a1)
{
  v2 = qword_652A0;
  if (!qword_652A0)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_442D4()
{
  v2 = qword_649C0;
  if (!qword_649C0)
  {
    sub_50900();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_649C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_44384(void *a1, void *a2)
{
  v4 = *a1;

  *a2 = v4;
  return result;
}

void *sub_4441C(void *a1, void *a2)
{
  v4 = *a1;

  result = a1;
  *a2 = v4;
  a2[1] = a1[1];
  return result;
}

void *sub_44470(void *result, void *a2)
{
  *a2 = result[1];
  a2[1] = *result;
  return result;
}

void *sub_444E8(void *a1, void *a2)
{
  v4 = *a1;

  result = a1;
  *a2 = v4;
  a2[1] = a1[1];
  return result;
}

void *sub_4453C(void *result, void *a2)
{
  *a2 = result[1];
  a2[1] = *result;
  return result;
}

uint64_t ReactiveMobilePreferencesManager.deinit()
{
  _objc_release(*(v0 + 16));
  v2 = OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_registrar;
  v3 = sub_509F0();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2);
  sub_44660((v0 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager_observations));
  (v4)(v0 + OBJC_IVAR____TtC36SoftwareUpdateUIMobileSettingsPlugin32ReactiveMobilePreferencesManager___observationRegistrar, v3);
  return v5;
}

uint64_t sub_4474C(uint64_t a1)
{
  updated = sub_509F0();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t dispatch thunk of ReactiveMobilePreferencesManager.subscript.getter()
{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 200))();
}

uint64_t sub_44990()
{

  sub_23FC(&qword_646D0, &qword_52220);
  sub_50DF0();

  return v1;
}

uint64_t sub_44A1C()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_44A58()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_44A9C(uint64_t a1, char a2)
{

  *v2 = a1;
  *(v2 + 8) = a2 & 1;
}

uint64_t sub_44B1C()
{

  sub_23FC(&qword_646C0, &qword_53300);
  sub_50DF0();

  return v1;
}

uint64_t sub_44BA8()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_44BE4()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_44C28(uint64_t a1, char a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
}

uint64_t sub_44CA8()
{

  sub_23FC(&qword_646C8, &qword_53340);
  sub_50DF0();

  return v1;
}

uint64_t sub_44D34()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_44D70()
{
  v2 = *(v0 + 32);

  return v2;
}

uint64_t sub_44DB4(uint64_t a1, char a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
}

uint64_t sub_44E34()
{

  sub_23FC(&qword_64B28, &qword_53378);
  sub_50DF0();

  return v1;
}

uint64_t sub_44EC0()
{
  swift_getKeyPath();
  sub_50E00();
  return v1;
}

uint64_t sub_44EFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = a2;
  v8[1] = a1;
  v13 = sub_50F10();
  v11 = *(v13 - 8);
  v12 = v13 - 8;
  v9 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v13);
  v14 = v8 - v9;
  (*(v11 + 16))(v8 - v9);
  v2 = sub_50EF0();
  v3 = v11;
  v4 = v13;
  v5 = v2;
  v6 = v14;
  *v10 = v5;
  return (*(v3 + 8))(v6, v4);
}

uint64_t sub_45030()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_45074(uint64_t a1, char a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2 & 1;
}

uint64_t sub_45148()
{

  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51140();

  return v1 & 1;
}

uint64_t sub_451D0(char a1)
{
  v7 = 0;
  v8 = a1 & 1;
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);

  v5[0] = v3;
  v6 = v4;
  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51150();
  sub_392C(v5);
}

uint64_t sub_45290()
{

  sub_23FC(&qword_644C0, &qword_51D10);
  sub_51160();

  return v1;
}

uint64_t sub_45330()
{
  v2 = *(v0 + 64);

  return v2 & 1;
}

uint64_t sub_45374(char a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *AutomaticUpdatesNavigationLink.init()@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  swift_getKeyPath();
  sub_50E00();
  __b[0] = v10;
  LOBYTE(__b[1]) = v11 & 1;
  swift_getKeyPath();
  sub_50E00();
  __b[2] = v8;
  LOBYTE(__b[3]) = v9 & 1;
  swift_getKeyPath();
  sub_50E00();
  __b[4] = v6;
  LOBYTE(__b[5]) = v7 & 1;
  swift_getKeyPath();
  sub_50E00();
  __b[6] = v4;
  LOBYTE(__b[7]) = v5 & 1;
  LOBYTE(__b[8]) = sub_450F4(0) & 1;
  __b[9] = v1;
  return memcpy(a1, __b, 0x50uLL);
}

uint64_t AutomaticUpdatesNavigationLink.body.getter@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v26 = &opaque type descriptor for <<opaque return type of View.withSUUIEnvironmentContext(manager:reactivePlatform:reactiveAnalyticsReporter:)>>;
  v27 = sub_45DE8;
  v43 = &opaque type descriptor for <<opaque return type of View.suuiIdentifiable(_:)>>;
  v65 = 0;
  v37 = sub_50C30();
  v34 = *(v37 - 8);
  v35 = v37 - 8;
  v5 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v37);
  v36 = &v5 - v5;
  v30 = sub_23FC(&qword_64588, &qword_533C0);
  v6 = (*(*(v30 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v32 = &v5 - v6;
  v41 = sub_23FC(&qword_64B30, &qword_533C8);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v7 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v40 = &v5 - v7;
  v51 = sub_23FC(&qword_64B38, &qword_533D0);
  v45 = *(v51 - 8);
  v46 = v51 - 8;
  v8 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v51);
  v49 = &v5 - v8;
  v9 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v8);
  v50 = &v5 - v9;
  v65 = &v5 - v9;
  v33 = v66;
  v19 = 80;
  memcpy(v66, v2, sizeof(v66));
  memcpy(__dst, v10, sizeof(__dst));
  v11 = v63;
  sub_359C4(v63);
  v12 = v68;
  v13 = 64;
  memcpy(v68, v11, sizeof(v68));
  v16 = v62;
  memcpy(v62, v68, sizeof(v62));
  KeyPath = swift_getKeyPath();
  memcpy(&v61, v33, v19);
  v3 = sub_44CA8();
  v14 = &v60;
  v60 = v3;
  sub_98E8();
  v17 = &v64;
  sub_51090();
  sub_2224(v14);

  sub_180B8(v16);
  v18 = v69;
  memcpy(v69, v17, v19);
  v23 = v59;
  memcpy(v59, v18, v19);
  memcpy(&v58, v33, v19);
  v22 = sub_44B1C();
  memcpy(&v57, v33, v19);
  v21 = sub_44990();
  memcpy(&v56, v33, v19);
  v20 = sub_44E34();
  v24 = sub_23FC(&qword_64590, &qword_51DB0);
  v25 = sub_9840();
  sub_51030();

  sub_18108(v23);
  sub_1837C(v33, &v55);
  v28 = v54;
  v54[2] = v33;
  v29 = sub_23FC(&qword_64B40, &qword_53400);
  v31 = sub_45DF0();
  v54[6] = v24;
  v54[7] = v25;
  v44 = 1;
  swift_getOpaqueTypeConformance2();
  sub_50E50();
  sub_182A0(v33);
  (*(v34 + 104))(v36, enum case for AccessibilityIdentifiers.autoUpdateButton(_:), v37);
  v42 = sub_45F38();
  sub_50FF0();
  (*(v34 + 8))(v36, v37);
  (*(v38 + 8))(v40, v41);
  v54[4] = v41;
  v54[5] = v42;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_6394(v49, v51, v50);
  v53 = *(v45 + 8);
  v52 = v45 + 8;
  v53(v49, v51);
  (*(v45 + 16))(v49, v50, v51);
  sub_99E8(v49, v51, v47);
  v53(v49, v51);
  return (v53)(v50, v51);
}

uint64_t sub_45B6C@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v16 = __src;
  v13 = 0;
  v15 = sub_47514;
  v12 = sub_46D80;
  v28 = 0;
  __srca = __dst;
  __n = 80;
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v30, __dst, sizeof(v30));
  v23 = sub_23FC(&qword_64B40, &qword_53400);
  v17 = *(v23 - 8);
  v18 = v23 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v16);
  v21 = &v6 - v9;
  v10 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v22 = &v6 - v10;
  v28 = &v6 - v10;
  sub_1837C(v4, &v27);
  v11 = v26;
  v26[2] = v16;
  v14 = sub_23FC(&qword_64B58, &qword_53408);
  sub_45E94();
  sub_50E40();
  sub_182A0(v16);
  v20 = sub_45DF0();
  sub_6394(v21, v23, v22);
  v25 = *(v17 + 8);
  v24 = v17 + 8;
  v25(v21, v23);
  (*(v17 + 16))(v21, v22, v23);
  sub_99E8(v21, v23, v19);
  v25(v21, v23);
  return (v25)(v22, v23);
}

unint64_t sub_45DF0()
{
  v2 = qword_64B48;
  if (!qword_64B48)
  {
    sub_6320(&qword_64B40, &qword_53400);
    sub_45E94();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64B48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_45E94()
{
  v2 = qword_64B50;
  if (!qword_64B50)
  {
    sub_6320(&qword_64B58, &qword_53408);
    sub_382C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64B50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_45F38()
{
  v2 = qword_64B60;
  if (!qword_64B60)
  {
    sub_6320(&qword_64B30, &qword_533C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64B60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_45FC0@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  v27 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  AutomaticUpdatesNavigationLink.automaticUpdatesText.getter(v17);
  v14[0] = v17[0];
  v14[1] = v17[1];
  v14[2] = v17[2];
  v14[3] = v17[3];
  v15 = v18;
  v16 = v19 & 1;
  v10 = sub_23FC(&qword_64B58, &qword_53408);
  sub_45E94();
  sub_6394(v14, v10, &v21);
  sub_46FC8(v14);
  v3 = v21;
  v4 = v22;
  v5 = v23;
  v6 = v24;
  v7 = v25;
  v8 = v26;
  sub_46F50(v21, v22, v23, v24, v25, v26 & 1);
  v11[0] = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v12 = v7;
  v13 = v8 & 1;
  sub_99E8(v11, v10, a2);
  sub_46FC8(v11);
  return sub_46FC8(&v21);
}

uint64_t AutomaticUpdatesNavigationLink.automaticUpdatesText.getter@<X0>(uint64_t a1@<X8>)
{
  v173 = 0;
  v171 = 0;
  v169 = 0;
  memset(__b, 0, 0x22uLL);
  v166 = 0u;
  v167 = 0u;
  v154 = 0u;
  v155 = 0u;
  v137 = 0u;
  v138 = 0u;
  v125 = 0u;
  v126 = 0u;
  v107 = 0u;
  v108 = 0u;
  v95 = 0u;
  v96 = 0u;
  memcpy(__dst, v1, sizeof(__dst));
  v173 = v1;
  memcpy(&v172[1], __dst, 0x50uLL);
  v75 = sub_44CA8();
  swift_getKeyPath();
  (*(*v75 + 200))(v172);
  v76 = v172[0];
  v171 = v172[0] & 1;

  memcpy(&v170[1], __dst, 0x50uLL);
  v77 = sub_44CA8();
  swift_getKeyPath();
  (*(*v77 + 200))(v170);
  v78 = v170[0];
  v169 = v170[0] & 1;

  if (v78)
  {
    v73 = v76;
  }

  else
  {
    v73 = 0;
  }

  if (v73)
  {
    HIBYTE(v60) = 1;
    sub_51350("On", 2uLL, 1);
    sub_50F60();
    v52 = *sub_411D0();
    v52;
    v104 = 0;
    v105 = 0;
    v106 = v60 & 0x100;
    v100 = sub_50FD0();
    v101 = v2;
    v102 = v3;
    v103 = v4;
    v97[0] = v100;
    v97[1] = v2;
    v98 = v3 & 1;
    v99 = v4;
    sub_6394(v97, &type metadata for Text, &v107);
    sub_3BE9C(v97);
    v53 = v107;
    v54 = v108;
    v55 = *(&v108 + 1);
    sub_3BF28(v107, *(&v107 + 1), v108 & 1);

    v92 = v53;
    v93 = v54 & 1;
    v94 = v55;
    sub_99E8(&v92, &type metadata for Text, &v95);
    sub_3BE9C(&v92);
    v56 = v95;
    v57 = v96;
    v58 = *(&v96 + 1);
    sub_3BF28(v95, *(&v95 + 1), v96 & 1);

    v81 = v56;
    v82 = v57 & 1;
    v83 = v58;
    sub_B2D4(&v81, &type metadata for Text, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, v84);
    sub_3BE9C(&v81);
    v79[0] = v84[0];
    v79[1] = v84[1];
    v79[2] = v84[2];
    v79[3] = v84[3];
    v80 = v85 & 1;
    v59 = sub_23FC(&qword_647A0, qword_53410);
    v5 = sub_382C4();
    sub_B2D4(v79, v59, &type metadata for Text, v5, &protocol witness table for Text, &v86);
    sub_3CDD4(v79);
    v62 = v86;
    v63 = v87;
    v64 = v88;
    v65 = v89;
    v66 = v90;
    v61 = v91;
    sub_46F50(v86, v87, v88, v89, v90, v91 & 1);
    __b[0] = v62;
    __b[1] = v63;
    __b[2] = v64;
    __b[3] = v65;
    LOBYTE(__b[4]) = v66;
    BYTE1(__b[4]) = v61 & 1;
    sub_3BE9C(&v95);
    sub_3BE9C(&v107);
    v67 = v62;
    v68 = v63;
    v69 = v64;
    v70 = v65;
    v71 = v66;
    v72 = v61;
  }

  else
  {
    if (v76)
    {
      HIBYTE(v39) = 1;
      sub_51350("Download Only", 0xDuLL, 1);
      sub_50F60();
      v31 = *sub_411D0();
      v31;
      v134 = 0;
      v135 = 0;
      v136 = v39 & 0x100;
      v130 = sub_50FD0();
      v131 = v6;
      v132 = v7;
      v133 = v8;
      v127[0] = v130;
      v127[1] = v6;
      v128 = v7 & 1;
      v129 = v8;
      sub_6394(v127, &type metadata for Text, &v137);
      sub_3BE9C(v127);
      v32 = v137;
      v33 = v138;
      v34 = *(&v138 + 1);
      sub_3BF28(v137, *(&v137 + 1), v138 & 1);

      v122 = v32;
      v123 = v33 & 1;
      v124 = v34;
      sub_99E8(&v122, &type metadata for Text, &v125);
      sub_3BE9C(&v122);
      v35 = v125;
      v36 = v126;
      v37 = *(&v126 + 1);
      sub_3BF28(v125, *(&v125 + 1), v126 & 1);

      v111 = v35;
      v112 = v36 & 1;
      v113 = v37;
      sub_B418(&v111, &type metadata for Text, &type metadata for Text, &protocol witness table for Text, &protocol witness table for Text, v114);
      sub_3BE9C(&v111);
      v109[0] = v114[0];
      v109[1] = v114[1];
      v109[2] = v114[2];
      v109[3] = v114[3];
      v110 = v115 & 1;
      v38 = sub_23FC(&qword_647A0, qword_53410);
      v9 = sub_382C4();
      sub_B2D4(v109, v38, &type metadata for Text, v9, &protocol witness table for Text, &v116);
      sub_3CDD4(v109);
      v41 = v116;
      v42 = v117;
      v43 = v118;
      v44 = v119;
      v45 = v120;
      v40 = v121;
      sub_46F50(v116, v117, v118, v119, v120, v121 & 1);
      __b[0] = v41;
      __b[1] = v42;
      __b[2] = v43;
      __b[3] = v44;
      LOBYTE(__b[4]) = v45;
      BYTE1(__b[4]) = v40 & 1;
      sub_3BE9C(&v125);
      sub_3BE9C(&v137);
      v46 = v41;
      v47 = v42;
      v48 = v43;
      v49 = v44;
      v50 = v45;
      v51 = v40;
    }

    else
    {
      HIBYTE(v24) = 1;
      sub_51350("Off", 3uLL, 1);
      sub_50F60();
      v16 = *sub_411D0();
      v16;
      v163 = 0;
      v164 = 0;
      v165 = v24 & 0x100;
      v159 = sub_50FD0();
      v160 = v10;
      v161 = v11;
      v162 = v12;
      v156[0] = v159;
      v156[1] = v10;
      v157 = v11 & 1;
      v158 = v12;
      sub_6394(v156, &type metadata for Text, &v166);
      sub_3BE9C(v156);
      v17 = v166;
      v18 = v167;
      v19 = *(&v167 + 1);
      sub_3BF28(v166, *(&v166 + 1), v167 & 1);

      v151 = v17;
      v152 = v18 & 1;
      v153 = v19;
      sub_99E8(&v151, &type metadata for Text, &v154);
      sub_3BE9C(&v151);
      v20 = v154;
      v21 = v155;
      v22 = *(&v155 + 1);
      sub_3BF28(v154, *(&v154 + 1), v155 & 1);

      v142 = v20;
      v143 = v21 & 1;
      v144 = v22;
      v23 = sub_23FC(&qword_647A0, qword_53410);
      v13 = sub_382C4();
      sub_B418(&v142, v23, &type metadata for Text, v13, &protocol witness table for Text, &v145);
      sub_3BE9C(&v142);
      v26 = v145;
      v27 = v146;
      v28 = v147;
      v29 = v148;
      v30 = v149;
      v25 = v150;
      sub_46F50(v145, v146, v147, v148, v149, v150 & 1);
      __b[0] = v26;
      __b[1] = v27;
      __b[2] = v28;
      __b[3] = v29;
      LOBYTE(__b[4]) = v30;
      BYTE1(__b[4]) = v25 & 1;
      sub_3BE9C(&v154);
      sub_3BE9C(&v166);
      v46 = v26;
      v47 = v27;
      v48 = v28;
      v49 = v29;
      v50 = v30;
      v51 = v25;
    }

    v67 = v46;
    v68 = v47;
    v69 = v48;
    v70 = v49;
    v71 = v50;
    v72 = v51;
  }

  v139[0] = v67;
  v139[1] = v68;
  v139[2] = v69;
  v139[3] = v70;
  v140 = v71;
  v141 = v72 & 1;
  v15 = sub_23FC(&qword_64B58, &qword_53408);
  sub_45E94();
  sub_99E8(v139, v15, a1);
  sub_46FC8(v139);
  return sub_46FC8(__b);
}

uint64_t sub_46D80@<X0>(uint64_t a1@<X8>)
{
  v24 = 0u;
  v25 = 0u;
  HIBYTE(v8) = 1;
  sub_51350("Automatic Updates", 0x11uLL, 1);
  sub_50F60();
  v5 = *sub_411D0();
  v5;
  v21 = 0;
  v22 = 0;
  v23 = v8 & 0x100;
  v17 = sub_50FD0();
  v18 = v1;
  v19 = v2;
  v20 = v3;
  v14[0] = v17;
  v14[1] = v1;
  v15 = v2 & 1;
  v16 = v3;
  sub_6394(v14, &type metadata for Text, &v24);
  sub_3BE9C(v14);
  v6 = v24;
  v7 = v25;
  v9 = *(&v25 + 1);
  sub_3BF28(v24, *(&v24 + 1), v25 & 1);

  v11 = v6;
  v12 = v7 & 1;
  v13 = v9;
  sub_99E8(&v11, &type metadata for Text, a1);
  sub_3BE9C(&v11);
  return sub_3BE9C(&v24);
}

uint64_t sub_46F50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_3CC4C(a1, a2, a3, a4);
  }

  sub_3BF28(a1, a2, a3 & 1);
}

uint64_t sub_47010(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_3CD60(a1, a2, a3, a4);
  }

  sub_3BEE4(a1, a2, a3 & 1);
}

uint64_t sub_4715C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (!HIDWORD(*(a1 + 72)))
      {
        v4 = *(a1 + 72);
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_4728C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_4748C()
{
  sub_6320(&qword_64B30, &qword_533C8);
  sub_45F38();
  return swift_getOpaqueTypeConformance2();
}

void *sub_4751C(void *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_47618(uint64_t a1)
{

  sub_50CB0();
  sub_51130();

  return v2;
}

uint64_t sub_47690(uint64_t a1, uint64_t a2)
{

  sub_23FC(&qword_64B68, &qword_537A0);
  sub_51140();

  return v3;
}

uint64_t sub_47714(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6[0] = a2;
  v6[1] = a3;

  sub_23FC(&qword_64B68, &qword_537A0);
  sub_51150();
  sub_477D4(v6);
}

uint64_t sub_47838(uint64_t a1, uint64_t a2)
{

  sub_23FC(&qword_64B68, &qword_537A0);
  sub_51160();

  return v3;
}

uint64_t sub_4790C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_47974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v24 = a1;
  v25 = a2;
  v18 = &opaque type descriptor for <<opaque return type of View.navigationTitle<A>(_:)>>;
  v21 = sub_482FC;
  v27 = &unk_537D8;
  v33 = &opaque type descriptor for <<opaque return type of SettingsExperienceContent.onSettingsExperienceOpenURL(perform:)>>;
  v52 = 0;
  v50 = 0;
  v51 = 0;
  v31 = sub_23FC(&qword_64B70, &qword_537A8);
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v13 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v31);
  v30 = &v13 - v13;
  v41 = sub_23FC(&qword_64B78, &qword_537B0);
  v35 = *(v41 - 8);
  v36 = v41 - 8;
  v14 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v24);
  v39 = &v13 - v14;
  v15 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v3);
  v40 = &v13 - v15;
  v52 = &v13 - v15;
  v50 = v5;
  v51 = v6;

  v22 = 32;
  v23 = 7;
  v7 = swift_allocObject();
  v8 = v25;
  v19 = v7;
  *(v7 + 16) = v24;
  *(v7 + 24) = v8;
  v20 = sub_23FC(&qword_64B80, &qword_537B8);
  v16 = sub_6320(&qword_64B88, &qword_537C0);
  v17 = sub_48308();
  v9 = sub_37E30();
  v46 = v16;
  v47 = &type metadata for String;
  v48 = v17;
  v49 = v9;
  v34 = 1;
  swift_getOpaqueTypeConformance2();
  sub_51280();

  v10 = swift_allocObject();
  v11 = v25;
  v26 = v10;
  *(v10 + 16) = v24;
  *(v10 + 24) = v11;
  v32 = sub_497CC();
  sub_51240();
  (*(v28 + 8))(v30, v31);
  v44 = v31;
  v45 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_498F4(v39, v41, v40);
  v43 = *(v35 + 8);
  v42 = v35 + 8;
  v43(v39, v41);
  (*(v35 + 16))(v39, v40, v41);
  sub_49958(v39, v41, v37);
  v43(v39, v41);
  return (v43)(v40, v41);
}

uint64_t sub_47DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v17 = a1;
  v18 = a2;
  v38 = &opaque type descriptor for <<opaque return type of View.navigationTitle<A>(_:)>>;
  v61 = 0;
  v59 = 0;
  v60 = 0;
  v29 = 0;
  v12 = (*(*(sub_50990() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v31 = &v11 - v12;
  v3 = sub_512F0();
  v13 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v28 = &v11 - v13;
  v45 = sub_23FC(&qword_64B80, &qword_537B8);
  v39 = *(v45 - 8);
  v40 = v45 - 8;
  v14 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v17);
  v43 = &v11 - v14;
  v15 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v44 = &v11 - v15;
  v61 = &v11 - v15;
  v59 = v6;
  v60 = v7;
  v16 = v62;
  sub_4044(v62);
  v23 = v57;
  memcpy(v57, v16, sizeof(v57));
  KeyPath = swift_getKeyPath();

  v56[2] = v17;
  v56[3] = v18;
  sub_23FC(&qword_64B68, &qword_537A0);
  sub_51140();
  v19 = v56[1];

  v20 = sub_50C80();

  v21 = v56;
  v56[0] = v20;
  sub_483B0();
  v24 = &v58;
  sub_51090();
  sub_4A668(v21);

  sub_4530(v23);
  v25 = __dst;
  v26 = 160;
  memcpy(__dst, v24, sizeof(__dst));
  v33 = v55;
  memcpy(v55, __dst, sizeof(v55));
  v27 = 1;
  sub_51350("Software Update", 0xFuLL, 1);
  sub_512E0();
  v30 = *sub_411D0();
  v30;
  sub_20CD4();
  v52[2] = 0;
  v52[3] = 0;
  v53 = 0;
  v54 = v27 & 1;
  v8 = sub_51320();
  v32 = v52;
  v52[0] = v8;
  v52[1] = v9;
  v34 = sub_23FC(&qword_64B88, &qword_537C0);
  v36 = sub_48308();
  v37 = sub_37E30();
  v35 = &type metadata for String;
  sub_510C0();
  sub_37EA8(v32);
  sub_4A694(v33);
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v51 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_6394(v43, v45, v44);
  v47 = *(v39 + 8);
  v46 = v39 + 8;
  v47(v43, v45);
  (*(v39 + 16))(v43, v44, v45);
  sub_99E8(v43, v45, v41);
  v47(v43, v45);
  return (v47)(v44, v45);
}

uint64_t sub_482B4()
{

  return swift_deallocObject();
}

unint64_t sub_48308()
{
  v2 = qword_64B90;
  if (!qword_64B90)
  {
    sub_6320(&qword_64B88, &qword_537C0);
    sub_483B0();
    sub_48428();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64B90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_483B0()
{
  v2 = qword_64B98;
  if (!qword_64B98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64B98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_48428()
{
  v2 = qword_64BA0;
  if (!qword_64BA0)
  {
    sub_6320(&qword_64BA8, &qword_537C8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64BA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_484B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v4[12] = a3;
  v4[11] = a2;
  v4[10] = a1;
  v4[6] = v4;
  v4[7] = 0;
  v4[2] = 0;
  v4[3] = 0;
  v4[8] = 0;
  v5 = sub_50E60();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = sub_50DB0();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v7 = sub_50960();
  v4[20] = v7;
  v9 = *(v7 - 8);
  v4[21] = v9;
  v4[22] = *(v9 + 64);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[7] = a2;
  v4[2] = a3;
  v4[3] = a4;
  sub_51410();
  v4[25] = sub_51400();
  sub_513F0();

  return _swift_task_switch(sub_48710);
}

uint64_t sub_48710()
{
  v52 = v0;
  v22 = v0[24];
  v26 = v0[23];
  v24 = v0[21];
  v27 = v0[20];
  v21 = v0[13];
  v20 = v0[12];
  v0[6] = v0;
  sub_51260();
  sub_50C00();
  v23 = *(v24 + 16);
  v23(v26, v22, v27);
  v0[8] = sub_50BF0();
  sub_50D90();

  v29 = swift_allocObject();
  *(v29 + 16) = v20;
  *(v29 + 24) = v21;
  v23(v26, v22, v27);
  v25 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v28 = swift_allocObject();
  (*(v24 + 32))(v28 + v25, v26, v27);

  v33 = swift_allocObject();
  *(v33 + 16) = sub_4A074;
  *(v33 + 24) = v28;

  v45 = sub_50DA0();
  v46 = sub_51480();
  v35 = swift_allocObject();
  *(v35 + 16) = 32;
  v36 = swift_allocObject();
  *(v36 + 16) = 8;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_49F9C;
  *(v30 + 24) = v29;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_4A390;
  *(v31 + 24) = v30;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_4A3DC;
  *(v37 + 24) = v31;
  v38 = swift_allocObject();
  *(v38 + 16) = 32;
  v39 = swift_allocObject();
  *(v39 + 16) = 8;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_49864;
  *(v32 + 24) = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_4A4DC;
  *(v40 + 24) = v32;
  v41 = swift_allocObject();
  *(v41 + 16) = 32;
  v42 = swift_allocObject();
  *(v42 + 16) = 8;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_4A20C;
  *(v34 + 24) = v33;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_4A5DC;
  *(v43 + 24) = v34;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v44 = v1;

  *v44 = sub_4A314;
  v44[1] = v35;

  v44[2] = sub_4A348;
  v44[3] = v36;

  v44[4] = sub_4A428;
  v44[5] = v37;

  v44[6] = sub_4A460;
  v44[7] = v38;

  v44[8] = sub_4A494;
  v44[9] = v39;

  v44[10] = sub_4A528;
  v44[11] = v40;

  v44[12] = sub_4A560;
  v44[13] = v41;

  v44[14] = sub_4A594;
  v44[15] = v42;

  v44[16] = sub_4A628;
  v44[17] = v43;
  sub_1489C();

  if (os_log_type_enabled(v45, v46))
  {
    buf = sub_514F0();
    v15 = sub_23FC(&qword_64650, &unk_53930);
    v17 = sub_121D4(0, v15, v15);
    v18 = sub_121D4(3, &type metadata for Any + 8, &type metadata for Any + 8);
    v47 = buf;
    v48 = v17;
    v49 = v18;
    sub_12228(2, &v47);
    sub_12228(3, &v47);
    v50 = sub_4A314;
    v51 = v35;
    sub_1223C(&v50, &v47, &v48, &v49);
    v50 = sub_4A348;
    v51 = v36;
    sub_1223C(&v50, &v47, &v48, &v49);
    v50 = sub_4A428;
    v51 = v37;
    sub_1223C(&v50, &v47, &v48, &v49);
    v50 = sub_4A460;
    v51 = v38;
    sub_1223C(&v50, &v47, &v48, &v49);
    v50 = sub_4A494;
    v51 = v39;
    sub_1223C(&v50, &v47, &v48, &v49);
    v50 = sub_4A528;
    v51 = v40;
    sub_1223C(&v50, &v47, &v48, &v49);
    v50 = sub_4A560;
    v51 = v41;
    sub_1223C(&v50, &v47, &v48, &v49);
    v50 = sub_4A594;
    v51 = v42;
    sub_1223C(&v50, &v47, &v48, &v49);
    v50 = sub_4A628;
    v51 = v43;
    sub_1223C(&v50, &v47, &v48, &v49);
    _os_log_impl(&dword_0, v45, v46, "%s.%s: Settings Experience - Initiating Deep Linking resolution request for URL:  %s", buf, 0x20u);
    sub_12288(v17, 0, v15);
    sub_12288(v18, 3, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v12 = v19[24];
  v11 = v19[20];
  v13 = v19[19];
  v5 = v19[17];
  v14 = v19[16];
  v9 = v19[14];
  v7 = v19[13];
  v6 = v19[12];
  v10 = v19[21];
  v4 = v19[18];
  v8 = v19[15];
  _objc_release(v45);
  (*(v4 + 8))(v13, v5);

  v19[4] = v6;
  v19[5] = v7;
  sub_23FC(&qword_64B68, &qword_537A0);
  sub_51140();

  sub_50B10();

  sub_50B20();
  sub_50C90();

  sub_51250();
  sub_51270();
  (*(v8 + 8))(v14, v9);

  (*(v10 + 8))(v12, v11);

  v2 = *(v19[6] + 8);

  return v2();
}

uint64_t sub_49588()
{

  return swift_deallocObject();
}

uint64_t sub_495D0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_496A4;

  return sub_484B0(a1, a2, v8, v9);
}

uint64_t sub_496A4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_497CC()
{
  v2 = qword_64BB0;
  if (!qword_64BB0)
  {
    sub_6320(&qword_64B70, &qword_537A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64BB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_499BC()
{
  v5 = 0;
  v6 = 0;
  sub_50CB0();
  v0 = sub_50CA0();
  v4 = sub_47618(v0);
  v3 = v1;

  v5 = v4;
  v6 = v3;
  sub_49A38(&v5);
  return v4;
}

unint64_t sub_49AA8()
{
  v2 = qword_64BB8;
  if (!qword_64BB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64BB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_49B58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_499BC();
  *a1 = result;
  a1[1] = v2;
  return result;
}

__n128 sub_49BB0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_49BBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_49D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_49EE4()
{
  sub_6320(&qword_64B70, &qword_537A8);
  sub_497CC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_49F54()
{

  return swift_deallocObject();
}

uint64_t sub_49FA8()
{
  v2 = *(sub_50960() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_4A074@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_50960();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_49894(v3, a1);
}

uint64_t sub_4A0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_51640();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_4A20C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_50960();
  v1 = sub_4A268();

  return sub_4A0E8(v5, v3, v4, v1);
}

unint64_t sub_4A268()
{
  v2 = qword_64C58;
  if (!qword_64C58)
  {
    sub_50960();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64C58);
    return WitnessTable;
  }

  return v2;
}

void *sub_4A694(void *a1)
{

  sub_3238(a1[8]);

  return a1;
}

Swift::Void __swiftcall SUUISettingsSoftwareUpdateController.viewDidLoad()()
{
  v22 = "Fatal error";
  v23 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v24 = "SoftwareUpdateUIMobileSettingsPlugin/SUUISettingsSoftwareUpdateController.swift";
  ObjectType = swift_getObjectType();
  v59 = 0;
  v55 = 0;
  v50 = 0;
  v33 = 0;
  v25 = (*(*(sub_50990() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v35 = &v10 - v25;
  v1 = sub_512F0();
  v26 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v32 = &v10 - v26;
  v59 = v0;
  v0;
  v58.receiver = v0;
  v58.super_class = ObjectType;
  objc_msgSendSuper2(&v58, "viewDidLoad");
  _objc_release(v38);
  sub_23FC(&qword_64C68, &qword_53970);
  v28 = __dst;
  v29 = 144;
  memcpy(__dst, &v38[OBJC_IVAR___SUUISettingsSoftwareUpdateController_softwareUpdateView], sizeof(__dst));
  sub_4354(__dst, &v57);
  v30 = v56;
  memcpy(v56, v28, v29);
  v39 = sub_50F70();
  v55 = v39;
  v38;
  v31 = 1;
  sub_51350("Software Update", 0xFuLL, 1);
  sub_512E0();
  v34 = *sub_411D0();
  v34;
  sub_20CD4();
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v54 = v31 & 1;
  sub_51320();
  v36 = v2;
  v37 = sub_51300();

  [v38 setTitle:v37];
  _objc_release(v37);
  _objc_release(v38);
  v39;
  v40 = [v39 view];
  if (v40)
  {
    v21 = v40;
    v19 = v40;
    v50 = v40;
    _objc_release(v39);
    v38;
    v20 = [v38 view];
    _objc_release(v38);
    if (v20)
    {
      v18 = v20;
    }

    else
    {
      sub_51610(v22, 11, 2, v23, 68, 2, v24, 79, 2, 30, 0);
      __break(1u);
    }

    v16 = v18;
    [v18 addSubview:v19];
    _objc_release(v16);
    v38;
    v17 = [v38 view];
    _objc_release(v38);
    if (v17)
    {
      v15 = v17;
    }

    else
    {
      sub_51610(v22, 11, 2, v23, 68, 2, v24, 79, 2, 32, 0);
      __break(1u);
    }

    [v15 bounds];
    v46 = v3;
    v47 = v4;
    v48 = v5;
    v49 = v6;
    v11 = v5;
    v12 = v6;
    _objc_release(v10);
    v42 = 0;
    v43 = 0;
    v44 = v11;
    v45 = v12;
    [v19 setFrame:{0.0, 0.0, v11, v12}];
    type metadata accessor for AutoresizingMask(0);
    v13 = 2;
    sub_51650();
    v7 = v13;
    *v8 = 16;
    v8[1] = v7;
    sub_1489C();
    v14 = v9;
    sub_4AE98();
    sub_51530();
    [v19 setAutoresizingMask:v41];
    [v38 addChildViewController:v39];
    v38;
    [v39 didMoveToParentViewController:v38];
    _objc_release(v38);
    _objc_release(v19);
    _objc_release(v39);
  }

  else
  {
    _objc_release(v39);
    _objc_release(v39);
  }
}

unint64_t type metadata accessor for AutoresizingMask(uint64_t a1)
{
  v5 = qword_64CA0;
  if (!qword_64CA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_64CA0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_4AE98()
{
  v2 = qword_64C70;
  if (!qword_64C70)
  {
    type metadata accessor for AutoresizingMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64C70);
    return WitnessTable;
  }

  return v2;
}

uint64_t SUUISettingsSoftwareUpdateController.handleURL(_:withCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a1;
  v74 = a2;
  v73 = a3;
  v83 = sub_4BE6C;
  v85 = sub_4F128;
  v87 = sub_4F174;
  v89 = sub_4BE74;
  v90 = sub_4F274;
  v95 = sub_4BEC8;
  v99 = sub_4F374;
  v101 = sub_4F0AC;
  v103 = sub_4F0E0;
  v105 = sub_4F1C0;
  v107 = sub_4F1F8;
  v109 = sub_4F22C;
  v111 = sub_4F2C0;
  v113 = sub_4F2F8;
  v115 = sub_4F32C;
  v118 = sub_4F3C0;
  v69 = &unk_53980;
  v133 = 0;
  v131 = 0;
  v132 = 0;
  v130 = 0;
  v129 = 0;
  v70 = 0;
  v4 = sub_23FC(&qword_64640, &qword_52260);
  v71 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v72 = &v51 - v71;
  v75 = 0;
  v76 = sub_50DB0();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v75);
  v81 = &v51 - v79;
  v133 = v5;
  v131 = v6;
  v132 = v7;
  v130 = v3;
  sub_50C00();

  v98 = sub_50BD0();
  v129 = v98;
  sub_50D90();
  v82;
  v97 = 7;
  v84 = swift_allocObject();
  *(v84 + 16) = v82;

  v122 = sub_50DA0();
  v123 = sub_51480();
  v93 = 17;
  v102 = swift_allocObject();
  v92 = 32;
  *(v102 + 16) = 32;
  v104 = swift_allocObject();
  v94 = 8;
  *(v104 + 16) = 8;
  v96 = 32;
  v8 = swift_allocObject();
  v9 = v84;
  v86 = v8;
  *(v8 + 16) = v83;
  *(v8 + 24) = v9;
  v10 = swift_allocObject();
  v11 = v86;
  v88 = v10;
  *(v10 + 16) = v85;
  *(v10 + 24) = v11;
  v12 = swift_allocObject();
  v13 = v88;
  v106 = v12;
  *(v12 + 16) = v87;
  *(v12 + 24) = v13;
  v108 = swift_allocObject();
  *(v108 + 16) = v92;
  v110 = swift_allocObject();
  *(v110 + 16) = v94;
  v14 = swift_allocObject();
  v91 = v14;
  *(v14 + 16) = v89;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v91;
  v112 = v15;
  *(v15 + 16) = v90;
  *(v15 + 24) = v16;
  v114 = swift_allocObject();
  *(v114 + 16) = v92;
  v116 = swift_allocObject();
  *(v116 + 16) = v94;
  v17 = swift_allocObject();
  v18 = v98;
  v100 = v17;
  *(v17 + 16) = v95;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v100;
  v119 = v19;
  *(v19 + 16) = v99;
  *(v19 + 24) = v20;
  v121 = sub_23FC(&qword_64648, &qword_51E60);
  v117 = sub_51650();
  v120 = v21;

  v22 = v102;
  v23 = v120;
  *v120 = v101;
  v23[1] = v22;

  v24 = v104;
  v25 = v120;
  v120[2] = v103;
  v25[3] = v24;

  v26 = v106;
  v27 = v120;
  v120[4] = v105;
  v27[5] = v26;

  v28 = v108;
  v29 = v120;
  v120[6] = v107;
  v29[7] = v28;

  v30 = v110;
  v31 = v120;
  v120[8] = v109;
  v31[9] = v30;

  v32 = v112;
  v33 = v120;
  v120[10] = v111;
  v33[11] = v32;

  v34 = v114;
  v35 = v120;
  v120[12] = v113;
  v35[13] = v34;

  v36 = v116;
  v37 = v120;
  v120[14] = v115;
  v37[15] = v36;

  v38 = v119;
  v39 = v120;
  v120[16] = v118;
  v39[17] = v38;
  sub_1489C();

  if (os_log_type_enabled(v122, v123))
  {
    v40 = v70;
    v62 = sub_514F0();
    v61 = sub_23FC(&qword_64650, &unk_53930);
    v63 = sub_121D4(0, v61, v61);
    v64 = sub_121D4(3, &type metadata for Any + 8, &type metadata for Any + 8);
    v65 = &v128;
    v128 = v62;
    v66 = &v127;
    v127 = v63;
    v67 = &v126;
    v126 = v64;
    sub_12228(2, &v128);
    sub_12228(3, v65);
    v124 = v101;
    v125 = v102;
    sub_1223C(&v124, v65, v66, v67);
    v68 = v40;
    if (v40)
    {

      __break(1u);
    }

    else
    {
      v124 = v103;
      v125 = v104;
      sub_1223C(&v124, &v128, &v127, &v126);
      v60 = 0;
      v124 = v105;
      v125 = v106;
      sub_1223C(&v124, &v128, &v127, &v126);
      v59 = 0;
      v124 = v107;
      v125 = v108;
      sub_1223C(&v124, &v128, &v127, &v126);
      v58 = 0;
      v124 = v109;
      v125 = v110;
      sub_1223C(&v124, &v128, &v127, &v126);
      v57 = 0;
      v124 = v111;
      v125 = v112;
      sub_1223C(&v124, &v128, &v127, &v126);
      v56 = 0;
      v124 = v113;
      v125 = v114;
      sub_1223C(&v124, &v128, &v127, &v126);
      v55 = 0;
      v124 = v115;
      v125 = v116;
      sub_1223C(&v124, &v128, &v127, &v126);
      v54 = 0;
      v124 = v118;
      v125 = v119;
      sub_1223C(&v124, &v128, &v127, &v126);
      _os_log_impl(&dword_0, v122, v123, "%s.%s: Initiating Deep Linking resolution request for URL with resource dictionary: %s", v62, 0x20u);
      sub_12288(v63, 0, v61);
      sub_12288(v64, 3, &type metadata for Any + 8);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v122);
  (*(v77 + 8))(v81, v76);
  sub_51430();
  v52 = 0;
  v41 = sub_51450();
  (*(*(v41 - 8) + 56))(v72, 0, 1);
  v82;

  sub_4F3CC(v74, v73);
  v42 = swift_allocObject();
  v43 = v82;
  v44 = v74;
  v45 = v73;
  v46 = v52;
  v47 = v69;
  v48 = v72;
  v49 = v98;
  v42[2] = 0;
  v42[3] = 0;
  v42[4] = v43;
  v42[5] = v49;
  v42[6] = v44;
  v42[7] = v45;
  v53 = sub_F350(v46, v46, v48, v47, v42, &type metadata for () + 8);
  sub_14BA4(v72);
}

uint64_t sub_4BED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[47] = a7;
  v7[46] = a6;
  v7[45] = a5;
  v7[44] = a4;
  v7[40] = v7;
  v7[41] = 0;
  v7[42] = 0;
  v7[38] = 0;
  v7[39] = 0;
  v7[43] = 0;
  v8 = sub_50DB0();
  v7[48] = v8;
  v7[49] = *(v8 - 8);
  v7[50] = swift_task_alloc();
  v7[41] = a4;
  v7[42] = a5;
  v7[38] = a6;
  v7[39] = a7;

  return _swift_task_switch(sub_4C020);
}

uint64_t sub_4C020()
{
  v1 = v0[44];
  v0[40] = v0;
  memcpy(v0 + 2, (v1 + OBJC_IVAR___SUUISettingsSoftwareUpdateController_softwareUpdateView), 0x90uLL);
  sub_4354(v0 + 2, (v0 + 20));
  sub_50B10();

  v5 = sub_50B20();
  v0[51] = v5;
  v2 = swift_task_alloc();
  *(v4 + 416) = v2;
  *v2 = *(v4 + 320);
  v2[1] = sub_4C138;

  return sub_6E24(v5);
}

uint64_t sub_4C138()
{
  v5 = *v1;
  v4 = (*v1 + 16);
  *(v5 + 320) = *v1;
  *(v5 + 424) = v0;

  if (v0)
  {
    v2 = sub_4C390;
  }

  else
  {

    sub_4530(v4);
    v2 = sub_4C2C8;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_4C2C8()
{
  *(v0 + 320) = v0;
  sub_4D098(*(v0 + 352), *(v0 + 360), *(v0 + 368), *(v0 + 376));

  v1 = *(*(v0 + 320) + 8);

  return v1();
}

uint64_t sub_4C390()
{
  v38 = v0;
  v13 = v0[53];
  v12 = v0[44];
  v0[40] = v0;

  sub_4530(v0 + 2);
  swift_errorRetain();
  v0[43] = v13;
  sub_50D90();
  v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  swift_errorRetain();
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  sub_28D78();

  v31 = sub_50DA0();
  v32 = sub_514A0();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_4FEF0;
  *(v15 + 24) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_4FFE8;
  *(v16 + 24) = v15;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_50034;
  *(v23 + 24) = v16;
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_4D378;
  *(v17 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_50134;
  *(v26 + 24) = v17;
  v27 = swift_allocObject();
  *(v27 + 16) = 64;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_4FF38;
  *(v19 + 24) = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_50234;
  *(v20 + 24) = v19;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_50280;
  *(v29 + 24) = v20;
  sub_23FC(&qword_64648, &qword_51E60);
  sub_51650();
  v30 = v1;

  *v30 = sub_4FF6C;
  v30[1] = v21;

  v30[2] = sub_4FFA0;
  v30[3] = v22;

  v30[4] = sub_50080;
  v30[5] = v23;

  v30[6] = sub_500B8;
  v30[7] = v24;

  v30[8] = sub_500EC;
  v30[9] = v25;

  v30[10] = sub_50180;
  v30[11] = v26;

  v30[12] = sub_501B8;
  v30[13] = v27;

  v30[14] = sub_501EC;
  v30[15] = v28;

  v30[16] = sub_502CC;
  v30[17] = v29;
  sub_1489C();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_514F0();
    v7 = sub_23FC(&qword_64650, &unk_53930);
    v9 = sub_121D4(1, v7, v7);
    v10 = sub_121D4(2, &type metadata for Any + 8, &type metadata for Any + 8);
    v33 = buf;
    v34 = v9;
    v35 = v10;
    sub_12228(2, &v33);
    sub_12228(3, &v33);
    v36 = sub_4FF6C;
    v37 = v21;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_4FFA0;
    v37 = v22;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_50080;
    v37 = v23;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_500B8;
    v37 = v24;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_500EC;
    v37 = v25;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_50180;
    v37 = v26;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_501B8;
    v37 = v27;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_501EC;
    v37 = v28;
    sub_1223C(&v36, &v33, &v34, &v35);
    v36 = sub_502CC;
    v37 = v29;
    sub_1223C(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_0, v31, v32, "%s.%s: Deep link handling error: %@", buf, 0x20u);
    sub_12288(v9, 1, v7);
    sub_12288(v10, 2, &type metadata for Any + 8);
    sub_514D0();
  }

  else
  {
  }

  v5 = *(v11 + 400);
  v6 = *(v11 + 384);
  v4 = *(v11 + 392);
  _objc_release(v31);
  (*(v4 + 8))(v5, v6);

  sub_4D098(*(v11 + 352), *(v11 + 360), *(v11 + 368), *(v11 + 376));

  v2 = *(*(v11 + 320) + 8);

  return v2();
}

void sub_4D098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = sub_503A8;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v20 = 0;
  v24 = sub_51200();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v23 = &v13 - v13;
  v28 = sub_51220();
  v25 = *(v28 - 8);
  v26 = v28 - 8;
  v14 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v27 = &v13 - v14;
  v41 = v4;
  v40 = v5;
  v38 = v6;
  v39 = v7;
  sub_502D8();
  v30 = sub_514B0();
  v19;

  sub_4F3CC(v16, v17);
  v8 = swift_allocObject();
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;
  v8[2] = v19;
  v8[3] = v9;
  v8[4] = v10;
  v8[5] = v11;
  v36 = v12;
  v37 = v8;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = 0;
  v34 = sub_4E880;
  v35 = &unk_61E18;
  v29 = _Block_copy(&aBlock);
  sub_4E8D0();
  sub_4E8E8();
  sub_514C0();
  (*(v21 + 8))(v23, v24);
  (*(v25 + 8))(v27, v28);
  _Block_release(v29);

  _objc_release(v30);
}

id SUUISettingsSoftwareUpdateController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_51300();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName:? bundle:?];
  _objc_release(a3);
  _objc_release(v7);
  return v5;
}

id SUUISettingsSoftwareUpdateController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v15 = a1;
  v16 = a2;
  v14 = a3;
  v17 = v3;
  v11 = OBJC_IVAR___SUUISettingsSoftwareUpdateController_softwareUpdateView;
  sub_4044(v18);
  memcpy(&v3[v11], v18, 0x90uLL);

  if (a2)
  {
    v6 = sub_51300();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v13.receiver = v3;
  v13.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v13, "initWithNibName:bundle:");
  _objc_release(v7);
  v5;
  v17 = v5;
  _objc_release(a3);

  _objc_release(v17);
  return v5;
}

id SUUISettingsSoftwareUpdateController.__allocating_init(coder:)(void *a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder:a1];
  _objc_release(a1);
  return v4;
}

id SUUISettingsSoftwareUpdateController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v9 = a1;
  v10 = v1;
  v4 = OBJC_IVAR___SUUISettingsSoftwareUpdateController_softwareUpdateView;
  sub_4044(v11);
  memcpy(&v1[v4], v11, 0x90uLL);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  if (v7)
  {
    v7;
    v10 = v7;
    _objc_release(a1);
    _objc_release(v10);
    return v7;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

id SUUISettingsSoftwareUpdateController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4DB0C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v58 = a1;
  v72 = a2;
  v51 = a3;
  v52 = a4;
  v59 = sub_50570;
  v61 = sub_50628;
  v63 = sub_50674;
  v65 = sub_4E82C;
  v66 = sub_50774;
  v71 = sub_50578;
  v75 = sub_50874;
  v77 = sub_505AC;
  v79 = sub_505E0;
  v81 = sub_506C0;
  v83 = sub_506F8;
  v85 = sub_5072C;
  v87 = sub_507C0;
  v89 = sub_507F8;
  v91 = sub_5082C;
  v94 = sub_508C0;
  v108 = 0;
  v107 = 0;
  v105 = 0;
  v106 = 0;
  v50 = 0;
  v53 = sub_50DB0();
  v54 = *(v53 - 8);
  v55 = v53 - 8;
  v56 = (*(v54 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v57 = v41 - v56;
  v108 = __chkstk_darwin(v58);
  v107 = v4;
  v105 = v5;
  v106 = v6;
  sub_50D90();
  v58;
  v74 = 7;
  v60 = swift_allocObject();
  *(v60 + 16) = v58;

  v98 = sub_50DA0();
  v99 = sub_51480();
  v69 = 17;
  v78 = swift_allocObject();
  v68 = 32;
  *(v78 + 16) = 32;
  v80 = swift_allocObject();
  v70 = 8;
  *(v80 + 16) = 8;
  v73 = 32;
  v7 = swift_allocObject();
  v8 = v60;
  v62 = v7;
  *(v7 + 16) = v59;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v62;
  v64 = v9;
  *(v9 + 16) = v61;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v64;
  v82 = v11;
  *(v11 + 16) = v63;
  *(v11 + 24) = v12;
  v84 = swift_allocObject();
  *(v84 + 16) = v68;
  v86 = swift_allocObject();
  *(v86 + 16) = v70;
  v13 = swift_allocObject();
  v67 = v13;
  *(v13 + 16) = v65;
  *(v13 + 24) = 0;
  v14 = swift_allocObject();
  v15 = v67;
  v88 = v14;
  *(v14 + 16) = v66;
  *(v14 + 24) = v15;
  v90 = swift_allocObject();
  *(v90 + 16) = v68;
  v92 = swift_allocObject();
  *(v92 + 16) = v70;
  v16 = swift_allocObject();
  v17 = v72;
  v76 = v16;
  *(v16 + 16) = v71;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v76;
  v95 = v18;
  *(v18 + 16) = v75;
  *(v18 + 24) = v19;
  v97 = sub_23FC(&qword_64648, &qword_51E60);
  v93 = sub_51650();
  v96 = v20;

  v21 = v78;
  v22 = v96;
  *v96 = v77;
  v22[1] = v21;

  v23 = v80;
  v24 = v96;
  v96[2] = v79;
  v24[3] = v23;

  v25 = v82;
  v26 = v96;
  v96[4] = v81;
  v26[5] = v25;

  v27 = v84;
  v28 = v96;
  v96[6] = v83;
  v28[7] = v27;

  v29 = v86;
  v30 = v96;
  v96[8] = v85;
  v30[9] = v29;

  v31 = v88;
  v32 = v96;
  v96[10] = v87;
  v32[11] = v31;

  v33 = v90;
  v34 = v96;
  v96[12] = v89;
  v34[13] = v33;

  v35 = v92;
  v36 = v96;
  v96[14] = v91;
  v36[15] = v35;

  v37 = v95;
  v38 = v96;
  v96[16] = v94;
  v38[17] = v37;
  sub_1489C();

  if (os_log_type_enabled(v98, v99))
  {
    v39 = v50;
    v43 = sub_514F0();
    v42 = sub_23FC(&qword_64650, &unk_53930);
    v44 = sub_121D4(0, v42, v42);
    v45 = sub_121D4(3, &type metadata for Any + 8, &type metadata for Any + 8);
    v46 = &v104;
    v104 = v43;
    v47 = &v103;
    v103 = v44;
    v48 = &v102;
    v102 = v45;
    sub_12228(2, &v104);
    sub_12228(3, v46);
    v100 = v77;
    v101 = v78;
    sub_1223C(&v100, v46, v47, v48);
    v49 = v39;
    if (v39)
    {

      __break(1u);
    }

    else
    {
      v100 = v79;
      v101 = v80;
      sub_1223C(&v100, &v104, &v103, &v102);
      v41[9] = 0;
      v100 = v81;
      v101 = v82;
      sub_1223C(&v100, &v104, &v103, &v102);
      v41[8] = 0;
      v100 = v83;
      v101 = v84;
      sub_1223C(&v100, &v104, &v103, &v102);
      v41[7] = 0;
      v100 = v85;
      v101 = v86;
      sub_1223C(&v100, &v104, &v103, &v102);
      v41[6] = 0;
      v100 = v87;
      v101 = v88;
      sub_1223C(&v100, &v104, &v103, &v102);
      v41[5] = 0;
      v100 = v89;
      v101 = v90;
      sub_1223C(&v100, &v104, &v103, &v102);
      v41[4] = 0;
      v100 = v91;
      v101 = v92;
      sub_1223C(&v100, &v104, &v103, &v102);
      v41[3] = 0;
      v100 = v94;
      v101 = v95;
      sub_1223C(&v100, &v104, &v103, &v102);
      _os_log_impl(&dword_0, v98, v99, "%s.%s: Finished to resolve the Deep Linking request for  URL with resource dictionary: %s", v43, 0x20u);
      sub_12288(v44, 0, v42);
      sub_12288(v45, 3, &type metadata for Any + 8);
      sub_514D0();
    }
  }

  else
  {
  }

  _objc_release(v98);
  (*(v54 + 8))(v57, v53);
  result = sub_4F3CC(v51, v52);
  if (v51)
  {
    v41[1] = v51;
    v41[2] = v52;
    v41[0] = v52;
    v51(result);
  }

  return result;
}

uint64_t sub_4E880(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t sub_4E8E8()
{
  sub_4EF90(0);
  sub_51200();
  sub_50420();
  sub_23FC(&qword_64CE0, &qword_53C10);
  sub_504A0();
  return sub_515B0();
}

uint64_t sub_4E988(uint64_t a1)
{
  sub_4F8E8();
  sub_4F968();
  return sub_51750();
}

uint64_t sub_4EB8C(uint64_t a1, uint64_t a2)
{
  sub_4F8E8();
  sub_4F968();
  return sub_51740();
}

uint64_t sub_4EBD0(uint64_t a1, uint64_t a2)
{
  sub_4F8E8();
  sub_4F968();
  return sub_51720();
}

uint64_t sub_4EC14(uint64_t a1, uint64_t a2)
{
  sub_4F8E8();
  sub_4F968();
  return sub_51730();
}

void sub_4EDF0(uint64_t a1@<X8>)
{
  nullsub_7();
  *a1 = v1;
  *(a1 + 8) = 0;
}

uint64_t sub_4EE64()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_4EF90(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_51200();
      v1 = sub_513D0();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = &_swiftEmptyArrayStorage;
    }

    sub_51200();
    return v2;
  }

  return result;
}

uint64_t sub_4F3CC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_4F400()
{
  swift_unknownObjectRelease();
  _objc_release(*(v0 + 32));

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4F474(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4F570;

  return sub_4BED0(a1, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_4F570()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_4F720()
{
  v2 = qword_64CA8;
  if (!qword_64CA8)
  {
    type metadata accessor for AutoresizingMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F7D0()
{
  v2 = qword_64CB0;
  if (!qword_64CB0)
  {
    type metadata accessor for AutoresizingMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F868()
{
  v2 = qword_64CB8;
  if (!qword_64CB8)
  {
    type metadata accessor for AutoresizingMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F8E8()
{
  v2 = qword_64CC0;
  if (!qword_64CC0)
  {
    type metadata accessor for AutoresizingMask(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_4F968()
{
  v2 = qword_64CC8;
  if (!qword_64CC8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_4FA28(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4FB1C;

  return sub_12634(a1, v6);
}

uint64_t sub_4FB1C()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_4FC8C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_4FD80;

  return sub_12634(a1, v6);
}

uint64_t sub_4FD80()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_502D8()
{
  v2 = qword_64CD0;
  if (!qword_64CD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_64CD0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_5033C()
{
  _objc_release(*(v0 + 16));

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_503BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_50420()
{
  v2 = qword_64CD8;
  if (!qword_64CD8)
  {
    sub_51200();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_504A0()
{
  v2 = qword_64CE8;
  if (!qword_64CE8)
  {
    sub_6320(&qword_64CE0, &qword_53C10);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_64CE8);
    return WitnessTable;
  }

  return v2;
}