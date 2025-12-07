uint64_t sub_10001DB0C(double a1, double a2)
{
  v5 = type metadata accessor for IconView(0);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 8);
  v10 = *(v2 + 9);
  *&v38 = v2[7];
  v8 = v38;
  *(&v38 + 1) = v9;
  *&v39 = v10;
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.getter();
  *&v11 = *&v35 + a1;
  v13 = *(v2 + 4);
  v14 = *(v2 + 5);
  v15 = *(v2 + 6);
  *&v38 = v2[3];
  v12 = v38;
  *(&v38 + 1) = v13;
  *&v39 = v14;
  *(&v39 + 1) = v15;

  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  *&v35 = v12;
  *(&v35 + 1) = v13;
  v36 = v14;
  v37 = v15;
  v33 = v11;
  v34 = v40[1];
  Binding.wrappedValue.setter();
  *&v38 = v8;
  *(&v38 + 1) = v9;
  *&v39 = v10;
  State.wrappedValue.getter();
  *&v16 = *(&v35 + 1) + a2;
  *&v38 = v12;
  *(&v38 + 1) = v13;
  *&v39 = v14;
  *(&v39 + 1) = v15;
  Binding.wrappedValue.getter();
  *&v35 = v12;
  *(&v35 + 1) = v13;
  v36 = v14;
  v37 = v15;
  v33 = v40[0];
  v34 = v16;
  Binding.wrappedValue.setter();
  *&v38 = v12;
  *(&v38 + 1) = v13;
  *&v39 = v14;
  *(&v39 + 1) = v15;
  Binding.wrappedValue.getter();
  v17 = v35;
  if (AXDeviceIsPad())
  {
    v18 = 68.0;
  }

  else
  {
    v18 = 54.0;
  }

  v19 = v2[12];
  v20 = v2[13];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  safeOffset(offset:size:containerSize:foreheadWindowRect:)(*&v17, *(&v17 + 1), v18, v18, v19, v20, *&v38, *(&v38 + 1), *&v39, *(&v39 + 1));
  *&v38 = v12;
  *(&v38 + 1) = v13;
  *&v39 = v14;
  *(&v39 + 1) = v15;
  *&v35 = v21;
  *(&v35 + 1) = v22;
  Binding.wrappedValue.setter();

  v23 = static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  v24 = qword_1000654E8;
  sub_10001F36C(v2, v7);
  if (!os_log_type_enabled(v24, v23))
  {
    return sub_10001FC1C(v7);
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v40[0] = v26;
  *v25 = 136315138;
  v27 = *(v7 + 4);
  *&v38 = *(v7 + 3);
  *(&v38 + 1) = v27;
  v39 = *(v7 + 40);
  Binding.wrappedValue.getter();
  v38 = v35;
  type metadata accessor for CGSize(0);
  v28 = String.init<A>(describing:)();
  v30 = v29;
  sub_10001FC1C(v7);
  v31 = sub_100031EB4(v28, v30, v40);

  *(v25 + 4) = v31;
  _os_log_impl(&_mh_execute_header, v24, v23, "changeOffset iconOffset: %s", v25, 0xCu);
  sub_100018190(v26);
}

void sub_10001DEE0(uint64_t a1, uint64_t a2)
{
  static Animation.linear(duration:)();
  Animation.delay(_:)();

  Animation.repeatCount(_:autoreverses:)();

  withAnimation<A>(_:_:)();

  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.setter();
  sub_10001E338(v2);
}

void sub_10001DFCC(uint64_t a1)
{
  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  sub_100025378(3, v3, v4, *(a1 + 96), *(a1 + 104));
  Binding.wrappedValue.setter();
  sub_10001E07C(v2);
}

void sub_10001E07C(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for IconView(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = *(v1 + 32);
  v22.width = *(v1 + 24);
  v22.height = v7;
  v23 = *(v1 + 40);
  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  v8 = NSStringFromCGSize(v21);
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = String._bridgeToObjectiveC()();
  [v6 setObject:v8 forKey:v9];

  [v6 synchronize];
  v10 = static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  v11 = qword_1000654E8;
  sub_10001F36C(v2, v5);
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    v14 = *(v5 + 4);
    v22.width = *(v5 + 3);
    v22.height = v14;
    v23 = *(v5 + 40);
    Binding.wrappedValue.getter();
    v22 = v21;
    type metadata accessor for CGSize(0);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_10001FC1C(v5);
    v18 = sub_100031EB4(v15, v17, &v20);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v10, "save iconOffset: %s", v12, 0xCu);
    sub_100018190(v13);
  }

  else
  {

    sub_10001FC1C(v5);
  }
}

void sub_10001E338(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for IconView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  aBlock = *v1;
  v20 = v6;
  v21 = v7;
  sub_100003968(&qword_1000634D8, &qword_100048BA8);
  v8 = Binding.wrappedValue.getter();
  if (v25 < 1.0)
  {
    __chkstk_darwin(v8);
    *(&v18 - 2) = v1;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  v10 = *(v1 + 144);
  aBlock = *(v1 + 136);
  v9 = aBlock;
  v20 = v10;
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  v11 = v25;
  [*&v25 invalidate];

  v12 = objc_opt_self();
  v13 = *(v2 + 128);
  sub_10001F36C(v2, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_10001F3D4(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v23 = sub_10001FB5C;
  v24 = v15;
  aBlock = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100032E40;
  v22 = &unk_10005E910;
  v16 = _Block_copy(&aBlock);

  v17 = COERCE_DOUBLE([v12 scheduledTimerWithTimeInterval:0 repeats:v16 block:v13]);
  _Block_release(v16);
  aBlock = v9;
  v20 = v10;
  v25 = v17;
  State.wrappedValue.setter();
}

double sub_10001E5E8(uint64_t a1, uint64_t a2)
{
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.setter();
  return result;
}

void sub_10001E6B0(uint64_t a1, uint64_t a2)
{
  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  sub_100025378(3, v4, v5, *(a2 + 96), *(a2 + 104));
  Binding.wrappedValue.setter();
  sub_10001E07C(v3);
  sub_100003968(&qword_100062880, &unk_100047D20);
  State.wrappedValue.setter();
}

uint64_t sub_10001E790(uint64_t a1, void *a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    v9 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v10), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v11);
      sub_10000B374(v10);

      result = swift_dynamicCast();
      if (result)
      {
        v7 = a2[1];
        v8 = a2[2];
        v10[0] = *a2;
        v10[1] = v7;
        v10[2] = v8;
        v11[0] = v9;
        sub_100003968(&qword_1000634D8, &qword_100048BA8);
        return Binding.wrappedValue.setter();
      }
    }

    else
    {

      return sub_10000B374(v10);
    }
  }

  return result;
}

double sub_10001E898(uint64_t a1)
{
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  [v2 invalidate];

  State.wrappedValue.setter();
  return result;
}

uint64_t sub_10001E944()
{
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[6];
  sub_100003968(&qword_100062888, &qword_100048A70);
  Binding.wrappedValue.getter();
  if (AXDeviceIsPad())
  {
    v1 = 68.0;
  }

  else
  {
    v1 = 54.0;
  }

  v2 = v0[12];
  v3 = v0[13];
  type metadata accessor for IconView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  safeOffset(offset:size:containerSize:foreheadWindowRect:)(v5, v6, v1, v1, v2, v3, v7, v8, v9, v10);
  return Binding.wrappedValue.setter();
}

