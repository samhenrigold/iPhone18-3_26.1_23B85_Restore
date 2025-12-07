id sub_100001A40()
{
  v0 = [objc_opt_self() sharedConnection];
  v1 = objc_allocWithZone(CNManagedConfiguration);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 initWithBundleIdentifier:v2 managedProfileConnection:v0];

  v4 = [objc_allocWithZone(CNContactStoreConfiguration) init];
  result = [objc_opt_self() currentEnvironment];
  if (result)
  {
    v6 = result;
    [v4 setEnvironment:result];

    [v4 setManagedConfiguration:v3];
    v7 = [objc_allocWithZone(CNContactStore) initWithConfiguration:v4];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100001B74(void *a1)
{
  v2 = objc_allocWithZone(CNContactFetchRequest);
  sub_1000054DC(&qword_10002DB90, &unk_10001A120);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 initWithKeysToFetch:isa];

  [v4 setUnifyResults:1];
  v19 = 0;
  v5 = [a1 contactCountForFetchRequest:v4 error:&v19];
  if (v5)
  {
    v6 = v5;
    v7 = v19;
    v8 = [v6 integerValue];
  }

  else
  {
    v9 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10002DA00 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005590(v10, qword_10002DA08);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = sub_100017CA8(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Fetched contacts: failed with %s", v13, 0xCu);
      sub_100005A98(v14);
    }

    else
    {
    }

    return 0;
  }

  return v8;
}

uint64_t sub_100001E14(uint64_t a1)
{
  *(v1 + 120) = a1;

  return _swift_task_switch(sub_100001EA4, 0, 0);
}

uint64_t sub_100001EA4()
{
  sub_1000054DC(&qword_10002DB28, &unk_10001A110);
  v1 = swift_allocObject();
  v0[16] = v1;
  *(v1 + 16) = xmmword_10001A070;
  *(v1 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle:0];
  v0[17] = objc_opt_self();
  type metadata accessor for MainActor();
  v0[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100001FD8, v3, v2);
}

uint64_t sub_100001FD8()
{
  v1 = *(v0 + 136);

  *(v0 + 152) = [v1 descriptorForRequiredKeysWithThreeDTouchEnabled:1];

  return _swift_task_switch(sub_10000208C, 0, 0);
}

uint64_t sub_10000208C()
{
  v36 = v0[15];
  *(v0[16] + 40) = v0[19];
  v1 = objc_allocWithZone(CNContactFetchRequest);
  sub_1000054DC(&qword_10002DB90, &unk_10001A120);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithKeysToFetch:isa];

  [v3 setUnifyResults:1];
  v0[13] = &_swiftEmptyArrayStorage;
  v4 = v0 + 13;
  v0[11] = 0;
  v5 = (v0 + 11);
  v0[12] = 0;
  v0[14] = &_swiftEmptyArrayStorage;
  v6 = v0 + 14;
  v7 = swift_allocObject();
  v7[2] = v0 + 13;
  v7[3] = v0 + 11;
  v7[4] = v0 + 12;
  v7[5] = v0 + 14;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100005534;
  *(v8 + 24) = v7;
  v0[6] = sub_100005550;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100002874;
  v0[5] = &unk_1000291E0;
  v9 = _Block_copy(v0 + 2);

  v0[2] = 0;
  v10 = v36;
  v37 = v3;
  v11 = [v10 enumerateContactsWithFetchRequest:v3 error:v0 + 2 usingBlock:v9];
  _Block_release(v9);
  v12 = v0[2];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (v11)
  {
    if (*v5 > 62)
    {
      goto LABEL_33;
    }

    if (*v6 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_33;
      }
    }

    else if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_33;
    }

    v14 = 63 - *v5;
    if (__OFSUB__(63, *v5))
    {
      __break(1u);
    }

    else if (!(*v6 >> 62))
    {
      v15 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 - 1;
      if (!__OFSUB__(v15, 1))
      {
        goto LABEL_9;
      }

      goto LABEL_49;
    }

    v35 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v35 - 1;
    if (!__OFSUB__(v35, 1))
    {
LABEL_9:
      if (v16 >= v14)
      {
        v5 = v14;
      }

      else
      {
        v5 = v16;
      }

      if (v5 >= 1)
      {
        v14 = *v6;
        v16 = *v6 & 0xFFFFFFFFFFFFFF8;
        isEscapingClosureAtFileLocation = *v6 >> 62;
        if (!isEscapingClosureAtFileLocation)
        {
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v5)
          {
            goto LABEL_15;
          }

          goto LABEL_55;
        }

LABEL_50:
        if (v14 < 0)
        {
          v8 = v14;
        }

        else
        {
          v8 = v16;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        if (_CocoaArrayWrapper.endIndex.getter() > v5)
        {
LABEL_15:

          if ((v14 & 0xC000000000000001) != 0)
          {
            sub_1000055C8();
            v17 = 0;
            do
            {
              v18 = v17 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v17);
              v17 = v18;
            }

            while (v5 + 1 != v18);
          }

          if (isEscapingClosureAtFileLocation)
          {

            v14 = _CocoaArrayWrapper.subscript.getter();
            v8 = v22;
            v12 = v23;
            if ((v23 & 1) == 0)
            {
LABEL_24:
              sub_100005708(v14, v19, v8, v12);
              v25 = v24;
              goto LABEL_31;
            }
          }

          else
          {
            v8 = 0;
            v14 &= 0xFFFFFFFFFFFFFF8uLL;
            v19 = v14 + 32;
            v12 = (2 * (v5 + 1)) | 1;
          }

          v5 = v19;
          type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v26 = swift_dynamicCastClass();
          if (!v26)
          {
            swift_unknownObjectRelease();
            v26 = &_swiftEmptyArrayStorage;
          }

          v27 = v26[2];

          if (!__OFSUB__(v12 >> 1, v8))
          {
            if (v27 == (v12 >> 1) - v8)
            {
              v25 = swift_dynamicCastClass();
              swift_unknownObjectRelease();
              if (v25)
              {
LABEL_32:
                sub_1000028D0(v25);
                goto LABEL_33;
              }

              v25 = &_swiftEmptyArrayStorage;
LABEL_31:
              swift_unknownObjectRelease();
              goto LABEL_32;
            }

            goto LABEL_57;
          }

LABEL_56:
          __break(1u);
LABEL_57:
          swift_unknownObjectRelease();
          v19 = v5;
          goto LABEL_24;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

LABEL_33:
      if (qword_10002DA00 == -1)
      {
LABEL_34:
        v28 = type metadata accessor for Logger();
        sub_100005590(v28, qword_10002DA08);
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 134217984;
          swift_beginAccess();
          if (*v4 >> 62)
          {
            v32 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v32 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v31 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v29, v30, "Fetched %ld contacts", v31, 0xCu);
        }

        swift_beginAccess();
        v33 = v0[13];

        v34 = v0[1];

        return v34(v33);
      }

LABEL_42:
      swift_once();
      goto LABEL_34;
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();

  v20 = v0[1];

  return v20();
}

