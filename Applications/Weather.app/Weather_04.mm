void sub_100073B0C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1000A403C();
    if (v21)
    {
      v5 = 0;
      v6 = v4 + 56;
      sub_1002E4F88();
      sub_1002E589C();
      v8 = v7 >> 6;
      if (v2)
      {
        while (2)
        {
          sub_1002E4CD8();
LABEL_11:
          v14 = (*(v9 + 48) + 16 * (v10 | (v5 << 6)));
          v16 = *v14;
          v15 = v14[1];
          Hasher.init(_seed:)();

          String.hash(into:)();
          v17 = Hasher._finalize()();
          v18 = ~(-1 << *(a2 + 32));
          do
          {
            v19 = v17 & v18;
            if (((*(a2 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {

              return;
            }

            v20 = (*(a2 + 48) + 16 * v19);
            v21 = *v20 == v16 && v20[1] == v15;
            if (v21)
            {
              break;
            }

            v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v17 = v19 + 1;
          }

          while ((v22 & 1) == 0);

          if (v2)
          {
            continue;
          }

          break;
        }
      }

      v11 = v5;
      while (1)
      {
        v5 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v5 >= v8)
        {
          return;
        }

        ++v11;
        if (*(v6 + 8 * v5))
        {
          sub_1000C825C();
          v2 = v13 & v12;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_100073CE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_100073D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073D90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073E90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073ED0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073EF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073F90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100073FF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074000(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074010(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074020(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074030(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074040(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074050(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074060(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074070(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074090(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000740F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074100(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100074110(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10022C350(&qword_100CEF348, &unk_100AA7E08) - 8;
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Date();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  sub_1000161C0((v1 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_clock), *(v1 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_clock + 24));
  dispatch thunk of Clock.time.getter();
  v14 = sub_1000161C0((v2 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_queue), *(v2 + OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_queue + 24));
  v15 = *(v3 + 72);
  *v6 = v2;
  sub_100095588();
  (*(v9 + 16))(&v6[v15], v13, v7);
  v16 = *v14;

  sub_100054814(v6, sub_1000D839C, 0, v16);
  sub_1000180EC(v6, &qword_100CEF348, &unk_100AA7E08);
  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_1000742F0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100074334(uint64_t a1)
{
  sub_100036220(&qword_100CBCEE8, byte_100A53D74);

  return ShortDescribable.description.getter();
}

unint64_t sub_100074390()
{
  result = qword_100CD81C0;
  if (!qword_100CD81C0)
  {
    v3 = type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable(&protocol conformance descriptor for DispatchWorkItemFlags, v3, v0, v1);
    atomic_store(result, &qword_100CD81C0);
  }

  return result;
}

unint64_t sub_1000743E8()
{
  result = qword_100CD81D0;
  if (!qword_100CD81D0)
  {
    v3 = sub_10022E824(&qword_100CB4680, &qword_100A2EC00);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100CD81D0);
  }

  return result;
}

uint64_t sub_100074450()
{
  v1 = sub_1000161C0((v0 + 32), *(v0 + 56));
  sub_1000567D8(v1, v2);
  return dispatch thunk of LocationMetadataManagerType.addObserver(_:)();
}

void sub_1000744A4(void *a1)
{
  v2.is_nil = swift_getObjectType();
  v2.value._rawValue = a1;

  ApplicationStateMonitor.applicationDidFinishLaunching(withOptions:)(v2);
}

uint64_t sub_1000744F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000926F8;

  return sub_10005682C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1000745B8()
{

  return IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)();
}

double sub_1000745EC@<D0>(char a2@<W8>)
{
  *(v2 - 120) = a2;

  swift_beginAccess();
  return result;
}

uint64_t sub_10007463C()
{

  return sub_100035AD0(v5 + v3, v4 + v2, v0, v1);
}

uint64_t sub_10007469C(uint64_t a1)
{
  *(v1 + 448) = a1;
  *v2 = *(v1 + 112);
  return *(v1 + 184);
}

uint64_t sub_100074770(uint64_t a1)
{

  return sub_100024D10(v1, 1, a1);
}

uint64_t sub_1000747C0@<X0>(uint64_t a1@<X8>)
{
  v2[5] = v4;
  v2[6] = v3;
  v2[7] = v1;
  v2[14] = 0xD000000000000010;
  v2[15] = (a1 - 32) | 0x8000000000000000;
}

uint64_t sub_100074814@<X0>(uint64_t a1@<X8>)
{

  return sub_100355208(v2, v1 - a1);
}

uint64_t sub_100074834()
{

  return sub_1000359CC(v0 - 120);
}

void sub_10007484C(uint64_t a1@<X8>, __n128 a2@<Q2>, __n128 a3@<Q3>)
{
  *(v3 - 192) = a2;
  *(v3 - 176) = a3;
  *(v3 - 120) = a1;
  *(v3 - 112) = v3 - 192;
}

uint64_t sub_100074868()
{
  sub_10003BCD8();
  sub_10003BCD8();
}

void sub_100074924()
{
  *(v0 - 112) = 0;
  *(v0 - 104) = 0xE000000000000000;

  _StringGuts.grow(_:)(85);
}

uint64_t sub_1000749E0(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
}

uint64_t sub_100074A1C(uint64_t a1)
{

  return sub_1000180EC(a1, v1, v2);
}

uint64_t sub_100074A80()
{

  return sub_1004A2D64(v0, type metadata accessor for CalendarGridCellViewModel);
}

id sub_100074B5C()
{
  v3 = *(v1 + 3744);

  return [v0 v3];
}

uint64_t sub_100074B8C@<X0>(uint64_t a1@<X8>)
{

  return sub_100035AD0(v1 + a1, v2, v3, v4);
}

uint64_t sub_100074BB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3[9] = a3;
  v3[6] = result;
  v3[7] = a2;
  return result;
}

uint64_t sub_100074BC4()
{

  return sub_100024D10(v1, 1, v0);
}

uint64_t sub_100074C0C()
{

  return sub_1000DFF38(v0, &type metadata accessor for SavedLocation);
}

uint64_t sub_100074C4C(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

unint64_t sub_100074D08()
{

  return sub_100078694(v0, v1, (v2 - 96));
}

uint64_t sub_100074D48()
{

  return sub_10009EF70(v1 + v0, type metadata accessor for ViewState.SecondaryViewState);
}

uint64_t sub_100074D7C(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_100074D9C()
{
  v2 = *(v0 - 96);

  return sub_100032908(v2, type metadata accessor for PreviewLocation);
}

uint64_t sub_100074DE8()
{
}

uint64_t sub_100074E5C()
{
  sub_1000EBD74(*(v1 + v0[12]), *(v1 + v0[12] + 8));
  sub_1000EBD74(*(v1 + v0[13]), *(v1 + v0[13] + 8));
  v2 = v1 + v0[14];
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 56);
  v14 = *(v2 + 72);
  v13 = *(v2 + 64);

  return sub_100168B1C(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
}

uint64_t sub_100074F38(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100074FD0()
{

  return Logger.init(subsystem:category:)();
}

uint64_t sub_100075030(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000750A0()
{

  return NSObject.hash(into:)();
}

uint64_t sub_100075180(uint64_t a1, uint64_t a2, ...)
{

  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000751D4()
{

  return sub_100078694(v0, v1, (v2 - 160));
}

uint64_t sub_1000752D0()
{

  return sub_10019213C(v0, type metadata accessor for TipPriorityQueue.GridEntry);
}

uint64_t sub_1000752F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100075330()
{

  return type metadata accessor for MoonRiseSet();
}

uint64_t sub_100075358()
{

  return sub_1000E0358(v0, type metadata accessor for ViewState);
}

uint64_t sub_1000753C8@<X0>(uint64_t a1@<X8>)
{

  return sub_100111510(v4 + a1, v3 + v1, v2);
}

uint64_t sub_1000753F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_100075424()
{

  return sub_1009ACC90(v0, type metadata accessor for ListLocationRowPrimaryText);
}

uint64_t sub_100075474()
{

  return sub_100106090(v0, type metadata accessor for ConditionDetailChartDataInputFactoryWithCache.CacheKey);
}

uint64_t sub_1000754AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-1] - v6;
  v8 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17[-1] - v9;
  v11 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v17[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035B30(a2 + OBJC_IVAR____TtC7Weather39WeatherConditionBackgroundStoreObserver_weatherConditionBackgroundTimeDataFactory, v17);
  sub_1000161C0(v17, v17[3]);
  SavedLocation.location.getter();
  v14 = type metadata accessor for WeatherData(0);
  sub_10001B350(v7, 1, 1, v14);
  sub_1000756B0(v10, v7, a3, v13);
  sub_1000180EC(v7, &qword_100CA3898, &qword_100A314D0);
  sub_1000180EC(v10, &qword_100CA65D8, &unk_100A3D9D0);
  sub_10004F830(v13, type metadata accessor for WeatherConditionBackgroundTimeData);
  return sub_100006F14(v17);
}

uint64_t sub_1000756B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a3;
  v131 = a1;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v126 = v7;
  v127 = v6;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v125 = v8;
  v119 = type metadata accessor for CurrentWeather();
  sub_1000037C4();
  v118 = v9;
  __chkstk_darwin(v10);
  sub_1000038E4();
  v117 = v11;
  v138 = type metadata accessor for Elevation();
  sub_1000037C4();
  v124 = v12;
  __chkstk_darwin(v13);
  sub_1000038E4();
  v136 = v14;
  v15 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  v18 = &v113 - v17;
  v139 = type metadata accessor for Location();
  sub_1000037C4();
  v135 = v19;
  __chkstk_darwin(v20);
  sub_1000038E4();
  v134 = v21;
  v22 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_100003848();
  v120 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  v129 = &v113 - v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  v29 = &v113 - v28;
  v30 = sub_10022C350(&qword_100CA75C8, &unk_100A325F0);
  v31 = sub_100003810(v30);
  __chkstk_darwin(v31);
  sub_100003848();
  v130 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  v35 = &v113 - v34;
  v36 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_100003848();
  v122 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v123 = &v113 - v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  v43 = &v113 - v42;
  __chkstk_darwin(v44);
  v46 = &v113 - v45;
  v47 = type metadata accessor for Date();
  sub_1000037C4();
  v49 = v48;
  __chkstk_darwin(v50);
  sub_100003848();
  v116 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  v132 = &v113 - v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  v56 = &v113 - v55;
  static Settings.VFX.overrideConditionBackgroundDate.getter();
  sub_10000556C(v46);
  v121 = a2;
  v133 = v56;
  if (!v57)
  {
    (*(v49 + 32))(v56, v46, v47);
    v62 = v137;
    v63 = a4;
    v64 = v130;
    goto LABEL_14;
  }

  v115 = a4;
  sub_100035AD0(a2, v29, &qword_100CA3898, &qword_100A314D0);
  v58 = type metadata accessor for WeatherData(0);
  if (sub_100024D10(v29, 1, v58) == 1)
  {
    v59 = &qword_100CA3898;
    v60 = &qword_100A314D0;
    v61 = v29;
LABEL_7:
    sub_1000180EC(v61, v59, v60);
    v63 = v115;
    v64 = v130;
    sub_100003934();
    sub_10001B350(v67, v68, v69, v47);
    v62 = v137;
    v56 = v133;
    goto LABEL_8;
  }

  sub_100035AD0(&v29[*(v58 + 36)], v35, &qword_100CA75C8, &unk_100A325F0);
  sub_10001ECD8();
  sub_10046636C(v29, v65);
  v66 = type metadata accessor for WeatherDataOverrides(0);
  if (sub_100024D10(v35, 1, v66) == 1)
  {
    v59 = &qword_100CA75C8;
    v60 = &unk_100A325F0;
    v61 = v35;
    goto LABEL_7;
  }

  sub_100035AD0(&v35[*(v66 + 20)], v43, &unk_100CB2CF0, &unk_100A2D7F0);
  sub_1000146C8();
  sub_10046636C(v35, v70);
  sub_10000556C(v43);
  v63 = v115;
  v62 = v137;
  v56 = v133;
  v64 = v130;
  if (v57)
  {
LABEL_8:
    (*(v49 + 16))(v56, v128, v47);
    sub_10000556C(v43);
    if (!v57)
    {
      sub_1000180EC(v43, &unk_100CB2CF0, &unk_100A2D7F0);
    }

    goto LABEL_12;
  }

  (*(v49 + 32))(v133, v43, v47);
LABEL_12:
  sub_10000556C(v46);
  if (!v57)
  {
    sub_1000180EC(v46, &unk_100CB2CF0, &unk_100A2D7F0);
  }

LABEL_14:
  sub_100035AD0(v131, v18, &qword_100CA65D8, &unk_100A3D9D0);
  v71 = v139;
  v72 = sub_100024D10(v18, 1, v139);
  v73 = v129;
  if (v72 != 1)
  {
    (*(v135 + 32))(v134, v18, v71);
    static GeoHandler.getElevation(for:on:)();
    v81 = v123;
    static Settings.VFX.overrideConditionBackgroundDate.getter();
    sub_10000556C(v81);
    v114 = v49;
    if (!v57)
    {
      v87 = sub_1000197B4();
      v88(v87, v81, v47);
LABEL_32:
      sub_1000161C0((v62 + 16), *(v62 + 40));
      v105 = v125;
      v106 = v134;
      Location.timeZone.getter();
      Location.coordinate.getter();
      v107 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
      v108 = v132;
      dispatch thunk of MoonDataProviderType.weatherBackgroundMoonData(for:timeZone:coordinate:)();
      (*(v126 + 8))(v105, v127);
      v109 = v114;
      (*(v114 + 8))(v108, v47);
      (*(v135 + 8))(v106, v139);
      (*(v109 + 32))(v63, v133, v47);
      v110 = *(v107 + 20);
      v111 = v138;
      (*(v124 + 32))(v63 + v110, v136, v138);
      v77 = v63 + v110;
      v78 = 0;
      v79 = 1;
      v80 = v111;
      return sub_10001B350(v77, v78, v79, v80);
    }

    v82 = v121;
    sub_100035AD0(v121, v73, &qword_100CA3898, &qword_100A314D0);
    v83 = type metadata accessor for WeatherData(0);
    if (sub_100024D10(v73, 1, v83) == 1)
    {
      v84 = &qword_100CA3898;
      v85 = &qword_100A314D0;
      v86 = v73;
    }

    else
    {
      sub_100035AD0(v73 + *(v83 + 36), v64, &qword_100CA75C8, &unk_100A325F0);
      sub_10001ECD8();
      sub_10046636C(v73, v89);
      v90 = type metadata accessor for WeatherDataOverrides(0);
      if (sub_100024D10(v64, 1, v90) != 1)
      {
        v101 = v122;
        sub_100035AD0(v64, v122, &unk_100CB2CF0, &unk_100A2D7F0);
        sub_1000146C8();
        sub_10046636C(v64, v102);
        sub_10000556C(v101);
        if (!v57)
        {
          v103 = sub_1000197B4();
          v104(v103, v122, v47);
LABEL_30:
          sub_10000556C(v81);
          if (!v57)
          {
            sub_1000180EC(v81, &unk_100CB2CF0, &unk_100A2D7F0);
          }

          goto LABEL_32;
        }

LABEL_23:
        v94 = v120;
        sub_100035AD0(v82, v120, &qword_100CA3898, &qword_100A314D0);
        if (sub_100024D10(v94, 1, v83) == 1)
        {
          sub_1000180EC(v94, &qword_100CA3898, &qword_100A314D0);
          (*(v49 + 16))(v132, v128, v47);
        }

        else
        {
          v95 = v117;
          WeatherDataModel.currentWeather.getter();
          sub_10001ECD8();
          sub_10046636C(v94, v96);
          v97 = v116;
          CurrentWeather.date.getter();
          (*(v118 + 8))(v95, v119);
          v98 = sub_1000197B4();
          v99(v98, v97, v47);
        }

        v100 = v122;
        sub_10000556C(v122);
        if (!v57)
        {
          sub_1000180EC(v100, &unk_100CB2CF0, &unk_100A2D7F0);
        }

        goto LABEL_30;
      }

      v84 = &qword_100CA75C8;
      v85 = &unk_100A325F0;
      v86 = v64;
    }

    sub_1000180EC(v86, v84, v85);
    sub_100003934();
    sub_10001B350(v91, v92, v93, v47);
    goto LABEL_23;
  }

  sub_1000180EC(v18, &qword_100CA65D8, &unk_100A3D9D0);
  (*(v49 + 32))(v63, v56, v47);
  type metadata accessor for WeatherConditionBackgroundTimeData(0);
  sub_100003934();
  sub_10001B350(v74, v75, v76, v138);
  type metadata accessor for BackgroundMoonData();
  sub_100003934();
  return sub_10001B350(v77, v78, v79, v80);
}

void sub_1000761B8(uint64_t a1, void (*a2)(char *, char *, uint64_t), char *a3)
{
  v5 = type metadata accessor for WeatherDataAction(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewAction(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ModalViewAction(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EnvironmentAction(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MainAction(0);
  __chkstk_darwin(v17);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100051168();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_100076540(*v19, a2, a3);
      return;
    case 2u:
      sub_1000501CC();
      sub_100174BC4(v16, a2, a3);
      v20 = type metadata accessor for EnvironmentAction;
      v21 = v16;
      goto LABEL_8;
    case 6u:
      sub_1000501CC();
      sub_100A110E8(v10, a2, a3);
      v20 = type metadata accessor for ViewAction;
      v21 = v10;
      goto LABEL_8;
    case 7u:
      sub_1000501CC();
      sub_100A10A90(v13, a2, a3);
      v20 = type metadata accessor for ModalViewAction;
      v21 = v13;
      goto LABEL_8;
    case 9u:
      sub_1000501CC();
      sub_10019D8D4(v7, a2, a3);
      v20 = type metadata accessor for WeatherDataAction;
      v21 = v7;
      goto LABEL_8;
    default:
      v20 = type metadata accessor for MainAction;
      v21 = v19;
LABEL_8:
      sub_10004FF18(v21, v20);
      return;
  }
}

void sub_100076540(char a1, uint64_t a2, char *a3)
{
  v7 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = type metadata accessor for Date();
      (*(*(v10 - 8) + 16))(v9, a3, v10);
      sub_10001B350(v9, 0, 1, v10);
      v11 = OBJC_IVAR____TtC7Weather42WeatherDataVisibleLocationLoadingTelemetry_startLoadTime;
      swift_beginAccess();
      sub_10019F6D8(v9, v3 + v11);
      swift_endAccess();
    }

    else
    {

      sub_100A0D61C(a2, a3, v3);
    }
  }
}

void sub_100076694()
{
  v1 = sub_100017580();
  v2 = type metadata accessor for WeatherDataAction(v1);
  v3 = sub_100003AE8(v2);
  v153 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100003990(&v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  sub_10000E70C();
  v9 = sub_100003918(v8);
  v10 = type metadata accessor for NotificationsAction(v9);
  v11 = sub_100003AE8(v10);
  v151 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_100003990(&v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v149 = type metadata accessor for EnvironmentAction(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_10000E70C();
  sub_100003990(v20);
  v21 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  __chkstk_darwin(v21 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v25);
  v27 = &v140 - v26;
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  v32 = sub_100003918(v31);
  v33 = type metadata accessor for LocationsAction(v32);
  v34 = sub_100003AE8(v33);
  v148 = v35;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  sub_100003990(&v140 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38);
  sub_10000E70C();
  v40 = sub_100003918(v39);
  v41 = type metadata accessor for MainAction(v40);
  __chkstk_darwin(v41);
  v44 = &v140 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v0;
  v45 = v0[5];
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = v45 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v144 = v6 + 7;
    v48 = *(v42 + 72);
    v143 = v14 + 7;
    v142 = v37 + 7;
    v158 = v27;
    v157 = v41;
    v156 = v48;
    do
    {
      sub_100050D50(v47, v44, type metadata accessor for MainAction);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xEu:
        case 0x10u:
        case 0x11u:
          goto LABEL_33;
        case 2u:
          sub_100020FE8();
          sub_100050170(v109, v110, v111);
          sub_100020FE8();
          sub_100050D50(v112, v113, v114);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              if (*v154 != 1)
              {
                sub_10017DF2C(0);
              }

              break;
            case 2u:
            case 6u:
            case 7u:
            case 8u:
            case 9u:
            case 0xBu:
            case 0xDu:
            case 0xEu:
            case 0xFu:
            case 0x10u:
              goto LABEL_33;
            case 3u:
            case 4u:
            case 5u:
            case 0xAu:
            case 0xCu:
              sub_10004F998();
              break;
            default:
              v125 = *v154;
              v126 = type metadata accessor for TaskPriority();
              v127 = v141;
              sub_1000B0C98();
              sub_10001B350(v128, v129, v130, v131);
              v132 = sub_1000C87C0();
              sub_1005C1F54(v132, v133, &qword_100CA48E0, &qword_100A5C570);
              type metadata accessor for MainActor();
              sub_1000D3EF4();
              v134 = static MainActor.shared.getter();
              v135 = swift_allocObject();
              v136 = sub_1000C8B08(v135);
              *(v136 + 24) = &protocol witness table for MainActor;
              *(v136 + 32) = v41;
              *(v136 + 40) = v125;
              sub_1005C976C((v136 + 48));
              v0 = &qword_100CA3538;
              v41 = &qword_100A2D560;
              sub_1005C1F54(v127, v27, &qword_100CA3538, &qword_100A2D560);
              sub_100087FC8(v27, 1, v126);
              if (v134 == 1)
              {
                sub_100018144(v27, &qword_100CA3538, &qword_100A2D560);
              }

              else
              {
                TaskPriority.rawValue.getter();
                sub_100003B20();
                (*(v137 + 8))(v27, v126);
                sub_100195550();
              }

              v27 = *(v14 + 16);
              v48 = *(v14 + 24);
              swift_unknownObjectRetain();

              if (v27)
              {
                swift_getObjectType();
                v138 = v27;
                dispatch thunk of Actor.unownedExecutor.getter();
                sub_1000B7BA4();
              }

              else
              {
                v138 = 0;
                v48 = 0;
              }

              sub_100018144(v141, &qword_100CA3538, &qword_100A2D560);
              sub_1000244CC();
              v139 = swift_allocObject();
              *(v139 + 16) = &unk_100A65FA0;
              *(v139 + 24) = v14;
              if (v48 | v138)
              {
                v166 = 0;
                v167 = 0;
                v168 = v138;
                v169 = v48;
              }

              goto LABEL_32;
          }

          goto LABEL_33;
        case 3u:
          v146 = type metadata accessor for LocationsAction;
          sub_100020FE8();
          sub_100050170(v49, v50, v51);
          v145 = type metadata accessor for TaskPriority();
          sub_100003934();
          sub_10001B350(v52, v53, v54, v55);
          sub_1000163F8();
          v56 = v147;
          sub_100050D50(v0, v147, v57);
          v58 = sub_1000C87C0();
          sub_1005C1F54(v58, v59, &qword_100CA48E0, &qword_100A5C570);
          type metadata accessor for MainActor();
          sub_1000D3EF4();
          v60 = static MainActor.shared.getter();
          sub_100037834();
          v63 = v62 & ~v61;
          v0 = ((v142 + v63) & 0xFFFFFFFFFFFFFFF8);
          v64 = swift_allocObject();
          v65 = sub_1000C8B08(v64);
          *(v65 + 24) = &protocol witness table for MainActor;
          *(v65 + 32) = v41;
          sub_100050170(v56, v65 + v63, v146);
          sub_1005C976C(v0 + v14);
          v66 = v145;
          sub_100020FE8();
          v41 = &qword_100CA3538;
          sub_1005C1F54(v67, v68, &qword_100CA3538, &qword_100A2D560);
          v69 = sub_10000C834();
          sub_100087FC8(v69, v70, v66);
          if (v60 == 1)
          {
            sub_10004271C();
          }

          else
          {
            TaskPriority.rawValue.getter();
            sub_100003B20();
            (*(v115 + 8))(v0, v66);
            sub_100195550();
          }

          v27 = *(v14 + 16);
          v48 = *(v14 + 24);
          swift_unknownObjectRetain();

          if (v27)
          {
            swift_getObjectType();
            v116 = v27;
            dispatch thunk of Actor.unownedExecutor.getter();
            sub_1000B7BA4();
          }

          else
          {
            v116 = 0;
            v48 = 0;
          }

          sub_100018144(v155, &qword_100CA3538, &qword_100A2D560);
          sub_1000244CC();
          v122 = swift_allocObject();
          *(v122 + 16) = &unk_100A65FB8;
          *(v122 + 24) = v14;
          if (v48 | v116)
          {
            v163 = 0;
            v162 = 0;
            v164 = v116;
            v165 = v48;
          }

          sub_100016BF4();
          sub_1000BC6C0();

          sub_100036D9C();
          goto LABEL_33;
        case 4u:
          v146 = type metadata accessor for NotificationsAction;
          sub_100020FE8();
          sub_100050170(v71, v72, v73);
          v74 = type metadata accessor for TaskPriority();
          sub_100003934();
          sub_10001B350(v75, v76, v77, v74);
          sub_10006A838();
          sub_100050D50(v0, v150, v78);
          v79 = sub_1000C87C0();
          sub_1005C1F54(v79, v80, &qword_100CA48E0, &qword_100A5C570);
          type metadata accessor for MainActor();
          sub_1000D3EF4();
          v81 = static MainActor.shared.getter();
          sub_100037834();
          v0 = (v83 & ~v82);
          sub_1000C85D0();
          v84 = swift_allocObject();
          v85 = sub_1000C8B08(v84);
          sub_1001923E8(v85, &protocol witness table for MainActor);
          sub_1005C976C((v14 + v27));
          sub_100020FE8();
          v41 = &qword_100CA3538;
          sub_1005C1F54(v86, v87, &qword_100CA3538, &qword_100A2D560);
          v88 = sub_10000C834();
          sub_100087FC8(v88, v89, v74);
          if (v81 == 1)
          {
            sub_10004271C();
          }

          else
          {
            TaskPriority.rawValue.getter();
            sub_100003B20();
            (*(v117 + 8))(v0, v74);
            sub_100195550();
          }

          v27 = *(v14 + 16);
          v48 = *(v14 + 24);
          swift_unknownObjectRetain();

          if (v27)
          {
            swift_getObjectType();
            v118 = v27;
            dispatch thunk of Actor.unownedExecutor.getter();
            sub_1000B7BA4();
          }

          else
          {
            v118 = 0;
            v48 = 0;
          }

          sub_100018144(v159, &qword_100CA3538, &qword_100A2D560);
          sub_1000244CC();
          v123 = swift_allocObject();
          *(v123 + 16) = &unk_100A65F88;
          *(v123 + 24) = v14;
          if (v48 | v118)
          {
            v170 = 0;
            v171 = 0;
            v172 = v118;
            v173 = v48;
          }

          sub_100016BF4();
          sub_1000BC6C0();

          sub_100071D58();
          goto LABEL_33;
        case 9u:
          v146 = type metadata accessor for WeatherDataAction;
          sub_100020FE8();
          sub_100050170(v90, v91, v92);
          v93 = type metadata accessor for TaskPriority();
          sub_100003934();
          sub_10001B350(v94, v95, v96, v93);
          sub_10003BAB4();
          sub_100050D50(v0, v152, v97);
          v98 = sub_1000C87C0();
          sub_1005C1F54(v98, v99, &qword_100CA48E0, &qword_100A5C570);
          type metadata accessor for MainActor();
          sub_1000D3EF4();
          v100 = static MainActor.shared.getter();
          sub_100037834();
          v0 = (v102 & ~v101);
          sub_1000C85D0();
          v103 = swift_allocObject();
          v104 = sub_1000C8B08(v103);
          sub_1001923E8(v104, &protocol witness table for MainActor);
          sub_1005C976C((v14 + v27));
          sub_100020FE8();
          v41 = &qword_100CA3538;
          sub_1005C1F54(v105, v106, &qword_100CA3538, &qword_100A2D560);
          v107 = sub_10000C834();
          sub_100087FC8(v107, v108, v93);
          if (v100 == 1)
          {
            sub_10004271C();
          }

          else
          {
            TaskPriority.rawValue.getter();
            sub_100003B20();
            (*(v119 + 8))(v0, v93);
            sub_100195550();
          }

          v120 = *(v14 + 16);
          swift_unknownObjectRetain();

          if (v120)
          {
            swift_getObjectType();
            v27 = dispatch thunk of Actor.unownedExecutor.getter();
            v48 = v121;
            swift_unknownObjectRelease();
          }

          else
          {
            v27 = 0;
            v48 = 0;
          }

          sub_100018144(v160, &qword_100CA3538, &qword_100A2D560);
          sub_1000244CC();
          v124 = swift_allocObject();
          *(v124 + 16) = &unk_100A65F68;
          *(v124 + 24) = v14;
          if (v48 | v27)
          {
            v174 = 0;
            v175 = 0;
            v176 = v27;
            v177 = v48;
          }

LABEL_32:
          sub_100016BF4();
          sub_1000BC6C0();

LABEL_33:
          sub_10004F998();
          break;
        default:
          break;
      }

      v47 += v48;
      --v46;
    }

    while (v46);
  }
}

uint64_t sub_100077564()
{
  type metadata accessor for WeatherDataAction(0);
  sub_1000082C0();
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v6 = v0 + v4;
  sub_10001920C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 7u:
      goto LABEL_16;
    case 2u:

      if (*(v6 + 24) >= 0xEuLL)
      {
      }

      goto LABEL_16;
    case 3u:
    case 9u:

      goto LABEL_16;
    case 4u:
      v77 = v5;

      v80 = sub_10022C350(&qword_100CAC0C8, &unk_100A3AFC0);
      v7 = v6 + v80[12];

      v8 = type metadata accessor for WeatherData(0);
      v9 = v8[5];
      v10 = type metadata accessor for Locale();
      if (!sub_100024D10(v7 + v9, 1, v10))
      {
        sub_100003B20();
        (*(v11 + 8))(v7 + v9, v10);
      }

      v12 = v8[6];
      type metadata accessor for WeatherDataModel();
      sub_100003D98();
      (*(v13 + 8))(v7 + v12);
      v14 = v7 + v8[7];
      v15 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
      v16 = sub_1000131C4();
      if (!sub_100024D10(v16, v17, v15))
      {
        v18 = type metadata accessor for Date();
        sub_1000037E8();
        v20 = *(v19 + 8);
        v21 = sub_10002C8AC();
        v20(v21);
        v22 = *(v15 + 48);
        v23 = type metadata accessor for WeatherDataRelevancy(0);
        if (!sub_100024D10(v14 + v22, 1, v23))
        {
          (v20)(v14 + v22, v18);
        }
      }

      v24 = v7 + v8[8];
      type metadata accessor for WeatherData.WeatherStatisticsState(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        type metadata accessor for WeatherStatisticsModel();
        sub_100003D98();
        (*(v28 + 8))(v24);
      }

      else if (!EnumCaseMultiPayload)
      {
      }

      v29 = v7 + v8[9];
      v30 = type metadata accessor for WeatherDataOverrides(0);
      v31 = sub_1000131C4();
      if (!sub_100024D10(v31, v32, v30))
      {
        v33 = type metadata accessor for Date();
        v34 = sub_1000131C4();
        if (!sub_100024D10(v34, v35, v33))
        {
          sub_100003B20();
          (*(v36 + 8))(v29, v33);
        }

        v37 = *(v30 + 20);
        if (!sub_100024D10(v29 + v37, 1, v33))
        {
          sub_100003B20();
          (*(v38 + 8))(v29 + v37, v33);
        }
      }

      v39 = v6 + v80[16];
      v40 = type metadata accessor for UUID();
      sub_1000037E8();
      v78 = *(v41 + 8);
      v78(v39, v40);
      v42 = type metadata accessor for PreprocessedWeatherData(0);

      v43 = v39 + v42[6];

      v44 = v43 + *(type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0) + 28);
      v45 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
      if (!sub_100024D10(v44, 1, v45))
      {

        v46 = v44 + *(v45 + 20);
        type metadata accessor for TemperatureScaleConfiguration();
        sub_100003D98();
        (*(v47 + 8))(v46);
        type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
      }

      v48 = v39 + v42[7];
      v49 = sub_1000131C4();
      if (!sub_100024D10(v49, v50, v40))
      {
        v78(v48, v40);
      }

      type metadata accessor for HourlyForecastComponentViewModel(0);

      v51 = *(type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0) + 20);
      v52 = type metadata accessor for WeatherDescription();
      if (!sub_100024D10(v48 + v51, 1, v52))
      {
        sub_100003B20();
        (*(v53 + 8))(v48 + v51, v52);
      }

      sub_1005C96E4();

      v54 = v48 + *(type metadata accessor for ListPreprocessedDataModel(0) + 32);
      type metadata accessor for Date();
      sub_100003D98();
      v75 = *(v55 + 8);
      v76 = v56;
      v75(v54);
      v57 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
      v58 = *(v57 + 20);
      v79 = type metadata accessor for Elevation();
      if (!sub_100024D10(v54 + v58, 1, v79))
      {
        sub_100003B20();
        (*(v59 + 8))(v54 + v58);
      }

      v60 = *(v57 + 24);
      v61 = type metadata accessor for BackgroundMoonData();
      if (!sub_1000D3BF0(v54 + v60))
      {
        sub_100003B20();
        (*(v62 + 8))(v54 + v60, v61);
      }

      sub_1005C96E4();

      v63 = v39 + v42[10];
      sub_100003B20();
      (*(v64 + 8))(v63, v52);
      type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
      sub_100014298();
      sub_100014298();
      sub_1005C96E4();

      v65 = v39 + v42[12];
      type metadata accessor for PressureTrend();
      sub_100003D98();
      (*(v66 + 8))(v65);
      type metadata accessor for PressureComponentPreprocessedDataModel(0);
      sub_100014298();
      sub_100014298();
      sub_100014298();
      sub_100014298();
      sub_1005C96E4();

      v67 = v39 + v42[14];
      (v75)(v67, v76);
      v68 = *(v57 + 20);
      if (!sub_100024D10(v67 + v68, 1, v79))
      {
        sub_100003B20();
        (*(v69 + 8))(v67 + v68, v79);
      }

      v70 = *(v57 + 24);
      if (!sub_1000D3BF0(v67 + v70))
      {
        sub_100003B20();
        (*(v71 + 8))(v67 + v70, v61);
      }

      sub_1005C96E4();

      v72 = v80[20];
      type metadata accessor for NewsDataModel(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
      }

      else
      {
        type metadata accessor for News();
        sub_100003D98();
        (*(v73 + 8))(v6 + v72);
      }

      v5 = v77;
      goto LABEL_44;
    case 5u:

      sub_10022C350(&qword_100CAC0B8, &unk_100A3AFB0);
      v26 = sub_100040EDC();
      type metadata accessor for NewsDataModel(v26);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_16:
      }

      else
      {
        type metadata accessor for News();
LABEL_19:
        sub_100003D98();
        (*(v27 + 8))(v6 + v1);
      }

LABEL_44:
      if (*(v0 + v5 + 24))
      {
        sub_100006F14((v0 + v5));
      }

      return swift_deallocObject();
    case 6u:

      sub_10022C350(&qword_100CAC0C0, &unk_100A53DF0);
      sub_100040EDC();
      type metadata accessor for AvailableDataSets();
      goto LABEL_19;
    case 8u:

      sub_10022C350(&qword_100CAC0B0, &unk_100A41710);
      sub_100040EDC();
      type metadata accessor for WeatherStatisticsModel();
      goto LABEL_19;
    default:
      goto LABEL_44;
  }
}

uint64_t sub_100077F8C()
{
  type metadata accessor for NotificationsAction(0);
  sub_1000082C0();
  sub_10019252C();

  v4 = v1 + v0;
  sub_10001920C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      type metadata accessor for NotificationLocation(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        type metadata accessor for Location();
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_17;
        }

        type metadata accessor for LocationModel();
      }

      sub_100003D98();
      (*(v13 + 8))(v4);
LABEL_17:
      v14 = *(sub_10022C350(&qword_100CB1AC0, &qword_100A65F80) + 48);
      v15 = type metadata accessor for URL();
      if (!sub_100024D10(v4 + v14, 1, v15))
      {
        sub_100003B20();
        (*(v16 + 8))(v4 + v14);
      }

LABEL_10:
      if (*(v1 + v3 + 24))
      {
        sub_100006F14((v1 + v3));
      }

      return swift_deallocObject();
    case 2u:
      type metadata accessor for NotificationSubscription.Location();
      sub_100003D98();
      (*(v10 + 8))(v4);
      v7 = &qword_100CB1AB8;
      v8 = &unk_100A42080;
      goto LABEL_9;
    case 3u:
    case 5u:
    case 8u:
      type metadata accessor for PredictedLocationsNotificationSubscription.Kind();
      sub_100003D98();
      (*(v5 + 8))(v4);
      goto LABEL_10;
    case 4u:
    case 6u:

      goto LABEL_10;
    case 7u:
      type metadata accessor for Location();
      sub_100003D98();
      (*(v6 + 8))(v4);
      v7 = &qword_100CB1AB0;
      v8 = &unk_100A5C150;
LABEL_9:
      sub_10022C350(v7, v8);
      sub_100040EDC();
      type metadata accessor for NotificationSubscription.Kind();
      sub_100003D98();
      (*(v11 + 8))(v4 + v2);
      goto LABEL_10;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_100078238()
{

  sub_1000244CC();

  return swift_deallocObject();
}

uint64_t sub_10007826C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
    sub_100006F14((v0 + 48));
  }

  return swift_deallocObject();
}

uint64_t sub_1000782D4()
{
  type metadata accessor for LocationsAction(0);
  sub_1000082C0();
  sub_10019252C();

  v3 = v1 + v0;
  sub_10001920C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      type metadata accessor for CurrentLocation();
      if (swift_getEnumCaseMultiPayload() <= 2)
      {
        goto LABEL_3;
      }

      break;
    case 1u:
LABEL_3:
      type metadata accessor for Location();
      sub_100003D98();
      (*(v4 + 8))(v3);
      break;
    case 2u:

      goto LABEL_5;
    case 5u:
LABEL_5:

      break;
    case 6u:
      sub_100187350(*v3, *(v3 + 8), *(v3 + 16));
      break;
    default:
      break;
  }

  if (*(v1 + v2 + 24))
  {
    sub_100006F14((v1 + v2));
  }

  return swift_deallocObject();
}

uint64_t sub_100078478(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

void sub_1000784D4(char a1)
{
  sub_100040690();
  v2 = static OS_dispatch_queue.main.getter();
  sub_10022C350(&qword_100CEBF18, &qword_100AA1CB8);
  firstly<A, B>(on:disposeOn:closure:)();

  v3 = static OS_dispatch_queue.geocode.getter();
  *(swift_allocObject() + 16) = a1;
  sub_10022C350(&qword_100CCC9D0, &unk_100A76B40);
  Promise.then<A, B>(on:disposeOn:closure:)();

  v4 = static OS_dispatch_queue.main.getter();
  Promise.then<A, B>(on:disposeOn:closure:)();
}

unint64_t sub_100078694(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100109414(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_100109514(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100006F14(v11);
  return v7;
}

void sub_100078758()
{
  v0 = [objc_opt_self() sharedService];
}

uint64_t sub_10007879C()
{
  v0 = type metadata accessor for Logger();
  sub_100007074(v0, qword_100D90BE8);
  sub_100049CC4();
  sub_10001F80C();
  sub_1000067EC();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100078800@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v87 = a3;
  v4 = sub_10022C350(&qword_100CEA7D8, &unk_100A9FFD0);
  __chkstk_darwin(v4 - 8);
  v82 = &v68 - v5;
  v71 = type metadata accessor for CachedCurrentLocation.EmbeddedLocation();
  __chkstk_darwin(v71);
  v72 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&unk_100CE49F0, &unk_100A3AFA0);
  __chkstk_darwin(v7 - 8);
  v78 = &v68 - v8;
  v9 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  __chkstk_darwin(v9 - 8);
  v80 = &v68 - v10;
  v86 = type metadata accessor for Location();
  v73 = *(v86 - 8);
  __chkstk_darwin(v86);
  v69 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v70 = &v68 - v13;
  v14 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  __chkstk_darwin(v14 - 8);
  v75 = &v68 - v15;
  v74 = type metadata accessor for LocationsState(0);
  __chkstk_darwin(v74);
  v79 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  __chkstk_darwin(v17 - 8);
  v81 = &v68 - v18;
  v19 = type metadata accessor for OSSignpostID();
  v83 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Location.Identifier();
  v77 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v76 = &v68 - v26;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  __chkstk_darwin(active - 8);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(v30);
  v32 = (&v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = type metadata accessor for ViewState(0);
  __chkstk_darwin(v33);
  v35 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  sub_100051048(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v35, type metadata accessor for ViewState);
  sub_100051048(&v35[v33[5]], v32, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v39 = *v32;
    if (*&v35[v33[9] + 8] == 1)
    {
      v40 = [objc_opt_self() currentDevice];
      [v40 userInterfaceIdiom];

      LOBYTE(v40) = v35[v33[7]];
      sub_10004FD00(v35, type metadata accessor for ViewState);
      if ((v40 & 1) == 0)
      {

        goto LABEL_3;
      }
    }

    else
    {
      sub_10004FD00(v35, type metadata accessor for ViewState);
    }

    sub_100051048(v39 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v29, type metadata accessor for LocationViewerActiveLocationState);
    if (sub_100024D10(v29, 1, v22) != 1)
    {
      v47 = v77;
      v48 = v76;
      (*(v77 + 32))();
      static os_signpost_type_t.event.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v83 + 8))(v21, v19);
      v49 = v79;
      sub_100051048(v84 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v79, type metadata accessor for LocationsState);
      static CurrentLocation.placeholderIdentifier.getter();
      v50 = static Location.Identifier.== infix(_:_:)();
      v51 = *(v47 + 8);
      v52 = v51(v24, v22);
      if (v50)
      {
        sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
        type metadata accessor for CurrentLocation();
        v53 = v81;
        swift_storeEnumTagMultiPayload();
        v54 = type metadata accessor for LocationOfInterest();
        sub_10001B350(v75, 1, 1, v54);
        LocationModelData.init(locationOfInterest:isPredictedLocation:)();
        v55 = enum case for LocationModel.current(_:);
        v56 = type metadata accessor for LocationModel();
        (*(*(v56 - 8) + 104))(v53, v55, v56);
        sub_10001B350(v53, 0, 1, v56);
      }

      else
      {
        __chkstk_darwin(v52);
        *(&v68 - 2) = v48;
        v53 = v81;
        sub_100030C98(sub_100079458, (&v68 - 4), v59);
      }

      sub_10004FD00(v49, type metadata accessor for LocationsState);
      v60 = type metadata accessor for LocationModel();
      if (sub_100024D10(v53, 1, v60) != 1)
      {
        LocationModel.location.getter();

        v51(v48, v22);
        return (*(*(v60 - 8) + 8))(v53, v60);
      }

      v51(v48, v22);

      sub_1000180EC(v53, &unk_100CE2F20, &unk_100A2D7D0);
      goto LABEL_3;
    }

    static os_signpost_type_t.event.getter();
    v41 = v85;
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    (*(v83 + 8))(v21, v19);
    v42 = v78;
    sub_100035AD0(v84 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v78, &unk_100CE49F0, &unk_100A3AFA0);
    v43 = type metadata accessor for CurrentLocation();
    if (sub_100024D10(v42, 1, v43) == 1)
    {
      sub_1000180EC(v42, &unk_100CE49F0, &unk_100A3AFA0);
      v44 = v80;
      v45 = v86;
      sub_10001B350(v80, 1, 1, v86);
      v46 = v82;
    }

    else
    {
      v44 = v80;
      CurrentLocation.location.getter();
      sub_10004FD00(v42, &type metadata accessor for CurrentLocation);
      v45 = v86;
      v57 = sub_100024D10(v44, 1, v86);
      v46 = v82;
      if (v57 != 1)
      {

        v66 = *(v73 + 32);
        v67 = v70;
        v66(v70, v44, v45);
        v65 = v87;
        v66(v87, v67, v45);
        goto LABEL_23;
      }
    }

    sub_1000180EC(v44, &qword_100CA65D8, &unk_100A3D9D0);
    sub_1000161C0(v41 + 8, v41[11]);
    dispatch thunk of CurrentLocationCacheManagerType.readCachedLocation()();
    v58 = type metadata accessor for CachedCurrentLocation();
    if (sub_100024D10(v46, 1, v58) == 1)
    {

      sub_1000180EC(v46, &qword_100CEA7D8, &unk_100A9FFD0);
LABEL_25:
      v36 = v87;
      v38 = 1;
      goto LABEL_26;
    }

    v62 = v72;
    CachedCurrentLocation.embeddedLocation.getter();

    (*(*(v58 - 8) + 8))(v46, v58);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10004FD00(v62, &type metadata accessor for CachedCurrentLocation.EmbeddedLocation);
      goto LABEL_25;
    }

    v63 = *(v73 + 32);
    v64 = v69;
    v63(v69, v62, v45);
    v65 = v87;
    v63(v87, v64, v45);
LABEL_23:
    v36 = v65;
    v38 = 0;
LABEL_26:
    v37 = v45;
    return sub_10001B350(v36, v38, 1, v37);
  }

  sub_10004FD00(v35, type metadata accessor for ViewState);
  sub_10004FD00(v32, type metadata accessor for ViewState.SecondaryViewState);
LABEL_3:
  v37 = v86;
  v36 = v87;
  v38 = 1;
  return sub_10001B350(v36, v38, 1, v37);
}

uint64_t sub_100079478()
{

  return sub_100072EC8();
}

uint64_t sub_1000794BC(uint64_t a1, uint64_t a2)
{

  return sub_1000302D8(a1, a2, v2, v3);
}

uint64_t sub_1000794D4()
{

  return sub_100024D10(v0, 1, v1);
}

uint64_t sub_1000794F0(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_1000795E0()
{
}

void sub_1000795F8()
{
  if (*(v0 + 16))
  {
    sub_10005A708();
  }
}

uint64_t sub_100079620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *(a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_rootActivity) = a2;

  v10 = (a1 + OBJC_IVAR____TtC7Weather27LocationNetworkActivityFlow_locationId);
  *v10 = a3;
  v10[1] = a4;

  sub_10022C350(&unk_100CE49D0, &qword_100A556A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A3BD20;
  *(v11 + 32) = a2;
  v12 = *(type metadata accessor for NetworkActivityCompletion(0) + 24);
  v13 = type metadata accessor for NWActivity.CompletionReason();
  sub_10001B350(a5 + v12, 1, 1, v13);
  *a5 = v11;
  a5[1] = _swiftEmptyArrayStorage;
}

void sub_100079728()
{
  if (qword_100CA2718 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90BA0);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v3 = 136446722;
    NWActivity.domain.getter();
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = sub_100078694(v4, v5, &v13);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2082;
    NWActivity.label.getter();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_100078694(v7, v8, &v13);

    *(v3 + 14) = v9;
    *(v3 + 22) = 2082;
    if (NWActivity.parentActivity.getter())
    {

      v10 = 0xE300000000000000;
      v11 = 7562617;
    }

    else
    {
      v10 = 0xE200000000000000;
      v11 = 28526;
    }

    v12 = sub_100078694(v11, v10, &v13);

    *(v3 + 24) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Activating parent network activity. domain=%{public}s, label=%{public}s, hasParent=%{public}s", v3, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  NWActivity.activate()();
}

void *sub_10007996C(uint64_t a1, uint64_t a2)
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

  sub_10022C350(&qword_100CA3170, &qword_100A2D2F8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_1000799DC()
{
  sub_10000E8AC();
  v30 = v1;
  v3 = v2;
  v35 = v4;
  v36 = v5;
  v38 = v6(0);
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100003848();
  v32 = v10;
  sub_10000386C();
  v12.n128_f64[0] = __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = 0;
  v37 = *(v3 + 16);
  v34 = v8 + 16;
  v16 = (v8 + 8);
  v31 = (v8 + 32);
  v33 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v37 == v15)
    {

LABEL_15:
      sub_1000230F8();
      sub_10000C8F4();
      return;
    }

    if (v15 >= *(v3 + 16))
    {
      break;
    }

    v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v18 = *(v8 + 72);
    v19 = v3;
    (*(v8 + 16))(v14, v3 + v17 + v18 * v15, v38, v12);
    v20 = v35(v14);
    if (v0)
    {
      (*v16)(v14, v38);

      goto LABEL_15;
    }

    if (v20)
    {
      v29 = *v31;
      v29(v32, v14, v38);
      v21 = v33;
      v39 = v33;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v22 = v21;
      }

      else
      {
        v23 = sub_1000134F8();
        v30(v23);
        v22 = v39;
      }

      v3 = v19;
      v25 = v22[2];
      v24 = v22[3];
      v26 = (v25 + 1);
      if (v25 >= v24 >> 1)
      {
        v33 = (v25 + 1);
        v28 = v25;
        (v30)(v24 > 1, v25 + 1, 1);
        v26 = v33;
        v25 = v28;
        v3 = v19;
        v22 = v39;
      }

      ++v15;
      v22[2] = v26;
      v33 = v22;
      v29(v22 + v17 + v25 * v18, v32, v38);
    }

    else
    {
      (*v16)(v14, v38);
      ++v15;
    }
  }

  __break(1u);
}

uint64_t sub_100079D2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100079D8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100079DEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

void sub_100079E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_10000C778();
  v94 = v23;
  LODWORD(v89) = v24;
  v91 = v25;
  v101 = v26;
  v102 = v27;
  v99 = v28;
  v100 = v29;
  v31 = v30;
  v32 = type metadata accessor for TimeState(0);
  v33 = sub_100003AE8(v32);
  v92 = v34;
  __chkstk_darwin(v33);
  v93 = v35;
  sub_10001376C();
  v95 = v36;
  sub_1000038CC();
  v37 = type metadata accessor for Location();
  sub_1000037C4();
  v106 = v38;
  __chkstk_darwin(v39);
  sub_10001376C();
  v103 = v41;
  v104 = v40;
  sub_1000038CC();
  v98 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v105 = v42;
  __chkstk_darwin(v43);
  sub_10000FBD0();
  v97 = v44;
  v90 = v45;
  __chkstk_darwin(v46);
  sub_10000E70C();
  v48 = v47;
  if (a21)
  {
    v49 = swift_allocObject();
    *(v49 + 16) = a21;
    *(v49 + 24) = a22;
    v50 = sub_100003A60();
    sub_10007A47C(v50);

    sub_10007A4D0(v31, sub_100190294);

    v51 = sub_100003A60();
    sub_10002B028(v51);
  }

  v52 = v22;
  sub_1000161C0((v22 + 120), *(v22 + 144));
  v96 = v48;
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v53 = *(v106 + 16);
  v54 = v104;
  v83 = v31;
  v53(v104, v31, v37);
  v87 = v53;
  v88 = v106 + 16;
  type metadata accessor for WeatherDataUpdateRequestLog(0);
  sub_1008B1694();
  swift_allocObject();

  v86 = v89 & 1;
  v85 = sub_10005B8AC(0, v104, v86, v99, v100, v101, v102);
  __chkstk_darwin(v85);
  *(&v80 - 4) = v55;
  *(&v80 - 3) = v22;
  *(&v80 - 2) = v31;
  sub_10022C350(&qword_100CA6078, &unk_100A30870);
  v89 = firstly<A>(closure:)();
  v53(v54, v31, v37);
  sub_100037324();
  sub_1000863F8(v91, v95);
  v56 = v105;
  v57 = v98;
  (*(v105 + 16))(v97, v96, v98);
  v58 = v106;
  v91 = *(v106 + 80);
  v82 = v37;
  v59 = (v91 + 24) & ~v91;
  v84 = v91 | 7;
  v60 = (v103 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = (*(v92 + 80) + v60 + 32) & ~*(v92 + 80);
  v62 = (v93 + *(v56 + 80) + v61) & ~*(v56 + 80);
  v63 = v62 + v90;
  v64 = v52;
  v81 = v52;
  v92 = (v62 + v90 + 9) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  *(v65 + 16) = v64;
  v66 = *(v58 + 32);
  v106 = v58 + 32;
  v93 = v66;
  v66(v65 + v59, v104, v37);
  v67 = (v65 + v60);
  v68 = v100;
  *v67 = v99;
  v67[1] = v68;
  v69 = v102;
  v67[2] = v101;
  v67[3] = v69;
  sub_10003011C();
  sub_100086450(v95, v65 + v61);
  (*(v105 + 32))(v65 + v62, v97, v57);
  v70 = (v65 + v63);
  *v70 = v86;
  v70[1] = v94 & 1;
  v71 = v85;
  *(v65 + v92) = v85;

  v72 = v81;

  v73 = v71;

  v74 = zalgo.getter();
  Promise.then<A>(on:closure:)();

  v75 = v104;
  v76 = v82;
  v87(v104, v83, v82);
  v77 = (v91 + 32) & ~v91;
  v78 = swift_allocObject();
  *(v78 + 16) = v73;
  *(v78 + 24) = v72;
  v93(v78 + v77, v75, v76);

  v79 = zalgo.getter();
  Promise.error(on:closure:)();

  (*(v105 + 8))(v96, v98);
  sub_10000536C();
}

uint64_t sub_10007A47C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10007A48C()
{

  return swift_deallocObject();
}

uint64_t sub_10007A4D0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    __chkstk_darwin(result);
    sub_10007A47C(v3);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
    sub_10002B028(a2);
  }

  return result;
}

uint64_t sub_10007A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = type metadata accessor for Location();
  v8 = *(v31 - 8);
  __chkstk_darwin(v31);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(a1 + 464);
  v13 = v32;
  *(a1 + 464) = 0x8000000000000000;
  sub_10007ADA4();
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_9;
  }

  v19 = v14;
  v20 = v15;
  sub_10022C350(&qword_100CB6C20, &qword_100A957F0);
  v21 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v18);
  v22 = v32;
  if (v21)
  {
    sub_10007ADA4();
    if ((v20 & 1) == (v24 & 1))
    {
      v19 = v23;
      goto LABEL_5;
    }

LABEL_9:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 464) = v22;
  if ((v20 & 1) == 0)
  {
    (*(v8 + 16))(v10, a2, v31);
    sub_10007AE54(v19, v10, _swiftEmptyArrayStorage, v22);
  }

  v25 = *(v22 + 56) + 8 * v19;
  sub_10005B850();
  v26 = *(*v25 + 16);
  sub_10005B874(v26);
  v27 = *v25;
  *(v27 + 16) = v26 + 1;
  v28 = v27 + 16 * v26;
  *(v28 + 32) = sub_10018F134;
  *(v28 + 40) = v11;
  return swift_endAccess();
}

uint64_t sub_10007A7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for WeatherApp(0);
  v30[1] = *(v3 - 8);
  __chkstk_darwin(v3);
  v4 = sub_10022C350(&qword_100CD5510, &qword_100A7DCA0);
  sub_1000037C4();
  v31 = v5;
  __chkstk_darwin(v6);
  v8 = v30 - v7;
  sub_10022C350(&qword_100CD5518, &qword_100A7DCA8);
  sub_1000037C4();
  v32 = v9;
  v33 = v10;
  __chkstk_darwin(v9);
  v12 = v30 - v11;
  sub_10022C350(&qword_100CD5520, &qword_100A7DCB0);
  sub_1000037C4();
  v34 = v13;
  v35 = v14;
  __chkstk_darwin(v13);
  v16 = v30 - v15;
  sub_10022C350(&qword_100CD5450, &qword_100A7DC38);
  v17 = UIApplicationDelegateAdaptor.wrappedValue.getter();
  sub_1000359CC(v43);

  sub_100035B30(v43, &v40);
  sub_100720520();
  v18 = swift_allocObject();
  sub_100013188(&v40, v18 + 16);
  sub_10005B7F8();
  sub_10022C350(&qword_100CD5530, &qword_100A7DCB8);
  v19 = sub_10022E824(&qword_100CA2DD8, &qword_100A2C518);
  v20 = sub_100720340();
  v38 = v19;
  v39 = v20;
  swift_getOpaqueTypeConformance2();
  WindowGroup.init(id:title:lazyContent:)();
  sub_100010998();
  v23 = sub_100006F64(v21, &qword_100CD5510, &qword_100A7DCA0, v22);
  Scene.extendedLaunchTestName(_:)();
  (*(v31 + 8))(v8, v4);
  v37 = v2;
  v24 = sub_10022C350(&qword_100CD5568, &qword_100A7DCD0);
  *&v40 = v4;
  *(&v40 + 1) = v23;
  sub_10000663C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_100720470();
  v27 = v32;
  Scene.commands<A>(content:)();
  (*(v33 + 8))(v12, v27);
  *&v40 = v27;
  *(&v40 + 1) = v24;
  v41 = OpaqueTypeConformance2;
  v42 = v26;
  sub_10001CBF8();
  swift_getOpaqueTypeConformance2();
  v28 = v34;
  static SceneBuilder.buildBlock<A>(_:)();
  (*(v35 + 8))(v16, v28);
  return sub_100006F14(v43);
}

uint64_t sub_10007AC8C(uint64_t *a1)
{
  if (sub_100051CD4())
  {
    type metadata accessor for _TaskModifier2();
  }

  else
  {
    type metadata accessor for _TaskModifier();
  }

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_10007ACE4(uint64_t *a1)
{
  v1 = a1[1];
  if (sub_100051CD4())
  {
    type metadata accessor for _TaskModifier2();
    sub_10000381C();
    v2 = type metadata accessor for ModifiedContent();
    v8 = v1;
    v9 = sub_10022E8C0();
    v3 = sub_100007E30();
    v4 = &v8;
  }

  else
  {
    type metadata accessor for _TaskModifier();
    sub_10000381C();
    v2 = type metadata accessor for ModifiedContent();
    v6 = v1;
    v7 = sub_10022E90C(&qword_100CA2DD0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    v3 = sub_100007E30();
    v4 = &v6;
  }

  return swift_getWitnessTable(v3, v2, v4, v6, v7, v8, v9);
}

void sub_10007ADA4()
{
  sub_100019170();
  type metadata accessor for Location();
  v0 = sub_10005B6CC(&qword_100CA39F8, &type metadata accessor for Location, &protocol conformance descriptor for Location);
  v1 = sub_100031BB0(v0);
  sub_100011350(v1, v1, &type metadata accessor for Location, &qword_100CA3A00);
}

void sub_10007AE88()
{
  sub_1000210F4();
  if (v4)
  {
    sub_100014CB4();
    if (v5 != v6)
    {
      sub_100030000();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100008C84();
    }
  }

  sub_100074DD8();
  if (v3)
  {
    sub_1000BAF18(v7, v8, v9, v10, v11, v12);
    v13 = sub_1000BCEFC();
    j__malloc_size(v13);
    sub_100016D38();
    v13[2] = v2;
    v13[3] = v14;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v13 != v0 || &v0[2 * v2 + 4] <= v13 + 4)
    {
      memmove(v13 + 4, v0 + 4, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_10022C350(&qword_100CB5AD0, qword_100A492E0);
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_10007AF74(uint64_t a1)
{
  result = type metadata accessor for Location();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10007B088(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_1000038D8();
  type metadata accessor for WeatherDataUpdateRequestLog.Event(v4);
  sub_100003D98();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v8);
  sub_100006A88();
  sub_100087544();
  sub_1000161C0(a2 + 10, a2[13]);
  return dispatch thunk of LocationMetadataManagerType.resolveAddress(for:)();
}

unint64_t sub_10007B164()
{
  result = qword_100CC7850;
  if (!qword_100CC7850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CC7850);
  }

  return result;
}

void sub_10007B1C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void *sub_10007B218()
{
  result = qword_100CC7870;
  if (!qword_100CC7870)
  {
    result = &type metadata for Double;
    atomic_store(&type metadata for Double, &qword_100CC7870);
  }

  return result;
}

uint64_t sub_10007B240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t a1), int a8, unsigned __int8 a9, uint64_t a10)
{
  LODWORD(v194) = a8;
  v217 = a7;
  v199 = a6;
  v214 = a3;
  v215 = a5;
  v218 = a4;
  v213 = a2;
  v222 = a10;
  LODWORD(v187) = a9;
  v207 = *v10;
  v12 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v12 - 8);
  v183 = v170 - v13;
  v14 = type metadata accessor for NewsDataModel(0);
  v176 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v178 = (v170 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v177 = v15;
  __chkstk_darwin(v16);
  v180 = v170 - v17;
  v18 = type metadata accessor for WeatherData(0);
  v173 = *(v18 - 8);
  __chkstk_darwin(v18 - 8);
  v175 = (v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v174 = v19;
  __chkstk_darwin(v20);
  v179 = (v170 - v21);
  v209 = type metadata accessor for Location.Identifier();
  v221 = *(v209 - 8);
  __chkstk_darwin(v209);
  v182 = v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  __chkstk_darwin(v23 - 8);
  v181 = v170 - v24;
  v25 = type metadata accessor for TimeState(0);
  v186 = *(v25 - 8);
  __chkstk_darwin(v25 - 8);
  v197 = v26;
  v206 = v170 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for AppConfiguration();
  v212 = *(v204 - 8);
  __chkstk_darwin(v204);
  v185 = v27;
  v203 = v170 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for DispatchWorkItemFlags();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v189 = v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for DispatchQoS();
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v188 = (v170 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v205 = type metadata accessor for OSSignpostID();
  v198 = *(v205 - 8);
  v30 = *(v198 + 64);
  __chkstk_darwin(v205);
  v200 = v170 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v202 = v170 - v32;
  v33 = type metadata accessor for Location();
  v219 = *(v33 - 8);
  v220 = v33;
  __chkstk_darwin(v33);
  v208 = v34;
  v216 = v170 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = type metadata accessor for WeatherServiceLocationOptions();
  v196 = *(v211 - 8);
  __chkstk_darwin(v211);
  v201 = v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = v35;
  __chkstk_darwin(v36);
  v210 = v170 - v37;
  v38 = type metadata accessor for WeatherDataConfiguration();
  v195 = *(v38 - 8);
  __chkstk_darwin(v38);
  v40 = v170 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10022C350(&qword_100CE2958, &qword_100A957F8);
  __chkstk_darwin(v41);
  v43 = v170 - v42;
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v46 = v170 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  Location.coordinate.getter();
  if (v47 == 0.0 || (Location.coordinate.getter(), v48 == 0.0))
  {
    sub_1005B3D94(0xD000000000000038, 0x8000000100AE35D0);

    return sub_10018E604(a1);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v46);
    v50 = sub_100087544();
    v170[1] = v170;
    aBlock = v10[59];
    v51 = aBlock;
    __chkstk_darwin(v50);
    v170[-2] = v10;
    v170[-1] = v52;
    v171 = v52;
    __chkstk_darwin(v53);
    v172 = v10;
    v170[-2] = sub_10008764C;
    v170[-1] = v54;
    v170[0] = type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();
    v170[0] = v51;

    v55 = *v43;
    v56 = *(v41 + 48);
    v58 = (v221 + 1);
    v57 = v221[1];
    v59 = &v43[v56];
    v60 = v209;
    v57(v59, v209);
    if (v55 != 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_10005C1D4(v46);
      return sub_100087544();
    }

    v221 = v58;
    AppConfiguration.weatherData.getter();
    WeatherDataConfiguration.intervalBetweenUpdates.getter();
    v62 = v61;
    (*(v195 + 8))(v40, v38);
    v63 = v171;
    v64 = v172;
    if (sub_10008765C(v62, v171, v213, v214, v218) || (v194 & 1) != 0)
    {
      AppConfiguration.locationDecimalPrecision.getter();
      WeatherServiceLocationOptions.init(decimalPrecision:limitsPrecision:)();
      v71 = v219;
      v72 = *(v219 + 16);
      v183 = (v219 + 16);
      v194 = v72;
      v73 = v216;
      v74 = v220;
      v72(v216, v63, v220);
      v182 = *(v71 + 80);
      v180 = &v208[(v182 + 24) & ~v182];
      v75 = v63;
      v76 = (v182 + 24) & ~v182;
      v181 = v76;
      v195 = v182 | 7;
      v77 = swift_allocObject();
      *(v77 + 16) = v64;
      v78 = *(v71 + 32);
      v219 = v71 + 32;
      v221 = v78;
      (v78)(v77 + v76, v73, v74);

      asyncMain(block:)();

      sub_1000161C0(v64 + 41, v64[44]);
      v79 = Location.id.getter();
      v80 = v64;
      sub_10005E8B8(v79, v81);

      swift_storeEnumTagMultiPayload();
      v82 = v222;
      sub_10005C1D4(v46);
      sub_100087544();
      v83 = v80[56];
      v84 = v202;
      OSSignpostID.init(log:)();
      LODWORD(v209) = v187 & 1;
      v173 = sub_100086BF4(v187 & 1);
      v85 = swift_allocObject();
      swift_weakInit();
      v86 = v198;
      v87 = *(v198 + 16);
      v174 = v198 + 16;
      v175 = v87;
      v88 = v200;
      v89 = v84;
      v90 = v205;
      v87(v200, v89, v205);
      v91 = v75;
      v92 = v220;
      v194(v73, v91, v220);
      v93 = v82;
      v176 = *(v86 + 80);
      v94 = v86;
      v95 = (v176 + 32) & ~v176;
      v177 = v30 + v182;
      v96 = (v30 + v182 + v95) & ~v182;
      v187 = v195 | v176;
      v97 = swift_allocObject();
      *(v97 + 16) = v85;
      *(v97 + 24) = v93;
      v98 = *(v94 + 32);
      v178 = (v94 + 32);
      v179 = v98;
      v98(v97 + v95, v88, v90);
      (v221)(v97 + v96, v73, v92);
      v228 = sub_100086CC8;
      v229 = v97;
      aBlock = _NSConcreteStackBlock;
      v225 = 1107296256;
      v226 = sub_1000742F0;
      v227 = &unk_100C74358;
      v99 = _Block_copy(&aBlock);

      v100 = v188;
      static DispatchQoS.unspecified.getter();
      v223 = _swiftEmptyArrayStorage;
      sub_1000675AC(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
      v101 = v171;
      sub_10006768C(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00);
      v102 = v189;
      v103 = v193;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v104 = v173;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v99);

      v192[1](v102, v103);
      v190[1](v100, v191);

      v105 = sub_100086BF4(v209);
      v106 = v216;
      v107 = v220;
      v108 = v194;
      v194(v216, v101, v220);
      v109 = (v182 + 16) & ~v182;
      v110 = v208;
      v111 = swift_allocObject();
      (v221)(v111 + v109, v106, v107);
      sub_10022C350(&qword_100CE2960, &unk_100A95800);
      v193 = firstly<A, B>(on:disposeOn:closure:)();

      v112 = v205;
      v175(v200, v202, v205);
      v108(v106, v101, v107);
      v113 = v196;
      v114 = *(v196 + 16);
      v191 = v196 + 16;
      v192 = v114;
      (v114)(v201, v210, v211);
      v115 = v212;
      v116 = *(v212 + 16);
      v189 = (v212 + 16);
      v190 = v116;
      (v116)(v203, v217, v204);
      v188 = type metadata accessor for TimeState;
      sub_1000863F8(v199, v206);
      v117 = (v176 + 24) & ~v176;
      v118 = (v177 + v117) & ~v182;
      v119 = &v110[v118 + 7] & 0xFFFFFFFFFFFFFFF8;
      v120 = (v119 + *(v113 + 80) + 8) & ~*(v113 + 80);
      v121 = *(v113 + 80);
      v176 = v121;
      v122 = *(v115 + 80);
      v208 = &v122[v184];
      v123 = &v122[v184 + v120] & ~v122;
      v177 = v122;
      v185 += 7;
      v124 = (v185 + v123) & 0xFFFFFFFFFFFFFFF8;
      v182 = *(v186 + 80);
      v184 = (v182 + 32);
      v173 = (v182 + 32 + v124) & ~v182;
      v175 = (v173 + v197);
      v186 = v122 | v121;
      v174 = (v173 + v197) & 0xFFFFFFFFFFFFFFF8;
      v125 = swift_allocObject();
      *(v125 + 16) = v172;
      v179(v125 + v117, v200, v112);
      (v221)(v125 + v118, v216, v220);
      *(v125 + v119) = v222;
      v126 = *(v113 + 32);
      v187 = v113 + 32;
      v200 = v126;
      v127 = v125 + v120;
      v128 = v201;
      (v126)(v127, v201, v211);
      v129 = *(v212 + 32);
      v212 += 32;
      v179 = v129;
      v130 = v125 + v123;
      v131 = v203;
      v132 = v204;
      v129(v130, v203, v204);
      v133 = (v125 + v124);
      v134 = v214;
      *v133 = v213;
      v133[1] = v134;
      v135 = v215;
      v133[2] = v218;
      v133[3] = v135;
      v178 = type metadata accessor for TimeState;
      v136 = v206;
      sub_100086450(v206, v125 + v173);
      *(v175 + v125) = v209;
      *(v125 + v174 + 8) = v207;

      v137 = zalgo.getter();
      v175 = Promise.then<A>(on:closure:)();

      v138 = v216;
      v194(v216, v171, v220);
      v139 = v211;
      (v192)(v128, v210, v211);
      (v190)(v131, v217, v132);
      sub_1000863F8(v199, v136);
      v140 = &v180[v176] & ~v176;
      v141 = &v208[v140] & ~v177;
      v142 = (v185 + v141) & 0xFFFFFFFFFFFFFFF8;
      v143 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
      v144 = &v184[v143] & ~v182;
      v217 = (v144 + v197);
      v145 = (v144 + v197) & 0xFFFFFFFFFFFFFFF8;
      v146 = swift_allocObject();
      *(v146 + 16) = v222;
      (v221)(v146 + v181, v138, v220);
      (v200)(v146 + v140, v201, v139);
      v179(v146 + v141, v203, v204);
      *(v146 + v142) = v172;
      v147 = (v146 + v143);
      v148 = v214;
      *v147 = v213;
      v147[1] = v148;
      v149 = v215;
      v147[2] = v218;
      v147[3] = v149;
      sub_100086450(v206, v146 + v144);
      *(v217 + v146) = v209;
      *(v146 + v145 + 8) = v207;

      v150 = zalgo.getter();
      Promise.error(on:closure:)();

      (*(v198 + 8))(v202, v205);
      return (*(v196 + 8))(v210, v211);
    }

    UnfairLock.lock()();
    v65 = v182;
    Location.identifier.getter();
    swift_beginAccess();
    v66 = v181;
    sub_1000FEC1C(v65, v181);
    swift_endAccess();
    v57(v65, v60);
    sub_100018144(v66, &qword_100CADBA0, &qword_100A3D250);
    UnfairLock.unlock()();
    v67 = Location.id.getter();
    v68 = v183;
    sub_1000864C0(v67, v69, v218);

    v70 = type metadata accessor for LocationWeatherDataState(0);
    if (sub_100024D10(v68, 1, v70) == 1)
    {
      sub_100018144(v68, &qword_100CA37B0, &unk_100A2D740);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v151 = *(sub_10022C350(&qword_100CA75D8, &unk_100A32600) + 64);
        v217 = type metadata accessor for WeatherData;
        v152 = v179;
        sub_100086450(v68, v179);
        v218 = type metadata accessor for NewsDataModel;
        v153 = v180;
        sub_100086450(v68 + v151, v180);
        sub_100087544();
        v221 = sub_100086BF4(v187 & 1);
        v154 = swift_allocObject();
        v215 = v154;
        swift_weakInit();
        v155 = v175;
        sub_1000863F8(v152, v175);
        v156 = v219;
        v157 = v216;
        v158 = v63;
        v159 = v220;
        (*(v219 + 16))(v216, v158, v220);
        v160 = v178;
        sub_1000863F8(v153, v178);
        v161 = (*(v173 + 80) + 32) & ~*(v173 + 80);
        v162 = (v174 + *(v156 + 80) + v161) & ~*(v156 + 80);
        v163 = &v208[*(v176 + 80) + v162] & ~*(v176 + 80);
        v164 = swift_allocObject();
        *(v164 + 16) = v154;
        *(v164 + 24) = v222;
        sub_100086450(v155, v164 + v161);
        (*(v156 + 32))(v164 + v162, v157, v159);
        sub_100086450(v160, v164 + v163);
        v228 = sub_1008B038C;
        v229 = v164;
        aBlock = _NSConcreteStackBlock;
        v225 = 1107296256;
        v226 = sub_1000742F0;
        v227 = &unk_100C742E0;
        v165 = _Block_copy(&aBlock);

        v166 = v188;
        static DispatchQoS.unspecified.getter();
        v223 = _swiftEmptyArrayStorage;
        sub_1000675AC(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
        sub_10006768C(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00);
        v167 = v189;
        v168 = v193;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v169 = v221;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v165);

        v192[1](v167, v168);
        v190[1](v166, v191);
        sub_100087544();
        sub_100087544();
      }

      sub_100087544();
    }

    sub_10018E2C0(0, 0);
    return sub_10018E604(v63);
  }
}

uint64_t sub_10007CEF8()
{
  swift_weakDestroy();
  sub_100007E8C();

  return swift_deallocObject();
}

uint64_t sub_10007D55C()
{
  v23 = type metadata accessor for Location();
  sub_1000037C4();
  v2 = v1;
  v19 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v22 = type metadata accessor for WeatherServiceLocationOptions();
  sub_1000037C4();
  v6 = v5;
  v18 = (v19 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v21 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v10 = v9;
  v11 = (v18 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v13 = (((*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = type metadata accessor for TimeState(0);
  sub_100003AE8(v14);
  v20 = (v13 + *(v15 + 80) + 32) & ~*(v15 + 80);

  (*(v2 + 8))(v0 + v19, v23);
  (*(v6 + 8))(v0 + v18, v22);
  (*(v10 + 8))(v0 + v11, v21);

  type metadata accessor for Date();
  sub_100003D98();
  (*(v16 + 8))(v0 + v20);

  return swift_deallocObject();
}

void sub_10007D7F4()
{
  sub_10000C778();
  v2 = v1;
  v29 = v3;
  v4 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v28 = v0;
  v11 = *v0;
  sub_100086814();
  sub_10005E46C(v12, v13, &protocol conformance descriptor for Location.Identifier);
  sub_1000251E0();
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v30 = v11;
  v31 = v11 + 56;
  sub_100071DC8();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    if (((1 << (v14 & v16)) & *(v31 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10003140C();
      v24();
      v32 = *v28;
      v25 = sub_100014AD8();
      sub_10007DA64(v25, v26, isUniquelyReferenced_nonNull_native);
      *v28 = v32;
      sub_10003140C();
      v27();
      goto LABEL_7;
    }

    v18 = v6[9] * v17;
    v19 = v6[2];
    v19(v10, *(v30 + 48) + v18, v4);
    sub_100086814();
    sub_10005E46C(&qword_100CA3A48, v20, &protocol conformance descriptor for Location.Identifier);
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = v6[1];
    v22(v10, v4);
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v22(v2, v4);
  v19(v29, *(v30 + 48) + v18, v4);
LABEL_7:
  sub_10000536C();
}

uint64_t sub_10007DA64(uint64_t a1, unint64_t a2, char a3)
{
  v23 = a1;
  v6 = type metadata accessor for Location.Identifier();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100191694(v11 + 1);
      goto LABEL_8;
    }

    if (v12 <= v11)
    {
      sub_10005E4B4(v11 + 1);
LABEL_8:
      v22 = v3;
      v13 = *v3;
      sub_10005E46C(&qword_100CA3A40, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
      v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v10, *(v13 + 48) + *(v7 + 72) * a2, v6);
        sub_10005E46C(&qword_100CA3A48, &type metadata accessor for Location.Identifier, &protocol conformance descriptor for Location.Identifier);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v10, v6);
        if (v16)
        {
          goto LABEL_16;
        }

        v14 = a2 + 1;
      }

      v3 = v22;
      goto LABEL_13;
    }

    sub_1006A1E48();
  }

LABEL_13:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v17 + 48) + *(v7 + 72) * a2, v23, v6, v8);
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }

  return result;
}

uint64_t sub_10007DD28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CD5528, &unk_100A9DEA0);
    v8 = v5 + *(a4 + 24);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10007DDB8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10007DE14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10022C350(&qword_100CD5528, &unk_100A9DEA0);
    v9 = a1 + *(a3 + 24);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_10007DEA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007DF18(uint64_t a1)
{
  v295 = a1;
  v290 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v291 = v3 - v2;
  v4 = type metadata accessor for LocationPreviewViewState(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v293 = v7 - v6;
  v8 = sub_10022C350(&qword_100CADBA0, &qword_100A3D250);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_100003990(&v255 - v10);
  v266 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  sub_1000037C4();
  v265 = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_100003990(&v255 - v13);
  v14 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_10000E70C();
  sub_100003990(v19);
  v20 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  v21 = sub_100003810(v20);
  __chkstk_darwin(v21);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v24);
  sub_10000E70C();
  sub_100003990(v25);
  v26 = sub_10022C350(&qword_100CA6898, &unk_100A3FA90);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_10000E70C();
  sub_100003990(v29);
  v285 = type metadata accessor for OpenL2Descriptor(0);
  sub_1000037E8();
  __chkstk_darwin(v30);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v31);
  sub_10000E70C();
  sub_100003990(v32);
  v33 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v34 = sub_100003810(v33);
  __chkstk_darwin(v34);
  sub_100003848();
  v287 = v35;
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  sub_100003990(v38);
  v288 = type metadata accessor for Location();
  sub_1000037C4();
  v292 = v39;
  __chkstk_darwin(v40);
  sub_100003848();
  v294 = v41;
  __chkstk_darwin(v42);
  sub_10000E70C();
  sub_100003990(v43);
  v44 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  sub_100003810(v44);
  sub_100003828();
  __chkstk_darwin(v45);
  type metadata accessor for LocationsState(0);
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_1000037D8();
  v49 = v48 - v47;
  v50 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  sub_100003810(v50);
  sub_100003828();
  __chkstk_darwin(v51);
  v53 = &v255 - v52;
  v280 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v281 = v54;
  __chkstk_darwin(v55);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_10000E70C();
  sub_100003990(v58);
  v289 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v286 = v59;
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  v63 = &v255 - v62;
  __chkstk_darwin(v64);
  sub_10000E70C();
  v284 = v65;
  active = type metadata accessor for LocationViewerActiveLocationState(0);
  v67 = sub_100003810(active);
  __chkstk_darwin(v67);
  sub_1000037D8();
  v70 = v69 - v68;
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v71);
  sub_1000037D8();
  v74 = (v73 - v72);
  v75 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v76);
  sub_1000037D8();
  v79 = v78 - v77;
  v295 = *(v295 + 64);
  sub_100095210(v295 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v78 - v77, type metadata accessor for ViewState);
  sub_100095210(v79 + v75[5], v74, type metadata accessor for ViewState.SecondaryViewState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000048C8();
    sub_10009F020(v74, type metadata accessor for ViewState.SecondaryViewState);
LABEL_10:
    v83 = v292;
    v82 = v293;
    v84 = v294;
LABEL_11:
    v85 = v291;
    v96 = v295;
    goto LABEL_12;
  }

  v278 = *v74;
  if (*(v79 + v75[9] + 8) == 1)
  {
    v80 = [objc_opt_self() currentDevice];
    [v80 userInterfaceIdiom];

    LOBYTE(v80) = *(v79 + v75[7]);
    sub_1000048C8();
    v81 = v289;
    if ((v80 & 1) == 0)
    {
      sub_10006989C();
LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
    sub_1000048C8();
    v81 = v289;
  }

  sub_100095210(v278 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v70, type metadata accessor for LocationViewerActiveLocationState);
  sub_1000038B4(v70, 1, v81);
  if (v112)
  {
    goto LABEL_9;
  }

  v94 = v286;
  v95 = v284;
  (*(v286 + 32))(v284, v70, v81);
  v96 = v295;
  sub_100095210(v295 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations, v49, type metadata accessor for LocationsState);
  static CurrentLocation.placeholderIdentifier.getter();
  v97 = static Location.Identifier.== infix(_:_:)();
  v98 = *(v94 + 8);
  v257 = v94 + 8;
  v256 = v98;
  v99 = (v98)(v63, v81);
  if (v97)
  {
    sub_10022C350(&qword_100CA38C0, &unk_100A2D7E0);
    type metadata accessor for CurrentLocation();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for LocationOfInterest();
    sub_100003934();
    sub_10001B350(v100, v101, v102, v103);
    LocationModelData.init(locationOfInterest:isPredictedLocation:)();
    v104 = v280;
    (*(v281 + 104))(v53, enum case for LocationModel.current(_:), v280);
    sub_10000E7B0();
    sub_10001B350(v105, v106, v107, v104);
    v108 = v95;
  }

  else
  {
    __chkstk_darwin(v99);
    *(&v255 - 2) = v95;
    sub_100030C98(sub_100079458, (&v255 - 4), v115);
    v108 = v95;
    v104 = v280;
  }

  sub_10009F020(v49, type metadata accessor for LocationsState);
  sub_1000038B4(v53, 1, v104);
  v84 = v294;
  v116 = v282;
  if (v112)
  {
    sub_1000180EC(v53, &unk_100CE2F20, &unk_100A2D7D0);
    if (qword_100CA2760 != -1)
    {
      sub_10000FAB4(&qword_100CA2760);
    }

    v117 = type metadata accessor for Logger();
    sub_10000703C(v117, qword_100D90C78);
    v118 = v275;
    (*(v286 + 16))(v275, v108, v81);
    v119 = Logger.logObject.getter();
    v120 = v108;
    v121 = static os_log_type_t.error.getter();
    v122 = os_log_type_enabled(v119, v121);
    v83 = v292;
    if (v122)
    {
      v123 = swift_slowAlloc();
      v124 = v81;
      v125 = swift_slowAlloc();
      v296 = v125;
      sub_10000CB2C(7.2225e-34);
      sub_10005BDF0();
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      v128 = v127;
      v129 = v118;
      v130 = v256;
      v256(v129, v124);
      v131 = sub_100078694(v126, v128, &v296);
      v96 = v295;

      *(v123 + 14) = v131;
      _os_log_impl(&_mh_execute_header, v119, v121, "Could not find LocationModel for active location, identifier=%{private,mask.hash}s", v123, 0x16u);
      sub_100006F14(v125);
      sub_100003884(v125);
      sub_100003884(v123);
      sub_10006989C();

      v130(v284, v124);
      v84 = v294;
    }

    else
    {
      sub_10006989C();

      v163 = v256;
      v256(v118, v81);
      v163(v120, v81);
    }
  }

  else
  {
    v144 = v281;
    (*(v281 + 32))(v282, v53, v104);
    v145 = v276;
    LocationModel.coalesceLocation.getter();
    v146 = v288;
    sub_1000038B4(v145, 1, v288);
    if (v147)
    {
      sub_1000180EC(v145, &qword_100CA65D8, &unk_100A3D9D0);
      v83 = v292;
      if (qword_100CA2760 != -1)
      {
        sub_10000FAB4(&qword_100CA2760);
      }

      v148 = type metadata accessor for Logger();
      sub_10000703C(v148, qword_100D90C78);
      v149 = *(v144 + 16);
      v150 = v272;
      v149(v272, v116, v104);
      v151 = v116;
      v152 = Logger.logObject.getter();
      LODWORD(v286) = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v152, v286))
      {
        v153 = v150;
        v154 = swift_slowAlloc();
        v280 = swift_slowAlloc();
        v296 = v280;
        sub_10000CB2C(7.2225e-34);
        v149(v270, v153, v104);
        v155 = String.init<A>(describing:)();
        v157 = v156;
        v158 = *(v144 + 8);
        v158(v153, v104);
        v159 = sub_100078694(v155, v157, &v296);

        *(v154 + 14) = v159;
        _os_log_impl(&_mh_execute_header, v152, v286, "Could not find coalesceLocation for active LocationModel, locationModel=%{private,mask.hash}s", v154, 0x16u);
        v160 = v280;
        sub_100006F14(v280);
        sub_100003884(v160);
        sub_100003884(v154);
        sub_10006989C();

        v158(v282, v104);
      }

      else
      {
        sub_10006989C();

        v174 = *(v144 + 8);
        v174(v150, v104);
        v174(v151, v104);
      }

      goto LABEL_50;
    }

    v164 = v145;
    v83 = v292;
    v165 = v274;
    (*(v292 + 32))(v274, v164, v146);
    v166 = *sub_100016D74();
    v167 = OBJC_IVAR____TtC7Weather21AppContinuationBridge_pendingOpenL2Descriptor;
    swift_beginAccess();
    v168 = v166 + v167;
    v169 = v273;
    sub_100095334(v168, v273);
    sub_1000038B4(v169, 1, v285);
    if (v170)
    {
      sub_10006989C();

      (*(v83 + 8))(v165, v146);
      v171 = sub_100019D70();
      v172(v171, v104);
      sub_10003C730();
      v173();
      sub_1000180EC(v169, &qword_100CA6898, &unk_100A3FA90);
    }

    else
    {
      v176 = sub_100074E18();
      v177 = v271;
      sub_1000D38EC(v176, v271, v178);
      if (*(v177 + 1) != 1)
      {
        v179 = v96 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
        v180 = *(v96 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

        v181 = Location.id.getter();
        v182 = v268;
        sub_1000864C0(v181, v183, v180);

        v184 = type metadata accessor for LocationWeatherDataState(0);
        sub_1000038B4(v182, 1, v184);
        if (v112)
        {
          sub_1000180EC(v182, &qword_100CA37B0, &unk_100A2D740);
        }

        else
        {
          v189 = v262;
          sub_1001A0D3C();
          sub_10001F5A8();
          v190 = v182;
          v191 = v189;
          sub_10009F020(v190, v192);
          v193 = type metadata accessor for WeatherData(0);
          sub_1000038B4(v191, 1, v193);
          if (!v194)
          {
            v212 = v264;
            WeatherDataModel.hourlyForecast.getter();
            sub_100049B0C();
            sub_10009F020(v191, v213);
            v214 = v266;
            Forecast.forecast.getter();
            (*(v265 + 8))(v212, v214);

            v215 = *(v179 + 16);

            v216 = v274;
            v217 = Location.id.getter();
            v218 = v258;
            sub_1000864C0(v217, v219, v215);

            sub_1000038B4(v218, 1, v184);
            if (v220)
            {
              sub_1000180EC(v218, &qword_100CA37B0, &unk_100A2D740);
              v238 = v259;
              sub_100003934();
              sub_10001B350(v221, v222, v223, v193);
            }

            else
            {
              v238 = v259;
              sub_1001A0D3C();
              sub_10001F5A8();
              sub_10009F020(v218, v239);
            }

            sub_100016D74();
            sub_100011754();
            v241 = *(v240 - 256);
            v242 = v288;
            v243(v241, v216, v288);
            sub_10000E7B0();
            sub_10001B350(v244, v245, v246, v242);
            v247 = v267;
            v248 = v289;
            (*(v286 + 16))(v267, v284, v289);
            sub_10000E7B0();
            sub_10001B350(v249, v250, v251, v248);
            sub_100365360(v238, v241, v247);
            sub_10006989C();

            sub_1000180EC(v247, &qword_100CADBA0, &qword_100A3D250);
            sub_1000180EC(v241, &qword_100CA65D8, &unk_100A3D9D0);
            sub_1000180EC(v238, &qword_100CA3898, &qword_100A314D0);
            sub_10001CAE8();
            sub_10009F020(v271, v252);
            (*(v83 + 8))(v216, v242);
            v253 = sub_100019D70();
            v254(v253, v280);
LABEL_50:
            sub_10003C730();
            v175();
            v82 = v293;
            goto LABEL_11;
          }

          sub_1000180EC(v191, &qword_100CA3898, &qword_100A314D0);
          v177 = v271;
        }
      }

      sub_10006989C();

      sub_10001CAE8();
      sub_10009F020(v177, v195);
      v196 = sub_100037C98();
      v197(v196);
      v198 = sub_100019D70();
      v199(v198, v104);
      sub_10003C730();
      v200();
    }
  }

  v82 = v293;
  v85 = v291;
LABEL_12:
  sub_100095210(v96 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v85, type metadata accessor for ModalViewState);
  if (swift_getEnumCaseMultiPayload())
  {
    v86 = type metadata accessor for ModalViewState;
    goto LABEL_14;
  }

  sub_1000D38EC(v85, v82, type metadata accessor for LocationPreviewViewState);
  v90 = v287;
  sub_1006E6234(v287);
  v91 = v288;
  sub_1000038B4(v90, 1, v288);
  if (v112)
  {
    sub_1000108A8();
    v92 = &qword_100CA65D8;
    v93 = &unk_100A3D9D0;
  }

  else
  {
    (*(v83 + 32))(v84, v90, v91);
    v109 = *sub_100016D74();
    v110 = OBJC_IVAR____TtC7Weather21AppContinuationBridge_pendingOpenL2Descriptor;
    swift_beginAccess();
    v111 = v109 + v110;
    v90 = v279;
    sub_100095334(v111, v279);
    sub_1000038B4(v90, 1, v285);
    if (!v112)
    {
      v132 = sub_100074E18();
      v85 = v277;
      sub_1000D38EC(v132, v277, v133);
      if ((*(v85 + 1) & 1) != 0 && (*(v85 + *(v285 + 28) + 16) & 1) == 0)
      {
        sub_1000161C0((v283 + 56), *(v283 + 80));
        sub_10058A09C();
        if (v134)
        {
          v135 = v96 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
          v136 = *(v96 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

          v137 = Location.id.getter();
          v138 = v269;
          sub_1000864C0(v137, v139, v136);

          v140 = type metadata accessor for LocationWeatherDataState(0);
          sub_1000038B4(v138, 1, v140);
          if (v112)
          {
            v141 = &qword_100CA37B0;
            v142 = &unk_100A2D740;
            v143 = v138;
          }

          else
          {
            v185 = v263;
            sub_1001A0D3C();
            sub_10001F5A8();
            sub_10009F020(v138, v186);
            v187 = type metadata accessor for WeatherData(0);
            sub_1000038B4(v185, 1, v187);
            if (v188)
            {
              v141 = &qword_100CA3898;
              v142 = &qword_100A314D0;
              v143 = v185;
            }

            else
            {
              v201 = v264;
              WeatherDataModel.hourlyForecast.getter();
              sub_100049B0C();
              sub_10009F020(v185, v202);
              v203 = v266;
              Forecast.forecast.getter();
              (*(v265 + 8))(v201, v203);

              v204 = *(v135 + 16);

              v205 = Location.id.getter();
              v206 = v260;
              sub_1000864C0(v205, v207, v204);

              sub_1000038B4(v206, 1, v140);
              if (v208)
              {
                sub_1000180EC(v206, &qword_100CA37B0, &unk_100A2D740);
                v224 = v261;
                sub_100003934();
                sub_10001B350(v209, v210, v211, v187);
              }

              else
              {
                v224 = v261;
                sub_1001A0D3C();
                sub_10001F5A8();
                sub_10009F020(v206, v225);
              }

              sub_100016D74();
              sub_100011754();
              v227 = *(v226 - 256);
              v228(v227, v84, v91);
              sub_10000E7B0();
              sub_10001B350(v229, v230, v231, v91);
              v232 = v267;
              sub_100003934();
              sub_10001B350(v233, v234, v235, v289);
              sub_100365360(v224, v227, v232);
              sub_1000180EC(v232, &qword_100CADBA0, &qword_100A3D250);
              sub_1000180EC(v227, &qword_100CA65D8, &unk_100A3D9D0);
              v141 = &qword_100CA3898;
              v142 = &qword_100A314D0;
              v143 = v224;
            }
          }

          sub_1000180EC(v143, v141, v142);
          v236 = sub_10000ED08();
          v237(v236);
          sub_1000108A8();
          sub_10001CAE8();
          v88 = v277;
          return sub_10009F020(v88, v87);
        }
      }

      v161 = sub_10000ED08();
      v162(v161);
      sub_1000108A8();
      v86 = type metadata accessor for OpenL2Descriptor;
LABEL_14:
      v87 = v86;
      v88 = v85;
      return sub_10009F020(v88, v87);
    }

    v113 = sub_10000ED08();
    v114(v113);
    sub_1000108A8();
    v92 = &qword_100CA6898;
    v93 = &unk_100A3FA90;
  }

  return sub_1000180EC(v90, v92, v93);
}

uint64_t sub_10007F750(uint64_t a1, uint64_t a2)
{
  sub_100060C5C();
  sub_10022C350(&qword_100CB6D18, &qword_100A4A798);
  type metadata accessor for WeatherNetworkActivity();
  sub_100067638(&qword_100CB6D20, &qword_100CB6D18, &qword_100A4A798);
  Sequence.first<A>(map:)();
}

uint64_t sub_10007F81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, uint64_t a9@<X8>)
{
  v34 = a8;
  v27 = a5;
  v28 = a7;
  v29 = a2;
  v30 = a6;
  v25 = a3;
  v26 = a4;
  v32 = a9;
  v33 = a1;
  Policy = type metadata accessor for WeatherServiceCacheReadPolicy();
  v9 = *(Policy - 8);
  __chkstk_darwin(Policy);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CAD030, &unk_100A3C400);
  __chkstk_darwin(v12 - 8);
  v14 = &v25 - v13;
  v15 = type metadata accessor for WeatherServiceCaching.Options();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10022C350(&qword_100CAD038, &unk_100A95810);
  __chkstk_darwin(v19 - 8);
  v21 = &v25 - v20;
  v22 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v22 - 8);
  sub_1000302D8(v25, &v25 - v23, &qword_100CACE08, &unk_100A3C1B0);
  sub_1000302D8(v26, v21, &qword_100CAD038, &unk_100A95810);
  (*(v16 + 16))(v18, v27, v15);
  sub_1000302D8(v28, v14, &qword_100CAD030, &unk_100A3C400);

  static WeatherServiceCacheReadConfig.unexpiredExactMatches.getter();
  (*(v9 + 104))(v11, enum case for WeatherServiceCacheReadPolicy.useCache(_:), Policy);
  return WeatherServiceFetchOptions.init(countryCode:timeZone:locationOptions:cachingOptions:treatmentIdentifiers:networkActivity:needsMarineData:needsTwilightData:cacheReadPolicy:updateCacheAsynchronously:)();
}

