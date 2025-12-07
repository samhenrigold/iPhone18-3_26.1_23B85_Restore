uint64_t UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t *, NSObject *, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a4;
  v55 = a7;
  v56 = a8;
  v52 = a5;
  v57 = a9;
  v58 = a3;
  v47 = a1;
  v48 = a2;
  v53 = a10;
  v54 = a6;
  v11 = *(a11 - 8);
  __chkstk_darwin();
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _DiffableSection(0, a11, v14, v15);
  v59 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin();
  v21 = &v47 - v20;
  v22 = *(v11 + 16);
  v22(v13, v47, a11, v19);
  v23 = v21;
  v60 = v21;
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v24 = *(v11 + 32);
  v24(&v23[*(v16 + 44)], v13, a11);
  (v22)(v13, v48, a11);
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  v25 = &v18[*(v16 + 44)];
  v49 = v18;
  v24(v25, v13, a11);
  sub_1004DF00C();
  v26 = v59;
  swift_allocObject();
  v27 = sub_1004DD89C();
  v28 = *(v26 + 16);
  v28(v29, v60, v16);
  sub_100406340(v27, v16);
  v31 = v30;
  swift_allocObject();
  v32 = sub_1004DD89C();
  v28(v33, v18, v16);
  sub_100406340(v32, v16);
  v35 = v34;
  v36 = [v50 indexPathsForVisibleItems];
  sub_1004D85FC();
  v37 = sub_1004DD87C();

  v39 = v51;
  v38 = v52;
  sub_10000DE64(v51, v52);
  v40 = v54;
  v41 = v55;
  sub_10000DE64(v54, v55);
  v42 = v56;
  v43 = v53;
  sub_10000DE64(v56, v53);
  WitnessTable = swift_getWitnessTable();
  sub_100423FCC(v31, v35, v37, v58, v58, 0, v39, v38, v57, v40, v41, v42, v43, v16, WitnessTable);
  v45 = *(v59 + 8);
  v45(v49, v16);
  return v45(v60, v16);
}

uint64_t UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(NSObject *a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t *, NSObject *, __n128), int a5, int a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void), uint64_t a15, void (*a16)(uint64_t), uint64_t a17, void *a18, uint64_t a19)
{
  v39 = a3;
  v33 = a7;
  v34 = a8;
  v45 = a6;
  v38 = a5;
  v30 = a1;
  v43 = a15;
  v44 = a14;
  v42 = a16;
  v40 = a4;
  v41 = a17;
  v35 = a19;
  v36 = a18;
  v31 = a10;
  v32 = a2;
  v37 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v22 = [v19 indexPathsForVisibleItems];
  sub_1004D85FC();
  v23 = sub_1004DD87C();

  v24 = v33;
  v25 = v34;
  sub_10000DE64(v33, v34);
  v26 = v31;
  sub_10000DE64(v31, a11);
  sub_10000DE64(a12, a13);
  sub_100423FCC(v30, v32, v23, v39, v40, v38 & 1, v24, v25, v21, v26, a11, a12, a13, v36, v35);
  sub_100004CB8(&qword_100647AB0, &unk_1005367B0);
  v27 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100511DA0;
  sub_10042E498(v21, v28 + v27);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v28, v45, v44, v43, v42, v41);

  return sub_10042E4FC(v21);
}

uint64_t UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, int a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v165 = a4;
  v162 = a3;
  v159 = a2;
  v10 = sub_1004D852C();
  v160 = *(v10 - 8);
  __chkstk_darwin();
  v158 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AIDiffingUpdate(0);
  v13 = *(v12 - 1);
  __chkstk_darwin();
  v15 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v155 - v16;
  v161 = v6;
  swift_unknownObjectWeakInit();
  if (qword_100646D68 != -1)
  {
    swift_once();
  }

  v18 = sub_1004D966C();
  v19 = sub_100035430(v18, qword_100647A98);

  v164 = v19;
  v20 = sub_1004D964C();
  v21 = sub_1004DDF9C();
  v22 = os_log_type_enabled(v20, v21);
  v166 = a6;
  v163 = a5;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v20, v21, "applyUpdates called with %ld updates", v23, 0xCu);
  }

  else
  {
  }

  v172 = swift_allocBox();
  v179 = v24;
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v168 = swift_allocBox();
  v178 = v25;
  _s14MusicUtilities15AIDiffingUpdateV18deletedSectionsSet10Foundation05IndexG0Vvpfi_0();
  v26 = swift_allocObject();
  v167 = v26;
  *(v26 + 16) = _swiftEmptyArrayStorage;
  v177 = (v26 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v176 = v27 + 16;
  v173 = v27;
  *(v27 + 24) = _swiftEmptyArrayStorage;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v175 = v28 + 16;
  v174 = v28;
  *(v28 + 24) = _swiftEmptyArrayStorage;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v171 = v29;
  *(v29 + 24) = _swiftEmptyArrayStorage;
  v30 = swift_allocObject();
  v170 = v30;
  *(v30 + 16) = _swiftEmptyArrayStorage;
  v31 = (v30 + 16);
  v32 = a1;
  v33 = *(a1 + 16);
  v169 = v32;
  if (v33 == 1)
  {
    sub_10042E498(v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v17);
    if (*v17 == 1)
    {
      sub_10042CDCC(v32, v186, v162, v34, v165, v163, v166);
      sub_10042E4FC(v17);
      swift_unknownObjectWeakDestroy();
LABEL_39:

      v149 = 0;
      v15 = 0;
      goto LABEL_40;
    }

    v72 = *(v160 + 24);
    v72(v179, &v17[v12[6]], v10);
    v72(v178, &v17[v12[7]], v10);
    *v177 = *&v17[v12[8]];

    v73 = &v17[v12[9]];
    v74 = *v73;
    v75 = v73[1];
    v76 = v173;
    *(v173 + 16) = v74;
    *(v76 + 24) = v75;

    v77 = &v17[v12[10]];
    v78 = *v77;
    v79 = v77[1];
    v80 = v174;
    *(v174 + 16) = v78;
    *(v80 + 24) = v79;

    v81 = &v17[v12[11]];
    v82 = v81[1];
    v83 = v31;
    v84 = v171;
    *(v171 + 16) = *v81;
    *(v84 + 24) = v82;

    v85 = *&v17[v12[12]];

    sub_10042E4FC(v17);
    v157 = v83;
    *v83 = v85;

    v86 = v172;
    v87 = v168;
    v88 = v163;
    v89 = v165;
    v90 = v170;
    v91 = v162;
  }

  else
  {
    if (v33)
    {
      v35 = v15 + 8;
      v36 = v169 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v37 = *(v13 + 72);
      do
      {
        sub_10042E498(v36, v15);
        if (*v15 == 1)
        {
          goto LABEL_38;
        }

        sub_1004D850C();
        sub_1004D850C();

        sub_10041F70C(v39);
        sub_100433334(*&v35[v12[9]]);
        sub_100433334(*&v35[v12[10]]);
        sub_100433334(*&v35[v12[11]]);

        sub_10041F7F8(v40);
        sub_10042E4FC(v15);
        v36 += v37;
      }

      while (--v33);
    }

    v41 = sub_1004D964C();
    v42 = sub_1004DDF9C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Final update:", v43, 2u);
    }

    v44 = sub_1004D964C();
    v45 = sub_1004DDF9C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      aBlock = v156;
      *v46 = 136315138;
      v47 = v179;
      swift_beginAccess();
      v48 = v160;
      v49 = v158;
      (*(v160 + 16))(v158, v47, v10);
      sub_100434764(&qword_100647AC0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v50 = sub_1004DEFFC();
      v52 = v51;
      (*(v48 + 8))(v49, v10);
      v53 = sub_10042E62C(v50, v52, &aBlock);

      *(v46 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, " - Inserted sections: %s", v46, 0xCu);
      sub_100008D24(v156);
    }

    v54 = sub_1004D964C();
    v55 = sub_1004DDF9C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      aBlock = v156;
      *v56 = 136315138;
      v57 = v178;
      swift_beginAccess();
      v58 = v160;
      v59 = v158;
      (*(v160 + 16))(v158, v57, v10);
      sub_100434764(&qword_100647AC0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v60 = sub_1004DEFFC();
      v62 = v61;
      (*(v58 + 8))(v59, v10);
      v63 = sub_10042E62C(v60, v62, &aBlock);

      *(v56 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v54, v55, " - Deleted sections: %s", v56, 0xCu);
      sub_100008D24(v156);
    }

    v64 = sub_1004D964C();
    v65 = sub_1004DDF9C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock = v67;
      *v66 = 136315138;
      swift_beginAccess();

      sub_100004CB8(&qword_100647AB8, &unk_1005367C0);
      v68 = sub_1004DD88C();
      v70 = v69;

      v71 = sub_10042E62C(v68, v70, &aBlock);

      *(v66 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, " - Section move pairs: %s", v66, 0xCu);
      sub_100008D24(v67);
    }

    else
    {
    }

    v92 = sub_1004D964C();
    v93 = sub_1004DDF9C();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      aBlock = v95;
      *v94 = 136315138;
      swift_beginAccess();
      sub_1004D85FC();

      v96 = sub_1004DD88C();
      v98 = v97;

      v99 = sub_10042E62C(v96, v98, &aBlock);

      *(v94 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v92, v93, " - Inserted index paths: %s", v94, 0xCu);
      sub_100008D24(v95);
    }

    v100 = sub_1004D964C();
    v101 = sub_1004DDF9C();

    v102 = os_log_type_enabled(v100, v101);
    v157 = v31;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      aBlock = v104;
      *v103 = 136315138;
      swift_beginAccess();
      sub_1004D85FC();

      v105 = sub_1004DD88C();
      v107 = v106;

      v108 = sub_10042E62C(v105, v107, &aBlock);

      *(v103 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v100, v101, " - Deleted index paths: %s", v103, 0xCu);
      sub_100008D24(v104);
    }

    v90 = v170;

    v109 = sub_1004D964C();
    v110 = sub_1004DDF9C();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      aBlock = v112;
      *v111 = 136315138;
      swift_beginAccess();
      sub_1004D85FC();

      v113 = sub_1004DD88C();
      v115 = v114;

      v116 = sub_10042E62C(v113, v115, &aBlock);

      *(v111 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v109, v110, " - Updated index paths: %s", v111, 0xCu);
      sub_100008D24(v112);
    }

    v117 = sub_1004D964C();
    v118 = sub_1004DDF9C();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      aBlock = v120;
      *v119 = 136315138;
      swift_beginAccess();

      sub_100004CB8(&qword_100647838, &qword_100535FC0);
      v121 = sub_1004DD88C();
      v123 = v122;

      v124 = sub_10042E62C(v121, v123, &aBlock);

      *(v119 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v117, v118, " - Item move pairs: %s", v119, 0xCu);
      sub_100008D24(v120);
    }

    else
    {
    }

    v87 = v168;
    v91 = v162;
    v89 = v165;
    v84 = v171;
    v86 = v172;
    v88 = v163;
  }

  isEscapingClosureAtFileLocation = swift_allocObject();
  v126 = v161;
  v127 = v169;
  *(isEscapingClosureAtFileLocation + 16) = v161;
  *(isEscapingClosureAtFileLocation + 24) = v127;
  *(isEscapingClosureAtFileLocation + 32) = v87;
  *(isEscapingClosureAtFileLocation + 40) = v86;
  *(isEscapingClosureAtFileLocation + 48) = v167;
  v128 = v174;
  *(isEscapingClosureAtFileLocation + 56) = v173;
  *(isEscapingClosureAtFileLocation + 64) = v128;
  *(isEscapingClosureAtFileLocation + 72) = v90;
  *(isEscapingClosureAtFileLocation + 80) = v91;
  *(isEscapingClosureAtFileLocation + 88) = v89;
  *(isEscapingClosureAtFileLocation + 96) = v84;
  v129 = v166;
  *(isEscapingClosureAtFileLocation + 104) = v88;
  *(isEscapingClosureAtFileLocation + 112) = v129;
  if (v159)
  {

    v130 = v166;
    sub_10000DE64(v88, v166);
    sub_10000DE64(v91, v89);
    v131 = v91;
    v132 = v126;
    v133 = [v132 indexPathsForVisibleItems];
    sub_1004D85FC();
    v134 = v89;
    v135 = sub_1004DD87C();

    v136 = sub_1004336D8(v135);

    v137 = swift_allocObject();
    v137[2] = v169;
    v137[3] = v132;
    v138 = v179;
    v137[4] = v178;
    v137[5] = v138;
    v139 = v176;
    v137[6] = v177;
    v137[7] = v139;
    v140 = v157;
    v137[8] = v175;
    v137[9] = v140;
    v137[10] = v136;
    v137[11] = v131;
    v137[12] = v134;
    v141 = swift_allocObject();
    *(v141 + 16) = sub_100433878;
    *(v141 + 24) = v137;
    v184 = sub_100108324;
    v185 = v141;
    aBlock = _NSConcreteStackBlock;
    v181 = 1107296256;
    v142 = v163;
    v182 = sub_1000121E8;
    v183 = &unk_1005FC7B8;
    v179 = _Block_copy(&aBlock);

    sub_10000DE64(v131, v165);
    v143 = v132;

    v144 = swift_allocObject();
    v145 = v171;
    *(v144 + 2) = v143;
    *(v144 + 3) = v145;
    *(v144 + 4) = v142;
    *(v144 + 5) = v130;
    v184 = sub_100433880;
    v185 = v144;
    aBlock = _NSConcreteStackBlock;
    v181 = 1107296256;
    v182 = sub_100016298;
    v183 = &unk_1005FC808;
    v146 = _Block_copy(&aBlock);
    v88 = v185;

    sub_10000DE64(v142, v130);
    v147 = v143;

    v148 = v179;
    [v147 performBatchUpdates:v179 completion:v146];
    _Block_release(v146);
    _Block_release(v148);

    swift_unknownObjectWeakDestroy();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v149 = 0;
    v15 = 0;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  v179 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 2) = sub_100433638;
  *(v15 + 3) = isEscapingClosureAtFileLocation;
  v150 = swift_allocObject();
  v149 = sub_10001185C;
  *(v150 + 16) = sub_10001185C;
  *(v150 + 24) = v15;
  v184 = sub_100107FC0;
  v185 = v150;
  aBlock = _NSConcreteStackBlock;
  v181 = 1107296256;
  v182 = sub_1000121E8;
  v183 = &unk_1005FC740;
  v151 = _Block_copy(&aBlock);
  v178 = v185;

  sub_10000DE64(v88, v166);
  sub_10000DE64(v162, v165);
  v152 = v161;

  [v179 performWithoutAnimation:v151];
  _Block_release(v151);

  swift_unknownObjectWeakDestroy();
  v153 = swift_isEscapingClosureAtFileLocation();

  if (v153)
  {
    __break(1u);
LABEL_38:
    sub_10042CDCC(v169, v186, v162, v38, v165, v163, v166);
    swift_unknownObjectWeakDestroy();
    sub_10042E4FC(v15);
    goto LABEL_39;
  }

