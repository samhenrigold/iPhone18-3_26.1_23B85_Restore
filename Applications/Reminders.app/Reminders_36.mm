void sub_1003E36E8(uint64_t a1)
{
  v175 = a1;
  v172 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  v171 = *(v172 - 1);
  __chkstk_darwin(v172);
  v160 = &v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v161 = &v147 - v4;
  v150 = sub_100058000(&qword_100781C48, &unk_10063D810);
  __chkstk_darwin(v150);
  v151 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v149 = &v147 - v7;
  v173 = type metadata accessor for Date();
  v176 = *(v173 - 8);
  __chkstk_darwin(v173);
  v148 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v153 = &v147 - v10;
  __chkstk_darwin(v11);
  v152 = &v147 - v12;
  __chkstk_darwin(v13);
  v147 = &v147 - v14;
  __chkstk_darwin(v15);
  v169 = &v147 - v16;
  __chkstk_darwin(v17);
  v170 = &v147 - v18;
  __chkstk_darwin(v19);
  v158 = &v147 - v20;
  __chkstk_darwin(v21);
  v159 = &v147 - v22;
  __chkstk_darwin(v23);
  v156 = &v147 - v24;
  __chkstk_darwin(v25);
  v157 = &v147 - v26;
  __chkstk_darwin(v27);
  v154 = &v147 - v28;
  __chkstk_darwin(v29);
  v155 = &v147 - v30;
  updated = type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField(0);
  __chkstk_darwin(updated);
  v167 = &v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v168 = &v147 - v33;
  __chkstk_darwin(v34);
  v166 = &v147 - v35;
  __chkstk_darwin(v36);
  v165 = &v147 - v37;
  __chkstk_darwin(v38);
  v164 = &v147 - v39;
  __chkstk_darwin(v40);
  v163 = &v147 - v41;
  v42 = sub_100058000(&qword_10076D030, &unk_100633170);
  __chkstk_darwin(v42 - 8);
  v162 = &v147 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v179 = &v147 - v45;
  v46 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  v47 = v46 - 8;
  __chkstk_darwin(v46);
  v49 = &v147 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions(0);
  __chkstk_darwin(v50);
  v52 = &v147 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v55 = &v147 - v54;
  __chkstk_darwin(v56);
  v58 = &v147 - v57;
  v60 = *(v1 + 104);
  v59 = *(v1 + 112);
  sub_10000C36C((v1 + 80), v60);
  v61 = (*(v59 + 8))(v60, v59);
  TTRSmartListFilterEditorViewModel.init(filter:doneAlwaysEnabled:)(v61, (*(v1 + 65) & 1) == 0, v49);
  sub_1003E1994(v49);
  v178 = v1;
  sub_1003E20F8(v49);
  sub_1003EFF40(&v49[*(v47 + 28)], v58, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  sub_1003EFED8(v49, type metadata accessor for TTRSmartListFilterEditorViewModel);
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100003E30(v62, qword_100781AA0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  sub_1003EFF40(v58, v55, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  v64 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v64;
  *(inited + 56) = v65;
  v66 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Request date data change {to: %@}", 33, 2, v66);

  v67 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v68 = *(v67 - 8);
  v69 = *(v68 + 56);
  v70 = v179;
  v69(v179, 1, 1, v67);
  sub_1003EFF40(v58, v52, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v72 = v52;
  v177 = v58;
  if (EnumCaseMultiPayload <= 3)
  {
    v75 = v173;
    if (EnumCaseMultiPayload > 1)
    {
      v73 = v178;
      if (EnumCaseMultiPayload == 2)
      {
        sub_100058000(&qword_100776AE8, &qword_100636F20);

        v108 = v165;
        sub_1003EFF40(v175, v165, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
        v109 = swift_getEnumCaseMultiPayload();
        if (v109 <= 1)
        {
          if (!v109)
          {
            v78 = v176;
            v175 = v72;
            v79 = *(v176 + 32);
            v79(v156, v108, v75);
            v79(v157, v156, v75);
            sub_1000079B4(v70, &qword_10076D030, &unk_100633170);
            v79(v70, v157, v75);
            v72 = v175;
            v80 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.beforeDate(_:);
LABEL_32:
            (*(v68 + 104))(v70, *v80, v67);
            v69(v70, 0, 1, v67);
LABEL_45:
            (*(v78 + 8))(v72, v75);
LABEL_61:
            v139 = objc_opt_self();
            v140._countAndFlagsBits = 0xD000000000000023;
            v140._object = 0x8000000100684E30;
            v141._object = 0x8000000100684E60;
            v142._countAndFlagsBits = 0xD000000000000037;
            v142._object = 0x8000000100684E80;
            v141._countAndFlagsBits = 0xD000000000000012;
            TTRLocalizedString(_:value:comment:)(v140, v141, v142);
            v143 = String._bridgeToObjectiveC()();

            v144 = swift_allocObject();
            *(v144 + 16) = v73;
            *(v144 + 24) = v70;
            v145 = swift_allocObject();
            *(v145 + 16) = sub_1003EFF38;
            *(v145 + 24) = v144;
            aBlock[4] = sub_100068444;
            aBlock[5] = v145;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100026440;
            aBlock[3] = &unk_100725F80;
            v146 = _Block_copy(aBlock);

            [v139 withActionName:v143 block:v146];
            _Block_release(v146);

            sub_1003EFED8(v177, type metadata accessor for TTRSmartListFilterEditorViewModel.DateOptions);
            LOBYTE(v143) = swift_isEscapingClosureAtFileLocation();

            if ((v143 & 1) == 0)
            {
              sub_1000079B4(v70, &qword_10076D030, &unk_100633170);

              return;
            }

            __break(1u);
            goto LABEL_64;
          }

LABEL_40:
          v78 = v176;
          (*(v176 + 8))(v108, v75);
          goto LABEL_45;
        }
      }

      else
      {
        sub_100058000(&qword_100776AE8, &qword_100636F20);

        v108 = v166;
        sub_1003EFF40(v175, v166, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
        v109 = swift_getEnumCaseMultiPayload();
        if (v109 <= 1)
        {
          if (!v109)
          {
            v78 = v176;
            v175 = v72;
            v110 = *(v176 + 32);
            v110(v158, v108, v75);
            v110(v159, v158, v75);
            sub_1000079B4(v70, &qword_10076D030, &unk_100633170);
            v110(v70, v159, v75);
            v72 = v175;
            v80 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.afterDate(_:);
            goto LABEL_32;
          }

          goto LABEL_40;
        }
      }

      v78 = v176;
      if (v109 != 2)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v76 = v163;
        sub_1003EFF40(v175, v163, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
        v77 = swift_getEnumCaseMultiPayload();
        if (v77 <= 1)
        {
          (*(v176 + 8))(v76, v75);
LABEL_60:
          v73 = v178;
          goto LABEL_61;
        }

        if (v77 != 2)
        {
          v119 = *v76;
          sub_1000079B4(v70, &qword_10076D030, &unk_100633170);
          *v70 = v119;
          (*(v68 + 104))(v70, enum case for REMCustomSmartListFilterDescriptor.FilterDate.today(_:), v67);
          v69(v70, 0, 1, v67);
          goto LABEL_60;
        }

        v115 = *(v171 + 8);
        v116 = v76;
LABEL_48:
        v115(v116, v172);
        goto LABEL_60;
      }

      sub_100058000(&qword_100776AE8, &qword_100636F20);

      v108 = v164;
      sub_1003EFF40(v175, v164, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
      v106 = swift_getEnumCaseMultiPayload();
      if (v106 <= 1)
      {
        v73 = v178;
        if (!v106)
        {
          v78 = v176;
          v175 = v72;
          v107 = *(v176 + 32);
          v107(v154, v108, v75);
          v107(v155, v154, v75);
          sub_1000079B4(v70, &qword_10076D030, &unk_100633170);
          v107(v70, v155, v75);
          v72 = v175;
          v80 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.onDate(_:);
          goto LABEL_32;
        }

        goto LABEL_40;
      }

      v73 = v178;
      v78 = v176;
      if (v106 != 2)
      {
        goto LABEL_45;
      }
    }

    (*(v171 + 8))(v108, v172);
    goto LABEL_45;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v73 = v178;
    if (EnumCaseMultiPayload == 6)
    {
      sub_1000079B4(v70, &qword_10076D030, &unk_100633170);
      v104 = v70;
      v105 = 1;
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        sub_1000079B4(v70, &qword_10076D030, &unk_100633170);
        v74 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.any(_:);
      }

      else
      {
        sub_1000079B4(v70, &qword_10076D030, &unk_100633170);
        v74 = &enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:);
      }

      (*(v68 + 104))(v70, *v74, v67);
      v104 = v70;
      v105 = 0;
    }

    v69(v104, v105, 1, v67);
    goto LABEL_61;
  }

  if (EnumCaseMultiPayload != 4)
  {
    sub_100058000(&qword_100776AD8, &unk_100636F10);

    v111 = v167;
    sub_1003EFF40(v175, v167, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
    v112 = swift_getEnumCaseMultiPayload();
    v73 = v178;
    if (v112 > 1)
    {
      v114 = v172;
      v113 = v171;
      if (v112 == 2)
      {
        v175 = v72;
        v118 = *(v171 + 32);
        v118(v160, v111, v172);
        v118(v161, v160, v114);
        sub_1000079B4(v70, &qword_10076D030, &unk_100633170);
        v118(v70, v161, v114);
        v72 = v175;
        (*(v68 + 104))(v70, enum case for REMCustomSmartListFilterDescriptor.FilterDate.relativeRange(_:), v67);
        v69(v70, 0, 1, v67);
      }
    }

    else
    {
      v113 = v171;
      (*(v176 + 8))(v111, v173);
      v114 = v172;
    }

    (*(v113 + 8))(v72, v114);
    goto LABEL_61;
  }

  v81 = *(sub_100058000(&qword_100776AE0, &qword_10063D830) + 48);

  v82 = *(v176 + 32);
  v83 = v173;
  v82(v170, v72, v173);
  v84 = v72 + v81;
  v85 = v83;
  v82(v169, v84, v83);
  v86 = v168;
  sub_1003EFF40(v175, v168, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
  v87 = swift_getEnumCaseMultiPayload();
  if (v87 > 1)
  {
    if (v87 != 2)
    {
      v138 = *(v176 + 8);
      v138(v169, v85);
      v138(v170, v85);
      goto LABEL_60;
    }

    v117 = *(v176 + 8);
    v117(v169, v85);
    v117(v170, v85);
    v115 = *(v171 + 8);
    v116 = v86;
    goto LABEL_48;
  }

  v175 = v67;
  if (v87)
  {
    v120 = v153;
    v82(v153, v86, v83);
    updated = sub_1003EFDC4(&qword_100781C50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v121 = v170;
    v122 = dispatch thunk of static Comparable.< infix(_:_:)();
    v123 = v176;
    if (v122)
    {
      v124 = v121;
    }

    else
    {
      v124 = v120;
    }

    v125 = v148;
    (*(v176 + 16))(v148, v124, v85);
    v126 = dispatch thunk of static Comparable.<= infix(_:_:)();
    v127 = *(v123 + 8);
    v127(v169, v85);
    v176 = v123 + 8;
    updated = v127;
    v127(v170, v85);
    if ((v126 & 1) == 0)
    {
      goto LABEL_65;
    }

    v128 = v149;
    v82(v149, v125, v85);
    v129 = v150;
    v82((v128 + *(v150 + 48)), v153, v85);
    v130 = v151;
    sub_10000794C(v128, v151, &qword_100781C48, &unk_10063D810);
    v131 = *(v129 + 48);
    v82(v162, v130, v85);
    v132 = v130 + v131;
    v133 = updated;
    (updated)(v132, v85);
    sub_100016588(v128, v130, &qword_100781C48, &unk_10063D810);
    v134 = *(v129 + 48);
    v135 = sub_100058000(&qword_100781C58, &unk_10063D820);
    v136 = v162;
    v82(&v162[*(v135 + 36)], v130 + v134, v85);
    v133(v130, v85);
    v137 = v175;
    (*(v68 + 104))(v136, enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:), v175);
    v69(v136, 0, 1, v137);
    v103 = v136;
    goto LABEL_58;
  }

  v88 = v147;
  v82(v147, v86, v85);
  updated = sub_1003EFDC4(&qword_100781C50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v89 = v169;
  v90 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v91 = v176;
  if (v90)
  {
    v92 = v89;
  }

  else
  {
    v92 = v88;
  }

  (*(v176 + 16))(v152, v92, v85);
  LODWORD(updated) = dispatch thunk of static Comparable.<= infix(_:_:)();
  v93 = *(v91 + 8);
  v93(v89, v85);
  v176 = v91 + 8;
  v172 = v93;
  v93(v170, v85);
  if (updated)
  {
    v94 = v149;
    v82(v149, v88, v85);
    v95 = v150;
    v82((v94 + *(v150 + 48)), v152, v85);
    v96 = v151;
    sub_10000794C(v94, v151, &qword_100781C48, &unk_10063D810);
    updated = *(v95 + 48);
    v97 = v162;
    v82(v162, v96, v85);
    v98 = v96 + updated;
    updated = v82;
    v99 = v172;
    (v172)(v98, v85);
    sub_100016588(v94, v96, &qword_100781C48, &unk_10063D810);
    v100 = *(v95 + 48);
    v101 = sub_100058000(&qword_100781C58, &unk_10063D820);
    (updated)(&v97[*(v101 + 36)], v96 + v100, v85);
    v99(v96, v85);
    v102 = v175;
    (*(v68 + 104))(v97, enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:), v175);
    v69(v97, 0, 1, v102);
    v103 = v97;
LABEL_58:
    v70 = v179;
    sub_10000D184(v103, v179, &qword_10076D030, &unk_100633170);
    goto LABEL_60;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1003E4EF4(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076D030, &unk_100633170);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = a1[13];
  v8 = a1[14];
  sub_10000C36C(a1 + 10, v7);
  sub_10000794C(a2, v6, &qword_10076D030, &unk_100633170);
  (*(v8 + 72))(v6, v7, v8);
  return sub_1000079B4(v6, &qword_10076D030, &unk_100633170);
}

void sub_1003E4FE0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076D028, &unk_100630CD0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &aBlock - v9;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100781AA0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  aBlock = sub_1003E5518;
  v32 = 0;
  sub_100058000(&qword_100781C78, &qword_10063D898);
  v13 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v13;
  *(inited + 56) = v14;
  v15 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Request priorities change {to: %@}", 34, 2, v15);

  if (a1 <= 2u)
  {
    if (!a1)
    {
      v17 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
      (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
      goto LABEL_17;
    }

    if (a1 == 1)
    {
      v16 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.any(_:);
    }

    else
    {
      v16 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.morning(_:);
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v16 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.night(_:);
    }

    else
    {
      v16 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.noTime(_:);
    }
  }

  else if (a1 == 3)
  {
    v16 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.afternoon(_:);
  }

  else
  {
    v16 = &enum case for REMCustomSmartListFilterDescriptor.FilterTime.evening(_:);
  }

  v18 = *v16;
  v19 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterTime();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v10, v18, v19);
  (*(v20 + 56))(v10, 0, 1, v19);
LABEL_17:
  v21 = objc_opt_self();
  v22._countAndFlagsBits = 0xD000000000000023;
  v22._object = 0x80000001006851F0;
  v23._object = 0x8000000100685220;
  v24._countAndFlagsBits = 0xD000000000000037;
  v24._object = 0x8000000100685240;
  v23._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:value:comment:)(v22, v23, v24);
  v25 = String._bridgeToObjectiveC()();

  sub_10000794C(v10, v7, &qword_10076D028, &unk_100630CD0);
  v26 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  sub_100016588(v7, v27 + v26, &qword_10076D028, &unk_100630CD0);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1003F0578;
  *(v28 + 24) = v27;
  v35 = sub_100068444;
  v36 = v28;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100026440;
  v34 = &unk_1007263E0;
  v29 = _Block_copy(&aBlock);

  [v21 withActionName:v25 block:v29];
  _Block_release(v29);

  sub_1000079B4(v10, &qword_10076D028, &unk_100630CD0);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

time_t sub_1003E5518@<X0>(time_t **a1@<X0>, time_t *a2@<X8>)
{
  result = time(*a1);
  *a2 = result;
  return result;
}

void sub_1003E5544(char a1)
{
  v2 = v1;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100781AA0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v6 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Request priorities change {to: %@}", 34, 2, v8);

  v9 = objc_opt_self();
  v10._countAndFlagsBits = 0xD000000000000029;
  v10._object = 0x80000001006850B0;
  v11._object = 0x80000001006850E0;
  v12._countAndFlagsBits = 0xD00000000000003DLL;
  v12._object = 0x8000000100685100;
  v11._countAndFlagsBits = 0xD000000000000018;
  TTRLocalizedString(_:value:comment:)(v10, v11, v12);
  v13 = String._bridgeToObjectiveC()();

  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  *(v14 + 24) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1003F03F0;
  *(v15 + 24) = v14;
  v18[4] = sub_100068444;
  v18[5] = v15;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100026440;
  v18[3] = &unk_1007262F0;
  v16 = _Block_copy(v18);

  [v9 withActionName:v13 block:v16];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

double sub_1003E5820(void *a1, unsigned __int8 a2)
{
  v3 = a1[13];
  v4 = a1[14];
  sub_10000C36C(a1 + 10, v3);
  v5 = a2;
  v6 = &off_100712AE0;
  v7 = &off_100712B08;
  if (a2 != 4)
  {
    v7 = &off_100712B30;
  }

  if (a2 != 3)
  {
    v6 = v7;
  }

  v8 = &off_100712A80;
  if (a2 != 1)
  {
    v8 = &off_100712AB8;
  }

  if (a2)
  {
    v5 = v8;
  }

  if (a2 <= 2u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  (*(v4 + 88))(v9, v3, v4);

  return result;
}

void sub_1003E58E8(char a1)
{
  v2 = v1;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100781AA0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  v6 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Request flagged change {to: %@}", 31, 2, v8);

  v9 = 2 - a1;
  v10 = objc_opt_self();
  v11._countAndFlagsBits = 0xD000000000000026;
  v11._object = 0x8000000100685160;
  v12._object = 0x8000000100685190;
  v13._countAndFlagsBits = 0xD00000000000003ALL;
  v13._object = 0x80000001006851B0;
  v12._countAndFlagsBits = 0xD000000000000015;
  TTRLocalizedString(_:value:comment:)(v11, v12, v13);
  v14 = String._bridgeToObjectiveC()();

  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v9;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1003F03FC;
  *(v16 + 24) = v15;
  v19[4] = sub_100068444;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100026440;
  v19[3] = &unk_100726368;
  v17 = _Block_copy(v19);

  [v10 withActionName:v14 block:v17];

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1003E5BC8(char a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_100058000(&qword_10076D020, &qword_100633180);
  __chkstk_darwin(v7 - 8);
  v9 = aBlock - v8;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_100781AA0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  LOBYTE(aBlock[0]) = a1;
  v12 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  v14 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Request location change {to: %@}", 32, 2, v14);

  v15 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v9, 1, 1, v15);
  if (!a1)
  {
    sub_1000079B4(v9, &qword_10076D020, &qword_100633180);
    v25 = 1;
LABEL_9:
    v17(v9, v25, 1, v15);
    *(v2 + 288) = 0;
    goto LABEL_10;
  }

  if (a1 != 1)
  {
    sub_1000079B4(v9, &qword_10076D020, &qword_100633180);
    (*(v16 + 104))(v9, enum case for REMCustomSmartListFilterDescriptor.FilterLocation.noLocation(_:), v15);
    v25 = 0;
    goto LABEL_9;
  }

  *(v2 + 288) = 1;
  v18._object = 0x8000000100670CE0;
  v18._countAndFlagsBits = 0xD000000000000011;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v18);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  v20 = *(v2 + 160);
  type metadata accessor for MainActor();

  v21 = static MainActor.shared.getter();
  v22 = swift_allocObject();
  v22[2] = v21;
  v22[3] = &protocol witness table for MainActor;
  v22[4] = v20;
  v22[5] = v2;
  sub_10009E31C(0, 0, v6, &unk_10063D840, v22);

  v23 = 0;
  v24 = 0;
  if (*(v2 + 288))
  {
    goto LABEL_11;
  }

LABEL_10:
  v26 = objc_opt_self();
  v27._countAndFlagsBits = 0xD000000000000027;
  v27._object = 0x8000000100684F20;
  v28._countAndFlagsBits = 0xD000000000000016;
  v28._object = 0x8000000100684F50;
  v29._countAndFlagsBits = 0xD00000000000003BLL;
  v29._object = 0x8000000100684F70;
  TTRLocalizedString(_:value:comment:)(v27, v28, v29);
  v30 = String._bridgeToObjectiveC()();

  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  *(v24 + 24) = v9;
  v31 = swift_allocObject();
  v23 = sub_1003EFFA8;
  *(v31 + 16) = sub_1003EFFA8;
  *(v31 + 24) = v24;
  aBlock[4] = sub_100068444;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100725FF8;
  v32 = _Block_copy(aBlock);

  [v26 withActionName:v30 block:v32];

  _Block_release(v32);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
LABEL_11:
    sub_1000079B4(v9, &qword_10076D020, &qword_100633180);
    sub_1000301AC(v23, v24);
    return;
  }

  __break(1u);
}

uint64_t sub_1003E612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v7 = type metadata accessor for TTRLocationQuickPickItem();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = type metadata accessor for TTRContactsAccessAlertFeature();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for MainActor();
  v5[15] = static MainActor.shared.getter();
  v5[4] = a4;
  v9 = swift_task_alloc();
  v5[16] = v9;
  v10 = type metadata accessor for TTRIPrivacyChecker();
  v5[17] = v10;
  *v9 = v5;
  v9[1] = sub_1003E62B4;

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v10, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1003E62B4(char a1)
{
  v2 = *v1;
  *(v2 + 168) = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 144) = v4;
  *(v2 + 152) = v3;

  return _swift_task_switch(sub_1003E6400, v4, v3);
}

uint64_t sub_1003E6400()
{
  v0[5] = v0[6];
  (*(v0[12] + 104))(v0[13], enum case for TTRContactsAccessAlertFeature.location(_:), v0[11]);
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_1003E64D4;
  v2 = v0[17];
  v3 = v0[13];

  return TTRPrivacyChecker.checkContactsAccess(contactsFeature:)(v3, v2, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1003E64D4(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  v3[2] = v1;
  v4 = v2[13];
  v5 = v2[12];
  v6 = v2[11];

  (*(v5 + 8))(v4, v6);
  v7 = v2[19];
  v8 = v2[18];

  return _swift_task_switch(sub_1003E6660, v8, v7);
}

uint64_t sub_1003E6660()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 72);

  if (v1 == 1)
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = &enum case for TTRLocationQuickPickItem.current(_:);
  }

  else
  {
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    if (*(v0 + 24) == 1)
    {
      v5 = &enum case for TTRLocationQuickPickItem.home(_:);
    }

    else
    {
      v5 = &enum case for TTRLocationQuickPickItem.gettingInCar(_:);
    }
  }

  (*(v2 + 104))(v3, *v5, v4);
  sub_1003E6768(v3, 0);
  (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

void sub_1003E6768(uint64_t a1, char a2)
{
  v68 = a1;
  v3 = sub_100058000(&qword_100775718, &qword_100635D88);
  __chkstk_darwin(v3 - 8);
  v67 = &v59 - v4;
  v5 = type metadata accessor for TTRLocationQuickPickItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v65 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100781C60, &qword_10063D850);
  __chkstk_darwin(v8 - 8);
  v66 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = sub_100058000(&qword_100776AB0, &unk_100641180);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  __chkstk_darwin(v16);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  v63 = *(v19 - 8);
  v64 = v19;
  __chkstk_darwin(v19);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100058000(&qword_100775720, &unk_100635D90);
  __chkstk_darwin(v22 - 8);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v25);
  v28 = &v59 - v27;
  if ((a2 & 1) == 0)
  {
    goto LABEL_4;
  }

  v60 = v6;
  v61 = v5;
  v62 = v12;
  v29 = v69;
  v31 = v69[13];
  v30 = v69[14];
  sub_10000C36C(v69 + 10, v31);
  v32 = (*(v30 + 8))(v31, v30);
  TTRSmartListFilterEditorViewModel.init(filter:doneAlwaysEnabled:)(v32, (*(v29 + 65) & 1) == 0, v18);
  sub_1003E1994(v18);
  sub_1003E20F8(v18);
  sub_10000794C(&v18[*(v16 + 32)], v15, &qword_100776AB0, &unk_100641180);
  sub_1003EFED8(v18, type metadata accessor for TTRSmartListFilterEditorViewModel);
  v33 = v64;
  if ((*(v63 + 48))(v15, 1, v64) == 1)
  {
    sub_1000079B4(v15, &qword_100776AB0, &unk_100641180);
    v5 = v61;
    v12 = v62;
    v6 = v60;
LABEL_4:
    v35 = 1;
    (*(v6 + 56))(v28, 1, 1, v5, v26);
    v36 = 0;
    v37 = v6;
    goto LABEL_9;
  }

  sub_1003F0078(v15, v21, v34);
  v38 = v21[32];
  v35 = v38 < 0;
  if (v38 >= 0)
  {
    v36 = *(v21 + 3);
  }

  else
  {
    v36 = 0;
  }

  sub_10000794C(&v21[*(v33 + 6)], v28, &qword_100775720, &unk_100635D90);
  sub_1003EFED8(v21, type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData);
  v5 = v61;
  v12 = v62;
  v37 = v60;
LABEL_9:
  sub_10000794C(v28, v24, &qword_100775720, &unk_100635D90);
  v39 = (*(v37 + 48))(v24, 1, v5);
  v40 = v67;
  v41 = v65;
  if (v39 == 1)
  {
    sub_1000079B4(v24, &qword_100775720, &unk_100635D90);
    v42 = v66;
LABEL_13:
    v45 = sub_100058000(&qword_100781C68, &qword_10063D858);
    (*(*(v45 - 8) + 56))(v12, 1, 1, v45);
    goto LABEL_15;
  }

  v64 = v28;
  v43 = v36;
  v44 = *(v37 + 32);
  v44(v65, v24, v5);
  if (v35)
  {
    (*(v37 + 8))(v41, v5);
    v42 = v66;
    v28 = v64;
    goto LABEL_13;
  }

  v46 = sub_100058000(&qword_100781C68, &qword_10063D858);
  v47 = v41;
  v48 = v37;
  v49 = *(v46 + 48);
  v44(v12, v47, v5);
  *&v12[v49] = v43;
  v37 = v48;
  (*(*(v46 - 8) + 56))(v12, 0, 1, v46);
  v42 = v66;
  v28 = v64;
LABEL_15:
  sub_10000794C(v12, v42, &qword_100781C60, &qword_10063D850);
  v50 = sub_100058000(&qword_100781C68, &qword_10063D858);
  if ((*(*(v50 - 8) + 48))(v42, 1, v50) == 1)
  {
    sub_1000079B4(v42, &qword_100781C60, &qword_10063D850);
    v51 = sub_100058000(&qword_100775728, &unk_10063D860);
    (*(*(v51 - 8) + 56))(v40, 1, 1, v51);
  }

  else
  {
    v52 = *(v42 + *(v50 + 48));
    v53 = sub_100058000(&qword_100775728, &unk_10063D860);
    v54 = v37;
    v55 = *(v53 + 48);
    (*(v54 + 32))(v40, v42, v5);
    *(v40 + v55) = v52;
    (*(*(v53 - 8) + 56))(v40, 0, 1, v53);
  }

  swift_getObjectType();
  v56 = dispatch thunk of TTRLocationQuickPicksInteractorType.locationTrigger(for:togglingProximityForCurrentSelection:)();
  sub_1000079B4(v40, &qword_100775718, &qword_100635D88);
  if (v56)
  {
    v70 = v56;
    swift_allocObject();
    v57 = v69;
    swift_weakInit();
    sub_100058000(&qword_100775730, &unk_100635DA0);
    sub_10000E188(&qword_100775738, &qword_100775730, &unk_100635DA0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v58 = Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000079B4(v12, &qword_100781C60, &qword_10063D850);
    sub_1000079B4(v28, &qword_100775720, &unk_100635D90);

    v57[35] = v58;
  }

  else
  {
    sub_1000079B4(v12, &qword_100781C60, &qword_10063D850);
    sub_1000079B4(v28, &qword_100775720, &unk_100635D90);
  }
}

uint64_t sub_1003E7048(void *a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076D020, &qword_100633180);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = a1[13];
  v8 = a1[14];
  sub_10000C36C(a1 + 10, v7);
  sub_10000794C(a2, v6, &qword_10076D020, &qword_100633180);
  (*(v8 + 104))(v6, v7, v8);
  return sub_1000079B4(v6, &qword_10076D020, &qword_100633180);
}

void sub_1003E7134(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v24[0] = v24 - v3;
  v4 = type metadata accessor for TTRLocationQuickPickItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v24 - v9;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003E30(v11, qword_100781AA0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 32) = 1835365481;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 40) = 0xE400000000000000;
  v13 = *(v5 + 16);
  v13(v10, a1, v4);
  v14 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  v16 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("List Detail select location quick pick {item: %@}", 49, 2, v16);

  v13(v7, a1, v4);
  v17 = (*(v5 + 88))(v7, v4);
  if (v17 == enum case for TTRLocationQuickPickItem.current(_:) || v17 == enum case for TTRLocationQuickPickItem.home(_:) || v17 == enum case for TTRLocationQuickPickItem.work(_:))
  {
    v18 = v24[1];
    sub_1003E6768(a1, 1);
    v19 = type metadata accessor for TaskPriority();
    v20 = v24[0];
    (*(*(v19 - 8) + 56))(v24[0], 1, 1, v19);
    v21 = *(v18 + 160);
    type metadata accessor for MainActor();

    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v21;
    sub_10009E31C(0, 0, v20, &unk_10063D890, v23);
  }

  else if (v17 == enum case for TTRLocationQuickPickItem.gettingInCar(_:) || v17 == enum case for TTRLocationQuickPickItem.gettingOutOfCar(_:))
  {
    sub_1003E6768(a1, 1);
  }

  else if (v17 == enum case for TTRLocationQuickPickItem.custom(_:))
  {
    sub_1003E751C(1);
  }

  else
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

void sub_1003E751C(char a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = v1[13];
  v8 = v1[14];
  sub_10000C36C(v1 + 10, v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (v9)
  {
    v10 = v9;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = v2[20];
    v13 = v2[26];
    sub_10000B0D8((v2 + 15), v19);
    sub_10000B0D8((v2 + 10), v18);
    type metadata accessor for MainActor();

    v14 = v10;
    v15 = v13;

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v12;
    sub_100005FD0(v19, v17 + 40);
    *(v17 + 80) = v14;
    *(v17 + 88) = v15;
    *(v17 + 96) = a1 & 1;
    *(v17 + 104) = v2;
    sub_100005FD0(v18, v17 + 112);
    sub_10009E31C(0, 0, v6, &unk_10063D880, v17);
  }
}

uint64_t sub_1003E76FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v4[2] = a4;
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1003E77EC;

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v6, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1003E77EC()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100223F40, v1, v0);
}

void sub_1003E7928(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = sub_100058000(&qword_10076D038, &qword_100630CE0);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v30 = &v28 - v8;
  v31 = type metadata accessor for REMHashtagLabelSpecifier();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100781AA0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  LOBYTE(aBlock[0]) = v3;
  v14 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  v16 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Request hashtag operation change {to: %@", 40, 2, v16);

  v17 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelSelectionCache;
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v17, v31);
  v18 = v30;
  sub_1003E7DFC(v11, v3, v30);
  v28 = objc_opt_self();
  v19._countAndFlagsBits = 0xD000000000000023;
  v19._object = 0x8000000100684CC0;
  v20._object = 0x8000000100684CF0;
  v21._countAndFlagsBits = 0xD000000000000037;
  v21._object = 0x8000000100684D10;
  v20._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:value:comment:)(v19, v20, v21);
  v22 = String._bridgeToObjectiveC()();

  sub_10000794C(v18, v6, &qword_10076D038, &qword_100630CE0);
  v23 = (*(v29 + 80) + 24) & ~*(v29 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  sub_100016588(v6, v24 + v23, &qword_10076D038, &qword_100630CE0);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1003EFBCC;
  *(v25 + 24) = v24;
  aBlock[4] = sub_100026410;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100725CD8;
  v26 = _Block_copy(aBlock);

  [v28 withActionName:v22 block:v26];
  _Block_release(v26);

  sub_1000079B4(v18, &qword_10076D038, &qword_100630CE0);
  (*(v9 + 8))(v11, v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_1003E7DFC@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, char *a3@<X8>)
{
  v6 = sub_100058000(&qword_100781C30, &qword_10063D800);
  __chkstk_darwin(v6);
  v8 = (&v55 - v7);
  v10 = *(v9 + 48);
  v11 = type metadata accessor for REMHashtagLabelSpecifier();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a1, v11);
  *(v8 + v10) = a2;
  v13 = a2;
  if (a2 <= 1u)
  {
    goto LABEL_8;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v14 = (*(v12 + 88))(v8, v11);
      if (v14 == enum case for REMHashtagLabelSpecifier.labels(_:))
      {
        v15 = *(v12 + 96);
        v12 += 96;
        v15(v8, v11);
        v16 = *v8;
        v11 = v8[1];
        v17 = *(*v8 + 16);
        if (v17)
        {
          v18 = sub_1003AC440(*(*v8 + 16), 0);
          v19 = sub_1003B2F84(&v56, v18 + 4, v17, v16);
          sub_10008BA48(v56);
          if (v19 != v17)
          {
            __break(1u);
LABEL_8:
            if (!v13)
            {
              v20 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
              (*(*(v20 - 8) + 56))(a3, 1, 1, v20);
              return (*(v12 + 8))(v8, v11);
            }

            v27 = &enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.any(_:);
LABEL_16:
            v28 = *v27;
            v29 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
            v30 = *(v29 - 8);
            (*(v30 + 104))(a3, v28, v29);
            (*(v30 + 56))(a3, 0, 1, v29);
            return (*(v12 + 8))(v8, v11);
          }

LABEL_36:
          *a3 = v18;
          v43 = *(v11 + 16);
          if (v43)
          {
            v44 = sub_1003AC440(*(v11 + 16), 0);
            v45 = sub_1003B2F84(&v56, v44 + 4, v43, v11);
            sub_10008BA48(v56);
            if (v45 != v43)
            {
              __break(1u);
              goto LABEL_39;
            }
          }

          else
          {

            v44 = _swiftEmptyArrayStorage;
          }

          v46 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
          v47 = *(sub_100058000(&qword_100781C18, &unk_10063D7C8) + 64);
          *(a3 + 1) = v44;
          v48 = &enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:);
          goto LABEL_43;
        }

LABEL_35:

        v18 = _swiftEmptyArrayStorage;
        goto LABEL_36;
      }

      if (v14 != enum case for REMHashtagLabelSpecifier.allLabels(_:) && v14 != enum case for REMHashtagLabelSpecifier.noLabels(_:))
      {
LABEL_45:
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }

      v33 = *(sub_100058000(&qword_100781C18, &unk_10063D7C8) + 64);
      *a3 = _swiftEmptyArrayStorage;
      *(a3 + 1) = _swiftEmptyArrayStorage;
      v34 = &enum case for REMCustomSmartListFilterDescriptor.Operation.and(_:);
LABEL_30:
      v36 = *v34;
      v37 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
      (*(*(v37 - 8) + 104))(&a3[v33], v36, v37);
      v38 = enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.hashtags(_:);
      v39 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
      v40 = *(v39 - 8);
      (*(v40 + 104))(a3, v38, v39);
      return (*(v40 + 56))(a3, 0, 1, v39);
    }

LABEL_14:
    v27 = &enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.untagged(_:);
    goto LABEL_16;
  }

  v21 = (*(v12 + 88))(v8, v11);
  if (v21 != enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    if (v21 != enum case for REMHashtagLabelSpecifier.allLabels(_:) && v21 != enum case for REMHashtagLabelSpecifier.noLabels(_:))
    {
      goto LABEL_45;
    }

    v33 = *(sub_100058000(&qword_100781C18, &unk_10063D7C8) + 64);
    *a3 = _swiftEmptyArrayStorage;
    *(a3 + 1) = _swiftEmptyArrayStorage;
    v34 = &enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:);
    goto LABEL_30;
  }

  v22 = *(v12 + 96);
  v12 += 96;
  v22(v8, v11);
  v23 = *v8;
  v11 = v8[1];
  v24 = *(*v8 + 16);
  if (v24)
  {
    v25 = sub_1003AC440(*(*v8 + 16), 0);
    v26 = sub_1003B2F84(&v56, v25 + 4, v24, v23);
    sub_10008BA48(v56);
    if (v26 != v24)
    {
      __break(1u);
      goto LABEL_14;
    }
  }

  else
  {

    v25 = _swiftEmptyArrayStorage;
  }

  *a3 = v25;
  v41 = *(v11 + 16);
  if (!v41)
  {
LABEL_39:

    v42 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  v42 = sub_1003AC440(*(v11 + 16), 0);
  v11 = sub_1003B2F84(&v56, v42 + 4, v41, v11);
  sub_10008BA48(v56);
  if (v11 != v41)
  {
    __break(1u);
    goto LABEL_35;
  }

LABEL_40:
  v46 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
  v47 = *(sub_100058000(&qword_100781C18, &unk_10063D7C8) + 64);
  *(a3 + 1) = v42;
  v48 = &enum case for REMCustomSmartListFilterDescriptor.Operation.or(_:);
LABEL_43:
  v49 = *v48;
  v50 = type metadata accessor for REMCustomSmartListFilterDescriptor.Operation();
  (*(*(v50 - 8) + 104))(&a3[v47], v49, v50);
  v51 = enum case for REMCustomSmartListFilterDescriptor.FilterHashtags.hashtags(_:);
  v52 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterHashtags();
  v53 = *(v52 - 8);
  (*(v53 + 104))(a3, v51, v52);
  (*(v53 + 56))(a3, 0, 1, v52);
  v54 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  return (*(*(v54 - 8) + 8))(v8 + v46, v54);
}

void sub_1003E8514(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v38 = *(v2 - 8);
  __chkstk_darwin(v2);
  v39 = v3;
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100058000(&qword_10076D038, &qword_100630CE0);
  v35 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v5;
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel(0);
  __chkstk_darwin(v9);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_100781AA0);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  sub_1003EFDC4(&qword_10077FDA0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
  v14 = dispatch thunk of CustomStringConvertible.description.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v14;
  *(inited + 56) = v15;
  v16 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Request hashtag labels change {to: %@}", 38, 2, v16);

  v17 = v41;
  sub_1003E1084(v11);
  v18 = *(v11 + *(v9 + 24));
  sub_1003EFED8(v11, type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel);
  v32 = v8;
  sub_1003E7DFC(a1, v18, v8);
  v34 = objc_opt_self();
  v19._countAndFlagsBits = 0xD000000000000023;
  v19._object = 0x8000000100684CC0;
  v20._object = 0x8000000100684CF0;
  v21._countAndFlagsBits = 0xD000000000000037;
  v21._object = 0x8000000100684D10;
  v20._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:value:comment:)(v19, v20, v21);
  v33 = String._bridgeToObjectiveC()();

  v22 = v38;
  v23 = v40;
  (*(v38 + 16))(v40, a1, v2);
  v24 = v37;
  sub_10000794C(v8, v37, &qword_10076D038, &qword_100630CE0);
  v25 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v26 = (v39 + *(v35 + 80) + v25) & ~*(v35 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v17;
  (*(v22 + 32))(v27 + v25, v23, v2);
  sub_100016588(v24, v27 + v26, &qword_10076D038, &qword_100630CE0);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1003EFCE8;
  *(v28 + 24) = v27;
  aBlock[4] = sub_100068444;
  aBlock[5] = v28;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100725E90;
  v29 = _Block_copy(aBlock);

  v30 = v33;
  [v34 withActionName:v33 block:v29];
  _Block_release(v29);

  sub_1000079B4(v32, &qword_10076D038, &qword_100630CE0);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }
}

uint64_t sub_1003E8AD0(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelSelectionCache;
  swift_beginAccess();
  (*(v7 + 16))(v9, &a1[v10], v6);
  sub_1003EFDC4(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
  v11 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  if ((v11 & 1) == 0)
  {
    swift_beginAccess();
    (*(v7 + 24))(&a1[v10], a2, v6);
    swift_endAccess();
  }

  v12 = *(a1 + 13);
  v13 = *(a1 + 14);
  sub_10000C36C(a1 + 10, v12);
  return (*(v13 + 64))(a3, v12, v13);
}

void sub_1003E8CA4(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100781C38, &qword_10063D808);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = sub_100058000(&qword_100776A98, &qword_100636ED0);
  __chkstk_darwin(v11 - 8);
  v41 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v35 = &v33 - v14;
  v16 = __chkstk_darwin(v15);
  v18 = &v33 - v17;
  v19 = *(v5 + 16);
  v42 = a1;
  v38 = v19;
  (v19)(&v33 - v17, a1, v4, v16);
  v20 = *(v5 + 56);
  v36 = v5 + 56;
  v37 = v20;
  v20(v18, 0, 1, v4);
  v21 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelsLayoutResult;
  swift_beginAccess();
  v22 = *(v8 + 56);
  sub_10000794C(v18, v10, &qword_100776A98, &qword_100636ED0);
  v39 = v2;
  v40 = v21;
  sub_10000794C(v2 + v21, &v10[v22], &qword_100776A98, &qword_100636ED0);
  v23 = *(v5 + 48);
  if (v23(v10, 1, v4) == 1)
  {
    sub_1000079B4(v18, &qword_100776A98, &qword_100636ED0);
    if (v23(&v10[v22], 1, v4) == 1)
    {
      sub_1000079B4(v10, &qword_100776A98, &qword_100636ED0);
      return;
    }

    goto LABEL_6;
  }

  v24 = v35;
  sub_10000794C(v10, v35, &qword_100776A98, &qword_100636ED0);
  if (v23(&v10[v22], 1, v4) == 1)
  {
    sub_1000079B4(v18, &qword_100776A98, &qword_100636ED0);
    (*(v5 + 8))(v24, v4);
LABEL_6:
    sub_1000079B4(v10, &qword_100781C38, &qword_10063D808);
LABEL_7:
    v25 = v41;
    v38(v41, v42, v4);
    v37(v25, 0, 1, v4);
    v27 = v39;
    v26 = v40;
    swift_beginAccess();
    sub_10000D184(v25, v27 + v26, &qword_100776A98, &qword_100636ED0);
    swift_endAccess();
    v28._object = 0x8000000100670CE0;
    v28._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v28);
    return;
  }

  v29 = &v10[v22];
  v30 = v34;
  (*(v5 + 32))(v34, v29, v4);
  sub_1003EFDC4(&qword_100781C40, &type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult, &protocol conformance descriptor for TTRIHashtagWrappingCollectionView.LayoutResult);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v5 + 8);
  v32(v30, v4);
  sub_1000079B4(v18, &qword_100776A98, &qword_100636ED0);
  v32(v24, v4);
  sub_1000079B4(v10, &qword_100776A98, &qword_100636ED0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_7;
  }
}