uint64_t type metadata accessor for IconView(uint64_t a1)
{
  result = qword_1000633B0;
  if (!qword_1000633B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10001EB40(uint64_t a1)
{
  static os_log_type_t.debug.getter();
  if (qword_1000626F0 != -1)
  {
    swift_once();
  }

  v1 = os_log(_:dso:log:_:_:)();
  __chkstk_darwin(v1);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t sub_10001EC3C(void *a1)
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100003968(&qword_1000634D8, &qword_100048BA8);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10001ED0C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10001F36C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10001F3D4(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_10001F438;
  a2[1] = v7;
  return result;
}

uint64_t sub_10001EE14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100003968(&qword_100062DA8, &qword_1000484E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001EEE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003968(&qword_100062DA8, &qword_1000484E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001EF94(uint64_t a1)
{
  sub_10001F1E8(319, &qword_1000633C0, &type metadata for CGFloat, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_10001F2EC(319, &qword_1000633C8, type metadata accessor for CGSize, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_10001F2EC(319, &qword_100062E40, type metadata accessor for CGSize, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10001F1E8(319, &qword_100062E58, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CGSize(319);
          if (v5 <= 0x3F)
          {
            sub_10001F238();
            if (v6 <= 0x3F)
            {
              sub_10001F288(319);
              if (v7 <= 0x3F)
              {
                sub_10001F2EC(319, &qword_100062E20, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for ForeheadWindow(319);
                  if (v9 <= 0x3F)
                  {
                    sub_10001F2EC(319, &unk_1000633D8, &type metadata accessor for AnyCancellable, &type metadata accessor for Optional);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_10001F1E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10001F238()
{
  result = qword_1000633D0;
  if (!qword_1000633D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1000633D0);
  }

  return result;
}

void sub_10001F288(uint64_t a1)
{
  if (!qword_100062E50)
  {
    sub_100003AC0(&qword_100062D88, &qword_100048850);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100062E50);
    }
  }
}

void sub_10001F2EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10001F36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F438@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10001BD60(v4, a1);
}

uint64_t sub_10001F4E8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for IconView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10001F56C()
{
  result = qword_100063498;
  if (!qword_100063498)
  {
    sub_100003AC0(&qword_100063440, &qword_100048B40);
    sub_10001F624();
    sub_100003E3C(&qword_1000634B0, &qword_1000634B8, &qword_100048B98, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063498);
  }

  return result;
}

unint64_t sub_10001F624()
{
  result = qword_1000634A0;
  if (!qword_1000634A0)
  {
    sub_100003AC0(&qword_100063438, &qword_100048B38);
    sub_100003E3C(&qword_1000634A8, &qword_100063430, &qword_100048B30, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634A0);
  }

  return result;
}

uint64_t sub_10001F6DC()
{
  v1 = *(type metadata accessor for IconView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_10001E338(v3);
  return (*(v2 + 112))();
}

double sub_10001F838()
{
  v1 = *(type metadata accessor for IconView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10001E898(v2);
}

unint64_t sub_10001F898()
{
  result = qword_1000634C0;
  if (!qword_1000634C0)
  {
    sub_100003AC0(&qword_100063480, &qword_100048B80);
    sub_10001F924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634C0);
  }

  return result;
}

unint64_t sub_10001F924()
{
  result = qword_1000634C8;
  if (!qword_1000634C8)
  {
    sub_100003AC0(&qword_100063478, &qword_100048B78);
    sub_100003E3C(&qword_1000634D0, &qword_100063470, &qword_100048B70, &protocol conformance descriptor for SubscriptionView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634C8);
  }

  return result;
}

uint64_t sub_10001F9DC()
{
  v1 = type metadata accessor for IconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 48);
  sub_100003968(&qword_100062D78, &unk_1000484B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for LayoutDirection();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_10001FB5C(uint64_t a1)
{
  type metadata accessor for IconView(0);

  return sub_10001EB40(a1);
}

uint64_t sub_10001FBCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001FC1C(uint64_t a1)
{
  v2 = type metadata accessor for IconView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001FCD0()
{
  result = qword_1000634F8;
  if (!qword_1000634F8)
  {
    sub_100003AC0(&qword_1000634F0, &unk_100048BF0);
    sub_10001FD88();
    sub_100003E3C(&qword_100062CF8, &qword_100062D00, &qword_100048150, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000634F8);
  }

  return result;
}

unint64_t sub_10001FD88()
{
  result = qword_100063500;
  if (!qword_100063500)
  {
    sub_100003AC0(&qword_100063508, &unk_100049370);
    sub_10000B424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063500);
  }

  return result;
}

id sub_10001FF60(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LTApplication();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100020260(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LTApplicationDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t property wrapper backing initializer of AXLTCaptionsView.timer(uint64_t a1)
{
  sub_100003968(&qword_100062D88, &qword_100048850);
  State.init(wrappedValue:)();
  return v2;
}

uint64_t AXLTCaptionsView.body.getter@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = swift_allocObject();
  v4 = v1[11];
  *(v3 + 11) = v1[10];
  *(v3 + 12) = v4;
  v5 = v1[13];
  *(v3 + 13) = v1[12];
  *(v3 + 14) = v5;
  v6 = v1[7];
  *(v3 + 7) = v1[6];
  *(v3 + 8) = v6;
  v7 = v1[9];
  *(v3 + 9) = v1[8];
  *(v3 + 10) = v7;
  v8 = v1[3];
  *(v3 + 3) = v1[2];
  *(v3 + 4) = v8;
  v9 = v1[5];
  *(v3 + 5) = v1[4];
  *(v3 + 6) = v9;
  v10 = v1[1];
  *(v3 + 1) = *v1;
  *(v3 + 2) = v10;
  *a1 = sub_1000207FC;
  a1[1] = v3;
  return sub_100020804(v1, v12);
}

uint64_t sub_100020448@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_100003968(&qword_100063600, &qword_100048DA0);
  __chkstk_darwin(v5);
  v7 = &v27[-v6 - 8];
  v8 = sub_100003968(&qword_100063608, &qword_100048DA8);
  __chkstk_darwin(v8);
  v10 = &v27[-v9 - 8];
  v11 = type metadata accessor for GeometryProxy();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  if ((a2[2] & 0xFE) == 2)
  {
    (*(v12 + 16))(&v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], a1, v11, v14);
    v15 = (*(v12 + 80) + 240) & ~*(v12 + 80);
    v16 = swift_allocObject();
    v17 = *(a2 + 11);
    *(v16 + 11) = *(a2 + 10);
    *(v16 + 12) = v17;
    v18 = *(a2 + 13);
    *(v16 + 13) = *(a2 + 12);
    *(v16 + 14) = v18;
    v19 = *(a2 + 7);
    *(v16 + 7) = *(a2 + 6);
    *(v16 + 8) = v19;
    v20 = *(a2 + 9);
    *(v16 + 9) = *(a2 + 8);
    *(v16 + 10) = v20;
    v21 = *(a2 + 3);
    *(v16 + 3) = *(a2 + 2);
    *(v16 + 4) = v21;
    v22 = *(a2 + 5);
    *(v16 + 5) = *(a2 + 4);
    *(v16 + 6) = v22;
    v23 = *(a2 + 1);
    *(v16 + 1) = *a2;
    *(v16 + 2) = v23;
    (*(v12 + 32))(&v16[v15], &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v11);
    *v10 = sub_100023F38;
    *(v10 + 1) = v16;
    swift_storeEnumTagMultiPayload();
    sub_100020804(a2, v27);
    sub_100003968(&qword_100063618, &qword_100048DB8);
    sub_100003E3C(&qword_100063620, &qword_100063618, &qword_100048DB8, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_100023E54();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    *v7 = static HorizontalAlignment.leading.getter();
    *(v7 + 1) = 0x4018000000000000;
    v7[16] = 0;
    v25 = sub_100003968(&qword_100063610, &qword_100048DB0);
    sub_100022DE8(a2, &v7[*(v25 + 44)]);
    *&v7[*(v5 + 36)] = 0;
    sub_100006098(v7, v10, &qword_100063600, &qword_100048DA0);
    swift_storeEnumTagMultiPayload();
    sub_100003968(&qword_100063618, &qword_100048DB8);
    sub_100003E3C(&qword_100063620, &qword_100063618, &qword_100048DB8, &protocol conformance descriptor for ScrollViewReader<A>);
    sub_100023E54();
    _ConditionalContent<>.init(storage:)();
    return sub_100003CE8(v7, &qword_100063600, &qword_100048DA0);
  }
}

uint64_t sub_100020858@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v91 = a4;
  v82 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin(v82);
  v81 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DragGesture();
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  __chkstk_darwin(v8);
  v80 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003968(&qword_1000627F0, &qword_100047CD0);
  v12 = *(v11 - 8);
  v87 = v11;
  v88 = v12;
  __chkstk_darwin(v11);
  v83 = &v72 - v13;
  v14 = sub_100003968(&qword_1000627F8, &qword_100047CD8);
  v15 = *(v14 - 8);
  v89 = v14;
  v90 = v15;
  __chkstk_darwin(v14);
  v86 = &v72 - v16;
  v77 = type metadata accessor for GeometryProxy();
  v75 = *(v77 - 8);
  v78 = *(v75 + 64);
  __chkstk_darwin(v77);
  v74 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ScrollViewProxy();
  v18 = *(v73 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v73);
  v72 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100003968(&qword_100063650, &qword_100048DD0);
  __chkstk_darwin(v79);
  v76 = &v72 - v20;
  static Axis.Set.vertical.getter();
  v92 = a2;
  v93 = a3;
  v94 = a1;
  sub_100003968(&qword_100063658, &qword_100048DD8);
  sub_100023FC8();
  ScrollView.init(_:showsIndicators:content:)();
  v21 = v73;
  (*(v18 + 16))(&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v73);
  v22 = v74;
  v23 = v75;
  v24 = v77;
  (*(v75 + 16))(v74, a3, v77);
  v25 = (*(v18 + 80) + 240) & ~*(v18 + 80);
  v26 = (v19 + *(v23 + 80) + v25) & ~*(v23 + 80);
  v27 = swift_allocObject();
  v28 = a2[11];
  *(v27 + 11) = a2[10];
  *(v27 + 12) = v28;
  v29 = a2[13];
  *(v27 + 13) = a2[12];
  *(v27 + 14) = v29;
  v30 = a2[7];
  *(v27 + 7) = a2[6];
  *(v27 + 8) = v30;
  v31 = a2[9];
  *(v27 + 9) = a2[8];
  *(v27 + 10) = v31;
  v32 = a2[3];
  *(v27 + 3) = a2[2];
  *(v27 + 4) = v32;
  v33 = a2[5];
  *(v27 + 5) = a2[4];
  *(v27 + 6) = v33;
  v34 = a2[1];
  *(v27 + 1) = *a2;
  *(v27 + 2) = v34;
  (*(v18 + 32))(&v27[v25], v72, v21);
  (*(v23 + 32))(&v27[v26], v22, v24);
  sub_100020804(a2, v95);
  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = sub_100003968(&qword_100063688, &qword_100048DF0);
  v39 = v76;
  v40 = &v76[*(v38 + 36)];
  *v40 = sub_10003E0D0;
  v40[1] = 0;
  v40[2] = v35;
  v40[3] = v37;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1000240D8;
  *(v41 + 24) = v27;
  v42 = (v39 + *(sub_100003968(&qword_100063690, &qword_100048DF8) + 36));
  *v42 = sub_100024224;
  v42[1] = v41;
  v43 = (v39 + *(sub_100003968(&qword_100063698, &qword_100048E00) + 36));
  *v43 = 0x6C6C6F726373;
  v43[1] = 0xE600000000000000;
  sub_1000236C0(a2, v95);
  v44 = v96;
  v45 = v97;
  v46 = v98;
  v47 = v95[1];
  v48 = v39 + *(v79 + 36);
  *v48 = v95[0];
  *(v48 + 16) = v47;
  *(v48 + 32) = v44;
  *(v48 + 40) = v45;
  *(v48 + 41) = v46;
  static CoordinateSpaceProtocol<>.local.getter();
  v49 = v80;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v50 = swift_allocObject();
  v51 = a2[11];
  v50[11] = a2[10];
  v50[12] = v51;
  v52 = a2[13];
  v50[13] = a2[12];
  v50[14] = v52;
  v53 = a2[7];
  v50[7] = a2[6];
  v50[8] = v53;
  v54 = a2[9];
  v50[9] = a2[8];
  v50[10] = v54;
  v55 = a2[3];
  v50[3] = a2[2];
  v50[4] = v55;
  v56 = a2[5];
  v50[5] = a2[4];
  v50[6] = v56;
  v57 = a2[1];
  v50[1] = *a2;
  v50[2] = v57;
  sub_100020804(a2, v95);
  sub_100024730(&qword_100062830, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_100024730(&qword_100062838, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v59 = v83;
  v58 = v84;
  Gesture<>.onChanged(_:)();

  (*(v85 + 8))(v49, v58);
  v60 = swift_allocObject();
  v61 = a2[11];
  v60[11] = a2[10];
  v60[12] = v61;
  v62 = a2[13];
  v60[13] = a2[12];
  v60[14] = v62;
  v63 = a2[7];
  v60[7] = a2[6];
  v60[8] = v63;
  v64 = a2[9];
  v60[9] = a2[8];
  v60[10] = v64;
  v65 = a2[3];
  v60[3] = a2[2];
  v60[4] = v65;
  v66 = a2[5];
  v60[5] = a2[4];
  v60[6] = v66;
  v67 = a2[1];
  v60[1] = *a2;
  v60[2] = v67;
  sub_100020804(a2, v95);
  sub_100003E3C(&qword_100062840, &qword_1000627F0, &qword_100047CD0, &protocol conformance descriptor for _ChangedGesture<A>);
  v69 = v86;
  v68 = v87;
  Gesture.onEnded(_:)();

  (*(v88 + 8))(v59, v68);
  static GestureMask.all.getter();
  sub_10002429C();
  sub_100003E3C(&qword_100062878, &qword_1000627F8, &qword_100047CD8, &protocol conformance descriptor for _EndedGesture<A>);
  v70 = v89;
  View.simultaneousGesture<A>(_:including:)();
  (*(v90 + 8))(v69, v70);
  return sub_1000245A8(v39);
}

uint64_t sub_1000210EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v47 = a2;
  v56 = type metadata accessor for ScrollViewProxy();
  v54 = *(v56 - 8);
  v55 = *(v54 + 64);
  __chkstk_darwin(v56);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GeometryProxy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static HorizontalAlignment.center.getter();
  v49 = a4;
  *a4 = v13;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v45 = *(sub_100003968(&qword_100063760, &unk_100048E70) + 44);
  v59 = *a1;
  v60 = v59;
  KeyPath = swift_getKeyPath();
  v46 = *(v10 + 16);
  v46(v12, a2, v9);
  v14 = *(v10 + 80);
  v48 = ((v14 + 240) & ~v14) + v11;
  v15 = (v14 + 240) & ~v14;
  v51 = v15;
  v52 = v14 | 7;
  v16 = swift_allocObject();
  v17 = *(a1 + 11);
  *(v16 + 11) = *(a1 + 10);
  *(v16 + 12) = v17;
  v18 = *(a1 + 13);
  *(v16 + 13) = *(a1 + 12);
  *(v16 + 14) = v18;
  v19 = *(a1 + 7);
  *(v16 + 7) = *(a1 + 6);
  *(v16 + 8) = v19;
  v20 = *(a1 + 9);
  *(v16 + 9) = *(a1 + 8);
  *(v16 + 10) = v20;
  v21 = *(a1 + 3);
  *(v16 + 3) = *(a1 + 2);
  *(v16 + 4) = v21;
  v22 = *(a1 + 5);
  *(v16 + 5) = *(a1 + 4);
  *(v16 + 6) = v22;
  v23 = *(a1 + 1);
  *(v16 + 1) = *a1;
  *(v16 + 2) = v23;
  v50 = *(v10 + 32);
  v50(&v16[v15], v12, v9);
  sub_100006098(&v60, v58, &qword_1000638B0, &qword_100048610);
  sub_100020804(a1, v58);
  sub_100003968(&qword_1000638B0, &qword_100048610);
  sub_100003968(&qword_100063768, &qword_100048EB8);
  sub_100003E3C(&qword_100063770, &qword_1000638B0, &qword_100048610, &protocol conformance descriptor for [A]);
  sub_100024958();
  v24 = v49;
  ForEach<>.init(_:id:content:)();
  v45 = static Alignment.center.getter();
  KeyPath = v25;
  v26 = v9;
  v46(v12, v47, v9);
  v27 = v54;
  v28 = v53;
  v29 = v56;
  (*(v54 + 16))(v53, v57, v56);
  v30 = v27;
  v31 = (v48 + *(v27 + 80)) & ~*(v27 + 80);
  v32 = swift_allocObject();
  v33 = *(a1 + 11);
  *(v32 + 11) = *(a1 + 10);
  *(v32 + 12) = v33;
  v34 = *(a1 + 13);
  *(v32 + 13) = *(a1 + 12);
  *(v32 + 14) = v34;
  v35 = *(a1 + 7);
  *(v32 + 7) = *(a1 + 6);
  *(v32 + 8) = v35;
  v36 = *(a1 + 9);
  *(v32 + 9) = *(a1 + 8);
  *(v32 + 10) = v36;
  v37 = *(a1 + 3);
  *(v32 + 3) = *(a1 + 2);
  *(v32 + 4) = v37;
  v38 = *(a1 + 5);
  *(v32 + 5) = *(a1 + 4);
  *(v32 + 6) = v38;
  v39 = *(a1 + 1);
  *(v32 + 1) = *a1;
  *(v32 + 2) = v39;
  v50(&v32[v51], v12, v26);
  (*(v30 + 32))(&v32[v31], v28, v29);
  v40 = (v24 + *(sub_100003968(&qword_100063658, &qword_100048DD8) + 36));
  *v40 = sub_100024B54;
  v40[1] = v32;
  v41 = KeyPath;
  v40[2] = v45;
  v40[3] = v41;
  return sub_100020804(a1, v58);
}

uint64_t sub_1000215D0@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003968(&qword_100063788, &qword_100048EC0);
  __chkstk_darwin(v6);
  v8 = v32 - v7;
  v9 = *a1;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v10 = sub_100003968(&qword_1000637C8, &qword_100048EE8);
  sub_1000218D8(v9, a2, &v8[*(v10 + 44)]);
  GeometryProxy.size.getter();
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v11 = &v8[*(sub_100003968(&qword_100063798, &qword_100048EC8) + 36)];
  v12 = v32[1];
  *v11 = v32[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v32[2];
  v13 = static Edge.Set.bottom.getter();
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v14 = objc_opt_self();
  if (qword_100062780 != -1)
  {
    v30 = v14;
    swift_once();
    v14 = v30;
  }

  v15 = [v14 preferredFontForTextStyle:textFontStyle];
  [v15 lineHeight];

  EdgeInsets.init(_all:)();
  v16 = &v8[*(v6 + 36)];
  *v16 = v13;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = *a2;
  if (*a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_13;
    }
  }

  v23 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v31 = v9;
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_12:
    v27 = v26;
    type metadata accessor for AXLTCaption();
    v28 = static NSObject.== infix(_:_:)();

    v29 = 1.0;
    if (v28)
    {
LABEL_14:
      sub_10000BB84(v8, a3, &qword_100063788, &qword_100048EC0);
      result = sub_100003968(&qword_100063768, &qword_100048EB8);
      *(a3 + *(result + 36)) = v29;
      return result;
    }

LABEL_13:
    v29 = 0.8;
    goto LABEL_14;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v21 + 8 * v23 + 32);
    v25 = v9;
    v26 = v24;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000218D8@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v68 = a3;
  v5 = type metadata accessor for AXLTTitleView(0);
  __chkstk_darwin(v5);
  v73 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  v10 = *(a2 + 16);
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v11 = static AXLTSettingsManager.shared;
  v12 = OBJC_IVAR___AXLTSettingsManager_textColor;
  swift_beginAccess();
  v71 = v12;
  v13 = *(v11 + v12);
  v14 = OBJC_IVAR___AXLTSettingsManager_titleFont;
  swift_beginAccess();
  v15 = *(v11 + v14);
  v16 = objc_allocWithZone(UIImage);

  v17 = [v16 init];
  *v9 = a1;
  v9[8] = v10;
  *(v9 + 2) = 0;
  v18 = v5[7];
  *&v9[v18] = swift_getKeyPath();
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  swift_storeEnumTagMultiPayload();
  v19 = &v9[v5[8]];
  *&v74 = v13;
  v20 = a1;
  State.init(wrappedValue:)();
  v21 = *(&v82 + 1);
  *v19 = v82;
  *(v19 + 1) = v21;
  v22 = &v9[v5[9]];
  *&v74 = v15;
  State.init(wrappedValue:)();
  v23 = *(&v82 + 1);
  *v22 = v82;
  *(v22 + 1) = v23;
  v24 = &v9[v5[10]];
  *&v74 = v17;
  sub_100017E20(0, &qword_100062BF0, UIImage_ptr);
  State.init(wrappedValue:)();
  v25 = *(&v82 + 1);
  *v24 = v82;
  *(v24 + 1) = v25;
  v26 = v5[11];
  type metadata accessor for AudioHistogramConfig(0);
  swift_allocObject();
  *&v9[v26] = sub_100042454();
  v27 = *a2;
  if (!(*a2 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v67 = v20;
    if (v28)
    {
      goto LABEL_5;
    }

LABEL_12:
    v34 = 0;
    goto LABEL_13;
  }

  v28 = _CocoaArrayWrapper.endIndex.getter();
  v67 = v20;
  if (!v28)
  {
    goto LABEL_12;
  }

LABEL_5:
  v29 = __OFSUB__(v28, 1);
  result = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
LABEL_15:
    v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v27 + 8 * result + 32);
LABEL_10:
    v32 = v31;
    type metadata accessor for AXLTCaption();
    v33 = v20;
    v34 = static NSObject.== infix(_:_:)();

LABEL_13:
    v82 = *(a2 + 3);
    *&v83 = a2[5];
    sub_100003968(&qword_1000634D8, &qword_100048BA8);
    Binding.projectedValue.getter();
    v35 = *(&v74 + 1);
    v69 = v74;
    v36 = v75;
    v82 = *(a2 + 3);
    *&v83 = a2[8];
    sub_100003968(&qword_1000637D0, &qword_100048F20);
    Binding.projectedValue.getter();
    v37 = v74;
    v65 = v75;
    v66 = *(&v74 + 1);
    v38 = *(a2 + 11);
    v82 = *(a2 + 9);
    v83 = v38;
    sub_100003968(&qword_1000637D8, &qword_100048F28);
    Binding.projectedValue.getter();
    v39 = v74;
    v72 = *(&v75 + 1);
    v64 = v75;
    v40 = *(v11 + v71);
    v41 = OBJC_IVAR___AXLTSettingsManager_textFont;
    swift_beginAccess();
    v42 = *(v11 + v41);
    *&v74 = v40;

    State.init(wrappedValue:)();
    v70 = *(&v82 + 1);
    v71 = v82;
    *&v74 = v42;
    State.init(wrappedValue:)();
    v61 = *(&v82 + 1);
    v43 = v82;
    v62 = v82;
    v63 = v34 & 1;
    v44 = v73;
    sub_10000ACD0(v9, v73);
    v45 = v44;
    v46 = v68;
    sub_10000ACD0(v45, v68);
    v47 = sub_100003968(&qword_1000637E0, &qword_100048F30);
    v48 = v46 + *(v47 + 48);
    *v48 = 0;
    *(v48 + 8) = 1;
    v49 = v46 + *(v47 + 64);
    v50 = v67;
    *&v74 = 0x4010000000000000;
    *(&v74 + 1) = v67;
    LOBYTE(v75) = 1;
    BYTE1(v75) = v34 & 1;
    *(&v75 + 1) = v69;
    *&v76 = v35;
    *(&v76 + 1) = v36;
    v51 = v66;
    *&v77 = v37;
    *(&v77 + 1) = v66;
    v68 = v9;
    v52 = v65;
    *v78 = v65;
    *&v78[8] = v39;
    v53 = v64;
    *&v78[24] = v64;
    *&v79 = v72;
    *(&v79 + 1) = v71;
    *&v80 = v70;
    *(&v80 + 1) = v43;
    v54 = v61;
    v81 = v61;
    v55 = v77;
    *(v49 + 32) = v76;
    *(v49 + 48) = v55;
    *(v49 + 128) = v54;
    v56 = v75;
    *v49 = v74;
    *(v49 + 16) = v56;
    v57 = v80;
    *(v49 + 96) = v79;
    *(v49 + 112) = v57;
    v58 = *&v78[16];
    *(v49 + 64) = *v78;
    *(v49 + 80) = v58;
    v59 = v50;
    sub_100025108(&v74, &v82);
    sub_100025164(v68);
    *&v82 = 0x4010000000000000;
    *(&v82 + 1) = v59;
    LOBYTE(v83) = 1;
    BYTE1(v83) = v63;
    *(&v83 + 1) = v69;
    v84 = v35;
    v85 = v36;
    v86 = v37;
    v87 = v51;
    v88 = v52;
    v89 = v39;
    v90 = v53;
    v91 = v72;
    v92 = v71;
    v93 = v70;
    v94 = v62;
    v95 = v54;
    sub_1000251C0(&v82);
    return sub_100025164(v73);
  }

  __break(1u);
  return result;
}

uint64_t sub_100021EA4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a4;
  v60 = a3;
  v58 = a1;
  v72 = a5;
  v67 = type metadata accessor for ScrollViewProxy();
  v66 = *(v67 - 8);
  v68 = *(v66 + 64);
  __chkstk_darwin(v67);
  v65 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GeometryProxy();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v62 = v11;
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NamedCoordinateSpace();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100003968(&qword_1000637B0, &qword_100048ED8);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v73 = &v53 - v17;
  v57 = static Color.clear.getter();
  v79 = v57;
  v74 = 0x6C6C6F726373;
  v75 = 0xE600000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  v54 = v13;
  GeometryProxy.frame<A>(in:)();
  v19 = v18;
  v20 = *(v14 + 8);
  v55 = v14 + 8;
  v56 = v20;
  v20(v16, v13);
  v78 = v19;
  v59 = *(v10 + 16);
  v21 = v9;
  v59(v12, a3, v9);
  v22 = *(v10 + 80);
  v61 = v22 | 7;
  v23 = swift_allocObject();
  v24 = a2[11];
  *(v23 + 11) = a2[10];
  *(v23 + 12) = v24;
  v25 = a2[13];
  *(v23 + 13) = a2[12];
  *(v23 + 14) = v25;
  v26 = a2[7];
  *(v23 + 7) = a2[6];
  *(v23 + 8) = v26;
  v27 = a2[9];
  *(v23 + 9) = a2[8];
  *(v23 + 10) = v27;
  v28 = a2[3];
  *(v23 + 3) = a2[2];
  *(v23 + 4) = v28;
  v29 = a2[5];
  *(v23 + 5) = a2[4];
  *(v23 + 6) = v29;
  v30 = a2[1];
  *(v23 + 1) = *a2;
  *(v23 + 2) = v30;
  v31 = *(v10 + 32);
  v63 = v10 + 32;
  v64 = v31;
  v31(&v23[(v22 + 240) & ~v22], v12, v9);
  sub_100020804(a2, &v74);
  v53 = sub_100024DF4();
  View.onChange<A>(of:initial:_:)();

  v74 = 0x6C6C6F726373;
  v75 = 0xE600000000000000;
  static CoordinateSpaceProtocol<>.named<A>(_:)();
  v32 = v54;
  GeometryProxy.frame<A>(in:)();
  v34 = v33;
  v56(v16, v32);
  v79 = v34;
  v35 = v66;
  v36 = v65;
  v37 = v67;
  (*(v66 + 16))(v65, v69, v67);
  v38 = v21;
  v59(v12, v60, v21);
  v39 = v35;
  v40 = (*(v35 + 80) + 240) & ~*(v35 + 80);
  v41 = (v68 + v22 + v40) & ~v22;
  v42 = swift_allocObject();
  v43 = a2[11];
  *(v42 + 11) = a2[10];
  *(v42 + 12) = v43;
  v44 = a2[13];
  *(v42 + 13) = a2[12];
  *(v42 + 14) = v44;
  v45 = a2[7];
  *(v42 + 7) = a2[6];
  *(v42 + 8) = v45;
  v46 = a2[9];
  *(v42 + 9) = a2[8];
  *(v42 + 10) = v46;
  v47 = a2[3];
  *(v42 + 3) = a2[2];
  *(v42 + 4) = v47;
  v48 = a2[5];
  *(v42 + 5) = a2[4];
  *(v42 + 6) = v48;
  v49 = a2[1];
  *(v42 + 1) = *a2;
  *(v42 + 2) = v49;
  (*(v39 + 32))(&v42[v40], v36, v37);
  v64(&v42[v41], v12, v38);
  sub_100020804(a2, &v74);
  v74 = &type metadata for Color;
  v75 = &type metadata for CGFloat;
  v76 = &protocol witness table for Color;
  v77 = v53;
  swift_getOpaqueTypeConformance2();
  v50 = v70;
  v51 = v73;
  View.onChange<A>(of:initial:_:)();

  return (*(v71 + 8))(v51, v50);
}

uint64_t sub_10002259C(uint64_t a1, double *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = -*a2;
  v10 = *(a3 + 208);
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  GeometryProxy.size.getter();
  if (*&v9 - v6 - *(a3 + 168) <= v5)
  {
    sub_1000226DC();
  }

  v9 = *(a3 + 136);
  v10 = v9;
  v11 = *(&v9 + 1);
  sub_100006098(&v11, &v8, &qword_1000637C0, &qword_100048EE0);
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  if (v4 < 0.0 != v8)
  {
    v9 = v10;
    LOBYTE(v8) = v4 < 0.0;
    State.wrappedValue.setter();
  }

  return sub_100003CE8(&v10, &qword_100062FF0, &unk_100048670);
}

void sub_1000226DC()
{
  v1 = v0;
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v9 = v3;
  v10 = v2;
  *&v8 = v2;
  *(&v8 + 1) = v3;
  sub_100006098(&v10, &v7, &qword_100062D88, &qword_100048850);
  sub_100006098(&v9, &v7, &qword_100063710, &unk_100048E38);
  sub_100003968(&qword_100062FE8, &qword_100048BA0);
  State.wrappedValue.getter();
  v4 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  [v7 invalidate];
  static os_log_type_t.debug.getter();
  v5 = AXLogLiveTranscription();
  if (v5)
  {
    v6 = v5;
    os_log(_:dso:log:_:_:)();

LABEL_4:
    *&v8 = v2;
    *(&v8 + 1) = v3;
    v7 = 0;
    State.wrappedValue.setter();
    sub_100003CE8(&v10, &qword_100062D88, &qword_100048850);
    sub_100003CE8(&v9, &qword_100063710, &unk_100048E38);
    v8 = *(v1 + 192);
    LOBYTE(v7) = 1;
    sub_100003968(&qword_100062FF0, &unk_100048670);
    State.wrappedValue.setter();
    return;
  }

  __break(1u);
}

void sub_10002286C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.setter();
  GeometryProxy.size.getter();
  sub_1000228F0(v4);
}

void sub_1000228F0(double a1)
{
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  if (LOBYTE(v6) == 1)
  {
    sub_100003968(&qword_100062B18, &unk_100049360);
    State.wrappedValue.getter();
    if (v6 > a1)
    {
      State.wrappedValue.getter();
      ScrollViewProxy.setContentOffset(_:)();
      v2 = static os_log_type_t.debug.getter();
      v3 = AXLogLiveTranscription();
      if (v3)
      {
        v4 = v3;
        if (os_log_type_enabled(v3, v2))
        {
          v5 = swift_slowAlloc();
          *v5 = 134217984;
          State.wrappedValue.getter();
          *(v5 + 4) = v6;
          _os_log_impl(&_mh_execute_header, v4, v2, "Scrolled to bottom: %f", v5, 0xCu);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_100022A70(uint64_t a1, double a2, double a3)
{
  v4 = static os_log_type_t.debug.getter();
  v5 = AXLogLiveTranscription();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, v4))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = a3;
      _os_log_impl(&_mh_execute_header, v6, v4, "ScrollView new height: %f", v7, 0xCu);
    }

    GeometryProxy.size.getter();
    sub_1000228F0(v8);
  }

  else
  {
    __break(1u);
  }
}

id sub_100022B4C()
{
  v1 = v0;
  v18 = *(v0 + 192);
  LOBYTE(aBlock[0]) = 0;
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.setter();
  static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v3 = result;
    os_log(_:dso:log:_:_:)();

    v5 = *(v1 + 176);
    v4 = *(v1 + 184);
    v20 = v4;
    v21[0] = v5;
    *&v18 = v5;
    *(&v18 + 1) = v4;
    sub_100006098(v21, aBlock, &qword_100062D88, &qword_100048850);
    sub_100006098(&v20, aBlock, &qword_100063710, &unk_100048E38);
    sub_100003968(&qword_100062FE8, &qword_100048BA0);
    State.wrappedValue.getter();
    v6 = aBlock[0];
    [aBlock[0] invalidate];

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    v9 = *(v1 + 176);
    v8[11] = *(v1 + 160);
    v8[12] = v9;
    v10 = *(v1 + 208);
    v8[13] = *(v1 + 192);
    v8[14] = v10;
    v11 = *(v1 + 112);
    v8[7] = *(v1 + 96);
    v8[8] = v11;
    v12 = *(v1 + 144);
    v8[9] = *(v1 + 128);
    v8[10] = v12;
    v13 = *(v1 + 48);
    v8[3] = *(v1 + 32);
    v8[4] = v13;
    v14 = *(v1 + 80);
    v8[5] = *(v1 + 64);
    v8[6] = v14;
    v15 = *(v1 + 16);
    v8[1] = *v1;
    v8[2] = v15;
    aBlock[4] = sub_100024610;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100032E40;
    aBlock[3] = &unk_10005EB30;
    v16 = _Block_copy(aBlock);
    sub_100020804(v1, &v18);

    v17 = [v7 scheduledTimerWithTimeInterval:0 repeats:v16 block:60.0];
    _Block_release(v16);
    *&v18 = v5;
    *(&v18 + 1) = v4;
    aBlock[0] = v17;
    State.wrappedValue.setter();
    sub_100003CE8(v21, &qword_100062D88, &qword_100048850);
    return sub_100003CE8(&v20, &qword_100063710, &unk_100048E38);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100022DE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003968(&qword_1000637E8, &qword_100048F38);
  v84 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v68 - v5;
  v7 = type metadata accessor for AXLTTitleView(0);
  __chkstk_darwin(v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v68 - v11;
  v13 = sub_1000234D8();
  if (!v13)
  {
    v40 = *(v84 + 56);

    return v40(a2, 1, 1, v4);
  }

  v82 = v9;
  v83 = v6;
  v77 = v4;
  v78 = a2;
  v14 = *(a1 + 16);
  v81 = a1[1];
  v15 = qword_100062788;
  v16 = v13;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = static AXLTSettingsManager.shared;
  v18 = OBJC_IVAR___AXLTSettingsManager_textColor;
  swift_beginAccess();
  v80 = v18;
  v19 = *(v17 + v18);
  v20 = OBJC_IVAR___AXLTSettingsManager_titleFont;
  swift_beginAccess();
  v21 = *(v17 + v20);
  v22 = objc_allocWithZone(UIImage);

  v23 = [v22 init];
  v85 = v16;
  *v12 = v16;
  v12[8] = v14;
  *(v12 + 2) = v81;
  v24 = v7[7];
  *&v12[v24] = swift_getKeyPath();
  sub_100003968(&qword_100062C50, &qword_1000480D0);
  swift_storeEnumTagMultiPayload();
  v25 = &v12[v7[8]];
  *&v86 = v19;
  State.init(wrappedValue:)();
  v26 = *(&v94 + 1);
  *v25 = v94;
  *(v25 + 1) = v26;
  v27 = &v12[v7[9]];
  *&v86 = v21;
  State.init(wrappedValue:)();
  v28 = *(&v94 + 1);
  *v27 = v94;
  *(v27 + 1) = v28;
  v29 = &v12[v7[10]];
  *&v86 = v23;
  sub_100017E20(0, &qword_100062BF0, UIImage_ptr);
  State.init(wrappedValue:)();
  v30 = *(&v94 + 1);
  *v29 = v94;
  *(v29 + 1) = v30;
  v31 = v7[11];
  type metadata accessor for AudioHistogramConfig(0);
  swift_allocObject();
  *&v12[v31] = sub_100042454();
  v32 = *a1;
  if (!(*a1 >> 62))
  {
    result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v34 = v85;
    if (result)
    {
      goto LABEL_6;
    }

LABEL_16:
    v72 = 0;
    goto LABEL_17;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v34 = v85;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_6:
  v35 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v32 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v67 = v34;
    v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v35 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v36 = *(v32 + 8 * v35 + 32);
    v37 = v34;
    v38 = v36;
LABEL_11:
    v39 = v38;
    type metadata accessor for AXLTCaption();
    v72 = static NSObject.== infix(_:_:)();

LABEL_17:
    v94 = *(a1 + 3);
    *v95 = a1[5];
    sub_100003968(&qword_1000634D8, &qword_100048BA8);
    Binding.projectedValue.getter();
    v41 = v86;
    v42 = *v87;
    v94 = *(a1 + 3);
    *v95 = a1[8];
    sub_100003968(&qword_1000637D0, &qword_100048F20);
    Binding.projectedValue.getter();
    v43 = v86;
    v75 = *v87;
    v76 = *(&v86 + 1);
    v44 = *(a1 + 11);
    v94 = *(a1 + 9);
    *v95 = v44;
    sub_100003968(&qword_1000637D8, &qword_100048F28);
    Binding.projectedValue.getter();
    v45 = v86;
    v73 = *v87;
    v74 = *(&v86 + 1);
    v81 = *&v87[8];
    v46 = *(v17 + v80);
    v47 = OBJC_IVAR___AXLTSettingsManager_textFont;
    swift_beginAccess();
    v48 = *(v17 + v47);
    *&v86 = v46;

    State.init(wrappedValue:)();
    v79 = *(&v94 + 1);
    v80 = v94;
    *&v86 = v48;
    State.init(wrappedValue:)();
    v50 = v94;
    v69 = v50 >> 64;
    v49 = v50;
    v71 = v94;
    LOBYTE(v48) = v72 & 1;
    v72 &= 1u;
    v51 = v82;
    sub_10000ACD0(v12, v82);
    v52 = v51;
    v53 = v83;
    sub_10000ACD0(v52, v83);
    v54 = v53 + *(sub_100003968(&qword_1000637F0, &qword_100048F40) + 48);
    *&v86 = 0x4010000000000000;
    *(&v86 + 1) = v85;
    v87[0] = 0;
    v87[1] = v48;
    *&v87[8] = v41;
    *&v87[24] = v42;
    v55 = v43;
    v70 = v12;
    v56 = v75;
    v57 = v76;
    *&v88 = v43;
    *(&v88 + 1) = v76;
    *&v89 = v75;
    *(&v89 + 1) = v45;
    v58 = v45;
    v60 = v73;
    v59 = v74;
    *&v90 = v74;
    *(&v90 + 1) = v73;
    *&v91 = v81;
    *(&v91 + 1) = v80;
    *&v92 = v79;
    *(&v92 + 1) = v49;
    v61 = v69;
    v93 = v69;
    v62 = *v87;
    *v54 = v86;
    *(v54 + 16) = v62;
    *(v54 + 128) = v61;
    v63 = v88;
    *(v54 + 32) = *&v87[16];
    *(v54 + 48) = v63;
    v64 = v92;
    *(v54 + 96) = v91;
    *(v54 + 112) = v64;
    v65 = v90;
    *(v54 + 64) = v89;
    *(v54 + 80) = v65;
    sub_100025108(&v86, &v94);
    sub_100025164(v70);
    *&v94 = 0x4010000000000000;
    *(&v94 + 1) = v85;
    v95[0] = 0;
    v95[1] = v72;
    *&v95[8] = v41;
    v96 = v42;
    v97 = v55;
    v98 = v57;
    v99 = v56;
    v100 = v58;
    v101 = v59;
    v102 = v60;
    v103 = v81;
    v104 = v80;
    v105 = v79;
    v106 = v71;
    v107 = v61;
    sub_1000251C0(&v94);
    sub_100025164(v82);
    v66 = v78;
    sub_10000BB84(v83, v78, &qword_1000637E8, &qword_100048F38);
    return (*(v84 + 56))(v66, 0, 1, v77);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000234D8()
{
  v2 = *v0;
  v3 = *v0 >> 62;
  if (!v3)
  {
    v4 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = __OFSUB__(v4, 1);
  result = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v1 = v2 & 0xC000000000000001;
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else if (result < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v2 + 8 * result + 32);
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
  v8 = v7;
  v9 = AXLTCaption.appID.getter();
  v11 = v10;
  if (v9 == placeholderID.getter() && v11 == v12)
  {

    v15 = v2 & 0xFFFFFFFFFFFFFF8;
    if (!v3)
    {
LABEL_14:
      result = *(v15 + 16);
      v16 = result - 2;
      if (result < 2)
      {
        return v8;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return v8;
    }

    v15 = v2 & 0xFFFFFFFFFFFFFF8;
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v16 = result - 2;
  if (result < 2)
  {
    return v8;
  }

LABEL_18:
  if (v1)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_22;
  }

  if (v16 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v2 + 8 * v16 + 32);
LABEL_22:
    v18 = v17;
    dispatch thunk of AXLTCaption.actionType.getter();

    v19 = AXLTCaptionActionsType.rawValue.getter();
    if (v19 != AXLTCaptionActionsType.rawValue.getter())
    {
      if (v1)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v2 + 8 * v16 + 32);
      }

      v21 = v20;
      dispatch thunk of AXLTCaption.text.getter();
      dispatch thunk of AXLTCaption.placeholder.setter();

      return v21;
    }

    return v8;
  }

LABEL_34:
  __break(1u);
  return result;
}

double sub_1000236C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 136);
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  if (v6 == 1)
  {
    sub_100003968(&qword_100063758, &unk_100048E60);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100048C70;
    *(v3 + 32) = static Color.black.getter();
    static Color.black.getter();
    v4 = Color.opacity(_:)();

    *(v3 + 40) = v4;
    Gradient.init(colors:)();
    static UnitPoint.top.getter();
    LinearGradient.init(gradient:startPoint:endPoint:)();
  }

  sub_100003968(&qword_100063728, &qword_100048E50);
  sub_100003968(&qword_100063730, &qword_100048E58);
  sub_1000247CC(&qword_100063738, &qword_100063728, &qword_100048E50, sub_100024778);
  sub_1000247CC(&qword_100063748, &qword_100063730, &qword_100048E58, sub_100024850);
  _ConditionalContent<>.init(storage:)();
  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 41) = v11;
  return result;
}

id sub_1000238BC(uint64_t a1, _OWORD *a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v21 = *(v6 - 8);
  v22 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v10 = result;
    os_log(_:dso:log:_:_:)();

    sub_100017E20(0, &unk_100063A60, OS_dispatch_queue_ptr);
    v11 = static OS_dispatch_queue.main.getter();
    v12 = swift_allocObject();
    v13 = a2[11];
    v12[11] = a2[10];
    v12[12] = v13;
    v14 = a2[13];
    v12[13] = a2[12];
    v12[14] = v14;
    v15 = a2[7];
    v12[7] = a2[6];
    v12[8] = v15;
    v16 = a2[9];
    v12[9] = a2[8];
    v12[10] = v16;
    v17 = a2[3];
    v12[3] = a2[2];
    v12[4] = v17;
    v18 = a2[5];
    v12[5] = a2[4];
    v12[6] = v18;
    v19 = a2[1];
    v12[1] = *a2;
    v12[2] = v19;
    aBlock[4] = sub_1000246D8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100029AE4;
    aBlock[3] = &unk_10005EB80;
    v20 = _Block_copy(aBlock);
    sub_100020804(a2, &v24);

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_100024730(&qword_100063718, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003968(&unk_100063A70, &qword_100048E48);
    sub_100003E3C(&qword_100063720, &unk_100063A70, &qword_100048E48, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v23 + 8))(v5, v3);
    return (*(v21 + 8))(v8, v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100023C38@<X0>(uint64_t (**a1)@<X0>(uint64_t@<X0>, uint64_t@<X8>)@<X8>)
{
  v3 = v1[11];
  v20[10] = v1[10];
  v20[11] = v3;
  v4 = v1[13];
  v20[12] = v1[12];
  v20[13] = v4;
  v5 = v1[7];
  v20[6] = v1[6];
  v20[7] = v5;
  v6 = v1[9];
  v20[8] = v1[8];
  v20[9] = v6;
  v7 = v1[3];
  v20[2] = v1[2];
  v20[3] = v7;
  v8 = v1[5];
  v20[4] = v1[4];
  v20[5] = v8;
  v9 = v1[1];
  v20[0] = *v1;
  v20[1] = v9;
  v10 = swift_allocObject();
  v11 = v1[11];
  *(v10 + 176) = v1[10];
  *(v10 + 192) = v11;
  v12 = v1[13];
  *(v10 + 208) = v1[12];
  *(v10 + 224) = v12;
  v13 = v1[7];
  *(v10 + 112) = v1[6];
  *(v10 + 128) = v13;
  v14 = v1[9];
  *(v10 + 144) = v1[8];
  *(v10 + 160) = v14;
  v15 = v1[3];
  *(v10 + 48) = v1[2];
  *(v10 + 64) = v15;
  v16 = v1[5];
  *(v10 + 80) = v1[4];
  *(v10 + 96) = v16;
  v17 = v1[1];
  *(v10 + 16) = *v1;
  *(v10 + 32) = v17;
  *a1 = sub_10002523C;
  a1[1] = v10;
  return sub_100020804(v20, &v19);
}

__n128 sub_100023D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_100023D40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_100023D88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100023E54()
{
  result = qword_100063628;
  if (!qword_100063628)
  {
    sub_100003AC0(&qword_100063600, &qword_100048DA0);
    sub_100003E3C(&qword_100063630, &qword_100063638, &qword_100048DC0, &protocol conformance descriptor for VStack<A>);
    sub_100003E3C(&qword_100063640, &qword_100063648, &qword_100048DC8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063628);
  }

  return result;
}

uint64_t sub_100023F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = v2 + ((*(v5 + 80) + 240) & ~*(v5 + 80));

  return sub_100020858(a1, (v2 + 16), v6, a2);
}

unint64_t sub_100023FC8()
{
  result = qword_100063660;
  if (!qword_100063660)
  {
    sub_100003AC0(&qword_100063658, &qword_100048DD8);
    sub_100003E3C(&qword_100063668, &qword_100063670, &qword_100048DE0, &protocol conformance descriptor for VStack<A>);
    sub_100003E3C(&qword_100063678, &qword_100063680, &qword_100048DE8, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063660);
  }

  return result;
}

void sub_1000240D8(double a1, double a2)
{
  type metadata accessor for ScrollViewProxy();
  type metadata accessor for GeometryProxy();

  sub_100022A70(v2 + 16, a1, a2);
}

uint64_t sub_1000241EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10002429C()
{
  result = qword_1000636A0;
  if (!qword_1000636A0)
  {
    sub_100003AC0(&qword_100063650, &qword_100048DD0);
    sub_100024354();
    sub_100003E3C(&qword_100063700, &qword_100063708, &unk_100048E28, &protocol conformance descriptor for _MaskEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000636A0);
  }

  return result;
}

unint64_t sub_100024354()
{
  result = qword_1000636A8;
  if (!qword_1000636A8)
  {
    sub_100003AC0(&qword_100063698, &qword_100048E00);
    sub_10002440C();
    sub_100003E3C(&qword_1000636F0, &qword_1000636F8, &qword_100048E20, &protocol conformance descriptor for _CoordinateSpaceModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000636A8);
  }

  return result;
}

unint64_t sub_10002440C()
{
  result = qword_1000636B0;
  if (!qword_1000636B0)
  {
    sub_100003AC0(&qword_100063690, &qword_100048DF8);
    sub_1000244C4();
    sub_100003E3C(&qword_1000636E0, &qword_1000636E8, &qword_100048E18, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000636B0);
  }

  return result;
}

unint64_t sub_1000244C4()
{
  result = qword_1000636B8;
  if (!qword_1000636B8)
  {
    sub_100003AC0(&qword_100063688, &qword_100048DF0);
    sub_100003E3C(&qword_1000636C0, &qword_1000636C8, &qword_100048E08, &protocol conformance descriptor for ScrollView<A>);
    sub_100003E3C(&qword_1000636D0, &qword_1000636D8, &qword_100048E10, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000636B8);
  }

  return result;
}

uint64_t sub_1000245A8(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063650, &qword_100048DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100024618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100024630()
{

  return _swift_deallocObject(v0, 240, 7);
}

double sub_1000246D8()
{
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.setter();
  return result;
}

uint64_t sub_100024730(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100024778()
{
  result = qword_100063740;
  if (!qword_100063740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063740);
  }

  return result;
}

uint64_t sub_1000247CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003AC0(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100024850()
{
  result = qword_100063750;
  if (!qword_100063750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063750);
  }

  return result;
}

uint64_t sub_1000248A4@<X0>(uint64_t *a1@<X8>)
{
  result = AXLTCaption.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000248D4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for GeometryProxy();

  return sub_1000215D0(a1, (v2 + 16), a2);
}

unint64_t sub_100024958()
{
  result = qword_100063778;
  if (!qword_100063778)
  {
    sub_100003AC0(&qword_100063768, &qword_100048EB8);
    sub_1000249E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063778);
  }

  return result;
}

unint64_t sub_1000249E4()
{
  result = qword_100063780;
  if (!qword_100063780)
  {
    sub_100003AC0(&qword_100063788, &qword_100048EC0);
    sub_100024A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063780);
  }

  return result;
}

unint64_t sub_100024A70()
{
  result = qword_100063790;
  if (!qword_100063790)
  {
    sub_100003AC0(&qword_100063798, &qword_100048EC8);
    sub_100003E3C(&qword_1000637A0, &qword_1000637A8, &qword_100048ED0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063790);
  }

  return result;
}

uint64_t sub_100024B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = (*(v5 + 80) + 240) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ScrollViewProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_100021EA4(a1, (v2 + 16), v2 + v6, v9, a2);
}

uint64_t sub_100024C3C()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 240) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100024D70(uint64_t a1, double *a2)
{
  type metadata accessor for GeometryProxy();

  return sub_10002259C(a1, a2, v2 + 16);
}

unint64_t sub_100024DF4()
{
  result = qword_1000637B8;
  if (!qword_1000637B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000637B8);
  }

  return result;
}

uint64_t sub_100024E48(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 240) & ~v6;
  v8 = *(v5 + 64);
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;

  (*(v5 + 8))(v2 + v7, v4);
  (*(v10 + 8))(v2 + v12, v9);

  return _swift_deallocObject(v2, v12 + v13, v14 | 7);
}

void sub_100025018(uint64_t a1, uint64_t *a2, double a3)
{
  v6 = *(type metadata accessor for ScrollViewProxy() - 8);
  v7 = (*(v6 + 80) + 240) & ~*(v6 + 80);
  type metadata accessor for GeometryProxy();

  sub_10002286C(a1, a2, v3 + 16, v3 + v7);
}

uint64_t sub_100025164(uint64_t a1)
{
  v2 = type metadata accessor for AXLTTitleView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void safeOffset(offset:size:containerSize:foreheadWindowRect:)(double a1, CGFloat a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v13.origin.x = a7;
  v13.origin.y = a8;
  v13.size.width = a9;
  v13.size.height = a10;
  if (CGRectGetHeight(v13) + a8 + -37.3333333 > a2)
  {
    if (AXDeviceHasJindo())
    {
      v14.origin.x = a7;
      v14.origin.y = a8;
      v14.size.width = a9;
      v14.size.height = a10;
      CGRectGetHeight(v14);
    }
  }
}

double iconSize()(uint64_t a1)
{
  IsPad = AXDeviceIsPad();
  result = 54.0;
  if (IsPad)
  {
    return 68.0;
  }

  return result;
}

double sub_100025378(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v7 = a1;
  v10 = a4 + -10.0;
  if (AXDeviceIsPad())
  {
    v11 = -68.0;
  }

  else
  {
    v11 = -54.0;
  }

  if (v10 + v11 >= a2)
  {
    if (a2 >= 10.0)
    {
      v14 = a2;
    }

    else
    {
      v14 = 10.0;
    }
  }

  else
  {
    IsPad = AXDeviceIsPad();
    v13 = 54.0;
    if (IsPad)
    {
      v13 = 68.0;
    }

    v14 = v10 - v13;
  }

  v15 = a5 + -10.0;
  if (AXDeviceIsPad())
  {
    v16 = -68.0;
  }

  else
  {
    v16 = -54.0;
  }

  if (v15 + v16 < a3)
  {
    AXDeviceIsPad();
    return v14;
  }

  if (a3 < 10.0)
  {
    return v14;
  }

  v14 = 10.0;
  if (v7 == 3)
  {
LABEL_20:
    if (a4 * 0.5 >= a2 && v7 != 2)
    {
      return v14;
    }

    goto LABEL_25;
  }

  if (v7 != 2)
  {
    if (v7)
    {
      return v14;
    }

    goto LABEL_20;
  }

LABEL_25:
  v18 = AXDeviceIsPad();
  v19 = 54.0;
  if (v18)
  {
    v19 = 68.0;
  }

  return v10 - v19;
}

uint64_t titleAndTextHeight(textHeight:dynamicTypeSize:)(uint64_t a1, double a2)
{
  v4 = sub_100003968(&qword_100062AE8, &qword_1000480E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v11 = objc_opt_self();
  if (qword_100062778 != -1)
  {
    swift_once();
  }

  v12 = [v11 preferredFontForTextStyle:titleFontStyle];
  [v12 lineHeight];

  if (qword_100062780 != -1)
  {
    swift_once();
  }

  v13 = [v11 preferredFontForTextStyle:textFontStyle];
  [v13 lineHeight];

  textLinesNumberMax.getter();
  sub_100006710(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_100006780(v6);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (qword_1000626F8 != -1)
    {
      swift_once();
    }

    sub_1000064FC(v7, accessibilityLayoutTextSize);
    sub_1000067E8();
    v15 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v8 + 8))(v10, v7);
    if ((v15 & 1) == 0)
    {
      result = textLinesAccessibilityNumberMax.getter();
    }
  }

  if (a2 == 0.0)
  {
    return textLinesNumberMin.getter();
  }

  return result;
}

void bottomButtonsBarLeftRightInset()(uint64_t a1)
{
  if ((AXDeviceIsPad() & 1) == 0)
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10.origin.x = v3;
    v10.origin.y = v5;
    v10.size.width = v7;
    v10.size.height = v9;
    CGRectGetWidth(v10);
  }
}

uint64_t *AXLTSettingsManager.shared.unsafeMutableAddressor()
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  return &static AXLTSettingsManager.shared;
}

NSNotificationName *textColorChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062730 != -1)
  {
    swift_once();
  }

  return &textColorChangedNotification;
}