LABEL_40:

  return sub_10000DE74(v149, v15);
}

uint64_t UICollectionView.performAIDiff<A>(oldItems:newItems:sectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:completion:)(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, uint64_t *, NSObject *, __n128), int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, __int128 a14)
{
  v27 = a8;
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v30 = a4;
  v28 = a12;
  v29 = a11;
  v23 = a14;
  v17 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(a1, a2, a3, v24, v25, v26, v27, a9, v19, a10, a14);
  sub_100004CB8(&qword_100647AB0, &unk_1005367B0);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100511DA0;
  sub_10042E498(v19, v21 + v20);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v21, v30, 0, 0, v29, v28);

  return sub_10042E4FC(v19);
}

void sub_10042CDCC(uint64_t a1, uint64_t a2, void (*a3)(void), __n128 a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v25 = a7;
  v10 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100646D68 != -1)
  {
    swift_once();
  }

  v13 = sub_1004D966C();
  sub_100035430(v13, qword_100647A98);
  v14 = sub_1004D964C();
  v15 = sub_1004DDF9C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Found update with needsReloadData=true, reloading", v16, 2u);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    do
    {
      sub_10042E498(v18, v12);
      v21 = *(v12 + 1);
      v20 = *(v12 + 2);
      sub_10000DE64(v21, v20);
      v22 = sub_10042E4FC(v12);
      if (v21)
      {
        v21(v22);
        sub_10000DE74(v21, v20);
      }

      v18 += v19;
      --v17;
    }

    while (v17);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    [Strong reloadData];
  }

  if (a3)
  {
    a3();
  }

  if (a6)
  {
    a6(1);
  }
}

void sub_10042D010(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1004D852C();
  v18 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = a5 + 16;
  v21 = a6 + 16;
  v22 = a8 + 16;
  v23 = [a1 indexPathsForVisibleItems];
  sub_1004D85FC();
  v24 = sub_1004DD87C();

  v25 = sub_1004336D8(v24);

  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a1;
  v26[4] = v18;
  v26[5] = v19;
  v26[6] = v20;
  v26[7] = v21;
  v26[8] = a7 + 16;
  v26[9] = v22;
  v26[10] = v25;
  v26[11] = a9;
  v26[12] = a10;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100434828;
  *(v27 + 24) = v26;
  v38 = sub_100108324;
  v39 = v27;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_1000121E8;
  v37 = &unk_1005FC8D8;
  v28 = _Block_copy(&aBlock);

  v29 = a1;
  sub_10000DE64(a9, a10);

  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a11;
  v30[4] = a12;
  v30[5] = a13;
  v38 = sub_100434810;
  v39 = v30;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_100016298;
  v37 = &unk_1005FC928;
  v31 = _Block_copy(&aBlock);
  v32 = v29;

  sub_10000DE64(a12, a13);

  [v32 performBatchUpdates:v28 completion:v31];
  _Block_release(v31);
  _Block_release(v28);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }
}