char *sub_100002714(void *a1, _BYTE *a2, void *a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  if (![a1 imageDataAvailable])
  {
    if (__OFADD__(*a5, 1))
    {
      goto LABEL_16;
    }

    ++*a5;
    v14 = a1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v13 = *a4 + 1;
    if (__OFADD__(*a4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_8:
      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      *a4 = v13;
      if (v13 == 63)
      {
        *a2 = 1;
      }
    }

    if (!__OFADD__(*a4, *a5))
    {
      break;
    }

    __break(1u);
LABEL_14:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  if ((*a4 + *a5) >= 125)
  {
    *a2 = 1;
  }

  return result;
}

void sub_100002874(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1000028D0(unint64_t a1)
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
  sub_100005614(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_100005844(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

Swift::Int sub_1000029D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100002A48(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100002A8C()
{
  v0 = type metadata accessor for Logger();
  sub_100005A34(v0, qword_10002D9E8);
  sub_100005590(v0, qword_10002D9E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100002B0C()
{
  v0 = type metadata accessor for Logger();
  sub_100005A34(v0, qword_10002DA08);
  v1 = sub_100005590(v0, qword_10002DA08);
  if (qword_10002D9E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100005590(v0, qword_10002D9E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100002BD4()
{

  return swift_deallocClassInstance();
}

id sub_100002C30(uint64_t a1)
{
  v3 = *v1;
  sub_1000054DC(&qword_10002DD28, &unk_10001A670);
  UIViewRepresentableContext.coordinator.getter();
  v4 = *(v7 + 16);

  v5 = [v4 view];

  sub_100005CBC(a1, v3);
  return v5;
}

void sub_100002CE0(uint64_t *a1@<X8>)
{
  type metadata accessor for ContactAvatarView.Coordinator();
  v2 = swift_allocObject();
  v3 = [objc_opt_self() defaultSettings];
  v4 = [objc_allocWithZone(CNAvatarViewController) initWithSettings:v3];

  *(v2 + 16) = v4;
  *a1 = v2;
}

uint64_t sub_100002DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006CA4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100002E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100006CA4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100002E9C(uint64_t a1)
{
  sub_100006CA4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double sub_100002EC4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a2;
  v9 = static Alignment.center.getter();
  v11 = v10;
  sub_1000030F0(a1, v5, &v34, a4);
  v29 = v42;
  v30 = v43;
  v31[0] = v44[0];
  *(v31 + 9) = *(v44 + 9);
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v32[8] = v42;
  v32[9] = v43;
  v33[0] = v44[0];
  *(v33 + 9) = *(v44 + 9);
  v32[4] = v38;
  v32[5] = v39;
  v32[6] = v40;
  v32[7] = v41;
  v32[0] = v34;
  v32[1] = v35;
  v32[2] = v36;
  v32[3] = v37;
  sub_1000060D8(&v21, v19, &qword_10002DCE8, &qword_10001A568);
  sub_100006140(v32, &qword_10002DCE8, &qword_10001A568);
  v42 = v29;
  v43 = v30;
  v44[0] = v31[0];
  *(v44 + 9) = *(v31 + 9);
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v34 = v21;
  v35 = v22;
  v36 = v23;
  v37 = v24;
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v20[7] = v19[0];
  *&v20[23] = v19[1];
  *&v20[39] = v19[2];
  v12 = v43;
  *(a3 + 144) = v42;
  *(a3 + 160) = v12;
  *(a3 + 176) = v44[0];
  *(a3 + 185) = *(v44 + 9);
  v13 = v39;
  *(a3 + 80) = v38;
  *(a3 + 96) = v13;
  v14 = v41;
  *(a3 + 112) = v40;
  *(a3 + 128) = v14;
  v15 = v35;
  *(a3 + 16) = v34;
  *(a3 + 32) = v15;
  v16 = v37;
  *(a3 + 48) = v36;
  *(a3 + 64) = v16;
  v17 = *&v20[16];
  *(a3 + 201) = *v20;
  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 217) = v17;
  result = *&v20[32];
  *(a3 + 233) = *&v20[32];
  *(a3 + 248) = *&v20[47];
  return result;
}

uint64_t sub_1000030F0@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  if (a2)
  {
    v37 = 0;
    v38 = 0;
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
    v7 = 0.0;
    v32 = 1;
  }

  else
  {
    v9 = a1;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v37 = v74;
    v38 = v72;
    v35 = v77;
    v36 = v76;
    v7 = a4 * 0.1;
    LOBYTE(v60[0]) = v73;
    LOBYTE(v53) = v75;
    v32 = a1;
    v33 = v73;
    v34 = v75;
  }

  v10 = a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = v78;
  v12 = v79;
  v13 = v80;
  v14 = v81;
  v16 = v82;
  v15 = v83;
  v17 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v39[0]) = 0;
  *&v46 = v32;
  *(&v46 + 1) = v38;
  *&v47 = v33;
  *(&v47 + 1) = v37;
  *&v48 = v34;
  *(&v48 + 1) = v36;
  *&v49 = v35;
  *(&v49 + 1) = v7;
  v50 = 0;
  v51 = 0;
  v52 = v7;
  v40 = v46;
  v41 = v47;
  *v45 = v7;
  v43 = v49;
  v44 = 0u;
  v42 = v48;
  *&v53 = a1;
  *(&v53 + 1) = v78;
  LOBYTE(v54) = v79;
  *(&v54 + 1) = v80;
  LOBYTE(v55) = v81;
  *(&v55 + 1) = v82;
  *&v56 = v83;
  BYTE8(v56) = v17;
  *&v57 = v18;
  *(&v57 + 1) = v19;
  *&v58 = v20;
  *(&v58 + 1) = v21;
  v59 = 0;
  *&v45[40] = v55;
  *&v45[24] = v54;
  *&v45[8] = v53;
  v45[104] = 0;
  *&v45[88] = v58;
  *&v45[72] = v57;
  *&v45[56] = v56;
  v22 = v46;
  v23 = v47;
  v24 = v49;
  a3[2] = v48;
  a3[3] = v24;
  *a3 = v22;
  a3[1] = v23;
  v25 = v44;
  v26 = *v45;
  v27 = *&v45[32];
  a3[6] = *&v45[16];
  a3[7] = v27;
  a3[4] = v25;
  a3[5] = v26;
  v28 = *&v45[48];
  v29 = *&v45[64];
  v30 = *&v45[80];
  *(a3 + 169) = *&v45[89];
  a3[9] = v29;
  a3[10] = v30;
  a3[8] = v28;
  v60[0] = a1;
  v60[1] = v11;
  v61 = v12;
  v62 = v13;
  v63 = v14;
  v64 = v16;
  v65 = v15;
  v66 = v17;
  v67 = v18;
  v68 = v19;
  v69 = v20;
  v70 = v21;
  v71 = 0;
  sub_1000060D8(&v46, v39, &qword_10002DCF0, &qword_10001A570);
  sub_1000060D8(&v53, v39, &qword_10002DCF8, &qword_10001A578);
  sub_100006140(v60, &qword_10002DCF8, &qword_10001A578);
  v39[0] = v32;
  v39[1] = v38;
  v39[2] = v33;
  v39[3] = v37;
  v39[4] = v34;
  v39[5] = v36;
  v39[6] = v35;
  *&v39[7] = v7;
  v39[8] = 0;
  v39[9] = 0;
  *&v39[10] = v7;
  return sub_100006140(v39, &qword_10002DCF0, &qword_10001A570);
}

char *sub_100003418(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = type metadata accessor for GridItem();
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = &_swiftEmptyArrayStorage;
    }

    v12 = type metadata accessor for GridItem();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_100003574@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GridItem.Size();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for GridItem();
  result = __chkstk_darwin(v10 - 8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 24);
  v15 = *(v1 + 32);
  if ((v14 * v15) >> 64 == (v14 * v15) >> 63)
  {
    v16 = *(v1 + 48);
    if ((*(v1 + 64) & 1) == 0 || !__OFSUB__(v14 * v15, 1))
    {
      v17 = [objc_opt_self() currentDevice];
      v20[2] = a1;
      v18 = v17;
      [v17 userInterfaceIdiom];
      v20[1] = v5;

      *v9 = v16;
      v9[1] = 0x7FF0000000000000;
      (*(v7 + 104))(v9, enum case for GridItem.Size.adaptive(_:), v6);
      GridItem.init(_:spacing:alignment:)();
      v19 = sub_100003418(v13, v15);
      __chkstk_darwin(v19);
      static HorizontalAlignment.center.getter();
      v21 = 0;
      sub_10000662C(&qword_10002DC78, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
      dispatch thunk of OptionSet.init(rawValue:)();
      sub_1000054DC(&qword_10002DC80, &qword_10001A3F8);
      sub_1000064F0();
      return LazyVGrid.init(columns:alignment:spacing:pinnedViews:content:)();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000038A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000054DC(&qword_10002DC98, &qword_10001A400);
  v86 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v70 - v7;
  v9 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  __chkstk_darwin(v9 - 8);
  v11 = &v70 - v10;
  v12 = sub_1000054DC(&qword_10002DCA0, &unk_10001A408);
  v82 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v87 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v88 = &v70 - v15;
  v16 = *a1;
  v17 = *a1 >> 62;
  if (v17)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      if (a2 < 0)
      {
        __break(1u);
      }

      else
      {
        v84 = v11;
        if (result >= a2)
        {
          v19 = a2;
        }

        else
        {
          v19 = result;
        }

        if (result < 0)
        {
          v19 = a2;
        }

        if (a2)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (v17)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (result < 0)
          {
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return result;
          }

          result = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (result >= v20)
        {
          v85 = v8;
          if ((v16 & 0xC000000000000001) != 0 && v20)
          {
            sub_1000055C8();

            v21 = 0;
            do
            {
              v22 = v21 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v21);
              v21 = v22;
            }

            while (v20 != v22);
          }

          else
          {
          }

          v79 = v12;
          if (v17)
          {
            sub_10000686C(a1);
            v24 = _CocoaArrayWrapper.subscript.getter();
          }

          else
          {
            v23 = 0;
            v24 = v16 & 0xFFFFFFFFFFFFFF8;
            v25 = (v16 & 0xFFFFFFFFFFFFFF8) + 32;
            v26 = (2 * v20) | 1;
          }

          *&v89 = v24;
          *(&v89 + 1) = v25;
          *&v90 = v23;
          *(&v90 + 1) = v26;
          swift_getKeyPath();
          v27 = swift_allocObject();
          v28 = *(a1 + 3);
          *(v27 + 48) = *(a1 + 2);
          *(v27 + 64) = v28;
          *(v27 + 80) = *(a1 + 64);
          v29 = *(a1 + 1);
          *(v27 + 16) = *a1;
          *(v27 + 32) = v29;
          sub_1000065F4(a1, &v96);
          sub_1000054DC(&qword_10002DCA8, &qword_10001A430);
          sub_100006BF8(&qword_10002DCB0, &qword_10002DCA8, &qword_10001A430, &protocol conformance descriptor for ArraySlice<A>);
          sub_10000662C(&qword_10002DCB8, sub_1000055C8, &protocol conformance descriptor for NSObject);
          sub_100006674();
          ForEach<>.init(_:id:content:)();
          v30 = *(a1 + 64);
          v81 = a3;
          v80 = v6;
          if ((v30 & 1) == 0)
          {
            v73 = 0;
            v78 = 0;
            v77 = 0;
            KeyPath = 0;
            v51 = 0;
            v84 = 0;
            v75 = 0;
            v83 = 0;
            v74 = 0;
            v49 = 0;
            v50 = 0;
            goto LABEL_30;
          }

          v31 = a1[5];
          result = v31 - a2;
          if (!__OFSUB__(v31, a2))
          {
            v96 = sub_100006738(result);
            v97 = v32;
            sub_100006064();
            v33 = Text.init<A>(_:)();
            v35 = v34;
            v37 = v36;
            static Color.gray.getter();
            v38 = Text.foregroundColor(_:)();
            v40 = v39;
            v42 = v41;

            sub_1000060B8(v33, v35, v37 & 1);

            v43 = type metadata accessor for Font.Design();
            v44 = v84;
            (*(*(v43 - 8) + 56))(v84, 1, 1, v43);
            static Font.system(size:weight:design:)();
            sub_100006140(v44, &qword_10002DC30, &qword_10001A220);
            v73 = Text.font(_:)();
            v78 = v45;
            v47 = v46;
            v77 = v48;

            sub_1000060B8(v38, v40, v42 & 1);
            v49 = 1;

            KeyPath = swift_getKeyPath();
            v84 = swift_getKeyPath();
            LOBYTE(v96) = v47 & 1;
            LOBYTE(v89) = 0;
            v50 = v47 & 1;
            v75 = swift_getKeyPath();
            v83 = swift_getKeyPath();
            v74 = 0x3FDCCCCCCCCCCCCDLL;
            v51 = 2;
LABEL_30:
            v70 = v50;
            v72 = 0;
            v52 = v82;
            v53 = *(v82 + 16);
            v54 = v87;
            v55 = v79;
            v53(v87, v88, v79);
            v56 = v85;
            v53(v85, v54, v55);
            v57 = v56 + *(sub_1000054DC(&qword_10002DCC8, &qword_10001A438) + 48);
            v58 = v73;
            *&v89 = v73;
            v59 = v78;
            *(&v89 + 1) = v78;
            *&v90 = v50;
            v60 = v77;
            *(&v90 + 1) = v77;
            v61 = KeyPath;
            *&v91 = KeyPath;
            v71 = v51;
            *(&v91 + 1) = v51;
            *&v92 = 0;
            *(&v92 + 1) = v84;
            *&v93 = v49;
            v62 = v75;
            *(&v93 + 1) = v75;
            *&v94 = v49;
            v63 = v74;
            *(&v94 + 1) = v83;
            v95 = v74;
            *(v57 + 96) = v74;
            v64 = v90;
            *v57 = v89;
            *(v57 + 16) = v64;
            v65 = v92;
            *(v57 + 32) = v91;
            *(v57 + 48) = v65;
            v66 = v94;
            *(v57 + 64) = v93;
            *(v57 + 80) = v66;
            sub_1000060D8(&v89, &v96, &qword_10002DCD0, &qword_10001A440);
            v67 = *(v52 + 8);
            v67(v88, v55);
            v96 = v58;
            v97 = v59;
            v98 = v70;
            v99 = v60;
            v100 = v61;
            v101 = v71;
            v102 = v72;
            v103 = v84;
            v104 = v49;
            v105 = v62;
            v106 = v49;
            v107 = v83;
            v108 = v63;
            sub_100006140(&v96, &qword_10002DCD0, &qword_10001A440);
            v67(v87, v55);
            v68 = v81;
            sub_1000066C8(v85, v81);
            return (*(v86 + 56))(v68, 0, 1, v80);
          }

          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    result = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v69 = *(v86 + 56);

  return v69(a3, 1, 1, v6);
}

uint64_t sub_1000041F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v39 = a3;
  v40 = a2;
  v6 = a1;
  v8 = sub_1000054DC(&qword_10002DBB0, &qword_10001A1C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_1000054DC(&qword_10002DBB8, &qword_10001A1C8);
  v12 = __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v17 = sub_1000054DC(&qword_10002DBC0, &qword_10001A1D0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  if ((a4 & 0x100) != 0)
  {
    v20 = 5;
    if (v6 != 3)
    {
      v38 = a5;
      v21 = 256;
      goto LABEL_10;
    }

LABEL_8:
    v22 = v39;
    sub_100005DC8(v39, v20, &v41);
    v23 = v42;
    v24 = v44;
    *v19 = v40;
    *(v19 + 1) = v22;
    v19[16] = 0;
    *(v19 + 24) = v41;
    *(v19 + 5) = v23;
    *(v19 + 3) = v43;
    v19[64] = v24;
    swift_storeEnumTagMultiPayload();
    sub_100005BB0();
    sub_100005C04();

    return _ConditionalContent<>.init(storage:)();
  }

  if (a4)
  {
    v20 = 6;
  }

  else
  {
    v20 = 7;
  }

  if (v6 == 3)
  {
    goto LABEL_8;
  }

  v38 = a5;
  v21 = 0;
LABEL_10:
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v26 = sub_1000054DC(&qword_10002DBC8, &qword_10001A1D8);
  sub_100004568(v6, v40, v39, v21 | a4 & 1, v20, &v10[*(v26 + 44)]);
  v27 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100005FF4(v10, v14, &qword_10002DBB0, &qword_10001A1C0);
  v36 = &v14[*(v11 + 36)];
  *v36 = v27;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  sub_100005FF4(v14, v16, &qword_10002DBB8, &qword_10001A1C8);
  sub_1000060D8(v16, v19, &qword_10002DBB8, &qword_10001A1C8);
  swift_storeEnumTagMultiPayload();
  sub_100005BB0();
  sub_100005C04();
  _ConditionalContent<>.init(storage:)();
  return sub_100006140(v16, &qword_10002DBB8, &qword_10001A1C8);
}

uint64_t sub_100004568@<X0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v62 = a1;
  v56 = sub_1000054DC(&qword_10002DBE8, &qword_10001A1E0);
  __chkstk_darwin(v56);
  v59 = (&v56 - v11);
  v12 = sub_1000054DC(&qword_10002DBF0, &qword_10001A1E8);
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = __chkstk_darwin(v12);
  v58 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v57 = &v56 - v15;
  v16 = sub_1000054DC(&qword_10002DBF8, &qword_10001A1F0);
  v17 = __chkstk_darwin(v16 - 8);
  v66 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v65 = &v56 - v19;
  v67 = a3;
  sub_100005DC8(a3, a5, v89);
  v20 = v89[0];
  v21 = v89[1];
  v22 = v89[2];
  v23 = v89[3];
  v24 = v89[4];
  v60 = a4;
  v61 = v90;
  if ((a4 & 0x100) != 0)
  {
    if (a2 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:

      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v68[39] = v93;
      *&v68[23] = v92;
      *&v68[7] = v91;
      *&v84 = a2;
      *(&v84 + 1) = v67;
      LOBYTE(v85) = 0;
      *(&v85 + 1) = v20;
      *&v86 = v21;
      *(&v86 + 1) = v22;
      *&v87 = v23;
      *(&v87 + 1) = v24;
      LOBYTE(v88[0]) = v61;
      *&v88[3] = *(&v93 + 1);
      *(&v88[2] + 1) = *&v68[32];
      *(&v88[1] + 1) = *&v68[16];
      *(v88 + 1) = *v68;
      sub_10000605C(&v84);
      goto LABEL_7;
    }
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v83[39] = v93;
  *&v83[23] = v92;
  *&v83[7] = v91;
  *&v84 = a2;
  *(&v84 + 1) = v67;
  LOBYTE(v85) = 0;
  *(&v85 + 1) = v20;
  *&v86 = v21;
  *(&v86 + 1) = v22;
  *&v87 = v23;
  *(&v87 + 1) = v24;
  LOBYTE(v88[0]) = v61;
  *&v88[3] = *(&v93 + 1);
  *(&v88[2] + 1) = *&v83[32];
  *(&v88[1] + 1) = *&v83[16];
  *(v88 + 1) = *v83;
  sub_100005F5C(&v84);
LABEL_7:
  v80 = v88[0];
  v81 = v88[1];
  v82[0] = v88[2];
  *(v82 + 9) = *(&v88[2] + 9);
  v76 = v84;
  v77 = v85;
  v78 = v86;
  v79 = v87;
  sub_1000054DC(&qword_10002DC00, &qword_10001A1F8);
  sub_100005F68();
  _ConditionalContent<>.init(storage:)();
  v25 = 1;
  v26 = v64;
  v27 = v65;
  if (v62 == 1)
  {
    v28 = static HorizontalAlignment.leading.getter();
    v29 = v59;
    *v59 = v28;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    v30 = sub_1000054DC(&qword_10002DC20, &qword_10001A210);
    sub_100004C28(v67, v29 + *(v30 + 44));
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    v31 = (v29 + *(v56 + 36));
    v32 = v95;
    *v31 = v94;
    v31[1] = v32;
    v31[2] = v96;
    v33 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v58;
    sub_100005FF4(v29, v58, &qword_10002DBE8, &qword_10001A1E0);
    v43 = v42 + *(v26 + 36);
    *v43 = v33;
    *(v43 + 8) = v35;
    *(v43 + 16) = v37;
    *(v43 + 24) = v39;
    *(v43 + 32) = v41;
    *(v43 + 40) = 0;
    v44 = v42;
    v45 = v57;
    sub_100005FF4(v44, v57, &qword_10002DBF0, &qword_10001A1E8);
    sub_100005FF4(v45, v27, &qword_10002DBF0, &qword_10001A1E8);
    v25 = 0;
  }

  (*(v63 + 56))(v27, v25, 1, v26);
  v74 = v102;
  v75[0] = v103[0];
  *(v75 + 9) = *(v103 + 9);
  v69 = v97;
  v70 = v98;
  v71 = v99;
  v72 = v100;
  v73 = v101;
  v46 = v66;
  sub_1000060D8(v27, v66, &qword_10002DBF8, &qword_10001A1F0);
  v48 = v72;
  v47 = v73;
  v49 = v74;
  v50 = v75[0];
  v80 = v73;
  v81 = v74;
  v82[0] = v75[0];
  *(v82 + 9) = *(v75 + 9);
  v51 = v69;
  v52 = v70;
  v76 = v69;
  v77 = v70;
  v53 = v71;
  v78 = v71;
  v79 = v72;
  *(a6 + 105) = *(v75 + 9);
  a6[5] = v49;
  a6[6] = v50;
  a6[3] = v48;
  a6[4] = v47;
  a6[1] = v52;
  a6[2] = v53;
  *a6 = v51;
  v54 = sub_1000054DC(&qword_10002DC10, &qword_10001A200);
  sub_1000060D8(v46, a6 + *(v54 + 48), &qword_10002DBF8, &qword_10001A1F0);
  sub_1000060D8(&v76, &v84, &qword_10002DC18, &qword_10001A208);
  sub_100006140(v27, &qword_10002DBF8, &qword_10001A1F0);
  sub_100006140(v46, &qword_10002DBF8, &qword_10001A1F0);
  v88[0] = v73;
  v88[1] = v74;
  v88[2] = v75[0];
  *(&v88[2] + 9) = *(v75 + 9);
  v84 = v69;
  v85 = v70;
  v86 = v71;
  v87 = v72;
  return sub_100006140(&v84, &qword_10002DC18, &qword_10001A208);
}

uint64_t sub_100004C28@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v90 = a2;
  v91 = sub_1000054DC(&qword_10002DC28, &qword_10001A218) - 8;
  v3 = __chkstk_darwin(v91);
  v89 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v88 = &v76 - v5;
  v6 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  __chkstk_darwin(v6 - 8);
  v8 = &v76 - v7;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v11 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v79 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v14 - 8);
  v83 = sub_1000054DC(&qword_10002DC38, &qword_10001A228) - 8;
  v15 = __chkstk_darwin(v83);
  v87 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v76 - v17;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v19._object = 0x800000010001B3D0;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
  v92 = a1;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  String.LocalizationValue.init(stringInterpolation:)();
  v80 = v11;
  static Locale.current.getter();
  v92 = String.init(localized:table:bundle:locale:comment:)();
  v93 = v21;
  v81 = sub_100006064();
  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  v85 = type metadata accessor for Font.Design();
  v27 = *(v85 - 8);
  v84 = *(v27 + 56);
  v86 = v27 + 56;
  v82 = v8;
  v84(v8, 1, 1, v85);
  static Font.system(size:weight:design:)();
  sub_100006140(v8, &qword_10002DC30, &qword_10001A220);
  v28 = Text.font(_:)();
  v30 = v29;
  LOBYTE(v8) = v31;

  sub_1000060B8(v22, v24, v26 & 1);

  static Font.Weight.semibold.getter();
  v32 = Text.fontWeight(_:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1000060B8(v28, v30, v8 & 1);

  v92 = v32;
  v93 = v34;
  v94 = v36 & 1;
  v95 = v38;
  View.lineLimit(_:reservesSpace:)();
  sub_1000060B8(v32, v34, v36 & 1);

  v39 = static Font.callout.getter();
  KeyPath = swift_getKeyPath();
  v78 = sub_1000054DC(&qword_10002DC48, &qword_10001A260);
  v41 = &v18[*(v78 + 36)];
  *v41 = KeyPath;
  v41[1] = v39;
  v42 = swift_getKeyPath();
  v77 = sub_1000054DC(&qword_10002DC50, &qword_10001A298);
  v43 = &v18[*(v77 + 36)];
  *v43 = v42;
  v43[8] = 1;
  v44 = swift_getKeyPath();
  v45 = &v18[*(v91 + 44)];
  *v45 = v44;
  v45[1] = 0x3FDCCCCCCCCCCCCDLL;
  LOBYTE(v42) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v46 = &v18[*(v83 + 44)];
  *v46 = v42;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v92 = String.init(localized:table:bundle:locale:comment:)();
  v93 = v51;
  v52 = Text.init<A>(_:)();
  v54 = v53;
  LOBYTE(v28) = v55;
  static Color.gray.getter();
  v56 = Text.foregroundColor(_:)();
  v58 = v57;
  LOBYTE(v34) = v59;
  v61 = v60;

  sub_1000060B8(v52, v54, v28 & 1);

  v92 = v56;
  v93 = v58;
  v94 = v34 & 1;
  v95 = v61;
  v62 = v88;
  View.lineLimit(_:reservesSpace:)();
  sub_1000060B8(v56, v58, v34 & 1);

  v63 = v82;
  v84(v82, 1, 1, v85);
  v64 = static Font.system(size:weight:design:)();
  sub_100006140(v63, &qword_10002DC30, &qword_10001A220);
  v65 = swift_getKeyPath();
  v66 = (v62 + *(v78 + 36));
  *v66 = v65;
  v66[1] = v64;
  v67 = swift_getKeyPath();
  v68 = v62 + *(v77 + 36);
  *v68 = v67;
  *(v68 + 8) = 1;
  v69 = swift_getKeyPath();
  v70 = (v62 + *(v91 + 44));
  *v70 = v69;
  v70[1] = 0x3FDCCCCCCCCCCCCDLL;
  v71 = v87;
  sub_1000060D8(v18, v87, &qword_10002DC38, &qword_10001A228);
  v72 = v89;
  sub_1000060D8(v62, v89, &qword_10002DC28, &qword_10001A218);
  v73 = v90;
  sub_1000060D8(v71, v90, &qword_10002DC38, &qword_10001A228);
  v74 = sub_1000054DC(&qword_10002DC58, &qword_10001A2D0);
  sub_1000060D8(v72, v73 + *(v74 + 48), &qword_10002DC28, &qword_10001A218);
  sub_100006140(v62, &qword_10002DC28, &qword_10001A218);
  sub_100006140(v18, &qword_10002DC38, &qword_10001A228);
  sub_100006140(v72, &qword_10002DC28, &qword_10001A218);
  return sub_100006140(v71, &qword_10002DC38, &qword_10001A228);
}

uint64_t sub_100005430@<X0>(uint64_t a1@<X8>)
{
  if (v1[25])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000041F0(*v1, *(v1 + 1), *(v1 + 2), v2 | v1[24], a1);
}

void *sub_100005454(uint64_t a1, uint64_t a2)
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

  sub_1000054DC(&qword_10002DB28, &unk_10001A110);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1000054DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005578(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100005590(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1000055C8()
{
  result = qword_10002DB98;
  if (!qword_10002DB98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002DB98);
  }

  return result;
}

uint64_t sub_100005614(uint64_t a1, char a2)
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

uint64_t sub_1000056B4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

void sub_100005708(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_1000055C8();
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000054DC(&qword_10002DB28, &unk_10001A110);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1000057EC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100005844(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100006BF8(&qword_10002DBA8, &qword_10002DBA0, &qword_10001AFD0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_1000054DC(&qword_10002DBA0, &qword_10001AFD0);
            v9 = sub_100015BE8(v13, i, a3);
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
        sub_1000055C8();
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

uint64_t sub_1000059E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100005A34(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100005A98(void *a1)
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

__n128 sub_100005AE4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100005AF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100005BB0()
{
  result = qword_10002DBD0;
  if (!qword_10002DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DBD0);
  }

  return result;
}

unint64_t sub_100005C04()
{
  result = qword_10002DBD8;
  if (!qword_10002DBD8)
  {
    sub_1000059E8(&qword_10002DBB8, &qword_10001A1C8);
    sub_100006BF8(&qword_10002DBE0, &qword_10002DBB0, &qword_10001A1C0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DBD8);
  }

  return result;
}

void sub_100005CBC(uint64_t a1, void *a2)
{
  sub_1000054DC(&qword_10002DD28, &unk_10001A670);
  UIViewRepresentableContext.coordinator.getter();
  v3 = *(v8 + 16);

  sub_1000054DC(&qword_10002DB28, &unk_10001A110);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10001A080;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = [objc_opt_self() emptyContact];
  }

  *(v4 + 32) = v5;
  sub_1000055C8();
  v6 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setContacts:isa];
}

uint64_t sub_100005DC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a2 * 9) >> 64 == (9 * a2) >> 63)
  {
    v3 = result - 1;
    if ((result - 1) >= 6)
    {
      if ((result - 10) > 0xFFFFFFFFFFFFFFFCLL)
      {
        v4 = 3;
        v5 = 3;
      }

      else if ((result - 13) > 0xFFFFFFFFFFFFFFFCLL)
      {
        v5 = 3;
        v4 = 4;
      }

      else if ((result - 17) > 0xFFFFFFFFFFFFFFFBLL)
      {
        v4 = 4;
        v5 = 4;
      }

      else if ((result - 21) > 0xFFFFFFFFFFFFFFFBLL)
      {
        v5 = 4;
        v4 = 5;
      }

      else if ((result - 26) > 0xFFFFFFFFFFFFFFFALL)
      {
        v4 = 5;
        v5 = 5;
      }

      else if ((result - 31) > 0xFFFFFFFFFFFFFFFALL)
      {
        v5 = 5;
        v4 = 6;
      }

      else if ((result - 37) > 0xFFFFFFFFFFFFFFF9)
      {
        v4 = 6;
        v5 = 6;
      }

      else
      {
        v6 = result - 43;
        v5 = 6;
        v7 = result - 50;
        v8 = 7;
        v9 = 8;
        if ((result - 57) < 0xFFFFFFFFFFFFFFF9)
        {
          v9 = 9;
        }

        v10 = __CFADD__(v7, 8);
        if (v7 <= 0xFFFFFFFFFFFFFFF8)
        {
          v11 = v9;
        }

        else
        {
          v11 = 7;
        }

        if (result == 42 || !v10)
        {
          v8 = 7;
        }

        v12 = 8;
        if ((result - 49) < 0xFFFFFFFFFFFFFFFALL)
        {
          v12 = 9;
        }

        if (a2 <= 6)
        {
          v11 = v12;
          v8 = a2;
        }

        v13 = __CFADD__(v6, 7);
        if (v6 <= 0xFFFFFFFFFFFFFFF9)
        {
          v4 = v11;
        }

        else
        {
          v4 = 7;
        }

        if (result == 36 || !v13)
        {
          v5 = v8;
        }
      }
    }

    else
    {
      v4 = qword_10001A680[v3];
      v5 = qword_10001A6B0[v3];
    }

    v14 = 0xE0u / v4;
    if (v14 >= 224 / v5)
    {
      v14 = 224 / v5;
    }

    if (v14 <= 28)
    {
      v14 = 28;
    }

    *a3 = v5;
    *(a3 + 8) = v4;
    *(a3 + 16) = result;
    *(a3 + 24) = v14;
    *(a3 + 32) = v14 * 0.01;
    *(a3 + 40) = 9 * a2 < result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100005F68()
{
  result = qword_10002DC08;
  if (!qword_10002DC08)
  {
    sub_1000059E8(&qword_10002DC00, &qword_10001A1F8);
    sub_100005BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC08);
  }

  return result;
}

uint64_t sub_100005FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000054DC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_100006064()
{
  result = qword_10002DC40;
  if (!qword_10002DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC40);
  }

  return result;
}

uint64_t sub_1000060B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000060D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000054DC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100006140(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000054DC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 sub_1000061A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000061C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10000620C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupVisualizerType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GroupVisualizerType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000063E8()
{
  result = qword_10002DC60;
  if (!qword_10002DC60)
  {
    sub_1000059E8(&qword_10002DC68, "\\ ");
    sub_100005BB0();
    sub_100005C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC60);
  }

  return result;
}

unint64_t sub_100006478()
{
  result = qword_10002DC70;
  if (!qword_10002DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC70);
  }

  return result;
}

unint64_t sub_1000064F0()
{
  result = qword_10002DC88;
  if (!qword_10002DC88)
  {
    sub_1000059E8(&qword_10002DC80, &qword_10001A3F8);
    sub_100006BF8(&qword_10002DC90, &qword_10002DC98, &qword_10001A400, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DC88);
  }

  return result;
}

uint64_t sub_1000065A0()
{

  return _swift_deallocObject(v0, 81, 7);
}

id sub_1000065D8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 32);
  *a2 = v3;
  *(a2 + 8) = *(v2 + 64);
  *(a2 + 24) = v4;
  return v3;
}

uint64_t sub_10000662C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100006674()
{
  result = qword_10002DCC0;
  if (!qword_10002DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DCC0);
  }

  return result;
}

uint64_t sub_1000066C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000054DC(&qword_10002DC98, &qword_10001A400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006738(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSNumberFormatter) init];
  [v2 setNumberStyle:1];
  v3 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  v4 = [v2 stringFromNumber:v3];

  if (!v4)
  {
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = v9;
    if (a1 <= 999)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 2603;
    goto LABEL_6;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (a1 > 999)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 43;
LABEL_6:
  v12 = v8;
  v10._countAndFlagsBits = v5;
  v10._object = v7;
  String.append(_:)(v10);

  return v12;
}

__n128 sub_10000689C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1000068B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1000068F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10000694C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100006960(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000069B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100006A80(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100006ADC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_100006B40()
{
  result = qword_10002DD00;
  if (!qword_10002DD00)
  {
    sub_1000059E8(&qword_10002DD08, &qword_10001A580);
    sub_100006BF8(&qword_10002DD10, &qword_10002DD18, &qword_10001A588, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DD00);
  }

  return result;
}

uint64_t sub_100006BF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000059E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100006C50()
{
  result = qword_10002DD20;
  if (!qword_10002DD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DD20);
  }

  return result;
}

unint64_t sub_100006CA4()
{
  result = qword_10002DD30;
  if (!qword_10002DD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002DD30);
  }

  return result;
}

uint64_t sub_100006D04()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100006D78()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100006DEC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1000054DC(&qword_10002E138, &qword_10001A830);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005590(v9, qword_10002F570);
  v10 = static os_log_type_t.debug.getter();

  v11 = Logger.logObject.getter();

  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100017CA8(a1, a2, &v20);
    _os_log_impl(&_mh_execute_header, v11, v10, "Loading Onboarding avatars for bundle %s", v12, 0xCu);
    sub_100005A98(v13);
  }

  v14 = sub_100001A40();
  v15 = sub_100001B74(v14);
  swift_getKeyPath();
  swift_getKeyPath();
  v20 = v15;

  static Published.subscript.setter();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  v17[5] = v3;

  sub_1000079D0(0, 0, v8, &unk_10001A888, v17);
}

uint64_t sub_100007078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = type metadata accessor for DispatchQoS();
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_100007194, 0, 0);
}

uint64_t sub_100007194()
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = sub_100005590(v1, qword_10002F570);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Loading Onboarding avatars", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1000072E8;
  v6 = v0[13];

  return sub_100001E14(v6);
}

uint64_t sub_1000072E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_10000769C;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_100007410;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100007410()
{
  v1 = v0[24];
  v2 = v0[20];
  v12 = v0[19];
  v13 = v0[18];
  v3 = v0[15];
  v10 = v0[17];
  v11 = v0[16];
  sub_100011B98();
  v9 = static OS_dispatch_queue.main.getter();
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v1;
  v0[6] = sub_100011C5C;
  v0[7] = v5;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10000798C;
  v0[5] = &unk_100029638;
  v6 = _Block_copy(v0 + 2);

  static DispatchQoS.unspecified.getter();
  v0[12] = &_swiftEmptyArrayStorage;
  sub_100012D54(&qword_10002E148, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000054DC(&qword_10002E150, &qword_10001A8A8);
  sub_100006BF8(&qword_10002E158, &qword_10002E150, &qword_10001A8A8, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v6);

  (*(v11 + 8))(v10, v3);
  (*(v12 + 8))(v2, v13);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10000769C()
{
  v11 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_100017CA8(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Loading Onboarding Visualization failed: %s", v3, 0xCu);
    sub_100005A98(v4);
  }

  else
  {
  }

  v8 = *(v0 + 8);

  return v8();
}

void sub_100007830(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
    if (qword_10002DA20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100005590(v2, qword_10002F570);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Finished loading Onboarding avatars", v5, 2u);
    }
  }
}

uint64_t sub_10000798C(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1000079D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000054DC(&qword_10002E138, &qword_10001A830);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000060D8(a3, v25 - v10, &qword_10002E138, &qword_10001A830);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100006140(v11, &qword_10002E138, &qword_10001A830);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100006140(a3, &qword_10002E138, &qword_10001A830);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006140(a3, &qword_10002E138, &qword_10001A830);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100007CD0()
{
  v1 = OBJC_IVAR____TtC23LimitedAccessPromptView22ContactStoreVisualizer__allContacts;
  v2 = sub_1000054DC(&qword_10002E160, &qword_10001A8F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC23LimitedAccessPromptView22ContactStoreVisualizer__allContactsCount;
  v4 = sub_1000054DC(&qword_10002E168, &qword_10001A900);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContactStoreVisualizer(uint64_t a1)
{
  result = qword_10002DEF8;
  if (!qword_10002DEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100007E18(uint64_t a1)
{
  sub_100007EE4(319);
  if (v1 <= 0x3F)
  {
    sub_100007F48();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100007EE4(uint64_t a1)
{
  if (!qword_10002DF08)
  {
    sub_1000059E8(&qword_10002DBA0, &qword_10001AFD0);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10002DF08);
    }
  }
}

void sub_100007F48()
{
  if (!qword_10002DF10)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10002DF10);
    }
  }
}

uint64_t sub_100007F98@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ContactStoreVisualizer(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_100007FD8()
{

  sub_10000809C(v0[6], v0[7]);
  sub_10000809C(v0[8], v0[9]);
  sub_10000809C(v0[10], v0[11]);

  return swift_deallocClassInstance();
}

uint64_t sub_100008060@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ContactsLimitedAccessPromptViewObservable();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10000809C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000080C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v22 = sub_1000054DC(&qword_10002E1B0, &qword_10001AAF8);
  __chkstk_darwin(v22);
  v4 = v21 - v3;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_1000054DC(&qword_10002E1B8, &qword_10001AB00);
  sub_1000083C4(v1, &v4[*(v5 + 44)]);
  v26 = *(v1 + 48);
  sub_1000054DC(&qword_10002E1C0, &qword_10001AB08);
  State.projectedValue.getter();
  v21[1] = v25;
  v6 = swift_allocObject();
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  *(v6 + 128) = *(v1 + 112);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  v10 = swift_allocObject();
  v11 = *(v1 + 80);
  *(v10 + 80) = *(v1 + 64);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(v1 + 96);
  *(v10 + 128) = *(v1 + 112);
  v12 = *(v1 + 16);
  *(v10 + 16) = *v1;
  *(v10 + 32) = v12;
  v13 = *(v1 + 48);
  *(v10 + 48) = *(v1 + 32);
  *(v10 + 64) = v13;
  sub_100012198(v1, &v24);
  sub_100012198(v1, &v24);
  sub_1000054DC(&qword_10002E1C8, &qword_10001AB10);
  sub_100006BF8(&qword_10002E1D0, &qword_10002E1B0, &qword_10001AAF8, &protocol conformance descriptor for VStack<A>);
  sub_1000121D0();
  v14 = v23;
  View.sheet<A>(isPresented:onDismiss:content:)();

  sub_100006140(v4, &qword_10002E1B0, &qword_10001AAF8);
  v15 = swift_allocObject();
  v16 = *(v2 + 80);
  *(v15 + 80) = *(v2 + 64);
  *(v15 + 96) = v16;
  *(v15 + 112) = *(v2 + 96);
  *(v15 + 128) = *(v2 + 112);
  v17 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v17;
  v18 = *(v2 + 48);
  *(v15 + 48) = *(v2 + 32);
  *(v15 + 64) = v18;
  v19 = (v14 + *(sub_1000054DC(&qword_10002E1E8, &qword_10001AB18) + 36));
  *v19 = sub_1000122DC;
  v19[1] = v15;
  v19[2] = 0;
  v19[3] = 0;
  return sub_100012198(v2, &v24);
}

uint64_t sub_1000083C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000054DC(&qword_10002E220, &qword_10001AB40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v31 - v6;
  v8 = sub_1000054DC(&qword_10002E228, &qword_10001AB48);
  __chkstk_darwin(v8);
  v32 = v31 - v9;
  v10 = sub_1000054DC(&qword_10002E230, &qword_10001AB50);
  __chkstk_darwin(v10);
  v12 = v31 - v11;
  v34 = *(a1 + 32);
  sub_1000054DC(&qword_10002E218, &qword_10001AB38);
  v13 = State.wrappedValue.getter();
  if (v33)
  {
    v31[3] = v31;
    __chkstk_darwin(v13);
    v31[-2] = a1;
    v31[1] = sub_1000054DC(&qword_10002E238, &qword_10001AB58);
    v14 = v4;
    v15 = sub_1000059E8(&qword_10002E240, &qword_10001AB60);
    v31[2] = v8;
    v31[5] = v10;
    v16 = sub_1000059E8(&qword_10002E248, &qword_10001AB68);
    v31[4] = a2;
    v17 = v16;
    v18 = sub_100006BF8(&qword_10002E250, &qword_10002E240, &qword_10001AB60, &protocol conformance descriptor for VStack<A>);
    v19 = sub_100006BF8(&qword_10002E258, &qword_10002E248, &qword_10001AB68, &protocol conformance descriptor for TupleToolbarContent<A>);
    *&v34 = v15;
    *(&v34 + 1) = v17;
    *&v35 = v18;
    *(&v35 + 1) = v19;
    swift_getOpaqueTypeConformance2();
    NavigationStack.init<>(root:)();
    (*(v5 + 16))(v32, v7, v14);
    swift_storeEnumTagMultiPayload();
    sub_1000129D4();
    sub_100006BF8(&qword_10002E288, &qword_10002E220, &qword_10001AB40, &protocol conformance descriptor for NavigationStack<A, B>);
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v7, v14);
  }

  else
  {
    *v12 = static HorizontalAlignment.center.getter();
    *(v12 + 1) = 0;
    v12[16] = 1;
    v21 = sub_1000054DC(&qword_10002E290, &qword_10001AB80);
    sub_10000891C(a1, &v12[*(v21 + 44)]);
    v22 = static HorizontalAlignment.center.getter();
    v23 = &v12[*(v10 + 36)];
    v24 = static Color.clear.getter();
    v25 = v23 + *(sub_1000054DC(&qword_10002E298, &qword_10001AB88) + 36);
    static Material.thin.getter();
    v26 = static Edge.Set.all.getter();
    v25[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v26;
    *v23 = v24;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v27 = (v23 + *(sub_1000054DC(&qword_10002E2A8, &qword_10001AB98) + 36));
    v28 = v35;
    *v27 = v34;
    v27[1] = v28;
    v27[2] = v36;
    VerticalEdge.rawValue.getter();
    LOBYTE(v24) = Edge.init(rawValue:)();
    v29 = static SafeAreaRegions.container.getter();
    v30 = v23 + *(sub_1000054DC(&qword_10002E280, &qword_10001AB78) + 36);
    *v30 = v29;
    *(v30 + 1) = 0;
    v30[16] = 0;
    v30[17] = v24;
    *(v30 + 3) = v22;
    sub_1000060D8(v12, v32, &qword_10002E230, &qword_10001AB50);
    swift_storeEnumTagMultiPayload();
    sub_1000129D4();
    sub_100006BF8(&qword_10002E288, &qword_10002E220, &qword_10001AB40, &protocol conformance descriptor for NavigationStack<A, B>);
    _ConditionalContent<>.init(storage:)();
    return sub_100006140(v12, &qword_10002E230, &qword_10001AB50);
  }
}

uint64_t sub_10000891C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v71 = a2;
  v3 = sub_1000054DC(&qword_10002E2B0, &qword_10001ABA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v66 - v4;
  v6 = sub_1000054DC(&qword_10002E2B8, &qword_10001ABA8);
  v7 = v6 - 8;
  v8 = __chkstk_darwin(v6);
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v66 - v11;
  __chkstk_darwin(v10);
  v69 = &v66 - v13;
  v67 = sub_1000054DC(&qword_10002E2C0, &qword_10001ABB0);
  v14 = *(v67 - 8);
  v15 = __chkstk_darwin(v67);
  v68 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v66 = &v66 - v17;
  static Axis.Set.vertical.getter();
  v72 = a1;
  sub_1000054DC(&qword_10002E2C8, &qword_10001ABB8);
  sub_100006BF8(&qword_10002E2D0, &qword_10002E2C8, &qword_10001ABB8, &protocol conformance descriptor for TupleView<A>);
  ScrollView.init(_:showsIndicators:content:)();
  v18 = static HorizontalAlignment.center.getter();
  v19 = objc_opt_self();
  v20 = [v19 mainScreen];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v73.origin.x = v22;
  v73.origin.y = v24;
  v73.size.width = v26;
  v73.size.height = v28;
  Height = CGRectGetHeight(v73);
  v30 = 0x402E000000000000;
  if (Height <= 812.0)
  {
    v30 = 0x4024000000000000;
  }

  *v5 = v18;
  *(v5 + 1) = v30;
  v5[16] = 0;
  v31 = sub_1000054DC(&qword_10002E2D8, &qword_10001ABC0);
  sub_10000A57C(a1, &v5[*(v31 + 44)]);
  v32 = [v19 mainScreen];
  [v32 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v74.origin.x = v34;
  v74.origin.y = v36;
  v74.size.width = v38;
  v74.size.height = v40;
  if (CGRectGetHeight(v74) > 812.0)
  {
    v41 = 10.0;
  }

  else
  {
    v41 = 0.0;
  }

  v42 = [v19 mainScreen];
  [v42 bounds];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v75.origin.x = v44;
  v75.origin.y = v46;
  v75.size.width = v48;
  v75.size.height = v50;
  if (CGRectGetHeight(v75) > 812.0)
  {
    v51 = 10.0;
  }

  else
  {
    v51 = 0.0;
  }

  v52 = static Edge.Set.all.getter();
  sub_100005FF4(v5, v12, &qword_10002E2B0, &qword_10001ABA0);
  v53 = &v12[*(v7 + 44)];
  *v53 = v52;
  *(v53 + 1) = v41;
  *(v53 + 2) = 0x4041800000000000;
  *(v53 + 3) = v51;
  *(v53 + 4) = 0x4041800000000000;
  v53[40] = 0;
  v54 = v69;
  sub_100005FF4(v12, v69, &qword_10002E2B8, &qword_10001ABA8);
  v55 = v14;
  v56 = *(v14 + 16);
  v57 = v67;
  v58 = v68;
  v59 = v66;
  v56(v68, v66, v67);
  v60 = v70;
  sub_1000060D8(v54, v70, &qword_10002E2B8, &qword_10001ABA8);
  v61 = v71;
  v56(v71, v58, v57);
  v62 = sub_1000054DC(&qword_10002E2E0, &qword_10001ABC8);
  v63 = &v61[*(v62 + 48)];
  *v63 = 0;
  v63[8] = 1;
  sub_1000060D8(v60, &v61[*(v62 + 64)], &qword_10002E2B8, &qword_10001ABA8);
  sub_100006140(v54, &qword_10002E2B8, &qword_10001ABA8);
  v64 = *(v55 + 8);
  v64(v59, v57);
  sub_100006140(v60, &qword_10002E2B8, &qword_10001ABA8);
  return (v64)(v58, v57);
}

uint64_t sub_100008E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a2;
  v113 = sub_1000054DC(&qword_10002E3C0, &qword_10001AC88);
  __chkstk_darwin(v113);
  v114 = &v107 - v3;
  v4 = type metadata accessor for Material();
  v111 = *(v4 - 8);
  v112 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v107 - v8;
  v10 = sub_1000054DC(&qword_10002E3C8, &qword_10001AC90);
  v11 = __chkstk_darwin(v10);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v107 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v107 - v18;
  __chkstk_darwin(v17);
  v21 = &v107 - v20;
  v22 = sub_1000054DC(&qword_10002E3D0, &qword_10001AC98);
  v23 = __chkstk_darwin(v22 - 8);
  v117 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v115 = a1;
  v116 = &v107 - v25;
  if ((*(a1 + 112) & 1) == 0)
  {
    if (*(a1 + 16))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v49 = v121[0];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v110 = v121[0];
      v50 = [objc_opt_self() mainScreen];
      [v50 bounds];
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;

      v142.origin.x = v52;
      v142.origin.y = v54;
      v142.size.width = v56;
      v142.size.height = v58;
      v109 = CGRectGetHeight(v142) <= 812.0;
      v59 = [objc_opt_self() currentDevice];
      v60 = [v59 userInterfaceIdiom];

      v108 = v60 == 1;
      v121[0] = sub_1000125A8(v49);
      sub_100012404();
      v61 = v121[0];
      v62 = static Edge.Set.all.getter();
      v131[0] = 0;
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      *&v133[55] = v137;
      *&v133[71] = v138;
      *&v133[87] = v139;
      *&v133[103] = v140;
      *&v133[7] = v134;
      *&v133[23] = v135;
      *&v133[39] = v136;
      if (static Solarium.isEnabled.getter())
      {
        static Material.thin.getter();
      }

      else
      {
        static Material.regular.getter();
      }

      v71 = static Edge.Set.all.getter();
      v72 = &v13[*(v10 + 36)];
      (*(v111 + 32))(v72, v7, v112);
      v72[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v71;
      *(v13 + 40) = xmmword_10001A6E0;
      *(v13 + 56) = xmmword_10001A6F0;
      v73 = *&v133[80];
      *(v13 + 137) = *&v133[64];
      *(v13 + 153) = v73;
      *(v13 + 169) = *&v133[96];
      v74 = *&v133[16];
      *(v13 + 73) = *v133;
      *(v13 + 89) = v74;
      v75 = *&v133[48];
      *(v13 + 105) = *&v133[32];
      *v13 = 1;
      *(v13 + 1) = *(v121 + 3);
      *(v13 + 1) = v121[0];
      v76 = v110;
      *(v13 + 1) = v61;
      *(v13 + 2) = v76;
      LOBYTE(v76) = v108;
      v13[24] = v109;
      v13[25] = v76;
      *(v13 + 15) = v132[1];
      *(v13 + 26) = v132[0];
      v13[32] = v62;
      *(v13 + 9) = *(v120 + 3);
      *(v13 + 33) = v120[0];
      v13[72] = 0;
      *(v13 + 23) = *&v133[111];
      *(v13 + 121) = v75;
      sub_100005FF4(v13, v16, &qword_10002E3C8, &qword_10001AC90);
      sub_1000060D8(v16, v114, &qword_10002E3C8, &qword_10001AC90);
      swift_storeEnumTagMultiPayload();
      sub_10001311C();
      v69 = v116;
      _ConditionalContent<>.init(storage:)();
      sub_100006140(v16, &qword_10002E3C8, &qword_10001AC90);
      v70 = 10.0;
      goto LABEL_12;
    }

LABEL_18:
    type metadata accessor for ContactStoreVisualizer(0);
    sub_100012D54(&qword_10002E8A0, 255, type metadata accessor for ContactStoreVisualizer, &unk_10001A7F4);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v26 = v121[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v110 = v121[0];
  v27 = [objc_opt_self() mainScreen];
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v141.origin.x = v29;
  v141.origin.y = v31;
  v141.size.width = v33;
  v141.size.height = v35;
  v109 = CGRectGetHeight(v141) <= 812.0;
  v36 = [objc_opt_self() currentDevice];
  v37 = [v36 userInterfaceIdiom];

  v38 = v37 == 1;
  v121[0] = sub_1000125A8(v26);
  sub_100012404();
  v39 = v121[0];
  v40 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v131[0] = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v119[55] = v137;
  *&v119[71] = v138;
  *&v119[87] = v139;
  *&v119[103] = v140;
  *&v119[7] = v134;
  *&v119[23] = v135;
  *&v119[39] = v136;
  if (static Solarium.isEnabled.getter())
  {
    static Material.thin.getter();
  }

  else
  {
    static Material.regular.getter();
  }

  v63 = static Edge.Set.all.getter();
  v64 = &v19[*(v10 + 36)];
  (*(v111 + 32))(v64, v9, v112);
  v64[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v63;
  *v19 = 1;
  *(v19 + 1) = *(v121 + 3);
  *(v19 + 1) = v121[0];
  v65 = v110;
  *(v19 + 1) = v39;
  *(v19 + 2) = v65;
  v19[24] = v109;
  v19[25] = v38;
  *(v19 + 15) = v132[1];
  *(v19 + 26) = v132[0];
  v19[32] = v40;
  *(v19 + 9) = *(v120 + 3);
  *(v19 + 33) = v120[0];
  *(v19 + 5) = v42;
  *(v19 + 6) = v44;
  *(v19 + 7) = v46;
  *(v19 + 8) = v48;
  v19[72] = 0;
  v66 = *&v119[80];
  *(v19 + 137) = *&v119[64];
  *(v19 + 153) = v66;
  *(v19 + 169) = *&v119[96];
  *(v19 + 23) = *&v119[111];
  v67 = *&v119[16];
  *(v19 + 73) = *v119;
  *(v19 + 89) = v67;
  v68 = *&v119[48];
  *(v19 + 105) = *&v119[32];
  *(v19 + 121) = v68;
  sub_100005FF4(v19, v21, &qword_10002E3C8, &qword_10001AC90);
  sub_1000060D8(v21, v114, &qword_10002E3C8, &qword_10001AC90);
  swift_storeEnumTagMultiPayload();
  sub_10001311C();
  v69 = v116;
  _ConditionalContent<>.init(storage:)();
  sub_100006140(v21, &qword_10002E3C8, &qword_10001AC90);
  v70 = 0.0;
LABEL_12:
  v77 = static HorizontalAlignment.leading.getter();
  v129 = 1;
  sub_100009B70(v121);
  memcpy(v131, v121, sizeof(v131));
  memcpy(v132, v121, sizeof(v132));
  sub_1000060D8(v131, v120, &qword_10002E410, &qword_10001ACB0);
  sub_100006140(v132, &qword_10002E410, &qword_10001ACB0);
  memcpy(&v128[7], v131, 0x118uLL);
  v78 = v129;
  v79 = objc_opt_self();
  v80 = [v79 mainScreen];
  [v80 bounds];
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;

  v143.origin.x = v82;
  v143.origin.y = v84;
  v143.size.width = v86;
  v143.size.height = v88;
  if (CGRectGetHeight(v143) <= 812.0)
  {
    v70 = 0.0;
  }

  v89 = [v79 mainScreen];
  [v89 bounds];
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;

  v144.origin.x = v91;
  v144.origin.y = v93;
  v144.size.width = v95;
  v144.size.height = v97;
  if (CGRectGetHeight(v144) > 812.0)
  {
    v98 = 10.0;
  }

  else
  {
    v98 = 0.0;
  }

  v99 = static Edge.Set.all.getter();
  v130 = 0;
  v100 = v117;
  sub_1000060D8(v69, v117, &qword_10002E3D0, &qword_10001AC98);
  v101 = v69;
  v102 = v118;
  sub_1000060D8(v100, v118, &qword_10002E3D0, &qword_10001AC98);
  v103 = sub_1000054DC(&qword_10002E418, &qword_10001ACB8);
  v104 = v102 + *(v103 + 48);
  *v104 = 0;
  *(v104 + 8) = 1;
  v105 = *(v103 + 64);
  v120[0] = v77;
  v120[1] = 0;
  LOBYTE(v120[2]) = v78;
  memcpy(&v120[2] + 1, v128, 0x11FuLL);
  LOBYTE(v120[38]) = v99;
  *&v120[39] = v70;
  v120[40] = 0x4041800000000000;
  *&v120[41] = v98;
  v120[42] = 0x4041800000000000;
  LOBYTE(v120[43]) = 0;
  memcpy((v102 + v105), v120, 0x159uLL);
  sub_1000060D8(v120, v121, &qword_10002E420, &qword_10001ACC0);
  sub_100006140(v101, &qword_10002E3D0, &qword_10001AC98);
  v121[0] = v77;
  v121[1] = 0;
  LOBYTE(v121[2]) = v78;
  memcpy(&v121[2] + 1, v128, 0x11FuLL);
  v122 = v99;
  v123 = v70;
  v124 = 0x4041800000000000;
  v125 = v98;
  v126 = 0x4041800000000000;
  v127 = 0;
  sub_100006140(v121, &qword_10002E420, &qword_10001ACC0);
  return sub_100006140(v100, &qword_10002E3D0, &qword_10001AC98);
}

uint64_t sub_100009B70@<X0>(void *a1@<X8>)
{
  v97 = a1;
  v1 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  __chkstk_darwin(v1 - 8);
  v98 = &v83 - v2;
  v3 = type metadata accessor for Font.TextStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v94 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v93 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v146 = String.init(localized:table:bundle:locale:comment:)();
  v147 = v11;
  v95 = sub_100006064();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v92 = enum case for Font.TextStyle.title2(_:);
  v17 = v4;
  v18 = *(v4 + 104);
  v90 = v4 + 104;
  v91 = v18;
  v84 = v3;
  v18(v6);
  v88 = type metadata accessor for Font.Design();
  v19 = *(v88 - 8);
  v87 = *(v19 + 56);
  v89 = v19 + 56;
  v20 = v98;
  v87(v98, 1, 1, v88);
  static Font.Weight.bold.getter();
  v83 = v6;
  static Font.system(_:design:weight:)();
  sub_100006140(v20, &qword_10002DC30, &qword_10001A220);
  v21 = *(v17 + 8);
  v86 = v17 + 8;
  v21(v6, v3);
  v22 = Text.font(_:)();
  v104 = v23;
  v105 = v22;
  v25 = v24;
  v106 = v26;

  sub_1000060B8(v12, v14, v16 & 1);

  v103 = static Edge.Set.top.getter();
  v85 = objc_opt_self();
  v27 = [v85 mainScreen];
  [v27 bounds];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;

  v184.origin.x = v29;
  v184.origin.y = v31;
  v184.size.width = v33;
  v184.size.height = v35;
  CGRectGetHeight(v184);
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v96 = v42;
  v99 = v25 & 1;
  v180 = v25 & 1;
  v177 = 0;
  KeyPath = swift_getKeyPath();
  v101 = swift_getKeyPath();
  v100 = swift_getKeyPath();
  v183 = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v146 = String.init(localized:table:bundle:locale:comment:)();
  v147 = v43;
  v44 = Text.init<A>(_:)();
  v46 = v45;
  v48 = v47;
  v49 = v83;
  v50 = v84;
  v91(v83, v92, v84);
  v51 = v98;
  v87(v98, 1, 1, v88);
  static Font.Weight.regular.getter();
  static Font.system(_:design:weight:)();
  sub_100006140(v51, &qword_10002DC30, &qword_10001A220);
  v21(v49, v50);
  v52 = Text.font(_:)();
  v95 = v53;
  LOBYTE(v51) = v54;
  v98 = v55;

  sub_1000060B8(v44, v46, v48 & 1);

  v56 = static Edge.Set.bottom.getter();
  v57 = [v85 mainScreen];
  [v57 bounds];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v185.origin.x = v59;
  v185.origin.y = v61;
  v185.size.width = v63;
  v185.size.height = v65;
  CGRectGetHeight(v185);
  EdgeInsets.init(_all:)();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  LOBYTE(v57) = v51 & 1;
  v172 = v51 & 1;
  v169 = 0;
  v74 = swift_getKeyPath();
  v75 = swift_getKeyPath();
  v76 = swift_getKeyPath();
  v175 = 0;
  v77 = static Color.secondary.getter();
  *&v128 = v105;
  *(&v128 + 1) = v104;
  LOBYTE(v129) = v99;
  *(&v129 + 1) = *v179;
  DWORD1(v129) = *&v179[3];
  *(&v129 + 1) = v106;
  LOBYTE(v130) = v103;
  *(&v130 + 1) = *v178;
  DWORD1(v130) = *&v178[3];
  *(&v130 + 1) = v37;
  *&v131 = v39;
  *(&v131 + 1) = v41;
  v78 = v96;
  *&v132 = v96;
  BYTE8(v132) = 0;
  *(&v132 + 9) = *v181;
  HIDWORD(v132) = *&v181[3];
  *&v133 = KeyPath;
  BYTE8(v133) = 1;
  *(&v133 + 9) = *v182;
  HIDWORD(v133) = *&v182[3];
  *&v134 = v101;
  *(&v134 + 1) = 0x3FE0000000000000;
  *&v135 = v100;
  *(&v135 + 1) = 2;
  v136 = 0;
  *&v127[32] = v130;
  *&v127[48] = v131;
  *v127 = v128;
  *&v127[16] = v129;
  v127[128] = 0;
  *&v127[96] = v134;
  *&v127[112] = v135;
  *&v127[64] = v132;
  *&v127[80] = v133;
  v79 = v52;
  *&v137 = v52;
  v80 = v95;
  *(&v137 + 1) = v95;
  LOBYTE(v138) = v57;
  *(&v138 + 1) = *v171;
  DWORD1(v138) = *&v171[3];
  v81 = v98;
  *(&v138 + 1) = v98;
  LOBYTE(v139) = v56;
  *(&v139 + 1) = *v170;
  DWORD1(v139) = *&v170[3];
  *(&v139 + 1) = v67;
  *&v140 = v69;
  *(&v140 + 1) = v71;
  *&v141 = v73;
  BYTE8(v141) = 0;
  HIDWORD(v141) = *&v173[3];
  *(&v141 + 9) = *v173;
  *&v142 = v74;
  BYTE8(v142) = 1;
  *(&v142 + 9) = *v174;
  HIDWORD(v142) = *&v174[3];
  *&v143 = v75;
  *(&v143 + 1) = 0x3FE0000000000000;
  *&v144 = v76;
  *(&v144 + 1) = 5;
  LOBYTE(v145) = 0;
  DWORD1(v145) = *(v176 + 3);
  *(&v145 + 1) = v176[0];
  *(&v145 + 1) = v77;
  *&v127[264] = v145;
  *&v127[136] = v137;
  *&v127[200] = v141;
  *&v127[184] = v140;
  *&v127[168] = v139;
  *&v127[152] = v138;
  *&v127[248] = v144;
  *&v127[232] = v143;
  *&v127[216] = v142;
  memcpy(v97, v127, 0x118uLL);
  v146 = v79;
  v147 = v80;
  v148 = v57;
  *v149 = *v171;
  *&v149[3] = *&v171[3];
  v150 = v81;
  v151 = v56;
  *v152 = *v170;
  *&v152[3] = *&v170[3];
  v153 = v67;
  v154 = v69;
  v155 = v71;
  v156 = v73;
  v157 = 0;
  *v158 = *v173;
  *&v158[3] = *&v173[3];
  v159 = v74;
  v160 = 1;
  *v161 = *v174;
  *&v161[3] = *&v174[3];
  v162 = v75;
  v163 = 0x3FE0000000000000;
  v164 = v76;
  v165 = 5;
  v166 = 0;
  *v167 = v176[0];
  *&v167[3] = *(v176 + 3);
  v168 = v77;
  sub_1000060D8(&v128, v107, &qword_10002E428, &qword_10001AD58);
  sub_1000060D8(&v137, v107, &qword_10002E430, &qword_10001AD60);
  sub_100006140(&v146, &qword_10002E430, &qword_10001AD60);
  v107[0] = v105;
  v107[1] = v104;
  v108 = v99;
  *v109 = *v179;
  *&v109[3] = *&v179[3];
  v110 = v106;
  v111 = v103;
  *v112 = *v178;
  *&v112[3] = *&v178[3];
  v113 = v37;
  v114 = v39;
  v115 = v41;
  v116 = v78;
  v117 = 0;
  *&v118[3] = *&v181[3];
  *v118 = *v181;
  v119 = KeyPath;
  v120 = 1;
  *&v121[3] = *&v182[3];
  *v121 = *v182;
  v122 = v101;
  v123 = 0x3FE0000000000000;
  v124 = v100;
  v125 = 2;
  v126 = 0;
  return sub_100006140(v107, &qword_10002E428, &qword_10001AD58);
}

uint64_t sub_10000A57C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v48 = a2;
  v3 = sub_1000054DC(&qword_10002E2E8, &qword_10001ABD0);
  v45 = *(v3 - 8);
  v46 = v3;
  __chkstk_darwin(v3);
  v43 = &v41 - v4;
  v5 = sub_1000054DC(&qword_10002E2F0, &qword_10001ABD8);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v41 - v10;
  __chkstk_darwin(v9);
  v44 = &v41 - v12;
  v13 = sub_1000054DC(&qword_10002E2F8, &qword_10001ABE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = sub_1000054DC(&qword_10002E300, &qword_10001ABE8);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v42 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v41 - v22;
  __chkstk_darwin(v21);
  v25 = &v41 - v24;
  v50 = a1;
  sub_1000054DC(&qword_10002E308, &qword_10001ABF0);
  sub_100012AC8();
  _GlassEffectContainer.init(smoothness:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v14 + 32))(v23, v16, v13);
  v26 = &v23[*(v18 + 44)];
  v27 = v56;
  *(v26 + 4) = v55;
  *(v26 + 5) = v27;
  *(v26 + 6) = v57;
  v28 = v52;
  *v26 = v51;
  *(v26 + 1) = v28;
  v29 = v54;
  *(v26 + 2) = v53;
  *(v26 + 3) = v29;
  sub_100005FF4(v23, v25, &qword_10002E300, &qword_10001ABE8);
  v49 = v41;
  sub_1000054DC(&qword_10002E360, &qword_10001AC18);
  sub_100012DA4();
  v30 = v43;
  _GlassEffectContainer.init(smoothness:content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v45 + 32))(v11, v30, v46);
  v31 = &v11[*(v6 + 44)];
  v32 = v63;
  *(v31 + 4) = v62;
  *(v31 + 5) = v32;
  *(v31 + 6) = v64;
  v33 = v59;
  *v31 = v58;
  *(v31 + 1) = v33;
  v34 = v61;
  *(v31 + 2) = v60;
  *(v31 + 3) = v34;
  v35 = v44;
  sub_100005FF4(v11, v44, &qword_10002E2F0, &qword_10001ABD8);
  v36 = v42;
  sub_1000060D8(v25, v42, &qword_10002E300, &qword_10001ABE8);
  v37 = v47;
  sub_1000060D8(v35, v47, &qword_10002E2F0, &qword_10001ABD8);
  v38 = v48;
  sub_1000060D8(v36, v48, &qword_10002E300, &qword_10001ABE8);
  v39 = sub_1000054DC(&qword_10002E3A0, &qword_10001AC38);
  sub_1000060D8(v37, v38 + *(v39 + 48), &qword_10002E2F0, &qword_10001ABD8);
  sub_100006140(v35, &qword_10002E2F0, &qword_10001ABD8);
  sub_100006140(v25, &qword_10002E300, &qword_10001ABE8);
  sub_100006140(v37, &qword_10002E2F0, &qword_10001ABD8);
  return sub_100006140(v36, &qword_10002E300, &qword_10001ABE8);
}

uint64_t sub_10000AAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for GlassButtonStyle();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1000054DC(&qword_10002E340, &qword_10001AC08);
  v7 = *(v40 - 8);
  __chkstk_darwin(v40);
  v9 = &v40 - v8;
  v10 = sub_1000054DC(&qword_10002E328, &qword_10001AC00);
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = sub_1000054DC(&qword_10002E3A8, &qword_10001AC40);
  v41 = *(v13 - 8);
  v42 = v13;
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v16 = sub_1000054DC(&qword_10002E320, &qword_10001ABF8);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v40 - v18;
  v20 = swift_allocObject();
  v21 = *(a1 + 80);
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = v21;
  *(v20 + 112) = *(a1 + 96);
  *(v20 + 128) = *(a1 + 112);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  v23 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v23;
  sub_100012198(a1, v46);
  sub_1000054DC(&qword_10002E3B0, &qword_10001AC48);
  sub_100013040();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v7 + 32))(v12, v9, v40);
  v24 = &v12[*(v10 + 36)];
  v25 = v46[5];
  *(v24 + 4) = v46[4];
  *(v24 + 5) = v25;
  *(v24 + 6) = v46[6];
  v26 = v46[1];
  *v24 = v46[0];
  *(v24 + 1) = v26;
  v27 = v46[3];
  *(v24 + 2) = v46[2];
  *(v24 + 3) = v27;
  GlassButtonStyle.init()();
  sub_100012C9C();
  sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle, &protocol conformance descriptor for GlassButtonStyle);
  v28 = v43;
  View.buttonStyle<A>(_:)();
  (*(v44 + 8))(v6, v28);
  sub_100006140(v12, &qword_10002E328, &qword_10001AC00);
  v29 = &v19[*(v17 + 44)];
  v30 = *(type metadata accessor for RoundedRectangle() + 20);
  v31 = enum case for RoundedCornerStyle.continuous(_:);
  v32 = type metadata accessor for RoundedCornerStyle();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  __asm { FMOV            V0.2D, #26.0 }

  *v29 = _Q0;
  *&v29[*(sub_1000054DC(&qword_10002E358, &qword_10001AC10) + 36)] = 256;
  (*(v41 + 32))(v19, v15, v42);
  v38 = v45;
  sub_100005FF4(v19, v45, &qword_10002E320, &qword_10001ABF8);
  result = sub_1000054DC(&qword_10002E308, &qword_10001ABF0);
  *(v38 + *(result + 36)) = 0;
  return result;
}

__n128 sub_10000B000@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  __chkstk_darwin(v2 - 8);
  v4 = v37 - v3;
  v5 = type metadata accessor for Font.TextStyle();
  v37[0] = v5;
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v38 = String.init(localized:table:bundle:locale:comment:)();
  *(&v38 + 1) = v11;
  sub_100006064();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v37[1] = v17;
  (*(v6 + 104))(v8, enum case for Font.TextStyle.body(_:), v5);
  v18 = enum case for Font.Design.default(_:);
  v19 = type metadata accessor for Font.Design();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v4, v18, v19);
  (*(v20 + 56))(v4, 0, 1, v19);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_100006140(v4, &qword_10002DC30, &qword_10001A220);
  (*(v6 + 8))(v8, v37[0]);
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;

  sub_1000060B8(v12, v14, v16 & 1);

  if (static Solarium.isEnabled.getter())
  {
    v26 = static Color.primary.getter();
  }

  else
  {
    v26 = static Color.blue.getter();
  }

  *&v38 = v26;
  v27 = Text.foregroundStyle<A>(_:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1000060B8(v21, v23, v25 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v27;
  *(a1 + 8) = v29;
  *(a1 + 16) = v31 & 1;
  *(a1 + 24) = v33;
  v34 = v43;
  *(a1 + 96) = v42;
  *(a1 + 112) = v34;
  *(a1 + 128) = v44;
  v35 = v39;
  *(a1 + 32) = v38;
  *(a1 + 48) = v35;
  result = v41;
  *(a1 + 64) = v40;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10000B448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v50 = type metadata accessor for GlassButtonStyle();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000054DC(&qword_10002E340, &qword_10001AC08);
  v5 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v45 - v6;
  v45 = sub_1000054DC(&qword_10002E328, &qword_10001AC00);
  __chkstk_darwin(v45);
  v9 = &v45 - v8;
  v49 = sub_1000054DC(&qword_10002E3A8, &qword_10001AC40);
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v45 - v10;
  v11 = sub_1000054DC(&qword_10002E388, &qword_10001AC28);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = sub_1000054DC(&qword_10002E378, &qword_10001AC20);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  v19 = swift_allocObject();
  v20 = *(a1 + 80);
  *(v19 + 80) = *(a1 + 64);
  *(v19 + 96) = v20;
  *(v19 + 112) = *(a1 + 96);
  *(v19 + 128) = *(a1 + 112);
  v21 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v21;
  v22 = *(a1 + 48);
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 64) = v22;
  v53 = a1;
  sub_100012198(a1, v55);
  sub_1000054DC(&qword_10002E3B0, &qword_10001AC48);
  sub_100013040();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v5 + 32))(v9, v7, v47);
  v23 = &v9[*(v45 + 36)];
  v24 = v55[5];
  *(v23 + 4) = v55[4];
  *(v23 + 5) = v24;
  *(v23 + 6) = v55[6];
  v25 = v55[1];
  *v23 = v55[0];
  *(v23 + 1) = v25;
  v26 = v55[3];
  *(v23 + 2) = v55[2];
  *(v23 + 3) = v26;
  GlassButtonStyle.init()();
  sub_100012C9C();
  sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle, &protocol conformance descriptor for GlassButtonStyle);
  v27 = v46;
  v28 = v50;
  View.buttonStyle<A>(_:)();
  (*(v51 + 8))(v4, v28);
  sub_100006140(v9, &qword_10002E328, &qword_10001AC00);
  v29 = [objc_opt_self() tertiarySystemFillColor];
  v30 = Color.init(_:)();
  KeyPath = swift_getKeyPath();
  v54 = v30;
  v32 = AnyShapeStyle.init<A>(_:)();
  (*(v48 + 32))(v14, v27, v49);
  v33 = &v14[*(v12 + 44)];
  *v33 = KeyPath;
  v33[1] = v32;
  v34 = &v18[*(v16 + 44)];
  v35 = *(type metadata accessor for RoundedRectangle() + 20);
  v36 = enum case for RoundedCornerStyle.continuous(_:);
  v37 = type metadata accessor for RoundedCornerStyle();
  (*(*(v37 - 8) + 104))(&v34[v35], v36, v37);
  __asm { FMOV            V0.2D, #26.0 }

  *v34 = _Q0;
  *&v34[*(sub_1000054DC(&qword_10002E358, &qword_10001AC10) + 36)] = 256;
  sub_100005FF4(v14, v18, &qword_10002E388, &qword_10001AC28);
  v43 = v52;
  sub_100005FF4(v18, v52, &qword_10002E378, &qword_10001AC20);
  result = sub_1000054DC(&qword_10002E360, &qword_10001AC18);
  *(v43 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10000BA74(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = *(v1 + 72);

    v2(v4);

    return sub_10000809C(v2, v3);
  }

  return result;
}

void *sub_10000BAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  __chkstk_darwin(v4 - 8);
  v47 = v45 - v5;
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._object = 0x800000010001B540;
  v13._countAndFlagsBits = 0xD000000000000030;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  if (*(a1 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    *&v48 = String.init(localized:table:bundle:locale:comment:)();
    *(&v48 + 1) = v15;
    sub_100006064();
    v16 = Text.init<A>(_:)();
    v45[1] = v17;
    v46 = v16;
    v19 = v18;
    v21 = v20;
    (*(v7 + 104))(v9, enum case for Font.TextStyle.body(_:), v6);
    v22 = enum case for Font.Design.default(_:);
    v23 = type metadata accessor for Font.Design();
    v24 = v6;
    v25 = *(v23 - 8);
    v26 = v47;
    (*(v25 + 104))(v47, v22, v23);
    (*(v25 + 56))(v26, 0, 1, v23);
    static Font.Weight.bold.getter();
    static Font.system(_:design:weight:)();
    sub_100006140(v26, &qword_10002DC30, &qword_10001A220);
    (*(v7 + 8))(v9, v24);
    v27 = v46;
    v28 = Text.font(_:)();
    v30 = v29;
    v32 = v31;

    sub_1000060B8(v27, v19, v21 & 1);

    if (static Solarium.isEnabled.getter())
    {
      v33 = static Color.primary.getter();
    }

    else
    {
      v33 = static Color.blue.getter();
    }

    *&v48 = v33;
    v34 = Text.foregroundStyle<A>(_:)();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_1000060B8(v28, v30, v32 & 1);

    static Alignment.center.getter();
    result = _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v55 = v38 & 1;
    *a2 = v34;
    *(a2 + 8) = v36;
    *(a2 + 16) = v38 & 1;
    *(a2 + 24) = v40;
    v42 = v53;
    *(a2 + 96) = v52;
    *(a2 + 112) = v42;
    *(a2 + 128) = v54;
    v43 = v49;
    *(a2 + 32) = v48;
    *(a2 + 48) = v43;
    v44 = v51;
    *(a2 + 64) = v50;
    *(a2 + 80) = v44;
  }

  else
  {
    type metadata accessor for ContactStoreVisualizer(0);
    sub_100012D54(&qword_10002E8A0, 255, type metadata accessor for ContactStoreVisualizer, &unk_10001A7F4);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C070(uint64_t a1)
{
  v2 = sub_1000054DC(&qword_10002E240, &qword_10001AB60);
  __chkstk_darwin(v2);
  v4 = &v7[-v3];
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = sub_1000054DC(&qword_10002E438, &qword_10001AD68);
  sub_10000C204(a1, &v4[*(v5 + 44)]);
  v8 = a1;
  sub_1000054DC(&qword_10002E248, &qword_10001AB68);
  sub_100006BF8(&qword_10002E250, &qword_10002E240, &qword_10001AB60, &protocol conformance descriptor for VStack<A>);
  sub_100006BF8(&qword_10002E258, &qword_10002E248, &qword_10001AB68, &protocol conformance descriptor for TupleToolbarContent<A>);
  View.toolbar<A>(content:)();
  return sub_100006140(v4, &qword_10002E240, &qword_10001AB60);
}

uint64_t sub_10000C204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_1000054DC(&qword_10002E4D0, &qword_10001ADF8);
  __chkstk_darwin(v3 - 8);
  v5 = &v70 - v4;
  v73 = sub_1000054DC(&qword_10002E4D8, &qword_10001AE00);
  v6 = __chkstk_darwin(v73);
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v72 = &v70 - v9;
  __chkstk_darwin(v8);
  v76 = &v70 - v10;
  v77 = sub_1000054DC(&qword_10002E4E0, &qword_10001AE08);
  v75 = *(v77 - 8);
  v11 = __chkstk_darwin(v77);
  v74 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v81 = &v70 - v13;
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v16 - 8);
  v17 = sub_1000054DC(&qword_10002E4E8, &qword_10001AE10);
  v18 = v17 - 8;
  v19 = __chkstk_darwin(v17);
  v71 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = (&v70 - v21);
  v23 = static Color.clear.getter();
  v24 = v22 + *(sub_1000054DC(&qword_10002E298, &qword_10001AB88) + 36);
  static Material.thin.getter();
  v25 = static Edge.Set.all.getter();
  v24[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v25;
  *v22 = v23;
  v26 = static Edge.Set.top.getter();
  v27 = static SafeAreaRegions.all.getter();
  v28 = v22 + *(sub_1000054DC(&qword_10002E4F0, &qword_10001AE18) + 36);
  *v28 = v27;
  v28[8] = v26;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v29 = *(v18 + 44);
  v80 = v22;
  v30 = (v22 + v29);
  v31 = v85;
  *v30 = v84;
  v30[1] = v31;
  v30[2] = v86;
  v87 = *(a1 + 80);
  v83 = *(a1 + 80);
  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.getter();
  if (v82 >> 62)
  {
    v32 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v32 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v32 < 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v33._countAndFlagsBits = 0xD00000000000001ELL;
    v33._object = 0x800000010001B650;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v33);
    v83 = v87;
    State.wrappedValue.getter();
    if (v82 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v83 = v34;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v35);
    String.LocalizationValue.init(stringInterpolation:)();
  }

  static Locale.current.getter();
  v36 = String.init(localized:table:bundle:locale:comment:)();
  v38 = v37;
  v39 = static Axis.Set.vertical.getter();
  __chkstk_darwin(v39);
  *(&v70 - 4) = a1;
  *(&v70 - 3) = v36;
  *(&v70 - 2) = v38;
  *(&v70 - 8) = v32 > 0;
  sub_1000054DC(&qword_10002E4F8, &qword_10001AE20);
  sub_100006BF8(&qword_10002E500, &qword_10002E4F8, &qword_10001AE20, &protocol conformance descriptor for TupleView<A>);
  v40 = v81;
  ScrollView.init(_:showsIndicators:content:)();

  v41 = static HorizontalAlignment.center.getter();
  v42 = 0x402E000000000000;
  if (*(a1 + 112))
  {
    v42 = 0x4024000000000000;
  }

  *v5 = v41;
  *(v5 + 1) = v42;
  v5[16] = 0;
  v43 = sub_1000054DC(&qword_10002E508, &qword_10001AE28);
  sub_10000E1D8(a1, v32 > 0, &v5[*(v43 + 44)]);
  v44 = [objc_opt_self() mainScreen];
  [v44 bounds];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v88.origin.x = v46;
  v88.origin.y = v48;
  v88.size.width = v50;
  v88.size.height = v52;
  if (CGRectGetHeight(v88) > 812.0)
  {
    v53 = 10.0;
  }

  else
  {
    v53 = 0.0;
  }

  v54 = static Edge.Set.all.getter();
  v55 = v72;
  sub_100005FF4(v5, v72, &qword_10002E4D0, &qword_10001ADF8);
  v56 = v55 + *(v73 + 36);
  *v56 = v54;
  *(v56 + 8) = v53;
  *(v56 + 16) = xmmword_10001A700;
  *(v56 + 32) = 0x4041800000000000;
  *(v56 + 40) = 0;
  v57 = v55;
  v58 = v76;
  sub_100005FF4(v57, v76, &qword_10002E4D8, &qword_10001AE00);
  v59 = v71;
  sub_1000060D8(v80, v71, &qword_10002E4E8, &qword_10001AE10);
  v60 = v75;
  v61 = *(v75 + 16);
  v62 = v74;
  v63 = v77;
  v61(v74, v40, v77);
  v64 = v78;
  sub_1000060D8(v58, v78, &qword_10002E4D8, &qword_10001AE00);
  v65 = v79;
  sub_1000060D8(v59, v79, &qword_10002E4E8, &qword_10001AE10);
  v66 = sub_1000054DC(&qword_10002E510, &qword_10001AE30);
  v61((v65 + v66[12]), v62, v63);
  v67 = v65 + v66[16];
  *v67 = 0;
  *(v67 + 8) = 1;
  sub_1000060D8(v64, v65 + v66[20], &qword_10002E4D8, &qword_10001AE00);
  sub_100006140(v58, &qword_10002E4D8, &qword_10001AE00);
  v68 = *(v60 + 8);
  v68(v81, v63);
  sub_100006140(v80, &qword_10002E4E8, &qword_10001AE10);
  sub_100006140(v64, &qword_10002E4D8, &qword_10001AE00);
  v68(v62, v63);
  return sub_100006140(v59, &qword_10002E4E8, &qword_10001AE10);
}

uint64_t sub_10000CB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *&v116 = a3;
  v113 = a2;
  v119 = a5;
  v110 = sub_1000054DC(&qword_10002E3C0, &qword_10001AC88);
  __chkstk_darwin(v110);
  v112 = &v105 - v7;
  v111 = sub_1000054DC(&qword_10002E3C8, &qword_10001AC90);
  v8 = __chkstk_darwin(v111);
  v10 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v105 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v105 - v15;
  __chkstk_darwin(v14);
  v18 = &v105 - v17;
  v19 = sub_1000054DC(&qword_10002E3D0, &qword_10001AC98);
  v20 = __chkstk_darwin(v19 - 8);
  v118 = &v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = *(a1 + 112);
  v117 = &v105 - v23;
  v115 = a1;
  v114 = a4;
  if (v22)
  {
    v122 = *(a1 + 80);
    sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
    State.wrappedValue.getter();
    v24 = *v121;
    v122 = *(a1 + 80);
    State.wrappedValue.getter();
    if (*v121 >> 62)
    {
      v109 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v109 = *((*v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = [objc_opt_self() mainScreen];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v157.origin.x = v27;
    v157.origin.y = v29;
    v157.size.width = v31;
    v157.size.height = v33;
    v108 = CGRectGetHeight(v157) <= 812.0;
    v34 = [objc_opt_self() currentDevice];
    v35 = [v34 userInterfaceIdiom];

    v36 = v35 == 1;
    *&v122 = sub_1000125A8(v24);
    sub_100012404();
    v37 = v122;
    LOBYTE(v34) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    LOBYTE(v122) = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v120[55] = v153;
    *&v120[71] = v154;
    *&v120[87] = v155;
    *&v120[103] = v156;
    *&v120[7] = v150;
    *&v120[23] = v151;
    v46 = &v16[*(v111 + 36)];
    *&v120[39] = v152;
    static Material.thin.getter();
    v47 = static Edge.Set.all.getter();
    v46[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v47;
    *v16 = 2;
    v48 = v109;
    *(v16 + 1) = v37;
    *(v16 + 2) = v48;
    v16[24] = v108;
    v16[25] = v36;
    v16[32] = v34;
    *(v16 + 5) = v39;
    *(v16 + 6) = v41;
    *(v16 + 7) = v43;
    *(v16 + 8) = v45;
    v16[72] = 0;
    v49 = *&v120[32];
    *(v16 + 121) = *&v120[48];
    *(v16 + 105) = v49;
    v50 = *v120;
    *(v16 + 89) = *&v120[16];
    *(v16 + 73) = v50;
    *(v16 + 23) = *&v120[111];
    v51 = *&v120[80];
    *(v16 + 169) = *&v120[96];
    v52 = *&v120[64];
    *(v16 + 153) = v51;
    *(v16 + 137) = v52;
    sub_100005FF4(v16, v18, &qword_10002E3C8, &qword_10001AC90);
    sub_1000060D8(v18, v112, &qword_10002E3C8, &qword_10001AC90);
    swift_storeEnumTagMultiPayload();
    sub_10001311C();
    v53 = v117;
    _ConditionalContent<>.init(storage:)();
    v54 = v18;
  }

  else
  {
    v122 = *(a1 + 80);
    sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
    State.wrappedValue.getter();
    v106 = *v121;
    v122 = *(a1 + 80);
    State.wrappedValue.getter();
    if (*v121 >> 62)
    {
      v109 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v109 = *((*v121 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = objc_opt_self();
    v56 = [v55 mainScreen];
    [v56 bounds];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    v158.origin.x = v58;
    v158.origin.y = v60;
    v158.size.width = v62;
    v158.size.height = v64;
    v108 = CGRectGetHeight(v158) <= 812.0;
    v65 = [objc_opt_self() currentDevice];
    v66 = [v65 userInterfaceIdiom];

    v107 = v66 == 1;
    *&v122 = sub_1000125A8(v106);
    sub_100012404();
    v106 = v122;
    v67 = [v55 mainScreen];
    [v67 bounds];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v159.origin.x = v69;
    v159.origin.y = v71;
    v159.size.width = v73;
    v159.size.height = v75;
    if (CGRectGetHeight(v159) > 812.0)
    {
      v76 = 5.0;
    }

    else
    {
      v76 = 25.0;
    }

    v77 = static Edge.Set.all.getter();
    LOBYTE(v122) = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v149[55] = v153;
    *&v149[71] = v154;
    *&v149[87] = v155;
    *&v149[103] = v156;
    *&v149[7] = v150;
    *&v149[23] = v151;
    v78 = &v10[*(v111 + 36)];
    *&v149[39] = v152;
    static Material.thin.getter();
    v79 = static Edge.Set.all.getter();
    v78[*(sub_1000054DC(&qword_10002E2A0, &qword_10001AB90) + 36)] = v79;
    *v10 = 2;
    v80 = v109;
    *(v10 + 1) = v106;
    *(v10 + 2) = v80;
    LOBYTE(v80) = v107;
    v10[24] = v108;
    v10[25] = v80;
    v10[32] = v77;
    *(v10 + 40) = xmmword_10001A6E0;
    *(v10 + 7) = v76;
    *(v10 + 8) = 0x4039000000000000;
    v10[72] = 0;
    v81 = *&v149[32];
    *(v10 + 121) = *&v149[48];
    *(v10 + 105) = v81;
    v82 = *v149;
    *(v10 + 89) = *&v149[16];
    *(v10 + 73) = v82;
    *(v10 + 23) = *&v149[111];
    v83 = *&v149[80];
    *(v10 + 169) = *&v149[96];
    v84 = *&v149[64];
    *(v10 + 153) = v83;
    *(v10 + 137) = v84;
    sub_100005FF4(v10, v13, &qword_10002E3C8, &qword_10001AC90);
    sub_1000060D8(v13, v112, &qword_10002E3C8, &qword_10001AC90);
    swift_storeEnumTagMultiPayload();
    sub_10001311C();
    v53 = v117;
    _ConditionalContent<>.init(storage:)();
    v54 = v13;
  }

  sub_100006140(v54, &qword_10002E3C8, &qword_10001AC90);
  v85 = v114;
  v86 = static HorizontalAlignment.leading.getter();
  v130 = 1;
  sub_10000D768(v113, v116, v115, v85 & 1, &v122);
  v144 = *&v123[176];
  v145 = *&v123[192];
  v146 = *&v123[208];
  v147 = *&v123[224];
  v140 = *&v123[112];
  v141 = *&v123[128];
  v142 = *&v123[144];
  v143 = *&v123[160];
  v136 = *&v123[48];
  v137 = *&v123[64];
  v138 = *&v123[80];
  v139 = *&v123[96];
  v132 = v122;
  v133 = *v123;
  v134 = *&v123[16];
  v135 = *&v123[32];
  v148[12] = *&v123[176];
  v148[13] = *&v123[192];
  v148[14] = *&v123[208];
  v148[15] = *&v123[224];
  v148[8] = *&v123[112];
  v148[9] = *&v123[128];
  v148[10] = *&v123[144];
  v148[11] = *&v123[160];
  v148[4] = *&v123[48];
  v148[5] = *&v123[64];
  v148[6] = *&v123[80];
  v148[7] = *&v123[96];
  v148[0] = v122;
  v148[1] = *v123;
  v148[2] = *&v123[16];
  v148[3] = *&v123[32];
  sub_1000060D8(&v132, v121, &qword_10002E610, &qword_10001AEC8);
  sub_100006140(v148, &qword_10002E610, &qword_10001AEC8);
  *&v129[199] = v144;
  *&v129[215] = v145;
  *&v129[231] = v146;
  *&v129[247] = v147;
  *&v129[135] = v140;
  *&v129[151] = v141;
  *&v129[167] = v142;
  *&v129[183] = v143;
  *&v129[71] = v136;
  *&v129[87] = v137;
  *&v129[103] = v138;
  *&v129[119] = v139;
  *&v129[7] = v132;
  *&v129[23] = v133;
  *&v129[39] = v134;
  *&v129[55] = v135;
  v87 = v130;
  v88 = [objc_opt_self() mainScreen];
  [v88 bounds];
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v96 = v95;

  v160.origin.x = v90;
  v160.origin.y = v92;
  v160.size.width = v94;
  v160.size.height = v96;
  if (CGRectGetHeight(v160) > 812.0)
  {
    v97 = 10.0;
  }

  else
  {
    v97 = 0.0;
  }

  v98 = static Edge.Set.all.getter();
  v131 = 0;
  v99 = v118;
  sub_1000060D8(v53, v118, &qword_10002E3D0, &qword_10001AC98);
  v100 = v119;
  sub_1000060D8(v99, v119, &qword_10002E3D0, &qword_10001AC98);
  v101 = sub_1000054DC(&qword_10002E618, &qword_10001AED0);
  v102 = v100 + *(v101 + 48);
  *v102 = 0;
  *(v102 + 8) = 1;
  v103 = *(v101 + 64);
  *v121 = v86;
  *&v121[8] = 0;
  v121[16] = v87;
  memcpy(&v121[17], v129, 0x107uLL);
  v121[280] = v98;
  *&v121[288] = v97;
  *&v121[296] = 0x4041800000000000;
  v116 = xmmword_10001A710;
  *&v121[304] = xmmword_10001A710;
  v121[320] = 0;
  memcpy((v100 + v103), v121, 0x141uLL);
  sub_1000060D8(v121, &v122, &qword_10002E620, &qword_10001AED8);
  sub_100006140(v53, &qword_10002E3D0, &qword_10001AC98);
  v122 = v86;
  v123[0] = v87;
  memcpy(&v123[1], v129, 0x107uLL);
  v124 = v98;
  v125 = v97;
  v126 = 0x4041800000000000;
  v127 = v116;
  v128 = 0;
  sub_100006140(&v122, &qword_10002E620, &qword_10001AED8);
  return sub_100006140(v99, &qword_10002E3D0, &qword_10001AC98);
}

uint64_t sub_10000D768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v119 = a4;
  v122 = a3;
  v126 = a5;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v128 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v124 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v121 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  __chkstk_darwin(v13 - 8);
  v15 = &v111 - v14;
  v16 = type metadata accessor for Font.TextStyle();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = a1;
  v182 = a2;
  v20 = sub_100006064();

  v120 = v20;
  v21 = Text.init<A>(_:)();
  v23 = v22;
  LOBYTE(a2) = v24;
  v133 = v25;
  v26 = *(v17 + 104);
  v118 = enum case for Font.TextStyle.title2(_:);
  v116 = v26;
  v117 = v17 + 104;
  v26(v19);
  v27 = type metadata accessor for Font.Design();
  v28 = *(v27 - 8);
  v114 = *(v28 + 56);
  v115 = v27;
  v113 = v28 + 56;
  v114(v15, 1, 1);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  v127 = v15;
  sub_100006140(v15, &qword_10002DC30, &qword_10001A220);
  v29 = *(v17 + 8);
  v30 = v19;
  v123 = v16;
  v125 = v17 + 8;
  v112 = v29;
  v29(v19, v16);
  v31 = Text.font(_:)();
  v134 = v32;
  v135 = v31;
  LOBYTE(v16) = v33;
  v136 = v34;

  sub_1000060B8(v21, v23, a2 & 1);

  LODWORD(v133) = static Edge.Set.top.getter();
  v111 = objc_opt_self();
  v35 = [v111 mainScreen];
  [v35 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v215.origin.x = v37;
  v215.origin.y = v39;
  v215.size.width = v41;
  v215.size.height = v43;
  CGRectGetHeight(v215);
  EdgeInsets.init(_all:)();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v131 = v16 & 1;
  v211 = v16 & 1;
  v208 = 0;
  KeyPath = swift_getKeyPath();
  v130 = swift_getKeyPath();
  v129 = swift_getKeyPath();
  v214 = 0;
  if (v119)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v52 = 0xD000000000000024;
    v53 = 0x800000010001B700;
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v53 = 0x800000010001B6D0;
    v52 = 0xD000000000000020;
  }

  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v52);
  v54 = *(v122 + 8);
  v55 = *(v54 + 16);
  v56 = *(v54 + 24);

  v57._countAndFlagsBits = v55;
  v57._object = v56;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v57);

  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v58);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v181 = String.init(localized:table:bundle:locale:comment:)();
  v182 = v59;
  v60 = Text.init<A>(_:)();
  v62 = v61;
  v64 = v63;
  v124 = v65;
  v66 = v30;
  v67 = v123;
  v116(v30, v118, v123);
  v68 = v127;
  (v114)(v127, 1, 1, v115);
  static Font.Weight.regular.getter();
  static Font.system(_:design:weight:)();
  sub_100006140(v68, &qword_10002DC30, &qword_10001A220);
  v112(v66, v67);
  v127 = Text.font(_:)();
  v128 = v69;
  v125 = v70;
  LOBYTE(v67) = v71;

  sub_1000060B8(v60, v62, v64 & 1);

  LOBYTE(v68) = static Edge.Set.bottom.getter();
  v72 = [v111 mainScreen];
  [v72 bounds];
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;

  v216.origin.x = v74;
  v216.origin.y = v76;
  v216.size.width = v78;
  v216.size.height = v80;
  CGRectGetHeight(v216);
  EdgeInsets.init(_all:)();
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v88 = v87;
  LOBYTE(v55) = v67 & 1;
  v205 = v67 & 1;
  v202 = 0;
  v89 = swift_getKeyPath();
  v90 = swift_getKeyPath();
  v91 = static Color.secondary.getter();
  *&v146 = v135;
  *(&v146 + 1) = v134;
  LOBYTE(v147) = v131;
  *(&v147 + 1) = *v210;
  DWORD1(v147) = *&v210[3];
  *(&v147 + 1) = v136;
  LOBYTE(v148) = v133;
  *(&v148 + 1) = *v209;
  DWORD1(v148) = *&v209[3];
  *(&v148 + 1) = v45;
  *&v149 = v47;
  *(&v149 + 1) = v49;
  *&v150 = v51;
  BYTE8(v150) = 0;
  *(&v150 + 9) = *v212;
  HIDWORD(v150) = *&v212[3];
  *&v151 = KeyPath;
  BYTE8(v151) = 1;
  *(&v151 + 9) = *v213;
  HIDWORD(v151) = *&v213[3];
  v92 = v129;
  v93 = v130;
  *&v152 = v130;
  *(&v152 + 1) = 0x3FE0000000000000;
  *&v153 = v129;
  *(&v153 + 1) = 2;
  v154 = 0;
  v139 = v148;
  v140 = v149;
  v137 = v146;
  v138 = v147;
  LOBYTE(v145[0]) = 0;
  v143 = v152;
  v144 = v153;
  v141 = v150;
  v142 = v151;
  v94 = v127;
  v95 = v128;
  v96 = v125;
  *&v155 = v127;
  *(&v155 + 1) = v125;
  LOBYTE(v156) = v55;
  *(&v156 + 1) = *v204;
  DWORD1(v156) = *&v204[3];
  *(&v156 + 1) = v128;
  LOBYTE(v157) = v68;
  *(&v157 + 1) = *v203;
  DWORD1(v157) = *&v203[3];
  *(&v157 + 1) = v82;
  *&v158 = v84;
  *(&v158 + 1) = v86;
  *&v159 = v88;
  BYTE8(v159) = 0;
  HIDWORD(v159) = *&v206[3];
  *(&v159 + 9) = *v206;
  *&v160 = v89;
  BYTE8(v160) = 1;
  *(&v160 + 9) = v207[0];
  HIDWORD(v160) = *(v207 + 3);
  *&v161 = v90;
  *(&v161 + 1) = 0x3FE0000000000000;
  *(&v145[3] + 8) = v158;
  *(&v145[2] + 8) = v157;
  *(&v145[1] + 8) = v156;
  *(v145 + 8) = v155;
  *(&v145[7] + 1) = v91;
  *(&v145[6] + 8) = v161;
  *(&v145[5] + 8) = v160;
  *(&v145[4] + 8) = v159;
  v97 = v146;
  v98 = v147;
  v99 = v149;
  v100 = v126;
  v126[2] = v148;
  v100[3] = v99;
  *v100 = v97;
  v100[1] = v98;
  v101 = v141;
  v102 = v142;
  v103 = v144;
  v100[6] = v143;
  v100[7] = v103;
  v100[4] = v101;
  v100[5] = v102;
  v104 = v145[0];
  v105 = v145[1];
  v106 = v145[3];
  v100[10] = v145[2];
  v100[11] = v106;
  v100[8] = v104;
  v100[9] = v105;
  v107 = v145[4];
  v108 = v145[5];
  v109 = v145[7];
  v100[14] = v145[6];
  v100[15] = v109;
  v100[12] = v107;
  v100[13] = v108;
  v162 = v91;
  v163[0] = v94;
  v163[1] = v96;
  v164 = v55;
  *v165 = *v204;
  *&v165[3] = *&v204[3];
  v166 = v95;
  v167 = v68;
  *v168 = *v203;
  *&v168[3] = *&v203[3];
  v169 = v82;
  v170 = v84;
  v171 = v86;
  v172 = v88;
  v173 = 0;
  *&v174[3] = *&v206[3];
  *v174 = *v206;
  v175 = v89;
  v176 = 1;
  *&v177[3] = *(v207 + 3);
  *v177 = v207[0];
  v178 = v90;
  v179 = 0x3FE0000000000000;
  v180 = v91;
  sub_1000060D8(&v146, &v181, &qword_10002E428, &qword_10001AD58);
  sub_1000060D8(&v155, &v181, &qword_10002E628, &qword_10001AEE0);
  sub_100006140(v163, &qword_10002E628, &qword_10001AEE0);
  v181 = v135;
  v182 = v134;
  v183 = v131;
  *v184 = *v210;
  *&v184[3] = *&v210[3];
  v185 = v136;
  v186 = v133;
  *v187 = *v209;
  *&v187[3] = *&v209[3];
  v188 = v45;
  v189 = v47;
  v190 = v49;
  v191 = v51;
  v192 = 0;
  *v193 = *v212;
  *&v193[3] = *&v212[3];
  v194 = KeyPath;
  v195 = 1;
  *v196 = *v213;
  *&v196[3] = *&v213[3];
  v197 = v93;
  v198 = 0x3FE0000000000000;
  v199 = v92;
  v200 = 2;
  v201 = 0;
  return sub_100006140(&v181, &qword_10002E428, &qword_10001AD58);
}

uint64_t sub_10000E1D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v37 = a3;
  v36 = sub_1000054DC(&qword_10002E518, &qword_10001AE38);
  v5 = *(v36 - 8);
  v6 = __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_1000054DC(&qword_10002E520, &qword_10001AE40);
  v34 = *(v10 - 8);
  v11 = v34;
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v40 = a1;
  v41 = a2;
  sub_1000054DC(&qword_10002E528, &qword_10001AE48);
  sub_1000137C8();
  v33 = v16;
  _GlassEffectContainer.init(smoothness:content:)();
  v38 = a2;
  v39 = a1;
  sub_1000054DC(&qword_10002E578, &qword_10001AE70);
  sub_100013AEC();
  v17 = v9;
  v31 = v9;
  _GlassEffectContainer.init(smoothness:content:)();
  v18 = *(v11 + 16);
  v32 = v14;
  v18(v14, v16, v10);
  v19 = *(v5 + 16);
  v20 = v35;
  v21 = v17;
  v22 = v36;
  v19(v35, v21, v36);
  v23 = v37;
  v24 = v14;
  v25 = v10;
  v18(v37, v24, v10);
  v26 = sub_1000054DC(&qword_10002E5B8, &qword_10001AE90);
  v19(&v23[*(v26 + 48)], v20, v22);
  v27 = *(v5 + 8);
  v27(v31, v22);
  v28 = *(v34 + 8);
  v28(v33, v25);
  v27(v20, v22);
  return (v28)(v32, v25);
}

uint64_t sub_10000E530@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v59 = a3;
  v57 = type metadata accessor for GlassButtonStyle();
  v58 = *(v57 - 8);
  __chkstk_darwin(v57);
  v5 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_1000054DC(&qword_10002E570, &qword_10001AE68);
  v6 = *(v54 - 8);
  __chkstk_darwin(v54);
  v8 = &v50[-v7];
  v9 = sub_1000054DC(&qword_10002E560, &qword_10001AE60);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v50[-v11];
  v53 = sub_1000054DC(&qword_10002E548, &qword_10001AE58);
  __chkstk_darwin(v53);
  v14 = &v50[-v13];
  v56 = sub_1000054DC(&qword_10002E5F8, &qword_10001AEB8);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v50[-v15];
  v16 = sub_1000054DC(&qword_10002E540, &qword_10001AE50);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v50[-v18];
  v20 = swift_allocObject();
  v21 = *(a1 + 80);
  *(v20 + 80) = *(a1 + 64);
  *(v20 + 96) = v21;
  *(v20 + 112) = *(a1 + 96);
  *(v20 + 128) = *(a1 + 112);
  v22 = *(a1 + 16);
  *(v20 + 16) = *a1;
  *(v20 + 32) = v22;
  v23 = *(a1 + 48);
  *(v20 + 48) = *(a1 + 32);
  *(v20 + 64) = v23;
  v60 = v51;
  v61 = a1;
  sub_100012198(a1, v62);
  sub_1000054DC(&qword_10002E600, &qword_10001AEC0);
  sub_100013FC4();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v6 + 32))(v12, v8, v54);
  v24 = &v12[*(v10 + 44)];
  v25 = v62[5];
  v24[4] = v62[4];
  v24[5] = v25;
  v24[6] = v62[6];
  v26 = v62[1];
  *v24 = v62[0];
  v24[1] = v26;
  v27 = v62[3];
  v24[2] = v62[2];
  v24[3] = v27;
  LOBYTE(v10) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_100005FF4(v12, v14, &qword_10002E560, &qword_10001AE60);
  v36 = &v14[*(v53 + 36)];
  *v36 = v10;
  *(v36 + 1) = v29;
  *(v36 + 2) = v31;
  *(v36 + 3) = v33;
  *(v36 + 4) = v35;
  v36[40] = 0;
  GlassButtonStyle.init()();
  sub_10001399C();
  sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle, &protocol conformance descriptor for GlassButtonStyle);
  v37 = v52;
  v38 = v57;
  View.buttonStyle<A>(_:)();
  (*(v58 + 8))(v5, v38);
  sub_100006140(v14, &qword_10002E548, &qword_10001AE58);
  v39 = &v19[*(v17 + 44)];
  v40 = *(type metadata accessor for RoundedRectangle() + 20);
  v41 = enum case for RoundedCornerStyle.continuous(_:);
  v42 = type metadata accessor for RoundedCornerStyle();
  (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
  __asm { FMOV            V0.2D, #26.0 }

  *v39 = _Q0;
  *&v39[*(sub_1000054DC(&qword_10002E358, &qword_10001AC10) + 36)] = 256;
  (*(v55 + 32))(v19, v37, v56);
  v48 = v59;
  sub_100005FF4(v19, v59, &qword_10002E540, &qword_10001AE50);
  result = sub_1000054DC(&qword_10002E528, &qword_10001AE48);
  *(v48 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10000EB64(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = *(v1 + 56);

    sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
    State.wrappedValue.getter();
    v2();
    sub_10000809C(v2, v3);
  }

  return result;
}

__n128 sub_10000EBF8@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  __chkstk_darwin(v6 - 8);
  v45 = &v43 - v7;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  if (a1)
  {
    v53 = *(a2 + 80);
    sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
    State.wrappedValue.getter();
    if (v46.n128_u64[0] >> 62)
    {
      _CocoaArrayWrapper.endIndex.getter();
    }
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  *&v53 = String.init(localized:table:bundle:locale:comment:)();
  *(&v53 + 1) = v14;
  sub_100006064();
  v44 = Text.init<A>(_:)();
  v16 = v15;
  v18 = v17;
  v43 = v19;
  (*(v9 + 104))(v11, enum case for Font.TextStyle.body(_:), v8);
  v20 = enum case for Font.Design.default(_:);
  v21 = type metadata accessor for Font.Design();
  v22 = v8;
  v23 = *(v21 - 8);
  v24 = v45;
  (*(v23 + 104))(v45, v20, v21);
  (*(v23 + 56))(v24, 0, 1, v21);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_100006140(v24, &qword_10002DC30, &qword_10001A220);
  (*(v9 + 8))(v11, v22);
  v25 = v44;
  v26 = Text.font(_:)();
  v45 = v27;
  v29 = v28;
  v31 = v30;

  sub_1000060B8(v25, v16, v18 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 &= 1u;
  v60 = v29;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v32 = v56;
  v33 = v58;
  v34 = v59;
  *(a3 + 96) = v57;
  *(a3 + 112) = v33;
  v35 = v54;
  v36 = v55;
  *(a3 + 32) = v53;
  *(a3 + 48) = v35;
  *(a3 + 64) = v36;
  *(a3 + 80) = v32;
  v37 = v50;
  v38 = v48;
  *(a3 + 192) = v49;
  *(a3 + 208) = v37;
  v39 = v52;
  *(a3 + 224) = v51;
  *(a3 + 240) = v39;
  result = v46;
  v41 = v47;
  *(a3 + 128) = v34;
  *(a3 + 144) = result;
  v42 = v45;
  *a3 = v26;
  *(a3 + 8) = v42;
  *(a3 + 16) = v29;
  *(a3 + 24) = v31;
  *(a3 + 160) = v41;
  *(a3 + 176) = v38;
  return result;
}

uint64_t sub_10000F148@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a3;
  v44 = type metadata accessor for GlassButtonStyle();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000054DC(&qword_10002E5B0, &qword_10001AE88);
  v7 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v39 - v8;
  v10 = sub_1000054DC(&qword_10002E598, &qword_10001AE80);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v43 = sub_1000054DC(&qword_10002E5C0, &qword_10001AE98);
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v39 - v13;
  v14 = sub_1000054DC(&qword_10002E590, &qword_10001AE78);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v39 - v16;
  v18 = swift_allocObject();
  v19 = *(a2 + 80);
  *(v18 + 88) = *(a2 + 64);
  *(v18 + 104) = v19;
  *(v18 + 120) = *(a2 + 96);
  v20 = *(a2 + 16);
  *(v18 + 24) = *a2;
  *(v18 + 40) = v20;
  v21 = *(a2 + 48);
  *(v18 + 56) = *(a2 + 32);
  *(v18 + 16) = a1;
  *(v18 + 136) = *(a2 + 112);
  *(v18 + 72) = v21;
  v47 = a1;
  sub_100012198(a2, v48);
  sub_1000054DC(&qword_10002E5C8, &qword_10001AEA0);
  sub_100013DFC();
  Button.init(action:label:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v7 + 32))(v12, v9, v41);
  v22 = &v12[*(v10 + 36)];
  v23 = v48[5];
  *(v22 + 4) = v48[4];
  *(v22 + 5) = v23;
  *(v22 + 6) = v48[6];
  v24 = v48[1];
  *v22 = v48[0];
  *(v22 + 1) = v24;
  v25 = v48[3];
  *(v22 + 2) = v48[2];
  *(v22 + 3) = v25;
  GlassButtonStyle.init()();
  sub_100013CC0();
  sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle, &protocol conformance descriptor for GlassButtonStyle);
  v26 = v40;
  v27 = v44;
  View.buttonStyle<A>(_:)();
  (*(v45 + 8))(v6, v27);
  sub_100006140(v12, &qword_10002E598, &qword_10001AE80);
  v28 = &v17[*(v15 + 44)];
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #26.0 }

  *v28 = _Q0;
  *&v28[*(sub_1000054DC(&qword_10002E358, &qword_10001AC10) + 36)] = 256;
  (*(v42 + 32))(v17, v26, v43);
  v37 = v46;
  sub_100005FF4(v17, v46, &qword_10002E590, &qword_10001AE78);
  result = sub_1000054DC(&qword_10002E578, &qword_10001AE70);
  *(v37 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_10000F6AC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = *(a2 + 8);
    v3 = *(v2 + 48);
    if (v3)
    {
      v4 = *(v2 + 56);

      v3(&_swiftEmptyArrayStorage);

      return sub_10000809C(v3, v4);
    }
  }

  else
  {
    sub_1000054DC(&qword_10002E1C0, &qword_10001AB08);
    return State.wrappedValue.setter();
  }

  return result;
}