NSNotificationName *pausedChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062728 != -1)
  {
    swift_once();
  }

  return &pausedChangedNotification;
}

NSNotificationName *nubbitIdleOpacityChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062748 != -1)
  {
    swift_once();
  }

  return &nubbitIdleOpacityChangedNotification;
}

NSString *sub_100025A38()
{
  result = String._bridgeToObjectiveC()();
  macOSSettingsDidChangedNotification = result;
  return result;
}

NSNotificationName *macOSSettingsDidChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062718 != -1)
  {
    swift_once();
  }

  return &macOSSettingsDidChangedNotification;
}

NSString *sub_100025AFC()
{
  result = String._bridgeToObjectiveC()();
  micOnChangedNotification = result;
  return result;
}

NSNotificationName *micOnChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062720 != -1)
  {
    swift_once();
  }

  return &micOnChangedNotification;
}

NSString *sub_100025B84()
{
  result = String._bridgeToObjectiveC()();
  pausedChangedNotification = result;
  return result;
}

NSString *sub_100025BBC()
{
  result = String._bridgeToObjectiveC()();
  textColorChangedNotification = result;
  return result;
}

NSString *sub_100025BF4()
{
  result = String._bridgeToObjectiveC()();
  backgroundColorChangedNotification = result;
  return result;
}

