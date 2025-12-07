void sub_100713564(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC5Books25CurrentLocationController_started) == 1)
    {
      v3 = Strong;

      sub_100238068();
    }

    else
    {
    }
  }
}

uint64_t sub_1007135F0()
{
  v0 = sub_10079FD44();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v36 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v32 - v3;
  v5 = sub_1007A0F74();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1007A1C14();
  v7 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_10079B904();
  swift_getObjectType();
  sub_10079FA44();
  sub_10079F984();
  swift_getObjectType();
  v13 = sub_10079F684();
  swift_unknownObjectRelease();
  sub_10079F984();
  swift_getObjectType();
  sub_10079F6D4();
  swift_unknownObjectRelease();
  v14 = sub_1007A2BB4();
  if (sub_1007A1C04())
  {
    v15 = 1;
    goto LABEL_3;
  }

  if ((v13 > 1) | v14 & 1)
  {
    sub_10079F9D4();
    sub_1007A1B64();
    v32 = v7;
    v19 = v33;
    sub_10079F3A4();

    v20 = v38;
    v21 = *(v37 + 8);
    v21(v4, v38);
    sub_1007A1B64();
    v15 = sub_1007A0F64();
    v21(v4, v20);
    v22 = v19;
    v7 = v32;
    (*(v34 + 8))(v22, v35);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    v20 = v38;
  }

  if ((v14 ^ 1))
  {
LABEL_3:
    v16 = *(v7 + 8);
    v17 = v39;
    v16(v9, v39);
    v16(v12, v17);
    return v15 & 1;
  }

  sub_1007A1B64();
  v23 = sub_10079FD14();
  v24 = *(v37 + 8);
  v24(v4, v20);
  v25 = v36;
  sub_1007A1B64();
  v26 = sub_10079FD14();
  v24(v25, v20);
  if (v23 != v26)
  {
    v15 = 0;
    goto LABEL_3;
  }

  sub_1007A1B64();
  v27 = sub_10079FCF4();
  result = (v24)(v4, v20);
  v28 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    sub_1007A1B64();
    v29 = sub_10079FCF4();
    v24(v4, v20);
    v30 = *(v7 + 8);
    v31 = v39;
    v30(v9, v39);
    v30(v12, v31);
    v15 = v28 == v29;
    return v15 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100713AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v161 = a2;
  v148 = sub_1007A1B34();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AF4280, &unk_1008352C0);
  __chkstk_darwin(v6 - 8);
  v146 = &v144 - v7;
  v8 = sub_1001F1160(&qword_100AE6A10, &qword_10082A160);
  __chkstk_darwin(v8 - 8);
  v150 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v153 = &v144 - v11;
  v167 = sub_1007A0F74();
  v12 = *(v167 - 8);
  __chkstk_darwin(v167);
  v154 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v162 = &v144 - v15;
  v166 = sub_1007A0404();
  v16 = *(v166 - 8);
  __chkstk_darwin(v166);
  v18 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001F1160(&unk_100AEB380, &qword_100815DD0);
  __chkstk_darwin(v19 - 8);
  v21 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v156 = &v144 - v23;
  __chkstk_darwin(v24);
  v160 = &v144 - v25;
  __chkstk_darwin(v26);
  v159 = (&v144 - v27);
  __chkstk_darwin(v28);
  v30 = &v144 - v29;
  v31 = sub_10079FD44();
  v32 = *(v31 - 8);
  v171 = v31;
  v172 = v32;
  __chkstk_darwin(v31);
  v149 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v151 = &v144 - v35;
  __chkstk_darwin(v36);
  v38 = &v144 - v37;
  __chkstk_darwin(v39);
  v41 = &v144 - v40;
  v42 = sub_1007A1C14();
  v164 = *(v42 - 8);
  v165 = v42;
  __chkstk_darwin(v42);
  v155 = &v144 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v170 = *&v2[OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider];
  v168 = &v144 - v45;
  sub_10079B904();
  if (sub_1007135F0())
  {
    sub_1007A1B64();
    sub_1007A1B64();
    LODWORD(v157) = sub_10079FD34();
    v158 = v30;
    v46 = v21;
    v47 = v3;
    v48 = v16;
    v49 = *(v172 + 8);
    v50 = v38;
    v51 = v171;
    v49(v50, v171);
    v49(v41, v51);
    v30 = v158;
    v16 = v48;
    v3 = v47;
    v21 = v46;
    if (v157)
    {
      return (*(v164 + 8))(v168, v165);
    }
  }

  v152 = v21;
  v169 = a1;
  sub_1007A0364();
  type metadata accessor for CurrentLocationController(0);
  sub_100716E80(&qword_100AE63A8, type metadata accessor for CurrentLocationController, &unk_100841AB8);
  v173 = v3;
  sub_1007A09C4();
  v52 = *(v16 + 8);
  v158 = (v16 + 8);
  v52(v18, v166);
  v53 = v12;
  v54 = *(v12 + 48);
  v55 = v30;
  v56 = v30;
  v57 = v53;
  v58 = v167;
  v157 = v54;
  v59 = v54(v55, 1, v167);
  v163 = v57;
  if (v59 == 1)
  {
    sub_100007840(v56, &unk_100AEB380, &qword_100815DD0);
    v60 = v159;
  }

  else
  {
    sub_1007A1B64();
    v61 = sub_1007A0F64();
    (*(v172 + 8))(v41, v171);
    (*(v57 + 8))(v56, v58);
    v60 = v159;
    if (v61)
    {
      v62 = [objc_opt_self() defaultCenter];
      if (qword_100AD12D8 != -1)
      {
        swift_once();
      }

      [v62 postNotificationName:qword_100AD6290 object:v170];
    }
  }

  sub_1007A0384();
  sub_1007A09C4();
  v52(v18, v166);
  v63 = v167;
  v64 = v157;
  if (v157(v60, 1, v167) == 1)
  {
    sub_100007840(v60, &unk_100AEB380, &qword_100815DD0);
    v65 = v169;
    v66 = v171;
  }

  else
  {
    v65 = v169;
    sub_1007A1B64();
    v67 = sub_1007A0F64();
    v66 = v171;
    (*(v172 + 8))(v41, v171);
    (*(v163 + 8))(v60, v63);
    if (v67)
    {
      v68 = [objc_opt_self() defaultCenter];
      if (qword_100AD12E0 != -1)
      {
        swift_once();
      }

      [v68 postNotificationName:qword_100AD6298 object:v170];
    }
  }

  swift_getObjectType();
  sub_10079F9D4();
  sub_1007A1B64();
  v69 = v160;
  sub_10079F3D4();
  v70 = v69;

  v71 = v172;
  v72 = *(v172 + 8);
  v166 = v172 + 8;
  v72(v41, v66);
  if (v64(v70, 1, v63) == 1)
  {
    v159 = v72;
    sub_100007840(v70, &unk_100AEB380, &qword_100815DD0);
    v73 = v164;
    v74 = v165;
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v75 = sub_10079ACE4();
    sub_100008B98(v75, qword_100AF40B0);
    v76 = v155;
    (*(v73 + 16))(v155, v65, v74);
    v77 = v73;
    v78 = sub_10079ACC4();
    v79 = sub_1007A29B4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v175 = v81;
      *v80 = 136315138;
      sub_1007A1B64();
      sub_100716E80(&qword_100AE9A40, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
      v82 = sub_1007A3A74();
      v83 = v66;
      v85 = v84;
      v159(v41, v83);
      (*(v77 + 8))(v76, v74);
      v86 = sub_1000070F4(v82, v85, &v175);

      *(v80 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v78, v79, "Unable to find a spread containing: %s", v80, 0xCu);
      sub_1000074E0(v81);
    }

    else
    {

      (*(v77 + 8))(v76, v74);
    }

    v94 = 0;
    v95 = 0;
    v97 = v169;
    v96 = v170;
    p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
    goto LABEL_33;
  }

  v87 = (v163 + 32);
  v88 = *(v163 + 32);
  v88(v162, v70, v63);
  v89 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentSpread;
  v90 = v170;
  swift_beginAccess();
  v91 = v90 + v89;
  v92 = v156;
  sub_1000077D8(v91, v156, &unk_100AEB380, &qword_100815DD0);
  v93 = v64(v92, 1, v63);
  v158 = v88;
  if (v93 == 1)
  {
    sub_100007840(v92, &unk_100AEB380, &qword_100815DD0);
    v94 = 0;
    v95 = 0;
    v97 = v169;
    v96 = v170;
    v98 = v163;
    p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
  }

  else
  {
    v157 = v89;
    v159 = v72;
    v100 = v154;
    v160 = v87;
    v88(v154, v92, v63);
    v101 = v153;
    sub_1007A0F14();
    v102 = v71;
    v103 = *(v71 + 48);
    v104 = v171;
    p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
    if (v103(v101, 1, v171) == 1)
    {
      v98 = v163;
      (*(v163 + 8))(v100, v63);
      sub_100007840(v101, &qword_100AE6A10, &qword_10082A160);
      v94 = 0;
      v95 = 0;
      v97 = v169;
      v96 = v170;
    }

    else
    {
      v105 = *(v102 + 32);
      v106 = v151;
      v105(v151, v101, v104);
      v107 = v150;
      sub_1007A0F14();
      v108 = v103(v107, 1, v104);
      v97 = v169;
      if (v108 == 1)
      {
        v159(v106, v104);
        v98 = v163;
        (*(v163 + 8))(v154, v63);
        sub_100007840(v107, &qword_100AE6A10, &qword_10082A160);
      }

      else
      {
        v109 = v149;
        v105(v149, v107, v104);
        v110 = sub_10079FD14();
        if (v110 != sub_10079FD14())
        {
          v125 = sub_10079FD14();
          v126 = OBJC_IVAR____TtC5Books25CurrentLocationController_cfiByOrdinal;
          v127 = v173;
          swift_beginAccess();
          v128 = *&v127[v126];
          v96 = v170;
          if (*(v128 + 16))
          {
            v129 = sub_1002F9CDC(v125);
            v130 = v146;
            p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
            v89 = v157;
            if (v131)
            {
              v132 = *(v128 + 56);
              v133 = v147;
              v134 = v148;
              (*(v147 + 16))(v146, v132 + *(v147 + 72) * v129, v148);
              v135 = 0;
            }

            else
            {
              v135 = 1;
              v134 = v148;
              v133 = v147;
            }
          }

          else
          {
            v135 = 1;
            v134 = v148;
            v133 = v147;
            v130 = v146;
            p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
            v89 = v157;
          }

          (*(v133 + 56))(v130, v135, 1, v134);
          if ((*(v133 + 48))(v130, 1, v134))
          {
            v136 = v171;
            v137 = v159;
            v159(v149, v171);
            v137(v151, v136);
            v98 = v163;
            (*(v163 + 8))(v154, v63);
            sub_100007840(v130, &qword_100AF4280, &unk_1008352C0);
            v94 = 0;
            v95 = 0;
          }

          else
          {
            v138 = v145;
            (*(v133 + 16))(v145, v130, v134);
            sub_100007840(v130, &qword_100AF4280, &unk_1008352C0);
            v139 = sub_1007A1B24();
            v140 = v134;
            v94 = v139;
            v95 = v141;
            (*(v133 + 8))(v138, v140);
            v142 = v171;
            v143 = v159;
            v159(v149, v171);
            v143(v151, v142);
            v98 = v163;
            (*(v163 + 8))(v154, v63);
          }

          goto LABEL_32;
        }

        v111 = v159;
        v159(v109, v104);
        v111(v106, v104);
        v98 = v163;
        (*(v163 + 8))(v154, v63);
      }

      v94 = 0;
      v95 = 0;
      v96 = v170;
      p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    }

    v89 = v157;
  }

LABEL_32:
  v112 = v152;
  (v158)(v152, v162, v63);
  (*(v98 + 56))(v112, 0, 1, v63);
  swift_beginAccess();
  sub_1002391EC(v112, v96 + v89, &unk_100AEB380, &qword_100815DD0);
  swift_endAccess();
LABEL_33:
  sub_1002370E0(v97, v161);
  v113 = v173;
  sub_1007087B8();
  if (v95)
  {
    if (p_inst_props[363] != -1)
    {
      swift_once();
    }

    v114 = sub_10079ACE4();
    sub_100008B98(v114, qword_100AF40B0);
    v115 = v113;
    v116 = sub_10079ACC4();
    v117 = sub_1007A2994();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v174 = v119;
      *v118 = 136446210;
      sub_10000E3E8(&v115[OBJC_IVAR____TtC5Books25CurrentLocationController_bookEntity], *&v115[OBJC_IVAR____TtC5Books25CurrentLocationController_bookEntity + 24]);
      v120 = sub_10079ECF4();
      v122 = sub_1000070F4(v120, v121, &v174);

      *(v118 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v116, v117, "#visibleCFI First location ordinal change. Updating readingLocationCFI  for:%{public}s", v118, 0xCu);
      sub_1000074E0(v119);

      v96 = v170;
    }

    sub_100238938(v94, v95);

    sub_100238C24();
  }

  if (sub_1007135F0())
  {
    v123 = [objc_opt_self() defaultCenter];
    if (qword_100AD12C8 != -1)
    {
      swift_once();
    }

    [v123 postNotificationName:qword_100AD6280 object:v96];
  }

  return (*(v164 + 8))(v168, v165);
}

uint64_t sub_100714ED8()
{
  v1 = sub_1007A1B34();
  v2 = *(v1 - 8);
  v148 = v1;
  v149 = v2;
  __chkstk_darwin(v1);
  v141 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v144 = &v132 - v5;
  v6 = sub_1001F1160(&qword_100AF4280, &unk_1008352C0);
  __chkstk_darwin(v6 - 8);
  v143 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v147 = &v132 - v9;
  v10 = sub_1001F1160(&qword_100AE6A10, &qword_10082A160);
  __chkstk_darwin(v10 - 8);
  v12 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v132 - v14;
  v16 = sub_10079FD44();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v151 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v132 - v20;
  v22 = sub_1007A0F74();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v152 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v145 = &v132 - v26;
  __chkstk_darwin(v27);
  v29 = &v132 - v28;
  v150 = v0;
  sub_100708160(&v132 - v28);
  sub_1007A0F14();
  v30 = *(v17 + 6);
  if (v30(v15, 1, v16) == 1)
  {
    v12 = v15;
LABEL_5:
    sub_100007840(v12, &qword_100AE6A10, &qword_10082A160);
    v32 = v152;
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v33 = sub_10079ACE4();
    sub_100008B98(v33, qword_100AF40B0);
    (*(v23 + 16))(v32, v29, v22);
    v34 = sub_10079ACC4();
    v35 = sub_1007A29B4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = v23;
      v38 = swift_slowAlloc();
      v154[0] = v38;
      *v36 = 136446210;
      sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity, &protocol conformance descriptor for SpreadPaginationEntity);
      v39 = sub_1007A3A74();
      v40 = v22;
      v42 = v41;
      v146 = v29;
      v43 = *(v37 + 8);
      v43(v32, v40);
      v44 = sub_1000070F4(v39, v42, v154);

      *(v36 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to update visible CFI range: unable to get first/last location from spread %{public}s", v36, 0xCu);
      sub_1000074E0(v38);

      return (v43)(v146, v40);
    }

    else
    {

      v46 = *(v23 + 8);
      v46(v32, v22);
      return (v46)(v29, v22);
    }
  }

  v140 = v22;
  v142 = v23;
  v31 = *(v17 + 4);
  v31(v21, v15, v16);
  sub_1007A0F04();
  if (v30(v12, 1, v16) == 1)
  {
    (*(v17 + 1))(v21, v16);
    v23 = v142;
    v22 = v140;
    goto LABEL_5;
  }

  v152 = v17;
  v146 = v29;
  v138 = v16;
  v31(v151, v12, v16);
  v47 = sub_10079FD14();
  v48 = OBJC_IVAR____TtC5Books25CurrentLocationController_cfiByOrdinal;
  v49 = v150;
  swift_beginAccess();
  v50 = *(v49 + v48);
  v51 = *(v50 + 16);
  v139 = v21;
  if (v51)
  {
    v52 = sub_1002F9CDC(v47);
    v53 = v142;
    v54 = v140;
    v55 = v148;
    v56 = v149;
    if (v57)
    {
      v58 = *(v50 + 56) + *(v149 + 72) * v52;
      v59 = v147;
      (*(v149 + 16))(v147, v58, v148);
      v60 = 0;
      goto LABEL_16;
    }

    v60 = 1;
  }

  else
  {
    v60 = 1;
    v53 = v142;
    v54 = v140;
    v55 = v148;
    v56 = v149;
  }

  v59 = v147;
LABEL_16:
  v61 = v56[7];
  v61(v59, v60, 1, v55);
  v62 = v56[6];
  if (!v62(v59, 1, v55))
  {
    v140 = v61;
    v66 = v56[2];
    v67 = v144;
    v136 = v56 + 2;
    v137 = v62;
    v135 = v66;
    v66(v144, v59, v55);
    sub_100007840(v59, &qword_100AF4280, &unk_1008352C0);
    v134 = sub_1007A1B24();
    v147 = v68;
    v133 = v56[1];
    v133(v67, v55);
    v69 = sub_10079FD14();
    v70 = *(v150 + v48);
    if (*(v70 + 16))
    {
      v71 = sub_1002F9CDC(v69);
      v72 = v137;
      v64 = v53;
      if (v73)
      {
        v74 = *(v70 + 56) + *(v149 + 72) * v71;
        v59 = v143;
        v135(v143, v74, v55);
        v75 = 0;
        v76 = v146;
      }

      else
      {
        v75 = 1;
        v76 = v146;
        v59 = v143;
      }
    }

    else
    {
      v75 = 1;
      v76 = v146;
      v59 = v143;
      v72 = v137;
      v64 = v53;
    }

    v140(v59, v75, 1, v55);
    v77 = v72(v59, 1, v55);
    v65 = v139;
    if (v77)
    {

      v63 = v76;
      goto LABEL_25;
    }

    v95 = v144;
    v135(v144, v59, v55);
    sub_100007840(v59, &qword_100AF4280, &unk_1008352C0);
    sub_1007A1B04();
    v133(v95, v55);
    v96 = v76;
    if (sub_1007A2414())
    {
      if (sub_1007A2414())
      {
        v97 = v141;
        sub_1007A1B14();
        sub_10079B904();
        sub_100716E80(&qword_100ADE7A0, &type metadata accessor for CFIRange, &protocol conformance descriptor for CFIRange);
        v98 = v95;
        v99 = v148;
        v100 = sub_1007A2124();
        v101 = v133;
        v102 = v100;
        v133(v98, v99);
        if ((v102 & 1) == 0)
        {
          v135(v98, v97, v99);
          sub_10079B914();
        }

        v101(v97, v99);
      }

      else
      {

        if (qword_100AD1B58 != -1)
        {
          swift_once();
        }

        v117 = sub_10079ACE4();
        sub_100008B98(v117, qword_100AF40B0);

        v118 = sub_10079ACC4();
        v119 = sub_1007A29B4();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = v54;
          v122 = swift_slowAlloc();
          v153 = v122;
          *v120 = 136446210;
          v123 = sub_1007A23E4();
          v124 = v96;
          v126 = v125;

          v127 = sub_1000070F4(v123, v126, &v153);

          *(v120 + 4) = v127;
          _os_log_impl(&_mh_execute_header, v118, v119, "Failed to update visible CFI range: invalid end CFI: %{public}s", v120, 0xCu);
          sub_1000074E0(v122);

          v128 = *(v152 + 1);
          v129 = v138;
          v128(v151, v138);
          v128(v139, v129);
          return (*(v142 + 8))(v124, v121);
        }
      }
    }

    else
    {

      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v103 = sub_10079ACE4();
      sub_100008B98(v103, qword_100AF40B0);

      v104 = sub_10079ACC4();
      v105 = sub_1007A29B4();

      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v153 = v107;
        *v106 = 136446210;
        v108 = sub_1007A23E4();
        v109 = v96;
        v111 = v110;

        v112 = sub_1000070F4(v108, v111, &v153);

        *(v106 + 4) = v112;
        _os_log_impl(&_mh_execute_header, v104, v105, "Failed to update visible CFI range: invalid start CFI: %{public}s", v106, 0xCu);
        sub_1000074E0(v107);

        v113 = *(v152 + 1);
        v114 = v138;
        v113(v151, v138);
        v113(v139, v114);
        v115 = *(v142 + 8);
        v116 = v109;
        return v115(v116, v54);
      }
    }

    v130 = *(v152 + 1);
    v131 = v138;
    v130(v151, v138);
    v130(v139, v131);
    v115 = *(v142 + 8);
    v116 = v76;
    return v115(v116, v54);
  }

  v63 = v146;
  v64 = v53;
  v65 = v139;
LABEL_25:
  sub_100007840(v59, &qword_100AF4280, &unk_1008352C0);
  v78 = v145;
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v79 = sub_10079ACE4();
  sub_100008B98(v79, qword_100AF40B0);
  (*(v64 + 16))(v78, v63, v54);
  v80 = sub_10079ACC4();
  v81 = sub_1007A29D4();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v153 = v83;
    *v82 = 136446210;
    sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity, &protocol conformance descriptor for SpreadPaginationEntity);
    v84 = sub_1007A3A74();
    v85 = v63;
    v87 = v86;
    v88 = *(v64 + 8);
    v88(v78, v54);
    v89 = sub_1000070F4(v84, v87, &v153);

    *(v82 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v80, v81, "Deferring update visible CFI range: CFI locations for %{public}s are not yet available", v82, 0xCu);
    sub_1000074E0(v83);

    v90 = *(v152 + 1);
    v91 = v138;
    v90(v151, v138);
    v90(v139, v91);
    return (v88)(v85, v54);
  }

  else
  {

    v92 = *(v64 + 8);
    v92(v78, v54);
    v93 = *(v152 + 1);
    v94 = v138;
    v93(v151, v138);
    v93(v65, v94);
    return (v92)(v63, v54);
  }
}

uint64_t sub_100715EB8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = sub_1001F1160(&qword_100AE6A10, &qword_10082A160);
  __chkstk_darwin(v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_1007A0F74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079FD44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v48 = &v46 - v14;
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  swift_getObjectType();
  v18 = a1;
  sub_10079F9D4();
  sub_10079F3A4();

  sub_1007A0F14();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_100007840(v5, &qword_100AE6A10, &qword_10082A160);
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v19 = sub_10079ACE4();
    sub_100008B98(v19, qword_100AF40B0);
    v20 = *(v11 + 16);
    v21 = v49;
    v20(v49, v18, v10);
    v22 = sub_10079ACC4();
    v23 = sub_1007A29B4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v47 = v20;
      v25 = v24;
      v26 = swift_slowAlloc();
      v51 = v26;
      *v25 = 136315138;
      sub_100716E80(&qword_100AE9A40, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
      v27 = sub_1007A3A74();
      v48 = v18;
      v28 = v27;
      v30 = v29;
      (*(v11 + 8))(v21, v10);
      v31 = sub_1000070F4(v28, v30, &v51);

      *(v25 + 4) = v31;
      v18 = v48;
      _os_log_impl(&_mh_execute_header, v22, v23, "Failed to find adjusted canonical location for %s", v25, 0xCu);
      sub_1000074E0(v26);

      v20 = v47;
    }

    else
    {

      (*(v11 + 8))(v21, v10);
    }

    return (v20)(v50, v18, v10);
  }

  else
  {
    v32 = *(v11 + 32);
    v32(v17, v5, v10);
    v33 = v17;
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v34 = sub_10079ACE4();
    sub_100008B98(v34, qword_100AF40B0);
    v35 = v48;
    (*(v11 + 16))(v48, v33, v10);
    v36 = sub_10079ACC4();
    v37 = sub_1007A29A4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v38 = 136315138;
      sub_100716E80(&qword_100AE9A40, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
      v39 = sub_1007A3A74();
      v49 = v33;
      v40 = v32;
      v41 = v39;
      v43 = v42;
      (*(v11 + 8))(v35, v10);
      v44 = sub_1000070F4(v41, v43, &v51);

      *(v38 + 4) = v44;
      v32 = v40;
      v33 = v49;
      _os_log_impl(&_mh_execute_header, v36, v37, "Returning #spread aligned location: %s", v38, 0xCu);
      sub_1000074E0(v47);
    }

    else
    {

      (*(v11 + 8))(v35, v10);
    }

    return (v32)(v50, v33, v10);
  }
}

void sub_100716504()
{
  swift_getObjectType();
  if (sub_10079F9E4())
  {
    sub_10079F9D4();
    sub_1007A1BE4();
    v0 = sub_10079F434();

    if (v0)
    {
      sub_10079F9D4();
      sub_1007A1BE4();
      v1 = sub_10079F434();

      if (v1)
      {
        v2 = sub_1007A1264();
        v3 = sub_1007A1B94();
        v4 = __OFADD__(v2, v3);
        v5 = v2 + v3;
        if (v4)
        {
          __break(1u);
        }

        else
        {
          v6 = sub_1007A1264();
          v7 = sub_1007A1B94();

          if (!__OFADD__(v6, v7))
          {
            if (!__OFSUB__(v6 + v7, v5))
            {
              return;
            }

LABEL_12:
            __break(1u);
            return;
          }
        }

        __break(1u);
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_10071664C(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v31 = sub_1001F1160(&unk_100AF1140, &unk_100812770);
  __chkstk_darwin(v31);
  v4 = &v29 - v3;
  v5 = sub_1001F1160(&qword_100AF4298, &unk_100841B80);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for CurrentLocationController.StoredUpdate(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = OBJC_IVAR____TtC5Books25CurrentLocationController_storedUpdate;
  swift_beginAccess();
  sub_1000077D8(a1 + v15, v7, &qword_100AF4298, &unk_100841B80);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100007840(v7, &qword_100AF4298, &unk_100841B80);
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AF40B0);
    v17 = sub_10079ACC4();
    v18 = sub_1007A29D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = v32;
    }
  }

  else
  {
    sub_100717EB4(v7, v14);
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v20 = sub_10079ACE4();
    sub_100008B98(v20, qword_100AF40B0);
    sub_100717DEC(v14, v11);
    v21 = sub_10079ACC4();
    v22 = sub_1007A29D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v23 = 134218242;
      *(v23 + 4) = v32;
      *(v23 + 12) = 2080;
      sub_1007A0044();
      sub_100716E80(&unk_100AF42B0, &type metadata accessor for ContentMessage.CFIUpdate, &protocol conformance descriptor for ContentMessage.CFIUpdate);
      LODWORD(v32) = v22;
      v33 = sub_1007A3A74();
      v34 = v24;
      v36._countAndFlagsBits = 2108704;
      v36._object = 0xE300000000000000;
      sub_1007A23D4(v36);
      sub_1000077D8(&v11[*(v8 + 20)], v4, &unk_100AF1140, &unk_100812770);
      v37._countAndFlagsBits = sub_1007A22E4();
      sub_1007A23D4(v37);

      v25 = v33;
      v26 = v34;
      sub_100717E50(v11);
      v27 = sub_1000070F4(v25, v26, &v35);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v21, v32, "Timer fired after: %ldms - sending: %s", v23, 0x16u);
      sub_1000074E0(v30);
    }

    else
    {

      sub_100717E50(v11);
    }

    *(a1 + OBJC_IVAR____TtC5Books25CurrentLocationController_sendStoredUpdate) = 1;
    sub_10070F534(v14, &v14[*(v8 + 20)]);
    sub_100717E50(v14);
  }

  return sub_10004A804(a1);
}

unint64_t sub_100716B40()
{
  result = qword_100AF40C8;
  if (!qword_100AF40C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF40C8);
  }

  return result;
}

void sub_100716BBC(uint64_t a1)
{
  sub_100716CE8(319);
  if (v1 <= 0x3F)
  {
    sub_10079ACE4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100716CE8(uint64_t a1)
{
  if (!qword_100AF4188)
  {
    type metadata accessor for CurrentLocationController.StoredUpdate(255);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF4188);
    }
  }
}