uint64_t sub_10007FB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int a8, uint64_t a9)
{
  v10 = v9;
  LODWORD(v87) = a8;
  v80 = a7;
  v103 = a9;
  v83 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v95 = *(Options - 8);
  v79 = *(v95 + 64);
  __chkstk_darwin(Options);
  v101 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Location();
  v94 = *(v100 - 8);
  v78 = *(v94 + 64);
  __chkstk_darwin(v100);
  v99 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CACE08, &unk_100A3C1B0);
  __chkstk_darwin(v16 - 8);
  v18 = &v67 - v17;
  v105 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  v91 = *(v105 - 8);
  v75 = *(v91 + 64);
  __chkstk_darwin(v105);
  v97 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v67 - v21;
  v98 = type metadata accessor for AppConfiguration();
  v90 = *(v98 - 8);
  v74 = *(v90 + 64);
  __chkstk_darwin(v98);
  v96 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v92 = &v67 - v25;
  v104 = type metadata accessor for OSSignpostID();
  v89 = *(v104 - 8);
  v26 = *(v89 + 64);
  __chkstk_darwin(v104);
  v93 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v67 - v28;
  Location.coordinate.getter();
  v31 = v30;
  v32 = a1;
  Location.coordinate.getter();
  v72 = [objc_allocWithZone(CLLocation) initWithLatitude:v31 longitude:v33];
  v34 = *(v10 + 448);
  v77 = v29;
  OSSignpostID.init(log:)();
  sub_1000161C0((v10 + 120), *(v10 + 144));
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  v35 = v10;
  sub_1000161C0((v10 + 280), *(v10 + 304));
  Location.timeZone.getter();
  v36 = type metadata accessor for TimeZone();
  sub_10001B350(v18, 0, 1, v36);
  v73 = v22;
  dispatch thunk of ProductRequirementsFactoryType.appRequiredProducts(for:)();
  sub_100018144(v18, &qword_100CACE08, &unk_100A3C1B0);
  sub_10022C350(&qword_100CE2980, &qword_100A95828);
  v88 = swift_allocBox();
  v38 = v37;
  Fetched = type metadata accessor for WeatherServiceLastFetched();
  sub_10001B350(v38, 1, 1, Fetched);
  v69 = v87 & 1;
  v76 = sub_100086BF4(v87 & 1);
  v87 = swift_allocObject();
  swift_weakInit();
  v40 = *(v10 + 56);
  v71 = *(v10 + 48);
  v70 = v40;
  v68 = v10;
  v41 = v89;
  (*(v89 + 16))(v93, v29, v104);
  v42 = v94;
  (*(v94 + 16))(v99, v32, v100);
  v43 = v91;
  (*(v91 + 16))(v97, v22, v105);
  v44 = v95;
  (*(v95 + 16))(v101, v80, Options);
  sub_10042F370(v35 + 408, &v108);
  v45 = v90;
  (*(v90 + 16))(v96, v92, v98);
  v46 = (*(v41 + 80) + 33) & ~*(v41 + 80);
  v47 = (v26 + *(v42 + 80) + v46) & ~*(v42 + 80);
  v48 = (v78 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (*(v43 + 80) + v48 + 8) & ~*(v43 + 80);
  v50 = (v75 + *(v44 + 80) + v49) & ~*(v44 + 80);
  v75 = (v79 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v79 + 47) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v80 + 15) & 0xFFFFFFFFFFFFFFF8;
  v51 = (*(v45 + 80) + v78 + 8) & ~*(v45 + 80);
  v52 = swift_allocObject();
  v54 = v103;
  v53 = v104;
  *(v52 + 16) = v87;
  *(v52 + 24) = v54;
  *(v52 + 32) = v69;
  (*(v41 + 32))(v52 + v46, v93, v53);
  (*(v94 + 32))(v52 + v47, v99, v100);
  v55 = v72;
  *(v52 + v48) = v72;
  (*(v43 + 32))(v52 + v49, v97, v105);
  (*(v95 + 32))(v52 + v50, v101, Options);
  v56 = (v52 + v75);
  v57 = v70;
  *v56 = v71;
  v56[1] = v57;
  sub_100013188(&v108, v52 + v79);
  *(v52 + v80) = v88;
  *(v52 + v78) = v68;
  v58 = v90;
  v59 = v98;
  (*(v90 + 32))(v52 + v51, v96, v98);
  aBlock[4] = sub_100090C6C;
  aBlock[5] = v52;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C74420;
  v60 = _Block_copy(aBlock);

  v61 = v55;

  v62 = v81;
  static DispatchQoS.unspecified.getter();
  v106 = _swiftEmptyArrayStorage;
  sub_1000675AC(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680, &qword_100A2EC00);
  sub_10006768C(&qword_100CD81D0, &qword_100CB4680, &qword_100A2EC00);
  v63 = v82;
  v64 = v83;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v65 = v76;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v60);

  (*(v86 + 8))(v63, v64);
  (*(v84 + 8))(v62, v85);
  (*(v91 + 8))(v73, v105);
  (*(v58 + 8))(v92, v59);
  (*(v89 + 8))(v77, v104);
}