double sub_1003E9174(int a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v113) = a3;
  v107 = a2;
  LODWORD(v112) = a1;
  v5 = type metadata accessor for TTRIPopoverAnchor();
  v108 = *(v5 - 8);
  v109 = v5;
  __chkstk_darwin(v5);
  v98 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIReminderListPickerModalPresentationStyle();
  v101 = *(v7 - 8);
  v102 = v7;
  __chkstk_darwin(v7);
  v100 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRReminderListPickerAction();
  v104 = *(v9 - 8);
  v105 = v9;
  __chkstk_darwin(v9);
  v103 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v11 - 8);
  v99 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v93 - v14;
  v15 = type metadata accessor for REMListPickerDataView.PickerMode();
  v110 = *(v15 - 8);
  v111 = v15;
  __chkstk_darwin(v15);
  v114 = (&v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData(0);
  __chkstk_darwin(v17);
  v19 = (&v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = (&v93 - v21);
  __chkstk_darwin(v23);
  v25 = &v93 - v24;
  v26 = type metadata accessor for TTRSmartListFilterEditorViewModel(0);
  v27 = v26 - 8;
  __chkstk_darwin(v26);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v3 + 104);
  v31 = *(v3 + 112);
  sub_10000C36C((v3 + 80), v30);
  v32 = v30;
  v33 = v25;
  v34 = (*(v31 + 8))(v32, v31);
  TTRSmartListFilterEditorViewModel.init(filter:doneAlwaysEnabled:)(v34, (*(v3 + 65) & 1) == 0, v29);
  sub_1003E1994(v29);
  sub_1003E20F8(v29);
  sub_1003EFF40(&v29[*(v27 + 52)], v25, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  sub_1003EFF40(v25, v22, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v36 = 1;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v36 = 2;
LABEL_5:

    v37 = sub_100058000(&qword_100776AA8, &unk_100636EE0);
    sub_1000079B4(v22 + *(v37 + 48), &qword_100776AA0, &qword_100636ED8);
    goto LABEL_7;
  }

  v36 = 0;
LABEL_7:
  if (v112 == 3)
  {
    v38 = v36;
  }

  else
  {
    v38 = v112;
  }

  sub_1003EFF40(v25, v19, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  if (swift_getEnumCaseMultiPayload() < 2)
  {
    v39 = *v19;
    v40 = sub_100058000(&qword_100776AA8, &unk_100636EE0);
    sub_1000079B4(v19 + *(v40 + 48), &qword_100776AA0, &qword_100636ED8);
LABEL_12:
    v41 = REMObjectID.codable.getter();
    goto LABEL_23;
  }

  v42 = *(v3 + 208);
  v43 = *(v3 + 72);
  v115 = 0;
  v44 = [v42 fetchDefaultListRequiringCloudKitAccountWithAccountID:v43 error:&v115];
  v45 = v44;
  if (v115)
  {
    v46 = v115;

    swift_willThrow();
    if (qword_100767250 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_100003E30(v47, qword_100781AA0);

    v48 = v46;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v112 = v29;
      v52 = v51;
      v53 = swift_slowAlloc();
      v94 = v53;
      v95 = swift_slowAlloc();
      v115 = v95;
      *v52 = 138543618;
      *(v52 + 4) = v43;
      *v53 = v43;
      *(v52 + 12) = 2080;
      swift_getErrorValue();
      v96 = v48;
      v54 = v43;
      v55 = Error.rem_errorDescription.getter();
      v57 = sub_100004060(v55, v56, &v115);

      *(v52 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v49, v50, "Error fetching default list for accountID %{public}@ {error: %s}", v52, 0x16u);
      sub_1000079B4(v94, &unk_10076DF80, &qword_10062F730);

      sub_100004758(v95);

      v29 = v112;
    }

    else
    {
    }

    goto LABEL_22;
  }

  if (!v44)
  {
LABEL_22:
    v41 = 0;
    v39 = 0;
    goto LABEL_23;
  }

  v39 = [v44 remObjectID];

  if (v39)
  {
    goto LABEL_12;
  }

  v41 = 0;
LABEL_23:
  sub_1003EA050(v38, v41);

  if ((v113 & 1) == 0 && (*(v108 + 48))(v107, 1, v109) == 1 || !v38)
  {

    sub_1003EFED8(v25, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
    sub_1003EFED8(v29, type metadata accessor for TTRSmartListFilterEditorViewModel);
    return result;
  }

  v112 = v29;
  sub_10000C36C((v4 + 120), *(v4 + 144));
  v58 = REMObjectID.codable.getter();
  v59 = v114;
  *v114 = v58;
  (*(v110 + 104))(v59, enum case for REMListPickerDataView.PickerMode.specificAccount(_:), v111);
  v60 = swift_allocObject();
  swift_weakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = v60;
  *(v61 + 24) = v38;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!Strong || (v63 = [Strong navigationController], Strong, !v63))
  {
    if (qword_100766F58 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100003E30(v69, qword_10076E0D8);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.fault.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v112;
    if (v72)
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Failed to get navigation controller -- Failed to show list picker", v74, 2u);
    }

    (*(v110 + 8))(v114, v111);
    sub_1003EFED8(v33, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
    sub_1003EFED8(v73, type metadata accessor for TTRSmartListFilterEditorViewModel);
    goto LABEL_51;
  }

  v96 = v63;
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64 && (v65 = v64, v66 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(), v65, (v66 & 1) != 0))
  {
    sub_10000794C(v107, v106, &unk_10076FCD0, &unk_1006304D0);
    v67 = 1;
  }

  else
  {
    (*(v108 + 56))(v106, 1, 1, v109);
    v67 = 0;
  }

  v75 = &enum case for TTRReminderListPickerAction.includeFilter(_:);
  if (v38 != 1)
  {
    v75 = &enum case for TTRReminderListPickerAction.excludeFilter(_:);
  }

  (*(v104 + 104))(v103, *v75, v105);
  v97 = v33;
  v113 = v60;
  LODWORD(v107) = v67;
  if (v67)
  {
    v76 = &enum case for TTRIReminderListPickerModalPresentationStyle.popover(_:);
    v77 = v100;
  }

  else
  {
    v77 = v100;
    *v100 = 0;
    v76 = &enum case for TTRIReminderListPickerModalPresentationStyle.formSheet(_:);
  }

  v79 = v101;
  v78 = v102;
  (*(v101 + 104))(v77, *v76, v102);
  type metadata accessor for TTRIReminderListPickerAssembly();
  v80 = v103;
  v81 = static TTRIReminderListPickerAssembly.createViewController(mode:action:store:selectedListID:showingInstructionsForMovingReminders:modalPresentationStyle:)();
  (*(v79 + 8))(v77, v78);
  (*(v104 + 8))(v80, v105);
  swift_getObjectType();
  v82 = swift_allocObject();
  swift_weakInit();
  v83 = swift_allocObject();
  v83[2] = v82;
  v83[3] = sub_1003F0334;
  v83[4] = v61;

  dispatch thunk of TTRIReminderListPickerModuleInterface.completion.setter();

  v84 = v97;
  if (v107)
  {
    v85 = v99;
    sub_10000794C(v106, v99, &unk_10076FCD0, &unk_1006304D0);
    v87 = v108;
    v86 = v109;
    if ((*(v108 + 48))(v85, 1, v109) != 1)
    {
      v89 = v98;
      (*(v87 + 32))(v98, v85, v86);
      UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
      v90 = swift_unknownObjectWeakLoadStrong();
      if (v90)
      {
        v91 = v89;
        v92 = v90;
        [v90 presentViewController:v81 animated:1 completion:0];

        swift_unknownObjectRelease();

        (*(v87 + 8))(v91, v86);
      }

      else
      {

        swift_unknownObjectRelease();

        (*(v87 + 8))(v89, v86);
      }

      sub_1000079B4(v106, &unk_10076FCD0, &unk_1006304D0);
      (*(v110 + 8))(v114, v111);
      sub_1003EFED8(v84, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
      sub_1003EFED8(v112, type metadata accessor for TTRSmartListFilterEditorViewModel);
      goto LABEL_51;
    }

    sub_1000079B4(v85, &unk_10076FCD0, &unk_1006304D0);
  }

  v88 = v96;
  [v96 pushViewController:v81 animated:1];

  swift_unknownObjectRelease();

  sub_1000079B4(v106, &unk_10076FCD0, &unk_1006304D0);
  (*(v110 + 8))(v114, v111);
  sub_1003EFED8(v84, type metadata accessor for TTRSmartListFilterEditorViewModel.ListsData);
  sub_1003EFED8(v112, type metadata accessor for TTRSmartListFilterEditorViewModel);
LABEL_51:

  return result;
}

void sub_1003EA050(char a1, void *a2)
{
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&qword_10076D018, &unk_100630CC0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v16 = aBlock - v14;
  if (a2 && a1)
  {
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10062D420;
    *(v17 + 32) = a2;
    if (a1 == 1)
    {
      *v8 = v17;
      v8[1] = _swiftEmptyArrayStorage;
    }

    else
    {
      *v8 = _swiftEmptyArrayStorage;
      v8[1] = v17;
    }

    (*(v6 + 104))(v8, enum case for REMCustomSmartListFilterDescriptor.FilterLists.lists(_:), v5);
    (*(v6 + 32))(v16, v8, v5);
    (*(v6 + 56))(v16, 0, 1, v5);
    v18 = a2;
  }

  else
  {
    (*(v6 + 56))(aBlock - v14, 1, 1, v5, v15);
  }

  v19 = objc_opt_self();
  v20._countAndFlagsBits = 0xD000000000000025;
  v20._object = 0x8000000100684FF0;
  v21._object = 0x8000000100685020;
  v22._countAndFlagsBits = 0xD000000000000039;
  v22._object = 0x8000000100685040;
  v21._countAndFlagsBits = 0xD000000000000012;
  TTRLocalizedString(_:value:comment:)(v20, v21, v22);
  v23 = String._bridgeToObjectiveC()();

  sub_10000794C(v16, v12, &qword_10076D018, &unk_100630CC0);
  v24 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  sub_100016588(v12, v25 + v24, &qword_10076D018, &unk_100630CC0);
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1003F034C;
  *(v26 + 24) = v25;
  aBlock[4] = sub_100068444;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100726278;
  v27 = _Block_copy(aBlock);

  [v19 withActionName:v23 block:v27];
  _Block_release(v27);

  sub_1000079B4(v16, &qword_10076D018, &unk_100630CC0);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void sub_1003EA4AC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100058000(&unk_10076DF20, &unk_10063BD50);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10000794C(a1, v7, &unk_10076DF20, &unk_10063BD50);
    v8 = type metadata accessor for TTRListOrCustomSmartList();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000079B4(v7, &unk_10076DF20, &unk_10063BD50);
      v10 = 0;
    }

    else
    {
      v11 = TTRListOrCustomSmartList.objectID.getter();
      (*(v9 + 8))(v7, v8);
      v10 = REMObjectID.codable.getter();
    }

    sub_1003EA050(a3, v10);
  }
}

void sub_1003EA640()
{
  v4 = sub_1003EA6E0();
  sub_10000C36C((v0 + 120), *(v0 + 144));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      [v3 presentViewController:v4 animated:1 completion:0];
    }
  }
}