void sub_100716D98(uint64_t a1)
{
  sub_1007A0044();
  if (v1 <= 0x3F)
  {
    sub_100716E1C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100716E1C(uint64_t a1)
{
  if (!qword_100AF4200[0])
  {
    sub_1001F1234(&qword_100AD6190, &qword_100812CC0);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, qword_100AF4200);
    }
  }
}

uint64_t sub_100716E80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100716EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AF1140, &unk_100812770);
  __chkstk_darwin(v4 - 8);
  v111 = &v93 - v5;
  v6 = sub_1001F1160(&unk_100AF4260, &qword_100812CD8);
  __chkstk_darwin(v6 - 8);
  v110 = &v93 - v7;
  v8 = sub_1001F1160(&unk_100AD65C0, &unk_100812CE0);
  __chkstk_darwin(v8 - 8);
  v109 = &v93 - v9;
  v10 = sub_1001F1160(&qword_100AD65A8, &unk_100812CB0);
  __chkstk_darwin(v10 - 8);
  v107 = &v93 - v11;
  v12 = sub_1007A1C14();
  __chkstk_darwin(v12 - 8);
  v106 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10079FD44();
  v108 = *(v115 - 1);
  __chkstk_darwin(v115);
  v113 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v114 = &v93 - v16;
  v17 = sub_100796C04();
  v102 = *(v17 - 8);
  v103 = v17;
  __chkstk_darwin(v17);
  v116 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v93 - v20;
  v22 = sub_10079FE64();
  __chkstk_darwin(v22);
  v24 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1001F1160(&unk_100AF2970, &qword_100812CD0);
  __chkstk_darwin(v25 - 8);
  v105 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v93 - v28;
  v30 = sub_1001F1160(&qword_100AF42D0, &unk_100841BA0);
  __chkstk_darwin(v30 - 8);
  v32 = &v93 - v31;
  v33 = sub_10079FE84();
  __chkstk_darwin(v33);
  v104 = &v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v93 - v36;
  v38 = a1;
  v40 = v39;
  v42 = v41;
  sub_1000077D8(v38, v32, &qword_100AF42D0, &unk_100841BA0);
  if ((*(v42 + 48))(v32, 1, v40) == 1)
  {
    sub_100007840(v32, &qword_100AF42D0, &unk_100841BA0);
    v43 = sub_1007A0124();
    return (*(*(v43 - 8) + 56))(a2, 1, 1, v43);
  }

  v101 = a2;
  (*(v42 + 32))(v37, v32, v40);
  v45 = sub_1007A0124();
  v46 = *(v45 - 8);
  v100 = v42;
  v47 = *(v46 + 56);
  v98 = v46 + 56;
  v47(v29, 1, 1, v45);
  swift_getObjectType();
  v112 = sub_10079F9D4();
  sub_10079FE74();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v49 = v29;
  v99 = v47;
  if (EnumCaseMultiPayload != 1)
  {
    v95 = v45;
    v60 = v100;
    v96 = v40;
    v97 = v49;
    sub_1007A23F4();
    v62 = v61;

    if ((v62 & 1) != 0 || !sub_10079F434())
    {
      goto LABEL_15;
    }

    v63 = sub_1007A1284();
    sub_10079FE54();
    v64 = sub_100796BC4();
    v66 = v65;
    (*(v102 + 8))(v21, v103);
    if (*(v63 + 16))
    {
      sub_10000E53C(v64, v66);
      v68 = v67;

      if (v68)
      {

        sub_1007A10C4();
        sub_100716E80(&qword_100AF42E0, &type metadata accessor for HistoryPaginationEntity, &protocol conformance descriptor for ElementPaginationEntity<A>);
        sub_10079FE24();
        if ((v69 & 1) == 0)
        {
          sub_1007A1304();
          v87 = v114;
          sub_10079FD04();
          v94 = v37;
          sub_10079FE54();
          v88 = v108;
          (*(v108 + 16))(v113, v87, v115);
          v89 = sub_1001F1160(&unk_100AF1150, &qword_10082A090);
          (*(*(v89 - 8) + 56))(v107, 1, 1, v89);
          v90 = sub_1007A1BC4();
          (*(*(v90 - 8) + 56))(v109, 1, 1, v90);
          v91 = sub_1007A1B84();
          (*(*(v91 - 8) + 56))(v110, 1, 1, v91);
          v92 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
          (*(*(v92 - 8) + 56))(v111, 1, 1, v92);
          sub_1007A1B54();
          v58 = v105;
          sub_1007A0104();

          (*(v88 + 8))(v114, v115);
          v49 = v97;
          sub_100007840(v97, &unk_100AF2970, &qword_100812CD0);
          (*(v60 + 8))(v94, v96);
          v99(v58, 0, 1, v95);
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_14:

LABEL_15:
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v70 = sub_10079ACE4();
    sub_100008B98(v70, qword_100AF40B0);
    v71 = v60;
    v72 = *(v60 + 16);
    v73 = v104;
    v74 = v96;
    v72(v104, v37, v96);
    v75 = sub_10079ACC4();
    v76 = sub_1007A29A4();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v94 = v37;
      v78 = v77;
      v115 = swift_slowAlloc();
      v117 = v115;
      *v78 = 136315138;
      v79 = v116;
      sub_10079FE54();
      sub_100716E80(&qword_100AF42D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v80 = v103;
      v81 = sub_1007A3A74();
      v83 = v82;
      (*(v102 + 8))(v79, v80);
      v84 = *(v71 + 8);
      v84(v73, v74);
      v85 = sub_1000070F4(v81, v83, &v117);

      *(v78 + 4) = v85;
      _os_log_impl(&_mh_execute_header, v75, v76, "Could not find paginated history with uuid: %s", v78, 0xCu);
      sub_1000074E0(v115);

      v84(v94, v74);
    }

    else
    {

      v86 = *(v71 + 8);
      v86(v73, v74);
      v86(v37, v74);
    }

    v59 = v101;
    v49 = v97;
    return sub_100717F18(v49, v59);
  }

  v50 = v108;
  v51 = v114;
  v52 = v24;
  v53 = v115;
  (*(v108 + 32))(v114, v52, v115);
  sub_10079FE54();
  (*(v50 + 16))(v113, v51, v53);
  v54 = sub_1001F1160(&unk_100AF1150, &qword_10082A090);
  (*(*(v54 - 8) + 56))(v107, 1, 1, v54);
  v55 = sub_1007A1BC4();
  (*(*(v55 - 8) + 56))(v109, 1, 1, v55);
  v56 = sub_1007A1B84();
  (*(*(v56 - 8) + 56))(v110, 1, 1, v56);
  v57 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
  (*(*(v57 - 8) + 56))(v111, 1, 1, v57);
  sub_1007A1B54();
  v58 = v105;
  sub_1007A0104();

  (*(v50 + 8))(v114, v115);
  sub_100007840(v49, &unk_100AF2970, &qword_100812CD0);
  (*(v100 + 8))(v37, v40);
  v99(v58, 0, 1, v45);
LABEL_5:
  sub_100717F18(v58, v49);
  v59 = v101;
  return sub_100717F18(v49, v59);
}

unint64_t sub_100717D00()
{
  result = qword_100AF4250;
  if (!qword_100AF4250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4250);
  }

  return result;
}

uint64_t sub_100717D54(uint64_t a1)
{
  sub_1007A0F74();
  sub_100716E80(&qword_100AEB790, &type metadata accessor for SpreadPaginationEntity, &protocol conformance descriptor for SpreadPaginationEntity);
  return sub_1007A2124() & 1;
}

uint64_t sub_100717DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocationController.StoredUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100717E50(uint64_t a1)
{
  v2 = type metadata accessor for CurrentLocationController.StoredUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100717EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocationController.StoredUpdate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100717F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AF2970, &qword_100812CD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double EngagementManagerMetadata.propertyCounts.getter()
{
  swift_beginAccess();

  return result;
}

double EngagementManagerMetadata.propertyCounts.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id sub_1007183E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    swift_errorRetain();
    v5 = sub_1007967C4();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10071846C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_errorRetain();
  return v3;
}

void sub_1007184C4(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *&a1[v6] = a3;
  v7 = a1;
  v8 = a3;
}

uint64_t sub_10071853C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

Class sub_1007185FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  sub_100217B24(a1 + v8, v7);
  v9 = sub_100796BB4();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = sub_100796AF4().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

uint64_t sub_100718744@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100217B24(v2 + v4, a2);
}

void sub_1007187A4(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    sub_100796B64();
    v10 = sub_100796BB4();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_100796BB4();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();
  v13 = a1;
  sub_100217AB4(v9, &a1[v12]);
  swift_endAccess();
}

uint64_t sub_1007188F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_100217AB4(a1, v2 + v4);
  return swift_endAccess();
}

id EngagementManagerMetadata.init()()
{
  *&v0[OBJC_IVAR___BKEngagementManagerMetadata_propertyCounts] = _swiftEmptyDictionarySingleton;
  v1 = OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitSuccessTimestamp;
  v2 = sub_100796BB4();
  v3 = *(*(v2 - 8) + 56);
  v3(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitError] = 0;
  v3(&v0[OBJC_IVAR___BKEngagementManagerMetadata_lastSyncToCloudKitErrorTimestamp], 1, 1, v2);
  v3(&v0[OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitSuccessTimestamp], 1, 1, v2);
  *&v0[OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitError] = 0;
  v3(&v0[OBJC_IVAR___BKEngagementManagerMetadata_lastSyncFromCloudKitErrorTimestamp], 1, 1, v2);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for EngagementManagerMetadata(0);
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t type metadata accessor for EngagementManagerMetadata(uint64_t a1)
{
  result = qword_100AF43E8;
  if (!qword_100AF43E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id EngagementManagerMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementManagerMetadata(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100718D40(uint64_t a1)
{
  sub_1002CDD3C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100718DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_100718E38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100718EB8(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 56);
  swift_getKeyPath();
  sub_10071DF28(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  *a2 = *(v3 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType);
}

double sub_100718F68(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *a1;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079E004();
  sub_10000E3E8(a4, a4[3]);
  return sub_100770444(v5);
}

uint64_t sub_100718FEC@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = sub_10079BC44();
  v73 = *(v2 - 8);
  v74 = v2;
  __chkstk_darwin(v2);
  v71 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v54 - v5;
  v6 = sub_10079E3F4();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&qword_100AF4400, &qword_100841CA8);
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  v11 = sub_1001F1160(&qword_100AF4408, &qword_100841CB0);
  v67 = *(v11 - 8);
  v68 = v11;
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v66 = sub_1001F1160(&qword_100AF4410, &qword_100841CB8);
  __chkstk_darwin(v66);
  v72 = &v54 - v14;
  v15 = sub_1001F1160(&qword_100AF4418, &qword_100841CC0);
  __chkstk_darwin(v15);
  v70 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  v20 = sub_1001F1160(&qword_100AF4420, &qword_100841CC8);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v23 = sub_1001F1160(&qword_100AF4428, &qword_100841CD0);
  __chkstk_darwin(v23);
  v26 = &v54 - v25;
  if (*(v1 + 40) == 1)
  {
    *v26 = sub_10079CB34();
    *(v26 + 1) = 0;
    v26[16] = 0;
    v27 = sub_1001F1160(&qword_100AF4498, &qword_100841D68);
    sub_100719828(v1, &v26[*(v27 + 44)]);
    v28 = sub_10079DDC4();
    v29 = sub_10079D294();
    v30 = &v26[*(v23 + 36)];
    *v30 = v28;
    v30[8] = v29;
    v31 = &qword_100AF4428;
    v32 = &qword_100841CD0;
    sub_1000077D8(v26, v22, &qword_100AF4428, &qword_100841CD0);
    swift_storeEnumTagMultiPayload();
    sub_10071D4D8();
    sub_10071D5BC();
  }

  else
  {
    v55 = v22;
    v57 = v19;
    v58 = v20;
    v59 = v23;
    v60 = v15;
    __chkstk_darwin(v24);
    *(&v54 - 2) = v1;
    sub_1001F1160(&qword_100AF4430, &qword_100841CD8);
    sub_10071D420();
    sub_10079C2B4();
    v33 = v61;
    sub_10079E3C4();
    sub_100005920(&unk_100AF4450, &qword_100AF4400, &qword_100841CA8, &protocol conformance descriptor for NavigationStack<A, B>);
    v56 = v13;
    v34 = v63;
    v35 = v65;
    sub_10079D9F4();
    (*(v64 + 8))(v33, v35);
    (*(v62 + 8))(v10, v34);
    v36 = *(v1 + 56);
    v37 = *(v36 + 104);
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v37;
    v39 = v69;
    sub_10079B9A4(v69);

    v41 = v73;
    v40 = v74;
    v42 = v71;
    (*(v73 + 104))(v71, enum case for ColorScheme.light(_:), v74);
    v43 = sub_10079BC34();
    v44 = *(v41 + 8);
    v44(v42, v40);
    v44(v39, v40);
    if (v43)
    {
      v45 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    else
    {
      v45 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    }

    v46 = v45;
    v47 = v60;
    v48 = v55;

    v49 = v72;
    (*(v67 + 32))(v72, v56, v68);
    *(v49 + *(v66 + 36)) = v46;
    v50 = *(v47 + 36);
    swift_getKeyPath();
    v76 = v36;
    sub_10071DF28(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
    sub_100797A14();

    v51 = OBJC_IVAR____TtC5Books19BookReaderViewModel__themeColorScheme;
    swift_beginAccess();
    v52 = v70;
    (*(v41 + 16))(&v70[v50], v36 + v51, v40);
    (*(v41 + 56))(v52 + v50, 0, 1, v40);
    sub_10020B3C8(v49, v52, &qword_100AF4410, &qword_100841CB8);
    v31 = &qword_100AF4418;
    v32 = &qword_100841CC0;
    v26 = v57;
    sub_10020B3C8(v52, v57, &qword_100AF4418, &qword_100841CC0);
    sub_1000077D8(v26, v48, &qword_100AF4418, &qword_100841CC0);
    swift_storeEnumTagMultiPayload();
    sub_10071D4D8();
    sub_10071D5BC();
  }

  sub_10079CCA4();
  return sub_100007840(v26, v31, v32);
}

uint64_t sub_100719828@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v37 = a2;
  v3 = sub_1001F1160(&qword_100AF44A0, &qword_100841D70);
  __chkstk_darwin(v3 - 8);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v37 - v6;
  v38 = sub_100796CF4();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_1007A21D4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v39 = a1;
  v20 = *(a1 + 56);
  swift_getKeyPath();
  v44[0] = v20;
  sub_10071DF28(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  if (*(v20 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType))
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v14 + 16))(v16, v19, v13);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v23 = v38;
    (*(v7 + 16))(v9, v12, v38);
    v24 = sub_1007A22D4(v16, 0, 0, v22, v9, "The header for the highlights and notes popover", 47, 2, v37);
  }

  else
  {
    sub_1007A2154();
    sub_100796C94();
    (*(v14 + 16))(v16, v19, v13);
    type metadata accessor for BundleFinder();
    v26 = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass:v26];
    v23 = v38;
    (*(v7 + 16))(v9, v12, v38);
    v24 = sub_1007A22D4(v16, 0, 0, v27, v9, "The header for the bookmarks popover", 36, 2, v37);
  }

  v28 = v24;
  v29 = v25;
  (*(v7 + 8))(v12, v23);
  (*(v14 + 8))(v19, v13);
  v30 = sub_10079D284();
  v50 = 1;
  v31 = v40;
  sub_100719DA4();
  v32 = v41;
  sub_1000077D8(v31, v41, &qword_100AF44A0, &qword_100841D70);
  *&v42 = v28;
  *(&v42 + 1) = v29;
  v43[0] = v30;
  *&v43[1] = v51[0];
  *&v43[4] = *(v51 + 3);
  memset(&v43[8], 0, 32);
  v43[40] = 1;
  v33 = *&v43[16];
  v34 = v37;
  v37[1] = *v43;
  v34[2] = v33;
  *(v34 + 41) = *&v43[25];
  *v34 = v42;
  v35 = sub_1001F1160(&qword_100AF44A8, &unk_100841DA0);
  sub_1000077D8(v32, v34 + *(v35 + 48), &qword_100AF44A0, &qword_100841D70);
  sub_10071D7BC(&v42, v44);
  sub_100007840(v31, &qword_100AF44A0, &qword_100841D70);
  sub_100007840(v32, &qword_100AF44A0, &qword_100841D70);
  v44[0] = v28;
  v44[1] = v29;
  v45 = v30;
  *v46 = v51[0];
  *&v46[3] = *(v51 + 3);
  v47 = 0u;
  v48 = 0u;
  v49 = 1;
  return sub_100007840(v44, &qword_100AF44B0, &qword_100822C08);
}

uint64_t sub_100719DA4()
{
  v1 = sub_1001F1160(&qword_100AF44B8, &qword_100841DB0);
  __chkstk_darwin(v1);
  v3 = v12 - v2;
  v4 = sub_1001F1160(&qword_100AF44C0, &qword_100841DB8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - v6;
  v8 = *(v0 + 56);
  swift_getKeyPath();
  v12[0] = v8;
  sub_10071DF28(&qword_100AF2550, type metadata accessor for BookReaderViewModel, &unk_100831DD8);
  sub_100797A14();

  if (*(v8 + OBJC_IVAR____TtC5Books19BookReaderViewModel__bookmarkNotesContentType))
  {
    sub_10071CEC0(0, 2, v7);
  }

  else
  {
    sub_10071CEC0(0, 1, v7);
  }

  (*(v5 + 16))(v3, v7, v4);
  swift_storeEnumTagMultiPayload();
  v9 = sub_1001F1234(&qword_100AF44C8, &qword_100841DC0);
  v10 = sub_10071D82C();
  v12[0] = v9;
  v12[1] = v10;
  swift_getOpaqueTypeConformance2();
  sub_10079CCA4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10071A03C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10079CB34();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1001F1160(&qword_100AF44E8, &qword_100841E60);
  sub_10071A0D0(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = sub_10079D2B4();
  v5 = sub_10079C2C4();
  result = sub_1001F1160(&qword_100AF4430, &qword_100841CD8);
  v7 = a2 + *(result + 36);
  *v7 = v5;
  *(v7 + 8) = a1;
  return result;
}

uint64_t sub_10071A0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v3 = sub_10079C874();
  v125 = *(v3 - 8);
  __chkstk_darwin(v3);
  v121 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100AF44A0, &qword_100841D70);
  __chkstk_darwin(v5);
  v7 = &v100 - v6;
  v120 = sub_1001F1160(&qword_100AF44F0, &qword_100841E68);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v100 - v8;
  v124 = sub_1001F1160(&qword_100AF44F8, &qword_100841E70);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v118 = &v100 - v9;
  v128 = sub_1001F1160(&qword_100AF4500, &qword_100841E78);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v122 = &v100 - v12;
  v108 = sub_10079CD74();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001F1160(&qword_100AF4508, &qword_100841E80);
  v105 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v100 - v16;
  v18 = sub_1001F1160(&qword_100AF4510, &qword_100841E88);
  v115 = *(v18 - 8);
  __chkstk_darwin(v18);
  v106 = &v100 - v19;
  v111 = sub_1001F1160(&qword_100AF4518, &qword_100841E90);
  __chkstk_darwin(v111);
  v114 = &v100 - v20;
  v113 = sub_1001F1160(&qword_100AF4520, &qword_100841E98);
  __chkstk_darwin(v113);
  v112 = &v100 - v21;
  v22 = sub_1001F1160(&qword_100AF4528, &qword_100841EA0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v110 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v109 = &v100 - v26;
  v27 = sub_1001F1160(&qword_100AF4530, &qword_100841EA8);
  __chkstk_darwin(v27 - 8);
  v116 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v32 = *(a1 + 41) == 1;
  v131 = a1;
  v130 = &v100 - v30;
  if (v32)
  {
    v101 = v18;
    v102 = v22;
    v103 = v7;
    v104 = v3;
    v137 = 0;
    v138 = 0xE000000000000000;
    sub_10071DC58(a1, &v132);
    sub_1007A26F4();
    v33 = sub_1007A26E4();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = &protocol witness table for MainActor;
    v35 = v135;
    *(v34 + 64) = v134;
    *(v34 + 80) = v35;
    *(v34 + 96) = v136;
    v36 = v133;
    *(v34 + 32) = v132;
    *(v34 + 48) = v36;
    sub_10071DC58(a1, &v132);
    v37 = sub_1007A26E4();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = &protocol witness table for MainActor;
    v39 = v135;
    *(v38 + 64) = v134;
    *(v38 + 80) = v39;
    *(v38 + 96) = v136;
    v40 = v133;
    *(v38 + 32) = v132;
    *(v38 + 48) = v40;
    sub_10079E204();
    sub_1001F1160(&qword_100AF4560, &unk_100841EC0);
    sub_10071DD00();
    sub_100005920(&qword_100AF4570, &qword_100AF4560, &unk_100841EC0, &protocol conformance descriptor for TupleView<A>);
    sub_100206ECC();
    sub_10079E114();
    sub_10079CD64();
    sub_100005920(&unk_100AF4578, &qword_100AF4508, &qword_100841E80, &protocol conformance descriptor for Picker<A, B, C>);
    v41 = v106;
    v42 = v108;
    sub_10079D704();
    (*(v107 + 8))(v14, v42);
    (*(v105 + 8))(v17, v15);
    sub_1001F1160(&qword_100AE17F0, &qword_100822890);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080EFF0;
    v44 = sub_10079D2C4();
    *(inited + 32) = v44;
    v45 = sub_10079D2E4();
    *(inited + 33) = v45;
    v46 = sub_10079D2D4();
    sub_10079D2D4();
    v47 = v41;
    if (sub_10079D2D4() != v44)
    {
      v46 = sub_10079D2D4();
    }

    sub_10079D2D4();
    if (sub_10079D2D4() != v45)
    {
      v46 = sub_10079D2D4();
    }

    a1 = v131;
    v75 = v104;
    v48 = v102;
    sub_10079BBA4();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v114;
    (*(v115 + 32))(v114, v47, v101);
    v58 = v57 + *(v111 + 36);
    *v58 = v46;
    *(v58 + 8) = v50;
    *(v58 + 16) = v52;
    *(v58 + 24) = v54;
    *(v58 + 32) = v56;
    *(v58 + 40) = 0;
    v59 = sub_10079D2B4();
    sub_10079BBA4();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v112;
    sub_10020B3C8(v57, v112, &qword_100AF4518, &qword_100841E90);
    v69 = v68 + *(v113 + 36);
    *v69 = v59;
    *(v69 + 8) = v61;
    *(v69 + 16) = v63;
    *(v69 + 24) = v65;
    *(v69 + 32) = v67;
    *(v69 + 40) = 0;
    v70 = v110;
    sub_10020B3C8(v68, v110, &qword_100AF4520, &qword_100841E98);
    *(v70 + *(v48 + 36)) = 1;
    v71 = v70;
    v72 = v109;
    sub_10020B3C8(v71, v109, &qword_100AF4528, &qword_100841EA0);
    v73 = v72;
    v74 = v130;
    sub_10020B3C8(v73, v130, &qword_100AF4528, &qword_100841EA0);
    (*(v23 + 56))(v74, 0, 1, v48);
    v7 = v103;
  }

  else
  {
    v75 = v3;
    (*(v23 + 56))(&v100 - v30, 1, 1, v22, v31);
  }

  sub_100719DA4();
  v76 = (*(a1 + 56) + OBJC_IVAR____TtC5Books19BookReaderViewModel_bookTitle);
  v78 = *v76;
  v77 = v76[1];
  *&v132 = v78;
  *(&v132 + 1) = v77;
  v79 = sub_10071DB90();
  v80 = sub_100206ECC();
  v81 = v117;
  sub_10079D824();
  sub_100007840(v7, &qword_100AF44A0, &qword_100841D70);
  v82 = v125;
  v83 = v121;
  (*(v125 + 104))(v121, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v75);
  *&v132 = v5;
  *(&v132 + 1) = &type metadata for String;
  *&v133 = v79;
  *(&v133 + 1) = v80;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v85 = v118;
  v86 = v120;
  sub_10079DA94();
  (*(v82 + 8))(v83, v75);
  v87 = (*(v119 + 8))(v81, v86);
  __chkstk_darwin(v87);
  sub_1001F1160(&qword_100AF4548, &qword_100841EB0);
  *&v132 = v86;
  *(&v132 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100005920(&qword_100AF4550, &qword_100AF4548, &qword_100841EB0, &protocol conformance descriptor for TupleToolbarContent<A>);
  v88 = v122;
  v89 = v124;
  sub_10079DBF4();
  (*(v123 + 8))(v85, v89);
  v90 = v130;
  v91 = v116;
  sub_1000077D8(v130, v116, &qword_100AF4530, &qword_100841EA8);
  v92 = v127;
  v93 = *(v127 + 16);
  v94 = v126;
  v95 = v128;
  v93(v126, v88, v128);
  v96 = v129;
  sub_1000077D8(v91, v129, &qword_100AF4530, &qword_100841EA8);
  v97 = sub_1001F1160(&qword_100AF4558, &qword_100841EB8);
  v93((v96 + *(v97 + 48)), v94, v95);
  v98 = *(v92 + 8);
  v98(v88, v95);
  sub_100007840(v90, &qword_100AF4530, &qword_100841EA8);
  v98(v94, v95);
  return sub_100007840(v91, &qword_100AF4530, &qword_100841EA8);
}

uint64_t sub_10071AFAC@<X0>(char *a1@<X8>)
{
  v72 = a1;
  v74 = sub_100796CF4();
  v1 = *(v74 - 8);
  __chkstk_darwin(v74);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v57 - v5;
  v7 = sub_1007A21D4();
  v73 = v7;
  v75 = *(v7 - 8);
  v8 = v75;
  __chkstk_darwin(v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v68 = sub_1001F1160(&qword_100AF4588, &qword_100841ED0);
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v70 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v69 = &v57 - v16;
  __chkstk_darwin(v17);
  v66 = (&v57 - v18);
  __chkstk_darwin(v19);
  v21 = &v57 - v20;
  sub_1007A2154();
  sub_100796C94();
  v67 = *(v8 + 16);
  v22 = v10;
  v58 = v10;
  v67(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v65 = ObjCClassFromMetadata;
  v64 = objc_opt_self();
  v24 = [v64 bundleForClass:ObjCClassFromMetadata];
  v63 = *(v1 + 16);
  v59 = v3;
  v25 = v74;
  v63(v3, v6, v74);
  v26 = sub_1007A22D4(v22, 0, 0, v24, v3, "Bookmarks section title in reader", 33, 2);
  v28 = v27;
  v29 = *(v1 + 8);
  v61 = v1 + 8;
  v62 = v29;
  v29(v6, v25);
  v30 = *(v75 + 8);
  v75 += 8;
  v60 = v30;
  v31 = v73;
  v30(v13, v73);
  v76 = v26;
  v77 = v28;
  sub_100206ECC();
  *v21 = sub_10079D5D4();
  *(v21 + 1) = v32;
  v21[16] = v33 & 1;
  *(v21 + 3) = v34;
  *(v21 + 16) = 256;
  sub_1007A2154();
  v35 = v6;
  sub_100796C94();
  v36 = v58;
  v67(v58, v13, v31);
  v37 = [v64 bundleForClass:v65];
  v38 = v59;
  v39 = v74;
  v63(v59, v35, v74);
  v40 = sub_1007A22D4(v36, 0, 0, v37, v38, "Higlights section title in reader", 33, 2);
  v42 = v41;
  v62(v35, v39);
  v60(v13, v73);
  v76 = v40;
  v77 = v42;
  v43 = sub_10079D5D4();
  v44 = v66;
  *v66 = v43;
  v44[1] = v45;
  *(v44 + 16) = v46 & 1;
  v44[3] = v47;
  *(v44 + 16) = 257;
  v48 = v71;
  v49 = *(v71 + 16);
  v50 = v68;
  v51 = v69;
  v49(v69, v21, v68);
  v52 = v70;
  v49(v70, v44, v50);
  v53 = v72;
  v49(v72, v51, v50);
  v54 = sub_1001F1160(&qword_100AF4590, &qword_100841ED8);
  v49(&v53[*(v54 + 48)], v52, v50);
  v55 = *(v48 + 8);
  v55(v44, v50);
  v55(v21, v50);
  v55(v52, v50);
  return (v55)(v51, v50);
}

uint64_t sub_10071B5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v16[0] = sub_1001F1160(&qword_100AF4598, &qword_100841EE0);
  __chkstk_darwin(v16[0]);
  v4 = v16 - v3;
  v5 = sub_1001F1160(&qword_100AF45A0, &qword_100841EE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - v7;
  v9 = sub_10079CDD4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1001F1160(&qword_100AF45A8, &qword_100841EF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v16 - v12;
  sub_10079CD84();
  v16[8] = a1;
  sub_1001F1160(&qword_100AF45B0, &qword_100841EF8);
  sub_10071DD5C();
  sub_10079BD14();
  sub_10079CD94();
  v16[4] = a1;
  sub_1001F1160(&qword_100AF4628, &qword_100841F38);
  sub_10071E11C();
  sub_10079BD14();
  v14 = *(v16[0] + 48);
  (*(v11 + 16))(v4, v13, v10);
  (*(v6 + 16))(&v4[v14], v8, v5);
  sub_10079CB84();
  (*(v6 + 8))(v8, v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_10071B8B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = sub_1001F1160(&qword_100AF4600, &qword_100841F20);
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v16 - v4;
  v17 = sub_1001F1160(&qword_100AF4640, &qword_100841F48);
  __chkstk_darwin(v17);
  v7 = &v16 - v6;
  v8 = sub_1001F1160(&qword_100AF45C8, &qword_100841F00);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  v12 = *(a1 + 72);
  v23 = *(a1 + 64);
  v24 = v12;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079DFF4();
  v13 = v22;
  sub_10079E414();
  v21 = a1;
  v20 = a1;
  sub_1001F1160(&qword_100ADB860, &qword_100835800);
  if (v13 == 1)
  {
    sub_1001F1160(&qword_100AF45D8, &qword_100841F08);
    sub_10071DE40();
    sub_100005920(&qword_100AEE360, &qword_100ADB860, &qword_100835800, &protocol conformance descriptor for Button<A>);
    sub_10079E424();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_10071DF70(&qword_100AF45C0, &qword_100AF45C8, &qword_100841F00, sub_10071DE40);
    sub_10071DF70(&qword_100AF45F8, &qword_100AF4600, &qword_100841F20, sub_10071E02C);
    sub_10079CCA4();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_1001F1160(&qword_100AF4610, &qword_100841F28);
    sub_10071E02C();
    sub_100005920(&qword_100AEE360, &qword_100ADB860, &qword_100835800, &protocol conformance descriptor for Button<A>);
    sub_10079E424();
    v15 = v19;
    (*(v3 + 16))(v7, v5, v19);
    swift_storeEnumTagMultiPayload();
    sub_10071DF70(&qword_100AF45C0, &qword_100AF45C8, &qword_100841F00, sub_10071DE40);
    sub_10071DF70(&qword_100AF45F8, &qword_100AF4600, &qword_100841F20, sub_10071E02C);
    sub_10079CCA4();
    return (*(v3 + 8))(v5, v15);
  }
}

uint64_t sub_10071BDB8(uint64_t a1)
{
  sub_10079E414();
  sub_1001F1160(&unk_100ADB8A0, &unk_100841F10);
  sub_1001F1160(&qword_100AF4638, &qword_100841F40);
  sub_100005920(&unk_100AF45E0, &unk_100ADB8A0, &unk_100841F10, &protocol conformance descriptor for Button<A>);
  sub_1001F1234(&qword_100ADB860, &qword_100835800);
  sub_100005920(&qword_100AEE360, &qword_100ADB860, &qword_100835800, &protocol conformance descriptor for Button<A>);
  swift_getOpaqueTypeConformance2();
  return sub_10079E424();
}

uint64_t sub_10071BF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_100796CF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  v17 = sub_1001F1160(&qword_100AF4620, &qword_100841F30);
  v18 = *(v17 - 8);
  v35 = v17;
  v36 = v18;
  __chkstk_darwin(v17);
  v20 = &v35 - v19;
  sub_10071DC58(a1, v38);
  v21 = swift_allocObject();
  v22 = v38[3];
  v21[3] = v38[2];
  v21[4] = v22;
  v21[5] = v38[4];
  v23 = v38[1];
  v21[1] = v38[0];
  v21[2] = v23;
  sub_10079E054();
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v4 + 16))(v6, v9, v3);
  v26 = sub_1007A22D4(v13, 0, 0, v25, v6, "Button to put Bookmarks / Highlights list into edit mode", 56, 2);
  v28 = v27;
  (*(v4 + 8))(v9, v3);
  (*(v11 + 8))(v16, v10);
  *&v38[0] = v26;
  *(&v38[0] + 1) = v28;
  sub_100206ECC();
  v29 = sub_10079D5D4();
  v31 = v30;
  LOBYTE(v28) = v32;
  sub_100005920(&qword_100AF4618, &qword_100AF4620, &qword_100841F30, &protocol conformance descriptor for Button<A>);
  v33 = v35;
  sub_10079D8D4();
  sub_10020B430(v29, v31, v28 & 1);

  return (*(v36 + 8))(v20, v33);
}

uint64_t sub_10071C34C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10079DF24();
  *a1 = result;
  return result;
}

uint64_t sub_10071C3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v36 = sub_100796CF4();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = sub_1007A21D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10079BB84();
  __chkstk_darwin(v16 - 8);
  v35 = sub_1001F1160(&unk_100ADB8A0, &unk_100841F10);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v18 = &v34 - v17;
  sub_10079BB54();
  sub_10071DC58(a1, v39);
  v19 = swift_allocObject();
  v20 = v39[3];
  v19[3] = v39[2];
  v19[4] = v20;
  v19[5] = v39[4];
  v21 = v39[1];
  v19[1] = v39[0];
  v19[2] = v21;
  sub_10079E064();
  sub_1007A2154();
  sub_100796C94();
  (*(v10 + 16))(v12, v15, v9);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v24 = v36;
  (*(v3 + 16))(v5, v8, v36);
  v25 = sub_1007A22D4(v12, 0, 0, v23, v5, "Cancel multi select on Bookmarks / Highlights", 45, 2);
  v27 = v26;
  (*(v3 + 8))(v8, v24);
  (*(v10 + 8))(v15, v9);
  *&v39[0] = v25;
  *(&v39[0] + 1) = v27;
  sub_100206ECC();
  v28 = sub_10079D5D4();
  v30 = v29;
  LOBYTE(v8) = v31;
  sub_100005920(&unk_100AF45E0, &unk_100ADB8A0, &unk_100841F10, &protocol conformance descriptor for Button<A>);
  v32 = v35;
  sub_10079D8D4();
  sub_10020B430(v28, v30, v8 & 1);

  return (*(v37 + 8))(v18, v32);
}

uint64_t sub_10071C804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  sub_10071DC58(a1, v9);
  v5 = swift_allocObject();
  v6 = v9[3];
  v5[3] = v9[2];
  v5[4] = v6;
  v5[5] = v9[4];
  v7 = v9[1];
  v5[1] = v9[0];
  v5[2] = v7;
  return sub_10079E054();
}

double sub_10071C898(uint64_t a1)
{

  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079DFF4();
  sub_10079E004();

  return result;
}

uint64_t sub_10071C950(uint64_t a1, double a2)
{
  v3 = sub_10079BB84();
  __chkstk_darwin(v3 - 8);
  sub_10079BB74();
  sub_10071DC58(a1, v8);
  v4 = swift_allocObject();
  v5 = v8[3];
  v4[3] = v8[2];
  v4[4] = v5;
  v4[5] = v8[4];
  v6 = v8[1];
  v4[1] = v8[0];
  v4[2] = v6;
  return sub_10079E064();
}

uint64_t sub_10071CA2C(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100ADB860, &qword_100835800);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v10 - v4;
  sub_10071DC58(a1, v10);
  v6 = swift_allocObject();
  v7 = v10[3];
  v6[3] = v10[2];
  v6[4] = v7;
  v6[5] = v10[4];
  v8 = v10[1];
  v6[1] = v10[0];
  v6[2] = v8;
  sub_10079E054();
  sub_100005920(&qword_100AEE360, &qword_100ADB860, &qword_100835800, &protocol conformance descriptor for Button<A>);
  sub_10079DAD4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10071CBD0()
{
  result = sub_1006AB6C4();
  if (result != 2)
  {
    return sub_1006AC830();
  }

  return result;
}

uint64_t sub_10071CC20@<X0>(const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = a5;
  v31 = a4;
  v29 = a3;
  v5 = sub_100796CF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = sub_1007A21D4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  sub_1007A2154();
  sub_100796C94();
  (*(v13 + 16))(v15, v18, v12);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v6 + 16))(v8, v11, v5);
  v21 = sub_1007A22D4(v15, 0, 0, v20, v8, v29, v31, 2);
  v23 = v22;
  (*(v6 + 8))(v11, v5);
  (*(v13 + 8))(v18, v12);
  v32 = v21;
  v33 = v23;
  sub_100206ECC();
  result = sub_10079D5D4();
  v25 = v30;
  *v30 = result;
  v25[1] = v26;
  *(v25 + 16) = v27 & 1;
  v25[3] = v28;
  return result;
}