NSNotificationName *backgroundColorChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062738 != -1)
  {
    swift_once();
  }

  return &backgroundColorChangedNotification;
}

NSString *sub_100025C7C()
{
  result = String._bridgeToObjectiveC()();
  textFontChangedNotification = result;
  return result;
}

NSNotificationName *textFontChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062740 != -1)
  {
    swift_once();
  }

  return &textFontChangedNotification;
}

NSString *sub_100025D04()
{
  result = String._bridgeToObjectiveC()();
  nubbitIdleOpacityChangedNotification = result;
  return result;
}

NSString *sub_100025D3C()
{
  result = String._bridgeToObjectiveC()();
  localeChangedNotification = result;
  return result;
}

NSNotificationName *localeChangedNotification.unsafeMutableAddressor()
{
  if (qword_100062750 != -1)
  {
    swift_once();
  }

  return &localeChangedNotification;
}

uint64_t sub_100025DE8(double a1)
{
  result = static Color.white.getter();
  qword_1000637F8 = result;
  return result;
}

uint64_t sub_100025E08(double a1)
{
  result = static Color.clear.getter();
  qword_100063800 = result;
  return result;
}

uint64_t sub_100025E50(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = sub_100003968(&qword_1000638A8, &qword_100049068);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Font.TextStyle();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *a2, v8, v10);
  v13 = type metadata accessor for Font.Design();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = static Font.system(_:design:weight:)();
  sub_100003CE8(v7, &qword_1000638A8, &qword_100049068);
  result = (*(v9 + 8))(v12, v8);
  *a3 = v14;
  return result;
}

UIFontTextStyle *titleFontStyle.unsafeMutableAddressor()
{
  if (qword_100062778 != -1)
  {
    swift_once();
  }

  return &titleFontStyle;
}

UIFontTextStyle *textFontStyle.unsafeMutableAddressor()
{
  if (qword_100062780 != -1)
  {
    swift_once();
  }

  return &textFontStyle;
}

uint64_t AXLTSettingsManager.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AXLTSettingsManager.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___AXLTSettingsManager_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1000262C8;
}

void sub_1000262C8(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t AXLTSettingsManager.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  return sub_100006098(v1 + v3, a1, &qword_100063820, &qword_100048F80);
}

uint64_t AXLTSettingsManager.locale.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  sub_100026EAC(a1, v1 + v3);
  return swift_endAccess();
}

double sub_1000268CC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

double sub_100026A04(void *a1, void *a2, SEL *a3, uint64_t a4)
{
  v7 = objc_opt_self();
  if (*a1 != -1)
  {
    v12 = v7;
    swift_once();
    v7 = v12;
  }

  v8 = [v7 preferredFontForTextStyle:*a2];
  [v8 *a3];
  v10 = v9;

  return v10;
}

uint64_t AXLTSettingsManager.isMicOn.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.isMicOn.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXLTSettingsManager.isPaused.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.isPaused.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXLTSettingsManager.inCallOn.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.inCallOn.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double AXLTSettingsManager.nubbitIdleOpacity.getter()
{
  v1 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTSettingsManager.nubbitIdleOpacity.setter(double a1)
{
  v3 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_100026E78()
{
  result = [objc_allocWithZone(type metadata accessor for AXLTSettingsManager(0)) init];
  static AXLTSettingsManager.shared = result;
  return result;
}

uint64_t sub_100026EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100063820, &qword_100048F80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id static AXLTSettingsManager.shared.getter()
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;

  return v1;
}

CFNotificationCenterRef sub_100026FD4()
{
  v1 = sub_100003968(&qword_100063820, &qword_100048F80);
  __chkstk_darwin(v1 - 8);
  v3 = v49 - v2;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___AXLTSettingsManager_locale;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v49[1] = v6 + 56;
  v50 = v7;
  v7(&v0[v4], 1, 1, v5);
  v8 = OBJC_IVAR___AXLTSettingsManager_textColor;
  if (qword_100062758 != -1)
  {
    swift_once();
  }

  *&v0[v8] = qword_1000637F8;
  v9 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
  v10 = qword_100062760;

  if (v10 != -1)
  {
    swift_once();
  }

  *&v0[v9] = qword_100063800;
  v11 = OBJC_IVAR___AXLTSettingsManager_titleFont;
  v12 = qword_100062770;

  if (v12 != -1)
  {
    swift_once();
  }

  *&v0[v11] = qword_100063810;
  v13 = OBJC_IVAR___AXLTSettingsManager_textFont;
  v14 = qword_100062768;

  if (v14 != -1)
  {
    swift_once();
  }

  *&v0[v13] = qword_100063808;
  v15 = OBJC_IVAR___AXLTSettingsManager_isMicOn;

  v0[v15] = _AXSLiveTranscriptionMicOn() != 0;
  v16 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  v0[v16] = _AXSLiveTranscriptionPaused() != 0;
  v17 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
  v0[v17] = _AXSLiveTranscriptionInCallEnabled() != 0;
  *&v0[OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity] = 0x3FE0000000000000;
  *&v0[OBJC_IVAR___AXLTSettingsManager_micStateChanged] = sub_100027708;
  *&v0[OBJC_IVAR___AXLTSettingsManager_pausedStateChanged] = sub_100027734;
  *&v0[OBJC_IVAR___AXLTSettingsManager_inCallStateChanged] = sub_100027760;
  *&v0[OBJC_IVAR___AXLTSettingsManager_categoryNameChanged] = sub_100027804;
  *&v0[OBJC_IVAR___AXLTSettingsManager_transcriptionEnabledChanged] = sub_100027810;
  *&v0[OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacityChanged] = sub_1000278C0;
  *&v0[OBJC_IVAR___AXLTSettingsManager_textColorChanged] = sub_100028234;
  *&v0[OBJC_IVAR___AXLTSettingsManager_backgroundColorChanged] = sub_1000282B0;
  *&v0[OBJC_IVAR___AXLTSettingsManager_selectedLocaleChanged] = sub_1000286A8;
  v18 = type metadata accessor for AXLTSettingsManager(0);
  v51.receiver = v0;
  v51.super_class = v18;
  v19 = objc_msgSendSuper2(&v51, "init");
  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionMicOnDidChangeNotification)
  {
    __break(1u);
    goto LABEL_23;
  }

  v21 = result;
  v22 = *&v19[OBJC_IVAR___AXLTSettingsManager_micStateChanged];
  v23 = kAXSLiveTranscriptionMicOnDidChangeNotification;
  CFNotificationCenterAddObserver(v21, 0, v22, v23, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionPausedDidChangeNotification)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = result;
  v25 = *&v19[OBJC_IVAR___AXLTSettingsManager_pausedStateChanged];
  v26 = kAXSLiveTranscriptionPausedDidChangeNotification;
  CFNotificationCenterAddObserver(v24, 0, v25, v26, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionTextColorDidChangeNotification)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v27 = result;
  v28 = *&v19[OBJC_IVAR___AXLTSettingsManager_textColorChanged];
  v29 = kAXSLiveTranscriptionTextColorDidChangeNotification;
  CFNotificationCenterAddObserver(v27, 0, v28, v29, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionBackgroundColorDidChangeNotification)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = result;
  v31 = *&v19[OBJC_IVAR___AXLTSettingsManager_backgroundColorChanged];
  v32 = kAXSLiveTranscriptionBackgroundColorDidChangeNotification;
  CFNotificationCenterAddObserver(v30, 0, v31, v32, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveCaptionsNubbitIdleOpacityDidChangeNotification)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v33 = result;
  v34 = *&v19[OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacityChanged];
  v35 = kAXSLiveCaptionsNubbitIdleOpacityDidChangeNotification;
  CFNotificationCenterAddObserver(v33, 0, v34, v35, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionInCallEnabledDidChangeNotification)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v36 = result;
  v37 = *&v19[OBJC_IVAR___AXLTSettingsManager_inCallStateChanged];
  v38 = kAXSLiveTranscriptionInCallEnabledDidChangeNotification;
  CFNotificationCenterAddObserver(v36, 0, v37, v38, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSApplePreferredContentSizeCategoryNotification)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = result;
  v40 = *&v19[OBJC_IVAR___AXLTSettingsManager_categoryNameChanged];
  v41 = kAXSApplePreferredContentSizeCategoryNotification;
  CFNotificationCenterAddObserver(v39, 0, v40, v41, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  result = CFNotificationCenterGetDarwinNotifyCenter();
  if (!kAXSLiveTranscriptionEnabledDidChangeNotification)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v42 = result;
  v43 = *&v19[OBJC_IVAR___AXLTSettingsManager_transcriptionEnabledChanged];
  v44 = kAXSLiveTranscriptionEnabledDidChangeNotification;
  CFNotificationCenterAddObserver(v42, 0, v43, v44, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  sub_100028014();
  v45 = AXLCLiveCaptionsSelectedLocaleIdentifier();
  if (v45)
  {
    v46 = v45;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    v50(v3, 0, 1, v5);
    v47 = OBJC_IVAR___AXLTSettingsManager_locale;
    swift_beginAccess();
    sub_100026EAC(v3, &v19[v47]);
    swift_endAccess();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong fontDidChange];
    swift_unknownObjectRelease();
  }

  sub_100028D8C();
  sub_1000282D4();

  return v19;
}

uint64_t sub_10002778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int (*a6)(void), uint64_t (*a7)(_BOOL8))
{
  if (qword_100062788 != -1)
  {
    v10 = a6;
    swift_once();
    a6 = v10;
  }

  v8 = a6() != 0;
  return a7(v8);
}

void *sub_10002781C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char **a6)
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a6];
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000278D8(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = static os_log_type_t.debug.getter();
  v5 = AXLogLiveTranscription();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, v4))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v6, v4, "updateMicOnState: %{BOOL}d", v7, 8u);
    }

    v8 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
    swift_beginAccess();
    if (*(v2 + v8) != (v3 & 1))
    {
      *(v2 + v8) = v3 & 1;
      if (qword_100062790 != -1)
      {
        swift_once();
      }

      sub_10003031C();
    }

    v9 = [objc_opt_self() defaultCenter];
    if (qword_100062720 != -1)
    {
      swift_once();
    }

    v10 = micOnChangedNotification;
    sub_100003968(&qword_100063870, &qword_100049040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100048930;
    v15 = notificationValueKey.getter();
    v16 = v12;
    AnyHashable.init<A>(_:)();
    v13 = *(v2 + v8);
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = v13;
    sub_10002980C(inited);
    swift_setDeallocating();
    sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:{isa, v15, v16}];
  }

  else
  {
    __break(1u);
  }
}

void sub_100027B4C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = static os_log_type_t.debug.getter();
  v5 = AXLogLiveTranscription();
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, v4))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3 & 1;
      _os_log_impl(&_mh_execute_header, v6, v4, "updatePausedState: %{BOOL}d", v7, 8u);
    }

    v8 = OBJC_IVAR___AXLTSettingsManager_isPaused;
    swift_beginAccess();
    if (*(v2 + v8) != (v3 & 1))
    {
      *(v2 + v8) = v3 & 1;
      if (qword_100062790 != -1)
      {
        swift_once();
      }

      if (qword_100062788 != -1)
      {
        swift_once();
      }

      v9 = static AXLTSettingsManager.shared;
      v10 = OBJC_IVAR___AXLTSettingsManager_isPaused;
      swift_beginAccess();
      if (*(v9 + v10) == 1)
      {
        AXLTCaptionsProvider.stopTranscribing()();
      }

      else
      {
        AXLTCaptionsProvider.startTranscribing()();
      }

      sub_10002D910(0, 0);
    }

    v11 = [objc_opt_self() defaultCenter];
    if (qword_100062728 != -1)
    {
      swift_once();
    }

    v12 = pausedChangedNotification;
    sub_100003968(&qword_100063870, &qword_100049040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100048930;
    notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    v14 = *(v2 + v8);
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = v14;
    sub_10002980C(inited);
    swift_setDeallocating();
    sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 postNotificationName:v12 object:0 userInfo:isa];
  }

  else
  {
    __break(1u);
  }
}

void sub_100027E30(uint64_t a1)
{
  v2 = a1;
  v3 = static os_log_type_t.debug.getter();
  v4 = AXLogLiveTranscription();
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  if (os_log_type_enabled(v4, v3))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2 & 1;
    _os_log_impl(&_mh_execute_header, v5, v3, "updateInCallState: %{BOOL}d", v6, 8u);
  }

  v7 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
  swift_beginAccess();
  if (*(v1 + v7) != (v2 & 1))
  {
    *(v1 + v7) = v2 & 1;
    if (qword_100062790 != -1)
    {
      swift_once();
    }

    v8 = static AXLTCaptionsProvider.shared;
    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v9 = static AXLTSettingsManager.shared;
    v10 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
    swift_beginAccess();
    if (*(v9 + v10) == 1)
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 isCallActive];

      if ((v12 & 1) == 0)
      {
        return;
      }
    }

    else if (*(v8 + OBJC_IVAR___AXLTCaptionsProvider_activePid) != -2)
    {
      return;
    }

    AXLTCaptionsProvider.stopTranscribing()();
    AXLTCaptionsProvider.startTranscribing()();
  }
}

void sub_100028014()
{
  v1 = _AXSLiveCaptionsNubbitIdleOpacity();
  v2 = v1;
  if (v1)
  {
    [v1 floatValue];
    v4 = v3;
    v5 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
    swift_beginAccess();
    *(v0 + v5) = v4;
  }

  v6 = [objc_opt_self() defaultCenter];
  if (qword_100062748 != -1)
  {
    swift_once();
  }

  v7 = nubbitIdleOpacityChangedNotification;
  sub_100003968(&qword_100063870, &qword_100049040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048930;
  notificationValueKey.getter();
  AnyHashable.init<A>(_:)();
  v9 = OBJC_IVAR___AXLTSettingsManager_nubbitIdleOpacity;
  swift_beginAccess();
  v10 = *(v0 + v9);
  *(inited + 96) = &type metadata for CGFloat;
  *(inited + 72) = v10;
  sub_10002980C(inited);
  swift_setDeallocating();
  sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 postNotificationName:v7 object:0 userInfo:isa];
}

uint64_t sub_10002824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (qword_100062788 != -1)
  {
    v7 = a6;
    swift_once();
    a6 = v7;
  }

  return a6();
}

void sub_1000282D4()
{
  v1 = v0;
  v2 = _AXSLiveTranscriptionCopyTextColorData();
  if (v2 && (v3 = v2, sub_100017E20(0, &qword_100063880, NSKeyedUnarchiver_ptr), sub_100017E20(0, &qword_100063828, UIColor_ptr), v4 = v3, v5 = Data.init(referencing:)(), v7 = v6, v18 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)(), v4, sub_100029948(v5, v7), v4, v18))
  {
    v10 = v18;
    v19 = Color.init(_:)();
    v20 = OBJC_IVAR___AXLTSettingsManager_textColor;
    swift_beginAccess();
    *(v1 + v20) = v19;
  }

  else
  {
    if (qword_100062758 != -1)
    {
      swift_once();
    }

    v8 = qword_1000637F8;
    v9 = OBJC_IVAR___AXLTSettingsManager_textColor;
    swift_beginAccess();
    *(v1 + v9) = v8;

    v10 = 0;
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_100062730 != -1)
  {
    swift_once();
  }

  v12 = textColorChangedNotification;
  sub_100003968(&qword_100063870, &qword_100049040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048930;
  notificationValueKey.getter();
  AnyHashable.init<A>(_:)();
  v14 = OBJC_IVAR___AXLTSettingsManager_textColor;
  swift_beginAccess();
  v15 = *(v1 + v14);
  *(inited + 96) = &type metadata for Color;
  *(inited + 72) = v15;

  sub_10002980C(inited);
  swift_setDeallocating();
  sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 postNotificationName:v12 object:0 userInfo:isa];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong textColorDidChange];
    swift_unknownObjectRelease();
  }
}

NSObject *sub_1000286C0()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v47 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003968(&qword_100063890, &qword_100049058);
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v49 = sub_100003968(&qword_100063820, &qword_100048F80);
  __chkstk_darwin(v49);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  v51 = v0;
  v15 = v0 + v14;
  v16 = v13;
  sub_100006098(v15, v13, &qword_100063820, &qword_100048F80);
  v17 = AXLCLiveCaptionsSelectedLocaleIdentifier();
  v50 = v10;
  if (v17)
  {
    v18 = v17;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    (*(v2 + 56))(v10, 0, 1, v1);
  }

  else
  {
    (*(v2 + 56))(v10, 1, 1, v1);
  }

  v19 = v51;
  swift_beginAccess();
  sub_100026EAC(v10, v19 + v14);
  swift_endAccess();
  v20 = *(v4 + 48);
  v21 = v16;
  sub_100006098(v16, v6, &qword_100063820, &qword_100048F80);
  v22 = v14;
  sub_100006098(v51 + v14, &v6[v20], &qword_100063820, &qword_100048F80);
  v23 = *(v2 + 48);
  if (v23(v6, 1, v1) == 1)
  {
    if (v23(&v6[v20], 1, v1) == 1)
    {
      sub_100003CE8(v6, &qword_100063820, &qword_100048F80);
      return sub_100003CE8(v21, &qword_100063820, &qword_100048F80);
    }

    goto LABEL_9;
  }

  v24 = v48;
  sub_100006098(v6, v48, &qword_100063820, &qword_100048F80);
  if (v23(&v6[v20], 1, v1) == 1)
  {
    (*(v2 + 8))(v24, v1);
LABEL_9:
    sub_100003CE8(v6, &qword_100063890, &qword_100049058);
    v25 = v50;
    goto LABEL_10;
  }

  v42 = &v6[v20];
  v43 = v47;
  (*(v2 + 32))(v47, v42, v1);
  sub_100029A10();
  v44 = dispatch thunk of static Equatable.== infix(_:_:)();
  v45 = *(v2 + 8);
  v45(v43, v1);
  v45(v24, v1);
  sub_100003CE8(v6, &qword_100063820, &qword_100048F80);
  v25 = v50;
  if (v44)
  {
    return sub_100003CE8(v21, &qword_100063820, &qword_100048F80);
  }

