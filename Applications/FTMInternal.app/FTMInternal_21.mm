uint64_t sub_100271190()
{
  sub_100270EA4();

  return swift_deallocClassInstance();
}

void sub_1002711C4(uint64_t a1, uint64_t a2, void (*a3)(void, void, double), uint64_t a4, uint64_t a5)
{
  v97 = a5;
  v85 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchQoS();
  v11 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      if (qword_100375018 != -1)
      {
        swift_once();
      }

      v80 = qword_100382500;
      v14 = *(qword_100382500 + 26) == 1;
      v76 = a4;
      v75 = a2;
      v74 = a3;
      if (v14)
      {
        if (qword_100374FB0 != -1)
        {
          swift_once();
        }

        v15 = qword_100382498;
        v16 = static os_log_type_t.default.getter();
        sub_1001A551C(&unk_100377020, &unk_1002EF770);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1002EED40;
        *(v17 + 56) = &type metadata for Int;
        *(v17 + 64) = &protocol witness table for Int;
        *(v17 + 32) = v13;
        os_log(_:dso:log:type:_:)("DashboardViewModel -  loadDashboardData - dashboardList.count %{public}d", 72, 2, &_mh_execute_header, v15, v16, v17);
      }

      else
      {
        if (qword_100374FB0 != -1)
        {
          swift_once();
        }

        v21 = qword_100382498;
        v22 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("DashboardViewModel -  loadDashboardData", 39, 2, &_mh_execute_header, v21, v22, _swiftEmptyArrayStorage);
      }

      v81 = swift_allocObject();
      *(v81 + 16) = _swiftEmptyArrayStorage;
      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v77 = &v101;
      v78 = (v9 + 8);
      v79 = (v11 + 8);
      v23 = (a1 + 56);
      v24 = v80;
      while (1)
      {
        v25 = *(v23 - 3);
        v26 = *(v23 - 2);
        v27 = *(v23 - 1);
        v28 = *v23;
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v30 = *(Strong + 48);
          v31 = v25;
          v32 = v26;
          v33 = v27;
          v34 = v27;
          v35 = v28;
          v36 = v30;

          dispatch_group_enter(v36);
        }

        else
        {
          v37 = v25;
          v38 = v26;
          v33 = v27;
          v39 = v27;
          v40 = v28;
        }

        v41 = *(v24 + 156);
        v42 = *(v24 + 160);
        v43 = swift_weakLoadStrong();
        if (v42 == 1)
        {
          if (v43)
          {
            v44 = *(v43 + 48);

            dispatch_group_leave(v44);
          }
        }

        else if (v43)
        {
          v94 = *(v43 + 16);

          v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = v45;
          v95 = v33;
          v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v47;
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v13;
          v49 = v48;
          v86 = v50;
          v51 = swift_allocObject();
          v52 = v97;
          *(v51 + 16) = v81;
          *(v51 + 24) = v52;

          v53 = sub_10025C024();
          v93 = v53;
          v54 = swift_allocObject();
          v92 = v26;
          v55 = v54;
          *(v54 + 16) = sub_100274FE0;
          *(v54 + 24) = v51;
          v91 = *(v53 + 3);
          v56 = swift_allocObject();
          swift_weakInit();
          v57 = swift_allocObject();
          v90 = v56;
          v58 = v89;
          *(v57 + 16) = v56;
          *(v57 + 24) = v58;
          *(v57 + 32) = v88;
          *(v57 + 40) = v46;
          *(v57 + 48) = v87;
          *(v57 + 56) = v49;
          *(v57 + 64) = v86;
          *(v57 + 72) = v41;
          *(v57 + 80) = sub_1001AD9DC;
          *(v57 + 88) = v55;
          v103 = sub_1002530D4;
          v104 = v57;
          aBlock = _NSConcreteStackBlock;
          v100 = 1107296256;
          v101 = sub_10020C96C;
          v102 = &unk_1003217A8;
          v59 = _Block_copy(&aBlock);

          v89 = v25;
          v60 = v82;
          static DispatchQoS.unspecified.getter();
          v105 = _swiftEmptyArrayStorage;
          sub_100274F58(&qword_1003784A0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
          sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
          sub_1002302F0();
          v61 = v84;
          v62 = v85;
          v13 = v96;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v59);

          v63 = v62;
          v24 = v80;
          (*v78)(v61, v63);
          (*v79)(v60, v83);

          goto LABEL_18;
        }

LABEL_18:
        v23 += 5;
        if (!--v13)
        {
          swift_beginAccess();
          v64 = swift_weakLoadStrong();
          if (v64)
          {
            v65 = *(v64 + 48);

            sub_1002181D0();
            v66 = static OS_dispatch_queue.main.getter();
            v67 = swift_allocObject();
            v68 = v74;
            v67[2] = v75;
            v67[3] = v68;
            v69 = v97;
            v67[4] = v76;
            v67[5] = v69;
            v67[6] = v81;
            v103 = sub_100274F30;
            v104 = v67;
            aBlock = _NSConcreteStackBlock;
            v100 = 1107296256;
            v101 = sub_10020C96C;
            v102 = &unk_1003216E0;
            v70 = _Block_copy(&aBlock);

            swift_errorRetain();

            v71 = v82;
            static DispatchQoS.unspecified.getter();
            v98 = _swiftEmptyArrayStorage;
            sub_100274F58(&qword_1003784A0, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
            sub_1002302F0();
            v72 = v84;
            v73 = v85;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            OS_dispatch_group.notify(qos:flags:queue:execute:)();
            _Block_release(v70);

            (*v78)(v72, v73);
            (*v79)(v71, v83);
          }

          return;
        }
      }
    }
  }

  if (qword_100374FB0 != -1)
  {
    swift_once();
  }

  v18 = qword_100382498;
  v19 = static os_log_type_t.default.getter();
  v20 = os_log(_:dso:log:type:_:)("DashboardViewModel -  loadDashboardData - dashboardList.isempty", 63, 2, &_mh_execute_header, v18, v19, _swiftEmptyArrayStorage);
  a3(0, a2, v20);
}

void sub_100271C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Metric(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && *(a1 + 16))
  {
    v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    sub_100275604(a1 + v10, v9, type metadata accessor for Metric);
    swift_beginAccess();
    v11 = *(a3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1002250B0(0, v11[2] + 1, 1, v11);
      *(a3 + 16) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1002250B0((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    sub_10027559C(v9, v11 + v10 + *(v7 + 72) * v14, type metadata accessor for Metric);
    *(a3 + 16) = v11;
    swift_endAccess();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 48);

    dispatch_group_leave(v16);
  }
}

void sub_100271E80(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    (a2)(0, a1, a3, a4, a5);
  }

  else
  {
    swift_beginAccess();
    if (!*(*(a5 + 16) + 16))
    {
      (a2)(_swiftEmptyArrayStorage, 0);
      return;
    }

    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002EED40;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = 0xD000000000000014;
    *(v7 + 40) = 0x80000001002BFBE0;
    print(_:separator:terminator:)();

    swift_beginAccess();

    (a2)(v8, 0);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();
    v12 = *(v10 + 32);

    if (v11)
    {
      ObjectType = swift_getObjectType();
      (*(v12 + 32))(ObjectType, v12);
      swift_unknownObjectRelease();
    }
  }
}

void sub_10027202C(uint64_t a1)
{
  v2 = v1;
  v173 = a1;
  v183 = type metadata accessor for Date();
  v174 = *(v183 - 8);
  __chkstk_darwin(v183);
  v4 = &v164 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v170 = &v164 - v6;
  v7 = sub_1001A551C(&qword_100379FD0, &qword_1002F5C58);
  __chkstk_darwin(v7 - 8);
  v9 = (&v164 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v164 - v11;
  __chkstk_darwin(v13);
  v15 = &v164 - v14;
  __chkstk_darwin(v16);
  v186 = &v164 - v17;
  v18 = sub_1001A551C(&qword_100379FD8, &qword_1002F5C60);
  v169 = *(v18 - 8);
  __chkstk_darwin(v18);
  v179 = (&v164 - v19);
  v20 = sub_1001A551C(&qword_100379FE0, &qword_1002F5C68);
  __chkstk_darwin(v20 - 8);
  v22 = &v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v188 = (&v164 - v24);
  v25 = sub_1001A551C(&qword_100377168, &unk_1002F5C70);
  v168 = *(v25 - 8);
  __chkstk_darwin(v25 - 8);
  v167 = (&v164 - v26);
  v202 = type metadata accessor for Metric(0);
  v171 = *(v202 - 8);
  __chkstk_darwin(v202);
  v28 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DashboardViewModelObject(0);
  v205 = *(v29 - 8);
  v206 = v29;
  __chkstk_darwin(v29);
  v176 = &v164 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v172 = &v164 - v32;
  __chkstk_darwin(v33);
  v175 = &v164 - v34;
  __chkstk_darwin(v35);
  v203 = (&v164 - v36);
  __chkstk_darwin(v37);
  v39 = (&v164 - v38);
  if (qword_100374FB0 != -1)
  {
LABEL_106:
    swift_once();
  }

  v40 = qword_100382498;
  v41 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("DashboardViewModel -  updateDashboardDataSource()", 49, 2, &_mh_execute_header, v40, v41, _swiftEmptyArrayStorage);
  if (*(v2 + 40))
  {
    return;
  }

  v166 = v4;
  v42 = v173;
  v43 = *(v173 + 16);
  v184 = v2;
  v165 = v9;
  v44 = v43;
  v178 = v12;
  v177 = v15;
  v185 = v18;
  v187 = v22;
  v204 = v43;
  if (v43)
  {
    v212 = _swiftEmptyArrayStorage;
    sub_1001F5644(0, v43, 0);
    v45 = 0;
    v201 = v212;
    *&v182 = v42 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
    v181 = (v174 + 16);
    v180 = *(v171 + 72);
    do
    {
      v200 = (v45 + 1);
      sub_100275604(v182 + v180 * v45, v28, type metadata accessor for Metric);
      v46 = v202;
      v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      i = v48;
      v199 = v47;
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v196 = v50;
      v197 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v194 = v52;
      v195 = v51;
      v189 = *&v28[*(v46 + 32)];
      v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v192 = v53;
      v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v190 = v54;
      v55 = String.init(_:)(*&v28[*(v46 + 36)]);
      countAndFlagsBits = v55._countAndFlagsBits;
      object = v55._object;
      sub_1001A56A0();
      v58 = 15;
      v59 = &off_10031A230;
      while (1)
      {
        v60 = *(v59 - 1);
        v61 = *v59;
        v211 = v55;
        v209 = v60;
        v210 = v61;

        if (StringProtocol.contains<A>(_:)())
        {
          break;
        }

        v59 += 2;
        if (!--v58)
        {
          goto LABEL_10;
        }
      }

      v211 = v55;
      v209 = v60;
      v210 = v61;
      v207 = 0;
      v208 = 0xE000000000000000;
      countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v63 = v62;

      object = v63;
LABEL_10:
      v64 = *&v28[*(v202 + 52)];
      v65 = v206;
      (*v181)(v39 + *(v206 + 44), &v28[*(v202 + 44)], v183);
      v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v68 = sub_1001E1BFC(v66, v67);
      v70 = v69;

      v71 = i;
      *v39 = v199;
      v39[1] = v71;
      v72 = v196;
      v39[2] = v197;
      v39[3] = v72;
      v73 = v194;
      v39[4] = v195;
      v39[5] = v73;
      v74 = v192;
      v39[6] = v193;
      v39[7] = v74;
      v75 = v190;
      v39[8] = v191;
      v39[9] = v75;
      v39[10] = countAndFlagsBits;
      v39[11] = object;
      *(v39 + 24) = v64;
      v76 = (v39 + *(v65 + 48));
      *v76 = v68;
      v76[1] = v70;
      sub_10027566C(v28, type metadata accessor for Metric);
      v77 = v201;
      v212 = v201;
      v12 = *(v201 + 16);
      v78 = *(v201 + 24);
      v2 = v184;
      if (v12 >= v78 >> 1)
      {
        sub_1001F5644((v78 > 1), v12 + 1, 1);
        v77 = v212;
      }

      v77[2] = v12 + 1;
      v79 = (*(v205 + 80) + 32) & ~*(v205 + 80);
      v201 = v77;
      sub_10027559C(v39, v77 + v79 + *(v205 + 72) * v12, type metadata accessor for DashboardViewModelObject);
      v44 = v204;
      v45 = v200;
    }

    while (v200 != v204);
    v15 = v177;
    v18 = v185;
    v22 = v187;
  }

  else
  {
    v201 = _swiftEmptyArrayStorage;
  }

  v80 = type metadata accessor for DashboardViewModel();
  v82 = sub_100274F58(&qword_100379FC8, v81, type metadata accessor for DashboardViewModel, &unk_1002F5C1C);
  v193 = v80;
  v197 = v82;
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  *(v2 + 56) = v201;

  v83 = _swiftEmptyArrayStorage;
  if (v44)
  {
    v211._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_1001F5604(0, v44, 0);
    v44 = 0;
    v83 = v211._countAndFlagsBits;
    v12 = v173 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
    v84 = *(v171 + 72);
    v39 = &qword_100377168;
    v85 = v168;
    v86 = v167;
    do
    {
      sub_1002738DC(v12, v86);
      v211._countAndFlagsBits = v83;
      v88 = v83[2];
      v87 = v83[3];
      if (v88 >= v87 >> 1)
      {
        sub_1001F5604((v87 > 1), v88 + 1, 1);
        v85 = v168;
        v83 = v211._countAndFlagsBits;
      }

      v83[2] = v88 + 1;
      sub_1001B603C(v86, v83 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v88, &qword_100377168, &unk_1002F5C70);
      v12 += v84;
      v204 = (v204 - 1);
    }

    while (v204);
    v15 = v177;
    v18 = v185;
    v22 = v187;
  }

  if (v83[2])
  {
    sub_1001A551C(&qword_100377158, &qword_1002F2308);
    v89 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v89 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v184;
  v211._countAndFlagsBits = v89;

  sub_100275040(v90, 1, &v211);
  v181 = v44;

  v28 = v211._countAndFlagsBits;
  v91 = *(v4 + 56);
  v199 = (v169 + 48);
  v200 = (v169 + 56);
  v204 = (v205 + 56);
  v202 = v205 + 48;
  v9 = *(v91 + 16);
  v192 = (v174 + 16);
  v191 = (v174 + 32);
  v190 = (v174 + 24);
  v189 = (v174 + 8);
  v196 = v91;

  v2 = 0;
  v182 = xmmword_1002EED40;
  v194 = _swiftEmptyArrayStorage;
  for (i = v9; ; v9 = i)
  {
    while (1)
    {
      while (1)
      {
        if (v2 == v9)
        {
          v96 = 1;
          v2 = v9;
        }

        else
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_104;
          }

          if (v2 >= *(v196 + 16))
          {
            goto LABEL_105;
          }

          v97 = v196 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v2;
          v98 = *(v18 + 48);
          v4 = v179;
          *v179 = v2;
          sub_100275604(v97, v4 + v98, type metadata accessor for DashboardViewModelObject);
          sub_1001B603C(v4, v22, &qword_100379FD8, &qword_1002F5C60);
          v96 = 0;
          ++v2;
        }

        (*v200)(v22, v96, 1, v18);
        v99 = v188;
        sub_1001B603C(v22, v188, &qword_100379FE0, &qword_1002F5C68);
        if ((*v199)(v99, 1, v18) == 1)
        {

          v9 = *(v194 + 2);
          v2 = v184;
          v18 = v193;
          if (v9)
          {
            v12 = (v194 + 32);
            while (1)
            {
              v145 = *v12;
              v12 += 8;
              v22 = v145;
              v146 = *(v2 + 56);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v146 = sub_1001FA794(v146);
              }

              v147 = v146[2];
              if (v22 >= v147)
              {
                break;
              }

              v39 = (v147 - 1);
              v15 = *(v205 + 72);
              v148 = v146 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + v15 * v22;
              sub_10027566C(v148, type metadata accessor for DashboardViewModelObject);
              if (v15 > 0 || v148 >= v148 + v15 + v15 * (v39 - v22))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v15)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v146[2] = v39;
              v4 = ObservableObject<>.objectWillChange.getter();
              ObservableObjectPublisher.send()();

              *(v2 + 56) = v146;

              v9 = (v9 - 1);
              if (!v9)
              {
                goto LABEL_84;
              }
            }
          }

          else
          {
LABEL_84:

            v12 = (v28 + 64);
            v149 = 1 << v28[32];
            v150 = -1;
            if (v149 < 64)
            {
              v150 = ~(-1 << v149);
            }

            v15 = v150 & *(v28 + 8);
            v39 = ((v149 + 63) >> 6);

            v22 = 0;
            while (v15)
            {
              v151 = v15;
LABEL_93:
              v15 = (v151 - 1) & v151;
              if (*(v28 + 2))
              {
                v153 = (*(v28 + 6) + ((v22 << 10) | (16 * __clz(__rbit64(v151)))));
                v154 = *v153;
                v9 = v153[1];

                v155 = sub_1001F66B8(v154, v9);
                v4 = v156;

                if (v4)
                {
                  v157 = *(v205 + 72);
                  v158 = v172;
                  sub_100275604(*(v28 + 7) + v157 * v155, v172, type metadata accessor for DashboardViewModelObject);
                  v159 = v158;
                  v160 = v175;
                  sub_10027559C(v159, v175, type metadata accessor for DashboardViewModelObject);
                  sub_100275604(v160, v176, type metadata accessor for DashboardViewModelObject);
                  v161 = *(v2 + 56);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v161 = sub_100225714(0, v161[2] + 1, 1, v161);
                  }

                  v18 = v161[2];
                  v162 = v161[3];
                  if (v18 >= v162 >> 1)
                  {
                    v161 = sub_100225714((v162 > 1), v18 + 1, 1, v161);
                  }

                  v161[2] = v18 + 1;
                  v163 = v161 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + v18 * v157;
                  v9 = type metadata accessor for DashboardViewModelObject;
                  sub_10027559C(v176, v163, type metadata accessor for DashboardViewModelObject);
                  v4 = ObservableObject<>.objectWillChange.getter();
                  ObservableObjectPublisher.send()();

                  sub_10027566C(v175, type metadata accessor for DashboardViewModelObject);
                  *(v2 + 56) = v161;
                }
              }
            }

            while (1)
            {
              v152 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                break;
              }

              if (v152 >= v39)
              {

                sub_100274800(*(*(v2 + 56) + 16), 0);

                return;
              }

              v151 = *(v12 + 8 * v152);
              ++v22;
              if (v151)
              {
                v22 = v152;
                goto LABEL_93;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        v201 = *v99;
        v100 = v203;
        sub_10027559C(v99 + *(v18 + 48), v203, type metadata accessor for DashboardViewModelObject);
        v101 = v100[5];
        v211._countAndFlagsBits = v100[4];
        v211._object = v101;

        v102 = String.init<A>(_:)();
        v104 = v103;
        v105 = v100[9];
        v211._countAndFlagsBits = v100[8];
        v211._object = v105;

        v12 = String.init<A>(_:)();
        v39 = v106;
        v211._countAndFlagsBits = v102;
        v211._object = v104;

        v107._countAndFlagsBits = v12;
        v107._object = v39;
        String.append(_:)(v107);

        v108 = v211._object;
        if (*(v28 + 2))
        {
          v109 = v211._countAndFlagsBits;
          v110 = sub_1001F66B8(v211._countAndFlagsBits, v211._object);
          if (v111)
          {
            break;
          }
        }

        v121 = v186;
        (*v204)(v186, 1, 1, v206);

        sub_1002756CC(v121);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v194 = sub_1002248CC(0, *(v194 + 2) + 1, 1, v194);
        }

        v9 = i;
        v4 = *(v194 + 2);
        v122 = *(v194 + 3);
        if (v4 >= v122 >> 1)
        {
          v194 = sub_1002248CC((v122 > 1), v4 + 1, 1, v194);
        }

        v22 = v187;
        sub_10027566C(v203, type metadata accessor for DashboardViewModelObject);
        v123 = v194;
        *(v194 + 2) = v4 + 1;
        *&v123[8 * v4 + 32] = v201;
      }

      v112 = v205;
      v12 = *(v205 + 72);
      v4 = v186;
      sub_100275604(*(v28 + 7) + v12 * v110, v186, type metadata accessor for DashboardViewModelObject);
      v39 = *(v112 + 56);
      v113 = 1;
      (v39)(v4, 0, 1, v206);
      sub_1002756CC(v4);
      if (*(v28 + 2))
      {
        v4 = v28;
        v114 = sub_1001F66B8(v109, v108);
        if (v115)
        {
          sub_100275604(*(v28 + 7) + v114 * v12, v15, type metadata accessor for DashboardViewModelObject);
          v113 = 0;
        }
      }

      v92 = v113;
      v93 = v206;
      (v39)(v15, v92, 1, v206);
      v94 = *v202;
      if ((*v202)(v15, 1, v93))
      {
        sub_10027566C(v203, type metadata accessor for DashboardViewModelObject);
        v95 = v15;
        goto LABEL_27;
      }

      v195 = *(v15 + 80);
      v116 = v15;
      v117 = *(v15 + 88);

      sub_1002756CC(v116);
      if (*(v28 + 2) && (v118 = sub_1001F66B8(v109, v108), (v119 & 1) != 0))
      {
        sub_100275604(*(v28 + 7) + v118 * v12, v178, type metadata accessor for DashboardViewModelObject);
        v120 = 0;
      }

      else
      {
        v120 = 1;
      }

      v95 = v178;
      v4 = v206;
      (v39)(v178, v120, 1, v206);
      if (!v94(v95, 1, v4))
      {
        break;
      }

      sub_10027566C(v203, type metadata accessor for DashboardViewModelObject);

      v15 = v177;
LABEL_27:

      sub_1002756CC(v95);
      v18 = v185;
      v22 = v187;
      v9 = i;
    }

    v124 = v166;
    v125 = v183;
    (*v192)(v166, v95 + *(v206 + 44), v183);
    sub_1002756CC(v95);
    (*v191)(v170, v124, v125);
    v126 = *(v184 + 56);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      break;
    }

    v127 = v201;
    if ((v201 & 0x8000000000000000) != 0)
    {
      goto LABEL_107;
    }

