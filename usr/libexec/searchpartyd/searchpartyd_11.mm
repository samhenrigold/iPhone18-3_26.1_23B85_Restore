uint64_t sub_1001450F4(uint64_t a1)
{
  result = swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t sub_100145144@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = sub_1010790F4(KeyPath, v3);
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
  return result;
}

uint64_t sub_1001451A4@<X0>(uint64_t *a1@<X0>, void *x8_0@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_101075734(KeyPath, v6, x8_0);
}

uint64_t sub_1001451FC(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697ED8, &unk_10138EBA0);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_100150A4C;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_1016101F0;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_1001459A0(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697ED0, &qword_10138EB98);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_100150938;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_1016101A0;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_100146144(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697EC8, &qword_10138EB90);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_10015092C;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_101610150;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_1001468E8(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697EC0, &qword_10138EB88);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_100150920;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_101610100;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014708C(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697EB8, &qword_10138EB78);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_10015090C;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_1016100B0;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_100147830(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697EB0, &qword_10138EB70);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_100150900;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_101610060;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_100147FD4(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697EA8, &qword_10138EB68);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_1001508F4;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_101610010;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_100148778(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E98, &qword_10138EB58);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_1001508E0;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FFC0;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_100148F1C(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E88, &qword_10138EB48);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_1001508CC;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FF70;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_1001496C0(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E80, &qword_10138EB40);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_100150828;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FF20;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_100149E64(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E70, &unk_10138EB30);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_100150814;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FED0;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014A608(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E68, &qword_10138EB28);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_100150800;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FE80;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014ADAC(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E60, &qword_10138EAF8);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_1001507EC;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FE30;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014B550(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E50, &unk_10138EAC0);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_1001507D8;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FDE0;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014BCF4(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E48, &qword_10138EA90);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_1001507CC;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FD90;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014C498(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E38, &unk_10138EA80);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_1001507B8;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FD40;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014CC3C(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E30, &qword_10138EA78);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_1001507AC;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FCF0;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014D3E0(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E20, &qword_10138EA68);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_1001506E0;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FCA0;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014DB84(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E18, &qword_10138EA60);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_10015062C;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FC50;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014E328(uint64_t a1, uint64_t a2)
{
  v56 = a1;
  v57 = type metadata accessor for DispatchWorkItemFlags();
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v9 = *(v61 - 8);
  v10 = __chkstk_darwin(v61);
  v59 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v11;
  __chkstk_darwin(v10);
  v58 = v38 - v12;
  dispatch_assert_queue_V2(*(v2 + 40));
  sub_1000BC4D4(&qword_101697E08, &qword_10138EA50);
  OS_dispatch_queue.sync<A>(execute:)();
  v13 = aBlock[0];
  v14 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_101385D80;
  aBlock[0] = a2;

  sub_1000BC4D4(&qword_101697E10, &qword_10138EA58);
  v17 = String.init<A>(describing:)();
  v19 = v18;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_100008C00();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  os_log(_:dso:log:_:_:)(v14, &_mh_execute_header, v15, "ConfigurationCoordinator config value changed for %{public}@", 60, 2, v16);

  v20 = *(v13 + 16);
  if (v20)
  {
    v21 = sub_1000BC488();
    v54 = *(v9 + 16);
    v55 = v21;
    v22 = *(v9 + 80);
    v38[1] = v13;
    v23 = v13 + ((v22 + 32) & ~v22);
    v52 = *(v9 + 72);
    v51 = enum case for DispatchQoS.QoSClass.default(_:);
    v50 = (v53 + 104);
    v49 = (v53 + 8);
    v48 = v6;
    v47 = (v9 + 32);
    v53 = v22;
    v46 = (v22 + 16) & ~v22;
    v45 = (v45 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
    v43 = v66;
    ++v42;
    v41 = v5;
    ++v40;
    v39 = a2;
    do
    {
      v24 = v58;
      v25 = v61;
      v54(v58, v23, v61);
      v26 = v62;
      v27 = v63;
      (*v50)(v62, v51, v63);
      v28 = static OS_dispatch_queue.global(qos:)();
      (*v49)(v26, v27);
      v29 = *v47;
      v30 = v59;
      (*v47)(v59, v24, v25);
      v31 = v44;
      v32 = swift_allocObject();
      v29((v32 + v46), v30, v25);
      *(v32 + v45) = v56;
      *(v32 + v31) = v39;
      v66[2] = sub_100150620;
      v66[3] = v32;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v66[0] = sub_100006684;
      v66[1] = &unk_10160FC00;
      v33 = _Block_copy(aBlock);

      v34 = v60;
      static DispatchQoS.unspecified.getter();
      v64 = _swiftEmptyArrayStorage;
      sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
      v35 = v41;
      v36 = v57;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v33);

      (*v42)(v35, v36);
      (*v40)(v34, v48);

      v23 += v52;
      --v20;
    }

    while (v20);
  }
}

uint64_t sub_10014EACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  Subscription.subscriber.getter();
  v5 = v11;
  v6 = v12;
  sub_1000035D0(v10, v11);
  v7 = *(v6 + 8);
  type metadata accessor for SPServiceState(0);
  v7(a2, a3, v8, v5, v6);
  return sub_100007BAC(v10);
}

uint64_t sub_10014EB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  Subscription.subscriber.getter();
  v9 = v15;
  v10 = v16;
  sub_1000035D0(v14, v15);
  v11 = *(v10 + 8);
  v12 = sub_1000BC4D4(a4, a5);
  v11(a2, a3, v12, v9, v10);
  return sub_100007BAC(v14);
}

uint64_t sub_10014EC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  Subscription.subscriber.getter();
  v7 = v11;
  v8 = v12;
  sub_1000035D0(v10, v11);
  (*(v8 + 8))(a2, a3, a4, v7, v8);
  return sub_100007BAC(v10);
}

uint64_t sub_10014ECE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v38 = a4;
  v36 = a3;
  v39 = a2;
  v6 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v43 = *(v9 - 8);
  v44 = v9;
  __chkstk_darwin(v9);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DefaultConfigurationLayer(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v18 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_101385D80;
  LOBYTE(aBlock[0]) = v6;
  v20 = String.init<A>(describing:)();
  v22 = v21;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100008C00();
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  os_log(_:dso:log:_:_:)(v17, &_mh_execute_header, v18, "ConfigurationCoordinator new config from %{public}@", 51, 2, v19);

  v23 = *(v39 + 56);
  sub_10001F280(v36, aBlock);

  sub_1008F9008(aBlock, v6, v16);
  v24 = sub_1010738E0(v16, v23);

  sub_100150BA4(v16, type metadata accessor for DefaultConfigurationLayer);
  sub_10013FF08(v24, v38 & 1);

  sub_1000BC488();
  v25 = v37;
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.default(_:), v37);
  v26 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v25);
  v27 = swift_allocObject();
  v29 = v40;
  v28 = v41;
  *(v27 + 16) = v40;
  *(v27 + 24) = v28;
  aBlock[4] = sub_100150F28;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_10160FB88;
  v30 = _Block_copy(aBlock);
  sub_100012908(v29, v28);
  v31 = v42;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1001505C0(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0, &protocol conformance descriptor for [A]);
  v32 = v45;
  v33 = v47;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v46 + 8))(v32, v33);
  (*(v43 + 8))(v31, v44);
}

id *sub_10014F244()
{

  v1 = OBJC_IVAR____TtC12searchpartyd24ConfigurationCoordinator_rootURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_10014F2EC()
{
  sub_10014F244();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfigurationCoordinator(uint64_t a1)
{
  result = qword_101697C10;
  if (!qword_101697C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014F398(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t sub_10014F468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - v7;
  sub_10001F280(a1, aBlock);
  swift_allocObject();
  swift_weakInit();
  sub_1000BC4D4(&qword_101697DC8, &qword_10138CDB8);
  Subscription.init(subscriber:unsubscribeBlock:)();
  v9 = *(v2 + 32);
  (*(v6 + 16))(v8, a2, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  (*(v6 + 32))(v11 + v10, v8, v5);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100150124;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10013A884;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10160FA98;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014F708(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10014F784(a1);
  }

  return result;
}

uint64_t sub_10014F784(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - v5;
  v7 = *(v1 + 32);
  (*(v4 + 16))(aBlock - v5, a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, v6, v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1001502D8;
  *(v10 + 24) = v9;
  aBlock[4] = sub_100150F2C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10160FB10;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10014F9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  (*(v5 + 16))(&v17 - v6, a2, v4);
  swift_beginAccess();
  v8 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_100A5C184(0, v8[2] + 1, 1, v8);
    *(a1 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_100A5C184((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a1 + 16) = v8;
  swift_endAccess();
  v12 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v13 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_101385D80;
  v15 = *(*(a1 + 16) + 16);
  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = v15;
  os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "ConfigurationCoordinator client subscribed. Count is %i", v17);
}

uint64_t sub_10014FC1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v11 = a2;

  *(a1 + 16) = sub_10013E228(sub_100150374, v10, v4, &qword_1016B1E70, &qword_10138CDB0, sub_1011243F4);

  v5 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v6 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  v8 = *(*(a1 + 16) + 16);
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = v8;
  os_log(_:dso:log:_:_:)(v5, &_mh_execute_header, v6, "ConfigurationCoordinator client unsubscribed. Count is %i", v10[0]);
}

BOOL sub_10014FD8C(uint64_t a1, uint64_t a2)
{
  sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  sub_1000041A4(&qword_101697DD0, &qword_1016B1E70, &qword_10138CDB0, &protocol conformance descriptor for Subscription<A>);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

double sub_10014FE30()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_10014FE74(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 16) = a1;
}

uint64_t sub_10014FF3C(uint64_t a1)
{
  v1 = a1;
  v2 = static os_log_type_t.default.getter();
  if (qword_101695088 != -1)
  {
    swift_once();
  }

  v3 = qword_10177C3D0;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101385D80;
  *(v4 + 56) = &type metadata for Bool;
  *(v4 + 64) = &protocol witness table for Bool;
  *(v4 + 32) = v1 & 1;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v3, "FMIP State changed to %i", v7);

  if ((v1 & 1) == 0)
  {
    v6 = static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)(v6, &_mh_execute_header, v3, "ConfigurationCoordinator asking ServiceStateProvider to reset.", 62, 2, _swiftEmptyArrayStorage);
    sub_1000034A4();
    sub_100EEA310();
  }

  return result;
}

uint64_t sub_1001500B0(uint64_t a1)
{
  result = sub_1001505C0(&qword_101697DC0, type metadata accessor for ConfigurationCoordinator, &unk_10138CD38);
  *(a1 + 8) = result;
  return result;
}

Class sub_10015013C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_1001501C8(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 456))(v1, v2);
}

uint64_t sub_100150220@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_1000035D0(a1, v3);
  result = (*(v4 + 464))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_100150280(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000035D0(a1, v1);
  return (*(v2 + 472))(v1, v2);
}

uint64_t sub_1001502F0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

double sub_100150394@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 56);

  return result;
}

uint64_t sub_1001503B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[3] = a7;
  v12[4] = a8;
  v10 = sub_1000280DC(v12);
  (*(*(a7 - 8) + 16))(v10, a1, a7);
  QueueSynchronizer.conditionalSync<A>(_:)();
  return sub_100007BAC(v12);
}