LABEL_10:
  v26 = static os_log_type_t.default.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v28 = result;
    v29 = os_log_type_enabled(result, v26);
    v30 = v49;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v52[0] = v32;
      *v31 = 136315138;
      sub_100006098(v51 + v22, v25, &qword_100063820, &qword_100048F80);
      v33 = String.init<A>(describing:)();
      v35 = sub_100031EB4(v33, v34, v52);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v26, "LiveCaptions SettingsManager: update SelectedLocale: %s", v31, 0xCu);
      sub_100018190(v32);
    }

    v36 = [objc_opt_self() defaultCenter];
    if (qword_100062750 != -1)
    {
      swift_once();
    }

    v37 = localeChangedNotification;
    sub_100003968(&qword_100063870, &qword_100049040);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100048930;
    v52[0] = notificationValueKey.getter();
    v52[1] = v39;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v30;
    v40 = sub_1000299AC((inited + 72));
    sub_100006098(v51 + v22, v40, &qword_100063820, &qword_100048F80);
    sub_10002980C(inited);
    swift_setDeallocating();
    sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v36 postNotificationName:v37 object:0 userInfo:isa];

    v21 = v16;
    return sub_100003CE8(v21, &qword_100063820, &qword_100048F80);
  }

  __break(1u);
  return result;
}

void sub_100028D8C()
{
  v1 = v0;
  v2 = _AXSLiveTranscriptionCopyBackgroundColorData();
  if (v2 && (v3 = v2, sub_100017E20(0, &qword_100063880, NSKeyedUnarchiver_ptr), sub_100017E20(0, &qword_100063828, UIColor_ptr), v4 = v3, v5 = Data.init(referencing:)(), v7 = v6, v18 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)(), v4, sub_100029948(v5, v7), v4, v18))
  {
    v10 = v18;
    v19 = Color.init(_:)();
    v20 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
    swift_beginAccess();
    *(v1 + v20) = v19;
  }

  else
  {
    if (qword_100062760 != -1)
    {
      swift_once();
    }

    v8 = qword_100063800;
    v9 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
    swift_beginAccess();
    *(v1 + v9) = v8;

    v10 = 0;
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_100062738 != -1)
  {
    swift_once();
  }

  v12 = backgroundColorChangedNotification;
  sub_100003968(&qword_100063870, &qword_100049040);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100048930;
  notificationValueKey.getter();
  AnyHashable.init<A>(_:)();
  v14 = OBJC_IVAR___AXLTSettingsManager_backgroundColor;
  swift_beginAccess();
  v15 = *(v1 + v14);
  *(inited + 96) = &type metadata for Color;
  *(inited + 72) = v15;

  sub_10002980C(inited);
  swift_setDeallocating();
  sub_100003CE8(inited + 32, &qword_100063878, &qword_100049048);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 postNotificationName:v12 object:0 userInfo:isa];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong backgroundColorDidChange];
    swift_unknownObjectRelease();
  }
}

void *sub_10002916C(uint64_t a1, uint64_t a2, const char **a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a3];
    return swift_unknownObjectRelease();
  }

  return result;
}

id AXLTSettingsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AXLTSettingsManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AXLTSettingsManager(uint64_t a1)
{
  result = qword_100063858;
  if (!qword_100063858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000292FC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AXLTSettingsManager(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

UIFont_optional __swiftcall AXLTSettingsManager.fontObjc()()
{
  v0 = objc_opt_self();
  if (qword_100062780 != -1)
  {
    v4 = v0;
    swift_once();
    v0 = v4;
  }

  v1 = [v0 preferredFontForTextStyle:textFontStyle];

  v2 = v1;
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

UIColor_optional __swiftcall AXLTSettingsManager.textColorObjc()()
{
  v0 = sub_10002947C(&OBJC_IVAR___AXLTSettingsManager_textColor);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

UIColor_optional __swiftcall AXLTSettingsManager.backgroundColorObjc()()
{
  v0 = sub_10002947C(&OBJC_IVAR___AXLTSettingsManager_backgroundColor);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

uint64_t sub_10002947C(uint64_t *a1)
{
  sub_100017E20(0, &qword_100063828, UIColor_ptr);
  swift_beginAccess();

  return UIColor.init(_:)();
}

id sub_1000294FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100017E20(0, &qword_100063828, UIColor_ptr);
  swift_beginAccess();

  v3 = UIColor.init(_:)();

  return v3;
}

void sub_1000295AC(uint64_t a1)
{
  sub_100029690(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100029690(uint64_t a1)
{
  if (!qword_100063868)
  {
    type metadata accessor for Locale();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100063868);
    }
  }
}

unint64_t sub_100029708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003968(&qword_1000638A0, &qword_100049060);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10003C320(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_10002980C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003968(&qword_100063888, &qword_100049050);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100006098(v4, v13, &qword_100063878, &qword_100049048);
      result = sub_10003C2DC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10002999C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

double sub_100029948(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

_OWORD *sub_10002999C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t *sub_1000299AC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100029A10()
{
  result = qword_100063898;
  if (!qword_100063898)
  {
    type metadata accessor for Locale();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063898);
  }

  return result;
}

uint64_t *AXLTCaptionsProvider.shared.unsafeMutableAddressor()
{
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  return &static AXLTCaptionsProvider.shared;
}

double sub_100029AE4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t AXLTCaptionsProvider.captions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AXLTCaptionsProvider.captions.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*AXLTCaptionsProvider.captions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_100032E38;
}

uint64_t AXLTCaptionsProvider.$captions.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638C8, &qword_1000490E8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_1000638C0, &qword_1000490E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXLTCaptionsProvider.$captions.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003968(&qword_1000638C8, &qword_1000490E8);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___AXLTCaptionsProvider__captions;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638C0, &qword_1000490E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_100032E3C;
}

uint64_t AXLTCaptionsProvider.audioHistogramSize.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AXLTCaptionsProvider.audioHistogramSize.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*AXLTCaptionsProvider.audioHistogramSize.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10002A174;
}

void sub_10002A178(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_10002A1FC(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  sub_100003968(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t AXLTCaptionsProvider.$audioHistogramSize.setter(uint64_t a1)
{
  v2 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AXLTCaptionsProvider.$audioHistogramSize.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_100003968(&qword_1000638E0, &qword_100049140);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR___AXLTCaptionsProvider__audioHistogramSize;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  Published.projectedValue.getter();
  swift_endAccess();
  return sub_10002A51C;
}

void sub_10002A520(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t AXLTCaptionsProvider.audioHistogram.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t AXLTCaptionsProvider.isTranscribing.getter()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTCaptionsProvider.isTranscribing.setter(char a1)
{
  v3 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AXLTCaptionsProvider.activeRequestType.getter()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AXLTCaptionsProvider.activeRequestType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10002A970()
{
  result = [objc_allocWithZone(type metadata accessor for AXLTCaptionsProvider(0)) init];
  static AXLTCaptionsProvider.shared = result;
  return result;
}

id static AXLTCaptionsProvider.shared.getter()
{
  if (qword_100062790 != -1)
  {
    swift_once();
  }

  v1 = static AXLTCaptionsProvider.shared;

  return v1;
}

Swift::Void __swiftcall AXLTCaptionsProvider.startTranscribing()()
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;
  v2 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
    swift_beginAccess();
    v4 = *(v1 + v3);
    v5 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
    swift_beginAccess();
    if (*(v1 + v5) == 1 && (v6 = [objc_opt_self() sharedInstance], v7 = objc_msgSend(v6, "isCallActive"), v6, v7))
    {
      v8 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
      v9 = 1;
      swift_beginAccess();
      *(v0 + v8) = 1;
      v10 = -2;
    }

    else
    {
      v9 = v4 ^ 1u;
      v11 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
      swift_beginAccess();
      *(v0 + v11) = v9;
      v10 = -1;
    }

    *(v0 + OBJC_IVAR___AXLTCaptionsProvider_activePid) = v10;
    AXLTCaptionsProvider.startTranscribing(_:_:)(v9, v10);
  }
}

void AXLTCaptionsProvider.startTranscribing(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = static os_log_type_t.default.getter();
  v6 = AXLogLiveTranscription();
  if (!v6)
  {
LABEL_19:
    __break(1u);
  }

  v7 = v6;
  if (os_log_type_enabled(v6, v5))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&_mh_execute_header, v7, v5, "startTranscribing for type = %ld, pid = %ld", v8, 0x16u);
  }

  v9 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  swift_beginAccess();
  *&v2[v9] = a1;
  v10 = OBJC_IVAR___AXLTCaptionsProvider_activePid;
  *&v2[OBJC_IVAR___AXLTCaptionsProvider_activePid] = a2;
  sub_10002F8E8();
  v11 = *&v2[v10];
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = *&v2[OBJC_IVAR___AXLTCaptionsProvider_transcription];
  v13 = *&v2[v9];
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  v42 = sub_10002FA44;
  v43 = v14;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_100032E40;
  v41 = &unk_10005ECC0;
  v15 = _Block_copy(&aBlock);
  v16 = v2;

  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v42 = sub_10002FA64;
  v43 = v17;
  aBlock = _NSConcreteStackBlock;
  v39 = 1107296256;
  v40 = sub_100032E40;
  v41 = &unk_10005ED10;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  aBlock = 0;
  LODWORD(v12) = [v12 startTranscribing:v13 targetPID:v11 callbackBlock:v15 audioInfoBlock:v18 error:&aBlock];
  _Block_release(v18);
  _Block_release(v15);
  v20 = aBlock;
  if (v12)
  {
    v21 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    swift_beginAccess();
    v19[v21] = 1;
    if (*&v2[v9])
    {
      v22 = v20;
    }

    else
    {
      v26 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed;
      if (v19[OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed] == 1)
      {
        v27 = v20;
      }

      else
      {
        v28 = objc_opt_self();
        v29 = v20;
        v30 = [v28 defaultCenter];
        v31 = [objc_opt_self() sharedInstance];
        [v30 addObserver:v19 selector:"handleAudioSessionInterruptionWithNotification:" name:AVAudioSessionInterruptionNotification object:v31];

        v19[v26] = 1;
      }

      v32 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed;
      if ((v19[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] & 1) == 0)
      {
        v33 = [objc_opt_self() defaultCenter];
        v34 = [objc_opt_self() sharedInstance];
        [v33 addObserver:v19 selector:"handleAudioSessionResetWithNotification:" name:AVAudioSessionMediaServicesWereResetNotification object:v34];

        v19[v32] = 1;
      }
    }

    v35 = [objc_allocWithZone(NSNumber) initWithInt:1057];
    v36 = [v35 unsignedIntValue];

    v37 = [objc_opt_self() sharedApplication];
    UIAccessibilityPostNotification(v36, v37);
  }

  else
  {
    v23 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static os_log_type_t.error.getter();
    v24 = AXLogLiveTranscription();
    if (v24)
    {
      v25 = v24;
      os_log(_:dso:log:_:_:)();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10002B170(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = static os_log_type_t.debug.getter();
  v9 = AXLogLiveTranscription();
  if (!v9)
  {
    goto LABEL_88;
  }

  v10 = v9;
  v11 = os_log_type_enabled(v9, v8);
  v81 = v5;
  v82 = v4;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v83[0] = v13;
    *v12 = 136315138;
    v14 = [a1 transcribedText];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100031EB4(v15, v17, v83);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v8, "Transcribed data = %s", v12, 0xCu);
    sub_100018190(v13);
  }

  sub_100030598();
  v19 = [a1 transcribedText];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = String.count.getter();

  if (!v20)
  {
    *(a2 + OBJC_IVAR___AXLTCaptionsProvider_newCaption) = 1;
    static os_log_type_t.debug.getter();
    v31 = AXLogLiveTranscription();
    if (v31)
    {
      v32 = v31;
      os_log(_:dso:log:_:_:)();

      sub_10002CFEC(a1);
      return;
    }

    goto LABEL_90;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v83[0] >> 62)
  {
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 < 1)
  {
    goto LABEL_25;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v83[0] >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_69;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v83[0] & 0xC000000000000001) != 0)
  {
LABEL_69:
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_71;
  }

  if (v24 >= *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v34 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_23;
  }

  v25 = *(v83[0] + 8 * v24 + 32);
LABEL_15:
  v26 = v25;

  v27 = AXLTCaption.appID.getter();
  v29 = v28;

  if (v27 == placeholderID.getter() && v29 == v30)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v83[0] >> 62)
  {
    goto LABEL_72;
  }

  v34 = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_23:

  v23 = __OFSUB__(v34, 1);
  v35 = (v34 - 1);
  if (v23)
  {
    __break(1u);
    goto LABEL_74;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v36 = static Published.subscript.modify();

  v36(v83, 0);

LABEL_25:
  v37 = OBJC_IVAR___AXLTCaptionsProvider_captionsID;
  v80[3] = *(a2 + OBJC_IVAR___AXLTCaptionsProvider_captionsID);
  v38 = [a1 appID];
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80[1] = v40;
  v80[2] = v39;

  v41 = [a1 appName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = objc_opt_self();
  v43 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v81 + 8))(v7, v82);
  v45 = [v42 dateToString:isa];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = [a1 transcribedText];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v47 = [a1 transcription];
  v48 = [v47 segments];

  sub_100017E20(0, &qword_100063AB8, SFTranscriptionSegment_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = objc_allocWithZone(type metadata accessor for AXLTCaption());
  a1 = AXLTCaption.init(id:appID:appName:time:text:segments:placeholder:actionType:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v83[0] >> 62)
  {
    v50 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v50 = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v50 && *(a2 + OBJC_IVAR___AXLTCaptionsProvider_newCaption) != 1)
  {
    v59 = *(a2 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption);
    if (!v59)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (!(v83[0] >> 62))
      {
        v69 = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_46;
      }

LABEL_78:
      v69 = _CocoaArrayWrapper.endIndex.getter();
LABEL_46:

      v23 = __OFSUB__(v69, 1);
      v70 = v69 - 1;
      if (v23)
      {
        __break(1u);
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if ((v83[0] & 0xC000000000000001) == 0)
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_82;
          }

          if (v70 >= *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_84;
          }

          v71 = *(v83[0] + 8 * v70 + 32);
LABEL_51:
          v72 = v71;

          dispatch thunk of AXLTCaption.text.getter();
          dispatch thunk of AXLTCaption.text.setter();

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if (!(v83[0] >> 62))
          {
            v73 = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_53:

            v23 = __OFSUB__(v73, 1);
            v74 = v73 - 1;
            if (!v23)
            {
              swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter();

              if ((v83[0] & 0xC000000000000001) == 0)
              {
                if ((v74 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v74 < *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v75 = *(v83[0] + 8 * v74 + 32);
LABEL_58:
                  v76 = v75;

                  dispatch thunk of AXLTCaption.segments.getter();
                  dispatch thunk of AXLTCaption.segments.setter();

LABEL_59:
                  static os_log_type_t.debug.getter();
                  v77 = AXLogLiveTranscription();
                  if (v77)
                  {
                    v78 = v77;
                    os_log(_:dso:log:_:_:)();

                    goto LABEL_61;
                  }

LABEL_91:
                  __break(1u);
                  return;
                }

                __break(1u);
LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

LABEL_85:
              v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              goto LABEL_58;
            }

            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

LABEL_82:
          v73 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_53;
        }
      }

      v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_51;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v59;
    static Published.subscript.getter();

    if (!(v83[0] >> 62))
    {
      v60 = *((v83[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_36;
    }

LABEL_74:
    v60 = _CocoaArrayWrapper.endIndex.getter();
LABEL_36:

    v61 = v60 - 1;
    if (__OFSUB__(v60, 1))
    {
      __break(1u);
    }

    else
    {
      v62 = mergeCaptions(_:_:)();
      swift_getKeyPath();
      swift_getKeyPath();
      v63 = static Published.subscript.modify();
      v65 = v64;
      v66 = *v64;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v65 = v66;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v66 & 0x8000000000000000) != 0 || (v66 & 0x4000000000000000) != 0)
      {
        v66 = sub_10003245C(v66);
        *v65 = v66;
      }

      if ((v61 & 0x8000000000000000) == 0)
      {
        if (v61 < *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 8 * v61 + 0x20);
          *((v66 & 0xFFFFFFFFFFFFFF8) + 8 * v61 + 0x20) = v62;

          v63(v83, 0);

          goto LABEL_59;
        }

        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v51 = *(a2 + v37);
  v23 = __OFADD__(v51, 1);
  v52 = v51 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + v37) = v52;
    swift_getKeyPath();
    swift_getKeyPath();
    v53 = a1;
    v48 = static Published.subscript.modify();
    v55 = v54;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_31;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_31:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (v48)(v83, 0);

  *(a2 + OBJC_IVAR___AXLTCaptionsProvider_newCaption) = 0;
  v56 = *(a2 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption);
  *(a2 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption) = 0;

  static os_log_type_t.debug.getter();
  v57 = AXLogLiveTranscription();
  if (!v57)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v58 = v57;
  os_log(_:dso:log:_:_:)();

  sub_10002E4D4();
LABEL_61:
  v79 = *(a2 + OBJC_IVAR___AXLTCaptionsProvider_currentCaption);
  *(a2 + OBJC_IVAR___AXLTCaptionsProvider_currentCaption) = a1;
}

unint64_t sub_10002BEF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_10003245C(v3);
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

void sub_10002BF88(void *a1, char *a2)
{
  v4 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
  swift_beginAccess();
  *&a2[v4] = _swiftEmptyArrayStorage;

  v5 = [a1 audioHistogram];
  sub_100017E20(0, &qword_100063AB0, NSNumber_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  v8 = 0;
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    [v9 doubleValue];
    v12 = v11;
    v13 = *&a2[v4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&a2[v4] = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_100006224(0, *(v13 + 2) + 1, 1, v13);
      *&a2[v4] = v13;
    }

    v16 = *(v13 + 2);
    v15 = *(v13 + 3);
    if (v16 >= v15 >> 1)
    {
      v13 = sub_100006224((v15 > 1), v16 + 1, 1, v13);
    }

    ++v8;
    *(v13 + 2) = v16 + 1;
    *&v13[8 * v16 + 32] = v12;
    *&a2[v4] = v13;
  }

  while (v7 != v8);
LABEL_15:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = *(*&a2[v4] + 16);
  if (aBlock[0] != v17)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v17;
    v18 = a2;
    static Published.subscript.setter();
  }

  v19 = OBJC_IVAR___AXLTCaptionsProvider_histogramTimer;
  [*&a2[OBJC_IVAR___AXLTCaptionsProvider_histogramTimer] invalidate];
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  aBlock[4] = sub_100032E04;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032E40;
  aBlock[3] = &unk_10005EE28;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  v24 = [v20 scheduledTimerWithTimeInterval:0 repeats:v22 block:0.5];
  _Block_release(v22);
  v25 = *&a2[v19];
  *&a2[v19] = v24;
}

void sub_10002C2E0(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  if (*(a2 + v3) == 1)
  {
    sub_10002F8E8();
  }
}

void sub_10002C334(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::Void __swiftcall AXLTCaptionsProvider.stopTranscribing()()
{
  v1 = static os_log_type_t.debug.getter();
  v2 = AXLogLiveTranscription();
  if (!v2)
  {
LABEL_15:
    __break(1u);
  }

  v3 = v2;
  if (os_log_type_enabled(v2, v1))
  {
    v4 = v0;
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
    swift_beginAccess();
    *(v5 + 4) = *&v4[v6];

    _os_log_impl(&_mh_execute_header, v3, v1, "stopTranscribing for type = %ld", v5, 0xCu);
  }

  v7 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed;
  if (v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] == 1)
  {
    v8 = [objc_opt_self() defaultCenter];
    v9 = [objc_opt_self() sharedInstance];
    [v8 removeObserver:v0 name:AVAudioSessionMediaServicesWereResetNotification object:v9];

    v0[v7] = 0;
  }

  v10 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_transcription];
  v11 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  swift_beginAccess();
  v12 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_activePid];
  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ([v10 stopTranscribing:*&v0[v11] targetPID:? error:?])
  {
    v13 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    swift_beginAccess();
    v0[v13] = 0;
    v14 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption];
    *&v0[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption] = 0;
    v15 = 0;

    v16 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_currentCaption];
    *&v0[OBJC_IVAR___AXLTCaptionsProvider_currentCaption] = 0;

    v0[OBJC_IVAR___AXLTCaptionsProvider_newCaption] = 1;
    v17 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
    swift_beginAccess();
    *&v0[v17] = _swiftEmptyArrayStorage;

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v0;
    static Published.subscript.setter();
    sub_100030598();
LABEL_12:
    v22 = [objc_allocWithZone(NSNumber) initWithInt:1057];
    v23 = [v22 unsignedIntValue];

    UIAccessibilityPostNotification(v23, 0);
    return;
  }

  v19 = 0;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  static os_log_type_t.error.getter();
  v20 = AXLogLiveTranscription();
  if (v20)
  {
    v21 = v20;
    os_log(_:dso:log:_:_:)();

    goto LABEL_12;
  }

  __break(1u);
}

char *sub_10002C7E8()
{
  v1 = sub_100003968(&qword_1000638D8, &unk_1000499E0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_100003968(&qword_1000638C0, &qword_1000490E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = OBJC_IVAR___AXLTCaptionsProvider__captions;
  v31 = _swiftEmptyArrayStorage;
  sub_100003968(&qword_1000638B0, &qword_100048610);
  Published.init(initialValue:)();
  (*(v6 + 32))(&v0[v9], v8, v5);
  v10 = OBJC_IVAR___AXLTCaptionsProvider__audioHistogramSize;
  v31 = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(&v0[v10], v4, v1);
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_audioHistogram] = _swiftEmptyArrayStorage;
  v0[OBJC_IVAR___AXLTCaptionsProvider_isTranscribing] = 0;
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v11 = static AXLTSettingsManager.shared;
  v12 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_activeRequestType] = (*(v11 + v12) & 1) == 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_activePid] = -1;
  v13 = OBJC_IVAR___AXLTCaptionsProvider_transcription;
  *&v0[v13] = [objc_allocWithZone(AXLTLiveTranscription) init];
  v0[OBJC_IVAR___AXLTCaptionsProvider_newCaption] = 1;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_currentCaption] = 0;
  v14 = OBJC_IVAR___AXLTCaptionsProvider_dateFormatter;
  *&v0[v14] = [objc_allocWithZone(NSDateFormatter) init];
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_cleanHistoryTimer] = 0;
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_histogramTimer] = 0;
  v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed] = 0;
  v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] = 0;
  v15 = OBJC_IVAR___AXLTCaptionsProvider_lockScreenObserver;
  *&v0[v15] = [objc_allocWithZone(AXLTLockScreenObserver) init];
  *&v0[OBJC_IVAR___AXLTCaptionsProvider_captionsID] = 0;
  v16 = type metadata accessor for AXLTCaptionsProvider(0);
  v30.receiver = v0;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "init");
  v18 = *&v17[OBJC_IVAR___AXLTCaptionsProvider_dateFormatter];
  v19 = v17;
  v20 = v18;
  v21 = String._bridgeToObjectiveC()();
  [v20 setDateFormat:v21];

  v22 = objc_opt_self();
  v23 = [v22 sharedInstance];
  [v23 setDelegate:v19];

  v24 = [v22 sharedInstance];
  [v24 setUtilityType:1];

  [*&v19[OBJC_IVAR___AXLTCaptionsProvider_lockScreenObserver] setDelegate:v19];
  v25 = objc_opt_self();
  historyCheckTimeInterval.getter();
  v26 = [v25 scheduledTimerWithTimeInterval:v19 target:"cleanOldestCaptionsIfNeeded" selector:0 userInfo:1 repeats:?];

  v27 = *&v19[OBJC_IVAR___AXLTCaptionsProvider_cleanHistoryTimer];
  *&v19[OBJC_IVAR___AXLTCaptionsProvider_cleanHistoryTimer] = v26;

  sub_10002D910(0, 0);
  AXLTCaptionsProvider.startTranscribing()();

  return v19;
}

