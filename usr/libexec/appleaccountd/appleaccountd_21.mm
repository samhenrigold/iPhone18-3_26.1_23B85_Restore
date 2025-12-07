uint64_t sub_10027B738(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v147 = a8;
  v146 = a7;
  v158 = a6;
  v159 = a3;
  v161 = a4;
  v162 = a5;
  v163 = a2;
  v145 = type metadata accessor for DispatchWorkItemFlags();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchQoS();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DispatchTime();
  v152 = *(v149 - 8);
  v11 = __chkstk_darwin(v149);
  v138 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v139 = &v128 - v13;
  v137 = type metadata accessor for DispatchQoS.QoSClass();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003DF000, &unk_10033EC50);
  __chkstk_darwin(v15 - 8);
  v133 = &v128 - v16;
  v160 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v153 = *(v160 - 8);
  __chkstk_darwin(v160);
  v18 = &v128 - v17;
  v157 = type metadata accessor for UUID();
  v156 = *(v157 - 1);
  __chkstk_darwin(v157);
  v155 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for CustodianRecord(0);
  v148 = *(v154 - 8);
  v20 = *(v148 + 64);
  v21 = __chkstk_darwin(v154);
  v130 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v134 = &v128 - v23;
  v24 = __chkstk_darwin(v22);
  v131 = &v128 - v25;
  v26 = __chkstk_darwin(v24);
  v132 = &v128 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v128 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v128 - v32;
  __chkstk_darwin(v31);
  v35 = &v128 - v34;
  v36 = sub_100005814(&unk_1003DA200, &unk_10033FA80);
  v37 = __chkstk_darwin(v36);
  v151 = (&v128 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v40 = (&v128 - v39);
  sub_100012D04(a1, &v128 - v39, &unk_1003DA200, &unk_10033FA80);
  v150 = v36;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v160 = *v40;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAAE8);
    sub_10028338C(v163, v30, type metadata accessor for CustodianRecord);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      aBlock[0] = v153;
      *v44 = 136315650;
      v45 = v156;
      v46 = v155;
      v47 = v157;
      (v156)[2](v155, v30, v157);
      sub_1002833F4(v30, type metadata accessor for CustodianRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = v43;
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      (v45[1])(v46, v47);
      v52 = sub_10021145C(v49, v51, aBlock);

      *(v44 + 4) = v52;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, aBlock);
      *(v44 + 22) = 2112;
      swift_errorRetain();
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v53;
      v54 = v129;
      *v129 = v53;
      _os_log_impl(&_mh_execute_header, v42, v48, "Storage Controller: Failed to save record with modification to cloud, recordID: %s, type: %s, error: %@", v44, 0x20u);
      sub_100008D3C(v54, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1002833F4(v30, type metadata accessor for CustodianRecord);
    }

    v66 = v154;
    if (v158 <= 2 && (swift_getErrorValue(), (v67 = sub_1002DE99C(v170)) != 0))
    {
      v68 = v67;
      type metadata accessor for CKError(0);
      v169 = 14;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100282F14(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
      _BridgedStoredNSError.init(_:userInfo:)();
      v69 = aBlock[0];
      v169 = aBlock[0];
      _BridgedStoredNSError.code.getter();

      v70 = sub_1002DF114(v168, v68);
      if (v70)
      {

        v71 = sub_1002DEE74(v68);
        v72 = v152;
        if (v71)
        {
          v73 = *(v163 + *(v66 + 48));
          v74 = v71;
          v75 = v133;
          sub_1000EF6D0(v74, v73, v133);
          (*(v148 + 56))(v75, 0, 1, v66);
          v101 = v75;
          v102 = v132;
          sub_100283458(v101, v132, type metadata accessor for CustodianRecord);
          v103 = v131;
          sub_10028338C(v102, v131, type metadata accessor for CustodianRecord);
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            aBlock[0] = v163;
            *v106 = 136315394;
            v107 = v156;
            v108 = v68;
            v109 = v155;
            v110 = v157;
            (v156)[2](v155, v103, v157);
            sub_1002833F4(v103, type metadata accessor for CustodianRecord);
            sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v111 = dispatch thunk of CustomStringConvertible.description.getter();
            v113 = v112;
            v114 = v109;
            v68 = v108;
            (v107[1])(v114, v110);
            v115 = sub_10021145C(v111, v113, aBlock);

            *(v106 + 4) = v115;
            *(v106 + 12) = 2080;
            *(v106 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, aBlock);
            _os_log_impl(&_mh_execute_header, v104, v105, "Storage Controller: Trying to resave after conflict resolution serverRecordID: %s, type: %s", v106, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_1002833F4(v103, type metadata accessor for CustodianRecord);
          }

          v116 = v132;
          sub_1002784C8(v132, v146, v147, v158 + 1, v161, v162);

          return sub_1002833F4(v116, type metadata accessor for CustodianRecord);
        }
      }

      else
      {
        v72 = v152;
      }

      if (sub_1002DF0EC(v68) || sub_1002DF0F4(v68) || sub_1002DF0FC(v68) || sub_1002DF104(v68) || sub_1002DF10C(v68))
      {
        sub_1002DEFEC(v68);
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v76 = v136;
        v77 = v135;
        v78 = v137;
        (*(v136 + 104))(v135, enum case for DispatchQoS.QoSClass.default(_:), v137);
        v79 = static OS_dispatch_queue.global(qos:)();
        (*(v76 + 8))(v77, v78);
        v80 = v138;
        static DispatchTime.now()();
        v81 = v139;
        + infix(_:_:)();
        v82 = *(v72 + 8);
        v152 = v72 + 8;
        v157 = v82;
        v156 = v68;
        (v82)(v80, v149);
        v83 = v134;
        sub_10028338C(v163, v134, type metadata accessor for CustodianRecord);
        v84 = (*(v148 + 80) + 16) & ~*(v148 + 80);
        v85 = (v20 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
        v86 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
        v87 = (v86 + 23) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        sub_100283458(v83, v88 + v84, type metadata accessor for CustodianRecord);
        *(v88 + v85) = v159;
        v89 = (v88 + v86);
        v90 = v147;
        *v89 = v146;
        v89[1] = v90;
        *(v88 + v87) = v158;
        v91 = (v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8));
        v92 = v162;
        *v91 = v161;
        v91[1] = v92;
        v166 = sub_1002839D0;
        v167 = v88;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v165 = &unk_1003B1C98;
        v93 = _Block_copy(aBlock);

        v94 = v140;
        static DispatchQoS.unspecified.getter();
        v169 = _swiftEmptyArrayStorage;
        sub_100282F14(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v95 = v142;
        v96 = v145;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v93);

        (*(v144 + 8))(v95, v96);
        (*(v141 + 8))(v94, v143);
        (v157)(v81, v149);
      }

      v117 = v130;
      sub_10028338C(v163, v130, type metadata accessor for CustodianRecord);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v120 = 136315394;
        v121 = v156;
        v122 = v155;
        v123 = v157;
        (v156)[2](v155, v117, v157);
        sub_1002833F4(v117, type metadata accessor for CustodianRecord);
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v124 = dispatch thunk of CustomStringConvertible.description.getter();
        v126 = v125;
        (v121[1])(v122, v123);
        v127 = sub_10021145C(v124, v126, aBlock);

        *(v120 + 4) = v127;
        *(v120 + 12) = 2080;
        *(v120 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, aBlock);
        _os_log_impl(&_mh_execute_header, v118, v119, "Storage Controller: No resolution so return error recordID: %s, type: %s", v120, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_1002833F4(v117, type metadata accessor for CustodianRecord);
      }

      v98 = v151;
      *v151 = v160;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v161(v98);
    }

    else
    {
      v98 = v151;
      *v151 = v160;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v161(v98);
    }

    return sub_100008D3C(v98, &unk_1003DA200, &unk_10033FA80);
  }

  sub_100283458(v40, v35, type metadata accessor for CustodianRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_100008D04(v55, qword_1003FAAE8);
  sub_10028338C(v163, v33, type metadata accessor for CustodianRecord);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    aBlock[0] = v163;
    *v58 = 136315394;
    v59 = v156;
    v60 = v155;
    v61 = v157;
    (v156)[2](v155, v33, v157);
    sub_1002833F4(v33, type metadata accessor for CustodianRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v62 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v63;
    (v59[1])(v60, v61);
    v65 = sub_10021145C(v62, v64, aBlock);

    *(v58 + 4) = v65;
    *(v58 + 12) = 2080;
    *(v58 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, aBlock);
    _os_log_impl(&_mh_execute_header, v56, v57, "Storage Controller: Successfully saved record with modification to cloud, recordID: %s, type: %s", v58, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002833F4(v33, type metadata accessor for CustodianRecord);
  }

  v99 = v153;
  v100 = v160;
  (*(v153 + 16))(v18, v159 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v160);
  Dependency.wrappedValue.getter();
  (*(v99 + 8))(v18, v100);
  sub_1000080F8(aBlock, v165);
  sub_10017DF74(v35, 0, 2, v161, v162);
  sub_1002833F4(v35, type metadata accessor for CustodianRecord);
  return sub_10000839C(aBlock);
}

uint64_t sub_10027CDE4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v143 = a8;
  v142 = a7;
  v155 = a6;
  v156 = a3;
  v159 = a4;
  v160 = a5;
  v161 = a2;
  v158 = a1;
  v141 = type metadata accessor for DispatchWorkItemFlags();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for DispatchQoS();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchTime();
  v135 = *(v145 - 8);
  v10 = __chkstk_darwin(v145);
  v134 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v127 - v12;
  v133 = type metadata accessor for DispatchQoS.QoSClass();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003E4F30, &unk_1003444E0);
  __chkstk_darwin(v15 - 8);
  v150 = &v127 - v16;
  v149 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v18 = &v127 - v17;
  v154 = type metadata accessor for UUID();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for BeneficiaryInfoRecord(0);
  v144 = *(v157 - 8);
  v20 = *(v144 + 64);
  v21 = __chkstk_darwin(v157);
  v151 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v130 = &v127 - v23;
  v24 = __chkstk_darwin(v22);
  v128 = &v127 - v25;
  v26 = __chkstk_darwin(v24);
  v129 = &v127 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v127 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v127 - v32;
  __chkstk_darwin(v31);
  v35 = &v127 - v34;
  v36 = sub_100005814(&unk_1003E10A0, &unk_100344480);
  v37 = __chkstk_darwin(v36);
  v147 = (&v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v40 = (&v127 - v39);
  sub_100012D04(v158, &v127 - v39, &unk_1003E10A0, &unk_100344480);
  v146 = v36;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v149 = v13;
    v158 = *v40;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAAE8);
    sub_10028338C(v161, v30, type metadata accessor for BeneficiaryInfoRecord);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      aBlock[0] = v148;
      *v44 = 136315650;
      v45 = v153;
      v46 = v152;
      v47 = v154;
      (v153)[2](v152, &v30[*(v157 + 32)], v154);
      sub_1002833F4(v30, type metadata accessor for BeneficiaryInfoRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (v45[1])(v46, v47);
      v51 = sub_10021145C(v48, v50, aBlock);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, aBlock);
      *(v44 + 22) = 2112;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v52;
      v53 = v127;
      *v127 = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "Storage Controller: Failed to save record with modification to cloud, recordID: %s, type: %s, error: %@", v44, 0x20u);
      sub_100008D3C(v53, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1002833F4(v30, type metadata accessor for BeneficiaryInfoRecord);
    }

    v65 = v151;
    v66 = v150;
    if (v155 <= 2 && (swift_getErrorValue(), (v67 = sub_1002DE99C(v167)) != 0))
    {
      v68 = v67;
      v69 = sub_1002DECC8(v67);
      v70 = v157;
      if (v69)
      {
        v71 = sub_1002DEE74(v68);
        if (v71)
        {
          v72 = *(v161 + *(v70 + 40));
          v73 = v71;
          sub_1001E4CD8(v73, v72, v66);
          (*(v144 + 56))(v66, 0, 1, v70);
          v98 = v129;
          sub_100283458(v66, v129, type metadata accessor for BeneficiaryInfoRecord);
          v99 = v128;
          sub_10028338C(v98, v128, type metadata accessor for BeneficiaryInfoRecord);
          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = v99;
            v103 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            aBlock[0] = v161;
            *v103 = 136315394;
            v104 = v153;
            v105 = v102 + *(v70 + 32);
            v106 = v68;
            v107 = v152;
            v108 = v154;
            (v153)[2](v152, v105, v154);
            sub_1002833F4(v102, type metadata accessor for BeneficiaryInfoRecord);
            sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v109 = dispatch thunk of CustomStringConvertible.description.getter();
            v111 = v110;
            v112 = v107;
            v68 = v106;
            (v104[1])(v112, v108);
            v113 = sub_10021145C(v109, v111, aBlock);

            *(v103 + 4) = v113;
            *(v103 + 12) = 2080;
            *(v103 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, aBlock);
            _os_log_impl(&_mh_execute_header, v100, v101, "Storage Controller: Trying to resave after conflict resolution serverRecordID: %s, type: %s", v103, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_1002833F4(v99, type metadata accessor for BeneficiaryInfoRecord);
          }

          v114 = v129;
          sub_100278BBC(v129, v142, v143, v155 + 1, v159, v160);

          return sub_1002833F4(v114, type metadata accessor for BeneficiaryInfoRecord);
        }
      }

      if (sub_1002DF0EC(v68) || sub_1002DF0F4(v68) || sub_1002DF0FC(v68) || sub_1002DF104(v68) || sub_1002DF10C(v68))
      {
        sub_1002DEFEC(v68);
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v74 = v132;
        v75 = v131;
        v76 = v133;
        (*(v132 + 104))(v131, enum case for DispatchQoS.QoSClass.default(_:), v133);
        v154 = static OS_dispatch_queue.global(qos:)();
        (*(v74 + 8))(v75, v76);
        v77 = v134;
        static DispatchTime.now()();
        v153 = v68;
        v78 = v149;
        + infix(_:_:)();
        v157 = *(v135 + 8);
        (v157)(v77, v145);
        v79 = v130;
        sub_10028338C(v161, v130, type metadata accessor for BeneficiaryInfoRecord);
        v80 = (*(v144 + 80) + 16) & ~*(v144 + 80);
        v81 = (v20 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
        v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
        v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        sub_100283458(v79, v84 + v80, type metadata accessor for BeneficiaryInfoRecord);
        *(v84 + v81) = v156;
        v85 = (v84 + v82);
        v86 = v143;
        *v85 = v142;
        v85[1] = v86;
        *(v84 + v83) = v155;
        v87 = (v84 + ((v83 + 15) & 0xFFFFFFFFFFFFFFF8));
        v88 = v160;
        *v87 = v159;
        v87[1] = v88;
        v165 = sub_100283198;
        v166 = v84;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v164 = &unk_1003B1B30;
        v89 = _Block_copy(aBlock);

        v90 = v136;
        static DispatchQoS.unspecified.getter();
        v162 = _swiftEmptyArrayStorage;
        sub_100282F14(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v91 = v138;
        v92 = v141;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v93 = v154;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v89);

        (*(v140 + 8))(v91, v92);
        (*(v137 + 8))(v90, v139);
        (v157)(v78, v145);
      }

      sub_10028338C(v161, v65, type metadata accessor for BeneficiaryInfoRecord);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v117 = 136315394;
        v118 = v153;
        v119 = v65 + *(v70 + 32);
        v120 = v152;
        v121 = v65;
        v122 = v154;
        (v153)[2](v152, v119, v154);
        sub_1002833F4(v121, type metadata accessor for BeneficiaryInfoRecord);
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v123 = dispatch thunk of CustomStringConvertible.description.getter();
        v125 = v124;
        (v118[1])(v120, v122);
        v126 = sub_10021145C(v123, v125, aBlock);

        *(v117 + 4) = v126;
        *(v117 + 12) = 2080;
        *(v117 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, aBlock);
        _os_log_impl(&_mh_execute_header, v115, v116, "Storage Controller: No resolution so return error recordID: %s, type: %s", v117, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_1002833F4(v65, type metadata accessor for BeneficiaryInfoRecord);
      }

      v95 = v147;
      *v147 = v158;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v159(v95);
    }

    else
    {
      v95 = v147;
      *v147 = v158;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v159(v95);
    }

    return sub_100008D3C(v95, &unk_1003E10A0, &unk_100344480);
  }

  sub_100283458(v40, v35, type metadata accessor for BeneficiaryInfoRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100008D04(v54, qword_1003FAAE8);
  sub_10028338C(v161, v33, type metadata accessor for BeneficiaryInfoRecord);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    aBlock[0] = v161;
    *v57 = 136315394;
    v58 = v153;
    v59 = v152;
    v60 = v154;
    (v153)[2](v152, &v33[*(v157 + 32)], v154);
    sub_1002833F4(v33, type metadata accessor for BeneficiaryInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    (v58[1])(v59, v60);
    v64 = sub_10021145C(v61, v63, aBlock);

    *(v57 + 4) = v64;
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, aBlock);
    _os_log_impl(&_mh_execute_header, v55, v56, "Storage Controller: Successfully saved record with modification to cloud, recordID: %s, type: %s", v57, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002833F4(v33, type metadata accessor for BeneficiaryInfoRecord);
  }

  v96 = v148;
  v97 = v149;
  (*(v148 + 16))(v18, v156 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v149);
  Dependency.wrappedValue.getter();
  (*(v96 + 8))(v18, v97);
  sub_1000080F8(aBlock, v164);
  sub_10017F6CC(v35, 0, 2, v159, v160);
  sub_1002833F4(v35, type metadata accessor for BeneficiaryInfoRecord);
  return sub_10000839C(aBlock);
}