id sub_1003EA6E0()
{
  static TTRLocalizableStrings.Hashtags.addTagAlertTitle.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [objc_opt_self() alertControllerWithTitle:v1 message:0 preferredStyle:1];

  v18 = sub_1003EFC70;
  v19 = v0;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001762CC;
  v17 = &unk_100725D00;
  v3 = _Block_copy(&v14);

  [v2 addTextFieldWithConfigurationHandler:v3];
  _Block_release(v3);
  static TTRLocalizableStrings.Common.alertCancelButton.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = objc_opt_self();
  v6 = [v5 actionWithTitle:v4 style:1 handler:0];

  static TTRLocalizableStrings.Hashtags.addTagAlertAddButton.getter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;

  v10 = String._bridgeToObjectiveC()();

  v18 = sub_1003EFC78;
  v19 = v9;
  v14 = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_1001762CC;
  v17 = &unk_100725DA0;
  v11 = _Block_copy(&v14);

  v12 = [v5 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v2 addAction:v6];
  [v2 addAction:v12];

  return v2;
}

uint64_t sub_1003EA9C8()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076D030, &unk_100633170);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = v0[13];
  v13 = v0[14];
  sub_10000C36C(v0 + 10, v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (!v14)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_1000079B4(v4, &qword_10076D030, &unk_100633170);
  }

  v15 = v14;
  REMCustomSmartListFilterDescriptor.date.getter();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000079B4(v4, &qword_10076D030, &unk_100633170);
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v16 = (*(v6 + 88))(v8, v5);
  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.today(_:))
  {
    return (*(v6 + 8))(v11, v5);
  }

  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:))
  {
    goto LABEL_9;
  }

  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.relativeRange(_:))
  {
    v22 = 4;
    if ((v1[7] & 4) != 0)
    {
      v22 = v1[7] & 0xFFFFFFFFFFFFFFFBLL;
    }

    v1[7] = v22;
    v23._object = 0x8000000100670CE0;
    v23._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v23);
    v24 = *(v6 + 8);
    v24(v11, v5);
    return (v24)(v8, v5);
  }

  else
  {
    if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.beforeDate(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.onDate(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.afterDate(_:))
    {
LABEL_9:
      v18 = *(v6 + 8);
      v18(v8, v5);
      v19 = v1[7];
      if (v19)
      {
        v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
      }

      else
      {
        v20 = 1;
      }

      v1[7] = v20;
      v21._object = 0x8000000100670CE0;
      v21._countAndFlagsBits = 0xD000000000000011;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v21);
      return (v18)(v11, v5);
    }

    if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.any(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:))
    {
      return (*(v6 + 8))(v11, v5);
    }

    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003EAD88()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076D030, &unk_100633170);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = v0[13];
  v13 = v0[14];
  sub_10000C36C(v0 + 10, v12);
  v14 = (*(v13 + 8))(v12, v13);
  if (!v14)
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    return sub_1000079B4(v4, &qword_10076D030, &unk_100633170);
  }

  v15 = v14;
  REMCustomSmartListFilterDescriptor.date.getter();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1000079B4(v4, &qword_10076D030, &unk_100633170);
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v16 = (*(v6 + 88))(v8, v5);
  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.today(_:))
  {
    return (*(v6 + 8))(v11, v5);
  }

  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.dateRange(_:))
  {
    v18 = 2;
    if ((v1[7] & 2) != 0)
    {
      v18 = v1[7] & 0xFFFFFFFFFFFFFFFDLL;
    }

    v1[7] = v18;
    v19._object = 0x8000000100670CE0;
    v19._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v19);
    goto LABEL_16;
  }

  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.relativeRange(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.beforeDate(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.onDate(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.afterDate(_:))
  {
LABEL_16:
    v20 = *(v6 + 8);
    v20(v11, v5);
    return (v20)(v8, v5);
  }

  if (v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.any(_:) || v16 == enum case for REMCustomSmartListFilterDescriptor.FilterDate.noDate(_:))
  {
    return (*(v6 + 8))(v11, v5);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1003EB0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 88) = v14;
  *(v8 + 96) = v15;
  *(v8 + 128) = a8;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 64) = a5;
  *(v8 + 104) = type metadata accessor for MainActor();
  *(v8 + 112) = static MainActor.shared.getter();
  *(v8 + 56) = a4;
  v10 = swift_task_alloc();
  *(v8 + 120) = v10;
  v11 = type metadata accessor for TTRIPrivacyChecker();
  *v10 = v8;
  v10[1] = sub_1003EB1C8;

  return TTRPrivacyChecker.checkAndPromptLocationAccess()(v11, &protocol witness table for TTRIPrivacyChecker);
}

uint64_t sub_1003EB1C8()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003EB304, v1, v0);
}

uint64_t sub_1003EB304()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);

  sub_10000C36C(v2, v2[3]);
  sub_1003EFDC4(&qword_100781C70, type metadata accessor for TTRISmartListFilterEditorPresenter, &unk_10063D758);
  sub_10000B0D8(v1, v0 + 16);
  v3 = swift_allocObject();
  sub_100005FD0((v0 + 16), v3 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v5 = Strong, v6 = [Strong navigationController], v5, v6))
  {
    v7 = *(v0 + 128);
    v8 = static TTRIReminderLocationPickerAssembly.createViewController(filter:store:showsDoneButton:savesOnCommit:delegate:undoManager:save:)();
    swift_unknownObjectRelease();
    [v6 pushViewController:v8 animated:{v7, v3}];
  }

  else
  {
    if (qword_100766F58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003E30(v9, qword_10076E0D8);
    v8 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, v10, "Failed to get navigation controller -- Failed to show location picker", v11, 2u);
    }
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_1003EB548(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5._countAndFlagsBits = 0xD000000000000027;
  v5._object = 0x8000000100684F20;
  v6._object = 0x8000000100684F50;
  v7._countAndFlagsBits = 0xD00000000000003BLL;
  v7._object = 0x8000000100684F70;
  v6._countAndFlagsBits = 0xD000000000000016;
  TTRLocalizedString(_:value:comment:)(v5, v6, v7);
  v8 = String._bridgeToObjectiveC()();

  sub_10000B0D8(a2, v14);
  v9 = swift_allocObject();
  sub_100005FD0(v14, v9 + 16);
  *(v9 + 56) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1003F0274;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100068444;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100726160;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  [v4 withActionName:v8 block:v11];

  _Block_release(v11);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_1003EB738(void *a1)
{
  v2 = sub_100058000(&qword_10076D020, &qword_100633180);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C36C(a1, v5);
  REMCustomSmartListFilterDescriptor.location.getter();
  (*(v6 + 104))(v4, v5, v6);
  return sub_1000079B4(v4, &qword_10076D020, &qword_100633180);
}

void sub_1003EB81C()
{
  v1 = v0;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100781AA0);
  v3 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Filter Editor Done", 18, 2, v3);

  sub_10000C36C(v0 + 15, v0[18]);
  if (qword_100766F58 != -1)
  {
    swift_once();
  }

  sub_100003E30(v2, qword_10076E0D8);
  sub_1003F99F4(0x746544207473694CLL, 0xEB000000006C6961);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];

    if (v6)
    {
      [v6 dismissViewControllerAnimated:1 completion:0];
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = v1[5];
    ObjectType = swift_getObjectType();
    v9 = v1[13];
    v10 = v1[14];
    sub_10000C36C(v1 + 10, v9);
    v11 = (*(v10 + 8))(v9, v10);
    (*(v7 + 8))(v1, &off_100725B50, v11, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

void sub_1003EBA50(uint64_t a1)
{
  v2 = v1;
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_100781AA0);
  v4 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Filter Editor Cancel", 20, 2, v4);

  v5 = v1[13];
  v6 = v1[14];
  sub_10000C36C(v1 + 10, v5);
  if ((*(v6 + 24))(v5, v6))
  {
    static TTRLocalizableStrings.Common.confirmationMessageForDiscardingChanges.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [objc_opt_self() alertControllerWithTitle:0 message:v7 preferredStyle:0];

    static TTRLocalizableStrings.Common.alertDiscardChangesButton.getter();
    v9 = swift_allocObject();
    swift_weakInit();

    v10 = String._bridgeToObjectiveC()();

    v24[4] = sub_1003F06D0;
    v24[5] = v9;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_1001762CC;
    v24[3] = &unk_100726480;
    v11 = _Block_copy(v24);

    v12 = objc_opt_self();
    v13 = [v12 actionWithTitle:v10 style:2 handler:v11];
    _Block_release(v11);

    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v12 actionWithTitle:v14 style:1 handler:0];

    [v8 addAction:v13];
    [v8 addAction:v15];
    UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)();
    sub_10000C36C(v2 + 15, v2[18]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = [Strong navigationController];

      if (v18)
      {
        [v18 presentViewController:v8 animated:1 completion:0];
      }
    }
  }

  else
  {
    sub_10000C36C(v1 + 15, v1[18]);
    if (qword_100766F58 != -1)
    {
      swift_once();
    }

    sub_100003E30(v3, qword_10076E0D8);
    sub_1003F99F4(0x746544207473694CLL, 0xEB000000006C6961);
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      v21 = [v19 navigationController];

      if (v21)
      {
        [v21 dismissViewControllerAnimated:1 completion:0];
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v22 = v2[5];
      ObjectType = swift_getObjectType();
      (*(v22 + 16))(v2, &off_100725B50, ObjectType, v22);

      swift_unknownObjectRelease();
    }
  }
}

double sub_1003EBEAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10000C36C((Strong + 120), *(Strong + 144));
    if (qword_100766F58 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_10076E0D8);
    sub_1003F99F4(0x746544207473694CLL, 0xEB000000006C6961);
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v6 navigationController];

      if (v8)
      {
        [v8 dismissViewControllerAnimated:1 completion:0];
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v4 + 40);
      ObjectType = swift_getObjectType();
      (*(v9 + 16))(v4, &off_100725B50, ObjectType, v9);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1003EC014(uint64_t a1, uint64_t a2)
{
  v3 = sub_100058000(&qword_100775740, &qword_10063D870);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &aBlock[-1] - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 280) = 0;
    v9 = Strong;

    static TTRLocalizableStrings.UndoAction.locationChange.getter();
    v10 = objc_opt_self();
    v11 = String._bridgeToObjectiveC()();

    (*(v4 + 16))(v7, a1, v3);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    (*(v4 + 32))(v13 + v12, v7, v3);
    *(v13 + ((v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1003F00DC;
    *(v14 + 24) = v13;
    aBlock[4] = sub_100068444;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_100726098;
    v15 = _Block_copy(aBlock);

    [v10 withActionName:v11 block:v15];

    _Block_release(v15);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1003EC2D0(uint64_t a1, void *a2)
{
  v4 = sub_100058000(&qword_10076D020, &qword_100633180);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLocation();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v39 - v12);
  v14 = sub_100058000(&qword_100775740, &qword_10063D870);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v39 - v17);
  (*(v15 + 16))(&v39 - v17, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 == enum case for Either.left<A, B>(_:))
  {
    (*(v15 + 96))(v18, v14);
    v20 = *v18;
    v21 = [*v18 structuredLocation];
    v22 = [v21 displayName];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    [v21 latitude];
    v30 = v29;
    [v21 longitude];
    v32 = v31;
    [v21 radius];
    v34 = v33;
    v35 = [v20 proximity];
    *v13 = v24;
    v13[1] = v26;
    v13[2] = v30;
    v13[3] = v32;
    v13[4] = v34;
    v13[5] = v35;
    (*(v8 + 104))(v13, enum case for REMCustomSmartListFilterDescriptor.FilterLocation.location(_:), v7);
    v36 = a2[13];
    v37 = a2[14];
    sub_10000C36C(a2 + 10, v36);
    (*(v8 + 16))(v6, v13, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v37 + 104))(v6, v36, v37);

    goto LABEL_8;
  }

  if (v19 == enum case for Either.right<A, B>(_:))
  {
    (*(v15 + 96))(v18, v14);
    v21 = *v18;
    *v10 = [*v18 event];
    (*(v8 + 104))(v10, enum case for REMCustomSmartListFilterDescriptor.FilterLocation.vehicle(_:), v7);
    v27 = a2[13];
    v28 = a2[14];
    sub_10000C36C(a2 + 10, v27);
    (*(v8 + 16))(v6, v10, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v28 + 104))(v6, v27, v28);
    v13 = v10;
LABEL_8:

    sub_1000079B4(v6, &qword_10076D020, &qword_100633180);
    return (*(v8 + 8))(v13, v7);
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_1003EC77C(BOOL *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4._object = 0x8000000100670CE0;
    v4._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v4);
  }

  *a2 = Strong == 0;
}

uint64_t sub_1003EC810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1003EC8A8, v6, v5);
}

uint64_t sub_1003EC8A8()
{
  v1 = sub_10000C36C((*(v0 + 48) + 168), *(*(v0 + 48) + 192));
  v2 = *v1;
  *(v0 + 80) = *v1;

  return _swift_task_switch(sub_1003EC91C, v2, 0);
}

uint64_t sub_1003EC91C()
{
  v1 = *(v0 + 80);
  if (*(v1 + 160))
  {
    *(v0 + 114) = *(v1 + 168) & 1;
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);

    return _swift_task_switch(sub_1003ECD74, v2, v3);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_1003EC9F8;

    return sub_1005B4E80();
  }
}

uint64_t sub_1003EC9F8(uint64_t a1, __int16 a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = *(v6 + 64);
    v8 = *(v6 + 72);
    v9 = sub_1003ECBAC;
  }

  else
  {
    v7 = *(v6 + 80);
    *(v6 + 112) = a2;
    *(v6 + 104) = a1;
    v9 = sub_1003ECB3C;
    v8 = 0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1003ECB3C()
{

  *(v0 + 114) = *(v0 + 112) & 1;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1003ECD74, v1, v2);
}

uint64_t sub_1003ECBAC()
{
  v12 = v0;

  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100781AA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get iCloud device info %s", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003ECD74()
{
  v1 = *(v0 + 114);
  v2 = *(v0 + 48);

  if (v1 != *(v2 + 64))
  {
    *(v2 + 64) = *(v0 + 114);
    v3._object = 0x8000000100670CE0;
    v3._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_1003ECE10()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-1] - v3;
  v5 = v0[13];
  v6 = v0[14];
  sub_10000C36C(v0 + 10, v5);
  if (((*(v6 + 32))(v5, v6) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    v7 = v0[5];
    ObjectType = swift_getObjectType();
    v23 = (*(v7 + 24))(v0, &off_100725B50, ObjectType, v7);
    swift_unknownObjectRelease();
    v9 = v0[13];
    v10 = v0[14];
    sub_10000C36C(v0 + 10, v9);
    v11 = (*(v10 + 8))(v9, v10);
    if (v11)
    {
      v12 = v11;
      sub_10000B0D8((v0 + 28), v24);
      v13 = v25;
      v14 = v26;
      sub_10000C36C(v24, v25);
      v15 = REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter();
      v16 = (*(v14 + 8))(v23, v15, v13, v14);
      sub_100004758(v24);
      if (v16)
      {
      }

      else
      {
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
        type metadata accessor for MainActor();

        v19 = v23;
        v20 = v12;
        v21 = static MainActor.shared.getter();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = &protocol witness table for MainActor;
        v22[4] = v1;
        v22[5] = v19;
        v22[6] = v20;
        sub_10009E31C(0, 0, v4, &unk_10063D7E0, v22);
      }
    }

    else
    {
      v17 = v23;
    }
  }
}

uint64_t sub_1003ED0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  sub_100058000(&qword_100776A40, &unk_100636E90);
  v6[14] = swift_task_alloc();
  sub_100058000(&qword_100776A48, qword_100638FE0);
  v6[15] = swift_task_alloc();
  v7 = type metadata accessor for TTRHelpAnchor();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[20] = v9;
  v6[21] = v8;

  return _swift_task_switch(sub_1003ED228, v9, v8);
}

uint64_t sub_1003ED228()
{
  v1 = sub_10000C36C((*(v0 + 88) + 168), *(*(v0 + 88) + 192));
  v2 = *v1;
  *(v0 + 176) = *v1;

  return _swift_task_switch(sub_1003ED29C, v2, 0);
}

uint64_t sub_1003ED29C()
{
  v1 = *(v0 + 176);
  if (*(v1 + 160))
  {
    *(v0 + 268) = *(v1 + 168);
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);

    return _swift_task_switch(sub_1003ED7CC, v2, v3);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_1003ED374;

    return sub_1005B4E80();
  }
}

uint64_t sub_1003ED374(uint64_t a1, __int16 a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = *(v6 + 160);
    v8 = *(v6 + 168);
    v9 = sub_1003ED5EC;
  }

  else
  {
    v7 = *(v6 + 176);
    *(v6 + 264) = a2;
    *(v6 + 200) = a1;
    v9 = sub_1003ED4B8;
    v8 = 0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1003ED4B8()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_1003ED51C, v1, v2);
}