uint64_t sub_10015049C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100150504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001505C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100150638(uint64_t a1)
{
  v3 = *(sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10014EC40(v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1001506F4(uint64_t *a1, uint64_t *a2)
{
  v5 = *(sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_10014EB7C(v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_100150828()
{
  v1 = *(sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10014EACC(v0 + v2, v4, v5);
}

double sub_100150944@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);

  return result;
}

uint64_t sub_100150994()
{
  v1 = sub_1000BC4D4(&qword_1016B1E70, &qword_10138CDB0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

unint64_t sub_100150A64()
{
  result = qword_101697EE0;
  if (!qword_101697EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697EE0);
  }

  return result;
}

unint64_t sub_100150AB8()
{
  result = qword_101697EE8;
  if (!qword_101697EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697EE8);
  }

  return result;
}

uint64_t sub_100150B0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100150BA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100150C04()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100150C48()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemInfoDynamic.MeDeviceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemInfoDynamic.MeDeviceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100150DCC()
{
  result = qword_101697EF0;
  if (!qword_101697EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697EF0);
  }

  return result;
}

unint64_t sub_100150E20(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101607EE8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100150E6C()
{
  result = qword_101697EF8;
  if (!qword_101697EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697EF8);
  }

  return result;
}

void sub_100150FC8(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v5 - 8);
  v77 = &v67 - v6;
  v7 = type metadata accessor for Date();
  v76 = *(v7 - 8);
  __chkstk_darwin(v7);
  v75 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v10 = __chkstk_darwin(v9 - 8);
  v78 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v67 - v12;
  v80 = type metadata accessor for UUID();
  v14 = *(v80 - 8);
  v15 = __chkstk_darwin(v80);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v79 = &v67 - v18;
  if (CKRecord.recordType.getter() == 0xD000000000000012 && 0x800000010138ED40 == v19)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      sub_100153528();
      swift_allocError();
      *v48 = 0;
      swift_willThrow();

      return;
    }
  }

  v73 = v7;
  v74 = v17;
  v72 = v2;
  v21 = [a1 recordID];
  v22 = [v21 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = a1;

  UUID.init(uuidString:)();

  v24 = v14;
  v25 = *(v14 + 48);
  v26 = v80;
  if (v25(v13, 1, v80) == 1)
  {
    sub_10000B3A8(v13, &qword_1016980D0, &unk_10138F3B0);
    sub_100153528();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();

    return;
  }

  v28 = v79;
  v68 = *(v24 + 32);
  v69 = v24 + 32;
  v68(v79, v13, v26);
  v67 = type metadata accessor for KeyAlignmentRecord(0);
  v70 = *(v67 + 20);
  v71 = v24;
  (*(v24 + 16))(&a2[v70], v28, v26);
  v29 = objc_autoreleasePoolPush();
  v30 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  [v23 encodeSystemFieldsWithCoder:v30];
  [v30 finishEncoding];
  v31 = [v30 encodedData];
  v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = a2;
  v35 = v34;

  objc_autoreleasePoolPop(v29);
  *v33 = v32;
  v33[1] = v35;
  v36 = v33;
  v37 = v23;
  v38 = [v23 encryptedValues];
  v39 = String._bridgeToObjectiveC()();
  v40 = [v38 objectForKeyedSubscript:v39];

  if (!v40 || (v82 = v40, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    sub_100153528();
    swift_allocError();
    *v47 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    v46 = *(v71 + 8);
    v44 = v80;
    v46(v79, v80);
    goto LABEL_12;
  }

  v41 = v78;
  UUID.init(uuidString:)();
  v42 = v41;

  v43 = v41;
  v44 = v80;
  if (v25(v43, 1, v80) == 1)
  {
    sub_10000B3A8(v42, &qword_1016980D0, &unk_10138F3B0);
    sub_100153528();
    swift_allocError();
    *v45 = 4;
    swift_willThrow();

    swift_unknownObjectRelease();
    v46 = *(v71 + 8);
    v46(v79, v44);
LABEL_12:
    sub_100016590(*v36, v36[1]);
    v46(v36 + v70, v44);
    return;
  }

  v68(v74, v42, v44);
  v49 = String._bridgeToObjectiveC()();
  v78 = v38;
  v50 = [v38 objectForKeyedSubscript:v49];

  v51 = v71;
  if (!v50 || (v81 = v50, (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:
    v62 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v63 = swift_allocObject();
    *(v63 + 16) = xmmword_101385D80;
    *(v63 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v63 + 64) = sub_10013A2D8();
    *(v63 + 32) = v37;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v64 = v37;
    v65 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v62, &_mh_execute_header, v65, "Invalid KeyAlignmentRecord - %@", 31, 2, v63);

    sub_100153528();
    swift_allocError();
    *v66 = 5;
    swift_willThrow();

    swift_unknownObjectRelease();
    v46 = *(v51 + 8);
    v46(v74, v44);
    v46(v79, v44);
    goto LABEL_12;
  }

  v52 = v82;
  v53 = String._bridgeToObjectiveC()();
  v54 = [v78 objectForKeyedSubscript:v53];

  if (!v54)
  {
    v55 = v77;
    (*(v76 + 56))(v77, 1, 1, v73);
    goto LABEL_20;
  }

  v81 = v54;
  v55 = v77;
  v56 = v73;
  v57 = swift_dynamicCast();
  v58 = v76;
  (*(v76 + 56))(v55, v57 ^ 1u, 1, v56);
  if ((*(v58 + 48))(v55, 1, v56) == 1)
  {
LABEL_20:
    sub_10000B3A8(v55, &unk_101696900, &unk_10138B1E0);
    goto LABEL_21;
  }

  (*(v51 + 8))(v79, v44);

  swift_unknownObjectRelease();
  v59 = *(v58 + 32);
  v60 = v75;
  v59(v75, v55, v56);
  v61 = v67;
  v68(v36 + *(v67 + 24), v74, v44);
  *(v36 + *(v61 + 28)) = v52;
  v59(v36 + *(v61 + 32), v60, v56);
}

uint64_t sub_100151990()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177A500);
  sub_1000076D4(v0, qword_10177A500);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_100151AEC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100151B94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100152B80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100151BC8(uint64_t a1)
{
  v2 = sub_100153414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100151C04(uint64_t a1)
{
  v2 = sub_100153414();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100151C40(uint64_t a1)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100152A28(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 28)));
  type metadata accessor for Date();
  sub_100152A28(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100151D78(uint64_t a1, uint64_t a2)
{
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100152A28(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 28)));
  type metadata accessor for Date();
  sub_100152A28(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100151E94(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  type metadata accessor for UUID();
  sub_100152A28(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 28)));
  type metadata accessor for Date();
  sub_100152A28(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100151FCC(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_101697F48, &unk_10138ED50);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100153414();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v11 = *v3;
  v12 = v9;
  v13 = 0;
  sub_100017D5C(v11, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v11, v12);
  if (!v2)
  {
    type metadata accessor for KeyAlignmentRecord(0);
    LOBYTE(v11) = 1;
    type metadata accessor for UUID();
    sub_100152A28(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v11) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v11) = 4;
    type metadata accessor for Date();
    sub_100152A28(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10015228C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = type metadata accessor for Date();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_1000BC4D4(&qword_101697F20, &qword_10138ED48);
  v36 = *(v11 - 8);
  v37 = v11;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for KeyAlignmentRecord(0);
  __chkstk_darwin(v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100153414();
  v38 = v13;
  v17 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100007BAC(a1);
  }

  v39 = v8;
  v41 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v16 = v40;
  LOBYTE(v40) = 1;
  sub_100152A28(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v18 = v34;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v14;
  v19 = &v16[*(v14 + 20)];
  v20 = *(v35 + 32);
  v20(v19, v10, v18);
  LOBYTE(v40) = 2;
  v21 = v39;
  v28 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v29;
  v20(&v16[*(v29 + 24)], v21, v18);
  LOBYTE(v40) = 3;
  v23 = v37;
  *&v16[*(v22 + 28)] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 4;
  sub_100152A28(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v24 = v33;
  v25 = v22;
  v26 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v36 + 8))(v38, v23);
  (*(v30 + 32))(&v16[*(v25 + 32)], v24, v26);
  sub_100153468(v16, v31);
  sub_100007BAC(a1);
  return sub_1001534CC(v16);
}

void sub_100152870()
{
  v0 = objc_autoreleasePoolPush();
  if (qword_101694460 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for URL();
  sub_1000076D4(v1, qword_10177A500);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:)();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100152958(uint64_t a1)
{
  *(a1 + 8) = sub_100152A28(&unk_101697F00, type metadata accessor for KeyAlignmentRecord, &unk_10138ECE8);
  result = sub_100152A28(&qword_1016B1580, type metadata accessor for KeyAlignmentRecord, &unk_10138ECC0);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for KeyAlignmentRecord(uint64_t a1)
{
  result = qword_101697FF8;
  if (!qword_101697FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100152A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100152A70(uint64_t a1)
{
  result = sub_100152A28(&unk_101697F10, type metadata accessor for KeyAlignmentRecord, &unk_10138ED10);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100152AC8(_BOOL8 *a1, uint64_t *a2)
{
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v4 = type metadata accessor for KeyAlignmentRecord(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || *(a1 + *(v4 + 28)) != *(a2 + *(v4 + 28)))
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

uint64_t sub_100152B80(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134C410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010134C430 == a2)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100152D44(uint64_t a1, id *a2)
{
  v4 = type metadata accessor for Date();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  __chkstk_darwin(v44);
  v47 = &v40 - v6;
  v7 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v8 = __chkstk_darwin(v7 - 8);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v45 = &v40 - v11;
  __chkstk_darwin(v10);
  v46 = &v40 - v12;
  [*a2 encryptedValues];
  swift_getObjectType();
  v13 = type metadata accessor for KeyAlignmentRecord(0);
  v48 = a1;
  v14 = UUID.uuidString.getter();
  v16 = v15;
  CKRecordKeyValueSetting.subscript.getter();
  if (!v52)
  {

    v17 = v48;
    goto LABEL_7;
  }

  if (v14 != v51 || v52 != v16)
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v17 = v48;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_7:
    v19 = UUID.uuidString.getter();
    v53 = &type metadata for String;
    v54 = &protocol witness table for String;
    v51 = v19;
    v52 = v20;
    CKRecordKeyValueSetting.subscript.setter();
    goto LABEL_8;
  }

  v17 = v48;
LABEL_8:
  v21 = *(v17 + *(v13 + 28));
  CKRecordKeyValueSetting.subscript.getter();
  if ((v52 & 1) != 0 || v21 != v51)
  {
    goto LABEL_16;
  }

  v41 = v21;
  v23 = v49;
  v22 = v50;
  v24 = v46;
  (*(v49 + 16))(v46, v17 + *(v13 + 32), v50);
  (*(v23 + 56))(v24, 0, 1, v22);
  v25 = v22;
  v26 = v45;
  CKRecordKeyValueSetting.subscript.getter();
  v27 = *(v44 + 48);
  v28 = v47;
  sub_1000D3410(v24, v47);
  v44 = v27;
  sub_1000D3410(v26, v28 + v27);
  v29 = *(v23 + 48);
  if (v29(v28, 1, v25) != 1)
  {
    v31 = v43;
    sub_1000D3410(v28, v43);
    v32 = v44;
    if (v29(v28 + v44, 1, v25) != 1)
    {
      v37 = v49;
      v38 = v42;
      (*(v49 + 32))(v42, v28 + v32, v25);
      sub_100152A28(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      LODWORD(v44) = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v37 + 8);
      v39(v38, v25);
      sub_10000B3A8(v45, &unk_101696900, &unk_10138B1E0);
      sub_10000B3A8(v46, &unk_101696900, &unk_10138B1E0);
      v39(v31, v25);
      sub_10000B3A8(v47, &unk_101696900, &unk_10138B1E0);
      v17 = v48;
      v21 = v41;
      if (v44)
      {
        return swift_unknownObjectRelease();
      }

      goto LABEL_16;
    }

    sub_10000B3A8(v45, &unk_101696900, &unk_10138B1E0);
    v30 = v47;
    sub_10000B3A8(v46, &unk_101696900, &unk_10138B1E0);
    (*(v49 + 8))(v31, v50);
    goto LABEL_15;
  }

  sub_10000B3A8(v26, &unk_101696900, &unk_10138B1E0);
  v30 = v47;
  sub_10000B3A8(v24, &unk_101696900, &unk_10138B1E0);
  if (v29(v30 + v44, 1, v50) != 1)
  {
LABEL_15:
    sub_10000B3A8(v30, &unk_1016B1660, &unk_10138CE10);
    v17 = v48;
    v21 = v41;
LABEL_16:
    v53 = &type metadata for UInt64;
    v54 = &protocol witness table for UInt64;
    v51 = v21;
    CKRecordKeyValueSetting.subscript.setter();
    v33 = *(v13 + 32);
    v34 = v50;
    v53 = v50;
    v54 = &protocol witness table for Date;
    v35 = sub_1000280DC(&v51);
    (*(v49 + 16))(v35, v17 + v33, v34);
    CKRecordKeyValueSetting.subscript.setter();
    return swift_unknownObjectRelease();
  }

  sub_10000B3A8(v30, &unk_101696900, &unk_10138B1E0);
  return swift_unknownObjectRelease();
}

unint64_t sub_100153414()
{
  result = qword_101697F28;
  if (!qword_101697F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697F28);
  }

  return result;
}

uint64_t sub_100153468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyAlignmentRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001534CC(uint64_t a1)
{
  v2 = type metadata accessor for KeyAlignmentRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100153528()
{
  result = qword_101697F70;
  if (!qword_101697F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101697F70);
  }

  return result;
}

uint64_t sub_1001535C4(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1001536B4()
{
  result = qword_101698048;
  if (!qword_101698048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698048);
  }

  return result;
}

unint64_t sub_10015370C()
{
  result = qword_101698050;
  if (!qword_101698050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698050);
  }

  return result;
}

unint64_t sub_100153764()
{
  result = qword_101698058;
  if (!qword_101698058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698058);
  }

  return result;
}

unint64_t sub_1001537BC()
{
  result = qword_101698060;
  if (!qword_101698060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698060);
  }

  return result;
}

Swift::Int sub_100153828(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100153960(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100153A60(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100153B70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646572616873;
  if (v2 != 1)
  {
    v4 = 6448503;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x72656E776FLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646572616873;
  if (*a2 != 1)
  {
    v8 = 6448503;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72656E776FLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100153C58()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100153CEC(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100153D6C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100153DFC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100154428(*a1);
  *a2 = result;
  return result;
}

void sub_100153E2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646572616873;
  if (v2 != 1)
  {
    v5 = 6448503;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72656E776FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_100153F2C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100153F74(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100153FB8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000BB2CC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1001540A8(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100154198@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100154474(*a1);
  *a2 = result;
  return result;
}

void sub_1001541C8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1835365481;
  v5 = 0xEF736E6F69746163;
  v6 = 0x6F4C657275636573;
  v7 = 0xE300000000000000;
  v8 = 6448503;
  if (v2 != 4)
  {
    v8 = 0x646574726F706D69;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1936094325;
  if (v2 != 1)
  {
    v10 = 0x63616542666C6573;
    v9 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1001542A4()
{
  result = qword_101698080;
  if (!qword_101698080)
  {
    sub_1000BC580(&qword_101698088, qword_10138F080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698080);
  }

  return result;
}

unint64_t sub_1001543CC()
{
  result = qword_101698090;
  if (!qword_101698090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698090);
  }

  return result;
}

unint64_t sub_100154428(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101607F80, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100154474(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101607FE8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001544C0()
{
  result = qword_101698098;
  if (!qword_101698098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698098);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessoryBatteryType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccessoryBatteryType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100154678()
{
  result = qword_1016980A0;
  if (!qword_1016980A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016980A0);
  }

  return result;
}

unint64_t sub_1001546D0()
{
  result = qword_1016980A8;
  if (!qword_1016980A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016980A8);
  }

  return result;
}

unint64_t sub_100154724()
{
  result = qword_1016980B0;
  if (!qword_1016980B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016980B0);
  }

  return result;
}

unint64_t sub_100154778()
{
  result = qword_1016980B8;
  if (!qword_1016980B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016980B8);
  }

  return result;
}

void sub_1001547CC(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000BC4D4(&unk_1016980C0, &unk_10138F3A0);
  __chkstk_darwin(v4 - 8);
  v119 = &v102 - v5;
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v117 = *(v6 - 8);
  v118 = v6;
  v7 = __chkstk_darwin(v6);
  v115 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v116 = &v102 - v10;
  __chkstk_darwin(v9);
  v12 = &v102 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v121 = v13;
  v122 = v14;
  __chkstk_darwin(v13);
  v120 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v102 - v20;
  v124 = type metadata accessor for UUID();
  v22 = *(v124 - 8);
  v23 = __chkstk_darwin(v124);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v123 = &v102 - v26;
  v125 = a1;
  if (CKRecord.recordType.getter() == 0x6365526572616853 && v27 == 0xEB0000000064726FLL)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      sub_100155674();
      swift_allocError();
      *v43 = 0;
      swift_willThrow();

      return;
    }
  }

  v114 = a2;
  v29 = v125;
  v30 = [v125 recordID];
  v31 = [v30 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  UUID.init(uuidString:)();

  v32 = *(v22 + 48);
  v33 = v124;
  if (v32(v21, 1, v124) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    sub_100155674();
    swift_allocError();
    *v34 = 2;
    swift_willThrow();

    return;
  }

  v113 = v22;
  v36 = *(v22 + 32);
  v35 = v22 + 32;
  v112 = v36;
  v36(v123, v21, v33);
  v37 = [v29 encryptedValues];
  ObjectType = swift_getObjectType();
  v38 = String._bridgeToObjectiveC()();
  v39 = [v37 objectForKeyedSubscript:v38];

  if (!v39 || (v128 = v39, sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    sub_100155674();
    swift_allocError();
    *v42 = 3;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v113 + 8))(v123, v124);
    return;
  }

  UUID.init(uuidString:)();

  v40 = v124;
  if (v32(v19, 1, v124) == 1)
  {
    sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
    sub_100155674();
    swift_allocError();
    *v41 = 4;
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v113 + 8))(v123, v40);
    return;
  }

  v44 = v25;
  v110 = v35;
  v112(v25, v19, v40);
  v45 = String._bridgeToObjectiveC()();
  v46 = [v37 objectForKeyedSubscript:v45];

  v47 = v113;
  if (!v46 || (v128 = v46, (swift_dynamicCast() & 1) == 0) || (v48 = _s12searchpartyd20MessagingDestinationV20stringRepresentationACSgSS_tcfC_0(), !v50))
  {
    sub_100155674();
    swift_allocError();
    *v59 = 5;
    swift_willThrow();

LABEL_21:
    swift_unknownObjectRelease();
    v60 = *(v47 + 8);
    v61 = v124;
    v60(v44, v124);
    v60(v123, v61);
    return;
  }

  v51 = v50;
  v107 = v49;
  v108 = v48;
  v52 = String._bridgeToObjectiveC()();
  v53 = [v37 objectForKeyedSubscript:v52];

  if (!v53)
  {

    (*(v122 + 56))(v12, 1, 1, v121);
    goto LABEL_23;
  }

  v109 = v51;
  v126 = v53;
  v54 = v121;
  v55 = swift_dynamicCast();
  v56 = v122;
  v57 = v122 + 56;
  v58 = *(v122 + 56);
  v58(v12, v55 ^ 1u, 1, v54);
  if ((*(v56 + 48))(v12, 1, v54) == 1)
  {

LABEL_23:
    v62 = &unk_101696900;
    v63 = &unk_10138B1E0;
    v64 = v12;
LABEL_24:
    sub_10000B3A8(v64, v62, v63);
LABEL_25:
    v65 = v125;
    v66 = static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_101385D80;
    *(v67 + 56) = sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
    *(v67 + 64) = sub_10013A2D8();
    *(v67 + 32) = v65;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v68 = v65;
    v69 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)(v66, &_mh_execute_header, v69, "Invalid Share Record - %@", 25, 2, v67);

    sub_100155674();
    swift_allocError();
    *v70 = 6;
    swift_willThrow();

    goto LABEL_21;
  }

  v105 = v58;
  v106 = v57;
  v71 = *(v56 + 32);
  v104 = v56 + 32;
  v103 = v71;
  v71(v120, v12, v54);
  v72 = String._bridgeToObjectiveC()();
  v73 = [v37 objectForKeyedSubscript:v72];

  if (v73)
  {
    v126 = v73;
    v74 = v115;
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v122 + 8))(v120, v54);

      v105(v74, 1, 1, v54);
      sub_10000B3A8(v74, &unk_101696900, &unk_10138B1E0);
      v82 = v119;
      (*(v117 + 56))(v119, 1, 1, v118);
      v62 = &unk_1016980C0;
      v63 = &unk_10138F3A0;
      v64 = v82;
      goto LABEL_24;
    }

    v75 = v105;
    v105(v74, 0, 1, v54);
    v76 = v119;
    v103(v119, v74, v54);
    v75(v76, 0, 1, v54);
  }

  else
  {
    v76 = v119;
    v105(v119, 1, 1, v54);
  }

  v77 = v116;
  (*(v117 + 56))(v76, 0, 1, v118);
  sub_1001578A0(v76, v77);
  v78 = String._bridgeToObjectiveC()();
  v79 = [v37 objectForKeyedSubscript:v78];

  if (!v79 || (v128 = v79, (swift_dynamicCast() & 1) == 0))
  {

    sub_10000B3A8(v77, &unk_101696900, &unk_10138B1E0);
    (*(v122 + 8))(v120, v54);
    goto LABEL_25;
  }

  v122 = v126;
  v119 = v127;
  v80 = String._bridgeToObjectiveC()();
  v81 = [v37 objectForKeyedSubscript:v80];

  if (v81 && (v126 = v81, swift_dynamicCast()))
  {
    v118 = v128;
  }

  else
  {
    v118 = 0;
  }

  CKRecordKeyValueSetting.subscript.getter();
  if (v127)
  {
    v83 = 1;
  }

  else
  {
    v83 = v126;
  }

  v84 = _s12searchpartyd20MessagingDestinationV0C4TypeO8rawValueAESgSi_tcfC_0(v83);
  if (v84 == 6)
  {
    v85 = 1;
  }

  else
  {
    v85 = v84;
  }

  LODWORD(v117) = v85;
  v86 = objc_autoreleasePoolPush();
  v87 = [objc_allocWithZone(NSKeyedArchiver) initRequiringSecureCoding:1];
  v88 = v125;
  [v125 encodeSystemFieldsWithCoder:v87];
  [v87 finishEncoding];
  v89 = [v87 encodedData];
  v90 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  objc_autoreleasePoolPop(v86);
  swift_unknownObjectRelease();

  v93 = v114;
  *v114 = v90;
  v93[1] = v92;
  v94 = type metadata accessor for ShareRecord(0);
  v95 = v124;
  v96 = v112;
  v112(v93 + v94[5], v123, v124);
  v96(v93 + v94[6], v44, v95);
  v103(v93 + v94[7], v120, v121);
  sub_1001578A0(v116, v93 + v94[8]);
  v97 = v93 + v94[9];
  *v97 = v108;
  v98 = v109;
  *(v97 + 1) = v107;
  *(v97 + 2) = v98;
  v99 = (v93 + v94[10]);
  v100 = v118;
  v101 = v119;
  *v99 = v122;
  v99[1] = v101;
  *(v93 + v94[11]) = v100;
  *(v93 + v94[12]) = v117;
}

unint64_t sub_100155674()
{
  result = qword_1016980D8;
  if (!qword_1016980D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016980D8);
  }

  return result;
}

uint64_t sub_1001556C8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044B3C(v2, qword_10177A518);
  sub_1000076D4(v0, qword_10177A518);
  if (qword_101694C10 != -1)
  {
    swift_once();
  }

  v5 = sub_1000076D4(v0, qword_10177BA58);
  (*(v1 + 16))(v4, v5, v0);
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100155828(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x7461446572616873;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000011;
    if (a1 != 7)
    {
      v2 = 0x7079546572616873;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6974617269707865;
    if (a1 != 4)
    {
      v3 = 0x6148656572616873;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10015596C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_101698278, &unk_10138F598);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_100157DC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v17 = *v3;
  v18 = v9;
  v20 = 0;
  sub_100017D5C(v17, v9);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100016590(v17, v18);
  }

  else
  {
    sub_100016590(v17, v18);
    v10 = type metadata accessor for ShareRecord(0);
    LOBYTE(v17) = 1;
    type metadata accessor for UUID();
    sub_100157C4C(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 3;
    type metadata accessor for Date();
    sub_100157C4C(&unk_101697F60, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = v3 + *(v10 + 36);
    v12 = *v11;
    v14 = *(v11 + 1);
    v13 = *(v11 + 2);
    LOBYTE(v17) = v12;
    v18 = v14;
    v19 = v13;
    v20 = 5;
    sub_100157F84();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = *(v3 + *(v10 + 48));
    v20 = 8;
    sub_100157FD8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_100155D34(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  Data.hash(into:)();
  v9 = type metadata accessor for ShareRecord(0);
  type metadata accessor for UUID();
  sub_100157C4C(&qword_1016967B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  sub_100157C4C(&unk_101698070, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  sub_1000D3410(v1 + v9[8], v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  Hasher._combine(_:)(*(v1 + v9[9]));
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + v9[11]));
  Hasher._combine(_:)(*(v1 + v9[12]));
}

uint64_t sub_100156010@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v3 - 8);
  v44 = &v40 - v4;
  v48 = type metadata accessor for Date();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v47 = *(v49 - 8);
  v6 = __chkstk_darwin(v49);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v40 - v9;
  v11 = sub_1000BC4D4(&qword_101698250, &qword_10138F590);
  v50 = *(v11 - 8);
  v51 = v11;
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = type metadata accessor for ShareRecord(0);
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_100157DC8();
  v52 = v13;
  v17 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100007BAC(a1);
  }

  v18 = v8;
  v53 = a1;
  v42 = v16;
  v56 = 0;
  sub_1000E307C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v42;
  *v42 = v54;
  LOBYTE(v54) = 1;
  sub_100157C4C(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v20 = v10;
  v21 = v49;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v41 = v14;
  v22 = v20;
  v23 = *(v47 + 32);
  v23(&v19[*(v14 + 20)], v22, v21);
  LOBYTE(v54) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v41;
  v23(&v42[v41[6]], v18, v21);
  LOBYTE(v54) = 3;
  sub_100157C4C(&qword_101697F40, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v25 = v45;
  v26 = v48;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v46 + 32))(&v42[v24[7]], v25, v26);
  LOBYTE(v54) = 4;
  v27 = v44;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v50;
  sub_1001578A0(v27, &v42[v24[8]]);
  v56 = 5;
  sub_100157E1C();
  v29 = v51;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LODWORD(v45) = 1;
  v30 = *(&v54 + 1);
  v31 = v55;
  v32 = &v42[v24[9]];
  *v32 = v54;
  *(v32 + 1) = v30;
  *(v32 + 2) = v31;
  LOBYTE(v54) = 6;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  v34 = v53;
  v35 = &v42[v24[10]];
  *v35 = v33;
  v35[1] = v36;
  LOBYTE(v54) = 7;
  *&v42[v24[11]] = KeyedDecodingContainer.decode(_:forKey:)();
  v56 = 8;
  sub_100157E70();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v28 + 8))(v52, v29);
  v38 = v42;
  v37 = v43;
  v42[v24[12]] = v54;
  sub_100157EC4(v38, v37);
  sub_100007BAC(v34);
  return sub_100157F28(v38);
}

uint64_t sub_100156914@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100158284(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100156948(uint64_t a1)
{
  v2 = sub_100157DC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100156984(uint64_t a1)
{
  v2 = sub_100157DC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001569C0(void **a1)
{
  v2 = v1;
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = *a1;
  [v7 encryptedValues];
  swift_getObjectType();
  v8 = static os_log_type_t.debug.getter();
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  v10 = v7;
  v11 = [v10 description];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = v12;
  *(v9 + 40) = v14;
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v15 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)(v8, &_mh_execute_header, v15, "Updating share record: %@", 25, 2, v9);

  v16 = type metadata accessor for ShareRecord(0);
  v17 = UUID.uuidString.getter();
  *(&v34 + 1) = &type metadata for String;
  v35 = &protocol witness table for String;
  *&v33 = v17;
  *(&v33 + 1) = v18;
  CKRecordKeyValueSetting.subscript.setter();
  v19 = v16[7];
  v20 = type metadata accessor for Date();
  *(&v34 + 1) = v20;
  v35 = &protocol witness table for Date;
  v21 = sub_1000280DC(&v33);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v21, v2 + v19, v20);
  CKRecordKeyValueSetting.subscript.setter();
  sub_1000D3410(v2 + v16[8], v6);
  if ((*(v22 + 48))(v6, 1, v20) == 1)
  {
    sub_10000B3A8(v6, &unk_101696900, &unk_10138B1E0);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  else
  {
    *(&v34 + 1) = v20;
    v35 = &protocol witness table for Date;
    v23 = sub_1000280DC(&v33);
    (*(v22 + 32))(v23, v6, v20);
  }

  CKRecordKeyValueSetting.subscript.setter();
  v24 = v2 + v16[9];
  v26 = *(v24 + 8);
  v25 = *(v24 + 16);
  *(&v34 + 1) = &type metadata for String;
  v35 = &protocol witness table for String;
  *&v33 = v26;
  *(&v33 + 1) = v25;

  CKRecordKeyValueSetting.subscript.setter();
  v27 = (v2 + v16[10]);
  v29 = *v27;
  v28 = v27[1];
  *(&v34 + 1) = &type metadata for String;
  v35 = &protocol witness table for String;
  *&v33 = v29;
  *(&v33 + 1) = v28;

  CKRecordKeyValueSetting.subscript.setter();
  v30 = *(v2 + v16[11]);
  *(&v34 + 1) = &type metadata for UInt64;
  v35 = &protocol witness table for UInt64;
  *&v33 = v30;
  CKRecordKeyValueSetting.subscript.setter();
  v31 = *(v2 + v16[12]);
  *(&v34 + 1) = &type metadata for Int;
  v35 = &protocol witness table for Int;
  *&v33 = v31;
  CKRecordKeyValueSetting.subscript.setter();
  return swift_unknownObjectRelease();
}

Swift::Int sub_100156E00()
{
  Hasher.init(_seed:)();
  sub_100155D34(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100156E44(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_100155D34(v2);
  return Hasher._finalize()();
}

uint64_t sub_100156E80()
{
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for URL();
  sub_1000076D4(v0, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();
}

char *sub_100156F5C()
{
  v1 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v1 - 8);
  v48 = &v46 - v2;
  v3 = type metadata accessor for Date();
  v59 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v55 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v50 = &v46 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v46 - v16;
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = type metadata accessor for ShareRecord(0);
  v21 = v20[5];
  v52 = v8;
  v22 = *(v8 + 16);
  v56 = v19;
  v22(v19, v0 + v21, v7);
  v23 = v0 + v20[6];
  v57 = v17;
  v54 = v7;
  v22(v17, v23, v7);
  v24 = v59;
  v58 = v14;
  UUID.init(uuid:)();
  v45 = 0;
  v53 = v11;
  v25 = v48;
  UUID.init(uuid:)();
  v51 = [objc_opt_self() SPOwner];
  v49 = sub_100EB3708(*(v0 + v20[9]), *(v0 + v20[9] + 8), *(v0 + v20[9] + 16));
  v26 = v50;
  (*(v24 + 16))();
  sub_1000D3410(v0 + v20[8], v25);
  v27 = *(v24 + 48);
  v28 = v27(v25, 1, v3);
  v47 = v3;
  if (v28 == 1)
  {
    static Date.distantFuture.getter();
    if (v27(v25, 1, v3) != 1)
    {
      sub_10000B3A8(v25, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    (*(v24 + 32))(v55, v25, v3);
  }

  v29 = objc_allocWithZone(SPBeaconShare);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v31 = UUID._bridgeToObjectiveC()().super.isa;
  v32 = UUID._bridgeToObjectiveC()().super.isa;
  v33 = v53;
  v34 = UUID._bridgeToObjectiveC()().super.isa;
  v35 = Date._bridgeToObjectiveC()().super.isa;
  v36 = Date._bridgeToObjectiveC()().super.isa;
  LOBYTE(v45) = 0;
  v37 = v29;
  v38 = v51;
  v39 = v49;
  v48 = [v37 initWithIdentifier:isa beaconIdentifier:v31 sharingCircleIdentifier:v32 peerTrustIdentifier:v34 owner:v51 sharee:v49 state:5 creationDate:v35 expirationDate:v36 visitorCount:0 delegationStatus:v45];

  v40 = *(v59 + 8);
  v41 = v47;
  v40(v55, v47);
  v40(v26, v41);
  v42 = *(v52 + 8);
  v43 = v54;
  v42(v33, v54);
  v42(v58, v43);
  v42(v57, v43);
  v42(v56, v43);
  return v48;
}

BOOL sub_10015749C(_BOOL8 *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_1000BC4D4(&unk_1016B1660, &unk_10138CE10);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  v14 = type metadata accessor for ShareRecord(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = v14[8];
  v16 = *(v11 + 48);
  sub_1000D3410(a1 + v15, v13);
  v30 = v16;
  sub_1000D3410(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_1000D3410(v13, v10);
    if (v17(&v13[v30], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v30], v4);
      sub_100157C4C(&qword_101698290, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_10000B3A8(v13, &unk_1016B1660, &unk_10138CE10);
    return 0;
  }

  if (v17(&v13[v30], 1, v4) != 1)
  {
    goto LABEL_10;
  }

  sub_10000B3A8(v13, &unk_101696900, &unk_10138B1E0);
LABEL_12:
  v20 = v14[9];
  v21 = a1 + v20;
  v22 = *(a1 + v20);
  v23 = a2 + v20;
  if (v22 == *v23 && (*(v21 + 1) == *(v23 + 1) && *(v21 + 2) == *(v23 + 2) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (v24 = v14[10], v25 = *(a1 + v24), v26 = *(a1 + v24 + 8), v27 = (a2 + v24), v25 == *v27) && v26 == v27[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      if (*(a1 + v14[11]) == *(a2 + v14[11]))
      {
        return *(a1 + v14[12]) == *(a2 + v14[12]);
      }
    }
  }

  return 0;
}

uint64_t sub_1001578A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ShareRecord(uint64_t a1)
{
  result = qword_1016981C8;
  if (!qword_1016981C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for XPCActivity.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCActivity.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100157AD4(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      sub_100157BAC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100157BAC(uint64_t a1)
{
  if (!qword_1016BA040)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1016BA040);
    }
  }
}

uint64_t sub_100157C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100157C98()
{
  result = qword_101698230;
  if (!qword_101698230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698230);
  }

  return result;
}

uint64_t sub_100157CEC(uint64_t a1)
{
  *(a1 + 8) = sub_100157C4C(&qword_101698238, type metadata accessor for ShareRecord, &unk_10138F508);
  result = sub_100157C4C(&unk_101698240, type metadata accessor for ShareRecord, &unk_10138F4C4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100157D70(uint64_t a1)
{
  result = sub_100157C4C(&unk_1016B15D0, type metadata accessor for ShareRecord, &unk_10138F4EC);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100157DC8()
{
  result = qword_101698258;
  if (!qword_101698258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698258);
  }

  return result;
}

unint64_t sub_100157E1C()
{
  result = qword_101698268;
  if (!qword_101698268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698268);
  }

  return result;
}

unint64_t sub_100157E70()
{
  result = qword_101698270;
  if (!qword_101698270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698270);
  }

  return result;
}

uint64_t sub_100157EC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100157F28(uint64_t a1)
{
  v2 = type metadata accessor for ShareRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100157F84()
{
  result = qword_1016CACE0;
  if (!qword_1016CACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016CACE0);
  }

  return result;
}

unint64_t sub_100157FD8()
{
  result = qword_101698280;
  if (!qword_101698280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698280);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PublishingPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PublishingPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100158180()
{
  result = qword_101698298;
  if (!qword_101698298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698298);
  }

  return result;
}

unint64_t sub_1001581D8()
{
  result = qword_1016982A0;
  if (!qword_1016982A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016982A0);
  }

  return result;
}

unint64_t sub_100158230()
{
  result = qword_1016982A8;
  if (!qword_1016982A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016982A8);
  }

  return result;
}

uint64_t sub_100158284(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461446572616873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6148656572616873 && a2 == 0xEC000000656C646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013477D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010134C4B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7079546572616873 && a2 == 0xE900000000000065)
  {

    return 8;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_100158588(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_101698498, &unk_10138FC80);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_1000035D0(a1, a1[3]);
  sub_10015DF0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_100017D5C(a2, a3);
  sub_1000E3190();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100016590(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

Swift::Int ProximityPairingStatsCommandPayload.Error.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100158734(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10015878C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100158814(uint64_t a1)
{
  v2 = sub_10015DF0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100158850(uint64_t a1)
{
  v2 = sub_10015DF0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10015888C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  else
  {
    v5 = Data.trimmed.getter();
    v6 = v7;
  }

  result = sub_100016590(v3, v4);
  *a2 = v5;
  a2[1] = v6;
  return result;
}

void *sub_100158918@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10015D9B8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int sub_100158960()
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001589B4(uint64_t a1)
{
  Hasher.init(_seed:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001589FC()
{
  v0 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v0 - 8);
  static String.Encoding.utf8.getter();
  result = String.init(data:encoding:)();
  if (!v2)
  {
    return Data.hexString.getter();
  }

  return result;
}

uint64_t sub_100158AA8()
{
  v1 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v1 - 8);
  _StringGuts.grow(_:)(25);

  type metadata accessor for UUID();
  sub_10015DFC8(&qword_101696930, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0x203A4E5320;
  v3._object = 0xE500000000000000;
  String.append(_:)(v3);
  v4 = type metadata accessor for LocalFindableAccessoryRecord(0);
  static String.Encoding.utf8.getter();
  v5 = String.init(data:encoding:)();
  if (!v6)
  {
    v5 = Data.hexString.getter();
  }

  String.append(_:)(*&v5);

  v7._countAndFlagsBits = 0x203A4E53746C4120;
  v7._object = 0xE800000000000000;
  String.append(_:)(v7);
  sub_10002E98C(*(v0 + *(v4 + 32)), *(v0 + *(v4 + 32) + 8));
  sub_1000BC4D4(&qword_101698358, &unk_10138F780);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);
  return 0x203A64693CLL;
}

unint64_t sub_100158C8C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000012;
    v7 = 0x4B65746176697270;
    if (a1 != 10)
    {
      v7 = 0x697274656D6D7973;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6449726F646E6576;
    v9 = 0x49746375646F7270;
    if (a1 != 7)
    {
      v9 = 0x45676E6972696170;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0xD000000000000015;
    v3 = 0xD000000000000015;
    if (a1 != 4)
    {
      v3 = 0x64496E6D66;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6C65646F6DLL;
    if (a1 != 1)
    {
      v4 = 0x65566D6574737973;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100158E30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10015DB2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100158E64(uint64_t a1)
{
  v2 = sub_10015D228();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100158EA0(uint64_t a1)
{
  v2 = sub_10015D228();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100158F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100014650;

  return CloudBacked.creationDate(store:)(a1, a2, a3, a4);
}

uint64_t sub_100158FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100014744;

  return CloudBacked.modificationDate(store:)(a1, a2, a3, a4);
}

uint64_t sub_1001590A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100159154;

  return CloudBacked.recordChangeTag(store:)(a1, a2, a3);
}

uint64_t sub_100159154(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

void sub_10015927C(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_101698360, &qword_1013E35F0);
  __chkstk_darwin(v4 - 8);
  v153 = &v136 - v5;
  v6 = type metadata accessor for SymmetricKey256();
  v151 = *(v6 - 8);
  v152 = v6;
  __chkstk_darwin(v6);
  v150 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101698368, &unk_10138F790);
  __chkstk_darwin(v8 - 8);
  v155 = &v136 - v9;
  v10 = type metadata accessor for P256PrivateKey();
  v159 = *(v10 - 8);
  __chkstk_darwin(v10);
  v154 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for PeripheralConnectionMaterial(0);
  __chkstk_darwin(v156);
  v158 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v136 - v17;
  v19 = type metadata accessor for UUID();
  v162 = *(v19 - 8);
  v20 = __chkstk_darwin(v19);
  v22 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v160 = &v136 - v23;
  if (CKRecord.recordType.getter() == 0xD00000000000001CLL && 0x800000010138F780 == v24)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
      sub_10015D384();
      swift_allocError();
      *v64 = 0;
      goto LABEL_17;
    }
  }

  v146 = v22;
  v148 = v10;
  v26 = [a1 recordID];
  v27 = [v26 recordName];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v161 = v19;

  UUID.init(uuidString:)();
  v28 = v161;

  v29 = v162;
  v30 = *(v162 + 48);
  if (v30(v18, 1, v28) == 1)
  {
    sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    sub_10015D384();
    swift_allocError();
    *v31 = 1;
LABEL_17:
    swift_willThrow();

    return;
  }

  v145 = v30;
  v32 = v160;
  v144 = *(v29 + 32);
  v144(v160, v18, v28);
  v147 = a1;
  v33 = [a1 encryptedValues];
  v34 = *(v29 + 16);
  v149 = a2;
  v34(a2, v32, v28);
  v35 = String._bridgeToObjectiveC()();
  v36 = [v33 objectForKeyedSubscript:v35];

  if (!v36 || (v165 = v36, v37 = sub_1000BC4D4(&unk_101698140, &unk_10138ED80), (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v63 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v42 = v161;
LABEL_19:
    v66 = *(v162 + 8);
    v66(v160, v42);
    v66(v149, v42);
    return;
  }

  v141 = v34;
  v142 = v37;
  v38 = v163;
  v39 = v164;
  v40 = String._bridgeToObjectiveC()();
  v143 = v33;
  v41 = [v33 objectForKeyedSubscript:v40];

  v42 = v161;
  v43 = v147;
  if (!v41 || (v165 = v41, (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v65 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v38, v39);
    goto LABEL_19;
  }

  v139 = v38;
  v44 = v163;
  v45 = v164;
  v46 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v47 = &v149[*(v46 + 20)];
  *v47 = v44;
  v47[1] = v45;
  v48 = String._bridgeToObjectiveC()();
  v49 = [v143 objectForKeyedSubscript:v48];

  v50 = v161;
  v140 = v46;
  if (!v49 || (v165 = v49, (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v139, v39);
    v58 = *(v162 + 8);
    v58(v160, v50);
    v62 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    LODWORD(v162) = 0;
    goto LABEL_22;
  }

  v51 = v164;
  v52 = v149;
  v53 = &v149[*(v46 + 24)];
  *v53 = v163;
  *(v53 + 1) = v51;
  v54 = v46;
  v55 = v39;
  v56 = v139;
  v163 = v139;
  v164 = v55;
  sub_100017D5C(v139, v55);
  v138 = sub_1000E0A3C();
  if (DataProtocol.isNull.getter())
  {
    sub_100016590(v56, v55);
    sub_10015D384();
    swift_allocError();
    *v57 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v56, v55);
    v50 = v161;
    v58 = *(v162 + 8);
    v58(v160, v161);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    LODWORD(v162) = 0;
    v62 = 1;
    goto LABEL_22;
  }

  v72 = Data.trimmed.getter();
  v137 = v73;
  sub_100016590(v56, v55);
  v74 = &v52[*(v54 + 28)];
  v75 = v137;
  *v74 = v72;
  v74[1] = v75;
  v76 = String._bridgeToObjectiveC()();
  v77 = [v143 objectForKeyedSubscript:v76];

  v78 = v55;
  if (v77)
  {
    v165 = v77;
    v79 = swift_dynamicCast();
    p_weak_ivar_lyt = (&ShareStopUseCase + 56);
    v81 = v147;
    if (v79)
    {
      v82 = v147;
      v83 = v163;
      v84 = v164;
      if (DataProtocol.isNull.getter())
      {
        sub_100016590(v83, v84);
        v77 = 0;
        v85 = 0xF000000000000000;
      }

      else
      {
        v77 = Data.trimmed.getter();
        v86 = v83;
        v85 = v87;
        sub_100016590(v86, v84);
      }

      v81 = v82;
      p_weak_ivar_lyt = &ShareStopUseCase.weak_ivar_lyt;
    }

    else
    {
      v77 = 0;
      v85 = 0xF000000000000000;
    }
  }

  else
  {
    v85 = 0xF000000000000000;
    p_weak_ivar_lyt = (&ShareStopUseCase + 56);
    v81 = v147;
  }

  v88 = &v149[v140[8]];
  *v88 = v77;
  *(v88 + 1) = v85;
  v89 = String._bridgeToObjectiveC()();
  v90 = [v143 p:v89 weak:? ivar:?lyt[430]];

  v50 = v161;
  if (!v90)
  {
    goto LABEL_45;
  }

  v165 = v90;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_45;
  }

  v138 = v78;
  v92 = v163;
  v91 = v164;
  sub_100017D5C(v163, v164);
  UUID.init(data:)();
  if (v145(v16, 1, v50) == 1)
  {
    sub_100016590(v92, v91);
    sub_10000B3A8(v16, &qword_1016980D0, &unk_10138F3B0);
    v78 = v138;
LABEL_45:
    sub_10015D384();
    swift_allocError();
    *v93 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v139, v78);
    v58 = *(v162 + 8);
    v58(v160, v50);
    v60 = 0;
    v61 = 0;
    LODWORD(v162) = 0;
    v62 = 1;
    v59 = 1;
    goto LABEL_22;
  }

  v145 = v92;
  v137 = v91;
  v94 = v146;
  v144(v146, v16, v50);
  v95 = v149;
  v141(&v149[v140[9]], v94, v50);
  v96 = String._bridgeToObjectiveC()();
  v97 = [v143 p:v96 weak:? ivar:?lyt[430]];

  v98 = v162;
  v99 = v138;
  if (!v97 || (v163 = v97, (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v111 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    sub_100016590(v145, v137);
    sub_100016590(v139, v99);
    v58 = *(v98 + 8);
    v58(v94, v50);
LABEL_61:
    v58(v160, v50);
LABEL_62:
    v61 = 0;
    LODWORD(v162) = 0;
    v62 = 1;
    v59 = 1;
    v60 = 1;
    goto LABEL_22;
  }

  *&v95[v140[10]] = v165;
  v100 = String._bridgeToObjectiveC()();
  v101 = [v143 p:v100 weak:? ivar:?lyt[430]];

  v102 = v145;
  if (!v101 || (v163 = v101, (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v112 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v113 = v102;
LABEL_60:
    sub_100016590(v113, v137);
    sub_100016590(v139, v99);
    v58 = *(v98 + 8);
    v58(v146, v50);
    goto LABEL_61;
  }

  *&v95[v140[12]] = v165;
  v103 = String._bridgeToObjectiveC()();
  v104 = [v143 p:v103 weak:? ivar:?lyt[430]];

  if (!v104)
  {
LABEL_59:
    sub_10015D384();
    swift_allocError();
    *v114 = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v113 = v145;
    goto LABEL_60;
  }

  v105 = v99;
  v163 = v104;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v50 = v161;
    v98 = v162;
    v81 = v147;
    goto LABEL_59;
  }

  *&v149[v140[11]] = v165;
  v106 = String._bridgeToObjectiveC()();
  v107 = [v143 objectForKeyedSubscript:v106];

  if (!v107 || (v165 = v107, (swift_dynamicCast() & 1) == 0))
  {
    sub_10015D384();
    swift_allocError();
    *v115 = 0;
    swift_willThrow();
    goto LABEL_64;
  }

  v108 = v163;
  v109 = v164;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_10015DFC8(&qword_101698310, type metadata accessor for PeripheralConnectionMaterial, &unk_101394FA8);
  v110 = v157;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v110)
  {

    sub_100016590(v108, v109);
LABEL_64:
    swift_unknownObjectRelease();

    sub_100016590(v145, v137);
    sub_100016590(v139, v99);
    v50 = v161;
    v58 = *(v162 + 8);
    v58(v146, v161);
    v58(v160, v50);
    goto LABEL_62;
  }

  sub_10015D3D8(v158, &v149[v140[13]], type metadata accessor for PeripheralConnectionMaterial);
  v116 = String._bridgeToObjectiveC()();
  v117 = [v143 objectForKeyedSubscript:v116];

  if (!v117)
  {
    goto LABEL_69;
  }

  v165 = v117;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_69;
  }

  v119 = v163;
  v118 = v164;
  sub_100017D5C(v163, v164);
  sub_10015DFC8(&qword_1016982E0, &type metadata accessor for P256PrivateKey, &protocol conformance descriptor for P256PrivateKey);
  v120 = v155;
  v121 = v148;
  KeyRepresenting.init(rawValue:)();
  if ((*(v159 + 48))(v120, 1, v121) == 1)
  {
    sub_100016590(v119, v118);
    sub_10000B3A8(v155, &unk_101698368, &unk_10138F790);
LABEL_69:
    sub_10015D384();
    swift_allocError();
    *v122 = 0;
    swift_willThrow();
    sub_100016590(v108, v109);
    swift_unknownObjectRelease();

    sub_100016590(v145, v137);
    sub_100016590(v139, v105);
    sub_10015D2D0(v158, type metadata accessor for PeripheralConnectionMaterial);
    v50 = v161;
    v58 = *(v162 + 8);
    v58(v146, v161);
    v58(v160, v50);
    LODWORD(v162) = 0;
    v62 = 1;
    v59 = 1;
    v60 = 1;
    v61 = 1;
    goto LABEL_22;
  }

  v123 = v159;
  v124 = v154;
  v125 = v148;
  (*(v159 + 32))(v154, v155, v148);
  (*(v123 + 16))(&v149[v140[14]], v124, v125);
  v126 = String._bridgeToObjectiveC()();
  v127 = [v143 objectForKeyedSubscript:v126];

  if (v127)
  {
    v165 = v127;
    if (swift_dynamicCast())
    {
      sub_10015DFC8(&qword_1016982E8, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
      v128 = v153;
      v129 = v152;
      KeyRepresenting.init(rawValue:)();
      if ((*(v151 + 48))(v128, 1, v129) != 1)
      {
        sub_100016590(v108, v109);
        swift_unknownObjectRelease();

        sub_100016590(v119, v118);
        sub_100016590(v145, v137);
        sub_100016590(v139, v105);
        (*(v159 + 8))(v154, v148);
        sub_10015D2D0(v158, type metadata accessor for PeripheralConnectionMaterial);
        v131 = v161;
        v132 = *(v162 + 8);
        v132(v146, v161);
        v132(v160, v131);
        v133 = v150;
        v134 = *(v151 + 32);
        v135 = v152;
        v134(v150, v153, v152);
        v134(&v149[v140[15]], v133, v135);
        return;
      }

      sub_10000B3A8(v153, &qword_101698360, &qword_1013E35F0);
    }
  }

  sub_10015D384();
  swift_allocError();
  *v130 = 0;
  swift_willThrow();
  sub_100016590(v108, v109);
  swift_unknownObjectRelease();

  sub_100016590(v119, v118);
  sub_100016590(v145, v137);
  sub_100016590(v139, v105);
  (*(v159 + 8))(v154, v148);
  sub_10015D2D0(v158, type metadata accessor for PeripheralConnectionMaterial);
  v50 = v161;
  v58 = *(v162 + 8);
  v58(v146, v161);
  v58(v160, v50);
  v62 = 1;
  v59 = 1;
  v60 = 1;
  v61 = 1;
  LODWORD(v162) = 1;
LABEL_22:
  v58(v149, v50);

  if (v62)
  {

    v68 = v148;
    if ((v59 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v68 = v148;
    if (!v59)
    {
LABEL_24:
      v69 = v140;
      if (v60)
      {
        goto LABEL_25;
      }

      goto LABEL_30;
    }
  }

  v69 = v140;
  v71 = v149;
  sub_100016590(*&v149[v140[7]], *&v149[v140[7] + 8]);
  sub_100006654(*&v71[v69[8]], *&v71[v69[8] + 8]);
  if (v60)
  {
LABEL_25:
    v58(&v149[v69[9]], v161);
    if ((v61 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!v61)
  {
LABEL_26:
    v70 = v149;
    if (v162)
    {
      goto LABEL_32;
    }

    return;
  }

LABEL_31:
  v70 = v149;
  sub_10015D2D0(&v149[v69[13]], type metadata accessor for PeripheralConnectionMaterial);
  if (v162)
  {
LABEL_32:
    (*(v159 + 8))(&v70[v69[14]], v68);
  }
}

uint64_t sub_10015AA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000D2118;

  return CloudBacked.ckRecord(store:)(a1, a2, a3);
}

uint64_t sub_10015AAC0(id *a1)
{
  v2 = [*a1 encryptedValues];
  swift_getObjectType();
  v3 = type metadata accessor for LocalFindableAccessoryRecord(0);

  CKRecordKeyValueSetting.subscript.setter();

  CKRecordKeyValueSetting.subscript.setter();
  sub_100017D5C(*(v1 + *(v3 + 28)), *(v1 + *(v3 + 28) + 8));
  CKRecordKeyValueSetting.subscript.setter();
  v4 = (v1 + *(v3 + 32));
  v5 = v4[1];
  if (v5 >> 60 == 15)
  {
    v6 = String._bridgeToObjectiveC()();
    [v2 setObject:0 forKeyedSubscript:v6];
  }

  else
  {
    v7 = *v4;
    sub_10002E98C(*v4, v5);
    sub_100017D5C(v7, v5);
    CKRecordKeyValueSetting.subscript.setter();
    sub_100006654(v7, v5);
  }

  UUID.data.getter();
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();
  CKRecordKeyValueSetting.subscript.setter();
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for PeripheralConnectionMaterial(0);
  sub_10015DFC8(&unk_1016982D0, type metadata accessor for PeripheralConnectionMaterial, &unk_101394F80);
  dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  CKRecordKeyValueSetting.subscript.setter();
  type metadata accessor for P256PrivateKey();
  sub_10015DFC8(&qword_1016982E0, &type metadata accessor for P256PrivateKey, &protocol conformance descriptor for P256PrivateKey);
  KeyRepresenting.rawValue.getter();
  CKRecordKeyValueSetting.subscript.setter();
  type metadata accessor for SymmetricKey256();
  sub_10015DFC8(&qword_1016982E8, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
  KeyRepresenting.rawValue.getter();
  CKRecordKeyValueSetting.subscript.setter();

  return swift_unknownObjectRelease();
}

uint64_t sub_10015B13C(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000BC4D4(&qword_1016A9A30, &unk_1013BD120);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v77 - v10;
  v12 = *(a3 - 8);
  __chkstk_darwin(v9);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v16 = *(v15 - 1);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, a3);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (!v19)
  {
    v20(v11, 1, 1, v15);
    sub_10000B3A8(v11, &qword_1016A9A30, &unk_1013BD120);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v20(v11, 0, 1, v15);
  sub_10015DF60(v11, v18, type metadata accessor for LocalFindableAccessoryRecord);
  v21 = [*a1 encryptedValues];
  swift_getObjectType();
  v22 = v15[5];
  v23 = *&v18[v22];
  v24 = *&v18[v22 + 8];
  v25 = (v4 + v22);
  v27 = *v25;
  v26 = v25[1];
  v28 = v23 == *v25 && v24 == v26;
  if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v80 = &type metadata for String;
    v81 = &protocol witness table for String;
    v78 = v27;
    v79 = v26;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v29 = v15[6];
  v30 = *&v18[v29];
  v31 = *&v18[v29 + 8];
  v32 = (v4 + v29);
  v34 = *v32;
  v33 = v32[1];
  v35 = v30 == *v32 && v31 == v33;
  if (!v35 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v80 = &type metadata for String;
    v81 = &protocol witness table for String;
    v78 = v34;
    v79 = v33;

    CKRecordKeyValueSetting.subscript.setter();
  }

  v36 = v15[7];
  v37 = *&v18[v36];
  v38 = *&v18[v36 + 8];
  v39 = (v4 + v36);
  v40 = *v39;
  v41 = v39[1];
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v37, v38, *v39, v41))
  {
    v80 = &type metadata for Data;
    v81 = &protocol witness table for Data;
    v78 = v40;
    v79 = v41;
    sub_100017D5C(v40, v41);
    CKRecordKeyValueSetting.subscript.setter();
  }

  v42 = v15[8];
  v43 = &v18[v42];
  v44 = *&v18[v42 + 8];
  v45 = (v4 + v42);
  if (v44 >> 60 == 15)
  {
    v46 = v45[1];
    if (v46 >> 60 != 15)
    {
      v47 = *v45;
      v80 = &type metadata for Data;
      v81 = &protocol witness table for Data;
      v78 = v47;
      v79 = v46;
      sub_10002E98C(v47, v46);
      sub_100017D5C(v47, v46);
      CKRecordKeyValueSetting.subscript.setter();
      v48 = v47;
      v49 = v46;
LABEL_25:
      sub_100006654(v48, v49);
    }
  }

  else
  {
    v50 = *v43;
    v51 = v45[1];
    if (v51 >> 60 != 15)
    {
      v53 = *v45;
      sub_10002E98C(v50, v44);
      sub_10002E98C(v53, v51);
      if (_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v50, v44, v53, v51))
      {
        sub_100006654(v50, v44);
        sub_100006654(v53, v51);
        goto LABEL_26;
      }

      v80 = &type metadata for Data;
      v81 = &protocol witness table for Data;
      v78 = v53;
      v79 = v51;
      sub_100017D5C(v53, v51);
      CKRecordKeyValueSetting.subscript.setter();
      sub_100006654(v50, v44);
      v48 = v53;
      v49 = v51;
      goto LABEL_25;
    }

    sub_100017D5C(v50, v44);
    v52 = String._bridgeToObjectiveC()();
    [v21 setObject:0 forKeyedSubscript:v52];

    sub_100006654(v50, v44);
  }

LABEL_26:
  type metadata accessor for UUID();
  sub_10015DFC8(&qword_1016984A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v54 = UUID.data.getter();
    v80 = &type metadata for Data;
    v81 = &protocol witness table for Data;
    v78 = v54;
    v79 = v55;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v56 = v15[10];
  v57 = *&v18[v56];
  v58 = *(v4 + v56);
  if (v57 != v58)
  {
    v80 = &type metadata for Int;
    v81 = &protocol witness table for Int;
    v78 = v58;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v59 = v15[11];
  v60 = *&v18[v59];
  v61 = *(v4 + v59);
  if (v60 != v61)
  {
    v80 = &type metadata for Int;
    v81 = &protocol witness table for Int;
    v78 = v61;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v62 = v15[12];
  v63 = *&v18[v62];
  v64 = *(v4 + v62);
  if (v63 != v64)
  {
    v80 = &type metadata for Int64;
    v81 = &protocol witness table for Int64;
    v78 = v64;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v65 = v15[13];
  v66 = &v18[v65];
  v67 = v4 + v65;
  if ((static MACAddress.== infix(_:_:)() & 1) == 0 || (v68 = type metadata accessor for PeripheralConnectionMaterial(0), !_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*&v66[*(v68 + 20)], *&v66[*(v68 + 20) + 8], *(v67 + *(v68 + 20)), *(v67 + *(v68 + 20) + 8))))
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    type metadata accessor for PeripheralConnectionMaterial(0);
    sub_10015DFC8(&unk_1016982D0, type metadata accessor for PeripheralConnectionMaterial, &unk_101394F80);
    v69 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v71 = v70;

    v80 = &type metadata for Data;
    v81 = &protocol witness table for Data;
    v78 = v69;
    v79 = v71;
    CKRecordKeyValueSetting.subscript.setter();
  }

  type metadata accessor for P256PrivateKey();
  sub_10015DFC8(&qword_1016984A8, &type metadata accessor for P256PrivateKey, &protocol conformance descriptor for P256PrivateKey);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v72 = P256PrivateKey.data.getter();
    v80 = &type metadata for Data;
    v81 = &protocol witness table for Data;
    v78 = v72;
    v79 = v73;
    CKRecordKeyValueSetting.subscript.setter();
  }

  type metadata accessor for SymmetricKey256();
  sub_10015DFC8(&qword_1016984B0, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    sub_10015D2D0(v18, type metadata accessor for LocalFindableAccessoryRecord);
    return swift_unknownObjectRelease();
  }

  else
  {
    v75 = SymmetricKey256.data.getter();
    v80 = &type metadata for Data;
    v81 = &protocol witness table for Data;
    v78 = v75;
    v79 = v76;
    CKRecordKeyValueSetting.subscript.setter();
    swift_unknownObjectRelease();
    return sub_10015D2D0(v18, type metadata accessor for LocalFindableAccessoryRecord);
  }
}

uint64_t sub_10015BC70(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_101698328, &qword_10138F778);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  sub_1000035D0(a1, a1[3]);
  sub_10015D228();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  type metadata accessor for UUID();
  sub_10015DFC8(&qword_101698330, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for LocalFindableAccessoryRecord(0);
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v18 = 3;
    sub_100017D5C(v16, v11);
    v15[1] = sub_10015D330();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v16, v17);
    v12 = (v3 + *(v9 + 32));
    v13 = v12[1];
    v16 = *v12;
    v17 = v13;
    v18 = 4;
    sub_10002E98C(v16, v13);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100006654(v16, v17);
    LOBYTE(v16) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v16) = 9;
    type metadata accessor for PeripheralConnectionMaterial(0);
    sub_10015DFC8(&unk_1016982D0, type metadata accessor for PeripheralConnectionMaterial, &unk_101394F80);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 10;
    type metadata accessor for P256PrivateKey();
    sub_10015DFC8(&qword_101698340, &type metadata accessor for P256PrivateKey, &protocol conformance descriptor for P256PrivateKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v16) = 11;
    type metadata accessor for SymmetricKey256();
    sub_10015DFC8(&unk_101698348, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10015C140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = type metadata accessor for SymmetricKey256();
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for P256PrivateKey();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v38 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for PeripheralConnectionMaterial(0);
  __chkstk_darwin(v39);
  v40 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v43 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = v31 - v11;
  v46 = sub_1000BC4D4(&qword_1016982F0, &qword_10138F770);
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = v31 - v12;
  v14 = type metadata accessor for LocalFindableAccessoryRecord(0);
  __chkstk_darwin(v14);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035D0(a1, a1[3]);
  sub_10015D228();
  v47 = v13;
  v17 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return sub_100007BAC(a1);
  }

  v18 = v10;
  v32 = v14;
  v33 = a1;
  v48 = v16;
  LOBYTE(v49) = 0;
  v19 = sub_10015DFC8(&qword_101698300, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31[1] = v19;
  v20 = *(v43 + 32);
  v21 = v48;
  v20(v48, v45, v7);
  LOBYTE(v49) = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v31[2] = v7;
  v23 = v32;
  v24 = &v21[v32[5]];
  *v24 = v22;
  v24[1] = v25;
  LOBYTE(v49) = 2;
  v45 = 0;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = &v21[v23[6]];
  *v27 = v26;
  v27[1] = v28;
  v50 = 3;
  sub_10015D27C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *&v21[v23[7]] = v49;
  v50 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *&v21[v23[8]] = v49;
  LOBYTE(v49) = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20(&v21[v23[9]], v18, v7);
  LOBYTE(v49) = 6;
  *&v21[v23[10]] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49) = 7;
  *&v21[v23[11]] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49) = 8;
  *&v48[v32[12]] = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v49) = 9;
  sub_10015DFC8(&qword_101698310, type metadata accessor for PeripheralConnectionMaterial, &unk_101394FA8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10015DF60(v40, &v48[v32[13]], type metadata accessor for PeripheralConnectionMaterial);
  LOBYTE(v49) = 10;
  sub_10015DFC8(&qword_101698318, &type metadata accessor for P256PrivateKey, &protocol conformance descriptor for P256PrivateKey);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v41 + 32))(&v48[v32[14]], v38, v42);
  LOBYTE(v49) = 11;
  sub_10015DFC8(&qword_101698320, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 8))(v47, v46);
  v29 = v48;
  (*(v34 + 32))(&v48[v32[15]], v36, v37);
  sub_10015D3D8(v29, v35, type metadata accessor for LocalFindableAccessoryRecord);
  sub_100007BAC(v33);
  return sub_10015D2D0(v29, type metadata accessor for LocalFindableAccessoryRecord);
}

uint64_t sub_10015CC18(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_10015CC50(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 24));

  return v2;
}

uint64_t sub_10015CCE0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10015CD88(uint64_t a1)
{
  *(a1 + 8) = sub_10015DFC8(&qword_1016982B0, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F6E8);
  result = sub_10015DFC8(&qword_1016982B8, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F6C0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10015CE0C(uint64_t a1)
{
  result = sub_10015DFC8(&qword_1016982C0, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F710);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10015CE64(uint64_t a1)
{
  result = sub_10015DFC8(&qword_1016982C8, type metadata accessor for LocalFindableAccessoryRecord, &unk_10138F72C);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_10015CEBC(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for LocalFindableAccessoryRecord(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || !_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + v4[7]), *(a1 + v4[7] + 8), *(a2 + v4[7]), *(a2 + v4[7] + 8)))
  {
    return 0;
  }

  v15 = v4[8];
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v20 = *v18;
  v19 = v18[1];
  if (v16 >> 60 != 15)
  {
    if (v19 >> 60 != 15)
    {
      sub_10002E98C(v17, v16);
      sub_10002E98C(v20, v19);
      v21 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v17, v16, v20, v19);
      sub_100006654(v20, v19);
      sub_100006654(v17, v16);
      if (v21)
      {
        goto LABEL_19;
      }

      return 0;
    }

LABEL_17:
    sub_10002E98C(v17, v16);
    sub_10002E98C(v20, v19);
    sub_100006654(v17, v16);
    sub_100006654(v20, v19);
    return 0;
  }

  if (v19 >> 60 != 15)
  {
    goto LABEL_17;
  }

  sub_10002E98C(v17, v16);
  sub_10002E98C(v20, v19);
  sub_100006654(v17, v16);
LABEL_19:
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[10]) != *(a2 + v4[10]))
  {
    return 0;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  if (*(a1 + v4[12]) != *(a2 + v4[12]))
  {
    return 0;
  }

  v22 = v4[13];
  v23 = a1 + v22;
  v24 = a2 + v22;
  if ((static MACAddress.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v25 = type metadata accessor for PeripheralConnectionMaterial(0);
  if (!_s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(*(v23 + *(v25 + 20)), *(v23 + *(v25 + 20) + 8), *(v24 + *(v25 + 20)), *(v24 + *(v25 + 20) + 8)))
  {
    return 0;
  }

  type metadata accessor for P256PrivateKey();
  sub_10015DFC8(&qword_1016984B8, &type metadata accessor for P256PrivateKey, &protocol conformance descriptor for P256PrivateKey);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v26 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v32, v29, v30);
  sub_100016590(v29, v30);
  sub_100016590(v31, v32);
  if (!v26)
  {
    return 0;
  }

  type metadata accessor for SymmetricKey256();
  sub_10015DFC8(&qword_1016984C0, &type metadata accessor for SymmetricKey256, &protocol conformance descriptor for SymmetricKey256);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v27 = _s12searchpartyd24KeyRepresentableInternalV23__derived_struct_equalsySbAC_ACtFZ_0(v31, v32, v29, v30);
  sub_100016590(v29, v30);
  sub_100016590(v31, v32);
  return v27;
}

unint64_t sub_10015D228()
{
  result = qword_1016982F8;
  if (!qword_1016982F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016982F8);
  }

  return result;
}

unint64_t sub_10015D27C()
{
  result = qword_101698308;
  if (!qword_101698308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698308);
  }

  return result;
}

uint64_t sub_10015D2D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10015D330()
{
  result = qword_101698338;
  if (!qword_101698338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698338);
  }

  return result;
}

unint64_t sub_10015D384()
{
  result = qword_101698378;
  if (!qword_101698378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698378);
  }

  return result;
}

uint64_t sub_10015D3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for AccessoryPairingCoordinator.PairingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessoryPairingCoordinator.PairingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10015D5D8(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_10015D6D8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for PeripheralConnectionMaterial(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for P256PrivateKey();
        if (v4 <= 0x3F)
        {
          type metadata accessor for SymmetricKey256();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10015D6D8()
{
  if (!qword_1016983E8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016983E8);
    }
  }
}

unint64_t sub_10015D774()
{
  result = qword_101698448;
  if (!qword_101698448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698448);
  }

  return result;
}

unint64_t sub_10015D7CC()
{
  result = qword_101698450;
  if (!qword_101698450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698450);
  }

  return result;
}

unint64_t sub_10015D824()
{
  result = qword_101698458;
  if (!qword_101698458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698458);
  }

  return result;
}

unint64_t sub_10015D90C()
{
  result = qword_101698470;
  if (!qword_101698470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698470);
  }

  return result;
}

unint64_t sub_10015D964()
{
  result = qword_101698478;
  if (!qword_101698478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698478);
  }

  return result;
}

void *sub_10015D9B8(void *a1)
{
  v3 = sub_1000BC4D4(&qword_101698480, &qword_10138FC78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_1000035D0(a1, a1[3]);
  sub_10015DF0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000E307C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_100007BAC(a1);
  }

  return v7;
}

uint64_t sub_10015DB2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134C4F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010134C510 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64496E6D66 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6449726F646E6576 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x49746375646F7270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x45676E6972696170 && a2 == 0xEC00000068636F70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010134C530 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4B65746176697270 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x697274656D6D7973 && a2 == 0xEC00000079654B63)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_10015DF0C()
{
  result = qword_101698488;
  if (!qword_101698488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101698488);
  }

  return result;
}

uint64_t sub_10015DF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015DFC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10015E024()
{
  result = qword_1016984C8;
  if (!qword_1016984C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016984C8);
  }

  return result;
}

unint64_t sub_10015E07C()
{
  result = qword_1016984D0;
  if (!qword_1016984D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016984D0);
  }

  return result;
}