id AXLTCaptionsProvider.__deallocating_deinit()
{
  AXLTCaptionsProvider.stopTranscribing()();
  v1 = OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer;
  [*&v0[OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v3 = *&v0[OBJC_IVAR___AXLTCaptionsProvider_cleanHistoryTimer];
  if (v3)
  {
    [v3 invalidate];
  }

  v4 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed;
  if (v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed] == 1)
  {
    v5 = [objc_opt_self() defaultCenter];
    v6 = [objc_opt_self() sharedInstance];
    [v5 removeObserver:v0 name:AVAudioSessionInterruptionNotification object:v6];

    v0[v4] = 0;
  }

  v7 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed;
  if (v0[OBJC_IVAR___AXLTCaptionsProvider_audioSessionResetSubscribed] == 1)
  {
    v8 = [objc_opt_self() defaultCenter];
    v9 = [objc_opt_self() sharedInstance];
    [v8 removeObserver:v0 name:AVAudioSessionMediaServicesWereResetNotification object:v9];

    v0[v7] = 0;
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for AXLTCaptionsProvider(0);
  return objc_msgSendSuper2(&v11, "dealloc");
}

NSObject *sub_10002CFEC(void *a1)
{
  result = [a1 assetState];
  if (result == -2)
  {
    return result;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0xE000000000000000;
  if ([a1 assetState] == -1)
  {
    v20 = static AXLTUtilities.AXLTLocString(_:)();
LABEL_10:
    *(v4 + 16) = v20;
    *(v4 + 24) = v21;

    goto LABEL_11;
  }

  if ([a1 assetState] != 100)
  {
    sub_100003968(&qword_100063A90, &qword_1000491F8);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_100048C70;
    v23 = static AXLTUtilities.AXLTLocString(_:)();
    v25 = v24;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_100032848();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    v26 = [a1 assetState];
    *(v22 + 96) = &type metadata for Int;
    *(v22 + 104) = &protocol witness table for Int;
    *(v22 + 72) = v26;
    v20 = String.init(format:_:)();
    goto LABEL_10;
  }

  *(v4 + 16) = static AXLTUtilities.AXLTLocString(_:)();
  *(v4 + 24) = v5;

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v4;
  aBlock[4] = sub_1000328DC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100032E40;
  aBlock[3] = &unk_10005EDD8;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  v10 = [v6 scheduledTimerWithTimeInterval:0 repeats:v8 block:2.0];
  _Block_release(v8);

  v11 = static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v12 = result;
  if (os_log_type_enabled(result, v11))
  {
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v13 = 136315138;
    v14 = [objc_opt_self() currentThread];
    v15 = [v14 description];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = sub_100031EB4(v16, v18, aBlock);

    *(v13 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v11, "Timer: %s", v13, 0xCu);
    sub_100018190(v36);
  }

LABEL_11:
  v27 = static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v28 = result;
  if (os_log_type_enabled(result, v27))
  {

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock[0] = v30;
    *v29 = 136315138;
    swift_beginAccess();
    v31 = *(v4 + 16);
    v32 = *(v4 + 24);

    v33 = sub_100031EB4(v31, v32, aBlock);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v28, v27, "progress %s", v29, 0xCu);
    sub_100018190(v30);
  }

  swift_beginAccess();
  v34 = *(v4 + 16);
  v35 = *(v4 + 24);

  sub_10002D910(v34, v35);
}

void sub_10002D4D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static os_log_type_t.debug.getter();
  v4 = AXLogLiveTranscription();
  if (!v4)
  {
    goto LABEL_40;
  }

  v5 = v4;
  os_log(_:dso:log:_:_:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < 1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_32;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v25 & 0xC000000000000001) != 0)
  {
LABEL_32:
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v9 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v10 = *(v25 + 8 * v9 + 32);
LABEL_12:
  v11 = v10;

  v12 = AXLTCaption.appID.getter();
  v14 = v13;

  if (v12 == placeholderID.getter() && v14 == v15)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v25 >> 62))
  {
    v17 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_35:
  v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:

  v8 = __OFSUB__(v17, 1);
  v18 = v17 - 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v25 & 0xC000000000000001) == 0)
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v18 < *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v19 = *(v25 + 8 * v18 + 32);
        goto LABEL_23;
      }

      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }
  }

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
  v20 = v19;

  v21 = dispatch thunk of AXLTCaption.text.getter();
  v23 = v22;

  swift_beginAccess();
  if (v21 == *(a3 + 16) && v23 == *(a3 + 24))
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v24 & 1) == 0)
    {
      return;
    }
  }

  sub_10002D910(0, 0);
}

void sub_10002D910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v6 = static AXLTSettingsManager.shared;
  v7 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  if (*(v6 + v7) == 1)
  {
    v8 = placeholderMicName.getter();
  }

  else
  {
    v8 = placeholderName.getter();
  }

  v10 = v8;
  v11 = v9;
  v12 = OBJC_IVAR___AXLTSettingsManager_isPaused;
  swift_beginAccess();
  v67 = v12;
  if (*(v6 + v12) == 1)
  {
    v13 = placeholderPausedText.getter();
  }

  else
  {
    v13 = placeholderText.getter();
  }

  v69 = a2;
  v68 = v6;
  if (a2)
  {

    if (static AXLTUtilities.AXLTLocString(_:)() == a1 && v15 == a2)
    {
    }

    else
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v16 = a2;
  }

  else
  {
    v16 = v14;
    a1 = v13;
  }

  v17 = OBJC_IVAR___AXLTCaptionsProvider_captionsID;
  v18 = placeholderID.getter();
  objc_allocWithZone(type metadata accessor for AXLTCaption());

  v19 = AXLTCaption.init(id:appID:appName:time:text:segments:placeholder:actionType:)();
  v20 = *&v3[v17];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    v18 = v19;
    *&v3[v17] = v22;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v70[0] >> 62))
    {
      v23 = *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v23)
      {
        goto LABEL_19;
      }

LABEL_78:

      sub_100003968(&qword_100063AA8, &qword_100049200);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_100049080;
      *(v64 + 32) = v18;
      swift_getKeyPath();
      swift_getKeyPath();
      v70[0] = v64;
      v65 = v18;
      v66 = v3;
      static Published.subscript.setter();

      goto LABEL_79;
    }
  }

  v63 = _CocoaArrayWrapper.endIndex.getter();

  if (!v63)
  {
    goto LABEL_78;
  }

LABEL_19:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v70[0] >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_82;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v70[0] & 0xC000000000000001) != 0)
  {
LABEL_82:
    v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_26;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_84;
  }

  if (v25 >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v26 = *(v70[0] + 8 * v25 + 32);
LABEL_26:
  v27 = v26;

  v28 = AXLTCaption.appID.getter();
  v30 = v29;

  if (v28 == placeholderID.getter() && v30 == v31)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {

      swift_getKeyPath();
      swift_getKeyPath();
      v18 = v18;
      v3 = static Published.subscript.modify();
      v50 = v49;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v50 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_54:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        (v3)(v70, 0);

LABEL_75:

        return;
      }

LABEL_99:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_54;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v70[0] >> 62))
  {
    v33 = *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_32;
  }

LABEL_85:
  v33 = _CocoaArrayWrapper.endIndex.getter();
LABEL_32:

  v21 = __OFSUB__(v33, 1);
  v34 = v33 - 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_87;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v70[0] & 0xC000000000000001) != 0)
  {
LABEL_87:
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_37;
  }

  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_89;
  }

  if (v34 >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v35 = *(v70[0] + 8 * v34 + 32);
LABEL_37:
  v36 = v35;

  v37 = AXLTCaption.appName.getter();
  v39 = v38;

  if (v37 == v10 && v39 == v11)
  {
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (!(v70[0] >> 62))
  {
    v41 = *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_43;
  }

LABEL_90:
  v41 = _CocoaArrayWrapper.endIndex.getter();
LABEL_43:

  v21 = __OFSUB__(v41, 1);
  v42 = v41 - 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_92;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v70[0] & 0xC000000000000001) != 0)
  {
LABEL_92:
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_48;
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  if (v42 >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v43 = *(v70[0] + 8 * v42 + 32);
LABEL_48:
  v44 = v43;

  v45 = dispatch thunk of AXLTCaption.text.getter();
  v47 = v46;

  if (v45 == a1 && v47 == v16)
  {

LABEL_79:

    return;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
LABEL_52:

    return;
  }

  if (v69 || (*(v68 + v67) & 1) != 0)
  {
LABEL_65:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v70[0] >> 62))
    {
      v56 = *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_67;
    }

LABEL_95:
    v56 = _CocoaArrayWrapper.endIndex.getter();
LABEL_67:

    v57 = v56 - 1;
    if (__OFSUB__(v56, 1))
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = v18;
      v3 = static Published.subscript.modify();
      v59 = v58;
      v60 = *v58;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v59 = v60;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v60 & 0x8000000000000000) != 0 || (v60 & 0x4000000000000000) != 0)
      {
        v60 = sub_10003245C(v60);
        *v59 = v60;
      }

      if ((v57 & 0x8000000000000000) == 0)
      {
        if (v57 < *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v62 = *((v60 & 0xFFFFFFFFFFFFFF8) + 8 * v57 + 0x20);
          *((v60 & 0xFFFFFFFFFFFFFF8) + 8 * v57 + 0x20) = v18;

          (v3)(v70, 0);

          goto LABEL_75;
        }

        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v70[0] >> 62)
  {
    v51 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v51 = *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = __OFSUB__(v51, 1);
  v52 = v51 - 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_102;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v70[0] & 0xC000000000000001) != 0)
  {
LABEL_102:
    v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_64:
    v54 = v53;

    dispatch thunk of AXLTCaption.actionType.getter();

    v55 = AXLTCaptionActionsType.rawValue.getter();
    if (v55 == AXLTCaptionActionsType.rawValue.getter())
    {
      goto LABEL_52;
    }

    goto LABEL_65;
  }

  if ((v52 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v52 < *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v53 = *(v70[0] + 8 * v52 + 32);
    goto LABEL_64;
  }

  __break(1u);
}

void sub_10002E4D4()
{
  v4 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v48[0] >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v5 - 2;
  if (v5 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v48[0] & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_51;
      }

      v7 = *(v48[0] + 8 * v6 + 32);
    }

    v8 = v7;

    dispatch thunk of AXLTCaption.actionType.getter();

    v9 = AXLTCaptionActionsType.rawValue.getter();
    if (v9 == AXLTCaptionActionsType.rawValue.getter())
    {
      return;
    }

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    static Published.subscript.getter();

    if ((v48[0] & 0xC000000000000001) == 0)
    {
      if (v6 >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_54;
      }

      v11 = *(v48[0] + 8 * v6 + 32);
LABEL_11:
      v12 = v11;

      v13 = AXLTCaption.appID.getter();
      v1 = v14;

      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v1 == v15)
      {

        micCaptionTextTimeLimit.getter();
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          micCaptionTextTimeLimit.getter();
        }

        else
        {
          captionTextTimeLimit.getter();
        }
      }

      v3 = v16;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v48[0] & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_56;
        }

        v18 = *(v48[0] + 8 * v6 + 32);
      }

      v19 = v18;

      dispatch thunk of AXLTCaption.time.getter();

      v2 = String._bridgeToObjectiveC()();

      KeyPath = v5 - 1;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v47 = v13;
      if ((v48[0] & 0xC000000000000001) == 0)
      {
        if (v5 <= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = v5 - 1;
          v20 = *(v48[0] + 8 * KeyPath + 32);
          goto LABEL_23;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_54:
      v13 = KeyPath;
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_23:
      v21 = v20;

      v22 = objc_opt_self();
      dispatch thunk of AXLTCaption.time.getter();

      v23 = String._bridgeToObjectiveC()();

      [v22 timeDifferenceDateStringOld:v2 dateStringNew:v23];
      v25 = v24;

      if (v25 >= v3)
      {

        return;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v48[0] & 0xC000000000000001) == 0)
      {
        if (v5 > *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_59;
        }

        v22 = v13;
        v26 = *(v48[0] + 8 * v13 + 32);
LABEL_27:
        v27 = v26;

        v28 = AXLTCaption.appID.getter();
        v30 = v29;

        if (v47 == v28 && v1 == v30)
        {
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v31 & 1) == 0)
          {
            return;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v32 = v48[0];
        if ((v48[0] & 0xC000000000000001) == 0)
        {
          if (v6 >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_62;
          }

          v33 = *(v48[0] + 8 * v6 + 32);
LABEL_35:
          v34 = v33;

          v35 = *(v4 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption);
          *(v4 + OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption) = v34;

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if ((v48[0] & 0xC000000000000001) != 0)
          {
            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v36 = *(v48[0] + 8 * v6 + 32);
          }

          v32 = v36;

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          if ((v48[0] & 0xC000000000000001) == 0)
          {
            if (v5 > *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_65:
              __break(1u);
              return;
            }

            v37 = *(v48[0] + 8 * v22 + 32);
            goto LABEL_41;
          }

LABEL_62:
          v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_41:
          v38 = v37;

          v39 = mergeCaptions(_:_:)();

          swift_getKeyPath();
          swift_getKeyPath();
          v40 = static Published.subscript.modify();
          v42 = v41;
          v43 = *v41;
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v42 = v43;
          if (!isUniquelyReferenced_nonNull_bridgeObject || (v43 & 0x8000000000000000) != 0 || (v43 & 0x4000000000000000) != 0)
          {
            v43 = sub_10003245C(v43);
            *v42 = v43;
          }

          if (v6 < *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
            *((v43 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v39;

            v40(v48, 0);

            swift_getKeyPath();
            swift_getKeyPath();
            v46 = static Published.subscript.modify();

            v46(v48, 0);

            return;
          }

          goto LABEL_64;
        }

LABEL_59:
        v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_35;
      }

LABEL_57:
      v22 = v13;
      v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_27;
    }

LABEL_51:
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }
}

Swift::Void __swiftcall AXLTCaptionsProvider.cleanCaptions()()
{
  static os_log_type_t.debug.getter();
  v0 = AXLogLiveTranscription();
  if (v0)
  {
    v1 = v0;
    os_log(_:dso:log:_:_:)();

    swift_getKeyPath();
    swift_getKeyPath();
    v2 = static Published.subscript.modify();
    *v3 = _swiftEmptyArrayStorage;

    v2(&v4, 0);

    sub_10002D910(0, 0);
  }

  else
  {
    __break(1u);
  }
}

NSObject *sub_10002EF30()
{
  v65 = type metadata accessor for Date();
  v61 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v60 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (!result)
  {
    goto LABEL_64;
  }

  v2 = result;
  os_log(_:dso:log:_:_:)();

  if (_AXSBrailleInputDeviceConnected() && _AXSVoiceOverTouchEnabled())
  {
    historyTimeIntervalMaxBraille.getter();
  }

  else
  {
    historyTimeIntervalMax.getter();
  }

  v4 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v67[0];
  if (v67[0] >> 62)
  {
    goto LABEL_58;
  }

  v7 = *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_8:
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  v62 = (v61 + 1);
  v63 = v6 & 0xFFFFFFFFFFFFFF8;
  *&v5 = 134217984;
  v60 = v5;
  while (1)
  {
    if (v9)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v63 + 16))
      {
        goto LABEL_56;
      }

      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v10;
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      while (2)
      {
        __break(1u);
LABEL_58:
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (!v7)
        {
LABEL_29:

          v32 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
          v33 = v66;
          result = swift_beginAccess();
          v6 = *(v33 + v32);
          if (v6 >> 62)
          {
            result = _CocoaArrayWrapper.endIndex.getter();
            v34 = result;
            if (!result)
            {
              return result;
            }
          }

          else
          {
            v34 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v34)
            {
              return result;
            }
          }

          v35 = v6 & 0xC000000000000001;
          ++v61;
          v62 = v6 & 0xFFFFFFFFFFFFFF8;

          v36 = 0;
          *&v37 = 134217984;
          v60 = v37;
          v63 = v6 & 0xC000000000000001;
LABEL_34:
          if (v35)
          {
            v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v36 >= *(v62 + 16))
            {
              continue;
            }

            v38 = *(v6 + 8 * v36 + 32);
          }

          v39 = v38;
          v40 = (v36 + 1);
          if (__OFADD__(v36, 1))
          {
            goto LABEL_55;
          }

          dispatch thunk of AXLTCaption.time.getter();
          v41 = String.count.getter();

          if (v41 >= 1)
          {
            v42 = *(v66 + v32);
            if (v42 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter() > 1)
              {
LABEL_42:
                v43 = objc_opt_self();
                dispatch thunk of AXLTCaption.time.getter();
                v44 = String._bridgeToObjectiveC()();

                v45 = [v43 now];
                v46 = v64;
                static Date._unconditionallyBridgeFromObjectiveC(_:)();

                isa = Date._bridgeToObjectiveC()().super.isa;
                (*v61)(v46, v65);
                v48 = [v43 dateToString:isa];

                if (!v48)
                {
                  static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v48 = String._bridgeToObjectiveC()();
                }

                [v43 timeDifferenceDateStringOld:v44 dateStringNew:{v48, v60}];
                v50 = v49;

                if (v4 >= v50)
                {
                }

                v51 = *(v66 + v32);

                v52 = sub_10002F7B0(v39, v51);
                v54 = v53;

                v35 = v63;
                if ((v54 & 1) == 0)
                {
                  swift_beginAccess();
                  v55 = sub_10002BEF4(v52);
                  swift_endAccess();

                  v56 = static os_log_type_t.debug.getter();
                  result = AXLogLiveTranscription();
                  if (!result)
                  {
                    goto LABEL_63;
                  }

                  v57 = result;
                  if (os_log_type_enabled(result, v56))
                  {
                    v58 = v39;
                    v59 = swift_slowAlloc();
                    *v59 = v60;
                    *(v59 + 4) = AXLTCaption.id.getter();

                    _os_log_impl(&_mh_execute_header, v57, v56, "Removed from unlockedCaptions id: %ld", v59, 0xCu);
                    v35 = v63;
                  }
                }
              }
            }

            else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) > 1)
            {
              goto LABEL_42;
            }
          }

          ++v36;
          if (v40 == v34)
          {
          }

          goto LABEL_34;
        }

        goto LABEL_8;
      }
    }

    dispatch thunk of AXLTCaption.time.getter();
    v13 = String.count.getter();

    if (v13 >= 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v14 = v67[0] >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v67[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v14 > 1)
      {
        v15 = v9;
        v16 = objc_opt_self();
        dispatch thunk of AXLTCaption.time.getter();
        v17 = String._bridgeToObjectiveC()();

        v18 = [v16 now];
        v19 = v64;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = Date._bridgeToObjectiveC()().super.isa;
        (*v62)(v19, v65);
        v21 = [v16 dateToString:v20];

        if (!v21)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = String._bridgeToObjectiveC()();
        }

        [v16 timeDifferenceDateStringOld:v17 dateStringNew:{v21, v60}];
        v23 = v22;

        if (v4 >= v23)
        {

          goto LABEL_29;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v24 = sub_10002F7B0(v11, v67[0]);
        v26 = v25;

        v9 = v15;
        if ((v26 & 1) == 0)
        {
          break;
        }
      }
    }