uint64_t sub_10027E3D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v143 = a8;
  v142 = a7;
  v155 = a6;
  v156 = a3;
  v159 = a4;
  v160 = a5;
  v161 = a2;
  v158 = a1;
  v141 = type metadata accessor for DispatchWorkItemFlags();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for DispatchQoS();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchTime();
  v135 = *(v145 - 8);
  v10 = __chkstk_darwin(v145);
  v134 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v127 - v12;
  v133 = type metadata accessor for DispatchQoS.QoSClass();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003E4F40, &unk_1003446D0);
  __chkstk_darwin(v15 - 8);
  v150 = &v127 - v16;
  v149 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v18 = &v127 - v17;
  v154 = type metadata accessor for UUID();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for InheritanceInvitationRecord(0);
  v144 = *(v157 - 8);
  v20 = *(v144 + 64);
  v21 = __chkstk_darwin(v157);
  v151 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v130 = &v127 - v23;
  v24 = __chkstk_darwin(v22);
  v128 = &v127 - v25;
  v26 = __chkstk_darwin(v24);
  v129 = &v127 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v127 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v127 - v32;
  __chkstk_darwin(v31);
  v35 = &v127 - v34;
  v36 = sub_100005814(&qword_1003E1290, &unk_1003444C0);
  v37 = __chkstk_darwin(v36);
  v147 = (&v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v40 = (&v127 - v39);
  sub_100012D04(v158, &v127 - v39, &qword_1003E1290, &unk_1003444C0);
  v146 = v36;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v149 = v13;
    v158 = *v40;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAAE8);
    sub_10028338C(v161, v30, type metadata accessor for InheritanceInvitationRecord);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      aBlock[0] = v148;
      *v44 = 136315650;
      v45 = v153;
      v46 = v152;
      v47 = v154;
      (v153)[2](v152, &v30[*(v157 + 36)], v154);
      sub_1002833F4(v30, type metadata accessor for InheritanceInvitationRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (v45[1])(v46, v47);
      v51 = sub_10021145C(v48, v50, aBlock);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, aBlock);
      *(v44 + 22) = 2112;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v52;
      v53 = v127;
      *v127 = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "Storage Controller: Failed to save record with modification to cloud, recordID: %s, type: %s, error: %@", v44, 0x20u);
      sub_100008D3C(v53, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1002833F4(v30, type metadata accessor for InheritanceInvitationRecord);
    }

    v65 = v151;
    v66 = v150;
    if (v155 <= 2 && (swift_getErrorValue(), (v67 = sub_1002DE99C(v167)) != 0))
    {
      v68 = v67;
      v69 = sub_1002DECC8(v67);
      v70 = v157;
      if (v69)
      {
        v71 = sub_1002DEE74(v68);
        if (v71)
        {
          v72 = *(v161 + *(v70 + 44));
          v73 = v71;
          sub_1001EDB14(v73, v72, v66);
          (*(v144 + 56))(v66, 0, 1, v70);
          v98 = v129;
          sub_100283458(v66, v129, type metadata accessor for InheritanceInvitationRecord);
          v99 = v128;
          sub_10028338C(v98, v128, type metadata accessor for InheritanceInvitationRecord);
          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = v99;
            v103 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            aBlock[0] = v161;
            *v103 = 136315394;
            v104 = v153;
            v105 = v102 + *(v70 + 36);
            v106 = v68;
            v107 = v152;
            v108 = v154;
            (v153)[2](v152, v105, v154);
            sub_1002833F4(v102, type metadata accessor for InheritanceInvitationRecord);
            sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v109 = dispatch thunk of CustomStringConvertible.description.getter();
            v111 = v110;
            v112 = v107;
            v68 = v106;
            (v104[1])(v112, v108);
            v113 = sub_10021145C(v109, v111, aBlock);

            *(v103 + 4) = v113;
            *(v103 + 12) = 2080;
            *(v103 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, aBlock);
            _os_log_impl(&_mh_execute_header, v100, v101, "Storage Controller: Trying to resave after conflict resolution serverRecordID: %s, type: %s", v103, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_1002833F4(v99, type metadata accessor for InheritanceInvitationRecord);
          }

          v114 = v129;
          sub_1002792B4(v129, v142, v143, v155 + 1, v159, v160);

          return sub_1002833F4(v114, type metadata accessor for InheritanceInvitationRecord);
        }
      }

      if (sub_1002DF0EC(v68) || sub_1002DF0F4(v68) || sub_1002DF0FC(v68) || sub_1002DF104(v68) || sub_1002DF10C(v68))
      {
        sub_1002DEFEC(v68);
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v74 = v132;
        v75 = v131;
        v76 = v133;
        (*(v132 + 104))(v131, enum case for DispatchQoS.QoSClass.default(_:), v133);
        v154 = static OS_dispatch_queue.global(qos:)();
        (*(v74 + 8))(v75, v76);
        v77 = v134;
        static DispatchTime.now()();
        v153 = v68;
        v78 = v149;
        + infix(_:_:)();
        v157 = *(v135 + 8);
        (v157)(v77, v145);
        v79 = v130;
        sub_10028338C(v161, v130, type metadata accessor for InheritanceInvitationRecord);
        v80 = (*(v144 + 80) + 16) & ~*(v144 + 80);
        v81 = (v20 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
        v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
        v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        sub_100283458(v79, v84 + v80, type metadata accessor for InheritanceInvitationRecord);
        *(v84 + v81) = v156;
        v85 = (v84 + v82);
        v86 = v143;
        *v85 = v142;
        v85[1] = v86;
        *(v84 + v83) = v155;
        v87 = (v84 + ((v83 + 15) & 0xFFFFFFFFFFFFFFF8));
        v88 = v160;
        *v87 = v159;
        v87[1] = v88;
        v165 = sub_100283678;
        v166 = v84;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v164 = &unk_1003B1C20;
        v89 = _Block_copy(aBlock);

        v90 = v136;
        static DispatchQoS.unspecified.getter();
        v162 = _swiftEmptyArrayStorage;
        sub_100282F14(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v91 = v138;
        v92 = v141;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v93 = v154;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v89);

        (*(v140 + 8))(v91, v92);
        (*(v137 + 8))(v90, v139);
        (v157)(v78, v145);
      }

      sub_10028338C(v161, v65, type metadata accessor for InheritanceInvitationRecord);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v117 = 136315394;
        v118 = v153;
        v119 = v65 + *(v70 + 36);
        v120 = v152;
        v121 = v65;
        v122 = v154;
        (v153)[2](v152, v119, v154);
        sub_1002833F4(v121, type metadata accessor for InheritanceInvitationRecord);
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v123 = dispatch thunk of CustomStringConvertible.description.getter();
        v125 = v124;
        (v118[1])(v120, v122);
        v126 = sub_10021145C(v123, v125, aBlock);

        *(v117 + 4) = v126;
        *(v117 + 12) = 2080;
        *(v117 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, aBlock);
        _os_log_impl(&_mh_execute_header, v115, v116, "Storage Controller: No resolution so return error recordID: %s, type: %s", v117, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_1002833F4(v65, type metadata accessor for InheritanceInvitationRecord);
      }

      v95 = v147;
      *v147 = v158;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v159(v95);
    }

    else
    {
      v95 = v147;
      *v147 = v158;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v159(v95);
    }

    return sub_100008D3C(v95, &qword_1003E1290, &unk_1003444C0);
  }

  sub_100283458(v40, v35, type metadata accessor for InheritanceInvitationRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100008D04(v54, qword_1003FAAE8);
  sub_10028338C(v161, v33, type metadata accessor for InheritanceInvitationRecord);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    aBlock[0] = v161;
    *v57 = 136315394;
    v58 = v153;
    v59 = v152;
    v60 = v154;
    (v153)[2](v152, &v33[*(v157 + 36)], v154);
    sub_1002833F4(v33, type metadata accessor for InheritanceInvitationRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    (v58[1])(v59, v60);
    v64 = sub_10021145C(v61, v63, aBlock);

    *(v57 + 4) = v64;
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, aBlock);
    _os_log_impl(&_mh_execute_header, v55, v56, "Storage Controller: Successfully saved record with modification to cloud, recordID: %s, type: %s", v57, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002833F4(v33, type metadata accessor for InheritanceInvitationRecord);
  }

  v96 = v148;
  v97 = v149;
  (*(v148 + 16))(v18, v156 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v149);
  Dependency.wrappedValue.getter();
  (*(v96 + 8))(v18, v97);
  sub_1000080F8(aBlock, v164);
  sub_10017FAB0(v35, 0, 2, v159, v160);
  sub_1002833F4(v35, type metadata accessor for InheritanceInvitationRecord);
  return sub_10000839C(aBlock);
}