LABEL_52:
    if (v127 >= v126[2])
    {
      goto LABEL_108;
    }

    v128 = (*(v205 + 80) + 32) & ~*(v205 + 80);
    v180 = v12 * v127;
    v129 = v126 + v128 + v12 * v127;
    *(v129 + 10) = v195;
    *(v129 + 11) = v117;

    v130 = v126;
    v131 = v184;
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v131 + 56) = v130;

    v132 = *(v131 + 56);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v132 = sub_1001FA794(v132);
    }

    v15 = v177;
    if (v201 >= *(v132 + 2))
    {
      goto LABEL_109;
    }

    (*v190)(&v132[v128 + *(v206 + 44) + v180], v170, v183);
    v133 = v184;
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v133 + 56) = v132;

    if (qword_100375018 != -1)
    {
      swift_once();
    }

    v18 = v185;
    if (*(qword_100382500 + 26) == 1)
    {
      if (qword_100374FA8 != -1)
      {
        swift_once();
      }

      v201 = qword_100382490;
      LODWORD(v195) = static os_log_type_t.default.getter();
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v134 = swift_allocObject();
      *(v134 + 16) = v182;
      v211._countAndFlagsBits = v109;
      v211._object = v108;

      v135 = String.init<A>(_:)();
      v180 = v136;
      *(v134 + 56) = &type metadata for String;
      *(v134 + 64) = sub_1001A76E8();
      v137 = v180;
      *(v134 + 32) = v135;
      *(v134 + 40) = v137;
      os_log(_:dso:log:type:_:)("DashBoardViewModel - Updating value and timestamp for key : %{public}s ", 71, 2, &_mh_execute_header, v201, v195, v134);
    }

    else
    {
      if (qword_100374FA8 != -1)
      {
        swift_once();
      }

      v138 = qword_100382490;
      v139 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("DashBoardViewModel - Updating value and timestamp for key", 57, 2, &_mh_execute_header, v138, v139, _swiftEmptyArrayStorage);
    }

    v140 = sub_1001F66B8(v109, v108);
    if (v141)
    {
      v142 = v140;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v211._countAndFlagsBits = v28;
      v22 = v187;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1001FA1D8();
        v28 = v211._countAndFlagsBits;
      }

      v4 = v165;
      sub_10027559C(*(v28 + 7) + v142 * v12, v165, type metadata accessor for DashboardViewModelObject);
      sub_1001F8940(v142, v28);
      v144 = 0;
    }

    else
    {
      v144 = 1;
      v4 = v165;
      v22 = v187;
    }

    (v39)(v4, v144, 1, v206);

    sub_1002756CC(v4);
    (*v189)(v170, v183);
    sub_10027566C(v203, type metadata accessor for DashboardViewModelObject);
  }

  v126 = sub_1001FA794(v126);
  v127 = v201;
  if ((v201 & 0x8000000000000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1002738DC@<X0>(uint64_t a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = type metadata accessor for Metric(0);
  v5 = String.init(_:)(*(a1 + v4[6]));
  v6 = String.init(_:)(*(a1 + v4[7]));

  String.append(_:)(v6);

  *a2 = v5;
  v48 = a2;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v8;
  v46 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v10;
  v44 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v12;
  v42 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v14;
  v40 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v16;
  v38 = v15;
  v47 = v4;
  v49 = a1;
  v17 = String.init(_:)(*(a1 + v4[9]));
  countAndFlagsBits = v17._countAndFlagsBits;
  object = v17._object;
  v20 = &off_10031A230;
  v21 = 15;
  sub_1001A56A0();
  while (1)
  {

    if (StringProtocol.contains<A>(_:)())
    {
      break;
    }

    v20 += 2;
    if (!--v21)
    {
      goto LABEL_6;
    }
  }

  countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v23 = v22;

  object = v23;
LABEL_6:
  v24 = v48 + *(sub_1001A551C(&qword_100377168, &unk_1002F5C70) + 48);
  v25 = *(v49 + v4[13]);
  v26 = v47[11];
  v27 = type metadata accessor for DashboardViewModelObject(0);
  v28 = *(v27 + 44);
  v29 = type metadata accessor for Date();
  (*(*(v29 - 8) + 16))(&v24[v28], v49 + v26, v29);
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = sub_1001E1BFC(v30, v31);
  v34 = v33;

  *v24 = v46;
  *(v24 + 1) = v45;
  *(v24 + 2) = v44;
  *(v24 + 3) = v43;
  *(v24 + 4) = v42;
  *(v24 + 5) = v41;
  *(v24 + 6) = v40;
  *(v24 + 7) = v39;
  *(v24 + 8) = v38;
  *(v24 + 9) = v37;
  *(v24 + 10) = countAndFlagsBits;
  *(v24 + 11) = object;
  *(v24 + 24) = v25;
  v36 = &v24[*(v27 + 48)];
  *v36 = v32;
  v36[1] = v34;
  return result;
}

void sub_100273BB0(uint64_t result)
{
  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = v1;
    if (qword_100374FB0 != -1)
    {
      swift_once();
    }

    v3 = qword_100382498;
    v4 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("reload", 6, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);
    v5 = swift_allocObject();
    swift_weakInit();
    swift_retain_n();
    v6 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("DashboardViewModel -  loadDashboardData() ", 42, 2, &_mh_execute_header, v3, v6, _swiftEmptyArrayStorage);
    v7 = *(v2 + 16);
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = sub_100274E54;
    v9[3] = v5;
    v9[4] = v8;
    v10 = *&v7[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_hardwareManager];
    if (*(v10 + 160))
    {
      v11 = v7;

      v12 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("DashboardViewModel -  loadDashboardData - dashboardList.isempty", 63, 2, &_mh_execute_header, v3, v12, _swiftEmptyArrayStorage);
      sub_10027403C(0, 0, v5);
    }

    else
    {
      v13 = *(v10 + 156);
      v14 = v7;

      sub_10025C024();
      v15 = swift_allocObject();
      *(v15 + 16) = sub_100274E9C;
      *(v15 + 24) = v9;

      sub_10025FCC4(v13, sub_1001AD9DC, v15);
    }
  }
}

void sub_10027403C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_100374FB0 != -1)
    {
      swift_once();
    }

    v9 = qword_100382498;
    v10 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("dashboardVM - reload - updating dashboard data source", 53, 2, &_mh_execute_header, v9, v10, _swiftEmptyArrayStorage);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10027202C(a1);
    }

    Date.init()();
    v11 = sub_1001E0710();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong || (v15 = Strong, v16 = swift_unknownObjectWeakLoadStrong(), v17 = *(v15 + 32), , !v16))
    {

      return;
    }

    ObjectType = swift_getObjectType();
    (*(v17 + 16))(v11, v13, ObjectType, v17);

    goto LABEL_20;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10027202C(_swiftEmptyArrayStorage);
  }

  if (qword_100374FB0 != -1)
  {
    swift_once();
  }

  v19 = qword_100382498;
  v20 = static os_log_type_t.error.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002EED40;
  if (a2)
  {
    swift_getErrorValue();
    v22 = Error.localizedDescription.getter();
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v32[4] = v22;
  v32[5] = v23;
  sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v21 + 56) = &type metadata for String;
  *(v21 + 64) = sub_1001A76E8();
  *(v21 + 32) = v24;
  *(v21 + 40) = v26;
  os_log(_:dso:log:type:_:)("error  ---> %{public}s", 22, 2, &_mh_execute_header, v19, v20, v21);

  swift_beginAccess();
  v27 = swift_weakLoadStrong();
  if (v27)
  {
    v28 = v27;
    v29 = swift_unknownObjectWeakLoadStrong();
    v30 = *(v28 + 32);

    if (v29)
    {
      v31 = swift_getObjectType();
      (*(v30 + 32))(v31, v30);
LABEL_20:
      swift_unknownObjectRelease();
    }
  }
}

double sub_100274404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 40) = 1;
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = *(a1 + 96);
  v19[0] = v8;
  v19[1] = v9;
  v19[2] = v10;
  v19[3] = v11;
  v20 = v12;
  v13 = *(v4 + 16);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a2;
  v15[4] = a3;
  v16 = v13;

  sub_10025C024();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100274E10;
  *(v17 + 24) = v15;

  sub_10025FFD0(v19, sub_100231C34, v17);

  return result;
}

void sub_1002745A4(char a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, __n128))
{
  if (a1)
  {
    v5 = [objc_opt_self() defaultCenter];
    if (qword_100375008 != -1)
    {
      swift_once();
    }

    [v5 postNotificationName:static NSNotificationName.dashboardMetricUpdate object:0 userInfo:0];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      *(Strong + 40) = 0;
    }

    (a4)(1, 0);
  }

  else
  {
    if (qword_100374FB0 != -1)
    {
      swift_once();
    }

    v8 = qword_100382498;
    v9 = static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002EED40;
    if (a2)
    {
      swift_getErrorValue();
      Error.localizedDescription.getter();
    }

    v11 = String.init<A>(_:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_1001A76E8();
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    os_log(_:dso:log:type:_:)("unable to delete metric from dashboard ---> %{public}s", 54, 2, &_mh_execute_header, v8, v9, v10);

    swift_beginAccess();
    v14 = swift_weakLoadStrong();
    if (v14)
    {
      *(v14 + 40) = 0;
    }

    (a4)(0, a2);
  }
}

void sub_100274800(uint64_t a1, char a2)
{
  v3 = v2;
  if (qword_100375018 != -1)
  {
    v11 = a1;
    v12 = a2;
    swift_once();
    a2 = v12;
    a1 = v11;
  }

  if (*(qword_100382500 + 155) == 1)
  {
    type metadata accessor for DashboardViewModel();
    sub_100274F58(&qword_100379FC8, v4, type metadata accessor for DashboardViewModel, &unk_1002F5C1C);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v3 + 64) = 2;
  }

  else if (*(qword_100382500 + 168) < 1)
  {
    type metadata accessor for DashboardViewModel();
    sub_100274F58(&qword_100379FC8, v9, type metadata accessor for DashboardViewModel, &unk_1002F5C1C);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v3 + 64) = 3;
  }

  else
  {
    v5 = a1;
    v6 = a2;
    sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1002EED40;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = 0xD000000000000012;
    if ((v6 & 1) != 0 || v5 < 1)
    {
      *(v7 + 40) = 0x80000001002BFA70;
      print(_:separator:terminator:)();

      type metadata accessor for DashboardViewModel();
      sub_100274F58(&qword_100379FC8, v10, type metadata accessor for DashboardViewModel, &unk_1002F5C1C);
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      *(v3 + 64) = 0;
    }

    else
    {
      *(v7 + 40) = 0x80000001002BFA90;
      print(_:separator:terminator:)();

      type metadata accessor for DashboardViewModel();
      sub_100274F58(&qword_100379FC8, v8, type metadata accessor for DashboardViewModel, &unk_1002F5C1C);
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      *(v3 + 64) = 1;
    }
  }
}