double sub_10042D320(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t a8, void *a9, void (*a10)(void), uint64_t a11)
{
  v127 = a8;
  v115 = a7;
  v126 = a6;
  v125 = a5;
  v123 = a4;
  v113 = a3;
  v122 = a2;
  v12 = sub_1004D85FC();
  v120 = *(v12 - 8);
  __chkstk_darwin();
  v109 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v104 - v14;
  __chkstk_darwin();
  v124 = (&v104 - v16);
  v119 = sub_100004CB8(&qword_100647838, &qword_100535FC0);
  v121 = *(v119 - 8);
  __chkstk_darwin();
  v18 = &v104 - v17;
  v112 = sub_1004D852C();
  v19 = *(v112 - 8);
  __chkstk_darwin();
  v111 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AIDiffingUpdate(0);
  __chkstk_darwin();
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    do
    {
      sub_10042E498(v25, v23);
      v28 = *(v23 + 1);
      v27 = *(v23 + 2);
      sub_10000DE64(v28, v27);
      v29 = sub_10042E4FC(v23);
      if (v28)
      {
        v28(v29);
        sub_10000DE74(v28, v27);
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v30 = v113;
  swift_beginAccess();
  v110 = *(v19 + 16);
  v31 = v111;
  v32 = v112;
  v110(v111, v30, v112);
  sub_1004D84DC(v33);
  v35 = v34;
  v36 = *(v19 + 8);
  v36(v31, v32);
  v37 = v122;
  [v122 deleteSections:v35];

  v38 = v123;
  swift_beginAccess();
  v107 = v19 + 16;
  v110(v31, v38, v32);
  sub_1004D84DC(v39);
  v41 = v40;
  v108 = v19 + 8;
  v106 = v36;
  v36(v31, v32);
  [v37 insertSections:v41];

  v42 = v125;
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v43 + 16);
  if (v44)
  {

    v45 = (v43 + 40);
    do
    {
      [v37 moveSection:*(v45 - 1) toSection:*v45];
      v45 += 2;
      --v44;
    }

    while (v44);
  }

  swift_beginAccess();

  isa = sub_1004DD85C().super.isa;
  swift_endAccess();

  [v37 insertItemsAtIndexPaths:isa];

  swift_beginAccess();

  v47 = sub_1004DD85C().super.isa;
  swift_endAccess();

  [v37 deleteItemsAtIndexPaths:v47];

  v48 = v127;
  swift_beginAccess();
  v49 = *v48;
  v50 = *(*v48 + 16);
  if (v50)
  {
    v51 = *(v119 + 48);
    v52 = v49 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v127 = *(v121 + 72);
    v53 = (v120 + 8);
    v126 = v49;

    do
    {
      sub_10043438C(v52, v18);
      v54 = sub_1004D856C().super.isa;
      v55 = *v53;
      (*v53)(v18, v12);
      v56 = sub_1004D856C().super.isa;
      v55(&v18[v51], v12);
      [v122 moveItemAtIndexPath:v54 toIndexPath:v56];

      v52 += v127;
      --v50;
    }

    while (v50);

    v37 = v122;
  }

  v57 = [v37 _indexPathsForPreparedItems];
  v58 = sub_1004DD87C();

  v118 = *(v58 + 16);
  if (v118)
  {
    v59 = v120;
    v119 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v116 = v58 + v119;
    swift_beginAccess();
    swift_beginAccess();
    v60 = 0;
    v126 = a9;
    v127 = v59 + 16;
    v125 = a9 + 7;
    v37 = v59 + 8;
    v114 = _swiftEmptyArrayStorage;
    v105 = (v59 + 32);
    v61 = v124;
    v117 = v58;
    while (1)
    {
      if (v60 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v63 = *(v120 + 72);
      v123 = v60;
      v64 = *(v120 + 16);
      v64(v61, v116 + v63 * v60, v12);
      if (v126[2])
      {
        v65 = v126;
        sub_100434764(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v66 = sub_1004DD2AC();
        v67 = -1 << *(v65 + 32);
        v68 = v66 & ~v67;
        if ((*(v125 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
        {
          v69 = ~v67;
          while (1)
          {
            v64(v15, v126[6] + v68 * v63, v12);
            sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v70 = sub_1004DD35C();
            v71 = *v37;
            (*v37)(v15, v12);
            if (v70)
            {
              break;
            }

            v68 = (v68 + 1) & v69;
            if (((*(v125 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v71(v61, v12);
          goto LABEL_17;
        }
      }

LABEL_25:
      v72 = *v115;
      v73 = v115[1];
      v74 = v73 + v119;
      v75 = *(v73 + 16);
      v121 = v37 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v72)
      {

        sub_100432B58(v61, v74, v75, (v72 + 16), v72 + 32);
        v77 = v76;

        if ((v77 & 1) == 0)
        {
          v78 = *v37;
LABEL_40:
          v89 = v124;
          v78(v124, v12);
          v61 = v89;
          goto LABEL_17;
        }
      }

      else
      {

        if (v75)
        {
          while (1)
          {
            v64(v15, v74, v12);
            sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v79 = sub_1004DD35C();
            v78 = *v37;
            (*v37)(v15, v12);
            if (v79)
            {
              break;
            }

            v74 += v63;
            --v75;
            v61 = v124;
            if (!v75)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_40;
        }

LABEL_31:
      }

      v80 = v111;
      v81 = v112;
      v110(v111, v113, v112);
      v82 = sub_1004D85DC();
      v83 = sub_1004D84FC(v82);
      v106(v80, v81);
      if (!v83)
      {
        v64(v109, v61, v12);
        v84 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v123;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = sub_100414014(0, v84[2] + 1, 1, v84);
        }

        v114 = v84;
        v87 = v84[2];
        v86 = v84[3];
        if (v87 >= v86 >> 1)
        {
          v114 = sub_100414014((v86 > 1), v87 + 1, 1, v114);
        }

        v88 = v114;
        v114[2] = v87 + 1;
        (*v105)(&v88[v119 + v87 * v63], v109, v12);
        (*v37)(v61, v12);
        v58 = v117;
        goto LABEL_18;
      }

      (*v37)(v61, v12);
LABEL_17:
      v58 = v117;
      v62 = v123;
LABEL_18:
      v60 = v62 + 1;
      if (v60 == v118)
      {

        v37 = v122;
        goto LABEL_43;
      }
    }
  }

LABEL_43:
  v61 = a10;
  if (qword_100646D68 != -1)
  {
LABEL_52:
    swift_once();
  }

  v90 = sub_1004D966C();
  sub_100035430(v90, qword_100647A98);
  v91 = sub_1004D964C();
  v92 = sub_1004DDF9C();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v128 = v94;
    *v93 = 136315138;

    v95 = sub_1004DD88C();
    v97 = v96;

    v98 = sub_10042E62C(v95, v97, &v128);
    v37 = v122;

    *(v93 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v91, v92, "Cleaning up prefetched cells by reloading index paths: %s", v93, 0xCu);
    sub_100008D24(v94);
  }

  v99 = sub_1004DD85C().super.isa;

  [v37 reloadItemsAtIndexPaths:v99];

  if (v61)
  {

    v100 = sub_1004D964C();
    v101 = sub_1004DDF9C();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "Performing alongside updates", v102, 2u);
    }

    v61();
    sub_10000DE74(v61, a11);
  }

  return result;
}

id sub_10042E138(char a1, id a2, uint64_t a3, void (*a4)(void))
{
  v7 = [a2 isPrefetchingEnabled];
  [a2 setPrefetchingEnabled:0];
  if (qword_100646D68 != -1)
  {
    swift_once();
  }

  v8 = sub_1004D966C();
  sub_100035430(v8, qword_100647A98);

  v9 = sub_1004D964C();
  v10 = sub_1004DDF9C();

  if (os_log_type_enabled(v9, v10))
  {
    buf = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *buf = 136315138;
    swift_beginAccess();
    v21 = a4;

    v12 = sub_1004340F4(v11);
    v18 = v10;
    v14 = v13;

    v15 = sub_10042E62C(v12, v14, v22);

    *(buf + 4) = v15;
    a4 = v21;
    _os_log_impl(&_mh_execute_header, v9, v18, "Reconfiguring index paths: %s", buf, 0xCu);
    sub_100008D24(v20);
  }

  swift_beginAccess();
  sub_1004D85FC();

  isa = sub_1004DD85C().super.isa;
  swift_endAccess();

  [a2 reconfigureItemsAtIndexPaths:isa];

  if (a4)
  {
    a4(a1 & 1);
  }

  return [a2 setPrefetchingEnabled:v7];
}

uint64_t sub_10042E3D8()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100647A98);
  sub_100035430(v0, qword_100647A98);
  return sub_1004D965C();
}

uint64_t type metadata accessor for AIDiffingUpdate(uint64_t a1)
{
  result = qword_100647B20;
  if (!qword_100647B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10042E498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIDiffingUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10042E4FC(uint64_t a1)
{
  v2 = type metadata accessor for AIDiffingUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10042E558(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10042E62C(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t sub_10042E5B4()
{

  return swift_deallocObject();
}

uint64_t sub_10042E5EC()
{

  return swift_deallocObject();
}

unint64_t sub_10042E62C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10042E6F8(v11, 0, 0, 1, a1, a2);
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
    sub_10000904C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100008D24(v11);
  return v7;
}

unint64_t sub_10042E6F8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10042E804(a5, a6);
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
    result = sub_1004DEB6C();
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

void *sub_10042E804(uint64_t a1, unint64_t a2)
{
  v3 = sub_10042E850(a1, a2);
  sub_10042E980(&off_1005FAB68);
  return v3;
}

void *sub_10042E850(uint64_t a1, unint64_t a2)
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

  v6 = sub_10042EA6C(v5, 0);
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

  result = sub_1004DEB6C();
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
        v10 = sub_1004DD61C();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10042EA6C(v10, 0);
        result = sub_1004DEA9C();
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

void sub_10042E980(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10042EAE0(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_10042EA6C(uint64_t a1, uint64_t a2)
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

  sub_100004CB8(&qword_100647C50, &qword_100536858);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10042EAE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004CB8(&qword_100647C50, &qword_100536858);
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

uint64_t sub_10042EBD4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_100434764(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v33 = a2;
  v11 = sub_1004DD2AC();
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
      sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = sub_1004DD35C();
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
    sub_10042F5C0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_10042EEB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1004DF26C();
  sub_1004DD55C();
  v8 = sub_1004DF2BC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1004DF08C() & 1) != 0)
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

    sub_10042F864(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_10042F004(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1004D85FC();
  v3 = *(v37 - 8);
  __chkstk_darwin();
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_100004CB8(&qword_100647C60, &qword_100536868);
  v6 = sub_1004DEA6C();
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
      sub_100434764(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = sub_1004DD2AC();
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

void sub_10042F360(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(qword_100647C98, &unk_100536890);
  v4 = sub_1004DEA6C();
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
      sub_1004DF26C();
      sub_1004DD55C();
      v21 = sub_1004DF2BC();
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

uint64_t sub_10042F5C0(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
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
    sub_10042F004(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10042F9E4();
      goto LABEL_12;
    }

    sub_10042FD78(v11 + 1);
  }

  v13 = *v3;
  sub_100434764(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v14 = sub_1004DD2AC();
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
      sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v22 = sub_1004DD35C();
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
  result = sub_1004DF15C();
  __break(1u);
  return result;
}

void sub_10042F864(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10042F360(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_10042FC1C();
      goto LABEL_16;
    }

    sub_100430094(v8 + 1);
  }

  v10 = *v4;
  sub_1004DF26C();
  sub_1004DD55C();
  v11 = sub_1004DF2BC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1004DF08C() & 1) != 0)
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
  sub_1004DF15C();
  __break(1u);
}

void sub_10042F9E4()
{
  v1 = v0;
  v2 = sub_1004D85FC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004CB8(&qword_100647C60, &qword_100536868);
  v6 = *v0;
  v7 = sub_1004DEA5C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
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
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }
}

void sub_10042FC1C()
{
  v1 = v0;
  sub_100004CB8(qword_100647C98, &unk_100536890);
  v2 = *v0;
  v3 = sub_1004DEA5C();
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

void sub_10042FD78(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1004D85FC();
  v3 = *(v34 - 8);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_100004CB8(&qword_100647C60, &qword_100536868);
  v7 = sub_1004DEA6C();
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
      sub_100434764(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v21 = sub_1004DD2AC();
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

void sub_100430094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100004CB8(qword_100647C98, &unk_100536890);
  v4 = sub_1004DEA6C();
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
      sub_1004DF26C();

      sub_1004DD55C();
      v20 = sub_1004DF2BC();
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

uint64_t sub_1004302CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004DE94C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1004DF25C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10043043C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1004DE94C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 24 * v6;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      sub_1004DF26C();
      if (v10)
      {
        sub_1004DF27C(1uLL);
        v12 = v11;

        sub_1004DD55C();
      }

      else
      {
        sub_1004DF27C(0);
        v13 = v11;
      }

      v14 = sub_1004DF2BC();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

unint64_t sub_10043062C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100028EF8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_100444FE0();
    result = v17;
    goto LABEL_8;
  }

  sub_100444294(v14, a3 & 1);
  result = sub_100028EF8(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1004DF16C();
  __break(1u);
  return result;
}

void sub_100430750(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10041CA54(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1004444F8(v16, a4 & 1);
      v11 = sub_10041CA54(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1004DF16C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_10044512C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
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
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1004308B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_10041CBAC(a2, a3, a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_100444A58(v17, a5 & 1);
      v12 = sub_10041CBAC(a2, a3, a4);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_1004DF16C();
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = v12;
      sub_10044540C();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;

    return;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  v23 = (v22[6] + 24 * v12);
  *v23 = a2;
  v23[1] = a3;
  v23[2] = a4;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;

  v26 = a4;
}

void sub_100430A5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10041CA54(a2, a3);
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
      sub_100444D38(v16, a4 & 1);
      v11 = sub_10041CA54(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1004DF16C();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100445594();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
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

void sub_100430BD8(uint64_t *a1)
{
  v2 = *(sub_1004D85FC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10044630C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100430C80(v5);
  *a1 = v3;
}

void sub_100430C80(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1004DEF7C(v2);
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
        sub_1004D85FC();
        v6 = sub_1004DD8EC();
        v6[2] = v5;
      }

      v7 = *(sub_1004D85FC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100431070(v8, v9, a1, v4);
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
    sub_100430DAC(0, v2, 1, a1);
  }
}

void sub_100430DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1004D85FC();
  __chkstk_darwin();
  v39 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v29 - v10;
  v12 = __chkstk_darwin();
  v42 = &v29 - v13;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v40 = *(v11 + 16);
    v41 = v11 + 16;
    v15 = *(v11 + 72);
    v16 = (v11 + 8);
    v37 = (v11 + 32);
    v38 = v14;
    v17 = (v14 + v15 * (a3 - 1));
    v36 = -v15;
    v18 = a1 - a3;
    v30 = v15;
    v19 = v14 + v15 * a3;
LABEL_5:
    v34 = v17;
    v35 = a3;
    v32 = v19;
    v33 = v18;
    v20 = v17;
    while (1)
    {
      v21 = v42;
      v22 = v40;
      v40(v42, v19, v8, v12);
      v23 = v43;
      v22(v43, v20, v8);
      sub_100434764(&qword_100647C90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v24 = sub_1004DD32C();
      v25 = *v16;
      (*v16)(v23, v8);
      v25(v21, v8);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v17 = &v34[v30];
        v18 = v33 - 1;
        v19 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v26 = *v37;
      v27 = v39;
      (*v37)(v39, v19, v8);
      swift_arrayInitWithTakeFrontToBack();
      v26(v20, v27, v8);
      v20 += v36;
      v19 += v36;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100431070(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v119 = a1;
  v8 = sub_1004D85FC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v124 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v116 - v11;
  __chkstk_darwin();
  v137 = &v116 - v12;
  v13 = __chkstk_darwin();
  v136 = &v116 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = _swiftEmptyArrayStorage;
LABEL_94:
    v18 = *v119;
    if (!*v119)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v17 = sub_1004461E0(v17);
    }

    v139 = v17;
    v112 = *(v17 + 2);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *&v17[16 * v112];
        v114 = *&v17[16 * v112 + 24];
        sub_100431A98(*a3 + v9[9] * v113, *a3 + v9[9] * *&v17[16 * v112 + 16], *a3 + v9[9] * v114, v18);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v114 < v113)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1004461E0(v17);
        }

        if (v112 - 2 >= *(v17 + 2))
        {
          goto LABEL_120;
        }

        v115 = &v17[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v139 = v17;
        sub_100446154(v112 - 1);
        v17 = v139;
        v112 = *(v139 + 2);
        if (v112 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v16 = 0;
  v134 = (v9 + 1);
  v135 = v9 + 2;
  v133 = (v9 + 4);
  v17 = _swiftEmptyArrayStorage;
  v121 = v9;
  v138 = v8;
  v117 = a3;
  while (1)
  {
    v18 = v16;
    v122 = v17;
    if (v16 + 1 >= v15)
    {
      v31 = v16 + 1;
    }

    else
    {
      v129 = v15;
      v118 = v5;
      v19 = *a3;
      v20 = v9[9];
      v21 = v16;
      v120 = v16;
      v22 = &v19[v20 * (v16 + 1)];
      v23 = v8;
      v24 = v9[2];
      v25 = v136;
      v24(v136, v22, v23, v13);
      v26 = &v19[v20 * v21];
      v27 = v137;
      v128 = v24;
      (v24)(v137, v26, v23);
      v127 = sub_100434764(&qword_100647C90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      LODWORD(v130) = sub_1004DD32C();
      v28 = v9[1];
      v28(v27, v23);
      v126 = v28;
      v28(v25, v23);
      v29 = v120 + 2;
      v132 = v20;
      v30 = &v19[v20 * (v120 + 2)];
      while (1)
      {
        v31 = v129;
        if (v129 == v29)
        {
          break;
        }

        v32 = v136;
        v33 = v9;
        v34 = v138;
        v35 = v128;
        (v128)(v136, v30, v138);
        v36 = v137;
        v35(v137, v22, v34);
        v37 = sub_1004DD32C() & 1;
        v38 = v126;
        (v126)(v36, v34);
        v39 = v34;
        v9 = v33;
        v38(v32, v39);
        ++v29;
        v30 += v132;
        v22 += v132;
        if ((v130 & 1) != v37)
        {
          v31 = v29 - 1;
          break;
        }
      }

      v5 = v118;
      v17 = v122;
      v8 = v138;
      a3 = v117;
      v18 = v120;
      if (v130)
      {
        if (v31 < v120)
        {
          goto LABEL_123;
        }

        if (v120 < v31)
        {
          v40 = v31;
          v41 = v132 * (v31 - 1);
          v42 = v31 * v132;
          v129 = v31;
          v43 = v120;
          v44 = v120 * v132;
          do
          {
            if (v43 != --v40)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v130 = *v133;
              v130(v124, &v46[v44], v138);
              if (v44 < v41 || &v46[v44] >= &v46[v42])
              {
                v45 = v138;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v45 = v138;
                if (v44 != v41)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v130(&v46[v41], v124, v45);
              v9 = v121;
              v17 = v122;
            }

            ++v43;
            v41 -= v132;
            v42 -= v132;
            v44 += v132;
          }

          while (v43 < v40);
          v5 = v118;
          v8 = v138;
          v18 = v120;
          v31 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v31 < v47)
    {
      if (__OFSUB__(v31, v18))
      {
        goto LABEL_122;
      }

      if (v31 - v18 < v116)
      {
        if (__OFADD__(v18, v116))
        {
          goto LABEL_124;
        }

        if (v18 + v116 >= v47)
        {
          v48 = a3[1];
        }

        else
        {
          v48 = v18 + v116;
        }

        if (v48 < v18)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v31 != v48)
        {
          break;
        }
      }
    }

    v49 = v31;
    if (v31 < v18)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_100413EF4(0, *(v17 + 2) + 1, 1, v17);
    }

    v51 = *(v17 + 2);
    v50 = *(v17 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v17 = sub_100413EF4((v50 > 1), v51 + 1, 1, v17);
    }

    *(v17 + 2) = v52;
    v53 = &v17[16 * v51];
    *(v53 + 4) = v18;
    *(v53 + 5) = v49;
    v18 = *v119;
    if (!*v119)
    {
      goto LABEL_131;
    }

    v125 = v49;
    if (v51)
    {
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(v17 + 4);
          v56 = *(v17 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_52:
          if (v58)
          {
            goto LABEL_110;
          }

          v71 = &v17[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_113;
          }

          v77 = &v17[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_117;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v81 = &v17[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_66:
        if (v76)
        {
          goto LABEL_112;
        }

        v84 = &v17[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_115;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_73:
        v92 = v54 - 1;
        if (v54 - 1 >= v52)
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

        v93 = *&v17[16 * v92 + 32];
        v94 = *&v17[16 * v54 + 40];
        sub_100431A98(*a3 + v9[9] * v93, *a3 + v9[9] * *&v17[16 * v54 + 32], *a3 + v9[9] * v94, v18);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v94 < v93)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1004461E0(v17);
        }

        if (v92 >= *(v17 + 2))
        {
          goto LABEL_107;
        }

        v95 = &v17[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        v139 = v17;
        sub_100446154(v54);
        v17 = v139;
        v52 = *(v139 + 2);
        v8 = v138;
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v17[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_108;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_109;
      }

      v66 = &v17[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_111;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_114;
      }

      if (v70 >= v62)
      {
        v88 = &v17[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_118;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v15 = a3[1];
    v16 = v125;
    if (v125 >= v15)
    {
      goto LABEL_94;
    }
  }

  v118 = v5;
  v96 = *a3;
  v97 = v9[9];
  v132 = v9[2];
  v98 = v96 + v97 * (v31 - 1);
  v99 = -v97;
  v120 = v18;
  v100 = v18 - v31;
  v130 = v96;
  v123 = v97;
  v101 = v96 + v31 * v97;
  v125 = v48;
LABEL_85:
  v128 = v98;
  v129 = v31;
  v126 = v101;
  v127 = v100;
  v102 = v98;
  while (1)
  {
    v103 = v136;
    v104 = v132;
    (v132)(v136, v101, v8);
    v105 = v137;
    v104(v137, v102, v138);
    sub_100434764(&qword_100647C90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v106 = sub_1004DD32C();
    v107 = *v134;
    v108 = v105;
    v8 = v138;
    (*v134)(v108, v138);
    v107(v103, v8);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v31 = v129 + 1;
      v98 = &v128[v123];
      v100 = v127 - 1;
      v101 = &v126[v123];
      v49 = v125;
      if (v129 + 1 != v125)
      {
        goto LABEL_85;
      }

      v5 = v118;
      a3 = v117;
      v9 = v121;
      v17 = v122;
      v18 = v120;
      if (v125 < v120)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v130)
    {
      break;
    }

    v109 = *v133;
    v110 = v131;
    (*v133)(v131, v101, v8);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v8);
    v102 += v99;
    v101 += v99;
    if (__CFADD__(v100++, 1))
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

void sub_100431A98(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = sub_1004D85FC();
  v8 = *(v50 - 8);
  __chkstk_darwin();
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v38 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v49 = a3;
  v14 = (a2 - a1) / v12;
  v53 = a1;
  v52 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v16;
    if (v16 >= 1)
    {
      v26 = -v12;
      v41 = a4;
      v42 = (v8 + 16);
      v39 = (v8 + 8);
      v40 = a1;
      v27 = a4 + v16;
      v28 = v49;
      v43 = v26;
      do
      {
        v38 = v25;
        v29 = a2 + v26;
        v45 = a2 + v26;
        v46 = v25;
        v44 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v53 = a2;
            v25 = v38;
            goto LABEL_59;
          }

          v31 = v28;
          v49 = v28 + v26;
          v32 = v27 + v26;
          v33 = *v42;
          v34 = v47;
          v35 = v50;
          (*v42)(v47, v27 + v26, v50);
          v36 = v48;
          v33(v48, v29, v35);
          sub_100434764(&qword_100647C90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          LOBYTE(v33) = sub_1004DD32C();
          v37 = *v39;
          (*v39)(v36, v35);
          v37(v34, v35);
          if (v33)
          {
            break;
          }

          v28 = v49;
          if (v31 < v27 || v49 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v45;
            a1 = v40;
          }

          else
          {
            v29 = v45;
            a1 = v40;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = v32;
          v27 = v32;
          v30 = v32 > v41;
          v26 = v43;
          a2 = v44;
          if (!v30)
          {
            v25 = v46;
            goto LABEL_58;
          }
        }

        v28 = v49;
        if (v31 < v44 || v49 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v40;
        }

        else
        {
          a2 = v45;
          a1 = v40;
          if (v31 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v46;
        v26 = v43;
      }

      while (v27 > v41);
    }

LABEL_58:
    v53 = a2;
LABEL_59:
    v51 = v25;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v15;
    v51 = a4 + v15;
    if (v15 >= 1 && a2 < v49)
    {
      v44 = *(v8 + 16);
      v45 = v8 + 16;
      v42 = v12;
      v43 = (v8 + 8);
      do
      {
        v18 = v47;
        v19 = v50;
        v20 = v44;
        (v44)(v47, a2, v50);
        v21 = v48;
        v20(v48, a4, v19);
        sub_100434764(&qword_100647C90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LOBYTE(v20) = sub_1004DD32C();
        v22 = *v43;
        (*v43)(v21, v19);
        v22(v18, v19);
        if (v20)
        {
          v23 = v42;
          if (a1 < a2 || a1 >= &v42[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v23;
        }

        else
        {
          v23 = v42;
          v24 = &v42[a4];
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = v24;
          a4 += v23;
        }

        a1 += v23;
        v53 = a1;
      }

      while (a4 < v46 && a2 < v49);
    }
  }

  sub_10043208C(&v53, &v52, &v51);
}

uint64_t sub_10043208C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1004D85FC();
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

uint64_t (*sub_100432170(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1004332D8(v5);
  v5[9] = sub_100432DA8(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_100432214;
}

uint64_t (*sub_100432218(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = sub_10043330C(v9);
  v9[9] = sub_100433008(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return sub_10043484C;
}

void sub_1004322D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_100432334(uint64_t a1)
{
  v3 = sub_1004D85FC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v8 + 16);
  if (*v1)
  {

    sub_100432B58(a1, v10, v11, (v9 + 16), v9 + 32);
    v13 = v12;
    v15 = v14;

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11)
    {
      v22[1] = v1;
      v17 = 0;
      v20 = *(v4 + 16);
      v19 = v4 + 16;
      v18 = v20;
      v23 = *(v19 + 56);
      v24 = v11;
      while (1)
      {
        v18(v7, v10, v3, v5);
        sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v21 = sub_1004DD35C();
        (*(v19 - 8))(v7, v3);
        if (v21)
        {
          return 0;
        }

        ++v17;
        v10 += v23;
        if (v24 == v17)
        {
          v15 = 0;
          goto LABEL_10;
        }
      }
    }

    v15 = 0;
  }

LABEL_10:
  sub_10043253C(a1, v15);
  return 1;
}

void sub_10043253C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004D85FC();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = v2 + 1;
  v10 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10044CCE0(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_10044CCE0((v12 > 1), v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  v2[1] = v10;
  if (*v2)
  {
    swift_beginAccess();
    if (sub_1004D945C() > v13)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v2;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = sub_1004D947C();

        *v2 = v17;
        v16 = v17;
      }

      if (v16)
      {
        sub_1004D941C();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return;
  }

  sub_100432784(v14);
}

void sub_100432784(__n128 a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  if (v3 || *(v4 + 16) >= 0x10uLL)
  {
    v6 = sub_1004D948C();
    if (v3 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v5 = sub_100432824(v4, v8, 0, v3, v7);
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
}

uint64_t sub_100432824(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_1004D948C();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = sub_1004D949C();
    sub_1004328A4(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

void sub_100432940(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = sub_1004D85FC();
  v8 = __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v7 + 16);
      v12 = v7 + 16;
      v28 = *(v12 + 56);
      v29 = v13;
      v30 = v12;
      v27 = (v12 - 8);
      v13(v10, v32, v6, v8);
      while (1)
      {
        sub_100434764(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v15 = sub_1004DD2AC();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & v15;
        v20 = v31;
        v21 = sub_1004D93FC();
        v23 = v22;
        v25 = v24;
        (*v27)(v10, v6);
        v33 = a3;
        v34 = v20;
        v35 = v19;
        v36 = v21;
        v37 = v23;
        v38 = v25;
        v39 = 0;
        while (v36)
        {
          sub_1004D944C();
        }

        sub_1004D943C();
        if (++v11 == v40)
        {
          return;
        }

        v29(v10, v32 + v28 * v11, v6, v14);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_100432B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29 = a2;
  v8 = sub_1004D85FC();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100434764(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v28[1] = a1;
  result = sub_1004DD2AC();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_1004D93FC();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = sub_1004D942C();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v26 = sub_1004DD35C();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        sub_1004D944C();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = sub_1004D942C();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

void (*sub_100432DA8(uint64_t *a1, uint64_t a2, char a3))(void **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = v3;
  v10 = *v3;
  v11 = sub_100028EF8(a2);
  *(v9 + 9) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = v12 ^ 1;
  v15 = __OFADD__(v13, (v12 ^ 1) & 1);
  v16 = v13 + ((v12 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_100444FE0();
      v11 = v19;
      goto LABEL_11;
    }

    sub_100444294(v16, a3 & 1);
    v11 = sub_100028EF8(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1004DF16C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  *(v9 + 8) = v14 & 1;
  return sub_100432EF8;
}

void sub_100432EF8(void **a1, char a2)
{
  v2 = *a1;
  v3 = *v2;
  LOBYTE(v4) = *(v2 + 8);
  LOBYTE(v5) = *(v2 + 9);
  if (a2)
  {
    if (v2[1])
    {
      goto LABEL_8;
    }

    v6 = v2[4];
    v4 = *v2[3];
    if (*(v2 + 9))
    {
      goto LABEL_11;
    }

    v7 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v7;
    v5 = v4[7];
    *(v5 + 8 * v6) = v3;
    v8 = v4[2];
    v9 = __OFADD__(v8, 1);
    v3 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v4[2] = v3;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v10 = v2;
      sub_1004302CC(v2[4], *v2[3]);
      v2 = v10;
    }

    goto LABEL_14;
  }

  v6 = v2[4];
  v4 = *v2[3];
  if ((v5 & 1) == 0)
  {
    v11 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v11;
    *(v4[7] + 8 * v6) = v3;
    v12 = v4[2];
    v9 = __OFADD__(v12, 1);
    v3 = v12 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 8 * v6) = v3;
LABEL_14:

  free(v2);
}

void (*sub_100433008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t **a1, char a2)
{
  v6 = v5;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x38uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a4;
  v12[4] = v5;
  v12[1] = a2;
  v12[2] = a3;
  v14 = *v5;
  v15 = sub_10041CBAC(a2, a3, a4);
  *(v13 + 48) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_10044540C();
      v15 = v23;
      goto LABEL_11;
    }

    sub_100444A58(v20, a5 & 1);
    v15 = sub_10041CBAC(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1004DF16C();
    __break(1u);
    return result;
  }

LABEL_11:
  v13[5] = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v13 = v25;
  return sub_100433174;
}

void sub_100433174(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 48);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[5];
    v6 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v7 = v2[3];
    v8 = v6[6] + 24 * v5;
    v9 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v8 = v9;
    *(v8 + 16) = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[3];
      v6[2] = v4;

      v19 = v18;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[5];
      v13 = *v2[4];
      sub_1004347AC(*(v13 + 48) + 24 * v12);
      sub_10043043C(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[5];
  v6 = *v2[4];
  if ((v4 & 1) == 0)
  {
    v14 = v2[3];
    v15 = v6[6] + 24 * v5;
    v16 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v15 = v16;
    *(v15 + 16) = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_1004332D8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100433300;
}

uint64_t (*sub_10043330C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100434814;
}

void sub_100433334(uint64_t a1)
{
  v2 = sub_1004D85FC();
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v24 - v7;
  v27 = *(a1 + 16);
  if (v27)
  {
    v9 = 0;
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v29 = *(v10 + 56);
    v13 = (v10 - 8);
    v26 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v25 = a1 + v26;
    (v12)(v8, a1 + v26, v2, v6);
    while (1)
    {
      v17 = *v28;
      v16 = v28[1];
      v18 = v16 + v26;
      v19 = *(v16 + 16);
      if (*v28)
      {

        sub_100432B58(v8, v18, v19, (v17 + 16), v17 + 32);
        v21 = v20;
        v14 = v22;

        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!v19)
        {
LABEL_3:
          v14 = 0;
LABEL_4:
          sub_10043253C(v8, v14);
          goto LABEL_5;
        }

        while (1)
        {
          v11(v4, v18, v2);
          sub_100434764(&qword_1006479D0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v23 = sub_1004DD35C();
          (*v13)(v4, v2);
          if (v23)
          {
            break;
          }

          v18 += v29;
          if (!--v19)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_5:
      ++v9;
      (*v13)(v8, v2);
      if (v9 == v27)
      {
        return;
      }

      (v11)(v8, v25 + v29 * v9, v2, v15);
    }
  }
}

uint64_t sub_1004335A0()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100433678()
{

  return swift_deallocObject();
}

double sub_1004336C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1004336D8(uint64_t a1)
{
  v2 = sub_1004D85FC();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = *(a1 + 16);
  sub_100434764(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  result = sub_1004DDC5C();
  v16 = result;
  if (v8)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v14 = *(v10 + 56);
    do
    {
      v11(v5, v13, v2);
      sub_10042EBD4(v7, v5);
      (*(v10 - 8))(v7, v2);
      v13 += v14;
      --v8;
    }

    while (v8);
    return v16;
  }

  return result;
}

uint64_t sub_1004338A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004D852C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100433974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1004D852C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_100433A30(uint64_t a1)
{
  sub_100433C2C(319, &qword_100647B30, &qword_100647B38, &unk_100536800, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1004D852C();
    if (v2 <= 0x3F)
    {
      sub_100433C2C(319, &qword_100647B40, &qword_100647AB8, &unk_1005367C0, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        sub_100433B98(319);
        if (v4 <= 0x3F)
        {
          sub_100433C2C(319, &unk_100647B50, &qword_100647838, &qword_100535FC0, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100433B98(uint64_t a1)
{
  if (!qword_100647B48)
  {
    sub_1004D85FC();
    sub_100434764(&qword_1006479C8, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v1 = sub_1004D93EC();
    if (!v2)
    {
      atomic_store(v1, &qword_100647B48);
    }
  }
}

void sub_100433C2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100008DE4(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100433C90(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100433D10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_100433E94(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_1004340F4(uint64_t a1)
{
  v2 = sub_1004D85FC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 91;
  v22 = 0xE100000000000000;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(v3 + 72);
    v9 = *(v3 + 16);
    v19 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9(v6, a1 + v19, v2, v4);
    sub_100004CB8(&qword_100647C58, &qword_100536860);
    v10 = swift_allocObject();
    v20 = xmmword_100511DA0;
    *(v10 + 16) = xmmword_100511DA0;
    *(v10 + 56) = v2;
    v11 = sub_1000357EC((v10 + 32));
    (v9)(v11, v6, v2);
    sub_1004DEA0C();

    v12 = *(v3 + 8);
    v12(v6, v2);
    v13 = v7 - 1;
    if (v13)
    {
      v14 = a1 + v8 + v19;
      do
      {
        (v9)(v6, v14, v2);
        v23._countAndFlagsBits = 8236;
        v23._object = 0xE200000000000000;
        sub_1004DD5FC(v23);
        sub_100004CB8(&qword_100647C58, &qword_100536860);
        v15 = swift_allocObject();
        *(v15 + 16) = v20;
        *(v15 + 56) = v2;
        v16 = sub_1000357EC((v15 + 32));
        (v9)(v16, v6, v2);
        sub_1004DEA0C();

        v12(v6, v2);
        v14 += v8;
        --v13;
      }

      while (v13);
    }
  }

  v24._countAndFlagsBits = 93;
  v24._object = 0xE100000000000000;
  sub_1004DD5FC(v24);
  return v21;
}

uint64_t sub_10043438C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100647838, &qword_100535FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004343FC()
{

  if (*(v0 + 88))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100434494()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004344EC()
{

  return swift_deallocObject();
}

uint64_t sub_10043458C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 32);
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(v6, &a1[*(TupleTypeMetadata2 + 48)]);
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_100434658(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100647C68, &qword_100536870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004346C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100647838, &qword_100535FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100434730@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100434764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100434850(uint64_t a1, uint64_t a2)
{
  sub_100439440();

  return sub_1004D869C();
}

uint64_t static ApproximatelyComparable<>.<~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1004D867C())
  {
    return 0;
  }

  else
  {
    return sub_1004DD32C() & 1;
  }
}

uint64_t static ApproximatelyComparable<>.>~ infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (sub_1004D867C())
  {
    return 0;
  }

  else
  {
    return sub_1004DD31C() & 1;
  }
}

uint64_t Result.init(success:failure:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v33 = a2;
  v35 = a6;
  v34 = sub_1004DE7CC();
  v9 = *(v34 - 8);
  __chkstk_darwin();
  v11 = &v30 - v10;
  v32 = *(a4 - 8);
  __chkstk_darwin();
  v31 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004DF2CC();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin();
  v20 = &v30 - v19;
  if ((*(v13 + 48))(a1, 1, a3, v18) != 1)
  {
    (*(v9 + 8))(v33, v34);
    v26 = *(v13 + 32);
    v26(v15, a1, a3);
    v26(v20, v15, a3);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v25 = v35;
    (*(v17 + 32))(v35, v20, v16);
    v24 = 0;
    return (*(v17 + 56))(v25, v24, 1, v16);
  }

  v21 = sub_1004DE7CC();
  (*(*(v21 - 8) + 8))(a1, v21);
  v22 = v34;
  (*(v9 + 32))(v11, v33, v34);
  v23 = v32;
  if ((*(v32 + 48))(v11, 1, a4) != 1)
  {
    v27 = *(v23 + 32);
    v28 = v31;
    v27(v31, v11, a4);
    v27(v20, v28, a4);
    goto LABEL_6;
  }

  (*(v9 + 8))(v11, v22);
  v24 = 1;
  v25 = v35;
  return (*(v17 + 56))(v25, v24, 1, v16);
}

uint64_t Collection.limited(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __chkstk_darwin();
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2, v6);
  if (sub_1004DDD0C() > a1 && __OFSUB__(sub_1004DDD0C(), a1))
  {
    __break(1u);
  }

  return sub_1004DD7EC();
}

uint64_t Collection.asyncForEach<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_100434E84, 0, 0);
}

uint64_t sub_100434E84()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v1[1] = *(v0 + 32);
  v1[2] = v2;
  v1[3] = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_100434F70;
  v5 = *(v0 + 40);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v4, v5, &type metadata for () + 1, 0, 0, &unk_1005368B0, v1, v5);
}

uint64_t sub_100434F70()
{

  return _swift_task_switch(sub_1000FD318, 0, 0);
}

uint64_t sub_100435088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  v8[9] = *(a8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[11] = v11;
  v8[12] = *(v11 + 64);
  v8[13] = swift_task_alloc();
  sub_100004CB8(&unk_100647600, &qword_100535ED8);
  v8[14] = swift_task_alloc();
  sub_1004DE7CC();
  v8[15] = swift_task_alloc();
  v8[16] = *(a6 - 8);
  v8[17] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v8[18] = v12;
  v8[19] = *(v12 - 8);
  v8[20] = swift_task_alloc();

  return _swift_task_switch(sub_1004352BC, 0, 0);
}

uint64_t sub_1004352BC()
{
  v1 = *(v0 + 88);
  (*(*(v0 + 128) + 16))(*(v0 + 136), *(v0 + 24), *(v0 + 48));
  sub_1004DD6FC();
  while (1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 80);
    swift_getAssociatedConformanceWitness();
    sub_1004DE80C();
    if ((*(v1 + 48))(v2, 1, v3) == 1)
    {
      break;
    }

    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v8 = *(v0 + 40);
    v16 = *(v0 + 32);
    v17 = *(v0 + 48);
    v9 = sub_1004DDA8C();
    v18 = *(v0 + 56);
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = *(v1 + 32);
    v10(v6, v5, v7);
    v11 = (*(v1 + 80) + 72) & ~*(v1 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = v17;
    *(v12 + 40) = v18;
    *(v12 + 56) = v16;
    *(v12 + 64) = v8;
    v10(v12 + v11, v6, v7);
    v13 = sub_1004DDA0C();

    sub_10043574C(v4, &unk_100536A60, v12, v13);
    sub_10040F690(v4);
  }

  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100435564(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100035B28;

  return sub_100435088(a1, a2, v9, v11, v10, v6, v7, v8);
}

uint64_t sub_100435640(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100035B28;

  return v11(a1, a6);
}

double sub_10043574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_100004CB8(&unk_100647600, &qword_100535ED8);
  __chkstk_darwin();
  v11 = v21 - v10;
  sub_10040EE00(a1, v21 - v10);
  v12 = sub_1004DDA8C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10040F690(v11);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1004DD9BC();
      v16 = v15;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1004DDA7C();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
  v16 = 0;
LABEL_6:
  v17 = *v5;
  v18 = swift_allocObject();
  v18[2] = *(a4 + 16);
  v18[3] = a2;
  v18[4] = a3;
  v19 = (v16 | v14);
  if (v16 | v14)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v14;
    v22[3] = v16;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v17;
  swift_task_create();

  return result;
}

uint64_t Collection.asyncMap<A>(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_1004DE7CC();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100435A18, 0, 0);
}

void sub_100435A18()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 48);
  v12 = *(v0 + 32);
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  v8 = sub_1004DDD0C();
  v9 = sub_10040C1FC(v1, v8, v4);
  (*(v2 + 8))(v1, v4);
  *(v0 + 16) = v9;
  swift_getTupleTypeMetadata2();
  v10 = swift_task_alloc();
  *(v0 + 104) = v10;
  *(v10 + 16) = v7;
  *(v10 + 24) = v6;
  *(v10 + 32) = v5;
  *(v10 + 40) = v3;
  *(v10 + 48) = v12;
  *(v10 + 64) = v0 + 16;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *v11 = v0;
  v11[1] = sub_100435BE8;

  JUMPOUT(0x100436EB0);
}

uint64_t sub_100435BE8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_100435E34;
  }

  else
  {

    v2 = sub_100435D04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100435D04()
{
  v1 = *(v0 + 48);
  *(v0 + 24) = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = *(v0 + 56);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  sub_1004DD98C();

  swift_getWitnessTable();
  v4 = sub_1004DD71C();
  swift_bridgeObjectRelease_n();

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_100435E34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100435EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v17;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v9 = sub_1004DE7CC();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[15] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[16] = v11;
  v8[17] = *(v11 + 64);
  v8[18] = swift_task_alloc();
  sub_100004CB8(&unk_100647600, &qword_100535ED8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_getTupleTypeMetadata2();
  sub_1004DE7CC();
  v8[21] = swift_task_alloc();
  v8[22] = sub_100008DE4(qword_100646F60, &unk_100535830);
  v12 = sub_1004DDB4C();
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();
  v8[26] = swift_getTupleTypeMetadata2();
  v13 = sub_1004DE7CC();
  v8[27] = v13;
  v8[28] = *(v13 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = sub_1004DED4C();
  v8[32] = swift_task_alloc();
  v14 = sub_1004DED3C();
  v8[33] = v14;
  v8[34] = *(v14 - 8);
  v8[35] = swift_task_alloc();

  return _swift_task_switch(sub_10043625C, 0, 0);
}

uint64_t sub_10043625C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);
  sub_1004DD72C();
  sub_1004DED1C();
  v26 = v3;
  v27 = v2;
  v28 = v2 - 8;
  while (1)
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    sub_1004DED2C();
    (*(v1 + 32))(v4, v5, v6);
    if ((*(*v28 + 48))(v4, 1, v7) == 1)
    {
      break;
    }

    v8 = *(v0 + 240);
    v9 = *(v0 + 152);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v32 = *(v0 + 80);
    v12 = *(v0 + 48);
    v31 = *(v0 + 40);
    v30 = *v8;
    v13 = *(v27 + 48);
    v14 = sub_1004DDA8C();
    v29 = *(v0 + 64);
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    v15 = *(v26 + 32);
    v15(v10, &v8[v13], v11);
    v16 = (*(v26 + 80) + 80) & ~*(v26 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v29;
    *(v17 + 48) = v32;
    *(v17 + 56) = v30;
    *(v17 + 64) = v31;
    *(v17 + 72) = v12;
    v15((v17 + v16), v10, v11);
    v18 = sub_1004DDB5C();

    sub_100436CDC(v9, &unk_100536A50, v17, v18);
    sub_10040F690(v9);
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  sub_1004DDB2C();
  v19 = sub_1004DD98C();
  *(v0 + 288) = v19;
  sub_1004DD8CC();
  v20.location = v19;
  CFRange.init(_:)(v20);
  sub_1004DD8CC();
  v21.location = v19;
  CFRange.init(_:)(v21);
  v22 = swift_task_alloc();
  *(v0 + 296) = v22;
  *v22 = v0;
  v22[1] = sub_1004365C8;
  v23 = *(v0 + 184);
  v24 = *(v0 + 168);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v24, 0, 0, v23, v0 + 16);
}

uint64_t sub_1004365C8()
{

  if (v0)
  {
    v1 = sub_100436990;
  }

  else
  {
    v1 = sub_1004366D8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004366D8()
{
  v2 = v0[20];
  v1 = v0[21];
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[36];
    v7 = v0[12];
    v6 = v0[13];
    v8 = v0[11];
    v9 = v0[9];
    v10 = v0[7];
    v11 = *v1;
    v12 = *(v2 + 48);
    v13 = *(v9 - 8);
    (*(v13 + 32))(v6, v1 + v12, v9);
    (*(v13 + 56))(v6, 0, 1, v9);
    sub_1004DD8CC();
    sub_10040C1A8(v11, *v10, v8);
    (*(v7 + 40))(*v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6, v8);
    v14.location = v5;
    CFRange.init(_:)(v14);
    v15 = swift_task_alloc();
    v0[37] = v15;
    *v15 = v0;
    v15[1] = sub_1004365C8;
    v16 = v0[23];
    v17 = v0[21];

    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v17, 0, 0, v16, v0 + 2);
  }
}

uint64_t sub_100436990()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100436A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v9;
  v7[4] = a5;
  v7[5] = a6;
  v7[2] = a1;
  v7[3] = a4;
  return _swift_task_switch(sub_100436AC0, 0, 0);
}

uint64_t sub_100436AC0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(swift_getTupleTypeMetadata2() + 48);
  *v3 = v1;
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_100436BE8;
  v6 = v0[6];

  return v8(&v3[v4], v6);
}

uint64_t sub_100436BE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_100436CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_100004CB8(&unk_100647600, &qword_100535ED8);
  __chkstk_darwin();
  v9 = v18 - v8;
  sub_10040EE00(a1, v18 - v8);
  v10 = sub_1004DDA8C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10040F690(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1004DD9BC();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1004DDA7C();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v5;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

uint64_t sub_100436EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_100035B28;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

BOOL Collection<>.contains(approximatelyMatching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1004DE7CC();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v15[-v11];
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a1;
  sub_1004DD76C();
  v13 = (*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) != 1;
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t static DisplayUnit.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v36 = a2;
  v37 = *(a3 - 8);
  __chkstk_darwin();
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v30 - v5;
  v34 = v6;
  v8 = type metadata accessor for DisplayUnit(0, v7, v6, v6);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v30 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = __chkstk_darwin();
  v18 = &v30 - v17;
  v20 = *(v19 + 48);
  v33 = v9;
  v21 = *(v9 + 16);
  v21(&v30 - v17, v35, v8, v16);
  (v21)(&v18[v20], v36, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v21)(v13, v18, v8);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v27 = v37;
      v28 = v31;
      (*(v37 + 32))(v31, &v18[v20], a3);
      v24 = sub_1004DD35C();
      v25 = *(v27 + 8);
      v25(v28, a3);
      v26 = v13;
      goto LABEL_6;
    }

LABEL_8:
    (*(v37 + 8))(v13, a3);
    v24 = 0;
    v8 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  (v21)(v11, v18, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v13 = v11;
    goto LABEL_8;
  }

  v22 = v37;
  v23 = v32;
  (*(v37 + 32))(v32, &v18[v20], a3);
  v24 = sub_1004DD35C();
  v25 = *(v22 + 8);
  v25(v23, a3);
  v26 = v11;
LABEL_6:
  v25(v26, a3);
  v15 = v33;
LABEL_9:
  (*(v15 + 8))(v18, v8);
  return v24 & 1;
}

uint64_t ClosedRange<>.linearMap(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v10 - v6;
  sub_1004DED0C();
  sub_1004DDCDC();
  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_1004DECFC();
  return (v8)(v7, v2);
}

uint64_t ClosedRange<>.normalize(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_1004DED0C();
  sub_1004DED0C();
  sub_1004DD29C();
  v9 = *(v4 + 8);
  v9(v6, v3);
  return (v9)(v8, v3);
}

uint64_t ClosedRange<>.clampedNormalize(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ClosedRange.clamp(_:)(v9, v10);
  ClosedRange<>.normalize(_:)(v8, a2, a3);
  return (*(v6 + 8))(v8, v5);
}

uint64_t Array.extract(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  swift_getWitnessTable();
  result = sub_1004DEB8C();
  if (!v3)
  {
    v5 = result;
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1004DDE4C();
    return v5;
  }

  return result;
}

void Array.extractFirst(where:)(uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  swift_getWitnessTable();
  sub_1004DDD5C();

  if (!v4)
  {
    if (v7)
    {
      (*(*(*(a3 + 16) - 8) + 56))(a4, 1, 1);
    }

    else
    {
      sub_1004DD95C();
      (*(*(*(a3 + 16) - 8) + 56))(a4, 0, 1);
    }
  }
}

uint64_t Array.removingDuplicates<A>(with:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1004DD1DC();
  sub_1004DD98C();

  swift_getWitnessTable();
  v3 = sub_1004DEB8C();

  return v3;
}

uint64_t sub_100437CA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(*a3 + class metadata base offset for KeyPath + 8);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v7 = &v10 - v6;
  swift_getAtKeyPath();
  sub_1004DDC9C();
  v8 = sub_1004DDC6C();
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t Collection.removingDuplicates<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a2 - 8);
  __chkstk_darwin();
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1004DD1DC();
  (*(v9 + 16))(v11, v4, a2);
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = &v20;
  v19 = a1;
  v12 = sub_1004DD77C();

  return v12;
}

uint64_t sub_100437F64(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(*a3 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  __chkstk_darwin();
  v9 = &v12 - v8;
  swift_getAtKeyPath();
  sub_1004DDC9C();
  v10 = sub_1004DDC6C();
  (*(v7 + 8))(v9, v6);
  return v10 & 1;
}

uint64_t sub_100438118(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, char *), uint64_t a4, void *a5)
{
  v6 = *(*a5 + class metadata base offset for KeyPath + 8);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v15 - v10;
  swift_getAtKeyPath();
  swift_getAtKeyPath();
  v12 = a3(v11, v9);
  v13 = *(v7 + 8);
  v13(v9, v6);
  v13(v11, v6);
  return v12 & 1;
}

uint64_t Sequence<>.excluding(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = a1;

  v9 = Sequence.exclude(_:)(sub_100439534, v8, a2, a3);

  return v9;
}

{
  swift_getAssociatedTypeWitness();
  sub_1004DD98C();

  swift_getWitnessTable();
  v7 = sub_1004DDCAC();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v8[5] = v7;
  v9 = Sequence.exclude(_:)(sub_1004394CC, v8, a2, a3);

  return v9;
}

uint64_t sub_10043833C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  sub_1004DD98C();
  swift_getWitnessTable();
  return sub_1004DD7FC() & 1;
}

uint64_t Sequence.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __chkstk_darwin();
  (*(v11 + 16))(&v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v4, v9);
  v14 = a3;
  v15 = a4;
  v16 = a1;
  v17 = a2;
  return sub_1004DD77C();
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(sub_100438FC4, v5, a2, a3);
}

{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a1;
  return Sequence.exclude(_:)(sub_100439044, v5, a2, a3);
}

uint64_t Sequence<>.exclude(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a1;
  return Sequence.exclude(_:)(sub_100439030, v4, a2, a3);
}

double Sequence.firstNonNil<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1004DEADC();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11 - v7;
  sub_1004DD75C();
  swift_getWitnessTable();
  v9 = sub_1004DD71C();
  (*(v6 + 8))(v8, v5);
  v11 = v9;
  sub_1004DD98C();
  swift_getWitnessTable();
  sub_1004DDD8C();

  return result;
}

double Sequence.firstNonNilWithOriginal<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a1;
  v9[6] = a2;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return Sequence.firstNonNil<A>(_:)(sub_1004390BC, v9, a3, TupleTypeMetadata2, a5);
}

uint64_t sub_100438944@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, __n128)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[0] = a5;
  v24[1] = a3;
  v10 = sub_1004DE7CC();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v24 - v12;
  v14 = *(a4 - 8);
  v15 = __chkstk_darwin();
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1, v15);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v11 + 8))(v13, v10);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(a6, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v20 = *(v14 + 32);
    v20(v17, v13, a4);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v22 = swift_getTupleTypeMetadata2();
    v23 = *(v22 + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(a6, a1, AssociatedTypeWitness);
    v20((a6 + v23), v17, a4);
    return (*(*(v22 - 8) + 56))(a6, 0, 1, v22);
  }
}

void sub_100438D08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  JUMPOUT(0x100435EA8);
}

uint64_t sub_1004390E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10043914C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_100439258(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

unint64_t sub_100439440()
{
  result = qword_100647E20[0];
  if (!qword_100647E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100647E20);
  }

  return result;
}

uint64_t sub_100439494()
{

  return swift_deallocObject();
}

uint64_t sub_1004394CC(uint64_t a1)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return Set.contains(_:)(a1, v3, AssociatedTypeWitness, v4);
}

uint64_t sub_100439540()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

void sub_100439628()
{
  swift_getAssociatedTypeWitness();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035B28;

  JUMPOUT(0x100436A90);
}

uint64_t sub_100439784()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_10043986C(uint64_t a1)
{
  v3 = v2;
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100035C88;

  return sub_100435640(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_1004399B0()
{

  return swift_deallocObject();
}

uint64_t sub_1004399E8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100035C88;

  return sub_10012B324(a1, v4);
}

void Text.withChevron<A>(_:tintColor:)(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a9@<X8>)
{
  sub_1004DA83C();
  __chkstk_darwin();
  v14 = sub_1004DD3FC();
  v15 = [objc_opt_self() systemImageNamed:v14 withConfiguration:a1];

  if (v15)
  {
    sub_1004DA82C();
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    sub_1004DA81C(v33);
    v34._countAndFlagsBits = 41154;
    v34._object = 0xA200000000000000;
    sub_1004DA80C(v34);
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_1004DA81C(v35);
    v16 = [v15 imageWithRenderingMode:2];
    sub_1004DB8DC();
    sub_1004DA7FC();

    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    sub_1004DA81C(v36);
    sub_1004DA85C();
    v17 = sub_1004DB32C();
    v19 = v18;
    v21 = v20;
    v22 = sub_1004DB24C();
    v24 = v23;
    v26 = v25;
    sub_100051E10(v17, v19, v21 & 1);

    v27 = sub_1004DB27C();
    a4 = v28;
    v30 = v29;
    a6 = v31;

    sub_100051E10(v22, v24, v26 & 1);

    *a9 = v27;
  }

  else
  {
    *a9 = a3;
    v30 = a5;
    sub_100051E00(a3, a4, a5 & 1);
  }

  *(a9 + 8) = a4;
  *(a9 + 16) = v30 & 1;
  *(a9 + 24) = a6;
}

uint64_t Text.playableForegroundStyle<A>(_:isPlayable:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, void *a8)
{
  v8 = a2;
  v10 = __chkstk_darwin();
  (*(v12 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13, v10);
  if (swift_dynamicCast())
  {
    if (v8)
    {
      v14 = v16[7];
    }

    else
    {
      v14 = sub_1004DAC0C();
    }

    v16[3] = v14;
  }

  return sub_1004DB24C();
}

uint64_t View.playableForegroundStyle<A>(_:isPlayable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v6 = a2;
  v8 = *(a4 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PlayableForegroundStyle(0, v11, v12, v11);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v19 - v16;
  (*(v8 + 16))(v10, a1, a4, v15);
  (*(v8 + 32))(v17, v10, a4);
  v17[*(v13 + 36)] = v6;
  sub_1004DB6EC();
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_10043A0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v67 = a1;
  v71 = a3;
  swift_getWitnessTable();
  v6 = sub_1004DABCC();
  v7 = *(a2 + 16);
  v59 = *(a2 + 24);
  v72 = sub_1004DACBC();
  v8 = sub_1004DA32C();
  v65 = *(v8 - 8);
  __chkstk_darwin();
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v57 - v10;
  sub_100008DE4(&qword_100647EA8, &qword_100536B08);
  v11 = v6;
  v64 = *(sub_1004DA32C() - 8);
  __chkstk_darwin();
  v61 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v57 - v13;
  __chkstk_darwin();
  v60 = &v57 - v15;
  v16 = *(v7 - 8);
  __chkstk_darwin();
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v19;
  v20 = sub_1004DAAEC();
  v69 = *(v20 - 8);
  v70 = v20;
  v21 = __chkstk_darwin();
  v23 = &v57 - v22;
  v24 = v4;
  (*(v16 + 16))(v18, v4, v7, v21);
  v25 = swift_dynamicCast();
  v66 = v11;
  if (v25)
  {
    v26 = v68;
    v65 = v23;
    v27 = *(v24 + *(a2 + 36));
    v58 = v8;
    if (v27)
    {
      v28 = v87;
    }

    else
    {
      v28 = sub_1004DABDC();
    }

    v87 = v28;
    WitnessTable = swift_getWitnessTable();
    sub_1004DB4CC();
    v40 = sub_10043AF9C();
    v75 = WitnessTable;
    v76 = v40;
    v67 = swift_getWitnessTable();
    v41 = v64;
    v42 = *(v64 + 16);
    v43 = v60;
    v42(v60, v14, v26);
    v44 = *(v41 + 8);
    v44(v14, v26);
    v45 = v61;
    v42(v61, v43, v26);
    v46 = swift_getWitnessTable();
    v73 = WitnessTable;
    v74 = v46;
    v47 = v58;
    v48 = swift_getWitnessTable();
    v23 = v65;
    sub_10043A81C(v45, v26, v47, v67, v48);
    v44(v45, v26);
    v44(v43, v26);
  }

  else
  {
    v29 = swift_getWitnessTable();
    v30 = v62;
    sub_1004DB4CC();
    v31 = swift_getWitnessTable();
    v85 = v29;
    v86 = v31;
    v67 = swift_getWitnessTable();
    v32 = v65;
    v33 = *(v65 + 2);
    v34 = v63;
    v33(v63, v30, v8);
    v35 = *(v32 + 1);
    v35(v30, v8);
    v33(v30, v34, v8);
    v36 = sub_10043AF9C();
    v83 = v29;
    v84 = v36;
    v37 = v68;
    v38 = swift_getWitnessTable();
    sub_10043A914(v30, v37, v8, v38, v67);
    v35(v30, v8);
    v35(v34, v8);
  }

  v49 = swift_getWitnessTable();
  v50 = sub_10043AF9C();
  v81 = v49;
  v82 = v50;
  v51 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v79 = v49;
  v80 = v52;
  v53 = swift_getWitnessTable();
  v77 = v51;
  v78 = v53;
  v54 = v70;
  swift_getWitnessTable();
  v55 = v69;
  (*(v69 + 16))(v71, v23, v54);
  return (*(v55 + 8))(v23, v54);
}

uint64_t sub_10043A81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004DAACC();
  v7 = __chkstk_darwin();
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2, v7);
  swift_storeEnumTagMultiPayload();
  return sub_1004DAADC();
}

uint64_t sub_10043A914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1004DAACC();
  v7 = __chkstk_darwin();
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3, v7);
  swift_storeEnumTagMultiPayload();
  return sub_1004DAADC();
}

uint64_t _UIHostingView.init(content:)(uint64_t a1, uint64_t a2)
{
  v2 = __chkstk_darwin();
  v3(v2);
  return sub_1004DA21C();
}

uint64_t sub_10043AAAC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlayableForegroundStyle(255, a1[1], a1[3], a4);
  sub_1004DA32C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_10043AB40(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10043ABB8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_10043AD2C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

unint64_t sub_10043AF9C()
{
  result = qword_100647EB0;
  if (!qword_100647EB0)
  {
    sub_100008DE4(&qword_100647EA8, &qword_100536B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100647EB0);
  }

  return result;
}

uint64_t sub_10043B000(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlayableForegroundStyle(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1004DABCC();
  sub_100008DE4(&qword_100647EA8, &qword_100536B08);
  sub_1004DA32C();
  sub_1004DACBC();
  sub_1004DA32C();
  sub_1004DAAEC();
  swift_getWitnessTable();
  sub_10043AF9C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id TextKitManager.container.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void TextKitManager.container.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

double TextKitManager.fragments.getter()
{
  swift_beginAccess();

  return result;
}

double TextKitManager.fragments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;

  return result;
}

uint64_t TextKitManager.__allocating_init(text:size:)(void *a1, double a2)
{
  v4 = swift_allocObject();
  TextKitManager.init(text:size:)(a1, a2);
  return v4;
}

void TextKitManager.init(text:size:)(void *a1, double a2)
{
  v2[5] = _swiftEmptyArrayStorage;
  v5 = [objc_allocWithZone(NSTextLayoutManager) init];
  [v5 setUsesFontLeading:0];
  isa = sub_1004DD9AC().super.super.isa;
  v7 = sub_1004DD3FC();
  [v5 setValue:isa forKey:v7];

  v2[2] = v5;
  v8 = objc_allocWithZone(NSTextContentStorage);
  v9 = v5;
  v10 = [v8 init];
  [v10 setAttributedString:a1];
  [v10 addTextLayoutManager:v9];
  v2[3] = v10;
  v11 = objc_allocWithZone(NSTextContainer);
  v12 = v10;
  v13 = [v11 initWithSize:{a2, 0.0}];
  [v13 setLineFragmentPadding:0.0];
  v14 = v13;
  [v9 setTextContainer:v14];
  v2[4] = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10043C9FC;
  *(v15 + 24) = v2;
  v18[4] = sub_10043C5D0;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10043B5F0;
  v18[3] = &unk_1005FCC30;
  v16 = _Block_copy(v18);

  v17 = [v9 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v16];

  swift_unknownObjectRelease();
  _Block_release(v16);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

uint64_t sub_10043B5F0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_10043B634(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  sub_1004DD84C();
  if (*((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  swift_endAccess();
  return 1;
}

Swift::Void __swiftcall TextKitManager.update(with:)(NSAttributedString with)
{
  [*(v1 + 24) setAttributedString:with.super.isa];
  v2 = *(v1 + 16);
  v3 = [v2 documentRange];
  [v2 invalidateLayoutForRange:v3];

  swift_beginAccess();
  *(v1 + 40) = _swiftEmptyArrayStorage;

  v4 = swift_allocObject();
  *(v4 + 16) = sub_10043C614;
  *(v4 + 24) = v1;
  aBlock[4] = sub_10043CA00;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10043B5F0;
  aBlock[3] = &unk_1005FCC80;
  v5 = _Block_copy(aBlock);

  v6 = [v2 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v5];
  swift_unknownObjectRelease();
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void TextKitManager.update(with:)(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  [v3 size];
  [v3 setSize:a1];

  v4 = *(v1 + 16);
  v5 = [v4 documentRange];
  [v4 invalidateLayoutForRange:v5];

  swift_beginAccess();
  *(v1 + 40) = _swiftEmptyArrayStorage;

  v6 = swift_allocObject();
  *(v6 + 16) = sub_10043C9FC;
  *(v6 + 24) = v1;
  v9[4] = sub_10043CA00;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10043B5F0;
  v9[3] = &unk_1005FCCD0;
  v7 = _Block_copy(v9);

  v8 = [v4 enumerateTextLayoutFragmentsFromLocation:0 options:4 usingBlock:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

void *TextKitManager.linesWithFrames()()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v45 = v1 & 0xC000000000000001;
  v42 = v1 + 32;
  v43 = v1 & 0xFFFFFFFFFFFFFF8;

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v44 = v2;
  do
  {
    if (v45)
    {
      v1 = sub_1004DEB2C();
    }

    else
    {
      if (v3 >= *(v43 + 16))
      {
        goto LABEL_35;
      }

      v1 = *(v42 + 8 * v3);
    }

    v5 = v1;
    v6 = __OFADD__(v3, 1);
    v7 = v3 + 1;
    if (v6)
    {
      goto LABEL_33;
    }

    v46 = v7;
    v8 = [v1 textLineFragments];
    sub_100006F10(0, &qword_100647EB8, NSTextLineFragment_ptr);
    v9 = sub_1004DD87C();

    if (v9 >> 62)
    {
      v1 = sub_1004DED5C();
      v10 = v1;
      if (v1)
      {
LABEL_12:
        if (v10 < 1)
        {
          goto LABEL_34;
        }

        for (i = 0; v10 != i; ++i)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_1004DEB2C();
          }

          else
          {
            v12 = *(v9 + 8 * i + 32);
          }

          v13 = v12;
          [v12 typographicBounds];
          v15 = v14;
          v17 = v16;
          v19 = v18;
          v21 = v20;
          [v13 boundsWithType:2 options:0];
          v23 = v22;
          v47.origin.x = v15;
          v47.origin.y = v17;
          v47.size.width = v19;
          v47.size.height = v21;
          Height = CGRectGetHeight(v47);
          [v5 layoutFragmentFrame];
          v26 = v25;
          [v5 layoutFragmentFrame];
          v28 = v27;
          v29 = [v13 characterRange];
          v31 = v30;
          v32 = [v5 rangeInElement];
          objc_opt_self();
          v33 = swift_dynamicCastObjCClass();
          if (v33)
          {
            v34 = [v33 range];

            v6 = __OFADD__(v29, v34);
            v29 = &v34[v29];
            if (v6)
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              v40 = v1;
              v2 = sub_1004DED5C();
              v1 = v40;
              if (!v2)
              {
                return _swiftEmptyArrayStorage;
              }

              goto LABEL_3;
            }
          }

          else
          {
          }

          v35 = v15 + v26;
          v36 = v17 + v28 - (v23 - Height);
          v48.origin.x = v35;
          v48.origin.y = v36;
          v48.size.width = v19;
          v48.size.height = v23;
          if (CGRectGetWidth(v48) <= 0.0)
          {
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v4 = sub_10041433C(0, v4[2] + 1, 1, v4);
            }

            v38 = v4[2];
            v37 = v4[3];
            if (v38 >= v37 >> 1)
            {
              v4 = sub_10041433C((v37 > 1), v38 + 1, 1, v4);
            }

            v4[2] = v38 + 1;
            v39 = &v4[7 * v38];
            *(v39 + 4) = v13;
            v39[5] = v35;
            v39[6] = v36;
            v39[7] = v19;
            v39[8] = v23;
            *(v39 + 9) = v29;
            *(v39 + 10) = v31;
          }
        }
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    v3 = v46;
  }

  while (v46 != v44);

  return v4;
}

uint64_t TextKitManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_10043BEE4(void *a1)
{
  *&v1[OBJC_IVAR____TtCCE14MusicUtilitiesCSo20NSTextLayoutFragment4View13FragmentLayer_fragment] = a1;
  v16.receiver = v1;
  v16.super_class = _s4ViewC13FragmentLayerCMa();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v16, "init");
  [v3 renderingSurfaceBounds];
  [v4 setBounds:?];
  [v4 bounds];
  v6 = -v5;
  [v4 bounds];
  v8 = v6 / v7;
  [v4 bounds];
  v10 = -v9;
  [v4 bounds];
  [v4 setAnchorPoint:{v8, v10 / v11}];
  [v3 layoutFragmentFrame];
  [v4 setPosition:?];
  v12 = [objc_opt_self() currentTraitCollection];
  [v12 displayScale];
  v14 = v13;

  [v4 setContentsScale:v14];
  [v4 setNeedsDisplay];

  return v4;
}

uint64_t NSTextLayoutFragment.View.__allocating_init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  sub_10043C634(a1, a2);
  v7 = v6;

  return v7;
}

uint64_t NSTextLayoutFragment.View.init(fragments:colorOverride:)(unint64_t a1, void *a2)
{
  sub_10043C634(a1, a2);
  v4 = v3;

  return v4;
}

id NSTextLineFragment.View.__allocating_init(line:size:)(void *a1, double a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line] = a1;
  v11.receiver = v7;
  v11.super_class = v3;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, a2, a3);
  [v9 setOpaque:{0, v11.receiver, v11.super_class}];

  return v9;
}

id NSTextLineFragment.View.init(line:size:)(void *a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line] = a1;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for NSTextLineFragment.View();
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, a2, a3);
  [v8 setOpaque:{0, v10.receiver, v10.super_class}];

  return v8;
}

void NSTextLineFragment.View.draw(_:)()
{
  v1 = UIGraphicsGetCurrentContext();
  if (v1)
  {
    v2 = v1;
    [*(v0 + OBJC_IVAR____TtCE14MusicUtilitiesCSo18NSTextLineFragment4View_line) drawAtPoint:0.0 inContext:0.0];
  }
}

id sub_10043C578(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10043C5FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_10043C634(unint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtCE14MusicUtilitiesCSo20NSTextLayoutFragment4View_fragments] = a1;
  v25.receiver = v2;
  v25.super_class = type metadata accessor for NSTextLayoutFragment.View();

  v5 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (a2)
  {
    v6 = kCAFilterColorMonochrome;
    v7 = objc_allocWithZone(CAFilter);
    v8 = a2;
    v9 = [v7 initWithType:{v6, v25.receiver, v25.super_class}];
    isa = sub_1004DDCBC().super.super.isa;
    [v9 setValue:isa forKey:kCAFilterInputBias];

    v11 = sub_1004DDCBC().super.super.isa;
    [v9 setValue:v11 forKey:kCAFilterInputAmount];

    v12 = [v8 CGColor];
    [v9 setValue:v12 forKey:kCAFilterInputColor];

    v13 = [v5 layer];
    sub_100004CB8(&qword_100647C58, &qword_100536860);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100511DA0;
    *(v14 + 56) = sub_100006F10(0, &qword_100648058, CAFilter_ptr);
    *(v14 + 32) = v9;
    v15 = v9;
    v16 = sub_1004DD85C().super.isa;

    [v13 setFilters:v16];
  }

  if (!(a1 >> 62))
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_5;
    }

LABEL_12:

    [v5 setOpaque:0];
    return;
  }

  v17 = sub_1004DED5C();
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v17 >= 1)
  {
    v18 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = sub_1004DEB2C();
      }

      else
      {
        v19 = *(a1 + 8 * v18 + 32);
      }

      v20 = v19;
      ++v18;
      v21 = objc_allocWithZone(_s4ViewC13FragmentLayerCMa());
      v22 = v20;
      v23 = sub_10043BEE4(v22);
      v24 = [v5 layer];
      [v24 addSublayer:v23];
    }

    while (v17 != v18);
    goto LABEL_12;
  }

  __break(1u);
}

unint64_t sub_10043CA04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1000117AC(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_10043CA94@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004440FC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s9_ObserverC18HandlerAssociationVMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1004432EC(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_10043CBB4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1004DED5C();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_1004DEB2C();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_100006F10(0, &qword_1006480E8, UIViewController_ptr);
    v8 = sub_1004DE5FC();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_10043CD24(id *a1, void *a2)
{
  result = [*a1 customView];
  if (result)
  {
    v4 = result;
    sub_100006F10(0, &qword_100648108, UIView_ptr);
    v5 = a2;
    v6 = sub_1004DE5FC();

    return (v6 & 1);
  }

  return result;
}

void *sub_10043CDE4(unint64_t a1, unint64_t a2)
{
  v14 = a1;
  v17 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
  {
    v4 = 0;
    v15 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v5 = sub_1004DEB2C();
      }

      else
      {
        if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 customView];
      if (v8 && (v16 = v8, __chkstk_darwin(), v13[2] = &v16, v10 = v9, v11 = sub_10044D22C(sub_100443268, v13, v14), v10, (v11 & 1) != 0))
      {
        sub_1004DEB9C();
        sub_1004DEBDC();
        sub_1004DEBEC();
        sub_1004DEBAC();
      }

      else
      {
      }

      ++v4;
      if (v7 == i)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t Collection<>.all(embedding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __chkstk_darwin();
  (*(v9 + 16))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2, v7);
  v12 = a2;
  v13 = a3;
  v14 = a1;
  return sub_1004DD77C();
}

uint64_t sub_10043D088(id *a1, unint64_t a2)
{
  v3 = [*a1 customView];
  if (v3)
  {
    v9 = v3;
    __chkstk_darwin();
    v8[2] = &v9;
    v5 = v4;
    v6 = sub_10044D22C(sub_10044336C, v8, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void *UINavigationItem.existingBarButtonItems(for:)(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 rightBarButtonItems];
  if (v4)
  {
    v5 = v4;
    sub_100006F10(0, &qword_100648060, UIBarButtonItem_ptr);
    v6 = sub_1004DD87C();

    v7 = sub_10043CDE4(a1, v6);

    sub_10041F930(v7);
  }

  v8 = [v2 leftBarButtonItems];
  if (v8)
  {
    v9 = v8;
    sub_100006F10(0, &qword_100648060, UIBarButtonItem_ptr);
    v10 = sub_1004DD87C();

    v11 = sub_10043CDE4(a1, v10);

    sub_10041F930(v11);
  }

  return _swiftEmptyArrayStorage;
}

id UIWindowScene.mainWindow.getter()
{
  if ([v0 delegate])
  {
    v1 = swift_dynamicCastObjCProtocolConditional();
    if (v1)
    {
      v2 = v1;
      if ([v1 respondsToSelector:"window"])
      {
        v3 = [v2 window];
        swift_unknownObjectRelease();
        return v3;
      }
    }

    swift_unknownObjectRelease();
  }

  v4 = [v0 windows];
  sub_100006F10(0, &qword_100648068, UIWindow_ptr);
  v5 = sub_1004DD87C();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:

    return 0;
  }

  result = sub_1004DED5C();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = sub_1004DEB2C();
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_11:
    v3 = v7;

    return v3;
  }

  __break(1u);
  return result;
}

id UIWindowScene.rootViewController.getter()
{
  v0 = UIWindowScene.mainWindow.getter();
  v1 = [v0 rootViewController];

  return v1;
}

void UICollectionView.register<A>(_:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_1004DD3FC();
  [v3 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v5];
}

void UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1004DD3FC();
  v8 = sub_1004DD3FC();
  [v5 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v7 withReuseIdentifier:v8];
}

uint64_t UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1004DD3FC();
  isa = sub_1004D856C().super.isa;
  v8 = [v5 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    sub_1004DEAAC(38);

    v10._countAndFlagsBits = sub_1004DF34C();
    sub_1004DD5FC(v10);

    v11._countAndFlagsBits = 544497952;
    v11._object = 0xE400000000000000;
    sub_1004DD5FC(v11);
    sub_1004D85FC();
    sub_100442D8C(&qword_100647C80, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v12._countAndFlagsBits = sub_1004DEFFC();
    sub_1004DD5FC(v12);

    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_1004DD3FC();
  v9 = sub_1004DD3FC();
  isa = sub_1004D856C().super.isa;
  v11 = [v7 dequeueReusableSupplementaryViewOfKind:v8 withReuseIdentifier:v9 forIndexPath:isa];

  result = swift_dynamicCastUnknownClass();
  if (!result)
  {

    sub_1004DEAAC(52);
    v13._object = 0x80000001004FA740;
    v13._countAndFlagsBits = 0xD00000000000002CLL;
    sub_1004DD5FC(v13);
    v14._countAndFlagsBits = sub_1004DF34C();
    sub_1004DD5FC(v14);

    v15._countAndFlagsBits = 544497952;
    v15._object = 0xE400000000000000;
    sub_1004DD5FC(v15);
    sub_1004D85FC();
    sub_100442D8C(&qword_100647C80, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v16._countAndFlagsBits = sub_1004DEFFC();
    sub_1004DD5FC(v16);

    result = sub_1004DECCC();
    __break(1u);
  }

  return result;
}

uint64_t UICollectionView.globalIndex(for:)()
{
  v1 = [v0 numberOfSections];
  result = sub_1004D85DC();
  if (__OFADD__(result, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result + 1 >= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = result + 1;
  }

  if (v3 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    if (v3 == v4)
    {
      return 0;
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    v6 = [v0 numberOfItemsInSection:v4];
    result = sub_1004D85DC();
    if (v4 == result)
    {
      goto LABEL_13;
    }

    ++v4;
    v7 = __OFADD__(v5, v6);
    v5 += v6;
  }

  while (!v7);
  __break(1u);
LABEL_13:
  if (sub_1004D85CC() >= v6)
  {
    return 0;
  }

  v8 = sub_1004D85CC();
  v7 = __OFADD__(v5, v8);
  result = v5 + v8;
  if (v7)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t UICollectionView.indexPath(forGlobalIndex:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_100004CB8(&qword_1006480E0, &unk_100536B78);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = sub_1004D85FC();
  v9 = *(*(v8 - 8) + 56);
  v9(a2, 1, 1, v8);
  result = [v3 numberOfSections];
  if (result < 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v11 = result;
    v17 = a2;
    v12 = 0;
    v13 = 0;
    while (v11 != v12)
    {
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_11:
        __break(1u);
        goto LABEL_12;
      }

      v14 = v13;
      result = [v3 numberOfItemsInSection:v12];
      v13 = v14 + result;
      if (__OFADD__(v14, result))
      {
        goto LABEL_11;
      }

      ++v12;
      if (v13 > a1)
      {
        result = a1 - v14;
        if (__OFSUB__(a1, v14))
        {
          goto LABEL_13;
        }

        sub_1004D85BC();
        v15 = v17;
        sub_10001074C(v17, &qword_1006480E0, &unk_100536B78);
        v9(v7, 0, 1, v8);
        return sub_1004423E4(v7, v15);
      }
    }
  }

  return result;
}

unint64_t UICollectionView.totalItemCount.getter()
{
  result = [v0 numberOfSections];
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = 0;
    v3 = result;
    if (!result)
    {
      return v2;
    }

    v4 = 0;
    while (1)
    {
      result = [v0 numberOfItemsInSection:v4];
      v5 = __OFADD__(v2, result);
      v2 += result;
      if (v5)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return v2;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *UICollectionView.isLast(indexPath:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1004D85DC();
  result = [v1 numberOfSections];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v3 != result - 1)
    {
      return 0;
    }

    v5 = sub_1004D85CC();
    result = [v2 numberOfItemsInSection:v3];
    if (!__OFSUB__(result, 1))
    {
      return (v5 == result - 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t UICollectionView.visibleSupplementaryElements(of:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1004DD3FC();
  v6 = [v2 indexPathsForVisibleSupplementaryElementsOfKind:v5];

  sub_1004D85FC();
  v7 = sub_1004DD87C();

  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = a1;
  v8[4] = a2;
  v9 = v2;

  return v7;
}

void sub_10043DDA8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a5@<X8>)
{
  v8 = *(sub_100004CB8(&qword_100648148, &qword_100536DC0) + 48);
  v9 = sub_1004D85FC();
  (*(*(v9 - 8) + 16))(a5, a1, v9);
  v10 = sub_1004DD3FC();
  isa = sub_1004D856C().super.isa;
  v12 = [a2 supplementaryViewForElementKind:v10 atIndexPath:isa];

  *(a5 + v8) = v12;
}

double UICollectionView.clearSelection(using:animated:)(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 indexPathsForSelectedItems];
  if (v11)
  {
    v13 = v11;
    v14 = sub_1004DD87C();

    if (a1)
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v3;
      *(v15 + 32) = a2 & 1;
      v33 = sub_1004424A8;
      v34 = v15;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_10000A2F8;
      v32 = &unk_1005FCD58;
      v16 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v17 = v3;

      v18 = swift_allocObject();
      *(v18 + 16) = v14;
      *(v18 + 24) = v17;
      v33 = sub_100442520;
      v34 = v18;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_10000A2F8;
      v32 = &unk_1005FCDA8;
      v19 = _Block_copy(&aBlock);
      v20 = v17;

      [a1 animateAlongsideTransition:v16 completion:v19];
      _Block_release(v19);
      _Block_release(v16);
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = *(v14 + 16);
      if (v21)
      {
        v23 = *(v7 + 16);
        v22 = v7 + 16;
        v27 = v14;
        v28 = v23;
        v24 = v14 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
        v25 = *(v22 + 56);
        do
        {
          v28(v10, v24, v6);
          isa = sub_1004D856C().super.isa;
          [v3 deselectItemAtIndexPath:isa animated:{a2 & 1, v27}];

          (*(v22 - 8))(v10, v6);
          v24 += v25;
          --v21;
        }

        while (v21);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_10043E1B8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v19 = a4;
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v14 = *(v7 + 16);
    v12 = v7 + 16;
    v13 = v14;
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v10, v15, v6, v8);
      isa = sub_1004D856C().super.isa;
      [a3 deselectItemAtIndexPath:isa animated:v19 & 1];

      (*(v12 - 8))(v10, v6);
      v15 += v16;
      --v11;
    }

    while (v11);
  }
}

id sub_10043E308(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1004D85FC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin().n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isCancelled];
  if (result)
  {
    v12 = *(a2 + 16);
    if (v12)
    {
      v15 = *(v7 + 16);
      v13 = v7 + 16;
      v14 = v15;
      v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v17 = *(v13 + 56);
      do
      {
        v14(v10, v16, v6);
        isa = sub_1004D856C().super.isa;
        [a3 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

        result = (*(v13 - 8))(v10, v6);
        v16 += v17;
        --v12;
      }

      while (v12);
    }
  }

  return result;
}

uint64_t UICollectionView.isDraggingCell(at:)()
{
  v1 = v0;
  v2 = sub_1004D983C();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = sub_1004D986C();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_1004D856C().super.isa;
  v13 = [v1 cellForItemAtIndexPath:isa];

  if (v13)
  {
    v14 = [v13 _bridgedConfigurationState];
    sub_1004D985C();

    sub_1004D984C();
    (*(v9 + 8))(v11, v8);
    (*(v3 + 104))(v5, enum case for UICellConfigurationState.DragState.dragging(_:), v2);
    v15 = sub_1004D982C();

    v16 = *(v3 + 8);
    v16(v5, v2);
    v16(v7, v2);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithRed:a1 / 255.0 green:a2 / 255.0 blue:a3 / 255.0 alpha:a4];
}

id UIColor.interpolate(to:ratio:)(void *a1, double a2)
{
  v4 = fmin(a2, 1.0);
  if (a2 < 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  v13 = 0.0;
  v14 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [v2 getRed:&v14 green:&v12 blue:&v10 alpha:&v8];
  [a1 getRed:&v13 green:&v11 blue:&v9 alpha:&v7];
  return [objc_allocWithZone(UIColor) initWithRed:(1.0 - v5) * v14 + v5 * v13 green:(1.0 - v5) * v12 + v5 * v11 blue:(1.0 - v5) * v10 + v5 * v9 alpha:(1.0 - v5) * v8 + v5 * v7];
}

double UIColor.hsba.getter()
{

  return sub_10043E960(&selRef_getHue_saturation_brightness_alpha_);
}

double UIColor.rgba.getter()
{

  return sub_10043E960(&selRef_getRed_green_blue_alpha_);
}

double sub_10043E960(SEL *a1)
{
  v6 = 0.0;
  v4 = 0;
  v5 = 0;
  v3 = 0;
  [v1 *a1];
  return v6;
}

UIImage_optional __swiftcall UIImage.init(systemName:font:scale:)(Swift::String systemName, UIFont font, UIImageSymbolScale scale)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_1004DD3FC();

  v7 = [objc_opt_self() configurationWithFont:font.super.isa scale:scale];
  v8 = [ObjCClassFromMetadata systemImageNamed:v6 withConfiguration:v7];

  v10 = v8;
  result.value.super.isa = v10;
  result.is_nil = v9;
  return result;
}

id UIImage.init(systemName:pointSize:weight:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_1004DD3FC();

  v8 = [objc_opt_self() configurationWithPointSize:a3 weight:a4];
  v9 = [ObjCClassFromMetadata systemImageNamed:v7 withConfiguration:v8];

  return v9;
}

UIImage_optional __swiftcall UIImage.byCroppingToUniformCenter()()
{
  v1 = v0;
  v2 = v0;
  [(CGImage *)v2 size];
  v4 = v3;
  v6 = v5;
  if (sub_1004D868C())
  {
    if (v6 >= v4)
    {
      v9 = round((v6 - v4) * 0.5);
      v8 = 0.0;
      v10 = v4;
      v11 = v4;
    }

    else
    {
      v8 = round((v4 - v6) * 0.5);
      v9 = 0.0;
      v10 = v6;
      v11 = v6;
    }

    v1 = UIImage.byCropping(to:)(v8, v9, v10, v11);
  }

  v12 = v1;
  result.value.super.isa = v12;
  result.is_nil = v7;
  return result;
}

CGImage *UIImage.byCropping(to:)(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  result = [v4 CGImage];
  if (result)
  {
    v11 = result;
    _s3__C6CGSizeVMa_3(0);
    if ((sub_1004D868C() & 1) == 0)
    {
      goto LABEL_7;
    }

    [v4 scale];
    v13 = v12;
    v14 = sub_1004D868C();
    v15 = v13 * a1;
    v16 = v13 * a2;
    v17 = v13 * a3;
    v18 = v13 * a4;
    if ((v14 & 1) == 0)
    {
      v18 = a4;
      v17 = a3;
      v16 = a2;
      v15 = a1;
    }

    v19 = CGImageCreateWithImageInRect(v11, *&v15);
    if (v19)
    {
      v20 = v19;
      v21 = [objc_allocWithZone(UIImage) initWithCGImage:v19 scale:objc_msgSend(v5 orientation:{"imageOrientation", 0x3FF0000000000000), v13}];

      return v21;
    }

    else
    {
LABEL_7:

      return 0;
    }
  }

  return result;
}

UIViewController_optional __swiftcall UINavigationController.removeViewController(_:animated:)(UIViewController _, Swift::Bool animated)
{
  v3 = v2;
  v6 = [v2 viewControllers];
  sub_100006F10(0, &qword_1006480E8, UIViewController_ptr);
  v7 = sub_1004DD87C();

  v8 = sub_10043CBB4(_.super.super.isa, v7);
  LOBYTE(v6) = v9;

  if (v6)
  {

    v11 = 0;
  }

  else
  {
    v12 = sub_10043CA04(v8);
    isa = sub_1004DD85C().super.isa;

    [v3 setViewControllers:isa animated:animated];

    v11 = v12;
  }

  result.value.super.super.isa = v11;
  result.is_nil = v10;
  return result;
}

double UIScrollView.normalizedContentOffset.getter()
{
  [v0 adjustedContentInset];
  v2 = v1;
  [v0 contentOffset];
  return v2 + v3;
}

uint64_t UIScrollView.isScrolling.getter()
{
  if ([v0 isDragging] & 1) != 0 || (objc_msgSend(v0, "isDecelerating") & 1) != 0 || (objc_msgSend(v0, "_isVerticalBouncing"))
  {
    return 1;
  }

  else
  {
    return [v0 _isHorizontalBouncing];
  }
}

id UIView.forAutolayout.getter()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

void UIView.Shadow.hash(into:)(uint64_t a1)
{
  sub_1004DE60C();
  v2 = v1[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1004DF2AC(*&v2);
  v3 = v1[2];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1004DF2AC(*&v3);
  v4 = v1[3];
  v5 = v1[4];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_1004DF2AC(*&v4);
  if (v5 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  sub_1004DF2AC(*&v6);
}

Swift::Int UIView.Shadow.hashValue.getter()
{
  sub_1004DF26C();
  UIView.Shadow.hash(into:)(v1);
  return sub_1004DF2BC();
}

Swift::Int sub_10043F1A0()
{
  sub_1004DF26C();
  UIView.Shadow.hash(into:)(v1);
  return sub_1004DF2BC();
}

BOOL sub_10043F1DC(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  sub_100006F10(0, &unk_1006480F0, NSObject_ptr);
  v10 = sub_1004DE5FC();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7)
  {
    return v4 == v8 && v5 == v9;
  }

  return result;
}

id UIView.shadowPathIsBounds.getter()
{
  v1 = [v0 layer];
  v2 = [v1 shadowPathIsBounds];

  return v2;
}

void UIView.shadowPathIsBounds.setter(char a1)
{
  v3 = [v1 layer];
  [v3 setShadowPathIsBounds:a1 & 1];
}

void (*UIView.shadowPathIsBounds.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  v3 = [v1 layer];
  v4 = [v3 shadowPathIsBounds];

  *(a1 + 8) = v4;
  return sub_10043F3B8;
}

void sub_10043F3B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = [*a1 layer];
  [v2 setShadowPathIsBounds:v1];
}

void UIView.shadow.getter(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() clearColor];
  v4 = [v1 layer];
  v5 = [v4 shadowColor];

  if (v5)
  {
    v6 = [objc_allocWithZone(UIColor) initWithCGColor:v5];

    v3 = v6;
  }

  v7 = [v1 layer];
  [v7 shadowOpacity];
  v9 = v8;

  v10 = v9;
  v11 = [v1 layer];
  [v11 shadowRadius];
  v13 = v12;

  v14 = [v1 layer];
  [v14 shadowOffset];
  v16 = v15;
  v18 = v17;

  *a1 = v3;
  *(a1 + 8) = v10;
  *(a1 + 16) = v13;
  *(a1 + 24) = v16;
  *(a1 + 32) = v18;
}

uint64_t UIView.shadow.setter(uint64_t a1)
{
  sub_1004427CC(a1);

  return sub_1004428F0(a1);
}

void (*UIView.shadow.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xA8uLL);
  }

  *a1 = v3;
  *(v3 + 160) = v1;
  UIView.shadow.getter(v3 + 80);
  return sub_10043F63C;
}

void sub_10043F63C(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = v2[5];
    v2[1] = v3;
    *(v2 + 4) = *(v2 + 14);
    sub_100442920(v2, v2 + 120);
    sub_1004427CC(v2);
    sub_1004428F0(v2);
  }

  else
  {
    *(v2 + 40) = v2[5];
    *(v2 + 56) = v3;
    *(v2 + 9) = *(v2 + 14);
    sub_1004427CC(v2 + 40);
    sub_1004428F0(v2 + 40);
  }

  free(v2);
}

uint64_t UIView.Border.init(view:)(void *a1)
{
  v2 = sub_100442958(a1);

  return v2;
}

uint64_t UIView.border.getter()
{
  v1 = v0;
  v2 = sub_100442958(v1);

  return v2;
}

void UIView.border.setter(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100442A68(a1, a2, a3);
}

void (*UIView.border.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1;
  v4 = sub_100442958(v3);
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  return sub_10043F858;
}

void sub_10043F858(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v4 = v6;
    sub_100442A68(v2, v3, v6);

    v5 = v4;
  }

  else
  {
    sub_100442A68(v2, v3, v6);
    v5 = v6;
  }
}

double UIView.untransformedFrame.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 center];
  v10 = v9;
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  Width = CGRectGetWidth(v17);
  v12 = [v0 layer];
  [v12 anchorPoint];
  v14 = v13;

  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  CGRectGetHeight(v18);
  v15 = [v0 layer];
  [v15 anchorPoint];

  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  CGRectGetWidth(v19);
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  CGRectGetHeight(v20);
  return v10 - Width * v14;
}

id UIView.untransformedFrame.setter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  Width = CGRectGetWidth(v22);
  v11 = [v4 layer];
  [v11 anchorPoint];
  v13 = v12;

  v14 = MinX + Width * v13;
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  Height = CGRectGetHeight(v24);
  v17 = [v4 layer];
  [v17 anchorPoint];
  v19 = v18;

  [v4 setCenter:{v14, MinY + Height * v19}];
  [v4 bounds];

  return [v4 setBounds:?];
}

void (*UIView.untransformedFrame.modify(uint64_t *a1))(CGFloat **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *v3 = UIView.untransformedFrame.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_10043FC00;
}

void sub_10043FC00(CGFloat **a1)
{
  v1 = *a1;
  UIView.untransformedFrame.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

float UIView.contentCompressionResistancePriority.getter()
{
  [v0 contentCompressionResistancePriorityForAxis:0];
  v2 = v1;
  [v0 contentCompressionResistancePriorityForAxis:1];
  return v2;
}

float UIView.CompressionResistancePriority.init(view:)(void *a1)
{
  [a1 contentCompressionResistancePriorityForAxis:0];
  v3 = v2;
  [a1 contentCompressionResistancePriorityForAxis:1];

  return v3;
}

id UIView.contentCompressionResistancePriority.setter(double a1, float a2)
{
  [v2 setContentCompressionResistancePriority:0 forAxis:a1];
  *&v4 = a2;

  return [v2 setContentCompressionResistancePriority:1 forAxis:v4];
}

id (*UIView.contentCompressionResistancePriority.modify(uint64_t a1))(uint64_t a1, double a2)
{
  *a1 = v1;
  [v1 contentCompressionResistancePriorityForAxis:0];
  v4 = v3;
  [v1 contentCompressionResistancePriorityForAxis:1];
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  return sub_10043FDD0;
}

id sub_10043FDD0(uint64_t a1, double a2)
{
  v2 = *a1;
  LODWORD(a2) = *(a1 + 8);
  v3 = *(a1 + 12);
  [*a1 setContentCompressionResistancePriority:0 forAxis:a2];
  LODWORD(v4) = v3;

  return [v2 setContentCompressionResistancePriority:1 forAxis:v4];
}

UIImage *UIView.screenshot.getter()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v5 = [v0 isOpaque];
  v8.width = v2;
  v8.height = v4;
  UIGraphicsBeginImageContextWithOptions(v8, v5, 0.0);
  [v0 bounds];
  [v0 drawViewHierarchyInRect:1 afterScreenUpdates:?];
  v6 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v6;
}

Swift::Void __swiftcall UIView.visualizeLayout(with:)(UIColor with)
{
  v2 = v1;
  v4 = [v1 viewWithTag:1234];
  if (v4)
  {
    isa = v4;
    [v1 bringSubviewToFront:?];
  }

  else
  {
    v5 = [objc_allocWithZone(UIView) init];
    v6 = [(objc_class *)with.super.isa colorWithAlphaComponent:0.2];
    [v5 setBackgroundColor:v6];

    v7 = with.super.isa;
    sub_100442A68(0x3FF0000000000000, 1, with.super.isa);

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setTag:1234];
    [v5 setUserInteractionEnabled:0];
    [v2 addSubview:v5];
    v8 = objc_opt_self();
    sub_100004CB8(&qword_100647220, &qword_100535B20);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100511D90;
    v10 = [v5 topAnchor];
    v11 = [v2 topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];

    *(v9 + 32) = v12;
    v13 = [v5 bottomAnchor];
    v14 = [v2 bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v9 + 40) = v15;
    v16 = [v5 leadingAnchor];
    v17 = [v2 leadingAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v9 + 48) = v18;
    v19 = [v5 trailingAnchor];
    v20 = [v2 trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v9 + 56) = v21;
    sub_100006F10(0, &qword_100648100, NSLayoutConstraint_ptr);
    isa = sub_1004DD85C().super.isa;

    [v8 activateConstraints:isa];
  }
}

double UIView.traverseViewHierarchy(_:)(void (*a1)(void *, char *), uint64_t a2)
{
  v3 = v2;
  v14 = 0;
  a1(v3, &v14);
  if ((v14 & 1) == 0)
  {
    v7 = [v3 subviews];
    sub_100006F10(0, &qword_100648108, UIView_ptr);
    v8 = sub_1004DD87C();

    if (v8 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004DED5C())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_1004DEB2C();
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v14)
        {

          goto LABEL_14;
        }

        sub_100442BCC(v11, a1, a2, &v14);

        ++v10;
        if (v13 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

void UIView.statusBarFrame.getter(uint64_t a1@<X8>)
{
  v3 = [v1 window];
  v4 = 0uLL;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 windowScene];

    if (v6)
    {
      v7 = [v6 statusBarManager];
      if (v7)
      {
        v8 = v7;
        if (([v7 isStatusBarHidden] & 1) == 0)
        {
          [v8 statusBarFrame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [v6 screen];
          v20 = [v19 coordinateSpace];

          [v1 convertRect:v20 fromCoordinateSpace:{v12, v14, v16, v18}];
          v26 = v21;
          v27 = v22;
          v25 = v23;
          v28 = v24;

          swift_unknownObjectRelease();
          *&v10 = v25;
          *&v4 = v26;
          v9 = 0;
          *(&v4 + 1) = v27;
          *(&v10 + 1) = v28;
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v9 = 1;
    v10 = 0uLL;
    v4 = 0uLL;
  }

  else
  {
    v9 = 1;
    v10 = 0uLL;
  }

LABEL_9:
  *a1 = v4;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
}

id UIView.allowsAnimatedChanges.getter()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    result = [v0 window];
    if (result)
    {
      v2 = result;
      v3 = [result windowScene];

      if (v3)
      {
        v4 = [v3 activationState];

        return (v4 == 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

Swift::Void __swiftcall UILayoutGuide.visualizeLayout(with:)(UIColor with)
{
  v2 = v1;
  v4 = [v1 owningView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 viewWithTag:1234];
    if (v6)
    {
      isa = v6;
      [v5 bringSubviewToFront:?];
    }

    else
    {
      v7 = [objc_allocWithZone(UIView) init];
      v8 = [(objc_class *)with.super.isa colorWithAlphaComponent:0.2];
      [v7 setBackgroundColor:v8];

      v9 = with.super.isa;
      sub_100442A68(0x3FF0000000000000, 1, with.super.isa);

      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 setTag:1234];
      [v7 setUserInteractionEnabled:0];
      [v5 addSubview:v7];
      v10 = objc_opt_self();
      sub_100004CB8(&qword_100647220, &qword_100535B20);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100511D90;
      v12 = [v7 topAnchor];
      v13 = [v2 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      *(v11 + 32) = v14;
      v15 = [v7 bottomAnchor];
      v16 = [v2 bottomAnchor];
      v17 = [v15 constraintEqualToAnchor:v16];

      *(v11 + 40) = v17;
      v18 = [v7 leadingAnchor];
      v19 = [v2 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];

      *(v11 + 48) = v20;
      v21 = [v7 trailingAnchor];
      v22 = [v2 trailingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v11 + 56) = v23;
      sub_100006F10(0, &qword_100648100, NSLayoutConstraint_ptr);
      isa = sub_1004DD85C().super.isa;

      [v10 activateConstraints:isa];

      v5 = v7;
    }
  }
}

BOOL UIViewController.canPresentViewControllers.getter()
{
  v1 = [v0 popoverPresentationController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 == 0;
}

BOOL UIViewController.canBeDismissed.getter()
{
  v1 = [v0 presentingViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

Swift::Void __swiftcall UIViewController.dismiss(after:)(Swift::Double after)
{
  v1 = sub_1004DBEBC();
  v19 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004DBEFC();
  v17 = *(v4 - 8);
  v18 = v4;
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DBF2C();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v16 - v11;
  sub_100006F10(0, &qword_100648110, OS_dispatch_queue_ptr);
  v13 = sub_1004DE14C();
  sub_1004DBF1C();
  sub_1004DBF8C();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100442D84;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005FCDF8;
  v15 = _Block_copy(aBlock);

  sub_1004DBEDC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100442D8C(&qword_100646FE8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_100648120, &qword_100535870);
  sub_100407244();
  sub_1004DE92C();
  sub_1004DE10C();
  _Block_release(v15);

  (*(v19 + 8))(v3, v1);
  (*(v17 + 8))(v6, v18);
  v16(v12, v7);
}

void sub_100440E80(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 presentedViewController];
      if (v5)
      {
        v6 = v5;
        sub_100006F10(0, &unk_1006480F0, NSObject_ptr);
        if (sub_1004DE5FC())
        {
          [v4 dismissViewControllerAnimated:1 completion:0];
        }

        v2 = v4;
      }

      else
      {
        v6 = v4;
      }

      v2 = v6;
    }
  }
}