LABEL_10:

    ++v8;
    if (v12 == v7)
    {
      goto LABEL_29;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v27 = static Published.subscript.modify();

  v27(v67, 0);

  v28 = static os_log_type_t.debug.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v29 = result;
    if (os_log_type_enabled(result, v28))
    {
      v30 = v11;
      v31 = swift_slowAlloc();
      *v31 = v60;
      *(v31 + 4) = AXLTCaption.id.getter();

      _os_log_impl(&_mh_execute_header, v29, v28, "Removed from captions id: %ld", v31, 0xCu);
    }

    v9 = v15;
    goto LABEL_10;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

unint64_t sub_10002F7B0(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
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
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    type metadata accessor for AXLTCaption();
    v8 = static NSObject.== infix(_:_:)();

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

void sub_10002F8E8()
{
  v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v1 + 16) = 16;
  v2 = vdupq_n_s64(0x3FB999999999999AuLL);
  *(v1 + 32) = v2;
  *(v1 + 48) = v2;
  *(v1 + 64) = v2;
  *(v1 + 80) = v2;
  *(v1 + 96) = v2;
  *(v1 + 112) = v2;
  *(v1 + 128) = v2;
  *(v1 + 144) = v2;
  v3 = OBJC_IVAR___AXLTCaptionsProvider_audioHistogram;
  swift_beginAccess();
  *&v0[v3] = v1;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v5 != *(*&v0[v3] + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v0;
    static Published.subscript.setter();
  }
}

uint64_t sub_10002FA0C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002FA4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

NSObject *sub_10002FB3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Notification();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = static os_log_type_t.error.getter();
  result = AXLogLiveTranscription();
  if (result)
  {
    v15 = result;
    (*(v10 + 16))(v12, a1, v9);
    v16 = os_log_type_enabled(v15, v13);
    v36 = v5;
    v37 = v4;
    v35 = v7;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      aBlock[0] = v18;
      *v17 = 136315138;
      sub_1000326A0(&qword_100063A80, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      v21 = v20;
      (*(v10 + 8))(v12, v9);
      v22 = sub_100031EB4(v19, v21, aBlock);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v15, v13, "CaptionsProvider AudioSession reset: %s", v17, 0xCu);
      sub_100018190(v18);
    }

    else
    {

      (*(v10 + 8))(v12, v9);
    }

    v23 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
    result = swift_beginAccess();
    if (v2[v23] == 1)
    {
      v24 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
      result = swift_beginAccess();
      if (!*&v2[v24])
      {
        v25 = OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed;
        if (v2[OBJC_IVAR___AXLTCaptionsProvider_audioSessionSubscribed] == 1)
        {
          v26 = [objc_opt_self() defaultCenter];
          v27 = [objc_opt_self() sharedInstance];
          [v26 removeObserver:v2 name:AVAudioSessionInterruptionNotification object:v27];

          v2[v25] = 0;
        }

        if (qword_100062788 != -1)
        {
          swift_once();
        }

        sub_1000278D8(0);
        [*&v2[OBJC_IVAR___AXLTCaptionsProvider_transcription] resetTranscribing:0];
        sub_100017E20(0, &unk_100063A60, OS_dispatch_queue_ptr);
        v28 = static OS_dispatch_queue.main.getter();
        v29 = swift_allocObject();
        *(v29 + 16) = v2;
        aBlock[4] = sub_100032698;
        aBlock[5] = v29;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100029AE4;
        aBlock[3] = &unk_10005ED60;
        v30 = _Block_copy(aBlock);
        v31 = v2;

        v32 = v38;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1000326A0(&qword_100063718, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100003968(&unk_100063A70, &qword_100048E48);
        sub_100003E3C(&qword_100063720, &unk_100063A70, &qword_100048E48, &protocol conformance descriptor for [A]);
        v33 = v40;
        v34 = v37;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v30);

        (*(v36 + 8))(v33, v34);
        return (*(v39 + 8))(v32, v35);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10003017C(uint64_t a1)
{
  v2 = OBJC_IVAR___AXLTCaptionsProvider_isTranscribing;
  swift_beginAccess();
  if (*(a1 + v2) == 1)
  {
    v3 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
    swift_beginAccess();
    if (!*(a1 + v3))
    {
      if (qword_100062788 != -1)
      {
        swift_once();
      }

      sub_1000278D8(1);
    }
  }
}

void sub_10003031C()
{
  AXLTCaptionsProvider.stopTranscribing()();
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v1 = static AXLTSettingsManager.shared;
  v2 = OBJC_IVAR___AXLTSettingsManager_isMicOn;
  swift_beginAccess();
  v3 = (*(v1 + v2) & 1) == 0;
  v4 = OBJC_IVAR___AXLTCaptionsProvider_activeRequestType;
  swift_beginAccess();
  *(v0 + v4) = v3;
  AXLTCaptionsProvider.startTranscribing()();
  sub_10002D910(0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v11 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v11 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = __OFSUB__(v6, 2);
    v8 = v6 - 2;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v11 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v9 = *(v11 + 8 * v8 + 32);
LABEL_13:
          v10 = v9;

          dispatch thunk of AXLTCaption.actionType.setter();

          return;
        }

        __break(1u);
        return;
      }
    }

    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_13;
  }
}

uint64_t sub_100030598()
{
  v1 = OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer;
  v2 = *(v0 + OBJC_IVAR___AXLTCaptionsProvider_placeholderTimer);
  if (!v2)
  {
    static os_log_type_t.debug.getter();
    v3 = AXLogLiveTranscription();
    if (!v3)
    {
      __break(1u);
      return _objc_release_x1();
    }

    v4 = v3;
    os_log(_:dso:log:_:_:)();

    v2 = *(v0 + v1);
  }

  [v2 invalidate];
  v5 = objc_opt_self();
  placeholderTimeInterval.getter();
  *(v0 + v1) = [v5 scheduledTimerWithTimeInterval:v0 target:"addPlaceholder" selector:0 userInfo:0 repeats:?];

  return _objc_release_x1();
}

void sub_100030684()
{
  static os_log_type_t.debug.getter();
  v0 = AXLogLiveTranscription();
  if (!v0)
  {
    goto LABEL_20;
  }

  v1 = v0;
  os_log(_:dso:log:_:_:)();

  sub_10002D910(0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v8 >> 62)
    {
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = __OFSUB__(v3, 2);
    v5 = v3 - 2;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v8 & 0xC000000000000001) == 0)
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v5 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v6 = *(v8 + 8 * v5 + 32);
LABEL_12:
          v7 = v6;

          dispatch thunk of AXLTCaption.actionType.setter();

          return;
        }

        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }
    }

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }
}

void AXLTCaptionsProvider.phoneCallListenerCallConnected(_:call:)(uint64_t a1)
{
  static os_log_type_t.default.getter();
  v1 = AXLogLiveTranscription();
  if (v1)
  {
    v2 = v1;
    os_log(_:dso:log:_:_:)();

    if (qword_100062788 != -1)
    {
      swift_once();
    }

    v3 = static AXLTSettingsManager.shared;
    v4 = OBJC_IVAR___AXLTSettingsManager_inCallOn;
    swift_beginAccess();
    if (*(v3 + v4) == 1)
    {
      AXLTCaptionsProvider.stopTranscribing()();
      AXLTCaptionsProvider.startTranscribing()();
    }
  }

  else
  {
    __break(1u);
  }
}

void AXLTCaptionsProvider.phoneCallListenerCallEnded(_:call:)(uint64_t a1)
{
  static os_log_type_t.default.getter();
  v2 = AXLogLiveTranscription();
  if (v2)
  {
    v3 = v2;
    os_log(_:dso:log:_:_:)();

    if (*(v1 + OBJC_IVAR___AXLTCaptionsProvider_activePid) == -2)
    {
      sub_100030DCC();
      AXLTCaptionsProvider.stopTranscribing()();

      AXLTCaptionsProvider.startTranscribing()();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100030DCC()
{
  static os_log_type_t.debug.getter();
  v1 = AXLogLiveTranscription();
  if (!v1)
  {
    goto LABEL_57;
  }

  v2 = v1;
  os_log(_:dso:log:_:_:)();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v3 = v43[0];
  v42 = v0;
  if (v43[0] >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v4 = *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_4:
      if (v4 >= 1)
      {
        v5 = 0;
        v41 = v43[0] & 0xC000000000000001;
        v6 = &unk_100049098;
        while (1)
        {
          v8 = v41 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v3 + 8 * v5 + 32);
          v9 = v8;
          v10 = AXLTCaption.appID.getter();
          v12 = v11;
          if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
          {
            break;
          }

          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v14)
          {
            goto LABEL_16;
          }

LABEL_8:
          if (v4 == ++v5)
          {
            goto LABEL_20;
          }
        }

LABEL_16:
        swift_getKeyPath();
        swift_getKeyPath();
        v15 = v6;
        static Published.subscript.getter();

        v16 = sub_10002F7B0(v9, v43[0]);
        v18 = v17;

        if (v18)
        {
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v7 = static Published.subscript.modify();

          v7(v43, 0);
        }

        v6 = v15;
        goto LABEL_8;
      }

      __break(1u);
      goto LABEL_51;
    }
  }

LABEL_20:

  v19 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
  swift_beginAccess();
  v20 = *(v42 + v19);
  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (v21)
  {
LABEL_22:
    if (v21 < 1)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v22 = 0;
    while (1)
    {
      v23 = (v20 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v20 + 8 * v22 + 32);
      v24 = v23;
      v25 = AXLTCaption.appID.getter();
      v27 = v26;
      if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
      {
        break;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_32;
      }

LABEL_24:
      ++v22;

      if (v21 == v22)
      {

        goto LABEL_35;
      }
    }

LABEL_32:
    v30 = *(v42 + v19);

    v31 = sub_10002F7B0(v24, v30);
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      swift_beginAccess();
      v34 = sub_10002BEF4(v31);
      swift_endAccess();

      v24 = v34;
    }

    goto LABEL_24;
  }

LABEL_35:
  sub_10002D910(0, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v44 >> 62)
  {
    v35 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v35 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v35 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (!(v44 >> 62))
    {
      v36 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_40;
    }

LABEL_52:
    v36 = _CocoaArrayWrapper.endIndex.getter();
LABEL_40:

    v37 = __OFSUB__(v36, 2);
    v38 = v36 - 2;
    if (v37)
    {
      __break(1u);
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if ((v44 & 0xC000000000000001) == 0)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v38 < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v39 = *(v44 + 8 * v38 + 32);
LABEL_45:
          v40 = v39;

          dispatch thunk of AXLTCaption.actionType.setter();

          return;
        }

        __break(1u);
LABEL_57:
        __break(1u);
        return;
      }
    }

    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_45;
  }
}

Swift::Void __swiftcall AXLTCaptionsProvider.screenLockStateChanged(_:)(Swift::Bool a1)
{
  v3 = v1;
  v5 = static os_log_type_t.debug.getter();
  v6 = AXLogLiveTranscription();
  if (!v6)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v7 = v6;
  if (os_log_type_enabled(v6, v5))
  {
    v2 = swift_slowAlloc();
    *v2 = 67109120;
    *(v2 + 1) = a1;
    _os_log_impl(&_mh_execute_header, v7, v5, "screenLockStateChanged: %{BOOL}d", v2, 8u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  if (!a1)
  {
    static Published.subscript.getter();

    v18 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
    swift_beginAccess();
    sub_100031CE4(v47[0]);
    swift_endAccess();
    v19 = *&v3[v18];
    swift_getKeyPath();
    swift_getKeyPath();
    v47[0] = v19;

    v20 = v3;
    static Published.subscript.setter();
    *&v3[v18] = _swiftEmptyArrayStorage;

    return;
  }

  static Published.subscript.getter();

  if (v47[0] >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 < 1)
  {
    goto LABEL_27;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v47[0] >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((v47[0] & 0xC000000000000001) == 0)
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v11 < *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v12 = *(v47[0] + 8 * v11 + 32);
        goto LABEL_15;
      }

      __break(1u);
LABEL_53:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_43;
    }
  }

  v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_15:
  v13 = v12;

  v14 = AXLTCaption.appID.getter();
  v16 = v15;

  if (v14 == placeholderID.getter() && v16 == v17)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v47[0] >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 == 1)
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v47[0] >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    v10 = __OFSUB__(i, 1);
    v24 = i - 1;
    if (v10)
    {
      __break(1u);
      goto LABEL_61;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v25 = static Published.subscript.modify();

    v25(v47, 0);

LABEL_27:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26 = v47[0] >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

    v27 = OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption;
    if (v26 < 1)
    {
      break;
    }

    v28 = *&v3[OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption];
    if (!v28)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v29 = v28;
    static Published.subscript.getter();

    if (v47[0] >> 62)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v30 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v29;
    v33 = static Published.subscript.modify();
    v35 = v34;
    v36 = *v34;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v35 = v36;
    if (!isUniquelyReferenced_nonNull_bridgeObject || (v36 & 0x8000000000000000) != 0 || (v36 & 0x4000000000000000) != 0)
    {
      v36 = sub_10003245C(v36);
      *v35 = v36;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      goto LABEL_57;
    }

    if (v31 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 8 * v31 + 0x20);
      *((v36 & 0xFFFFFFFFFFFFFF8) + 8 * v31 + 0x20) = v32;

      v33(v47, 0);

      v27 = OBJC_IVAR___AXLTCaptionsProvider_lastFinalCaption;
      break;
    }

LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v39 = *&v3[v27];
  *&v3[v27] = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v40 = v47[0];
  v41 = OBJC_IVAR___AXLTCaptionsProvider_unlockedCaptions;
  swift_beginAccess();
  *&v3[v41] = v40;

  swift_getKeyPath();
  swift_getKeyPath();
  v42 = static Published.subscript.modify();
  *v43 = _swiftEmptyArrayStorage;

  v42(v47, 0);

  v44 = *&v3[OBJC_IVAR___AXLTCaptionsProvider_currentCaption];
  if (!v44)
  {
    sub_10002D910(0, 0);
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v44;
  v3 = static Published.subscript.modify();
  v46 = v45;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_53;
  }

LABEL_43:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (v3)(v47, 0);
}