__n128 sub_10000F758@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_1000054DC(&qword_10002DC30, &qword_10001A220);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50[0] = String.init(localized:table:bundle:locale:comment:)();
  v50[1] = v12;
  sub_100006064();
  v39 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  v38 = v17;
  (*(v7 + 104))(v9, enum case for Font.TextStyle.body(_:), v6);
  v18 = v6;
  v19 = enum case for Font.Design.default(_:);
  v20 = v7;
  v21 = type metadata accessor for Font.Design();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v5, v19, v21);
  (*(v22 + 56))(v5, 0, 1, v21);
  static Font.Weight.bold.getter();
  static Font.system(_:design:weight:)();
  sub_100006140(v5, &qword_10002DC30, &qword_10001A220);
  (*(v20 + 8))(v9, v18);
  v23 = v39;
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_1000060B8(v23, v14, v16 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v50[0]) = v28 & 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  if (static Solarium.isEnabled.getter())
  {
    v31 = static Color.primary.getter();
  }

  else
  {
    v31 = static Color.blue.getter();
  }

  v32 = v48;
  v33 = v49;
  *(a2 + 96) = v47;
  *(a2 + 112) = v32;
  v34 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v34;
  v35 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v35;
  result = v42;
  v37 = v40;
  *(a2 + 160) = v41;
  *(a2 + 176) = result;
  *a2 = v24;
  *(a2 + 8) = v26;
  *(a2 + 16) = v28 & 1;
  *(a2 + 24) = v30;
  *(a2 + 128) = v33;
  *(a2 + 144) = v37;
  *(a2 + 192) = v31;
  return result;
}