unint64_t sub_10015E0D4()
{
  result = qword_1016984D8;
  if (!qword_1016984D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016984D8);
  }

  return result;
}

uint64_t sub_10015E12C(uint64_t a1, uint64_t a2)
{
  v3[97] = v2;
  v3[96] = a2;
  v3[95] = a1;
  return _swift_task_switch(sub_10015E154, v2, 0);
}

uint64_t sub_10015E154()
{
  sub_10001F280(v0[96], (v0 + 90));
  sub_1000BC4D4(&qword_101698650, &qword_10138FFB0);
  if (swift_dynamicCast())
  {
    v1 = v0[95];
    memcpy(v0 + 2, v0 + 46, 0x160uLL);
    v1[3] = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
    v1[4] = sub_10016561C(&qword_1016985E8, 255, type metadata accessor for AirPodsLEPairingLockCheckResponse, &unk_10138FF30);
    v2 = sub_1000280DC(v1);
    v3 = swift_task_alloc();
    v0[98] = v3;
    *v3 = v0;
    v3[1] = sub_10015E378;

    return sub_10015E578(v2, (v0 + 2));
  }

  else
  {
    v5 = type metadata accessor for PairingValidatorError();
    sub_10016561C(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for PairingValidatorError.invalidRequestType(_:), v5);
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_10015E378()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  v3 = *(v2 + 776);
  if (v0)
  {
    v4 = sub_10015E508;
  }

  else
  {
    v4 = sub_10015E4A4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10015E4A4()
{
  sub_1001652D4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015E508()
{
  v1 = *(v0 + 760);
  sub_1001652D4(v0 + 16);
  sub_100101758(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10015E578(uint64_t a1, uint64_t a2)
{
  v3[318] = v2;
  v3[317] = a2;
  v3[316] = a1;
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v3[319] = swift_task_alloc();
  v3[320] = type metadata accessor for AirPodsLEPairingLockCheckEndPoint(0);
  v3[321] = swift_task_alloc();
  v3[322] = swift_task_alloc();

  return _swift_task_switch(sub_10015E658, v2, 0);
}

id sub_10015E658(uint64_t a1)
{
  v2 = static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v3 = *(v1 + 2576);
  v4 = *(v1 + 2568);
  v5 = *(v1 + 2560);
  v6 = *(v1 + 2552);
  v7 = *(v1 + 2544);
  v8 = qword_10177C410;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101385D80;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = sub_100008C00();
  *(v9 + 32) = 0xD00000000000001CLL;
  *(v9 + 40) = 0x800000010134C690;
  os_log(_:dso:log:_:_:)(v2, &_mh_execute_header, v8, "%@", 2, 2, v9);

  LOBYTE(v8) = *(v7 + 120);
  *(v1 + 2672) = v8;
  v10 = enum case for FMNAccountType.w2Accessory(_:);
  v11 = type metadata accessor for FMNAccountType();
  (*(*(v11 - 8) + 104))(v3, v10, v11);
  *(v3 + *(v5 + 20)) = v8;
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v12 = type metadata accessor for FMNMockingPreferences();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v14 = swift_allocObject();
  sub_1001655B4(v3, v4, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v15 = sub_10061F8C4(v4, v13, v14);
  v16 = 0;
  v17 = 0;
  *(v1 + 2584) = v15;
  if ((v8 & 1) == 0)
  {
    result = [objc_opt_self() defaultStore];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v19 = result;
    v20 = sub_100513CD8();

    if (!v20 || (v16 = sub_100513FCC(), v17 = v21, v20, !v17))
    {
      if (qword_101694470 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000076D4(v35, qword_10177A530);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Unable to retrieve masked identifier", v38, 2u);
      }

      v28 = *(v1 + 2576);

      type metadata accessor for SPPairingSessionError(0);
      *(v1 + 2488) = 27;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
      goto LABEL_21;
    }
  }

  v22 = sub_1001642DC(*(v1 + 2536));
  *(v1 + 2592) = v22;
  *(v1 + 2600) = v23;
  if (v23 >> 60 == 15)
  {

    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177A530);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Unable to generate BAA payload", v27, 2u);
    }

    v28 = *(v1 + 2576);

    type metadata accessor for SPPairingSessionError(0);
    *(v1 + 2504) = 26;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
LABEL_21:
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100165554(v28, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);

    v39 = *(v1 + 8);

    return v39();
  }

  v29 = v22;
  v30 = v23;
  v31 = *(v1 + 2536);
  v32 = *(*(v1 + 2544) + 112);

  sub_100165278(v31, v1 + 16);
  sub_10002E98C(v29, v30);
  v33 = swift_task_alloc();
  *(v1 + 2608) = v33;
  *v33 = v1;
  v33[1] = sub_10015ECCC;
  v34 = *(v1 + 2536);

  return sub_100B60CB4(v34, v16, v17, v29, v30, v32);
}

uint64_t sub_10015ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 2544);
  v4[327] = a1;
  v4[328] = a2;
  v4[329] = a3;

  return _swift_task_switch(sub_10015EDEC, v5, 0);
}

uint64_t sub_10015EDEC()
{
  v75 = v0;
  v1 = *(v0 + 2616);
  if (v1)
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 2536);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177A530);
    sub_100165278(v2, v0 + 368);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    sub_1001652D4(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v74[0] = v7;
      *v6 = 136315138;
      v8 = Data.hexString.getter();
      v10 = sub_1000136BC(v8, v9, v74);

      *(v6 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v4, v5, "nonce: %s", v6, 0xCu);
      sub_100007BAC(v7);
    }

    v11 = *(v0 + 2536);
    sub_100165278(v11, v0 + 720);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    sub_1001652D4(v11);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v74[0] = v15;
      *v14 = 136315138;
      v16 = Data.hexString.getter();
      v18 = sub_1000136BC(v16, v17, v74);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "serialNumber: %s", v14, 0xCu);
      sub_100007BAC(v15);
    }

    v19 = *(v0 + 2536);
    sub_100165278(v19, v0 + 1072);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    sub_1001652D4(v19);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v74[0] = v23;
      *v22 = 136315138;
      v24 = Data.hexString.getter();
      v26 = sub_1000136BC(v24, v25, v74);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "ECID: %s", v22, 0xCu);
      sub_100007BAC(v23);
    }

    v27 = *(v0 + 2536);
    sub_100165278(v27, v0 + 1424);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    sub_1001652D4(v27);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v74[0] = v31;
      *v30 = 136315138;
      v32 = Data.hexString.getter();
      v34 = sub_1000136BC(v32, v33, v74);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "ChipId: %s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    v35 = *(v0 + 2536);
    sub_100165278(v35, v0 + 1776);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.debug.getter();
    sub_1001652D4(v35);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v74[0] = v39;
      *v38 = 136315138;
      v40 = Data.hexString.getter();
      v42 = sub_1000136BC(v40, v41, v74);

      *(v38 + 4) = v42;
      _os_log_impl(&_mh_execute_header, v36, v37, "SeedK1: %s", v38, 0xCu);
      sub_100007BAC(v39);
    }

    v43 = *(v0 + 2536);
    sub_100165278(v43, v0 + 2128);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    sub_1001652D4(v43);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v74[0] = v47;
      *v46 = 136315138;
      v48 = Data.hexString.getter();
      v50 = sub_1000136BC(v48, v49, v74);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v44, v45, "H1 (hashed C2): %s", v46, 0xCu);
      sub_100007BAC(v47);
    }

    v51 = *(v0 + 2632);
    v52 = *(v0 + 2624);
    v53 = *(v0 + 2616);
    v54 = *(v0 + 2584);
    v55 = *(v0 + 2672);
    v56 = *(v0 + 2544);
    v57 = *(v0 + 2536);

    sub_100017D5C(v52, v51);
    v58 = sub_1004FBDB4(v1, v52, v51, 0, v54);
    *(v0 + 2640) = v58;
    sub_100165328(v53, v52, v51);
    v60 = sub_10016561C(&qword_1016985C0, v59, type metadata accessor for AirPodsLEPairingValidator, &unk_10138FED0);
    v61 = swift_task_alloc();
    *(v0 + 2648) = v61;
    *(v61 + 16) = v58;
    *(v61 + 24) = v55;
    *(v61 + 32) = v57;
    *(v61 + 40) = v56;
    v62 = swift_task_alloc();
    *(v0 + 2656) = v62;
    v63 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
    *v62 = v0;
    v62[1] = sub_10015F6E0;
    v64 = *(v0 + 2528);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v64, v56, v60, 0xD00000000000001CLL, 0x800000010134C690, sub_100165370, v61, v63);
  }

  else
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000076D4(v65, qword_10177A530);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v66, v67, "Could not create pairing lock request", v68, 2u);
    }

    v69 = *(v0 + 2600);
    v70 = *(v0 + 2592);
    v71 = *(v0 + 2576);

    type metadata accessor for SPPairingSessionError(0);
    *(v0 + 2520) = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100006654(v70, v69);
    sub_100165554(v71, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);

    v72 = *(v0 + 8);

    return v72();
  }
}