uint64_t sub_1003ED51C()
{
  if (*(v0 + 264))
  {
    v1 = sub_10000C36C((*(v0 + 88) + 168), *(*(v0 + 88) + 192));
    v2 = *v1;
    *(v0 + 208) = *v1;

    return _swift_task_switch(sub_1003ED89C, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1003ED5EC()
{
  v12 = v0;

  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100781AA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get iCloud device info %s", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003ED7CC()
{
  if (*(v0 + 268))
  {
    v1 = sub_10000C36C((*(v0 + 88) + 168), *(*(v0 + 88) + 192));
    v2 = *v1;
    *(v0 + 208) = *v1;

    return _swift_task_switch(sub_1003ED89C, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1003ED89C()
{
  v1 = *(v0[26] + 160);
  if (v1)
  {
    v0[29] = v1;
    v2 = v0[20];
    v3 = v0[21];

    return _swift_task_switch(sub_1003EDC94, v2, v3);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v4[1] = sub_1003ED98C;

    return sub_1005B4E80();
  }
}

uint64_t sub_1003ED98C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1003EDAB4;
  }

  else
  {
    v4[29] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1003EDC94;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1003EDAB4()
{
  v12 = v0;

  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100781AA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get iCloud device info %s", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_1003EDC94()
{
  v1 = 0;
  v2 = *(v0 + 232);
  v3 = *(v2 + 16);
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = v2 + 25 + 24 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = (v5 + 24);
    ++v1;
    v7 = *(v5 + 23);
    v5 += 24;
    if ((v7 & 1) == 0)
    {
      v23 = *(v6 - 17);
      v8 = *(v6 - 9);
      v9 = *v6;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100548310(0, v4[2] + 1, 1, v4);
      }

      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        v4 = sub_100548310((v10 > 1), v11 + 1, 1, v4);
      }

      v4[2] = v11 + 1;
      v12 = &v4[3 * v11];
      v12[4] = v23;
      v12[5] = v8;
      *(v12 + 48) = v9 ^ 1;
      goto LABEL_2;
    }
  }

  v13 = *(v0 + 88);

  v14._countAndFlagsBits = 0xD000000000000023;
  v14._object = 0x8000000100684BF0;
  v15._object = 0x8000000100684C20;
  v16._countAndFlagsBits = 0xD00000000000003BLL;
  v16._object = 0x8000000100684C50;
  v15._countAndFlagsBits = 0xD000000000000021;
  TTRLocalizedString(_:value:comment:)(v14, v15, v16);
  v17 = sub_1003E0E84(v4);

  _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO05smartE21HiddenInformativeText7devicesSSSaySS4name_Sb15cannotBeUpdatedtG_tFZ_0(v17);

  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];
  *(v0 + 240) = v20;

  sub_10000C36C((v13 + 120), *(v13 + 144));
  sub_100058000(&qword_10076B260, &unk_10062F6F0);
  sub_100058000(&unk_100775890, &qword_10063B690);
  v21 = swift_allocObject();
  *(v0 + 248) = v21;
  *(v21 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Common.alertOKButton.getter();
  *(v0 + 266) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.learnMoreButton.getter();
  *(v0 + 267) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v22 = swift_task_alloc();
  *(v0 + 256) = v22;
  *v22 = v0;
  v22[1] = sub_1003EE030;

  sub_1001DFFD4(v20, v21);
}

uint64_t sub_1003EE030(char a1)
{
  v2 = *v1;
  *(*v1 + 269) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return _swift_task_switch(sub_1003EE17C, v4, v3);
}

uint64_t sub_1003EE17C()
{
  v1 = *(v0 + 269);

  if (v1 != 2 && (*(v0 + 269) & 1) != 0)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);
    sub_10000C36C((*(v0 + 88) + 120), *(*(v0 + 88) + 144));
    static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter();
    TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)();
    v7 = type metadata accessor for TTRHelpAnchor.IOSHelpTopic();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    TTRHelpAnchor.MacOSHelpAnchor.init(helpAnchor:)();
    v8 = type metadata accessor for TTRHelpAnchor.MacOSHelpAnchor();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)();
    sub_10013F1E4(v2);
    (*(v3 + 8))(v2, v5);
  }

  v9 = *(v0 + 240);
  v10 = *(v0 + 96);
  sub_10000B0D8(*(v0 + 88) + 224, v0 + 16);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  sub_10000C36C((v0 + 16), v11);
  v13 = REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter();
  (*(v12 + 16))(v10, v13, v11, v12);

  sub_100004758((v0 + 16));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1003EE3C8()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);

  sub_100004758((v0 + 80));
  sub_100004758((v0 + 120));

  sub_100004758((v0 + 168));

  sub_100004758((v0 + 224));
  swift_unknownObjectRelease();

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelsLayoutResult, &qword_100776A98, &qword_100636ED0);
  v1 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelSelectionCache;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1003EE4B0()
{
  sub_1003EE3C8();

  return swift_deallocClassInstance();
}

void sub_1003EE530(uint64_t a1, __n128 a2)
{
  sub_1003EE660(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for REMHashtagLabelSpecifier();
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003EE660(uint64_t a1, __n128 a2)
{
  if (!qword_100781B08)
  {
    type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &qword_100781B08);
    }
  }
}

void sub_1003EE6B8(void *a1, uint64_t a2)
{
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v3 = static UIFont.roundedBodyFont.getter();
  [a1 setFont:v3];

  v4 = [objc_opt_self() labelColor];
  [a1 setTextColor:v4];

  [a1 setAdjustsFontForContentSizeCategory:1];
  [a1 setAdjustsFontSizeToFitWidth:1];
  [a1 setMinimumFontSize:14.0];
  [a1 setClearButtonMode:1];
  [a1 setBorderStyle:0];
  [a1 setAutocapitalizationType:1];
  [a1 setKeyboardType:0];
  static TTRLocalizableStrings.Hashtags.addTagPromptPlaceholder.getter();
  v5 = String._bridgeToObjectiveC()();

  [a1 setPlaceholder:v5];

  sub_100003540(0, &qword_10076BA60, UIAction_ptr);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [a1 addAction:v7 forControlEvents:{0x20000, 0, 0, 0, sub_1003EFE0C, v6}];
}

void sub_1003EE8D0(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ([a1 sender])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (*(&v12 + 1))
    {
      sub_100003540(0, &qword_100771E60, UITextField_ptr);
      if (swift_dynamicCast())
      {
        v3 = [v10 markedTextRange];
        if (v3)
        {
          v4 = v3;
        }

        else
        {
          v5 = [v10 text];
          if (v5)
          {
            v6 = v5;
            v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v9 = v8;
          }

          else
          {
            v7 = 0;
            v9 = 0xE000000000000000;
          }

          sub_1003EF84C(v7, v9);

          v4 = String._bridgeToObjectiveC()();

          [v10 setText:v4];
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1000079B4(v13, &qword_10076AE40, &qword_10062EE50);
    }
  }
}

void sub_1003EEAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v4 = Strong;
    v5 = [Strong textFields];
    if (!v5)
    {

      return;
    }

    v6 = v5;
    sub_100003540(0, &qword_100771E60, UITextField_ptr);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v8 = *(v7 + 32);
    }

    v9 = v8;

    v10 = [v9 text];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = sub_1003EF84C(v12, v14);
      v17 = v16;

      sub_1003EEC4C(v15, v17);
    }

    else
    {
    }
  }
}

void sub_1003EEC4C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v75 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v73 = (&v64 - v8);
  v9 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v76 = *(v9 - 8);
  v77 = v9;
  __chkstk_darwin(v9);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v64 - v12;
  v13 = type metadata accessor for REMHashtagLabelCollection();
  v78 = *(v13 - 8);
  v79 = v13;
  __chkstk_darwin(v13);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v64 - v17;
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v72 = type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel(0);
  __chkstk_darwin(v72);
  v23 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_100781AA0);
  v25 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Hashtag editor create new tag", 29, 2, v25);

  v26 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v26 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v67 = v5;
    sub_1003E1084(v23);

    REMHashtagLabelCollection.init(labels:)();
    v27._countAndFlagsBits = a1;
    v27._object = a2;
    v28 = REMHashtagLabelCollection.contains(matchOfHashtagName:)(v27);
    v71 = v23;
    if (v28)
    {
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v64 = v4;
      sub_100058000(&unk_100771E10, &qword_100634270);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10062D400;
      *(v31 + 32) = a1;
      *(v31 + 40) = a2;

      REMHashtagLabelCollection.init(labels:)();
      REMHashtagLabelCollection.union(_:)();
      v32 = v78;
      v66 = *(v78 + 8);
      v33 = v79;
      v66(v21, v79);
      (*(v32 + 32))(v21, v15, v33);
      v65 = objc_opt_self();
      v34._countAndFlagsBits = 0x67615420646441;
      v35._countAndFlagsBits = 0xD00000000000001FLL;
      v35._object = 0x8000000100684D70;
      v36._countAndFlagsBits = 0xD000000000000036;
      v36._object = 0x8000000100684D90;
      v34._object = 0xE700000000000000;
      TTRLocalizedString(_:value:comment:)(v35, v34, v36);
      v37 = String._bridgeToObjectiveC()();

      v38 = swift_allocObject();
      v38[2] = v80;
      v38[3] = a1;
      v38[4] = a2;
      v39 = swift_allocObject();
      v69 = sub_1003EFC80;
      *(v39 + 16) = sub_1003EFC80;
      *(v39 + 24) = v38;
      v70 = v38;
      aBlock[4] = sub_100068444;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_100725E18;
      v40 = _Block_copy(aBlock);

      [v65 withActionName:v37 block:v40];
      _Block_release(v40);

      v66(v18, v79);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if (v37)
      {
        __break(1u);
        return;
      }

      v4 = v64;
      v23 = v71;
      v30 = v70;
      v29 = v69;
    }

    v41._countAndFlagsBits = a1;
    v41._object = a2;
    if (REMHashtagLabelCollection.contains(matchOfHashtagName:)(v41))
    {
      v69 = v29;
      v70 = v30;
      sub_100058000(&unk_100771E10, &qword_100634270);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v43 = sub_10000FBDC(inited);
      swift_setDeallocating();
      sub_100007E80(inited + 32);
      v45 = v76;
      v44 = v77;
      v46 = v23;
      v47 = v74;
      (*(v76 + 104))(v74, enum case for REMHashtagLabelSpecifier.Operation.and(_:), v77);
      v48 = v73;
      v49 = v67;
      (*(v67 + 16))(v73, v46 + *(v72 + 20), v4);
      v50 = (*(v49 + 88))(v48, v4);
      v51 = enum case for REMHashtagLabelSpecifier.labels(_:);
      if (v50 == enum case for REMHashtagLabelSpecifier.labels(_:))
      {
        (*(v49 + 96))(v48, v4);
        v52 = v48[1];
        v72 = *v48;
        v53 = sub_100058000(&qword_10076B830, &qword_100630550);
        v54 = *(v45 + 32);
        v55 = v48 + *(v53 + 64);
        v56 = v43;
        v57 = v68;
        v54(v68, v55, v77);
        v49 = v67;
        sub_10057D0C0(v72, v56);
        v59 = v58;
        (*(v76 + 8))(v47, v77);
        v60 = v57;
        v43 = v59;
        v54(v47, v60, v77);
        v45 = v76;
        v44 = v77;
      }

      else
      {
        (*(v49 + 8))(v48, v4);
        v52 = &_swiftEmptySetSingleton;
      }

      v61 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
      v62 = v75;
      *v75 = v43;
      *(v62 + 8) = v52;
      (*(v45 + 16))(v62 + v61, v47, v44);
      (*(v49 + 104))(v62, v51, v4);
      sub_1003E8514(v62);
      (*(v49 + 8))(v62, v4);
      (*(v45 + 8))(v47, v44);
      v23 = v71;
      v30 = v70;
      v29 = v69;
    }

    v63._object = 0x8000000100670CE0;
    v63._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v63);
    (*(v78 + 8))(v21, v79);
    sub_1003EFED8(v23, type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel);
    sub_1000301AC(v29, v30);
  }
}

void sub_1003EF55C()
{
  sub_1003ECE10();
  sub_1003E17E0();
  v0._object = 0x8000000100670CE0;
  v0._countAndFlagsBits = 0xD000000000000011;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v0);
}

void sub_1003EF5A0()
{
  v0._object = 0x8000000100670CE0;
  v0._countAndFlagsBits = 0xD000000000000011;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v0);
}

uint64_t sub_1003EF634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_1003EC810(a1, v4, v5, v6);
}

uint64_t sub_1003EF6E8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_1003EF784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_1003ED0C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003EF84C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0xE000000000000000;
  v23 = 0;
  v24 = 0xE000000000000000;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[0] = a1;
  v22[1] = a2;
  v22[2] = 0;
  v22[3] = v9;

  v10 = String.Iterator.next()();
  if (v10.value._object)
  {
    countAndFlagsBits = v10.value._countAndFlagsBits;
    object = v10.value._object;
    do
    {
      static CharacterSet.hashtagTokenAllowedCharacters.getter();
      v14._countAndFlagsBits = countAndFlagsBits;
      v14._object = object;
      v15 = CharacterSet.containsUnicodeScalars(of:)(v14);
      (*(v5 + 8))(v7, v4);
      if (v15)
      {
        v16._countAndFlagsBits = countAndFlagsBits;
        v16._object = object;
        String.append(_:)(v16);
      }

      v13 = String.Iterator.next()();
      countAndFlagsBits = v13.value._countAndFlagsBits;
      object = v13.value._object;
    }

    while (v13.value._object);
    v17 = v23;
    v8 = v24;
  }

  else
  {
    v17 = 0;
  }

  type metadata accessor for TTRHashtagEditingPresenterCapability();
  v18 = static TTRHashtagEditingPresenterCapability.maxTokenTextCharacterCount.getter();
  sub_1003EF6E8(v18, v17, v8, v19);

  v20 = static String._fromSubstring(_:)();

  return v20;
}