uint64_t sub_10000FBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_1000054DC(&qword_10002E440, &qword_10001AD70);
  __chkstk_darwin(v23);
  v4 = &v21 - v3;
  v22 = sub_1000054DC(&qword_10002E448, &qword_10001AD78);
  v5 = *(v22 - 8);
  __chkstk_darwin(v22);
  v7 = &v21 - v6;
  v8 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v8 - 8);
  v21 = sub_1000054DC(&qword_10002E450, &qword_10001AD80);
  v9 = *(v21 - 8);
  __chkstk_darwin(v21);
  v11 = &v21 - v10;
  static ToolbarItemPlacement.navigationBarLeading.getter();
  v26 = a1;
  sub_1000054DC(&qword_10002E458, &qword_10001AD88);
  sub_100006BF8(&qword_10002E460, &qword_10002E458, &qword_10001AD88, &protocol conformance descriptor for Button<A>);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.navigationBarTrailing.getter();
  v25 = a1;
  sub_1000054DC(&qword_10002E468, &qword_10001AD90);
  v12 = sub_1000059E8(&qword_10002E470, &qword_10001AD98);
  v13 = sub_1000059E8(&qword_10002E478, &qword_10001ADA0);
  v14 = sub_100013468();
  v15 = sub_10001354C();
  v27 = v12;
  v28 = v13;
  v29 = v14;
  v30 = v15;
  swift_getOpaqueTypeConformance2();
  ToolbarItem<>.init(placement:content:)();
  v16 = *(v23 + 48);
  v17 = v21;
  (*(v9 + 16))(v4, v11, v21);
  v18 = &v4[v16];
  v19 = v22;
  (*(v5 + 16))(v18, v7, v22);
  TupleToolbarContent.init(_:)();
  (*(v5 + 8))(v7, v19);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_10000FF7C(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  *(v2 + 128) = *(a1 + 112);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  sub_100012198(a1, v7);
  sub_1000054DC(&qword_10002E4C0, &qword_10001ADF0);
  sub_100006BF8(&qword_10002E4C8, &qword_10002E4C0, &qword_10001ADF0, &protocol conformance descriptor for HStack<A>);
  return Button.init(action:label:)();
}