uint64_t sub_10027F9C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v143 = a8;
  v142 = a7;
  v155 = a6;
  v156 = a3;
  v159 = a4;
  v160 = a5;
  v161 = a2;
  v158 = a1;
  v141 = type metadata accessor for DispatchWorkItemFlags();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for DispatchQoS();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchTime();
  v135 = *(v145 - 8);
  v10 = __chkstk_darwin(v145);
  v134 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v127 - v12;
  v133 = type metadata accessor for DispatchQoS.QoSClass();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v131 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&unk_1003E1DE0, &qword_1003444D8);
  __chkstk_darwin(v15 - 8);
  v150 = &v127 - v16;
  v149 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v18 = &v127 - v17;
  v154 = type metadata accessor for UUID();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v152 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for BenefactorInfoRecord(0);
  v144 = *(v157 - 8);
  v20 = *(v144 + 64);
  v21 = __chkstk_darwin(v157);
  v151 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v130 = &v127 - v23;
  v24 = __chkstk_darwin(v22);
  v128 = &v127 - v25;
  v26 = __chkstk_darwin(v24);
  v129 = &v127 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v127 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v127 - v32;
  __chkstk_darwin(v31);
  v35 = &v127 - v34;
  v36 = sub_100005814(&unk_1003E1DD0, &qword_1003444D0);
  v37 = __chkstk_darwin(v36);
  v147 = (&v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v40 = (&v127 - v39);
  sub_100012D04(v158, &v127 - v39, &unk_1003E1DD0, &qword_1003444D0);
  v146 = v36;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v149 = v13;
    v158 = *v40;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100008D04(v41, qword_1003FAAE8);
    sub_10028338C(v161, v30, type metadata accessor for BenefactorInfoRecord);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v148 = swift_slowAlloc();
      aBlock[0] = v148;
      *v44 = 136315650;
      v45 = v153;
      v46 = v152;
      v47 = v154;
      (v153)[2](v152, &v30[*(v157 + 28)], v154);
      sub_1002833F4(v30, type metadata accessor for BenefactorInfoRecord);
      sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (v45[1])(v46, v47);
      v51 = sub_10021145C(v48, v50, aBlock);

      *(v44 + 4) = v51;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, aBlock);
      *(v44 + 22) = 2112;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 24) = v52;
      v53 = v127;
      *v127 = v52;
      _os_log_impl(&_mh_execute_header, v42, v43, "Storage Controller: Failed to save record with modification to cloud, recordID: %s, type: %s, error: %@", v44, 0x20u);
      sub_100008D3C(v53, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_1002833F4(v30, type metadata accessor for BenefactorInfoRecord);
    }

    v65 = v151;
    v66 = v150;
    if (v155 <= 2 && (swift_getErrorValue(), (v67 = sub_1002DE99C(v167)) != 0))
    {
      v68 = v67;
      v69 = sub_1002DECC8(v67);
      v70 = v157;
      if (v69)
      {
        v71 = sub_1002DEE74(v68);
        if (v71)
        {
          v72 = *(v161 + *(v70 + 36));
          v73 = v71;
          sub_1001E17B0(v73, v72, v66);
          (*(v144 + 56))(v66, 0, 1, v70);
          v98 = v129;
          sub_100283458(v66, v129, type metadata accessor for BenefactorInfoRecord);
          v99 = v128;
          sub_10028338C(v98, v128, type metadata accessor for BenefactorInfoRecord);
          v100 = Logger.logObject.getter();
          v101 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = v99;
            v103 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            aBlock[0] = v161;
            *v103 = 136315394;
            v104 = v153;
            v105 = v102 + *(v70 + 28);
            v106 = v68;
            v107 = v152;
            v108 = v154;
            (v153)[2](v152, v105, v154);
            sub_1002833F4(v102, type metadata accessor for BenefactorInfoRecord);
            sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v109 = dispatch thunk of CustomStringConvertible.description.getter();
            v111 = v110;
            v112 = v107;
            v68 = v106;
            (v104[1])(v112, v108);
            v113 = sub_10021145C(v109, v111, aBlock);

            *(v103 + 4) = v113;
            *(v103 + 12) = 2080;
            *(v103 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, aBlock);
            _os_log_impl(&_mh_execute_header, v100, v101, "Storage Controller: Trying to resave after conflict resolution serverRecordID: %s, type: %s", v103, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_1002833F4(v99, type metadata accessor for BenefactorInfoRecord);
          }

          v114 = v129;
          sub_1002799AC(v129, v142, v143, v155 + 1, v159, v160);

          return sub_1002833F4(v114, type metadata accessor for BenefactorInfoRecord);
        }
      }

      if (sub_1002DF0EC(v68) || sub_1002DF0F4(v68) || sub_1002DF0FC(v68) || sub_1002DF104(v68) || sub_1002DF10C(v68))
      {
        sub_1002DEFEC(v68);
        sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
        v74 = v132;
        v75 = v131;
        v76 = v133;
        (*(v132 + 104))(v131, enum case for DispatchQoS.QoSClass.default(_:), v133);
        v154 = static OS_dispatch_queue.global(qos:)();
        (*(v74 + 8))(v75, v76);
        v77 = v134;
        static DispatchTime.now()();
        v153 = v68;
        v78 = v149;
        + infix(_:_:)();
        v157 = *(v135 + 8);
        (v157)(v77, v145);
        v79 = v130;
        sub_10028338C(v161, v130, type metadata accessor for BenefactorInfoRecord);
        v80 = (*(v144 + 80) + 16) & ~*(v144 + 80);
        v81 = (v20 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
        v82 = (v81 + 15) & 0xFFFFFFFFFFFFFFF8;
        v83 = (v82 + 23) & 0xFFFFFFFFFFFFFFF8;
        v84 = swift_allocObject();
        sub_100283458(v79, v84 + v80, type metadata accessor for BenefactorInfoRecord);
        *(v84 + v81) = v156;
        v85 = (v84 + v82);
        v86 = v143;
        *v85 = v142;
        v85[1] = v86;
        *(v84 + v83) = v155;
        v87 = (v84 + ((v83 + 15) & 0xFFFFFFFFFFFFFFF8));
        v88 = v160;
        *v87 = v159;
        v87[1] = v88;
        v165 = sub_100283360;
        v166 = v84;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v164 = &unk_1003B1BA8;
        v89 = _Block_copy(aBlock);

        v90 = v136;
        static DispatchQoS.unspecified.getter();
        v162 = _swiftEmptyArrayStorage;
        sub_100282F14(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v91 = v138;
        v92 = v141;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v93 = v154;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v89);

        (*(v140 + 8))(v91, v92);
        (*(v137 + 8))(v90, v139);
        (v157)(v78, v145);
      }

      sub_10028338C(v161, v65, type metadata accessor for BenefactorInfoRecord);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v117 = 136315394;
        v118 = v153;
        v119 = v65 + *(v70 + 28);
        v120 = v152;
        v121 = v65;
        v122 = v154;
        (v153)[2](v152, v119, v154);
        sub_1002833F4(v121, type metadata accessor for BenefactorInfoRecord);
        sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v123 = dispatch thunk of CustomStringConvertible.description.getter();
        v125 = v124;
        (v118[1])(v120, v122);
        v126 = sub_10021145C(v123, v125, aBlock);

        *(v117 + 4) = v126;
        *(v117 + 12) = 2080;
        *(v117 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, aBlock);
        _os_log_impl(&_mh_execute_header, v115, v116, "Storage Controller: No resolution so return error recordID: %s, type: %s", v117, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_1002833F4(v65, type metadata accessor for BenefactorInfoRecord);
      }

      v95 = v147;
      *v147 = v158;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v159(v95);
    }

    else
    {
      v95 = v147;
      *v147 = v158;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v159(v95);
    }

    return sub_100008D3C(v95, &unk_1003E1DD0, &qword_1003444D0);
  }

  sub_100283458(v40, v35, type metadata accessor for BenefactorInfoRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100008D04(v54, qword_1003FAAE8);
  sub_10028338C(v161, v33, type metadata accessor for BenefactorInfoRecord);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    aBlock[0] = v161;
    *v57 = 136315394;
    v58 = v153;
    v59 = v152;
    v60 = v154;
    (v153)[2](v152, &v33[*(v157 + 28)], v154);
    sub_1002833F4(v33, type metadata accessor for BenefactorInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    (v58[1])(v59, v60);
    v64 = sub_10021145C(v61, v63, aBlock);

    *(v57 + 4) = v64;
    *(v57 + 12) = 2080;
    *(v57 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, aBlock);
    _os_log_impl(&_mh_execute_header, v55, v56, "Storage Controller: Successfully saved record with modification to cloud, recordID: %s, type: %s", v57, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_1002833F4(v33, type metadata accessor for BenefactorInfoRecord);
  }

  v96 = v148;
  v97 = v149;
  (*(v148 + 16))(v18, v156 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v149);
  Dependency.wrappedValue.getter();
  (*(v96 + 8))(v18, v97);
  sub_1000080F8(aBlock, v164);
  sub_10017FE94(v35, 0, 2, v159, v160);
  sub_1002833F4(v35, type metadata accessor for BenefactorInfoRecord);
  return sub_10000839C(aBlock);
}

void sub_100280FB4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a2;
  v33 = a5;
  v30 = a3;
  v31 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  sub_10028338C(a1, v16, type metadata accessor for CustodianshipInfoRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v28 = a6;
    v34 = v22;
    *v21 = 136315394;
    (*(v11 + 16))(v13, v16, v10);
    sub_1002833F4(v16, type metadata accessor for CustodianshipInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = sub_10021145C(v23, v25, &v34);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10021145C(0xD000000000000017, 0x800000010032CE50, &v34);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Trying to resave after a delay following a recoverable/transient error, recordID: %s, type: %s", v21, 0x16u);
    swift_arrayDestroy();
    a6 = v28;

    a7 = v29;
  }

  else
  {
    sub_1002833F4(v16, type metadata accessor for CustodianshipInfoRecord);
  }

  if (__OFADD__(v33, 1))
  {
    __break(1u);
  }

  else
  {
    sub_100277DDC(a1, v30, v31, v33 + 1, a6, a7);
  }
}

void sub_100281324(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a2;
  v33 = a5;
  v30 = a3;
  v31 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianRecord(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  sub_10028338C(a1, v16, type metadata accessor for CustodianRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v28 = a6;
    v34 = v22;
    *v21 = 136315394;
    (*(v11 + 16))(v13, v16, v10);
    sub_1002833F4(v16, type metadata accessor for CustodianRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = sub_10021145C(v23, v25, &v34);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10021145C(0x6169646F74737543, 0xEF64726F6365526ELL, &v34);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Trying to resave after a delay following a recoverable/transient error, recordID: %s, type: %s", v21, 0x16u);
    swift_arrayDestroy();
    a6 = v28;

    a7 = v29;
  }

  else
  {
    sub_1002833F4(v16, type metadata accessor for CustodianRecord);
  }

  if (__OFADD__(v33, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1002784C8(a1, v30, v31, v33 + 1, a6, a7);
  }
}

uint64_t sub_10028169C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a2;
  v33 = a5;
  v30 = a3;
  v31 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BeneficiaryInfoRecord(0);
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  v34 = a1;
  sub_10028338C(a1, v16, type metadata accessor for BeneficiaryInfoRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v28 = a6;
    v35 = v22;
    *v21 = 136315394;
    (*(v11 + 16))(v13, &v16[*(v14 + 32)], v10);
    sub_1002833F4(v16, type metadata accessor for BeneficiaryInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = sub_10021145C(v23, v25, &v35);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10021145C(0xD000000000000015, 0x8000000100330410, &v35);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Trying to resave after a delay following a recoverable/transient error, recordID: %s, type: %s", v21, 0x16u);
    swift_arrayDestroy();
    a6 = v28;

    a7 = v29;
  }

  else
  {
    sub_1002833F4(v16, type metadata accessor for BeneficiaryInfoRecord);
  }

  result = v34;
  if (!__OFADD__(v33, 1))
  {
    return sub_100278BBC(v34, v30, v31, v33 + 1, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100281A18(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a2;
  v33 = a5;
  v30 = a3;
  v31 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for InheritanceInvitationRecord(0);
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  v34 = a1;
  sub_10028338C(a1, v16, type metadata accessor for InheritanceInvitationRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v28 = a6;
    v35 = v22;
    *v21 = 136315394;
    (*(v11 + 16))(v13, &v16[*(v14 + 36)], v10);
    sub_1002833F4(v16, type metadata accessor for InheritanceInvitationRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = sub_10021145C(v23, v25, &v35);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10021145C(0xD00000000000001BLL, 0x8000000100330380, &v35);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Trying to resave after a delay following a recoverable/transient error, recordID: %s, type: %s", v21, 0x16u);
    swift_arrayDestroy();
    a6 = v28;

    a7 = v29;
  }

  else
  {
    sub_1002833F4(v16, type metadata accessor for InheritanceInvitationRecord);
  }

  result = v34;
  if (!__OFADD__(v33, 1))
  {
    return sub_1002792B4(v34, v30, v31, v33 + 1, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100281D94(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a2;
  v33 = a5;
  v30 = a3;
  v31 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BenefactorInfoRecord(0);
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  v34 = a1;
  sub_10028338C(a1, v16, type metadata accessor for BenefactorInfoRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v28 = a6;
    v35 = v22;
    *v21 = 136315394;
    (*(v11 + 16))(v13, &v16[*(v14 + 28)], v10);
    sub_1002833F4(v16, type metadata accessor for BenefactorInfoRecord);
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = sub_10021145C(v23, v25, &v35);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10021145C(0xD000000000000014, 0x80000001003303F0, &v35);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Trying to resave after a delay following a recoverable/transient error, recordID: %s, type: %s", v21, 0x16u);
    swift_arrayDestroy();
    a6 = v28;

    a7 = v29;
  }

  else
  {
    sub_1002833F4(v16, type metadata accessor for BenefactorInfoRecord);
  }

  result = v34;
  if (!__OFADD__(v33, 1))
  {
    return sub_1002799AC(v34, v30, v31, v33 + 1, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t sub_100282110(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_100277DDC(a3, a4, a5, 0, sub_100282CB8, v14);
}

unint64_t sub_100282280()
{
  result = qword_1003E4F08;
  if (!qword_1003E4F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E4F08);
  }

  return result;
}

uint64_t sub_1002822D4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100008D04(v7, qword_1003FAAB8);
  sub_10028338C(a1, v6, type metadata accessor for CustodianshipInfoRecord);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    sub_1002833F4(v6, type metadata accessor for CustodianshipInfoRecord);
    v15 = sub_10021145C(v12, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "Custodian invitation is not accepted, custodianID: %s", v10, 0xCu);
    sub_10000839C(v11);
  }

  else
  {

    sub_1002833F4(v6, type metadata accessor for CustodianshipInfoRecord);
  }

  if (a2)
  {
    return 4294967233;
  }

  else
  {
    return 65;
  }
}

uint64_t sub_10028253C(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  v4 = type metadata accessor for CustodianshipInfoRecord(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v25[-v8];
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAAB8);
  sub_10028338C(a1, v9, type metadata accessor for CustodianshipInfoRecord);
  sub_10028338C(a1, v7, type metadata accessor for CustodianshipInfoRecord);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = v2;
    v2 = v13;
    v14 = swift_slowAlloc();
    v27 = v14;
    *v2 = 134218242;
    v15 = *&v9[*(v4 + 28)];
    sub_1002833F4(v9, type metadata accessor for CustodianshipInfoRecord);
    *(v2 + 4) = v15;
    *(v2 + 12) = 2080;
    type metadata accessor for UUID();
    sub_100282F14(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
    v19 = sub_10021145C(v16, v18, &v27);

    *(v2 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "Custodian invitation is other status: %ld for record with custodianID: %s", v2, 0x16u);
    sub_10000839C(v14);

    LOBYTE(v2) = v26;
  }

  else
  {
    sub_1002833F4(v9, type metadata accessor for CustodianshipInfoRecord);

    sub_1002833F4(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v20 = *(a1 + *(v4 + 28));
  if (v20 == 5)
  {
    v21 = (v2 & 1) == 0;
    v22 = 73;
    v23 = -55;
  }

  else
  {
    v21 = (v2 & 1) == 0;
    if (v20 == 3)
    {
      v22 = 72;
      v23 = -56;
    }

    else
    {
      v22 = 74;
      v23 = -54;
    }
  }

  if (v21)
  {
    return v22;
  }

  else
  {
    return v23;
  }
}

uint64_t sub_100282854()
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008D04(v0, qword_1003FAAB8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Inferring record setup version...", v3, 2u);
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Record is not CustodianRecord, defaulting to unknown setup version", v6, 2u);
  }

  return 0;
}

uint64_t sub_10028299C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000082A8;

  return sub_1002725DC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100282A70()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[7], v4);

  sub_100012324(*(v0 + v2 + v1[10]), *(v0 + v2 + v1[10] + 8));

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_100282B98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100273C40(a1, v6, a2);
}

uint64_t sub_100282C24()
{
  v1 = sub_100005814(&unk_1003D9260, &unk_10033ECE0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_100282CB8(uint64_t a1)
{
  sub_100005814(&unk_1003D9260, &unk_10033ECE0);

  return sub_100277C64(a1);
}

uint64_t sub_100282D64()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_100282EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100282F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100282F8C()
{
  v1 = type metadata accessor for BeneficiaryInfoRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v9 = *(*(v1 - 1) + 64);
  v3 = v0 + v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v0 + v2, v4);

  sub_100012324(*(v3 + v1[7]), *(v3 + v1[7] + 8));
  v6(v0 + v2 + v1[8], v4);
  sub_100012324(*(v3 + v1[9]), *(v3 + v1[9] + 8));
  v7 = v1[11];
  if (!(*(v5 + 48))(v0 + v2 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  return _swift_deallocObject(v0, ((((((((v9 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1002831F4()
{
  v1 = (type metadata accessor for BenefactorInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[9], v5);
  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10028338C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002833F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100283458(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002834EC()
{
  v1 = (type metadata accessor for InheritanceInvitationRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((((((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);

  v6(v4 + v1[11], v5);
  sub_100012324(*(v4 + v1[12]), *(v4 + v1[12] + 8));

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_1002836D4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v7);
  v11 = *(v3 + v9);
  v12 = *(v3 + v8);
  v13 = *(v3 + v8 + 8);
  v14 = (v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return a3(a1, v3 + v6, v10, v12, v13, v11, v15, v16);
}

uint64_t sub_1002837B4()
{
  v1 = type metadata accessor for CustodianRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v7(v0 + v2, v5);
  v7(v0 + v2 + v1[5], v5);

  v8 = (v0 + v2 + v1[10]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v10 = v1[16];
  if (!(*(v6 + 48))(v4 + v10, 1, v5))
  {
    v7(v4 + v10, v5);
  }

  return _swift_deallocObject(v0, ((((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

uint64_t sub_1002839FC(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v5);
  v9 = *(v2 + v6);
  v10 = *(v2 + v6 + 8);
  v11 = *(v2 + v7);
  v12 = (v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  return a2(v2 + v4, v8, v9, v10, v11, v13, v14);
}

uint64_t sub_100283B2C()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4 + 8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - CDP not enabled, posting a CDP repair CFU.", v9, 0xCu);
    sub_10000839C(v10);
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpFollowUpHandler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  sub_100260F04(1u, 0);
  return sub_10000839C(v13);
}

uint64_t sub_100283EC8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100283F94, 0, 0);
}

uint64_t sub_100283F94()
{
  v23 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v22);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Checking device escrow record state.", v4, 0xCu);
    sub_10000839C(v5);
  }

  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v8 = *(v0 + 80);
  (*(v7 + 16))(v6, *(v0 + 72) + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpController, v8);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v6, v8);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v9 = sub_10013C498();
  sub_10000839C((v0 + 16));
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22[0] = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_10021145C(0x746C616548504443, 0xEE006B6365684368, v22);
    *(v12 + 12) = 2080;
    *(v0 + 56) = v9;
    type metadata accessor for CDPEscrowRecordViabilityState(0);
    v13 = String.init<A>(describing:)();
    v15 = sub_10021145C(v13, v14, v22);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s - Checked device escrow record state and got: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(v0 + 64);
  v17 = sub_100284E1C(v9, v16);
  sub_100284AFC(v17, v16);
  v18 = sub_10013DA94(v9);
  if (v18)
  {
    v19 = v18;
    swift_willThrow();
    v17 = sub_100286E94(*(v0 + 64), v19);
  }

  v20 = *(v0 + 8);

  return v20(v17);
}

uint64_t sub_100284370(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_10028443C, 0, 0);
}

uint64_t sub_10028443C()
{
  v12 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_100008D04(v1, qword_1003FAAB8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s - Checking device escrow record state.", v4, 0xCu);
    sub_10000839C(v5);
  }

  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  (*(v7 + 16))(v6, v0[9] + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpController, v8);
  Dependency.wrappedValue.getter();
  (*(v7 + 8))(v6, v8);
  v9 = swift_task_alloc();
  v0[14] = v9;
  *v9 = v0;
  v9[1] = sub_100284650;

  return sub_10013EB90();
}

uint64_t sub_100284650(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v4 = sub_100284924;
  }

  else
  {
    v4 = sub_100284764;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100284764()
{
  v13 = v0;
  sub_10000839C(v0 + 2);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v4 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v4 = 136315394;
    *(v4 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v12);
    *(v4 + 12) = 2080;
    v0[7] = v3;
    type metadata accessor for CDPEscrowRecordViabilityState(0);
    v5 = String.init<A>(describing:)();
    v7 = sub_10021145C(v5, v6, &v12);

    *(v4 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - Checked device escrow record state and got: %s", v4, 0x16u);
    swift_arrayDestroy();
  }

  v8 = v0[8];
  v9 = sub_100284E1C(v0[15], v8);
  sub_100284AFC(v9, v8);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_100284924()
{
  v10 = v0;
  sub_10000839C((v0 + 16));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v9);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s - Escrow record check failed, returning .unknown. Error: %@", v3, 0x16u);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v5);
  }

  else
  {
  }

  v7 = *(v0 + 8);

  return v7(0);
}

uint64_t sub_100284AFC(uint64_t a1, void *a2)
{
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - v6;
  isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v9 = String._bridgeToObjectiveC()();
  [a2 setAccountProperty:isa forKey:v9];

  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__accountStore, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  sub_1000080F8(v12, v12[3]);
  sub_10015BC80(a2);
  return sub_10000839C(v12);
}

uint64_t sub_100284E1C(uint64_t result, void *a2)
{
  if (result <= 3)
  {
    if (result <= 1)
    {
      if (!result)
      {
        return result;
      }

      if (result == 1)
      {
        sub_100286358(a2);
        return 1;
      }

      return 0;
    }

    if (result != 2)
    {
      return result;
    }

LABEL_20:
    v8 = result;
    sub_100285008(a2, 0);
    return v8;
  }

  if (result > 5)
  {
    if (result == 6)
    {
LABEL_6:
      v2 = result;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100008D04(v3, qword_1003FAAB8);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v9 = v7;
        *v6 = 136315138;
        *(v6 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v9);
        _os_log_impl(&_mh_execute_header, v4, v5, "%s - Return secure terms needed state without handling", v6, 0xCu);
        sub_10000839C(v7);
      }

      return v2;
    }

    if (result != 7)
    {
      if (result == 8)
      {
        goto LABEL_6;
      }

      return 0;
    }

    goto LABEL_20;
  }

  if (result == 4)
  {
    sub_100285008(a2, 1);
    return 4;
  }

  return result;
}

void sub_100285008(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31[-v8];
  v10 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31[-v12];
  (*(v11 + 16))(&v31[-v12], v3 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__deviceState, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  v14 = [objc_allocWithZone(AKDevice) init];
  LODWORD(v10) = [v14 isProtectedWithPasscode];

  sub_10000839C(&v36);
  if (v10)
  {
    v15 = String._bridgeToObjectiveC()();
    v16 = [a1 accountPropertyForKey:v15];

    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v36 = v34;
    v37 = v35;
    if (*(&v35 + 1))
    {
      sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
      if (swift_dynamicCast())
      {
        v22 = v33;
        sub_1002855F8(v33);
        if (v22)
        {
          v23 = v22;
          sub_100285F4C(a1, v4 & 1, v23);

LABEL_21:
          (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__accountStore, v6);
          Dependency.wrappedValue.getter();
          (*(v7 + 8))(v9, v6);
          sub_1000080F8(&v36, *(&v37 + 1));
          sub_10015BC80(a1);

          sub_10000839C(&v36);
          return;
        }

LABEL_16:
        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100008D04(v24, qword_1003FAAB8);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v32 = v4;
          v4 = v27;
          v28 = swift_slowAlloc();
          *&v36 = v28;
          *v4 = 136315138;
          *(v4 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v36);
          _os_log_impl(&_mh_execute_header, v25, v26, "%s - unrecoverable escrow record and failure count is missing... default to 1", v4, 0xCu);
          sub_10000839C(v28);

          LOBYTE(v4) = v32;
        }

        isa = Int._bridgeToObjectiveC()().super.super.isa;
        v30 = String._bridgeToObjectiveC()();
        [a1 setAccountProperty:isa forKey:v30];

        sub_100285B44(v4 & 1);
        v23 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_100008D3C(&v36, &qword_1003D87C8, qword_100344800);
    }

    sub_1002855F8(0);
    goto LABEL_16;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAB8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *&v36 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v36);
    _os_log_impl(&_mh_execute_header, v18, v19, "    %s - No passcode. Not sending iCSC Loss event or posting any CFUs.", v20, 0xCu);
    sub_10000839C(v21);
  }
}

void sub_1002855F8(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - v6;
  if (a1 && (sub_100016034(0, &qword_1003D8D68, NSNumber_ptr), isa = NSNumber.init(integerLiteral:)(0).super.super.isa, v9 = a1, v10 = static NSObject.== infix(_:_:)(), isa, v9, (v10 & 1) == 0))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);
    v32 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v34);
      _os_log_impl(&_mh_execute_header, v32, v27, "%s - Not posting iCSC Loss Detected event. Previous known state should be viable", v28, 0xCu);
      sub_10000839C(v29);
    }

    else
    {
      v30 = v32;
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v34[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v34);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s - Posting iCSC Loss Detected event because escrow record state transitioned from viable to unviable", v14, 0xCu);
      sub_10000839C(v15);
    }

    v16 = kAAAnalyticsiCSCLossDetectedEvent;
    (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__accountStore, v4);
    v17 = v16;
    Dependency.wrappedValue.getter();
    (*(v5 + 8))(v7, v4);
    v18 = [*(*sub_1000080F8(v34 v34[3]) + 16)];
    if (!v18 || (v19 = v18, v20 = [v18 aa_altDSID], v19, !v20))
    {
      v20 = 0;
    }

    v21 = [objc_opt_self() analyticsEventWithName:v17 altDSID:v20 flowID:0];

    sub_10000839C(v34);
    if (v21)
    {
      type metadata accessor for AAError(0);
      v33 = -4419;
      v22 = v21;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_100287E08(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
      _BridgedStoredNSError.init(_:userInfo:)();
      v23 = v34[0];
      v24 = _convertErrorToNSError(_:)();

      [v22 updateTaskResultWithError:v24];
    }

    v25 = [objc_opt_self() reporter];
    if (v21)
    {
      [v25 sendEvent:v21];

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100285B44(char a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  if (a1)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  v10 = sub_100008D04(v9, qword_1003FAAB8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v22 = v10;
    v14 = v13;
    v21 = swift_slowAlloc();
    v24[0] = v21;
    *v14 = 136315394;
    *(v14 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v24);
    *(v14 + 12) = 2080;
    LOBYTE(v23) = v8;
    v15 = String.init<A>(describing:)();
    v17 = v2;
    v18 = sub_10021145C(v15, v16, v24);

    *(v14 + 14) = v18;
    v2 = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s - device has passcode, posting %s CFU to verify passcode", v14, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpFollowUpHandler, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  sub_100260F04(v8, 0);
  return sub_10000839C(v24);
}

void sub_100285F4C(void *a1, char a2, void *a3)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = a3;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v26);
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "    %s - unrecoverable escrow record, number of previous     failures: %@", v10, 0x16u);
    sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v12);
  }

  v14 = [v7 integerValue];
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    v17 = String._bridgeToObjectiveC()();
    [a1 setAccountProperty:isa forKey:v17];

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v26);
      *(v20 + 12) = 2048;
      *(v20 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v18, v19, "    %s - unrecoverable escrow record,     incremented failure count to: %ld", v20, 0x16u);
      sub_10000839C(v21);
    }

    if (v15 >= 1)
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v26);
        _os_log_impl(&_mh_execute_header, v22, v23, "%s - unrecoverable escrow record detected more than once, proceeding to verify passcode scenario", v24, 0xCu);
        sub_10000839C(v25);
      }

      sub_100285B44(a2 & 1);
    }
  }
}

void sub_100286358(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-1] - v6;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAAB8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = &unk_10033E000;
  if (os_log_type_enabled(v9, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v21);
    _os_log_impl(&_mh_execute_header, v9, v10, "%s - escrow record is available", v12, 0xCu);
    sub_10000839C(v13);
    v11 = &unk_10033E000;
  }

  sub_1002866E0();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v15 = String._bridgeToObjectiveC()();
  [a1 setAccountProperty:isa forKey:v15];

  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__accountStore, v4);
  Dependency.wrappedValue.getter();
  (*(v5 + 8))(v7, v4);
  sub_1000080F8(v21, v21[3]);
  sub_10015BC80(a1);
  sub_10000839C(v21);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21[0] = v19;
    *v18 = v11[201];
    *(v18 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v21);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s - escrow record is available - resetting previous failures to ZERO", v18, 0xCu);
    sub_10000839C(v19);
  }
}

uint64_t sub_1002866E0()
{
  v1 = v0;
  v2 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4 + 8;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAAB8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v13);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s - device has passcode and escrow record, clearing CFU to verify passcode", v9, 0xCu);
    sub_10000839C(v10);
  }

  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpFollowUpHandler, v2);
  Dependency.wrappedValue.getter();
  (*(v3 + 8))(v5, v2);
  sub_100260DB8();
  return sub_10000839C(v13);
}

uint64_t sub_100286A74()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpController;
  v2 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpFollowUpHandler;
  v4 = sub_100005814(&qword_1003E5220, qword_100347FD0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__featureFlagStateProvider;
  v8 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__deviceState;
  v10 = sub_100005814(&qword_1003E3B30, qword_100346D00);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EscrowRecordViabilityProvider(uint64_t a1)
{
  result = qword_1003E5038;
  if (!qword_1003E5038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100286CA0(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DB720, &unk_1003DACD0, &unk_10033F020);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003E5048, &qword_1003DF5B0, &qword_100343688);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &unk_1003E46A8, &qword_1003E03E0, &qword_100343DC0);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &unk_1003E3980, &qword_1003DF600, &unk_1003436A0);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_100286E94(void *a1, uint64_t a2)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v19[0] = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, v19);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "    %s - escrow record check failed with error     %@", v6, 0x16u);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v8);
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [a1 accountPropertyForKey:v10];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v12 = v20;
      if ([v20 integerValue] > 0)
      {
        type metadata accessor for AAError(0);
        sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033EB30;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 40) = v14;
        v15 = _convertErrorToNSError(_:)();
        *(inited + 72) = sub_100016034(0, &qword_1003DB5F0, NSError_ptr);
        *(inited + 48) = v15;
        sub_100308978(inited);
        swift_setDeallocating();
        sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
        sub_100287E08(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_100008D3C(v19, &qword_1003D87C8, qword_100344800);
  }

  return 1;
}

uint64_t sub_100287260(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  v3 = sub_100005814(&qword_1003E4948, &qword_100347B50);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v4 = sub_100005814(&unk_1003DF4D0, &unk_10033F290);
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1002873C0, 0, 0);
}

uint64_t sub_1002873C0()
{
  v41 = v0;
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = v0[28];
  v5 = OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpController;
  v6 = *(v2 + 16);
  v6(v1, v4 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__cdpController, v3);
  Dependency.wrappedValue.getter();
  v7 = *(v2 + 8);
  v7(v1, v3);
  v8 = [objc_allocWithZone(ACAccountStore) init];
  v9 = [v8 aa_primaryAppleAccount];

  if (!v9 || (v10 = [v9 aa_personID], v9, !v10))
  {
    sub_10000839C(v0 + 2);
    goto LABEL_10;
  }

  v11 = [objc_opt_self() isICDPEnabledForDSID:v10];

  sub_10000839C(v0 + 2);
  if ((v11 & 1) == 0)
  {
LABEL_10:
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v40 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v40);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s - CDP is not enabled or has never been enabled for this account, bailing from health check...", v29, 0xCu);
      sub_10000839C(v30);
    }

    type metadata accessor for AAError(0);
    v0[23] = -16;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_100287E08(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    goto LABEL_15;
  }

  v12 = v0[34];
  v13 = v0[32];
  v6(v12, v4 + v5, v13);
  Dependency.wrappedValue.getter();
  v7(v12, v13);
  v14 = *(*sub_1000080F8(v0 + 7, v0[10]) + 24);
  v0[24] = 0;
  v15 = [v14 isManateeAvailable:v0 + 24];
  v16 = v0[24];
  if (v15)
  {
    v18 = v0[30];
    v17 = v0[31];
    v20 = v0[28];
    v19 = v0[29];
    v21 = v16;
    sub_10000839C(v0 + 7);
    (*(v18 + 16))(v17, v20 + OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__featureFlagStateProvider, v19);
    Dependency.wrappedValue.getter();
    (*(v18 + 8))(v17, v19);
    v0[20] = &type metadata for AAFeatureFlags;
    v0[21] = sub_10015B62C();
    *(v0 + 136) = 6;
    v22 = isFeatureEnabled(_:)();
    sub_10000839C(v0 + 12);
    sub_10000839C(v0 + 17);
    if (v22)
    {
      v23 = swift_task_alloc();
      v0[35] = v23;
      *v23 = v0;
      v23[1] = sub_100287AD8;
      v24 = v0[27];

      return sub_100284370(v24);
    }

    else
    {
      v38 = swift_task_alloc();
      v0[36] = v38;
      *v38 = v0;
      v38[1] = sub_100287C70;
      v39 = v0[27];

      return sub_100283EC8(v39);
    }
  }

  v32 = v16;
  _convertNSErrorToError(_:)();

  swift_willThrow();

  sub_10000839C(v0 + 7);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_100008D04(v33, qword_1003FAAB8);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v40 = v37;
    *v36 = 136315138;
    *(v36 + 4) = sub_10021145C(0xD00000000000001ELL, 0x8000000100332B00, &v40);
    _os_log_impl(&_mh_execute_header, v34, v35, "%s - Manatee is not available, proceeding to post CDP repair.", v36, 0xCu);
    sub_10000839C(v37);
  }

  sub_100283B2C();
  type metadata accessor for AASignInError(0);
  v0[26] = -8008;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100287E08(&qword_1003D8338, type metadata accessor for AASignInError, &unk_10033DC64);
LABEL_15:
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  v31 = v0[1];

  return v31();
}

uint64_t sub_100287AD8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100287C70(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_100287E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100287E6C(uint64_t a1)
{
  sub_100005814(&qword_1003DF650, &unk_1003480B0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A40, &unk_10033F180);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A20, &unk_10033F170);
  Dependency.init(dependencyId:config:)();
  v3 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider_queue;
  v4 = [objc_allocWithZone(NSOperationQueue) init];
  *(v1 + v3) = v4;
  *(v1 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider_healthChecks) = a1;
  [v4 setMaxConcurrentOperationCount:1];
  return v1;
}

void sub_100288010(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    (*(v8 + 16))(v10, Strong + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__accountStore, v7);
    Dependency.wrappedValue.getter();
    (*(v8 + 8))(v10, v7);
    v20 = [*(*sub_1000080F8(v40 v40[3]) + 16)];
    if (v20)
    {

      sub_10000839C(v40);
      UUID.init()();
      v21 = UUID.uuidString.getter();
      v23 = v22;
      (*(v4 + 8))(v6, v3);

      sub_10028AE34(1, v21, v23, v19, v19, a1);
    }

    else
    {
      v28 = sub_10000839C(v40);
      sub_10030FF34(v28, v29, v30, v31, v32, v33, v34, v35, v40[0]);
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100008D04(v36, qword_1003FAAB8);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "No account signed in. Skipping Health Checks.", v39, 2u);
      }
    }
  }

  else
  {
    sub_10030FF34(0, v12, v13, v14, v15, v16, v17, v18, v40[0]);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100008D04(v24, qword_1003FAAB8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Lost reference to self. Aborting XPC activity Health Checks", v27, 2u);
    }
  }
}

BOOL sub_1002883FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100005814(&qword_1003E5498, &unk_1003480D0);
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = &v44 - v10;
  v12 = sub_100005814(&unk_1003DBB90, &qword_10033FC38);
  v47 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v22 = &v44 - v21;
  if (*(a2 + 16))
  {
    LODWORD(v48) = a1;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100008D04(v23, qword_1003FAAB8);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v45 = v11;
      v27 = v26;
      v28 = swift_slowAlloc();
      v44 = v8;
      v46 = a4;
      v29 = v28;
      *&v54[0] = v28;
      *v27 = 136315138;
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v30 = Dictionary.description.getter();
      v32 = a3;
      v33 = v9;
      v34 = sub_10021145C(v30, v31, v54);

      *(v27 + 4) = v34;
      v9 = v33;
      a3 = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Overall Health Check failed: %s", v27, 0xCu);
      sub_10000839C(v29);
      a4 = v46;
      v8 = v44;

      v11 = v45;
    }

    if (v48)
    {
      v13 = [objc_opt_self() isHealthCheckTTREnabled];
      if (v13)
      {
        v45 = v11;
        v48 = a3;
        sub_100005814(&unk_1003E4DE0, &qword_1003432F0);
        v35 = swift_allocObject();
        v46 = a4;
        v36 = v35;
        *(v35 + 16) = xmmword_1003431D0;
        sub_10028B40C();
        v36[4].super.super.isa = NSNumber.init(integerLiteral:)(1518603).super.super.isa;
        *&v51 = 0xD0000000000000AFLL;
        *(&v51 + 1) = 0x8000000100332BA0;
        *&v52 = 0xD000000000000025;
        *(&v52 + 1) = 0x8000000100332CE0;
        *v53 = 0xD000000000000086;
        *&v53[8] = 0x8000000100332C50;
        *&v53[16] = v36;
        v53[24] = 0;
        v54[0] = v51;
        v54[1] = v52;
        v55[0] = *v53;
        *(v55 + 9) = *&v53[9];
        v37 = v47;
        (*(v47 + 16))(v22, v48 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__ttrRequester, v12);
        Dependency.wrappedValue.getter();
        (*(v37 + 8))(v22, v12);
        v38 = *sub_1000080F8(v50, v50[3]);
        v39 = sub_1002DCB74(v54);
        sub_10028B458(&v51);
        v40 = v45;
        (*(v9 + 16))(v45, v38 + OBJC_IVAR____TtC13appleaccountd27TapToRadarRequestController__helper, v8);
        Dependency.wrappedValue.getter();
        (*(v9 + 8))(v40, v8);
        v41 = aBlock[0];
        aBlock[4] = sub_1002889A0;
        aBlock[5] = 0;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10020E828;
        aBlock[3] = &unk_1003B1DA0;
        v42 = _Block_copy(aBlock);

        [v41 silentTapToRadarWithRequest:v39 completion:v42];
        _Block_release(v42);

        v13 = sub_10000839C(v50);
      }
    }
  }

  return sub_10030FF34(v13, v14, v15, v16, v17, v18, v19, v20, v44);
}

void sub_1002889A0(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Health Check TTR launched successfully.", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAAB8);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Unable to launch TTR: %@", v3, 0xCu);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);

LABEL_10:

    return;
  }
}