uint64_t sub_100274AFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100274BBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DashboardViewModelObject(uint64_t a1)
{
  result = qword_100379F70;
  if (!qword_100379F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100274CAC(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    sub_1001BE3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100274D5C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DashboardViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100274D98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100274DD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100274E1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100274E5C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100274EA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100274EE0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100274F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100274F58(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100274FA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100274FE8()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100275040(uint64_t a1, char a2, void *a3)
{
  v7 = type metadata accessor for DashboardViewModelObject(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001A551C(&qword_100377168, &unk_1002F5C70);
  __chkstk_darwin(v11);
  v15 = (&v57 - v14);
  v63 = *(a1 + 16);
  if (!v63)
  {
  }

  v59 = v3;
  v60 = v8;
  v16 = a2;
  v17 = *(v12 + 48);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v62 = *(v13 + 72);
  v64 = a1;
  v58 = v18;
  sub_100275734(a1 + v18, &v57 - v14);
  v19 = v15[1];
  v67 = *v15;
  v20 = v67;
  v68 = v19;
  v61 = v17;
  sub_10027559C(v15 + v17, v10, type metadata accessor for DashboardViewModelObject);
  v21 = *a3;
  v23 = sub_1001F66B8(v20, v19);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = v22;
  if (v21[3] >= v26)
  {
    if (v16)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1001FA1D8();
      if ((v27 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_1001F7EF8(v26, v16 & 1);
  v28 = sub_1001F66B8(v20, v19);
  if ((v27 & 1) == (v29 & 1))
  {
    v23 = v28;
    if ((v27 & 1) == 0)
    {
LABEL_13:
      v32 = *a3;
      *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v33 = (v32[6] + 16 * v23);
      *v33 = v20;
      v33[1] = v19;
      v34 = v32[7];
      v60 = *(v60 + 72);
      sub_10027559C(v10, v34 + v60 * v23, type metadata accessor for DashboardViewModelObject);
      v35 = v32[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (!v36)
      {
        v32[2] = v37;
        v38 = v64;
        if (v63 != 1)
        {
          v39 = v64 + v62 + v58;
          v40 = 1;
          while (v40 < *(v38 + 16))
          {
            sub_100275734(v39, v15);
            v41 = v15[1];
            v67 = *v15;
            v42 = v67;
            v68 = v41;
            sub_10027559C(v15 + v61, v10, type metadata accessor for DashboardViewModelObject);
            v43 = *a3;
            v44 = sub_1001F66B8(v42, v41);
            v46 = v43[2];
            v47 = (v45 & 1) == 0;
            v36 = __OFADD__(v46, v47);
            v48 = v46 + v47;
            if (v36)
            {
              goto LABEL_24;
            }

            v49 = v45;
            if (v43[3] < v48)
            {
              sub_1001F7EF8(v48, 1);
              v44 = sub_1001F66B8(v42, v41);
              if ((v49 & 1) != (v50 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v49)
            {
              goto LABEL_10;
            }

            v51 = *a3;
            *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
            v52 = (v51[6] + 16 * v44);
            *v52 = v42;
            v52[1] = v41;
            sub_10027559C(v10, v51[7] + v60 * v44, type metadata accessor for DashboardViewModelObject);
            v53 = v51[2];
            v36 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v36)
            {
              goto LABEL_25;
            }

            ++v40;
            v51[2] = v54;
            v39 += v62;
            v38 = v64;
            if (v63 == v40)
            {
            }
          }

          goto LABEL_26;
        }
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v30 = swift_allocError();
    swift_willThrow();
    v69 = v30;
    swift_errorRetain();
    sub_1001A551C(&unk_100375F10, &unk_1002F5C80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10027566C(v10, type metadata accessor for DashboardViewModelObject);
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v55._object = 0x80000001002BFD70;
  v55._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v55);
  _print_unlocked<A, B>(_:_:)();
  v56._countAndFlagsBits = 39;
  v56._object = 0xE100000000000000;
  String.append(_:)(v56);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10027559C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100275604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10027566C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002756CC(uint64_t a1)
{
  v2 = sub_1001A551C(&qword_100379FD0, &qword_1002F5C58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100275734(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_100377168, &unk_1002F5C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002757B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100275800(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10027586C()
{
  v0 = sub_1001A551C(&qword_100379FE8, &qword_1002F5D38);
  __chkstk_darwin(v0);
  v2 = &v19 - v1;
  v3 = sub_1001A551C(&qword_100379FF0, &unk_1002F5D40);
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_1001A551C(&qword_100375580, &qword_1002EF748);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_10027673C();
  if (v9[2])
  {
    v10 = v9;
    *v2 = static HorizontalAlignment.center.getter();
    *(v2 + 1) = 0;
    v2[16] = 1;
    v11 = sub_1001A551C(&qword_100379FF8, &unk_1002F5D50);
    sub_100275B58(v10, &v2[*(v11 + 44)]);

    sub_1001AC934(v2, v5, &qword_100379FE8, &qword_1002F5D38);
    swift_storeEnumTagMultiPayload();
    sub_1001B4FD4();
    sub_1001AD0C8(&qword_10037A000, &qword_100379FE8, &qword_1002F5D38, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(v2, &qword_100379FE8, &qword_1002F5D38);
  }

  else
  {

    ProgressView<>.init<>()();
    v13 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v14 = &v8[*(v6 + 36)];
    *v14 = v13;
    *(v14 + 1) = v15;
    *(v14 + 2) = v16;
    *(v14 + 3) = v17;
    *(v14 + 4) = v18;
    v14[40] = 0;
    sub_1001AC934(v8, v5, &qword_100375580, &qword_1002EF748);
    swift_storeEnumTagMultiPayload();
    sub_1001B4FD4();
    sub_1001AD0C8(&qword_10037A000, &qword_100379FE8, &qword_1002F5D38, &protocol conformance descriptor for VStack<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_1001AC99C(v8, &qword_100375580, &qword_1002EF748);
  }
}

uint64_t sub_100275B58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1001A551C(&qword_10037A008, &qword_1002F5D60);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v34 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_1001A551C(&qword_10037A010, &qword_1002F5D68);
  v30 = *(v9 - 8);
  v10 = v30;
  __chkstk_darwin(v9);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v36 = a1;

  v32 = sub_1001A551C(&qword_10037A018, &qword_1002F5D70);
  v31 = type metadata accessor for UUID();
  sub_1001A551C(&qword_10037A020, &qword_1002F5D78);
  sub_1001AD0C8(&qword_10037A028, &qword_10037A018, &qword_1002F5D70, &protocol conformance descriptor for [A]);
  sub_1001AD0C8(&qword_10037A030, &qword_10037A020, &qword_1002F5D78, &protocol conformance descriptor for TupleView<A>);
  sub_1002776D0();
  v15 = v14;
  ForEach<>.init(_:content:)();
  Divider.init()();
  v16 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v17 = &v8[*(v4 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = *(v10 + 16);
  v23 = v33;
  v22(v33, v15, v9);
  v24 = v34;
  sub_1001AC934(v8, v34, &qword_10037A008, &qword_1002F5D60);
  v25 = v35;
  v22(v35, v23, v9);
  v26 = sub_1001A551C(&qword_10037A040, &unk_1002F5D80);
  sub_1001AC934(v24, &v25[*(v26 + 48)], &qword_10037A008, &qword_1002F5D60);
  sub_1001AC99C(v8, &qword_10037A008, &qword_1002F5D60);
  v27 = *(v30 + 8);
  v27(v15, v9);
  sub_1001AC99C(v24, &qword_10037A008, &qword_1002F5D60);
  return (v27)(v23, v9);
}

uint64_t sub_100275ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001A551C(&qword_100376D18, &qword_1002F1E58);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_1001A551C(&qword_10037A008, &qword_1002F5D60);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = sub_1001A551C(&qword_10037A048, &unk_1002F5D90);
  __chkstk_darwin(v14 - 8);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  v20 = (a1 + *(type metadata accessor for FTMCellMonitorHardwareDetailModel(0) + 20));
  v21 = *v20 == 0x754E20656E6F6850 && v20[1] == 0xED00003A7265626DLL;
  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    Divider.init()();
    v22 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v23 = &v13[*(v10 + 36)];
    *v23 = v22;
    *(v23 + 1) = v24;
    *(v23 + 2) = v25;
    *(v23 + 3) = v26;
    *(v23 + 4) = v27;
    v23[40] = 0;
    sub_100277728(v13, v19);
    (*(v11 + 56))(v19, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v19, 1, 1, v10);
  }

  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v28 = sub_1001A551C(&qword_100376D28, &qword_1002F1E60);
  sub_100276238(a1, &v9[*(v28 + 44)]);
  sub_1001AC934(v19, v16, &qword_10037A048, &unk_1002F5D90);
  sub_1001AC934(v9, v6, &qword_100376D18, &qword_1002F1E58);
  sub_1001AC934(v16, a2, &qword_10037A048, &unk_1002F5D90);
  v29 = sub_1001A551C(&qword_10037A050, &unk_1002F5DA0);
  sub_1001AC934(v6, a2 + *(v29 + 48), &qword_100376D18, &qword_1002F1E58);
  sub_1001AC99C(v9, &qword_100376D18, &qword_1002F1E58);
  sub_1001AC99C(v19, &qword_10037A048, &unk_1002F5D90);
  sub_1001AC99C(v6, &qword_100376D18, &qword_1002F1E58);
  return sub_1001AC99C(v16, &qword_10037A048, &unk_1002F5D90);
}

uint64_t sub_100276238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_1001A551C(&qword_100376D30, &qword_1002F1E68);
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v74 = &v65 - v6;
  v7 = type metadata accessor for FTMCellMonitorHardwareDetailModel(0);
  v8 = (a1 + *(v7 + 20));
  v9 = *v8;
  v10 = v8[1];
  v11 = (a1 + *(v7 + 24));
  v13 = v11[1];
  v66 = *v11;
  v12 = v66;
  *&v90 = v9;
  *(&v90 + 1) = v10;
  sub_1001A56A0();

  v14 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  static Color.blue.getter();
  v19 = Text.foregroundColor(_:)();
  v67 = v20;
  v68 = v19;
  v22 = v21;
  v69 = v23;

  sub_1001ACFEC(v14, v16, v18 & 1);

  v76 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v75 = v22 & 1;
  LOBYTE(v86) = 0;
  *&v90 = v12;
  *(&v90 + 1) = v13;
  v65 = v13;

  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  static Color.gray.getter();
  v37 = Text.foregroundColor(_:)();
  v39 = v38;
  LOBYTE(v13) = v40;
  v42 = v41;

  sub_1001ACFEC(v32, v34, v36 & 1);

  LOBYTE(v32) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v79 = v13 & 1;
  v77 = 0;
  *&v82 = v37;
  *(&v82 + 1) = v39;
  LOBYTE(v83) = v13 & 1;
  *(&v83 + 1) = v86;
  DWORD1(v83) = *(&v86 + 3);
  *(&v83 + 1) = v42;
  LOBYTE(v84) = v32;
  *(&v84 + 1) = *v78;
  DWORD1(v84) = *&v78[3];
  *(&v84 + 1) = v43;
  *&v85[0] = v44;
  *(&v85[0] + 1) = v45;
  *&v85[1] = v46;
  BYTE8(v85[1]) = 0;
  v47 = swift_allocObject();
  v48 = v65;
  *(v47 + 16) = v66;
  *(v47 + 24) = v48;
  v92 = v84;
  *v93 = v85[0];
  *&v93[9] = *(v85 + 9);
  v90 = v82;
  v91 = v83;
  sub_1001A551C(&qword_1003755C0, &qword_1002F1E70);
  sub_1001DF954();
  v49 = v74;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  sub_1001AC99C(&v82, &qword_1003755C0, &qword_1002F1E70);
  v50 = v70;
  v51 = v71;
  v52 = *(v71 + 16);
  v53 = v72;
  v52(v70, v49, v72);
  v54 = v67;
  v55 = v68;
  *&v86 = v68;
  *(&v86 + 1) = v67;
  LOBYTE(v87) = v75;
  *(&v87 + 1) = *v81;
  DWORD1(v87) = *&v81[3];
  v56 = v69;
  *(&v87 + 1) = v69;
  LOBYTE(v88) = v76;
  *(&v88 + 1) = *v80;
  DWORD1(v88) = *&v80[3];
  *(&v88 + 1) = v25;
  *&v89[0] = v27;
  *(&v89[0] + 1) = v29;
  *&v89[1] = v31;
  BYTE8(v89[1]) = 0;
  v57 = v86;
  v58 = v87;
  v59 = v88;
  v60 = v73;
  *(v73 + 57) = *(v89 + 9);
  v61 = v89[0];
  *(v60 + 32) = v59;
  *(v60 + 48) = v61;
  *v60 = v57;
  *(v60 + 16) = v58;
  *(v60 + 80) = 0;
  *(v60 + 88) = 1;
  v62 = v60 + *(sub_1001A551C(&qword_100376D40, &qword_1002F1E78) + 64);
  v52(v62, v50, v53);
  sub_1001AC934(&v86, &v90, &qword_1003755C0, &qword_1002F1E70);
  v63 = *(v51 + 8);
  v63(v74, v53);
  v63(v50, v53);
  *&v90 = v55;
  *(&v90 + 1) = v54;
  LOBYTE(v91) = v75;
  *(&v91 + 1) = *v81;
  DWORD1(v91) = *&v81[3];
  *(&v91 + 1) = v56;
  LOBYTE(v92) = v76;
  *(&v92 + 1) = *v80;
  DWORD1(v92) = *&v80[3];
  *(&v92 + 1) = v25;
  *v93 = v27;
  *&v93[8] = v29;
  *&v93[16] = v31;
  v93[24] = 0;
  return sub_1001AC99C(&v90, &qword_1003755C0, &qword_1002F1E70);
}

void *sub_10027673C()
{
  v1 = type metadata accessor for FTMCellMonitorHardwareDetailModel(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v134 - v6;
  __chkstk_darwin(v8);
  v144 = &v134 - v9;
  __chkstk_darwin(v10);
  v12 = (&v134 - v11);
  __chkstk_darwin(v13);
  v15 = &v134 - v14;
  __chkstk_darwin(v16);
  v145 = &v134 - v17;
  __chkstk_darwin(v18);
  v146 = &v134 - v19;
  __chkstk_darwin(v20);
  v147 = &v134 - v21;
  __chkstk_darwin(v22);
  v24 = &v134 - v23;
  __chkstk_darwin(v25);
  v148 = &v134 - v26;
  __chkstk_darwin(v27);
  v29 = &v134 - v28;
  __chkstk_darwin(v30);
  v139 = &v134 - v31;
  if (qword_100375018 != -1)
  {
LABEL_95:
    swift_once();
  }

  v32 = qword_100382500;
  swift_beginAccess();
  v33 = *(v32 + 88);
  v34 = *(v33 + 16);
  if (!v34)
  {
    return _swiftEmptyArrayStorage;
  }

  v136 = v29;
  v142 = v24;
  v143 = v2;
  v141 = v15;
  v138 = v12;
  v140 = v7;
  v35 = *(v32 + 160);
  v36 = _swiftEmptyArrayStorage;
  v137 = v4;
  if (v35)
  {
    v37 = 0;
    goto LABEL_32;
  }

  v24 = *(v32 + 156);
  v38 = v34 - 1;
  if (v34 > v24)
  {
    v38 = *(v32 + 156);
  }

  v150 = v38;
  if (qword_100375020 != -1)
  {
    swift_once();
  }

  v39 = qword_100382508;
  v40 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  v7 = *(v39 + v40);
  v155 = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v134 = v32;
    v135 = v1;
    v1 = 0;
    v4 = (v7 & 0xC000000000000001);
    v29 = (v7 & 0xFFFFFFFFFFFFFF8);
    v12 = &OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId;
    v149 = v7 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v4)
      {
        v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v41 = v155;
          v1 = v135;
          v32 = v134;
          goto LABEL_26;
        }
      }

      else
      {
        if (v1 >= *(v29 + 2))
        {
          __break(1u);
          goto LABEL_95;
        }

        v0 = *(v7 + 8 * v1 + 32);

        v15 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_23;
        }
      }

      if (*(v0 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_subsId) == v24)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v29 = v149;
      }

      else
      {
      }

      ++v1;
      if (v15 == v2)
      {
        goto LABEL_24;
      }
    }
  }

  v41 = _swiftEmptyArrayStorage;
LABEL_26:

  if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *(v41 + 16);
  }

  if (!v42)
  {
    v56 = v139;
    UUID.init()();
    v57 = (v56 + *(v1 + 28));
    v58 = (v56 + *(v1 + 20));
    v15 = 0x2020202020202020;
    *v58 = 0x2020202020202020;
    v58[1] = 0xEA00000000002020;
    v59 = (v56 + *(v1 + 24));
    *v59 = 0x2020202020202020;
    v59[1] = 0xEA00000000002020;
    *v57 = 0;
    v57[1] = 0;
    v36 = sub_10022573C(0, 1, 1, _swiftEmptyArrayStorage);
    v2 = v36[2];
    v60 = v36[3];
    v0 = v32;
    if (v2 >= v60 >> 1)
    {
      v36 = sub_10022573C((v60 > 1), v2 + 1, 1, v36);
    }

    v36[2] = v2 + 1;
    v24 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v61 = *(v143 + 72);
    sub_1002777D0(v139, v36 + v24 + v61 * v2);
    v62 = v136;
    UUID.init()();
    v63 = (v62 + *(v1 + 28));
    v64 = (v62 + *(v1 + 20));
    *v64 = 0x2020202020202020;
    v64[1] = 0xEA00000000002020;
    v65 = (v62 + *(v1 + 24));
    *v65 = 0x2020202020202020;
    v65[1] = 0xEA00000000002020;
    *v63 = 0;
    v63[1] = 0;
    v67 = v36[2];
    v66 = v36[3];
    if (v67 >= v66 >> 1)
    {
      v36 = sub_10022573C((v66 > 1), v67 + 1, 1, v36);
    }

    v36[2] = v67 + 1;
    sub_1002777D0(v136, v36 + v24 + v67 * v61);
    v32 = v0;
    v37 = v150;
    if ((v150 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v36 = _swiftEmptyArrayStorage;
  v37 = v150;
  if ((v150 & 0x8000000000000000) != 0)
  {
    goto LABEL_50;
  }

LABEL_31:
  v33 = *(v32 + 88);
  v34 = *(v33 + 16);
LABEL_32:
  if (v37 >= v34)
  {
    __break(1u);
  }

  else
  {
    v150 = v37;
    v44 = v33 + 224 * v37;
    v46 = *(v44 + 32);
    v45 = *(v44 + 40);

    v15 = v148;
    UUID.init()();
    v47 = (v15 + *(v1 + 28));
    v48 = (v15 + *(v1 + 20));
    *v48 = 0x3A72656972726143;
    v48[1] = 0xE800000000000000;
    v49 = (v15 + *(v1 + 24));
    *v49 = v46;
    v49[1] = v45;
    *v47 = 0;
    v47[1] = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_34;
    }
  }

  v36 = sub_10022573C(0, v36[2] + 1, 1, v36);
LABEL_34:
  v51 = v36[2];
  v50 = v36[3];
  v52 = v51 + 1;
  if (v51 >= v50 >> 1)
  {
    v36 = sub_10022573C((v50 > 1), v51 + 1, 1, v36);
  }

  v36[2] = v52;
  v24 = (*(v143 + 80) + 32) & ~*(v143 + 80);
  v2 = *(v143 + 72);
  sub_1002777D0(v148, v36 + v24 + v2 * v51);
  if (*(v32 + 26) == 1)
  {
    v53 = *(v32 + 88);
    if (v150 >= *(v53 + 16))
    {
      __break(1u);
      goto LABEL_108;
    }

    v43 = *(v53 + 224 * v150 + 97);
    if (v43 <= 2)
    {
      if (v43)
      {
        if (v43 == 1)
        {
          v54 = 0xE200000000000000;
          v55 = 21070;
        }

        else
        {
          v54 = 0xE300000000000000;
          v55 = 4543564;
        }
      }

      else
      {
        v54 = 0xE600000000000000;
        v55 = 0x41534E20524ELL;
      }

LABEL_57:
      v15 = v142;
      UUID.init()();
      v68 = (v15 + *(v1 + 28));
      v69 = (v15 + *(v1 + 20));
      *v69 = 978600274;
      v69[1] = 0xE400000000000000;
      v70 = (v15 + *(v1 + 24));
      *v70 = v55;
      v70[1] = v54;
      *v68 = 0;
      v68[1] = 0;
      v51 = v36[2];
      v53 = v36[3];
      v52 = v51 + 1;
      if (v51 < v53 >> 1)
      {
LABEL_58:
        v36[2] = v52;
        sub_1002777D0(v142, v36 + v24 + v51 * v2);
        goto LABEL_59;
      }

LABEL_108:
      v36 = sub_10022573C((v53 > 1), v52, 1, v36);
      goto LABEL_58;
    }

    if (v43 <= 4)
    {
      if (v43 == 3)
      {
        v54 = 0xE400000000000000;
        v55 = 1398033749;
      }

      else
      {
        v54 = 0xE500000000000000;
        v55 = 0x4E41525455;
      }

      goto LABEL_57;
    }

LABEL_51:
    if (v43 == 5)
    {
      v54 = 0xE300000000000000;
      v55 = 5067591;
    }

    else
    {
      v54 = 0xE700000000000000;
      v55 = 0x6E776F6E6B6E55;
    }

    goto LABEL_57;
  }

LABEL_59:
  v71 = *(v32 + 88);
  if (v150 >= *(v71 + 16))
  {
    __break(1u);
  }

  else
  {
    v0 = v32;
    v72 = v71 + 224 * v150;
    v74 = *(v72 + 152);
    v73 = *(v72 + 160);

    v51 = v147;
    UUID.init()();
    v75 = (v51 + *(v1 + 28));
    v76 = (v51 + *(v1 + 20));
    *v76 = 0xD000000000000015;
    v76[1] = 0x80000001002BFD90;
    v77 = (v51 + *(v1 + 24));
    *v77 = v74;
    v77[1] = v73;
    *v75 = 0;
    v75[1] = 0;
    v15 = v36[2];
    v71 = v36[3];
    v52 = v15 + 1;
    if (v15 < v71 >> 1)
    {
      goto LABEL_61;
    }
  }

  v36 = sub_10022573C((v71 > 1), v52, 1, v36);
LABEL_61:
  v78 = v0;
  v36[2] = v52;
  sub_1002777D0(v147, v36 + v24 + v15 * v2);
  v79 = *(v0 + 88);
  if (v150 >= *(v79 + 16))
  {
    __break(1u);
  }

  else
  {
    v80 = v79 + 224 * v150;
    v82 = *(v80 + 168);
    v81 = *(v80 + 176);

    v83 = v146;
    UUID.init()();
    v84 = (v83 + *(v1 + 28));
    v85 = (v83 + *(v1 + 20));
    *v85 = 977486164;
    v85[1] = 0xE400000000000000;
    v86 = (v83 + *(v1 + 24));
    *v86 = v82;
    v86[1] = v81;
    *v84 = 0;
    v84[1] = 0;
    v15 = v36[2];
    v79 = v36[3];
    v52 = v15 + 1;
    if (v15 < v79 >> 1)
    {
      goto LABEL_63;
    }
  }

  v36 = sub_10022573C((v79 > 1), v52, 1, v36);
LABEL_63:
  v36[2] = v52;
  sub_1002777D0(v146, v36 + v24 + v15 * v2);
  v87 = *(v78 + 88);
  if (v150 >= *(v87 + 16))
  {
    __break(1u);
  }

  else
  {
    v88 = v87 + 224 * v150;
    v90 = *(v88 + 184);
    v89 = *(v88 + 192);

    v91 = v145;
    UUID.init()();
    v92 = (v91 + *(v1 + 28));
    v93 = (v91 + *(v1 + 20));
    *v93 = 0x3A4E4D4C50;
    v93[1] = 0xE500000000000000;
    v94 = (v91 + *(v1 + 24));
    *v94 = v90;
    v94[1] = v89;
    *v92 = 0;
    v92[1] = 0;
    v15 = v36[2];
    v87 = v36[3];
    v52 = v15 + 1;
    if (v15 < v87 >> 1)
    {
      goto LABEL_65;
    }
  }

  v36 = sub_10022573C((v87 > 1), v52, 1, v36);
LABEL_65:
  v36[2] = v52;
  sub_1002777D0(v145, v36 + v24 + v15 * v2);
  if (*(v78 + 26) != 1)
  {
    goto LABEL_85;
  }

  v95 = *(v78 + 88);
  if (v150 >= *(v95 + 16))
  {
    __break(1u);
  }

  else
  {
    v96 = v95 + 224 * v150;
    v98 = *(v96 + 104);
    v97 = *(v96 + 112);

    v99 = v141;
    UUID.init()();
    v100 = (v99 + *(v1 + 28));
    v101 = (v99 + *(v1 + 20));
    *v101 = 0x3A6449206C6C6543;
    v101[1] = 0xE800000000000000;
    v102 = (v99 + *(v1 + 24));
    *v102 = v98;
    v102[1] = v97;
    *v100 = 0;
    v100[1] = 0;
    v15 = v36[2];
    v95 = v36[3];
    v52 = v15 + 1;
    if (v15 < v95 >> 1)
    {
      goto LABEL_68;
    }
  }

  v36 = sub_10022573C((v95 > 1), v52, 1, v36);
LABEL_68:
  v51 = 0xD000000000000010;
  v36[2] = v52;
  sub_1002777D0(v141, v36 + v24 + v15 * v2);
  if (*(v78 + 26) != 1)
  {
    goto LABEL_85;
  }

  v103 = *(v78 + 88);
  if (v150 >= *(v103 + 16))
  {
    __break(1u);
  }

  else
  {
    v104 = *(v103 + 224 * v150 + 96);
    if (v104 <= 2)
    {
      if (v104)
      {
        if (v104 == 1)
        {
          v105 = 0xEB00000000534D53;
          v51 = 0x2026206563696F56;
        }

        else
        {
          v105 = 0xE500000000000000;
          v51 = 0x6563696F56;
        }
      }

      else
      {
        v105 = 0x80000001002B92A0;
      }
    }

    else if (v104 > 4)
    {
      if (v104 == 5)
      {
        v105 = 0xE700000000000000;
        v51 = 0x6E776F6E6B6E55;
      }

      else
      {
        v51 = 0;
        v105 = 0xE000000000000000;
      }
    }

    else if (v104 == 3)
    {
      v51 = 5459283;
      v105 = 0xE300000000000000;
    }

    else
    {
      v105 = 0xE300000000000000;
      v51 = 5456722;
    }

    v15 = v138;
    UUID.init()();
    v106 = (v15 + *(v1 + 28));
    v107 = (v15 + *(v1 + 20));
    *v107 = 0x7461745320534D49;
    v107[1] = 0xEB000000003A7375;
    v108 = (v15 + *(v1 + 24));
    *v108 = v51;
    v108[1] = v105;
    *v106 = 0;
    v106[1] = 0;
    v51 = v36[2];
    v103 = v36[3];
    v52 = v51 + 1;
    if (v51 < v103 >> 1)
    {
      goto LABEL_84;
    }
  }

  v36 = sub_10022573C((v103 > 1), v52, 1, v36);
LABEL_84:
  v36[2] = v52;
  sub_1002777D0(v138, v36 + v24 + v51 * v2);
LABEL_85:
  v109 = *(v78 + 88);
  if (v150 >= *(v109 + 16))
  {
    __break(1u);
  }

  else
  {
    v110 = v109 + 224 * v150;
    v112 = *(v110 + 80);
    v111 = *(v110 + 88);

    v15 = v144;
    UUID.init()();
    v113 = (v15 + *(v1 + 28));
    v114 = v15 + *(v1 + 20);
    strcpy(v114, "Phone Number:");
    *(v114 + 14) = -4864;
    v115 = (v15 + *(v1 + 24));
    *v115 = v112;
    v115[1] = v111;
    *v113 = 0;
    v113[1] = 0;
    v51 = v36[2];
    v109 = v36[3];
    v52 = v51 + 1;
    if (v51 < v109 >> 1)
    {
      goto LABEL_87;
    }
  }

  v36 = sub_10022573C((v109 > 1), v52, 1, v36);
LABEL_87:
  v36[2] = v52;
  sub_1002777D0(v144, v36 + v24 + v51 * v2);
  if (*(v78 + 24) == 1)
  {
    v116 = *(v78 + 88);
    if (v150 >= *(v116 + 16))
    {
      __break(1u);
    }

    else
    {
      v117 = v116 + 224 * v150;
      v119 = *(v117 + 200);
      v118 = *(v117 + 208);
      v155 = v119;
      v156 = v118;
      v153 = 0x6C7070612E6D6F63;
      v154 = 0xEA00000000002E65;
      v151 = 0;
      v152 = 0xE000000000000000;
      sub_1001A56A0();
      v120 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v122 = v121;
      v15 = v140;
      UUID.init()();
      v123 = (v15 + *(v1 + 28));
      v124 = (v15 + *(v1 + 20));
      *v124 = 0x3A656C646E7542;
      v124[1] = 0xE700000000000000;
      v125 = (v15 + *(v1 + 24));
      *v125 = v120;
      v125[1] = v122;
      *v123 = 0;
      v123[1] = 0;
      v51 = v36[2];
      v116 = v36[3];
      v52 = v51 + 1;
      if (v51 < v116 >> 1)
      {
        goto LABEL_90;
      }
    }

    v36 = sub_10022573C((v116 > 1), v52, 1, v36);
LABEL_90:
    v36[2] = v52;
    sub_1002777D0(v140, v36 + v24 + v51 * v2);
    v126 = *(v78 + 88);
    if (v150 >= *(v126 + 16))
    {
      __break(1u);
    }

    else
    {
      v127 = v126 + 224 * v150;
      v129 = *(v127 + 216);
      v128 = *(v127 + 224);

      v15 = v137;
      UUID.init()();
      v130 = (v15 + *(v1 + 28));
      v131 = (v15 + *(v1 + 20));
      *v131 = 0x5620656C646E7542;
      v131[1] = 0xEF3A6E6F69737265;
      v132 = (v15 + *(v1 + 24));
      *v132 = v129;
      v132[1] = v128;
      *v130 = 0;
      v130[1] = 0;
      v51 = v36[2];
      v126 = v36[3];
      v52 = v51 + 1;
      if (v51 < v126 >> 1)
      {
LABEL_92:
        v36[2] = v52;
        sub_1002777D0(v15, v36 + v24 + v51 * v2);
        return v36;
      }
    }

    v36 = sub_10022573C((v126 > 1), v52, 1, v36);
    goto LABEL_92;
  }

  return v36;
}

unint64_t sub_1002776D0()
{
  result = qword_10037A038;
  if (!qword_10037A038)
  {
    type metadata accessor for FTMCellMonitorHardwareDetailModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A038);
  }

  return result;
}

uint64_t sub_100277728(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001A551C(&qword_10037A008, &qword_1002F5D60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100277798()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002777D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FTMCellMonitorHardwareDetailModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100277838()
{
  result = qword_10037A058;
  if (!qword_10037A058)
  {
    sub_1001A55C8(&qword_10037A060, &unk_1002F5DB0);
    sub_1001B4FD4();
    sub_1001AD0C8(&qword_10037A000, &qword_100379FE8, &qword_1002F5D38, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A058);
  }

  return result;
}

uint64_t sub_10027791C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001FC82C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1002785CC(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100277998(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001FC82C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v5 = v2 + 32;
  v21[0] = v2 + 32;
  v21[1] = v4;
  v6 = _minimumMergeRunLength(_:)(v4);
  if (v6 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = v5;
      do
      {
        v13 = *(v5 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          if (*(v13 + 48) == *(*v15 + 48) && *(v13 + 56) == *(*v15 + 56))
          {
            break;
          }

          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }

          v17 = *v15;
          v13 = v15[1];
          *v15 = v13;
          v15[1] = v17;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v7 = v6;
    v8 = v4 >> 1;
    if (v4 >= 2)
    {
      type metadata accessor for FTMAllMetricsModel(0);
      v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v20[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
    v20[1] = v8;
    sub_100278A90(v20, v22, v21, v7);
    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return specialized ContiguousArray._endMutation()();
}

void sub_100277B0C(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a9@<X8>)
{
  v11 = *a1;
  *a9 = static VerticalAlignment.center.getter();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v12 = sub_1001A551C(&qword_10037A078, &qword_1002F5E90);
  sub_100277BA4(a2, v11, a9 + *(v12 + 44));
}

void sub_100277BA4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1001A551C(&qword_100376D30, &qword_1002F1E68);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v8 = a1 + 8 * a2;
  v72 = v10;
  v73 = v9;
  v70 = a3;
  v71 = v11;
  v69 = &v68 - v12;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v13 = *(v8 + 32);

LABEL_5:
  v14 = *(v13 + 48);
  v15 = *(v13 + 56);

  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v16 = *(v8 + 32);
  }

  v17 = *(v16 + 104);
  v74 = *(v16 + 96);

  *&v93 = v14;
  *(&v93 + 1) = v15;
  sub_1001A56A0();
  v18 = Text.init<A>(_:)();
  v20 = v19;
  v22 = v21;
  static Color.blue.getter();
  v23 = Text.foregroundColor(_:)();
  v77 = v24;
  v78 = v23;
  v26 = v25;
  v79 = v27;

  sub_1001ACFEC(v18, v20, v22 & 1);

  v76 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v75 = v26 & 1;
  LOBYTE(v89) = 0;
  *&v93 = v74;
  *(&v93 + 1) = v17;
  v68 = v17;

  v36 = Text.init<A>(_:)();
  v38 = v37;
  v40 = v39;
  static Color.gray.getter();
  v41 = Text.foregroundColor(_:)();
  v43 = v42;
  v45 = v44;
  v47 = v46;

  sub_1001ACFEC(v36, v38, v40 & 1);

  LOBYTE(v36) = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v82 = v45 & 1;
  v80 = 0;
  *&v85 = v41;
  *(&v85 + 1) = v43;
  LOBYTE(v86) = v45 & 1;
  *(&v86 + 1) = v89;
  DWORD1(v86) = *(&v89 + 3);
  *(&v86 + 1) = v47;
  LOBYTE(v87) = v36;
  *(&v87 + 1) = *v81;
  DWORD1(v87) = *&v81[3];
  *(&v87 + 1) = v48;
  *&v88[0] = v49;
  *(&v88[0] + 1) = v50;
  *&v88[1] = v51;
  BYTE8(v88[1]) = 0;
  v52 = swift_allocObject();
  v53 = v68;
  *(v52 + 16) = v74;
  *(v52 + 24) = v53;
  v95 = v87;
  *v96 = v88[0];
  *&v96[9] = *(v88 + 9);
  v93 = v85;
  v94 = v86;
  sub_1001A551C(&qword_1003755C0, &qword_1002F1E70);
  sub_1001DF954();
  v54 = v69;
  View.onLongPressGesture(minimumDuration:maximumDistance:pressing:perform:)();

  sub_1001AC99C(&v85, &qword_1003755C0, &qword_1002F1E70);
  v56 = v71;
  v55 = v72;
  v57 = *(v72 + 16);
  v58 = v73;
  v57(v71, v54, v73);
  *&v89 = v78;
  *(&v89 + 1) = v77;
  LOBYTE(v90) = v75;
  *(&v90 + 1) = *v84;
  DWORD1(v90) = *&v84[3];
  *(&v90 + 1) = v79;
  LOBYTE(v91) = v76;
  *(&v91 + 1) = *v83;
  DWORD1(v91) = *&v83[3];
  *(&v91 + 1) = v29;
  *&v92[0] = v31;
  *(&v92[0] + 1) = v33;
  *&v92[1] = v35;
  BYTE8(v92[1]) = 0;
  v59 = v89;
  v60 = v90;
  v61 = v91;
  v62 = v70;
  *(v70 + 57) = *(v92 + 9);
  v63 = v92[0];
  *(v62 + 32) = v61;
  *(v62 + 48) = v63;
  *v62 = v59;
  *(v62 + 16) = v60;
  *(v62 + 80) = 0;
  *(v62 + 88) = 1;
  v64 = sub_1001A551C(&qword_10037A080, &unk_1002F5E98);
  v57((v62 + *(v64 + 64)), v56, v58);
  v65 = (v62 + *(v64 + 80));
  v65[1] = 0u;
  v65[2] = 0u;
  *v65 = 0u;
  sub_1001AC934(&v89, &v93, &qword_1003755C0, &qword_1002F1E70);
  sub_10027B718(0, 0, 0, 0, 0, 0);
  v66 = *(v55 + 8);
  v66(v54, v58);
  v67 = sub_10027B77C(0, 0, 0, 0, 0, 0);
  (v66)(v56, v58, v67);
  *&v93 = v78;
  *(&v93 + 1) = v77;
  LOBYTE(v94) = v75;
  *(&v94 + 1) = *v84;
  DWORD1(v94) = *&v84[3];
  *(&v94 + 1) = v79;
  LOBYTE(v95) = v76;
  *(&v95 + 1) = *v83;
  DWORD1(v95) = *&v83[3];
  *(&v95 + 1) = v29;
  *v96 = v31;
  *&v96[8] = v33;
  *&v96[16] = v35;
  v96[24] = 0;
  sub_1001AC99C(&v93, &qword_1003755C0, &qword_1002F1E70);
}

uint64_t sub_10027815C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v25[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v25[-v15];
  v17 = *a1;
  v18 = *a2;
  v19 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
  swift_beginAccess();
  sub_1001AC934(v17 + v19, v9, &qword_100375738, &qword_1002EF900);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    Date.init()();
    if (v20(v9, 1, v10) != 1)
    {
      sub_1001AC99C(v9, &qword_100375738, &qword_1002EF900);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  v21 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
  swift_beginAccess();
  sub_1001AC934(v18 + v21, v6, &qword_100375738, &qword_1002EF900);
  if (v20(v6, 1, v10) == 1)
  {
    Date.init()();
    if (v20(v6, 1, v10) != 1)
    {
      sub_1001AC99C(v6, &qword_100375738, &qword_1002EF900);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v6, v10);
  }

  v22 = static Date.> infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v23(v16, v10);
  return v22 & 1;
}

uint64_t sub_100278488()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_10027AA90(v4, v3);
  v6 = v5;
  if (v5 >> 62 && (result = _CocoaArrayWrapper.endIndex.getter(), result < 0))
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = v1;
    v7[4] = v2;
    v7[5] = v4;
    v7[6] = v3;

    sub_1001A551C(&qword_100376B30, &qword_1002F1E50);
    sub_1001A551C(&qword_10037A068, &qword_1002F5E88);
    sub_1001DBBC0();
    sub_10027B67C();
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

void sub_1002785CC(void *a1)
{
  v3 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v3 - 8);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v42 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = v42 - v14;
  v15 = a1[1];
  v16 = _minimumMergeRunLength(_:)(v15);
  v17 = v15;
  if (v16 < v15)
  {
    if (v15 >= -1)
    {
      v18 = v16;
      v19 = v17 / 2;
      if (v17 <= 1)
      {
        v20 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FTMAllMetricsModel(0);
        v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) = v19;
      }

      v41 = v20 & 0xFFFFFFFFFFFFFF8;
      v57[0] = (v20 & 0xFFFFFFFFFFFFFF8) + 32;
      v57[1] = v19;
      sub_100279270(v57, v56, a1, v18);
      *(v41 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v15 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v15 >= 2)
  {
    v51 = v12;
    v52 = v5;
    v42[1] = v1;
    v21 = *a1;
    v22 = (v10 + 48);
    v47 = (v10 + 8);
    v48 = (v10 + 32);
    v23 = -1;
    v24 = 1;
    v53 = v21;
    v49 = (v10 + 48);
    v50 = v8;
    v43 = v15;
    do
    {
      v45 = v24;
      v46 = v23;
      v25 = v53[v24];
      v44 = v21;
      do
      {
        v54 = v23;
        v26 = *v21;
        v27 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        sub_1001AC934(v25 + v27, v8, &qword_100375738, &qword_1002EF900);
        v28 = *v22;
        if ((*v22)(v8, 1, v9) == 1)
        {

          Date.init()();
          if (v28(v8, 1, v9) != 1)
          {
            sub_1001AC99C(v8, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          (*v48)(v58, v8, v9);
        }

        v29 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v55 = v26;
        v30 = v26 + v29;
        v31 = v52;
        sub_1001AC934(v30, v52, &qword_100375738, &qword_1002EF900);
        if (v28(v31, 1, v9) == 1)
        {
          v32 = v51;
          Date.init()();
          v33 = v28(v31, 1, v9);
          v34 = v9;
          v35 = v54;
          if (v33 != 1)
          {
            sub_1001AC99C(v31, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          v32 = v51;
          (*v48)(v51, v31, v9);
          v34 = v9;
          v35 = v54;
        }

        v36 = v58;
        v37 = static Date.> infix(_:_:)();
        v38 = *v47;
        (*v47)(v32, v34);
        v38(v36, v34);

        v22 = v49;
        v8 = v50;
        v9 = v34;
        if ((v37 & 1) == 0)
        {
          break;
        }

        if (!v53)
        {
          goto LABEL_28;
        }

        v39 = *v21;
        v25 = v21[1];
        *v21 = v25;
        v21[1] = v39;
        --v21;
        v40 = __CFADD__(v35, 1);
        v23 = v35 + 1;
      }

      while (!v40);
      v24 = v45 + 1;
      v21 = v44 + 1;
      v23 = v46 - 1;
    }

    while (v45 + 1 != v43);
  }
}

uint64_t sub_100278A90(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
    goto LABEL_153;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v9 = *a3;
      v10 = *(*a3 + 8 * v8);
      v11 = *(*a3 + 8 * v6);
      result = *(v10 + 48);
      v12 = result == *(v11 + 48) && *(v10 + 56) == *(v11 + 56);
      if (v12)
      {
        v4 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v4 = result;
      }

      v8 = v6 + 2;
      if (v6 + 2 < v5)
      {
        v13 = v9 + 8 * v6 + 16;
        do
        {
          v14 = *(v13 - 8);
          result = *(*v13 + 48);
          if (result == *(v14 + 48) && *(*v13 + 56) == *(v14 + 56))
          {
            if (v4)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v4 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v13 += 8;
        }

        while (v5 != v8);
        v8 = v5;
      }

LABEL_23:
      if (v4)
      {
LABEL_24:
        if (v8 < v6)
        {
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        if (v6 < v8)
        {
          v16 = 8 * v8 - 8;
          v17 = 8 * v6;
          v18 = v8;
          v19 = v6;
          do
          {
            if (v19 != --v18)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_188;
              }

              v20 = *(v21 + v17);
              *(v21 + v17) = *(v21 + v16);
              *(v21 + v16) = v20;
            }

            ++v19;
            v16 -= 8;
            v17 += 8;
          }

          while (v19 < v18);
        }
      }
    }

    v22 = a3[1];
    if (v8 < v22)
    {
      if (__OFSUB__(v8, v6))
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          result = sub_1001FA564(v7);
          v7 = result;
LABEL_155:
          v95 = *(v7 + 2);
          if (v95 < 2)
          {
          }

          while (*a3)
          {
            v96 = *&v7[16 * v95];
            v97 = *&v7[16 * v95 + 24];
            sub_100279FE0((*a3 + 8 * v96), (*a3 + 8 * *&v7[16 * v95 + 16]), (*a3 + 8 * v97), v4);
            if (v101)
            {
            }

            if (v97 < v96)
            {
              goto LABEL_179;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_1001FA564(v7);
            }

            if (v95 - 2 >= *(v7 + 2))
            {
              goto LABEL_180;
            }

            v98 = &v7[16 * v95];
            *v98 = v96;
            *(v98 + 1) = v97;
            result = sub_1001FA4D8(v95 - 1);
            v95 = *(v7 + 2);
            if (v95 <= 1)
            {
            }
          }

LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        if (v6 + a4 >= v22)
        {
          v23 = a3[1];
        }

        else
        {
          v23 = v6 + a4;
        }

        if (v23 < v6)
        {
          goto LABEL_184;
        }

        if (v8 != v23)
        {
          v24 = *a3;
          v25 = *a3 + 8 * v8 - 8;
          v4 = (v6 - v8);
          do
          {
            v26 = *(v24 + 8 * v8);
            v27 = v4;
            v28 = v25;
            do
            {
              v29 = *(v26 + 48) == *(*v28 + 48) && *(v26 + 56) == *(*v28 + 56);
              if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                break;
              }

              if (!v24)
              {
                goto LABEL_185;
              }

              v30 = *v28;
              v26 = v28[1];
              *v28 = v26;
              v28[1] = v30;
              --v28;
            }

            while (!__CFADD__(v27++, 1));
            ++v8;
            v25 += 8;
            --v4;
          }

          while (v8 != v23);
          v8 = v23;
        }
      }
    }

    if (v8 < v6)
    {
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
      goto LABEL_181;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v102 = v8;
    if ((result & 1) == 0)
    {
      result = sub_1001FA578(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 2);
    v32 = *(v7 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_1001FA578((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v34;
    v35 = &v7[16 * v33];
    *(v35 + 4) = v6;
    *(v35 + 5) = v102;
    if (!*v100)
    {
LABEL_189:
      __break(1u);
      goto LABEL_190;
    }

    if (!v33)
    {
      goto LABEL_3;
    }

    __dst = *v100;
    do
    {
      v36 = v34 - 1;
      if (v34 >= 4)
      {
        v41 = &v7[16 * v34 + 32];
        v42 = *(v41 - 64);
        v43 = *(v41 - 56);
        v47 = __OFSUB__(v43, v42);
        v44 = v43 - v42;
        if (v47)
        {
          goto LABEL_167;
        }

        v46 = *(v41 - 48);
        v45 = *(v41 - 40);
        v47 = __OFSUB__(v45, v46);
        v39 = v45 - v46;
        v40 = v47;
        if (v47)
        {
          goto LABEL_168;
        }

        v48 = &v7[16 * v34];
        v50 = *v48;
        v49 = *(v48 + 1);
        v47 = __OFSUB__(v49, v50);
        v51 = v49 - v50;
        if (v47)
        {
          goto LABEL_170;
        }

        v47 = __OFADD__(v39, v51);
        v52 = v39 + v51;
        if (v47)
        {
          goto LABEL_173;
        }

        if (v52 >= v44)
        {
          v70 = &v7[16 * v36 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v47 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v47)
          {
            goto LABEL_177;
          }

          if (v39 < v73)
          {
            v36 = v34 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

      if (v34 == 3)
      {
        v37 = *(v7 + 4);
        v38 = *(v7 + 5);
        v47 = __OFSUB__(v38, v37);
        v39 = v38 - v37;
        v40 = v47;
LABEL_75:
        if (v40)
        {
          goto LABEL_169;
        }

        v53 = &v7[16 * v34];
        v55 = *v53;
        v54 = *(v53 + 1);
        v56 = __OFSUB__(v54, v55);
        v57 = v54 - v55;
        v58 = v56;
        if (v56)
        {
          goto LABEL_172;
        }

        v59 = &v7[16 * v36 + 32];
        v61 = *v59;
        v60 = *(v59 + 1);
        v47 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v47)
        {
          goto LABEL_175;
        }

        if (__OFADD__(v57, v62))
        {
          goto LABEL_176;
        }

        if (v57 + v62 >= v39)
        {
          if (v39 < v62)
          {
            v36 = v34 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_89;
      }

      v63 = &v7[16 * v34];
      v65 = *v63;
      v64 = *(v63 + 1);
      v47 = __OFSUB__(v64, v65);
      v57 = v64 - v65;
      v58 = v47;
LABEL_89:
      if (v58)
      {
        goto LABEL_171;
      }

      v66 = &v7[16 * v36];
      v68 = *(v66 + 4);
      v67 = *(v66 + 5);
      v47 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v47)
      {
        goto LABEL_174;
      }

      if (v69 < v57)
      {
        break;
      }

LABEL_96:
      if (v36 - 1 >= v34)
      {
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
        goto LABEL_178;
      }

      v74 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_188:
        __break(1u);
        goto LABEL_189;
      }

      v105 = v36 - 1;
      v106 = v36;
      v75 = *&v7[16 * v36 + 32];
      v76 = *&v7[16 * v36 + 40];
      v108 = *&v7[16 * v36 + 16];
      v109 = v7;
      v77 = (v74 + 8 * v108);
      v78 = 8 * v75;
      v7 = (v74 + 8 * v75);
      v107 = v76;
      v79 = 8 * v76;
      v80 = (v74 + 8 * v76);
      v81 = 8 * v75 - 8 * v108;
      v82 = 8 * v76 - 8 * v75;
      if (v81 >= v82)
      {
        if (v7 != __dst || v80 <= __dst)
        {
          memmove(__dst, (v74 + 8 * v75), 8 * v76 - 8 * v75);
        }

        v83 = &__dst[v82];
        if (v82 >= 1 && v78 > 8 * v108)
        {
          v86 = v107;
          v85 = v108;
          while (1)
          {
            v4 = v7 - 8;
            v80 -= 8;
            v89 = v83;
            while (1)
            {
              v90 = *(v89 - 1);
              v89 -= 8;
              v91 = *(v90 + 56);
              v92 = *(v90 + 48) == *(*v4 + 48) && v91 == *(*v4 + 56);
              if (!v92 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              if (v80 + 8 != v83)
              {
                *v80 = *v89;
              }

              v80 -= 8;
              v83 = v89;
              if (v89 <= __dst)
              {
                v83 = v89;
                v84 = __dst;
                v4 = v7;
                goto LABEL_142;
              }
            }

            if (v80 + 8 != v7)
            {
              *v80 = *v4;
            }

            if (v83 <= __dst)
            {
              v84 = __dst;
              goto LABEL_142;
            }

            v84 = __dst;
            v7 -= 8;
            if (v77 >= v4)
            {
              goto LABEL_142;
            }
          }
        }

        v84 = __dst;
        v4 = v7;
        goto LABEL_140;
      }

      if (v77 != __dst || v7 <= __dst)
      {
        memmove(__dst, (v74 + 8 * v108), 8 * v75 - 8 * v108);
      }

      v83 = &__dst[v81];
      if (v81 < 1 || v79 <= v78)
      {
        v84 = __dst;
        v4 = v77;
LABEL_140:
        v86 = v107;
        v85 = v108;
        goto LABEL_142;
      }

      v84 = __dst;
      v86 = v107;
      v85 = v108;
      do
      {
        v87 = *(*v7 + 48) == *(*v84 + 48) && *(*v7 + 56) == *(*v84 + 56);
        if (!v87 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v88 = v7;
          v12 = v77 == v7;
          v7 += 8;
          if (v12)
          {
            goto LABEL_115;
          }

LABEL_114:
          *v77 = *v88;
          goto LABEL_115;
        }

        v88 = v84;
        v12 = v77 == v84;
        v84 += 8;
        if (!v12)
        {
          goto LABEL_114;
        }

LABEL_115:
        v77 += 8;
      }

      while (v84 < v83 && v7 < v80);
      v4 = v77;
LABEL_142:
      if (v4 != v84 || v4 >= &v84[(v83 - v84 + (v83 - v84 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v4, v84, 8 * ((v83 - v84) / 8));
      }

      v93 = v109;
      if (v86 < v85)
      {
        goto LABEL_165;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_1001FA564(v109);
      }

      if (v106 > *(v93 + 2))
      {
        goto LABEL_166;
      }

      v94 = &v93[16 * v105];
      *(v94 + 4) = v85;
      *(v94 + 5) = v86;
      result = sub_1001FA4D8(v106);
      v7 = v93;
      v34 = *(v93 + 2);
    }

    while (v34 > 1);
LABEL_3:
    v6 = v102;
    v5 = a3[1];
    if (v102 < v5)
    {
      continue;
    }

    break;
  }

LABEL_153:
  v4 = *v100;
  if (*v100)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_155;
    }

    goto LABEL_186;
  }

LABEL_191:
  __break(1u);
  return result;
}

void sub_100279270(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v128 = a1;
  v8 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v8 - 8);
  v10 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v146 = &v126 - v12;
  __chkstk_darwin(v13);
  v135 = &v126 - v14;
  __chkstk_darwin(v15);
  v134 = &v126 - v16;
  v17 = type metadata accessor for Date();
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v148 = &v126 - v19;
  __chkstk_darwin(v20);
  __chkstk_darwin(v21);
  v138 = &v126 - v25;
  v137 = a3;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v29 = _swiftEmptyArrayStorage;
LABEL_112:
    a3 = *v128;
    if (!*v128)
    {
      goto LABEL_153;
    }

    a4 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v121 = a4;
LABEL_115:
      v151 = v121;
      a4 = *(v121 + 2);
      if (a4 >= 2)
      {
        while (*v137)
        {
          v122 = *&v121[16 * a4];
          v123 = v121;
          v124 = *&v121[16 * a4 + 24];
          sub_10027A218((*v137 + 8 * v122), (*v137 + 8 * *&v121[16 * a4 + 16]), (*v137 + 8 * v124), a3);
          if (v5)
          {
            goto LABEL_123;
          }

          if (v124 < v122)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v123 = sub_1001FA564(v123);
          }

          if (a4 - 2 >= *(v123 + 2))
          {
            goto LABEL_141;
          }

          v125 = &v123[16 * a4];
          *v125 = v122;
          *(v125 + 1) = v124;
          v151 = v123;
          sub_1001FA4D8(a4 - 1);
          v121 = v151;
          a4 = *(v151 + 2);
          if (a4 <= 1)
          {
            goto LABEL_123;
          }
        }

        goto LABEL_151;
      }

LABEL_123:

      return;
    }

LABEL_147:
    v121 = sub_1001FA564(a4);
    goto LABEL_115;
  }

  v133 = v24;
  v140 = v23;
  v126 = a4;
  v27 = 0;
  v28 = (v22 + 48);
  v144 = (v22 + 8);
  v145 = (v22 + 32);
  v29 = _swiftEmptyArrayStorage;
  v141 = v10;
  v30 = v146;
  v143 = (v22 + 48);
  while (1)
  {
    v129 = v27;
    if (v27 + 1 >= v26)
    {
      v39 = v27 + 1;
    }

    else
    {
      v139 = v26;
      v127 = v29;
      v31 = *v137;
      v32 = *(*v137 + 8 * (v27 + 1));
      a3 = *(*v137 + 8 * v27);
      v149 = a3;
      v150 = v32;

      LODWORD(v142) = sub_10027815C(&v150, &v149);
      if (v5)
      {

        return;
      }

      a4 = v27 + 2;
      v132 = 8 * v27;
      v33 = (v31 + 8 * v27 + 16);
      v136 = 0;
      while (1)
      {
        v39 = v139;
        if (v139 == a4)
        {
          break;
        }

        v40 = *(v33 - 1);
        a3 = *v33;
        v41 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v42 = v134;
        sub_1001AC934(a3 + v41, v134, &qword_100375738, &qword_1002EF900);
        v43 = *v28;
        if ((*v28)(v42, 1, v17) == 1)
        {

          Date.init()();
          if (v43(v42, 1, v17) != 1)
          {
            sub_1001AC99C(v42, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          (*v145)(v138, v42, v17);
        }

        v44 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
        swift_beginAccess();
        v45 = &v40[v44];
        v46 = v135;
        sub_1001AC934(v45, v135, &qword_100375738, &qword_1002EF900);
        v47 = v43(v46, 1, v17);
        v147 = v40;
        if (v47 == 1)
        {
          v34 = v133;
          Date.init()();
          if (v43(v46, 1, v17) != 1)
          {
            sub_1001AC99C(v46, &qword_100375738, &qword_1002EF900);
          }
        }

        else
        {
          v34 = v133;
          (*v145)(v133, v46, v17);
        }

        v35 = v138;
        v36 = static Date.> infix(_:_:)();
        v37 = *v144;
        (*v144)(v34, v17);
        v37(v35, v17);

        v38 = v142 ^ v36;
        ++a4;
        ++v33;
        v5 = v136;
        v28 = v143;
        if (v38)
        {
          v39 = a4 - 1;
          break;
        }
      }

      v29 = v127;
      v30 = v146;
      v48 = v132;
      if (v142)
      {
        v49 = v129;
        if (v39 < v129)
        {
          goto LABEL_146;
        }

        if (v129 < v39)
        {
          v50 = 8 * v39 - 8;
          v51 = v39;
          do
          {
            if (v49 != --v51)
            {
              v53 = *v137;
              if (!*v137)
              {
                goto LABEL_150;
              }

              v52 = *(v53 + v48);
              *(v53 + v48) = *(v53 + v50);
              *(v53 + v50) = v52;
            }

            ++v49;
            v50 -= 8;
            v48 += 8;
          }

          while (v49 < v51);
        }
      }
    }

    v54 = v137[1];
    if (v39 >= v54)
    {
      goto LABEL_38;
    }

    if (__OFSUB__(v39, v129))
    {
      goto LABEL_143;
    }

    if (v39 - v129 >= v126)
    {
LABEL_38:
      v57 = v39;
      goto LABEL_39;
    }

    if (__OFADD__(v129, v126))
    {
      goto LABEL_144;
    }

    if (v129 + v126 >= v54)
    {
      v55 = v137[1];
    }

    else
    {
      v55 = v129 + v126;
    }

    if (v55 < v129)
    {
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v56 = v129;
    if (v39 == v55)
    {
      v57 = v39;
      goto LABEL_40;
    }

    v127 = v29;
    v136 = v5;
    v142 = *v137;
    v105 = (v142 + 8 * v39 - 8);
    v106 = (v129 - v39);
    v130 = v55;
LABEL_94:
    v139 = v39;
    a3 = *(v142 + 8 * v39);
    v131 = v106;
    v132 = v105;
LABEL_95:
    v147 = v106;
    v107 = *v105;
    v108 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    swift_beginAccess();
    sub_1001AC934(a3 + v108, v30, &qword_100375738, &qword_1002EF900);
    v109 = *v28;
    if ((*v28)(v30, 1, v17) == 1)
    {

      Date.init()();
      if (v109(v30, 1, v17) != 1)
      {
        sub_1001AC99C(v30, &qword_100375738, &qword_1002EF900);
      }
    }

    else
    {
      (*v145)(v148, v30, v17);
    }

    v110 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
    swift_beginAccess();
    v111 = v107 + v110;
    v112 = v141;
    sub_1001AC934(v111, v141, &qword_100375738, &qword_1002EF900);
    if (v109(v112, 1, v17) == 1)
    {
      v113 = v140;
      Date.init()();
      v114 = v17;
      if (v109(v112, 1, v17) != 1)
      {
        sub_1001AC99C(v112, &qword_100375738, &qword_1002EF900);
      }
    }

    else
    {
      v113 = v140;
      (*v145)(v140, v112, v17);
      v114 = v17;
    }

    v115 = v148;
    v116 = static Date.> infix(_:_:)();
    v117 = *v144;
    (*v144)(v113, v114);
    a4 = v114;
    v117(v115, v114);

    if (v116)
    {
      break;
    }

    v30 = v146;
    v28 = v143;
    v17 = v114;
LABEL_93:
    v39 = v139 + 1;
    v105 = (v132 + 8);
    v106 = v131 - 1;
    v57 = v130;
    if (v139 + 1 != v130)
    {
      goto LABEL_94;
    }

    v5 = v136;
    v29 = v127;
LABEL_39:
    v56 = v129;
LABEL_40:
    if (v57 < v56)
    {
      goto LABEL_142;
    }

    v130 = v57;
    v58 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v58;
    }

    else
    {
      v29 = sub_1001FA578(0, *(v58 + 2) + 1, 1, v58);
    }

    a3 = *(v29 + 2);
    v59 = *(v29 + 3);
    v60 = a3 + 1;
    if (a3 >= v59 >> 1)
    {
      v29 = sub_1001FA578((v59 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v60;
    v61 = &v29[16 * a3];
    v62 = v130;
    *(v61 + 4) = v129;
    *(v61 + 5) = v62;
    v147 = *v128;
    if (!v147)
    {
      goto LABEL_152;
    }

    if (a3)
    {
      while (2)
      {
        a3 = v60 - 1;
        if (v60 >= 4)
        {
          v67 = &v29[16 * v60 + 32];
          v68 = *(v67 - 64);
          v69 = *(v67 - 56);
          v73 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          if (v73)
          {
            goto LABEL_129;
          }

          v72 = *(v67 - 48);
          v71 = *(v67 - 40);
          v73 = __OFSUB__(v71, v72);
          v65 = v71 - v72;
          v66 = v73;
          if (v73)
          {
            goto LABEL_130;
          }

          v74 = &v29[16 * v60];
          v76 = *v74;
          v75 = *(v74 + 1);
          v73 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v73)
          {
            goto LABEL_132;
          }

          v73 = __OFADD__(v65, v77);
          v78 = v65 + v77;
          if (v73)
          {
            goto LABEL_135;
          }

          if (v78 >= v70)
          {
            v96 = &v29[16 * a3 + 32];
            v98 = *v96;
            v97 = *(v96 + 1);
            v73 = __OFSUB__(v97, v98);
            v99 = v97 - v98;
            if (v73)
            {
              goto LABEL_139;
            }

            if (v65 < v99)
            {
              a3 = v60 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v66)
            {
              goto LABEL_131;
            }

            v79 = &v29[16 * v60];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_134;
            }

            v85 = &v29[16 * a3 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v73 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v73)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v83, v88))
            {
              goto LABEL_138;
            }

            if (v83 + v88 < v65)
            {
              goto LABEL_74;
            }

            if (v65 < v88)
            {
              a3 = v60 - 2;
            }
          }
        }

        else
        {
          if (v60 == 3)
          {
            v63 = *(v29 + 4);
            v64 = *(v29 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
            goto LABEL_60;
          }

          v89 = &v29[16 * v60];
          v91 = *v89;
          v90 = *(v89 + 1);
          v73 = __OFSUB__(v90, v91);
          v83 = v90 - v91;
          v84 = v73;
LABEL_74:
          if (v84)
          {
            goto LABEL_133;
          }

          v92 = &v29[16 * a3];
          v94 = *(v92 + 4);
          v93 = *(v92 + 5);
          v73 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v73)
          {
            goto LABEL_136;
          }

          if (v95 < v83)
          {
            break;
          }
        }

        a4 = a3 - 1;
        if (a3 - 1 >= v60)
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        if (!*v137)
        {
          goto LABEL_149;
        }

        v100 = v29;
        v101 = *&v29[16 * a4 + 32];
        v102 = *&v29[16 * a3 + 40];
        sub_10027A218((*v137 + 8 * v101), (*v137 + 8 * *&v29[16 * a3 + 32]), (*v137 + 8 * v102), v147);
        if (v5)
        {
          goto LABEL_123;
        }

        if (v102 < v101)
        {
          goto LABEL_127;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v103 = v100;
        }

        else
        {
          v103 = sub_1001FA564(v100);
        }

        v30 = v146;
        if (a4 >= *(v103 + 2))
        {
          goto LABEL_128;
        }

        v104 = &v103[16 * a4];
        *(v104 + 4) = v101;
        *(v104 + 5) = v102;
        v151 = v103;
        a4 = &v151;
        sub_1001FA4D8(a3);
        v29 = v151;
        v60 = *(v151 + 2);
        if (v60 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v26 = v137[1];
    v27 = v130;
    if (v130 >= v26)
    {
      goto LABEL_112;
    }
  }

  v30 = v146;
  v118 = v147;
  if (v142)
  {
    v119 = *v105;
    a3 = v105[1];
    *v105 = a3;
    v105[1] = v119;
    --v105;
    v120 = __CFADD__(v118, 1);
    v106 = v118 + 1;
    v28 = v143;
    v17 = v114;
    if (v120)
    {
      goto LABEL_93;
    }

    goto LABEL_95;
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_100279FE0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *(*v6 + 48) == *(*v4 + 48) && *(*v6 + 56) == *(*v4 + 56);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = *(v18 - 1);
      v18 -= 8;
      v20 = *(v19 + 56);
      v21 = *(v19 + 48) == *(*v17 + 48) && v20 == *(*v17 + 56);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 8 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 8 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_10027A218(char *a1, char *a2, char *a3, char *a4)
{
  v8 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
  __chkstk_darwin(v8 - 8);
  v76 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v77 = (&v70 - v11);
  __chkstk_darwin(v12);
  v75 = &v70 - v13;
  __chkstk_darwin(v14);
  v74 = (&v70 - v15);
  v16 = type metadata accessor for Date();
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v80 = &v70 - v18;
  __chkstk_darwin(v19);
  v73 = (&v70 - v20);
  __chkstk_darwin(v21);
  v79 = &v70 - v24;
  v25 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v25 = a2 - a1;
  }

  v26 = v25 >> 3;
  v27 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v27 = a3 - a2;
  }

  v28 = v27 >> 3;
  if (v26 >= v27 >> 3)
  {
    v79 = v22;
    if (a4 != a2 || &a2[8 * v28] <= a4)
    {
      v48 = v23;
      memmove(a4, a2, 8 * v28);
      v23 = v48;
    }

    v83 = &a4[8 * v28];
    v49 = v77;
    if (a3 - a2 < 8)
    {
      v47 = a2;
    }

    else
    {
      v47 = a2;
      if (a2 > a1)
      {
        v50 = (v23 + 48);
        v72 = (v23 + 8);
        v73 = (v23 + 32);
        v74 = (v23 + 48);
        v82 = a4;
        v71 = a1;
LABEL_34:
        v78 = v47;
        v51 = v47 - 8;
        v52 = a3 - 8;
        v53 = v83;
        v75 = v47 - 8;
        do
        {
          v54 = *(v53 - 1);
          v53 -= 8;
          v55 = *v51;
          v56 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          sub_1001AC934(v54 + v56, v49, &qword_100375738, &qword_1002EF900);
          v57 = *v50;
          v58 = (*v50)(v49, 1, v16);
          v81 = v52;
          if (v58 == 1)
          {

            Date.init()();
            if (v57(v49, 1, v16) != 1)
            {
              sub_1001AC99C(v49, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v73)(v80, v49, v16);
          }

          v59 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v60 = v55 + v59;
          v61 = v76;
          sub_1001AC934(v60, v76, &qword_100375738, &qword_1002EF900);
          if (v57(v61, 1, v16) == 1)
          {
            v62 = v79;
            Date.init()();
            if (v57(v61, 1, v16) != 1)
            {
              sub_1001AC99C(v61, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            v62 = v79;
            (*v73)(v79, v61, v16);
          }

          v63 = v80;
          v64 = static Date.> infix(_:_:)();
          v65 = *v72;
          (*v72)(v62, v16);
          v65(v63, v16);

          if (v64)
          {
            a3 = v81;
            a4 = v82;
            v49 = v77;
            v67 = v71;
            v68 = v75;
            if (v81 + 8 != v78)
            {
              *v81 = *v75;
            }

            v50 = v74;
            if (v83 <= a4 || (v47 = v68, v68 <= v67))
            {
              v47 = v68;
              goto LABEL_54;
            }

            goto LABEL_34;
          }

          v66 = v81;
          a4 = v82;
          v49 = v77;
          if (v81 + 8 != v83)
          {
            *v81 = *v53;
          }

          v52 = v66 - 8;
          v83 = v53;
          v50 = v74;
          v51 = v75;
        }

        while (v53 > a4);
        v83 = v53;
        v47 = v78;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v26] <= a4)
    {
      v29 = v23;
      memmove(a4, a1, 8 * v26);
      v23 = v29;
    }

    v83 = &a4[8 * v26];
    if (a2 - a1 >= 8)
    {
      v30 = a2;
      if (a2 < a3)
      {
        v31 = (v23 + 48);
        v76 = (v23 + 8);
        v77 = (v23 + 32);
        v80 = (v23 + 48);
        v81 = a3;
        while (1)
        {
          v78 = v30;
          v32 = *v30;
          v33 = *a4;
          v34 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v35 = v74;
          sub_1001AC934(v32 + v34, v74, &qword_100375738, &qword_1002EF900);
          v36 = *v31;
          v37 = (*v31)(v35, 1, v16);
          v82 = a4;
          if (v37 == 1)
          {

            Date.init()();
            if (v36(v35, 1, v16) != 1)
            {
              sub_1001AC99C(v35, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v77)(v79, v35, v16);
          }

          v38 = OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_timestamp;
          swift_beginAccess();
          v39 = v33 + v38;
          v40 = v75;
          sub_1001AC934(v39, v75, &qword_100375738, &qword_1002EF900);
          v41 = v36(v40, 1, v16);
          v42 = v73;
          if (v41 == 1)
          {
            Date.init()();
            if (v36(v40, 1, v16) != 1)
            {
              sub_1001AC99C(v40, &qword_100375738, &qword_1002EF900);
            }
          }

          else
          {
            (*v77)(v73, v40, v16);
          }

          v43 = v79;
          v44 = static Date.> infix(_:_:)();
          v45 = *v76;
          (*v76)(v42, v16);
          v45(v43, v16);

          if ((v44 & 1) == 0)
          {
            break;
          }

          v46 = v78;
          v30 = v78 + 8;
          a4 = v82;
          if (a1 != v78)
          {
            goto LABEL_24;
          }

LABEL_25:
          a1 += 8;
          v31 = v80;
          if (a4 >= v83 || v30 >= v81)
          {
            goto LABEL_27;
          }
        }

        v46 = v82;
        a4 = v82 + 8;
        v30 = v78;
        if (a1 == v82)
        {
          goto LABEL_25;
        }

LABEL_24:
        *a1 = *v46;
        goto LABEL_25;
      }
    }

LABEL_27:
    v47 = a1;
  }

LABEL_54:
  if (v47 != a4 || v47 >= &a4[(v83 - a4 + (v83 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v47, a4, 8 * ((v83 - a4) / 8));
  }

  return 1;
}

void sub_10027AA90(unint64_t a1, unint64_t a2)
{
  if (qword_100375020 != -1)
  {
    goto LABEL_120;
  }

LABEL_2:
  [*(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) lock];
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100382500 + 160);
  v5 = _swiftEmptyArrayStorage;
  v67 = a1;
  v68 = a2;
  v66 = qword_100382500;
  if (v4)
  {
    goto LABEL_30;
  }

  v6 = *(qword_100382500 + 156);
  v77 = a1;
  v78 = a2;

  v7._countAndFlagsBits = 126;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  v74[0] = v6;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v10 = v77;
  v9 = v78;
  v11 = qword_100382508;
  v12 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
  swift_beginAccess();
  v13 = *(v11 + v12);
  v77 = _swiftEmptyArrayStorage;
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

  v15 = 0;
  a2 = v13 & 0xC000000000000001;
  v16 = v13 & 0xFFFFFFFFFFFFFF8;
  v72 = v14;
  v73 = v13;
  while (a2)
  {
    a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_23;
    }

LABEL_14:
    v18 = *(a1 + 16) == v10 && *(a1 + 24) == v9;
    if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(a1 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v14 = v72;
      v13 = v73;
    }

    else
    {
    }

    ++v15;
    if (v17 == v14)
    {
      goto LABEL_24;
    }
  }

  if (v15 >= *(v16 + 16))
  {
    goto LABEL_116;
  }

  a1 = *(v13 + 8 * v15 + 32);

  v17 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_14;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  v5 = v77;
LABEL_26:

  if ((v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_29:

      v5 = _swiftEmptyArrayStorage;
    }
  }

  else if (!*(v5 + 16))
  {
    goto LABEL_29;
  }

LABEL_30:
  v79 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19)
  {
    v20 = 0;
    v21 = 0;
    v22 = v5 & 0xC000000000000001;
    v73 = v5 & 0xFFFFFFFFFFFFFF8;
    v69 = v5 + 32;
    a1 = _swiftEmptyArrayStorage;
    v71 = _swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        if (v22)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v24 = v23;
          v25 = __OFADD__(v20++, 1);
          if (v25)
          {
            goto LABEL_115;
          }
        }

        else
        {
          if (v20 >= *(v73 + 16))
          {
            goto LABEL_118;
          }

          v24 = *(v69 + 8 * v20);

          v25 = __OFADD__(v20++, 1);
          if (v25)
          {
            goto LABEL_115;
          }
        }

        v26 = *(v24 + 56);
        v77 = *(v24 + 48);
        v78 = v26;
        __chkstk_darwin(v23);
        v65[2] = &v77;

        a2 = sub_1001E2ED0(sub_1002071E0, v65, a1);

        if ((a2 & 1) == 0)
        {
          break;
        }

LABEL_35:

        if (v20 == v19)
        {
          goto LABEL_78;
        }
      }

      v70 = 0;
      v28 = *(v24 + 48);
      v27 = *(v24 + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_100224D30(0, *(a1 + 16) + 1, 1, a1);
      }

      v30 = *(a1 + 16);
      v29 = *(a1 + 24);
      a2 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        v72 = sub_100224D30((v29 > 1), v30 + 1, 1, a1);
      }

      else
      {
        v72 = a1;
      }

      a1 = 0;
      v31 = v72;
      *(v72 + 2) = a2;
      v32 = &v31[16 * v30];
      *(v32 + 4) = v28;
      *(v32 + 5) = v27;
      v77 = _swiftEmptyArrayStorage;
      do
      {
        if (v22)
        {
          a2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v33 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (a1 >= *(v73 + 16))
          {
            goto LABEL_114;
          }

          a2 = *(v5 + 8 * a1 + 32);

          v33 = a1 + 1;
          if (__OFADD__(a1, 1))
          {
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
            swift_once();
            goto LABEL_2;
          }
        }

        v34 = *(a2 + 48) == *(v24 + 48) && *(a2 + 56) == *(v24 + 56);
        if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++a1;
      }

      while (v33 != v19);

      v77 = sub_10021A608(v35);
      v21 = v70;
      sub_10027791C(&v77);
      if (v21)
      {
        goto LABEL_152;
      }

      v36 = v77;
      a1 = v72;
      if ((v77 & 0x8000000000000000) != 0 || (v77 & 0x4000000000000000) != 0)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_34:

          goto LABEL_35;
        }
      }

      else if (!*(v77 + 16))
      {
        goto LABEL_34;
      }

      if ((v36 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(v36 + 16))
        {
          goto LABEL_119;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = 0;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v71 = v79;
    }

    while (v20 != v19);
  }

  else
  {
    v21 = 0;
    a1 = _swiftEmptyArrayStorage;
    v71 = _swiftEmptyArrayStorage;
  }

LABEL_78:

  if (v67 == 0x544C20726568744FLL && v68 == 0xEF73646E61422045 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v37 = *(v66 + 160);
    v72 = a1;
    if (v37)
    {
      v38 = 0;
      v39 = 0xE000000000000000;
      v40 = v71;
LABEL_128:
      v70 = 0;
      v75 = _swiftEmptyArrayStorage;
      if (v40 >> 62)
      {
        goto LABEL_146;
      }

      v58 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
LABEL_147:

        v21 = v70;
        goto LABEL_148;
      }

LABEL_130:
      v59 = 0;
      v60 = v40 & 0xC000000000000001;
      v61 = v40 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v60)
        {
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v40 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_144;
          }
        }

        else
        {
          if (v59 >= *(v61 + 16))
          {
            goto LABEL_145;
          }

          v62 = *(v40 + 8 * v59 + 32);

          v40 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            v58 = _CocoaArrayWrapper.endIndex.getter();
            if (!v58)
            {
              goto LABEL_147;
            }

            goto LABEL_130;
          }
        }

        v63 = *(v62 + 48) == v38 && *(v62 + 56) == v39;
        if (v63 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v59;
        v18 = v40 == v58;
        v40 = v71;
        if (v18)
        {
          goto LABEL_147;
        }
      }
    }

    v41 = *(v66 + 156);
    v77 = 2118472780;
    v78 = 0xE400000000000000;
    LODWORD(v75) = v41;
    v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v42);

    v43 = v77;
    a2 = v78;
    v44 = qword_100382508;
    v45 = OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_metricModelsArray;
    swift_beginAccess();
    v46 = *(v44 + v45);
    v75 = _swiftEmptyArrayStorage;
    if (v46 >> 62)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47)
    {
      v48 = 0;
      v49 = v46 & 0xFFFFFFFFFFFFFF8;
      v73 = v47;
      v70 = v46 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          a1 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_104;
          }
        }

        else
        {
          if (v48 >= *(v49 + 16))
          {
            goto LABEL_117;
          }

          v50 = *(v46 + 8 * v48 + 32);

          a1 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
LABEL_104:
            __break(1u);
            goto LABEL_148;
          }
        }

        v51 = v50[2] == v43 && v50[3] == a2;
        if (v51 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (*(v50 + OBJC_IVAR____TtC11FTMInternal18FTMAllMetricsModel_isVisible) & 1) != 0 && (v50[6] == 1684955458 && v50[7] == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v49 = v70;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v47 = v73;
        }

        else
        {
        }

        ++v48;
      }

      while (a1 != v47);
    }

    v75 = sub_10021A608(v52);
    sub_10027791C(&v75);
    v40 = v71;

    v53 = v75;
    if ((v75 & 0x8000000000000000) == 0 && (v75 & 0x4000000000000000) == 0)
    {
      if (*(v75 + 16))
      {
        goto LABEL_109;
      }

LABEL_127:

      v38 = 0;
      v39 = 0xE000000000000000;
      goto LABEL_128;
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_127;
    }

LABEL_109:
    if ((v53 & 0xC000000000000001) != 0)
    {
      v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_112;
    }

    if (*(v53 + 16))
    {
      v54 = *(v53 + 32);

LABEL_112:

      v75 = 0x20646E6142;
      v76 = 0xE500000000000000;
      v55 = *(v54 + 128);
      v56 = *(v54 + 136);

      v57._countAndFlagsBits = v55;
      v57._object = v56;
      String.append(_:)(v57);

      v38 = v75;
      v39 = v76;
      goto LABEL_128;
    }

    __break(1u);
LABEL_152:

    __break(1u);
LABEL_153:

    __break(1u);
  }

  else
  {
LABEL_148:
    [*(qword_100382508 + OBJC_IVAR____TtC11FTMInternal25FTMCellMonitorSharedClass_lock) unlock];

    v75 = sub_10021A608(v64);
    sub_100277998(&v75);
    if (v21)
    {
      goto LABEL_153;
    }
  }
}

uint64_t sub_10027B624()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10027B67C()
{
  result = qword_10037A070;
  if (!qword_10037A070)
  {
    sub_1001A55C8(&qword_10037A068, &qword_1002F5E88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A070);
  }

  return result;
}

uint64_t sub_10027B6E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10027B718(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }

  return v6;
}

double sub_10027B77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
  }

  return result;
}

unint64_t sub_10027B7E4()
{
  result = qword_10037A088;
  if (!qword_10037A088)
  {
    sub_1001A55C8(&qword_10037A090, qword_1002F5EA8);
    sub_10027B67C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A088);
  }

  return result;
}

uint64_t sub_10027B868(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = a4;
  v6 = sub_1001A551C(&qword_10037A0B0, &qword_1002F5F70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - v8;
  sub_1001A5610(a1, a1[3]);
  sub_10027BF48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10027BA14()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_10027BA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10027BB1C(uint64_t a1)
{
  v2 = sub_10027BF48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10027BB58(uint64_t a1)
{
  v2 = sub_10027BF48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10027BB94(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1] && a1[2] == a2[2])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_10027BBDC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10027BC40(uint64_t a1)
{
  Hasher._combine(_:)(*v1);

  return String.hash(into:)();
}

Swift::Int sub_10027BC94(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10027BCF4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10027BD9C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_10027BD48()
{
  result = qword_10037A098;
  if (!qword_10037A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A098);
  }

  return result;
}

uint64_t sub_10027BD9C(void *a1)
{
  v3 = sub_1001A551C(&qword_10037A0A0, &qword_1002F5F68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_1001A5610(a1, v7);
  sub_10027BF48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_1001A5654(a1);
  return v7;
}

unint64_t sub_10027BF48()
{
  result = qword_10037A0A8;
  if (!qword_10037A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A0A8);
  }

  return result;
}

uint64_t sub_10027BFAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10027BFF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10027C054()
{
  result = qword_10037A0B8;
  if (!qword_10037A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A0B8);
  }

  return result;
}

unint64_t sub_10027C0AC()
{
  result = qword_10037A0C0;
  if (!qword_10037A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A0C0);
  }

  return result;
}

unint64_t sub_10027C104()
{
  result = qword_10037A0C8;
  if (!qword_10037A0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A0C8);
  }

  return result;
}

id sub_10027C158()
{
  type metadata accessor for CellularLoggingViewController();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v0];

  return v1;
}

uint64_t sub_10027C200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100282DE8();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10027C264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100282DE8();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10027C2C8(uint64_t a1)
{
  sub_100282DE8();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_10027C374(void *a1)
{
  v2 = [objc_allocWithZone(UITableView) initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for FavoritesTableCellV2();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v4 = String._bridgeToObjectiveC()();

  [v2 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  [v2 setSeparatorStyle:0];
  v5 = objc_opt_self();
  v6 = v2;
  v7 = [v5 systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  [v6 setDataSource:a1];
  [v6 setDelegate:a1];
  [v6 setAlwaysBounceVertical:1];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = result;
  [result frame];
  v11 = v10;

  result = [a1 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v12 = result;
  [result frame];
  v14 = v13;

  result = [a1 view];
  if (result)
  {
    v15 = result;
    [result frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v25.origin.x = v17;
    v25.origin.y = v19;
    v25.size.width = v21;
    v25.size.height = v23;
    v24 = [objc_allocWithZone(UIView) initWithFrame:{v11, v14, CGRectGetWidth(v25), 14.0}];
    [v6 setTableHeaderView:v24];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_10027C5FC()
{
  v1 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) init];
    v5 = [objc_opt_self() lightGrayColor];
    [v4 setBackgroundColor:v5];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_10027C6C4()
{
  v1 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView;
  v2 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for LoadingView());
    v6 = sub_100205B14(0xD000000000000020, 0x80000001002C0200, 0.0, 0.0, 0.0, 0.0);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setHidden:0];

    v7 = *(v4 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10027C7B4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10027C818(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIButton) init];
  [v2 setClipsToBounds:1];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 colorNamed:v3];

  [v2 setTitleColor:v5 forState:0];
  v6 = [v4 grayColor];
  v7 = sub_1002827CC(0xD000000000000013, 0x80000001002C0380, 0x746C7561666544, 0xE700000000000000, v6);

  [v2 setAttributedTitle:v7 forState:0];
  v8 = [v2 titleLabel];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_opt_self() systemFontOfSize:18.0];
    [v9 setFont:v10];
  }

  [v2 addTarget:a1 action:"didTapConfig" forControlEvents:1];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v2;
}

id sub_10027CA14(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_10027CA94(v3, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_10027CA94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(UIButton) init];
  v6 = String._bridgeToObjectiveC()();
  [v5 setTitle:v6 forState:0];

  v7 = [v5 titleLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() systemFontOfSize:20.0 weight:UIFontWeightRegular];
    [v8 setFont:v9];
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = objc_opt_self();
  v12 = [v11 colorNamed:v10];

  [v5 setTitleColor:v12 forState:0];
  [v5 addTarget:a1 action:*a3 forControlEvents:1];
  v13 = v5;
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v13 layer];
  [v14 setCornerRadius:12.0];

  v15 = [v13 layer];
  [v15 setBorderWidth:1.0];

  [v13 setClipsToBounds:1];
  v16 = [v13 layer];

  v17 = String._bridgeToObjectiveC()();
  v18 = [v11 colorNamed:v17];

  if (v18)
  {
    v19 = [v18 CGColor];
  }

  else
  {
    v19 = 0;
  }

  [v16 setBorderColor:v19];

  return v13;
}

id sub_10027CD64(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIButton) init];
  v3 = String._bridgeToObjectiveC()();
  [v2 setTitle:v3 forState:0];

  v4 = String._bridgeToObjectiveC()();
  v5 = objc_opt_self();
  v6 = [v5 colorNamed:v4];

  [v2 setTitleColor:v6 forState:0];
  v7 = [v2 titleLabel];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() systemFontOfSize:20.0 weight:UIFontWeightRegular];
    [v8 setFont:v9];
  }

  [v2 addTarget:a1 action:"didTapStop" forControlEvents:1];
  v10 = v2;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v10 layer];
  [v11 setCornerRadius:12.0];

  v12 = [v10 layer];
  [v12 setBorderWidth:1.0];

  [v10 setClipsToBounds:1];
  v13 = [v10 layer];

  v14 = String._bridgeToObjectiveC()();
  v15 = [v5 colorNamed:v14];

  if (v15)
  {
    v16 = [v15 CGColor];
  }

  else
  {
    v16 = 0;
  }

  [v13 setBorderColor:v16];

  return v10;
}

id sub_10027D02C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UISlider) init];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 colorNamed:v3];

  [v2 setMinimumTrackTintColor:v5];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 colorNamed:v6];

  [v2 setMaximumTrackTintColor:v7];
  v8 = [v4 whiteColor];
  [v2 setThumbTintColor:v8];

  LODWORD(v9) = 1149239296;
  [v2 setMaximumValue:v9];
  [v2 setMinimumValue:8589936700.0];
  [v2 setValue:1 animated:8589936700.0];
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 153) == 1)
  {
    [v2 setMinimumValue:3.68934975e19];
    LODWORD(v10) = 1166016512;
    [v2 setMaximumValue:v10];
    [v2 setValue:1 animated:3.68934975e19];
    v11 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues;
    *(a1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues) = _swiftEmptyArrayStorage;

    [v2 minimumValue];
    for (i = v12; ; i = i + i)
    {
      [v2 maximumValue];
      if (i > v14)
      {
        break;
      }

      v15 = *(a1 + v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + v11) = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_100225940(0, *(v15 + 2) + 1, 1, v15);
        *(a1 + v11) = v15;
      }

      v18 = *(v15 + 2);
      v17 = *(v15 + 3);
      if (v18 >= v17 >> 1)
      {
        v15 = sub_100225940((v17 > 1), v18 + 1, 1, v15);
      }

      *(v15 + 2) = v18 + 1;
      *&v15[4 * v18 + 32] = i;
      *(a1 + v11) = v15;
    }

    v19 = "sliderValueChangedSinope:";
  }

  else
  {
    v19 = "didChangedChunkFileSliderValue:";
  }

  [v2 addTarget:a1 action:v19 forControlEvents:4096];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

id sub_10027D374(uint64_t a1)
{
  v2 = [objc_allocWithZone(UISlider) init];
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 colorNamed:v3];

  [v2 setMinimumTrackTintColor:v5];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 colorNamed:v6];

  [v2 setMaximumTrackTintColor:v7];
  v8 = [v4 whiteColor];
  [v2 setThumbTintColor:v8];

  [v2 setMaximumValue:1.58456366e29];
  LODWORD(v9) = 1132462080;
  [v2 setMinimumValue:v9];
  LODWORD(v10) = 1132462080;
  [v2 setValue:1 animated:v10];
  [v2 addTarget:a1 action:"didChangedMaxLogsSlider:" forControlEvents:4096];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