uint64_t sub_10001008C@<X0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  result = Image.init(systemName:)();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1000100E0(uint64_t a1)
{
  v2 = sub_1000054DC(&qword_10002E470, &qword_10001AD98);
  __chkstk_darwin(v2);
  v4 = &v23 - v3;
  v5 = swift_allocObject();
  v6 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(a1 + 96);
  *(v5 + 128) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v8;
  sub_100012198(a1, &v24);
  sub_1000054DC(&qword_10002E4B0, &qword_10001ADB8);
  sub_100006BF8(&qword_10002E4B8, &qword_10002E4B0, &qword_10001ADB8, &protocol conformance descriptor for HStack<A>);
  Button.init(action:label:)();
  v24 = *(a1 + 80);
  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.getter();
  if (v23 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v9 == 0;
  KeyPath = swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = &v4[*(v2 + 36)];
  *v13 = KeyPath;
  v13[1] = sub_1000136CC;
  v13[2] = v12;
  v23 = *(a1 + 64);
  sub_1000054DC(&qword_10002E1C0, &qword_10001AB08);
  State.projectedValue.getter();
  v14 = swift_allocObject();
  v15 = *(a1 + 80);
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(a1 + 96);
  *(v14 + 128) = *(a1 + 112);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  v17 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v17;
  v18 = swift_allocObject();
  v19 = *(a1 + 80);
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = v19;
  *(v18 + 112) = *(a1 + 96);
  *(v18 + 128) = *(a1 + 112);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  v21 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v21;
  sub_100012198(a1, &v24);
  sub_100012198(a1, &v24);
  sub_1000054DC(&qword_10002E478, &qword_10001ADA0);
  sub_100013468();
  sub_10001354C();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_100006140(v4, &qword_10002E470, &qword_10001AD98);
}

double sub_100010488@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = static VerticalAlignment.center.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100006064();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = static Edge.Set.all.getter();
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9 & 1;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  result = 0.0;
  *(a1 + 64) = xmmword_10001A720;
  *(a1 + 80) = xmmword_10001A720;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_10001060C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = *(a1 + 80);
  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.getter();
  v4 = v14;
  v5 = swift_allocObject();
  v6 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v6;
  *(v5 + 112) = *(a1 + 96);
  *(v5 + 128) = *(a1 + 112);
  v7 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v8;
  v14 = v4;
  v15 = sub_100013748;
  v16 = v5;
  sub_1000054DC(&qword_10002E1F8, &qword_10001AB28);
  type metadata accessor for PresentationDetent();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10001A730;
  sub_100012198(a1, v13);
  static PresentationDetent.large.getter();
  static PresentationDetent.large.getter();
  sub_100012650(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100013604();
  View.presentationDetents(_:)();

  LOBYTE(v9) = static Edge.Set.bottom.getter();
  v10 = static SafeAreaRegions.all.getter();
  result = sub_1000054DC(&qword_10002E478, &qword_10001ADA0);
  v12 = a2 + *(result + 36);
  *v12 = v10;
  *(v12 + 8) = v9;
  return result;
}

uint64_t sub_100010828(unint64_t a1, uint64_t a2)
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005590(v3, qword_10002F570);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    if (a1 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v6 + 4) = v7;

    _os_log_impl(&_mh_execute_header, v4, v5, "LimitedAccess show selected view chose: %ld contacts", v6, 0xCu);
  }

  else
  {
  }

  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  return State.wrappedValue.setter();
}