uint64_t sub_10071CEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v35 = a3;
  v34 = sub_1001F1160(&qword_100AF44C8, &qword_100841DC0);
  __chkstk_darwin(v34);
  v5 = &v27 - v4;
  v6 = *(v3 + 48);
  v28 = *(v3 + 56);
  v7 = *(v3 + 42);
  v30 = *(v3 + 40);
  v31 = v7;
  v8 = sub_10000E3E8(v3, *(v3 + 24));
  v39 = &type metadata for BookmarkNotesPresenter;
  v40 = &off_100A30048;
  v37[0] = swift_allocObject();
  sub_100303A28(v8, v37[0] + 16);
  sub_100009864(v37, v36);
  v9 = swift_allocObject();
  sub_1001FF7E0(v36, v9 + 16);
  v29 = v6;

  sub_1000074E0(v37);
  v10 = sub_10000E3E8(v3, *(v3 + 24));
  v39 = &type metadata for BookmarkNotesPresenter;
  v40 = &off_100A30048;
  v37[0] = swift_allocObject();
  sub_100303A28(v10, v37[0] + 16);
  sub_100009864(v37, v36);
  v11 = swift_allocObject();
  sub_1001FF7E0(v36, v11 + 16);
  sub_1000074E0(v37);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10071D91C;
  *(v12 + 24) = v11;
  v13 = *(v3 + 72);
  LOBYTE(v36[0]) = *(v3 + 64);
  *(&v36[0] + 1) = v13;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079E014();
  v15 = v37[0];
  v14 = v37[1];
  v16 = v38;
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = type metadata accessor for TOCLegacyView(0);
  *&v5[v19[13]] = v18;
  sub_1001F1160(&unk_100ADB740, &qword_100819F00);
  swift_storeEnumTagMultiPayload();
  *&v5[v19[14]] = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  swift_storeEnumTagMultiPayload();
  v20 = v28;
  *v5 = v29;
  *(v5 + 1) = v20;
  v21 = v32;
  v22 = v33;
  *(v5 + 2) = v32;
  *(v5 + 3) = v22;
  LOBYTE(v20) = v30;
  v5[32] = v31;
  v5[33] = v20;
  *(v5 + 5) = BKAppDelegate.enableMetricsInspectorOnDebugMode();
  *(v5 + 6) = 0;
  *(v5 + 7) = sub_10071D914;
  *(v5 + 8) = v9;
  *(v5 + 9) = sub_10071D924;
  *(v5 + 10) = v12;
  *(v5 + 11) = KeyPath;
  *(v5 + 48) = 0;
  v23 = &v5[v19[15]];
  *v23 = v15;
  *(v23 + 1) = v14;
  v23[16] = v16;
  sub_10071DA24(v21, v22);
  LOBYTE(v14) = sub_10079D2B4();
  v24 = sub_10079C2C4();
  v25 = &v5[*(v34 + 36)];
  *v25 = v24;
  v25[8] = v14;
  sub_10071D82C();
  sub_10079DA44();
  return sub_100007840(v5, &qword_100AF44C8, &qword_100841DC0);
}

double sub_10071D230(_OWORD *a1, void *a2)
{
  v4 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  sub_10000E3E8(a2, a2[3]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1007A2744();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1007A26F4();
    swift_unknownObjectRetain();
    sub_10071DA38(a1, v14);
    v11 = sub_1007A26E4();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = &protocol witness table for MainActor;
    *(v12 + 32) = v9;
    v13 = a1[1];
    *(v12 + 40) = *a1;
    *(v12 + 56) = v13;
    *(v12 + 65) = *(a1 + 25);
    sub_1003457A0(0, 0, v6, &unk_100841E58, v12);

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_10071D39C(unint64_t a1, uint64_t a2, void *a3)
{
  sub_10000E3E8(a3, a3[3]);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1006BF670(a1, a2);

    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10071D420()
{
  result = qword_100AF4438;
  if (!qword_100AF4438)
  {
    sub_1001F1234(&qword_100AF4430, &qword_100841CD8);
    sub_100005920(&qword_100AF4440, &qword_100AF4448, &qword_100841CE0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4438);
  }

  return result;
}

unint64_t sub_10071D4D8()
{
  result = qword_100AF4460;
  if (!qword_100AF4460)
  {
    sub_1001F1234(&qword_100AF4428, &qword_100841CD0);
    sub_100005920(&qword_100AF4468, &qword_100AF4470, &unk_100841D58, &protocol conformance descriptor for VStack<A>);
    sub_100005920(&qword_100AF64C0, &unk_100AE40B0, &qword_100831A40, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4460);
  }

  return result;
}

unint64_t sub_10071D5BC()
{
  result = qword_100AF4478;
  if (!qword_100AF4478)
  {
    sub_1001F1234(&qword_100AF4418, &qword_100841CC0);
    sub_10071D674();
    sub_100005920(&qword_100AD6CE0, &qword_100ADB270, &unk_10082FE70, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4478);
  }

  return result;
}

unint64_t sub_10071D674()
{
  result = qword_100AF4480;
  if (!qword_100AF4480)
  {
    sub_1001F1234(&qword_100AF4410, &qword_100841CB8);
    sub_1001F1234(&qword_100AF4400, &qword_100841CA8);
    sub_10079E3F4();
    sub_100005920(&unk_100AF4450, &qword_100AF4400, &qword_100841CA8, &protocol conformance descriptor for NavigationStack<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100ADC1E0, &qword_100AF4490, &unk_100820E30, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4480);
  }

  return result;
}

uint64_t sub_10071D7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF44B0, &qword_100822C08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10071D82C()
{
  result = qword_100AF44D0;
  if (!qword_100AF44D0)
  {
    sub_1001F1234(&qword_100AF44C8, &qword_100841DC0);
    sub_10071DF28(&qword_100AF10B0, type metadata accessor for TOCLegacyView, &unk_10083AF50);
    sub_100005920(&qword_100AF44E0, &qword_100AE1C50, &qword_100822CB0, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF44D0);
  }

  return result;
}

double sub_10071D924(unint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = sub_1003BC778(a1);
  v4(v5, a2);

  return result;
}

uint64_t sub_10071D978@<X0>(uint64_t a1@<X8>)
{
  sub_100536AA8();
  result = sub_10079C834();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

char *sub_10071DA24(uint64_t a1, char *a2)
{
  if ((a2 - 1) >= 2)
  {
    return a2;
  }

  return result;
}

double sub_10071DA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return result;
}

uint64_t sub_10071DAD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1006BF17C(a1, v4, v5, v6, (v1 + 5));
}

unint64_t sub_10071DB90()
{
  result = qword_100AF4538;
  if (!qword_100AF4538)
  {
    sub_1001F1234(&qword_100AF44A0, &qword_100841D70);
    sub_1001F1234(&qword_100AF44C8, &qword_100841DC0);
    sub_10071D82C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4538);
  }

  return result;
}

uint64_t sub_10071DC9C()
{
  swift_unknownObjectRelease();
  sub_1000074E0((v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_10071DD00()
{
  result = qword_100AF4568;
  if (!qword_100AF4568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4568);
  }

  return result;
}

unint64_t sub_10071DD5C()
{
  result = qword_100AF45B8;
  if (!qword_100AF45B8)
  {
    sub_1001F1234(&qword_100AF45B0, &qword_100841EF8);
    sub_10071DF70(&qword_100AF45C0, &qword_100AF45C8, &qword_100841F00, sub_10071DE40);
    sub_10071DF70(&qword_100AF45F8, &qword_100AF4600, &qword_100841F20, sub_10071E02C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF45B8);
  }

  return result;
}

unint64_t sub_10071DE40()
{
  result = qword_100AF45D0;
  if (!qword_100AF45D0)
  {
    sub_1001F1234(&qword_100AF45D8, &qword_100841F08);
    sub_100005920(&unk_100AF45E0, &unk_100ADB8A0, &unk_100841F10, &protocol conformance descriptor for Button<A>);
    sub_10071DF28(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF45D0);
  }

  return result;
}

uint64_t sub_10071DF28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10071DF70(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    sub_100005920(&qword_100AEE360, &qword_100ADB860, &qword_100835800, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10071E02C()
{
  result = qword_100AF4608;
  if (!qword_100AF4608)
  {
    sub_1001F1234(&qword_100AF4610, &qword_100841F28);
    sub_100005920(&qword_100AF4618, &qword_100AF4620, &qword_100841F30, &protocol conformance descriptor for Button<A>);
    sub_10071DF28(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4608);
  }

  return result;
}

unint64_t sub_10071E11C()
{
  result = qword_100AF4630;
  if (!qword_100AF4630)
  {
    sub_1001F1234(&qword_100AF4628, &qword_100841F38);
    sub_100005920(&unk_100AF45E0, &unk_100ADB8A0, &unk_100841F10, &protocol conformance descriptor for Button<A>);
    sub_1001F1234(&qword_100ADB860, &qword_100835800);
    sub_100005920(&qword_100AEE360, &qword_100ADB860, &qword_100835800, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4630);
  }

  return result;
}

uint64_t sub_10071E33C()
{
  sub_1000074E0((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_10071E38C()
{
  result = qword_100AF4648;
  if (!qword_100AF4648)
  {
    sub_1001F1234(&unk_100AF4650, &unk_100841F50);
    sub_10071D4D8();
    sub_10071D5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4648);
  }

  return result;
}

void sub_10071E420(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for BuyButtonDataManager();
  swift_allocObject();
  swift_unknownObjectRetain();
  v6 = a1;
  v7 = sub_100392ED8(a1, a2);
  type metadata accessor for BuyButtonInteractor(0);
  v8 = swift_allocObject();

  sub_10079ACD4();
  v9 = v8 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_listener;
  *(v8 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_listener + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = (v8 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buyParameters);
  *v10 = 0;
  v10[1] = 0;
  *(v8 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_canPreorder) = 2;
  *(v8 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_willDownload) = 0;
  *(v8 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_buttonState) = 0;
  v11 = (v8 + OBJC_IVAR____TtC5Books19BuyButtonInteractor_dataManager);
  *v11 = v7;
  v11[1] = &off_100A18950;
  *(v7 + 128) = &off_100A22068;
  swift_unknownObjectWeakAssign();
  v12 = type metadata accessor for BuyButtonPresenter();
  v13 = objc_allocWithZone(v12);
  type metadata accessor for BuyButtonStyle(0);
  swift_allocObject();

  v14 = sub_1006288C4();
  v15 = OBJC_IVAR____TtC5Books18BuyButtonPresenter_style;
  *&v13[OBJC_IVAR____TtC5Books18BuyButtonPresenter_style] = v14;
  v16 = &v13[OBJC_IVAR____TtC5Books18BuyButtonPresenter_interactor];
  *v16 = v8;
  v16[1] = &off_100A22088;
  type metadata accessor for BuyButtonViewModel(0);
  swift_allocObject();
  *&v13[OBJC_IVAR____TtC5Books18BuyButtonPresenter_viewModel] = sub_10064FD08();
  *(*&v13[v15] + 56) = 0;
  v20.receiver = v13;
  v20.super_class = v12;
  v17 = objc_msgSendSuper2(&v20, "init");
  *(v9 + 8) = &off_100A0F168;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_100392FC4();
  v18 = swift_unknownObjectRelease();
  sub_1005353C0(v18, v19);
  sub_100535160();
  swift_unknownObjectRelease();
  a3[3] = v12;
  a3[4] = &off_100A0F1B0;

  *a3 = v17;
}

uint64_t sub_10071E6EC(uint64_t a1)
{
  v1 = sub_10079EF44();
  v2 = sub_10079EF04();
  v3 = 8;
  if (v2)
  {
    v3 = 14;
  }

  v4 = 9;
  if (v2)
  {
    v4 = 15;
  }

  v5 = 10;
  if (v2)
  {
    v5 = 16;
  }

  if (v1 != 4)
  {
    v4 = v5;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v6 = 5;
  if (v2)
  {
    v6 = 11;
  }

  v7 = 6;
  if (v2)
  {
    v7 = 12;
  }

  v8 = 7;
  if (v2)
  {
    v8 = 13;
  }

  if (v1 != 1)
  {
    v7 = v8;
  }

  if (v1)
  {
    v6 = v7;
  }

  if (v1 <= 2u)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for ReadSampleActionItem(uint64_t a1)
{
  result = qword_100AF4750;
  if (!qword_100AF4750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10071E814()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_1007971A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  sub_10025FCD8(&v34);
  if (!v35)
  {
    sub_100007840(&v34, &qword_100AD4B40, &unk_1008171A0);
    goto LABEL_12;
  }

  sub_1001FF7C8(&v34, &v36);
  sub_10000E3E8(&v36, v37);
  sub_1007976B4();
  if ((sub_1007972D4() & 1) == 0)
  {
    goto LABEL_10;
  }

  if ((*(v0 + *(type metadata accessor for ReadSampleActionItem(0) + 36)) & 1) == 0)
  {
    sub_10000E3E8(&v36, v37);
    v12 = *(sub_1007975C4() + 16);

    if (v12 >= 2)
    {
      sub_10000E3E8(v1, v1[3]);
      sub_100797784();
      v13 = *(v6 + 104);
      v13(v8, enum case for ContextActionSource.productPage(_:), v5);
      v14 = sub_100797184();
      v15 = *(v6 + 8);
      v15(v8, v5);
      v15(v11, v5);
      if (v14)
      {
        goto LABEL_10;
      }

      v33 = v13;
      v16 = v1[3];
      v32 = v1[4];
      sub_10000E3E8(v1, v16);
      sub_100797784();
      v33(v8, enum case for ContextActionSource.unifiedProductItem(_:), v5);
      v17 = sub_100797184();
      v15(v8, v5);
      v15(v11, v5);
      if (v17)
      {
        goto LABEL_10;
      }
    }

    sub_10000E3E8(&v36, v37);
    if (sub_100797564())
    {
      v18 = [objc_msgSend(objc_opt_self() "sharedInstance")];
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        goto LABEL_10;
      }
    }
  }

  sub_10000E3E8(v1, v1[3]);
  if (sub_1007976E4())
  {
    goto LABEL_10;
  }

  sub_10000E3E8(&v36, v37);
  v21 = sub_1002BF76C();
  if (v21 != 2 && (v21 & 1) != 0)
  {
    goto LABEL_10;
  }

  sub_10000E3E8(&v36, v37);
  if ((sub_1002C58D0() & 1) != 0 && ((sub_10000E3E8(&v36, v37), v22 = sub_100797694(), v22 == 2) || (v22 & 1) == 0))
  {
    sub_10000E3E8(&v36, v37);
    v23 = sub_100797684();
  }

  else
  {
    v23 = 0;
  }

  sub_10000E3E8(&v36, v37);
  sub_1007976A4();
  if (v24)
  {

    sub_10000E3E8(&v36, v37);
    v25 = sub_1002C56FC();
  }

  else
  {
    v25 = 1;
  }

  sub_10000E3E8(&v36, v37);
  v26 = sub_100797694();
  if (v26 != 2 && (v26 & 1) != 0 || (sub_10000E3E8(&v36, v37), v27 = sub_100797684(), v27 != 2) && (v27 & 1) != 0 || (sub_10000E3E8(&v36, v37), (sub_1007975A4() & 1) != 0))
  {
    v28 = 1;
  }

  else
  {
    sub_10000E3E8(&v36, v37);
    v28 = sub_100797584();
  }

  sub_10000E3E8(&v36, v37);
  sub_1007975E4();
  v29 = sub_1007969B4();
  v30 = (*(*(v29 - 8) + 48))(v4, 1, v29);
  sub_100007840(v4, &unk_100AD5AC0, &unk_100811090);
  if (v30 == 1)
  {
    if (v23)
    {
      goto LABEL_35;
    }

    goto LABEL_10;
  }

  if (!(v23 & 1 | (((v25 | v28) & 1) == 0)))
  {
LABEL_10:
    sub_1000074E0(&v36);
LABEL_12:
    v19 = 0;
    return v19 & 1;
  }

LABEL_35:
  sub_10000E3E8(v1, v1[3]);
  if (sub_100797794())
  {
    sub_10000E3E8(v1, v1[3]);
    v31 = sub_1007976F4();
  }

  else
  {
    v31 = 0;
  }

  v19 = v23 | v31;
  sub_1000074E0(&v36);
  return v19 & 1;
}

uint64_t sub_10071EE20()
{
  v36 = sub_1007971A4();
  v0 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v33 = &v32 - v3;
  v4 = sub_100796CF4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v5 + 16))(v7, v10, v4);
  v20 = sub_1007A22D4(v14, 0, 0, v19, v7, "Context Menu Quick Action: Sample", 33, 2);
  (*(v5 + 8))(v10, v4);
  v21 = v34;
  (*(v12 + 8))(v17, v11);
  sub_10000E3E8(v21, v21[3]);
  v22 = v33;
  sub_100797784();
  v24 = v35;
  v23 = v36;
  (*(v0 + 104))(v35, enum case for ContextActionSource.getSampleActionItem(_:), v36);
  LOBYTE(v19) = sub_100797184();
  v25 = *(v0 + 8);
  v25(v24, v23);
  v25(v22, v23);
  if (v19)
  {
    sub_10025FCD8(&v37);
    if (v38)
    {

      sub_1001FF7C8(&v37, &v40);
      sub_10000E3E8(v21, v21[3]);
      v26 = sub_100797774();
      v27 = v41;
      v28 = v42;
      v29 = sub_10000E3E8(&v40, v41);
      if (v26)
      {
        v38 = v27;
        v39 = v28;
        v30 = sub_1002256EC(&v37);
        (*(*(v27 - 8) + 16))(v30, v29, v27);
        v20 = sub_100797804();
        sub_1000074E0(&v37);
      }

      else
      {
        v20 = sub_100797574();
      }

      sub_1000074E0(&v40);
    }

    else
    {
      sub_100007840(&v37, &qword_100AD4B40, &unk_1008171A0);
    }
  }

  return v20;
}

uint64_t sub_10071F2C4()
{
  v1 = sub_1007971A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_10000E3E8(v0, v0[3]);
  if (sub_100797774())
  {
    sub_10000E3E8(v0, v0[3]);
    sub_100797784();
    (*(v2 + 104))(v4, enum case for ContextActionSource.getSampleActionItem(_:), v1);
    v8 = sub_100797184();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
    if (v8)
    {
      sub_10025FCD8(&v16);
      if (v17)
      {
        sub_1001FF7C8(&v16, &v18);
        v15 = v19;
        v10 = v19;
        v11 = sub_10000E3E8(&v18, v19);
        v17 = v15;
        v12 = sub_1002256EC(&v16);
        (*(*(v10 - 8) + 16))(v12, v11, v10);
        v13 = sub_1007977F4();
        sub_1000074E0(&v16);
        sub_1000074E0(&v18);
        return v13;
      }

      sub_100007840(&v16, &qword_100AD4B40, &unk_1008171A0);
    }
  }

  return 0;
}

uint64_t sub_10071F514()
{
  v1[29] = v0;
  v2 = sub_10079ACE4();
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();
  sub_1007A26F4();
  v1[33] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[34] = v4;
  v1[35] = v3;

  return _swift_task_switch(sub_10071F608, v4, v3);
}

uint64_t sub_10071F608()
{
  sub_10025FCD8((v0 + 64));
  if (!*(v0 + 88))
  {

    sub_100007840(v0 + 64, &qword_100AD4B40, &unk_1008171A0);
LABEL_12:
    sub_10079AC44();
    v11 = sub_10079ACC4();
    v12 = sub_1007A29B4();
    v13 = os_log_type_enabled(v11, v12);
    v15 = *(v0 + 248);
    v14 = *(v0 + 256);
    v16 = *(v0 + 240);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Action doesn't have sufficient information to handle action.", v17, 2u);
    }

    (*(v15 + 8))(v14, v16);
    goto LABEL_15;
  }

  v1 = *(v0 + 232);
  sub_1001FF7C8((v0 + 64), (v0 + 16));
  sub_100009864(v1 + 40, v0 + 192);
  sub_1001F1160(&qword_100AD5ED0, &unk_10083CFE0);
  sub_1001F1160(&qword_100AD5ED8, &unk_100812380);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 184) = 0;
    *(v0 + 168) = 0u;
    *(v0 + 152) = 0u;
    goto LABEL_11;
  }

  if (!*(v0 + 176))
  {
LABEL_11:

    sub_100007840(v0 + 152, qword_100AD5EE0, qword_10083CFF0);
    sub_1000074E0((v0 + 16));
    goto LABEL_12;
  }

  sub_1000077C0((v0 + 152), v0 + 112);
  sub_10000E3E8((v0 + 16), *(v0 + 40));
  v2 = sub_100797684();
  if (v2 != 2 && (v2 & 1) != 0)
  {
    sub_10000E3E8((v0 + 112), *(v0 + 136));
    sub_10000E3E8((v0 + 16), *(v0 + 40));
    v3 = sub_100797674();
    v5 = v4;
    *(v0 + 288) = v4;
    sub_10000E3E8((v0 + 16), *(v0 + 40));
    v6 = sub_100797664();
    v8 = v7;
    *(v0 + 296) = v7;
    v9 = swift_task_alloc();
    *(v0 + 304) = v9;
    *v9 = v0;
    v9[1] = sub_10071F9F4;

    return sub_1004C5F5C(v3, v5, v6, v8);
  }

  sub_10000E3E8(*(v0 + 232), *(*(v0 + 232) + 24));
  if (sub_100797794())
  {
    v19 = *(v0 + 232);
    sub_10000E3E8((v0 + 112), *(v0 + 136));
    v20 = *(v19 + 80);
    v21 = swift_task_alloc();
    *(v0 + 312) = v21;
    *v21 = v0;
    v21[1] = sub_10071FBCC;

    return sub_1004C4A70(v0 + 16, v20);
  }

  sub_10000E3E8((v0 + 112), *(v0 + 136));
  sub_1004C46BC();
  sub_1000074E0((v0 + 112));
  sub_1000074E0((v0 + 16));
LABEL_15:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10071F9F4()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_10071FB54, v3, v2);
}

uint64_t sub_10071FB54()
{

  sub_1000074E0(v0 + 14);
  sub_1000074E0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10071FBCC()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_10071FF20, v3, v2);
}

uint64_t sub_10071FCF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_10071F514();
}

uint64_t sub_10071FD84@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a5 + 32);
  v13 = enum case for ContextActionType.readSample(_:);
  v14 = sub_100797144();
  (*(*(v14 - 8) + 104))(a6 + v12, v13, v14);
  sub_1000077C0(a1, a6);
  sub_1000077C0(a2, a6 + 40);
  *(a6 + 80) = a3;
  result = sub_1000077C0(a4, a6 + 88);
  *(a6 + *(a5 + 36)) = 0;
  return result;
}