uint64_t sub_100288BE8(char a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100008D04(v13, qword_1003FAAB8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v25 = a4;
    v17 = a7;
    v18 = swift_slowAlloc();
    v26 = v18;
    *v16 = 136315394;
    if (a2)
    {
      v19 = 0x656C756465686353;
    }

    else
    {
      v19 = 0x6E616D6544206E4FLL;
    }

    v20 = a1;
    v21 = a5;
    v22 = a6;
    v23 = sub_10021145C(v19, 0xE900000000000064, &v26);

    *(v16 + 4) = v23;
    a6 = v22;
    a5 = v21;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v20 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "Completed pulling all cloud data before %s Health Checks: %{BOOL}d", v16, 0x12u);
    sub_10000839C(v18);
    a7 = v17;
    a4 = v25;
  }

  return sub_100288DCC(a2 & 1, a4, a5, a6, a7);
}

uint64_t sub_100288DCC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v49 = a4;
  v46 = a2;
  v51 = a1;
  v9 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = dispatch_group_create();
  v50 = swift_allocObject();
  *(v50 + 16) = &_swiftEmptyDictionarySingleton;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  (*(v10 + 16))(v12, v6 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__analyticsAccountModel, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v12, v9);
  v15 = sub_1000080F8(v58, v58[3]);
  v16 = *v15;
  v17 = *(*v15 + OBJC_IVAR____TtC13appleaccountd27DaemonAnalyticsAccountModel_dispatchQueue);
  v18 = swift_allocObject();
  *(v18 + 16) = sub_10028B50C;
  *(v18 + 24) = v16;
  v56 = sub_100071DCC;
  v57 = v18;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v54 = sub_10030F718;
  v55 = &unk_1003B1E40;
  v19 = _Block_copy(&aBlock);

  dispatch_sync(v17, v19);
  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if (v19)
  {
    __break(1u);
  }

  else
  {
    sub_10000839C(v58);
    if (qword_1003D7F48 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAB8);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v47 = v13;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&aBlock = v25;
    *v24 = 136315138;
    if (v51)
    {
      v26 = 0x656C756465686353;
    }

    else
    {
      v26 = 0x6E616D6544206E4FLL;
    }

    v27 = sub_10021145C(v26, 0xE900000000000064, &aBlock);

    *(v24 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v21, v22, "Starting %s Health Checks.", v24, 0xCu);
    sub_10000839C(v25);
  }

  v28 = v50;
  v29 = *(v6 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider_healthChecks);
  v30 = *(v29 + 16);
  v31 = &OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__featureFlagStateProvider;
  v48 = v6;
  if (v30)
  {
    v50 = a5;
    v32 = *(v6 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider_queue);
    v33 = v29 + 32;
    v34 = v51 & 1;
    v35 = v46;
    do
    {
      sub_100040738(v33, &aBlock);
      v36 = swift_allocObject();
      *(v36 + 16) = v34;
      sub_10003E950(&aBlock, v36 + 24);
      *(v36 + 64) = v35;
      *(v36 + 72) = a3;
      *(v36 + 80) = v28;
      *(v36 + 88) = v14;
      v37 = type metadata accessor for AsyncOperation();
      v38 = objc_allocWithZone(v37);
      v38[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
      v39 = &v38[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
      *v39 = sub_10028B574;
      v39[1] = v36;
      v52.receiver = v38;
      v52.super_class = v37;

      v40 = objc_msgSendSuper2(&v52, "init");
      [v32 addOperation:v40];

      v33 += 40;
      --v30;
    }

    while (v30);
    a5 = v50;
    v31 = &OBJC_IVAR____TtC13appleaccountd29EscrowRecordViabilityProvider__featureFlagStateProvider;
  }

  else
  {
    v34 = v51 & 1;
  }

  v41 = v48;
  v42 = *(v48 + v31[76]);
  v43 = swift_allocObject();
  *(v43 + 16) = v34;
  *(v43 + 24) = v28;
  *(v43 + 32) = v41;
  *(v43 + 40) = v49;
  *(v43 + 48) = a5;
  *(v43 + 56) = v14;
  v56 = sub_10028B5D8;
  v57 = v43;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v54 = sub_100031EF0;
  v55 = &unk_1003B1EB8;
  v44 = _Block_copy(&aBlock);

  [v42 addBarrierBlock:v44];
  _Block_release(v44);
}

uint64_t sub_1002893B0(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAB8);
  sub_100040738(a4, &v38);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  v35 = a3;
  if (os_log_type_enabled(v16, v17))
  {
    v34 = a6;
    v18 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v18 = 136315394;
    if (a3)
    {
      v19 = 0x656C756465686353;
    }

    else
    {
      v19 = 0x6E616D6544206E4FLL;
    }

    v20 = sub_10021145C(v19, 0xE900000000000064, &v37);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    sub_1000080F8(&v38, v39);
    swift_getDynamicType();
    v21 = _typeName(_:qualified:)();
    v22 = a7;
    v23 = a2;
    v24 = a8;
    v25 = a1;
    v27 = v26;
    sub_10000839C(&v38);
    v28 = sub_10021145C(v21, v27, &v37);
    a1 = v25;
    a8 = v24;
    a2 = v23;
    a7 = v22;

    *(v18 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v16, v17, "Starting %s Health Check - %s", v18, 0x16u);
    swift_arrayDestroy();

    a6 = v34;
  }

  else
  {

    sub_10000839C(&v38);
  }

  v29 = a4[3];
  v30 = a4[4];
  sub_1000080F8(a4, v29);
  sub_100040738(a4, &v38);
  v31 = swift_allocObject();
  *(v31 + 16) = v35 & 1;
  sub_10003E950(&v38, v31 + 24);
  *(v31 + 64) = a7;
  *(v31 + 72) = a8;
  *(v31 + 80) = a1;
  *(v31 + 88) = a2;
  v32 = *(v30 + 16);

  v32(a5, a6, sub_10028B63C, v31, v29, v30);
}

uint64_t sub_1002896B4(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v48 = a5;
    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_100040738(a3, v50);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v47 = a6;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v15 = 136315650;
      if (a2)
      {
        v17 = 0x656C756465686353;
      }

      else
      {
        v17 = 0x6E616D6544206E4FLL;
      }

      v18 = sub_10021145C(v17, 0xE900000000000064, v49);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      sub_1000080F8(v50, v51);
      swift_getDynamicType();
      v19 = _typeName(_:qualified:)();
      v21 = v20;
      sub_10000839C(v50);
      v22 = sub_10021145C(v19, v21, v49);

      *(v15 + 14) = v22;
      *(v15 + 22) = 2112;
      v23 = _convertErrorToNSError(_:)();
      *(v15 + 24) = v23;
      *v16 = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s %s Health Check failed with error %@", v15, 0x20u);
      sub_100008D3C(v16, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();

      a6 = v47;
    }

    else
    {

      sub_10000839C(v50);
    }

    sub_1000080F8(a3, a3[3]);
    DynamicType = swift_getDynamicType();
    v35 = a3[4];
    v50[0] = DynamicType;
    v50[1] = v35;
    sub_100005814(&unk_1003E62A0, qword_100347AD8);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    v39 = _convertErrorToNSError(_:)();
    v40 = [v39 aa_partialErrorsByName];

    if (v40)
    {
      sub_100005814(&unk_1003DBB60, &unk_10033E740);
      v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v41 + 16))
      {

        sub_10028A5B4(v41, (a4 + 16), v36, v38);

        swift_bridgeObjectRelease_n();
LABEL_23:
        swift_beginAccess();
        if (*(v48 + 16))
        {
          v43 = 1;
        }

        else
        {
          v44 = a3[3];
          v45 = a3[4];
          sub_1000080F8(a3, v44);
          v43 = (*(v45 + 24))(v44, v45);
        }

        swift_beginAccess();
        *(v48 + 16) = v43 & 1;
        return a6();
      }
    }

    swift_beginAccess();
    swift_errorRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_1002CEFC4(a1, v36, v38, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v49[0];
    swift_endAccess();
    goto LABEL_23;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100008D04(v24, qword_1003FAAB8);
  sub_100040738(a3, v50);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v49[0] = swift_slowAlloc();
    *v27 = 136315394;
    if (a2)
    {
      v28 = 0x656C756465686353;
    }

    else
    {
      v28 = 0x6E616D6544206E4FLL;
    }

    v29 = sub_10021145C(v28, 0xE900000000000064, v49);

    *(v27 + 4) = v29;
    *(v27 + 12) = 2080;
    sub_1000080F8(v50, v51);
    swift_getDynamicType();
    v30 = _typeName(_:qualified:)();
    v32 = v31;
    sub_10000839C(v50);
    v33 = sub_10021145C(v30, v32, v49);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s %s Health Check completed.", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000839C(v50);
  }

  return a6();
}

uint64_t sub_100289D08(char a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  v36 = a6;
  v37 = a5;
  v10 = sub_100005814(&qword_1003DA130, qword_1003480E0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAAB8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  v35 = v16;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v11;
    v18 = v17;
    v32 = swift_slowAlloc();
    v38[0] = v32;
    *v18 = 136315394;
    if (a1)
    {
      v19 = 0x656C756465686353;
    }

    else
    {
      v19 = 0x6E616D6544206E4FLL;
    }

    v20 = sub_10021145C(v19, 0xE900000000000064, v38);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    swift_beginAccess();

    sub_100005814(&unk_1003DBB60, &unk_10033E740);
    v21 = Dictionary.description.getter();
    v33 = a4;
    v23 = v22;

    v24 = sub_10021145C(v21, v23, v38);
    a4 = v33;

    *(v18 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v15, v35, "Overall %s Health Checks finished with errors: %s", v18, 0x16u);
    swift_arrayDestroy();

    v11 = v34;
  }

  (*(v11 + 16))(v13, a3 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__trustedContactsPreflightScheduler, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  v25 = v39;
  v26 = v40;
  sub_1000080F8(v38, v39);
  (*(*(v26 + 8) + 8))(v25);
  sub_10000839C(v38);
  v27 = v36;
  swift_beginAccess();
  v28 = *(v27 + 16);
  swift_beginAccess();
  v29 = *(a2 + 16);

  a4(v28, v29);
}

uint64_t sub_10028A0B8()
{
  v1 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__ttrRequester;
  v2 = sub_100005814(&unk_1003DBB90, &qword_10033FC38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__storageController;
  v4 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__analyticsAccountModel;
  v6 = sub_100005814(&qword_1003DB628, &qword_10033FAB0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__accountStore;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__syncManager;
  v10 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__trustedContactsPreflightScheduler;
  v12 = sub_100005814(&qword_1003DA130, qword_1003480E0);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthCheckActivityProvider(uint64_t a1)
{
  result = qword_1003E5290;
  if (!qword_1003E5290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028A350(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DB6E0, &qword_1003DF650, &unk_1003480B0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &qword_1003DB280, &unk_1003DA880, &unk_10033F5F0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &qword_1003D9A38, &qword_1003D9A40, &unk_10033F180);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, &qword_1003D9A18, &qword_1003D9A20, &unk_10033F170);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10028A5B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v34 = v9;
  v35 = v5;
  v36 = a2;
  while (v8)
  {
LABEL_11:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v8)) | (v10 << 6)));
    v13 = *v12;
    v14 = v12[1];

    swift_errorRetain();

    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = v13;
    v16._object = v14;
    String.append(_:)(v16);
    swift_getErrorValue();
    v17 = sub_1002DEA80(v41, v42);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a2;
    v40 = *a2;
    *a2 = 0x8000000000000000;
    v21 = sub_1003084DC(a3, a4);
    v22 = *(v19 + 16);
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_24;
    }

    v25 = v20;
    if (*(v19 + 24) >= v24)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v40;
        if (v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1002CFE94();
        v28 = v40;
        if (v25)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1002CC470(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_1003084DC(a3, a4);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_26;
      }

      v21 = v26;
      v28 = v40;
      if (v25)
      {
LABEL_4:
        *(v28[7] + 8 * v21) = v17;

        goto LABEL_5;
      }
    }

    v28[(v21 >> 6) + 8] |= 1 << v21;
    v29 = (v28[6] + 16 * v21);
    *v29 = a3;
    v29[1] = a4;
    *(v28[7] + 8 * v21) = v17;
    v30 = v28[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_25;
    }

    v28[2] = v32;
LABEL_5:
    v8 &= v8 - 1;
    a2 = v36;
    *v36 = v28;
    swift_endAccess();

    v9 = v34;
    v5 = v35;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10028A86C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id), uint64_t a6)
{
  v34 = a2;
  v35 = a3;
  v36 = a1;
  v9 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v13 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  (*(v14 + 16))(v16, a4 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__accountStore, v13);

  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v16, v13);
  v18 = [*(*sub_1000080F8(v38 v39) + 16)];
  if (v18)
  {

    sub_10000839C(v38);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v36;
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136315138;
      if (v23)
      {
        v26 = 0x656C756465686353;
      }

      else
      {
        v26 = 0x6E616D6544206E4FLL;
      }

      v27 = sub_10021145C(v26, 0xE900000000000064, v38);

      *(v24 + 4) = v27;
      v23 = v36;
      _os_log_impl(&_mh_execute_header, v20, v21, "Starting to pull all cloud data before %s Health Checks", v24, 0xCu);
      sub_10000839C(v25);
    }

    (*(v10 + 16))(v12, a4 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__syncManager, v9);
    Dependency.wrappedValue.getter();
    (*(v10 + 8))(v12, v9);
    sub_1000080F8(v38, v39);
    v28 = swift_allocObject();
    *(v28 + 16) = v23 & 1;
    v29 = v34;
    v30 = v35;
    *(v28 + 24) = a4;
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    *(v28 + 48) = sub_10028ADCC;
    *(v28 + 56) = v17;

    sub_1002E93B4(3, 256, sub_10028AE30, v28);

    sub_10000839C(v38);
  }

  else
  {
    sub_10000839C(v38);
    sub_100005814(&qword_1003E4610, &qword_100347AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = 0x72456E496E676953;
    *(inited + 40) = 0xEB00000000726F72;
    type metadata accessor for AASignInError(0);
    v37 = -8014;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10028ADD4();
    _BridgedStoredNSError.init(_:userInfo:)();
    *(inited + 48) = v38[0];
    v33 = sub_100308AA8(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003E4618, qword_100349CF0);
    sub_10028CED4(v33, a5);
  }
}

uint64_t sub_10028AD94()
{

  return _swift_deallocObject(v0, 32);
}

unint64_t sub_10028ADD4()
{
  result = qword_1003D8338;
  if (!qword_1003D8338)
  {
    type metadata accessor for AASignInError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D8338);
  }

  return result;
}

uint64_t sub_10028AE34(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a2;
  v35 = a3;
  v36 = a1;
  v9 = sub_100005814(&qword_1003E0410, qword_1003441B0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - v11;
  v13 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  (*(v14 + 16))(v16, a4 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__accountStore, v13);

  Dependency.wrappedValue.getter();
  (*(v14 + 8))(v16, v13);
  v18 = [*(*sub_1000080F8(v38 v39) + 16)];
  if (v18)
  {

    sub_10000839C(v38);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v36;
    if (v22)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38[0] = v25;
      *v24 = 136315138;
      if (v23)
      {
        v26 = 0x656C756465686353;
      }

      else
      {
        v26 = 0x6E616D6544206E4FLL;
      }

      v27 = sub_10021145C(v26, 0xE900000000000064, v38);

      *(v24 + 4) = v27;
      v23 = v36;
      _os_log_impl(&_mh_execute_header, v20, v21, "Starting to pull all cloud data before %s Health Checks", v24, 0xCu);
      sub_10000839C(v25);
    }

    (*(v10 + 16))(v12, a4 + OBJC_IVAR____TtC13appleaccountd27HealthCheckActivityProvider__syncManager, v9);
    Dependency.wrappedValue.getter();
    (*(v10 + 8))(v12, v9);
    sub_1000080F8(v38, v39);
    v28 = swift_allocObject();
    *(v28 + 16) = v23 & 1;
    v29 = v34;
    v30 = v35;
    *(v28 + 24) = a4;
    *(v28 + 32) = v29;
    *(v28 + 40) = v30;
    *(v28 + 48) = sub_10028B3A8;
    *(v28 + 56) = v17;

    sub_1002E93B4(3, 256, sub_10028B664, v28);

    sub_10000839C(v38);
  }

  else
  {
    sub_10000839C(v38);
    sub_100005814(&qword_1003E4610, &qword_100347AD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = 0x72456E496E676953;
    *(inited + 40) = 0xEB00000000726F72;
    type metadata accessor for AASignInError(0);
    v37 = -8014;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10028ADD4();
    _BridgedStoredNSError.init(_:userInfo:)();
    *(inited + 48) = v38[0];
    v33 = sub_100308AA8(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003E4618, qword_100349CF0);
    sub_1002883FC(0, v33, a5, a6);
  }
}

uint64_t sub_10028B368()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10028B3B0()
{

  return _swift_deallocObject(v0, 64);
}

unint64_t sub_10028B40C()
{
  result = qword_1003D8D68;
  if (!qword_1003D8D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D8D68);
  }

  return result;
}

uint64_t sub_10028B4AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10028B4C4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10028B524()
{
  sub_10000839C((v0 + 24));

  return _swift_deallocObject(v0, 96);
}

uint64_t sub_10028B588()
{

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_10028B5EC()
{
  sub_10000839C((v0 + 24));

  return _swift_deallocObject(v0, 96);
}

void sub_10028B690(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

double sub_10028B6C8()
{
  v0 = objc_opt_self();
  if ([v0 isCustomHealthCheckIntervalEnabled])
  {
    v1 = [v0 customHealthCheckIntervalMinutes];
    if (v1 <= 0)
    {
      v2 = 10;
    }

    else
    {
      v2 = v1;
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAAB8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      *(v6 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v4, v5, "Using Health Check interval - Custom %ld mins", v6, 0xCu);
    }

    return v2 * 60.0;
  }

  else if ([objc_opt_self() isInternalBuild])
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAAB8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Using Health Check interval - One Day", v11, 2u);
    }

    return 86400.0;
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAAB8);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Using Health Check interval - One Week", v16, 2u);
    }

    return 604800.0;
  }
}

double sub_10028B98C()
{
  v0 = [objc_opt_self() customHealthCheckReachabilityIntervalMinutes];
  if (!v0)
  {
    return 2419200.0;
  }

  if (qword_1003D7F48 != -1)
  {
    v7 = v0;
    swift_once();
    v0 = v7;
  }

  v1 = v0;
  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Using Custom Health Check reachability interval - %f", v5, 0xCu);
  }

  return v1;
}