uint64_t sub_1000109A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v6 = v4[2];
  v5 = v4[3];
  v8 = v4[4];
  v7 = v4[5];
  v21[0] = *(a1 + 80);

  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.getter();
  v9 = swift_allocObject();
  v10 = *(a1 + 80);
  *(v9 + 80) = *(a1 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(a1 + 96);
  *(v9 + 128) = *(a1 + 112);
  v11 = *(a1 + 16);
  *(v9 + 16) = *a1;
  *(v9 + 32) = v11;
  v12 = *(a1 + 48);
  *(v9 + 48) = *(a1 + 32);
  *(v9 + 64) = v12;
  v13 = swift_allocObject();
  v14 = *(a1 + 80);
  *(v13 + 80) = *(a1 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(a1 + 96);
  *(v13 + 128) = *(a1 + 112);
  v15 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v15;
  v16 = *(a1 + 48);
  *(v13 + 48) = *(a1 + 32);
  *(v13 + 64) = v16;
  *&v23 = v6;
  *(&v23 + 1) = v5;
  *&v24 = v8;
  *(&v24 + 1) = v7;
  *(&v25 + 1) = sub_1000122E4;
  *&v26 = v9;
  *(&v26 + 1) = sub_1000122EC;
  v27 = v13;
  sub_1000054DC(&qword_10002E1F8, &qword_10001AB28);
  type metadata accessor for PresentationDetent();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10001A730;
  sub_100012198(a1, v21);
  sub_100012198(a1, v21);
  static PresentationDetent.large.getter();
  static PresentationDetent.large.getter();
  sub_100012650(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100012288();
  View.presentationDetents(_:)();

  v21[2] = v25;
  v21[3] = v26;
  v22 = v27;
  v21[0] = v23;
  v21[1] = v24;
  sub_100012978(v21);
  LOBYTE(v9) = static Edge.Set.bottom.getter();
  v18 = static SafeAreaRegions.all.getter();
  result = sub_1000054DC(&qword_10002E1C8, &qword_10001AB10);
  v20 = a2 + *(result + 36);
  *v20 = v18;
  *(v20 + 8) = v9;
  return result;
}

uint64_t sub_100010C58(unint64_t a1, uint64_t a2)
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005590(v4, qword_10002F570);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = a1 >> 62;
  if (os_log_type_enabled(v5, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v7)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v5, v6, "LimitedAccess picker chose: %ld contacts", v8, 0xCu);
  }

  else
  {
  }

  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.setter();
  if (v7)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result >= 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
LABEL_10:
      sub_1000054DC(&qword_10002E218, &qword_10001AB38);
      return State.wrappedValue.setter();
    }
  }

  v11 = *(a2 + 8);
  v12 = *(v11 + 48);
  if (v12)
  {
    v13 = *(v11 + 56);

    v12(&_swiftEmptyArrayStorage);
    return sub_10000809C(v12, v13);
  }

  return result;
}