uint64_t sub_10071FE4C@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a6 + 32);
  v15 = enum case for ContextActionType.readSample(_:);
  v16 = sub_100797144();
  (*(*(v16 - 8) + 104))(a7 + v14, v15, v16);
  sub_1000077C0(a1, a7);
  sub_1000077C0(a2, a7 + 40);
  *(a7 + 80) = a3;
  result = sub_1000077C0(a4, a7 + 88);
  *(a7 + *(a6 + 36)) = a5;
  return result;
}

uint64_t sub_10071FF24(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_10079B3D4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 1);
  v9 = a3[16];
  v10 = *a3;
  sub_10079B284();
  sub_10065B2BC(v10);
  sub_10079B3A4();
  v15[3] = v4;
  v15[4] = &protocol witness table for UIListContentConfiguration;
  v11 = sub_1002256EC(v15);
  (*(v5 + 16))(v11, v7, v4);
  sub_1007A2EA4();
  sub_10065AF40(v10);
  sub_1007A2FA4();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v8;
  *(v12 + 32) = v9;

  sub_1007A2EB4();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1007200B0(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1001F1160(&unk_100AED100, &qword_1008420B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v34[-v7];
  v9 = sub_10079B3D4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v34[-v14];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v17 = result;
    v18 = a1;
    sub_1007A2E94();
    if (!v37)
    {

      sub_100007840(v36, &qword_100AED110, &qword_10082F740);
      (*(v10 + 56))(v8, 1, 1, v9);
      return sub_100007840(v8, &unk_100AED100, &qword_1008420B0);
    }

    sub_1001F1160(&qword_100AE91E8, &qword_10082F260);
    v19 = swift_dynamicCast();
    (*(v10 + 56))(v8, v19 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      return sub_100007840(v8, &unk_100AED100, &qword_1008420B0);
    }

    v35 = a3;
    (*(v10 + 32))(v15, v8, v9);
    v20 = sub_10079B264();
    v37 = v20;
    v38 = &protocol witness table for UICellConfigurationState;
    v21 = sub_1002256EC(v36);
    (*(*(v20 - 8) + 16))(v21, a2, v20);
    sub_10079B3C4();
    sub_1000074E0(v36);
    v22 = sub_10079B224();
    v23 = [v22 activeAppearance];

    v24 = objc_opt_self();
    v25 = &selRef_labelColor;
    if (v23 != 1)
    {
      v25 = &selRef_grayColor;
    }

    v26 = [v24 *v25];
    v27 = sub_10079B304();
    sub_10079B2E4();
    v27(v36, 0);
    v37 = v9;
    v38 = &protocol witness table for UIListContentConfiguration;
    v28 = sub_1002256EC(v36);
    (*(v10 + 16))(v28, v12, v9);
    sub_1007A2EA4();

    if ((sub_10079B254() & 1) == 0)
    {
      sub_10065AF40(v35);
    }

    sub_1007A2FA4();
    v29 = UIAccessibilityTraitHeader;
    v30 = v18;
    v31 = [v17 accessibilityTraits];
    if ((v29 & ~v31) != 0)
    {
      v32 = v29;
    }

    else
    {
      v32 = 0;
    }

    [v17 setAccessibilityTraits:v32 | v31];

    v33 = *(v10 + 8);
    v33(v12, v9);
    return (v33)(v15, v9);
  }

  return result;
}

uint64_t sub_1007204F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_100542344();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  swift_unknownObjectWeakInit();
  *(v5 + 32) = 0;

  return sub_1007A2EA4();
}

uint64_t sub_100720580(void *a1, uint64_t a2, __int128 *a3)
{
  v45 = sub_1007A1F44();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10079B3D4();
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3[3];
  v53 = a3[2];
  v54[0] = v9;
  *(v54 + 15) = *(a3 + 63);
  v10 = a3[1];
  v51 = *a3;
  v52 = v10;
  sub_10079B274();
  v11 = v52;

  v43 = v11;
  sub_10079B3A4();
  v12 = v53;
  v13 = sub_1007A2214();
  v14 = objc_opt_self();
  v15 = [v14 _systemImageNamed:v13];

  if (v15 || (v16 = BSUIBundle(), v17 = sub_1007A2214(), v15 = [v14 imageNamed:v17 inBundle:v16 compatibleWithTraitCollection:0], v17, v16, v15))
  {
    v18 = v46;
  }

  else
  {
    if (qword_100AD1768 != -1)
    {
      swift_once();
    }

    v32 = sub_10079ACE4();
    sub_100008B98(v32, qword_100AE7000);
    sub_10049F950(&v51, v48);
    v33 = sub_10079ACC4();
    v34 = sub_1007A29C4();
    sub_100529134(&v51);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v42 = v33;
      v36 = v35;
      v37 = swift_slowAlloc();
      v48[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1000070F4(v12, *(&v12 + 1), v48);
      v38 = v34;
      v39 = v42;
      _os_log_impl(&_mh_execute_header, v42, v38, "Invalid sidebar icon name: %s", v36, 0xCu);
      sub_1000074E0(v37);
    }

    else
    {
    }

    v18 = v46;
    v40 = sub_1007A2214();
    v15 = [v14 systemImageNamed:v40];
  }

  v19 = v15;
  sub_10079B3B4();
  v49 = v18;
  v50 = &protocol witness table for UIListContentConfiguration;
  v20 = sub_1002256EC(v48);
  (*(v47 + 16))(v20, v8, v18);
  sub_1007A2EA4();

  sub_1007A2FA4();
  v21 = v51;

  v22 = sub_1007A2214();
  [a1 setAccessibilityIdentifier:v22];

  [a1 setIsAccessibilityElement:1];
  v23 = sub_1007A2214();
  [a1 setAccessibilityValue:v23];

  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v21, *(&v21 + 1));
  if (v24)
  {

    v25 = 14;
  }

  else
  {
    v25 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v21, *(&v21 + 1));
    if (v25 == 16)
    {
      v25 = 15;
    }
  }

  v26 = sub_100480680(v25);
  v49 = &type metadata for String;
  v48[0] = v26;
  v48[1] = v27;
  sub_1007A1F34();
  sub_1000074E0(v48);
  sub_1007A30E4();
  (*(v44 + 8))(v6, v45);
  v28 = swift_allocObject();
  v29 = v54[0];
  *(v28 + 48) = v53;
  *(v28 + 64) = v29;
  *(v28 + 79) = *(v54 + 15);
  v30 = v52;
  *(v28 + 16) = v51;
  *(v28 + 32) = v30;
  sub_10049F950(&v51, v48);
  sub_1007A2EB4();

  return (*(v47 + 8))(v8, v18);
}

uint64_t sub_100720B10(void *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100AED100, &qword_1008420B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v23[-1] - v5;
  v7 = sub_10079B3D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23[-1] - v12;
  sub_1007A2E94();
  if (v24)
  {
    sub_1001F1160(&qword_100AE91E8, &qword_10082F260);
    v14 = swift_dynamicCast();
    (*(v8 + 56))(v6, v14 ^ 1u, 1, v7);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      (*(v8 + 32))(v13, v6, v7);
      v15 = sub_10079B264();
      v24 = v15;
      v25 = &protocol witness table for UICellConfigurationState;
      v16 = sub_1002256EC(v23);
      (*(*(v15 - 8) + 16))(v16, a2, v15);
      sub_10079B3C4();
      sub_1000074E0(v23);
      v17 = sub_10079B344();
      v17(v23, 0);
      v24 = v7;
      v25 = &protocol witness table for UIListContentConfiguration;
      v18 = sub_1002256EC(v23);
      (*(v8 + 16))(v18, v10, v7);
      sub_1007A2EA4();
      v19 = sub_100721990();
      [a1 setTintColor:v19];

      v20 = *(v8 + 8);
      v20(v10, v7);
      return (v20)(v13, v7);
    }
  }

  else
  {
    sub_100007840(v23, &qword_100AED110, &qword_10082F740);
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  return sub_100007840(v6, &unk_100AED100, &qword_1008420B0);
}

uint64_t sub_100720E54(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_10079B2F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v24[-1] - v9;
  v11 = type metadata accessor for SidebarTextFieldContentConfiguration(0);
  __chkstk_darwin(v11);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3[3];
  v27 = a3[2];
  v28[0] = v14;
  *(v28 + 15) = *(a3 + 63);
  v15 = a3[1];
  v25 = *a3;
  v26 = v15;
  sub_10079B274();
  swift_unknownObjectWeakInit();
  v13[*(v11 + 24)] = 0;
  *&v13[*(v11 + 28)] = 1;

  sub_10079B3A4();
  v16 = sub_1007A2214();
  v17 = [objc_opt_self() systemImageNamed:v16];

  sub_10079B3B4();
  sub_10079B314();
  sub_10079B294();
  (*(v5 + 16))(v7, v10, v4);
  sub_10079B324();
  (*(v5 + 8))(v10, v4);
  v24[3] = v11;
  v24[4] = sub_100538210();
  v18 = sub_1002256EC(v24);
  sub_100538268(v13, v18);
  sub_1007A2EA4();

  sub_1007A2FA4();
  v19 = swift_allocObject();
  v20 = v28[0];
  *(v19 + 48) = v27;
  *(v19 + 64) = v20;
  *(v19 + 79) = *(v28 + 15);
  v21 = v26;
  *(v19 + 16) = v25;
  *(v19 + 32) = v21;
  sub_10049F950(&v25, v24);
  sub_1007A2EB4();
  return sub_1005381B4(v13);
}

uint64_t sub_100721120(void *a1, uint64_t a2)
{
  v28 = a2;
  v3 = sub_10079B334();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_1001F1160(&qword_100AE91E0, &qword_10082F258);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SidebarTextFieldContentConfiguration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v29 = a1;
  sub_1007A2E94();
  if (v31)
  {
    sub_1001F1160(&qword_100AE91E8, &qword_10082F260);
    v20 = swift_dynamicCast();
    (*(v14 + 56))(v12, v20 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_100538150(v12, v19);
      v21 = sub_10079B264();
      v31 = v21;
      v32 = &protocol witness table for UICellConfigurationState;
      v22 = sub_1002256EC(v30);
      (*(*(v21 - 8) + 16))(v22, v28, v21);
      sub_1006401C8(v30, v16);
      sub_1000074E0(v30);
      sub_10079B354();
      (*(v4 + 16))(v6, v9, v3);
      sub_10079B364();
      (*(v4 + 8))(v9, v3);
      v31 = v13;
      v32 = sub_100538210();
      v23 = sub_1002256EC(v30);
      sub_100538268(v16, v23);
      v24 = v29;
      sub_1007A2EA4();
      v25 = sub_100721990();
      [v24 setTintColor:v25];

      sub_1005381B4(v16);
      return sub_1005381B4(v19);
    }
  }

  else
  {
    sub_100007840(v30, &qword_100AED110, &qword_10082F740);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  return sub_100007840(v12, &qword_100AE91E0, &qword_10082F258);
}

uint64_t sub_1007214EC()
{
  v1 = OBJC_IVAR____TtCV5Books21SidebarCollectionView19SidebarCellProvider_headerCellRegistration;
  v2 = sub_1001F1160(&qword_100AF48D0, &qword_1008420B8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV5Books21SidebarCollectionView19SidebarCellProvider_searchFieldCellRegistration;
  v4 = sub_1001F1160(&qword_100AF48D8, &qword_1008420C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV5Books21SidebarCollectionView19SidebarCellProvider_labelCellRegistration;
  v6 = sub_1001F1160(&qword_100AF48E0, &qword_1008420C8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCV5Books21SidebarCollectionView19SidebarCellProvider_textFieldCellRegistration;
  v8 = sub_1001F1160(&qword_100AF48E8, &unk_1008420D0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t _s19SidebarCellProviderCMa(uint64_t a1)
{
  result = qword_100AF47E0;
  if (!qword_100AF47E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007216CC(uint64_t a1)
{
  sub_100721844(319);
  if (v1 <= 0x3F)
  {
    sub_1007218B4(319);
    if (v2 <= 0x3F)
    {
      sub_10072192C(319, &qword_100AF4800, type metadata accessor for SidebarLabelListCell);
      if (v3 <= 0x3F)
      {
        sub_10072192C(319, &unk_100AF4808, type metadata accessor for SidebarTextFieldListCell);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100721844(uint64_t a1)
{
  if (!qword_100AF47F0)
  {
    sub_10000A7C4(255, &qword_100AE8C78, UICollectionViewListCell_ptr);
    v1 = sub_1007A2BF4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF47F0);
    }
  }
}

void sub_1007218B4(uint64_t a1)
{
  if (!qword_100AF47F8)
  {
    sub_10000A7C4(255, &qword_100AE8C80, UICollectionViewCell_ptr);
    type metadata accessor for SidebarViewModel.SearchFieldModel(255);
    v1 = sub_1007A2BF4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF47F8);
    }
  }
}

void sub_10072192C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007A2BF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_100721990()
{
  v0 = objc_opt_self();
  v1 = [v0 bc_booksKeyColor];
  v2 = sub_10079B224();
  v3 = [v2 userInterfaceStyle];

  v4 = [v1 bc_hexValue];
  v5 = sub_1007A2254();
  v7 = v6;

  if (v3 != 2)
  {

    return v1;
  }

  if (v5 != 0x464646464646 || v7 != 0xE600000000000000)
  {
    v9 = sub_1007A3AB4();

    if (v9)
    {
      goto LABEL_11;
    }

    return v1;
  }

LABEL_11:
  v11 = [v0 grayColor];

  return v11;
}

uint64_t sub_100721AB8()
{

  return swift_deallocObject();
}

uint64_t sub_100721B28()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AE6A10, &qword_10082A160);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-v3];
  v5 = sub_10079FD44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC5Books17PageCurlViewModel_location;
  swift_beginAccess();
  sub_100555990(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(v4, &qword_100AE6A10, &qword_10082A160);
    v10 = 0xE100000000000000;
    v11 = 45;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100722254();
    v11 = sub_1007A3A74();
    v10 = v12;
    (*(v6 + 8))(v8, v5);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = 0x656976206C616552;
    v26 = 0xEA00000000002077;
    v14 = Strong;
    [Strong frame];
    v27._countAndFlagsBits = sub_1007A3044();
    sub_1007A23D4(v27);

    v16 = v25;
    v15 = v26;
  }

  else
  {
    v15 = 0xE900000000000074;
    v16 = 0x6E65746E6F436F6ELL;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1007A3744(44);
  v28._countAndFlagsBits = 91;
  v28._object = 0xE100000000000000;
  sub_1007A23D4(v28);
  v29._countAndFlagsBits = v11;
  v29._object = v10;
  sub_1007A23D4(v29);

  v30._countAndFlagsBits = 8250;
  v30._object = 0xE200000000000000;
  sub_1007A23D4(v30);
  v31._countAndFlagsBits = v16;
  v31._object = v15;
  sub_1007A23D4(v31);

  v32._countAndFlagsBits = 32;
  v32._object = 0xE100000000000000;
  sub_1007A23D4(v32);
  v24[7] = *(v1 + OBJC_IVAR____TtC5Books17PageCurlViewModel_animationState);
  sub_1007A3894();
  v33._countAndFlagsBits = 0x203F6576696C202ELL;
  v33._object = 0xE800000000000000;
  sub_1007A23D4(v33);
  if (*(v1 + OBJC_IVAR____TtC5Books17PageCurlViewModel_live))
  {
    v17._countAndFlagsBits = 1702195828;
  }

  else
  {
    v17._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC5Books17PageCurlViewModel_live))
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v17._object = v18;
  sub_1007A23D4(v17);

  v34._countAndFlagsBits = 0x746954776F687320;
  v34._object = 0xEC000000203F656CLL;
  sub_1007A23D4(v34);
  if (*(v1 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle))
  {
    v19._countAndFlagsBits = 1702195828;
  }

  else
  {
    v19._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC5Books17PageCurlViewModel_showTitle))
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v19._object = v20;
  sub_1007A23D4(v19);

  v35._countAndFlagsBits = 0x203F6564697720;
  v35._object = 0xE700000000000000;
  sub_1007A23D4(v35);
  if (*(v1 + OBJC_IVAR____TtC5Books17PageCurlViewModel_wide))
  {
    v21._countAndFlagsBits = 1702195828;
  }

  else
  {
    v21._countAndFlagsBits = 0x65736C6166;
  }

  if (*(v1 + OBJC_IVAR____TtC5Books17PageCurlViewModel_wide))
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v21._object = v22;
  sub_1007A23D4(v21);

  v36._countAndFlagsBits = 93;
  v36._object = 0xE100000000000000;
  sub_1007A23D4(v36);
  return v25;
}

uint64_t sub_100721F08()
{
  sub_100007840(v0 + OBJC_IVAR____TtC5Books17PageCurlViewModel_location, &qword_100AE6A10, &qword_10082A160);
  sub_100007840(v0 + OBJC_IVAR____TtC5Books17PageCurlViewModel_spread, &unk_100AEB380, &qword_100815DD0);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PageCurlViewModel(uint64_t a1)
{
  result = qword_100AF4918;
  if (!qword_100AF4918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100722000(uint64_t a1)
{
  sub_100722134(319, &unk_100AE69F0, &type metadata accessor for PageLocation);
  if (v1 <= 0x3F)
  {
    sub_100722134(319, &qword_100AD6318, &type metadata accessor for SpreadPaginationEntity);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100722134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007A3454();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10072219C()
{
  result = qword_100AF4AB0;
  if (!qword_100AF4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4AB0);
  }

  return result;
}

uint64_t sub_1007221F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PageCurlViewModel(0);
  result = sub_10079B8B4();
  *a2 = result;
  return result;
}

unint64_t sub_100722254()
{
  result = qword_100AE9A40;
  if (!qword_100AE9A40)
  {
    sub_10079FD44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9A40);
  }

  return result;
}

unint64_t sub_1007222B0()
{
  result = qword_100AF4AB8;
  if (!qword_100AF4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4AB8);
  }

  return result;
}

unint64_t sub_100722308()
{
  result = qword_100AF4AC0;
  if (!qword_100AF4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4AC0);
  }

  return result;
}

uint64_t sub_1007223C8()
{
  v0 = sub_1007967F4();
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = sub_100796814();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100796CF4();
  v5 = *(v23 - 8);
  __chkstk_darwin(v23);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v21 - v16;
  v22 = v3;
  sub_100009A38(v3, qword_100B23AC0);
  v21 = sub_100008B98(v3, qword_100B23AC0);
  sub_1007A2154();
  sub_100796C94();
  (*(v12 + 16))(v14, v17, v11);
  v18 = v23;
  (*(v5 + 16))(v7, v10, v23);
  *v2 = type metadata accessor for BundleFinder();
  (*(v25 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v26);
  v19 = v24;
  sub_100796834();
  (*(v5 + 8))(v10, v18);
  (*(v12 + 8))(v17, v11);
  return (*(v27 + 32))(v21, v19, v22);
}

uint64_t sub_10072276C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1B60 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23AC0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100722818(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return _swift_task_switch(sub_10072283C, 0, 0);
}

uint64_t sub_10072283C()
{
  sub_100795A94();
  v1 = *(v0 + 32);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 88) = v1;
  *(v0 + 104) = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1007228FC;

  return sub_1004F9DFC();
}

uint64_t sub_1007228FC()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 72);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_100707820, 0, 0);
}

unint64_t sub_100722A90()
{
  result = qword_100AF4AC8;
  if (!qword_100AF4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4AC8);
  }

  return result;
}

uint64_t sub_100722AE4(uint64_t a1)
{
  v2 = sub_1006F6C7C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100722B34()
{
  result = qword_100AD5C60;
  if (!qword_100AD5C60)
  {
    sub_1001F1234(&qword_100ADE090, &qword_100811080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD5C60);
  }

  return result;
}

uint64_t sub_100722B98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1002C7268;

  return Manager.getAllConfigurations()();
}

uint64_t sub_100722C2C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002C4C90;

  return Manager.getProperties(configs:assetIDs:sortByCreatedAt:limit:)(a1, a2, 0, 0);
}

uint64_t sub_100722CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10002812C;

  return Manager.getEarliestTimestamp(propertyNames:assetIDs:earliestTimestampComparator:)(a1, a2, a3, a4, a5);
}

uint64_t sub_100722DB0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = sub_10079A7C4();
  v19 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12._rawValue = &off_100A0CBA8;
  v21._countAndFlagsBits = a1;
  v21._object = a2;
  v13 = sub_1007A3964(v12, v21);

  if (v13 == 1)
  {
    v14 = &enum case for Event.FinishedMechanism.manually(_:);
    goto LABEL_5;
  }

  if (v13 == 2)
  {
    v14 = &enum case for Event.FinishedMechanism.automatically(_:);
LABEL_5:
    (*(v19 + 104))(v8, *v14, v6);
    v15 = *(v19 + 32);
    v15(v11, v8, v6);
    v15(a3, v11, v6);
    return (*(v19 + 56))(a3, 0, 1, v6);
  }

  v17 = *(v19 + 56);

  return v17(a3, 1, 1, v6);
}

uint64_t sub_100722F90()
{
  sub_10001389C();
  result = sub_1007A33B4();
  qword_100B23AD8 = result;
  return result;
}

uint64_t sub_100722FFC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100B23AE0);
  sub_100008B98(v0, qword_100B23AE0);
  if (qword_100AD1B68 != -1)
  {
    swift_once();
  }

  v1 = qword_100B23AD8;
  return sub_10079ACF4();
}