uint64_t sub_1003EFA28(uint64_t a1)
{
  v1 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(result + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_tableDataController);
    if (v6)
    {
      *v4 = 1;
      v7 = result;
      v8 = (*(v2 + 104))(v4, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v1);
      __chkstk_darwin(v8);
      *(&v10 - 2) = v7;
      v9 = v6;
      TTRITableDataController.performBatchUpdates(by:updates:)();

      swift_unknownObjectRelease();
      return (*(v2 + 8))(v4, v1);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003EFBCC()
{
  v1 = *(sub_100058000(&qword_10076D038, &qword_100630CE0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[13];
  v5 = v3[14];
  sub_10000C36C(v3 + 10, v4);
  return (*(v5 + 64))(v0 + v2, v4, v5);
}

uint64_t sub_1003EFC80()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1[13];
  v5 = v1[14];
  sub_10000C36C(v1 + 10, v4);
  return (*(v5 + 48))(v2, v3, v4, v5);
}

uint64_t sub_1003EFCE8()
{
  v1 = *(type metadata accessor for REMHashtagLabelSpecifier() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_100058000(&qword_10076D038, &qword_100630CE0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1003E8AD0(v5, v0 + v2, v6);
}

uint64_t sub_1003EFDC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003EFE14()
{
  v1 = *(sub_100058000(&qword_10076D030, &unk_100633170) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[13];
  v5 = v3[14];
  sub_10000C36C(v3 + 10, v4);
  return (*(v5 + 72))(v0 + v2, v4, v5);
}

uint64_t sub_1003EFED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003EFF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003EFFB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_1003E612C(a1, v4, v5, v7, v6);
}

uint64_t sub_1003F0078(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003F00DC()
{
  v1 = *(sub_100058000(&qword_100775740, &qword_10063D870) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003EC2D0(v0 + v2, v3);
}

uint64_t sub_1003F0174(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA3C;

  return sub_1003EB0E8(a1, v11, v4, v5, v1 + 40, v6, v7, v8);
}

uint64_t sub_1003F0280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_1003E76FC(a1, v4, v5, v6);
}

uint64_t sub_1003F034C()
{
  v1 = *(sub_100058000(&qword_10076D018, &unk_100630CC0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[13];
  v5 = v3[14];
  sub_10000C36C(v3 + 10, v4);
  return (*(v5 + 112))(v0 + v2, v4, v5);
}

uint64_t sub_1003F03FC()
{
  v1 = *(v0 + 16);
  v2 = v1[13];
  v3 = v1[14];
  v4 = *(v0 + 24);
  sub_10000C36C(v1 + 10, v2);
  return (*(v3 + 96))(v4, v2, v3);
}

uint64_t sub_1003F0460(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, __n128))
{
  v5 = *(sub_100058000(a1, a2) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);

  v9 = (a3)(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v7, 1, v9))
  {
    (*(v10 + 8))(v3 + v7, v9);
  }

  return _swift_deallocObject(v3, v7 + v8, v6 | 7);
}

uint64_t sub_1003F0578()
{
  v1 = *(sub_100058000(&qword_10076D028, &unk_100630CD0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[13];
  v5 = v3[14];
  sub_10000C36C(v3 + 10, v4);
  return (*(v5 + 80))(v0 + v2, v4, v5);
}

uint64_t sub_1003F061C()
{
  v1 = *(type metadata accessor for REMCustomSmartListFilterDescriptor.Operation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[13];
  v5 = v3[14];
  sub_10000C36C(v3 + 10, v4);
  return (*(v5 + 56))(v0 + v2, v4, v5);
}

uint64_t *sub_1003F06D8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v5 + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_1003F088C(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v4 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  }

  else
  {
    if (result > 1)
    {
      return result;
    }

    v4 = type metadata accessor for Date();
  }

  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

void *sub_1003F0920(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1003F0A94(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1003EFED8(a1, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1003F0C2C(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1003F0DA0(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1003EFED8(a1, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1003F0F38(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

id sub_1003F1080(uint64_t *a1, id *a2, uint64_t a3)
{
  v100 = a3;
  v107 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v110 = *(v4 - 1);
  v111 = v4;
  __chkstk_darwin(v4);
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v103 = &v89 - v7;
  __chkstk_darwin(v8);
  v90 = &v89 - v9;
  __chkstk_darwin(v10);
  v101 = &v89 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v99 = (&v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v97);
  v109 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for TTRListType.SortingCapability();
  v98 = *(v102 - 8);
  __chkstk_darwin(v102);
  v96 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for TTRRemindersListDefaultListType();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v95 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v17 - 8);
  v94 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v19 - 8);
  v108 = (&v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v105 = type metadata accessor for TTRRemindersListDataModelSourceCountCompleted();
  v21 = *(v105 - 8);
  __chkstk_darwin(v105);
  v93 = &v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v31);
  v34 = &v89 - v33;
  (*(v24 + 104))(v26, enum case for TTRListType.PredefinedSmartListType.all(_:), v23, v32);
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  (*(v24 + 8))(v26, v23);
  v92 = *a2;
  (*(v21 + 104))(v93, enum case for TTRRemindersListDataModelSourceCountCompleted.onWhenShowingCompleted(_:), v105);
  v105 = v28;
  v35 = *(v28 + 16);
  v35(v30, v34, v27);
  type metadata accessor for TTRShowAllRemindersDataModelSource();
  swift_allocObject();
  v36 = v92;
  v37 = TTRShowAllRemindersDataModelSource.init(store:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v38 = v108;
  sub_1001749C4(a2, v108);
  v39 = v94;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v40 = v95;
  (*(v104 + 13))(v95, enum case for TTRRemindersListDefaultListType.any(_:), v106);
  v41 = sub_10007786C(v38, v39, v40, v118);
  v42 = v118[0];
  v43 = v96;
  v104 = v34;
  v106 = v27;
  (v35)(v96, v34, v27, v41);
  v44 = v43;
  (v98)[13](v43, enum case for TTRListType.SortingCapability.notSupported(_:), v102);
  type metadata accessor for TTRShowAllRemindersViewModelSource(0);
  v45 = swift_allocObject();

  v46 = v42;
  v102 = v37;
  v98 = v46;
  v47 = sub_1003F1E40(v37, v46, v44, 0, v45);
  v48 = v108;
  sub_1001749C4(a2, v108);
  sub_10010BCAC(v118, v115);
  v49 = sub_1003F2270(&qword_100781110, type metadata accessor for TTRShowAllRemindersViewModelSource, &unk_100646FD0);
  v50 = v109;
  sub_1001749C4(v48, v109);
  v51 = v97;
  sub_10010BCAC(v115, v50 + *(v97 + 28));
  v52 = (v50 + *(v51 + 32));
  *v52 = v47;
  v52[1] = v49;
  v53 = v115[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v117, v114, &qword_100769608, &unk_1006302F0);
  v55 = *(v114[5] + 8);
  *(v54 + 32) = v114[4];
  *(v54 + 40) = v55;
  sub_10000794C(&v116, v112, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v56 = v53;
  swift_unknownObjectRelease();
  *(v54 + 48) = v113;
  sub_100004758(v112);
  sub_100004758(v114);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v57 = swift_allocObject();
  v58 = sub_1003A86B8(v56, v47, v54, v57);

  sub_10010BD08(v115);
  sub_100174ECC(v48, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v59 = *(v51 + 36);
  v96 = v58;
  *(v50 + v59) = v58;
  v60 = v99;
  sub_100078BBC(v99);
  v97 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v61 = swift_allocObject();
  v62 = v100;
  swift_unknownObjectRetain();
  v63 = sub_1003A56E4(v60, v62, v61);
  v64 = *(v63 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v64 + 112))(ObjectType, v64))
  {
    swift_getObjectType();
    v66 = v90;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v67 = v101;
    (*(v110 + 32))(v101, v66, v111);
  }

  else
  {
    v67 = v101;
    (*(v110 + 104))(v101, enum case for TTRRemindersListLayout.list(_:), v111);
  }

  v68 = sub_1003A4A1C(v67, v63);
  v100 = v69;
  v71 = v70;
  v73 = v72;
  (*(v110 + 8))(v67, v111);
  v101 = swift_getObjectType();
  *(v63 + 24) = *(v73 + 8);
  v108 = v71;
  swift_unknownObjectWeakAssign();
  v74 = *(v63 + 144);
  v75 = swift_getObjectType();
  v76 = *(v74 + 112);

  if (v76(v75, v74))
  {
    swift_getObjectType();
    v77 = v91;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v78 = v103;
    (*(v110 + 32))(v103, v77, v111);
  }

  else
  {
    v78 = v103;
    (*(v110 + 104))(v103, enum case for TTRRemindersListLayout.list(_:), v111);
  }

  v79 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v80 = v68;
  v111 = v80;
  v81 = sub_1003A7DE0(v63, v80, v100, v78, 0, 1, 0, v79);

  v82 = *(v73 + 32);
  v83 = v81;
  v82(v81, &off_100723D78, v101, v73);
  sub_1003F2270(&qword_100770960, type metadata accessor for TTRIRemindersCommonPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_1003F2270(&qword_100781D78, type metadata accessor for TTRShowAllRemindersViewModelSource, &unk_10063AC48);

  v84 = v83;
  dispatch thunk of TTRShowAllRemindersDataModelSource.delegate.setter();

  sub_10056FEB0(v85, &off_10071A9B0);

  *(v96 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v119, v115, &qword_100769600, &qword_10062E0A0);
  v86 = v115[4];
  swift_unknownObjectRelease();
  *(v86 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v115);
  sub_10000794C(&v120, v115, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_1003F2270(&qword_100770970, type metadata accessor for TTRIRemindersCommonPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v115);
  v87 = v107;
  v107[3] = v97;
  v87[4] = &off_1007264A8;

  swift_unknownObjectRelease();
  *v87 = v63;
  (*(v105 + 8))(v104, v106);
  sub_100174ECC(v109, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v118);
  return v84;
}

id TTRIShowAllRemindersAssembly.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIShowAllRemindersAssembly();
  return objc_msgSendSuper2(&v3, "init");
}

id TTRIShowAllRemindersAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowAllRemindersAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003F1E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v39 = a3;
  v40 = v10;
  v41 = type metadata accessor for REMAnalyticsEvent();
  v11 = *(v41 - 8);
  __chkstk_darwin(v41);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v38 = type metadata accessor for TTRListType.SortingCapability();
  v17 = *(v38 - 8);
  v18 = __chkstk_darwin(v38);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource____lazy_storage___dragAndDropUtils) = 0;
  v21 = a5 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_completedRemindersCount;
  *v21 = 0;
  v21[8] = 1;
  *(a5 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance) = 0;
  v22 = (a5 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_allRemindersDataModelSource);
  *v22 = a1;
  v22[1] = &protocol witness table for TTRShowAllRemindersDataModelSource;
  *(a5 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_hasDefaultNewReminderButton) = a4;
  (*(v17 + 16))(v20, a3, v18);

  v24 = sub_1003A649C(v23, a2, v20, a5);

  sub_100310D74(v16);
  v25 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v25 - 8) + 56))(v16, 0, 1, v25);
  sub_10056F540(v16);
  sub_10010BE6C(v16);
  type metadata accessor for TTRUserDefaults();
  v26 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v27 = sub_100058000(&qword_100770980, &unk_1006339B0);
  v28 = &v13[*(v27 + 48)];
  v29 = &v13[*(v27 + 80)];
  v30 = enum case for REMRemindersOpenUserOperation.SmartListType.all(_:);
  v31 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v31 - 8) + 104))(v13, v30, v31);
  v32 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v33 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v33 - 8) + 104))(v13, v32, v33);
  *v28 = TTRUserDefaults.activitySessionId.getter();
  v28[1] = v34;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v29 = _typeName(_:qualified:)();
  v29[1] = v35;
  v36 = v41;
  (*(v11 + 104))(v13, enum case for REMAnalyticsEvent.openListUserOperation(_:), v41);
  REMAnalyticsManager.post(event:)();

  (*(v17 + 8))(v39, v38);
  (*(v11 + 8))(v13, v36);
  return v24;
}

uint64_t sub_1003F2270(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003F2358@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  swift_beginAccess();
  return sub_1001885B8(v3 + v4, a2);
}

uint64_t sub_1003F2420(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007708D8, &qword_100633D90);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1001885B8(a1, &v6 - v3);
  return sub_1001871BC(v4);
}

uint64_t sub_1003F24F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1003F25E8(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_100187550(v5);
}

void sub_1003F2704(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

double sub_1003F27E0@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels);

  return result;
}

void sub_1003F28C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100781FB0, &qword_100633DC0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_100058000(&qword_1007708D8, &qword_100633D90);
  __chkstk_darwin(v14 - 8);
  v26 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  __chkstk_darwin(v19);
  v21 = &v26 - v20;
  v29 = v3;

  v28 = a1;
  swift_getAtKeyPath();

  v22 = *(v11 + 56);
  sub_1001885B8(v21, v13);
  v27 = a2;
  sub_1001885B8(a2, &v13[v22]);
  v23 = *(v7 + 48);
  if (v23(v13, 1, v6) == 1)
  {
    sub_1000079B4(v21, &qword_1007708D8, &qword_100633D90);
    if (v23(&v13[v22], 1, v6) == 1)
    {
      sub_1000079B4(v13, &qword_1007708D8, &qword_100633D90);
      return;
    }

    goto LABEL_6;
  }

  sub_1001885B8(v13, v18);
  if (v23(&v13[v22], 1, v6) == 1)
  {
    sub_1000079B4(v21, &qword_1007708D8, &qword_100633D90);
    (*(v7 + 8))(v18, v6);
LABEL_6:
    sub_1000079B4(v13, &unk_100781FB0, &qword_100633DC0);
LABEL_7:
    sub_1001885B8(v27, v26);
    v29 = v3;

    swift_setAtReferenceWritableKeyPath();

    return;
  }

  (*(v7 + 32))(v9, &v13[v22], v6);
  sub_1003F93B8(&unk_1007716E0, &type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription, &protocol conformance descriptor for TTRRemindersListViewModel.HashtagSelectionDescription);
  v24 = dispatch thunk of static Equatable.== infix(_:_:)();
  v25 = *(v7 + 8);
  v25(v9, v6);
  sub_1000079B4(v21, &qword_1007708D8, &qword_100633D90);
  v25(v18, v6);
  sub_1000079B4(v13, &qword_1007708D8, &qword_100633D90);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_1003F2CA4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100781D80);
  v1 = sub_100003E30(v0, qword_100781D80);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1003F2D6C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for TTRIMarginProvidingView();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMHashtagLabelSpecifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[qword_100781DA0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[qword_100781DA8] = 0;
  *&v5[qword_100781DB8] = 0;
  v16 = &v5[qword_100781DC0];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  v52 = qword_100781DC8;
  type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  v19 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v20 = *(*(v19 - 8) + 56);
  v20(v17 + v18, 1, 1, v19);
  v20(v17 + v18, 1, 1, v19);
  *(v17 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) = 1;
  static REMHashtagLabelSpecifier.labels(_:)();
  (*(v13 + 32))(v17 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection, v15, v12);
  *(v17 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__ttriIsAccessibilityRunning) = 0;
  *(v17 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__animatesSelectionUpdate_transient) = 0;
  *(v17 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels) = 0;
  ObservationRegistrar.init()();
  *&v5[v52] = v17;
  v21 = qword_100781DD0;
  sub_100058000(&unk_100781F98, &unk_10063DE40);
  swift_allocObject();
  *&v5[v21] = TTRObservationTrackingUpdateHelper.init(loggingPrefix:)();
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v23 = [objc_opt_self() containerBoxViewWithArrangedSubviews:isa];

  v24 = v23;
  [v24 setLayoutMarginsRelativeArrangement:1];
  v25 = v24;
  [v25 setPreservesSuperviewLayoutMargins:0];
  [v25 setHorizontalAlignment:0];
  [v25 setVerticalAlignment:0];
  [v25 setDebugBoundingBoxesEnabled:0];

  *&v5[qword_100781DB0] = v25;
  v60.receiver = v5;
  v60.super_class = ObjectType;
  v26 = v25;
  v27 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v58 = &type metadata for ContentConfigurationForMainStackView;
  v59 = sub_1003F9400();
  v28 = v27;
  UICollectionViewCell.contentConfiguration.setter();
  v29 = [v28 contentView];

  type metadata accessor for MainStackView(0);
  v30 = swift_dynamicCastClass();
  if (!v30)
  {

    if (qword_100767258 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100003E30(v31, qword_100781D80);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "TTRIRemindersListHashtagCollectionCell_collectionView: failed to create MainStackView", v34, 2u);
    }

    v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v29 = v30;
  }

  v35 = v30;
  v36 = v29;
  v37 = *&v28[qword_100781DA8];
  *&v28[qword_100781DA8] = v35;
  v38 = v35;

  (*(v54 + 104))(v53, enum case for TTRIMarginProvidingView.selfView(_:), v55);
  dispatch thunk of TTRIMarginTransferringContainerStackView.marginProvidingView.setter();
  v39 = v38;
  dispatch thunk of TTRIMarginTransferringContainerStackView.marginTransferActionForArrangedSubview.setter();

  v40 = v39;
  [v40 setLayoutMarginsRelativeArrangement:0];
  [v40 setPreservesSuperviewLayoutMargins:1];
  [v40 setAxis:1];
  [v40 setSpacing:0.0];
  [v40 setAlignment:0];
  [v40 setDistribution:0];

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10062D420;
  v42 = v26;
  *(v41 + 32) = v26;
  v43 = Array._bridgeToObjectiveC()().super.isa;

  [v40 setArrangedSubviews:v43];

  v44 = v28;
  [v40 setDelegate:v44];

  [v40 setDebugBoundingBoxesEnabled:0];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRObservationTrackingUpdateHelper.scheduleUpdate.setter();

  v45 = *&v44[qword_100781DC8];
  IsAccessibility = static UIAccessibility.ttriIsAccessibilityRunning.getter();
  v47 = IsAccessibility & 1;
  swift_getKeyPath();
  v57 = v45;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__ttriIsAccessibilityRunning;
  LODWORD(v35) = v45[OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__ttriIsAccessibilityRunning];

  if (v47 != v35)
  {
    if (v47 == v45[v48])
    {
      v45[v48] = IsAccessibility & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v55 = &v51;
      __chkstk_darwin(KeyPath);
      *(&v51 - 2) = v45;
      *(&v51 - 8) = IsAccessibility & 1;
      v57 = v45;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v58 = ObjectType;
  v57 = v44;
  static UIAccessibility.addAccessibilityStatusChangeObserver(_:selector:)();

  sub_100004758(&v57);
  return v44;
}

uint64_t sub_1003F3660@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRIMarginTransferAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIMarginTransferAction.init(edgesToReceiveMargins:redirectedTarget:)();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 documentView];
    TTRIMarginTransferAction.redirectedTarget.setter();
  }

  (*(v5 + 32))(a2, v7, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

double sub_1003F37F4()
{
  sub_10003B788(v0 + qword_100781DA0);

  sub_100113914(*(v0 + qword_100781DC0), *(v0 + qword_100781DC0 + 8), *(v0 + qword_100781DC0 + 16));

  return result;
}

id sub_1003F388C()
{
  ObjectType = swift_getObjectType();
  v5[3] = ObjectType;
  v5[0] = v0;
  v2 = v0;
  static UIAccessibility.removeAccessibilityStatusChangeObserver(_:)();
  sub_100004758(v5);
  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1003F38F0(void *a1)
{
  ObjectType = swift_getObjectType();
  v6[3] = ObjectType;
  v6[0] = a1;
  v3 = a1;
  static UIAccessibility.removeAccessibilityStatusChangeObserver(_:)();
  sub_100004758(v6);
  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

double sub_1003F3958(uint64_t a1)
{
  sub_10003B788(a1 + qword_100781DA0);

  sub_100113914(*(a1 + qword_100781DC0), *(a1 + qword_100781DC0 + 8), *(a1 + qword_100781DC0 + 16));

  return result;
}

uint64_t sub_1003F39FC(char *a1)
{
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for TTRIRemindersListHashtagCollectionCell_collectionView(0);
  objc_msgSendSuper2(&v10, "_bridgedUpdateConfigurationUsingState:", isa);

  v3 = *&a1[qword_100781DC8];
  v4 = UICellConfigurationState.traitCollection.getter();
  v5 = [v4 horizontalSizeClass];

  swift_getKeyPath();
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass;
  v7 = *(v3 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass);

  if ((v5 == 1) != v7)
  {
    if (((v5 == 1) ^ *(v3 + v6)))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v3 + v6) = v5 == 1;
    }
  }

  return sub_1003F3BFC(0);
}

uint64_t sub_1003F3BFC(char a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076B038, &unk_10062F250);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  result = dispatch thunk of TTRIRemindersListIntermediateViewModelObservingCell.viewModelObserver.getter();
  if (result)
  {
    TTRViewModelObserver.localValue.getter();

    v8 = sub_100058000(&unk_10076B040, &qword_100637BB0);
    v9 = (*(*(v8 - 8) + 48))(v6, 1, v8);
    result = sub_1000079B4(v6, &qword_10076B038, &unk_10062F250);
    if (v9 != 1)
    {
      result = TTRObservationTrackingUpdateHelper.hasUpdates.getter();
      if (result)
      {
        v10 = *(v2 + qword_100781DC8);
        swift_getKeyPath();
        v15 = v10;
        sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v11 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__animatesSelectionUpdate_transient;
        v12 = *(v10 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__animatesSelectionUpdate_transient);

        if (v12 == (a1 & 1))
        {
          return sub_1003F4974(v2);
        }

        else
        {
          if (*(v10 + v11) == (a1 & 1))
          {
            *(v10 + v11) = a1 & 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            v14[1] = v14;
            __chkstk_darwin(KeyPath);
            v14[-2] = v10;
            LOBYTE(v14[-1]) = a1 & 1;
            v15 = v10;

            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          result = sub_1003F4974(v2);
          *(v10 + v11) = v12;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003F3EAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a1;
  v12 = v7;
  v8 = a1;
  TTRObservationTrackingUpdateHelper.withUpdateSchedulingDisabled<A>(_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1003F3FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_100058000(&qword_100781FA8, &unk_10063DE50);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  v17 = method lookup function for TTRIRemindersListIntermediateViewModelObservingCell();
  v17(a1, a2);
  sub_100058000(&unk_10076B040, &qword_100637BB0);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  TTRIRemindersListItemIntermediateViewModel.item.getter();
  (*(v8 + 8))(v10, v7);
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1000079B4(v13, &qword_100772140, &qword_10062D9F0);
    v20 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
    return (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  (*(v19 + 8))(v13, v18);
  v22 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v16, 0, 1, v22);
  result = (*(v23 + 88))(v16, v22);
  if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
  {
    return (*(v23 + 8))(v16, v22);
  }

  if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:))
  {
    (*(v23 + 96))(v16, v22);
    v25 = v26;
    v24 = v27;
    (*(v26 + 32))(v6, v16, v27);
    sub_100187FFC(v6);
    return (*(v25 + 8))(v6, v24);
  }

  if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
  {
    return (*(v23 + 8))(v16, v22);
  }

  if (result != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) && result != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) && result != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003F44F4()
{
  result = sub_1004B6498(&off_100712B58);
  qword_100781D98 = result;
  return result;
}

uint64_t sub_1003F451C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F697463656C6573;
  v4 = 0xE90000000000006ELL;
  v5 = 0x800000010066E890;
  if (v2 != 1)
  {
    v3 = 0xD000000000000014;
    v4 = 0x800000010066E890;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x736E6F74747562;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x6F697463656C6573;
  if (*a2 == 1)
  {
    v5 = 0xE90000000000006ELL;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x736E6F74747562;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1003F4620()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1003F46CC(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1003F4764(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003F480C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003F96E8(*a1);
  *a2 = result;
  return result;
}

void sub_1003F483C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE90000000000006ELL;
  v5 = 0x6F697463656C6573;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x800000010066E890;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736E6F74747562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_1003F48A4()
{
  if (qword_100767260 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_1003F4910()
{
  v1 = 0x6F697463656C6573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F74747562;
  }
}

uint64_t sub_1003F4974(uint64_t a1)
{
  TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
  TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
  return TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
}

void sub_1003F4A34(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = *(a2 + qword_100781DC8);
      swift_getKeyPath();
      sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1003F4F44(*(v2 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__animatesSelectionUpdate_transient));
    }

    else
    {
      sub_1003F53D4();
    }
  }

  else
  {
    sub_1003F4B18();
  }
}

void sub_1003F4B18()
{
  v1 = v0;
  v2 = type metadata accessor for TTRHashtagCollectionViewAddTagButtonState();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRHashtagCollectionViewAllTagsButtonState();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v0[qword_100781DC8];
  swift_getKeyPath();
  v36 = v8;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) != 1 || (swift_getKeyPath(), v36 = v8, ObservationRegistrar.access<A, B>(_:keyPath:)(), , !*(v8 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels)))
  {
    v14 = &v0[qword_100781DC0];
    v15 = *&v0[qword_100781DC0];
    if (v15)
    {
      [v15 removeFromSuperview];
      v15 = *v14;
    }

    v16 = *(v14 + 1);
    v17 = *(v14 + 2);
    *(v14 + 1) = 0;
    *(v14 + 2) = 0;
    *v14 = 0;
    goto LABEL_16;
  }

  v9 = &v0[qword_100781DC0];
  v11 = *&v0[qword_100781DC0];
  v10 = *&v0[qword_100781DC0 + 8];
  v12 = *&v0[qword_100781DC0 + 16];
  v31 = *(v8 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels);

  if (v11)
  {
    v32 = v11;
    v33 = v12;
    v13 = v10;
  }

  else
  {
    v32 = sub_1003F5EF0(v1);
    v33 = v18;
    v13 = v19;
  }

  sub_10011395C(v11, v10, v12);
  *v7 = static TTRLocalizableStrings.Hashtags.allTagsText.getter();
  v7[1] = v20;
  (*(v35 + 104))(v7, enum case for TTRHashtagCollectionViewAllTagsButtonState.shown(_:), v5);
  v21 = v34;
  (*(v34 + 104))(v4, enum case for TTRHashtagCollectionViewAddTagButtonState.hidden(_:), v2);
  v30 = v13;
  v22 = [v13 arrangedSubviews];
  if (v22)
  {
    v23 = v22;
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  TTRHashtagCollectionViewPopulator.updateButtons(toShow:allTagsButtonState:addTagButtonState:hashTagButtonFont:reusing:)();

  (*(v21 + 8))(v4, v2);
  (*(v35 + 8))(v7, v5);
  v24 = v32;
  v25 = [v32 superview];
  if (v25)
  {
    v26 = v25;

LABEL_15:
    v28 = v30;

    v15 = *v9;
    v16 = *(v9 + 1);
    v17 = *(v9 + 2);
    *v9 = v24;
    *(v9 + 1) = v28;
    *(v9 + 2) = v33;
LABEL_16:
    sub_100113914(v15, v16, v17);
    return;
  }

  v27 = *&v1[qword_100781DA8];
  if (v27)
  {
    v26 = v27;

    [v26 insertArrangedSubview:v24 atIndex:0];
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1003F4F44(int a1)
{
  v29 = a1;
  v2 = type metadata accessor for TTRHashtagCollectionViewAnimationParams();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v4 = (v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRHashtagCollectionViewDropState();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMHashtagLabelSpecifier();
  v34 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + qword_100781DC8);
  swift_getKeyPath();
  v35 = v11;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) == 1)
  {
    swift_getKeyPath();
    v35 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v11 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels))
    {
      v12 = v1 + qword_100781DC0;
      v13 = *(v1 + qword_100781DC0);
      if (v13)
      {
        v28 = v8;
        v15 = *(v12 + 8);
        v14 = *(v12 + 16);

        v27 = v13;
        v25[1] = v14;
        sub_10011395C(v13, v15, v14);
        v26 = v15;
        v16 = [v15 arrangedSubviews];
        if (v16)
        {
          v17 = v16;
          sub_100003540(0, &qword_10076B020, UIView_ptr);
          v25[0] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v25[0] = _swiftEmptyArrayStorage;
        }

        v18 = v28;
        swift_getKeyPath();
        v35 = v11;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v19 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
        swift_beginAccess();
        (*(v34 + 16))(v10, v11 + v19, v18);
        v21 = v30;
        v20 = v31;
        (*(v30 + 104))(v7, enum case for TTRHashtagCollectionViewDropState.noDrop(_:), v31);
        if (v29)
        {
          *v4 = 0x3FD3333333333333;
          v22 = &enum case for TTRHashtagCollectionViewAnimationParams.animated(_:);
        }

        else
        {
          v22 = &enum case for TTRHashtagCollectionViewAnimationParams.unanimated(_:);
        }

        v24 = v32;
        v23 = v33;
        (*(v32 + 104))(v4, *v22, v33);
        TTRHashtagCollectionViewPopulator.updateSelection(for:hashtagLabels:selection:dropState:animation:)();

        (*(v24 + 8))(v4, v23);
        (*(v21 + 8))(v7, v20);
        (*(v34 + 8))(v10, v28);
      }
    }
  }
}

void sub_1003F53D4()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100781F48, &qword_10063DD28);
  __chkstk_darwin(v2 - 8);
  v74 = &v62 - v3;
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v71 = *(v4 - 8);
  v72 = v4;
  __chkstk_darwin(v4);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70.super.isa = (&v62 - v7);
  v8 = type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100781F70, &unk_10063DDF0);
  v68 = *(v10 - 8);
  v69 = v10;
  __chkstk_darwin(v10);
  v67 = &v62 - v11;
  v12 = sub_100058000(&qword_1007708D8, &qword_100633D90);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + qword_100781DC8);
  swift_getKeyPath();
  v78 = v19;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  swift_beginAccess();
  sub_1001885B8(v19 + v20, v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v63 = v16;
    v64 = v15;
    v25 = (*(v16 + 32))(v18, v14, v15);
    v26 = *(v1 + qword_100781DB8);
    v65 = v1;
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v25 = sub_1003F6290();
      v27 = v25;
    }

    isa = v70.super.isa;
    __chkstk_darwin(v25);
    *(&v62 - 2) = v18;
    __chkstk_darwin(v29);
    *(&v62 - 2) = v18;
    v31 = v30;
    v32 = TTRRemindersListViewModel.HashtagSelectionDescription.attributedPreferredDescription(baseAttributes:emphasizedAttributes:)();
    if (v32)
    {
      v70.super.isa = v32;
      v62 = 2;
    }

    else
    {
      v70.super.isa = sub_1003F675C();
      v62 = 0;
    }

    swift_getKeyPath();
    v77 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = &enum case for TTRIInlineButtonAttachmentTextView.AttachmentReplacementStrategy.replaceWithButton<A>(_:);
    if ((*(v19 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) & 1) == 0)
    {
      swift_getKeyPath();
      v77 = v19;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (!*(v19 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__ttriIsAccessibilityRunning))
      {
        v33 = &enum case for TTRIInlineButtonAttachmentTextView.AttachmentReplacementStrategy.replaceWithText<A>(_:);
      }
    }

    (*(v68 + 104))(v67, *v33, v69);
    TTRIInlineButtonAttachmentTextView.attachmentReplacementStrategy.setter();
    swift_getKeyPath();
    v77 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
    swift_beginAccess();
    v35 = v71;
    v36 = *(v71 + 16);
    v37 = v19 + v34;
    v38 = v72;
    v36(isa, v37, v72);
    v39 = (*(v35 + 88))(isa, v38);
    if (v39 == enum case for REMHashtagLabelSpecifier.labels(_:))
    {
      v40 = v66;
      v36(v66, isa, v38);
      (*(v35 + 96))(v40, v38);

      v41 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
      v42 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
      v43 = *(v42 - 8);
      v44 = (*(v43 + 88))(&v40[v41], v42);
      v1 = v65;
      v45 = v73;
      if (v44 == enum case for REMHashtagLabelSpecifier.Operation.or(_:))
      {
        v46 = &enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:);
LABEL_20:
        v47 = v75;
        v48 = v76;
        (*(v75 + 104))(v73, *v46, v76);
        (*(v35 + 8))(isa, v38);
LABEL_21:
        v49 = v74;
        (*(v47 + 16))(v74, v45, v48);
        v24 = 1;
        (*(v47 + 56))(v49, 0, 1, v48);
        TTRIInlineButtonAttachmentTextView.selectedItem.setter();
        v50 = v70.super.isa;
        TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(v70, 0);
        v51 = [v27 textContainer];
        [v51 setMaximumNumberOfLines:v62];

        (*(v47 + 8))(v45, v48);
        (*(v63 + 8))(v18, v64);
        v52 = *(v1 + qword_100781DB8);
        *(v1 + qword_100781DB8) = v27;
        v22 = v27;

        if (v22)
        {
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v23 = swift_allocObject();
          v24 = 0;
          *(v23 + 1) = xmmword_10062D420;
          v23[4] = v22;
        }

        else
        {
          v23 = _swiftEmptyArrayStorage;
        }

        goto LABEL_24;
      }

      if (v44 == enum case for REMHashtagLabelSpecifier.Operation.and(_:))
      {
        v46 = &enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:);
        goto LABEL_20;
      }

      (*(v43 + 8))(&v66[v41], v42);
    }

    else
    {
      v1 = v65;
      v47 = v75;
      v45 = v73;
      if (v39 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v39 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
      {
        (*(v35 + 8))(isa, v38);
        v48 = v76;
        (*(v47 + 104))(v45, enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:), v76);
        goto LABEL_21;
      }
    }

    if (qword_100767258 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100003E30(v59, qword_100781D80);
    v60 = sub_100008E04(_swiftEmptyArrayStorage);
    v61 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("unknown selection", 17, 2uLL, v60, v61);
    __break(1u);
    return;
  }

  sub_1000079B4(v14, &qword_1007708D8, &qword_100633D90);
  v21 = *(v1 + qword_100781DB8);
  *(v1 + qword_100781DB8) = 0;

  v22 = 0;
  v23 = _swiftEmptyArrayStorage;
  v24 = 1;