uint64_t sub_100010E68(uint64_t a1, uint64_t a2)
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005590(v2, qword_10002F570);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "LimitedAccess picker chose to go back to start", v5, 2u);
  }

  sub_1000054DC(&qword_10002E1F0, &qword_10001AB20);
  State.wrappedValue.setter();
  sub_1000054DC(&qword_10002E218, &qword_10001AB38);
  return State.wrappedValue.setter();
}

uint64_t sub_100010FC0(void *a1)
{
  if (a1[2])
  {
    v1 = a1[1];
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);

    sub_100006DEC(v2, v3);
  }

  else
  {
    type metadata accessor for ContactStoreVisualizer(0);
    sub_100012D54(&qword_10002E8A0, 255, type metadata accessor for ContactStoreVisualizer, &unk_10001A7F4);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000110E0@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for ContactStoreVisualizer(0);
  sub_100012D54(&qword_10002E8A0, 255, type metadata accessor for ContactStoreVisualizer, &unk_10001A7F4);

  v3 = EnvironmentObject.init()();
  v14 = v4;
  v15 = v3;
  type metadata accessor for ContactsLimitedAccessPromptViewObservable();
  sub_100012D54(&unk_10002E890, v5, type metadata accessor for ContactsLimitedAccessPromptViewObservable, &unk_10001A7BC);
  v6 = ObservedObject.init(wrappedValue:)();
  v12 = v7;
  v13 = v6;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_1000054DC(&qword_10002DBA0, &qword_10001AFD0);
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = swift_allocObject();
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  result = static ObservableObject.environmentStore.getter();
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v16;
  *(a2 + 56) = v17;
  *(a2 + 64) = v16;
  *(a2 + 72) = v17;
  *(a2 + 80) = v16;
  *(a2 + 88) = v17;
  *(a2 + 96) = v16;
  *(a2 + 104) = v17;
  *(a2 + 112) = v9 == 1;
  *(a2 + 120) = result;
  *(a2 + 128) = v10;
  return result;
}

__n128 sub_1000113A0@<Q0>(uint64_t a1@<X8>)
{
  sub_1000110E0(v6);
  v2 = v6[7];
  *(a1 + 96) = v6[6];
  *(a1 + 112) = v2;
  *(a1 + 128) = v7;
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  v4 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v4;
  result = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10001140C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10001148C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100011508@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10001158C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100011604()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001164C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001170C;

  return sub_100007078(a1, v4, v5, v7, v6);
}

uint64_t sub_10001170C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100011800(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000118F8;

  return v6(a1);
}

uint64_t sub_1000118F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000119F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011A28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000141B4;

  return sub_100011800(a1, v4);
}

uint64_t sub_100011AE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001170C;

  return sub_100011800(a1, v4);
}

unint64_t sub_100011B98()
{
  result = qword_10002E140;
  if (!qword_10002E140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10002E140);
  }

  return result;
}

uint64_t sub_100011BE4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100011C1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100011C64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_100011C84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100011C90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100011CD8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for OnboardingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100011E9C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100011EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100011F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100011F84()
{
  result = qword_10002E170;
  if (!qword_10002E170)
  {
    sub_1000059E8(&qword_10002E178, &qword_10001AA28);
    sub_100012008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E170);
  }

  return result;
}

unint64_t sub_100012008()
{
  result = qword_10002E180;
  if (!qword_10002E180)
  {
    sub_1000059E8(&qword_10002E188, &qword_10001AA30);
    sub_1000120C0();
    sub_100006BF8(&qword_10002E198, &qword_10002E1A0, &qword_10001AA38, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E180);
  }

  return result;
}

unint64_t sub_1000120C0()
{
  result = qword_10002E190;
  if (!qword_10002E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E190);
  }

  return result;
}

unint64_t sub_100012134()
{
  result = qword_10002E1A8;
  if (!qword_10002E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1A8);
  }

  return result;
}

unint64_t sub_1000121D0()
{
  result = qword_10002E1D8;
  if (!qword_10002E1D8)
  {
    sub_1000059E8(&qword_10002E1C8, &qword_10001AB10);
    sub_100012288();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1D8);
  }

  return result;
}

unint64_t sub_100012288()
{
  result = qword_10002E1E0;
  if (!qword_10002E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E1E0);
  }

  return result;
}

uint64_t sub_1000122F4@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100012358@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

void sub_100012404()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      swift_stdlib_random();
      v5 = (0 * v1) >> 64;
      if (v1)
      {
        if (-v1 % v1)
        {
          while (1)
          {
            swift_stdlib_random();
          }
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_20;
        }

        if (v7 >= v9)
        {
          goto LABEL_21;
        }

        v10 = *(v8 + 32 + 8 * v7);
        v11 = *(v8 + 32 + 8 * v3);
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_10001263C(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_22;
        }

        v14 = v8 + 8 * v3;
        v15 = *(v14 + 32);
        *(v14 + 32) = v12;

        specialized ContiguousArray._endMutation()();
        v16 = *v0;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = sub_10001263C(v16);
          *v0 = v16;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_23;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        specialized ContiguousArray._endMutation()();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void *sub_1000125A8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100005454(v3, 0);
  sub_100005844(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_100012650(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000054DC(&qword_10002E200, &qword_10001AB30);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100012D54(&qword_10002E208, 255, &type metadata accessor for PresentationDetent, &protocol conformance descriptor for PresentationDetent);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100012D54(&qword_10002E210, 255, &type metadata accessor for PresentationDetent, &protocol conformance descriptor for PresentationDetent);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_1000129D4()
{
  result = qword_10002E260;
  if (!qword_10002E260)
  {
    sub_1000059E8(&qword_10002E230, &qword_10001AB50);
    sub_100006BF8(&qword_10002E268, &qword_10002E270, &qword_10001AB70, &protocol conformance descriptor for VStack<A>);
    sub_100006BF8(&qword_10002E278, &qword_10002E280, &qword_10001AB78, &protocol conformance descriptor for _InsetViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E260);
  }

  return result;
}

unint64_t sub_100012AC8()
{
  result = qword_10002E310;
  if (!qword_10002E310)
  {
    sub_1000059E8(&qword_10002E308, &qword_10001ABF0);
    sub_100012B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E310);
  }

  return result;
}

unint64_t sub_100012B54()
{
  result = qword_10002E318;
  if (!qword_10002E318)
  {
    sub_1000059E8(&qword_10002E320, &qword_10001ABF8);
    sub_1000059E8(&qword_10002E328, &qword_10001AC00);
    type metadata accessor for GlassButtonStyle();
    sub_100012C9C();
    sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle, &protocol conformance descriptor for GlassButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100006BF8(&qword_10002E350, &qword_10002E358, &qword_10001AC10, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E318);
  }

  return result;
}

unint64_t sub_100012C9C()
{
  result = qword_10002E330;
  if (!qword_10002E330)
  {
    sub_1000059E8(&qword_10002E328, &qword_10001AC00);
    sub_100006BF8(&qword_10002E338, &qword_10002E340, &qword_10001AC08, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E330);
  }

  return result;
}

uint64_t sub_100012D54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_100012DA4()
{
  result = qword_10002E368;
  if (!qword_10002E368)
  {
    sub_1000059E8(&qword_10002E360, &qword_10001AC18);
    sub_100012E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E368);
  }

  return result;
}

unint64_t sub_100012E30()
{
  result = qword_10002E370;
  if (!qword_10002E370)
  {
    sub_1000059E8(&qword_10002E378, &qword_10001AC20);
    sub_100012EE8();
    sub_100006BF8(&qword_10002E350, &qword_10002E358, &qword_10001AC10, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E370);
  }

  return result;
}

unint64_t sub_100012EE8()
{
  result = qword_10002E380;
  if (!qword_10002E380)
  {
    sub_1000059E8(&qword_10002E388, &qword_10001AC28);
    sub_1000059E8(&qword_10002E328, &qword_10001AC00);
    type metadata accessor for GlassButtonStyle();
    sub_100012C9C();
    sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle, &protocol conformance descriptor for GlassButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100006BF8(&qword_10002E390, &qword_10002E398, &qword_10001AC30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E380);
  }

  return result;
}

unint64_t sub_100013040()
{
  result = qword_10002E3B8;
  if (!qword_10002E3B8)
  {
    sub_1000059E8(&qword_10002E3B0, &qword_10001AC48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E3B8);
  }

  return result;
}

uint64_t sub_1000130C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10001311C()
{
  result = qword_10002E3D8;
  if (!qword_10002E3D8)
  {
    sub_1000059E8(&qword_10002E3C8, &qword_10001AC90);
    sub_1000131D4();
    sub_100006BF8(&qword_10002E408, &qword_10002E2A0, &qword_10001AB90, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E3D8);
  }

  return result;
}

unint64_t sub_1000131D4()
{
  result = qword_10002E3E0;
  if (!qword_10002E3E0)
  {
    sub_1000059E8(&qword_10002E3E8, &qword_10001ACA0);
    sub_100013260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E3E0);
  }

  return result;
}

unint64_t sub_100013260()
{
  result = qword_10002E3F0;
  if (!qword_10002E3F0)
  {
    sub_1000059E8(&qword_10002E3F8, &qword_10001ACA8);
    sub_1000132EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E3F0);
  }

  return result;
}

unint64_t sub_1000132EC()
{
  result = qword_10002E400;
  if (!qword_10002E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E400);
  }

  return result;
}

uint64_t sub_100013340@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.allowsTightening.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000133EC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100013468()
{
  result = qword_10002E480;
  if (!qword_10002E480)
  {
    sub_1000059E8(&qword_10002E470, &qword_10001AD98);
    sub_100006BF8(&qword_10002E488, &qword_10002E490, &qword_10001ADA8, &protocol conformance descriptor for Button<A>);
    sub_100006BF8(&qword_10002E498, &qword_10002E4A0, &qword_10001ADB0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E480);
  }

  return result;
}

unint64_t sub_10001354C()
{
  result = qword_10002E4A8;
  if (!qword_10002E4A8)
  {
    sub_1000059E8(&qword_10002E478, &qword_10001ADA0);
    sub_100013604();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E4A8);
  }

  return result;
}

unint64_t sub_100013604()
{
  result = qword_10002EA40;
  if (!qword_10002EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EA40);
  }

  return result;
}

uint64_t sub_100013664@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000137C8()
{
  result = qword_10002E530;
  if (!qword_10002E530)
  {
    sub_1000059E8(&qword_10002E528, &qword_10001AE48);
    sub_100013854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E530);
  }

  return result;
}

unint64_t sub_100013854()
{
  result = qword_10002E538;
  if (!qword_10002E538)
  {
    sub_1000059E8(&qword_10002E540, &qword_10001AE50);
    sub_1000059E8(&qword_10002E548, &qword_10001AE58);
    type metadata accessor for GlassButtonStyle();
    sub_10001399C();
    sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle, &protocol conformance descriptor for GlassButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100006BF8(&qword_10002E350, &qword_10002E358, &qword_10001AC10, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E538);
  }

  return result;
}

unint64_t sub_10001399C()
{
  result = qword_10002E550;
  if (!qword_10002E550)
  {
    sub_1000059E8(&qword_10002E548, &qword_10001AE58);
    sub_100013A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E550);
  }

  return result;
}

unint64_t sub_100013A28()
{
  result = qword_10002E558;
  if (!qword_10002E558)
  {
    sub_1000059E8(&qword_10002E560, &qword_10001AE60);
    sub_100006BF8(&qword_10002E568, &qword_10002E570, &qword_10001AE68, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E558);
  }

  return result;
}

unint64_t sub_100013AEC()
{
  result = qword_10002E580;
  if (!qword_10002E580)
  {
    sub_1000059E8(&qword_10002E578, &qword_10001AE70);
    sub_100013B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E580);
  }

  return result;
}

unint64_t sub_100013B78()
{
  result = qword_10002E588;
  if (!qword_10002E588)
  {
    sub_1000059E8(&qword_10002E590, &qword_10001AE78);
    sub_1000059E8(&qword_10002E598, &qword_10001AE80);
    type metadata accessor for GlassButtonStyle();
    sub_100013CC0();
    sub_100012D54(&qword_10002E348, 255, &type metadata accessor for GlassButtonStyle, &protocol conformance descriptor for GlassButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100006BF8(&qword_10002E350, &qword_10002E358, &qword_10001AC10, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E588);
  }

  return result;
}

unint64_t sub_100013CC0()
{
  result = qword_10002E5A0;
  if (!qword_10002E5A0)
  {
    sub_1000059E8(&qword_10002E598, &qword_10001AE80);
    sub_100006BF8(&qword_10002E5A8, &qword_10002E5B0, &qword_10001AE88, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E5A0);
  }

  return result;
}

uint64_t sub_100013D78()
{

  return _swift_deallocObject(v0, 137, 7);
}

unint64_t sub_100013DFC()
{
  result = qword_10002E5D0;
  if (!qword_10002E5D0)
  {
    sub_1000059E8(&qword_10002E5C8, &qword_10001AEA0);
    sub_100013EB4();
    sub_100006BF8(&qword_10002E5E8, &qword_10002E5F0, &qword_10001AEB0, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E5D0);
  }

  return result;
}

unint64_t sub_100013EB4()
{
  result = qword_10002E5D8;
  if (!qword_10002E5D8)
  {
    sub_1000059E8(&qword_10002E5E0, &qword_10001AEA8);
    sub_100013040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E5D8);
  }

  return result;
}

uint64_t sub_100013F40()
{

  return _swift_deallocObject(v0, 129, 7);
}