uint64_t sub_100031CE4(unint64_t a1)
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
  sub_1000326E8(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000328E4(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_100031E28@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AXLTCaptionsProvider(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AXLTCaptionsProvider(uint64_t a1)
{
  result = qword_100063A40;
  if (!qword_100063A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100031EB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100031F80(v11, 0, 0, 1, a1, a2);
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
    sub_10000B3C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100018190(v11);
  return v7;
}

unint64_t sub_100031F80(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10003208C(a5, a6);
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

void *sub_10003208C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1000320D8(a1, a2);
  sub_100032208(&off_10005DC10);
  return v3;
}

void *sub_1000320D8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1000322F4(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1000322F4(v10, 0);
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

uint64_t sub_100032208(uint64_t result)
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

  result = sub_100032368(result, v11, 1, v3);
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

void *sub_1000322F4(uint64_t a1, uint64_t a2)
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

  sub_100003968(&qword_100063A88, &qword_1000491F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100032368(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003968(&qword_100063A88, &qword_1000491F0);
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

uint64_t sub_10003245C(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void sub_1000324C8(uint64_t a1)
{
  sub_1000325E4(319);
  if (v1 <= 0x3F)
  {
    sub_100032648();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000325E4(uint64_t a1)
{
  if (!qword_100063A50)
  {
    sub_100003AC0(&qword_1000638B0, &qword_100048610);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100063A50);
    }
  }
}

void sub_100032648()
{
  if (!qword_100063A58)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100063A58);
    }
  }
}

uint64_t sub_1000326A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000326E8(uint64_t a1, char a2)
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

void (*sub_100032788(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100032808;
  }

  __break(1u);
  return result;
}

uint64_t sub_100032810()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100032848()
{
  result = qword_100063A98;
  if (!qword_100063A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063A98);
  }

  return result;
}

uint64_t sub_10003289C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000328E4(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100003E3C(&qword_100063AA0, &qword_1000638B0, &qword_100048610, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003968(&qword_1000638B0, &qword_100048610);
            v9 = sub_100032788(v13, i, a3);
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
        type metadata accessor for AXLTCaption();
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

void sub_100032A88(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static os_log_type_t.debug.getter();
  v8 = AXLogLiveTranscription();
  if (v8)
  {
    v9 = v8;
    (*(v4 + 16))(v6, a1, v3);
    if (os_log_type_enabled(v9, v7))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 136315138;
      sub_1000326A0(&qword_100063A80, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v4 + 8))(v6, v3);
      v15 = sub_100031EB4(v12, v14, v24);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v7, "CaptionsProvider AudioSession interruption: %s", v10, 0xCu);
      sub_100018190(v11);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    v16 = Notification.userInfo.getter();
    if (v16)
    {
      v17 = v16;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v18;
      AnyHashable.init<A>(_:)();
      if (*(v17 + 16) && (v19 = sub_10003C2DC(v24), (v20 & 1) != 0))
      {
        sub_10000B3C8(*(v17 + 56) + 32 * v19, v25);
        sub_10000B374(v24);

        if (swift_dynamicCast())
        {
          if (v22)
          {
            if (v22 == 1)
            {
              if (qword_100062788 != -1)
              {
                swift_once();
              }

              sub_1000278D8(0);
            }
          }

          else
          {
            if (qword_100062788 != -1)
            {
              swift_once();
            }

            sub_1000278D8(1);
          }
        }
      }

      else
      {

        sub_10000B374(v24);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100032E64()
{
  result = qword_100063AC0;
  if (!qword_100063AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063AC0);
  }

  return result;
}

uint64_t sub_100032EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v165 = a3;
  v5 = type metadata accessor for GeometryProxy();
  v154 = *(v5 - 8);
  v155 = v5;
  __chkstk_darwin(v5);
  v151 = v6;
  v152 = &v125[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for AccessibilityTraits();
  v148 = *(v7 - 8);
  v149 = v7;
  __chkstk_darwin(v7);
  v145 = &v125[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PlainButtonStyle();
  v132 = *(v9 - 8);
  v133 = v9;
  __chkstk_darwin(v9);
  v131 = &v125[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v144 = type metadata accessor for ButtonView(0);
  v172 = *(v144 - 8);
  v11 = *(v172 + 64);
  __chkstk_darwin(v144);
  v12 = sub_100003968(&qword_100063B98, &qword_100049318);
  v129 = *(v12 - 8);
  v130 = v12;
  __chkstk_darwin(v12);
  v127 = &v125[-v13];
  v134 = sub_100003968(&qword_100063BA0, &qword_100049320);
  __chkstk_darwin(v134);
  v128 = &v125[-v14];
  v166 = sub_100003968(&qword_100063BA8, &qword_100049328);
  __chkstk_darwin(v166);
  v135 = &v125[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v137 = &v125[-v17];
  __chkstk_darwin(v18);
  v139 = &v125[-v19];
  v20 = sub_100003968(&qword_100063BB0, &qword_100049330);
  v142 = *(v20 - 8);
  v143 = v20;
  __chkstk_darwin(v20);
  v141 = &v125[-v21];
  v140 = sub_100003968(&qword_100063BB8, &qword_100049338);
  __chkstk_darwin(v140);
  v147 = &v125[-v22];
  v146 = sub_100003968(&qword_100063BC0, &qword_100049340);
  __chkstk_darwin(v146);
  v150 = &v125[-v23];
  v169 = sub_100003968(&qword_100063BC8, &qword_100049348);
  __chkstk_darwin(v169);
  v156 = &v125[-v24];
  v25 = sub_100003968(&qword_100063BD0, &qword_100049350);
  v158 = *(v25 - 8);
  v159 = v25;
  __chkstk_darwin(v25);
  v157 = &v125[-v26];
  v27 = sub_100003968(&qword_100063BD8, &qword_100049358);
  v162 = *(v27 - 8);
  v163 = v27;
  __chkstk_darwin(v27);
  v161 = &v125[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v29);
  v160 = &v125[-v30];
  v170 = static Color.white.getter();
  v32 = *(a2 + 120);
  v180 = *(a2 + 112);
  v31 = v180;
  *v181 = v32;
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  v180 = v31;
  *v181 = v32;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v194[6] = v196[0];
  *&v194[22] = v196[1];
  *&v194[38] = v196[2];
  v168 = a1;
  GeometryProxy.size.getter();
  v138 = v33;
  v180 = v31;
  *v181 = v32;
  State.wrappedValue.getter();
  v136 = *v174;
  v173 = a2;
  v126 = *(a2 + 16);
  if (v126 <= 1 && (v34 = *(v173 + 104), LOBYTE(v180) = *(v173 + 96), *v181 = v34, sub_100003968(&qword_100062FF0, &unk_100048670), State.wrappedValue.getter(), (v174[0] & 1) != 0))
  {
    v35 = 0x3FECCCCCCCCCCCCDLL;
  }

  else
  {
    v35 = 0x3FB999999999999ALL;
  }

  v153 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v195 = 0;
  v44 = v173;
  sub_100008314(v173, &v125[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v45 = *(v172 + 80);
  v46 = (v45 + 16) & ~v45;
  v167 = v46 + v11;
  v171 = v45 | 7;
  v47 = swift_allocObject();
  v172 = v46;
  v164 = &v125[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = sub_100035344(v164, v47 + v46);
  __chkstk_darwin(v48);
  *&v125[-16] = v44;
  sub_100003968(&qword_1000634F0, &unk_100048BF0);
  sub_10001FCD0();
  v49 = v127;
  Button.init(action:label:)();
  v50 = v131;
  PlainButtonStyle.init()();
  sub_100003E3C(&qword_100063BE0, &qword_100063B98, &qword_100049318, &protocol conformance descriptor for Button<A>);
  sub_100035868(&qword_100063BE8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v51 = v128;
  v52 = v130;
  v53 = v133;
  View.buttonStyle<A>(_:)();
  (*(v132 + 8))(v50, v53);
  (*(v129 + 8))(v49, v52);
  v54 = *(v44 + 8);
  *(v51 + *(sub_100003968(&qword_100063BF0, &qword_100049380) + 36)) = v54;
  v180 = v31;
  *v181 = v32;
  State.wrappedValue.getter();
  v180 = v31;
  *v181 = v32;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v55 = (v51 + *(sub_100003968(&qword_100063BF8, &qword_100049388) + 36));
  v56 = v196[4];
  *v55 = v196[3];
  v55[1] = v56;
  v55[2] = v196[5];
  v57 = v51 + *(sub_100003968(&qword_100063C00, &qword_100049390) + 36);
  *v57 = 0;
  *(v57 + 8) = 0;
  *(v57 + 16) = 0;
  GeometryProxy.size.getter();
  v59 = v58 * 0.5;
  v180 = v31;
  *v181 = v32;
  State.wrappedValue.getter();
  v60 = v51 + *(v134 + 36);
  *v60 = v59 - *v174 * 0.5;
  *(v60 + 8) = 0;
  v180 = sub_1000347CC();
  *v181 = v61;
  sub_10000B6A0();
  v62 = Text.init<A>(_:)();
  v64 = v63;
  v66 = v65;
  sub_100035490();
  v67 = v135;
  View.accessibility(label:)();
  sub_10000B6F4(v62, v64, v66 & 1);

  sub_100003CE8(v51, &qword_100063BA0, &qword_100049320);
  v68 = v137;
  ModifiedContent<>.accessibility(identifier:)();

  sub_100003CE8(v67, &qword_100063BA8, &qword_100049328);
  v69 = *(v173 + 104);
  LOBYTE(v180) = *(v173 + 96);
  *v181 = v69;
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();
  v71 = v148;
  v70 = v149;
  if (LOBYTE(v174[0]) == 1)
  {
    sub_100003968(&qword_100063C78, &unk_1000496D0);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_100048930;
    static AccessibilityTraits.isSelected.getter();
    v180 = v72;
  }

  else
  {
    v180 = _swiftEmptyArrayStorage;
  }

  sub_100035868(&qword_100063C38, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  sub_100003968(&qword_100063C40, &qword_1000493A8);
  sub_100003E3C(&qword_100063C48, &qword_100063C40, &qword_1000493A8, &protocol conformance descriptor for [A]);
  v73 = v145;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v74 = v139;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v71 + 8))(v73, v70);
  sub_100003CE8(v68, &qword_100063BA8, &qword_100049328);
  v75 = v173;
  v76 = v173 + *(v144 + 56);
  v148 = sub_100003968(&qword_100063AC8, &qword_1000492A8);
  v149 = v76;
  AccessibilityFocusState.projectedValue.getter();
  sub_1000357AC();
  v77 = v141;
  View.accessibilityFocused(_:)();

  sub_100003CE8(v74, &qword_100063BA8, &qword_100049328);
  v78 = v164;
  sub_100008314(v75, v164);
  v80 = v154;
  v79 = v155;
  v81 = v152;
  (*(v154 + 16))(v152, v168, v155);
  v82 = (v167 + *(v80 + 80)) & ~*(v80 + 80);
  v83 = swift_allocObject();
  sub_100035344(v78, v83 + v172);
  (*(v80 + 32))(v83 + v82, v81, v79);
  v84 = v147;
  (*(v142 + 32))(v147, v77, v143);
  v85 = (v84 + *(v140 + 36));
  *v85 = sub_100035AC8;
  v85[1] = v83;
  v85[2] = 0;
  v85[3] = 0;
  v86 = objc_opt_self();
  v87 = [v86 defaultCenter];
  if (qword_100062720 != -1)
  {
    swift_once();
  }

  v88 = v146;
  v89 = v150;
  NSNotificationCenter.publisher(for:object:)();

  sub_100008314(v173, v78);
  v90 = swift_allocObject();
  sub_100035344(v78, v90 + v172);
  sub_10000BB84(v84, v89, &qword_100063BB8, &qword_100049338);
  v91 = (v89 + *(v88 + 56));
  *v91 = sub_100035B94;
  v91[1] = v90;
  v92 = [v86 defaultCenter];
  if (qword_100062728 != -1)
  {
    swift_once();
  }

  *&v93 = v138 * 0.5 - v136 * 0.5;
  v94 = v169;
  v95 = v156;
  NSNotificationCenter.publisher(for:object:)();

  v96 = v173;
  sub_100008314(v173, v78);
  v97 = swift_allocObject();
  v98 = v172;
  sub_100035344(v78, v97 + v172);
  sub_10000BB84(v89, v95, &qword_100063BC0, &qword_100049340);
  v99 = (v95 + *(v94 + 56));
  *v99 = sub_100035BAC;
  v99[1] = v97;
  v100 = *(v96 + 32);
  v101 = *(v96 + 40);
  v180 = *(v96 + 24);
  *v181 = v100;
  v181[8] = v101;
  sub_100003968(&qword_100062B38, &qword_1000493B0);
  Binding.wrappedValue.getter();
  sub_100008314(v96, v78);
  v102 = swift_allocObject();
  sub_100035344(v78, v102 + v98);
  v103 = sub_100003968(&qword_100062DA0, &unk_1000484C0);
  v104 = sub_100003E3C(&qword_100063C58, &qword_100063BC8, &qword_100049348, &protocol conformance descriptor for SubscriptionView<A, B>);
  v105 = sub_100035C60();
  v106 = v157;
  v107 = v169;
  View.onChange<A>(of:initial:_:)();

  sub_100003CE8(v95, &qword_100063BC8, &qword_100049348);
  AccessibilityFocusState.wrappedValue.getter();
  LOBYTE(v174[0]) = v180;
  sub_100008314(v173, v78);
  v108 = swift_allocObject();
  sub_100035344(v78, v108 + v172);
  v180 = v107;
  *v181 = v103;
  *&v181[8] = v104;
  *&v181[16] = v105;
  swift_getOpaqueTypeConformance2();
  v109 = v159;
  v110 = v160;
  View.onChange<A>(of:initial:_:)();

  (*(v158 + 8))(v106, v109);
  v112 = v161;
  v111 = v162;
  v113 = *(v162 + 16);
  v114 = v163;
  v113(v161, v110, v163);
  *&v174[0] = v170;
  WORD4(v174[0]) = 256;
  *(v174 + 10) = *v194;
  *(&v174[1] + 10) = *&v194[16];
  *(&v174[2] + 10) = *&v194[32];
  *(&v174[3] + 1) = *&v194[46];
  v175 = v93;
  *&v176 = v35;
  LOBYTE(v97) = v153;
  BYTE8(v176) = v153;
  *(&v176 + 9) = *v193;
  HIDWORD(v176) = *&v193[3];
  *&v177 = v37;
  *(&v177 + 1) = v39;
  *&v178 = v41;
  *(&v178 + 1) = v43;
  v179 = 0;
  v115 = v177;
  v116 = v178;
  v117 = v165;
  *(v165 + 128) = 0;
  v117[6] = v115;
  v117[7] = v116;
  v118 = v174[0];
  v119 = v174[1];
  v120 = v176;
  v117[4] = v175;
  v117[5] = v120;
  v121 = v174[3];
  v117[2] = v174[2];
  v117[3] = v121;
  *v117 = v118;
  v117[1] = v119;
  v122 = sub_100003968(&qword_100063C68, &qword_1000493B8);
  v113(v117 + *(v122 + 48), v112, v114);
  sub_100035F14(v174, &v180);
  v123 = *(v111 + 8);
  v123(v110, v114);
  v123(v112, v114);
  v180 = v170;
  *v181 = 256;
  *&v181[2] = *v194;
  *&v181[18] = *&v194[16];
  *v182 = *&v194[32];
  *&v182[14] = *&v194[46];
  v183 = v93;
  v184 = 0;
  v185 = v35;
  v186 = v97;
  *v187 = *v193;
  *&v187[3] = *&v193[3];
  v188 = v37;
  v189 = v39;
  v190 = v41;
  v191 = v43;
  v192 = 0;
  return sub_100035F84(&v180);
}

uint64_t sub_100034358(uint64_t a1)
{
  if (*(a1 + 16) > 1u)
  {
    return (*(a1 + 48))();
  }

  if (*(a1 + 16))
  {
    sub_100003968(&qword_100062FF0, &unk_100048670);
    State.wrappedValue.getter();
    return _AXSLiveTranscriptionSetMicOn();
  }

  else
  {
    sub_100003968(&qword_100062FF0, &unk_100048670);
    State.wrappedValue.getter();
    return _AXSLiveTranscriptionSetPaused();
  }
}

double sub_10003442C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 104);
  HIDWORD(v18) = *(a1 + 96);
  LOBYTE(v27) = BYTE4(v18);
  *(&v27 + 1) = v8;
  sub_100003968(&qword_100062FF0, &unk_100048670);
  State.wrappedValue.getter();

  Image.init(systemName:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = 0.0;
  v10 = Image.resizable(capInsets:resizingMode:)();

  (*(v5 + 8))(v7, v4);
  v12 = *(a1 + 136);
  *&v27 = *(a1 + 128);
  v11 = v27;
  *(&v27 + 1) = v12;
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.getter();
  *&v27 = v11;
  *(&v27 + 1) = v12;
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v26 = 1;
  *&v25[6] = v27;
  *&v25[22] = v28;
  *&v25[38] = v29;
  v13 = *(a1 + 16);
  if (v13 == 4)
  {
    v20 = v11;
    v21 = v12;
    State.wrappedValue.getter();
    v22 = *v25;
    v23 = *&v25[16];
    *v24 = *&v25[32];
    *(&v24[1] + 6) = *&v25[46];
    v9 = v19 / -10.0;
LABEL_6:
    v14 = static Color.white.getter();
    goto LABEL_7;
  }

  v22 = *v25;
  v23 = *&v25[16];
  *v24 = *&v25[32];
  *(&v24[1] + 6) = *&v25[46];
  if (v13 > 1)
  {
    goto LABEL_6;
  }

  LOBYTE(v20) = BYTE4(v18);
  v21 = v8;
  State.wrappedValue.getter();
  if (LOBYTE(v19) != 1)
  {
    goto LABEL_6;
  }

  static Color.black.getter();
  v14 = Color.opacity(_:)();

LABEL_7:
  KeyPath = swift_getKeyPath();
  v16 = v23;
  *(a2 + 18) = v22;
  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v16;
  result = v24[0];
  *(a2 + 50) = *v24;
  *(a2 + 64) = *(&v24[1] + 6);
  *(a2 + 72) = v9;
  *(a2 + 80) = 0;
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = v14;
  return result;
}

void sub_10003484C(double a1)
{
  sub_100003968(&qword_100062B18, &unk_100049360);
  State.wrappedValue.setter();
  State.wrappedValue.getter();
  State.wrappedValue.setter();
  if (*(v1 + 16) == 1)
  {
    if (qword_100062790 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100003968(&qword_100062FF0, &unk_100048670);
    State.wrappedValue.setter();

    State.wrappedValue.getter();
    State.wrappedValue.setter();
  }

  else if (!*(v1 + 16))
  {
    if (qword_100062790 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100003968(&qword_100062FF0, &unk_100048670);
    State.wrappedValue.setter();
  }
}

void sub_100034AC0(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    v8 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v9), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v11);
      sub_10000B374(v9);

      if ((swift_dynamicCast() & 1) != 0 && *(a2 + 16) == 1)
      {
        v7 = *(a2 + 104);
        v9[0] = *(a2 + 96);
        v10 = v7;
        v11[0] = v8;
        sub_100003968(&qword_100062FF0, &unk_100048670);
        State.wrappedValue.setter();
      }
    }

    else
    {

      sub_10000B374(v9);
    }
  }
}

void sub_100034BD4(uint64_t a1, uint64_t a2)
{
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    v8 = notificationValueKey.getter();
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_10003C2DC(v9), (v6 & 1) != 0))
    {
      sub_10000B3C8(*(v4 + 56) + 32 * v5, v11);
      sub_10000B374(v9);

      if ((swift_dynamicCast() & 1) != 0 && !*(a2 + 16))
      {
        v7 = *(a2 + 104);
        v9[0] = *(a2 + 96);
        v10 = v7;
        v11[0] = v8;
        sub_100003968(&qword_100062FF0, &unk_100048670);
        State.wrappedValue.setter();
      }
    }

    else
    {

      sub_10000B374(v9);
    }
  }
}

uint64_t sub_100034CE4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  type metadata accessor for ButtonView(0);
  sub_100003968(&qword_100063AC8, &qword_1000492A8);
  return AccessibilityFocusState.wrappedValue.setter();
}

void sub_100034D94(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if ((*a2 & 1) == 0)
  {
    sub_100003968(&qword_100062B38, &qword_1000493B0);
    Binding.wrappedValue.getter();
    if (v4 != 5)
    {
      Binding.wrappedValue.getter();
      if (v4 == *(a3 + 16))
      {
        Binding.wrappedValue.setter();
      }
    }
  }
}

uint64_t sub_100034E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003968(&qword_100063AC8, &qword_1000492A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 56);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100034F4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003968(&qword_100063AC8, &qword_1000492A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 56);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ButtonView(uint64_t a1)
{
  result = qword_100063B28;
  if (!qword_100063B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100035048(uint64_t a1)
{
  sub_100035164(319);
  if (v1 <= 0x3F)
  {
    sub_10001F238();
    if (v2 <= 0x3F)
    {
      sub_100008888(319, &qword_100062E58, &type metadata for Bool);
      if (v3 <= 0x3F)
      {
        sub_100008888(319, &qword_100062E48, &type metadata for CGFloat);
        if (v4 <= 0x3F)
        {
          sub_1000351C8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100035164(uint64_t a1)
{
  if (!qword_100063B38)
  {
    sub_100003AC0(&qword_100062DA0, &unk_1000484C0);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &qword_100063B38);
    }
  }
}

void sub_1000351C8()
{
  if (!qword_100063B40)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_100063B40);
    }
  }
}

uint64_t sub_10003523C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = static Alignment.center.getter();
  v8 = v7;
  sub_100008314(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  result = sub_100035344(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = sub_1000353A8;
  a2[3] = v10;
  return result;
}

uint64_t sub_100035344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000353A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ButtonView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100032EB8(a1, v6, a2);
}

uint64_t sub_100035428()
{
  v1 = *(type metadata accessor for ButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100034358(v2);
}

unint64_t sub_100035490()
{
  result = qword_100063C08;
  if (!qword_100063C08)
  {
    sub_100003AC0(&qword_100063BA0, &qword_100049320);
    sub_10003551C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C08);
  }

  return result;
}

unint64_t sub_10003551C()
{
  result = qword_100063C10;
  if (!qword_100063C10)
  {
    sub_100003AC0(&qword_100063C00, &qword_100049390);
    sub_1000355D4();
    sub_100003E3C(&qword_100063C28, &qword_100063C30, &unk_100049398, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C10);
  }

  return result;
}

unint64_t sub_1000355D4()
{
  result = qword_100063C18;
  if (!qword_100063C18)
  {
    sub_100003AC0(&qword_100063BF8, &qword_100049388);
    sub_100035660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C18);
  }

  return result;
}

unint64_t sub_100035660()
{
  result = qword_100063C20;
  if (!qword_100063C20)
  {
    sub_100003AC0(&qword_100063BF0, &qword_100049380);
    sub_100003AC0(&qword_100063B98, &qword_100049318);
    type metadata accessor for PlainButtonStyle();
    sub_100003E3C(&qword_100063BE0, &qword_100063B98, &qword_100049318, &protocol conformance descriptor for Button<A>);
    sub_100035868(&qword_100063BE8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C20);
  }

  return result;
}

unint64_t sub_1000357AC()
{
  result = qword_100063C50;
  if (!qword_100063C50)
  {
    sub_100003AC0(&qword_100063BA8, &qword_100049328);
    sub_100035490();
    sub_100035868(&qword_100062D08, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C50);
  }

  return result;
}

uint64_t sub_100035868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000358B0()
{
  v1 = (type metadata accessor for ButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for GeometryProxy();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v13 = *(v6 + 64);

  v8 = v0 + v3 + v1[16];
  v9 = type metadata accessor for AccessibilityTechnologies();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  sub_100003968(&qword_100063AC8, &qword_1000492A8);

  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v11 + v13, v2 | v7 | 7);
}

void sub_100035AC8()
{
  type metadata accessor for ButtonView(0);
  type metadata accessor for GeometryProxy();
  GeometryProxy.size.getter();
  sub_10003484C(v0);
}

uint64_t sub_100035BC4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ButtonView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_100035C60()
{
  result = qword_100063C60;
  if (!qword_100063C60)
  {
    sub_100003AC0(&qword_100062DA0, &unk_1000484C0);
    sub_100032E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100063C60);
  }

  return result;
}

uint64_t sub_100035CE4()
{
  v1 = (type metadata accessor for ButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[16];
  v6 = type metadata accessor for AccessibilityTechnologies();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  sub_100003968(&qword_100063AC8, &qword_1000492A8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100035E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for ButtonView(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_100035F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003968(&qword_100063C70, &unk_1000493C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100035F84(uint64_t a1)
{
  v2 = sub_100003968(&qword_100063C70, &unk_1000493C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}