id sub_10027D550(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_10027D5B0()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CellularLoggingViewController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  v1 = qword_100382478;
  v2 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CellularLoggingViewController - viewDidLoad", 43, 2, &_mh_execute_header, v1, v2, _swiftEmptyArrayStorage);
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  v3 = *(qword_100382500 + 32) == 1684099177 && *(qword_100382500 + 40) == 0xE400000000000000;
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v4 = String._bridgeToObjectiveC()();
    [v0 setTitle:v4];
  }

  v5 = [objc_allocWithZone(type metadata accessor for CellularLoggingService()) init];
  v6 = *&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService];
  *&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService] = v5;
  v7 = v5;

  if (v7)
  {
    *&v7[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_delegate + 8] = &off_100321A68;
    swift_unknownObjectWeakAssign();
  }

  sub_10027F9F8();
}

void sub_10027D8EC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v38 - v13;
  if (qword_100375018 != -1)
  {
    v45 = v12;
    v33 = &v38 - v13;
    v34 = v0;
    v35 = v14;
    swift_once();
    v14 = v35;
    v0 = v34;
    v15 = v33;
    v12 = v45;
  }

  if ((*(qword_100382500 + 154) & 1) == 0)
  {
    v42 = v14;
    v43 = v5;
    v44 = v4;
    v45 = v12;
    *(qword_100382500 + 154) = 1;
    v17 = sub_10027C2F0(aBlock);
    v18 = *v16;
    if (!*v16)
    {
LABEL_12:
      (v17)(aBlock, 0);
      v40 = v0;
      v41 = v1;
      v22 = sub_10027C354();
      [v22 reloadData];

      v23 = sub_10027C9F4();
      sub_1001D54B4();

      if (qword_100374F90 != -1)
      {
        swift_once();
      }

      v24 = qword_100382478;
      v25 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("CellularLoggingViewController - didTapStart", 43, 2, &_mh_execute_header, v24, v25, _swiftEmptyArrayStorage);
      sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
      v26 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v27 = v15;
      + infix(_:_:)();
      v42 = *(v42 + 8);
      v28 = v10;
      v29 = v45;
      (v42)(v28, v45);
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100282DC0;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020C96C;
      aBlock[3] = &unk_100321BD8;
      v31 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100222030();
      sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
      sub_1002302F0();
      v32 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v31);

      (*(v41 + 8))(v3, v32);
      (*(v43 + 8))(v7, v44);
      (v42)(v27, v29);
      return;
    }

    v19 = v16;
    if (v18 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v18 = *v19, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
    {
      if (!(v18 >> 62))
      {
        goto LABEL_11;
      }

      v39 = _CocoaArrayWrapper.endIndex.getter();
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (v36 < 0)
      {
        goto LABEL_22;
      }

      v37 = _CocoaArrayWrapper.endIndex.getter();
      if ((v39 & 0x8000000000000000) == 0 && v37 >= v39)
      {
LABEL_11:
        *v19 = sub_100227334();

        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!(v18 >> 62))
    {
      v21 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
      sub_100204C28(0, v21);
      goto LABEL_12;
    }

    v36 = _CocoaArrayWrapper.endIndex.getter();
    if ((v36 & 0x8000000000000000) == 0)
    {
LABEL_23:
      v21 = v36;
      goto LABEL_9;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

void *sub_10027DE9C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;

    v3 = sub_10027D00C();
    [v3 value];
    v5 = v4;

    v6 = sub_10027D354();
    [v6 value];
    v8 = v7;

    sub_10027F7F4(v5, v8);
  }

  return result;
}

uint64_t sub_10027E0C4()
{
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v19 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  v12 = qword_100382478;
  v13 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CellularLoggingViewController - stopCellularLogging", 51, 2, &_mh_execute_header, v12, v13, _swiftEmptyArrayStorage);
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v20 = *(v6 + 8);
  v20(v8, v5);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100282DB8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100321BB0;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100222030();
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  v17 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v24 + 8))(v1, v17);
  (*(v22 + 8))(v4, v23);
  return (v20)(v11, v5);
}