uint64_t sub_100723088()
{
  sub_1001F1160(&qword_100AF4BB0, &qword_100842508);
  v0 = sub_1001F1160(&qword_100AD3630, &qword_100842510);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1008423B0;
  v4 = (v3 + v2);
  v5 = *(v0 + 48);
  *v4 = 0x6E61576F54646461;
  *(v4 + 1) = 0xEF646165526F5474;
  v6 = enum case for EventType.addToWantToRead(_:);
  v7 = sub_10079A9B4();
  v8 = *(*(v7 - 8) + 104);
  v8(&v4[v5], v6, v7);
  v9 = &v4[v1];
  v10 = *(v0 + 48);
  *v9 = 0xD000000000000012;
  *(v9 + 1) = 0x80000001008BF840;
  v8(&v4[v1 + v10], enum case for EventType.audiobookWasPlayed(_:), v7);
  v11 = &v4[2 * v1];
  v12 = *(v0 + 48);
  strcpy(v11, "bookImpression");
  v11[15] = -18;
  v8(&v11[v12], enum case for EventType.bookImpression(_:), v7);
  v13 = &v4[3 * v1];
  v14 = *(v0 + 48);
  *v13 = 0xD000000000000019;
  *(v13 + 1) = 0x80000001008D7B40;
  v8(&v13[v14], enum case for EventType.bookProductPageImpression(_:), v7);
  v15 = &v4[4 * v1];
  v16 = *(v0 + 48);
  *v15 = 0x527361576B6F6F62;
  *(v15 + 1) = 0xEB00000000646165;
  v8(&v15[v16], enum case for EventType.bookWasRead(_:), v7);
  v17 = &v4[5 * v1];
  v18 = *(v0 + 48);
  strcpy(v17, "downloadSample");
  v17[15] = -18;
  v8(&v17[v18], enum case for EventType.downloadSample(_:), v7);
  v19 = &v4[6 * v1];
  v20 = *(v0 + 48);
  *v19 = 0x746963696C707865;
  *(v19 + 1) = 0xEF656E696C636544;
  v8(&v19[v20], enum case for EventType.explicitDecline(_:), v7);
  v21 = &v4[7 * v1];
  v22 = *(v0 + 48);
  *v21 = 0x6B6F6F4265646968;
  *(v21 + 1) = 0xE800000000000000;
  v8(&v21[v22], enum case for EventType.hideBook(_:), v7);
  v23 = *(v0 + 48);
  strcpy(&v4[8 * v1], "markAsFinished");
  v4[8 * v1 + 15] = -18;
  v8(&v4[8 * v1 + v23], enum case for EventType.markAsFinished(_:), v7);
  v24 = &v4[9 * v1];
  v25 = *(v0 + 48);
  *v24 = 0xD000000000000012;
  *(v24 + 1) = 0x80000001008E9260;
  v8(&v24[v25], enum case for EventType.markAsStillReading(_:), v7);
  v26 = &v4[10 * v1];
  v27 = *(v0 + 48);
  *v26 = 0x676E69746172;
  *(v26 + 1) = 0xE600000000000000;
  v8(&v26[v27], enum case for EventType.rating(_:), v7);
  v28 = &v4[11 * v1];
  v29 = *(v0 + 48);
  *v28 = 0xD000000000000014;
  *(v28 + 1) = 0x80000001008D7B60;
  v8(&v28[v29], enum case for EventType.removeFromWantToRead(_:), v7);
  v30 = &v4[12 * v1];
  v31 = *(v0 + 48);
  strcpy(v30, "removeSample");
  v30[13] = 0;
  *(v30 + 7) = -5120;
  v8(&v30[v31], enum case for EventType.removeSample(_:), v7);
  v32 = &v4[13 * v1];
  v33 = *(v0 + 48);
  *v32 = 0x4C74736567677573;
  *(v32 + 1) = 0xEB00000000737365;
  v8(&v32[v33], enum case for EventType.suggestLess(_:), v7);
  v34 = &v4[14 * v1];
  v35 = *(v0 + 48);
  *v34 = 0x4D74736567677573;
  *(v34 + 1) = 0xEB0000000065726FLL;
  v8(&v34[v35], enum case for EventType.suggestMore(_:), v7);
  v36 = &v4[15 * v1];
  v37 = *(v0 + 48);
  *v36 = 0x6572616873;
  *(v36 + 1) = 0xE500000000000000;
  v8(&v36[v37], enum case for EventType.share(_:), v7);
  v38 = &v4[16 * v1];
  v39 = *(v0 + 48);
  *v38 = 0x657461726E75;
  *(v38 + 1) = 0xE600000000000000;
  v8(&v38[v39], enum case for EventType.unrate(_:), v7);
  v40 = sub_1001F08B0(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_100AF4AD0 = v40;
  return result;
}

uint64_t sub_100723698@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&unk_100ADD550, &qword_1008424E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Books29EngagementCollectorEventStore____lazy_storage___iso8601DateFormatter;
  swift_beginAccess();
  sub_1000077D8(v1 + v9, v8, &unk_100ADD550, &qword_1008424E0);
  v10 = sub_100796AD4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_100007840(v8, &unk_100ADD550, &qword_1008424E0);
  sub_100796734();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10072C29C(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_100723884(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_1007A2744();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100723944, 0, 0);
}

uint64_t sub_100723944(uint64_t a1)
{
  v2 = v1[26];
  v3 = *(v1[23] + 16);
  sub_1007A2704();
  v1[20] = *(v3 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100AF4B98, &qword_1008424C8);
  sub_100798DC4();

  v5 = v1[19];
  v1[27] = v5;
  v6 = swift_task_alloc();
  v1[28] = v6;
  v7 = sub_1001F1160(&qword_100AE8738, &unk_1008424D0);
  v8 = sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  *v6 = v1;
  v6[1] = sub_100723ACC;

  return Task.value.getter(v1 + 14, v5, v7, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_100723ACC()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_100724108;
  }

  else
  {
    v2 = sub_100723BE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100723BE0()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[25];

  (*(v3 + 8))(v1, v2);
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_100723CA4;
  v5 = v0[22];

  return sub_100724198(v5, (v0 + 14));
}

uint64_t sub_100723CA4(uint64_t a1)
{
  *(*v1 + 248) = a1;

  return _swift_task_switch(sub_100723DA4, 0, 0);
}

uint64_t sub_100723DA4()
{
  v0[21] = &_swiftEmptySetSingleton;
  v1 = v0[17];
  v2 = v0[18];
  sub_10000E3E8(v0 + 14, v1);
  v6 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[32] = v3;
  *v3 = v0;
  v3[1] = sub_100723EE0;
  v4 = v0[31];

  return v6(v4, 0, v1, v2);
}

uint64_t sub_100723EE0(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_100724000, 0, 0);
}

uint64_t sub_100724000()
{
  v13 = v0;
  v1 = *(v0 + 264);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *v3;
      v5 = v3[1];
      *(v0 + 41) = *(v3 + 25);
      *(v0 + 16) = v4;
      *(v0 + 32) = v5;
      sub_100359B60(v0 + 16, v0 + 64);
      v6 = sub_1007997B4();
      v8 = v7;
      sub_100359BBC(v0 + 16);
      if (v8)
      {
        sub_1006E6140(&v12, v6, v8);
      }

      v3 = (v3 + 56);
      --v2;
    }

    while (v2);
  }

  v9 = *(v0 + 168);
  sub_1000074E0((v0 + 112));

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_100724108()
{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[25];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100724198(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3[3] = a2;
  v3[4] = v4;
  v3[2] = a1;
  return _swift_task_switch(sub_1007241E0, 0, 0);
}

uint64_t sub_1007241E0()
{
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000E3E8(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_100724304;

  return v6(v2, v3);
}

uint64_t sub_100724304(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100724404, 0, 0);
}

void sub_100724404()
{
  v15 = v0;
  v1 = v0[6];
  v13 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_18:
    v2 = sub_1007A38D4();
    v3 = v0[6];
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
    if (v2)
    {
LABEL_3:
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v3 + 32;
      while (1)
      {
        if (v5)
        {
          v8 = sub_1007A3784();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(v7 + 8 * v4);
          swift_unknownObjectRetain();
          v9 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);

            swift_unknownObjectRelease();

            return;
          }
        }

        v10 = v0[2];
        v14 = v8;
        if (sub_10072A200(&v14, v10))
        {
          sub_1007A37D4();
          sub_1007A3804();
          sub_1007A3814();
          v1 = &v13;
          sub_1007A37E4();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v4;
        if (v9 == v2)
        {
          v11 = v13;
          goto LABEL_20;
        }
      }
    }
  }

  v11 = _swiftEmptyArrayStorage;
LABEL_20:

  v12 = v0[1];

  v12(v11);
}

uint64_t sub_1007245F0(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  v4 = sub_100796AD4();
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();
  sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  v3[38] = swift_task_alloc();
  v5 = sub_100796BB4();
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v6 = sub_1007A2744();
  v3[43] = v6;
  v3[44] = *(v6 - 8);
  v3[45] = swift_task_alloc();

  return _swift_task_switch(sub_1007247B0, 0, 0);
}

uint64_t sub_1007247B0(uint64_t a1)
{
  v2 = v1[45];
  v3 = *(v1[34] + 16);
  sub_1007A2704();
  v1[30] = *(v3 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100AF4B98, &qword_1008424C8);
  sub_100798DC4();

  v5 = v1[29];
  v1[46] = v5;
  v6 = swift_task_alloc();
  v1[47] = v6;
  v7 = sub_1001F1160(&qword_100AE8738, &unk_1008424D0);
  v8 = sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  *v6 = v1;
  v6[1] = sub_100724938;

  return Task.value.getter(v1 + 14, v5, v7, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_100724938()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1007256A4;
  }

  else
  {
    v2 = sub_100724A4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100724A4C()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[44];

  (*(v3 + 8))(v1, v2);
  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = sub_100724B14;
  v5 = v0[32];

  return sub_100724198(v5, (v0 + 14));
}

uint64_t sub_100724B14(uint64_t a1)
{
  *(*v1 + 400) = a1;

  return _swift_task_switch(sub_100724C14, 0, 0);
}

uint64_t sub_100724C14()
{
  v1 = v0[17];
  v2 = v0[18];
  sub_10000E3E8(v0 + 14, v1);
  v6 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_100724D44;
  v4 = v0[50];

  return v6(v4, 0, v1, v2);
}

uint64_t sub_100724D44(uint64_t a1)
{
  *(*v1 + 416) = a1;

  return _swift_task_switch(sub_100724E64, 0, 0);
}

void sub_100724E64()
{
  v65 = v0;
  v1 = *(v0 + 416);
  v2 = *(v1 + 16);
  if (!v2)
  {

    v56 = _swiftEmptyDictionarySingleton;
LABEL_96:
    sub_1000074E0((v0 + 112));

    v57 = *(v0 + 8);

    v57(v56);
    return;
  }

  v3 = 0;
  v4 = v1 + 40;
  v5 = *(v0 + 320);
  v61 = (v5 + 56);
  v62 = (*(v0 + 288) + 8);
  v58 = (v5 + 8);
  v59 = (v5 + 32);
  v6 = *(v0 + 384);
  v60 = _swiftEmptyDictionarySingleton;
  while (v3 < *(v1 + 16))
  {
    v7 = (v4 + 56 * v3);
    v8 = *v7;
    v9 = v7[1];
    *(v0 + 41) = *(v7 + 25);
    *(v0 + 16) = v8;
    *(v0 + 32) = v9;
    sub_100359B60(v0 + 16, v0 + 64);
    sub_100799794();
    sub_1001F1160(&qword_100AF4BA0, &qword_1008424F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = *(v0 + 248);
    if (!*(v10 + 16) || (v11 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070), (v12 & 1) == 0))
    {
      sub_100359BBC(v0 + 16);

      goto LABEL_13;
    }

    sub_100007484(*(v10 + 56) + 32 * v11, v0 + 184);

    sub_1001F1160(&qword_100ADD660, &qword_10081CA28);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_11:
      sub_100359BBC(v0 + 16);
      goto LABEL_13;
    }

    sub_100723698(*(v0 + 296));
    sub_100796AB4();
    if (v6)
    {
      v13 = *(v0 + 304);
      v14 = *(v0 + 312);
      v15 = *(v0 + 296);
      v16 = *(v0 + 280);

      sub_100359BBC(v0 + 16);

      (*v62)(v15, v16);
      (*v61)(v13, 1, 1, v14);
      sub_100007840(v13, &unk_100ADB5C0, &unk_100816880);
      goto LABEL_10;
    }

    v21 = *(v0 + 336);
    v23 = *(v0 + 304);
    v22 = *(v0 + 312);
    (*v62)(*(v0 + 296), *(v0 + 280));

    (*v61)(v23, 0, 1, v22);
    (*v59)(v21, v23, v22);
    v24 = sub_1007997B4();
    v26 = v25;
    sub_100359BBC(v0 + 16);
    if (!v26)
    {
      (*v58)(*(v0 + 336), *(v0 + 312));
LABEL_10:
      v6 = 0;
      v4 = v1 + 40;
LABEL_13:
      if (qword_100AD1B70 != -1)
      {
        swift_once();
      }

      v17 = sub_10079ACE4();
      sub_100008B98(v17, qword_100B23AE0);
      v18 = sub_10079ACC4();
      v19 = sub_1007A29B4();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Unexpected property format, can't extract timestamp or storeID", v20, 2u);
      }

      goto LABEL_18;
    }

    v27 = HIBYTE(v26) & 0xF;
    v28 = v24 & 0xFFFFFFFFFFFFLL;
    if ((v26 & 0x2000000000000000) != 0)
    {
      v29 = HIBYTE(v26) & 0xF;
    }

    else
    {
      v29 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29)
    {

      v4 = v1 + 40;
LABEL_86:
      (*v58)(*(v0 + 336), *(v0 + 312));
      v6 = 0;
      goto LABEL_13;
    }

    if ((v26 & 0x1000000000000000) == 0)
    {
      v4 = v1 + 40;
      if ((v26 & 0x2000000000000000) != 0)
      {
        v64[0] = v24;
        v64[1] = v26 & 0xFFFFFFFFFFFFFFLL;
        if (v24 == 43)
        {
          if (!v27)
          {
            goto LABEL_101;
          }

          if (--v27)
          {
            v32 = 0;
            v40 = v64 + 1;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                break;
              }

              if (!is_mul_ok(v32, 0xAuLL))
              {
                break;
              }

              v35 = __CFADD__(10 * v32, v41);
              v32 = 10 * v32 + v41;
              if (v35)
              {
                break;
              }

              ++v40;
              if (!--v27)
              {
                goto LABEL_85;
              }
            }
          }
        }

        else if (v24 == 45)
        {
          if (!v27)
          {
            goto LABEL_100;
          }

          if (--v27)
          {
            v32 = 0;
            v36 = v64 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              if (!is_mul_ok(v32, 0xAuLL))
              {
                break;
              }

              v35 = 10 * v32 >= v37;
              v32 = 10 * v32 - v37;
              if (!v35)
              {
                break;
              }

              ++v36;
              if (!--v27)
              {
                goto LABEL_85;
              }
            }
          }
        }

        else if (v27)
        {
          v32 = 0;
          v43 = v64;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            if (!is_mul_ok(v32, 0xAuLL))
            {
              break;
            }

            v35 = __CFADD__(10 * v32, v44);
            v32 = 10 * v32 + v44;
            if (v35)
            {
              break;
            }

            ++v43;
            if (!--v27)
            {
              goto LABEL_85;
            }
          }
        }
      }

      else
      {
        if ((v24 & 0x1000000000000000) != 0)
        {
          v30 = ((v26 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v30 = sub_1007A37B4();
        }

        v31 = *v30;
        if (v31 == 43)
        {
          if (v28 < 1)
          {
            goto LABEL_103;
          }

          v27 = v28 - 1;
          if (v28 != 1)
          {
            v32 = 0;
            if (!v30)
            {
              goto LABEL_76;
            }

            v38 = v30 + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              if (!is_mul_ok(v32, 0xAuLL))
              {
                break;
              }

              v35 = __CFADD__(10 * v32, v39);
              v32 = 10 * v32 + v39;
              if (v35)
              {
                break;
              }

              ++v38;
              if (!--v27)
              {
                goto LABEL_85;
              }
            }
          }
        }

        else if (v31 == 45)
        {
          if (v28 < 1)
          {
            goto LABEL_102;
          }

          v27 = v28 - 1;
          if (v28 != 1)
          {
            v32 = 0;
            if (v30)
            {
              v33 = v30 + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_84;
                }

                if (!is_mul_ok(v32, 0xAuLL))
                {
                  goto LABEL_84;
                }

                v35 = 10 * v32 >= v34;
                v32 = 10 * v32 - v34;
                if (!v35)
                {
                  goto LABEL_84;
                }

                ++v33;
                if (!--v27)
                {
                  goto LABEL_85;
                }
              }
            }

LABEL_76:
            LOBYTE(v27) = 0;
LABEL_85:
            v45 = v27;

            if (v45)
            {
              goto LABEL_86;
            }

            goto LABEL_89;
          }
        }

        else
        {
          if (!v28)
          {
            goto LABEL_84;
          }

          v32 = 0;
          if (!v30)
          {
            goto LABEL_76;
          }

          while (1)
          {
            v42 = *v30 - 48;
            if (v42 > 9)
            {
              break;
            }

            if (!is_mul_ok(v32, 0xAuLL))
            {
              break;
            }

            v35 = __CFADD__(10 * v32, v42);
            v32 = 10 * v32 + v42;
            if (v35)
            {
              break;
            }

            ++v30;
            if (!--v28)
            {
              goto LABEL_76;
            }
          }
        }
      }

LABEL_84:
      v32 = 0;
      LOBYTE(v27) = 1;
      goto LABEL_85;
    }

    sub_10063E4AC(v24, v26, 10);
    v32 = v46;
    v48 = v47;

    v4 = v1 + 40;
    if (v48)
    {
      goto LABEL_86;
    }

LABEL_89:
    sub_100796B24();
    if (v60[2] && (v49 = sub_1002ED080(*(v0 + 328)), (v50 & 1) != 0))
    {
      v63 = *(v60[7] + 8 * v49);
    }

    else
    {
      v63 = &_swiftEmptySetSingleton;
    }

    v52 = *(v0 + 328);
    v51 = *(v0 + 336);
    v53 = *(v0 + 312);
    sub_1006E6F30(v64, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v60;
    sub_1002F7B5C(v63, v52, isUniquelyReferenced_nonNull_native);
    v60 = v64[0];
    v55 = *v58;
    (*v58)(v52, v53);
    v55(v51, v53);
    v6 = 0;
LABEL_18:
    if (++v3 == v2)
    {

      v56 = v60;
      goto LABEL_96;
    }
  }

  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
}

uint64_t sub_1007256A4()
{
  v1 = v0[45];
  v2 = v0[43];
  v3 = v0[44];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10072576C(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  sub_1001F1160(&qword_100AF4BB8, &qword_100842520);
  v3[24] = swift_task_alloc();
  v4 = sub_10079A7F4();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v5 = sub_1007A2744();
  v3[30] = v5;
  v3[31] = *(v5 - 8);
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1007258DC, 0, 0);
}

uint64_t sub_1007258DC(uint64_t a1)
{
  v2 = v1[32];
  v3 = *(v1[23] + 16);
  sub_1007A2704();
  v1[20] = *(v3 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100AF4B98, &qword_1008424C8);
  sub_100798DC4();

  v5 = v1[19];
  v1[33] = v5;
  v6 = swift_task_alloc();
  v1[34] = v6;
  v7 = sub_1001F1160(&qword_100AE8738, &unk_1008424D0);
  v8 = sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  *v6 = v1;
  v6[1] = sub_100725A64;

  return Task.value.getter(v1 + 14, v5, v7, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_100725A64()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_100726588;
  }

  else
  {
    v2 = sub_100725B78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100725B78()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_100725C40;
  v5 = v0[21];

  return sub_100724198(v5, (v0 + 14));
}

uint64_t sub_100725C40(uint64_t a1)
{
  *(*v1 + 296) = a1;

  return _swift_task_switch(sub_100725D40, 0, 0);
}

uint64_t sub_100725D40()
{
  v1 = v0[17];
  v2 = v0[18];
  sub_10000E3E8(v0 + 14, v1);
  v7 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[38] = v3;
  *v3 = v0;
  v3[1] = sub_100725E70;
  v4 = v0[37];
  v5 = v0[22];

  return v7(v4, v5, v1, v2);
}

uint64_t sub_100725E70(uint64_t a1)
{
  *(*v1 + 312) = a1;

  return _swift_task_switch(sub_100725F90, 0, 0);
}

void sub_100725F90()
{
  v62 = v0;
  v1 = *(v0 + 312);
  v60 = *(v1 + 16);
  if (v60)
  {
    v2 = 0;
    v3 = *(v0 + 208);
    v4 = (v3 + 48);
    v56 = v3;
    v58 = (v3 + 32);
    v5 = (v1 + 40);
    v6 = _swiftEmptyArrayStorage;
    while (v2 < *(v1 + 16))
    {
      v8 = *(v0 + 192);
      v7 = *(v0 + 200);
      v9 = *(v5 - 1);
      v10 = *(v5 + 25);
      v11 = v5[1];
      *(v0 + 16) = *v5;
      *(v0 + 32) = v11;
      *(v0 + 41) = v10;
      swift_unknownObjectRetain();
      sub_100359B60(v0 + 16, v0 + 64);
      sub_100728344(v0 + 16, v9, v8);
      swift_unknownObjectRelease();
      sub_100359BBC(v0 + 16);
      if ((*v4)(v8, 1, v7) == 1)
      {
        sub_100007840(*(v0 + 192), &qword_100AF4BB8, &qword_100842520);
      }

      else
      {
        v12 = *v58;
        (*v58)(*(v0 + 232), *(v0 + 192), *(v0 + 200));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10066CA64(0, *(v6 + 2) + 1, 1, v6);
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = sub_10066CA64((v13 > 1), v14 + 1, 1, v6);
        }

        v15 = *(v0 + 232);
        v16 = *(v0 + 200);
        *(v6 + 2) = v14 + 1;
        v12(&v6[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v14], v15, v16);
      }

      ++v2;
      v5 = (v5 + 56);
      if (v60 == v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_14:
    v17 = *(v0 + 280);

    v61 = v6;

    sub_10072A99C(&v61, &static Date.< infix(_:_:));
    if (v17)
    {

      return;
    }

    v18 = v61;
    v59 = v61[2];
    if (!v59)
    {
      v21 = _swiftEmptyDictionarySingleton;
LABEL_41:

      sub_1000074E0((v0 + 112));

      v51 = *(v0 + 8);

      v51(v21);
      return;
    }

    v19 = 0;
    v20 = *(v0 + 208);
    v55 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v57 = v20;
    v54 = v61 + v55;
    v52 = (v20 + 8);
    v53 = (v20 + 32);
    v21 = _swiftEmptyDictionarySingleton;
    while (v19 < *(v18 + 16))
    {
      v23 = *(v57 + 72);
      v24 = *(v57 + 16);
      v24(*(v0 + 224), &v54[v23 * v19], *(v0 + 200));
      v25 = sub_10079A7D4();
      v27 = v25;
      v28 = v26;
      if (v21[2] && (v29 = sub_10000E53C(v25, v26), (v30 & 1) != 0))
      {
        v31 = *(v21[7] + 8 * v29);
      }

      else
      {
        v31 = _swiftEmptyArrayStorage;
      }

      v24(*(v0 + 216), *(v0 + 224), *(v0 + 200));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_10066CA64(0, *(v31 + 2) + 1, 1, v31);
      }

      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_10066CA64((v32 > 1), v33 + 1, 1, v31);
      }

      v34 = *(v0 + 216);
      v35 = *(v0 + 200);
      *(v31 + 2) = v33 + 1;
      (*v53)(&v31[v55 + v33 * v23], v34, v35);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v21;
      v37 = sub_10000E53C(v27, v28);
      v39 = v21[2];
      v40 = (v38 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        goto LABEL_49;
      }

      v43 = v38;
      if (v21[3] >= v42)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = v37;
          sub_1002F440C();
          v37 = v50;
        }
      }

      else
      {
        sub_1003DA02C(v42, isUniquelyReferenced_nonNull_native);
        v37 = sub_10000E53C(v27, v28);
        if ((v43 & 1) != (v44 & 1))
        {

          sub_1007A3B24();
          return;
        }
      }

      v45 = *(v0 + 224);
      v46 = *(v0 + 200);
      if (v43)
      {
        v22 = v37;

        v21 = v61;
        *(v61[7] + 8 * v22) = v31;

        (*v52)(v45, v46);
      }

      else
      {
        v21 = v61;
        v61[(v37 >> 6) + 8] |= 1 << v37;
        v47 = (v21[6] + 16 * v37);
        *v47 = v27;
        v47[1] = v28;
        *(v21[7] + 8 * v37) = v31;
        (*v52)(v45, v46);
        v48 = v21[2];
        v41 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v41)
        {
          goto LABEL_50;
        }

        v21[2] = v49;
      }

      if (v59 == ++v19)
      {
        goto LABEL_41;
      }
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_100726588()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100726654(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_1007A2744();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100726714, 0, 0);
}

uint64_t sub_100726714(uint64_t a1)
{
  v2 = v1[13];
  v3 = *(v1[10] + 16);
  sub_1007A2704();
  v1[8] = *(v3 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100AF4B98, &qword_1008424C8);
  sub_100798DC4();

  v5 = v1[7];
  v1[14] = v5;
  v6 = swift_task_alloc();
  v1[15] = v6;
  v7 = sub_1001F1160(&qword_100AE8738, &unk_1008424D0);
  v8 = sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  *v6 = v1;
  v6[1] = sub_10072689C;

  return Task.value.getter(v1 + 2, v5, v7, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_10072689C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100726FB8;
  }

  else
  {
    v2 = sub_1007269B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1007269B0()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);
  v4 = v0[5];
  v5 = v0[6];
  sub_10000E3E8(v0 + 2, v4);
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_100726AF8;

  return v8(v4, v5);
}

uint64_t sub_100726AF8(uint64_t a1)
{
  *(*v1 + 144) = a1;

  return _swift_task_switch(sub_100726BF8, 0, 0);
}

char *sub_100726BF8()
{
  v31 = v0;
  v1 = v0[18];
  v30 = _swiftEmptyArrayStorage;
  if (v1 >> 62)
  {
LABEL_30:
    v2 = sub_1007A38D4();
    v3 = v0[18];
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v1;
  }

  if (v2)
  {
    v4 = 0;
    v0 = (v1 & 0xC000000000000001);
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v3 + 32;
    while (1)
    {
      if (v0)
      {
        v7 = sub_1007A3784();
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v4 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v7 = *(v6 + 8 * v4);
        swift_unknownObjectRetain();
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v0 = v29;
          v9 = v30;

          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_31;
        }
      }

      if ([v7 shouldBeSynced])
      {
        sub_1007A37D4();
        sub_1007A3804();
        sub_1007A3814();
        v1 = &v30;
        sub_1007A37E4();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v4;
      if (v8 == v2)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = _swiftEmptyArrayStorage;

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  if ((v9 & 0x4000000000000000) != 0)
  {
LABEL_31:
    v10 = sub_1007A38D4();
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_32:

    v13 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {
    goto LABEL_32;
  }

LABEL_20:
  v30 = _swiftEmptyArrayStorage;
  result = sub_1003BD0CC(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v12 = 0;
  v13 = v30;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = sub_1007A3784();
    }

    else
    {
      v14 = *(v9 + 8 * v12 + 32);
      swift_unknownObjectRetain();
    }

    v15 = [v14 eventName];
    v16 = sub_1007A2254();
    v18 = v17;

    swift_unknownObjectRelease();
    v30 = v13;
    v20 = v13[2];
    v19 = v13[3];
    if (v20 >= v19 >> 1)
    {
      sub_1003BD0CC((v19 > 1), v20 + 1, 1);
      v13 = v30;
    }

    ++v12;
    v13[2] = v20 + 1;
    v21 = &v13[2 * v20];
    v21[4] = v16;
    v21[5] = v18;
  }

  while (v10 != v12);

  v0 = v29;
LABEL_33:
  v22 = sub_10040E374(v13);
  v0[19] = v22;

  v23 = v0[5];
  v24 = v0[6];
  sub_10000E3E8(v0 + 2, v23);
  v28 = (*(v24 + 32) + **(v24 + 32));
  v25 = swift_task_alloc();
  v0[20] = v25;
  *v25 = v0;
  v25[1] = sub_100727048;
  v26 = v0[9];
  v27 = v0[10];

  return v28(v26, v22, 0, sub_10072C294, v27, v23, v24);
}

uint64_t sub_100726FB8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100727048()
{

  return _swift_task_switch(sub_100727160, 0, 0);
}

uint64_t sub_100727160()
{
  sub_1000074E0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007271D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a3;
  v41 = a4;
  v6 = sub_100796AD4();
  v38 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100796BB4();
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v11 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  sub_1000077D8(a2, &v35 - v21, &unk_100ADB5C0, &unk_100816880);
  if (*(a1 + 40) == 2 && (v23 = *(a1 + 32), *(v23 + 16)) && (v24 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070), (v25 & 1) != 0) && (sub_100007484(*(v23 + 56) + 32 * v24, v43), sub_1001F1160(&qword_100ADD660, &qword_10081CA28), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v42;
    sub_100723698(v8);
    sub_100796AB4();
    v37 = v26;
    (*(v38 + 8))(v8, v6);
    v28 = v39;
    v29 = v40;
    v38 = *(v39 + 56);
    (v38)(v19, 0, 1, v40);
    v30 = *(v28 + 32);
    v30(v36, v19, v29);
    sub_1000077D8(v22, v16, &unk_100ADB5C0, &unk_100816880);
    v31 = *(v28 + 48);
    if (v31(v16, 1, v29) == 1)
    {

      sub_100007840(v16, &unk_100ADB5C0, &unk_100816880);
      v32 = v36;
      goto LABEL_13;
    }

    sub_100007840(v16, &unk_100ADB5C0, &unk_100816880);
    v29 = v40;
    sub_1000077D8(v22, v13, &unk_100ADB5C0, &unk_100816880);
    result = (v31)(v13, 1, v29);
    if (result != 1)
    {

      v32 = v36;
      v33 = sub_100796B84();
      v34 = *(v39 + 8);
      v34(v13, v29);
      if (v33 != -1)
      {
        v34(v32, v29);
        return sub_10020B3C8(v22, v41, &unk_100ADB5C0, &unk_100816880);
      }

LABEL_13:
      sub_100007840(v22, &unk_100ADB5C0, &unk_100816880);
      v30(v22, v32, v29);
      (v38)(v22, 0, 1, v29);
      return sub_10020B3C8(v22, v41, &unk_100ADB5C0, &unk_100816880);
    }

    __break(1u);
  }

  else
  {
    sub_100007840(v22, &unk_100ADB5C0, &unk_100816880);
    return sub_1000077D8(a2, v41, &unk_100ADB5C0, &unk_100816880);
  }

  return result;
}

uint64_t sub_100727734()
{
  v1[21] = v0;
  sub_1001F1160(&qword_100AF4BB8, &qword_100842520);
  v1[22] = swift_task_alloc();
  v2 = sub_10079A7F4();
  v1[23] = v2;
  v1[24] = *(v2 - 8);
  v1[25] = swift_task_alloc();
  v3 = sub_1007A2744();
  v1[26] = v3;
  v1[27] = *(v3 - 8);
  v1[28] = swift_task_alloc();

  return _swift_task_switch(sub_100727888, 0, 0);
}

uint64_t sub_100727888(uint64_t a1)
{
  v2 = v1[28];
  v3 = *(v1[21] + 16);
  sub_1007A2704();
  v1[20] = *(v3 + 32);
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_100798C84();

  sub_1001F1160(&qword_100AF4B98, &qword_1008424C8);
  sub_100798DC4();

  v5 = v1[19];
  v1[29] = v5;
  v6 = swift_task_alloc();
  v1[30] = v6;
  v7 = sub_1001F1160(&qword_100AE8738, &unk_1008424D0);
  v8 = sub_1001F1160(&unk_100AD67F0, &unk_100812EC0);
  *v6 = v1;
  v6[1] = sub_100727A10;

  return Task.value.getter(v1 + 14, v5, v7, v8, &protocol self-conformance witness table for Error);
}

uint64_t sub_100727A10()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_100728294;
  }

  else
  {
    v2 = sub_100727B24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100727B24()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];

  (*(v3 + 8))(v1, v2);
  v4 = v0[17];
  v5 = v0[18];
  sub_10000E3E8(v0 + 14, v4);
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_100727C6C;

  return v8(v4, v5);
}