uint64_t sub_10015F6E0()
{
  v2 = *v1;
  *(*v1 + 2664) = v0;

  v3 = *(v2 + 2544);

  if (v0)
  {
    v4 = sub_10015F928;
  }

  else
  {
    v4 = sub_10015F828;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10015F828()
{
  v1 = v0[329];
  v2 = v0[328];
  v3 = v0[327];
  v4 = v0[325];
  v5 = v0[324];
  v6 = v0[322];

  sub_100165328(v3, v2, v1);
  sub_100006654(v5, v4);
  sub_100165554(v6, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10015F928()
{
  v1 = v0[329];
  v2 = v0[328];
  v3 = v0[327];
  v4 = v0[325];
  v5 = v0[324];
  v6 = v0[322];

  sub_100165328(v3, v2, v1);
  sub_100006654(v5, v4);
  sub_100165554(v6, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10015FA20(uint64_t a1, uint64_t a2, int a3, const void *a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v25 = a1;
  v6 = sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v24 = *(v7 + 16);
  v24(&v20 - v9, a1, v6);
  v11 = *(v7 + 80);
  v21 = ((v11 + 16) & ~v11) + v8;
  v23 = (v11 + 16) & ~v11;
  v12 = swift_allocObject();
  v22 = *(v7 + 32);
  v22(v12 + ((v11 + 16) & ~v11), v10, v6);
  Future.addFailure(block:)();

  v13 = v6;
  v24(v10, v25, v6);
  v14 = v21;
  v15 = v21 & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v21 & 0xFFFFFFFFFFFFFFF8) + 367) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v22(v17 + v23, v10, v13);
  *(v17 + v14) = v26;
  v18 = v27;
  memcpy((v17 + v15 + 8), v27, 0x160uLL);
  *(v17 + v16) = v28;
  sub_100165278(v18, &v29);

  Future.addSuccess(block:)();
}

uint64_t sub_10015FC70(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  v251 = a4;
  LODWORD(v250) = a3;
  v256 = a2;
  v5 = sub_1000BC4D4(&qword_101698638, &qword_1013AC450);
  v6 = __chkstk_darwin(v5 - 8);
  v253 = &v240 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v254 = &v240 - v8;
  v249 = type metadata accessor for Date();
  v244 = *(v249 - 8);
  v9 = __chkstk_darwin(v249);
  v246 = &v240 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v247 = &v240 - v12;
  v13 = __chkstk_darwin(v11);
  v243 = &v240 - v14;
  __chkstk_darwin(v13);
  v248 = &v240 - v15;
  v16 = sub_1000BC4D4(&qword_101698640, &unk_10138FFA0);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v240 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v252 = &v240 - v20;
  v255 = type metadata accessor for AirPodsLEPairingLockCheckResponse(0);
  v21 = __chkstk_darwin(v255);
  v245 = &v240 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v240 - v23;
  v25 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v25 - 8);
  v26 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v240 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v33 = &v240 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v240 - v35;
  __chkstk_darwin(v34);
  v38 = &v240 - v37;
  v257 = a1;
  v39 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v39 == 409)
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000076D4(v58, qword_10177A530);
    (*(v27 + 16))(v36, v257, v26);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v260[0] = v62;
      *v61 = 136446210;
      sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      (*(v27 + 8))(v36, v26);
      v66 = sub_1000136BC(v63, v65, v260);

      *(v61 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v59, v60, "Linked to another Apple ID. %{public}s", v61, 0xCu);
      sub_100007BAC(v62);
    }

    else
    {

      (*(v27 + 8))(v36, v26);
    }

    v89 = type metadata accessor for PairingValidatorError();
    sub_10016561C(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    v90 = swift_allocError();
    (*(*(v89 - 8) + 104))(v91, enum case for PairingValidatorError.pairedToAnotherAccount(_:), v89);
    v260[0] = v90;
    goto LABEL_36;
  }

  if (v39 == 403)
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_1000076D4(v50, qword_10177C418);
    (*(v27 + 16))(v33, v257, v26);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      v260[0] = v255;
      *v53 = 136446210;
      sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      (*(v27 + 8))(v33, v26);
      v57 = sub_1000136BC(v54, v56, v260);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "Pairing not allowed! %{public}s", v53, 0xCu);
      sub_100007BAC(v255);
    }

    else
    {

      (*(v27 + 8))(v33, v26);
    }

    FMNServerInteractionController.FMNResponseFields.metadata.getter();
    v76 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
    v77 = *(v76 - 8);
    if ((*(v77 + 48))(v19, 1, v76) == 1)
    {
      sub_10000B3A8(v19, &qword_101698640, &unk_10138FFA0);
      v78 = type metadata accessor for ServerStatusCode();
      v79 = v254;
      (*(*(v78 - 8) + 56))(v254, 1, 1, v78);
      sub_10000B3A8(v79, &qword_101698638, &qword_1013AC450);
    }

    else
    {
      v81 = v254;
      FMNServerInteractionController.InternalServerMetadata.errorCode.getter();
      (*(v77 + 8))(v19, v76);
      v82 = type metadata accessor for ServerStatusCode();
      v83 = *(v82 - 8);
      (*(v83 + 56))(v81, 0, 1, v82);
      v84 = v253;
      sub_1001654E4(v81, v253);
      v85 = (*(v83 + 88))(v84, v82);
      if (v85 == enum case for ServerStatusCode.preconditionFailed(_:))
      {
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "Pairing has been completed by another device", v88, 2u);
        }

        type metadata accessor for SPPairingSessionError(0);
        v80 = 22;
        goto LABEL_51;
      }

      if (v85 == enum case for ServerStatusCode.locked(_:))
      {
        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&_mh_execute_header, v123, v124, "Pairing is pending from another device", v125, 2u);
        }

        type metadata accessor for SPPairingSessionError(0);
        v80 = 21;
        goto LABEL_51;
      }

      (*(v83 + 8))(v84, v82);
    }

    type metadata accessor for SPPairingSessionError(0);
    v80 = 1;