LABEL_24:
  v53 = *(v1 + qword_100781DB0);
  v54 = v22;
  v55 = [v53 arrangedSubviews];
  if (v55 && (v56 = v55, sub_100003540(0, &qword_10076B020, UIView_ptr), v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v56, , LOBYTE(v56) = sub_10012671C(v57, v23), , , (v56 & 1) != 0))
  {

    if ((v24 & 1) == 0)
    {
LABEL_27:

      [v53 layoutMargins];
      [v53 setLayoutMargins:7.0];

      return;
    }
  }

  else
  {
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    v58 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setArrangedSubviews:v58];

    if ((v24 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  [v53 layoutMargins];
  [v53 setLayoutMargins:8.0];
}

id sub_1003F5EF0(char *a1)
{
  v2 = type metadata accessor for TTRIHashtagCollectionViewAdaptor.ContainerView();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = objc_allocWithZone(type metadata accessor for HorizontalStackView(0));
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithArrangedSubviews:isa];

  v9 = v8;
  [v9 setAxis:0];
  [v9 setSpacing:8.0];
  [v9 setAlignment:2];
  result = [v9 setDistribution:0];
  v11 = *&a1[qword_100781DA8];
  if (v11)
  {
    v12 = v9;
    [v11 layoutMargins];
    [v12 setLayoutMargins:?];
    [v12 layoutMargins];
    [v12 setLayoutMargins:6.0];
    v13 = v12;
    [v13 setLayoutMarginsRelativeArrangement:1];
    [v13 setPreservesSuperviewLayoutMargins:0];
    [v13 setDebugBoundingBoxesEnabled:0];
    [v13 setDelegate:a1];

    v14 = [objc_allocWithZone(NUIContentScrollView) initWithDocumentView:v13];
    [v14 setHorizontalAlignment:1];
    [v14 setVerticalAlignment:3];
    [v14 setCanScrollDocumentViewVertically:0];
    [v14 setCanScrollDocumentViewHorizontally:1];
    v15 = v14;
    [v15 setShowsHorizontalScrollIndicator:0];
    [v15 setContentInsetAdjustmentBehavior:2];
    [v15 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    [v15 setTtrFocusGroupIdentifier:0];
    *v5 = v13;
    v5[1] = v15;
    (*(v3 + 104))(v5, enum case for TTRIHashtagCollectionViewAdaptor.ContainerView.stack(_:), v2);
    type metadata accessor for TTRIHashtagCollectionViewAdaptor();
    swift_allocObject();
    v16 = v15;
    v17 = a1;
    v18[1] = TTRIHashtagCollectionViewAdaptor.init(target:addTagButtonAction:hashtagButtonAction:buttonFocusDelegate:containerView:)();
    sub_100058000(&qword_100781F68, &qword_10064A2E0);
    swift_allocObject();
    TTRHashtagCollectionViewPopulator.init(adaptor:)();
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003F6290()
{
  v0 = sub_100058000(&qword_100781F48, &qword_10063DD28);
  __chkstk_darwin(v0 - 8);
  v32 = &v21 - v1;
  v2 = type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  sub_100058000(&unk_100792B80, &unk_10063DD60);
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  static UIFont.roundedSubheadlineFont.getter();
  TTRIInlineButtonAttachmentTextView.font.setter();
  sub_100058000(&unk_100781F80, &qword_10063DE30);
  v27 = sub_100058000(&unk_100792B90, &qword_10063DE38);
  v33 = *(v27 - 8);
  v29 = *(v33 + 72);
  v9 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v10 = swift_allocObject();
  v30 = v10;
  *(v10 + 16) = xmmword_10062D3F0;
  v24 = v10 + v9;
  v11 = enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:);
  v28 = v3;
  v12 = *(v3 + 104);
  v12(v8, enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:), v2);
  TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.localizedOptionString.getter();
  v26 = *(v3 + 8);
  v26(v8, v2);
  v21 = v5;
  v12(v5, v11, v2);
  v25 = sub_1003F93B8(&qword_100781F90, &type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions, &protocol conformance descriptor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions);
  v13 = v24;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v23 = enum case for TTRIInlineButtonAttachmentTextView.Option.item<A>(_:);
  v14 = *(v33 + 104);
  v33 += 104;
  v22 = v14;
  v15 = v27;
  v14(v13);
  v16 = enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:);
  v12(v8, enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:), v2);
  TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.localizedOptionString.getter();
  v26(v8, v2);
  v12(v21, v16, v2);
  v17 = v29;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v22(v13 + v17, v23, v15);
  v18 = v31;
  TTRIInlineButtonAttachmentTextView.menuOptions.setter();
  v19 = v32;
  v12(v32, v16, v2);
  (*(v28 + 56))(v19, 0, 1, v2);
  TTRIInlineButtonAttachmentTextView.selectedItem.setter();
  TTRIInlineButtonAttachmentTextView.attachmentToken.setter();
  sub_1003F93B8(&unk_100781F38, type metadata accessor for TTRIRemindersListHashtagCollectionCell_collectionView, &unk_10063DCA8);
  swift_unknownObjectRetain();
  TTRIInlineButtonAttachmentTextView.attachmentDelegate.setter();
  return v18;
}

id sub_1003F675C()
{
  TTRRemindersListViewModel.HashtagSelectionDescription.generic.getter();
  sub_100058000(&unk_100776BD0, &unk_100632860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSFontAttributeName;
  v1 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v2 = NSFontAttributeName;
  *(inited + 40) = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  *(inited + 64) = v1;
  *(inited + 72) = NSForegroundColorAttributeName;
  v3 = objc_opt_self();
  v4 = NSForegroundColorAttributeName;
  v5 = [v3 secondaryLabelColor];
  *(inited + 104) = sub_100003540(0, &qword_100772610, UIColor_ptr);
  *(inited + 80) = v5;
  sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0, &unk_10062D7F0);
  swift_arrayDestroy();
  v6 = objc_allocWithZone(NSAttributedString);
  v7 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1003F93B8(&qword_100778A60, type metadata accessor for Key, &unk_10062D39C);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithString:v7 attributes:isa];

  return v9;
}

void sub_1003F6978(uint64_t a1)
{
  v28 = a1;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v29 = v1;
  v9 = *(v1 + qword_100781DC8);
  swift_getKeyPath();
  v31 = v9;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v9 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) == 1)
  {
    swift_getKeyPath();
    v31 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v9 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels))
    {
      if (*(v29 + qword_100781DC0))
      {
        v26 = *(v29 + qword_100781DC0 + 16);
        swift_getKeyPath();
        v31 = v9;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v27 = v2;
        v10 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
        swift_beginAccess();
        v24 = v8;
        v25 = *(v3 + 16);
        v25(v5, v9 + v10, v27);
        TTRHashtagCollectionViewPopulator.modifySelection(_:forUserSelectedHashtagButton:hashtagLabels:allowsEmptySelection:allowsExcludedSelection:)();

        v11 = *(v3 + 8);
        v11(v5, v27);
        swift_getKeyPath();
        v30 = v9;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v23 = v10;
        v12 = v9 + v10;
        v13 = v27;
        v28 = v3 + 16;
        v25(v5, v12, v27);
        v14 = v24;
        sub_1003F93B8(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        v11(v5, v13);
        if (v15)
        {
          v11(v14, v13);
        }

        else
        {
          swift_getKeyPath();
          v22 = v11;
          v30 = v9;

          ObservationRegistrar.access<A, B>(_:keyPath:)();
          v16 = v22;

          v17 = v25;
          v25(v5, v9 + v23, v13);

          v18 = dispatch thunk of static Equatable.== infix(_:_:)();
          v16(v5, v13);
          if ((v18 & 1) == 0)
          {
            v17(v5, v14, v13);

            sub_100187550(v5);
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v20 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
            v21 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
            sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v20);
            (*(*(v21 + 8) + 984))(v14, v20);
            swift_unknownObjectRelease();
          }

          v16(v14, v13);
        }
      }
    }
  }
}

uint64_t sub_1003F6E64(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_1003F6978(v7);

  return sub_1000079B4(v7, &qword_10076AE40, &qword_10062EE50);
}

Class sub_1003F6EE4(void *a1)
{
  v1 = a1;
  v2 = sub_1003F6F54();

  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

char *sub_1003F6F54()
{
  v1 = *(v0 + qword_100781DC0);
  if (v1)
  {
    v12 = sub_100003540(0, &qword_100781F60, NUIContentScrollView_ptr);
    *&v11 = v1;
    v2 = v1;
    v3 = sub_1005470E4(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1005470E4((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    sub_100007DD8(&v11, &v3[32 * v5 + 32]);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = *(v0 + qword_100781DB8);
  if (v6)
  {
    v12 = sub_100058000(&unk_100792B80, &unk_10063DD60);
    *&v11 = v6;
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1005470E4(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_1005470E4((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    sub_100007DD8(&v11, &v3[32 * v9 + 32]);
  }

  if (!*(v3 + 2))
  {

    return 0;
  }

  return v3;
}

uint64_t sub_1003F70DC()
{
  v1 = *(v0 + qword_100781DB8);
  if (v1)
  {
    v2 = v1;
    if (TTRIInlineButtonAttachmentTextView.hasButtonAttachment.getter())
    {
      type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
      v3 = UIView.firstDescendantView<A>(ofType:passing:)();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 accessibilityLabel];

        if (v5)
        {
          v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v6;
        }
      }
    }
  }

  return 0;
}

double sub_1003F7190(void *a1)
{
  v1 = a1;
  IsAccessibility = static UIAccessibility.ttriIsAccessibilityRunning.getter();
  KeyPath = swift_getKeyPath();
  sub_1002A17F4(KeyPath, IsAccessibility & 1);

  return result;
}

uint64_t sub_1003F72A8(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v47 - v7;
  v8 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v57 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100781F48, &qword_10063DD28);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions();
  __chkstk_darwin(v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v20 = a1;
  v22 = v21;
  sub_1000046FC(v20, v61);
  v23 = swift_dynamicCast();
  v24 = *(v22 + 56);
  if (!v23)
  {
    v24(v13, 1, 1, v14);
    return sub_1000079B4(v13, &qword_100781F48, &qword_10063DD28);
  }

  v24(v13, 0, 1, v14);
  (*(v22 + 32))(v19, v13, v14);
  (*(v22 + 16))(v16, v19, v14);
  v25 = (*(v22 + 88))(v16, v14);
  v51 = v19;
  v52 = v22;
  v50 = v14;
  if (v25 == enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:))
  {
    v26 = v5;
    v27 = v3;
    v28 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
  }

  else
  {
    if (v25 != enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v26 = v5;
    v27 = v3;
    v28 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
  }

  v30 = v57;
  (*(v9 + 104))(v57, *v28, v8);
  v53 = v9;
  v31 = *(v58 + qword_100781DC8);
  swift_getKeyPath();
  v56 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel___observationRegistrar;
  v61[0] = v31;
  v55 = sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  v54 = v8;
  v33 = v27;
  v35 = v27 + 16;
  v34 = *(v27 + 16);
  v49 = v35;
  v34(v26, v31 + v32, v2);
  sub_1003F79B8(v26, v30, v59);
  v38 = *(v33 + 8);
  v37 = v33 + 8;
  v36 = v38;
  v38(v26, v2);
  swift_getKeyPath();
  v60 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = v34;
  v34(v26, v31 + v32, v2);
  v39 = v59;
  sub_1003F93B8(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier, &protocol conformance descriptor for REMHashtagLabelSpecifier);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = v38;
  v38(v26, v2);
  if (v40)
  {
    v36(v39, v2);
  }

  else
  {
    swift_getKeyPath();
    v47 = v37;
    v60 = v31;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = v48;
    v48(v26, v31 + v32, v2);

    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    v41(v26, v2);
    if ((v43 & 1) == 0)
    {
      v42(v26, v39, v2);

      sub_100187550(v26);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v46 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v45);
      (*(*(v46 + 8) + 984))(v59, v45);
      v39 = v59;
      swift_unknownObjectRelease();
    }

    v41(v39, v2);
  }

  (*(v53 + 8))(v57, v54);
  return (*(v52 + 8))(v51, v50);
}

void sub_1003F79B8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  v12 = v11;
  if (v11 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v7 + 96))(v10, v6);
    v13 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
    *a3 = *v10;
    v14 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    v15 = *(v14 - 8);
    (*(v15 + 16))(&a3[v13], a2, v14);
    (*(v7 + 104))(a3, v12, v6);
    (*(v15 + 8))(&v10[v13], v14);
  }

  else if (v11 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v11 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    (*(v7 + 104))(a3);
  }

  else
  {
    if (qword_100767258 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003E30(v17, qword_100781D80);
    v18 = sub_100008E04(_swiftEmptyArrayStorage);
    v19 = sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("unknown selection", 17, 2uLL, v18, v19);
    __break(1u);
  }
}

id sub_1003F7C54()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + qword_100781DB8);
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 attributedText];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = objc_allocWithZone(NSMutableAttributedString);
  v11 = v9;
  v12 = [v10 initWithAttributedString:v11];
  v13 = *(v1 + qword_100781DC8);
  swift_getKeyPath();
  v27[1] = v13;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel, &unk_100633CD0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  (*(v3 + 16))(v6, v13 + v14, v2);
  if ((*(v3 + 88))(v6, v2) == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v3 + 96))(v6, v2);
    v15 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
    v16 = NSAttributedString.ttrAccessibilityConvertedToHaveVoiceOverReadableTagList(withIncludedTags:andExcludedTags:)();

    v17 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v16];

    v18 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v18 - 8) + 8))(&v6[v15], v18);
    v12 = v17;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  v19 = sub_1003F70DC();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    sub_1003F93B8(&unk_100781F38, type metadata accessor for TTRIRemindersListHashtagCollectionCell_collectionView, &unk_10063DCA8);
    v23._countAndFlagsBits = v21;
    v23._object = v22;
    v24.super.isa = TTRInlineButtonAttachmentTextViewDelegate.ttrAccessibilityAttributedLabelWith(_:replacementStringForButton:)(v12, v23).super.isa;

    v25 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v24.super.isa];

    v12 = v25;
  }

  else
  {
    v24.super.isa = v11;
  }

  return v12;
}

uint64_t sub_1003F7FF8()
{
  v1 = v0;
  v2 = *(v0 + qword_100781DB8);
  if (v2 && (v3 = v2, v4 = TTRIInlineButtonAttachmentTextView.hasButtonAttachment.getter(), v3, (v4 & 1) != 0))
  {
    v5 = static TTRAccesibility.General.Hint.AnyOrAllMenuHint.getter();
    v7 = v6;
    v8 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_100546970((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[16 * v10];
    *(v11 + 4) = v5;
    *(v11 + 5) = v7;
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_9;
    }
  }

  if (!*(v1 + qword_100781DC0))
  {
    v13 = static TTRAccesibility.Hashtags.GoToHashtagHint.getter();
    v15 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100546970(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = sub_100546970((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    if (*(v8 + 2))
    {
      goto LABEL_10;
    }

LABEL_16:

    return 0;
  }

LABEL_9:
  if (!*(v8 + 2))
  {
    goto LABEL_16;
  }

LABEL_10:
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20, &unk_10062D7E0);
  sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

uint64_t sub_1003F8210()
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  if (*&v0[qword_100781DC0])
  {
    return 0;
  }

  v2 = [v0 window];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  type metadata accessor for TTRIHashtagButton();
  v4 = UIView.firstDescendantView<A>(ofType:passing:)();

  return v4;
}

NSAttributedString sub_1003F829C(NSAttributedString a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v6 = a2;
  v7 = a3;

  return TTRInlineButtonAttachmentTextViewDelegate.ttrAccessibilityAttributedLabelWith(_:replacementStringForButton:)(a1, *&v6);
}

unint64_t sub_1003F8308()
{
  sub_100058000(&unk_100776BD0, &unk_100632860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSFontAttributeName;
  v1 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v2 = NSFontAttributeName;
  *(inited + 40) = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  *(inited + 64) = v1;
  *(inited + 72) = NSForegroundColorAttributeName;
  v3 = objc_opt_self();
  v4 = NSForegroundColorAttributeName;
  v5 = [v3 secondaryLabelColor];
  *(inited + 104) = sub_100003540(0, &qword_100772610, UIColor_ptr);
  *(inited + 80) = v5;
  v6 = sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0, &unk_10062D7F0);
  swift_arrayDestroy();
  return v6;
}

unint64_t sub_1003F845C()
{
  sub_100058000(&unk_100776BD0, &unk_100632860);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = NSFontAttributeName;
  v1 = sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v2 = NSFontAttributeName;
  v3 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  isa = UIFont.withBoldTrait()().super.isa;

  *(inited + 64) = v1;
  *(inited + 40) = isa;
  v5 = sub_100460A28(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_100776BE0, &unk_10062D7F0);
  return v5;
}

char *sub_1003F855C(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_100781E28];
  *v11 = 0;
  v11[8] = 1;
  *&a1[qword_100781E30] = &_swiftEmptyDictionarySingleton;
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a2, a3, a4, a5);
  [v12 setNeverCacheEffectiveLayoutSize:1];
  return v12;
}

char *sub_1003F8610(char *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = &a1[qword_100781E28];
    *v6 = 0;
    v6[8] = 1;
    *&a1[qword_100781E30] = &_swiftEmptyDictionarySingleton;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = &a1[qword_100781E28];
    *v7 = 0;
    v7[8] = 1;
    *&a1[qword_100781E30] = &_swiftEmptyDictionarySingleton;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithArrangedSubviews:", isa);

  [v8 setNeverCacheEffectiveLayoutSize:1];
  return v8;
}

void sub_1003F872C(uint64_t a1)
{
  v1 = a1 + qword_100781E28;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(a1 + qword_100781E30) = &_swiftEmptyDictionarySingleton;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1003F87B4(char *a1, double a2, double a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  if (a1[qword_100781E28 + 8])
  {
    v10 = a5;
    v11 = a1;
    v12 = 0.0;
  }

  else
  {
    v13 = *&a1[qword_100781E28];
    v14 = a5;
    v15 = a1;
    [v15 layoutMargins];
    v17 = v13 - v16;
    [v15 layoutMargins];
    v12 = v17 - v18;
  }

  if (v12 >= a2)
  {
    v12 = a2;
  }

  v22.receiver = a1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "contentLayoutSizeFittingSize:forArrangedSubview:", a5, v12, a3);
  v20 = v19;

  return v20;
}

double sub_1003F88A0(double a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[qword_100781E28];
  v8 = v2[qword_100781E28 + 8];
  v9 = qword_100781E30;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (*(v10 + 16) && (v11 = sub_1003B3ED4(), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11);
  }

  else
  {
    swift_endAccess();
    v20.receiver = v3;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "effectiveLayoutSizeFittingSize:", a1, a2);
    v13 = v14;
    v16 = v15;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *&v3[v9];
    *&v3[v9] = 0x8000000000000000;
    sub_1001281BC(v13, v16, v7, v8, isUniquelyReferenced_nonNull_native);
    *&v3[v9] = v19;
  }

  swift_endAccess();
  return v13;
}

double sub_1003F89F4(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_1003F88A0(a2, a3);

  return v6;
}

double sub_1003F8A48(void *a1, uint64_t a2, uint64_t a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  objc_msgSendSuper2(&v7, "invalidateInternalStateForInvalidation:", a3);
  if (a3 > 1)
  {
    v6 = qword_100781E30;
    swift_beginAccess();
    *&v4[v6] = &_swiftEmptyDictionarySingleton;
  }

  else
  {
  }

  return result;
}

Swift::Int sub_1003F8AEC(Swift::UInt64 a1, char a2, double a3, double a4)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
  }

  sub_100602B5C(a3, a4);
  return Hasher._finalize()();
}

void sub_1003F8B94(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (*(v1 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *v1;
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  sub_100602B5C(v2, v3);
}

Swift::Int sub_1003F8C1C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }

  sub_100602B5C(v4, v5);
  return Hasher._finalize()();
}

BOOL sub_1003F8CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 16) == *(a2 + 16);
}

id sub_1003F8D84(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1003F8DF4(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithArrangedSubviews:", isa);

  return v6;
}

id sub_1003F8EA0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

unint64_t sub_1003F8F20@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ContentConfigurationForMainStackView;
  result = sub_1003F9400();
  *(a1 + 32) = result;
  return result;
}

void (*sub_1003F8F54(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 24) = &type metadata for ContentConfigurationForMainStackView;
  *(v2 + 32) = sub_1003F9400();
  return sub_10009D584;
}

uint64_t sub_1003F8FCC(uint64_t a1)
{
  sub_10000B0D8(a1, v2);
  sub_100058000(&qword_10077A650, &qword_10063DD30);
  return swift_dynamicCast();
}

double sub_1003F901C(void *a1)
{
  v1 = a1;
  [v1 bounds];
  Width = CGRectGetWidth(v4);

  return Width + 100.0;
}

double destroy for TTRIRemindersListHashtagCollectionCell_collectionView.HashtagSelector(id *a1)
{

  return result;
}

void *sub_1003F90D8(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;
  v6 = v4;

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListHashtagCollectionCell_collectionView.HashtagSelector(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListHashtagCollectionCell_collectionView.HashtagSelector(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t sub_1003F923C()
{
  result = qword_100781F08;
  if (!qword_100781F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781F08);
  }

  return result;
}

unint64_t sub_1003F9294()
{
  result = qword_100781F10;
  if (!qword_100781F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781F10);
  }

  return result;
}

unint64_t sub_1003F92EC()
{
  result = qword_100781F18;
  if (!qword_100781F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781F18);
  }

  return result;
}

id sub_1003F9340()
{
  type metadata accessor for MainStackView(0);
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1003F93B8(&unk_100781FC0, type metadata accessor for MainStackView, &unk_10063DC68);
  return v0;
}

uint64_t sub_1003F93B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1003F9400()
{
  result = qword_100781F50;
  if (!qword_100781F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781F50);
  }

  return result;
}

void sub_1003F9454()
{
  v1 = v0;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_100781DA0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_100781DA8) = 0;
  *(v1 + qword_100781DB8) = 0;
  v6 = (v1 + qword_100781DC0);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v13 = qword_100781DC8;
  type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel(0);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  v9 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v10 = *(*(v9 - 8) + 56);
  v10(v7 + v8, 1, 1, v9);
  v10(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) = 1;
  static REMHashtagLabelSpecifier.labels(_:)();
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection, v5, v2);
  *(v7 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__ttriIsAccessibilityRunning) = 0;
  *(v7 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__animatesSelectionUpdate_transient) = 0;
  *(v7 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels) = 0;
  ObservationRegistrar.init()();
  *(v1 + v13) = v7;
  v11 = qword_100781DD0;
  sub_100058000(&unk_100781F98, &unk_10063DE40);
  swift_allocObject();
  *(v1 + v11) = TTRObservationTrackingUpdateHelper.init(loggingPrefix:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1003F96E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100712B80, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003F9734(uint64_t result, double a2)
{
  v3 = *(v2 + qword_100781DA8);
  if (v3)
  {
    v4 = v3 == result;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if (*(v2 + qword_100781DC0))
    {
      v5 = *(v2 + qword_100781DC0 + 8) + qword_100781E28;
      *v5 = a2;
      *(v5 + 8) = 0;
    }
  }

  return result;
}

void sub_1003F9818(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136446722;
    v10 = StaticString.description.getter();
    v12 = sub_100004060(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = Dictionary.description.getter();
    v15 = v5;
    v16 = sub_100004060(v13, v14, &v20);

    *(v9 + 14) = v16;
    *(v9 + 22) = 2082;
    v17 = Dictionary.description.getter();
    v19 = sub_100004060(v17, v18, &v20);
    v5 = v15;

    *(v9 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v9, 0x20u);
    swift_arrayDestroy();
  }

  if (v5)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

void sub_1003F99F4(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Analytics();
  sub_100058000(&qword_100781FD0, &qword_10063DEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_1003FA088();
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x8000000100685670;
  *(inited + 72) = String._bridgeToObjectiveC()();
  sub_100008F34(inited);
  swift_setDeallocating();
  sub_100058000(&qword_100781FD8, &qword_10063DEC8);
  swift_arrayDestroy();
  static Analytics.postEvent(_:payload:duration:)();

  if (qword_100767268 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_1007A8688);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100004060(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v6, v7, "Dismissing (%s)", v8, 0xCu);
    sub_100004758(v9);
  }
}

void sub_1003F9C58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = type metadata accessor for URL();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Analytics();
  sub_100058000(&qword_100781FD0, &qword_10063DEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062F800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_1003FA088();
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x8000000100685670;
  v23 = a1;
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000001006856A0;
  v24 = a3;
  *(inited + 96) = String._bridgeToObjectiveC()();
  sub_100008F34(inited);
  swift_setDeallocating();
  sub_100058000(&qword_100781FD8, &qword_10063DEC8);
  swift_arrayDestroy();
  static Analytics.postEvent(_:payload:duration:)();

  if (qword_100767268 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_1007A8688);
  v14 = v27;
  (*(v27 + 16))(v11, v26, v9);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = v9;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_100004060(v23, a2, &v28);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100004060(v24, a4, &v28);
    *(v18 + 22) = 2080;
    v19 = URL.absoluteString.getter();
    v21 = v20;
    (*(v14 + 8))(v11, v17);
    v22 = sub_100004060(v19, v21, &v28);

    *(v18 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Navigating (%s) -> (%s) {url:%s}", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v11, v9);
  }
}

unint64_t sub_1003FA088()
{
  result = qword_1007755F0;
  if (!qword_1007755F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1007755F0);
  }

  return result;
}

uint64_t sub_1003FA220()
{
  v1._object = 0x80000001006857D0;
  v2._countAndFlagsBits = 0xD00000000000002ALL;
  v2._object = 0x8000000100685800;
  v1._countAndFlagsBits = 0xD000000000000022;
  v3 = TTRLocalizedString(_:comment:)(v1, v2);
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x8000000100685830;
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x8000000100685860;
  v6 = TTRLocalizedString(_:comment:)(v4, v5);
  v7._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0x8000000100685890;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x80000001006858C0;
  v9 = TTRLocalizedString(_:comment:)(v7, v8);
  if (swift_unknownObjectWeakLoadStrong() && (v10 = sub_100090DDC(v0), swift_unknownObjectRelease(), (v10 & 1) != 0))
  {
    v11 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_100546970((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    *&v11[16 * v13 + 32] = v6;
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  if (swift_unknownObjectWeakLoadStrong() && (v14 = sub_100090FE8(v0), swift_unknownObjectRelease(), (v14 & 1) != 0))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100546970(0, *(v11 + 2) + 1, 1, v11);
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    if (v16 >= v15 >> 1)
    {
      v11 = sub_100546970((v15 > 1), v16 + 1, 1, v11);
    }

    *(v11 + 2) = v16 + 1;
    *&v11[16 * v16 + 32] = v9;
  }

  else
  {
  }

  if (swift_unknownObjectWeakLoadStrong() && (v17 = sub_1000911F0(v0), swift_unknownObjectRelease(), (v17 & 1) != 0))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100546970(0, *(v11 + 2) + 1, 1, v11);
    }

    v19 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v19 >= v18 >> 1)
    {
      v11 = sub_100546970((v18 > 1), v19 + 1, 1, v11);
    }

    *(v11 + 2) = v19 + 1;
    *&v11[16 * v19 + 32] = v3;
  }

  else
  {
  }

  static TTRAccesibility.General.Label.SentenceEnd.getter();
  sub_100058000(&unk_100781F20, &unk_10062D7E0);
  sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
  v20 = BidirectionalCollection<>.joined(separator:)();

  return v20;
}