void *sub_10028BAB8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100305D7C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100005814(&unk_1003E55C0, &qword_100348180);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10028BBC0(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100305F30(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10028BCB4(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1003062A8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10028BDB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10028C7AC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10028C84C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_10028BEA8()
{
  v0 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  v21 = *(v0 - 8);
  v22 = v0;
  __chkstk_darwin(v0);
  v2 = &v21 - v1;
  sub_100005814(&qword_1003E4A70, qword_100347BC8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10033E5C0;
  v4 = type metadata accessor for OwnerSetupReadinessHealthCheck(0);
  v5 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A30, &unk_10033F040);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACC0, &unk_10033EFF0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v5 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController) = 0;
  type metadata accessor for ReadinessCheckGracePeriodEvaluator(0);
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  swift_allocObject();
  *(v5 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck_gracePeriodEvaluator) = sub_1002A206C(0, &v25);
  *(v3 + 56) = v4;
  *(v3 + 64) = &off_1003B1F80;
  *(v3 + 32) = v5;
  v6 = type metadata accessor for CustodianSetupReadinessHealthCheck(0);
  v7 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  *(v7 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController) = 0;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  swift_allocObject();
  *(v7 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck_gracePeriodEvaluator) = sub_1002A206C(1, &v25);
  *(v3 + 96) = v6;
  *(v3 + 104) = &off_1003B19D0;
  *(v3 + 72) = v7;
  v8 = sub_10028C9CC();
  *&v25 = v3;
  sub_10028BAB8(v8);
  v9 = v25;
  type metadata accessor for HealthCheckActivityProvider(0);
  swift_allocObject();
  sub_100287E6C(v9);
  v11 = v21;
  v10 = v22;
  (*(v21 + 16))(v2, v23 + OBJC_IVAR____TtC13appleaccountd29TrustedContactHealthScheduler__xpcActivityScheduler, v22);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v2, v10);
  v12 = *sub_1000080F8(v24, v24[3]);
  v13 = static String._fromUTF8Repairing(_:)();
  v15 = v14;
  v16 = sub_10028B6C8();
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < 9.22337204e18)
  {
    LOWORD(v25) = 257;
    *(&v25 + 1) = v16 / 2;
    *&v26 = *(&v25 + 1);
    *(&v26 + 1) = v16;
    v27 = 8;
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = sub_100313A50(&v25, v13, v15, sub_10028D6A0, v17);

    *(v12 + 16) = v18;

    v19 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for OSTransaction();
    swift_allocObject();
    v20 = sub_10030F0FC("com.apple.appleaccountd.trustedContacts.healthCheck", 51, 2);
    sub_10031352C(v20, v19);

    sub_10000839C(v24);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_10028C4A4()
{
  v1 = OBJC_IVAR____TtC13appleaccountd29TrustedContactHealthScheduler__xpcActivityScheduler;
  v2 = sub_100005814(&qword_1003E63F0, &qword_100347BC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrustedContactHealthScheduler(uint64_t a1)
{
  result = qword_1003E54D0;
  if (!qword_1003E54D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10028C5A0(uint64_t a1)
{
  sub_100260880(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10028C654(void (*a1)(id), uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10028C9CC();
  type metadata accessor for HealthCheckActivityProvider(0);
  swift_allocObject();
  v9 = sub_100287E6C(v8);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v5 + 8))(v7, v4);

  sub_10028A86C(0, v10, v12, v9, a1, a2);
}

uint64_t sub_10028C7AC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_10028C84C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10028D6F4();
          for (i = 0; i != v6; ++i)
          {
            sub_100005814(&qword_1003E55E0, &unk_100348188);
            v9 = sub_1001F921C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10028D6A8();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10028C9CC()
{
  sub_100005814(&qword_1003E4A70, qword_100347BC8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100348120;
  v1 = type metadata accessor for TrustedContactsAwarenessSync(0);
  v2 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E01A0, &qword_1003443F0);
  Dependency.init(dependencyId:config:)();
  *(v0 + 56) = v1;
  *(v0 + 64) = &off_1003B24A8;
  *(v0 + 32) = v2;
  v3 = type metadata accessor for CustodianOwnerHealthCheck(0);
  swift_allocObject();
  v4 = sub_100097FE4();
  *(v0 + 96) = v3;
  *(v0 + 104) = &off_1003A7098;
  *(v0 + 72) = v4;
  v5 = type metadata accessor for CustodianHealthCheck(0);
  v6 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003E55D0, &unk_100340CC0);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v0 + 136) = v5;
  *(v0 + 144) = &off_1003A63F0;
  *(v0 + 112) = v6;
  v7 = type metadata accessor for CustodianIncompleteInvitationHealthCheck(0);
  v8 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACC0, &unk_10033EFF0);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  *(v0 + 176) = v7;
  *(v0 + 184) = &off_1003B1960;
  *(v0 + 152) = v8;
  v9 = type metadata accessor for BenefactorAccessKeyHealthCheck(0);
  v10 = swift_allocObject();
  type metadata accessor for InheritanceRequestManager(0);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  *(v0 + 216) = v9;
  *(v0 + 224) = &off_1003AB9A0;
  *(v0 + 192) = v10;
  v11 = type metadata accessor for BeneficiaryHealthCheck(0);
  swift_allocObject();
  v12 = sub_1001A616C();
  *(v0 + 256) = v11;
  *(v0 + 264) = &off_1003ACC98;
  *(v0 + 232) = v12;
  v13 = type metadata accessor for BenefactorHealthCheck(0);
  v14 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  *(v0 + 296) = v13;
  *(v0 + 304) = &off_1003ABB78;
  *(v0 + 272) = v14;
  v15 = type metadata accessor for CloudDataProtectionHealthCheck(0);
  v16 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003DF670, &qword_1003436C8);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACD0, &unk_10033F020);
  Dependency.init(dependencyId:config:)();
  *(v0 + 336) = v15;
  *(v0 + 344) = &off_1003B1918;
  *(v0 + 312) = v16;
  return v0;
}

void sub_10028CED4(uint64_t a1, void (*a2)(id))
{
  if (*(a1 + 16))
  {
    type metadata accessor for AAError(0);
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v5;
    *(inited + 72) = sub_100005814(&unk_1003D91D0, &unk_10033F9C0);
    *(inited + 48) = a1;

    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    sub_1001530B4();
    _BridgedStoredNSError.init(_:userInfo:)();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    v7 = v18;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Overall on-demand health check failed: %@", v10, 0xCu);
      sub_100008D3C(v11, &unk_1003D9140, &qword_10033E640);
    }

    v13 = v7;
    a2(v7);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Overall on-demand health check completed.", v17, 2u);
    }

    a2(0);
  }
}

uint64_t sub_10028D1E8(void (*a1)(id), uint64_t a2)
{
  v20 = a2;
  v21 = a1;
  v2 = type metadata accessor for UUID();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005814(&qword_1003E4A70, qword_100347BC8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10033E5C0;
  v6 = type metadata accessor for OwnerSetupReadinessHealthCheck(0);
  v7 = swift_allocObject();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D9840, &unk_10033EFE0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003D98D0, &unk_10033F050);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9A30, &unk_10033F040);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DACC0, &unk_10033EFF0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v7 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController) = 0;
  type metadata accessor for ReadinessCheckGracePeriodEvaluator(0);
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  swift_allocObject();
  *(v7 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck_gracePeriodEvaluator) = sub_1002A206C(0, &v22);
  *(v5 + 56) = v6;
  *(v5 + 64) = &off_1003B1F80;
  *(v5 + 32) = v7;
  v8 = type metadata accessor for CustodianSetupReadinessHealthCheck(0);
  v9 = swift_allocObject();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2B0, &unk_10033F430);
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  Dependency.init(dependencyId:config:)();
  *(v9 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck____lazy_storage___metadataController) = 0;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  swift_allocObject();
  *(v9 + OBJC_IVAR____TtC13appleaccountd34CustodianSetupReadinessHealthCheck_gracePeriodEvaluator) = sub_1002A206C(1, &v22);
  *(v5 + 96) = v8;
  *(v5 + 104) = &off_1003B19D0;
  *(v5 + 72) = v9;
  v10 = sub_10028C9CC();
  *&v22 = v5;
  sub_10028BAB8(v10);
  v11 = v22;
  type metadata accessor for HealthCheckActivityProvider(0);
  swift_allocObject();
  v12 = sub_100287E6C(v11);
  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  (*(v18 + 8))(v4, v19);
  v16 = v20;

  sub_10028A86C(0, v13, v15, v12, v21, v16);
}

uint64_t sub_10028D668()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

unint64_t sub_10028D6A8()
{
  result = qword_1003E3168;
  if (!qword_1003E3168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003E3168);
  }

  return result;
}

unint64_t sub_10028D6F4()
{
  result = qword_1003E55E8;
  if (!qword_1003E55E8)
  {
    sub_100008CBC(&qword_1003E55E0, &unk_100348188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003E55E8);
  }

  return result;
}

uint64_t sub_10028D75C()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController;
  if (*(v0 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController);
  }

  else
  {
    type metadata accessor for CustodianMetadataController(0);
    v2 = swift_allocObject();
    sub_100005814(&unk_1003D98F0, &qword_10033E9C0);
    Dependency.init(dependencyId:config:)();
    v3 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_encoder;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    *(v2 + v3) = JSONEncoder.init()();
    v4 = OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController_decoder;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    *(v2 + v4) = JSONDecoder.init()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10028D860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10028D888, 0, 0);
}

uint64_t sub_10028D888()
{

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_100266BCC;

  return (sub_10031565C)();
}

uint64_t sub_10028D95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[18] = a2;
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_10028DA94, 0, 0);
}

uint64_t sub_10028DA94()
{
  v49 = v0;
  v1 = *(*(v0 + 144) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck_gracePeriodEvaluator);
  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v2 = 0xD000000000000022;
  }

  else
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*(v1 + OBJC_IVAR____TtC13appleaccountd34ReadinessCheckGracePeriodEvaluator_user))
  {
    v3 = "ownerSetupGracePeriodInSeconds";
  }

  else
  {
    v3 = "ck";
  }

  sub_1002A25A0(v2, v3 | 0x8000000000000000);
  v5 = v4;

  if (v5)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "🔔 Owner setup readiness health check feature is not enabled", v9, 2u);
    }

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "🔔 Owner setup readiness health check feature is enabled. Continuing to owner setup readiness check", v14, 2u);
    }

    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 192);
    v18 = *(v0 + 144);

    (*(v16 + 16))(v15, v18 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__accountStore, v17);
    Dependency.wrappedValue.getter();
    (*(v16 + 8))(v15, v17);
    v19 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
    if (v19 && (v20 = v19, v21 = [v19 aa_altDSID], v20, v21))
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    *(v0 + 216) = v24;
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 168);
    v28 = *(v0 + 144);
    sub_10000839C((v0 + 16));
    *(v0 + 264) = 0;
    (*(v26 + 16))(v25, v28 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v27);
    Dependency.wrappedValue.getter();
    (*(v26 + 8))(v25, v27);
    *(v0 + 224) = *(v0 + 128);
    v29 = kAAAnalyticsEventSetupFailSafeHealthCheckRun;
    v30 = kAAAnalyticsEventSetupFailSafeHealthCheckRun;

    if (v24)
    {

      v31 = String._bridgeToObjectiveC()();
    }

    else
    {
      v31 = 0;
    }

    v32 = objc_opt_self();
    v33 = String._bridgeToObjectiveC()();

    v34 = [v32 analyticsEventWithName:v29 altDSID:v31 flowID:v33];
    *(v0 + 232) = v34;

    if (v34)
    {
      v35 = objc_allocWithZone(NSNumber);
      v36 = v34;
      v37 = [v35 initWithInteger:12];
      sub_100016034(0, &qword_1003D9250, NSString_ptr);
      v38 = NSString.init(stringLiteral:)();
      [v36 setObject:v37 forKeyedSubscript:v38];
    }

    if (qword_1003D7F20 != -1)
    {
      swift_once();
    }

    *(v0 + 240) = sub_100008D04(v11, qword_1003FAA40);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v48 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_10021145C(0xD000000000000022, 0x8000000100332E00, &v48);
      _os_log_impl(&_mh_execute_header, v39, v40, "Performing: %s...", v41, 0xCu);
      sub_10000839C(v42);
    }

    sub_100257274(v29);
    v43 = swift_task_alloc();
    *(v0 + 248) = v43;
    *v43 = v0;
    v43[1] = sub_10028E374;
    v44 = *(v0 + 152);
    v45 = *(v0 + 160);
    v46 = *(v0 + 144);

    return sub_10028E94C(v43, v46, v44, v45, v0 + 264, v22, v24);
  }
}

uint64_t sub_10028E374()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_10028E488;
  }

  else
  {
    v2 = sub_10028E764;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028E488()
{
  v17 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v3 = 136315394;
    *(v3 + 4) = sub_10021145C(0xD000000000000022, 0x8000000100332E00, &v16);
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v6;
    *v4 = v6;
    _os_log_impl(&_mh_execute_header, v1, v2, "❌ %s - failed with error: %@", v3, 0x16u);
    sub_100008D3C(v4, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v5);
  }

  v7 = *(v0 + 232);
  swift_getErrorValue();
  sub_1002DEA80(*(v0 + 64), *(v0 + 72));
  if (v7)
  {
    v8 = *(v0 + 232);
    v9 = v8;
    swift_errorRetain();
    v10 = _convertErrorToNSError(_:)();
    [v9 updateTaskResultWithError:v10];

    swift_beginAccess();
    v11 = 0;
    v12 = *(v0 + 232);
    if (v8 && *(v0 + 264))
    {
      swift_getObjectType();
      v13 = v12;
      sub_100246FA8(v12);
      v12 = *(v0 + 232);
      v11 = v12;
    }
  }

  else
  {
    swift_errorRetain();
    swift_beginAccess();
    v11 = 0;
    v12 = *(v0 + 232);
  }

  swift_willThrow();

  swift_unknownObjectRelease();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10028E764(uint64_t a1)
{
  v12 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_10021145C(0xD000000000000022, 0x8000000100332E00, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "✅ %s - successfully completed!", v4, 0xCu);
    sub_10000839C(v5);
  }

  v6 = *(v1 + 232);
  if (v6)
  {
    [v6 updateTaskResultWithError:0];
    swift_beginAccess();
    if (*(v1 + 264))
    {
      v7 = *(v1 + 232);
      swift_getObjectType();
      v8 = v7;
      sub_100246FA8(v7);

      goto LABEL_8;
    }
  }

  else
  {
    swift_beginAccess();
    if (*(v1 + 264))
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  swift_unknownObjectRelease();

  v9 = *(v1 + 8);

  return v9();
}

uint64_t sub_10028E94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[25] = *(type metadata accessor for CustodianRecord(0) - 8);
  v7[26] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  v9 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v7[30] = v9;
  v7[31] = *(v9 - 8);
  v7[32] = swift_task_alloc();

  return _swift_task_switch(sub_10028EAE0, 0, 0);
}

uint64_t sub_10028EAE0()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v5 = v0[20];
  v4 = v0[21];
  (*(v2 + 16))(v1, v0[19] + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[18] = *sub_1000080F8(v0 + 2, v0[5]);
  v6 = swift_task_alloc();
  v0[33] = v6;
  v6[2] = v0 + 18;
  v6[3] = v5;
  v6[4] = v4;
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_10028EC50;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000024, 0x8000000100332E30, sub_10029C1EC, v6, &type metadata for () + 8);
}

uint64_t sub_10028EC50()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_10028F020;
  }

  else
  {

    v2 = sub_10028ED6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028ED6C()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[19];
  sub_10000839C(v0 + 2);
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__custodianStorage, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8(v0 + 7, v0[10]);
  v5 = type metadata accessor for CustodianStorageController();
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_10028EF0C;

  return (sub_1000308CC)(v5, &off_1003A4C78);
}

uint64_t sub_10028EF0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {
    v4 = sub_10028F53C;
  }

  else
  {
    v4 = sub_10028F0B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10028F020()
{

  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028F0B4()
{
  v1 = v0[37];
  sub_10000839C(v0 + 7);
  v2 = *(v1 + 16);
  v0[39] = v2;
  swift_beginAccess();
  result = swift_beginAccess();
  if (v2)
  {
    v4 = v0[25];
    v0[40] = 0;
    v5 = v0[37];
    if (*(v5 + 16))
    {
      sub_10029D880(v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v0[26], type metadata accessor for CustodianRecord);
      v6 = swift_task_alloc();
      v0[41] = v6;
      *v6 = v0;
      v6[1] = sub_10028F248;
      v7 = v0[26];
      v8 = v0[23];
      v9 = v0[24];
      v10 = v0[20];
      v11 = v0[21];

      return sub_10028F64C(v7, v10, v11, v8, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v12 = v0[1];

    return v12();
  }

  return result;
}

uint64_t sub_10028F248(char a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    sub_10029DADC(*(v4 + 208), type metadata accessor for CustodianRecord);

    v5 = sub_10028F5C8;
  }

  else
  {
    v6 = *(v4 + 208);
    *(v4 + 344) = a1 & 1;
    sub_10029DADC(v6, type metadata accessor for CustodianRecord);
    v5 = sub_10028F3B4;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_10028F3B4()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 320) + 1;
  **(v0 + 176) = (*(v0 + 344) | **(v0 + 176)) & 1;
  if (v2 == v1)
  {

    v3 = *(v0 + 8);

    v3();
  }

  else
  {
    v4 = *(v0 + 320) + 1;
    *(v0 + 320) = v4;
    v5 = *(v0 + 296);
    if (v4 >= *(v5 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_10029D880(v5 + ((*(*(v0 + 200) + 80) + 32) & ~*(*(v0 + 200) + 80)) + *(*(v0 + 200) + 72) * v4, *(v0 + 208), type metadata accessor for CustodianRecord);
      v6 = swift_task_alloc();
      *(v0 + 328) = v6;
      *v6 = v0;
      v6[1] = sub_10028F248;
      v7 = *(v0 + 208);
      v8 = *(v0 + 184);
      v9 = *(v0 + 192);
      v10 = *(v0 + 160);
      v11 = *(v0 + 168);

      sub_10028F64C(v7, v10, v11, v8, v9);
    }
  }
}

uint64_t sub_10028F53C()
{
  sub_10000839C((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028F5C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10028F64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  v7 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = type metadata accessor for CustodianRecord(0);
  v6[27] = swift_task_alloc();
  v8 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();

  return _swift_task_switch(sub_10028F7B8, 0, 0);
}

uint64_t sub_10028F7B8()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);
  v5 = *(v0 + 136);
  v6 = sub_10028D75C();
  *(v0 + 248) = v6;
  v7 = *(v4 + 20);
  *(v0 + 336) = v7;
  v8 = sub_100015A98(0, v5 + v7, 0x6465527075746573, 0xEF6574617453736ELL, 0);
  v10 = v9;
  *(v0 + 256) = v9;
  (*(v2 + 16))(v1, v6 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v11 = swift_task_alloc();
  *(v0 + 264) = v11;
  *v11 = v0;
  v11[1] = sub_10028F928;

  return sub_100013C50(v0 + 56, v8, v10);
}

uint64_t sub_10028F928()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_100290428;
  }

  else
  {
    v2 = sub_10028FA5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10028FA5C()
{
  v63 = v0;
  sub_100005814(&qword_1003D87C8, qword_100344800);
  sub_100016034(0, &qword_1003E4F00, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 112) = 0;
  }

  sub_10000839C((v0 + 16));
  v1 = *(v0 + 112);
  v2 = *(v0 + 272);
  if (v1)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    sub_100015D6C(v3, v4);
    sub_100282280();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_100012324(v3, v5);

      sub_100012324(v3, v5);
      v6 = 240;
    }

    else
    {
      sub_100012324(v3, v5);

      sub_100012324(v3, v5);
      v6 = *(v0 + 340);
    }

    v2 = 0;
    if (v6 <= 0xEF && (v6 & 0xC0) != 0x40)
    {
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 216);
      v8 = *(v0 + 136);
      v9 = type metadata accessor for Logger();
      sub_100008D04(v9, qword_1003FAAB8);
      sub_10029D880(v8, v7, type metadata accessor for CustodianRecord);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      v12 = os_log_type_enabled(v10, v11);
      v13 = *(v0 + 216);
      if (v12)
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v62[0] = v15;
        *v14 = 136315138;
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        sub_10029DADC(v13, type metadata accessor for CustodianRecord);
        v19 = sub_10021145C(v16, v18, v62);

        *(v14 + 4) = v19;
        _os_log_impl(&_mh_execute_header, v10, v11, "Owner setup readiness check was performed previously for custodianID: %s", v14, 0xCu);
        sub_10000839C(v15);
      }

      else
      {

        sub_10029DADC(v13, type metadata accessor for CustodianRecord);
      }

      v61 = *(v0 + 8);
LABEL_35:

      return v61(0);
    }
  }

  else
  {
  }

  v21 = *(v0 + 192);
  v20 = *(v0 + 200);
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);
  (*(v21 + 16))(v20, *(v0 + 176) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v22);
  Dependency.wrappedValue.getter();
  (*(v21 + 8))(v20, v22);
  *(v0 + 280) = *(v0 + 120);
  v24 = kAAAnalyticsEventSetupFailSafe;
  _StringGuts.grow(_:)(21);

  v62[0] = 0xD000000000000013;
  v62[1] = 0x8000000100332A20;
  type metadata accessor for UUID();
  sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v25);

  *(v0 + 288) = 0xD000000000000013;
  *(v0 + 296) = 0x8000000100332A20;
  v26 = v24;

  if (v23)
  {

    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v28 = objc_opt_self();
  v29 = String._bridgeToObjectiveC()();

  v30 = [v28 analyticsEventWithName:v24 altDSID:v27 flowID:v29];
  *(v0 + 304) = v30;

  if (v30)
  {
    v31 = objc_allocWithZone(NSNumber);
    v32 = v30;
    v33 = [v31 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v34 = NSString.init(stringLiteral:)();
    [v32 setObject:v33 forKeyedSubscript:v34];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  *(v0 + 312) = sub_100008D04(v35, qword_1003FAA40);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62[0] = v39;
    *v38 = 136315138;
    *(v38 + 4) = sub_10021145C(0xD000000000000013, 0x8000000100332A20, v62);
    _os_log_impl(&_mh_execute_header, v36, v37, "Performing: %s...", v38, 0xCu);
    sub_10000839C(v39);
  }

  sub_100257274(v24);
  if (v2)
  {

    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v43 = *(v0 + 288);
      v42 = *(v0 + 296);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v62[0] = v46;
      *v44 = 136315394;
      *(v44 + 4) = sub_10021145C(v43, v42, v62);
      *(v44 + 12) = 2112;
      swift_errorRetain();
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 14) = v47;
      *v45 = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "❌ %s - failed with error: %@", v44, 0x16u);
      sub_100008D3C(v45, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v46);
    }

    v48 = *(v0 + 304);
    swift_getErrorValue();
    sub_1002DEA80(*(v0 + 96), *(v0 + 104));
    if (v48)
    {
      v49 = *(v0 + 304);
      v50 = v49;
      swift_errorRetain();
      v51 = _convertErrorToNSError(_:)();
      [v50 updateTaskResultWithError:v51];

      swift_getObjectType();
      sub_100246FA8(v49);
    }

    else
    {
      swift_errorRetain();
    }

    v60 = *(v0 + 304);
    swift_willThrow();

    swift_unknownObjectRelease();

    v61 = *(v0 + 8);
    goto LABEL_35;
  }

  v52 = swift_task_alloc();
  *(v0 + 320) = v52;
  *v52 = v0;
  v52[1] = sub_100290AE0;
  v54 = *(v0 + 168);
  v53 = *(v0 + 176);
  v55 = *(v0 + 152);
  v56 = *(v0 + 160);
  v57 = *(v0 + 136);
  v58 = *(v0 + 144);

  return sub_100291054(v52, v57, v53, v58, v55, v56, v54);
}