LABEL_51:
    v258 = v80;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v258 = v260[0];
    sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
    return CheckedContinuation.resume(throwing:)();
  }

  if (v39 != 200)
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_1000076D4(v67, qword_10177A530);
    (*(v27 + 16))(v30, v257, v26);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v260[0] = v71;
      *v70 = 136446210;
      sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      (*(v27 + 8))(v30, v26);
      v75 = sub_1000136BC(v72, v74, v260);

      *(v70 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v68, v69, "Pairing lock failed: %{public}s", v70, 0xCu);
      sub_100007BAC(v71);
    }

    else
    {

      (*(v27 + 8))(v30, v26);
    }

    v104 = type metadata accessor for PairingValidatorError();
    sub_10016561C(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    v105 = swift_allocError();
    v107 = v106;
    *v106 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    (*(*(v104 - 8) + 104))(v107, enum case for PairingValidatorError.pairingLockFailure(_:), v104);
    v260[0] = v105;
LABEL_36:
    sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
    return CheckedContinuation.resume(throwing:)();
  }

  if (qword_101694470 != -1)
  {
    swift_once();
  }

  v254 = v24;
  v40 = type metadata accessor for Logger();
  v41 = sub_1000076D4(v40, qword_10177A530);
  (*(v27 + 16))(v38, v257, v26);
  v253 = v41;
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v260[0] = v242;
    *v44 = 136446210;
    sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v46 = v40;
    v48 = v47;
    (*(v27 + 8))(v38, v26);
    v49 = sub_1000136BC(v45, v48, v260);
    v40 = v46;

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v42, v43, "Pairing success: %{public}s", v44, 0xCu);
    sub_100007BAC(v242);
  }

  else
  {

    (*(v27 + 8))(v38, v26);
  }

  v92 = v255;
  v93 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v95 = v94;
  static String.Encoding.utf8.getter();
  v96 = String.init(data:encoding:)();
  v98 = v97;
  sub_100016590(v93, v95);
  if (v98)
  {

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v260[0] = v102;
      *v101 = 136315138;
      v103 = sub_1000136BC(v96, v98, v260);

      *(v101 + 4) = v103;
      _os_log_impl(&_mh_execute_header, v99, v100, "response data: %s", v101, 0xCu);
      sub_100007BAC(v102);
    }

    else
    {
    }
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v108 = JSONDecoder.init()();
  v109 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v111 = v110;
  sub_10016561C(&qword_101698648, 255, type metadata accessor for AirPodsLEPairingLockCheckResponse, &unk_1013F4AB4);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v109, v111);
  v120 = v252;
  FMNServerInteractionController.FMNResponseFields.metadata.getter();
  v121 = type metadata accessor for FMNServerInteractionController.InternalServerMetadata();
  v122 = *(v121 - 8);
  if ((*(v122 + 48))(v120, 1, v121) == 1)
  {
    sub_10000B3A8(v120, &qword_101698640, &unk_10138FFA0);
  }

  else
  {
    v126 = FMNServerInteractionController.InternalServerMetadata.dateEpoch.getter();
    v127 = v120;
    v128 = v126;
    v130 = v129;
    (*(v122 + 8))(v127, v121);
    if ((v130 & 1) == 0)
    {
      v176 = v254;
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v40, qword_10177C448);
      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        *v179 = 134217984;
        *(v179 + 4) = v128;
        _os_log_impl(&_mh_execute_header, v177, v178, "Server epoch: %lld", v179, 0xCu);
        v176 = v254;
      }

      goto LABEL_81;
    }
  }

  v131 = FMNServerInteractionController.FMNResponseFields.responseHeaders.getter();
  v132 = v254;
  if (*(v131 + 16) && (v133 = sub_100771D58(1702125892, 0xE400000000000000), (v134 & 1) != 0))
  {
    v135 = (*(v131 + 56) + 16 * v133);
    v137 = *v135;
    v136 = v135[1];

    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v40, qword_10177C448);

    v138 = Logger.logObject.getter();
    v139 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v260[0] = v141;
      *v140 = 136446210;
      *(v140 + 4) = sub_1000136BC(v137, v136, v260);
      _os_log_impl(&_mh_execute_header, v138, v139, "Server date: %{public}s", v140, 0xCu);
      sub_100007BAC(v141);
    }

    v142 = v249;
    v143 = v246;
    if (qword_101694AB0 != -1)
    {
      swift_once();
    }

    v144 = qword_10177B6F0;
    v145 = String._bridgeToObjectiveC()();

    v146 = [v144 dateFromString:v145];

    if (v146)
    {
      v241 = v40;
      v147 = v248;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v148 = v244;
      v149 = *(v244 + 16);
      v150 = v243;
      v149(v243, v147, v142);
      v149(v247, v147, v142);
      v149(v143, v147, v142);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v257 = swift_slowAlloc();
        v260[0] = v257;
        *v153 = 136446722;
        sub_10016561C(&qword_1016969A0, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LODWORD(v246) = v152;
        v154 = dispatch thunk of CustomStringConvertible.description.getter();
        v242 = v151;
        v155 = v143;
        v157 = v156;
        v158 = v150;
        v159 = *(v148 + 8);
        v252 = ((v148 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v159(v158, v142);
        v160 = sub_1000136BC(v154, v157, v260);

        *(v153 + 4) = v160;
        *(v153 + 12) = 2048;
        v161 = v247;
        v162 = Date.epoch.getter();
        v159(v161, v142);
        *(v153 + 14) = v162;
        *(v153 + 22) = 2082;
        v258 = Date.epoch.getter();
        sub_100102194();
        v163 = FixedWidthInteger.data.getter();
        v165 = v164;
        v166 = Data.hexString.getter();
        v167 = v108;
        v169 = v168;
        sub_100016590(v163, v165);
        v159(v155, v249);
        v170 = v166;
        v142 = v249;
        v171 = sub_1000136BC(v170, v169, v260);
        v108 = v167;

        *(v153 + 24) = v171;
        v172 = v242;
        _os_log_impl(&_mh_execute_header, v242, v246, "pairingEpoch: %{public}s [%lld/%{public}s]", v153, 0x20u);
        swift_arrayDestroy();
      }

      else
      {
        v183 = v150;
        v159 = *(v148 + 8);
        v159(v247, v142);

        v159(v143, v142);
        v159(v183, v142);
      }

      v176 = v254;
      v92 = v255;
      v184 = v248;
      v128 = Date.epoch.getter();
      v159(v184, v142);
      v40 = v241;
LABEL_81:
      *(v176 + *(v92 + 14)) = v128;
      if (qword_1016950E0 != -1)
      {
        swift_once();
      }

      sub_1000076D4(v40, qword_10177C448);
      v185 = Logger.logObject.getter();
      v186 = static os_log_type_t.default.getter();
      v187 = os_log_type_enabled(v185, v186);
      v253 = v108;
      if (v187)
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v260[0] = v189;
        *v188 = 141558275;
        *(v188 + 4) = 1752392040;
        *(v188 + 12) = 2081;
        v190 = "ATTEST_AUTH_TOKEN";
        if (v250)
        {
          v190 = "ATTEST_AUTH_NOTKN";
        }

        v191 = sub_1000136BC(0xD000000000000011, (v190 - 32) | 0x8000000000000000, v260);

        *(v188 + 14) = v191;
        _os_log_impl(&_mh_execute_header, v185, v186, "authSuffix: %{private,mask.hash}s", v188, 0x16u);
        sub_100007BAC(v189);
      }

      else
      {
      }

      v192 = v254;
      v193 = sub_100939A24(v251, v254);
      v195 = v194;
      v196 = String.utf8Data.getter();
      v198 = v197;

      v258 = v193;
      v259 = v195;
      v260[3] = &type metadata for Data;
      v260[4] = &protocol witness table for Data;
      v260[0] = v196;
      v260[1] = v198;
      v199 = sub_1000035D0(v260, &type metadata for Data);
      v200 = *v199;
      v201 = v199[1];
      v255 = v193;
      v257 = v195;
      sub_100017D5C(v193, v195);
      sub_100017D5C(v196, v198);
      sub_100017DB0(v200, v201, &v258);
      v252 = 0;
      sub_100016590(v196, v198);
      sub_100007BAC(v260);
      v203 = v258;
      v202 = v259;
      v204 = Logger.logObject.getter();
      v205 = static os_log_type_t.debug.getter();
      v206 = os_log_type_enabled(v204, v205);
      v241 = v40;
      if (v206)
      {
        v207 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        v250 = v202;
        v209 = v208;
        v260[0] = v208;
        *v207 = 136315138;
        swift_beginAccess();
        v210 = *(v192 + 64);
        v211 = *(v192 + 72);
        sub_100017D5C(v210, v211);
        v212 = Data.hexString.getter();
        v213 = v203;
        v215 = v214;
        sub_100016590(v210, v211);
        v216 = sub_1000136BC(v212, v215, v260);
        v203 = v213;

        *(v207 + 4) = v216;
        _os_log_impl(&_mh_execute_header, v204, v205, "S3: %s", v207, 0xCu);
        sub_100007BAC(v209);
        v202 = v250;
      }

      sub_100017D5C(v203, v202);
      v217 = Logger.logObject.getter();
      v218 = static os_log_type_t.debug.getter();
      sub_100016590(v203, v202);
      if (os_log_type_enabled(v217, v218))
      {
        v219 = swift_slowAlloc();
        v220 = swift_slowAlloc();
        v260[0] = v220;
        *v219 = 136315138;
        v221 = Data.hexString.getter();
        v223 = sub_1000136BC(v221, v222, v260);

        *(v219 + 4) = v223;
        _os_log_impl(&_mh_execute_header, v217, v218, "dataForSignatureVerification: %s", v219, 0xCu);
        sub_100007BAC(v220);
      }

      v224 = v254;
      v225 = *(v251 + 34);
      v226 = *(v251 + 35);
      v227 = v225;
      v228 = v226;
      if (v226 >> 60 == 15)
      {
        if (qword_1016946D8 != -1)
        {
          swift_once();
        }

        v227 = qword_10177ACE0;
        v228 = *algn_10177ACE8;
        sub_100017D5C(qword_10177ACE0, *algn_10177ACE8);
      }

      swift_beginAccess();
      v230 = *(v224 + 64);
      v229 = *(v224 + 72);
      sub_10002E98C(v225, v226);
      sub_100017D5C(v230, v229);
      v231 = v202;
      v232 = v202;
      v233 = v252;
      v234 = sub_100A74FAC(v227, v228, v203, v231, v230, v229, kSecKeyAlgorithmECDSASignatureMessageX962SHA256);
      if (v233)
      {
        sub_100016590(v255, v257);
        sub_100016590(v203, v232);
        sub_100016590(v230, v229);
        sub_100016590(v227, v228);
        sub_100165554(v224, type metadata accessor for AirPodsLEPairingLockCheckResponse);
        v235 = v241;
        if (qword_1016950E0 != -1)
        {
          swift_once();
        }

        sub_1000076D4(v235, qword_10177C448);
        swift_errorRetain();
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v261 = v233;
          v262[0] = v115;
          *v114 = 136446210;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v116 = String.init<A>(describing:)();
          v118 = sub_1000136BC(v116, v117, v262);

          *(v114 + 4) = v118;
          _os_log_impl(&_mh_execute_header, v112, v113, "Decode error: %{public}s", v114, 0xCu);
          sub_100007BAC(v115);
        }

        type metadata accessor for SPPairingSessionError(0);
        v261 = 24;
        sub_100032898(_swiftEmptyArrayStorage);
        sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
        _BridgedStoredNSError.init(_:userInfo:)();
        v261 = v262[0];
        sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
        CheckedContinuation.resume(throwing:)();
      }

      else
      {
        v236 = v234;
        sub_100016590(v230, v229);
        sub_100016590(v227, v228);
        v237 = static os_log_type_t.default.getter();
        if (qword_1016950C8 != -1)
        {
          swift_once();
        }

        v238 = qword_10177C410;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v239 = swift_allocObject();
        *(v239 + 16) = xmmword_101385D80;
        *(v239 + 56) = &type metadata for Bool;
        *(v239 + 64) = &protocol witness table for Bool;
        *(v239 + 32) = v236 & 1;
        os_log(_:dso:log:_:_:)(v237, &_mh_execute_header, v238, "Signature S3 verified? %d", v240);

        sub_1001655B4(v224, v245, type metadata accessor for AirPodsLEPairingLockCheckResponse);
        sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
        CheckedContinuation.resume(returning:)();

        sub_100016590(v255, v257);
        sub_100016590(v203, v232);
        return sub_100165554(v224, type metadata accessor for AirPodsLEPairingLockCheckResponse);
      }
    }

    v180 = Logger.logObject.getter();
    v181 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      *v182 = 0;
      _os_log_impl(&_mh_execute_header, v180, v181, "Unable to parse server Date!", v182, 2u);
    }

    type metadata accessor for SPPairingSessionError(0);
    v258 = 25;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v258 = v260[0];
    sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
    CheckedContinuation.resume(throwing:)();

    return sub_100165554(v254, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }

  else
  {

    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    sub_1000076D4(v40, qword_10177C448);
    v173 = Logger.logObject.getter();
    v174 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&_mh_execute_header, v173, v174, "Server response is missing Date header!", v175, 2u);
    }

    type metadata accessor for SPPairingSessionError(0);
    v258 = 23;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v258 = v260[0];
    sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
    CheckedContinuation.resume(throwing:)();

    return sub_100165554(v132, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  }
}