uint64_t sub_1003FA584()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = sub_100090DDC(v0);
    swift_unknownObjectRelease();
    if (v1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100091390();
        swift_unknownObjectRelease();
      }

      v2._object = 0x8000000100685770;
      v3._countAndFlagsBits = 0xD000000000000033;
      v3._object = 0x8000000100685790;
      v2._countAndFlagsBits = 0xD000000000000013;
      v5 = TTRLocalizedString(_:comment:)(v2, v3);
      countAndFlagsBits = v5._countAndFlagsBits;
      object = v5._object;
      v7 = 1.0;
LABEL_11:
      sub_1003FA8D4(countAndFlagsBits, object, v7);

      return 1;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v9 = sub_100090FE8(v0);
  swift_unknownObjectRelease();
  if (v9)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100092794();
      swift_unknownObjectRelease();
    }

    v10._countAndFlagsBits = 0xD000000000000017;
    v10._object = 0x8000000100685710;
    v11._countAndFlagsBits = 0xD000000000000037;
    v11._object = 0x8000000100685730;
    v12 = TTRLocalizedString(_:comment:)(v10, v11);
    countAndFlagsBits = v12._countAndFlagsBits;
    object = v12._object;
    v7 = 1.5;
    goto LABEL_11;
  }

  return 0;
}

id sub_1003FA86C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIGroupMembershipCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003FA8D4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTime();
  v24 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  sub_1000A96A0();
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v12 + 8);
  v23(v14, v11);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  aBlock[4] = sub_10039B328;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_1007266C0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001A4CC();
  sub_100058000(&qword_100780A50, &qword_100635D30);
  sub_10000E188(&qword_10076B7E0, &qword_100780A50, &qword_100635D30, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v27 + 8))(v7, v5);
  (*(v25 + 8))(v10, v26);
  return (v23)(v17, v24);
}

uint64_t sub_1003FAC7C()
{
  sub_10003B788(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1003FACE0(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v132 = a6;
  v122 = a5;
  v121 = a4;
  v123 = a3;
  v140 = a7;
  v120 = type metadata accessor for TTRICollectionViewItemHit();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for TTRICollectionViewItemHit.Portion();
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v117 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v125 = &v112 - v12;
  v144 = type metadata accessor for TTRICollectionViewHitTestResult();
  v142 = *(v144 - 8);
  __chkstk_darwin(v144);
  v137 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for TTRICollectionViewHitIndexPaths();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v134 = &v112 - v16;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v127 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v130 = &v112 - v21;
  __chkstk_darwin(v22);
  v129 = &v112 - v23;
  __chkstk_darwin(v24);
  v139 = &v112 - v25;
  v26 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v26 - 8);
  *&v131 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v128 = (&v112 - v29);
  __chkstk_darwin(v30);
  v32 = &v112 - v31;
  __chkstk_darwin(v33);
  v35 = &v112 - v34;
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v39 = &v112 - v38;
  [a2 locationInView:{a1, v37}];
  v41 = v40;
  v43 = v42;
  v44 = v18[7];
  v44(v39, 1, 1, v17);
  v44(v35, 1, 1, v17);
  v45 = swift_allocObject();
  *(v45 + 2) = v39;
  *(v45 + 3) = a1;
  *(v45 + 4) = v41;
  v45[5] = v43;
  v143 = v35;
  *(v45 + 6) = v35;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_100401260;
  *(v46 + 24) = v45;
  aBlock[4] = sub_100026410;
  v146 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100726800;
  v47 = _Block_copy(aBlock);
  v48 = v146;
  v49 = a1;

  [v49 performUsingPresentationValues:v47];
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    __break(1u);
  }

  else
  {
    v138 = v45;
    sub_10000794C(v39, v32, &unk_100771B10, qword_10062E540);
    v50 = v18[6];
    v51 = v39;
    if (v50(v32, 1, v17) == 1)
    {
      sub_1000079B4(v32, &unk_100771B10, qword_10062E540);
      v52 = enum case for TTRICollectionViewEmptySpaceType.others(_:);
      v53 = type metadata accessor for TTRICollectionViewEmptySpaceType();
      v54 = v140;
      (*(*(v53 - 8) + 104))(v140, v52, v53);
      (*(v142 + 104))(v54, enum case for TTRICollectionViewHitTestResult.emptySpace(_:), v144);
LABEL_32:
      sub_1000079B4(v143, &unk_100771B10, qword_10062E540);
      sub_1000079B4(v51, &unk_100771B10, qword_10062E540);

      return;
    }

    v113 = v49;
    v116 = v39;
    v55 = v139;
    v114 = v18[4];
    v114(v139, v32, v17);
    v141 = v17;
    v115 = v18;
    v56 = v18[2];
    v56(v129, v132, v17);
    v56(v130, v55, v141);
    v57 = v143;
    sub_10000794C(v143, v128, &unk_100771B10, qword_10062E540);
    v58 = v134;
    TTRICollectionViewHitIndexPaths.init(inDestination:presentationDestination:dataSourceDestination:)();
    v59 = v135;
    v60 = *(v135 + 16);
    v61 = v136;
    v129 = (v135 + 16);
    v128 = v60;
    v60(v133, v58, v136);
    v62 = v137;
    TTRICollectionViewGapHit.init(indexPaths:)();
    v63 = v142;
    v64 = *(v142 + 104);
    v132 = v142 + 104;
    v130 = v64;
    (v64)(v62, enum case for TTRICollectionViewHitTestResult.gap(_:), v144);
    v65 = v57;
    v66 = *&v131;
    v67 = v141;
    sub_10000794C(v65, *&v131, &unk_100771B10, qword_10062E540);
    if (v50(v66, 1, v67) == 1)
    {
      (*(v59 + 8))(v58, v61);
      (v115[1])(v139, v67);
      sub_1000079B4(v66, &unk_100771B10, qword_10062E540);
      (*(v63 + 32))(v140, v62, v144);
      goto LABEL_31;
    }

    v39 = v127;
    v114(v127, v66, v67);
    v32 = *(v123 + 16);
    v49 = *(v121 + 16);
    v48 = v122;
    v45 = (v122 >> 62);
    if (!(v122 >> 62))
    {
      v68 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }
  }

  v68 = _CocoaArrayWrapper.endIndex.getter();
LABEL_8:
  v51 = v116;
  v69 = v124;
  v70 = v139;
  v71 = v140;
  v72 = &v49[v68];
  if (__OFADD__(v49, v68))
  {
    __break(1u);
  }

  else
  {
    if (!v32)
    {
LABEL_12:
      if (!v49)
      {
        if (!v45)
        {
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

LABEL_17:
          if (v32 == 1)
          {
            type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
            if (static IndexPath.== infix(_:_:)())
            {
              v75 = v115[1];
              v76 = v141;
              v75(v39, v141);
              (*(v135 + 8))(v134, v136);
              v75(v70, v76);
              (*(v142 + 32))(v71, v137, v144);
              goto LABEL_32;
            }
          }

          goto LABEL_20;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_17;
        }
      }

LABEL_20:
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v78 = v113;
      v79 = [v113 cellForItemAtIndexPath:isa];

      if (!v79)
      {
        v91 = v115[1];
        v92 = v141;
        v91(v39, v141);
        v93 = v144;
        (*(v142 + 8))(v137, v144);
        (*(v135 + 8))(v134, v136);
        v91(v70, v92);
        v94 = enum case for TTRICollectionViewEmptySpaceType.others(_:);
        v95 = type metadata accessor for TTRICollectionViewEmptySpaceType();
        (*(*(v95 - 8) + 104))(v71, v94, v95);
        (v130)(v71, enum case for TTRICollectionViewHitTestResult.emptySpace(_:), v93);
        goto LABEL_32;
      }

      [v79 bounds];
      [v78 convertRect:v79 fromCoordinateSpace:?];
      x = v147.origin.x;
      y = v147.origin.y;
      width = v147.size.width;
      height = v147.size.height;
      v84 = CGRectGetHeight(v147) * 0.5;
      v148.origin.x = x;
      v148.origin.y = y;
      v148.size.width = width;
      v148.size.height = height;
      CGRectGetHeight(v148);
      v131 = x;
      v149.origin.x = sub_100068328(x, y, width, height, v84, 0.0);
      v85 = v149.origin.x;
      v86 = v43;
      v87 = v149.origin.y;
      v88 = v149.size.width;
      v89 = v149.size.height;
      if (v86 >= CGRectGetMinY(v149))
      {
        v150.origin.x = v85;
        v150.origin.y = v87;
        v150.size.width = v88;
        v150.size.height = v89;
        v90 = v86;
        if (CGRectGetMaxY(v150) >= v86)
        {
          v96 = &enum case for TTRICollectionViewItemHit.Portion.top(_:);
        }

        else
        {
          v96 = &enum case for TTRICollectionViewItemHit.Portion.bottom(_:);
        }

        (*(v69 + 104))(v125, *v96, v126);
      }

      else
      {
        (*(v69 + 104))(v125, enum case for TTRICollectionViewItemHit.Portion.top(_:), v126);
        v90 = v86;
      }

      v97 = v131;
      v151.origin.x = v131;
      v151.origin.y = y;
      v151.size.width = width;
      v151.size.height = height;
      v98 = CGRectGetHeight(v151) * 0.2;
      v152.origin.x = v97;
      v152.origin.y = y;
      v152.size.width = width;
      v152.size.height = height;
      CGRectGetHeight(v152);
      v153.origin.x = sub_100068328(v97, y, width, height, v98, 0.0);
      v99 = v153.origin.x;
      v100 = v153.origin.y;
      v101 = v153.size.width;
      v102 = v153.size.height;
      if (v90 >= CGRectGetMinY(v153))
      {
        v154.origin.x = v99;
        v154.origin.y = v100;
        v154.size.width = v101;
        v154.size.height = v102;
        CGRectGetMaxY(v154);
      }

      v103 = v134;
      v104 = v136;
      v128(v133, v134, v136);
      v105 = v125;
      v106 = v126;
      (*(v69 + 16))(v117, v125, v126);
      v107 = v118;
      TTRICollectionViewItemHit.init(indexPaths:portion:isCloseToMiddle:)();

      (*(v69 + 8))(v105, v106);
      v108 = v115[1];
      v109 = v141;
      v108(v127, v141);
      v110 = v144;
      (*(v142 + 8))(v137, v144);
      (*(v135 + 8))(v103, v104);
      v108(v139, v109);
      v111 = v140;
      (*(v119 + 32))(v140, v107, v120);
      (v130)(v111, enum case for TTRICollectionViewHitTestResult.item(_:), v110);
LABEL_31:
      v51 = v116;
      goto LABEL_32;
    }

    v73 = __OFADD__(v32, v72);
    v74 = &v72[v32];
    if (!v73)
    {
      if (v74 != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1003FBCB8(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = [a2 indexPathForItemAtPoint:{a4, a5}];
  if (v19)
  {
    v20 = v19;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = type metadata accessor for IndexPath();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  }

  else
  {
    v21 = type metadata accessor for IndexPath();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  sub_1001A6488(v18, a1);
  sub_10000794C(a1, v15, &unk_100771B10, qword_10062E540);
  type metadata accessor for IndexPath();
  v22 = *(v21 - 8);
  isa = 0;
  if ((*(v22 + 48))(v15, 1, v21) != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v22 + 8))(v15, v21);
  }

  v24 = [a2 dataSourceIndexPathForPresentationIndexPath:isa];

  if (v24)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v22 + 56))(v12, v25, 1, v21);
  return sub_1001A6488(v12, a3);
}

uint64_t sub_1003FBF5C@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_1007821E0, &qword_10062DFF8);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v26 - v15;
  v17 = [a2 numberOfSections];
  if (v17 < 1)
  {
    (*(v7 + 56))(a3, 1, 1, v6);
    v19 = enum case for TTRICollectionViewEmptySpaceType.belowAllContents(_:);
    v20 = type metadata accessor for TTRICollectionViewEmptySpaceType();
    v21 = *(*(v20 - 8) + 104);

    return v21(a3, v19, v20);
  }

  else
  {
    sub_1003FC248(a2, (v17 - 1), a1, v16);
    sub_100016588(v16, v12, &qword_1007821E0, &qword_10062DFF8);
    if ((*(v7 + 48))(v12, 1, v6) == 1)
    {
      sub_1000079B4(v12, &qword_1007821E0, &qword_10062DFF8);
      v18 = &enum case for TTRICollectionViewEmptySpaceType.others(_:);
    }

    else
    {
      v23 = *(v7 + 32);
      v23(v9, v12, v6);
      v23(a3, v9, v6);
      (*(v7 + 56))(a3, 0, 1, v6);
      v18 = &enum case for TTRICollectionViewEmptySpaceType.belowAllContents(_:);
    }

    v24 = *v18;
    v25 = type metadata accessor for TTRICollectionViewEmptySpaceType();
    return (*(*(v25 - 8) + 104))(a3, v24, v25);
  }
}

uint64_t sub_1003FC248@<X0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v59 - v12;
  v13 = sub_100058000(&qword_1007821E8, &qword_10063E010);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v60 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = &v59 - v17;
  v18 = sub_100058000(&qword_1007821F0, &qword_10063E018);
  __chkstk_darwin(v18 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v59 - v23;
  v68 = a2;
  result = [a1 numberOfItemsInSection:{a2, v22}];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v59 = v10;
    v61 = v8;
    v62 = v7;
    v66 = a4;
    v70 = 0.0;
    v71 = result;
    __chkstk_darwin(result);
    *(&v59 - 2) = v68;
    *(&v59 - 1) = a1;
    v67 = a1;
    sub_100058000(&qword_1007821F8, &unk_10063E020);
    sub_10000E188(&unk_100782200, &qword_1007821F8, &unk_10063E020, &protocol conformance descriptor for ReversedCollection<A>);
    Sequence.firstMap<A>(_:)();
    sub_10000794C(v24, v20, &qword_1007821F0, &qword_10063E018);
    if ((*(v14 + 48))(v20, 1, v13) == 1)
    {
      v63 = v24;
      sub_1000079B4(v20, &qword_1007821F0, &qword_10063E018);
      v26 = v64;
      IndexPath.init(item:section:)();
      sub_100058000(&unk_100771E10, &qword_100634270);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10062D3F0;
      *(v27 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v27 + 40) = v28;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v27 + 48) = v29;
      *(v27 + 56) = v30;
      v69 = v27;
      __chkstk_darwin(v29);
      *(&v59 - 2) = v67;
      *(&v59 - 1) = v26;
      sub_100058000(&unk_100781F20, &unk_10062D7E0);
      type metadata accessor for CGRect(0);
      sub_10000E188(&qword_10076DB20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
      Sequence.firstMap<A>(_:)();

      if (v74)
      {
        sub_1000079B4(v63, &qword_1007821F0, &qword_10063E018);
        v31 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
        (*(*(v31 - 8) + 56))(v66, 1, 1, v31);
        return (*(v61 + 8))(v26, v62);
      }

      else
      {
        v44 = v70;
        v45 = *&v71;
        v46 = v72;
        v47 = v73;
        [v65 locationInView:v67];
        v49 = v48;
        v76.origin.x = v44;
        v76.origin.y = v45;
        v76.size.width = v46;
        v76.size.height = v47;
        MaxY = CGRectGetMaxY(v76);
        v51 = v66;
        v53 = v61;
        v52 = v62;
        if (MaxY >= v49)
        {
          sub_1000079B4(v63, &qword_1007821F0, &qword_10063E018);
          v58 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
          (*(*(v58 - 8) + 56))(v51, 1, 1, v58);
        }

        else
        {
          (*(v61 + 16))(v59, v26, v62);
          TTRAdjustedIndexPath.init(_:)();
          sub_1000079B4(v63, &qword_1007821F0, &qword_10063E018);
          v54 = enum case for TTRICollectionViewInsertAtIndexPathOption.at(_:);
          v55 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
          v56 = *(v55 - 8);
          (*(v56 + 104))(v51, v54, v55);
          (*(v56 + 56))(v51, 0, 1, v55);
        }

        return (*(v53 + 8))(v26, v52);
      }
    }

    else
    {
      v32 = v63;
      sub_100016588(v20, v63, &qword_1007821E8, &qword_10063E010);
      v33 = (v32 + *(v13 + 48));
      v34 = *v33;
      v35 = v33[1];
      v36 = v33[2];
      v37 = v33[3];
      [v65 locationInView:v67];
      v39 = v38;
      v75.origin.x = v34;
      v75.origin.y = v35;
      v75.size.width = v36;
      v75.size.height = v37;
      if (CGRectGetMaxY(v75) >= v39)
      {
        sub_1000079B4(v32, &qword_1007821E8, &qword_10063E010);
        sub_1000079B4(v24, &qword_1007821F0, &qword_10063E018);
        v57 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
        return (*(*(v57 - 8) + 56))(v66, 1, 1, v57);
      }

      else
      {
        sub_10000794C(v32, v60, &qword_1007821E8, &qword_10063E010);
        v40 = v66;
        TTRUnadjustedIndexPath.init(_:)();
        sub_1000079B4(v32, &qword_1007821E8, &qword_10063E010);
        sub_1000079B4(v24, &qword_1007821F0, &qword_10063E018);
        v41 = enum case for TTRICollectionViewInsertAtIndexPathOption.after(_:);
        v42 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
        v43 = *(v42 - 8);
        (*(v43 + 104))(v40, v41, v42);
        return (*(v43 + 56))(v40, 0, 1, v42);
      }
    }
  }

  return result;
}

uint64_t sub_1003FCA9C@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v11 = [a3 layoutAttributesForItemAtIndexPath:isa];

  if (v11)
  {
    v12 = sub_100058000(&qword_1007821E8, &qword_10063E010);
    v13 = (a4 + *(v12 + 48));
    (*(v7 + 16))(a4, v9, v6);
    [v11 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    (*(v7 + 8))(v9, v6);
    *v13 = v15;
    v13[1] = v17;
    v13[2] = v19;
    v13[3] = v21;
    return (*(*(v12 - 8) + 56))(a4, 0, 1, v12);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v23 = sub_100058000(&qword_1007821E8, &qword_10063E010);
    return (*(*(v23 - 8) + 56))(a4, 1, 1, v23);
  }
}

void sub_1003FCCCC(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 layoutAttributesForSupplementaryElementOfKind:v4 atIndexPath:isa];

  if (v6)
  {
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v6 == 0;
}

void sub_1003FCDB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v101 = a5;
  *&v100 = type metadata accessor for IndexPath();
  v10 = *(v100 - 8);
  __chkstk_darwin(v100);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v96 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v96 - v18;
  v20 = *(v5 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView);
  if ([v20 numberOfItemsInSection:{a4, v17}] >= 1)
  {
    if (a3)
    {
      if (a1 | a2)
      {
        IndexPath.init(item:section:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v22 = [v20 layoutAttributesForItemAtIndexPath:isa];

        v23 = v100;
        if (v22)
        {
          [v22 frame];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          v102.origin.x = v25;
          v102.origin.y = v27;
          v102.size.width = v29;
          v102.size.height = v31;
          MaxY = CGRectGetMaxY(v102);
          type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView();
          static TTRITreeViewMultiRowReorderingDropIndicatorView.preferredHeight.getter();
          v34 = v33;
          v103.origin.x = v25;
          v103.origin.y = v27;
          v103.size.width = v29;
          v103.size.height = v31;
          MinX = CGRectGetMinX(v103);
          v104.origin.x = v25;
          v104.origin.y = v27;
          v104.size.width = v29;
          v104.size.height = v31;
          v105.size.width = CGRectGetWidth(v104);
          v105.size.height = 0.0;
          v105.origin.x = MinX;
          v105.origin.y = MaxY;
          v106 = CGRectInset(v105, 0.0, v34 * -0.5);
          size = v106.size;
          origin = v106.origin;
          v96 = *&v106.size.height;
          v97 = *&v106.origin.y;
          (*(v10 + 8))(v15, v23);
LABEL_14:
          *&v49 = size.width;
          *&v47 = origin.x;
          v48 = 0;
          *&v117.size.height = v96;
          v50 = v97;
          goto LABEL_15;
        }

        (*(v10 + 8))(v15, v100);
      }

      else
      {
        IndexPath.init(item:section:)();
        v80 = IndexPath._bridgeToObjectiveC()().super.isa;
        v81 = [v20 layoutAttributesForItemAtIndexPath:v80];

        v82 = v100;
        if (v81)
        {
          [v81 frame];
          v84 = v83;
          v86 = v85;
          v88 = v87;
          v90 = v89;

          v118.origin.x = v84;
          v118.origin.y = v86;
          v118.size.width = v88;
          v118.size.height = v90;
          MinY = CGRectGetMinY(v118);
          type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView();
          static TTRITreeViewMultiRowReorderingDropIndicatorView.preferredHeight.getter();
          v93 = v92;
          v119.origin.x = v84;
          v119.origin.y = v86;
          v119.size.width = v88;
          v119.size.height = v90;
          v94 = CGRectGetMinX(v119);
          v120.origin.x = v84;
          v120.origin.y = v86;
          v120.size.width = v88;
          v120.size.height = v90;
          v121.size.width = CGRectGetWidth(v120);
          v121.size.height = 0.0;
          v121.origin.x = v94;
          v121.origin.y = MinY;
          v122 = CGRectInset(v121, 0.0, v93 * -0.5);
          size = v122.size;
          origin = v122.origin;
          v96 = *&v122.size.height;
          v97 = *&v122.origin.y;
          (*(v10 + 8))(v19, v82);
          goto LABEL_14;
        }

        (*(v10 + 8))(v19, v100);
      }
    }

    else
    {
      IndexPath.init(item:section:)();
      v51 = IndexPath._bridgeToObjectiveC()().super.isa;
      v52 = *(v10 + 8);
      v53 = v100;
      v52(v12, v100);
      v54 = [v20 layoutAttributesForItemAtIndexPath:v51];

      if (v54)
      {
        [v54 frame];
        v56 = v55;
        v58 = v57;
        v60 = v59;
        v62 = v61;

        IndexPath.init(item:section:)();
        v63 = IndexPath._bridgeToObjectiveC()().super.isa;
        v52(v12, v53);
        v64 = [v20 layoutAttributesForItemAtIndexPath:v63];

        if (v64)
        {
          [v64 frame];
          *&v100 = v65;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v112.origin.x = v56;
          v112.origin.y = v58;
          v112.size.width = v60;
          v112.size.height = v62;
          v72 = v60;
          v73 = v58;
          v74 = v56;
          v75 = CGRectGetMaxY(v112);
          *&v113.origin.x = v100;
          v113.origin.y = v67;
          v113.size.width = v69;
          v113.size.height = v71;
          v76 = (v75 + CGRectGetMinY(v113)) * 0.5;
          type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView();
          static TTRITreeViewMultiRowReorderingDropIndicatorView.preferredHeight.getter();
          v78 = v77;
          v114.origin.x = v74;
          v114.origin.y = v73;
          v114.size.width = v72;
          v114.size.height = v62;
          v79 = CGRectGetMinX(v114);
          v115.origin.x = v74;
          v115.origin.y = v73;
          v115.size.width = v72;
          v115.size.height = v62;
          v116.size.width = CGRectGetWidth(v115);
          v116.size.height = 0.0;
          v116.origin.x = v79;
          v116.origin.y = v76;
          *&v47 = CGRectInset(v116, 0.0, v78 * -0.5);
          v48 = 0;
LABEL_15:
          *(&v49 + 1) = *&v117.size.height;
          goto LABEL_16;
        }
      }
    }

LABEL_19:
    v47 = 0uLL;
    v48 = 1;
    v49 = 0uLL;
    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_19;
  }

  v36 = UICollectionElementKindSectionHeader;
  IndexPath.init(item:section:)();
  v37 = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v12, v100);
  v38 = [v20 layoutAttributesForSupplementaryElementOfKind:v36 atIndexPath:v37];

  if (!v38)
  {
    goto LABEL_19;
  }

  [v38 frame];
  x = v107.origin.x;
  y = v107.origin.y;
  width = v107.size.width;
  height = v107.size.height;
  v43 = CGRectGetMaxY(v107);
  type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView();
  static TTRITreeViewMultiRowReorderingDropIndicatorView.preferredHeight.getter();
  v45 = v44;
  v108.origin.x = x;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  v46 = CGRectGetMinX(v108);
  v109.origin.x = x;
  v109.origin.y = y;
  v109.size.width = width;
  v109.size.height = height;
  v110.size.width = CGRectGetWidth(v109);
  v110.size.height = 0.0;
  v110.origin.x = v46;
  v110.origin.y = v43;
  v111 = CGRectInset(v110, 0.0, v45 * -0.5);
  origin = v111.origin;
  v100 = *&v111.origin.y;
  v97 = *&v111.size.height;
  size = v111.size;

  *&v49 = size.width;
  *&v47 = origin.x;
  v48 = 0;
  *(&v49 + 1) = v97;
  v50 = v100;