void sub_10027E4B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService);
    if (v3)
    {
      v4 = qword_100375018;
      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      *(qword_100382500 + 154) = 0;
      v6 = *&v5[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging];
      v7 = [v6 stop];

      v2 = v7;
    }
  }
}

uint64_t sub_10027E5A0()
{
  v21 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v21 - 8);
  __chkstk_darwin(v21);
  v1 = &v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = sub_10027CA74();
  sub_1001D54B4();

  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  v13 = qword_100382478;
  v14 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CellularLoggingViewController - didTapReset", 43, 2, &_mh_execute_header, v13, v14, _swiftEmptyArrayStorage);
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v6 + 8);
  v22(v8, v5);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100282DB0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100321B88;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100222030();
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  v18 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v17);

  (*(v25 + 8))(v1, v18);
  (*(v23 + 8))(v4, v24);
  return (v22)(v11, v5);
}

void sub_10027E9A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService);
    if (v3)
    {
      v4 = v3;
      sub_10027F57C(v4);

      v2 = v4;
    }
  }
}

void sub_10027EA60()
{
  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService);
  if (v1)
  {
    v2 = qword_100374F90;
    v6 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = qword_100382478;
    v4 = static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)("CellularLoggingViewController - didTapConfig", 44, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);
    v5 = *&v6[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging];
  }
}