uint64_t sub_100290428()
{
  v30 = v0;
  sub_10000839C(v0 + 2);

  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[21];
  (*(v2 + 16))(v1, v0[22] + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[35] = v0[15];
  v5 = kAAAnalyticsEventSetupFailSafe;
  _StringGuts.grow(_:)(21);

  v29[0] = 0xD000000000000013;
  v29[1] = 0x8000000100332A20;
  type metadata accessor for UUID();
  sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v0[36] = 0xD000000000000013;
  v0[37] = 0x8000000100332A20;
  v7 = v5;

  if (v4)
  {

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 analyticsEventWithName:v5 altDSID:v8 flowID:v10];
  v0[38] = v11;

  if (v11)
  {
    v12 = objc_allocWithZone(NSNumber);
    v13 = v11;
    v14 = [v12 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v15 = NSString.init(stringLiteral:)();
    [v13 setObject:v14 forKeyedSubscript:v15];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v0[39] = sub_100008D04(v16, qword_1003FAA40);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10021145C(0xD000000000000013, 0x8000000100332A20, v29);
    _os_log_impl(&_mh_execute_header, v17, v18, "Performing: %s...", v19, 0xCu);
    sub_10000839C(v20);
  }

  sub_100257274(v5);
  v21 = swift_task_alloc();
  v0[40] = v21;
  *v21 = v0;
  v21[1] = sub_100290AE0;
  v23 = v0[21];
  v22 = v0[22];
  v24 = v0[19];
  v25 = v0[20];
  v26 = v0[17];
  v27 = v0[18];

  return sub_100291054(v21, v26, v22, v27, v24, v25, v23);
}

uint64_t sub_100290AE0()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_100290BF4;
  }

  else
  {
    v2 = sub_100290E94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100290BF4()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[36];
    v3 = v0[37];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(v4, v3, &v16);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = v0[38];
  swift_getErrorValue();
  sub_1002DEA80(v0[12], v0[13]);
  if (v9)
  {
    v10 = v0[38];
    v11 = v10;
    swift_errorRetain();
    v12 = _convertErrorToNSError(_:)();
    [v11 updateTaskResultWithError:v12];

    swift_getObjectType();
    sub_100246FA8(v10);
  }

  else
  {
    swift_errorRetain();
  }

  v13 = v0[38];
  swift_willThrow();

  swift_unknownObjectRelease();

  v14 = v0[1];

  return v14(0);
}

uint64_t sub_100290E94()
{
  v12 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 288);
    v3 = *(v0 + 296);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10021145C(v4, v3, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ %s - successfully completed!", v5, 0xCu);
    sub_10000839C(v6);
  }

  v7 = *(v0 + 304);
  if (v7)
  {
    [*(v0 + 304) updateTaskResultWithError:0];
    swift_getObjectType();
    v8 = v7;
    sub_100246FA8(v7);
  }

  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9(1);
}

uint64_t sub_100291054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  v7[16] = a2;
  v7[17] = a3;
  v8 = sub_100005814(&qword_1003D8D40, &qword_10033E9E0);
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7[25] = v9;
  v7[26] = *(v9 - 8);
  v7[27] = swift_task_alloc();
  v7[28] = type metadata accessor for CustodianRecord(0);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();

  return _swift_task_switch(sub_100291208, 0, 0);
}

uint64_t sub_100291208()
{
  v22 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[35];
  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  v0[36] = sub_100008D04(v3, qword_1003FAAB8);
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[35];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v13 = sub_10021145C(v10, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Owner determining readiness state for custodianID: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  v14 = swift_task_alloc();
  v0[37] = v14;
  *v14 = v0;
  v14[1] = sub_100291498;
  v15 = v0[20];
  v16 = v0[21];
  v17 = v0[18];
  v18 = v0[19];
  v19 = v0[16];

  return sub_100293AB4(v19, v17, v18, v15, v16);
}

uint64_t sub_100291498(char a1)
{
  v3 = *v2;
  *(v3 + 405) = a1;
  *(v3 + 304) = v1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10029165C, 0, 0);
  }
}

uint64_t sub_10029165C()
{
  v124 = v0;
  v1 = *(v0 + 405);
  v2 = v1 >> 6;
  v3 = *(v0 + 128);
  if (v1 >> 6 <= 1)
  {
    if (!v2)
    {
      sub_10029D880(v3, *(v0 + 272), type metadata accessor for CustodianRecord);

      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();

      v6 = os_log_type_enabled(v4, v5);
      v7 = *(v0 + 272);
      if (v6)
      {
        if (v1)
        {
          v8 = 0x6465747065636361;
        }

        else
        {
          v8 = 0x64656E696C636564;
        }

        v9 = swift_slowAlloc();
        v123[0] = swift_slowAlloc();
        *v9 = 136315394;
        v10 = sub_10021145C(v8, 0xE800000000000000, v123);

        *(v9 + 4) = v10;
        *(v9 + 12) = 2080;
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v11 = dispatch thunk of CustomStringConvertible.description.getter();
        v13 = v12;
        sub_10029DADC(v7, type metadata accessor for CustodianRecord);
        v14 = sub_10021145C(v11, v13, v123);

        *(v9 + 14) = v14;
        _os_log_impl(&_mh_execute_header, v4, v5, "✅ Owner setup is in completed state: %s for custodianID: %s", v9, 0x16u);
        swift_arrayDestroy();

        if ((v1 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_17;
      }

      sub_10029DADC(v7, type metadata accessor for CustodianRecord);
      if (v1)
      {
LABEL_17:
        v46 = kAAAnalyticsEventSetupFailSafeReady;
        if (*(v0 + 168))
        {
          v47 = kAAAnalyticsEventSetupFailSafeReady;
          v48 = String._bridgeToObjectiveC()();
        }

        else
        {
          v79 = kAAAnalyticsEventSetupFailSafeReady;
          v48 = 0;
        }

        v80 = objc_opt_self();
        v81 = String._bridgeToObjectiveC()();
        v82 = [v80 analyticsEventWithName:v46 altDSID:v48 flowID:v81];
        v15 = v82;

        if (v15)
        {

          v83 = objc_allocWithZone(NSNumber);
          v84 = v15;
          v85 = [v83 initWithInteger:12];
          sub_100016034(0, &qword_1003D9250, NSString_ptr);
          v86 = NSString.init(stringLiteral:)();
          [v84 setObject:v85 forKeyedSubscript:v86];

          [v84 updateTaskResultWithError:0];
        }

        v88 = *(v0 + 208);
        v87 = *(v0 + 216);
        v89 = *(v0 + 200);
        (*(v88 + 16))(v87, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v89);
        Dependency.wrappedValue.getter();
        (*(v88 + 8))(v87, v89);
        swift_getObjectType();
        sub_100246FA8(v82);
        swift_unknownObjectRelease();
        goto LABEL_42;
      }

LABEL_43:
      v90 = *(v0 + 224);
      v92 = *(v0 + 184);
      v91 = *(v0 + 192);
      v93 = *(v0 + 176);
      v94 = *(v0 + 128);
      v95 = sub_10028D75C();
      *(v0 + 336) = v95;
      v96 = *(v90 + 20);
      *(v0 + 400) = v96;
      v97 = sub_100015A98(0, v94 + v96, 0x6465527075746573, 0xEF6574617453736ELL, 0);
      v99 = v98;
      *(v0 + 344) = v98;
      (*(v92 + 16))(v91, v95 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v93);
      Dependency.wrappedValue.getter();
      (*(v92 + 8))(v91, v93);
      sub_1000080F8((v0 + 16), *(v0 + 40));
      v100 = swift_task_alloc();
      *(v0 + 352) = v100;
      *v100 = v0;
      v100[1] = sub_10029298C;

      return sub_100013C50(v0 + 56, v97, v99);
    }

    sub_10029D880(v3, *(v0 + 264), type metadata accessor for CustodianRecord);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 264);
      v28 = *(v0 + 405) & 0x3F;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v123[0] = v30;
      *v29 = 134218242;
      *(v29 + 4) = v28;
      *(v29 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v31 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v32;
      sub_10029DADC(v27, type metadata accessor for CustodianRecord);
      v34 = sub_10021145C(v31, v33, v123);

      *(v29 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v25, v26, "🟡 Owner setup is in pending state: %ld for custodianID: %s", v29, 0x16u);
      sub_10000839C(v30);
    }

    else
    {
      v50 = *(v0 + 264);

      sub_10029DADC(v50, type metadata accessor for CustodianRecord);
    }

    v51 = kAAAnalyticsEventSetupFailSafePending;
    if (*(v0 + 168))
    {
      v52 = kAAAnalyticsEventSetupFailSafePending;
      v53 = String._bridgeToObjectiveC()();
    }

    else
    {
      v60 = kAAAnalyticsEventSetupFailSafePending;
      v53 = 0;
    }

    v61 = objc_opt_self();
    v62 = String._bridgeToObjectiveC()();
    v63 = [v61 analyticsEventWithName:v51 altDSID:v53 flowID:v62];

    if (v63)
    {
      v64 = *(v0 + 405);

      v65 = objc_allocWithZone(NSNumber);
      v66 = v63;
      v67 = [v65 initWithInteger:12];
      sub_100016034(0, &qword_1003D9250, NSString_ptr);
      v68 = NSString.init(stringLiteral:)();
      [v66 setObject:v67 forKeyedSubscript:v68];

      v69 = v66;
      if (sub_1000C00B4(0, 3, v64))
      {
        v70 = _convertErrorToNSError(_:)();
      }

      else
      {
        v70 = 0;
      }

      [v69 updateTaskResultWithError:v70];
    }

    v76 = *(v0 + 208);
    v75 = *(v0 + 216);
    v77 = *(v0 + 200);
    (*(v76 + 16))(v75, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v77);
    Dependency.wrappedValue.getter();
    (*(v76 + 8))(v75, v77);
    swift_getObjectType();
    sub_100246FA8(v63);
    swift_unknownObjectRelease();

    v59 = *(v0 + 8);
    goto LABEL_35;
  }

  if (v2 == 2)
  {
    sub_10029D880(v3, *(v0 + 256), type metadata accessor for CustodianRecord);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 256);
      v18 = *(v0 + 405) & 0x3F;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v123[0] = v20;
      *v19 = 134218242;
      *(v19 + 4) = v18;
      *(v19 + 12) = 2080;
      type metadata accessor for UUID();
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = v22;
      sub_10029DADC(v17, type metadata accessor for CustodianRecord);
      v24 = sub_10021145C(v21, v23, v123);

      *(v19 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "❌ Owner setup is in torn-down-by-other state: %ld for custodianID: %s", v19, 0x16u);
      sub_10000839C(v20);

LABEL_42:

      goto LABEL_43;
    }

    v49 = *(v0 + 256);

    sub_10029DADC(v49, type metadata accessor for CustodianRecord);
    goto LABEL_43;
  }

  v35 = v1 & 0x3F;
  sub_10029D880(v3, *(v0 + 248), type metadata accessor for CustodianRecord);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 248);
  if (v38)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v123[0] = v41;
    *v40 = 134218242;
    *(v40 + 4) = v35;
    *(v40 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v43;
    sub_10029DADC(v39, type metadata accessor for CustodianRecord);
    v45 = sub_10021145C(v42, v44, v123);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v36, v37, "❌ Owner setup is in failed state: %ld for custodianID: %s", v40, 0x16u);
    sub_10000839C(v41);
  }

  else
  {

    sub_10029DADC(v39, type metadata accessor for CustodianRecord);
  }

  v54 = *(v0 + 304);
  v55 = *(v0 + 128);
  v56 = sub_100276484(v55);
  v57 = v56;
  v58 = sub_100277330(v55, v56);
  if (v54)
  {

    v59 = *(v0 + 8);
LABEL_35:

    return v59();
  }

  v71 = v58;
  v72 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
  if (*(v0 + 168))
  {
    v73 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
    v74 = String._bridgeToObjectiveC()();
  }

  else
  {
    v101 = kAAAnalyticsEventSetupFailSafeGracePeriodExpired;
    v74 = 0;
  }

  v102 = objc_opt_self();
  v103 = String._bridgeToObjectiveC()();
  v104 = [v102 analyticsEventWithName:v72 altDSID:v74 flowID:v103];
  *(v0 + 312) = v104;
  v105 = v104;

  if (v105)
  {
    v106 = *(v0 + 405);

    v107 = objc_allocWithZone(NSNumber);
    v108 = v105;
    v109 = [v107 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v110 = NSString.init(stringLiteral:)();
    [v108 setObject:v109 forKeyedSubscript:v110];

    v111 = v57 | (v71 << 8);
    v112 = v108;
    if (sub_1000C00B4(0, v111, v106))
    {
      v113 = _convertErrorToNSError(_:)();
    }

    else
    {
      v113 = 0;
    }

    [v112 updateTaskResultWithError:v113];
  }

  else
  {
    v111 = v57 | (v71 << 8);
  }

  v115 = *(v0 + 208);
  v114 = *(v0 + 216);
  v116 = *(v0 + 200);
  (*(v115 + 16))(v114, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v116);
  Dependency.wrappedValue.getter();
  (*(v115 + 8))(v114, v116);
  swift_getObjectType();
  sub_100246FA8(v105);
  swift_unknownObjectRelease();
  v117 = swift_task_alloc();
  *(v0 + 320) = v117;
  *v117 = v0;
  v117[1] = sub_10029263C;
  v118 = *(v0 + 160);
  v119 = *(v0 + 168);
  v120 = *(v0 + 144);
  v121 = *(v0 + 152);
  v122 = *(v0 + 128);

  return sub_1002948CC(v122, v35, v111, v120, v121, v118, v119);
}

uint64_t sub_10029263C(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1002938EC;
  }

  else
  {
    *(v4 + 406) = a1 & 1;
    v5 = sub_100292768;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100292768()
{
  v1 = *(v0 + 406);

  if (v1 == 1)
  {
    v2 = *(v0 + 224);
    v4 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 176);
    v6 = *(v0 + 128);
    v7 = sub_10028D75C();
    *(v0 + 336) = v7;
    v8 = *(v2 + 20);
    *(v0 + 400) = v8;
    v9 = sub_100015A98(0, v6 + v8, 0x6465527075746573, 0xEF6574617453736ELL, 0);
    v11 = v10;
    *(v0 + 344) = v10;
    (*(v4 + 16))(v3, v7 + OBJC_IVAR____TtC13appleaccountd27CustodianMetadataController__store, v5);
    Dependency.wrappedValue.getter();
    (*(v4 + 8))(v3, v5);
    sub_1000080F8((v0 + 16), *(v0 + 40));
    v12 = swift_task_alloc();
    *(v0 + 352) = v12;
    *v12 = v0;
    v12[1] = sub_10029298C;

    return sub_100013C50(v0 + 56, v9, v11);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10029298C()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_100293278;
  }

  else
  {
    v2 = sub_100292AC0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100292AC0()
{
  v54 = v0;
  sub_100005814(&qword_1003D87C8, qword_100344800);
  sub_100016034(0, &qword_1003E4F00, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 96) = 0;
  }

  sub_10000839C((v0 + 16));
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 360);
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
    sub_100015D6C(v3, v4);
    sub_100282280();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v2)
    {

      sub_100012324(v3, v5);

      sub_100012324(v3, v5);
      v6 = 240;
    }

    else
    {
      sub_100012324(v3, v5);

      sub_100012324(v3, v5);
      v6 = *(v0 + 404);
    }

    if (v6 <= 0xEF && (v6 & 0xC0) != 0x40)
    {
      sub_10029D880(*(v0 + 128), *(v0 + 240), type metadata accessor for CustodianRecord);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      v9 = os_log_type_enabled(v7, v8);
      v10 = *(v0 + 240);
      if (v9)
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v53[0] = v12;
        *v11 = 136315138;
        type metadata accessor for UUID();
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v13 = dispatch thunk of CustomStringConvertible.description.getter();
        v15 = v14;
        sub_10029DADC(v10, type metadata accessor for CustodianRecord);
        v16 = sub_10021145C(v13, v15, v53);

        *(v11 + 4) = v16;
        _os_log_impl(&_mh_execute_header, v7, v8, "Owner setup readiness check was concurrently performed on another device for custodianID: %s", v11, 0xCu);
        sub_10000839C(v12);
      }

      else
      {

        sub_10029DADC(v10, type metadata accessor for CustodianRecord);
      }

      v52 = *(v0 + 8);

      return v52();
    }
  }

  else
  {
  }

  v17 = kAAAnalyticsEventCustodianSetupSuccess;
  if (*(v0 + 168))
  {
    v18 = kAAAnalyticsEventCustodianSetupSuccess;
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = kAAAnalyticsEventCustodianSetupSuccess;
    v19 = 0;
  }

  v21 = objc_opt_self();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v21 analyticsEventWithName:v17 altDSID:v19 flowID:v22];
  *(v0 + 368) = v23;
  v24 = v23;

  if (v24)
  {
    v25 = *(v0 + 405);

    v26 = objc_allocWithZone(NSNumber);
    v27 = v24;
    v28 = [v26 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v29 = NSString.init(stringLiteral:)();
    [v27 setObject:v28 forKeyedSubscript:v29];

    v30 = v27;
    if (sub_1000C00B4(0, 3, v25))
    {
      v31 = _convertErrorToNSError(_:)();
    }

    else
    {
      v31 = 0;
    }

    [v30 updateTaskResultWithError:v31];
  }

  v32 = *(v0 + 232);
  v34 = *(v0 + 208);
  v33 = *(v0 + 216);
  v35 = *(v0 + 200);
  v36 = *(v0 + 128);
  (*(v34 + 16))(v33, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v35);
  Dependency.wrappedValue.getter();
  (*(v34 + 8))(v33, v35);
  swift_getObjectType();
  sub_100246FA8(v23);
  swift_unknownObjectRelease();
  sub_10029D880(v36, v32, type metadata accessor for CustodianRecord);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 232);
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v53[0] = v42;
    *v41 = 136315138;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v45 = v44;
    sub_10029DADC(v40, type metadata accessor for CustodianRecord);
    v46 = sub_10021145C(v43, v45, v53);

    *(v41 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "Owner storing that setup readiness check was performed for custodianID: %s", v41, 0xCu);
    sub_10000839C(v42);
  }

  else
  {

    sub_10029DADC(v40, type metadata accessor for CustodianRecord);
  }

  v47 = *(v0 + 400);
  v48 = *(v0 + 128);
  *(v0 + 376) = *(*(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController);

  v49 = swift_task_alloc();
  *(v0 + 384) = v49;
  *v49 = v0;
  v49[1] = sub_1002936F8;
  v50 = *(v0 + 405);

  return sub_100014ED8(v50, 0, v48 + v47);
}