LABEL_16:
  *(&v47 + 1) = v50;
LABEL_20:
  v95 = v101;
  *v101 = v47;
  v95[1] = v49;
  *(v95 + 32) = v48;
}

uint64_t type metadata accessor for TTRIBoardColumnDragAndDropController(uint64_t a1)
{
  result = qword_100782100;
  if (!qword_100782100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003FD554(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID();
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

uint64_t sub_1003FD600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003FD698, v7, v6);
}

uint64_t sub_1003FD698()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 48);
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView);

    [v2 locationInView:v4];
    [v4 updateInteractiveMovementTargetPosition:?];
  }

  v5 = *(v0 + 8);

  return v5();
}

id sub_1003FD76C(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B10, qword_10062E540);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000079B4(v4, &unk_100771B10, qword_10062E540);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = *(v1 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [v10 cellForItemAtIndexPath:isa];

    if (v12)
    {
      v13 = [v12 _visiblePathForBackgroundConfiguration];
      if (v13)
      {
        v14 = v13;
        v15 = [objc_allocWithZone(UIPreviewParameters) init];
        [v15 setVisiblePath:v14];
        v16 = [objc_allocWithZone(UITargetedDragPreview) initWithView:v12 parameters:v15];

        v12 = v15;
      }

      else
      {
        v16 = [objc_allocWithZone(UITargetedDragPreview) initWithView:v12];
      }

      (*(v6 + 8))(v8, v5);
      return v16;
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      return 0;
    }
  }
}

void sub_1003FE094(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    v7 = a1;
    a5();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1003FE2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRICollectionViewDragAndDropActivityTracker.dropSessionDidEnter(_:)();
  v10 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
  swift_beginAccess();
  (*(v7 + 16))(v9, a1 + v10, v6);
  type metadata accessor for TTRIRemindersBoardDropContext(0);
  swift_allocObject();
  *(a3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext) = sub_1005E3E10(v9, a2);
  swift_unknownObjectRetain();

  if ((sub_1003FE474(a3, a1) & 1) == 0)
  {
    v11 = *(a3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
    if (v11)
    {
      [v11 removeFromSuperview];
    }
  }

  sub_100074E7C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    UIViewController.endFirstResponderEditing()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003FE474(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  v49 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100769520, &qword_10062DFD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v43 - v7;
  v9 = type metadata accessor for TTRUnadjustedIndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_rootView);
  result = [v48 window];
  if (!result)
  {
    return result;
  }

  v47 = v12;

  v19 = *(a1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext);
  if (!v19)
  {
    return 0;
  }

  v44 = a1;
  v45 = v10;
  v46 = v9;
  v20 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
  v21 = v50;
  swift_beginAccess();
  (*(v14 + 16))(v17, v21 + v20, v13);

  v22 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
  (*(v14 + 8))(v17, v13);
  if ((v22 & 1) == 0)
  {

    return 0;
  }

  v23 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
  swift_beginAccess();
  if ((*(v49 + 48))(v19 + v23, 1, v3))
  {

    (*(v45 + 56))(v8, 1, 1, v46);
LABEL_9:
    sub_1000079B4(v8, &qword_100769520, &qword_10062DFD0);
    return 0;
  }

  sub_100401370(v19 + v23, v5, type metadata accessor for TTRIRemindersBoardDropProposal);
  sub_1005E322C(v8);
  sub_100401310(v5, type metadata accessor for TTRIRemindersBoardDropProposal);
  v25 = v45;
  v24 = v46;
  if ((*(v45 + 48))(v8, 1, v46) == 1)
  {

    goto LABEL_9;
  }

  v26 = v47;
  (*(v25 + 32))(v47, v8, v24);
  v27 = v48;
  sub_1003FE9D8(v48, v50, v51);
  if (v52)
  {

    (*(v25 + 8))(v26, v24);
    return 0;
  }

  v28 = *v51;
  v29 = *&v51[1];
  v30 = *&v51[2];
  v31 = *&v51[3];
  v32 = OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView;
  v33 = v44;
  v34 = *(v44 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
  if (v34)
  {
    v35 = *(v44 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
  }

  else
  {
    v36 = [objc_allocWithZone(type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v37 = *(v33 + v32);
    *(v33 + v32) = v36;
    v35 = v36;

    v34 = 0;
  }

  v38 = v35;
  v39 = v34;
  v40 = [v38 superview];
  v41 = &selRef_addSubview_;
  if (v40)
  {
    v42 = v40;

    if (v42 == v27)
    {
      v41 = &selRef_bringSubviewToFront_;
    }
  }

  [v27 *v41];
  [v38 setFrame:{v28, v29, v30, v31}];

  (*(v25 + 8))(v47, v24);
  return 1;
}

void sub_1003FE9D8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRUnadjustedIndexPath.indexPath.getter();
  v10 = IndexPath.section.getter();
  v11 = *(v7 + 8);
  v11(v9, v6);
  TTRUnadjustedIndexPath.indexPath.getter();
  v12 = IndexPath.item.getter();
  v11(v9, v6);
  if (!v12)
  {
    v13 = 0;
    goto LABEL_5;
  }

  if ([*(a2 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView) numberOfItemsInSection:v10] < v12)
  {
    v12 = 0;
    v13 = 1;
LABEL_5:
    v14 = 1;
    goto LABEL_8;
  }

  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    return;
  }

  v14 = 0;
LABEL_8:
  sub_1003FCDB0(v13, v12, v14, v10, &v21);
  v16 = *(&v21 + 1);
  v15 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  if ((v24 & 1) == 0)
  {
    [*(a2 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView) convertRect:a1 toCoordinateSpace:{v21, v22, v23}];
    v19 = 0;
  }

  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
}

double sub_1003FEB9C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10076FE30, &unk_100632A70);
  __chkstk_darwin(v10 - 8);
  v32 = v30 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
  if (v17)
  {
    [v17 removeFromSuperview];
  }

  (*(v13 + 16))(v16, a3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_coordinatorID, v12, v14);
  v18 = *(a3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext);
  if (v18)
  {
    v30[1] = a3;
    v31 = a2;
    v19 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
    swift_beginAccess();
    (*(v7 + 16))(v9, &a1[v19], v6);

    v20 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
    (*(v7 + 8))(v9, v6);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
      swift_beginAccess();
      v22 = v18 + v21;
      v23 = v32;
      sub_10000794C(v22, v32, &unk_10076FE30, &unk_100632A70);

      a2 = v31;
      goto LABEL_8;
    }

    a2 = v31;
  }

  v24 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  v23 = v32;
  (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
LABEL_8:
  type metadata accessor for TTRIRemindersBoardDropCommitCoordinator(0);
  v25 = swift_allocObject();
  *(v25 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator) = a2;
  (*(v13 + 32))(v25 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dragAndDropCoordinatorID, v16, v12);
  v26 = (v25 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column);
  *v26 = a1;
  v26[1] = &off_1007266F8;
  sub_100016588(v23, v25 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_lastDropProposal, &unk_10076FE30, &unk_100632A70);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  v28 = a1;
  if (Strong)
  {
    sub_100486448(v25);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return result;
}

double sub_1003FEF68(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  v58 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
  __chkstk_darwin(v58);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TTRIRemindersBoardDragItemSources.Source(0);
  v50 = *(v53 - 8);
  __chkstk_darwin(v53);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v16 = *(v15 - 8);
  v54 = v15;
  v55 = v16;
  __chkstk_darwin(v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a6;
  v52 = OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext;
  if (!*(a6 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext) || (*&v51 = a4, v19 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID, swift_beginAccess(), v20 = a1, v21 = v55, v22 = a2 + v19, v23 = v54, (*(v55 + 16))(v18, v22, v54), sub_1001E66F0(), , v24 = dispatch thunk of static Equatable.== infix(_:_:)(), , v25 = v21, a1 = v20, v26 = v23, a4 = v51, (*(v25 + 8))(v18, v26), (v24 & 1) != 0))
  {
    if (qword_100766EA8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100003E30(v28, qword_1007693C8);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v59 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100004060(a3, a4, &v59);
      _os_log_impl(&_mh_execute_header, v29, v30, "TTRIRemindersBoardDragAndDropCoordinator: session ended - %s", v31, 0xCu);
      sub_100004758(v32);
    }

    v33 = v57;
    *(v57 + v52) = 0;

    v34 = *(v33 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
    if (v34)
    {
      [v34 removeFromSuperview];
    }

    sub_100074E7C();
    if (a5)
    {
      sub_100070D88(a1);
      v36 = v35;
      swift_unknownObjectRelease();
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = *(v50 + 80);
        v49 = v36;
        v39 = v36 + ((v38 + 32) & ~v38);
        v40 = *(v50 + 72);
        v41 = v56;
        v52 = v55 + 16;
        v51 = xmmword_10062D400;
        v50 = v40;
        do
        {
          sub_100401370(v39, v14, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v42 = type metadata accessor for TTRIRemindersBoardDragItemSources.Source;
            v43 = v14;
          }

          else
          {
            sub_1004012A8(v14, v41, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
            if (*(v41 + *(v58 + 28)))
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v45 = *(v58 + 24);
                sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
                sub_100058000(&qword_100772760, &unk_100634AE0);
                v46 = v55;
                v47 = (*(v55 + 80) + 32) & ~*(v55 + 80);
                v48 = swift_allocObject();
                *(v48 + 16) = v51;
                (*(v46 + 16))(v48 + v47, &v56[v45], v54);
                v59 = v48;
                type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();

                sub_100058000(&unk_1007821D0, &unk_100631C10);
                v40 = v50;
                sub_10000E188(&unk_100784540, &unk_1007821D0, &unk_100631C10, &protocol conformance descriptor for [A]);
                dispatch thunk of TTRRemindersBoardItemCollapsedStates.expand<A>(_:)();
                swift_unknownObjectRelease();
                v41 = v56;

                sub_100401310(v41, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);

                goto LABEL_14;
              }
            }

            v42 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo;
            v43 = v41;
          }

          sub_100401310(v43, v42);
LABEL_14:
          v39 += v40;
          --v37;
        }

        while (v37);
      }
    }
  }

  return result;
}

id sub_1003FF594(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v76 = a3;
  v79 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v75 = (&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&qword_10076BE10, &qword_10062FF90);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - v9;
  v11 = sub_100058000(&unk_10076FE30, &unk_100632A70);
  __chkstk_darwin(v11 - 8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v71 - v15;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v80 = &v71 - v21;
  v22 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a4;
  v26 = *(a4 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext);
  if (v26)
  {
    v73 = a2;
    v74 = v10;
    v27 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
    swift_beginAccess();
    (*(v23 + 16))(v25, a1 + v27, v22);

    v28 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
    (*(v23 + 8))(v25, v22);
    if (v28)
    {
      v29 = a1;
      v71 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_debugInfo;
      v30 = *(v26 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_debugInfo);
      v31 = OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastDropSessionDidUpdateInput;
      swift_beginAccess();

      v32 = v30 + v31;
      v33 = v76;
      sub_100019180(v76, v32, &unk_100771B10, qword_10062E540);
      swift_endAccess();

      v34 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_dropProposalHasBlockingTargetRedirection;
      v35 = *(v26 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_dropProposalHasBlockingTargetRedirection);
      v36 = v79;
      v72 = v29;
      if (v35)
      {
        v37 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
        swift_beginAccess();
        sub_10000794C(v26 + v37, v19, &unk_10076FE30, &unk_100632A70);
        v38 = v77;
        v39 = *(v77 + 48);
        if (v39(v19, 1, v36) != 1)
        {
          v49 = v80;
          sub_1004012A8(v19, v80, type metadata accessor for TTRIRemindersBoardDropProposal);
          v48 = 1;
          (*(v38 + 56))(v49, 0, 1, v36);
          goto LABEL_18;
        }

        sub_1000079B4(v19, &unk_10076FE30, &unk_100632A70);
        v33 = v76;
      }

      v40 = v80;
      sub_1000712DC(v26, v29, &off_1007266F8, v33, v80);
      sub_10000794C(v40, v13, &unk_10076FE30, &unk_100632A70);
      v39 = *(v77 + 48);
      if (v39(v13, 1, v36) == 1)
      {
        sub_1000079B4(v13, &unk_10076FE30, &unk_100632A70);
      }

      else
      {
        v46 = v75;
        sub_1004012A8(v13, v75, type metadata accessor for TTRIRemindersBoardDropProposal);
        v47 = sub_10040105C(v46, v29);
        sub_100401310(v46, type metadata accessor for TTRIRemindersBoardDropProposal);
        if (v47)
        {
          v48 = 1;
LABEL_18:
          v50 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
          swift_beginAccess();
          v51 = v80;
          sub_100019180(v80, v26 + v50, &unk_10076FE30, &unk_100632A70);
          swift_endAccess();
          v52 = *(v26 + v34) ^ 1;
          *(v26 + v34) = v48;
          sub_10000794C(v51, v16, &unk_10076FE30, &unk_100632A70);
          if (v39(v16, 1, v79) == 1)
          {
            sub_1000079B4(v16, &unk_10076FE30, &unk_100632A70);
            v53 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
          }

          else
          {
            v53 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:*(v16 + 4) intent:sub_1005E3834()];
            sub_100401310(v16, type metadata accessor for TTRIRemindersBoardDropProposal);
          }

          v54 = v71;
          v55 = *(v26 + v71);
          v56 = v48 & v52;
          v57 = *(v55 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastReturnedProposal);
          *(v55 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastReturnedProposal) = v53;

          v58 = v53;

          v59 = *(v26 + v54);
          v60 = v72;
          v61 = *(v72 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView);

          v62 = [v61 hasUncommittedUpdates];
          *(v59 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_collectionViewHasUncommittedUpdates) = v62;

          v63 = v78;
          if ((sub_1003FE474(v78, v60) & 1) == 0)
          {
            v64 = *(v63 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
            if (v64)
            {
              [v64 removeFromSuperview];
            }
          }

          sub_100074E7C();
          v65 = v74;
          if (v56)
          {
            v66 = type metadata accessor for TaskPriority();
            (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
            v67 = swift_allocObject();
            swift_unknownObjectWeakInit();
            type metadata accessor for MainActor();

            v68 = v73;
            swift_unknownObjectRetain();
            v69 = static MainActor.shared.getter();
            v70 = swift_allocObject();
            v70[2] = v69;
            v70[3] = &protocol witness table for MainActor;
            v70[4] = v67;
            v70[5] = v68;

            sub_10009E31C(0, 0, v65, &unk_10063E008, v70);

            sub_1000079B4(v80, &unk_10076FE30, &unk_100632A70);
          }

          else
          {
            sub_1000079B4(v80, &unk_10076FE30, &unk_100632A70);
          }

          return v58;
        }
      }

      v48 = 0;
      goto LABEL_18;
    }
  }

  if (qword_100766EA8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100003E30(v41, qword_1007693C8);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "TTRIRemindersBoardDragAndDropCoordinator: missing activeDropContext", v44, 2u);
  }

  return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
}

void *sub_1003FFEA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v40 = a4;
  v38 = a3;
  v41 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
  v37 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  v39 = a2;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000079B4(v13, &unk_10076BB50, &unk_10062DEA0);
    return _swiftEmptyArrayStorage;
  }

  v21 = *(v15 + 32);
  v21(v17, v13, v14);
  v21(v20, v17, v14);
  v22 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
  swift_beginAccess();
  v23 = *(v15 + 16);
  v23(v10, a1 + v22, v14);
  v24 = v41;
  v25 = *(v41 + 20);
  v26 = type metadata accessor for IndexPath();
  (*(*(v26 - 8) + 16))(&v10[v25], v39, v26);
  v23(&v10[*(v24 + 24)], v20, v14);
  v27 = sub_1000765A0(v10);
  sub_100401310(v10, type metadata accessor for TTRIRemindersBoardDragItemInfo);
  if (!v27)
  {
    (*(v15 + 8))(v20, v14);
    return _swiftEmptyArrayStorage;
  }

  v39 = v14;
  if (v38)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100484754();
      v30 = v29;
      result = swift_unknownObjectRelease();
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

    v31 = v37;
    v32 = 0;
    v33 = v30[2];
    do
    {
      if (v33 == v32)
      {

        goto LABEL_17;
      }

      if (v32 >= v30[2])
      {
        __break(1u);
        return result;
      }

      sub_100401370(v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v32++, v7, type metadata accessor for TTRIRemindersBoardDragItemInfo);
      v34 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
      result = sub_100401310(v7, type metadata accessor for TTRIRemindersBoardDragItemInfo);
    }

    while ((v34 & 1) == 0);
    v35 = v30[2];

    if (v35 < 2)
    {
      goto LABEL_17;
    }

    *(v40 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_shouldHandleNextRootViewDragInteraction) = 1;

    (*(v15 + 8))(v20, v39);
    return _swiftEmptyArrayStorage;
  }

LABEL_17:
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10062D420;
  *(v36 + 32) = v27;
  (*(v15 + 8))(v20, v39);
  return v36;
}

void *sub_100400358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TTRICollectionViewDragAndDropActivityTracker.hasActiveDrag.getter())
  {
    if (qword_100766EA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_1007693C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "TTRIRemindersBoardDragAndDropCoordinator: disallow starting a drag because there is an in-progress drag", v9, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {

    return sub_1003FFEA0(a1, a2, 1, a3);
  }
}

void sub_100400488(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v33 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100782210, &unk_10063E030);
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v30 - v7);
  v9 = sub_100058000(&qword_100782220, &unk_10063E040);
  __chkstk_darwin(v9);
  v11 = (&v30 - v10);
  v12 = sub_100058000(&qword_10076FE00, &qword_10062DFB8);
  __chkstk_darwin(v12 - 8);
  v30 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  __chkstk_darwin(v17);
  v19 = &v30 - v18;
  TTRICollectionViewDragAndDropActivityTracker.dragSessionWillBegin(_:)();
  swift_getObjectType();
  v20 = sub_100076064(a1, a2);
  if (v20[2] == 1)
  {
    sub_10000794C(v20 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v8, &unk_100782210, &unk_10063E030);

    v21 = *(v6 + 48);
    v22 = *(v9 + 48);
    *v11 = *v8;
    sub_100016588(v8 + v21, v11 + v22, &qword_10076FE00, &qword_10062DFB8);
    v23 = *v11;
    sub_100016588(v11 + *(v9 + 48), v19, &qword_10076FE00, &qword_10062DFB8);
    sub_10000794C(v19, v16, &qword_10076FE00, &qword_10062DFB8);
    v24 = v33;
    if ((*(v33 + 48))(v16, 1, v4) == 1)
    {
      sub_1000079B4(v19, &qword_10076FE00, &qword_10062DFB8);

      v25 = v16;
LABEL_12:
      sub_1000079B4(v25, &qword_10076FE00, &qword_10062DFB8);
      return;
    }

    v26 = v31;
    sub_1004012A8(v16, v31, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = *(v4 + 28);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
      if (sub_10013B49C(v26 + v28))
      {
        *(v26 + *(v4 + 32)) = 1;
        v29 = v30;
        sub_100401370(v26, v30, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        (*(v24 + 56))(v29, 0, 1, v4);
        sub_10007093C(v29);
        swift_unknownObjectRelease();

        sub_1000079B4(v29, &qword_10076FE00, &qword_10062DFB8);
        sub_100401310(v26, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        v25 = v19;
        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    sub_100401310(v26, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    v25 = v19;
    goto LABEL_12;
  }
}

void *sub_100400968(void *a1, uint64_t a2)
{
  v45 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
  __chkstk_darwin(v45);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v7 - 8);
  v46 = &v39 - v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_100782210, &unk_10063E030);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = v6;
    v42 = a2;
    v40 = v12;
    v43 = v10;
    v44 = v9;
    v18 = Strong;
    swift_getObjectType();
    v47 = v18;
    result = sub_100076064(a1, v18);
    v20 = result;
    v21 = result[2];
    if (v21)
    {
      v22 = 0;
      while (1)
      {
        if (v22 >= v20[2])
        {
          __break(1u);
          return result;
        }

        sub_10000794C(v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, v16, &unk_100782210, &unk_10063E030);
        v23 = *(v13 + 48);
        v24 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
        if ((*(*(v24 - 8) + 48))(&v16[v23], 1, v24) != 1)
        {
          break;
        }

        ++v22;
        result = sub_1000079B4(v16, &unk_100782210, &unk_10063E030);
        if (v21 == v22)
        {
          goto LABEL_7;
        }
      }

      sub_1000079B4(v16, &unk_100782210, &unk_10063E030);
      v25 = v2;
      v26 = v46;
      v27 = v42;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
      v29 = v43;
      v28 = v44;
      if ((*(v43 + 48))(v26, 1, v44) == 1)
      {
        sub_1000079B4(v26, &unk_10076BB50, &unk_10062DEA0);
      }

      else
      {
        v30 = v40;
        (*(v29 + 32))(v40, v26, v28);
        v31 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
        swift_beginAccess();
        v32 = *(v29 + 16);
        v33 = v41;
        v32(v41, v25 + v31, v28);
        v34 = v45;
        v35 = *(v45 + 20);
        v36 = type metadata accessor for IndexPath();
        (*(*(v36 - 8) + 16))(v33 + v35, v27, v36);
        v32((v33 + *(v34 + 24)), v30, v28);
        v37 = sub_1000765A0(v33);
        sub_100401310(v33, type metadata accessor for TTRIRemindersBoardDragItemInfo);
        if (v37)
        {
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_10062D420;
          *(v38 + 32) = v37;
          swift_unknownObjectRelease();
          (*(v29 + 8))(v30, v28);
          return v38;
        }

        (*(v29 + 8))(v30, v28);
      }

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:
      swift_unknownObjectRelease();
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100400E5C(void *a1, uint64_t a2)
{
  v3 = [a1 items];
  sub_1000776A8();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    if ((TTRICollectionViewDragAndDropActivityTracker.hasActiveDrag.getter() & 1) != 0 && (sub_100070D88(a1), v7 = sub_1005D1850(v6), , swift_unknownObjectRelease(), !v7))
    {
      if (qword_100766EA8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003E30(v13, qword_1007693C8);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "TTRIRemindersBoardDragAndDropCoordinator: reject external drop session because there is an in-progress local drag", v16, 2u);
      }
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
        v10 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
        sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v9);
        v11 = (*(*(v10 + 8) + 560))(a1, v9);
        swift_unknownObjectRelease();
        return v11 & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10040105C(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = *(v5 + 16);
  v8 = *(v4 + 16);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v8 + result;
    if (!__OFADD__(v8, result))
    {
      goto LABEL_3;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v10 = v8 + result;
  if (__OFADD__(v8, result))
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v7)
  {
    v11 = __OFADD__(v7, v10);
    v12 = v7 + v10;
    if (!v11)
    {
      if (v12 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_6:
  if (*(v5 + 16) != 1 || *(v4 + 16))
  {
LABEL_8:
    v13 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:a1[4] intent:sub_1005E3834()];
    v14 = [v13 intent];

    if (v14 == 1)
    {
      return [*(a2 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView) hasUncommittedUpdates] ^ 1;
    }

    return 0;
  }

  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }
  }

  return result;
}