unint64_t sub_100013FC4()
{
  result = qword_10002E608;
  if (!qword_10002E608)
  {
    sub_1000059E8(&qword_10002E600, &qword_10001AEC0);
    sub_100013040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E608);
  }

  return result;
}

unint64_t sub_100014054()
{
  result = qword_10002E630;
  if (!qword_10002E630)
  {
    sub_1000059E8(&qword_10002E1E8, &qword_10001AB18);
    sub_1000059E8(&qword_10002E1B0, &qword_10001AAF8);
    sub_1000059E8(&qword_10002E1C8, &qword_10001AB10);
    sub_100006BF8(&qword_10002E1D0, &qword_10002E1B0, &qword_10001AAF8, &protocol conformance descriptor for VStack<A>);
    sub_1000121D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002E630);
  }

  return result;
}

uint64_t sub_1000141B8(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_1000158D4(a1, a2, 0);
  v6 = [v5 localizedName];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void sub_100014460()
{
  v1 = v0;
  type metadata accessor for ContactsLimitedAccessPromptViewObservable();
  sub_100016C5C(&unk_10002E890, type metadata accessor for ContactsLimitedAccessPromptViewObservable, &unk_10001A7BC);

  v2 = ObservedObject.init(wrappedValue:)();
  v4 = v3;
  type metadata accessor for ContactStoreVisualizer(0);
  v5 = swift_allocObject();
  sub_1000054DC(&qword_10002DBA0, &qword_10001AFD0);
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  sub_100016C5C(&qword_10002E8A0, type metadata accessor for ContactStoreVisualizer, &unk_10001A7F4);
  v54 = v2;
  v55 = static ObservableObject.environmentStore.getter();
  v6 = objc_allocWithZone(sub_1000054DC(&qword_10002E8A8, qword_10001AFD8));
  v7 = UIHostingController.init(rootView:)();
  v8 = OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView;
  v9 = *&v0[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView];
  *&v0[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView] = v7;
  v10 = v7;

  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  if (!v13)
  {
    [v1 addChildViewController:v10];
    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      v16 = [v10 view];
      if (v16)
      {
        v17 = v16;
        [v15 addSubview:v16];

        v18 = [v10 view];
        if (v18)
        {
          v19 = v18;
          [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

          v20 = [v10 view];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 topAnchor];

            v23 = [v1 view];
            if (v23)
            {
              v24 = v23;
              v25 = [v23 topAnchor];

              v26 = [v22 constraintEqualToAnchor:v25];
              [v26 setActive:1];

              v27 = [v10 view];
              if (v27)
              {
                v28 = v27;
                v29 = [v27 bottomAnchor];

                v30 = [v1 view];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v30 bottomAnchor];

                  v33 = [v29 constraintEqualToAnchor:v32];
                  [v33 setActive:1];

                  v34 = [v10 view];
                  if (v34)
                  {
                    v35 = v34;
                    v36 = [v34 rightAnchor];

                    v37 = [v1 view];
                    if (v37)
                    {
                      v38 = v37;
                      v39 = [v37 rightAnchor];

                      v40 = [v36 constraintEqualToAnchor:v39];
                      [v40 setActive:1];

                      v41 = [v10 view];
                      if (v41)
                      {
                        v42 = v41;
                        v43 = [v41 leftAnchor];

                        v44 = [v1 view];
                        if (v44)
                        {
                          v45 = v44;
                          v46 = [v44 leftAnchor];

                          v47 = [v43 constraintEqualToAnchor:v46];
                          [v47 setActive:1];

                          v10 = v47;
                          goto LABEL_14;
                        }

LABEL_32:
                        __break(1u);
                        return;
                      }

LABEL_31:
                      __break(1u);
                      goto LABEL_32;
                    }

LABEL_30:
                    __break(1u);
                    goto LABEL_31;
                  }

LABEL_29:
                  __break(1u);
                  goto LABEL_30;
                }

LABEL_28:
                __break(1u);
                goto LABEL_29;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_14:

  v48 = [v11 currentDevice];
  v49 = [v48 userInterfaceIdiom];

  v50 = *&v1[v8];
  if (v49 == 1)
  {
    if (v50)
    {
      [v50 setModalInPresentation:1];
      v51 = *&v1[v8];
      if (v51)
      {
        v52 = [v51 sheetPresentationController];
        if (v52)
        {
          v53 = v52;
          [v52 setPrefersEdgeAttachedInCompactHeight:1];
          [v53 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
        }
      }
    }
  }

  else if (v50)
  {
    [v50 didMoveToParentViewController:v1];
  }
}

uint64_t sub_100014AB4()
{
  if ([v0 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1000054DC(&qword_10002E888, &qword_10001AFC8);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100006140(v5, &qword_10002E880, &unk_10001AFB8);
    return 0;
  }
}

id sub_100014DA4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer;
  type metadata accessor for ContactsLimitedAccessPromptViewObservable();
  v7 = swift_allocObject();
  *(v7 + 16) = 7368769;
  *(v7 + 24) = 0xE300000000000000;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0xE000000000000000;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *&v3[v6] = v7;
  v8 = &v3[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v3[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView] = 0;
  if (a2)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for ContactsLimitedAccessPromptViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", v9, a3);

  return v10;
}

id sub_100014EF8(void *a1)
{
  v3 = OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer;
  type metadata accessor for ContactsLimitedAccessPromptViewObservable();
  v4 = swift_allocObject();
  *(v4 + 16) = 7368769;
  *(v4 + 24) = 0xE300000000000000;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *&v1[v3] = v4;
  v5 = &v1[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ContactsLimitedAccessPromptViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1000150DC(unint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      v9 = *&v8[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID];
      v6 = *&v8[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID + 8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
  }

  sub_100016878(3, v9, v6);

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc);
    v12 = v10;
    v13 = v11;

    if (v11)
    {
      v15 = *&v13[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID];
      v14 = *&v13[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID + 8];

      if (v14)
      {
        type metadata accessor for ContactsAccessUpdater();
        inited = swift_initStackObject();
        *(inited + 24) = v15;
        *(inited + 32) = v14;

        v17 = sub_100001A40();

        *(inited + 16) = v17;
        v18 = String._bridgeToObjectiveC()();
        [v17 purgeLimitedAccessRecordsForBundle:v18];

        sub_100015574(a1);
        swift_setDeallocating();
      }
    }
  }

  return [a3 deactivate];
}

id sub_10001529C(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      v9 = *&v8[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID];
      v6 = *&v8[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID + 8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
  }

  sub_100016878(a3, v9, v6);

  return [a2 deactivate];
}

id sub_100015498(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100015574(unint64_t a1)
{
  v3 = v1;
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005590(v5, qword_10002F570);

  v6 = Logger.logObject.getter();
  LOBYTE(v7) = static os_log_type_t.default.getter();

  v8 = a1 >> 62;
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_8;
  }

  v9 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v23 = v2;
  *v9 = 134218242;
  if (v8)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v9 + 4) = i;

    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100017CA8(v3[3], v3[4], &v23);
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding %ld contacts to limited access for %s", v9, 0x16u);
    sub_100005A98(v2);

LABEL_8:
    v7 = v3[2];
    v3 = String._bridgeToObjectiveC()();
    v9 = v8 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      break;
    }

    v23 = &_swiftEmptyArrayStorage;
    v6 = &v23;
    sub_100015ABC(0, v9 & ~(v9 >> 63), 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v12 = v23;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v13 = *(a1 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = [v13 identifier];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v23 = v12;
        v20 = v12[2];
        v19 = v12[3];
        if (v20 >= v19 >> 1)
        {
          sub_100015ABC((v19 > 1), v20 + 1, 1);
          v12 = v23;
        }

        ++v11;
        v12[2] = v20 + 1;
        v21 = &v12[2 * v20];
        v21[4] = v16;
        v21[5] = v18;
      }

      while (v9 != v11);
      break;
    }

    __break(1u);
LABEL_24:
    ;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 addLimitedAccessForBundle:v3 contactIdentifiers:isa];
}

uint64_t sub_100015870()
{

  return swift_deallocClassInstance();
}

id sub_1000158D4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1000159B0(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000159F4(a1, v4);
}

unint64_t sub_1000159F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100016C00(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100016B50(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_100015ABC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100015ADC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100015ADC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054DC(&qword_10002E870, ":N");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_100015BE8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100015C68;
  }

  __break(1u);
  return result;
}

void *sub_100015C70(void *result)
{
  if (result)
  {
    v2 = v1;
    v3 = [result userInfo];
    if (v3)
    {
      v4 = v3;
      v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (qword_10002DA20 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_100005590(v6, qword_10002F570);

      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        *(v9 + 4) = v11;
        v10->super.isa = v11.super.isa;
        _os_log_impl(&_mh_execute_header, v7, v8, "ContactsLimitedAccessPromptViewController activated with userInfo: %@", v9, 0xCu);
        sub_100006140(v10, &qword_10002E878, "pN");
      }

      v25[0] = 0xD00000000000001FLL;
      v25[1] = 0x800000010001B950;
      AnyHashable.init<A>(_:)();
      if (*(v5 + 16) && (v12 = sub_1000159B0(v24), (v13 & 1) != 0))
      {
        sub_100016BA4(*(v5 + 56) + 32 * v12, v25);
        sub_100016B50(v24);

        v14 = swift_dynamicCast();
        v15 = v22;
        v16 = v23;
        if (!v14)
        {
          v15 = 0;
          v16 = 0;
        }
      }

      else
      {

        sub_100016B50(v24);
        v15 = 0;
        v16 = 0;
      }

      v17 = (v2 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID);
      *v17 = v15;
      v17[1] = v16;
    }

    else
    {
      if (qword_10002DA20 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100005590(v18, qword_10002F570);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "ContactsLimitedAccessPromptViewController unexpectedly got nil from user info", v21, 2u);
      }

      result = sub_100014AB4();
      if (result)
      {
        [result dismiss];

        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100015FF4(void *a1)
{
  v2 = v1;
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005590(v4, qword_10002F570);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "ContactsLimitedAccessPromptSceneDelegate: scene will connect", v7, 2u);
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClassUnconditional();
  v9 = [objc_allocWithZone(UIWindow) initWithWindowScene:v8];
  v10 = OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window;
  v11 = *(v1 + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_window) = v9;

  v75 = objc_opt_self();
  v12 = [v75 currentDevice];
  v13 = [v12 userInterfaceIdiom];

  v76 = v10;
  if (!v13)
  {
    v60 = *(v1 + v10);
    if (v60)
    {
      v61 = [v60 layer];
      v62 = [objc_opt_self() blackColor];
      v63 = [v62 CGColor];

      [v61 setBackgroundColor:v63];
      v64 = *(v1 + v10);
      if (v64)
      {
        v65 = [v64 layer];
        v66 = [objc_opt_self() blackColor];
        v67 = [v66 CGColor];

        [v65 setShadowColor:v67];
        v68 = *(v1 + v10);
        if (v68)
        {
          v69 = [v68 layer];
          LODWORD(v70) = 1.0;
          [v69 setShadowOpacity:v70];

          v71 = *(v1 + v10);
          if (v71)
          {
            v72 = [v71 layer];
            [v72 setShadowOffset:{0.0, 0.0}];

            v73 = *(v1 + v10);
            if (v73)
            {
              v74 = [v73 layer];
              [v74 setShadowRadius:5.0];
            }
          }
        }
      }
    }
  }

  v14 = [objc_allocWithZone(type metadata accessor for ContactsLimitedAccessPromptViewController()) initWithNibName:0 bundle:0];
  v15 = OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc;
  v16 = *(v1 + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc);
  *(v1 + OBJC_IVAR____TtC23LimitedAccessPromptView40ContactsLimitedAccessPromptSceneDelegate_rootVc) = v14;

  v17 = *(v1 + v15);
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v8;
    v21 = *(v18 + 48);
    v22 = *(v18 + 56);
    *(v18 + 48) = sub_1000167F0;
    *(v18 + 56) = v20;

    v23 = a1;
    sub_10000809C(v21, v22);

    v24 = *(v1 + v15);
    if (v24)
    {
      v25 = *(v24 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer);
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      *(v27 + 24) = v8;
      v28 = *(v25 + 80);
      v29 = *(v25 + 88);
      *(v25 + 80) = sub_1000167F8;
      *(v25 + 88) = v27;
      v30 = v23;

      sub_10000809C(v28, v29);

      v31 = *(v1 + v15);
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer);
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;
        *(v34 + 24) = v8;
        v35 = *(v32 + 64);
        v36 = *(v32 + 72);
        *(v32 + 64) = sub_100016858;
        *(v32 + 72) = v34;
        v37 = v30;

        sub_10000809C(v35, v36);
      }
    }
  }

  v38 = a1;
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    v43 = [v8 activationContext];
    *(v41 + 4) = v43;
    *v42 = v43;
    _os_log_impl(&_mh_execute_header, v39, v40, "ContactsLimitedAccessPromptSceneDelegate will activate with context %@", v41, 0xCu);
    sub_100006140(v42, &qword_10002E878, "pN");
  }

  v44 = *(v2 + v15);
  if (v44)
  {
    v45 = v44;
    v46 = [v8 activationContext];
    [v45 prepareForActivationWithContext:v46 completion:0];

    v47 = *(v2 + v15);
    if (v47)
    {
      v48 = *(v47 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID + 8);
      if (v48)
      {
        v49 = *(v47 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_requestorBundleID);
        v50 = *(v47 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer);
        *(v50 + 32) = v49;
        *(v50 + 40) = v48;
        swift_bridgeObjectRetain_n();

        v51 = *(v2 + v15);
        if (v51)
        {
          v52 = *(v51 + OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_observer);

          v53 = sub_1000141B8(v49, v48);
          v55 = v54;

          *(v52 + 16) = v53;
          *(v52 + 24) = v55;
        }
      }
    }
  }

  v56 = *(v2 + v76);
  if (v56)
  {
    [v56 setRootViewController:*(v2 + v15)];
    v56 = *(v2 + v76);
  }

  [v56 makeKeyAndVisible];
  [v8 setSwipeDismissalStyle:1];
  [v8 setAllowsMenuButtonDismissal:1];
  v57 = [v75 currentDevice];
  v58 = [v57 userInterfaceIdiom];

  if (v58 == 1)
  {
    v59 = *(v2 + v15);
    if (v59)
    {
      if (*&v59[OBJC_IVAR____TtC23LimitedAccessPromptView41ContactsLimitedAccessPromptViewController_contentView])
      {

        [v59 presentViewController:? animated:? completion:?];
      }
    }
  }
}

uint64_t sub_1000167B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016818()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100016878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!tcc_server_create())
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!kTCCServiceAddressBook)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = kTCCServiceAddressBook;
  v5 = tcc_service_singleton_for_CF_name();

  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!tcc_message_options_create())
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  tcc_message_options_set_reply_handler_policy();
  tcc_message_options_set_request_prompt_policy();
  tcc_message_options_set_nokill_policy();
  if (!a3)
  {
    if (qword_10002DA20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005590(v7, qword_10002F570);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "updateAddressBookAccess: don't know the requestor's bundle ID, so we can't set anything", v10, 2u);
    }

    goto LABEL_13;
  }

  String.utf8CString.getter();
  v6 = tcc_identity_create();

  if (!v6)
  {
LABEL_20:
    __break(1u);
    return;
  }

  tcc_server_message_set_authorization_value();
  swift_unknownObjectRelease();
LABEL_13:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

uint64_t sub_100016A70()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016AB0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100016AE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100016AF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100016B08()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100016BA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100016C5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100016D8C()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    v14 = objc_allocWithZone(CNLimitedAccessContactPickerViewController);
    v15 = String._bridgeToObjectiveC()();
    v16 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v14 initForOnboarding:v15 bundleId:v16 selectedContacts:isa];

    sub_1000054DC(&qword_10002EA60, &qword_10001B250);
    UIViewControllerRepresentableContext.coordinator.getter();
    [v18 setDelegate:v19];

    return v18;
  }

  result = sub_100015ABC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 identifier];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v19 = _swiftEmptyArrayStorage;
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100015ABC((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
    }

    while (v2 != v4);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *sub_100016FB0@<X0>(void *a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];
  v6 = v1[7];
  v5 = v1[8];
  v7 = type metadata accessor for LimitedAccessContactPickerView.ControllerCoordinator();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCV23LimitedAccessPromptView30LimitedAccessContactPickerView21ControllerCoordinator_completion];
  *v9 = v4;
  *(v9 + 1) = v3;
  v10 = &v8[OBJC_IVAR____TtCV23LimitedAccessPromptView30LimitedAccessContactPickerView21ControllerCoordinator_goBackBlock];
  *v10 = v6;
  *(v10 + 1) = v5;
  v12.receiver = v8;
  v12.super_class = v7;

  result = objc_msgSendSuper2(&v12, "init");
  *a1 = result;
  return result;
}

uint64_t sub_100017084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001757C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000170E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001757C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001714C(uint64_t a1)
{
  sub_10001757C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100017180(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1000055C8();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = *&a1[*a5];
  v9 = a1;
  v8(v7);
}

id sub_100017220(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

__n128 sub_100017290(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000172B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000172FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10001735C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100017370(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000173B8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *sub_100017414@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for LimitedAccessSelectedContactsView.ControllerCoordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV23LimitedAccessPromptView33LimitedAccessSelectedContactsView21ControllerCoordinator_completion];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_10001748C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000175D0();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000174F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000175D0();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100017554(uint64_t a1)
{
  sub_1000175D0();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10001757C()
{
  result = qword_10002EA50;
  if (!qword_10002EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EA50);
  }

  return result;
}

unint64_t sub_1000175D0()
{
  result = qword_10002EA58;
  if (!qword_10002EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EA58);
  }

  return result;
}

char *sub_100017624(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
LABEL_12:
    v16 = objc_allocWithZone(CNLimitedAccessContactPickerViewController);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v16 initForShowSelected:isa];

    sub_1000054DC(&qword_10002EA68, &qword_10001B258);
    UIViewControllerRepresentableContext.coordinator.getter();
    [v18 setDelegate:v20];

    return v18;
  }

  result = sub_100015ABC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v19 = a1;
    v6 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(a2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 identifier];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v20 = _swiftEmptyArrayStorage;
      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100015ABC((v13 > 1), v14 + 1, 1);
      }

      ++v6;
      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v10;
      v15[5] = v12;
    }

    while (v4 != v6);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_1000178DC(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1000179E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100017A18()
{
  v0 = sub_1000054DC(&qword_10002EB28, &qword_10001B2F0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - v2;
  WindowGroup.init(id:title:lazyContent:)();
  sub_100017C44();
  static SceneBuilder.buildBlock<A>(_:)();
  return (*(v1 + 8))(v3, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100017B7C();
  static App.main()();
  return 0;
}

unint64_t sub_100017B7C()
{
  result = qword_10002EA70;
  if (!qword_10002EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EA70);
  }

  return result;
}

unint64_t sub_100017C44()
{
  result = qword_10002EB30;
  if (!qword_10002EB30)
  {
    sub_1000059E8(&qword_10002EB28, &qword_10001B2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002EB30);
  }

  return result;
}

unint64_t sub_100017CA8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100017D74(v11, 0, 0, 1, a1, a2);
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
    sub_100016BA4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100005A98(v11);
  return v7;
}

unint64_t sub_100017D74(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100017E80(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100017E80(uint64_t a1, unint64_t a2)
{
  v3 = sub_100017ECC(a1, a2);
  sub_100017FFC(&off_100029168);
  return v3;
}

char *sub_100017ECC(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000180E8(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000180E8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100017FFC(uint64_t result)
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

  result = sub_10001815C(result, v11, 1, v3);
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

void *sub_1000180E8(uint64_t a1, uint64_t a2)
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

  sub_1000054DC(&qword_10002EB38, &qword_10001B2F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10001815C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000054DC(&qword_10002EB38, &qword_10001B2F8);
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

void sub_100018338(uint64_t a1, unint64_t a2)
{
  if (qword_10002DA20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005590(v4, qword_10002F570);

  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017CA8(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, "LimitedAccessPromptSceneDelegate will continue activity with type: %s", v6, 0xCu);
    sub_100005A98(v7);
  }
}

uint64_t sub_100018494()
{
  v0 = type metadata accessor for Logger();
  sub_100005A34(v0, qword_10002F570);
  sub_100005590(v0, qword_10002F570);
  return Logger.init(subsystem:category:)();
}