void sub_10027EBA8(id a1, double a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 32);
    v7 = v5 - 1;
    if (v5 != 1)
    {

      v8 = 36;
      v9 = v6;
      do
      {
        v10 = *(v4 + v8);
        [a1 value];
        v12 = vabds_f32(v10, v11);
        [a1 value];
        if (v12 < vabds_f32(v9, v13))
        {
          v6 = v10;
          v9 = v10;
        }

        v8 += 4;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v6 = 0.0;
  }

  *&a2 = v6;
  [a1 setValue:1 animated:a2];
  if ((LODWORD(v6) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v6 <= -9.2234e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v6 < 9.2234e18)
  {
    v14 = sub_10027D334();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v15;

    v16._countAndFlagsBits = 6441760;
    v16._object = 0xE300000000000000;
    String.append(_:)(v16);

    v17 = [objc_opt_self() grayColor];
    v18 = sub_1002827CC(0xD000000000000011, 0x80000001002C0270, v19, v20, v17);

    [v14 setAttributedText:v18];
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_10027EE00(void *a1)
{
  [a1 value];
  v4 = v3;
  v5 = sub_10027D00C();
  [v5 minimumValue];
  v7 = v6;

  if (v4 != v7)
  {
    goto LABEL_6;
  }

  [*(v1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider) minimumValue];
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 < 9.2234e18)
  {
LABEL_14:
    v16 = sub_10027D334();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v17;

    v18._countAndFlagsBits = 6441760;
    v18._object = 0xE300000000000000;
    String.append(_:)(v18);

    v19 = [objc_opt_self() grayColor];
    v20 = sub_1002827CC(0xD000000000000011, 0x80000001002C0270, v21, v22, v19);

    [v16 setAttributedText:v20];
    return;
  }

  __break(1u);
LABEL_6:
  [a1 value];
  v10 = v9;
  v11 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider;
  [*(v1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider) maximumValue];
  if (v10 != v12)
  {
    goto LABEL_11;
  }

  [*(v1 + v11) maximumValue];
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_17;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 < 9.2234e18)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_11:
  [a1 value];
  v15 = roundf(v14 * 0.03125) * 32.0;
  [a1 setValue:?];
  if ((LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 <= -9.2234e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < 9.2234e18)
  {
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
}

void sub_10027F0F4(void *a1)
{
  [a1 value];
  v4 = v3;
  v5 = sub_10027D00C();
  [v5 minimumValue];
  v7 = v6;

  if (v4 != v7)
  {
    goto LABEL_6;
  }

  [*(v1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider) minimumValue];
  if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -9.2234e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 < 9.2234e18)
  {
LABEL_14:
    v16 = sub_10027D530();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v17;

    v18._countAndFlagsBits = 0x73656C696620;
    v18._object = 0xE600000000000000;
    String.append(_:)(v18);

    v19 = [objc_opt_self() grayColor];
    v20 = sub_1002827CC(0x20676F6C2078614DLL, 0xEE00203A656C6966, v21, v22, v19);

    [v16 setAttributedText:v20];
    return;
  }

  __break(1u);
LABEL_6:
  [a1 value];
  v10 = v9;
  v11 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider;
  [*(v1 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider) maximumValue];
  if (v10 != v12)
  {
    goto LABEL_11;
  }

  [*(v1 + v11) maximumValue];
  if ((LODWORD(v13) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_17;
  }

  if (v13 <= -9.2234e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v13 < 9.2234e18)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_11:
  [a1 value];
  v15 = roundf(v14);
  [a1 setValue:?];
  if ((LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 <= -9.2234e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v15 < 9.2234e18)
  {
    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
}

void sub_10027F3E4(uint64_t a1)
{
  v3 = type metadata accessor for MultiChoiceSelectionModal();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal____lazy_storage___tableView] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_dismissButton;
  *&v4[v5] = sub_10021C6F4();
  *&v4[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_tableViewData] = a1;
  v10.receiver = v4;
  v10.super_class = v3;

  v6 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  v7 = qword_100382478;
  v8 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CellularLoggingViewController - showConfigOption", 48, 2, &_mh_execute_header, v7, v8, _swiftEmptyArrayStorage, v10.receiver, v10.super_class);
  v9 = v6;
  [v9 setTransitioningDelegate:v1];
  *&v9[OBJC_IVAR____TtC11FTMInternal25MultiChoiceSelectionModal_delegate + 8] = &off_100321A58;
  swift_unknownObjectWeakAssign();
  [v9 setModalPresentationStyle:4];

  [v1 presentViewController:v9 animated:1 completion:0];
}

void sub_10027F57C(uint64_t a1)
{
  v2 = v1;
  if (qword_100374F90 != -1)
  {
    swift_once();
  }

  v3 = qword_100382478;
  v4 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CellularLoggingViewController - cleanupUIAfterReset", 51, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);
  v6 = sub_10027C2F0(v22);
  v7 = *v5;
  if (*v5)
  {
    v8 = v5;
    if (v7 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject(), v7 = *v8, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
    {
      if (!(v7 >> 62))
      {
        goto LABEL_10;
      }

      v19 = _CocoaArrayWrapper.endIndex.getter();
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (v20 < 0)
      {
        goto LABEL_18;
      }

      v21 = _CocoaArrayWrapper.endIndex.getter();
      if ((v19 & 0x8000000000000000) == 0 && v21 >= v19)
      {
LABEL_10:
        *v8 = sub_100227334();

        goto LABEL_11;
      }

      __break(1u);
    }

    else if (!(v7 >> 62))
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      sub_100204C28(0, v10);
      goto LABEL_11;
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_19:
      v10 = v20;
      goto LABEL_8;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_11:
  (v6)(v22, 0);
  v11 = sub_10027C354();
  [v11 reloadData];

  v12 = sub_10027C6C4();
  [v12 setHidden:0];

  v13 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView;
  v14 = *(v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView);
  v15 = sub_100205934();

  v16 = String._bridgeToObjectiveC()();
  [v15 setText:v16];

  v17 = *(v2 + v13);
  v18 = sub_10020582C();

  [v18 stopAnimating];
}

void sub_10027F7F4(float a1, float a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging];
    if (v4)
    {
      v7 = objc_allocWithZone(CellularLoggingConfiguration);
      v20 = v3;
      v8 = v4;
      v9 = [v7 init];
      v10 = String._bridgeToObjectiveC()();
      [v9 setActiveConfig:v10];

      v11 = objc_allocWithZone(NSNumber);
      *&v12 = a1;
      v13 = [v11 initWithFloat:v12];
      [v9 setChunkFileSize:v13];

      v14 = objc_allocWithZone(NSNumber);
      *&v15 = a2;
      v16 = [v14 initWithFloat:v15];
      [v9 setMaxNumberOfLogs:v16];

      if (qword_100374FA0 != -1)
      {
        swift_once();
      }

      v17 = qword_100382488;
      v18 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("CellularLoggingService - initializeLogger", 41, 2, &_mh_execute_header, v17, v18, _swiftEmptyArrayStorage);
      v19 = v9;
    }
  }
}

void sub_10027F9F8()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v1;
  v3 = sub_10027C354();
  [v2 addSubview:v3];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = v4;
  v6 = sub_10027C6C4();
  [v5 addSubview:v6];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_containerView];
  [v7 addSubview:v9];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = sub_10027C5FC();
  [v9 addSubview:v10];

  v11 = sub_10027C794();
  [v9 addSubview:v11];

  v12 = sub_10027D00C();
  [v9 addSubview:v12];

  v13 = sub_10027D354();
  [v9 addSubview:v13];

  v14 = sub_10027D334();
  [v9 addSubview:v14];

  v15 = sub_10027D530();
  [v9 addSubview:v15];

  v16 = *&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_stackView];
  [v9 addSubview:v16];
  v17 = [objc_opt_self() whiteColor];
  [v9 setBackgroundColor:v17];

  [v16 setAxis:0];
  [v16 setAlignment:3];
  [v16 setSpacing:10.0];
  [v16 setDistribution:1];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v166 = objc_opt_self();
  sub_1001A551C(&unk_1003757C0, &unk_1002EF670);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1002F1550;
  v19 = [v16 leftAnchor];
  v20 = [v9 safeAreaLayoutGuide];
  v21 = [v20 leftAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:5.0];
  *(v18 + 32) = v22;
  v23 = [v16 rightAnchor];
  v24 = [v9 safeAreaLayoutGuide];
  v25 = [v24 rightAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-5.0];
  *(v18 + 40) = v26;
  v27 = [v16 bottomAnchor];
  v28 = [v9 safeAreaLayoutGuide];
  v29 = [v28 bottomAnchor];

  v30 = [v27 constraintEqualToAnchor:v29 constant:-5.0];
  *(v18 + 48) = v30;
  sub_1001E1BB4(0, &qword_1003774A0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:isa];

  v32 = sub_10027C9F4();
  [v16 addArrangedSubview:v32];

  v33 = sub_10027CD44();
  [v16 addArrangedSubview:v33];

  v34 = sub_10027CA74();
  v163 = v16;
  [v16 addArrangedSubview:v34];

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1002F6100;
  v36 = [v9 leftAnchor];
  v37 = [v0 view];
  if (!v37)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v38 = v37;
  v39 = [v37 safeAreaLayoutGuide];

  v40 = [v39 leftAnchor];
  v41 = [v36 constraintEqualToAnchor:v40];

  *(v35 + 32) = v41;
  v42 = [v9 rightAnchor];
  v43 = [v0 view];
  if (!v43)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v44 = v43;
  v45 = [v43 safeAreaLayoutGuide];

  v46 = [v45 rightAnchor];
  v47 = [v42 constraintEqualToAnchor:v46];

  *(v35 + 40) = v47;
  v48 = [v9 topAnchor];
  v49 = [v0 view];
  if (!v49)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v50 = v49;
  v51 = [v49 safeAreaLayoutGuide];

  v52 = [v51 topAnchor];
  v53 = [v48 constraintEqualToAnchor:v52];

  *(v35 + 48) = v53;
  v54 = [v9 heightAnchor];
  v55 = [v54 constraintEqualToConstant:200.0];

  *(v35 + 56) = v55;
  v56 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___currentConfigButton;
  v57 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___currentConfigButton] topAnchor];
  v58 = [v9 safeAreaLayoutGuide];
  v59 = [v58 topAnchor];

  v60 = [v57 constraintEqualToAnchor:v59 constant:5.0];
  *(v35 + 64) = v60;
  v61 = [*&v0[v56] leftAnchor];
  v62 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView;
  v63 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView] leftAnchor];
  v64 = [v61 constraintEqualToAnchor:v63];

  *(v35 + 72) = v64;
  v65 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSizeLabel;
  v66 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSizeLabel] leftAnchor];
  v67 = [*&v0[v62] leftAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v35 + 80) = v68;
  v69 = [*&v0[v65] topAnchor];
  v70 = [*&v0[v56] safeAreaLayoutGuide];
  v71 = [v70 bottomAnchor];

  v72 = [v69 constraintEqualToAnchor:v71];
  *(v35 + 88) = v72;
  v164 = v9;
  v73 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider;
  v74 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider] leftAnchor];
  v75 = [*&v0[v62] leftAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v35 + 96) = v76;
  v77 = [*&v0[v73] topAnchor];
  v78 = [*&v0[v65] safeAreaLayoutGuide];
  v79 = [v78 bottomAnchor];

  v80 = [v77 constraintEqualToAnchor:v79];
  *(v35 + 104) = v80;
  v81 = [*&v0[v73] widthAnchor];
  v82 = [v164 widthAnchor];
  v83 = [v81 constraintEqualToAnchor:v82 constant:-40.0];

  *(v35 + 112) = v83;
  v84 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsLabel;
  v85 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsLabel] leftAnchor];
  v86 = [*&v0[v62] leftAnchor];
  v87 = [v85 constraintEqualToAnchor:v86];

  *(v35 + 120) = v87;
  v88 = [*&v0[v84] topAnchor];
  v89 = [*&v0[v73] safeAreaLayoutGuide];
  v90 = [v89 bottomAnchor];

  v91 = [v88 constraintEqualToAnchor:v90];
  *(v35 + 128) = v91;
  v92 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsSlider;
  v93 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsSlider] leftAnchor];
  v94 = [*&v0[v62] leftAnchor];
  v95 = [v93 constraintEqualToAnchor:v94];

  *(v35 + 136) = v95;
  v96 = [*&v0[v92] topAnchor];
  v97 = [*&v0[v84] safeAreaLayoutGuide];
  v98 = [v97 bottomAnchor];

  v99 = [v96 constraintEqualToAnchor:v98];
  *(v35 + 144) = v99;
  v100 = [*&v0[v92] widthAnchor];
  v101 = [v164 widthAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:-40.0];

  *(v35 + 152) = v102;
  v103 = [*&v0[v62] centerXAnchor];
  v104 = [v164 centerXAnchor];
  v105 = [v103 constraintEqualToAnchor:v104];

  *(v35 + 160) = v105;
  v106 = [*&v0[v62] bottomAnchor];
  v107 = [v163 safeAreaLayoutGuide];
  v108 = [v107 topAnchor];

  v109 = [v106 constraintEqualToAnchor:v108 constant:-5.0];
  *(v35 + 168) = v109;
  v110 = [*&v0[v62] heightAnchor];
  v111 = [v110 constraintEqualToConstant:1.0];

  *(v35 + 176) = v111;
  v112 = [*&v0[v62] widthAnchor];
  v113 = [v164 widthAnchor];
  v114 = [v112 constraintEqualToAnchor:v113 constant:-40.0];

  *(v35 + 184) = v114;
  v115 = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:v115];

  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_1002EF930;
  v117 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___tableView;
  v118 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___tableView] topAnchor];
  v119 = [v164 bottomAnchor];
  v120 = [v118 constraintEqualToAnchor:v119];

  *(v116 + 32) = v120;
  v121 = [*&v0[v117] leadingAnchor];
  v122 = [v0 view];
  if (!v122)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v123 = v122;
  v124 = [v122 safeAreaLayoutGuide];

  v125 = [v124 leadingAnchor];
  v126 = [v121 constraintEqualToAnchor:v125];

  *(v116 + 40) = v126;
  v127 = [*&v0[v117] trailingAnchor];
  v128 = [v0 view];
  if (!v128)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v129 = v128;
  v130 = [v128 safeAreaLayoutGuide];

  v131 = [v130 trailingAnchor];
  v132 = [v127 constraintEqualToAnchor:v131];

  *(v116 + 48) = v132;
  v133 = [*&v0[v117] bottomAnchor];
  v134 = [v0 view];
  if (!v134)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v135 = v134;
  v136 = [v134 safeAreaLayoutGuide];

  v137 = [v136 bottomAnchor];
  v138 = [v133 constraintEqualToAnchor:v137];

  *(v116 + 56) = v138;
  v139 = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:v139];

  v140 = swift_allocObject();
  *(v140 + 16) = xmmword_1002EF930;
  v141 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView;
  v142 = [*&v0[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView] topAnchor];
  v143 = [v164 bottomAnchor];
  v144 = [v142 constraintEqualToAnchor:v143];

  *(v140 + 32) = v144;
  v145 = [*&v0[v141] leadingAnchor];
  v146 = [v0 view];
  if (!v146)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v147 = v146;
  v148 = [v146 safeAreaLayoutGuide];

  v149 = [v148 leadingAnchor];
  v150 = [v145 constraintEqualToAnchor:v149];

  *(v140 + 40) = v150;
  v151 = [*&v0[v141] trailingAnchor];
  v152 = [v0 view];
  if (!v152)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v153 = v152;
  v154 = [v152 safeAreaLayoutGuide];

  v155 = [v154 trailingAnchor];
  v156 = [v151 constraintEqualToAnchor:v155];

  *(v140 + 48) = v156;
  v157 = [*&v0[v141] bottomAnchor];
  v158 = [v0 view];
  if (!v158)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v159 = v158;
  v160 = [v158 safeAreaLayoutGuide];

  v161 = [v160 bottomAnchor];
  v162 = [v157 constraintEqualToAnchor:v161];

  *(v140 + 56) = v162;
  v165 = Array._bridgeToObjectiveC()().super.isa;

  [v166 activateConstraints:v165];
}