uint64_t sub_100727C6C(uint64_t a1)
{
  *(*v1 + 264) = a1;

  return _swift_task_switch(sub_100727D6C, 0, 0);
}

uint64_t sub_100727D6C()
{
  v1 = v0[17];
  v2 = v0[18];
  sub_10000E3E8(v0 + 14, v1);
  v6 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[34] = v3;
  *v3 = v0;
  v3[1] = sub_100727E9C;
  v4 = v0[33];

  return v6(v4, 0, v1, v2);
}

uint64_t sub_100727E9C(uint64_t a1)
{
  *(*v1 + 280) = a1;

  return _swift_task_switch(sub_100727FBC, 0, 0);
}

void sub_100727FBC()
{
  v24 = v0;
  v1 = *(v0 + 280);
  v22 = *(v1 + 16);
  if (v22)
  {
    v2 = 0;
    v3 = *(v0 + 192);
    v4 = (v3 + 48);
    v20 = v3;
    v21 = (v3 + 32);
    v5 = (v1 + 40);
    v6 = _swiftEmptyArrayStorage;
    while (v2 < *(v1 + 16))
    {
      v8 = *(v0 + 176);
      v7 = *(v0 + 184);
      v9 = *(v5 - 1);
      v10 = *(v5 + 25);
      v11 = v5[1];
      *(v0 + 16) = *v5;
      *(v0 + 32) = v11;
      *(v0 + 41) = v10;
      swift_unknownObjectRetain();
      sub_100359B60(v0 + 16, v0 + 64);
      sub_100728344(v0 + 16, v9, v8);
      swift_unknownObjectRelease();
      sub_100359BBC(v0 + 16);
      if ((*v4)(v8, 1, v7) == 1)
      {
        sub_100007840(*(v0 + 176), &qword_100AF4BB8, &qword_100842520);
      }

      else
      {
        v12 = *v21;
        (*v21)(*(v0 + 200), *(v0 + 176), *(v0 + 184));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10066CA64(0, *(v6 + 2) + 1, 1, v6);
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = sub_10066CA64((v13 > 1), v14 + 1, 1, v6);
        }

        v15 = *(v0 + 200);
        v16 = *(v0 + 184);
        *(v6 + 2) = v14 + 1;
        v12(&v6[((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v14], v15, v16);
      }

      ++v2;
      v5 = (v5 + 56);
      if (v22 == v2)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
LABEL_14:
    v17 = *(v0 + 248);

    v23 = v6;

    sub_10072A99C(&v23, &static Date.> infix(_:_:));
    if (v17)
    {
    }

    else
    {

      v18 = v23;
      sub_1000074E0((v0 + 112));

      v19 = *(v0 + 8);

      v19(v18);
    }
  }
}

uint64_t sub_100728294()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[27];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100728344@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001F1160(&qword_100AF4BC0, &qword_100842528);
  __chkstk_darwin(v6 - 8);
  v195 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v196 = &v179 - v9;
  v10 = sub_1001F1160(&qword_100AF4BB8, &qword_100842520);
  __chkstk_darwin(v10 - 8);
  v12 = &v179 - v11;
  v13 = sub_100796AD4();
  v199 = *(v13 - 1);
  v200 = v13;
  __chkstk_darwin(v13);
  v15 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001F1160(&unk_100ADB5C0, &unk_100816880);
  __chkstk_darwin(v16 - 8);
  v18 = &v179 - v17;
  v19 = sub_100796BB4();
  v201 = *(v19 - 8);
  v202 = v19;
  __chkstk_darwin(v19);
  v198 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1001F1160(&qword_100AF4BA8, &qword_100842500);
  __chkstk_darwin(v21 - 8);
  v23 = &v179 - v22;
  v24 = sub_10079A9B4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  __chkstk_darwin(v26);
  __chkstk_darwin(v27);
  v33 = __chkstk_darwin(v28);
  if (*(a1 + 40) == 2)
  {
    v189 = v32;
    v190 = v31;
    v191 = v30;
    v192 = v12;
    v197 = a3;
    v193 = *(a1 + 32);
    v194 = &v179 - v29;
    v34 = [a2 eventName];
    v35 = sub_1007A2254();
    v37 = v36;

    sub_10072A3EC(v35, v37, v23);

    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      sub_100007840(v23, &qword_100AF4BA8, &qword_100842500);
      v38 = v197;
LABEL_20:
      if (qword_100AD1B70 != -1)
      {
        swift_once();
      }

      v54 = sub_10079ACE4();
      sub_100008B98(v54, qword_100B23AE0);
      v55 = sub_10079ACC4();
      v56 = sub_1007A29B4();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Cannot extract required information from event state", v57, 2u);
      }

      v58 = sub_10079A7F4();
      return (*(*(v58 - 8) + 56))(v38, 1, 1, v58);
    }

    v46 = v194;
    (*(v25 + 32))(v194, v23, v24);
    v47 = sub_1007997B4();
    v38 = v197;
    if (!v48)
    {
      (*(v25 + 8))(v46, v24);
      goto LABEL_20;
    }

    v49 = v48;
    v50 = v193;
    if (*(v193 + 16))
    {
      v188 = v24;
      v187 = v25;
      v186 = v47;
      v51 = sub_10000E53C(0x6D617473656D6974, 0xE900000000000070);
      if (v52)
      {
        sub_100007484(*(v50 + 56) + 32 * v51, v205);
        v53 = sub_1001F1160(&qword_100ADD660, &qword_10081CA28);
        if (swift_dynamicCast())
        {
          v185 = v49;
          sub_100723698(v15);
          sub_100796AB4();
          v184 = v53;
          (*(v199 + 8))(v15, v200);

          v59 = v201;
          v60 = v202;
          (*(v201 + 56))(v18, 0, 1, v202);
          v62 = *(v59 + 32);
          v61 = v59 + 32;
          v200 = v62;
          v62(v198, v18, v60);
          v63 = sub_10079A7F4();
          v64 = *(v63 - 8);
          v65 = v192;
          v199 = *(v64 + 56);
          (v199)(v192, 1, 1, v63);
          v66 = v187;
          v67 = *(v187 + 16);
          v68 = v191;
          v69 = v194;
          v70 = v188;
          v183 = v187 + 16;
          v182 = v67;
          v67(v191, v194, v188);
          v71 = (*(v66 + 88))(v68, v70);
          if (v71 == enum case for EventType.addToWantToRead(_:))
          {
            sub_100007840(v65, &qword_100AF4BB8, &qword_100842520);
            (*(v66 + 8))(v69, v70);
            v72 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
            v73 = v185;
            *v65 = v186;
            v65[1] = v73;
            v200(v65 + v72, v198, v60);
            (*(v64 + 104))(v65, enum case for Event.addToWantToRead(_:), v63);
            (v199)(v65, 0, 1, v63);
            v74 = v65;
            return sub_10020B3C8(v74, v197, &qword_100AF4BB8, &qword_100842520);
          }

          v75 = v200;
          v179 = v61;
          v180 = v64;
          v181 = v64 + 56;
          v76 = v199;
          if (v71 == enum case for EventType.audiobookWasPlayed(_:))
          {
            v77 = v193;
            if (*(v193 + 16))
            {
              v78 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
              if (v79)
              {
                sub_100007484(*(v77 + 56) + 32 * v78, v205);
                v80 = swift_dynamicCast();
                v81 = v198;
                if (v80)
                {
                  if (*(v77 + 16))
                  {
                    v82 = v203;
                    v83 = sub_10000E53C(0x73736572676F7270, 0xE800000000000000);
                    if (v84)
                    {
                      sub_100007484(*(v77 + 56) + 32 * v83, v205);
                      (*(v187 + 8))(v194, v188);
                      if (swift_dynamicCast())
                      {
                        v85 = v192;
                        sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
                        v86 = v203;
                        v87 = sub_1001F1160(&qword_100AF4BE0, &qword_100842548);
                        v88 = v87[12];
                        v89 = v87[16];
                        v90 = v87[20];
                        v91 = v185;
                        *v85 = v186;
                        v85[1] = v91;
                        v75(v85 + v88, v198, v202);
                        *(v85 + v89) = v82;
                        *(v85 + v90) = v86;
                        v92 = &enum case for Event.audiobookWasPlayed(_:);
LABEL_35:
                        (*(v180 + 104))(v85, *v92, v63);
                        v76(v85, 0, 1, v63);
                        v74 = v85;
                        return sub_10020B3C8(v74, v197, &qword_100AF4BB8, &qword_100842520);
                      }

                      goto LABEL_91;
                    }
                  }
                }

                (*(v201 + 8))(v81, v202);
LABEL_61:
                (*(v187 + 8))(v194, v188);
LABEL_62:
                v74 = v192;
                return sub_10020B3C8(v74, v197, &qword_100AF4BB8, &qword_100842520);
              }
            }

LABEL_55:

            (*(v201 + 8))(v198, v202);
            goto LABEL_61;
          }

          v93 = v200;
          v94 = v193;
          if (v71 == enum case for EventType.bookImpression(_:))
          {
            if (*(v193 + 16) && (v95 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65), (v96 & 1) != 0))
            {
              sub_100007484(*(v94 + 56) + 32 * v95, v205);
              sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
              (*(v187 + 8))(v194, v188);
              v97 = swift_dynamicCast();
              v98 = v63;
              v99 = v180;
              if (v97)
              {
                v100 = v203;
              }

              else
              {
                v100 = 0;
              }

              v105 = v192;
            }

            else
            {
              v105 = v192;
              sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
              (*(v187 + 8))(v194, v188);
              v100 = 0;
              v98 = v63;
              v99 = v180;
            }

            v122 = sub_1001F1160(&qword_100AF4BE8, &qword_100842550);
            v123 = *(v122 + 48);
            v124 = *(v122 + 64);
            v125 = v185;
            *v105 = v186;
            v105[1] = v125;
            v93(v105 + v123, v198, v202);
            *(v105 + v124) = v100;
            v126 = &enum case for Event.bookImpression(_:);
LABEL_71:
            (*(v99 + 104))(v105, *v126, v98);
            v76(v105, 0, 1, v98);
            v74 = v105;
            return sub_10020B3C8(v74, v197, &qword_100AF4BB8, &qword_100842520);
          }

          if (v71 == enum case for EventType.bookProductPageImpression(_:))
          {
            if (*(v193 + 16) && (v101 = sub_10000E53C(0x6D6D6F6365526577, 0xED00006465646E65), (v102 & 1) != 0))
            {
              sub_100007484(*(v94 + 56) + 32 * v101, v205);
              sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
              (*(v187 + 8))(v194, v188);
              v103 = swift_dynamicCast();
              v98 = v63;
              v99 = v180;
              if (v103)
              {
                v104 = v203;
              }

              else
              {
                v104 = 0;
              }

              v105 = v192;
            }

            else
            {
              v105 = v192;
              sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
              (*(v187 + 8))(v194, v188);
              v104 = 0;
              v98 = v63;
              v99 = v180;
            }

            v129 = sub_1001F1160(&qword_100AF4BE8, &qword_100842550);
            v130 = *(v129 + 48);
            v131 = *(v129 + 64);
            v132 = v185;
            *v105 = v186;
            v105[1] = v132;
            v93(v105 + v130, v198, v202);
            *(v105 + v131) = v104;
            v126 = &enum case for Event.bookProductPageImpression(_:);
            goto LABEL_71;
          }

          if (v71 == enum case for EventType.bookWasRead(_:))
          {
            if (*(v193 + 16))
            {
              v106 = sub_10000E53C(0x656C706D61537369, 0xE800000000000000);
              if (v107)
              {
                sub_100007484(*(v94 + 56) + 32 * v106, v205);
                if (swift_dynamicCast())
                {
                  if (*(v94 + 16))
                  {
                    v108 = v203;
                    v109 = sub_10000E53C(0x73736572676F7270, 0xE800000000000000);
                    if (v110)
                    {
                      sub_100007484(*(v193 + 56) + 32 * v109, v205);
                      (*(v187 + 8))(v194, v188);
                      if (swift_dynamicCast())
                      {
                        v85 = v192;
                        sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
                        v111 = v203;
                        v112 = sub_1001F1160(&qword_100AF4BE0, &qword_100842548);
                        v113 = v112[12];
                        v114 = v112[16];
                        v115 = v112[20];
                        v116 = v185;
                        *v85 = v186;
                        v85[1] = v116;
                        v75(v85 + v113, v198, v202);
                        *(v85 + v114) = v108;
                        *(v85 + v115) = v111;
                        v92 = &enum case for Event.bookWasRead(_:);
                        goto LABEL_35;
                      }

                      goto LABEL_91;
                    }
                  }
                }
              }
            }

            goto LABEL_55;
          }

          v117 = v202;
          if (v71 == enum case for EventType.downloadSample(_:))
          {
            v118 = v185;
            v119 = v192;
            sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
            (*(v187 + 8))(v194, v188);
            v120 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
            *v119 = v186;
            v119[1] = v118;
            v75(v119 + v120, v198, v117);
            v121 = &enum case for Event.downloadSample(_:);
            goto LABEL_75;
          }

          if (v71 == enum case for EventType.explicitDecline(_:))
          {
            v119 = v192;
            sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
            (*(v187 + 8))(v194, v188);
            v127 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
            v128 = v185;
            *v119 = v186;
            v119[1] = v128;
            v75(v119 + v127, v198, v117);
            v121 = &enum case for Event.explicitDecline(_:);
            goto LABEL_75;
          }

          if (v71 == enum case for EventType.hideBook(_:))
          {
            v119 = v192;
            sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
            (*(v187 + 8))(v194, v188);
            v133 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
            v134 = v185;
            *v119 = v186;
            v119[1] = v134;
            v75(v119 + v133, v198, v202);
            v121 = &enum case for Event.hideBook(_:);
            goto LABEL_75;
          }

          if (v71 == enum case for EventType.markAsFinished(_:))
          {
            v135 = sub_10079A7C4();
            (*(*(v135 - 8) + 56))(v196, 1, 1, v135);
            if (*(v193 + 16) && (v136 = sub_10000E53C(0x73696E616863656DLL, 0xE90000000000006DLL), (v137 & 1) != 0) && (sub_100007484(*(v193 + 56) + 32 * v136, v205), (swift_dynamicCast() & 1) != 0))
            {
              v138 = v195;
              sub_100722DB0(v203, v204, v195);
              v139 = v196;
              sub_100007840(v196, &qword_100AF4BC0, &qword_100842528);
              sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
              (*(v187 + 8))(v194, v188);
              sub_10020B3C8(v138, v139, &qword_100AF4BC0, &qword_100842528);
            }

            else
            {
              sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
              (*(v187 + 8))(v194, v188);
            }

            v142 = sub_1001F1160(&qword_100AF4BD8, &qword_100842540);
            v143 = *(v142 + 48);
            v144 = *(v142 + 64);
            v145 = v192;
            v146 = v185;
            *v192 = v186;
            v145[1] = v146;
            v75(v145 + v143, v198, v202);
            sub_10020B3C8(v196, v145 + v144, &qword_100AF4BC0, &qword_100842528);
            v147 = &enum case for Event.markAsFinished(_:);
          }

          else
          {
            if (v71 == enum case for EventType.markAsStillReading(_:))
            {
              v119 = v192;
              sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
              (*(v187 + 8))(v194, v188);
              v140 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
              v141 = v185;
              *v119 = v186;
              v119[1] = v141;
              v75(v119 + v140, v198, v202);
              v121 = &enum case for Event.markAsStillReading(_:);
              goto LABEL_75;
            }

            if (v71 != enum case for EventType.rating(_:))
            {
              if (v71 == enum case for EventType.removeFromWantToRead(_:))
              {
                v119 = v192;
                sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
                (*(v187 + 8))(v194, v188);
                v155 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
                v156 = v185;
                *v119 = v186;
                v119[1] = v156;
                v75(v119 + v155, v198, v202);
                v121 = &enum case for Event.removeFromWantToRead(_:);
              }

              else if (v71 == enum case for EventType.removeSample(_:))
              {
                v119 = v192;
                sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
                (*(v187 + 8))(v194, v188);
                v157 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
                v158 = v185;
                *v119 = v186;
                v119[1] = v158;
                v75(v119 + v157, v198, v202);
                v121 = &enum case for Event.removeSample(_:);
              }

              else if (v71 == enum case for EventType.suggestLess(_:))
              {
                v119 = v192;
                sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
                (*(v187 + 8))(v194, v188);
                v159 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
                v160 = v185;
                *v119 = v186;
                v119[1] = v160;
                v75(v119 + v159, v198, v202);
                v121 = &enum case for Event.suggestLess(_:);
              }

              else if (v71 == enum case for EventType.suggestMore(_:))
              {
                v119 = v192;
                sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
                (*(v187 + 8))(v194, v188);
                v161 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
                v162 = v185;
                *v119 = v186;
                v119[1] = v162;
                v75(v119 + v161, v198, v202);
                v121 = &enum case for Event.suggestMore(_:);
              }

              else if (v71 == enum case for EventType.share(_:))
              {
                v119 = v192;
                sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
                (*(v187 + 8))(v194, v188);
                v163 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
                v164 = v185;
                *v119 = v186;
                v119[1] = v164;
                v75(v119 + v163, v198, v202);
                v121 = &enum case for Event.share(_:);
              }

              else
              {
                if (v71 != enum case for EventType.unrate(_:))
                {

                  if (qword_100AD1B70 != -1)
                  {
                    swift_once();
                  }

                  v167 = sub_10079ACE4();
                  sub_100008B98(v167, qword_100B23AE0);
                  v182(v190, v194, v188);
                  v168 = sub_10079ACC4();
                  v169 = sub_1007A29B4();
                  if (os_log_type_enabled(v168, v169))
                  {
                    v170 = swift_slowAlloc();
                    v200 = swift_slowAlloc();
                    v205[0] = v200;
                    *v170 = 136315138;
                    v171 = v190;
                    v172 = v188;
                    v182(v189, v190, v188);
                    v173 = sub_1007A22E4();
                    v175 = v174;
                    v176 = *(v187 + 8);
                    v176(v171, v172);
                    v177 = sub_1000070F4(v173, v175, v205);

                    *(v170 + 4) = v177;
                    _os_log_impl(&_mh_execute_header, v168, v169, "Unexpected event type %s", v170, 0xCu);
                    sub_1000074E0(v200);

                    (*(v201 + 8))(v198, v202);
                    v176(v194, v172);
                  }

                  else
                  {

                    v176 = *(v187 + 8);
                    v178 = v188;
                    v176(v190, v188);
                    (*(v201 + 8))(v198, v202);
                    v176(v194, v178);
                  }

                  v176(v191, v188);
                  goto LABEL_62;
                }

                v119 = v192;
                sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
                (*(v187 + 8))(v194, v188);
                v165 = *(sub_1001F1160(&qword_100AF4BC8, &qword_100842530) + 48);
                v166 = v185;
                *v119 = v186;
                v119[1] = v166;
                v75(v119 + v165, v198, v202);
                v121 = &enum case for Event.unrate(_:);
              }

LABEL_75:
              (*(v180 + 104))(v119, *v121, v63);
              v76(v119, 0, 1, v63);
              v74 = v119;
              return sub_10020B3C8(v74, v197, &qword_100AF4BB8, &qword_100842520);
            }

            if (!*(v193 + 16))
            {
              goto LABEL_55;
            }

            v148 = sub_10000E53C(0x676E69746172, 0xE600000000000000);
            if ((v149 & 1) == 0)
            {
              goto LABEL_55;
            }

            sub_100007484(*(v193 + 56) + 32 * v148, v205);
            (*(v187 + 8))(v194, v188);
            if ((swift_dynamicCast() & 1) == 0)
            {
LABEL_91:
              (*(v201 + 8))(v198, v202);

              goto LABEL_62;
            }

            v145 = v192;
            sub_100007840(v192, &qword_100AF4BB8, &qword_100842520);
            v150 = v203;
            v151 = sub_1001F1160(&qword_100AF4BD0, &qword_100842538);
            v152 = *(v151 + 48);
            v153 = *(v151 + 64);
            v154 = v185;
            *v145 = v186;
            v145[1] = v154;
            v75(v145 + v152, v198, v202);
            *(v145 + v153) = v150;
            v147 = &enum case for Event.rating(_:);
          }

          (*(v180 + 104))(v145, *v147, v63);
          v76(v145, 0, 1, v63);
          v74 = v145;
          return sub_10020B3C8(v74, v197, &qword_100AF4BB8, &qword_100842520);
        }
      }

      (*(v187 + 8))(v194, v188);
    }

    else
    {
      (*(v25 + 8))(v194, v24);
    }

    goto LABEL_20;
  }

  if (qword_100AD1B70 != -1)
  {
    swift_once();
  }

  v39 = sub_10079ACE4();
  sub_100008B98(v39, qword_100B23AE0);
  v40 = sub_10079ACC4();
  v41 = sub_1007A29B4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Can only use collection properties for personalization", v42, 2u);
  }

  v43 = sub_10079A7F4();
  v44 = *(*(v43 - 8) + 56);

  return v44(a3, 1, 1, v43);
}

uint64_t sub_10072A200(id *a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF4BA8, &qword_100842500);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_10079A9B4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [*a1 eventName];
  v13 = sub_1007A2254();
  v15 = v14;

  sub_10072A3EC(v13, v15, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100007840(v6, &qword_100AF4BA8, &qword_100842500);
    v16 = 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v16 = sub_1003687B8(v11, a2);
    (*(v8 + 8))(v11, v7);
  }

  return v16 & 1;
}

uint64_t sub_10072A3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_100AD1B78 != -1)
  {
    v16 = a1;
    v17 = a2;
    swift_once();
    a1 = v16;
    a2 = v17;
  }

  v4 = off_100AF4AD0;
  if (*(off_100AF4AD0 + 2) && (v5 = sub_10000E53C(a1, a2), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = v4[7];
    v9 = sub_10079A9B4();
    v18 = *(v9 - 8);
    (*(v18 + 16))(a3, v8 + *(v18 + 72) * v7, v9);
    v10 = *(v18 + 56);
    v11 = a3;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = sub_10079A9B4();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a3;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

uint64_t sub_10072A568()
{

  sub_100007840(v0 + OBJC_IVAR____TtC5Books29EngagementCollectorEventStore____lazy_storage___iso8601DateFormatter, &unk_100ADD550, &qword_1008424E0);

  return swift_deallocClassInstance();
}

uint64_t sub_10072A5EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_100723884(a1);
}

uint64_t sub_10072A684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10036D9C0;

  return sub_100727734();
}

uint64_t sub_10072A714(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10036D9C0;

  return sub_10072576C(a1, 0);
}

uint64_t sub_10072A7B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10036D9C0;

  return sub_10072576C(a2, a1);
}

uint64_t sub_10072A858(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002104D8;

  return sub_1007245F0(a1, a2);
}

uint64_t sub_10072A900(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002812C;

  return sub_100726654(a1);
}