uint64_t sub_100293278()
{
  v37 = v0;
  sub_10000839C((v0 + 16));

  v1 = kAAAnalyticsEventCustodianSetupSuccess;
  if (*(v0 + 168))
  {
    v2 = kAAAnalyticsEventCustodianSetupSuccess;
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = kAAAnalyticsEventCustodianSetupSuccess;
    v3 = 0;
  }

  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 analyticsEventWithName:v1 altDSID:v3 flowID:v6];
  *(v0 + 368) = v7;
  v8 = v7;

  if (v8)
  {
    v9 = *(v0 + 405);

    v10 = objc_allocWithZone(NSNumber);
    v11 = v8;
    v12 = [v10 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v13 = NSString.init(stringLiteral:)();
    [v11 setObject:v12 forKeyedSubscript:v13];

    v14 = v11;
    if (sub_1000C00B4(0, 3, v9))
    {
      v15 = _convertErrorToNSError(_:)();
    }

    else
    {
      v15 = 0;
    }

    [v14 updateTaskResultWithError:v15];
  }

  v16 = *(v0 + 232);
  v18 = *(v0 + 208);
  v17 = *(v0 + 216);
  v19 = *(v0 + 200);
  v20 = *(v0 + 128);
  (*(v18 + 16))(v17, *(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v19);
  Dependency.wrappedValue.getter();
  (*(v18 + 8))(v17, v19);
  swift_getObjectType();
  sub_100246FA8(v7);
  swift_unknownObjectRelease();
  sub_10029D880(v20, v16, type metadata accessor for CustodianRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 232);
  if (v23)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315138;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    sub_10029DADC(v24, type metadata accessor for CustodianRecord);
    v30 = sub_10021145C(v27, v29, &v36);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v21, v22, "Owner storing that setup readiness check was performed for custodianID: %s", v25, 0xCu);
    sub_10000839C(v26);
  }

  else
  {

    sub_10029DADC(v24, type metadata accessor for CustodianRecord);
  }

  v31 = *(v0 + 400);
  v32 = *(v0 + 128);
  *(v0 + 376) = *(*(v0 + 136) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck____lazy_storage___metadataController);

  v33 = swift_task_alloc();
  *(v0 + 384) = v33;
  *v33 = v0;
  v33[1] = sub_1002936F8;
  v34 = *(v0 + 405);

  return sub_100014ED8(v34, 0, v32 + v31);
}

uint64_t sub_1002936F8()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1002939CC;
  }

  else
  {

    v2 = sub_100293814;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100293814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002938EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002939CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100293AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v6[12] = type metadata accessor for CustodianRecord(0);
  v6[13] = swift_task_alloc();

  return _swift_task_switch(sub_100293B50, 0, 0);
}

uint64_t sub_100293B50()
{
  v1 = sub_10026ECEC(v0[6]);
  v2 = *(v0[6] + *(v0[12] + 36));
  if (v2 == 1)
  {
    v18 = sub_10029CDA8(v0[6], v1 & 1);
LABEL_12:
    v19 = v18;

    v20 = v0[1];

    return v20(v19);
  }

  if (v2 != 4)
  {
    if (v2 == 2)
    {
      v3 = v1;
      v4 = swift_task_alloc();
      v0[14] = v4;
      *v4 = v0;
      v4[1] = sub_100294024;
      v5 = v0[10];
      v6 = v0[8];
      v7 = v0[9];
      v9 = v0[6];
      v8 = v0[7];

      return sub_10029572C(v9, v3 & 1, v8, v6, v7, v5);
    }

    v18 = sub_10029D010(v0[6], v1 & 1);
    goto LABEL_12;
  }

  v11 = v1;
  v12 = swift_task_alloc();
  v0[16] = v12;
  *v12 = v0;
  v12[1] = sub_10029417C;
  v13 = v0[10];
  v14 = v0[8];
  v15 = v0[9];
  v17 = v0[6];
  v16 = v0[7];

  return sub_100297AE0(v17, v11 & 1, v16, v14, v15, v13);
}

uint64_t sub_100294024(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002942D4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10029417C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002945D0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1002942D4()
{
  v19 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v14 = sub_10021145C(v11, v13, &v18);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error occured when owner was checking readiness state for custodianID: %s, error: %@", v8, 0x16u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v10);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  swift_getErrorValue();
  sub_100255F6C(-7305, v0[3], v0[4]);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002945D0()
{
  v19 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAB8);
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[13];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v8 = 136315394;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v14 = sub_10021145C(v11, v13, &v18);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error occured when owner was checking readiness state for custodianID: %s, error: %@", v8, 0x16u);
    sub_100008D3C(v9, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v10);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  swift_getErrorValue();
  sub_100255F6C(-7305, v0[3], v0[4]);
  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_1002948CC(uint64_t a1, char a2, __int16 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 168) = a3;
  *(v8 + 170) = a2;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  *(v8 + 64) = type metadata accessor for CustodianRecord(0);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_100294994, 0, 0);
}

uint64_t sub_100294994()
{
  v26 = v0;
  v1 = *(v0 + 168);
  if (v1 >> 8 == 2 || (v1 & 0x100) != 0)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = *(v0 + 40);
    v24 = *(v0 + 24);
    v5 = *(v0 + 16);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *(v6 + 16) = v2;
    *(v6 + 24) = v4;
    *(v6 + 32) = v3;
    *(v6 + 40) = v24;
    *(v6 + 56) = v5;
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_100294D08;
    v8 = *(v0 + 96);

    return sub_10026A614(v8, "OwnerTearDownSetup", 18, 2, &unk_100348268, v6);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 72);
    v11 = *(v0 + 16);
    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAAB8);
    sub_10029D880(v11, v10, type metadata accessor for CustodianRecord);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 72);
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      type metadata accessor for UUID();
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      sub_10029DADC(v16, type metadata accessor for CustodianRecord);
      v22 = sub_10021145C(v19, v21, &v25);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "Owner not tearing down stale setup for custodianID: %s", v17, 0xCu);
      sub_10000839C(v18);
    }

    else
    {

      sub_10029DADC(v16, type metadata accessor for CustodianRecord);
    }

    v23 = *(v0 + 8);

    return v23(0);
  }
}

uint64_t sub_100294D08()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_10026E1D8;
  }

  else
  {

    v2 = sub_100294E24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100294E24()
{
  v25 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v3 = type metadata accessor for Logger();
  *(v0 + 128) = sub_100008D04(v3, qword_1003FAAB8);
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = *(v0 + 170);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 134218242;
    *(v9 + 4) = v8;
    *(v9 + 12) = 2080;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v14 = sub_10021145C(v11, v13, &v24);

    *(v9 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Owner notifying custodian of tear down with reason: %ld for custodianID: %s", v9, 0x16u);
    sub_10000839C(v10);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  OSTransaction.complete()();
  v16 = v15;
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  v17[1] = sub_1002950D8;
  v18 = *(v0 + 96);
  v19 = *(v0 + 48);
  v20 = *(v0 + 32);
  v21 = *(v0 + 40);
  v22 = *(v0 + 24);

  return sub_100299EA8(v18, v16, v22, v20, v21, v19);
}

uint64_t sub_1002950D8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100295684;
  }

  else
  {
    v2 = sub_1002951EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002951EC()
{
  v15 = v0;
  sub_10029D880(v0[12], v0[10], type metadata accessor for CustodianRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    sub_10029DADC(v4, type metadata accessor for CustodianRecord);
    v10 = sub_10021145C(v7, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Owner posting tear down CFU for custodianID: %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  else
  {

    sub_10029DADC(v4, type metadata accessor for CustodianRecord);
  }

  v11 = swift_task_alloc();
  v0[19] = v11;
  *v11 = v0;
  v11[1] = sub_100295420;
  v12 = v0[12];

  return sub_10029D328(v12);
}

uint64_t sub_100295420()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1002955DC;
  }

  else
  {
    v2 = sub_100295534;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100295534()
{
  sub_10029DADC(*(v0 + 96), type metadata accessor for CustodianRecord);

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1002955DC()
{
  sub_10029DADC(*(v0 + 96), type metadata accessor for CustodianRecord);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_100295684()
{
  sub_10029DADC(*(v0 + 96), type metadata accessor for CustodianRecord);

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_10029572C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 160) = a6;
  *(v7 + 168) = v6;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  *(v7 + 412) = a2;
  *(v7 + 128) = a1;
  *(v7 + 136) = a3;
  v8 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  *(v7 + 176) = v8;
  *(v7 + 184) = *(v8 - 8);
  *(v7 + 192) = swift_task_alloc();
  v9 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  *(v7 + 200) = v9;
  *(v7 + 208) = *(v9 - 8);
  *(v7 + 216) = swift_task_alloc();
  v10 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  *(v7 + 224) = v10;
  *(v7 + 232) = *(v10 - 8);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v7 + 256) = swift_task_alloc();
  sub_100005814(&unk_1003D91B0, qword_1003444F0);
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = type metadata accessor for CustodianRecord(0);
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = swift_task_alloc();

  return _swift_task_switch(sub_1002959B4, 0, 0);
}

uint64_t sub_1002959B4()
{
  v35 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 336);
  v2 = *(v0 + 128);
  v3 = type metadata accessor for Logger();
  *(v0 + 344) = sub_100008D04(v3, qword_1003FAAB8);
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 336);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v13 = sub_10021145C(v10, v12, &v34);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Owner invitation is accepted, checking if RecoveryInfoRecord is found, custodianID: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  v15 = *(v0 + 248);
  v14 = *(v0 + 256);
  v17 = *(v0 + 232);
  v16 = *(v0 + 240);
  v18 = *(v0 + 224);
  v19 = *(v0 + 160);
  v20 = *(v0 + 144);
  v31 = *(v0 + 152);
  v21 = *(v0 + 128);
  v32 = *(v0 + 136);
  v33 = *(v0 + 168);
  v22 = *(*(v0 + 280) + 20);
  *(v0 + 408) = v22;
  v23 = type metadata accessor for UUID();
  *(v0 + 352) = v23;
  (*(*(v23 - 8) + 16))(v14, v21 + v22, v23);
  *(v14 + v15[5]) = 0;
  v24 = v14 + v15[6];
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v14 + v15[7]) = 1;
  v25 = (v14 + v15[8]);
  *v25 = v31;
  v25[1] = v19;
  v26 = (v14 + v15[9]);
  *v26 = v32;
  v26[1] = v20;
  (*(v17 + 16))(v16, v33 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__custodianStorage, v18);

  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v27 = swift_task_alloc();
  *(v0 + 360) = v27;
  *v27 = v0;
  v27[1] = sub_100295D6C;
  v28 = *(v0 + 272);
  v29 = *(v0 + 256);

  return sub_100021548(v28, v29, 0, 0);
}

uint64_t sub_100295D6C()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_100296474;
  }

  else
  {
    v2 = sub_100295E80;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100295E80()
{
  v44 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  sub_10029DADC(*(v0 + 256), type metadata accessor for FetchRecoveryRecordsRequest);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_10000839C((v0 + 16));
  v4 = *(v0 + 264);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  sub_10029DA04(*(v0 + 272), v4);
  v7 = (*(v6 + 48))(v4, 1, v5);
  v8 = *(v0 + 264);
  if (v7 == 1)
  {
    v9 = *(v0 + 288);
    v10 = *(v0 + 128);
    sub_100008D3C(v8, &unk_1003D91B0, qword_1003444F0);
    sub_10029D880(v10, v9, type metadata accessor for CustodianRecord);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 288);
      v14 = *(v0 + 272);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v43 = v16;
      *v15 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_10029DADC(v13, type metadata accessor for CustodianRecord);
      v20 = sub_10021145C(v17, v19, &v43);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Owner RecoveryInfoRecord is not found, incomplete setup, custodianID: %s", v15, 0xCu);
      sub_10000839C(v16);
    }

    else
    {
      v32 = *(v0 + 288);
      v14 = *(v0 + 272);

      sub_10029DADC(v32, type metadata accessor for CustodianRecord);
    }

    sub_100008D3C(v14, &unk_1003D91B0, qword_1003444F0);
    v42 = *(v0 + 412);

    v33 = *(v0 + 8);
    if (v42)
    {
      v34 = 4294967234;
    }

    else
    {
      v34 = 66;
    }

    return v33(v34);
  }

  else
  {
    v21 = *(v0 + 328);
    v22 = *(v0 + 128);
    sub_10029DA74(v8, *(v0 + 216), type metadata accessor for CustodianRecoveryInfoRecord);
    sub_10029D880(v22, v21, type metadata accessor for CustodianRecord);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 328);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v26 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      sub_10029DADC(v25, type metadata accessor for CustodianRecord);
      v31 = sub_10021145C(v28, v30, &v43);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "Owner RecoveryInfoRecord found, checking if RecoveryInfoRecord share is accepted, custodianID: %s", v26, 0xCu);
      sub_10000839C(v27);
    }

    else
    {
      v36 = *(v0 + 328);

      sub_10029DADC(v36, type metadata accessor for CustodianRecord);
    }

    v38 = *(v0 + 184);
    v37 = *(v0 + 192);
    v39 = *(v0 + 176);
    (*(v38 + 16))(v37, *(v0 + 168) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__cloudShare, v39);
    Dependency.wrappedValue.getter();
    (*(v38 + 8))(v37, v39);
    v40 = swift_task_alloc();
    *(v0 + 376) = v40;
    *v40 = v0;
    v40[1] = sub_100296C30;
    v41 = *(v0 + 216);

    return sub_1001AD9EC(v41);
  }
}

uint64_t sub_100296474()
{
  v48 = v0;
  v1 = *(v0 + 368);
  sub_10000839C((v0 + 16));
  *(v0 + 96) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 104);
    *(v0 + 112) = v2;
    v3 = *(v0 + 256);
    sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.code.getter();
    sub_10029DADC(v3, type metadata accessor for FetchRecoveryRecordsRequest);

    if (*(v0 + 120) == -7062)
    {
      v4 = *(v0 + 272);
      v5 = *(v0 + 200);
      v6 = *(v0 + 208);

      (*(v6 + 56))(v4, 1, 1, v5);

      v7 = *(v0 + 264);
      v8 = *(v0 + 200);
      v9 = *(v0 + 208);
      sub_10029DA04(*(v0 + 272), v7);
      v10 = (*(v9 + 48))(v7, 1, v8);
      v11 = *(v0 + 264);
      if (v10 == 1)
      {
        v12 = *(v0 + 288);
        v13 = *(v0 + 128);
        sub_100008D3C(v11, &unk_1003D91B0, qword_1003444F0);
        sub_10029D880(v13, v12, type metadata accessor for CustodianRecord);
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = *(v0 + 288);
          v17 = *(v0 + 272);
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v47 = v19;
          *v18 = 136315138;
          sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v20 = dispatch thunk of CustomStringConvertible.description.getter();
          v22 = v21;
          sub_10029DADC(v16, type metadata accessor for CustodianRecord);
          v23 = sub_10021145C(v20, v22, &v47);

          *(v18 + 4) = v23;
          _os_log_impl(&_mh_execute_header, v14, v15, "Owner RecoveryInfoRecord is not found, incomplete setup, custodianID: %s", v18, 0xCu);
          sub_10000839C(v19);
        }

        else
        {
          v37 = *(v0 + 288);
          v17 = *(v0 + 272);

          sub_10029DADC(v37, type metadata accessor for CustodianRecord);
        }

        sub_100008D3C(v17, &unk_1003D91B0, qword_1003444F0);
        v46 = *(v0 + 412);

        v38 = *(v0 + 8);
        if (v46)
        {
          v39 = 4294967234;
        }

        else
        {
          v39 = 66;
        }

        return v38(v39);
      }

      else
      {
        v26 = *(v0 + 328);
        v27 = *(v0 + 128);
        sub_10029DA74(v11, *(v0 + 216), type metadata accessor for CustodianRecoveryInfoRecord);
        sub_10029D880(v27, v26, type metadata accessor for CustodianRecord);
        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = *(v0 + 328);
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v47 = v32;
          *v31 = 136315138;
          sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v33 = dispatch thunk of CustomStringConvertible.description.getter();
          v35 = v34;
          sub_10029DADC(v30, type metadata accessor for CustodianRecord);
          v36 = sub_10021145C(v33, v35, &v47);

          *(v31 + 4) = v36;
          _os_log_impl(&_mh_execute_header, v28, v29, "Owner RecoveryInfoRecord found, checking if RecoveryInfoRecord share is accepted, custodianID: %s", v31, 0xCu);
          sub_10000839C(v32);
        }

        else
        {
          v40 = *(v0 + 328);

          sub_10029DADC(v40, type metadata accessor for CustodianRecord);
        }

        v42 = *(v0 + 184);
        v41 = *(v0 + 192);
        v43 = *(v0 + 176);
        (*(v42 + 16))(v41, *(v0 + 168) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__cloudShare, v43);
        Dependency.wrappedValue.getter();
        (*(v42 + 8))(v41, v43);
        v44 = swift_task_alloc();
        *(v0 + 376) = v44;
        *v44 = v0;
        v44[1] = sub_100296C30;
        v45 = *(v0 + 216);

        return sub_1001AD9EC(v45);
      }
    }
  }

  else
  {
    sub_10029DADC(*(v0 + 256), type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100296C30(char a1)
{
  v4 = *v2;
  *(*v2 + 384) = v1;

  if (v1)
  {
    v5 = sub_100297260;
  }

  else
  {
    *(v4 + 413) = a1 & 1;
    v5 = sub_100296D5C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100296D5C()
{
  v33 = v0;
  v1 = *(v0 + 413);
  sub_10000839C((v0 + 56));
  v2 = *(v0 + 128);
  if (v1 == 1)
  {
    sub_10029D880(v2, *(v0 + 320), type metadata accessor for CustodianRecord);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 320);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v32 = v7;
      *v6 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;
      sub_10029DADC(v5, type metadata accessor for CustodianRecord);
      v11 = sub_10021145C(v8, v10, &v32);

      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v3, v4, "Owner RecoveryInfoRecord share is accepted by custodian, checking if setup is finalized with server, custodianID: %s", v6, 0xCu);
      sub_10000839C(v7);
    }

    else
    {
      v23 = *(v0 + 320);

      sub_10029DADC(v23, type metadata accessor for CustodianRecord);
    }

    v24 = *(v0 + 408);
    v25 = *(v0 + 128);
    v26 = swift_task_alloc();
    *(v0 + 392) = v26;
    *v26 = v0;
    v26[1] = sub_1002973B0;

    return sub_10029C5D0(v25 + v24);
  }

  else
  {
    sub_10029D880(v2, *(v0 + 296), type metadata accessor for CustodianRecord);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 296);
      v15 = *(v0 + 272);
      v16 = *(v0 + 216);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      sub_10029DADC(v14, type metadata accessor for CustodianRecord);
      v22 = sub_10021145C(v19, v21, &v32);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "Owner RecoveryInfoRecord share is not accepted by custodian, incomplete setup, custodianID: %s", v17, 0xCu);
      sub_10000839C(v18);
    }

    else
    {
      v28 = *(v0 + 296);
      v15 = *(v0 + 272);
      v16 = *(v0 + 216);

      sub_10029DADC(v28, type metadata accessor for CustodianRecord);
    }

    sub_10029DADC(v16, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100008D3C(v15, &unk_1003D91B0, qword_1003444F0);
    v31 = *(v0 + 412);

    v29 = *(v0 + 8);
    if (v31)
    {
      v30 = 4294967235;
    }

    else
    {
      v30 = 67;
    }

    return v29(v30);
  }
}

uint64_t sub_100297260()
{
  v1 = v0[34];
  sub_10029DADC(v0[27], type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100008D3C(v1, &unk_1003D91B0, qword_1003444F0);
  sub_10000839C(v0 + 7);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1002973B0(char a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v5 = sub_100297998;
  }

  else
  {
    *(v4 + 414) = a1 & 1;
    v5 = sub_1002974DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002974DC()
{
  v31 = v0;
  v1 = *(v0 + 128);
  if (*(v0 + 414) == 1)
  {
    sub_10029D880(v1, *(v0 + 312), type metadata accessor for CustodianRecord);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 312);
      v5 = *(v0 + 272);
      v6 = *(v0 + 216);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v7 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      v11 = v10;
      sub_10029DADC(v4, type metadata accessor for CustodianRecord);
      v12 = sub_10021145C(v9, v11, &v30);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v2, v3, "Owner setup is accepted and completed, custodianID: %s", v7, 0xCu);
      sub_10000839C(v8);
    }

    else
    {
      v24 = *(v0 + 312);
      v5 = *(v0 + 272);
      v6 = *(v0 + 216);

      sub_10029DADC(v24, type metadata accessor for CustodianRecord);
    }

    sub_10029DADC(v6, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100008D3C(v5, &unk_1003D91B0, qword_1003444F0);
    v25 = 1;
  }

  else
  {
    sub_10029D880(v1, *(v0 + 304), type metadata accessor for CustodianRecord);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 304);
      v16 = *(v0 + 272);
      v17 = *(v0 + 216);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_10029DADC(v15, type metadata accessor for CustodianRecord);
      v23 = sub_10021145C(v20, v22, &v30);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v13, v14, "Owner setup is not finalized with server, incomplete setup, custodianID: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    else
    {
      v26 = *(v0 + 304);
      v16 = *(v0 + 272);
      v17 = *(v0 + 216);

      sub_10029DADC(v26, type metadata accessor for CustodianRecord);
    }

    sub_10029DADC(v17, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_100008D3C(v16, &unk_1003D91B0, qword_1003444F0);
    if (*(v0 + 412))
    {
      v25 = -60;
    }

    else
    {
      v25 = 68;
    }
  }

  v29 = v25;

  v27 = *(v0 + 8);

  return v27(v29);
}

uint64_t sub_100297998()
{
  v1 = v0[34];
  sub_10029DADC(v0[27], type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100008D3C(v1, &unk_1003D91B0, qword_1003444F0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100297AE0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 160) = a6;
  *(v7 + 168) = v6;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  *(v7 + 380) = a2;
  *(v7 + 128) = a1;
  *(v7 + 136) = a3;
  v8 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  *(v7 + 176) = v8;
  *(v7 + 184) = *(v8 - 8);
  *(v7 + 192) = swift_task_alloc();
  v9 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  *(v7 + 200) = v9;
  *(v7 + 208) = *(v9 - 8);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = type metadata accessor for FetchRecoveryRecordsRequest(0);
  *(v7 + 232) = swift_task_alloc();
  sub_100005814(&unk_1003D91B0, qword_1003444F0);
  *(v7 + 240) = swift_task_alloc();
  *(v7 + 248) = type metadata accessor for CustodianRecord(0);
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();

  return _swift_task_switch(sub_100297D00, 0, 0);
}

uint64_t sub_100297D00()
{
  v35 = v0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 304);
  v2 = *(v0 + 128);
  v3 = type metadata accessor for Logger();
  *(v0 + 312) = sub_100008D04(v3, qword_1003FAAB8);
  sub_10029D880(v2, v1, type metadata accessor for CustodianRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 304);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    type metadata accessor for UUID();
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
    v13 = sub_10021145C(v10, v12, &v34);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Owner invitation is declined, checking if RecoveryInfoRecord is removed, custodianID: %s", v8, 0xCu);
    sub_10000839C(v9);
  }

  else
  {

    sub_10029DADC(v7, type metadata accessor for CustodianRecord);
  }

  v15 = *(v0 + 224);
  v14 = *(v0 + 232);
  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v18 = *(v0 + 200);
  v19 = *(v0 + 160);
  v20 = *(v0 + 144);
  v31 = *(v0 + 152);
  v21 = *(v0 + 128);
  v32 = *(v0 + 136);
  v33 = *(v0 + 168);
  v22 = *(*(v0 + 248) + 20);
  *(v0 + 376) = v22;
  v23 = type metadata accessor for UUID();
  *(v0 + 320) = v23;
  (*(*(v23 - 8) + 16))(v14, v21 + v22, v23);
  *(v14 + v15[5]) = 0;
  v24 = v14 + v15[6];
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v14 + v15[7]) = 1;
  v25 = (v14 + v15[8]);
  *v25 = v31;
  v25[1] = v19;
  v26 = (v14 + v15[9]);
  *v26 = v32;
  v26[1] = v20;
  (*(v17 + 16))(v16, v33 + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__custodianStorage, v18);

  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v16, v18);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v27 = swift_task_alloc();
  *(v0 + 328) = v27;
  *v27 = v0;
  v27[1] = sub_1002980B4;
  v29 = *(v0 + 232);
  v28 = *(v0 + 240);

  return sub_100021548(v28, v29, 0, 0);
}