id sub_100280D60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_transition;
  *&v4[v7] = [objc_allocWithZone(type metadata accessor for CircularTransition()) init];
  v8 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_stackView;
  *&v4[v8] = [objc_allocWithZone(UIStackView) init];
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularConfigurations] = _swiftEmptyArrayStorage;
  v9 = &v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_currentLogConfiguration];
  *v9 = 0x746C7561666544;
  *(v9 + 1) = 0xE700000000000000;
  v10 = &v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_loadingViewContext];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_maxNumberOfLogs;
  sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
  *&v4[v11] = NSNumber.init(integerLiteral:)(0);
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___tableView] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___currentConfigButton] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___startButton] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___resetButton] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___stopButton] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSizeLabel] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsSlider] = 0;
  *&v4[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsLabel] = 0;
  v12 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_containerView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  if (a2)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for CellularLoggingViewController();
  v14 = objc_msgSendSuper2(&v16, "initWithNibName:bundle:", v13, a3);

  return v14;
}

id sub_100280FE8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_transition;
  *&v2[v4] = [objc_allocWithZone(type metadata accessor for CircularTransition()) init];
  v5 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_stackView;
  *&v2[v5] = [objc_allocWithZone(UIStackView) init];
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularLoggingService] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularConfigurations] = _swiftEmptyArrayStorage;
  v6 = &v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_currentLogConfiguration];
  *v6 = 0x746C7561666544;
  *(v6 + 1) = 0xE700000000000000;
  v7 = &v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_loadingViewContext];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  v8 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_maxNumberOfLogs;
  sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
  *&v2[v8] = NSNumber.init(integerLiteral:)(0);
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___tableView] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___separatorView] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___loadingView] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___currentConfigButton] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___startButton] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___resetButton] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___stopButton] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_fixedValues] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSlider] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___chunkFileSizeLabel] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsSlider] = 0;
  *&v2[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController____lazy_storage___maxNumberOfLogsLabel] = 0;
  v9 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_containerView;
  *&v2[v9] = [objc_allocWithZone(UIView) init];
  v12.receiver = v2;
  v12.super_class = type metadata accessor for CellularLoggingViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

void sub_10028120C()
{

  v1 = *(v0 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_containerView);
}

id sub_100281384(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CellularLoggingViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100281560(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    swift_errorRetain();
    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    v3 = qword_100382488;
    v4 = static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1002EED40;
    swift_getErrorValue();
    v6 = Error.localizedDescription.getter();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_1001A76E8();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    os_log(_:dso:log:type:_:)("Cellular logging Error - %{private}s", 36, 2, &_mh_execute_header, v3, v4, v5);

    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    v22 = v2;
    v10 = String._bridgeToObjectiveC()();
    v11 = String._bridgeToObjectiveC()();
    v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

    v13 = swift_allocObject();
    *(v13 + 16) = sub_10028264C;
    *(v13 + 24) = v9;

    v14 = String._bridgeToObjectiveC()();
    v27 = sub_1002826A8;
    v28 = v13;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10025BE04;
    v26 = &unk_100321AE8;
    v15 = _Block_copy(&aBlock);

    v16 = objc_opt_self();
    v17 = [v16 actionWithTitle:v14 style:0 handler:v15];
    _Block_release(v15);

    v18 = swift_allocObject();
    *(v18 + 16) = sub_10028264C;
    *(v18 + 24) = v9;

    v19 = String._bridgeToObjectiveC()();
    v27 = sub_1002826C8;
    v28 = v18;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10025BE04;
    v26 = &unk_100321B38;
    v20 = _Block_copy(&aBlock);

    v21 = [v16 actionWithTitle:v19 style:1 handler:v20];
    _Block_release(v20);

    [v12 addAction:v17];
    [v12 addAction:v21];
    [v22 presentViewController:v12 animated:1 completion:0];

    sub_1001D4FA4();
  }

  return result;
}