void sub_10072A99C(uint64_t *a1, uint64_t (*a2)(char *, char *))
{
  v4 = *(sub_10079A7F4() - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1007859F0(v5);
  }

  v6 = v5[2];
  v7[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v7[1] = v6;
  sub_10072AA54(v7, a2);
  *a1 = v5;
}

void sub_10072AA54(uint64_t *a1, uint64_t (*a2)(char *, char *))
{
  v4 = a1[1];
  v5 = sub_1007A3A64(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10079A7F4();
        v8 = sub_1007A2634();
        v8[2] = v7;
      }

      v9 = *(sub_10079A7F4() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_10072AF44(v10, v11, a1, v6, a2, a2);
      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_10072AB98(0, v4, 1, a1, a2);
  }
}

void sub_10072AB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(_BYTE *, _BYTE *))
{
  v60 = a5;
  v59 = sub_100796BB4();
  v9 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v57 = &v40[-v12];
  v13 = sub_10079A7F4();
  __chkstk_darwin(v13);
  v50 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v56 = &v40[-v16];
  v19.n128_f64[0] = __chkstk_darwin(v17);
  v55 = &v40[-v20];
  v42 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v23 = *(v18 + 16);
    v22 = v18 + 16;
    v24 = *(v22 + 56);
    v52 = (v9 + 8);
    v53 = v23;
    v51 = (v22 - 8);
    v54 = v22;
    v25 = v21 + v24 * (a3 - 1);
    v47 = -v24;
    v48 = (v22 + 16);
    v26 = a1 - a3;
    v49 = v21;
    v41 = v24;
    v27 = v21 + v24 * a3;
    v28 = v55;
LABEL_5:
    v45 = v25;
    v46 = a3;
    v43 = v27;
    v44 = v26;
    v61 = v26;
    while (1)
    {
      v29 = v53;
      (v53)(v28, v27, v13, v19);
      v30 = v56;
      v29(v56, v25, v13);
      v31 = v57;
      sub_10079A7E4();
      v32 = v58;
      sub_10079A7E4();
      v62 = v60(v31, v32);
      v33 = *v52;
      v34 = v32;
      v35 = v59;
      (*v52)(v34, v59);
      v33(v31, v35);
      v36 = *v51;
      (*v51)(v30, v13);
      v36(v28, v13);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v46 + 1;
        v25 = v45 + v41;
        v26 = v44 - 1;
        v27 = v43 + v41;
        if (v46 + 1 == v42)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      v37 = *v48;
      v38 = v50;
      (*v48)(v50, v27, v13);
      swift_arrayInitWithTakeFrontToBack();
      v37(v25, v38, v13);
      v25 += v47;
      v27 += v47;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10072AF44(unint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t (*a5)(char *, char *), uint64_t (*a6)(char *, char *))
{
  v135 = a6;
  v152 = a5;
  v126 = a1;
  v151 = sub_100796BB4();
  v8 = *(v151 - 8);
  __chkstk_darwin(v151);
  v150 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v149 = &v124 - v11;
  v12 = sub_10079A7F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v128 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v141 = &v124 - v16;
  __chkstk_darwin(v17);
  v148 = &v124 - v18;
  v20.n128_f64[0] = __chkstk_darwin(v19);
  v153 = &v124 - v21;
  v22 = a3[1];
  v136 = a3;
  if (v22 < 1)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_96:
    a4 = *v126;
    if (!*v126)
    {
      goto LABEL_136;
    }

    v8 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v136;
    if (isUniquelyReferenced_nonNull_native)
    {
      v117 = v8;
    }

    else
    {
LABEL_130:
      v117 = sub_100784A7C(v8);
    }

    v155 = v117;
    v8 = *(v117 + 2);
    if (v8 >= 2)
    {
      v118 = v13;
      while (*v45)
      {
        v13 = v8 - 1;
        v119 = *&v117[16 * v8];
        v120 = v117;
        v121 = *&v117[16 * v8 + 24];
        v122 = v138;
        sub_10072BB6C(*v45 + *(v118 + 72) * v119, *v45 + *(v118 + 72) * *&v117[16 * v8 + 16], *v45 + *(v118 + 72) * v121, a4, v135);
        v138 = v122;
        if (v122)
        {
          goto LABEL_108;
        }

        if (v121 < v119)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v120 = sub_100784A7C(v120);
        }

        if (v8 - 2 >= *(v120 + 2))
        {
          goto LABEL_124;
        }

        v123 = &v120[16 * v8];
        *v123 = v119;
        *(v123 + 1) = v121;
        v155 = v120;
        sub_1007849F0(v13);
        v117 = v155;
        v8 = *(v155 + 2);
        if (v8 <= 1)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_134;
    }

LABEL_108:

    return;
  }

  v23 = 0;
  v145 = (v8 + 8);
  v146 = v13 + 16;
  v143 = (v13 + 32);
  v144 = (v13 + 8);
  v24 = _swiftEmptyArrayStorage;
  v125 = a4;
  v147 = v12;
  v124 = v13;
  while (1)
  {
    v129 = v24;
    v134 = v23;
    if (v23 + 1 >= v22)
    {
      v36 = v23 + 1;
      v45 = v136;
    }

    else
    {
      v137 = v22;
      v25 = *v136;
      v154 = v25;
      v26 = *(v13 + 72);
      v142 = v26;
      v27 = *(v13 + 16);
      v28 = &v25[v26 * (v23 + 1)];
      v27(v153, v20);
      v29 = v148;
      v139 = v27;
      (v27)(v148, &v25[v26 * v23], v12);
      v30 = v149;
      sub_10079A7E4();
      v31 = v150;
      sub_10079A7E4();
      LODWORD(v140) = v152(v30, v31);
      v32 = *v145;
      v33 = v151;
      (*v145)(v31, v151);
      v133 = v32;
      (v32)(v30, v33);
      v8 = *(v124 + 8);
      (v8)(v29, v12);
      v132 = v8;
      (v8)(v153, v12);
      v34 = v23 + 2;
      v35 = v154 + v142 * (v23 + 2);
      while (1)
      {
        v36 = v137;
        if (v137 == v34)
        {
          break;
        }

        v37 = v147;
        v38 = v139;
        (v139)(v153, v35, v147);
        v39 = v148;
        v38(v148, v28, v37);
        v40 = v149;
        sub_10079A7E4();
        v41 = v150;
        sub_10079A7E4();
        LOBYTE(v154) = v152(v40, v41) & 1;
        LODWORD(v154) = v154;
        v42 = v41;
        v43 = v151;
        v44 = v133;
        (v133)(v42, v151);
        v44(v40, v43);
        v8 = v132;
        v132(v39, v37);
        v23 = v134;
        (v8)(v153, v37);
        ++v34;
        v35 += v142;
        v28 += v142;
        if ((v140 & 1) != v154)
        {
          v36 = v34 - 1;
          break;
        }
      }

      v45 = v136;
      v13 = v124;
      v24 = v129;
      a4 = v125;
      v12 = v147;
      if (v140)
      {
        if (v36 < v23)
        {
          goto LABEL_127;
        }

        if (v23 < v36)
        {
          v46 = v142 * (v36 - 1);
          v47 = v36 * v142;
          v137 = v36;
          v48 = v36;
          v49 = v23;
          v50 = v23 * v142;
          do
          {
            if (v49 != --v48)
            {
              v51 = *v45;
              if (!v51)
              {
                goto LABEL_133;
              }

              v8 = v51 + v50;
              v154 = *v143;
              v154(v128, v51 + v50, v12, v24);
              if (v50 < v46 || v8 >= v51 + v47)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v50 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v154)(v51 + v46, v128, v12);
              v45 = v136;
              v24 = v129;
            }

            ++v49;
            v46 -= v142;
            v47 -= v142;
            v50 += v142;
          }

          while (v49 < v48);
          v13 = v124;
          a4 = v125;
          v23 = v134;
          v36 = v137;
        }
      }
    }

    v52 = v45[1];
    if (v36 < v52)
    {
      if (__OFSUB__(v36, v23))
      {
        goto LABEL_126;
      }

      if (v36 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if (v23 + a4 >= v52)
        {
          a4 = v45[1];
        }

        else
        {
          a4 += v23;
        }

        if (a4 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v36 != a4)
        {
          break;
        }
      }
    }

    a4 = v36;
    if (v36 < v23)
    {
      goto LABEL_125;
    }

LABEL_33:
    v53 = swift_isUniquelyReferenced_nonNull_native();
    v130 = a4;
    if (v53)
    {
      v24 = v129;
    }

    else
    {
      v24 = sub_10066B274(0, *(v129 + 2) + 1, 1, v129);
    }

    a4 = *(v24 + 2);
    v54 = *(v24 + 3);
    v8 = a4 + 1;
    v45 = v13;
    if (a4 >= v54 >> 1)
    {
      v24 = sub_10066B274((v54 > 1), a4 + 1, 1, v24);
    }

    *(v24 + 2) = v8;
    v55 = &v24[16 * a4];
    v56 = v130;
    *(v55 + 4) = v23;
    *(v55 + 5) = v56;
    if (!*v126)
    {
      goto LABEL_135;
    }

    if (a4)
    {
      v57 = *v126;
      while (1)
      {
        v58 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v59 = *(v24 + 4);
          v60 = *(v24 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_53:
          if (v62)
          {
            goto LABEL_114;
          }

          v75 = &v24[16 * v8];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_117;
          }

          v81 = &v24[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_121;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v8 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v85 = &v24[16 * v8];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_67:
        if (v80)
        {
          goto LABEL_116;
        }

        v88 = &v24[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_119;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_74:
        a4 = v58 - 1;
        if (v58 - 1 >= v8)
        {
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
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*v136)
        {
          goto LABEL_132;
        }

        v96 = v24;
        v8 = *&v24[16 * a4 + 32];
        v13 = *&v24[16 * v58 + 40];
        v97 = v138;
        sub_10072BB6C(*v136 + v45[9] * v8, *v136 + v45[9] * *&v24[16 * v58 + 32], *v136 + v45[9] * v13, v57, v135);
        v138 = v97;
        if (v97)
        {
          goto LABEL_108;
        }

        if (v13 < v8)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_100784A7C(v96);
        }

        if (a4 >= *(v96 + 2))
        {
          goto LABEL_111;
        }

        v98 = &v96[16 * a4];
        *(v98 + 4) = v8;
        *(v98 + 5) = v13;
        v155 = v96;
        sub_1007849F0(v58);
        v24 = v155;
        v8 = *(v155 + 2);
        if (v8 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v24[16 * v8 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_112;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_113;
      }

      v70 = &v24[16 * v8];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_115;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_118;
      }

      if (v74 >= v66)
      {
        v92 = &v24[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_122;
        }

        if (v61 < v95)
        {
          v58 = v8 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v22 = v136[1];
    v23 = v130;
    a4 = v125;
    v13 = v45;
    if (v130 >= v22)
    {
      goto LABEL_96;
    }
  }

  v99 = *v45;
  v100 = *(v13 + 72);
  v142 = *(v13 + 16);
  v101 = (v99 + v100 * (v36 - 1));
  v139 = -v100;
  v140 = v99;
  v102 = (v23 - v36);
  v127 = v100;
  v103 = v99 + v36 * v100;
  v130 = a4;
LABEL_86:
  v137 = v36;
  v131 = v103;
  v132 = v102;
  v104 = v102;
  v133 = v101;
  while (1)
  {
    v105 = v153;
    v106 = v142;
    (v142)(v153, v103, v12, v24);
    v45 = v148;
    v106(v148, v101, v12);
    v107 = v149;
    sub_10079A7E4();
    v108 = v150;
    sub_10079A7E4();
    LODWORD(v154) = v152(v107, v108);
    v109 = *v145;
    v110 = v108;
    v111 = v151;
    (*v145)(v110, v151);
    v112 = v107;
    v12 = v147;
    v109(v112, v111);
    v8 = v144;
    v113 = *v144;
    (*v144)(v45, v12);
    v113(v105, v12);
    if ((v154 & 1) == 0)
    {
LABEL_85:
      v36 = v137 + 1;
      v101 = &v133[v127];
      v102 = v132 - 1;
      v103 = v131 + v127;
      a4 = v130;
      if (v137 + 1 != v130)
      {
        goto LABEL_86;
      }

      v13 = v124;
      v23 = v134;
      if (v130 < v134)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v140)
    {
      break;
    }

    v8 = *v143;
    v114 = v141;
    (*v143)(v141, v103, v12);
    swift_arrayInitWithTakeFrontToBack();
    (v8)(v101, v114, v12);
    v101 += v139;
    v103 += v139;
    if (__CFADD__(v104++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_10072BB6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *))
{
  v73 = a5;
  v78 = a3;
  v72 = sub_100796BB4();
  v8 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = &v59 - v11;
  v77 = sub_10079A7F4();
  v12 = *(v77 - 8);
  __chkstk_darwin(v77);
  v69 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v75 = &v59 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v18 = v78 - a2;
  if (v78 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_63;
  }

  v19 = (a2 - a1) / v17;
  v81 = a1;
  v80 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v21;
    if (v21 >= 1)
    {
      v41 = -v17;
      v64 = (v8 + 8);
      v65 = (v12 + 16);
      v62 = a4;
      v63 = (v12 + 8);
      v42 = v40;
      v76 = a1;
      v66 = -v17;
      while (2)
      {
        while (1)
        {
          v60 = v40;
          v43 = a2;
          v44 = a2 + v41;
          v67 = v43;
          v68 = v44;
          while (1)
          {
            v46 = v78;
            if (v43 <= a1)
            {
              v81 = v43;
              v79 = v60;
              goto LABEL_60;
            }

            v61 = v40;
            v78 += v41;
            v47 = v42 + v41;
            v48 = *v65;
            v49 = v77;
            (*v65)();
            v50 = v69;
            (v48)(v69, v44, v49);
            v51 = v70;
            sub_10079A7E4();
            v52 = v71;
            sub_10079A7E4();
            v74 = v73(v51, v52);
            v53 = *v64;
            v54 = v52;
            v55 = v72;
            (*v64)(v54, v72);
            v53(v51, v55);
            v56 = *v63;
            (*v63)(v50, v49);
            v56(v75, v49);
            if (v74)
            {
              break;
            }

            v40 = v47;
            v57 = v62;
            if (v46 < v42 || v78 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
              v41 = v66;
            }

            else
            {
              v44 = v68;
              v41 = v66;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v47;
            v45 = v47 > v57;
            a1 = v76;
            v43 = v67;
            if (!v45)
            {
              a2 = v67;
              goto LABEL_59;
            }
          }

          v58 = v62;
          if (v46 < v67 || v78 >= v67)
          {
            break;
          }

          a2 = v68;
          a1 = v76;
          v40 = v61;
          v41 = v66;
          if (v46 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v58)
          {
            goto LABEL_59;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v76;
        v40 = v61;
        v41 = v66;
        if (v42 > v58)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v81 = a2;
    v79 = v40;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = a4 + v20;
    v79 = a4 + v20;
    v22 = v20 < 1 || a2 >= v78;
    if (!v22)
    {
      v23 = *(v12 + 16);
      v64 = (v8 + 8);
      v65 = v23;
      v66 = v17;
      v67 = v12 + 16;
      v63 = (v12 + 8);
      v24 = v70;
      do
      {
        v76 = a1;
        v25 = v75;
        v26 = v77;
        v27 = v65;
        (v65)(v75, a2, v77);
        v28 = v69;
        (v27)(v69, a4, v26);
        sub_10079A7E4();
        v29 = v71;
        sub_10079A7E4();
        v74 = v73(v24, v29);
        v30 = a4;
        v31 = a2;
        v32 = *v64;
        v33 = v29;
        v34 = v30;
        v35 = v72;
        (*v64)(v33, v72);
        v32(v24, v35);
        v36 = *v63;
        (*v63)(v28, v26);
        v36(v25, v26);
        if (v74)
        {
          v37 = v66;
          a2 = v31 + v66;
          v38 = v76;
          v22 = v76 >= v31;
          v39 = v31;
          a4 = v34;
          if (v22 && v76 < a2)
          {
            if (v76 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          else
          {
            swift_arrayInitWithTakeFrontToBack();
          }
        }

        else
        {
          a2 = v31;
          v37 = v66;
          a4 = v34 + v66;
          v38 = v76;
          if (v76 < v34 || v76 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v76 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v80 = a4;
        }

        a1 = v38 + v37;
        v81 = a1;
      }

      while (a4 < v68 && a2 < v78);
    }
  }

LABEL_60:
  sub_1006D5FFC(&v81, &v80, &v79);
}

uint64_t sub_10072C268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100368030(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_10072C29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&unk_100ADD550, &qword_1008424E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10072C334()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF4C90);
  sub_100008B98(v0, qword_100AF4C90);
  sub_10000A7C4(0, &qword_100AD20A0, OS_os_log_ptr);
  return sub_1007A33F4();
}

double sub_10072C524@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35.receiver = *(*&v3[OBJC_IVAR___BKSplitViewController_contentHostingController] + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
  v35.super_class = type metadata accessor for MainContentViewController();
  v7 = objc_msgSendSuper2(&v35, "contentNavigationController");
  if (v7)
  {
    v8 = v7;
    v9 = [v7 visibleViewController];

    if (v9)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        v11 = v10;
        sub_1000077D8(a2, &v33, &unk_100AD5B40, &unk_100811300);
        v12 = *(&v34 + 1);
        if (*(&v34 + 1))
        {
          v13 = sub_10000E3E8(&v33, *(&v34 + 1));
          v31[1] = v31;
          v14 = *(v12 - 8);
          v15 = __chkstk_darwin(v13);
          v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v14 + 16))(v17, v15);
          v18 = sub_1007A3AA4();
          (*(v14 + 8))(v17, v12);
          sub_1000074E0(&v33);
        }

        else
        {
          v18 = 0;
        }

        v19 = [v11 canPerformAction:a1 withSender:v18];
        swift_unknownObjectRelease();
        if (v19)
        {
          *(a3 + 24) = sub_10000A7C4(0, &unk_100AF4DA0, off_1009F8580);
          *a3 = v11;
          return result;
        }
      }
    }
  }

  sub_1000077D8(a2, &v33, &unk_100AD5B40, &unk_100811300);
  v21 = *(&v34 + 1);
  if (*(&v34 + 1))
  {
    v22 = sub_10000E3E8(&v33, *(&v34 + 1));
    v23 = *(v21 - 8);
    v24 = __chkstk_darwin(v22);
    v26 = v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v26, v24);
    v27 = sub_1007A3AA4();
    (*(v23 + 8))(v26, v21);
    sub_1000074E0(&v33);
  }

  else
  {
    v27 = 0;
  }

  v28 = type metadata accessor for SplitViewController(0);
  v32.receiver = v3;
  v32.super_class = v28;
  v29 = objc_msgSendSuper2(&v32, "targetForAction:withSender:", a1, v27);
  swift_unknownObjectRelease();
  if (v29)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  result = *&v33;
  v30 = v34;
  *a3 = v33;
  *(a3 + 16) = v30;
  return result;
}

uint64_t sub_10072CA40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1001F1160(&qword_100AF4D78, &qword_1008425D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v70 - v10;
  v12 = sub_1001F1160(&qword_100AF4D08, &qword_1008425B8);
  v72 = *(v12 - 8);
  v73 = v12;
  __chkstk_darwin(v12);
  v70 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v70 - v15;
  __chkstk_darwin(v16);
  v18 = &v70 - v17;
  sub_1000077D8(a2, v79, &unk_100AD5B40, &unk_100811300);
  v19 = v80;
  if (v80)
  {
    v20 = sub_10000E3E8(v79, v80);
    v21 = *(v19 - 8);
    v22 = __chkstk_darwin(v20);
    v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_1007A3AA4();
    (*(v21 + 8))(v24, v19);
    sub_1000074E0(v79);
  }

  else
  {
    v25 = 0;
  }

  v26 = type metadata accessor for SplitViewController(0);
  v78.receiver = v3;
  v78.super_class = v26;
  v27 = objc_msgSendSuper2(&v78, "canPerformAction:withSender:", a1, v25);
  swift_unknownObjectRelease();
  v28 = [v3 traitCollection];
  v29 = [v28 horizontalSizeClass];

  if (v29 == 1 && (v30 = [v3 viewControllerForColumn:3]) != 0)
  {
    v31 = v30;
    v32 = *&v3[OBJC_IVAR___BKSplitViewController_contentHostingController];
    v33 = OBJC_IVAR___BKSplitViewContentHostingController_viewController;
    v34 = *(v32 + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
  }

  else
  {
    v32 = *&v3[OBJC_IVAR___BKSplitViewController_contentHostingController];
    v33 = OBJC_IVAR___BKSplitViewContentHostingController_viewController;
    v34 = *(v32 + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
    v31 = v34;
  }

  if ((sub_100796E94() & 1) == 0)
  {
    if (sub_100796E94())
    {
      v35 = 0;
      if (!v27 || v31 != v34)
      {
        return v35 & 1;
      }

      v37 = OBJC_IVAR___BKSplitViewController_lastCollectionCreated;
      swift_beginAccess();
      sub_1000077D8(&v3[v37], v8, &qword_100AF4D78, &qword_1008425D0);
      if ((*(v72 + 48))(v8, 1, v73) == 1)
      {
        sub_100007840(v8, &qword_100AF4D78, &qword_1008425D0);
      }

      else
      {
        v56 = v70;
        sub_10072FA40(v8, v70);
        v57 = v71;
        sub_1000077D8(v56, v71, &qword_100AF4D08, &qword_1008425B8);

        sub_100796B34();
        v59 = v58;
        sub_100007840(v56, &qword_100AF4D08, &qword_1008425B8);
        v60 = sub_100796BB4();
        (*(*(v60 - 8) + 8))(v57, v60);
        if (v59 >= -0.25)
        {
          goto LABEL_34;
        }
      }

      v61 = *(v32 + v33);
      v62 = type metadata accessor for MainContentViewController();
      v76.receiver = v61;
      v76.super_class = v62;
      v63 = objc_msgSendSuper2(&v76, "contentNavigationController");
      if (v63 && (v64 = v63, v65 = [v63 visibleViewController], v64, v65))
      {
        objc_opt_self();
        v66 = swift_dynamicCastObjCClass();
        if (v66)
        {
          v67 = [v66 selectedBooks];

          sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
          v68 = sub_1007A25E4();
          v65 = v67;
        }

        else
        {
          v68 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v68 = _swiftEmptyArrayStorage;
      }

      v75 = v68;
      sub_1001F1160(&unk_100AF4D90, &qword_100842620);
      sub_100005920(&qword_100AED4B8, &unk_100AF4D90, &qword_100842620, &protocol conformance descriptor for [A]);
    }

    else
    {
      v38 = sub_100796E94();
      v35 = (v38 ^ 1) & v27;
      if ((v38 & v27 & 1) == 0 || v31 != v34)
      {
        return v35 & 1;
      }

      v39 = *(v32 + v33);
      v40 = type metadata accessor for MainContentViewController();
      v77.receiver = v39;
      v77.super_class = v40;
      v41 = objc_msgSendSuper2(&v77, "contentNavigationController");
      if (v41 && (v42 = v41, v43 = [v41 visibleViewController], v42, v43))
      {
        objc_opt_self();
        v44 = swift_dynamicCastObjCClass();
        if (v44)
        {
          v45 = [v44 selectedBooks];

          sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
          v46 = sub_1007A25E4();
          v43 = v45;
        }

        else
        {
          v46 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v46 = _swiftEmptyArrayStorage;
      }

      v79[0] = v46;
      sub_1001F1160(&unk_100AF4D90, &qword_100842620);
      sub_100005920(&qword_100AED4B8, &unk_100AF4D90, &qword_100842620, &protocol conformance descriptor for [A]);
    }

    v35 = sub_1007A28A4();

    return v35 & 1;
  }

  v35 = 0;
  if (v27 && v31 == v34)
  {
    v36 = OBJC_IVAR___BKSplitViewController_lastCollectionCreated;
    swift_beginAccess();
    sub_1000077D8(&v3[v36], v11, &qword_100AF4D78, &qword_1008425D0);
    if ((*(v72 + 48))(v11, 1, v73) == 1)
    {
      sub_100007840(v11, &qword_100AF4D78, &qword_1008425D0);
    }

    else
    {
      sub_10072FA40(v11, v18);
      v47 = v71;
      sub_1000077D8(v18, v71, &qword_100AF4D08, &qword_1008425B8);

      sub_100796B34();
      v49 = v48;
      sub_100007840(v18, &qword_100AF4D08, &qword_1008425B8);
      v50 = sub_100796BB4();
      (*(*(v50 - 8) + 8))(v47, v50);
      if (v49 >= -0.25)
      {
        goto LABEL_34;
      }
    }

    v51 = *(v32 + v33);
    v52 = type metadata accessor for MainContentViewController();
    v74.receiver = v51;
    v74.super_class = v52;
    v53 = objc_msgSendSuper2(&v74, "contentNavigationController");
    if (v53)
    {
      v54 = v53;
      v55 = [v53 visibleViewController];

      if (v55)
      {
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass() != 0;

        return v35 & 1;
      }
    }

LABEL_34:
    v35 = 0;
  }

  return v35 & 1;
}

void sub_10072D4FC(void *a1, uint64_t a2, uint64_t a3, char a4, char a5, SEL *a6)
{
  v14 = 0;
  v15 = 0;
  v13 = a3;
  v16 = a4;
  v9 = a1;
  sub_10079B8C4();
  v10 = [v9 view];
  if (v10)
  {
    v11 = v10;
    [v10 setAccessibilityElementsHidden:a5 & 1];

    v12.receiver = v9;
    v12.super_class = type metadata accessor for SplitViewController(0);
    objc_msgSendSuper2(&v12, *a6, a3);
  }

  else
  {
    __break(1u);
  }
}

id sub_10072D734()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 1 || (v3 = [v0 viewControllerForColumn:3]) == 0)
  {
    v3 = *(*&v0[OBJC_IVAR___BKSplitViewController_contentHostingController] + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
  }

  v4 = [v3 childViewControllerForHomeIndicatorAutoHidden];

  return v4;
}

id sub_10072D840()
{
  result = [v0 presentedViewController];
  if (result)
  {
    v2 = result;
    if ([result modalPresentationStyle] == 5 && (objc_msgSend(v2, "isBeingDismissed") & 1) == 0)
    {
      v3 = [v2 childViewControllerForStatusBarStyle];

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_10072D908()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 1 || (v3 = [v0 viewControllerForColumn:3]) == 0)
  {
    v3 = *(*&v0[OBJC_IVAR___BKSplitViewController_contentHostingController] + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
  }

  v4 = [v3 preferredStatusBarStyle];

  return v4;
}

id sub_10072DA0C()
{
  v1 = objc_opt_self();
  v2 = [v1 delegate];
  v3 = [v2 appLaunchCoordinator];

  LODWORD(v2) = [v3 appLaunchCoordinatorIsConditionSatisfied:0];
  swift_unknownObjectRelease();
  if (v2)
  {
    v4 = [v1 delegate];
    v5 = [v4 sceneManager];

    v6 = [v5 mainFlowController];
    v7 = &selRef_viewControllerForStatusBarHidden;
  }

  else
  {
    v8 = [v0 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 != 1 || (v10 = [v0 viewControllerForColumn:3]) == 0)
    {
      v10 = *(*&v0[OBJC_IVAR___BKSplitViewController_contentHostingController] + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
    }

    v6 = v10;
    v7 = &selRef_childViewControllerForStatusBarHidden;
  }

  v11 = [v6 *v7];

  return v11;
}

id sub_10072DBD8()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 != 1 || (v3 = [v0 viewControllerForColumn:3]) == 0)
  {
    v3 = *(*&v0[OBJC_IVAR___BKSplitViewController_contentHostingController] + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
  }

  v4 = [v3 prefersStatusBarHidden];

  return v4;
}

id sub_10072DCF8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SplitViewController(uint64_t a1)
{
  result = qword_100AF4CF0;
  if (!qword_100AF4CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10072DDF4(uint64_t a1)
{
  sub_10072DEB0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10072DEB0(uint64_t a1)
{
  if (!qword_100AF4D00)
  {
    sub_1001F1234(&qword_100AF4D08, &qword_1008425B8);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100AF4D00);
    }
  }
}

uint64_t sub_10072DF14()
{
  sub_1001F1160(&unk_100AD2090, &qword_10080B860);
  sub_100005920(&qword_100AEB170, &unk_100AD2090, &qword_10080B860, &protocol conformance descriptor for PassthroughSubject<A, B>);
  return sub_10079BA14();
}

uint64_t sub_10072E0B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v6);

  v0 = v6;
  if (!v6)
  {
    return 0;
  }

  v2 = *&v6[OBJC_IVAR___BKRootBarItem_identifier];
  v1 = *&v6[OBJC_IVAR___BKRootBarItem_identifier + 8];

  _s5Books20RootBarItemsProviderC18customCollectionID18fromItemIdentifierSSSgSS_tFZ_0(v2, v1);
  if (v3)
  {

    v4 = 14;
  }

  else
  {
    v4 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v2, v1);
    if (v4 == 16)
    {
      v4 = 15;
    }
  }

  return sub_10047FA38(v4);
}

double sub_10072E1B0(uint64_t a1, void *a2, char a3)
{
  v7 = [v3 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 == 1 && (v9 = [v3 viewControllerForColumn:3]) != 0 && (v10 = *(*&v3[OBJC_IVAR___BKSplitViewController_contentHostingController] + OBJC_IVAR___BKSplitViewContentHostingController_viewController), v11 = v9, v9, v11 != v10))
  {
    if (qword_100AD1B80 != -1)
    {
      swift_once();
    }

    v12 = sub_10079ACE4();
    sub_100008B98(v12, qword_100AF4C90);
    oslog = sub_10079ACC4();
    v13 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1000070F4(0xD00000000000001ELL, 0x80000001008E9330, &v19);
      sub_1000074E0(v15);
    }
  }

  else
  {
    v21._countAndFlagsBits = a1;
    v21._object = a2;
    sub_1007A23D4(v21);
    v17._countAndFlagsBits = 0x3A6D6F74737563;
    v17._object = 0xE700000000000000;
    SplitViewContentHostingController.select(identifier:isUserAction:editNameOnSelect:)(v17, 0, a3 & 1);
  }

  return result;
}

void sub_10072E408(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1001F1160(&qword_100AF4D78, &qword_1008425D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = sub_1001F1160(&qword_100AF4D08, &qword_1008425B8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = OBJC_IVAR___BKSplitViewController_lastCollectionCreated;
  swift_beginAccess();
  sub_1000077D8(v2 + v16, v8, &qword_100AF4D78, &qword_1008425D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100007840(v8, &qword_100AF4D78, &qword_1008425D0);
LABEL_4:
    v35 = v5;
    v36 = v10;
    if (qword_100AD1700 != -1)
    {
      swift_once();
    }

    v20 = qword_100B233E8;
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    v22 = v37;
    *(v21 + 56) = v37;
    sub_1001F1160(&qword_100ADAA10, &qword_100828AF0);
    swift_allocObject();
    v23 = v20;

    v38[0] = sub_10079B954();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    *(v25 + 24) = v22;
    sub_100005920(&qword_100AE5818, &qword_100ADAA10, &qword_100828AF0, &protocol conformance descriptor for Future<A, B>);

    v26 = sub_10079BA84();

    v27 = *(v9 + 48);
    v28 = v35;
    sub_100796B74();
    *(v28 + v27) = v26;
    (*(v36 + 56))(v28, 0, 1, v9);
    swift_beginAccess();
    sub_10072F9D0(v28, v2 + v16);
    swift_endAccess();
    return;
  }

  sub_10072FA40(v8, v15);
  sub_1000077D8(v15, v12, &qword_100AF4D08, &qword_1008425B8);

  sub_100796B34();
  v18 = v17;
  sub_100007840(v15, &qword_100AF4D08, &qword_1008425B8);
  v19 = sub_100796BB4();
  (*(*(v19 - 8) + 8))(v12, v19);
  if (v18 < -0.25)
  {
    goto LABEL_4;
  }

  if (qword_100AD1B80 != -1)
  {
    swift_once();
  }

  v29 = sub_10079ACE4();
  sub_100008B98(v29, qword_100AF4C90);
  v30 = sub_10079ACC4();
  v31 = sub_1007A29B4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v32 = 136315138;
    *(v32 + 4) = sub_1000070F4(0xD000000000000017, 0x80000001008E9370, v38);
    sub_1000074E0(v33);
  }
}

double sub_10072EA3C()
{
  v8.receiver = *(*(v0 + OBJC_IVAR___BKSplitViewController_contentHostingController) + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
  v8.super_class = type metadata accessor for MainContentViewController();
  v1 = objc_msgSendSuper2(&v8, "contentNavigationController");
  if (v1 && (v2 = v1, v3 = [v1 visibleViewController], v2, v3))
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 selectedBooks];

      sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
      v6 = sub_1007A25E4();
      v3 = v5;
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  sub_10072E408(v6);

  return result;
}

double sub_10072EBDC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 != 2)
  {
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    *(v4 + 24) = v2 & 1;

    sub_1007A2CD4();
  }

  return result;
}

void sub_10072EC98(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10048AAD0();
    swift_allocError();
    *v5 = a2 & 1;
    if (qword_100AD1B80 != -1)
    {
      swift_once();
    }

    v6 = sub_10079ACE4();
    sub_100008B98(v6, qword_100AF4C90);
    swift_errorRetain();
    v7 = sub_10079ACC4();
    v8 = sub_1007A29B4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = sub_1007967C4();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to create new collection, error: %@", v9, 0xCu);
      sub_100007840(v10, &unk_100AD9480, &qword_1008113B0);
    }
  }
}

double sub_10072EE40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = v6;
  v9[4] = v5;
  v9[5] = v8;
  v9[6] = v7;
  v9[7] = a3;

  sub_1007A2CD4();

  return result;
}

void sub_10072EF18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_10072EFA8(a4, a5, a2, a3, a6);
  }
}

double sub_10072EFA8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  if (a5 >> 62)
  {
    v9 = sub_1007A38D4();
  }

  else
  {
    v9 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    if (qword_100AD1B80 != -1)
    {
      swift_once();
    }

    v10 = sub_10079ACE4();
    sub_100008B98(v10, qword_100AF4C90);

    v11 = sub_10079ACC4();
    v12 = sub_1007A29D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v13 = 136315394;
      sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
      v14 = sub_1007A25F4();
      v16 = sub_1000070F4(v14, v15, &v22);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_1000070F4(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, v11, v12, "Added %s to newly created collection '%s'", v13, 0x16u);
      swift_arrayDestroy();

LABEL_12:
    }
  }

  else
  {
    if (qword_100AD1B80 != -1)
    {
      swift_once();
    }

    v17 = sub_10079ACE4();
    sub_100008B98(v17, qword_100AF4C90);

    v11 = sub_10079ACC4();
    v18 = sub_1007A29D4();

    if (os_log_type_enabled(v11, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1000070F4(a1, a2, &v22);
      _os_log_impl(&_mh_execute_header, v11, v18, "Created an empty collection '%s'", v19, 0xCu);
      sub_1000074E0(v20);

      goto LABEL_12;
    }
  }

  return sub_10072E1B0(a3, a4, 1);
}

void sub_10072F2C8(uint64_t a1)
{
  sub_1000077D8(a1, &v33, &unk_100AD5B40, &unk_100811300);
  if (!*(&v34 + 1))
  {
    sub_100007840(&v33, &unk_100AD5B40, &unk_100811300);
    goto LABEL_6;
  }

  sub_10000A7C4(0, &qword_100AECAB0, UICommand_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v35 = 0u;
    v36 = 0u;
LABEL_7:
    sub_100007840(&v35, &unk_100AD5B40, &unk_100811300);
    goto LABEL_8;
  }

  v3 = [v32 propertyList];

  if (v3)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  v35 = v33;
  v36 = v34;
  if (!*(&v34 + 1))
  {
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v13 = v33;
    v31.receiver = *(*(v1 + OBJC_IVAR___BKSplitViewController_contentHostingController) + OBJC_IVAR___BKSplitViewContentHostingController_viewController);
    v31.super_class = type metadata accessor for MainContentViewController();
    v14 = objc_msgSendSuper2(&v31, "contentNavigationController");
    if (v14 && (v15 = v14, v16 = [v14 visibleViewController], v15, v16))
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = [v17 selectedBooks];

        sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
        v19 = sub_1007A25E4();
        v16 = v18;
      }

      else
      {
        v19 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
    }

    if (qword_100AD1700 != -1)
    {
      swift_once();
    }

    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v13;
    *(v21 + 40) = v19;

    sub_1007A2CD4();

    sub_10072E1B0(v13, *(&v13 + 1), 0);
    if (qword_100AD1B80 != -1)
    {
      swift_once();
    }

    v22 = sub_10079ACE4();
    sub_100008B98(v22, qword_100AF4C90);

    v23 = sub_10079ACC4();
    v24 = sub_1007A29D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *&v35 = swift_slowAlloc();
      *v25 = 136315394;
      sub_10000A7C4(0, &qword_100ADA990, BKLibraryAsset_ptr);
      v26 = sub_1007A25F4();
      v28 = v27;

      v29 = sub_1000070F4(v26, v28, &v35);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      v30 = sub_1000070F4(v13, *(&v13 + 1), &v35);

      *(v25 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v23, v24, "Added %s to collection %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

LABEL_8:
  if (qword_100AD1B80 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AF4C90);
  sub_1000077D8(a1, &v35, &unk_100AD5B40, &unk_100811300);
  v5 = sub_10079ACC4();
  v6 = sub_1007A29B4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v32 = v8;
    *v7 = 136315138;
    sub_1000077D8(&v35, &v33, &unk_100AD5B40, &unk_100811300);
    sub_1001F1160(&unk_100AD5B40, &unk_100811300);
    v9 = sub_1007A22E4();
    v11 = v10;
    sub_100007840(&v35, &unk_100AD5B40, &unk_100811300);
    v12 = sub_1000070F4(v9, v11, &v32);

    *(v7 + 4) = v12;
    sub_1000074E0(v8);
  }

  else
  {

    sub_100007840(&v35, &unk_100AD5B40, &unk_100811300);
  }
}

uint64_t sub_10072F9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF4D78, &qword_1008425D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10072FA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF4D08, &qword_1008425B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10072FACC(void *a1, uint64_t a2)
{
  if ([a1 displayMode] == 2 && a2 == 1)
  {
    v5 = [a1 viewControllerForColumn:0];
    if (v5)
    {
      v23 = v5;
      v6 = [v5 presentedViewController];
      if (v6 && (v7 = v6, v8 = [v6 presentationController], v7, v8))
      {
        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9 && (v10 = v9, v11 = [v9 presentedViewController], v12 = objc_msgSend(v11, "presentingViewController"), v11, v12))
        {
          v13 = [v10 sourceView];
          if (v13)
          {
            v14 = v13;
            v15 = [v23 viewIfLoaded];
            if (v15)
            {
              v16 = v15;
              if ([v14 isDescendantOfView:v15])
              {
                v17 = [a1 transitionCoordinator];
                if (v17)
                {
                  v18 = [v17 isAnimated];
                  swift_unknownObjectRelease();
                }

                else
                {
                  v18 = 1;
                }

                [v12 dismissViewControllerAnimated:v18 completion:0];
              }

              v22 = v8;
              v8 = v12;
              v12 = v14;
            }

            else
            {
              v16 = v14;
              v22 = v23;
            }

            v21 = v8;
            v8 = v12;
            v12 = v16;
          }

          else
          {
            v21 = v23;
          }

          v20 = v8;
          v8 = v12;
        }

        else
        {
          v20 = v23;
        }

        v19 = v8;
      }

      else
      {
        v19 = v23;
      }
    }
  }
}

uint64_t sub_10072FD08()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF4DB0);
  sub_100008B98(v0, qword_100AF4DB0);
  type metadata accessor for BookReaderAccessoryHighlightsController(0);
  sub_1001F1160(&qword_100AF4F00, &qword_1008428B8);
  sub_1007A22E4();
  return sub_10079ACD4();
}