uint64_t sub_100080700()
{
  v32 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v2 = v1;
  v3 = (*(v2 + 80) + 33) & ~*(v2 + 80);
  v28 = v3;
  v5 = *(v4 + 64);
  v31 = type metadata accessor for Location();
  sub_1000037C4();
  v7 = v6;
  v29 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  sub_100071A38();
  v9 = v8 & 0xFFFFFFFFFFFFFFF8;
  v25 = v8 & 0xFFFFFFFFFFFFFFF8;
  v30 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  sub_1000037C4();
  v11 = v10;
  v12 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v22 = v12;
  v14 = *(v13 + 64);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  sub_1000037C4();
  v16 = v15;
  v23 = (v12 + v14 + *(v15 + 80)) & ~*(v15 + 80);
  sub_100071A38();
  v24 = ((v17 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v19 = v18;
  v20 = (*(v19 + 80) + ((((v24 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v19 + 80);

  (*(v2 + 8))(v0 + v28, v32);
  (*(v7 + 8))(v0 + v29, v31);

  (*(v11 + 8))(v0 + v22, v30);
  (*(v16 + 8))(v0 + v23, Options);

  sub_100006F14((v0 + v24));

  (*(v19 + 8))(v0 + v20, v26);
  sub_10006A920();

  return swift_deallocObject();
}

id sub_100080AC4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___sessionObserver] = 0;
  *&v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___shortcutItemHandlerManager] = 0;
  v2 = &v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___continueUserActivityHandlerManager];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  v3 = &v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___stateManager];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___displayMetricsMonitor] = 0;
  v4 = &v0[OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___windowFocusManager];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v0[OBJC_IVAR____TtC7Weather13SceneDelegate_windowSizeChangingObservation] = 0;
  *&v0[OBJC_IVAR____TtC7Weather13SceneDelegate_sceneResizeMonitor] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

uint64_t sub_100080B78(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_100080BC8(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100080D18(uint64_t a1)
{
  if (!qword_100CE4198)
  {
    sub_10022E824(&unk_100CE0F40, &unk_100A502E0);
    sub_10006768C(&qword_100CA4CD0, &unk_100CE0F40, &unk_100A502E0);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CE4198);
    }
  }
}

void sub_100080DBC(uint64_t a1)
{
  sub_100080D18(319);
  if (v1 <= 0x3F)
  {
    sub_10006126C();
    if (v2 <= 0x3F)
    {
      sub_100009994(319);
      if (v3 <= 0x3F)
      {
        sub_1000612C8(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100080E90(uint64_t a1)
{
  sub_100007A00(319, &qword_100CE0DE8, &protocol descriptor for ScenePhaseManagerType);
  if (v1 <= 0x3F)
  {
    sub_100007BB8(319, &qword_100CADCC8, &type metadata accessor for ScenePhase);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for WeatherMapStatusBarColorSceneModifier(uint64_t a1)
{
  result = qword_100CB7578;
  if (!qword_100CB7578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100080F8C(uint64_t a1)
{
  if (!qword_100CB7588)
  {
    sub_10022E824(&qword_100CB3688, &unk_100A468C0);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB7588);
    }
  }
}

void sub_100080FF0(uint64_t a1)
{
  sub_1000810EC();
  if (v1 <= 0x3F)
  {
    sub_1000613B8(319, &qword_100CB8468, &type metadata accessor for FinishLaunchTestAction, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_1000613B8(319, &unk_100CB8470, type metadata accessor for ExtendedAppLaunchState, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000810EC()
{
  result = qword_100CE0DF0;
  if (!qword_100CE0DF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CE0DF0);
  }

  return result;
}

uint64_t sub_100081148(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_100081204()
{
  result = qword_100CE0F58;
  if (!qword_100CE0F58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CE0F60, &qword_100A91780);
    v4[0] = sub_10006143C();
    v4[1] = sub_100081290();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CE0F58);
  }

  return result;
}

unint64_t sub_100081290()
{
  result = qword_100CE0F98;
  if (!qword_100CE0F98)
  {
    result = swift_getWitnessTable(aQ_13, &type metadata for MainViewFullscreenMapOverlayModifier, v0, v1);
    atomic_store(result, &qword_100CE0F98);
  }

  return result;
}

unint64_t sub_1000812E4()
{
  result = qword_100CE11B8;
  if (!qword_100CE11B8)
  {
    result = swift_getWitnessTable(byte_100A732F4, &type metadata for MainViewModelEnvironmentModifier, v0, v1);
    atomic_store(result, &qword_100CE11B8);
  }

  return result;
}

unint64_t sub_100081338()
{
  result = qword_100CE1040;
  if (!qword_100CE1040)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_10022E824(&qword_100CDCD58, &unk_100A8BA20);
    v4[0] = sub_100061520(&qword_100CE1048, &type metadata accessor for LegibilityWeight);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_100CE1040);
  }

  return result;
}

unint64_t sub_1000813FC()
{
  result = qword_100CB75C8;
  if (!qword_100CB75C8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB75B8, &qword_100A4B4D0);
    v4[0] = sub_100006F64(&qword_100CB75D0, &qword_100CB75C0, &qword_100A4B4D8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CB75D8, &qword_100CB75E0, &unk_100A4B4E0, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB75C8);
  }

  return result;
}

uint64_t sub_1000814E4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008152C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100081574(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    v4 = sub_1000201F8();
    result = swift_getWitnessTable(v4);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000815B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for LocationPreviewView(uint64_t a1)
{
  result = qword_100CB0450;
  if (!qword_100CB0450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008164C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10008169C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000816EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10008173C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10008178C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_100031D74();
    v7 = a4(v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1000817EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100081850()
{
  if (!qword_100CE26A0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_100CE26A0);
    }
  }
}

void sub_1000818A0(uint64_t a1)
{
  sub_100081850();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100081930(uint64_t a1)
{
  if (!qword_100CB0470)
  {
    type metadata accessor for WeatherVFXConditionBackground();
    sub_1000619F4(&qword_100CB0478, &type metadata accessor for WeatherVFXConditionBackground, &protocol conformance descriptor for WeatherVFXConditionBackground);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB0470);
    }
  }
}

void sub_1000819C4(uint64_t a1)
{
  if (!qword_100CB0480)
  {
    sub_10022E824(&qword_100CA4AB8, &qword_100A2ED90);
    sub_100006F64(&qword_100CA4AC0, &qword_100CA4AB8, &qword_100A2ED90, asc_100AA1480);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB0480);
    }
  }
}

uint64_t sub_100081A68(uint64_t a1)
{
  v1 = type metadata accessor for LocationPreviewViewContentModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_100081AE0(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NewsArticle(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100081B54(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100081BC8(uint64_t a1)
{
  if (!qword_100CA6D20)
  {
    sub_10022E824(&qword_100CA6D28, &qword_100A4CEA0);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100CA6D20);
    }
  }
}

unint64_t sub_100081C3C()
{
  result = qword_100CA6D38;
  if (!qword_100CA6D38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CA6D38);
  }

  return result;
}

void sub_100081C98()
{
  if (!qword_100CA6D40)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA6D40);
    }
  }
}

void sub_100081D28(uint64_t a1)
{
  sub_1000622F0(319);
  if (v1 <= 0x3F)
  {
    sub_10080EDD8(319, &qword_100CC07D0, &qword_100CC07D8, &qword_100A84020, &type metadata accessor for State);
    if (v2 <= 0x3F)
    {
      sub_10080EDD8(319, &qword_100CDB8A8, &qword_100CAB930, &qword_100A3A7C0, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100082830();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100081E64(uint64_t a1)
{
  v1 = type metadata accessor for SunriseSunsetDetailInput.Input(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t type metadata accessor for SunriseSunsetDetailViewModel(uint64_t a1)
{
  result = qword_100CCD0E0;
  if (!qword_100CCD0E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100081F08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_10022E824(&qword_100CA71A0, &unk_100A322C0);
    sub_100004464();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100081F84(uint64_t a1)
{
  type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    type metadata accessor for TimeZone();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AttributedString();
      if (v3 <= 0x3F)
      {
        sub_10000D054();
        if (v4 <= 0x3F)
        {
          type metadata accessor for SunriseSunsetDetailChartViewModel();
          if (v5 <= 0x3F)
          {
            type metadata accessor for Location();
            if (v6 <= 0x3F)
            {
              type metadata accessor for SunEvents();
              if (v7 <= 0x3F)
              {
                type metadata accessor for OverviewTableViewModel();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for DaylightStringBuilder();
                  if (v9 <= 0x3F)
                  {
                    sub_100062550(319);
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

uint64_t type metadata accessor for DetailComponentContainerViewModel(uint64_t a1)
{
  result = qword_100CB89F0;
  if (!qword_100CB89F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082134(uint64_t a1)
{
  sub_1000625A8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetailComponentViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_1000627C8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for DetailComponentViewModel(uint64_t a1)
{
  result = qword_100CD3248;
  if (!qword_100CD3248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008221C(uint64_t a1)
{
  sub_10000DB38(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = type metadata accessor for URL();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_1000822DC(uint64_t a1)
{
  if (!qword_100CAE198)
  {
    type metadata accessor for URL();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CAE198);
    }
  }
}

void sub_100082368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ConditionDetailMapViewModel(uint64_t a1)
{
  result = qword_100CDA580;
  if (!qword_100CDA580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100082408(uint64_t a1)
{
  result = type metadata accessor for ConditionDetailMapViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100082474(uint64_t a1)
{
  sub_100007760();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Location();
    if (v2 <= 0x3F)
    {
      sub_100082538(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for WeatherMapOverlayKind();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100082538(uint64_t a1)
{
  if (!qword_100CB4360)
  {
    type metadata accessor for WeatherData(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100CB4360);
    }
  }
}

uint64_t sub_100082590()
{

  return sub_100066B44();
}

uint64_t sub_1000825A8()
{

  return static FixedSizeTypeBinaryCodable.read(from:)();
}

uint64_t _s10PolarModelVMa(uint64_t a1)
{
  result = qword_100CCF980;
  if (!qword_100CCF980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100082614(uint64_t a1)
{
  type metadata accessor for PolarType();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for TimeZone();
      if (v3 <= 0x3F)
      {
        type metadata accessor for AttributedString();
        if (v4 <= 0x3F)
        {
          sub_10000D054();
          if (v5 <= 0x3F)
          {
            type metadata accessor for SunriseSunsetDetailChartViewModel();
            if (v6 <= 0x3F)
            {
              type metadata accessor for Location();
              if (v7 <= 0x3F)
              {
                type metadata accessor for DaylightStringBuilder();
                if (v8 <= 0x3F)
                {
                  type metadata accessor for OverviewTableViewModel();
                  if (v9 <= 0x3F)
                  {
                    sub_100062550(319);
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

void sub_100082768(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10022E824(a3, a4);
    v5 = type metadata accessor for State();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1000827BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_10022E824(a3, a4);
    v7 = sub_100031D74();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_100082830()
{
  result = qword_100CDB8B0;
  if (!qword_100CDB8B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CDB8B0);
  }

  return result;
}

uint64_t sub_1000828E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_100082940(uint64_t a1)
{
  sub_1000829F4();
  if (v1 <= 0x3F)
  {
    sub_10000D474(319, &qword_100CAD3B0, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000829F4()
{
  if (!qword_100CB3B28)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_100CB3B28);
    }
  }
}

void sub_100082A84(uint64_t a1)
{
  sub_10000D474(319, &qword_100CB3BF0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10000D474(319, &qword_100CAD3B0, &type metadata accessor for URL, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000829F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100082BA0()
{
  result = qword_100CB3C28;
  if (!qword_100CB3C28)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CB3B58, &qword_100A46920);
    v4[0] = sub_100006F64(&qword_100CB3C30, &qword_100CB3B68, &qword_100A46930, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CB3C38, &qword_100CB3B60, &qword_100A46928, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CB3C28);
  }

  return result;
}

uint64_t sub_100082CC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = type metadata accessor for PresentationWithoutInitialAnimation(255, *a1, v4, a4);
  swift_getWitnessTable(byte_100A55B30, v6);
  v7 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for _ViewModifier_Content<A>, v7);
  swift_getOpaqueTypeMetadata2();
  sub_10022E824(&qword_100CBE348, &unk_100A55B80);
  v9 = type metadata accessor for ModifiedContent();
  v10 = type metadata accessor for ModifiedContent();
  v13[2] = v7;
  v13[3] = v5;
  v13[4] = WitnessTable;
  v13[5] = v4;
  v13[0] = swift_getOpaqueTypeConformance2();
  v13[1] = sub_100082E44();
  v12[0] = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v9, v13);
  v12[1] = &protocol witness table for _AppearanceActionModifier;
  return swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v10, v12);
}

unint64_t sub_100082E44()
{
  result = qword_100CBE350;
  if (!qword_100CBE350)
  {
    v3 = sub_10022E824(&qword_100CBE348, &unk_100A55B80);
    result = swift_getWitnessTable(&protocol conformance descriptor for _ValueTransactionModifier<A>, v3, v0, v1);
    atomic_store(result, &qword_100CBE350);
  }

  return result;
}

unint64_t sub_100082EE8()
{
  result = qword_100CCFB40;
  if (!qword_100CCFB40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCFB18, &unk_100A73420);
    v4[0] = sub_100082FA0();
    v4[1] = sub_100006F64(&qword_100CCFB78, &qword_100CCFB80, &qword_100A734C0, &protocol conformance descriptor for _ValueTransactionModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCFB40);
  }

  return result;
}

unint64_t sub_100082FA0()
{
  result = qword_100CCFB48;
  if (!qword_100CCFB48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCFB10, &qword_100A73418);
    v4[0] = sub_100083058();
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCFB48);
  }

  return result;
}

unint64_t sub_100083058()
{
  result = qword_100CCFB50;
  if (!qword_100CCFB50)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCFB08, &qword_100A733E0);
    v4[0] = sub_100083110();
    v4[1] = sub_100006F64(&qword_100CB0558, &qword_100CE1580, &unk_100A408E0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCFB50);
  }

  return result;
}

unint64_t sub_100083110()
{
  result = qword_100CCFB58;
  if (!qword_100CCFB58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCFB00, &qword_100A733B0);
    v4[0] = sub_1000831C8();
    v4[1] = sub_100006F64(&qword_100CB0560, &qword_100CB0568, &unk_100A734B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCFB58);
  }

  return result;
}

unint64_t sub_1000831C8()
{
  result = qword_100CCFB60;
  if (!qword_100CCFB60)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_10022E824(&qword_100CCFAE8, &qword_100A73370);
    v4[0] = sub_100006F64(&qword_100CCFB68, &qword_100CCFAF8, &qword_100A73380, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v4[1] = sub_100006F64(&qword_100CCFB70, &qword_100CCFAF0, &qword_100A73378, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_100CCFB60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherMapPresentationIntent(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x100083380);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

double sub_100083418()
{
  sub_10089E720();
  EnvironmentValues.subscript.getter();
  return v1;
}

void sub_100083458()
{
  sub_10000FE4C();
  *v0 = sub_100083418();
  *(v0 + 8) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
}

double sub_1000834F0@<D0>(_OWORD *a1@<X8>)
{
  sub_1003ACB24();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

double sub_100083544@<D0>(_OWORD *a1@<X8>)
{
  if (qword_100CA1FC8 != -1)
  {
    swift_once();
  }

  v2 = unk_100CB28F8;
  *a1 = xmmword_100CB28E8;
  a1[1] = v2;
  result = *&xmmword_100CB2908;
  a1[2] = xmmword_100CB2908;
  return result;
}

double sub_1000835AC()
{
  xmmword_100CB28E8 = xmmword_100D8FC50;
  unk_100CB28F8 = unk_100D8FC60;
  result = *&xmmword_100D8FC70;
  xmmword_100CB2908 = xmmword_100D8FC70;
  return result;
}

uint64_t sub_1000835D0(__n128 *a1)
{
  sub_10001EA30(a1);
  sub_1003ACB24();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100083628(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = result;
    v4 = a2 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v3);

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *sub_1000836B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v31 = a6;
  v32 = a7;
  v14 = *a8;
  v15 = type metadata accessor for MainTracker();
  v36[3] = v15;
  v36[4] = &off_100C78C80;
  v36[0] = a3;
  v34 = v14;
  v35 = &off_100C55440;
  v33[0] = a8;
  type metadata accessor for MainInteractor();
  v16 = swift_allocObject();
  v17 = sub_10002D7F8(v36, v15);
  v18 = __chkstk_darwin(v17);
  v20 = (&v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = sub_10002D7F8(v33, v34);
  v23 = __chkstk_darwin(v22);
  v25 = (&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  v27 = *v20;
  v28 = *v25;
  v16[11] = v15;
  v16[12] = &off_100C78C80;
  v16[8] = v27;
  v16[16] = v14;
  v16[17] = &off_100C55440;
  v16[13] = v28;
  v16[6] = a1;
  v16[7] = a2;
  v16[2] = a4;
  v16[3] = a5;
  v29 = v32;
  v16[4] = v31;
  v16[5] = v29;
  sub_100006F14(v33);
  sub_100006F14(v36);
  return v16;
}

void sub_100083B88()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90478 = sub_100004594(44, 0x8000000100AD5C90);
  sub_1000212EC();
}

void sub_100083CDC()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0, &qword_100A63CA0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90488 = sub_100004594(37, 0x8000000100AD5C60);
  sub_1000212EC();
}

uint64_t sub_100083E30()
{
  v1 = OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___observableResolver;
  if (*(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___observableResolver))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Weather11AppDelegate____lazy_storage___observableResolver);
  }

  else
  {
    v3 = v0;
    sub_1000359CC(v5);
    type metadata accessor for ObservableResolver();
    swift_allocObject();
    v2 = ObservableResolver.init(_:)();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100083ED0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009D0D4();
  *a1 = result & 1;
  a1[1] = BYTE1(result) & 1;
  a1[2] = BYTE2(result) & 1;
  a1[3] = BYTE3(result) & 1;
  return result;
}

uint64_t sub_100083F54(unsigned __int8 *a1)
{
  if (a1[3])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (a1[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (a1[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_100083F18(v3 | *a1 | v2 | v1);
}

void sub_100084020()
{
  sub_10000C778();
  v1 = v0;
  v232 = v2;
  v231 = sub_10022C350(&qword_100CB3688, &unk_100A468C0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_100003848();
  v230 = v4;
  __chkstk_darwin(v5);
  v229 = &v180 - v6;
  v227 = sub_10022C350(&qword_100CDCD58, &unk_100A8BA20);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000039BC();
  v228 = v8;
  v9 = sub_1000038CC();
  v10 = type metadata accessor for MainView(v9);
  sub_1000037C4();
  v237 = v11;
  __chkstk_darwin(v12);
  v238 = v13;
  v239 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000038CC();
  type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v225 = v15;
  v226 = v14;
  __chkstk_darwin(v14);
  sub_1000037D8();
  v224 = v17 - v16;
  sub_10022C350(&unk_100CE0EB0, &qword_100A310D0);
  sub_1000037C4();
  v233 = v19;
  v234 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  sub_1000039BC();
  v215 = v21;
  sub_1000038CC();
  v200 = type metadata accessor for VibrantDividerStyle();
  sub_1000037C4();
  v198 = v22;
  __chkstk_darwin(v23);
  sub_1000037D8();
  v195 = v25 - v24;
  sub_1000038CC();
  v26 = type metadata accessor for UserInterfaceSizeClass();
  sub_1000037C4();
  v184 = v27;
  __chkstk_darwin(v28);
  sub_1000037D8();
  v181 = v30 - v29;
  v31 = sub_10022C350(&qword_100CA64E8, &unk_100A46060) - 8;
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &v180 - v33;
  v35 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  v182 = v37;
  __chkstk_darwin(v38);
  v40 = &v180 - v39;
  __chkstk_darwin(v41);
  v43 = &v180 - v42;
  v186 = sub_10022C350(&qword_100CE0EC0, &qword_100A916B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v44);
  sub_1000039BC();
  v185 = v45;
  v191 = sub_10022C350(&qword_100CE0EC8, &qword_100A916B8);
  sub_1000037C4();
  v188 = v46;
  sub_100003828();
  __chkstk_darwin(v47);
  sub_1000039BC();
  v187 = v48;
  v199 = sub_10022C350(&qword_100CE0ED0, &qword_100A916C0);
  sub_1000037C4();
  v197 = v49;
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  v196 = v51;
  sub_10022C350(&qword_100CE0ED8, &qword_100A916C8);
  sub_1000037C4();
  v192 = v53;
  v193 = v52;
  sub_100003828();
  __chkstk_darwin(v54);
  sub_1000039BC();
  v190 = v55;
  v189 = sub_10022C350(&qword_100CE0EE0, &qword_100A916D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v56);
  sub_1000039BC();
  v194 = v57;
  v235 = sub_10022C350(&qword_100CE0EE8, &qword_100A916D8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v58);
  sub_1000039BC();
  v201 = v59;
  v211 = sub_10022C350(&qword_100CE0EF0, &qword_100A916E0);
  sub_1000037C4();
  v208 = v60;
  sub_100003828();
  __chkstk_darwin(v61);
  sub_1000039BC();
  v205 = v62;
  v212 = sub_10022C350(&qword_100CE0EF8, &qword_100A916E8);
  sub_1000037C4();
  v209 = v63;
  sub_100003828();
  __chkstk_darwin(v64);
  sub_1000039BC();
  v206 = v65;
  v204 = sub_10022C350(&qword_100CE0F00, &qword_100A916F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v66);
  sub_1000039BC();
  v210 = v67;
  v202 = sub_10022C350(&qword_100CE0F08, &qword_100A916F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v68);
  sub_1000039BC();
  v213 = v69;
  v203 = sub_10022C350(&qword_100CE0F10, &qword_100A91700);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v70);
  sub_1000039BC();
  v214 = v71;
  v207 = sub_10022C350(&qword_100CE0F18, &qword_100A91708);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v72);
  sub_1000039BC();
  v216 = v73;
  v218 = sub_10022C350(&qword_100CE0F20, &qword_100A91710);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v74);
  sub_1000039BC();
  v219 = v75;
  sub_10022C350(&qword_100CE0F28, &qword_100A91718);
  sub_1000037C4();
  v222 = v77;
  v223 = v76;
  sub_100003828();
  __chkstk_darwin(v78);
  sub_1000039BC();
  v221 = v79;
  v217 = sub_10022C350(&unk_100CE0F30, &qword_100A91720);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v80);
  sub_1000039BC();
  v220 = v81;
  *&v244[0] = static Alignment.center.getter();
  *(&v244[0] + 1) = v82;
  sub_1000857D4(v0, &v244[1]);
  KeyPath = swift_getKeyPath();
  v236 = v10;
  v84 = Namespace.wrappedValue.getter();
  *(&v244[7] + 1) = KeyPath;
  *&v244[8] = v84;
  BYTE8(v244[8]) = 0;
  sub_100035B30((v1 + 1), v245);
  v183 = Namespace.wrappedValue.getter();
  v240 = v1;
  v85 = v184;
  sub_100889B04();
  (*(v85 + 104))(v40, enum case for UserInterfaceSizeClass.regular(_:), v26);
  sub_10001B350(v40, 0, 1, v26);
  v86 = *(v31 + 56);
  sub_1000302D8(v43, v34, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v40, &v34[v86], &qword_100CA6028, &qword_100A40610);
  sub_100003BDC(v34);
  if (!v89)
  {
    v180 = v43;
    v88 = v182;
    sub_1000302D8(v34, v182, &qword_100CA6028, &qword_100A40610);
    sub_100003BDC(&v34[v86]);
    if (!v89)
    {
      v90 = &v34[v86];
      v91 = v181;
      (*(v85 + 32))(v181, v90, v26);
      sub_100061520(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v87 = dispatch thunk of static Equatable.== infix(_:_:)();
      v92 = *(v85 + 8);
      v92(v91, v26);
      v86 = &qword_100A40610;
      sub_1000180EC(v40, &qword_100CA6028, &qword_100A40610);
      sub_1000180EC(v180, &qword_100CA6028, &qword_100A40610);
      v92(v88, v26);
      sub_1000180EC(v34, &qword_100CA6028, &qword_100A40610);
      goto LABEL_10;
    }

    v86 = &qword_100A40610;
    sub_1000180EC(v40, &qword_100CA6028, &qword_100A40610);
    sub_1000180EC(v180, &qword_100CA6028, &qword_100A40610);
    (*(v85 + 8))(v88, v26);
LABEL_9:
    sub_1000180EC(v34, &qword_100CA64E8, &unk_100A46060);
    v87 = 0;
    goto LABEL_10;
  }

  sub_1000180EC(v40, &qword_100CA6028, &qword_100A40610);
  sub_1000180EC(v43, &qword_100CA6028, &qword_100A40610);
  sub_100003BDC(&v34[v86]);
  if (!v89)
  {
    goto LABEL_9;
  }

  sub_1000180EC(v34, &qword_100CA6028, &qword_100A40610);
  v87 = 1;
LABEL_10:
  sub_100013188(v245, v241);
  *(&v242 + 1) = v183;
  v243 = v87 & 1;
  memcpy(v245, v244, 0x89uLL);
  v245[9] = v241[0];
  v245[10] = v241[1];
  v245[11] = v242;
  LOBYTE(v245[12]) = v87 & 1;
  v93 = v240;
  v94 = *v240;
  v96 = v185;
  v95 = v186;
  v97 = &v185[*(v186 + 36)];
  sub_100035B30((v240 + 1), (v97 + 2));
  v98 = *(v93 + *(v236 + 60));
  swift_getKeyPath();
  v99 = sub_100011748();
  *(v97 + *(type metadata accessor for MainViewSheetViewModifier(v99) + 28)) = v86;
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  swift_storeEnumTagMultiPayload();
  v184 = v94;
  swift_retain_n();

  v183 = sub_10022C350(&unk_100CE0F40, &unk_100A502E0);
  v182 = sub_10006768C(&qword_100CA4CD0, &unk_100CE0F40, &unk_100A502E0);
  sub_100020B28();
  *v97 = ObservedObject.init(wrappedValue:)();
  v97[1] = v100;
  v97[7] = v98;
  memcpy(v96, v245, 0xC1uLL);
  v101 = v195;
  static DividerStyle<>.vibrant.getter();
  v102 = sub_10088D334();
  v103 = sub_100061520(&qword_100CE0FA8, &type metadata accessor for VibrantDividerStyle);
  v104 = v187;
  v105 = v200;
  View.dividerStyle<A>(_:)();
  (*(v198 + 8))(v101, v105);
  sub_1000180EC(v96, &qword_100CE0EC0, &qword_100A916B0);
  Solarium.init()();
  v106 = sub_10022C350(&qword_100CE0FB0, &unk_100A917A0);
  *&v245[0] = v95;
  *(&v245[0] + 1) = v105;
  *&v245[1] = v102;
  *(&v245[1] + 1) = v103;
  v107 = sub_10000CFA0();
  v108 = sub_10088D3F0();
  v109 = v196;
  v110 = v191;
  View.staticIf<A, B>(_:then:)();
  (*(v188 + 8))(v104, v110);
  Solarium.init()();
  v111 = v215;
  v112 = static ViewInputPredicate.! prefix(_:)();
  v200 = &v180;
  __chkstk_darwin(v112);
  v198 = sub_10022C350(&qword_100CE0FD0, &qword_100A917B0);
  *&v245[0] = v110;
  *(&v245[0] + 1) = &type metadata for Solarium;
  *&v245[1] = v106;
  *(&v245[1] + 1) = v107;
  *&v245[2] = &protocol witness table for Solarium;
  *(&v245[2] + 1) = v108;
  sub_10000CFA0();
  *&v245[0] = &type metadata for Solarium;
  *(&v245[0] + 1) = &protocol witness table for Solarium;
  sub_10000CFA0();
  sub_10088D53C();
  v113 = v190;
  v114 = v199;
  v115 = v234;
  View.staticIf<A, B>(_:then:)();
  (*(v233 + 1))(v111, v115);
  (*(v197 + 8))(v109, v114);
  v116 = v194;
  (*(v192 + 32))(v194, v113, v193);
  *(v116 + *(v189 + 36)) = 1;
  v117 = v201;
  v118 = v201 + *(v235 + 36);
  v119 = v240;
  sub_100035B30((v240 + 6), v118);
  v120 = *(type metadata accessor for MainViewScenePhaseObservationViewModifier(0) + 20);
  *(v118 + v120) = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  swift_storeEnumTagMultiPayload();
  v121 = sub_100020B28();
  sub_10011C0F0(v121, v122, v123, v124);
  v125 = v224;
  sub_1008897F4();
  v126 = v239;
  v233 = type metadata accessor for MainView;
  sub_100085E60(v119, v239, type metadata accessor for MainView);
  v237 = *(v237 + 80);
  v127 = (v237 + 16) & ~v237;
  v128 = swift_allocObject();
  sub_100085EBC(v126, v128 + v127, type metadata accessor for MainView);
  v215 = sub_100890D20();
  v129 = sub_100061520(&qword_100CE1038, &type metadata accessor for ContentSizeCategory);
  v130 = v205;
  v131 = v226;
  View.onChange<A>(of:initial:_:)();

  (*(v225 + 8))(v125, v131);
  sub_1000180EC(v117, &qword_100CE0EE8, &qword_100A916D8);
  v132 = v228;
  v133 = v240;
  sub_10088998C();
  v134 = v133;
  v135 = v239;
  v136 = v233;
  sub_100085E60(v134, v239, v233);
  v234 = v127;
  v137 = swift_allocObject();
  sub_100085EBC(v135, v137 + v127, v136);
  *&v245[0] = v235;
  *(&v245[0] + 1) = v131;
  *&v245[1] = v215;
  *(&v245[1] + 1) = v129;
  sub_100008CC8();
  swift_getOpaqueTypeConformance2();
  sub_100081338();
  v138 = v211;
  View.onChange<A>(of:initial:_:)();

  sub_1000180EC(v132, &qword_100CDCD58, &unk_100A8BA20);
  (*(v208 + 8))(v130, v138);
  v139 = v239;
  v140 = v240;
  v141 = v233;
  sub_100085E60(v240, v239, v233);
  v142 = v234;
  v143 = swift_allocObject();
  sub_100085EBC(v139, v143 + v142, v141);
  v144 = v210;
  v145 = sub_100025214();
  v146(v145);
  v147 = (v144 + *(v204 + 36));
  *v147 = sub_100891080;
  v147[1] = v143;
  v147[2] = 0;
  v147[3] = 0;
  v148 = swift_getKeyPath();
  v149 = v213;
  v150 = (v213 + *(v202 + 36));
  sub_10022C350(&qword_100CE1050, &qword_100A408F0);
  v151 = v140;
  sub_100889B04();
  *v150 = v148;
  sub_10011C0F0(v144, v149, &qword_100CE0F00, &qword_100A916F0);
  v152 = type metadata accessor for ColorScheme();
  v153 = v229;
  sub_10001B350(v229, 1, 1, v152);
  sub_1000302D8(v153, v230, &qword_100CB3688, &unk_100A468C0);
  v154 = v214;
  State.init(wrappedValue:)();
  sub_1000180EC(v153, &qword_100CB3688, &unk_100A468C0);
  sub_10011C0F0(v149, v154, &qword_100CE0F08, &qword_100A916F8);
  v155 = v216;
  v156 = v216 + *(v207 + 36);
  sub_100889B04();
  v157 = (v156 + *(sub_10022C350(&qword_100CE1058, &qword_100A91830) + 36));
  *v157 = sub_10051D4BC;
  v157[1] = 0;
  sub_10011C0F0(v154, v155, &qword_100CE0F10, &qword_100A91700);
  v158 = v219;
  v159 = v219 + *(v218 + 36);
  sub_100035B30(v151 + 88, v159);
  v160 = type metadata accessor for MonitorAppLaunchStateViewModifier(0);
  v161 = *(v160 + 20);
  *(v159 + v161) = swift_getKeyPath();
  sub_10022C350(&qword_100CE1060, &qword_100A4C4D0);
  swift_storeEnumTagMultiPayload();
  v162 = (v159 + *(v160 + 24));
  type metadata accessor for ExtendedAppLaunchState(0);
  v163 = swift_allocObject();
  *(v163 + 16) = 1;
  ObservationRegistrar.init()();
  *&v244[0] = v163;
  State.init(wrappedValue:)();
  v164 = *(&v245[0] + 1);
  *v162 = *&v245[0];
  v162[1] = v164;
  sub_10011C0F0(v155, v158, &qword_100CE0F18, &qword_100A91708);
  v165 = (v151 + *(v236 + 56));
  v166 = *v165;
  v167 = v165[1];
  v168 = v165[2];
  *&v245[0] = v166;
  *(&v245[0] + 1) = v167;
  *&v245[1] = v168;
  sub_10022C350(&qword_100CE1068, &qword_100A91870);
  State.wrappedValue.getter();
  v245[0] = v244[0];
  sub_10089116C();
  sub_10002D5A4();
  v169 = v221;
  View.navigationTitle<A>(_:)();

  sub_1000180EC(v158, &qword_100CE0F20, &qword_100A91710);
  v170 = v239;
  sub_100085E60(v151, v239, v141);
  v171 = v234;
  v172 = swift_allocObject();
  sub_100085EBC(v170, v172 + v171, v141);
  v173 = v220;
  (*(v222 + 32))(v220, v169, v223);
  v174 = (v173 + *(v217 + 36));
  *v174 = sub_1008915C8;
  v174[1] = v172;
  v175 = ObservedObject.init(wrappedValue:)();
  v177 = v176;
  v178 = v232;
  sub_10011C0F0(v173, v232, &unk_100CE0F30, &qword_100A91720);
  v179 = (v178 + *(sub_10022C350(&unk_100CE10C0, &qword_100A91878) + 36));
  *v179 = v175;
  v179[1] = v177;
  sub_10000536C();
}

uint64_t sub_1000856EC()
{
  sub_10000FE4C();
  result = sub_1000A48C0();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1000857D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(&qword_100CA64E8, &unk_100A46060);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = sub_10022C350(&qword_100CA6028, &qword_100A40610);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v33 - v14;
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  v35 = a1;
  sub_100889B04();
  (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.regular(_:), v3);
  sub_10001B350(v15, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_1000302D8(v18, v9, &qword_100CA6028, &qword_100A40610);
  sub_1000302D8(v15, &v9[v19], &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(v9, 1, v3) != 1)
  {
    sub_1000302D8(v9, v12, &qword_100CA6028, &qword_100A40610);
    if (sub_100024D10(&v9[v19], 1, v3) != 1)
    {
      v26 = v34;
      (*(v4 + 32))(v34, &v9[v19], v3);
      sub_100061520(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v4 + 8);
      v28(v26, v3);
      sub_1000180EC(v15, &qword_100CA6028, &qword_100A40610);
      sub_1000180EC(v18, &qword_100CA6028, &qword_100A40610);
      v28(v12, v3);
      sub_1000180EC(v9, &qword_100CA6028, &qword_100A40610);
      if (v27)
      {
        goto LABEL_9;
      }

LABEL_7:
      v20 = v35;
      v21 = type metadata accessor for MainView(0);

      v22 = Namespace.wrappedValue.getter();
      v23 = *(v20 + *(v21 + 60));
      sub_100035B30((v20 + 1), &v40);

      sub_10022C350(&unk_100CE0F40, &unk_100A502E0);
      sub_10006768C(&qword_100CA4CD0, &unk_100CE0F40, &unk_100A502E0);
      v37 = ObservedObject.init(wrappedValue:)();
      v38 = v24;
      v39[0] = v22;
      v39[1] = v23;
      sub_100085DC0(&v37, v42);
      v43 = 1;
      sub_100085DF8();
      sub_10009D188();
      _ConditionalContent<>.init(storage:)();
      return sub_10009EC98(&v37);
    }

    sub_1000180EC(v15, &qword_100CA6028, &qword_100A40610);
    sub_1000180EC(v18, &qword_100CA6028, &qword_100A40610);
    (*(v4 + 8))(v12, v3);
LABEL_6:
    sub_1000180EC(v9, &qword_100CA64E8, &unk_100A46060);
    goto LABEL_7;
  }

  sub_1000180EC(v15, &qword_100CA6028, &qword_100A40610);
  sub_1000180EC(v18, &qword_100CA6028, &qword_100A40610);
  if (sub_100024D10(&v9[v19], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_1000180EC(v9, &qword_100CA6028, &qword_100A40610);
LABEL_9:
  v29 = v35;
  v30 = *v35;
  v31 = type metadata accessor for MainView(0);

  v32 = Namespace.wrappedValue.getter();
  sub_100035B30((v29 + 1), v39);
  sub_100035B30(v29 + *(v31 + 64), &v41);
  v37 = v30;
  v38 = v32;
  sub_100891688(&v37, v42);
  v43 = 0;
  sub_100085DF8();
  sub_10009D188();
  _ConditionalContent<>.init(storage:)();
  return sub_1008916C0(&v37);
}

unint64_t sub_100085DF8()
{
  result = qword_100CE10E8;
  if (!qword_100CE10E8)
  {
    result = swift_getWitnessTable(byte_100A91A60, &type metadata for RegularContent, v0, v1);
    atomic_store(result, &qword_100CE10E8);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TranslationAndGradientBackgroundViewModifier.ScrollAdjustments(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100085E60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100085EBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100085F18@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for DiagnosticsConsentProvider();

  return sub_100085F88(a1);
}

uint64_t sub_100085F88@<X0>(uint64_t a1@<X8>)
{
  static Settings.WeatherAnalytics.Debugging.overrides.getter();
  v2 = dispatch thunk of SettingGroup.isEnabled.getter();

  if ((v2 & 1) == 0)
  {
    return DiagnosticsConsentProvider.status.getter();
  }

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  type metadata accessor for Settings.WeatherAnalytics.Debugging.Overrides();
  static Settings.WeatherAnalytics.Debugging.Overrides.dnuConsent.getter();
  SettingReader.read<A>(_:)();

  v3 = type metadata accessor for DiagnosticsConsentStatus();
  if (v6 == 1)
  {
    v4 = &enum case for DiagnosticsConsentStatus.allowed(_:);
  }

  else
  {
    v4 = &enum case for DiagnosticsConsentStatus.disallowed(_:);
  }

  return (*(*(v3 - 8) + 104))(a1, *v4, v3);
}

uint64_t sub_100086288(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000862E8()
{
  v2 = sub_100003B38();
  v3(v2);
  sub_1000037E8();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_100086340(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000863A0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1000863F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100086450(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_1000864EC()
{

  return sub_100A162A0(2, 26, 0, 0);
}

uint64_t sub_100086558()
{

  return swift_allocObject();
}

uint64_t sub_10008658C()
{
  result = v0;
  *(v2 - 192) = v1;
  return result;
}

uint64_t sub_1000865BC(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

void sub_1000865DC()
{

  Hasher._combine(_:)(0);
}

double sub_10008661C(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

uint64_t sub_10008669C()
{

  return sub_10018EC2C(v0, type metadata accessor for ComparisonCapsuleViewModel.Row.Body);
}

uint64_t sub_1000866D8()
{
  v3 = *(v1 + 56);
  result = *(v3 + 8 * v2);
  *(v3 + 8 * v2) = v0;
  return result;
}

uint64_t sub_1000867B8()
{
  result = v0;
  *(v2 - 240) = v1;
  return result;
}

BOOL sub_1000867CC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000867F4(uint64_t a1)
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t sub_10008682C()
{
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10008684C(uint64_t a1, uint64_t a2)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100086998()
{

  return sub_10003BCD8();
}

uint64_t sub_1000869B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_1000869D4()
{
  v1 = type metadata accessor for Location();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for TimeState(0);
  sub_100003AE8(v6);
  v8 = (v5 + *(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v11);
  v14 = (v8 + v10 + *(v12 + 80)) & ~*(v12 + 80);
  return sub_10007B240(v0 + v3, *(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), v0 + v8, (v0 + v14), *(v0 + v14 + *(v13 + 64)), *(v0 + v14 + *(v13 + 64) + 1), *(v0 + ((v14 + *(v13 + 64) + 9) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100086B50@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CE2958, &qword_100A957F8);
  result = a1(&a2[*(v4 + 48)]);
  *a2 = result & 1;
  return result;
}

void *sub_100086BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100031B34();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

id sub_100086BF4(char a1)
{
  v2 = 520;
  if (a1)
  {
    v2 = 528;
  }

  return *(v1 + v2);
}

void sub_100086C14()
{
  v1 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = type metadata accessor for Location();
  sub_100003810(v4);
  v5 = sub_100040C54();
  sub_100086CCC(v5, v6, v0 + v3);
}

void sub_100086CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = static os_signpost_type_t.begin.getter();
    v7 = *(v5 + 448);
    sub_10022C350(&qword_100CA40C8, &unk_100A2E170);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100A2C3F0;
    v9 = v7;
    v10 = Location.name.getter();
    v12 = v11;
    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_100035744();
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    sub_100037E14();
    os_signpost(_:dso:log:name:signpostID:_:_:)(v6, &_mh_execute_header, v9, "Weather:resolveCountryCode", 26, 2, a3, "location %{private}s");
  }

  else
  {
    v13 = sub_100192454();
    sub_1005B3D94(v13, v14);
  }
}

uint64_t sub_100086E40(void *a1)
{
  sub_1000161C0(a1 + 10, a1[13]);
  sub_1000201F8();
  dispatch thunk of LocationMetadataManagerType.resolveCountryCode(for:)();
  v1 = Promise.asOptional()();

  return v1;
}

uint64_t sub_100086EAC()
{
  sub_1000C87D0();
  v17 = type metadata accessor for Location();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  sub_100171244();
  v5 = type metadata accessor for TimeState(0);
  sub_100003AE8(v5);
  v7 = (v1 + *(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v12 = v11;
  v13 = (v7 + v9 + *(v11 + 80)) & ~*(v11 + 80);

  (*(v3 + 8))(v0 + v4, v17);

  type metadata accessor for Date();
  sub_100003D98();
  (*(v14 + 8))(v0 + v7);
  (*(v12 + 8))(v0 + v13, v10);

  sub_100020DD4();

  return swift_deallocObject();
}

double sub_1000870B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  swift_beginAccess();
  return result;
}

uint64_t sub_100087104()
{

  return type metadata accessor for MainState._Storage(0);
}

uint64_t sub_100087140()
{

  return sub_100051BBC();
}

uint64_t sub_100087188()
{
}

uint64_t sub_1000871D8()
{
}

uint64_t sub_100087254()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_10008726C()
{

  return type metadata accessor for WeatherDataModel();
}

uint64_t sub_100087294()
{

  return sub_100073198();
}

uint64_t sub_1000872DC()
{
  sub_100006F14((v1 + *(v0 + 56)));
}

uint64_t sub_100087314()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000926F8;

  return sub_10004E134();
}

void sub_1000873CC()
{
  sub_10000C778();
  v21 = v1;
  v22 = v2;
  v20 = v3;
  v5 = v4;
  v18 = v6;
  v8 = v7(0);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  v12.n128_f64[0] = __chkstk_darwin(v11);
  v14 = &v18 - v13;
  v23 = v0 + 64;
  v19 = v0;
  v15 = ~(-1 << *(v0 + 32));
  for (i = v5 & v15; ((1 << i) & *(v23 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v15)
  {
    (*(v10 + 16))(v14, *(v19 + 48) + *(v10 + 72) * i, v8, v12);
    sub_10005B6CC(v20, v21, v22);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v14, v8);
    if (v17)
    {
      break;
    }
  }

  sub_10000536C();
}

uint64_t sub_100087544()
{
  v1 = sub_100017580();
  v2(v1);
  sub_100003D98();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100087594(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Location.Identifier();
  __chkstk_darwin(v2 - 8);
  Location.identifier.getter();
  swift_beginAccess();
  sub_10007D7F4();
  v4 = v3;
  swift_endAccess();
  return v4 & 1;
}

BOOL sub_10008765C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for CurrentWeather();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v38 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v37 = &v37 - v12;
  v13 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_10022C350(&qword_100CA3898, &qword_100A314D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v37 - v17;
  v19 = type metadata accessor for WeatherData(0);
  __chkstk_darwin(v19);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v24 = (&v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v24 = a1;
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v24);
  sub_100087544();
  v25 = Location.id.getter();
  sub_1000864C0(v25, v26, a5);

  v27 = type metadata accessor for LocationWeatherDataState(0);
  if (sub_100024D10(v15, 1, v27) == 1)
  {
    sub_100018144(v15, &qword_100CA37B0, &unk_100A2D740);
    sub_10001B350(v18, 1, 1, v19);
  }

  else
  {
    sub_1001A0D3C();
    sub_100087544();
    if (sub_100024D10(v18, 1, v19) != 1)
    {
      sub_100086450(v18, v21);
      if (WeatherDataModel.isExpired.getter())
      {
        if ((*(v44 + 320) & 1) == 0)
        {
          v30 = v37;
          static WeatherClock.date.getter();
          v31 = v39;
          WeatherDataModel.currentWeather.getter();
          v32 = v38;
          CurrentWeather.date.getter();
          (*(v42 + 8))(v31, v43);
          Date.timeIntervalSince(_:)();
          v34 = v33;
          v35 = v41;
          v36 = *(v40 + 8);
          v36(v32, v41);
          v36(v30, v35);
          v28 = v34 >= a1;
          *v24 = v28;
          v24[1] = v34;
          swift_storeEnumTagMultiPayload();
          sub_10005C1D4(v24);
          sub_100087544();
          sub_100087544();
          return v28;
        }
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_10005C1D4(v24);
        sub_100087544();
      }

      sub_100087544();
      return 0;
    }
  }

  sub_100018144(v18, &qword_100CA3898, &qword_100A314D0);
  swift_storeEnumTagMultiPayload();
  sub_10005C1D4(v24);
  sub_100087544();
  return 1;
}

id sub_100087BC8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v17[4] = a3;
  v17[5] = a4;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10030DC80;
  v17[3] = &unk_100C521E8;
  v13 = _Block_copy(v17);
  v14 = [v6 initWithFireDate:isa interval:a2 & 1 repeats:v13 block:a5];
  _Block_release(v13);

  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(a1, v15);

  return v14;
}

unint64_t sub_100087CF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_100087D40()
{

  return type metadata accessor for ModifiedContent();
}

uint64_t sub_100087DA4(uint64_t a1)
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100087DCC()
{
  result = v0;
  *(v2 - 128) = v1;
  return result;
}

uint64_t sub_100087E24()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100087E64()
{

  return type metadata accessor for LocationsState(0);
}

uint64_t sub_100087E84()
{

  return ObservableResolver.resolve<A>(_:)();
}

uint64_t sub_100087EBC@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a3 - 256);

  return sub_1002AB08C(v5, v3, a1, a2);
}

uint64_t sub_100087F08()
{

  return sub_10018EC2C(v0, type metadata accessor for UnitsConfigurationViewModel.Temperature);
}

uint64_t sub_100087F30(void *a1)
{
  v2 = type metadata accessor for Location();
  sub_100003810(v2);
  return sub_100086E40(a1);
}

uint64_t sub_100087FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100024D10(a1, a2, a3);
}

unint64_t sub_100088014(uint64_t a1)
{

  return sub_10077C574(a1);
}

uint64_t sub_10008803C()
{

  return sub_1000730E8();
}

uint64_t sub_100088054()
{
  type metadata accessor for Location();
  sub_10000548C();

  v0 = sub_1000751C4();
  v1(v0);
  sub_100036F2C();

  return swift_deallocObject();
}

uint64_t sub_100088104(uint64_t *a1)
{
  v4 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v4);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = type metadata accessor for Location();
  sub_100003AE8(v9);
  v11 = (v6 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  sub_100171244();
  v12 = type metadata accessor for WeatherServiceLocationOptions();
  sub_100003AE8(v12);
  v14 = (v2 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  v17 = type metadata accessor for AppConfiguration();
  sub_100003AE8(v17);
  v19 = (v14 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  sub_1000326E4();
  v20 = type metadata accessor for TimeState(0);
  sub_100003AE8(v20);
  sub_1000FFCA0();
  return sub_1000604AC(a1, v21, v1 + v6, v1 + v11, v22, v1 + v14, v1 + v19, v23, v28, v29, v27, v24, v25, v26);
}

uint64_t sub_1000883D4()
{

  return sub_1000AF41C();
}

uint64_t sub_100088400(__n128 a1)
{
  a1.n128_u64[0] = 1.0;

  return Debouncer.init(interval:queue:)(v1, a1);
}

uint64_t sub_100088420()
{
}

void sub_10008843C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  Hasher._combine(_:)(v3);
}

uint64_t sub_10008845C(uint64_t a1, unint64_t *a2)
{

  return sub_10000C70C(0, a2, v2);
}

uint64_t sub_100088480(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000884D4()
{

  return sub_100051BBC();
}

uint64_t sub_100088510(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *(v3 - 352);

  return sub_100018144(v5, a2, a3);
}

uint64_t sub_100088528(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10008853C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1000885AC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1000885F8(uint64_t *a1, uint64_t *a2)
{
  sub_10022C350(a1, a2);
  swift_arrayDestroy();
  sub_100018584();

  return swift_deallocClassInstance();
}

uint64_t sub_100088640(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_1000161C0(a1, v5);
  return (*(v6 + 8))(a2, a3, v5, v6);
}

char *sub_10008870C@<X0>(uint64_t a1@<X8>)
{
  *v3 = v1;
  v3[1] = a1;
  return v3 + *(*(v2 + 1912) + 20);
}

uint64_t sub_100088728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 2288);

  return sub_10001B350(a1, a2, a3, v5);
}

uint64_t sub_100088740(uint64_t a1)
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1000887A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1000887C0()
{

  return type metadata accessor for WeatherData.WeatherStatisticsState(0);
}

uint64_t sub_1000887E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>, uint64_t *a4@<X3>)
{
  v5 = *(a3 - 256);

  return sub_100035AD0(a1, v5, a2, a4);
}

double sub_1000887FC(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

uint64_t sub_100088818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 112) = v3;

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_10008884C()
{

  return sub_100072EC8();
}

uint64_t sub_100088870()
{
  result = v0;
  *(v2 - 128) = v1;
  return result;
}

uint64_t sub_10008889C(uint64_t a1)
{

  return sub_100620EDC();
}

uint64_t sub_1000888B4()
{

  return FixedSizeTypeBinaryCodable.write(to:)();
}

uint64_t sub_100088944()
{

  sub_100006F14((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_100088984()
{
  sub_10000C778();
  type metadata accessor for Location();
  sub_1000037C4();
  type metadata accessor for Date();
  sub_1000037C4();
  swift_unknownObjectRelease();

  v0 = sub_1000134A0();
  v1(v0);
  v2 = sub_10001626C();
  v3(v2);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_100088AA4()
{

  return swift_deallocObject();
}

uint64_t sub_100088AE4()
{
  v1 = type metadata accessor for SearchResultsList(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_10022C350(&qword_100CA62E0, &qword_100A3D5F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v0 + v2, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v0 + v2, v4);
    }
  }

  else
  {
  }

  sub_100006F14((v3 + *(v1 + 20)));
  v5 = v3 + *(v1 + 24);

  v6 = v5 + *(type metadata accessor for SearchResultsViewModel(0) + 32);
  type metadata accessor for SelectedSearchResult(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for LocationOfInterest();
    sub_1000037E8();
    (*(v8 + 8))(v6);
  }

  else if (!EnumCaseMultiPayload)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100088CB8(void (*a1)(void))
{
  a1(0);
  sub_1000037E8();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_100088D40()
{
  v1 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003AE8(v1);
  v3 = (*(v2 + 80) + 73) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = type metadata accessor for Date();
  if (!sub_100024D10(v0 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_100088E5C()
{
  type metadata accessor for ReportWeatherView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v6 + 8))(v3 + v5);
  }

  sub_10001673C(v0[5]);

  sub_100006F14((v3 + v0[6]));
  sub_10001673C(v0[7]);

  sub_10001673C(v0[8]);

  return swift_deallocObject();
}

uint64_t sub_100088FB0()
{
  v1 = type metadata accessor for CalendarView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1000E4DF8(*v2, *(v2 + 8));
  v3 = v2 + v1[5];
  type metadata accessor for TimeZone();
  sub_1000037E8();
  (*(v4 + 8))(v3);
  v5 = type metadata accessor for CalendarViewModel(0);
  v6 = v5[5];
  v7 = type metadata accessor for Date();
  sub_1000037E8();
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v10 = sub_10001BC7C(v5[6]);
  (v9)(v10);
  v11 = sub_10001BC7C(v5[7]);
  (v9)(v11);
  v12 = v5[8];
  if (!sub_100024D10(v3 + v12, 1, v7))
  {
    v9(v3 + v12, v7);
  }

  v13 = v5[10];
  type metadata accessor for MoonPhase.Hemisphere();
  sub_1000037E8();
  (*(v14 + 8))(v3 + v13);
  v15 = v2 + v1[6];
  sub_10022C350(&qword_100CA72A8, &qword_100AA1B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Locale();
    sub_1000037E8();
    (*(v16 + 8))(v15);
  }

  else
  {
  }

  v17 = _s13CalendarStateVMa(0);
  v18 = sub_10001BC7C(v17[5]);
  (v9)(v18);
  v19 = v17[6];
  type metadata accessor for Calendar();
  sub_1000037E8();
  (*(v20 + 8))(v15 + v19);
  v21 = sub_10001BC7C(v17[7]);
  (v9)(v21);
  v22 = sub_10001BC7C(v17[8]);
  (v9)(v22);

  v23 = sub_10001BC7C(v17[10]);
  (v9)(v23);
  sub_100006F14((v2 + v1[7]));

  return swift_deallocObject();
}

uint64_t sub_1000892A4()
{
  type metadata accessor for DebugLocationIntelligenceView(0);
  sub_100003A0C();
  v2 = sub_100003D30();
  if (!sub_100074770(v2))
  {
    sub_100003D20();
    (*(v3 + 8))(v1, v0);
  }

  sub_10022C350(&qword_100CABAD0, &qword_100A3A938);

  if (!sub_100014274())
  {
    sub_100003D20();
    v4 = sub_10001920C();
    v5(v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1000893D8()
{
  v1 = type metadata accessor for DailyForecastRowViewButtonStyle(0);
  sub_100003DDC();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v5 = v3 + *(v4 + 20);

  v6 = v5 + *(sub_10022C350(&qword_100CABD18, &unk_100A3AC40) + 32);
  v7 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  if (!sub_100024D10(v6, 1, v7))
  {
    type metadata accessor for Date();
    sub_100003D98();
    (*(v8 + 8))(v6);
    sub_100003DAC();
    sub_100003DAC();
    v9 = v7[7];
    type metadata accessor for TimeZone();
    sub_100003D98();
    (*(v10 + 8))(v6 + v9);
    v11 = v7[8];
    v12 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
    sub_1000037E8();
    v14 = *(v13 + 8);
    v14(v6 + v11, v12);
    v14(v6 + v7[9], v12);
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
    v15 = v7[15];
    v16 = type metadata accessor for Precipitation();
    if (!sub_100024D10(v6 + v15, 1, v16))
    {
      sub_100003B20();
      (*(v17 + 8))(v6 + v15, v16);
    }

    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
  }

  v18 = v3 + *(v1 + 24);
  type metadata accessor for Date();
  sub_100003D98();
  (*(v19 + 8))(v18);
  sub_100014298();
  sub_100014298();
  v20 = v7[7];
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v21 + 8))(v18 + v20);
  v22 = v7[8];
  v23 = sub_10022C350(&qword_100CA53F8, &unk_100A3B3E0);
  sub_1000037E8();
  v25 = *(v24 + 8);
  v25(v18 + v22, v23);
  v25(v18 + v7[9], v23);
  sub_100014298();
  sub_100014298();
  sub_100014298();
  v26 = v7[15];
  v27 = type metadata accessor for Precipitation();
  if (!sub_100024D10(v18 + v26, 1, v27))
  {
    sub_100003B20();
    (*(v28 + 8))(v18 + v26, v27);
  }

  sub_100014298();
  sub_100014298();
  sub_100014298();

  return swift_deallocObject();
}

uint64_t sub_1000897A4()
{
  v1 = type metadata accessor for ConditionDetailChartDataInput(0);
  sub_100003DDC();
  v3 = *(v2 + 80);
  v26 = *(v4 + 64);
  v27 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v6 = v5;
  v7 = *(v5 + 80);
  v8 = v0 + ((v3 + 16) & ~v3);
  v9 = type metadata accessor for Date();
  sub_1000037E8();
  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = sub_10011C13C(v1[5]);
  (v11)(v12);
  v13 = v1[6];
  type metadata accessor for DetailChartCondition();
  sub_1000037E8();
  (*(v14 + 8))(v8 + v13);
  v15 = sub_10011C13C(v1[7]);
  (v11)(v15);
  v16 = sub_10011C13C(v1[8]);
  (v11)(v16);
  v17 = v1[10];
  type metadata accessor for TimeZone();
  sub_1000037E8();
  (*(v18 + 8))(v8 + v17);

  v19 = v1[12];
  type metadata accessor for CurrentWeather();
  sub_1000037E8();
  (*(v20 + 8))(v8 + v19);
  v21 = v1[13];
  v22 = type metadata accessor for DayWeather();
  if (!sub_100024D10(v8 + v21, 1, v22))
  {
    (*(*(v22 - 8) + 8))(v8 + v21, v22);
  }

  v23 = v1[14];
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_1000037E8();
  (*(v24 + 8))(v8 + v23);
  (*(v6 + 8))(v0 + ((((v3 + 16) & ~v3) + v26 + v7) & ~v7), v27);

  return swift_deallocObject();
}

uint64_t sub_100089A78()
{
  v1 = (type metadata accessor for CompactGradientView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  v4 = type metadata accessor for AnimatedGradient();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_10022C350(&qword_100CACB08, &unk_100A3BEF0);

  return swift_deallocObject();
}

uint64_t sub_100089B84()
{
  type metadata accessor for DebugWeatherCacheTestingView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  type metadata accessor for Date();
  sub_1000037E8();
  v5 = *(v4 + 8);
  v6 = sub_10000C918();
  v5(v6);
  sub_10022C350(&qword_100CAD050, &qword_100A3C430);
  sub_10002FE10();
  v7 = sub_10000C918();
  v5(v7);

  v8 = sub_10022C350(&qword_100CA7000, &unk_100A3E7F0);
  if (!sub_100020660(v8))
  {
    sub_100003B20();
    v9 = sub_10000C918();
    v10(v9);
  }

  sub_10022C350(&qword_100CAD058, &qword_100A3C438);
  sub_10002FE10();
  v11 = sub_10022C350(&qword_100CA7030, &qword_100A32000);
  if (!sub_100020660(v11))
  {
    sub_100003B20();
    v12 = sub_10000C918();
    v13(v12);
  }

  sub_10022C350(&qword_100CAD060, &unk_100A3C440);
  sub_10002FE10();

  v14 = *(v0 + 56);
  type metadata accessor for WeatherServiceFetchOptions();
  sub_1000037E8();
  (*(v15 + 8))(v3 + v14);
  sub_10004190C();

  return swift_deallocObject();
}

uint64_t sub_100089DF8()
{
  v2 = sub_100008194();
  type metadata accessor for WeatherAsyncImage(v2, v3, v4, v5);
  sub_100003E98();
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = type metadata accessor for URL();
  if (!sub_100024D10(v0 + v7, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v0 + v7, v8);
  }

  v9 = (v0 + v7 + *(v1 + 48));

  v10 = sub_100008194();
  v14 = type metadata accessor for WeatherAsyncImage.LoadingState(v10, v11, v12, v13);
  v15 = *(v14 + 36);
  if (!sub_100024D10(v9 + v15, 1, v8))
  {
    (*(*(v8 - 8) + 8))(v9 + v15, v8);
  }

  sub_10032D76C(*(v9 + *(v14 + 40)));
  type metadata accessor for State();

  return swift_deallocObject();
}

uint64_t sub_100089F98()
{
  v1 = type metadata accessor for MeasuredConditionDetailLegendView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 28);
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_1000037E8();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008A0DC()
{

  sub_100006F14((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_10008A12C()
{
  type metadata accessor for ActivityAction(0);
  sub_1000082C0();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  v4 = (v0 + v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for PreviewLocation(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        goto LABEL_6;
      case 2u:
        type metadata accessor for LocationOfInterest();
        goto LABEL_7;
      case 3u:

        v8 = *(type metadata accessor for SearchLocation(0) + 32);
        v9 = type metadata accessor for Location();
        if (!sub_100020EC4(v9))
        {
          (*(*(v1 - 8) + 8))(v4 + v8);
        }

        break;
      case 4u:

        break;
      default:
        break;
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    type metadata accessor for SavedLocation();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for SavedLocation.Placeholder();
    }

    else
    {
LABEL_6:
      type metadata accessor for Location();
    }

LABEL_7:
    sub_100003D98();
    (*(v6 + 8))(v0 + v3);
  }

  return swift_deallocObject();
}

uint64_t sub_10008A2FC()
{
  v1 = type metadata accessor for LocationPreviewView(0);
  sub_100003DDC();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for LocationPreviewViewContentModel(0);
  sub_100003DDC();
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0 + v3;

  sub_1000EBD74(*(v9 + 24), *(v9 + 32));
  v10 = v1[7];
  sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v11 + 8))(v9 + v10);
  }

  else
  {
  }

  sub_1000EBD74(*(v9 + v1[8]), *(v9 + v1[8] + 8));

  sub_10004E484();
  sub_10004E484();
  sub_1000206CC();
  sub_100006F14((v9 + v1[13]));
  swift_unknownObjectRelease();
  sub_100006F14((v9 + v1[15]));
  sub_1000206CC();
  v12 = (v0 + v8);
  type metadata accessor for PreviewLocation(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      type metadata accessor for Location();
      goto LABEL_8;
    case 2u:
      type metadata accessor for LocationOfInterest();
LABEL_8:
      sub_100003D98();
      (*(v13 + 8))(v0 + v8);
      break;
    case 3u:

      v28 = *(type metadata accessor for SearchLocation(0) + 32);
      v29 = type metadata accessor for Location();
      if (!sub_100024D10(v12 + v28, 1, v29))
      {
        (*(*(v29 - 8) + 8))(v12 + v28);
      }

      break;
    case 4u:

      break;
    default:
      break;
  }

  v14 = *(v6 + 32);
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v15 + 8))(v12 + v14);
  v16 = v12 + *(v6 + 36);
  type metadata accessor for LocationPreviewModalViewModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v19 = type metadata accessor for NewsArticle(0);
    v20 = v19[6];
    v21 = type metadata accessor for URL();
    if (!sub_100024D10(&v16[v20], 1, v21))
    {
      (*(*(v21 - 8) + 8))(&v16[v20], v21);
    }

    v22 = v19[7];
    type metadata accessor for Date();
    sub_100003D98();
    (*(v23 + 8))(&v16[v22]);
    v24 = *(*(v21 - 8) + 8);
    v24(&v16[v19[8]], v21);
    v25 = &v16[v19[9]];

    v26 = *(type metadata accessor for NewsChannel(0) + 24);
    if (!sub_100024D10(&v25[v26], 1, v21))
    {
      v24(&v25[v26], v21);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    type metadata accessor for URL();
    sub_100003D98();
    (*(v18 + 8))(v16);
  }

  return swift_deallocObject();
}

uint64_t sub_10008A7B4()
{
  type metadata accessor for RecordPinnedMapAnimatingViewModifier(0);
  sub_100003A0C();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ScenePhase();
    sub_1000037E8();
    (*(v3 + 8))(v0 + v2);
  }

  else
  {
  }

  sub_100014490();

  return swift_deallocObject();
}

uint64_t sub_10008A8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for WireframeScrollInterestView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[13], v5);

  return swift_deallocObject();
}

uint64_t sub_10008A9C4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008AA04()
{
  v1 = (type metadata accessor for MoonScrubberHeaderView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  sub_100006F14((v2 + 48));
  v3 = v2 + v1[9];

  v4 = type metadata accessor for MoonScrubberHeaderViewModel(0);
  v5 = *(v4 + 32);
  v6 = type metadata accessor for Date();
  sub_1000037E8();
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);
  v8(v3 + *(v4 + 36), v6);
  v9 = v1[14];
  type metadata accessor for CoordinateSpace();
  sub_1000037E8();
  (*(v10 + 8))(v2 + v9);

  return swift_deallocObject();
}

uint64_t sub_10008ABB0()
{

  sub_100006F14((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_10008ABF0()
{
  sub_10000C778();
  type metadata accessor for MoonComponentView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_1000EBD74(*v3, *(v3 + 8));
  v4 = v0[5];
  v5 = sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (sub_10001691C(v5) == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v6 + 8))(v3 + v4);
  }

  else
  {
  }

  sub_100028448(v0[6]);
  sub_100028448(v0[7]);
  v7 = v0[8];
  v8 = sub_10022C350(&qword_100CAD618, &qword_100A4C660);
  if (sub_10001691C(v8) == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v9 + 8))(v3 + v7);
  }

  else
  {
  }

  v10 = v0[9];
  sub_10022C350(&qword_100CB6EF8, &qword_100A4AA70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ForegroundEffect();
    if (!sub_10000CABC(v11))
    {
      (*(*(v7 - 8) + 8))(v3 + v10, v7);
    }
  }

  else
  {
  }

  v12 = v0[10];
  v13 = sub_10022C350(&unk_100CE1000, &qword_100A447D0);
  if (sub_10001691C(v13) == 1)
  {
    type metadata accessor for ScenePhase();
    sub_100003D98();
    (*(v14 + 8))(v3 + v12);
  }

  else
  {
  }

  v15 = v0[11];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v16 + 8))(v3 + v15);
  v17 = v3 + v0[12];

  v18 = *(v17 + 32);
  if (v18 != 255)
  {
    sub_1002773E8(*(v17 + 16), *(v17 + 24), v18);
  }

  v19 = *(type metadata accessor for MoonComponentViewModel(0) + 28);
  type metadata accessor for Date();
  sub_100003D98();
  (*(v20 + 8))(v17 + v19);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008AEF8()
{
  sub_10000C778();
  type metadata accessor for ListLocationRowView(0);
  sub_100003A0C();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  sub_10022C350(&qword_100CA2E38, &qword_100A49D50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v6 + 8))(v1 + v4);
  }

  else
  {
  }

  sub_10001673C(v0[5]);

  swift_unknownObjectRelease();
  sub_100006F14((v5 + v0[7]));
  v7 = v5 + v0[8];
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v8 + 8))(v7);
  v9 = type metadata accessor for ListLocationViewModel(0);
  sub_100014668(v9[6]);

  v10 = v7 + v9[7];
  type metadata accessor for ListLocationRowPrimaryText(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for Date();
    if (!sub_1000057B4(v11))
    {
      sub_100003B20();
      (*(v12 + 8))(v10, v2);
    }
  }

  else
  {
  }

  sub_10000EA08((v7 + v9[8]));
  v13 = type metadata accessor for Date();
  if (!sub_1000246D4(v13))
  {
    sub_100022BC0();
    v14 = sub_1000B9940();
    v15(v14);
  }

  v16 = type metadata accessor for TimeZone();
  if (!sub_1000246D4(v16))
  {
    sub_100022BC0();
    v17 = sub_1000B9940();
    v18(v17);
  }

  sub_100014668(v9[12]);

  sub_100014668(v9[13]);

  sub_100014668(v9[15]);

  sub_100014668(v9[16]);

  sub_100014668(v9[17]);

  sub_100014668(v9[18]);

  sub_100014668(v9[19]);

  sub_100014668(v9[20]);

  v19 = v9[22];
  type metadata accessor for WeatherConditionBackgroundModel();
  sub_100003D98();
  (*(v20 + 8))(v7 + v19);
  sub_100014668(v9[25]);

  sub_10001673C(v0[9]);

  sub_10001673C(v0[11]);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008B214()
{

  return swift_deallocObject();
}

uint64_t sub_10008B25C()
{
  v1 = type metadata accessor for TemperatureAveragesHeroChartView(0);
  sub_100003DDC();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_1000E4DF8(*v3, *(v3 + 8));
  v4 = v1[5];
  sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v5 + 8))(v3 + v4);
  }

  else
  {
  }

  sub_100006F14((v3 + v1[7]));
  v6 = v3 + v1[8];

  v7 = type metadata accessor for TemperatureAveragesHeroChartViewModel(0);
  v8 = v7[9];
  type metadata accessor for TemperatureScaleConfiguration();
  sub_100003D98();
  (*(v9 + 8))(v6 + v8);

  sub_100452DEC(*(v6 + v7[12]), *(v6 + v7[12] + 8), *(v6 + v7[12] + 16), *(v6 + v7[12] + 24));
  v10 = v7[13];
  v11 = type metadata accessor for TemperatureAveragesHeroChartViewModel.PeakMarkModel(0);
  if (!sub_100024D10(v6 + v10, 1, v11))
  {
    type metadata accessor for Date();
    sub_100003D98();
    (*(v12 + 8))(v6 + v10);
  }

  v13 = v6 + v7[14];
  v14 = type metadata accessor for PeakUpperMarkModel(0);
  if (!sub_100024D10(v13, 1, v14))
  {
    type metadata accessor for Date();
    sub_100003D98();
    (*(v15 + 8))(v13);
    sub_100014298();
    sub_100014298();
    sub_100014298();
  }

  v16 = v6 + v7[15];
  type metadata accessor for DetailHeroChartLollipopModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
    v18 = *(active + 20);
    type metadata accessor for Date();
    sub_100003D98();
    (*(v19 + 8))(v16 + v18);
    v16 += *(active + 24);
  }

  type metadata accessor for LollipopDetailViewModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v21 = *(type metadata accessor for TitleAndDetailLollipopDetailViewModel(0) + 20);
    type metadata accessor for AttributedString();
    sub_100003D98();
    (*(v22 + 8))(v16 + v21);
    sub_100014298();
    sub_100014298();
    sub_100014298();
    sub_100014298();
  }

  else if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  v23 = v7[16];
  v24 = type metadata accessor for Date();
  sub_1000037E8();
  v26 = *(v25 + 8);
  v26(v6 + v23, v24);
  v26(v6 + v7[17], v24);
  v27 = v7[18];
  type metadata accessor for DetailChartGradientModel();
  sub_100003D98();
  (*(v28 + 8))(v6 + v27);

  return swift_deallocObject();
}

uint64_t sub_10008B6AC()
{

  sub_100006F14((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_10008B6EC()
{
  sub_10000C778();
  v1 = type metadata accessor for PrecipitationAmountsEditorView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v5 + 8))(v2 + v4);
  }

  v6 = *(v1 + 24);
  v7 = type metadata accessor for PrecipitationAmount();
  sub_1000037E8();
  v9 = *(v8 + 8);
  v9(v2 + v6, v7);

  v9(v2 + *(v1 + 32), v7);
  sub_10022C350(&qword_100CBB640, &qword_100A50F78);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008B8AC()
{

  return swift_deallocObject();
}

uint64_t sub_10008B8FC()
{
  sub_10000C778();
  type metadata accessor for PredictedLocationNotificationsDebugView(0);
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  sub_1000037E8();
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = v0[7];
  sub_10022C350(&qword_100CC39F8, &qword_100A5CDD8);
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);
  v9 = v0[8];
  sub_10022C350(&qword_100CC3A00, &unk_100A5CDE0);
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);
  v11 = sub_10004E684();
  (v6)(v11);

  sub_1000247C4();
  sub_100006F14((v3 + v0[12]));
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008BA78()
{
  swift_unknownObjectRelease();

  sub_100006F14((v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_10008BAD0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = type metadata accessor for SizeFittingCanvasView(0, v1, v2, *(v0 + 4));
  v4 = v3;
  v5 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  if (v1 == 1)
  {
    TupleTypeMetadata = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(v3);
    sub_10001EFB8();
    while (v1 != v8)
    {
      *(v7 + 8 * v8) = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8 * v8);
      ++v8;
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 8))(&v0[v5]);
  v9 = *(v4 + 44);
  sub_10022C350(&qword_100CA3EE8, &qword_100A5D3F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for Font.Context();
    sub_1000037E8();
    (*(v10 + 8))(&v0[v5 + v9]);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008BC90()
{
  sub_10000C778();
  v1 = type metadata accessor for DayWeatherEditorView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v5 + 8))(v2 + v4);
  }

  v6 = *(v1 + 24);
  v7 = type metadata accessor for DayWeather();
  sub_1000037E8();
  v9 = *(v8 + 8);
  v9(v2 + v6, v7);

  v9(v2 + *(v1 + 32), v7);
  sub_10022C350(&qword_100CC4350, &qword_100A5D908);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008BE50()
{
  swift_unknownObjectRelease();

  sub_100018450();

  return swift_deallocObject();
}

uint64_t sub_10008BE8C()
{
  v1 = *(type metadata accessor for NotificationsOptInComponentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v3 + 8))(v0 + v2);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008BF6C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008BFAC()
{
  v1 = type metadata accessor for LocationViewCollisionOptionsUpdatingView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_100168B1C(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64), *(v2 + 72));

  v3 = *(v1 + 24);
  type metadata accessor for Location.Identifier();
  sub_1000037E8();
  (*(v4 + 8))(v2 + v3);

  v5 = *(v1 + 40);
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008C160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for DetailContainerView(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v9 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v10 + 8))(v7 + v9);
  }

  v11 = v7 + v6[9];
  type metadata accessor for DetailType();
  sub_1000037E8();
  (*(v12 + 8))(v11);
  v13 = type metadata accessor for DetailViewVisibilityTrackerModel(0);
  v14 = *(v13 + 20);
  type metadata accessor for Location();
  sub_1000037E8();
  (*(v15 + 8))(v11 + v14);
  v16 = *(v13 + 24);
  type metadata accessor for DetailViewOrigin();
  sub_1000037E8();
  (*(v17 + 8))(v11 + v16);
  sub_100006F14((v7 + v6[10]));

  (*(*(v5 - 8) + 8))(v7 + v6[16], v5);

  return swift_deallocObject();
}

uint64_t sub_10008C3C0()
{
  v1 = (type metadata accessor for PrecipitationAveragesHeroChartView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1000E4DF8(*v2, *(v2 + 8));
  sub_100006F14((v2 + 16));
  v3 = v2 + v1[8];

  sub_100452DEC(*(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128));

  v4 = type metadata accessor for PrecipitationAveragesHeroChartViewModel(0);
  v5 = v3 + v4[12];
  v6 = type metadata accessor for Date();
  sub_1000037E8();
  v8 = *(v7 + 8);
  v8(v5, v6);
  type metadata accessor for PeakUpperMarkModel(0);
  sub_100003DAC();
  sub_100003DAC();
  sub_100003DAC();
  v8(v3 + v4[13], v6);
  sub_100003DAC();
  sub_100003DAC();
  sub_100003DAC();
  v9 = v3 + v4[14];
  type metadata accessor for DetailHeroChartLollipopModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    active = type metadata accessor for DetailHeroChartActiveLollipopModel(0);
    v8(v9 + *(active + 20), v6);
    v9 += *(active + 24);
  }

  type metadata accessor for LollipopDetailViewModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {

    v12 = *(type metadata accessor for TitleAndDetailLollipopDetailViewModel(0) + 20);
    type metadata accessor for AttributedString();
    sub_1000037E8();
    (*(v13 + 8))(v9 + v12);
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
    sub_100003DAC();
  }

  else if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  v8(v3 + v4[15], v6);
  v8(v3 + v4[16], v6);

  return swift_deallocObject();
}

uint64_t sub_10008C70C()
{

  return swift_deallocObject();
}

uint64_t sub_10008C76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for SlowDeviceGridView(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));
  swift_unknownObjectRelease();
  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);

  v8 = v7 + v6[13];
  sub_100168B1C(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 72));

  return swift_deallocObject();
}

uint64_t sub_10008C8A0()
{
  v1 = type metadata accessor for ChartView(0);
  sub_100003DDC();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = type metadata accessor for ChartViewModel(0);
  v5 = v4[5];
  type metadata accessor for ChartKind();
  sub_100003D98();
  (*(v6 + 8))(v3 + v5);

  v7 = v4[7];
  type metadata accessor for DetailChartExtrema();
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);

  sub_1000209AC((v3 + v4[11]));
  v9 = v3 + v4[12];
  v10 = sub_10022C350(&qword_100CAC408, &qword_100A6B670);
  v11 = *(v10 + 48);
  v12 = type metadata accessor for Date();
  if (!sub_100030484(v9 + v11))
  {
    sub_100003B20();
    (*(v13 + 8))(v9 + v11, v12);
  }

  v14 = *(v10 + 64);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v15 + 8))(v9 + v14);
  v16 = v3 + v4[14];
  v17 = sub_10022C350(&qword_100CAC418, &qword_100A6EE30);
  if (!sub_100005BB8(v17))
  {

    v18 = *(v9 + 48);
    if (!sub_100030484(v16 + v18))
    {
      sub_100003B20();
      (*(v19 + 8))(v16 + v18, v12);
    }
  }

  v20 = v4[16];
  type metadata accessor for ChartDarkeningScrim();
  sub_100003D98();
  (*(v21 + 8))(v3 + v20);

  sub_100018624();
  v23 = *(v22 + 8);
  v25 = sub_1000697B4(v24);
  v23(v25);
  v26 = sub_1000697B4(v4[19]);
  v23(v26);
  v27 = sub_1000697B4(v4[20]);
  v23(v27);
  v28 = v4[21];
  v29 = type metadata accessor for DetailChartDataElement();
  if (!sub_100030484(v3 + v28))
  {
    sub_100003B20();
    (*(v30 + 8))(v3 + v28, v29);
  }

  v31 = v4[23];
  type metadata accessor for ChartPeakMarkStyle();
  sub_100003D98();
  (*(v32 + 8))(v3 + v31);

  v33 = v4[26];
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_100003D98();
  (*(v34 + 8))(v3 + v33);
  v35 = v4[27];
  type metadata accessor for ChartPastDataTreatment();
  sub_100003D98();
  (*(v36 + 8))(v3 + v35);
  sub_100028874(v4[28]);

  sub_100028874(v4[29]);

  sub_100028874(v4[30]);

  sub_100028874(v4[31]);

  sub_100028874(v4[32]);

  sub_100028874(v4[33]);

  sub_100051F98();
  v37 = sub_10022C350(&qword_100CA71B0, &qword_100A32330);
  if (sub_10002FF98(v37) == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v38 + 8))(v4 + v3);
  }

  else
  {
  }

  v39 = *(v1 + 40);
  v40 = sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (sub_10002FF98(v40) == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v41 + 8))(v3 + v39);
  }

  else
  {
  }

  v42 = *(v1 + 44);
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v43 + 8))(v3 + v42);
  sub_1000116BC();

  return swift_deallocObject();
}

uint64_t sub_10008CD9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10008CFCC()
{
  v1 = (type metadata accessor for LollipopChartOverlayView(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));
  sub_100006F14(v2);
  v3 = v1[7];
  type metadata accessor for ChartProxy();
  sub_1000037E8();
  (*(v4 + 8))(&v2[v3]);
  v5 = v1[8];
  type metadata accessor for GeometryProxy();
  sub_1000037E8();
  (*(v6 + 8))(&v2[v5]);
  v7 = v1[9];
  v8 = type metadata accessor for Date();
  sub_1000037E8();
  v10 = *(v9 + 8);
  v10(&v2[v7], v8);
  v10(&v2[v1[10]], v8);
  v11 = v1[12];
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v12 + 8))(&v2[v11]);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008D1A8()
{
  v1 = (type metadata accessor for CalendarHeaderView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_1000E4DF8(*v2, *(v2 + 8));

  v3 = v1[8];
  v4 = type metadata accessor for Date();
  sub_1000037E8();
  v6 = *(v5 + 8);
  v6(v2 + v3, v4);
  v6(v2 + v1[9], v4);
  sub_100006F14((v2 + v1[12]));

  return swift_deallocObject();
}

uint64_t sub_10008D2CC()
{
  v1 = type metadata accessor for TrackExposureModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = v2 + *(v1 + 28);
  v4 = type metadata accessor for Date();
  if (!sub_100024D10(v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  sub_10022C350(&qword_100CBB758, &unk_100A51060);

  return swift_deallocObject();
}

uint64_t sub_10008D40C()
{

  return swift_deallocObject();
}

uint64_t sub_10008D44C()
{
  v1 = type metadata accessor for LocationGridView(0);
  sub_100003DDC();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = type metadata accessor for Location.Identifier();
  sub_1000037E8();
  v6 = *(v5 + 8);
  v7 = (v5 + 8);
  v6(v3, v4);
  v8 = type metadata accessor for LocationViewModel(0);
  v9 = v8[5];
  if (!sub_1000186A8(v3 + v9))
  {
    v6(v3 + v9, v4);
  }

  v10 = v3 + v8[6];

  sub_10016AD1C(*(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40));

  sub_100037CD8();
  v11 = sub_10000CE10();
  v12 = type metadata accessor for LocationFooterViewModel(v11);
  if (!sub_100005BB8(v12))
  {

    if (*(v4 + 24))
    {
    }

    v13 = v4 + v7[9];

    v14 = *(type metadata accessor for LearnMoreAttributorViewModel(0) + 24);
    v15 = type metadata accessor for URL();
    if (!sub_100024D10(v13 + v14, 1, v15))
    {
      sub_100003B20();
      (*(v16 + 8))(v13 + v14, v15);
    }

    v17 = v7[11];
    v18 = type metadata accessor for LocationOfInterest();
    if (!sub_100024D10(v4 + v17, 1, v18))
    {
      sub_100003B20();
      (*(v19 + 8))(v4 + v17, v18);
    }

    v20 = v4 + v7[14];
    v21 = type metadata accessor for HomeAndWorkRefinementRowViewModel(0);
    if (!sub_100005BB8(v21))
    {
      v22 = v7[5];
      type metadata accessor for Location();
      sub_100003D98();
      (*(v23 + 8))(v20 + v22);
      sub_100020A90();
      v25 = sub_10000ED28(v24);
      v26(v25);
    }
  }

  v27 = v8[19];
  type metadata accessor for Date();
  sub_100003D98();
  (*(v28 + 8))(v3 + v27);
  v29 = v8[20];
  v30 = type metadata accessor for ForegroundEffect();
  if (!sub_1000186A8(v3 + v29))
  {
    sub_100003B20();
    (*(v31 + 8))(v3 + v29, v30);
  }

  v32 = sub_10000CE10();
  v33 = type metadata accessor for PreviewLocation(v32);
  if (!sub_100005BB8(v33))
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
      case 1u:
        type metadata accessor for Location();
        goto LABEL_19;
      case 2u:
        type metadata accessor for LocationOfInterest();
LABEL_19:
        sub_100003D98();
        (*(v34 + 8))(v30);
        break;
      case 3u:

        v39 = *(type metadata accessor for SearchLocation(0) + 32);
        type metadata accessor for Location();
        if (!sub_10000CAFC(v30 + v39))
        {
          sub_100003B20();
          (*(v40 + 8))(v30 + v39);
        }

        break;
      case 4u:

        break;
      default:
        break;
    }
  }

  swift_unknownObjectRelease();
  sub_100006F14((v3 + *(v1 + 36)));
  v35 = *(v1 + 40);
  v36 = v35 + *(type metadata accessor for DisplayMetrics(0) + 36);
  type metadata accessor for DynamicTypeSize();
  sub_100003D98();
  (*(v37 + 8))(v3 + v36);

  sub_100074E5C();
  sub_100031788();

  return swift_deallocObject();
}

uint64_t sub_10008D98C()
{
  v1 = type metadata accessor for ViewData();
  sub_1000037C4();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = (type metadata accessor for DetailViewVisibilityTrackerModel(0) - 8);
  v8 = (v4 + v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v20 = type metadata accessor for DetailViewOriginationData();
  sub_1000037C4();
  v11 = v10;
  v12 = (v9 + *(v11 + 80) + v8 + 1) & ~*(v11 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v13 = v0 + v8;
  type metadata accessor for DetailType();
  sub_100003D98();
  (*(v14 + 8))(v0 + v8);
  v15 = v7[7];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v16 + 8))(v13 + v15);
  v17 = v7[8];
  type metadata accessor for DetailViewOrigin();
  sub_100003D98();
  (*(v18 + 8))(v13 + v17);
  (*(v11 + 8))(v0 + v12, v20);

  return swift_deallocObject();
}

uint64_t sub_10008DBC0()
{
  type metadata accessor for WeatherApp(0);
  sub_100008560();
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  sub_100006F14((v0 + 16));
  sub_10022C350(&qword_100CD5450, &qword_100A7DC38);
  sub_1000037E8();
  (*(v5 + 8))(v0 + v4);
  sub_10004E9D0();
  v6 = sub_100016E10();
  if (!sub_1000041EC(v6))
  {

    v7 = sub_100028A20();
    if (!sub_100003EB0(v7))
    {
      sub_100019B68();
      (*(v8 + 8))(v1, v2);
    }

    sub_10022C350(&qword_100CD5528, &unk_100A9DEA0);

    sub_100013B60();
  }

  sub_10022C350(&qword_100CD5458, &qword_100A7DC40);

  return swift_deallocObject();
}

uint64_t sub_10008DD34()
{
  type metadata accessor for PredictedLocationIntentDonationsDebugView(0);
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CC39F0, &qword_100A5CDD0);
  sub_100003D98();
  (*(v4 + 8))(v3);
  v5 = v0[7];
  sub_10022C350(&qword_100CC39F8, &qword_100A5CDD8);
  sub_100003D98();
  (*(v6 + 8))(v3 + v5);
  v7 = v0[8];
  sub_10022C350(&qword_100CC3A00, &unk_100A5CDE0);
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);

  sub_10003C7D8();
  sub_100006F14((v3 + v0[11]));

  return swift_deallocObject();
}

uint64_t sub_10008DEA0()
{

  return swift_deallocObject();
}

uint64_t sub_10008DEE0()
{
  sub_10000C778();
  v1 = type metadata accessor for SunriseSunsetInteractiveChartView(0);
  sub_100003DDC();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v0 + v3;
  v5 = type metadata accessor for Date();
  if (!sub_100024D10(v0 + v3, 1, v5))
  {
    sub_100003B20();
    (*(v6 + 8))(v0 + v3, v5);
  }

  sub_10022C350(&qword_100CBB758, &unk_100A51060);

  v7 = v4 + v1[6];
  if (!sub_100024D10(v7, 1, v5))
  {
    sub_100003B20();
    (*(v8 + 8))(v7, v5);
  }

  v9 = v4 + v1[8];

  v10 = *(sub_10022C350(&qword_100CDB158, &unk_100A87F30) + 32);
  v11 = type metadata accessor for DetailChartDataElement();
  if (!sub_100024D10(v9 + v10, 1, v11))
  {
    sub_100003B20();
    (*(v12 + 8))(v9 + v10, v11);
  }

  v13 = v1[9];
  sub_10022C350(&qword_100CA2D60, &qword_100A413F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v14 + 8))(v4 + v13);
  }

  else
  {
  }

  v15 = v1[11];
  type metadata accessor for SunriseSunsetDetailChartViewModel();
  sub_100003D98();
  (*(v16 + 8))(v4 + v15);
  v17 = v1[13];
  type metadata accessor for SunriseSunsetDetailChartContentStyle();
  sub_100003D98();
  (*(v18 + 8))(v4 + v17);
  v19 = v1[17];
  type metadata accessor for Calendar();
  sub_100003D98();
  (*(v20 + 8))(v4 + v19);
  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008E1E4()
{
  v1 = type metadata accessor for WeatherEditorView(0);
  v161 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v161 + 16) & ~v161);
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(sub_10022C350(&qword_100CA6D28, &qword_100A4CEA0) + 32);
    type metadata accessor for PresentationMode();
    sub_100003D98();
    (*(v5 + 8))(v2 + v4);
  }

  v6 = v1[5];
  type metadata accessor for LocationModel();
  sub_100003D98();
  (*(v7 + 8))(v2 + v6);
  v8 = v2 + v1[7];
  type metadata accessor for LocationWeatherDataState(0);
  v9 = swift_getEnumCaseMultiPayload();
  v162 = v0 + ((v161 + 16) & ~v161);
  v163 = v1;
  if (v9 == 2)
  {

    if (*(v8 + 24) >= 0xEuLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v9 != 1)
    {
      if (v9)
      {
        goto LABEL_42;
      }

      type metadata accessor for NewsDataModel(0);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        type metadata accessor for News();
        sub_100003D98();
        (*(v27 + 8))(v8);
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v10 = type metadata accessor for WeatherData(0);
    v11 = v10[5];
    v12 = type metadata accessor for Locale();
    if (!sub_100024D10(v8 + v11, 1, v12))
    {
      sub_100003B20();
      (*(v13 + 8))(v8 + v11, v12);
    }

    v14 = v10[6];
    type metadata accessor for WeatherDataModel();
    sub_100003D98();
    (*(v15 + 8))(v8 + v14);
    v16 = v8 + v10[7];
    v17 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
    v18 = sub_10000C834();
    if (!sub_100024D10(v18, v19, v17))
    {
      v20 = type metadata accessor for Date();
      sub_1000037E8();
      v22 = *(v21 + 8);
      v22(v16, v20);
      v23 = *(v17 + 48);
      v24 = type metadata accessor for WeatherDataRelevancy(0);
      if (!sub_100024D10(v16 + v23, 1, v24))
      {
        v22(v16 + v23, v20);
      }
    }

    v25 = v8 + v10[8];
    type metadata accessor for WeatherData.WeatherStatisticsState(0);
    v26 = swift_getEnumCaseMultiPayload();
    if (v26 == 1)
    {
      type metadata accessor for WeatherStatisticsModel();
      sub_100003D98();
      (*(v28 + 8))(v25);
    }

    else if (!v26)
    {
    }

    v29 = type metadata accessor for WeatherDataOverrides(0);
    v30 = sub_10000C834();
    if (!sub_100024D10(v30, v31, v29))
    {
      v32 = type metadata accessor for Date();
      v33 = sub_10000C834();
      if (!sub_100024D10(v33, v34, v32))
      {
        sub_100006494();
        v35 = sub_100003940();
        v36(v35);
      }

      if (!sub_100016FF4())
      {
        sub_100006494();
        v37 = sub_10003C950();
        v38(v37);
      }
    }

    v159 = sub_10022C350(&qword_100CA75D8, &unk_100A32600);
    v39 = v8 + *(v159 + 48);
    v40 = type metadata accessor for UUID();
    sub_1000037E8();
    v42 = *(v41 + 8);
    v42(v39, v40);
    v43 = type metadata accessor for PreprocessedWeatherData(0);

    v44 = v39 + v43[6];

    v45 = v44 + *(type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0) + 28);
    v46 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
    if (!sub_100024D10(v45, 1, v46))
    {

      v47 = v45 + *(v46 + 20);
      type metadata accessor for TemperatureScaleConfiguration();
      sub_100003D98();
      (*(v48 + 8))(v47);
      type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
    }

    v49 = v39 + v43[7];
    v50 = sub_10000C834();
    if (!sub_100024D10(v50, v51, v40))
    {
      v52 = sub_100003940();
      (v42)(v52);
    }

    type metadata accessor for HourlyForecastComponentViewModel(0);

    type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
    type metadata accessor for WeatherDescription();
    if (!sub_100016FF4())
    {
      sub_100006494();
      v53 = sub_10003C950();
      v54(v53);
    }

    sub_100069B2C();

    v55 = v49 + *(type metadata accessor for ListPreprocessedDataModel(0) + 32);
    v56 = type metadata accessor for Date();
    sub_1000037E8();
    v157 = *(v57 + 8);
    v157(v55, v56);
    v58 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
    v59 = *(v58 + 20);
    v60 = type metadata accessor for Elevation();
    if (!sub_100024D10(v55 + v59, 1, v60))
    {
      sub_100003B20();
      (*(v61 + 8))(v55 + v59, v60);
    }

    v62 = *(v58 + 24);
    v63 = type metadata accessor for BackgroundMoonData();
    if (!sub_100024D10(v55 + v62, 1, v63))
    {
      sub_100003B20();
      (*(v64 + 8))(v55 + v62, v63);
    }

    sub_100069B2C();

    sub_100006494();
    v65 = sub_100003940();
    v66(v65);
    v67 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
    sub_1000047FC(*(v67 + 20));

    sub_1000047FC(*(v67 + 24));

    sub_100069B2C();

    v68 = v39 + v43[12];
    type metadata accessor for PressureTrend();
    sub_100003D98();
    (*(v69 + 8))(v68);
    v70 = type metadata accessor for PressureComponentPreprocessedDataModel(0);
    sub_1000047FC(v70[5]);

    sub_1000047FC(v70[6]);

    sub_1000047FC(v70[7]);

    sub_1000047FC(v70[9]);

    sub_100069B2C();

    v71 = v39 + v43[14];
    v157(v71, v56);
    v72 = *(v58 + 20);
    v73 = sub_10000CF38();
    if (!sub_100024D10(v73, v74, v60))
    {
      sub_100003B20();
      (*(v75 + 8))(v71 + v72, v60);
    }

    v76 = *(v58 + 24);
    v77 = sub_10000CF38();
    v2 = v162;
    if (!sub_100024D10(v77, v78, v63))
    {
      sub_100003B20();
      (*(v79 + 8))(v71 + v76, v63);
    }

    sub_100069B2C();

    v80 = *(v159 + 64);
    type metadata accessor for NewsDataModel(0);
    v1 = v163;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
LABEL_40:

      goto LABEL_42;
    }

    type metadata accessor for News();
    sub_100003D98();
    (*(v81 + 8))(v8 + v80);
  }

LABEL_42:
  v82 = v2 + v1[8];

  v83 = type metadata accessor for WeatherData(0);
  v84 = v83[5];
  v85 = type metadata accessor for Locale();
  if (!sub_100024D10(v82 + v84, 1, v85))
  {
    sub_100003B20();
    (*(v86 + 8))(v82 + v84, v85);
  }

  v87 = v83[6];
  type metadata accessor for WeatherDataModel();
  sub_100003D98();
  v158 = *(v88 + 8);
  v160 = v89;
  v158(v82 + v87);
  v90 = v82 + v83[7];
  v91 = sub_10022C350(&qword_100CAC710, &qword_100A3BAC0);
  v92 = sub_10000C834();
  if (!sub_100024D10(v92, v93, v91))
  {
    v94 = type metadata accessor for Date();
    sub_1000037E8();
    v96 = *(v95 + 8);
    v96(v90, v94);
    v97 = *(v91 + 48);
    v98 = type metadata accessor for WeatherDataRelevancy(0);
    if (!sub_100024D10(v90 + v97, 1, v98))
    {
      v96(v90 + v97, v94);
    }
  }

  v99 = v82 + v83[8];
  type metadata accessor for WeatherData.WeatherStatisticsState(0);
  v100 = swift_getEnumCaseMultiPayload();
  if (v100 == 1)
  {
    type metadata accessor for WeatherStatisticsModel();
    sub_100003D98();
    (*(v101 + 8))(v99);
  }

  else if (!v100)
  {
  }

  v102 = type metadata accessor for WeatherDataOverrides(0);
  v103 = sub_10000C834();
  if (!sub_100024D10(v103, v104, v102))
  {
    v105 = type metadata accessor for Date();
    v106 = sub_10000C834();
    if (!sub_100024D10(v106, v107, v105))
    {
      sub_100006494();
      v108 = sub_100003940();
      v109(v108);
    }

    if (!sub_100016FF4())
    {
      sub_100006494();
      v110 = sub_10003C950();
      v111(v110);
    }
  }

  v112 = v2 + v1[9];
  v113 = type metadata accessor for UUID();
  sub_1000037E8();
  v115 = *(v114 + 8);
  v115(v112, v113);
  v116 = type metadata accessor for PreprocessedWeatherData(0);

  v117 = v112 + v116[6];

  v118 = v117 + *(type metadata accessor for FeelsLikeComponentPreprocessedDataModel(0) + 28);
  v119 = type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference(0);
  if (!sub_100024D10(v118, 1, v119))
  {

    v120 = v118 + *(v119 + 20);
    type metadata accessor for TemperatureScaleConfiguration();
    sub_100003D98();
    (*(v121 + 8))(v120);
    type metadata accessor for FeelsLikeComponentViewModel.SignificantDifference.Variance(0);
  }

  v122 = v112 + v116[7];
  v123 = sub_10000C834();
  if (!sub_100024D10(v123, v124, v113))
  {
    v125 = sub_100003940();
    (v115)(v125);
  }

  type metadata accessor for HourlyForecastComponentViewModel(0);

  type metadata accessor for HourlyForecastComponentPreprocessedDataModel(0);
  type metadata accessor for WeatherDescription();
  if (!sub_100016FF4())
  {
    sub_100006494();
    v126 = sub_10003C950();
    v127(v126);
  }

  sub_100013D5C();

  v128 = v122 + *(type metadata accessor for ListPreprocessedDataModel(0) + 32);
  v129 = type metadata accessor for Date();
  sub_1000037E8();
  v156 = *(v130 + 8);
  v156(v128, v129);
  v131 = type metadata accessor for WeatherConditionBackgroundTimeData(0);
  v132 = *(v131 + 20);
  v133 = type metadata accessor for Elevation();
  if (!sub_100024D10(v128 + v132, 1, v133))
  {
    sub_100003B20();
    (*(v134 + 8))(v128 + v132, v133);
  }

  v135 = *(v131 + 24);
  v136 = type metadata accessor for BackgroundMoonData();
  if (!sub_100024D10(v128 + v135, 1, v136))
  {
    sub_100003B20();
    (*(v137 + 8))(v128 + v135, v136);
  }

  sub_100013D5C();

  sub_100006494();
  v138 = sub_100003940();
  v139(v138);
  v140 = type metadata accessor for UVIndexComponentPreprocessedDataModel(0);
  sub_1000047FC(*(v140 + 20));

  sub_1000047FC(*(v140 + 24));

  sub_100013D5C();

  v141 = v112 + v116[12];
  type metadata accessor for PressureTrend();
  sub_100003D98();
  (*(v142 + 8))(v141);
  v143 = type metadata accessor for PressureComponentPreprocessedDataModel(0);
  sub_1000047FC(v143[5]);

  sub_1000047FC(v143[6]);

  sub_1000047FC(v143[7]);

  sub_1000047FC(v143[9]);

  sub_100013D5C();

  v144 = v112 + v116[14];
  v156(v144, v129);
  v145 = *(v131 + 20);
  v146 = sub_10000CF38();
  if (!sub_100024D10(v146, v147, v133))
  {
    sub_100003B20();
    (*(v148 + 8))(v144 + v145, v133);
  }

  v149 = *(v131 + 24);
  v150 = sub_10000CF38();
  if (!sub_100024D10(v150, v151, v136))
  {
    sub_100003B20();
    (*(v152 + 8))(v144 + v149, v136);
  }

  sub_100013D5C();

  v153 = v163[10];
  type metadata accessor for NewsDataModel(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for News();
    sub_100003D98();
    (*(v154 + 8))(v162 + v153);
  }

  (v158)(v162 + v163[12], v160);
  sub_10022C350(&qword_100CDE580, &qword_100A8D698);

  return swift_deallocObject();
}