void sub_10028196C(unint64_t a1)
{
  v2 = v1;
  if (qword_100374FA0 != -1)
  {
    swift_once();
  }

  v4 = qword_100382488;
  v5 = static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)("CellularLoggingViewController - didReceiveLogs", 46, 2, &_mh_execute_header, v4, v5, _swiftEmptyArrayStorage);
  v6 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7)
  {
    if (v7 >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }

    sub_100281B10(a1);
    v8 = sub_10027C2F0(v14);
    if (*v9)
    {

      sub_1001E3764(v10);
    }

    (v8)(v14, 0);
  }

  else
  {
    *(v2 + v6) = a1;
  }

  v11 = sub_10027C6C4();
  if (a1 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v11 setHidden:v12 > 0];

  v13 = sub_10027C354();
  [v13 reloadData];
}

void sub_100281B10(unint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_6;
    }
  }

  else if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_6;
  }

  v6 = _CocoaArrayWrapper.endIndex.getter();
LABEL_6:
  if (v6 < [*(v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_maxNumberOfLogs) integerValue])
  {
    return;
  }

  v7 = *(v2 + v4);
  if (v7)
  {
    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    v9 = qword_100382488;
    v10 = static os_log_type_t.default.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002EED40;
    if (a1 >> 62)
    {
      v26 = v11;
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v11 = v26;
      v13 = __OFADD__(v8, v23);
      v14 = v8 + v23;
      if (!v13)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = __OFADD__(v8, v12);
      v14 = v8 + v12;
      if (!v13)
      {
LABEL_14:
        *(v11 + 56) = &type metadata for Int;
        *(v11 + 64) = &protocol witness table for Int;
        *(v11 + 32) = v14;
        os_log(_:dso:log:type:_:)("CellularLoggingViewController - checkIfReachedMax - maxReached: %{public}d", 74, 2, &_mh_execute_header, v9, v10, v11, v26);

        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_15:
  v9 = sub_10027C2F0(v28);
  v16 = *v15;
  if (*v15)
  {
    v8 = v15;
    if (!(v16 >> 62))
    {
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v16 = *v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!(v16 >> 62))
        {
          v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_20:
          sub_100204C28(0, v18);
          goto LABEL_23;
        }

        goto LABEL_36;
      }
    }

    if (!(v16 >> 62))
    {
LABEL_22:
      *v8 = sub_100227334();

      goto LABEL_23;
    }

LABEL_32:
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v24 = _CocoaArrayWrapper.endIndex.getter();
    if (v24 < 0)
    {
      goto LABEL_38;
    }

    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v27 < 0 || v25 < v27)
    {
      __break(1u);
LABEL_36:
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if ((v24 & 0x8000000000000000) == 0)
      {
LABEL_39:
        v18 = v24;
        goto LABEL_20;
      }

      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    goto LABEL_22;
  }

LABEL_23:
  (v9)(v28, 0);
  v19 = sub_10027C2F0(v28);
  if (*v20)
  {

    sub_1001E3764(v21);
  }

  (v19)(v28, 0);
  v22 = sub_10027C354();
  [v22 reloadData];
}

unint64_t sub_100281FB8(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v7 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 dequeueReusableCellWithIdentifier:v7 forIndexPath:isa];

  type metadata accessor for FavoritesTableCellV2();
  v10 = swift_dynamicCastClass();
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularData;
    swift_beginAccess();
    v13 = *(v1 + v12);
    if (!v13)
    {
      return v11;
    }

    result = IndexPath.row.getter();
    v36 = v4;
    if ((v13 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v13 + 8 * result + 32);
LABEL_7:
      v16 = v15;

      v17 = sub_1001CF7C4();
      v18 = [v16 fileName];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v37 = 0x6D616E20656C6946;
      v38 = 0xEB00000000203A65;
      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      String.init<A>(_:)();
      v23 = String._bridgeToObjectiveC()();

      [v17 setText:v23];

      v24 = sub_1001CF7DC();
      v25 = [v16 fileSize];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      v37 = 0x7A695320656C6946;
      v38 = 0xEB00000000203A65;
      v29._countAndFlagsBits = v26;
      v29._object = v28;
      String.append(_:)(v29);

      String.init<A>(_:)();
      v30 = String._bridgeToObjectiveC()();

      [v24 setText:v30];

      v31 = sub_1001CF7F4();
      v32 = [v16 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1001D5114(2);
      (*(v36 + 8))(v6, v3);
      v33 = String._bridgeToObjectiveC()();

      [v31 setText:v33];

      v34 = sub_1001CF878();
      [v34 setHidden:1];

      return v11;
    }

    __break(1u);
  }

  else
  {

    v35 = objc_allocWithZone(UITableViewCell);

    return [v35 init];
  }

  return result;
}

uint64_t sub_100282614()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100282670()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002826B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002826D0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_currentLogConfiguration);
  *v3 = a1;
  v3[1] = a2;

  v4 = *v3;
  v5 = v3[1];
  v6 = objc_opt_self();

  v7 = [v6 grayColor];
  v8 = sub_1002827CC(0xD000000000000013, 0x80000001002C0380, v4, v5, v7);

  v9 = sub_10027C794();
  [v9 setAttributedTitle:v8 forState:0];
}

id sub_1002827CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{

  v8._countAndFlagsBits = a3;
  v8._object = a4;
  String.append(_:)(v8);
  v9 = objc_allocWithZone(NSMutableAttributedString);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithString:{v10, a1, a2}];

  v12 = [v11 mutableString];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 rangeOfString:v13 options:1];
  v16 = v15;

  if (v14 != NSNotFound.getter())
  {
    [v11 addAttribute:NSForegroundColorAttributeName value:a5 range:{v14, v16}];
  }

  return v11;
}

id sub_100282904()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  [v0 setTextColor:v3];
  if (qword_100375018 != -1)
  {
    swift_once();
  }

  if (*(qword_100382500 + 153))
  {
    v4 = 0x624B2032313520;
  }

  else
  {
    v4 = 0x624B20323320;
  }

  if (*(qword_100382500 + 153))
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = [v2 grayColor];
  v7 = sub_1002827CC(0xD000000000000010, 0x80000001002C0360, v4, v5, v6);

  [v0 setAttributedText:v7];
  [v0 setTextAlignment:2];
  v8 = [objc_opt_self() systemFontOfSize:18.0];
  [v0 setFont:v8];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_100282AF0()
{
  v0 = [objc_allocWithZone(UILabel) init];
  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1];

  [v0 setTextColor:v3];
  v4 = [v2 grayColor];
  v5 = sub_1002827CC(0x20676F6C2078614DLL, 0xED00003A656C6966, 0x6C69662036353220, 0xEA00000000007365, v4);

  [v0 setAttributedText:v5];
  [v0 setTextAlignment:2];
  v6 = [objc_opt_self() systemFontOfSize:18.0];
  [v0 setFont:v6];

  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v0;
}

id sub_100282C78(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_transition];
  *(v2 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_transitionMode) = a1;
  v3 = sub_10027C9F4();
  [v3 center];
  v5 = v4;
  v7 = v6;

  v8 = (v2 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_startingPoint);
  *v8 = v5;
  v8[1] = v7;
  [*(v2 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circle) setCenter:{v5, v7}];
  result = [v1 view];
  if (result)
  {
    v10 = result;
    v11 = [result backgroundColor];

    if (v11)
    {
      v12 = *(v2 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circleColor);
      *(v2 + OBJC_IVAR____TtC11FTMInternal18CircularTransition_circleColor) = v11;
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100282D78()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100282DE8()
{
  result = qword_10037A2D0;
  if (!qword_10037A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A2D0);
  }

  return result;
}

char *sub_100282E60()
{
  *&v0[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging] = 0;
  *&v0[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_timer] = 0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CellularLoggingService();
  v1 = objc_msgSendSuper2(&v7, "init");
  v2 = [objc_allocWithZone(CellularLogging) init];
  v3 = OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging;
  v4 = *&v1[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging];
  *&v1[OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging] = v2;

  v5 = *&v1[v3];
  if (v5)
  {
    [v5 setDelegate:v1];
  }

  sub_100282F40();
  return v1;
}

void sub_100282F40()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v6[4] = sub_100283B0C;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10025BE6C;
  v6[3] = &unk_100321C48;
  v3 = _Block_copy(v6);
  v4 = v0;

  v5 = [v1 addObserverForName:UIApplicationWillTerminateNotification object:0 queue:0 usingBlock:v3];
  _Block_release(v3);
  swift_unknownObjectRelease();
}

double sub_100283070(uint64_t a1, uint64_t a2)
{
  if (qword_100374FA0 != -1)
  {
    swift_once();
  }

  v3 = qword_100382488;
  v4 = static os_log_type_t.default.getter();
  v5 = os_log(_:dso:log:type:_:)("CellularLoggingService - appwillTerminateNotification", 53, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);
  v6 = *(a2 + OBJC_IVAR____TtC11FTMInternal22CellularLoggingService_cellularLogging);
  if (v6)
  {
    v7 = [v6 stop];
  }

  else
  {
    v9 = static os_log_type_t.default.getter();

    return os_log(_:dso:log:type:_:)("cellularlogging is not available", 32, 2, &_mh_execute_header, v3, v9, _swiftEmptyArrayStorage);
  }

  return result;
}

id sub_100283174()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:UIApplicationWillTerminateNotification];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for CellularLoggingService();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void *sub_100283300(void *result, uint64_t a2)
{
  if (result && (result = sub_1001EB754(result)) != 0)
  {
    v3 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10028196C(v3);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    v4 = qword_100382488;
    v5 = static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1002EED40;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_1001A76E8();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:type:_:)("CellularLoggingService - didCollectLogs: %{public}@ ", 52, 2, &_mh_execute_header, v4, v5, v6);

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_errorRetain();
      sub_100281560(a2);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10028358C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return;
    }

    swift_unknownObjectRelease();
    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    v15 = qword_100382488;
    v16 = static os_log_type_t.error.getter();
    v17 = "didStop";
    v18 = 7;
LABEL_24:

    os_log(_:dso:log:type:_:)(v17, v18, 2, &_mh_execute_header, v15, v16, _swiftEmptyArrayStorage);
    return;
  }

  if (a1 != 2)
  {
    if (a1 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (a3 && (v5 = a3, v6 = Strong, (v7 = [v5 maxNumberOfLogs]) != 0))
        {
          v19 = *(v6 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_maxNumberOfLogs);
          *(v6 + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_maxNumberOfLogs) = v7;
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      return;
    }

    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    v15 = qword_100382488;
    v16 = static os_log_type_t.default.getter();
    v17 = "didStateChanged - state: unexpected";
    v18 = 35;
    goto LABEL_24;
  }

  if (a2)
  {
    swift_errorRetain();
    if (qword_100374FA0 != -1)
    {
      swift_once();
    }

    v9 = qword_100382488;
    v10 = static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002EED40;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1001A76E8();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:type:_:)("CellularLoggingService - didStateChanged %{public}@", 51, 2, &_mh_execute_header, v9, v10, v11);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100281560(a2);
    swift_unknownObjectRelease();
  }
}

void *sub_100283958(void *result)
{
  if (result)
  {
    result = sub_1001EB860(result);
    if (result)
    {
      v1 = result;
      if (qword_100374FA0 != -1)
      {
        swift_once();
      }

      v2 = qword_100382488;
      v3 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("configurationListAvailable", 26, 2, &_mh_execute_header, v2, v3, _swiftEmptyArrayStorage);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(Strong + OBJC_IVAR____TtC11FTMInternal29CellularLoggingViewController_cellularConfigurations) = v1;

        sub_10027F3E4(v5);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100283AD4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100283B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_100283B2C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v18 = v12;
  v19 = v13;
  sub_1001AC6D0(&v18);
  sub_100284444(SBYTE10(v19));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v8;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v12 = v6;
  v13 = v7;
  sub_10023AE00(0, 0, &v12, *(v1 + OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService));
  KeyPath = swift_getKeyPath();
  *(a1 + *(type metadata accessor for SURLSessionRunningView(0) + 28)) = KeyPath;
  sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SURLSessionRunningViewModel(0);
  sub_100285280();
  *a1 = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = v4;
  State.init(wrappedValue:)();
  *(a1 + 16) = v6;
  *(a1 + 24) = *(&v6 + 1);
  sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
  State.init(wrappedValue:)();
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

__n128 sub_100283D3C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

__n128 sub_100283DF4@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *(a2 + 80) = v9;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_100283EB0(__int128 *a1, void **a2)
{
  v3 = a1[3];
  v18[2] = a1[2];
  v18[3] = v3;
  v18[4] = a1[4];
  v19 = *(a1 + 40);
  v4 = a1[1];
  v18[0] = *a1;
  v18[1] = v4;
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[2];
  v7 = a1[4];
  v15 = a1[3];
  v16 = v7;
  v17 = *(a1 + 40);
  v8 = a1[1];
  v12 = *a1;
  v13 = v8;
  v14 = v6;
  sub_1002851AC(v18, v11);
  v9 = v5;
  return static Published.subscript.setter();
}

uint64_t sub_100283F74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v13[2] = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v13[0] = v7;
  v13[1] = v8;
  sub_1001AC6D0(v13);
  if (v14)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_1001AC6D0(&v7);
  return BYTE1(v10);
}

void sub_100284098()
{
  if (qword_100375040 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10021F6F4(v1, qword_100382540);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100223114(0x7261657070416E6FLL, 0xEA00000000002928, &v18);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s getting traffic descriptors", v4, 0xCu);
    sub_1001A5654(v5);
  }

  v6 = [*(v0 + OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService) getTrafficDescriptors];
  if (v6)
  {
    v7 = v6;
    sub_1001E1BB4(0, &qword_10037A438, &off_100315900);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v9 = 136315394;
      *(v9 + 4) = sub_100223114(0x7261657070416E6FLL, 0xEA00000000002928, &v18);
      *(v9 + 12) = 2080;
      v10 = Array.description.getter();
      v12 = v11;

      v13 = sub_100223114(v10, v12, &v18);

      *(v9 + 14) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v8, "%s: %s", v9, 0x16u);
      swift_arrayDestroy();

LABEL_10:

      return;
    }
  }

  else
  {
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100223114(0x7261657070416E6FLL, 0xEA00000000002928, &v18);
      _os_log_impl(&_mh_execute_header, oslog, v14, "%s: no descriptors available", v15, 0xCu);
      sub_1001A5654(v16);

      goto LABEL_10;
    }
  }
}

void sub_100284444(char a1)
{
  v2 = v1;
  if (qword_100375040 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10021F6F4(v4, qword_100382540);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v36 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100223114(0xD00000000000001ALL, 0x80000001002C0630, &v36);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s invoked", v7, 0xCu);
    sub_1001A5654(v8);
  }

  if (a1 != 24)
  {
    if (qword_100375038 != -1)
    {
      swift_once();
    }

    sub_10021F6F4(v4, qword_100382528);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = qword_1002F6448[a1];
      _os_log_impl(&_mh_execute_header, v21, v22, "settings application category to %ld", v23, 0xCu);
    }

    sub_1001E1BB4(0, &unk_10037A2C0, NSNumber_ptr);
    v24.super.super.isa = NSNumber.init(integerLiteral:)(qword_1002F6448[a1]).super.super.isa;
    v25 = [*(v2 + OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService) setApplicationCategory:v24.super.super.isa];
    if (!v25)
    {

      return;
    }

    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v29 = 136315394;
      v30 = sub_10023E8AC(a1);
      v32 = sub_100223114(v30, v31, &v36);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = sub_100223114(v33, v34, &v36);

      *(v29 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v27, v28, "unable to set category %s due to %s", v29, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_24;
  }

  if (qword_100375038 != -1)
  {
    swift_once();
  }

  sub_10021F6F4(v4, qword_100382528);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "settings application category to nil", v11, 2u);
  }

  v12 = [*(v2 + OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService) setApplicationCategory:0];
  if (v12)
  {
    v13 = v12;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v36 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_100223114(v18, v19, &v36);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "unable to set category (nil) due to %s", v16, 0xCu);
      sub_1001A5654(v17);
    }

    else
    {
    }

LABEL_24:
    sub_100285208();
    swift_allocError();
    swift_willThrow();
  }
}

char *sub_100284A04(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  v4 = *(a1 + 48);
  v9[3] = *(a1 + 32);
  v9[4] = v4;
  v9[5] = *(a1 + 64);
  v10 = *(a1 + 80);
  v5 = *(a1 + 16);
  v9[1] = *a1;
  v9[2] = v5;
  Published.init(initialValue:)();
  swift_endAccess();
  v6 = [objc_allocWithZone(SPCoreTelephonyAdapter) init];
  *&v1[OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService] = v6;
  v9[0].receiver = v1;
  v9[0].super_class = ObjectType;
  v7 = [(objc_super *)v9 init];
  [*&v7[OBJC_IVAR____TtC11FTMInternal20SURLSessionViewModel_coreTelephonyService] setDelegate:v7];
  return v7;
}

uint64_t type metadata accessor for SURLSessionViewModel(uint64_t a1)
{
  result = qword_10037A3B8;
  if (!qword_10037A3B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100284BF8(uint64_t a1)
{
  sub_100284C94();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100284C94()
{
  if (!qword_10037A3C8)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10037A3C8);
    }
  }
}

void sub_100284E20(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10021F6F4(v7, qword_100382528);

  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v9 = 136315650;
    sub_1001E1BB4(0, &qword_10037A438, &off_100315900);
    v10 = Array.description.getter();
    v12 = sub_100223114(v10, v11, &v14);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100223114(a2, a3, &v14);
    *(v9 + 22) = 1024;
    *(v9 + 24) = a4 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v8, "slicing descriptors were updated: %s appInfo=%s status=%{BOOL}d", v9, 0x1Cu);
    swift_arrayDestroy();
  }
}

void sub_100285000(void *a1)
{
  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10021F6F4(v2, qword_100382528);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "slicing running app state changed: %@", v5, 0xCu);
    sub_10028513C(v6);
  }
}

uint64_t sub_10028513C(uint64_t a1)
{
  v2 = sub_1001A551C(&unk_100379B60, &unk_1002F3B30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100285208()
{
  result = qword_10037A448;
  if (!qword_10037A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A448);
  }

  return result;
}

unint64_t sub_100285280()
{
  result = qword_10037A450;
  if (!qword_10037A450)
  {
    type metadata accessor for SURLSessionRunningViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A450);
  }

  return result;
}

unint64_t sub_1002852EC()
{
  result = qword_10037A460;
  if (!qword_10037A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10037A460);
  }

  return result;
}

uint64_t sub_10028536C(int a1, int a2, int a3, int a4)
{
  if (qword_100382448 == -1)
  {
    if (qword_100382450)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100285C98();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100382450)
    {
      return _availability_version_check();
    }
  }

  if (qword_100382440 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100285CB0();
    a3 = v10;
    a4 = v9;
    v8 = dword_100382430 < v11;
    if (dword_100382430 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100382434 > a3)
      {
        return 1;
      }

      if (dword_100382434 >= a3)
      {
        return dword_100382438 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100382430 < a2;
  if (dword_100382430 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100285500(uint64_t result)
{
  v1 = qword_100382450;
  if (qword_100382450)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100382450 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100382430, &dword_100382434, &dword_100382438);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100285834(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412802;
  v4 = @"NRSlicing";
  v5 = 2112;
  v6 = a1;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to read carrier bundle key %@ from context %@ with error: %@", &v3, 0x20u);
}

void sub_100285B5C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error setting the category %@. %@", &v3, 0x16u);
}

void sub_100285BE4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "error getting slice traffic descriptors %@", &v2, 0xCu);
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.init(_:)(NSString a1)
{
  v1 = String.init(_:)(a1);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(cString:)()
{
  return String.init(cString:)();
}

{
  return String.init(cString:)();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return RawRepresentable<>.encode(to:)();
}

{
  return RawRepresentable<>.encode(to:)();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return RawRepresentable<>.init(from:)();
}

{
  return RawRepresentable<>.init(from:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}