uint64_t sub_10072FDAC()
{
  v206 = sub_10079FFA4();
  v202 = *(v206 - 8);
  __chkstk_darwin(v206);
  v205 = &v200 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v204 = &v200 - v3;
  v4 = sub_10079FFD4();
  v223 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v200 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v228 = &v200 - v8;
  v9 = sub_1001F1160(&unk_100AD6170, &qword_10083DEE0);
  __chkstk_darwin(v9 - 8);
  v218 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v263 = &v200 - v12;
  v13 = sub_1001F1160(&unk_100AE6A30, &unk_100812750);
  v203 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v251 = (&v200 - v17);
  v253 = sub_1001F1160(&qword_100AD6190, &qword_100812CC0);
  v227 = *(v253 - 8);
  __chkstk_darwin(v253);
  v209 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v235 = (&v200 - v20);
  v226 = sub_10079FD44();
  v222 = *(v226 - 8);
  __chkstk_darwin(v226);
  v248 = &v200 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v217 = &v200 - v23;
  v24 = sub_10079F594();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v200 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_100796BB4();
  v212 = *(v213 - 8);
  __chkstk_darwin(v213);
  v29 = &v200 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796BA4();
  v30 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_adornmentState;
  swift_beginAccess();
  v31 = *(v25 + 16);
  v232 = v0;
  v246 = v30;
  v32 = &v0[v30];
  v33 = v25 + 16;
  v245 = v31;
  v31(v27, v32, v24);
  v34 = sub_10079F584();
  v35 = *(v25 + 8);
  v243 = v27;
  v238 = v25 + 8;
  v244 = v35;
  v35(v27, v24);
  if (!v34)
  {
LABEL_9:
    if (qword_100AD1B88 != -1)
    {
      goto LABEL_114;
    }

    goto LABEL_10;
  }

  v207 = v34;
  v208 = v29;
  v221 = v4;
  v36 = v232;
  if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), sub_10079F9D4(), swift_unknownObjectRelease(), v37 = *&v36[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_documentOrdinal], v38 = sub_10079F434(), , (v220 = v38) == 0))
  {

    v29 = v208;
    goto LABEL_9;
  }

  v201 = v15;
  if (qword_100AD1B88 != -1)
  {
    swift_once();
  }

  v39 = sub_10079ACE4();
  v40 = sub_100008B98(v39, qword_100AF4DB0);
  v41 = v232;
  v247 = v40;
  v42 = sub_10079ACC4();
  v43 = sub_1007A29A4();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    *(v44 + 4) = v37;

    _os_log_impl(&_mh_execute_header, v42, v43, "Removing all highlights for ordinal: %ld", v44, 0xCu);
  }

  else
  {

    v42 = v41;
  }

  v229 = *&v41[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_highlightRenderingController];
  [v229 removeAll];
  v52 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_currentHighlights;
  swift_beginAccess();
  *&v41[v52] = _swiftEmptyArrayStorage;

  if (v41[OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_layoutIsReady] != 1)
  {

    v29 = v208;
    v49 = v208;
    v50 = v41;
    goto LABEL_13;
  }

  v53 = v41;
  v54 = sub_10079ACC4();
  v55 = sub_1007A29A4();
  v56 = os_log_type_enabled(v54, v55);
  v265 = v53;
  if (v56)
  {
    v57 = swift_slowAlloc();
    *v57 = 134218240;
    LODWORD(v264) = v55;
    v58 = v243;
    v245(v243, &v232[v246], v24);
    v59 = sub_10079F554();
    v261 = v54;
    v262 = v37;
    v60 = v59;
    v244(v58, v24);
    v61 = v261;
    v260 = *(v60 + 16);
    v29 = v246;

    *(v57 + 4) = v260;

    *(v57 + 12) = 2048;
    *(v57 + 14) = v262;

    v62 = v244;
    _os_log_impl(&_mh_execute_header, v61, v264, "Processing %ld page(s) in ordinal: %ld", v57, 0x16u);
  }

  else
  {

    v61 = v53;
    v58 = v243;
    v29 = v246;
    v62 = v244;
  }

  v63 = v235;

  v239 = v33;
  v245(v58, &v232[v29], v24);
  v64 = sub_10079F554();
  v62(v58, v24);
  v66 = v64;
  v67 = *(v64 + 16);
  v68 = off_100AF4000;
  v69 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
  v216 = v6;
  v252 = v13;
  v237 = v24;
  v215 = v67;
  if (!v67)
  {

    goto LABEL_68;
  }

  v70 = 0;
  v214 = v66 + ((*(v222 + 80) + 32) & ~*(v222 + 80));
  v262 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_contentLayoutController;
  v29 = v222 + 16;
  v261 = (v227 + 16);
  v260 = (v203 + 48);
  *&v250 = v203 + 8;
  v256 = (v227 + 8);
  *&v255 = v203 + 56;
  v219 = (v222 + 8);
  *&v65 = 136315138;
  v234 = v65;
  v71 = v226;
  v72 = v248;
  v73 = v217;
  v210 = v222 + 16;
  v211 = v66;
  while (1)
  {
    if (v70 >= *(v66 + 16))
    {
      goto LABEL_113;
    }

    v74 = *(v222 + 72);
    v225 = v70;
    v75 = *(v222 + 16);
    v75(v73, v214 + v74 * v70, v71);
    sub_10079FCF4();
    v76 = sub_1007A12B4();
    if (!v76)
    {
      v75(v72, v73, v71);
      v85 = sub_10079ACC4();
      v86 = sub_1007A29B4();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        LODWORD(v259) = v86;
        v88 = v72;
        v89 = v87;
        v264 = swift_slowAlloc();
        *&v266 = v264;
        *v89 = v234;
        sub_10073876C(&qword_100AE9A40, &type metadata accessor for PageLocation, &protocol conformance descriptor for PageLocation);
        v90 = sub_1007A3A74();
        v92 = v91;
        v93 = *v219;
        (*v219)(v88, v71);
        v94 = sub_1000070F4(v90, v92, &v266);

        *(v89 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v85, v259, "Unable to update highlights for %s: cannot find PagePaginationEntity", v89, 0xCu);
        sub_1000074E0(v264);
        v63 = v235;

        v93(v73, v71);
        v72 = v248;
      }

      else
      {

        v136 = *v219;
        (*v219)(v72, v71);
        v136(v73, v71);
      }

      goto LABEL_23;
    }

    v224 = v76;
    v77 = sub_10079ACC4();
    v78 = sub_1007A29A4();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v266 = v80;
      *v79 = v234;
      v268 = v224;
      sub_1007A0C34();
      sub_10073876C(&qword_100AF4F60, &type metadata accessor for PagePaginationEntity, &protocol conformance descriptor for PagePaginationEntity);
      v81 = sub_1007A3A74();
      v83 = sub_1000070F4(v81, v82, &v266);

      *(v79 + 4) = v83;
      v24 = v237;
      _os_log_impl(&_mh_execute_header, v77, v78, "Processing page: %s", v79, 0xCu);
      sub_1000074E0(v80);
      v63 = v235;
    }

    v84 = v232;
    v29 = v253;
    v95 = sub_1007A0C14();
    v96 = v95;
    v72 = v248;
    if (!(v95 >> 62))
    {
      v97 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v97)
      {
        break;
      }

      goto LABEL_22;
    }

    v97 = sub_1007A38D4();
    if (v97)
    {
      break;
    }

LABEL_22:

    v73 = v217;
    (*v219)(v217, v226);
LABEL_23:
    v70 = v225 + 1;
    v71 = v226;
    v66 = v211;
    v29 = v210;
    if (v225 + 1 == v215)
    {

      v6 = v216;
      v69 = &OBJC_INSTANCE_METHODS__TtP5Books25BKSharedWithYouProviderJS_;
      v68 = off_100AF4000;
LABEL_68:
      v269 = &_swiftEmptySetSingleton;
      v137 = v265;
      v138 = *(&v265->isa + OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_selectionInfos);
      v263 = *(v138 + 16);
      if (!v263)
      {
LABEL_106:
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_getObjectType();
          sub_1007A0D14();

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v29 = v208;
        v199 = v207;
        sub_100735088(v207);

        v49 = v29;
        v50 = v137;
        goto LABEL_13;
      }

      v139 = OBJC_IVAR____TtC5Books39BookReaderAccessoryHighlightsController_resolveStates;
      v235 = v68[453];
      v140 = v223;
      v261 = (v138 + ((*(v223 + 80) + 32) & ~*(v223 + 80)));

      v262 = v139;
      swift_beginAccess();
      v141 = 0;
      v260 = (v140 + 16);
      v264 = v140 + 8;
      v142 = v243;
      *&v258 = v227 + 16;
      v251 = (v203 + 48);
      v233 = (v203 + 8);
      *&v234 = v227 + 8;
      v236 = (v203 + 56);
      v231 = v202 + 8;
      *&v143 = v69[207];
      v255 = v143;
      *&v259 = v138;
      v144 = v221;
      while (1)
      {
        if (v141 >= *(v138 + 16))
        {
          goto LABEL_112;
        }

        v29 = v260;
        v145 = *(v223 + 16);
        v146 = v228;
        v145(v228, v261 + *(v223 + 72) * v141, v144);
        v145(v6, v146, v144);
        v147 = sub_10079ACC4();
        v148 = sub_1007A29A4();
        if (os_log_type_enabled(v147, v148))
        {
          v149 = v144;
          v29 = swift_slowAlloc();
          v150 = swift_slowAlloc();
          *&v266 = v150;
          *v29 = v255;
          sub_10073876C(&unk_100AF4F48, &type metadata accessor for SelectionInfo, &protocol conformance descriptor for SelectionInfo);
          v151 = sub_1007A3A74();
          v153 = v152;
          v154 = v6;
          v155 = *v264;
          v156 = v149;
          v138 = v259;
          (*v264)(v154, v156);
          v157 = sub_1000070F4(v151, v153, &v266);

          *(v29 + 4) = v157;
          _os_log_impl(&_mh_execute_header, v147, v148, "Processing selection info: %s", v29, 0xCu);
          sub_1000074E0(v150);
          v13 = v252;
        }

        else
        {

          v158 = v6;
          v155 = *v264;
          (*v264)(v158, v144);
        }

        v159 = sub_10079FFC4();
        v161 = v160;
        v162 = *(&v265->isa + v262);
        if (*(v162 + 16) && (v163 = v159, , v29 = sub_10000E53C(v163, v161), v165 = v164, , (v165 & 1) != 0))
        {
          v166 = *(v162 + 56) + 24 * v29;
          v167 = *v166;
          v29 = *(v166 + 8);
          v168 = *(v166 + 16);
          sub_1001F36B0(*v166, v29, *(v166 + 16));

          if (v168 == 1)
          {
            v248 = v155;

            v169 = sub_1002F9074(v167, v29, 1);
            v170 = v246;
            v171 = v142;
            v172 = v29;
            v173 = v142;
            v174 = v237;
            v29 = v245;
            (v245)(v171, &v232[v246], v237, v169);
            v175 = sub_10079F554();
            v242 = v167;
            v176 = v244;
            v244(v173, v174);
            v241 = v172;
            LOBYTE(v172) = sub_1007368BC(v175, v172);

            if (v172)
            {
              v177 = v221;
              (v248)(v228, v221);

              v142 = v173;
              v144 = v177;
              v138 = v259;
              goto LABEL_72;
            }

            (v29)(v173, &v232[v170], v174);
            v178 = sub_10079F584();
            v176(v173, v174);
            v179 = v253;
            v138 = v259;
            v180 = v248;
            v240 = v178;
            if (v178)
            {
              v181 = sub_1007362BC();
              if (v181)
              {
                v182 = *(v242 + 16);
                v183 = v234;
                v230 = v181;
                if (v182)
                {
                  v184 = v242 + ((*(v227 + 80) + 32) & ~*(v227 + 80));
                  v257 = *(v227 + 72);
                  v256 = *(v227 + 16);
                  v254 = _swiftEmptyArrayStorage;
                  v185 = v209;
                  (v256)(v209, v184, v179);
                  while (swift_weakLoadStrong())
                  {
                    v186 = v218;
                    sub_10079F744();

                    if ((*v251)(v186, 1, v13) == 1)
                    {
                      (*v183)(v185, v253);
                      goto LABEL_89;
                    }

                    v187 = v201;
                    sub_10079FEE4();
                    v188 = *v233;
                    (*v233)(v186, v13);
                    sub_10079FEB4();
                    v188(v187, v13);
                    v183 = v234;
                    v179 = v253;
                    (*v234)(v185, v253);
                    v249 = v267;
                    v250 = v266;
                    v189 = v254;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v189 = sub_10066A87C(0, *(v189 + 2) + 1, 1, v189);
                    }

                    v191 = *(v189 + 2);
                    v190 = *(v189 + 3);
                    if (v191 >= v190 >> 1)
                    {
                      v189 = sub_10066A87C((v190 > 1), v191 + 1, 1, v189);
                    }

                    *(v189 + 2) = v191 + 1;
                    v254 = v189;
                    v192 = &v189[32 * v191];
                    v193 = v249;
                    *(v192 + 2) = v250;
                    *(v192 + 3) = v193;
                    v13 = v252;
                    v185 = v209;
LABEL_90:
                    v184 += v257;
                    if (!--v182)
                    {
                      goto LABEL_102;
                    }

                    (v256)(v185, v184, v179);
                  }

                  (*v183)(v185, v179);
                  v186 = v218;
                  (*v236)(v218, 1, 1, v13);
LABEL_89:
                  sub_100007840(v186, &unk_100AD6170, &qword_10083DEE0);
                  v179 = v253;
                  goto LABEL_90;
                }

                v254 = _swiftEmptyArrayStorage;
LABEL_102:
                v195 = v230;
                sub_1007349D4(v254, v230);

                v194 = v195;
                [v229 updatedHighlight:v194 forceRerender:1];

                v138 = v259;
                v180 = v248;
              }

              else
              {
                v194 = v240;
              }
            }

            v196 = v205;
            v197 = v228;
            sub_10079FFB4();
            v29 = v204;
            sub_1006E7794(v204, v196);
            (*v231)(v29, v206);
            v198 = v197;
            v144 = v221;
            v180(v198, v221);
            v142 = v243;
            goto LABEL_72;
          }

          sub_1002F9074(v167, v29, 0);
        }

        else
        {
        }

        v144 = v221;
        (v155)(v228, v221);
LABEL_72:
        ++v141;
        v6 = v216;
        if (v141 == v263)
        {

          v137 = v265;
          goto LABEL_106;
        }
      }
    }
  }

  v98 = 0;
  v242 = v96 & 0xC000000000000001;
  v231 = v96 & 0xFFFFFFFFFFFFFF8;
  v230 = (v96 + 32);
  v241 = v96;
  v240 = v97;
  while (1)
  {
    if (v242)
    {
      v100 = v98;
      v101 = sub_1007A3784();
      v102 = __OFADD__(v100, 1);
      v103 = v100 + 1;
      if (v102)
      {
        break;
      }

      goto LABEL_42;
    }

    if (v98 >= *(v231 + 16))
    {
      goto LABEL_111;
    }

    v104 = v98;

    v102 = __OFADD__(v104, 1);
    v103 = v104 + 1;
    if (v102)
    {
      break;
    }

LABEL_42:
    *&v249 = v103;
    v105 = v101;

    v106 = sub_10079ACC4();
    v107 = sub_1007A29A4();

    v108 = os_log_type_enabled(v106, v107);
    v254 = v105;
    if (v108)
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      *&v266 = v110;
      *v109 = v234;
      v268 = v105;
      sub_1007A1AE4();
      sub_10073876C(&qword_100AF4F58, &type metadata accessor for HighlightPaginationEntityReference, &protocol conformance descriptor for ElementPaginationEntityReference);
      v111 = sub_1007A3A74();
      v113 = sub_1000070F4(v111, v112, &v266);

      *(v109 + 4) = v113;
      _os_log_impl(&_mh_execute_header, v106, v107, "Processing highlight reference: %s", v109, 0xCu);
      sub_1000074E0(v110);
      v24 = v237;

      v63 = v235;
    }

    v72 = v248;
    v114 = v243;
    v245(v243, &v84[v246], v24);
    v115 = sub_10079F584();
    v244(v114, v24);
    v117 = v256;
    v257 = v115;
    if (v115)
    {
      v118 = sub_100735F1C(v116);
      if (v118)
      {
        v236 = v118;
        v119 = sub_1007A1AB4();
        v120 = *(v119 + 16);
        if (v120)
        {
          v121 = (*(v227 + 80) + 32) & ~*(v227 + 80);
          v233 = v119;
          v122 = v119 + v121;
          v264 = *(v227 + 72);
          v123 = *(v227 + 16);
          v124 = _swiftEmptyArrayStorage;
          v123(v63, v119 + v121, v29);
          while (swift_weakLoadStrong())
          {
            v126 = v63;
            v127 = v13;
            v128 = v263;
            sub_10079F744();
            v125 = v128;
            v13 = v127;

            if ((*v260)(v125, 1, v127) == 1)
            {
              (*v117)(v126, v29);
              v63 = v126;
              goto LABEL_49;
            }

            v129 = v251;
            sub_10079FEE4();
            v130 = *v250;
            (*v250)(v125, v13);
            sub_10079FEB4();
            v130(v129, v13);
            v117 = v256;
            v29 = v253;
            (*v256)(v126, v253);
            v258 = v267;
            v259 = v266;
            v63 = v126;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v124 = sub_10066A87C(0, *(v124 + 2) + 1, 1, v124);
            }

            v132 = *(v124 + 2);
            v131 = *(v124 + 3);
            if (v132 >= v131 >> 1)
            {
              v124 = sub_10066A87C((v131 > 1), v132 + 1, 1, v124);
            }

            *(v124 + 2) = v132 + 1;
            v133 = &v124[32 * v132];
            v134 = v258;
            *(v133 + 2) = v259;
            *(v133 + 3) = v134;
            v13 = v252;
LABEL_50:
            v122 += v264;
            if (!--v120)
            {

              v84 = v232;
              v72 = v248;
              goto LABEL_62;
            }

            v123(v63, v122, v29);
          }

          (*v117)(v63, v29);
          v125 = v263;
          (*v255)(v263, 1, 1, v13);
LABEL_49:
          sub_100007840(v125, &unk_100AD6170, &qword_10083DEE0);
          goto LABEL_50;
        }

        v124 = _swiftEmptyArrayStorage;
LABEL_62:
        v135 = v236;
        sub_1007349D4(v124, v236);

        v99 = v135;
        [v229 updatedHighlight:v99 forceRerender:1];

        v24 = v237;
      }

      else
      {
        v99 = v257;
      }
    }

    v98 = v249;
    if (v249 == v240)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  swift_once();
LABEL_10:
  v45 = sub_10079ACE4();
  sub_100008B98(v45, qword_100AF4DB0);
  v46 = sub_10079ACC4();
  v47 = sub_1007A29B4();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Unable to update highlights: missing containerView and/or documentPaginationEntity", v48, 2u);
  }

  v49 = v29;
  v50 = v232;
LABEL_13:
  sub_100735C54(v49, v50);
  return (*(v212 + 8))(v29, v213);
}