uint64_t sub_100161FCC(uint64_t a1, uint64_t a2)
{
  v3[77] = v2;
  v3[76] = a2;
  v3[75] = a1;
  return _swift_task_switch(sub_100161FF4, v2, 0);
}

uint64_t sub_100161FF4()
{
  sub_10001F280(v0[76], (v0 + 70));
  sub_1000BC4D4(&qword_101698620, &unk_10138FF80);
  if (swift_dynamicCast())
  {
    v1 = v0[75];
    memcpy(v0 + 2, v0 + 36, 0x110uLL);
    v1[3] = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
    v1[4] = sub_10016561C(&qword_1016985D8, 255, type metadata accessor for AirPodsLEPairingLockAckResponse, &unk_10138FEF8);
    v2 = sub_1000280DC(v1);
    v3 = swift_task_alloc();
    v0[78] = v3;
    *v3 = v0;
    v3[1] = sub_100162218;

    return sub_100162418(v2, (v0 + 2));
  }

  else
  {
    v5 = type metadata accessor for PairingValidatorError();
    sub_10016561C(&qword_101698628, 255, &type metadata accessor for PairingValidatorError, &protocol conformance descriptor for PairingValidatorError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for PairingValidatorError.invalidRequestType(_:), v5);
    swift_willThrow();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100162218()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 616);
  if (v0)
  {
    v4 = sub_1001623A8;
  }

  else
  {
    v4 = sub_100162344;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100162344()
{
  sub_100165224(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001623A8()
{
  v1 = *(v0 + 600);
  sub_100165224(v0 + 16);
  sub_100101758(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100162418(uint64_t a1, uint64_t a2)
{
  v3[41] = a2;
  v3[42] = v2;
  v3[40] = a1;
  sub_1000BC4D4(&qword_1016985F0, &unk_10139D780);
  v3[43] = swift_task_alloc();
  v4 = type metadata accessor for FMNAccountType();
  v3[44] = v4;
  v3[45] = *(v4 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = type metadata accessor for AirPodsLEPairingLockAckEndPoint(0);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return _swift_task_switch(sub_100162550, v2, 0);
}

uint64_t sub_100162550()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[47];
  v5 = v0[44];
  v6 = v0[43];
  v29 = v0[41];
  v7 = enum case for FMNAccountType.w2Accessory(_:);
  v8 = *(v0[45] + 104);
  v8(v3, enum case for FMNAccountType.w2Accessory(_:), v5);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v2 = sub_1010B32C8(v3);
  v8(v2 + *(v4 + 20), v7, v5);
  type metadata accessor for SearchPartyURLSessionFactory(0);
  swift_allocObject();
  v9 = type metadata accessor for FMNMockingPreferences();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  type metadata accessor for ServerInteractionController(0);
  v11 = swift_allocObject();
  sub_1001655B4(v2, v1, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  v0[50] = sub_10061FCDC(v1, v10, v11);
  v12 = sub_10016492C(v29);
  v0[51] = v12;
  v0[52] = v13;
  if (v13 >> 60 == 15)
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177A530);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to generate BAA payload", v17, 2u);
    }

    v18 = v0[49];

    type metadata accessor for SPPairingSessionError(0);
    v0[37] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100165554(v18, type metadata accessor for AirPodsLEPairingLockAckEndPoint);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v12;
    v22 = v13;
    v23 = v0[41];
    type metadata accessor for DeviceIdentityUtility(0);
    v24 = swift_allocObject();
    sub_100164F7C(v23, (v0 + 2));
    sub_10002E98C(v21, v22);
    swift_defaultActor_initialize();
    v25 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
    v26 = type metadata accessor for Date();
    (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
    *(v24 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
    *(v24 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
    *(v24 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
    v27 = swift_task_alloc();
    v0[53] = v27;
    *v27 = v0;
    v27[1] = sub_1001629FC;
    v28 = v0[41];

    return sub_10028733C(v28, v21, v22, v24);
  }
}

uint64_t sub_1001629FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 336);
  v4[54] = a1;
  v4[55] = a2;
  v4[56] = a3;

  return _swift_task_switch(sub_100162B18, v5, 0);
}

uint64_t sub_100162B18()
{
  v1 = v0[54];
  if (v1)
  {
    v3 = v0[55];
    v2 = v0[56];
    v4 = v0[50];
    v5 = v0[42];

    sub_100017D5C(v3, v2);
    v6 = sub_1004FC0C0(v1, v3, v2, 0, v4);
    v0[57] = v6;
    sub_100165328(v1, v3, v2);
    v8 = sub_10016561C(&qword_1016985C0, v7, type metadata accessor for AirPodsLEPairingValidator, &unk_10138FED0);
    v9 = swift_task_alloc();
    v0[58] = v9;
    v10 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
    *v9 = v0;
    v9[1] = sub_100162E6C;
    v11 = v0[40];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, v5, v8, 0xD000000000000015, 0x800000010134C650, sub_100164FD8, v6, v10);
  }

  else
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_10177A530);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Could not create pairing ack request", v15, 2u);
    }

    v17 = v0[51];
    v16 = v0[52];
    v18 = v0[49];

    type metadata accessor for SPPairingSessionError(0);
    v0[39] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();

    sub_100006654(v17, v16);
    sub_100165554(v18, type metadata accessor for AirPodsLEPairingLockAckEndPoint);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_100162E6C()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 336);
  if (v0)
  {
    v4 = sub_100163098;
  }

  else
  {
    v4 = sub_100162F98;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100162F98()
{
  v1 = v0[56];
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[49];

  sub_100006654(v5, v4);
  sub_100165328(v3, v2, v1);
  sub_100165554(v6, type metadata accessor for AirPodsLEPairingLockAckEndPoint);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100163098()
{
  v1 = v0[56];
  v3 = v0[54];
  v2 = v0[55];
  v5 = v0[51];
  v4 = v0[52];
  v6 = v0[49];

  sub_100006654(v5, v4);
  sub_100165328(v3, v2, v1);
  sub_100165554(v6, type metadata accessor for AirPodsLEPairingLockAckEndPoint);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100163188(uint64_t a1)
{
  v13 = a1;
  v2 = sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - v4;
  v12 = *(v3 + 16);
  v12(&v10 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v11 = *(v3 + 32);
  v11(v7 + v6, v5, v2);
  Future.addFailure(block:)();

  v12(v5, v13, v2);
  v8 = swift_allocObject();
  v11(v8 + v6, v5, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_100163368(uint64_t a1, uint64_t a2, const char *a3, uint64_t *a4, uint64_t *a5)
{
  if (qword_101694470 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_10177A530);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v13;
    *v12 = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 0xCu);
    sub_10000B3A8(v12, &qword_10169BB30, &unk_10138B3C0);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(a4, a5);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100163570(uint64_t a1)
{
  v57 = type metadata accessor for AirPodsLEPairingLockAckResponse(0);
  v2 = __chkstk_darwin(v57);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v52 - v5;
  v7 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v52 - v13;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v56 = v6;
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = sub_1000076D4(v15, qword_10177A530);
    v17 = *(v9 + 16);
    v58 = a1;
    v17(v14, a1, v8);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v55 = v4;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v54 = v16;
      v22 = v21;
      v53 = swift_slowAlloc();
      v60 = v53;
      *v22 = 136446210;
      sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v9 + 8))(v14, v8);
      v26 = sub_1000136BC(v23, v25, &v60);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "Pairing ack success: %{public}s", v22, 0xCu);
      sub_100007BAC(v53);
    }

    else
    {

      (*(v9 + 8))(v14, v8);
    }

    v36 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v38 = v37;
    static String.Encoding.utf8.getter();
    v39 = String.init(data:encoding:)();
    v41 = v40;
    sub_100016590(v36, v38);
    if (v41)
    {

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v60 = v45;
        *v44 = 136315138;
        v46 = sub_1000136BC(v39, v41, &v60);

        *(v44 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v42, v43, "ack response data: %s", v44, 0xCu);
        sub_100007BAC(v45);
      }

      else
      {
      }
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v48 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v50 = v49;
    sub_10016561C(&qword_101698600, 255, type metadata accessor for AirPodsLEPairingLockAckResponse, &unk_10139F6F0);
    v51 = v56;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v48, v50);
    sub_1001655B4(v51, v55, type metadata accessor for AirPodsLEPairingLockAckResponse);
    sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
    CheckedContinuation.resume(returning:)();

    return sub_100165554(v51, type metadata accessor for AirPodsLEPairingLockAckResponse);
  }

  else
  {
    if (qword_101694470 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000076D4(v27, qword_10177A530);
    (*(v9 + 16))(v12, a1, v8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v60 = v31;
      *v30 = 136446210;
      sub_10016561C(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields, &protocol conformance descriptor for FMNServerInteractionController.FMNResponseFields);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v9 + 8))(v12, v8);
      v35 = sub_1000136BC(v32, v34, &v60);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Pairing ack failed: %{public}s", v30, 0xCu);
      sub_100007BAC(v31);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    type metadata accessor for SPPairingSessionError(0);
    v59 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_10016561C(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError, &unk_10138A7E4);
    _BridgedStoredNSError.init(_:userInfo:)();
    v59 = v60;
    sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100163EF8()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

unint64_t sub_100163F58()
{
  result = qword_1016985C8;
  if (!qword_1016985C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016985C8);
  }

  return result;
}

uint64_t sub_100163FAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_10015E12C(a1, a2);
}