uint64_t sub_1002980B4()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100298790;
  }

  else
  {
    v2 = sub_1002981C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002981C8()
{
  v37 = v0;
  v1 = *(v0 + 240);
  sub_10029DADC(*(v0 + 232), type metadata accessor for FetchRecoveryRecordsRequest);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  sub_10000839C((v0 + 16));
  v4 = (*(v3 + 48))(*(v0 + 240), 1, v2);
  v5 = *(v0 + 128);
  if (v4 == 1)
  {
    sub_10029D880(v5, *(v0 + 296), type metadata accessor for CustodianRecord);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 296);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = v12;
      sub_10029DADC(v8, type metadata accessor for CustodianRecord);
      v14 = sub_10021145C(v11, v13, &v36);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v6, v7, "Owner RecoveryInfoRecord is removed, checking if setup is revoked with server, custodianID: %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    else
    {
      v24 = *(v0 + 296);

      sub_10029DADC(v24, type metadata accessor for CustodianRecord);
    }

    v25 = *(v0 + 376);
    v27 = *(v0 + 184);
    v26 = *(v0 + 192);
    v28 = *(v0 + 176);
    v29 = *(v0 + 128);
    (*(v27 + 16))(v26, *(v0 + 168) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler, v28);
    Dependency.wrappedValue.getter();
    (*(v27 + 8))(v26, v28);
    sub_1000080F8((v0 + 56), *(v0 + 80));
    v30 = swift_task_alloc();
    *(v0 + 344) = v30;
    *v30 = v0;
    v30[1] = sub_100298F08;

    return sub_100080620(v29 + v25, 0);
  }

  else
  {
    sub_10029D880(v5, *(v0 + 256), type metadata accessor for CustodianRecord);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 256);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_10029DADC(v17, type metadata accessor for CustodianRecord);
      v23 = sub_10021145C(v20, v22, &v36);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Owner RecoveryInfoRecord is not removed, incomplete setup, custodianID: %s", v18, 0xCu);
      sub_10000839C(v19);
    }

    else
    {
      v32 = *(v0 + 256);

      sub_10029DADC(v32, type metadata accessor for CustodianRecord);
    }

    v35 = *(v0 + 380);
    sub_100008D3C(*(v0 + 240), &unk_1003D91B0, qword_1003444F0);

    v33 = *(v0 + 8);
    if (v35)
    {
      v34 = 4294967237;
    }

    else
    {
      v34 = 69;
    }

    return v33(v34);
  }
}

uint64_t sub_100298790()
{
  v41 = v0;
  v1 = *(v0 + 336);
  sub_10000839C((v0 + 16));
  *(v0 + 96) = v1;
  swift_errorRetain();
  sub_100005814(&unk_1003DBB60, &unk_10033E740);
  type metadata accessor for AACustodianError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 104);
    *(v0 + 112) = v2;
    v3 = *(v0 + 232);
    sub_1000D8278(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.code.getter();
    sub_10029DADC(v3, type metadata accessor for FetchRecoveryRecordsRequest);

    if (*(v0 + 120) == -7062)
    {
      v4 = *(v0 + 240);

      v5 = type metadata accessor for CustodianRecoveryInfoRecord(0);
      v6 = *(v5 - 8);
      (*(v6 + 56))(v4, 1, 1, v5);

      v7 = (*(v6 + 48))(*(v0 + 240), 1, v5);
      v8 = *(v0 + 128);
      if (v7 == 1)
      {
        sub_10029D880(v8, *(v0 + 296), type metadata accessor for CustodianRecord);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = *(v0 + 296);
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          v40 = v13;
          *v12 = 136315138;
          sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v14 = dispatch thunk of CustomStringConvertible.description.getter();
          v16 = v15;
          sub_10029DADC(v11, type metadata accessor for CustodianRecord);
          v17 = sub_10021145C(v14, v16, &v40);

          *(v12 + 4) = v17;
          _os_log_impl(&_mh_execute_header, v9, v10, "Owner RecoveryInfoRecord is removed, checking if setup is revoked with server, custodianID: %s", v12, 0xCu);
          sub_10000839C(v13);
        }

        else
        {
          v29 = *(v0 + 296);

          sub_10029DADC(v29, type metadata accessor for CustodianRecord);
        }

        v30 = *(v0 + 376);
        v32 = *(v0 + 184);
        v31 = *(v0 + 192);
        v33 = *(v0 + 176);
        v34 = *(v0 + 128);
        (*(v32 + 16))(v31, *(v0 + 168) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler, v33);
        Dependency.wrappedValue.getter();
        (*(v32 + 8))(v31, v33);
        sub_1000080F8((v0 + 56), *(v0 + 80));
        v35 = swift_task_alloc();
        *(v0 + 344) = v35;
        *v35 = v0;
        v35[1] = sub_100298F08;

        return sub_100080620(v34 + v30, 0);
      }

      else
      {
        sub_10029D880(v8, *(v0 + 256), type metadata accessor for CustodianRecord);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = *(v0 + 256);
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v40 = v24;
          *v23 = 136315138;
          sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v25 = dispatch thunk of CustomStringConvertible.description.getter();
          v27 = v26;
          sub_10029DADC(v22, type metadata accessor for CustodianRecord);
          v28 = sub_10021145C(v25, v27, &v40);

          *(v23 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v20, v21, "Owner RecoveryInfoRecord is not removed, incomplete setup, custodianID: %s", v23, 0xCu);
          sub_10000839C(v24);
        }

        else
        {
          v36 = *(v0 + 256);

          sub_10029DADC(v36, type metadata accessor for CustodianRecord);
        }

        v39 = *(v0 + 380);
        sub_100008D3C(*(v0 + 240), &unk_1003D91B0, qword_1003444F0);

        v37 = *(v0 + 8);
        if (v39)
        {
          v38 = 4294967237;
        }

        else
        {
          v38 = 69;
        }

        return v37(v38);
      }
    }
  }

  else
  {
    sub_10029DADC(*(v0 + 232), type metadata accessor for FetchRecoveryRecordsRequest);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100298F08(char a1)
{
  v4 = *v2;
  *(*v2 + 352) = v1;

  if (v1)
  {
    v5 = sub_100299570;
  }

  else
  {
    *(v4 + 381) = a1;
    v5 = sub_100299030;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100299030()
{
  v31 = v0;
  v1 = *(v0 + 381);
  sub_10000839C((v0 + 56));
  if (v1 > 1)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      sub_10029D880(*(v0 + 128), *(v0 + 264), type metadata accessor for CustodianRecord);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 264);
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v30 = v7;
        *v6 = 136315138;
        sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        v10 = v9;
        sub_10029DADC(v5, type metadata accessor for CustodianRecord);
        v11 = sub_10021145C(v8, v10, &v30);

        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v3, v4, "Owner setup is not revoked with server, incomplete setup, custodianID: %s", v6, 0xCu);
        sub_10000839C(v7);
      }

      else
      {
        v26 = *(v0 + 264);

        sub_10029DADC(v26, type metadata accessor for CustodianRecord);
      }

      v29 = *(v0 + 380);
      sub_100008D3C(*(v0 + 240), &unk_1003D91B0, qword_1003444F0);

      v27 = *(v0 + 8);
      if (v29)
      {
        v28 = 4294967239;
      }

      else
      {
        v28 = 71;
      }

      return v27(v28);
    }
  }

  sub_10029D880(*(v0 + 128), *(v0 + 288), type metadata accessor for CustodianRecord);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 288);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    sub_10029DADC(v14, type metadata accessor for CustodianRecord);
    v20 = sub_10021145C(v17, v19, &v30);

    *(v15 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "Owner setup is revoked with server, checking if setup was torn down by custodian, custodianID: %s", v15, 0xCu);
    sub_10000839C(v16);
  }

  else
  {
    v21 = *(v0 + 288);

    sub_10029DADC(v21, type metadata accessor for CustodianRecord);
  }

  v22 = *(v0 + 376);
  v23 = *(v0 + 128);
  *(v0 + 360) = sub_10028D75C();
  v24 = swift_task_alloc();
  *(v0 + 368) = v24;
  *v24 = v0;
  v24[1] = sub_100299684;

  return sub_100014A24(0, v23 + v22);
}

uint64_t sub_100299570()
{
  sub_100008D3C(v0[30], &unk_1003D91B0, qword_1003444F0);
  sub_10000839C(v0 + 7);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100299684(char a1)
{
  *(*v2 + 382) = a1;

  if (v1)
  {

    v3 = sub_100299C14;
  }

  else
  {

    v3 = sub_1002997D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002997D4()
{
  v27 = v0;
  v1 = *(v0 + 128);
  if (*(v0 + 382) == 11)
  {
    sub_10029D880(v1, *(v0 + 272), type metadata accessor for CustodianRecord);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 272);
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v26 = v6;
      *v5 = 136315138;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v7 = dispatch thunk of CustomStringConvertible.description.getter();
      v9 = v8;
      sub_10029DADC(v4, type metadata accessor for CustodianRecord);
      v10 = sub_10021145C(v7, v9, &v26);

      *(v5 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v2, v3, "Owner setup is declined and completed, custodianID: %s", v5, 0xCu);
      sub_10000839C(v6);
    }

    else
    {
      v21 = *(v0 + 272);

      sub_10029DADC(v21, type metadata accessor for CustodianRecord);
    }

    v25 = 0;
  }

  else
  {
    sub_10029D880(v1, *(v0 + 280), type metadata accessor for CustodianRecord);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 382);
      v14 = *(v0 + 280);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 134218242;
      *(v15 + 4) = v13;
      *(v15 + 12) = 2080;
      sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;
      sub_10029DADC(v14, type metadata accessor for CustodianRecord);
      v20 = sub_10021145C(v17, v19, &v26);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Owner setup was torn down by custodian, reason: %ld, custodianID: %s", v15, 0x16u);
      sub_10000839C(v16);
    }

    else
    {
      v22 = *(v0 + 280);

      sub_10029DADC(v22, type metadata accessor for CustodianRecord);
    }

    v25 = *(v0 + 382) | 0xFFFFFF80;
  }

  sub_100008D3C(*(v0 + 240), &unk_1003D91B0, qword_1003444F0);

  v23 = *(v0 + 8);

  return v23(v25);
}

uint64_t sub_100299C14()
{
  v14 = v0;
  sub_10029D880(v0[16], v0[34], type metadata accessor for CustodianRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[34];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v8 = v7;
    sub_10029DADC(v3, type metadata accessor for CustodianRecord);
    v9 = sub_10021145C(v6, v8, &v13);

    *(v4 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Owner setup is declined and completed, custodianID: %s", v4, 0xCu);
    sub_10000839C(v5);
  }

  else
  {
    v10 = v0[34];

    sub_10029DADC(v10, type metadata accessor for CustodianRecord);
  }

  sub_100008D3C(v0[30], &unk_1003D91B0, qword_1003444F0);

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_100299EA8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = v6;
  *(v7 + 72) = a4;
  *(v7 + 80) = a5;
  *(v7 + 160) = a2;
  *(v7 + 56) = a1;
  *(v7 + 64) = a3;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  *(v7 + 104) = v8;
  *(v7 + 112) = *(v8 - 8);
  *(v7 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100299F80, 0, 0);
}

uint64_t sub_100299F80()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  (*(v2 + 16))(v1, *(v0 + 96) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  *(v0 + 128) = *(v0 + 40);
  v5 = kAAAnalyticsEventCustodianSetupSendRemovalMessageToCustodian;
  v6 = kAAAnalyticsEventCustodianSetupSendRemovalMessageToCustodian;

  if (v4)
  {

    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_opt_self();
  v9 = String._bridgeToObjectiveC()();

  v10 = [v8 analyticsEventWithName:v5 altDSID:v7 flowID:v9];
  *(v0 + 136) = v10;

  if (v10)
  {
    v11 = objc_allocWithZone(NSNumber);
    v12 = v10;
    v13 = [v11 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v14 = NSString.init(stringLiteral:)();
    [v12 setObject:v13 forKeyedSubscript:v14];
  }

  sub_100257274(v5);
  v15 = swift_task_alloc();
  *(v0 + 144) = v15;
  *v15 = v0;
  v15[1] = sub_1002722C0;
  v16 = *(v0 + 96);
  v17 = *(v0 + 56);
  v18 = *(v0 + 160);

  return sub_10029B58C(v15, v16, v17, v18);
}

uint64_t sub_10029A2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v7[18] = type metadata accessor for CustodianRecord(0);
  v7[19] = swift_task_alloc();
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();

  return _swift_task_switch(sub_10029A3FC, 0, 0);
}

uint64_t sub_10029A3FC()
{
  v28 = v0;
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[14];
  (*(v2 + 16))(v1, v0[12] + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v0[23] = v0[8];
  v5 = kAAAnalyticsEventSetupFailSafeTearDown;
  v27[0] = 0x776F642D72616574;
  v27[1] = 0xEA00000000002D6ELL;
  type metadata accessor for UUID();
  sub_1000D8278(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v0[24] = 0x776F642D72616574;
  v0[25] = 0xEA00000000002D6ELL;
  v7 = v5;

  if (v4)
  {

    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 analyticsEventWithName:v5 altDSID:v8 flowID:v10];
  v0[26] = v11;

  if (v11)
  {
    v12 = objc_allocWithZone(NSNumber);
    v13 = v11;
    v14 = [v12 initWithInteger:12];
    sub_100016034(0, &qword_1003D9250, NSString_ptr);
    v15 = NSString.init(stringLiteral:)();
    [v13 setObject:v14 forKeyedSubscript:v15];
  }

  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v0[27] = sub_100008D04(v16, qword_1003FAA40);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_10021145C(0x776F642D72616574, 0xEA00000000002D6ELL, v27);
    _os_log_impl(&_mh_execute_header, v17, v18, "Performing: %s...", v19, 0xCu);
    sub_10000839C(v20);
  }

  sub_100257274(v5);
  v21 = swift_task_alloc();
  v0[28] = v21;
  *v21 = v0;
  v21[1] = sub_10029AA7C;
  v22 = v0[19];
  v24 = v0[16];
  v23 = v0[17];
  v25 = v0[15];

  return sub_10029B004(v22, v23, v25, v24);
}

uint64_t sub_10029AA7C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_10029AB90;
  }

  else
  {
    v2 = sub_10029AE28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10029AB90()
{
  v17 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[24];
    v3 = v0[25];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_10021145C(v4, v3, &v16);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "❌ %s - failed with error: %@", v5, 0x16u);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v7);
  }

  v9 = v0[26];
  swift_getErrorValue();
  sub_1002DEA80(v0[3], v0[4]);
  swift_getErrorValue();
  sub_100255F6C(-7304, v0[6], v0[7]);
  if (v9)
  {
    v10 = v0[26];
    v11 = v10;
    v12 = _convertErrorToNSError(_:)();
    [v11 updateTaskResultWithError:v12];

    swift_getObjectType();
    sub_100246FA8(v10);
  }

  v13 = v0[26];
  swift_willThrow();

  swift_unknownObjectRelease();

  v14 = v0[1];

  return v14();
}

uint64_t sub_10029AE28()
{
  v12 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_10021145C(v4, v3, &v11);
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ %s - successfully completed!", v5, 0xCu);
    sub_10000839C(v6);
  }

  v7 = *(v0 + 208);
  if (v7)
  {
    [*(v0 + 208) updateTaskResultWithError:0];
    swift_getObjectType();
    v8 = v7;
    sub_100246FA8(v7);
  }

  sub_10029DA74(*(v0 + 152), *(v0 + 88), type metadata accessor for CustodianRecord);

  swift_unknownObjectRelease();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10029B004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = type metadata accessor for CustodianStatusUpdateRequest(0);
  v4[13] = swift_task_alloc();
  v5 = sub_100005814(&qword_1003DB620, &unk_10033FAA0);
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10029B104, 0, 0);
}

uint64_t sub_10029B104()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  sub_100005814(&unk_1003D98A0, &unk_10033FA20);
  Dependency.init(dependencyId:config:)();
  v6 = type metadata accessor for CustodianRecord(0);
  v7 = *(v6 + 20);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 16))(v1, v5 + v7, v8);
  *(v1 + v3[5]) = 4;
  *(v1 + v3[6]) = 0;
  *(v1 + v3[7]) = 0;
  v9 = (v1 + v3[8]);
  *v9 = v4;
  v9[1] = v2;
  *(v1 + v3[9]) = 1;
  v10 = v1 + v3[10];
  *v10 = 0;
  *(v10 + 8) = 1;

  Dependency.wrappedValue.getter();
  v0[7] = *sub_1000080F8(v0 + 2, v0[5]);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *(v11 + 16) = v0 + 7;
  *(v11 + 24) = v1;
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = sub_10029B304;
  v13 = v0[8];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, 0, 0, 0xD000000000000016, 0x8000000100332E80, sub_10029D7E8, v11, v6);
}

uint64_t sub_10029B304()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10029B4CC;
  }

  else
  {

    v2 = sub_10029B420;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10029B420()
{
  v1 = v0[13];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_10029DADC(v1, type metadata accessor for CustodianStatusUpdateRequest);
  sub_10000839C(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10029B4CC()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];

  (*(v3 + 8))(v1, v2);
  sub_10029DADC(v4, type metadata accessor for CustodianStatusUpdateRequest);
  sub_10000839C(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10029B58C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 120) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  v5 = type metadata accessor for UUID();
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  v6 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10029B6B8, 0, 0);
}

uint64_t sub_10029B6B8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v18 = *(v0 + 120);
  v7 = *(v0 + 64);
  (*(v2 + 16))(v1, *(v0 + 56) + OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__messenger, v4);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v4);
  sub_1000080F8((v0 + 16), *(v0 + 40));
  v8 = type metadata accessor for CustodianRecord(0);
  v9 = (v7 + *(v8 + 24));
  v10 = *v9;
  v11 = v9[1];
  (*(v6 + 16))(v3, v7 + *(v8 + 20), v5);
  type metadata accessor for CustodianRemovedMessage(0);
  v12 = swift_allocObject();
  *(v12 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason) = 11;
  v13 = v12 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow;
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v12 + 16) = 4;
  (*(v6 + 32))(v12 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_custodianID, v3, v5);
  *(v12 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_reason) = v18;
  v14 = v12 + OBJC_IVAR____TtC13appleaccountd23CustodianRemovedMessage_flow;
  *v14 = 12;
  *(v14 + 8) = 0;
  v15 = sub_1000E9D30(v10, v11);
  sub_100262BAC(v12, v15, 0xD00000000000001FLL, 0x800000010032D510);

  sub_10000839C((v0 + 16));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10029B920()
{
  v1 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__custodianStorage;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__cloudShare;
  v6 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__idmsConfirmationHandler;
  v8 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__messenger;
  v10 = sub_100005814(&qword_1003DB060, &qword_10033F990);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd30OwnerSetupReadinessHealthCheck__reporter;
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OwnerSetupReadinessHealthCheck(uint64_t a1)
{
  result = qword_1003E5650;
  if (!qword_1003E5650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10029BBB8(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &qword_1003E5660, &unk_1003D98D0, &unk_10033F050);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &unk_1003DB250, &qword_1003D9A30, &unk_10033F040);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, qword_1003E5670, &unk_1003DACC0, &unk_10033EFF0);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10029BE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = *v4;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_1000BCD5C(0, 0, v11, &unk_100348210, v14);
}