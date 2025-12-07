uint64_t sub_10001B2A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B2F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001B348()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001B3B4()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  sub_100007000((v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001B498()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B4D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001B510()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B548()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B580()
{
  v1 = type metadata accessor for ItemLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001B66C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B6AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B6E4()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001B734()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001B788()
{
  sub_100007000(v0 + 4);

  sub_100007000(v0 + 11);
  sub_100007000(v0 + 16);
  sub_100007000(v0 + 21);
  sub_100007000(v0 + 26);
  sub_100007000(v0 + 31);
  sub_100007000(v0 + 39);
  if (v0[50])
  {
    sub_100007000(v0 + 47);
  }

  if (v0[55])
  {
    sub_100007000(v0 + 52);
  }

  if (v0[60])
  {
    sub_100007000(v0 + 57);
  }

  sub_100007000(v0 + 62);
  if (v0[70])
  {
    sub_100007000(v0 + 67);
  }

  if (v0[75])
  {
    sub_100007000(v0 + 72);
  }

  if (v0[80])
  {
    sub_100007000(v0 + 77);
  }

  if (v0[85])
  {
    sub_100007000(v0 + 82);
  }

  if (v0[90])
  {
    sub_100007000(v0 + 87);
  }

  if (v0[95])
  {
    sub_100007000(v0 + 92);
  }

  return _swift_deallocObject(v0, 777, 7);
}

uint64_t sub_10001B890()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B8F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001B930()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B968()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001B9A0()
{
  v1 = *(sub_10002849C(&unk_100973230, &unk_1007B17E0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = sub_10002849C(&unk_100973240, qword_1007B2220);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = (v3 + v4 + v7) & ~v7;
  v12 = v8 + v11;
  (*(v6 + 8))(v0 + v11, v5);

  return _swift_deallocObject(v0, v12 + 2, v2 | v7 | 7);
}

uint64_t sub_10001BB98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001BBEC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001BC2C()
{
  v1 = sub_10002849C(&qword_100990A28, &qword_1007DBAC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_10002849C(&qword_100990A20, &qword_1007DBAC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10001BD94()
{
  v1 = sub_10002849C(&qword_100972CF8, &qword_1007B3DF8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v13 = *(v2 + 64);
  v5 = sub_10002849C(&unk_100990A30, &qword_1007DBAD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (((v13 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v12 = v3 | v7;
  v9 = (*(v6 + 64) + v3 + v8) & ~v3;
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);

  (*(v6 + 8))(v0 + v8, v5);
  v10(v0 + v9, v1);

  return _swift_deallocObject(v0, v9 + v13, v12 | 7);
}

uint64_t sub_10001BF40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001BF78@<X0>(uint64_t *a1@<X8>)
{
  result = AccountPresenter.Section.footerText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001BFA4@<X0>(uint64_t *a1@<X8>)
{
  result = AccountPresenter.Section.headerText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001BFD0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C018()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C06C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C0D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FlowPresentationContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for FlowAnimationBehavior();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10001C1C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for FlowPresentationContext();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for FlowAnimationBehavior();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10001C2CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C31C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001C368()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C3B0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001C3F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C430()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C468()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C4A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C4E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C518()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C554()
{
  sub_100007000((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001C58C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C5C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C630()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C6B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C6E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C730()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C76C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C7AC()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10001C7F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C838()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001C984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001CA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for StaticDimension();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_10001CB40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for StaticDimension();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 40);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_10001CC60()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001CD40()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CD78()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CDB0()
{

  sub_100007000((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001CDF8@<X0>(uint64_t *a1@<X8>)
{
  AttributeScopes.uiKit.getter();
  result = type metadata accessor for AttributeScopes.UIKitAttributes();
  *a1 = result;
  return result;
}

uint64_t sub_10001CE44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CE7C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CEB4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CEF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CF2C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001CF64()
{

  sub_100007000((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001CFC8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.flowPreview.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001D020()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D05C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D098()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D0D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D124()
{
  sub_100007000(v0 + 2);
  sub_100007000(v0 + 9);
  sub_100007000(v0 + 14);
  sub_100007000(v0 + 22);
  sub_100007000(v0 + 30);
  sub_100007000(v0 + 35);
  sub_100007000(v0 + 40);
  sub_100007000(v0 + 45);
  sub_100007000(v0 + 50);

  return _swift_deallocObject(v0, 441, 7);
}

id sub_10001D1A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 layoutSize];
  *a2 = result;
  return result;
}

id sub_10001D1E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 heightDimension];
  *a2 = result;
  return result;
}

id sub_10001D21C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dimension];
  *a2 = v4;
  return result;
}

uint64_t sub_10001D258()
{
  if (*(v0 + 40))
  {
    sub_100007000((v0 + 16));
  }

  sub_100007000((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10001D2A8()
{
  sub_100007000((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001D2E4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D320()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D358()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001D3A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001D47C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D4B4()
{
  v1 = type metadata accessor for AdamId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001D540()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D578()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D5B0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001D608()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D648()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D680()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001D6D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D708()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001D748()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for StaticDimension();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10001D7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for StaticDimension();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_10001D874@<X0>(_BYTE *a1@<X8>)
{
  result = UITraitCollection.isSizeClassRegular.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10001D8B0()
{
  v1 = type metadata accessor for PageFacets.Facet.Option();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for PageFacets.Facet();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_10001DA10()
{
  v1 = type metadata accessor for PerformanceTestCase();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10001DAC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DAF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DB40()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DB7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10001DC38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10002849C(&qword_100979710, &qword_1007BB7C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001DD1C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DD54()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001DE24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DE5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DEA0()
{
  if (*(v0 + 40))
  {
    sub_100007000((v0 + 16));
  }

  sub_100007000((v0 + 56));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10001DF18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DF50()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DF88()
{

  sub_100007000((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001DFD0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E008()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E040()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E088()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001E0D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E114()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E17C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E1B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001E1FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E23C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E274()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001E390(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001E44C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10002849C(&qword_100979010, qword_1007BE140);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10002849C(&unk_100980420, &qword_1007E0730);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_10001E590(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10002849C(&qword_100979010, qword_1007BE140);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 24) = (a2 - 1);
  }

  else
  {
    v13 = sub_10002849C(&unk_100980420, &qword_1007E0730);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_10001E6D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E71C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E770()
{
  v1 = type metadata accessor for JSIncident();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001E7F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E838()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001E894()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E8E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E920()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E95C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001E994()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001E9D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EA0C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EA44()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001EA98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EAE0()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10001EB38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EB88()
{
  sub_100007000((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001EC40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EC80()
{
  v1 = type metadata accessor for HttpTemplateParameter();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001ED1C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001ED74()
{
  v1 = type metadata accessor for ItemLayoutContext();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10001EE48()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001EE88()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001EED0()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001EF94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001EFCC()
{
  v1 = sub_10002849C(&qword_1009962C0, &qword_1007E20F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10001F060()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F0B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F0F0()
{
  sub_100007000(v0 + 4);

  sub_100007000(v0 + 11);
  sub_100007000(v0 + 16);
  sub_100007000(v0 + 21);
  sub_100007000(v0 + 26);
  sub_100007000(v0 + 31);
  sub_100007000(v0 + 39);
  if (v0[50])
  {
    sub_100007000(v0 + 47);
  }

  if (v0[55])
  {
    sub_100007000(v0 + 52);
  }

  if (v0[60])
  {
    sub_100007000(v0 + 57);
  }

  sub_100007000(v0 + 62);
  if (v0[70])
  {
    sub_100007000(v0 + 67);
  }

  if (v0[75])
  {
    sub_100007000(v0 + 72);
  }

  if (v0[80])
  {
    sub_100007000(v0 + 77);
  }

  if (v0[85])
  {
    sub_100007000(v0 + 82);
  }

  if (v0[90])
  {
    sub_100007000(v0 + 87);
  }

  if (v0[95])
  {
    sub_100007000(v0 + 92);
  }

  return _swift_deallocObject(v0, 777, 7);
}

uint64_t sub_10001F1F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F238()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F270()
{
  v1 = *(sub_10002849C(&unk_100993040, &qword_1007BC2F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = type metadata accessor for ActionMetrics();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10001F40C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F444()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F480()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F4C8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F508()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001F548()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F588()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F5C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001F63C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1000209DC(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) toastView];
  v4 = v5;
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) toastView];
  [v3 setAlpha:1.0];
}

id sub_100020A5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 duration];

  return [v1 _dismissAfterDelay:?];
}

void sub_100020F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100020F60(void *a1, void *a2, double a3)
{
  v21 = a2;
  [v21 frame];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  [v21 sizeThatFits:{v6, v7}];
  v9 = v8;
  MinX = CGRectGetMinX(*(*(a1[4] + 8) + 32));
  v11 = *(*(a1[5] + 8) + 24);
  if (v11 <= 0.0)
  {
    v14 = CGRectGetMinY(*(*(a1[4] + 8) + 32)) + a3;
  }

  else
  {
    v12 = v11 + a3;
    [v21 _firstBaselineOffsetFromTop];
    *&v13 = v12 - v13;
    v14 = ceilf(*&v13);
  }

  if (v9 >= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;
  v17 = ceilf(v16);
  [v21 setFrame:{MinX, v14, v6, v17}];
  v23.origin.x = MinX;
  v23.origin.y = v14;
  v23.size.width = v6;
  v23.size.height = v17;
  *(*(a1[4] + 8) + 56) = *(*(a1[4] + 8) + 56) - CGRectGetHeight(v23);
  Height = CGRectGetHeight(*(*(a1[4] + 8) + 32));
  if (Height < 0.0)
  {
    Height = 0.0;
  }

  *(*(a1[4] + 8) + 56) = Height;
  v24.origin.x = MinX;
  v24.origin.y = v14;
  v24.size.width = v6;
  v24.size.height = v17;
  MaxY = CGRectGetMaxY(v24);
  [v21 _baselineOffsetFromBottom];
  *(*(a1[5] + 8) + 24) = MaxY - v20;
  v25.origin.x = MinX;
  v25.origin.y = v14;
  v25.size.width = v6;
  v25.size.height = v17;
  *(*(a1[6] + 8) + 24) = CGRectGetMaxY(v25);
}

id sub_100021234(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100021304;
  v3[3] = &unk_1008AE468;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000213E4;
  v2[3] = &unk_1008AE490;
  v2[4] = v4;
  return [UIView animateWithDuration:2 delay:v3 options:v2 animations:0.2 completion:0.0];
}

void sub_100021304(uint64_t a1)
{
  v2 = [*(a1 + 32) toastView];
  v3 = [v2 contentView];
  v4 = [v3 superview];
  [v4 setAlpha:0.0];

  v5 = +[UIColor clearColor];
  v6 = [*(a1 + 32) toastView];
  [v6 setBackgroundColor:v5];

  CGAffineTransformMakeScale(&v9, 0.88, 0.88);
  v7 = [*(a1 + 32) view];
  v8 = v9;
  [v7 setTransform:&v8];
}

id sub_1000213E4(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) view];
  v4 = v5;
  [v2 setTransform:&v4];

  return [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
}

void sub_1000220B8(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  [*(a1 + 32) keyboardOverlapHeight];
  v6 = v5;
  v7 = *(a1 + 64);
  v8 = [*(a1 + 32) tableView];
  [v8 setContentInset:{v3, v4, v6, v7}];

  if (JUScreenClassGetMain() == 1)
  {
    v9 = [*(a1 + 32) tableView];
    v10 = [NSIndexPath indexPathForRow:0 inSection:0];
    v11 = [v9 cellForRowAtIndexPath:v10];

    v12 = [*(a1 + 32) tableView];
    [v11 frame];
    MinY = CGRectGetMinY(v22);
    v14 = [*(a1 + 32) tableView];
    [v14 contentInset];
    v16 = MinY - v15;
    v17 = [*(a1 + 32) view];
    [v17 safeAreaInsets];
    [v12 setContentOffset:{0.0, v16 - v18}];
  }

  v19 = [*(a1 + 32) tableView];
  [v19 endUpdates];

  v20 = [*(a1 + 32) view];
  [v20 layoutIfNeeded];
}

void sub_1000223A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  [*(a1 + 32) keyboardOverlapHeight];
  v5 = v4;
  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) tableView];
  [v7 setContentInset:{v2, v3, v5, v6}];

  v8 = [*(a1 + 32) view];
  [v8 layoutIfNeeded];

  v9 = [*(a1 + 32) tableView];
  [v9 beginUpdates];

  v10 = [*(a1 + 32) tableView];
  [v10 endUpdates];
}

uint64_t sub_100023300(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) as_viewDidBecomePartiallyVisible];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100023B2C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_1000246B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1000246D0(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
  v7 = [WeakRetained configuration];
  v8 = [v7 completion];

  if (v8)
  {
    v9 = [WeakRetained configuration];
    v10 = [v9 completion];
    v11 = [v12 reasonID];
    (v10)[2](v10, WeakRetained, v11, v5);
  }
}

id variable initialization expression of CondensedEditorialSearchResultContentView.viewButton()
{
  v0 = [objc_opt_self() buttonWithType:0];

  return v0;
}

uint64_t variable initialization expression of CondensedEditorialSearchResultContentView.configuration@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v3 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double variable initialization expression of CondensedEditorialSearchResultContentView.artworkSize()
{
  v0 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v4, v6);
  CondensedSearchResultCardLayout.Configuration.metrics.getter();
  (*(v5 + 8))(v8, v4);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  return v10;
}

double variable initialization expression of AppPromotionDetailPageContentLayout.learnMoreButton@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

char *variable initialization expression of CondensedInAppPurchaseContentView.inAppPurchaseView()
{
  v0 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v3 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  return sub_1002EB7C0(v2, 1);
}

uint64_t sub_100024C14@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

__n128 sub_100024CA0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SearchLockupListCollectionViewCell.ListConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100024E78(uint64_t a1, uint64_t a2)
{
  result = static Int._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100024ECC(uint64_t a1, uint64_t a2)
{
  v3 = static Int._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100024F24@<X0>(uint64_t *a1@<X8>)
{
  result = static Int._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

BOOL sub_100024F68(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100024FC0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100025038(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000250B8@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

_DWORD *sub_1000250FC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

Swift::Int sub_10002510C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100025154(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000251A4(uint64_t a1)
{
  sub_10002569C(&qword_10096F230, type metadata accessor for UIContentSizeCategory, &unk_1007AEECC);
  sub_10002569C(&qword_10096F238, type metadata accessor for UIContentSizeCategory, &unk_1007AEE6C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100025260(uint64_t a1)
{
  sub_10002569C(&qword_10096F6A8, type metadata accessor for TextStyle, &unk_1007AF78C);
  sub_10002569C(&unk_10096F6B0, type metadata accessor for TextStyle, &unk_1007AF72C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10002531C(uint64_t a1)
{
  sub_10002569C(&qword_100976620, type metadata accessor for Key, &unk_1007B0934);
  sub_10002569C(&qword_10096F6C0, type metadata accessor for Key, &unk_1007AF548);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000253D8(uint64_t a1)
{
  sub_10002569C(&qword_10096F240, type metadata accessor for ActivityType, &unk_1007AEBCC);
  sub_10002569C(&qword_10096F248, type metadata accessor for ActivityType, &unk_1007AEB74);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100025494(uint64_t a1)
{
  sub_10002569C(&qword_10096F698, type metadata accessor for DeviceType, &unk_1007AF8F0);
  sub_10002569C(&qword_10096F6A0, type metadata accessor for DeviceType, &unk_1007AF890);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100025550(uint64_t a1)
{
  sub_10002569C(&qword_10096F250, type metadata accessor for CAGradientLayerType, &unk_1007AE9CC);
  sub_10002569C(&qword_10096F258, type metadata accessor for CAGradientLayerType, &unk_1007AE96C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_10002569C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002572C(uint64_t a1)
{
  sub_10002569C(&qword_10096F618, type metadata accessor for NSKeyValueChangeKey, &unk_1007B0824);
  sub_10002569C(&unk_10096F620, type metadata accessor for NSKeyValueChangeKey, &unk_1007B0620);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000257E8(uint64_t a1)
{
  sub_10002569C(&qword_10096F608, type metadata accessor for UIBackgroundTaskIdentifier, &unk_1007B0794);
  sub_10002569C(&qword_10096F610, type metadata accessor for UIBackgroundTaskIdentifier, &unk_1007B0734);
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000258A4(uint64_t a1)
{
  sub_10002569C(&qword_10096F688, type metadata accessor for FeatureKey, &unk_1007AFAF4);
  sub_10002569C(&qword_10096F690, type metadata accessor for FeatureKey, &unk_1007AFA94);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100025960(uint64_t a1)
{
  sub_10002569C(&qword_10096F678, type metadata accessor for AttributeName, &unk_1007B08F0);
  sub_10002569C(&qword_10096F680, type metadata accessor for AttributeName, &unk_1007AFBEC);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100025A1C(uint64_t a1)
{
  sub_10002569C(&qword_10096F668, type metadata accessor for BuildType, &unk_1007AFD60);
  sub_10002569C(&qword_10096F670, type metadata accessor for BuildType, &unk_1007AFD00);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100025AD8(uint64_t a1)
{
  sub_10002569C(&qword_10096F648, type metadata accessor for Mode, &unk_1007B0178);
  sub_10002569C(&qword_10096F650, type metadata accessor for Mode, &unk_1007B0120);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100025B94(uint64_t a1)
{
  sub_10002569C(&qword_10096F658, type metadata accessor for Category, &unk_1007B0038);
  sub_10002569C(&qword_10096F660, type metadata accessor for Category, &unk_1007AFFE0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100025C50(uint64_t a1)
{
  sub_10002569C(&qword_100985B30, type metadata accessor for LaunchOptionsKey, &unk_1007B0868);
  sub_10002569C(&unk_10096F630, type metadata accessor for LaunchOptionsKey, &unk_1007B050C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100025D0C(uint64_t a1)
{
  sub_10002569C(&qword_100985B20, type metadata accessor for OpenURLOptionsKey, &unk_1007B08AC);
  sub_10002569C(&qword_10096F640, type metadata accessor for OpenURLOptionsKey, &unk_1007B03F8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_100025DC8@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100025E10(uint64_t a1)
{
  sub_10002569C(&qword_10096F6F8, type metadata accessor for AIDAServiceType, &unk_1007B0A90);
  sub_10002569C(&unk_10096F700, type metadata accessor for AIDAServiceType, &unk_1007B0A38);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

__n128 sub_1000260C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000260D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000260F8(uint64_t result, int a2, int a3)
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

uint64_t sub_100026440()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10002647C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000264D0(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_1000270CC(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_100027154(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_1000271C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100027398()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivacyDefinitionLayout.Metrics();
  sub_100005644(v4, qword_1009CD720);
  v30 = sub_1000056A8(v4, qword_1009CD720);
  if (qword_10096E0C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D11C0);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = type metadata accessor for StaticDimension();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_10096E0C8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v5, qword_1009D11D8);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_1000056E0(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(v34);
  v18 = v27;
  v27(v17, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_1000056E0(v34);
  *(&v32 + 1) = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(&v31);
  v18(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v19(v3, v0);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  return PrivacyDefinitionLayout.Metrics.init(titleTopSpace:definitionTopSpace:bottomMargin:maxTextWidth:)();
}

id sub_1000278C4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *&v3[*a3];
  result = [v6 text];
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (!a2)
    {
      v14 = 0;
      goto LABEL_12;
    }

    if (v9 == a1 && v11 == a2)
    {

LABEL_16:
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v14 = String._bridgeToObjectiveC()();
LABEL_12:

  [v6 setText:v14];

  return [v3 setNeedsLayout];
}

uint64_t sub_100027A20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v25 = type metadata accessor for LayoutRect();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PrivacyDefinitionLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrivacyDefinitionLayout();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v3;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "layoutSubviews", v14);
  v17 = [v3 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();

  if (qword_10096CE50 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v8, qword_1009CD720);
  (*(v9 + 16))(v11, v18, v8);
  v19 = *&v3[OBJC_IVAR____TtC8AppStore35PrivacyDefinitionCollectionViewCell_titleLabel];
  v30 = type metadata accessor for DynamicTypeLabel();
  v31 = &protocol witness table for UILabel;
  v28 = &protocol witness table for UILabel;
  v29 = v19;
  v20 = *&v3[OBJC_IVAR____TtC8AppStore35PrivacyDefinitionCollectionViewCell_definitionLabel];
  v27 = v30;
  v26 = v20;
  v21 = v19;
  v22 = v20;
  PrivacyDefinitionLayout.init(metrics:titleLabel:definitionLabel:)();
  PrivacyDefinitionLayout.placeChildren(relativeTo:in:)();
  (*(v5 + 8))(v7, v25);
  return (*(v13 + 8))(v16, v12);
}

id MetadataRibbonView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for PrivacyDefinitionCollectionViewCell(uint64_t a1)
{
  result = qword_10096F8C8;
  if (!qword_10096F8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100027F0C(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100027FAC(uint64_t a1)
{
  if (!qword_100973090)
  {
    type metadata accessor for ItemLayoutContext();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100973090);
    }
  }
}

unint64_t sub_100028004()
{
  result = qword_100972EB0;
  if (!qword_100972EB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100972EB0);
  }

  return result;
}

char *sub_100028050(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  v9 = OBJC_IVAR____TtC8AppStore35PrivacyDefinitionCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  v11 = *(*(v10 - 8) + 56);
  v34 = v2;
  v11(&v2[v9], 1, 1, v10);
  if (qword_10096E0C0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D11C0);
  v14 = *(v12 - 8);
  v31 = *(v14 + 16);
  v31(v8, v13, v12);
  v30 = *(v14 + 56);
  v30(v8, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = *(v4 + 104);
  v16(v33, enum case for DirectionalTextAlignment.none(_:), v3);
  v17 = type metadata accessor for DynamicTypeLabel();
  v29 = v3;
  v18 = v17;
  v19 = objc_allocWithZone(v17);
  *&v34[OBJC_IVAR____TtC8AppStore35PrivacyDefinitionCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E0C8 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v12, qword_1009D11D8);
  v31(v8, v20, v12);
  v30(v8, 0, 1, v12);
  v16(v33, v15, v29);
  v21 = objc_allocWithZone(v18);
  v22 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v23 = v34;
  *&v34[OBJC_IVAR____TtC8AppStore35PrivacyDefinitionCollectionViewCell_definitionLabel] = v22;
  v35.receiver = v23;
  v35.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v35, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v25 = [v24 contentView];
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v26 = [v24 contentView];
  [v26 addSubview:*&v24[OBJC_IVAR____TtC8AppStore35PrivacyDefinitionCollectionViewCell_titleLabel]];

  v27 = [v24 contentView];
  [v27 addSubview:*&v24[OBJC_IVAR____TtC8AppStore35PrivacyDefinitionCollectionViewCell_definitionLabel]];

  return v24;
}

uint64_t sub_10002849C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000284E4(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009731E0, &unk_1007B0B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10002854C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v6[OBJC_IVAR____TtC8AppStore24InfiniteScrollFooterView_activityIndicator] = v12;
  v20.receiver = v6;
  v20.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_100028BB8();
  v18 = static UIColor.defaultBackground.getter();
  [v17 setBackgroundColor:v18];

  [v17 addSubview:*&v17[OBJC_IVAR____TtC8AppStore24InfiniteScrollFooterView_activityIndicator]];
  return v17;
}

void sub_100028AF8(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v9.receiver;
  v8 = a3;
  objc_msgSendSuper2(&v9, v6, v8);
  if (v8)
  {
  }

  else
  {
    [*&v7[OBJC_IVAR____TtC8AppStore24InfiniteScrollFooterView_activityIndicator] stopAnimating];
  }
}

unint64_t sub_100028BB8()
{
  result = qword_100970180;
  if (!qword_100970180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100970180);
  }

  return result;
}

char *sub_100028C04(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_iconPlaceholder;
  type metadata accessor for ArtworkView();
  v11 = static ArtworkView.iconArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_headingPlaceholder;
  type metadata accessor for Placeholder();
  v13 = static Placeholder.headingTitleText.getter();
  v15 = sub_10025084C(v13, v14, UIFontTextStyleFootnote);

  *&v5[v12] = v15;
  v16 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_titlePlaceholder;
  v17 = static Placeholder.titleText.getter();
  v19 = sub_10025084C(v17, v18, UIFontTextStyleBody);

  *&v5[v16] = v19;
  v20 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_subtitlePlaceholder;
  v21 = static Placeholder.subtitleText.getter();
  v23 = sub_10025084C(v21, v22, UIFontTextStyleFootnote);

  *&v5[v20] = v23;
  v24 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_offerButtonPlaceholder;
  type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  *&v5[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_contentType;
  v26 = enum case for Shelf.ContentType.smallLockup(_:);
  v27 = type metadata accessor for Shelf.ContentType();
  (*(*(v27 - 8) + 104))(&v5[v25], v26, v27);
  v5[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_wantsHeadingTextPlaceholder] = 0;
  v34.receiver = v5;
  v34.super_class = type metadata accessor for LockupPlaceholderView(0);
  v28 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_iconPlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_titlePlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_subtitlePlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_offerButtonPlaceholder]];

  return v32;
}

uint64_t sub_100028EC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Shelf.ContentType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  v10 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_contentType;
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v9, v1 + v10, v3);
  v12 = (*(v4 + 88))(v9, v3);
  if (v12 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return sub_100029120(a1);
  }

  if (v12 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return sub_100029638(a1);
  }

  if (v12 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return sub_100029B18(a1);
  }

  v15[1] = 0;
  v15[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(44);
  v11(v6, v1 + v10, v3);
  _print_unlocked<A, B>(_:_:)();
  (*(v4 + 8))(v6, v3);
  v14._object = 0x80000001007FAAB0;
  v14._countAndFlagsBits = 0xD00000000000002ALL;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100029120@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = type metadata accessor for LabelPlaceholderCompatibility();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallLockupLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v6, qword_1009D3798);
  v38 = v7;
  v14 = *(v7 + 16);
  v14(v12, v13, v6);
  SmallLockupLayout.Metrics.offerButtonSize.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v37 = v9;
  v14(v9, v12, v6);
  v15 = *(v1 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_iconPlaceholder);
  v59[8] = type metadata accessor for ArtworkView();
  v59[9] = &protocol witness table for UIView;
  v59[5] = v15;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 preferredFontForTextStyle:UIFontTextStyleBody];
  v19 = type metadata accessor for Feature();
  v59[3] = v19;
  v59[4] = sub_10002A354(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v20 = sub_1000056E0(v59);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.measurement_with_labelplaceholder(_:), v19);
  isFeatureEnabled(_:)();
  sub_100007000(v59);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v3 + 8))(v5, v35);
  if (*(v2 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_wantsHeadingTextPlaceholder) == 1)
  {
    v21 = *(v2 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_headingPlaceholder);
    v22 = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
    v23 = v21;
    v24 = &protocol witness table for UILabel;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v21 = 0;
    v55 = 0;
    v56 = 0;
  }

  v57 = v22;
  v58 = v24;
  v54 = v21;
  v25 = *(v2 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_titlePlaceholder);
  v52 = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
  v53 = &protocol witness table for UILabel;
  v50 = &protocol witness table for UILabel;
  v51 = v25;
  v26 = *(v2 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_subtitlePlaceholder);
  v49 = v52;
  v48 = v26;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v27 = *(v2 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_offerButtonPlaceholder);
  v40 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v41 = &protocol witness table for UIView;
  v39 = v27;
  v28 = type metadata accessor for SmallLockupLayout();
  v29 = v36;
  v36[3] = v28;
  v29[4] = sub_10002A354(&qword_10096F988, &type metadata accessor for SmallLockupLayout, &protocol conformance descriptor for SmallLockupLayout);
  v29[5] = sub_10002A354(&qword_100993120, &type metadata accessor for SmallLockupLayout, &protocol conformance descriptor for SmallLockupLayout);
  sub_1000056E0(v29);
  v30 = v25;
  v31 = v26;
  v32 = v27;
  SmallLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)();
  return (*(v38 + 8))(v12, v6);
}

uint64_t sub_100029638@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = type metadata accessor for LabelPlaceholderCompatibility();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MediumLockupLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  type metadata accessor for MediumLockupCollectionViewCell(0);
  v13 = [v1 traitCollection];
  sub_100631334(v12);

  v14 = *&v1[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_offerButtonPlaceholder];
  [v14 sizeThatFits:{0.0, 0.0}];
  MediumLockupLayout.Metrics.offerButtonSize.setter();
  v15 = *(v7 + 16);
  v37 = v9;
  v38 = v6;
  v15(v9, v12, v6);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_iconPlaceholder];
  v59 = type metadata accessor for ArtworkView();
  v60 = &protocol witness table for UIView;
  v58 = v16;
  if (v1[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_wantsHeadingTextPlaceholder] == 1)
  {
    v17 = *&v1[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_headingPlaceholder];
    v18 = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
    v19 = v17;
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v17 = 0;
    v54 = 0;
    v55 = 0;
  }

  v56 = v18;
  v57 = v20;
  v53 = v17;
  v21 = *&v2[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_titlePlaceholder];
  v51 = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v21;
  v22 = *&v2[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_subtitlePlaceholder];
  v48 = v51;
  v46 = 0;
  v47 = v22;
  v44 = 0u;
  v45 = 0u;
  v23 = objc_opt_self();
  v24 = v16;
  v25 = v21;
  v26 = v22;
  v27 = [v23 preferredFontForTextStyle:UIFontTextStyleBody];
  v28 = type metadata accessor for Feature();
  v43[3] = v28;
  v43[4] = sub_10002A354(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v29 = sub_1000056E0(v43);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  isFeatureEnabled(_:)();
  sub_100007000(v43);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v35 + 8))(v5, v36);
  v41 = sub_100005744(0, &qword_100972EB0, UIView_ptr);
  v42 = &protocol witness table for UIView;
  v40 = v14;
  v30 = type metadata accessor for MediumLockupLayout();
  v31 = v39;
  v39[3] = v30;
  v31[4] = sub_10002A354(&qword_10096F978, &type metadata accessor for MediumLockupLayout, &protocol conformance descriptor for MediumLockupLayout);
  v31[5] = sub_10002A354(&qword_10096F980, &type metadata accessor for MediumLockupLayout, &protocol conformance descriptor for MediumLockupLayout);
  sub_1000056E0(v31);
  v32 = v14;
  MediumLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:)();
  return (*(v7 + 8))(v12, v38);
}

uint64_t sub_100029B18@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for LargeLockupLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D410 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v3, qword_1009CE908);
  (*(v4 + 16))(v6, v7, v3);
  v8 = *(v1 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_iconPlaceholder);
  v34 = type metadata accessor for ArtworkView();
  v35 = &protocol witness table for UIView;
  v33 = v8;
  if (*(v1 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_wantsHeadingTextPlaceholder) == 1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_headingPlaceholder);
    v10 = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
    v11 = v9;
    v12 = &protocol witness table for UILabel;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v9 = 0;
    v29 = 0;
    v30 = 0;
  }

  v31 = v10;
  v32 = v12;
  v28 = v9;
  v13 = *(v1 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_titlePlaceholder);
  v26 = sub_100005744(0, &qword_100986BF0, UILabel_ptr);
  v27 = &protocol witness table for UILabel;
  v24 = &protocol witness table for UILabel;
  v25 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_subtitlePlaceholder);
  v23 = v26;
  v22 = v14;
  v15 = type metadata accessor for LargeLockupLayout();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  a1[3] = v15;
  a1[4] = sub_10002A354(&qword_10096F968, &type metadata accessor for LargeLockupLayout, &protocol conformance descriptor for LargeLockupLayout);
  a1[5] = sub_10002A354(&qword_10096F970, &type metadata accessor for LargeLockupLayout, &protocol conformance descriptor for LargeLockupLayout);
  sub_1000056E0(a1);
  v16 = v8;
  v17 = v13;
  v18 = v14;
  return LargeLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:)();
}

uint64_t sub_100029E8C()
{
  v1 = type metadata accessor for LayoutRect();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for LargeLockupLayout();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LockupPlaceholderView(0);
  v13.receiver = v0;
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, "layoutSubviews");
  sub_100028EC0(v12);
  if (v0[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_wantsHeadingTextPlaceholder] == 1)
  {
    [v0 insertSubview:*&v0[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_headingPlaceholder] belowSubview:*&v0[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_titlePlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_headingPlaceholder] removeFromSuperview];
  }

  sub_10002A39C(v12, v11);
  sub_10002849C(&qword_10096F990, &unk_1007B0C00);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(v8, v5);
    [*&v0[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_offerButtonPlaceholder] removeFromSuperview];
  }

  else
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_offerButtonPlaceholder]];
  }

  sub_10002A400(v12, v12[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v1);
  return sub_100007000(v12);
}

id sub_10002A15C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupPlaceholderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupPlaceholderView(uint64_t a1)
{
  result = qword_10096F958;
  if (!qword_10096F958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002A2A4(uint64_t a1)
{
  result = type metadata accessor for Shelf.ContentType();
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

uint64_t sub_10002A354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002A39C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10002A400(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_10002A444()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_iconPlaceholder;
  type metadata accessor for ArtworkView();
  v3 = static ArtworkView.iconArtworkView.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_headingPlaceholder;
  type metadata accessor for Placeholder();
  v5 = static Placeholder.headingTitleText.getter();
  v7 = sub_10025084C(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_titlePlaceholder;
  v9 = static Placeholder.titleText.getter();
  v11 = sub_10025084C(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_subtitlePlaceholder;
  v13 = static Placeholder.subtitleText.getter();
  v15 = sub_10025084C(v13, v14, UIFontTextStyleFootnote);

  *(v1 + v12) = v15;
  v16 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_offerButtonPlaceholder;
  type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_contentType;
  v18 = enum case for Shelf.ContentType.smallLockup(_:);
  v19 = type metadata accessor for Shelf.ContentType();
  (*(*(v19 - 8) + 104))(v1 + v17, v18, v19);
  *(v1 + OBJC_IVAR____TtC8AppStore21LockupPlaceholderView_wantsHeadingTextPlaceholder) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10002A670()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Banner();
  sub_10002A8DC(&qword_10096F9A0, &type metadata accessor for Banner, &protocol conformance descriptor for Banner);
  ItemLayoutContext.typedModel<A>(as:)();
  v4 = v17;
  if (!v17)
  {
    return 0.0;
  }

  if (Banner.leadingArtwork.getter())
  {

    v5 = 15.0;
  }

  else
  {
    v5 = 22.0;
  }

  Banner.buttonActions.getter();
  sub_10002849C(&qword_10096F9A8, &unk_1007DB3B0);
  v7 = Array.isNotEmpty.getter();

  v8 = 15.0;
  if ((v7 & 1) == 0)
  {
    v8 = v5;
  }

  v9 = 9.0;
  if (v7)
  {
    v9 = 12.0;
  }

  *&v17 = v9;
  *(&v17 + 1) = 0x402E000000000000;
  v18 = v9;
  v19 = xmmword_1007B0C10;
  v20 = v5;
  v21 = 0x4022000000000000;
  v22 = v8;
  v23 = xmmword_1007B0C20;
  v24 = xmmword_1007B0C30;
  v10 = sub_100079F24();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v12 = v11;
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  sub_10063EAAC(v4, &v17, v10, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v12, v14);
  v6 = v15;
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_10002A8DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10002A924(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_10096D280 != -1)
  {
    swift_once();
  }

  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for VideoCardView(0);

  return sub_1001C2E40(a1, a2, &qword_1009CE578, a8, v12, ObjectType);
}

id sub_10002AA74(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_10096D280 != -1)
  {
    swift_once();
  }

  sub_10002C110(&qword_10096FA00, type metadata accessor for VideoCardCollectionViewCell, &unk_1007BB598);
  static EstimatedMeasurable.estimatedSize(fitting:using:in:)();
  v3 = v2;
  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v6 absoluteDimension:v3];
  v8 = [v6 absoluteDimension:v5];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = [objc_opt_self() itemWithLayoutSize:v9];
  v11 = objc_opt_self();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007B0B70;
  *(v12 + 32) = v10;
  sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
  v13 = v10;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v11 verticalGroupWithLayoutSize:v9 subitems:isa];

  return v15;
}

uint64_t sub_10002ACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v92 = a3;
  v4 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v4 - 8);
  v82 = &v75 - v5;
  v6 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v6 - 8);
  v84 = &v75 - v7;
  v8 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v8 - 8);
  v83 = &v75 - v9;
  v10 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v10 - 8);
  v81 = &v75 - v11;
  v12 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v12 - 8);
  v80 = &v75 - v13;
  v14 = type metadata accessor for MediaOverlayStyle();
  __chkstk_darwin(v14 - 8);
  v79 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CornerStyle();
  v77 = *(v16 - 8);
  v78 = v16;
  __chkstk_darwin(v16);
  v76 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v18 - 8);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v85 = &v75 - v21;
  v22 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v22 - 8);
  v24 = &v75 - v23;
  v25 = type metadata accessor for VideoControls();
  __chkstk_darwin(v25 - 8);
  __chkstk_darwin(v26);
  v27 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v27 - 8);
  v29 = &v75 - v28;
  v30 = type metadata accessor for VideoFillMode();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for VideoConfiguration();
  v89 = *(v34 - 8);
  v90 = v34;
  __chkstk_darwin(v34);
  v36 = &v75 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a1;
  VideoCard.video.getter();
  (*(v31 + 104))(v33, enum case for VideoFillMode.scaleAspectFill(_:), v30);
  Video.preview.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();

  v37 = type metadata accessor for AspectRatio();
  (*(*(v37 - 8) + 56))(v29, 0, 1, v37);
  Video.playbackControls.getter();
  Video.autoPlayPlaybackControls.getter();
  Video.canPlayFullScreen.getter();
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  type metadata accessor for VideoViewManager();
  BaseObjectGraph.inject<A>(_:)();
  v38 = v93[0];
  Video.playbackId.getter();
  Video.videoUrl.getter();
  v39 = type metadata accessor for URL();
  (*(*(v39 - 8) + 56))(v24, 0, 1, v39);
  v40 = v85;
  Video.templateMediaEvent.getter();
  v41 = v86;
  Video.templateClickEvent.getter();
  type metadata accessor for VideoView(0);
  sub_10002C110(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  v88 = v36;
  v42 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  sub_10002B894(v41, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v40, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v24, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(v93, &qword_10096FB90, &qword_1007B2A50);
  v43 = *(v87 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = [Strong superview];
    if (!v46)
    {
LABEL_6:

      goto LABEL_7;
    }

    v47 = v46;
    sub_100005744(0, &qword_100972EB0, UIView_ptr);
    v48 = v43;
    v49 = static NSObject.== infix(_:_:)();

    if (v49)
    {
      v50 = swift_unknownObjectWeakLoadStrong();
      if (v50)
      {
        v45 = v50;
        [v50 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = v51;
    v54 = v77;
    v53 = v78;
    v55 = v76;
    (*(v77 + 104))(v76, enum case for CornerStyle.continuous(_:), v78);
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
    (*(v54 + 8))(v55, v53);
    [v43 addSubview:v52];
    [v43 sendSubviewToBack:v52];
    [v43 setNeedsLayout];
  }

  v56 = swift_unknownObjectWeakLoadStrong();
  if (v56)
  {
    v56[qword_100988CC8] = 1;
  }

  v57 = *&v43[OBJC_IVAR____TtC8AppStore13VideoCardView_overlayView];
  v58 = VideoCard.lockup.getter();
  if (v58)
  {
    v59 = v58;
    [v57 setHidden:0];
    v87 = v38;
    v60 = v79;
    VideoCard.overlayStyle.getter();
    sub_1001C1010(v60);
    v61 = *&v43[OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView];
    v62 = sub_10002849C(&unk_100973240, qword_1007B2220);
    v63 = v80;
    (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
    v64 = type metadata accessor for OfferStyle();
    v65 = v81;
    (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
    v66 = type metadata accessor for OfferEnvironment();
    v67 = v83;
    (*(*(v66 - 8) + 56))(v83, 1, 1, v66);
    v68 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
    v69 = v84;
    (*(*(v68 - 8) + 56))(v84, 1, 1, v68);
    v70 = type metadata accessor for OfferTint();
    v71 = v82;
    (*(*(v70 - 8) + 56))(v82, 1, 1, v70);
    v72 = v61;
    sub_1004F3190(v59, v72, v63, v92, 0, 0, v65, v67, v71, v69);
    sub_10002B894(v71, &unk_100973AD0, &unk_1007B17C0);
    v72[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v72 setNeedsLayout];

    sub_10002B894(v69, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v67, &unk_100970160, &unk_1007BDDE0);
    sub_10002B894(v65, &qword_100973AE0, &unk_1007B17D0);
    sub_10002B894(v63, &unk_100973230, &unk_1007B17E0);
  }

  else
  {
    v73 = v57;
    [v73 setHidden:1];
  }

  return (*(v89 + 8))(v88, v90);
}

uint64_t sub_10002B894(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10002849C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10002B8F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  swift_getObjectType();
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork.Crop();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SmallLockupLayout.Metrics();
  v36 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspectRatio();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v42);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for VideoCard();
  result = swift_dynamicCast();
  if (result)
  {
    v35[1] = v7;
    v37 = v41;
    VideoCard.video.getter();
    v19 = Video.preview.getter();

    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetWidth(v43);
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    (*(v15 + 8))(v17, v14);
    v35[2] = v19;
    v20 = Artwork.config(_:mode:prefersLayeredImage:)();
    v21 = *(v3 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      type metadata accessor for VideoView(0);
      sub_10002C110(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
      ArtworkLoader.prefetchArtwork(using:)();
    }

    v24 = v39;
    v25 = *(v21 + OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView);
    if (VideoCard.lockup.getter())
    {
      if (dispatch thunk of Lockup.artwork.getter())
      {
        v35[0] = v20;
        v26 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
        swift_beginAccess();
        v27 = v36;
        (*(v36 + 16))(v13, &v25[v26], v11);
        SmallLockupLayout.Metrics.artworkSize.getter();
        (*(v27 + 8))(v13, v11);
        Artwork.crop.getter();
        Artwork.Crop.preferredContentMode.getter();
        v36 = *(v38 + 1);
        (v36)(v10, v24);
        Artwork.config(_:mode:prefersLayeredImage:)();
        v28 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
        v29 = *&v25[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
        v38 = v25;
        v30 = v29;
        Artwork.style.getter();
        ArtworkView.style.setter();
        [v30 setContentMode:Artwork.contentMode.getter()];
        ArtworkLoaderConfig.size.getter();
        ArtworkView.imageSize.setter();
        if (!Artwork.backgroundColor.getter())
        {
          sub_100005744(0, &qword_100970180, UIColor_ptr);
          static UIColor.placeholderBackground.getter();
        }

        ArtworkView.backgroundColor.setter();

        v31 = *&v25[v28];
        Artwork.crop.getter();
        v32 = Artwork.Crop.preferredContentMode.getter();
        (v36)(v10, v39);
        [v31 setContentMode:v32];

        v33 = *&v25[v28];
        v34 = v38;

        type metadata accessor for ArtworkView();
        sub_10002C110(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
      }
    }
  }

  return result;
}

void sub_10002BF30(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for VideoView(0);
    sub_10002C110(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  v6 = *(v3 + OBJC_IVAR____TtC8AppStore13VideoCardView_lockupView);
  v7 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v8 = *&v6[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
  v9 = v6;
  v10 = v8;
  ArtworkView.isImageHidden.setter();

  v11 = *&v6[v7];
  type metadata accessor for ArtworkView();
  sub_10002C110(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v12 = v11;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_10002C0AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002C110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10002C158()
{
  v0[OBJC_IVAR____TtC8AppStore11ChevronView_shouldAnimate] = 0;
  v0[OBJC_IVAR____TtC8AppStore11ChevronView_isAnimating] = 0;
  v1 = OBJC_IVAR____TtC8AppStore11ChevronView_chevronImageView;
  v2 = sub_10032FEB0(0xD000000000000013, 0x80000001007FAB40, 0);
  v3 = [v2 imageWithRenderingMode:2];

  v4 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  *&v0[v1] = v4;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ChevronView();
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10002C4D8();

  return v5;
}

id sub_10002C274(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC8AppStore11ChevronView_shouldAnimate] = 0;
  v4[OBJC_IVAR____TtC8AppStore11ChevronView_isAnimating] = 0;
  v9 = OBJC_IVAR____TtC8AppStore11ChevronView_chevronImageView;
  v10 = sub_10032FEB0(0xD000000000000013, 0x80000001007FAB40, 0);
  v11 = [v10 imageWithRenderingMode:2];

  v12 = [objc_allocWithZone(UIImageView) initWithImage:v11];
  *&v4[v9] = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ChevronView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  sub_10002C4D8();

  return v13;
}

id sub_10002C3B0(void *a1)
{
  v1[OBJC_IVAR____TtC8AppStore11ChevronView_shouldAnimate] = 0;
  v1[OBJC_IVAR____TtC8AppStore11ChevronView_isAnimating] = 0;
  v3 = OBJC_IVAR____TtC8AppStore11ChevronView_chevronImageView;
  v4 = sub_10032FEB0(0xD000000000000013, 0x80000001007FAB40, 0);
  v5 = [v4 imageWithRenderingMode:2];

  v6 = [objc_allocWithZone(UIImageView) initWithImage:v5];
  *&v1[v3] = v6;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for ChevronView();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_10002C4D8();
  }

  return v8;
}

id sub_10002C4D8()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore11ChevronView_chevronImageView];
  if (qword_10096D6F8 != -1)
  {
    swift_once();
  }

  [v1 setTintColor:qword_1009CF528];
  v2 = [v1 layer];
  v3 = [v0 traitCollection];
  [v3 userInterfaceStyle];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  [v2 setCompositingFilter:v4];

  [v1 setContentMode:1];
  [v1 setAlpha:0.0];
  [v0 addSubview:v1];
  [v1 frame];

  return [v0 setFrame:{0.0, 0.0}];
}

void sub_10002C6BC()
{
  v1 = type metadata accessor for TimingCurve();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &aBlock - v7;
  if (*(v0 + OBJC_IVAR____TtC8AppStore11ChevronView_shouldAnimate) == 1)
  {
    v9 = OBJC_IVAR____TtC8AppStore11ChevronView_isAnimating;
    if ((*(v0 + OBJC_IVAR____TtC8AppStore11ChevronView_isAnimating) & 1) == 0)
    {
      v10 = [v0 window];
      if (v10)
      {

        *(v0 + v9) = 1;
        static TimingCurve.easingCurve1.getter();
        v11 = v0;
        TimingCurve.controlPoint1.getter();
        v13 = v12;
        v15 = v14;
        v16 = *(v2 + 8);
        v16(v8, v1);
        static TimingCurve.easingCurve1.getter();
        TimingCurve.controlPoint2.getter();
        v18 = v17;
        v20 = v19;
        v16(v4, v1);
        v21 = swift_allocObject();
        *(v21 + 16) = v0;
        v22 = objc_allocWithZone(UIViewPropertyAnimator);
        v48 = sub_10002D0E8;
        v49 = v21;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_100007A08;
        v47 = &unk_1008B0FD8;
        v23 = _Block_copy(&aBlock);
        v24 = v11;

        v25 = [v22 initWithDuration:v23 controlPoint1:1.06 controlPoint2:v13 animations:{v15, v18, v20}];
        _Block_release(v23);
        static TimingCurve.easingCurve2.getter();
        TimingCurve.controlPoint1.getter();
        v27 = v26;
        v29 = v28;
        v16(v8, v1);
        static TimingCurve.easingCurve2.getter();
        TimingCurve.controlPoint2.getter();
        v31 = v30;
        v33 = v32;
        v16(v4, v1);
        v34 = swift_allocObject();
        *(v34 + 16) = v24;
        v35 = objc_allocWithZone(UIViewPropertyAnimator);
        v48 = sub_10002D10C;
        v49 = v34;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_100007A08;
        v47 = &unk_1008B1028;
        v36 = _Block_copy(&aBlock);
        v37 = v24;

        v38 = [v35 initWithDuration:v36 controlPoint1:0.66 controlPoint2:v27 animations:{v29, v31, v33}];
        _Block_release(v36);
        v39 = swift_allocObject();
        *(v39 + 16) = v38;
        v48 = sub_10002D130;
        v49 = v39;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_10007FFE8;
        v47 = &unk_1008B1078;
        v40 = _Block_copy(&aBlock);
        v41 = v38;

        [v25 addCompletion:v40];
        _Block_release(v40);
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = sub_10002D140;
        v49 = v42;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_10007FFE8;
        v47 = &unk_1008B10C8;
        v43 = _Block_copy(&aBlock);

        [v41 addCompletion:v43];
        _Block_release(v43);
        [v25 startAnimation];
      }
    }
  }
}

id sub_10002CBB0(uint64_t a1, CGFloat a2, double a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC8AppStore11ChevronView_chevronImageView);
  CGAffineTransformMakeTranslation(&v6, 0.0, a2);
  [v4 setTransform:&v6];
  return [v4 setAlpha:a3];
}

uint64_t sub_10002CC34(uint64_t a1, uint64_t a2)
{
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v24 = *(v5 - 8);
  v25 = v5;
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = *(Strong + OBJC_IVAR____TtC8AppStore11ChevronView_chevronImageView);

    aBlock = 0x3FF0000000000000;
    v28 = 0;
    v29 = 0;
    v30 = 0x3FF0000000000000;
    v31 = 0;
    v32 = 0;
    [v17 setTransform:&aBlock];
  }

  sub_1000076C0();
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v9 + 8);
  v22(v11, v8);
  v31 = sub_10002D148;
  v32 = a2;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100007A08;
  v30 = &unk_1008B10F0;
  v19 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
  sub_1000079A4();
  v20 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v19);

  (*(v26 + 8))(v4, v20);
  (*(v24 + 8))(v7, v25);
  return (v22)(v14, v8);
}

void sub_10002CFFC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC8AppStore11ChevronView_isAnimating] = 0;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_10002C6BC();
  }
}

id sub_10002D080(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ChevronView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10002D150()
{
  result = qword_100976F50;
  if (!qword_100976F50)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976F50);
  }

  return result;
}

uint64_t sub_10002D1A8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for SearchResultsPageLayoutSectionProvider(uint64_t a1)
{
  result = qword_10096FA48;
  if (!qword_10096FA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10002D29C(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, uint64_t a4, void *a5, char *a6, void (*a7)(char *, unint64_t, uint64_t), uint64_t a8, uint64_t a9, void *a10)
{
  v65 = a7;
  v62 = a8;
  v63 = a4;
  v66 = a5;
  v67 = a6;
  v64 = a10;
  v58 = a9;
  v12 = type metadata accessor for ItemLayoutContext();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Shelf.ContentType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v57 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v27 = a2(v24);
  v28 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v29 = *(v21 + 8);
  v55 = v21 + 8;
  v56 = v20;
  v53 = v29;
  v29(v26, v20);
  v59 = v19;
  v60 = v15;
  v30 = *(v15 + 88);
  v61 = v14;
  v31 = v30(v19, v14);
  if (v31 == enum case for Shelf.ContentType.searchResult(_:) && *(v27 + 16) && (v32 = v50, v33 = v51, v34 = v52, (*(v51 + 16))(v50, v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v52), type metadata accessor for AdvertsSearchResult(), sub_10002F0F4(&qword_10096FA98, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult), ItemLayoutContext.typedModel<A>(as:)(), (*(v33 + 8))(v32, v34), (v31 = v68) != 0))
  {

    v35 = sub_10002D900(v28, v27, v63, v66, v67, v65, v62, v58, v64);

    BasePageLayoutSectionProvider.addSupplementariesAndInsets(to:for:shelfLayoutSpacingProvider:shelfSupplementaryProvider:asPartOf:)();
    v36 = v60;
    v37 = v61;
  }

  else
  {
    v52 = &v49;
    __chkstk_darwin(v31);
    __chkstk_darwin(v38);
    type metadata accessor for BasePageLayoutSectionProvider();
    v39 = method lookup function for BasePageLayoutSectionProvider();
    v40 = v58;
    v41 = v28;
    v51 = v27;
    v42 = v62;
    v50 = v39(v28, sub_10002F0EC, &v49 - 4, v63, v66, v67, v65, v62, v58, v64);
    v43 = v54;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v45 = v56;
    v44 = v57;
    ReadOnlyLens.subscript.getter();

    v53(v43, v45);
    v37 = v61;
    v46 = v30(v44, v61);
    if (v46 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = sub_10040C1D8(v41, v51, v63, v66, v67, v65, v42, v40, v64);

      v36 = v60;
    }

    else
    {
      v35 = v50;
      v36 = v60;
      if (v46 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v47 = sub_10040D51C(v41, v51, v63, v66, v67, v65, v62, v40, v64);

        v35 = v47;
      }

      else if (v46 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        [v50 setOrthogonalScrollingBehavior:{2, v66, v67}];
      }

      else
      {

        (*(v36 + 8))(v57, v37);
      }
    }
  }

  (*(v36 + 8))(v59, v37);
  return v35;
}

id sub_10002D900(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, void (*a6)(char *, unint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9)
{
  v159 = a8;
  v149 = a7;
  v164 = a4;
  *&v160 = a3;
  v150 = a1;
  v168 = a9;
  v155 = type metadata accessor for Shelf.ContentType();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v158 = v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v152 = *(v153 - 1);
  __chkstk_darwin(v153);
  v151 = v132 - v13;
  v14 = type metadata accessor for PageGrid();
  v146 = *(v14 - 8);
  __chkstk_darwin(v14);
  v145 = v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  i = type metadata accessor for SearchResultCondensedBehavior();
  v16 = *(i - 1);
  __chkstk_darwin(i);
  v157 = v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v156 = v132 - v19;
  __chkstk_darwin(v20);
  v163 = v132 - v21;
  __chkstk_darwin(v22);
  v162 = v132 - v23;
  v24 = type metadata accessor for ItemLayoutContext();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v32 = v132 - v30;
  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  v142 = *(a2 + 16);
  v141 = v16;
  v33 = *(v25 + 16);
  v34 = a2;
  v143 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v166 = v33;
  v167 = (v25 + 16);
  (v33)(v132 - v30, a2 + v143, v24, v31);
  v35 = type metadata accessor for AdvertsSearchResult();
  sub_10002F0F4(&qword_10096FA98, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  v147 = v35;
  ItemLayoutContext.typedModel<A>(as:)();
  v36 = v172;
  if (!v172)
  {
    v29 = (*(v25 + 8))(v32, v24);
    goto LABEL_6;
  }

  v161 = v24;
  v144 = v32;
  if (AdvertsSearchResult.displaysScreenshots.getter())
  {
    (*(v25 + 8))(v144, v161);

LABEL_6:
    a2 = v34;
LABEL_7:
    v148 = a2;
    i = v132;
    __chkstk_darwin(v29);
    __chkstk_darwin(v37);
    type metadata accessor for BasePageLayoutSectionProvider();
    v38 = method lookup function for BasePageLayoutSectionProvider();
    v39 = v150;
    v40 = v160;
    v41 = v164;
    v42 = v149;
    v163 = a5;
    v166 = a6;
    v167 = v38(v150, sub_10002F13C, &v132[-4], v160, v164, a5, a6, v149, v159, v168);
    v43 = v151;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v44 = v158;
    v45 = v153;
    ReadOnlyLens.subscript.getter();

    (*(v152 + 8))(v43, v45);
    v46 = v154;
    v47 = v155;
    v48 = (*(v154 + 88))(v44, v155);
    if (v48 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v49 = sub_10040C1D8(v39, v148, v40, v41, v163, v166, v42, v159, v168);
    }

    else
    {
      v50 = v167;
      if (v48 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v49 = sub_10040D51C(v150, v148, v160, v164, v163, v166, v149, v159, v168);
      }

      else if (v48 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v49 = v167;
        [v167 setOrthogonalScrollingBehavior:2];
      }

      else
      {
        (*(v46 + 8))(v158, v47);
        return v50;
      }
    }

    return v49;
  }

  v138 = v36;
  v140 = v14;
  v51 = type metadata accessor for SearchResult();
  v164 = sub_10002F0F4(&qword_10096FAA0, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  v165 = v51;
  ItemLayoutContext.typedModel<A>(as:)();
  v139 = v25;
  v158 = v27;
  if (v172)
  {
    if (sub_100484CDC())
    {
      dispatch thunk of static ExactHeightProviding.height(in:asPartOf:)();
      v53 = v52;
    }

    else
    {

      v53 = 0.0;
    }
  }

  else
  {
    v53 = 0.0;
  }

  v55 = objc_opt_self();
  v56 = [v55 fractionalWidthDimension:1.0];
  v135 = v55;
  v57 = [v55 absoluteDimension:v53];
  v134 = objc_opt_self();
  v58 = [v134 sizeWithWidthDimension:v56 heightDimension:v57];

  swift_getObjectType();
  v59 = v58;
  dispatch thunk of ItemSupplementaryProvider.supplementaryItems(for:asPartOf:)();
  sub_100005744(0, &qword_100982860, NSCollectionLayoutSupplementaryItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v61 = [objc_opt_self() itemWithLayoutSize:v59 supplementaryItems:isa];

  v62 = objc_opt_self();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v63 = swift_allocObject();
  v160 = xmmword_1007B0B70;
  *(v63 + 16) = xmmword_1007B0B70;
  *(v63 + 32) = v61;
  v64 = sub_100005744(0, &qword_10098EFE0, NSCollectionLayoutItem_ptr);
  v136 = v61;
  v132[2] = v64;
  v65 = Array._bridgeToObjectiveC()().super.isa;

  v133 = v62;
  v137 = v59;
  v66 = [v62 horizontalGroupWithLayoutSize:v59 subitems:v65];

  v67 = swift_allocObject();
  *(v67 + 16) = v160;
  *(v67 + 32) = v66;
  v175 = v67;
  v68 = v143;
  sub_1005E7C50(v34, v34 + v143, 1, (2 * v142) | 1);
  v70 = v69;
  v71 = *(v69 + 16);
  v142 = v66;
  if (v71)
  {
    v174 = _swiftEmptyArrayStorage;
    sub_100144108(0, v71, 0);
    v132[1] = v70;
    v72 = v70 + v68;
    v154 = v141 + 104;
    v153 = (v141 + 8);
    v73 = v174;
    v74 = (v139 + 8);
    v75 = *(v139 + 72);
    LODWORD(v151) = enum case for SearchResultCondensedBehavior.always(_:);
    v76 = v158;
    v77 = v161;
    v152 = v75;
    do
    {
      v166(v76, v72, v77);
      ItemLayoutContext.typedModel<A>(as:)();
      v78 = v172;
      if (!v172)
      {
        goto LABEL_55;
      }

      v155 = type metadata accessor for EditorialSearchResult();
      if (swift_dynamicCastClass())
      {
        *&v160 = v78;
        v79 = v74;
        SearchResult.condensedBehavior.getter();
        (*v154)(v163, v151, i);
        sub_10002F0F4(&qword_10096FAE8, &type metadata accessor for SearchResultCondensedBehavior, &protocol conformance descriptor for SearchResultCondensedBehavior);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v172 == v170 && v173 == v171)
        {
          v80 = *v153;
          v81 = i;
          (*v153)(v163, i);
          v80(v162, v81);

          v76 = v158;
          v74 = v79;
          v75 = v152;
LABEL_28:
          type metadata accessor for CondensedEditorialSearchResultContentView(0);
          v85 = type metadata accessor for CondensedEditorialSearchResultContentView;
          v86 = &unk_1007BB2E4;
          v87 = &unk_10096FAF8;
          goto LABEL_37;
        }

        v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v83 = *v153;
        v84 = i;
        (*v153)(v163, i);
        v83(v162, v84);

        v76 = v158;
        v75 = v152;
        if (v82)
        {
          goto LABEL_28;
        }
      }

      v88 = type metadata accessor for InAppPurchaseSearchResult();
      if (swift_dynamicCastClass())
      {
        *&v160 = v88;
        SearchResult.condensedBehavior.getter();
        (*v154)(v157, v151, i);
        sub_10002F0F4(&qword_10096FAE8, &type metadata accessor for SearchResultCondensedBehavior, &protocol conformance descriptor for SearchResultCondensedBehavior);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        if (v172 == v170 && v173 == v171)
        {
          v89 = *v153;
          v90 = i;
          (*v153)(v157, i);
          v89(v156, v90);

          v76 = v158;
          v75 = v152;
LABEL_34:
          type metadata accessor for CondensedInAppPurchaseContentView(0);
          v85 = type metadata accessor for CondensedInAppPurchaseContentView;
          v86 = &unk_1007DA6B8;
          v87 = &unk_10096FAF0;
LABEL_37:
          sub_10002F0F4(v87, v85, v86);
          v77 = v161;
          goto LABEL_38;
        }

        LODWORD(v148) = _stringCompareWithSmolCheck(_:_:expecting:)();
        v91 = *v153;
        v92 = i;
        (*v153)(v157, i);
        v91(v156, v92);

        v76 = v158;
        v75 = v152;
        if (v148)
        {
          goto LABEL_34;
        }
      }

      if (swift_dynamicCastClass())
      {
        type metadata accessor for AdvertsSearchResultContentView();
        v85 = type metadata accessor for AdvertsSearchResultContentView;
        v86 = &unk_1007DCB5C;
        v87 = &unk_10096FAE0;
        goto LABEL_37;
      }

      type metadata accessor for BundleSearchResult();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for BundleSearchResultContentView();
        v85 = type metadata accessor for BundleSearchResultContentView;
        v86 = &unk_1007C517C;
        v87 = &unk_10096FAD8;
        goto LABEL_37;
      }

      type metadata accessor for AppSearchResult();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for AppSearchResultContentView();
        v85 = type metadata accessor for AppSearchResultContentView;
        v86 = &unk_1007C7860;
        v87 = &unk_10096FAD0;
        goto LABEL_37;
      }

      if (swift_dynamicCastClass())
      {
        type metadata accessor for EditorialSearchResultContentView();
        v85 = type metadata accessor for EditorialSearchResultContentView;
        v86 = &unk_1007D1190;
        v87 = &unk_10096FAC8;
        goto LABEL_37;
      }

      v95 = swift_dynamicCastClass();
      v77 = v161;
      if (v95)
      {
        type metadata accessor for InAppPurchaseSearchResultContentView(0);
        v96 = type metadata accessor for InAppPurchaseSearchResultContentView;
        v97 = &unk_1007D74C4;
        v98 = &unk_10096FAC0;
      }

      else
      {
        type metadata accessor for LockupCollectionSearchResult();
        if (swift_dynamicCastClass())
        {
          type metadata accessor for LockupCollectionSearchResultContentView();
          v96 = type metadata accessor for LockupCollectionSearchResultContentView;
          v97 = &unk_1007BE980;
          v98 = &unk_10096FAB8;
        }

        else
        {
          type metadata accessor for AppEventSearchResult();
          if (swift_dynamicCastClass())
          {
            type metadata accessor for AppEventSearchResultContentView();
            v96 = type metadata accessor for AppEventSearchResultContentView;
            v97 = &unk_1007CBD24;
            v98 = &unk_10096FAB0;
          }

          else
          {
            type metadata accessor for GuidedSearchResult();
            if (!swift_dynamicCastClass())
            {

LABEL_55:
              (*v74)(v76, v77);
              v94 = 0;
              goto LABEL_56;
            }

            type metadata accessor for GuidedSearchResultContentView();
            v96 = type metadata accessor for GuidedSearchResultContentView;
            v97 = &unk_1007CB814;
            v98 = &unk_10096FAA8;
          }
        }
      }

      sub_10002F0F4(v98, v96, v97);
LABEL_38:
      dispatch thunk of static ExactHeightProviding.height(in:asPartOf:)();
      v94 = v93;

      (*v74)(v76, v77);
LABEL_56:
      v174 = v73;
      v100 = v73[2];
      v99 = v73[3];
      if (v100 >= v99 >> 1)
      {
        sub_100144108((v99 > 1), v100 + 1, 1);
        v73 = v174;
      }

      v73[2] = v100 + 1;
      v73[v100 + 4] = v94;
      v72 += v75;
      --v71;
    }

    while (v71);
  }

  v101 = static ComponentLayoutBuilder.verticalLayoutHorizontalSubgroups(for:withItemHeights:useEstimatedHeights:in:itemSupplementaryProvider:asPartOf:)();

  sub_1003945C4(v101, v102);
  v103 = v175;
  v104 = v175 >> 62;
  if (v175 >> 62)
  {
    goto LABEL_71;
  }

  v105 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0; v105; i = v104)
  {
    v104 = 0;
    v106 = 0.0;
    while (1)
    {
      if ((v103 & 0xC000000000000001) != 0)
      {
        v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v104 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v107 = *(v103 + 8 * v104 + 32);
      }

      v108 = v107;
      v109 = (v104 + 1);
      if (__OFADD__(v104, 1))
      {
        break;
      }

      v110 = [v107 layoutSize];
      v111 = [v110 heightDimension];

      [v111 dimension];
      v113 = v112;

      v106 = v106 + v113;
      ++v104;
      if (v109 == v105)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v105 = _CocoaArrayWrapper.endIndex.getter();
  }

  v106 = 0.0;
LABEL_73:
  v114 = i;
  if (i)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = v140;
  v116 = v146;
  v117 = v145;
  if (!__OFSUB__(result, 1))
  {
    v118 = ((result - 1) & ~((result - 1) >> 63));
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.interRowSpace.getter();
    v120 = v119;
    v121 = *(v116 + 8);
    v121(v117, v115);
    v122 = v135;
    v123 = [v135 fractionalWidthDimension:1.0];
    v124 = [v122 absoluteDimension:v106 + v120 * v118];
    v125 = [v134 sizeWithWidthDimension:v123 heightDimension:v124];

    if (v114)
    {
      _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    v126 = Array._bridgeToObjectiveC()().super.isa;

    v127 = [v133 verticalGroupWithLayoutSize:v125 subitems:v126];

    v128 = objc_opt_self();
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.interRowSpace.getter();
    v130 = v129;
    v121(v117, v140);
    v131 = [v128 fixedSpacing:v130];
    [v127 setInterItemSpacing:v131];

    v49 = [objc_opt_self() sectionWithGroup:v127];

    (*(v139 + 8))(v144, v161);
    return v49;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F020(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  sub_10002C0AC(a1, v7);
  sub_10002C0AC(v7, &v6);
  v4 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(a1);
  sub_100007000(v7);
  return v4;
}

uint64_t sub_10002F0AC()
{
  BasePageLayoutSectionProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_10002F0F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for BackgroundConfigurationProvidingPageContext(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BackgroundConfigurationProvidingPageContext(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10002F2A4()
{
  result = qword_10096FB00;
  if (!qword_10096FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096FB00);
  }

  return result;
}

Swift::Int sub_10002F2F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10002F340(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10002F384@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = sub_10002849C(&qword_10096FB08, &qword_1007B0EF8);
  __chkstk_darwin(v5 - 8);
  v49 = &v40[-v6];
  v7 = sub_10002849C(&qword_10096FB10, &unk_1007B0F00);
  __chkstk_darwin(v7 - 8);
  v9 = &v40[-v8];
  v10 = type metadata accessor for PageGrid();
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v13 - 8);
  v15 = &v40[-v14];
  v16 = type metadata accessor for ItemBackground();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v40[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v40[-v21];
  sub_10002849C(&qword_10096FB18, &unk_1007B0F10);
  v45 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v51)
  {
    sub_10002B894(v50, &unk_10096FB20, &qword_1007B3850);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_9;
  }

  v44 = v9;
  sub_10002A400(v50, v51);
  dispatch thunk of ItemBackgroundProviding.itemBackground.getter();
  sub_100007000(v50);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_9:
    sub_10002B894(v15, &unk_1009804F0, &unk_1007B3800);
    v31 = type metadata accessor for UIBackgroundConfiguration();
    return (*(*(v31 - 8) + 56))(a3, 1, 1, v31);
  }

  v43 = a3;
  (*(v17 + 32))(v22, v15, v16);
  v23 = *(v17 + 16);
  v23(v19, v22, v16);
  v24 = *(v17 + 88);
  v25 = v24(v19, v16);
  if (v25 == enum case for ItemBackground.ad(_:) || (v26 = v25, v25 == enum case for ItemBackground.insetAd(_:)) || v25 == enum case for ItemBackground.clearAdWithSeparator(_:))
  {
    v41 = enum case for ItemBackground.insetAd(_:);
    v42 = v24;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v32 = v49;
    v23(v49, v22, v16);
    v33 = v48;
    if (v48 == 2)
    {
      v34 = v44;
      sub_10075B978(v12, v22, v44);
      (*(v46 + 8))(v12, v47);
      v35 = *(v17 + 8);
      v35(v22, v16);
      v35(v32, v16);
    }

    else
    {
      v36 = v42(v32, v16);
      v34 = v44;
      if (v36 == v41)
      {
        sub_10075BD0C(v33);
        (*(v46 + 8))(v12, v47);
        (*(v17 + 8))(v22, v16);
        v37 = type metadata accessor for UIBackgroundConfiguration();
        (*(*(v37 - 8) + 56))(v34, 0, 1, v37);
      }

      else
      {
        (*(v46 + 8))(v12, v47);
        v38 = *(v17 + 8);
        v38(v22, v16);
        v39 = type metadata accessor for UIBackgroundConfiguration();
        (*(*(v39 - 8) + 56))(v34, 1, 1, v39);
        v38(v32, v16);
      }
    }

    return sub_10002F9F4(v34, v43);
  }

  else
  {
    v27 = enum case for ItemBackground.condensedSearch(_:);
    v28 = *(v17 + 8);
    v28(v22, v16);
    v29 = type metadata accessor for UIBackgroundConfiguration();
    result = (*(*(v29 - 8) + 56))(v43, 1, 1, v29);
    if (v26 != v27)
    {
      return (v28)(v19, v16);
    }
  }

  return result;
}

uint64_t sub_10002F9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FB10, &unk_1007B0F00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_10096CE58 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics();

  return sub_1000056A8(v0, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
}

char *sub_10002FACC(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  if (qword_10096CE58 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v13, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v62 = *(v14 + 16);
  v62(&v6[v16], v17, v13);
  v18 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  v19 = enum case for MetadataRibbonSecondaryViewPlacement.leading(_:);
  v20 = type metadata accessor for MetadataRibbonSecondaryViewPlacement();
  (*(*(v20 - 8) + 104))(&v7[v18], v19, v20);
  v21 = &v7[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_id];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 4) = 0;
  v22 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  v23 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v23 - 8) + 56))(&v7[v22], 1, 1, v23);
  v24 = &v7[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth];
  *v24 = 0;
  v24[8] = 1;
  v25 = &v7[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold];
  *v25 = 0;
  v25[8] = 1;
  v7[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation] = 2;
  type metadata accessor for DynamicTypeLabel();
  *&v7[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  *&v7[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  v67.receiver = v7;
  v67.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel;
  v32 = *&v30[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  sub_100028BB8();
  v33 = v32;
  v34 = static UIColor.secondaryText.getter();
  [v33 setTextColor:v34];

  v35 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel;
  v36 = *&v30[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  v37 = static UIColor.secondaryText.getter();
  [v36 setTextColor:v37];

  v38 = *&v30[v31];
  v59 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  v39 = v63;
  v61 = v14 + 16;
  v62(v63, &v30[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_metrics], v13);
  v40 = v38;
  v41 = MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.maximumNumberofLinesForDescriptionLabel.getter();
  v42 = *(v14 + 8);
  v57 = v14 + 8;
  v58 = v42;
  v42(v39, v13);
  [v40 setNumberOfLines:v41];

  v60 = v31;
  v43 = *&v30[v31];
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for MetadataRibbonTextStyle();
  v45 = sub_1000056A8(v44, qword_1009D36F8);
  v65 = v44;
  v46 = sub_100032098();
  v66 = v46;
  v47 = sub_1000056E0(v64);
  v48 = *(*(v44 - 8) + 16);
  v48(v47, v45, v44);
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

  v49 = *&v30[v35];
  v50 = v63;
  v62(v63, &v30[v59], v13);
  v51 = v49;
  v52 = MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.maximumNumberOfLinesForBorderedLabel.getter();
  v58(v50, v13);
  [v51 setNumberOfLines:v52];

  v53 = *&v30[v35];
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE68 != -1)
  {
    swift_once();
  }

  v54 = sub_1000056A8(v44, qword_1009D3740);
  v65 = v44;
  v66 = v46;
  v55 = sub_1000056E0(v64);
  v48(v55, v54, v44);
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

  [*&v30[v35] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [v30 addSubview:*&v30[v35]];
  [v30 addSubview:*&v30[v60]];

  return v30;
}

uint64_t sub_1000300D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for LayoutRect();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout();
  v11 = *(v21 - 8);
  *&v12 = __chkstk_darwin(v21).n128_u64[0];
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v2;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = *&v2[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  v28 = type metadata accessor for DynamicTypeLabel();
  v29 = &protocol witness table for UILabel;
  v26 = &protocol witness table for UILabel;
  v27 = v15;
  v16 = *&v2[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  v25 = v28;
  v24 = v16;
  (*(v8 + 16))(v10, &v2[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_metrics], v7);
  v17 = v15;
  v18 = v16;
  MetadataRibbonBorderedLabelWithDescriptionViewLayout.init(borderedTextView:descriptionLabelTextView:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  MetadataRibbonBorderedLabelWithDescriptionViewLayout.placeChildren(relativeTo:in:)();
  (*(v22 + 8))(v6, v23);
  return (*(v11 + 8))(v14, v21);
}

double sub_1000303A8(uint64_t a1, double a2, double a3)
{
  v4 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel);
  v20 = type metadata accessor for DynamicTypeLabel();
  v21 = &protocol witness table for UILabel;
  v19[4] = &protocol witness table for UILabel;
  v19[5] = v12;
  v13 = *(v3 + OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel);
  v19[3] = v20;
  v19[0] = v13;
  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_metrics, v4);
  v14 = v12;
  v15 = v13;
  MetadataRibbonBorderedLabelWithDescriptionViewLayout.init(borderedTextView:descriptionLabelTextView:metrics:)();
  MetadataRibbonBorderedLabelWithDescriptionViewLayout.measurements(fitting:in:)();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  return v17;
}

id sub_100030644(uint64_t a1, uint64_t a2, uint64_t a3, NSString a4, uint64_t a5)
{
  v9 = type metadata accessor for MetadataRibbonSecondaryViewPlacement();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v5[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_descriptionLabel];
  if (a4)
  {
    a4 = String._bridgeToObjectiveC()();
  }

  [v14 setText:{a4, v11}];

  (*(v10 + 16))(v13, a5, v9);
  v15 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  swift_beginAccess();
  (*(v10 + 24))(&v5[v15], v13, v9);
  swift_endAccess();
  [v5 setNeedsLayout];
  (*(v10 + 8))(v13, v9);
  v16 = *&v5[OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_borderedLabel];
  if (a2)
  {
    v17 = String.encapsulated(color:scale:shape:style:platterSize:lineWeight:minimumWidth:)();
  }

  else
  {
    v17 = 0;
  }

  [v16 setAttributedText:v17];

  return [v5 setNeedsLayout];
}

uint64_t sub_100030988()
{
  v0 = type metadata accessor for MetadataRibbonSecondaryViewPlacement();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MetadataRibbonItem.borderedText.getter();
  v6 = v5;
  v7 = MetadataRibbonItem.labelText.getter();
  v9 = v8;
  MetadataRibbonItem.borderTextViewPlacement.getter();
  sub_100030644(v4, v6, v7, v9, v3);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100030AAC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return MetadataRibbonItemView.layoutContext.getter();
}

uint64_t sub_100030AF8(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return MetadataRibbonItemView.searchLayoutContext.getter();
}

uint64_t sub_100030B54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98, &unk_1007B10B0);
}

uint64_t sub_100030BBC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98, &unk_1007B10B0);
  return swift_endAccess();
}

uint64_t sub_100030C98(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100030D68(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3 + *a3;
  swift_beginAccess();
  return *v4;
}

uint64_t sub_100030DB0(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_100030E70(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return MetadataRibbonItemView.labelText.getter();
}

uint64_t sub_100030EAC()
{
  v1 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_100030EF0(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100030FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90, &qword_1007B2A50);
}

uint64_t sub_100031008(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90, &qword_1007B2A50);
  return swift_endAccess();
}

uint64_t sub_1000310D8()
{
  v0 = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-1] - v2;
  v4 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics();
  sub_100005644(v4, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  sub_1000056A8(v4, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional.init(_:)();
  v8[3] = v0;
  v8[4] = sub_1000320F0();
  v5 = sub_1000056E0(v8);
  (*(v1 + 16))(v5, v3, v0);
  MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.init(borderTextToLabelPadding:maximumNumberofLinesForDescriptionLabel:maximumNumberOfLinesForBorderedLabel:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_100031254(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {

    v5 = 6.0;
    goto LABEL_12;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v8 != v9)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

LABEL_10:
  v12 = static UIContentSizeCategory.<= infix(_:_:)();

  v5 = 2.0;
  if (v12)
  {
    v5 = 4.0;
  }

LABEL_12:
  *a2 = v5;
}

uint64_t static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096CE58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics();
  v3 = sub_1000056A8(v2, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(uint64_t a1)
{
  result = qword_10096FB78;
  if (!qword_10096FB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031470(uint64_t a1)
{
  type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MetadataRibbonSecondaryViewPlacement();
    if (v2 <= 0x3F)
    {
      sub_1000315A0(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000315A0(uint64_t a1)
{
  if (!qword_10096FB88)
  {
    type metadata accessor for MetadataRibbonItemType();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10096FB88);
    }
  }
}

uint64_t sub_1000315F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10002849C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_100031660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10002849C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1000316C8()
{
  v1 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_metrics;
  if (qword_10096CE58 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics();
  v3 = sub_1000056A8(v2, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_borderLabelViewPlacement;
  v5 = enum case for MetadataRibbonSecondaryViewPlacement.leading(_:);
  v6 = type metadata accessor for MetadataRibbonSecondaryViewPlacement();
  (*(*(v6 - 8) + 104))(v0 + v4, v5, v6);
  v7 = v0 + OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_id;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_itemType;
  v9 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = v0 + OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_labelMaxWidth;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_truncationLegibilityThreshold;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore46MetadataRibbonBorderedLabelWithDescriptionView_allowsTruncation) = 2;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_100031898(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v64 = a2;
  v57 = a1;
  v66 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for LabelPlaceholder();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DynamicTextAppearance();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  __chkstk_darwin(v16);
  v69 = &v51 - v17;
  v18 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v55 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v51 - v22;
  if (qword_10096CE58 != -1)
  {
    swift_once();
  }

  v67 = v9;
  v24 = sub_1000056A8(v18, static MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.standard);
  v60 = v19;
  v25 = *(v19 + 16);
  v62 = v18;
  v54 = v19 + 16;
  v53 = v25;
  v25(v23, v24, v18);
  DynamicTextAppearance.init()();
  static CustomTextStyle<>.metadataRibbon.getter();
  v68 = v23;
  if (qword_10096EE68 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for MetadataRibbonTextStyle();
  v27 = sub_1000056A8(v26, qword_1009D3740);
  v74 = v26;
  v28 = sub_100032098();
  v75 = v28;
  v29 = sub_1000056E0(&v73);
  v30 = *(*(v26 - 8) + 16);
  v30(v29, v27, v26);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v56 = v7;
  v31 = *(v7 + 8);
  v31(v12, v6);
  sub_100007000(&v73);
  MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.maximumNumberOfLinesForBorderedLabel.getter();
  DynamicTextAppearance.withNumberOfLines(_:)();
  v31(v15, v6);
  DynamicTextAppearance.init()();
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE50 != -1)
  {
    swift_once();
  }

  v32 = sub_1000056A8(v26, qword_1009D36F8);
  v74 = v26;
  v75 = v28;
  v33 = sub_1000056E0(&v73);
  v30(v33, v32, v26);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v31(v12, v6);
  sub_100007000(&v73);
  MetadataRibbonBorderedLabelWithDescriptionViewLayout.Metrics.maximumNumberofLinesForDescriptionLabel.getter();
  v34 = v67;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v31(v15, v6);
  MetadataRibbonItem.borderedText.getter();
  v52 = v31;
  if (v35)
  {
    v36 = String.encapsulated(color:scale:shape:style:platterSize:lineWeight:minimumWidth:)();
  }

  else
  {
    v36 = 0;
  }

  MetadataRibbonItem.labelText.getter();
  v37 = *(v56 + 16);
  v37(v15, v34, v6);
  LabelPlaceholder.Options.init(rawValue:)();
  v38 = v58;
  LabelPlaceholder.init(_:with:where:)();
  v39 = v38;
  LabelPlaceholder.layoutTextView.getter();
  v40 = v6;
  v41 = *(v59 + 8);
  v42 = v61;
  v41(v39, v61);
  v37(v15, v69, v40);
  v43 = v36;
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  v41(v39, v42);
  sub_10002C0AC(v72, v71);
  sub_10002C0AC(&v73, v70);
  v44 = v68;
  v45 = v62;
  v53(v55, v68, v62);
  v46 = v63;
  MetadataRibbonBorderedLabelWithDescriptionViewLayout.init(borderedTextView:descriptionLabelTextView:metrics:)();
  MetadataRibbonBorderedLabelWithDescriptionViewLayout.measurements(fitting:in:)();
  v48 = v47;

  (*(v65 + 8))(v46, v66);
  sub_100007000(v72);
  sub_100007000(&v73);
  v49 = v52;
  v52(v67, v40);
  v49(v69, v40);
  (*(v60 + 8))(v44, v45);
  return v48;
}

unint64_t sub_100032098()
{
  result = qword_10096FBA0;
  if (!qword_10096FBA0)
  {
    type metadata accessor for MetadataRibbonTextStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096FBA0);
  }

  return result;
}

unint64_t sub_1000320F0()
{
  result = qword_10096FC20;
  if (!qword_10096FC20)
  {
    sub_10002D1A8(&unk_10096FC10, &unk_1007B10C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096FC20);
  }

  return result;
}

uint64_t LargeGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 16));

  return sub_100005A38(a1, v1 + 16);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 56));

  return sub_100005A38(a1, v1 + 56);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.labelBottomSpace.setter(__int128 *a1)
{
  sub_100007000((v1 + 96));

  return sub_100005A38(a1, v1 + 96);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.labelMargin.setter(__int128 *a1)
{
  sub_100007000((v1 + 136));

  return sub_100005A38(a1, v1 + 136);
}

double static LargeGameCenterPlayerLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, void *a2, double a3, double a4)
{
  swift_getObjectType();

  return sub_10003569C(a1, a2, a3, a4);
}

double LargeGameCenterPlayerLayout.measurements(fitting:in:)(void *a1, uint64_t a2, double a3, double a4)
{
  swift_getObjectType();

  return sub_10003569C(v4, a1, a3, a4);
}

uint64_t LargeGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v83 = a1;
  v84 = a2;
  v82 = type metadata accessor for FloatingPointRoundingRule();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for VerticalFlowLayout();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for LayoutRect();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for VerticalFlowLayout.Child();
  v15 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v73 = *(v17 - 8);
  v92 = v73;
  __chkstk_darwin(v17);
  v89 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v93 = *(v90 - 8);
  __chkstk_darwin(v90);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v21;
  sub_10002A400(v6 + 23, v6[26]);
  v101.origin.x = a3;
  v101.origin.y = a4;
  v101.size.width = a5;
  v101.size.height = a6;
  CGRectGetMinX(v101);
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetMinY(v102);
  dispatch thunk of LayoutView.frame.setter();
  sub_10002849C(&qword_10096FC30, &unk_1007B10E0);
  v22 = *(v15 + 72);
  v69 = v15;
  v23 = v92;
  v24 = v17;
  v85 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v67 = v22;
  v72 = swift_allocObject();
  v71 = xmmword_1007B10D0;
  *(v72 + 1) = xmmword_1007B10D0;
  v25 = v6[31];
  v26 = v7[32];
  v27 = sub_10002A400(v7 + 28, v7[31]);
  v99 = v25;
  v100 = *(v26 + 8);
  v28 = sub_1000056E0(&v98);
  (*(*(v25 - 8) + 16))(v28, v27, v25);
  v96 = &type metadata for Double;
  v97 = &protocol witness table for Double;
  v95 = 0;
  v29 = *(v93 + 104);
  v65 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v66 = v93 + 104;
  v64 = v29;
  v29(v21);
  v30 = v91;
  v31 = *(v91 + 104);
  v32 = v87;
  v62 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v33 = v88;
  v63 = v91 + 104;
  v61 = v31;
  v31(v87);
  sub_10002849C(&unk_10098D820, &unk_1007D7290);
  v34 = swift_allocObject();
  *(v34 + 16) = v71;
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v94 = v34;
  sub_100036834(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  sub_10002849C(&unk_10098D830, &unk_1007B10F0);
  sub_1000364CC();
  v35 = v89;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36 = v86;
  v37 = v32;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v38 = *(v23 + 8);
  v73 = v24;
  v92 = v23 + 8;
  v38(v35, v24);
  v39 = *(v30 + 8);
  v91 = v30 + 8;
  v39(v37, v33);
  v40 = v90;
  v41 = *(v93 + 8);
  v93 += 8;
  v41(v36, v90);
  sub_100036530(&v95);
  sub_100007000(&v98);
  LODWORD(v23) = *(v7 + 176);
  sub_10002A400(v7 + 33, v7[36]);
  if (v23 == 1)
  {
    dispatch thunk of LayoutView.isHidden.setter();
    v42 = v7[36];
    v43 = v7[37];
    v44 = sub_10002A400(v7 + 33, v42);
    v99 = v42;
    v100 = *(v43 + 8);
    v45 = sub_1000056E0(&v98);
    (*(*(v42 - 8) + 16))(v45, v44, v42);
    v97 = &protocol witness table for Double;
    v96 = &type metadata for Double;
    v95 = 0;
    v46 = v38;
    v47 = v86;
    v64(v86, v65, v40);
    v48 = v87;
    v49 = v88;
    v61(v87, v62, v88);
    v50 = v89;
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v51 = v68;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v46(v50, v73);
    v39(v48, v49);
    v41(v47, v40);
    sub_100036530(&v95);
    sub_100007000(&v98);
    v52 = v72;
    v54 = v72[2];
    v53 = v72[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_100034DC0((v53 > 1), v54 + 1, 1, v72, &qword_10096FC30, &unk_1007B10E0, &type metadata accessor for VerticalFlowLayout.Child);
    }

    *(v52 + 2) = v54 + 1;
    (*(v69 + 32))(&v52[v85 + v54 * v67], v51, v70);
  }

  else
  {
    dispatch thunk of LayoutView.isHidden.setter();
    sub_10002A400(v7 + 33, v7[36]);
    dispatch thunk of LayoutView.frame.setter();
  }

  v55 = v77;
  VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v103.origin.x = a3;
  v103.origin.y = a4;
  v103.size.width = a5;
  v103.size.height = a6;
  CGRectGetMinX(v103);
  sub_10002A400(v7 + 17, v7[20]);
  v56 = v80;
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v57 = *(v81 + 8);
  v58 = v82;
  v57(v56, v82);
  sub_10002A400(v7 + 23, v7[26]);
  dispatch thunk of LayoutView.frame.getter();
  CGRectGetMaxY(v104);
  v105.origin.x = a3;
  v105.origin.y = a4;
  v105.size.width = a5;
  v105.size.height = a6;
  CGRectGetWidth(v105);
  sub_10002A400(v7 + 17, v7[20]);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v57(v56, v58);
  v106.origin.x = a3;
  v106.origin.y = a4;
  v106.size.width = a5;
  v106.size.height = a6;
  CGRectGetHeight(v106);
  sub_10002A400(v7 + 23, v7[26]);
  dispatch thunk of LayoutView.frame.getter();
  CGRectGetMaxY(v107);
  v59 = v74;
  VerticalFlowLayout.placeChildren(relativeTo:in:)();
  (*(v78 + 8))(v55, v79);
  (*(v75 + 8))(v59, v76);
  v108.origin.x = a3;
  v108.origin.y = a4;
  v108.size.width = a5;
  v108.size.height = a6;
  CGRectGetMinX(v108);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v109.size.width = a5;
  v109.size.height = a6;
  CGRectGetMinY(v109);
  v110.origin.x = a3;
  v110.origin.y = a4;
  v110.size.width = a5;
  v110.size.height = a6;
  CGRectGetWidth(v110);
  sub_10002A400(v7 + 28, v7[31]);
  dispatch thunk of LayoutView.frame.getter();
  CGRectGetMaxY(v111);
  sub_10002A400(v7 + 33, v7[36]);
  dispatch thunk of LayoutView.frame.getter();
  CGRectGetMaxY(v112);
  sub_10002A400(v7 + 12, v7[15]);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v57(v56, v58);
  return LayoutRect.init(representing:)();
}

void *sub_100033284(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_10096FE30, &unk_1007B14C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(&unk_100972E70, &unk_1007B4140);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10003341C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FE20, &qword_1007B14A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_10003356C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&unk_1009856C0, qword_1007C9C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100033670(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_10096FDE8, &qword_1007B1460);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(&qword_10096FDF0, &qword_1007B1468);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000337F0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_10096FD28, &qword_1007B1390);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(&qword_10096FD30, &qword_1007B1398);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100033938(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FCE0, &unk_1007B1340);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100033A90(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FD18, &qword_1007B1380);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_100033BDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FC68, &unk_1007D8FD0);
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

char *sub_100033D18(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FCC0, &qword_1007B1308);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100033E38(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FC50, &unk_1007B1280);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_100033F44(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FC90, &qword_1007B12D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1000340DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FD58, &unk_1007B13C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034244(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_10096FD38, &unk_1007B13A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(&qword_10096FD40, qword_1007CFFF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000343B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_100980550, &qword_1007B1290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1000344E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&unk_100973100, &unk_1007B1480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(&unk_100984350, &unk_1007B47A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100034618(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_10096FD20, &qword_1007B1388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034774(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10002849C(&qword_10096FCB0, &qword_1007B12F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(&qword_10096FCB8, &qword_1007B1300);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034978(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10002849C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100034AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10002849C(&qword_1009701B0, qword_1007B1800);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100034C50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10002849C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100034DC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10002849C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_100034FC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10002849C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10002849C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_100035118(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10002849C(a5, a6);
  v16 = *(sub_10002849C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10002849C(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_100035314(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_10002849C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_100035410(uint64_t a1, uint64_t a2)
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

  sub_10002849C(&qword_10096FC50, &unk_1007B1280);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_100035494(uint64_t a1, uint64_t a2)
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

  sub_10002849C(&qword_10096FCE8, qword_1007BCF50);
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100035590(uint64_t a1, uint64_t a2)
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

  sub_10002849C(&qword_100980550, &qword_1007B1290);
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
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_100035614(uint64_t a1, uint64_t a2)
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

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
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

double sub_10003569C(uint64_t a1, void *a2, double a3, double a4)
{
  v119 = type metadata accessor for FloatingPointRoundingRule();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v116 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for VerticalFlowLayout();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v114 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for VerticalFlowLayout.Child();
  v9 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v11 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v126 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v14 = *(v111 - 8);
  __chkstk_darwin(v111);
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LabelPlaceholderCompatibility();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = a1;
  v21 = sub_1000367E8();
  if (qword_10096E060 != -1)
  {
    swift_once();
  }

  v99 = type metadata accessor for FontUseCase();
  sub_1000056A8(v99, qword_1009D10A0);
  v123 = a2;
  v22 = [a2 traitCollection];
  v101 = v21;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v23 = type metadata accessor for Feature();
  v136 = v23;
  v98 = sub_100036834(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v137 = v98;
  v24 = sub_1000056E0(&v135);
  v25 = *(v23 - 8);
  v26 = *(v25 + 104);
  v97 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v100 = v23;
  v96 = v26;
  v95 = v25 + 104;
  v26(v24);
  isFeatureEnabled(_:)();
  sub_100007000(&v135);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v27 = *(v18 + 8);
  v103 = v20;
  v105 = v17;
  v104 = v18 + 8;
  v94 = v27;
  v27(v20, v17);
  sub_10002849C(&qword_10096FC30, &unk_1007B10E0);
  v28 = *(v9 + 72);
  v108 = v9;
  v121 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v102 = v28;
  v124 = swift_allocObject();
  v120 = xmmword_1007B10D0;
  *(v124 + 1) = xmmword_1007B10D0;
  v29 = v136;
  v30 = v137;
  v31 = sub_10002A400(&v135, v136);
  v133 = v29;
  v134 = *(v30 + 8);
  v32 = sub_1000056E0(&v132);
  (*(*(v29 - 8) + 16))(v32, v31, v29);
  v130 = &type metadata for Double;
  v131 = &protocol witness table for Double;
  v129 = 0;
  v33 = *(v14 + 104);
  v34 = v16;
  v92 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v35 = v111;
  v93 = v14 + 104;
  v91 = v33;
  v33(v16);
  v36 = v126;
  v37 = *(v126 + 104);
  v38 = v112;
  v89 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v39 = v113;
  v90 = v126 + 104;
  v88 = v37;
  v37(v112);
  v40 = sub_10002849C(&unk_10098D820, &unk_1007D7290);
  v41 = *(v11 + 72);
  v42 = v11;
  v43 = *(v11 + 80);
  v44 = (v43 + 32) & ~v43;
  v85 = v43;
  v86 = v40;
  v84 = v44 + v41;
  v45 = swift_allocObject();
  *(v45 + 16) = v120;
  v87 = v44;
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  v128[0] = v45;
  v46 = sub_100036834(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v47 = sub_10002849C(&unk_10098D830, &unk_1007B10F0);
  v48 = sub_1000364CC();
  v49 = v110;
  v82 = v47;
  v81 = v48;
  v50 = v122;
  v83 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51 = v125;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v52 = *(v42 + 8);
  v106 = v42 + 8;
  v80 = v52;
  v52(v49, v50);
  v53 = *(v36 + 8);
  v126 = v36 + 8;
  v53(v38, v39);
  v79 = *(v14 + 8);
  v79(v34, v35);
  sub_100036530(&v129);
  sub_100007000(&v132);
  if (*(v51 + 176) == 1)
  {
    v54 = v39;
    v55 = v53;
    v56 = v34;
    if (qword_10096E068 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v99, qword_1009D10B8);
    v57 = [v123 traitCollection];
    static UIFont.preferredFont(forUseWith:compatibleWith:)();

    v58 = v100;
    v133 = v100;
    v134 = v98;
    v59 = sub_1000056E0(&v132);
    v96(v59, v97, v58);
    isFeatureEnabled(_:)();
    sub_100007000(&v132);
    v60 = v103;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v94(v60, v105);
    v61 = v133;
    v62 = v134;
    v63 = sub_10002A400(&v132, v133);
    v130 = v61;
    v131 = *(v62 + 8);
    v64 = sub_1000056E0(&v129);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    v128[4] = &protocol witness table for Double;
    v128[3] = &type metadata for Double;
    v128[0] = 0;
    v91(v56, v92, v35);
    v88(v38, v89, v54);
    v65 = swift_allocObject();
    *(v65 + 16) = v120;
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    v127 = v65;
    v66 = v49;
    v67 = v122;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v68 = v125;
    v69 = v35;
    v70 = v107;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v80(v66, v67);
    v55(v38, v54);
    v79(v56, v69);
    sub_100036530(v128);
    sub_100007000(&v129);
    v71 = v124;
    v73 = v124[2];
    v72 = v124[3];
    if (v73 >= v72 >> 1)
    {
      v71 = sub_100034DC0((v72 > 1), v73 + 1, 1, v124, &qword_10096FC30, &unk_1007B10E0, &type metadata accessor for VerticalFlowLayout.Child);
    }

    *(v71 + 2) = v73 + 1;
    (*(v108 + 32))(&v71[v121 + v73 * v102], v70, v109);
    sub_100007000(&v132);
  }

  else
  {
    v68 = v125;
  }

  v74 = v114;
  VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v75 = v117;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400((v68 + 96), *(v68 + 120));
  v76 = v116;
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  (*(v118 + 8))(v76, v119);
  (*(v115 + 8))(v74, v75);
  sub_100007000(&v135);
  return a3;
}

unint64_t sub_1000364CC()
{
  result = qword_10096FC40;
  if (!qword_10096FC40)
  {
    sub_10002D1A8(&unk_10098D830, &unk_1007B10F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096FC40);
  }

  return result;
}

uint64_t sub_100036530(uint64_t a1)
{
  v2 = sub_10002849C(&qword_1009799E0, qword_1007B5950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10003659C()
{
  result = qword_10096FC48;
  if (!qword_10096FC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096FC48);
  }

  return result;
}

uint64_t sub_1000365F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100036640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000366E0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10003671C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100036764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000367E8()
{
  result = qword_1009730E0;
  if (!qword_1009730E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009730E0);
  }

  return result;
}

uint64_t sub_100036834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1000368AC(char *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_10002849C(&qword_10096FEE8, &qword_1007B15C8);
  sub_100036A58();
  StateLens<A>.currentValue.getter();
  if (v14)
  {
    v12 = 1;
  }

  else
  {
    v12 = Annotation.shouldAlwaysPresentExpanded.getter();
  }

  swift_getObjectType();
  return sub_1000B28DC(a1, v12 & 1, a8, a2, a3);
}

uint64_t sub_100036974(uint64_t a1, uint64_t a2)
{
  if (!sub_1000AE724(a1, a2))
  {
    return 2;
  }

  sub_10002849C(&unk_100992FA0, &qword_1007B15C0);
  sub_100036A58();
  WritableStateLens<A>.updateValue(_:)();
  return 3;
}

unint64_t sub_100036A58()
{
  result = qword_10096FE88;
  if (!qword_10096FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096FE88);
  }

  return result;
}

unint64_t sub_100036AB0()
{
  result = qword_10096FED8;
  if (!qword_10096FED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096FED8);
  }

  return result;
}

unint64_t sub_100036B08()
{
  result = qword_10096FEE0;
  if (!qword_10096FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10096FEE0);
  }

  return result;
}

void sub_100036B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  *&v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems] = Annotation.items.getter();

  v11 = Annotation.title.getter();
  v12 = &v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText];
  *v12 = v11;
  v12[1] = v13;

  v14 = *&v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];

  v15 = String._bridgeToObjectiveC()();

  [v14 setText:v15];

  [v4 setNeedsLayout];
  v16 = Annotation.summary.getter();
  v17 = &v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary];
  *v17 = v16;
  v17[1] = v18;

  sub_1000B19A4(v19);
  v20 = Annotation.linkAction.getter();
  if (v20)
  {
    v41 = v20;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_100037234(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v21 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  }

  else
  {
    v22 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  }

  v23 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_10003715C(v10, &v4[v23]);
  swift_endAccess();
  sub_1000B1B2C();
  sub_1000371CC(v10);
  sub_10002849C(&unk_100992FA0, &qword_1007B15C0);
  sub_100036A58();
  WritableStateLens<A>.currentValue.getter();
  if (v41)
  {
    v24 = 1;
  }

  else
  {
    v24 = Annotation.shouldAlwaysPresentExpanded.getter();
  }

  sub_1000B351C();
  v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] = v24 & 1;
  sub_1000B16F8();
  v25 = Annotation.linkAction.getter();
  if (v25)
  {
    v41 = v25;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_100037234(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_10002849C(&unk_10097B3D0, "α\b");
  (*(*(v27 - 8) + 56))(v7, v26, 1, v27);
  swift_beginAccess();
  sub_10003715C(v7, &v4[v23]);
  swift_endAccess();
  sub_1000B1B2C();
  sub_1000371CC(v7);
  v28 = [v4 traitCollection];
  v29 = UITraitCollection.isRegularPad.getter();

  v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isSeparatorDisplayed] = (v29 & 1) == 0;
  if (v29)
  {
    v30 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView;
    swift_beginAccess();
    v31 = *&v4[v30];
    if (v31)
    {
      [v31 removeFromSuperview];
      v32 = *&v4[v30];
    }

    else
    {
      v32 = 0;
    }

    *&v4[v30] = 0;

    [v4 setNeedsLayout];
  }

  else
  {
    v33 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v34 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView;
    swift_beginAccess();
    v35 = *&v4[v34];
    if (v35)
    {
      [v35 removeFromSuperview];
      v36 = *&v4[v34];
    }

    else
    {
      v36 = 0;
    }

    *&v4[v34] = v33;
    v37 = v33;

    if (v37)
    {
      sub_100028BB8();
      v38 = static UIColor.defaultLine.getter();
      [v37 setBackgroundColor:v38];

      v39 = [v4 contentView];
      [v39 addSubview:v37];
    }

    [v4 setNeedsLayout];
  }
}

uint64_t sub_10003715C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000371CC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100037234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s5StateVwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5StateVwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000373DC()
{
  sub_10001F63C(*(v0 + 32), *(v0 + 40));
  sub_10001F63C(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_100037424()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v1 = sub_100037484(1);
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_100037484(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B15F0;
  sub_100037B7C(*(v1 + 32), v3);
  *(v4 + 32) = v5;
  *(v4 + 40) = sub_100037D24(*(v1 + 40), v3);
  v36 = v4;
  v6 = *(v1 + 48);
  if (v6 && (*(v1 + 72) & 1) == 0)
  {
    v7 = v6;
    sub_100038F6C(v7, v3 & 1);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = v36;
  }

  v8 = *(v1 + 64);
  sub_100005744(0, &qword_1009811E0, UIButton_ptr);
  if (Array.isNotEmpty.getter())
  {
    if (v8 >> 62)
    {
      sub_100005744(0, &qword_100972EB0, UIView_ptr);

      v35 = _bridgeCocoaArray<A>(_:)();

      v8 = v35;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
    }

    sub_100037EE0(v8, v3 & 1);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v4 = v36;
  }

  v9 = *(v2 + 56);
  if (v9)
  {
    v10 = *(v2 + 96);
    v11 = v9;
    sub_1000380A0(v11, v3 & 1, v10);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v4 = v36;
  }

  v12 = *(v2 + 16);
  if (v12)
  {
    v13 = *(v2 + 24);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      sub_100039148(v14, v15, v3 & 1);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v4 = v36;
    }

    else
    {
      v16 = v12;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v2 + 88);
    v18 = swift_unknownObjectRetain();
    sub_1000392F4(v18, v17, v3 & 1);
    swift_unknownObjectRelease();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_unknownObjectRelease();
    v4 = v36;
  }

  if (v12)
  {
    ObjectType = swift_getObjectType();
    v20 = swift_conformsToProtocol2();
    if (v20 && *(*(*&v12[OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC8AppStoreP33_50FB26AE35933B3A04EC44A4A275C3B010HeaderView_mediaView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) == 1 && !*(v2 + 24) && (*(v2 + 72) & 1) == 0)
    {
      v21 = v20;
      v22 = *(v20 + 8);
      v23 = *(v22 + 160);
      v24 = v12;
      v25 = v23(ObjectType, v22);
      if (v25 != 7)
      {
        if (v25 == 6)
        {
          sub_100039604(v24, v21, v3 & 1);
          goto LABEL_37;
        }

        if (v25 == 4)
        {
          sub_100039464(v24, v21, v3 & 1);
LABEL_37:
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v4 = v36;
          goto LABEL_40;
        }
      }
    }

LABEL_40:
    v26 = swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27 && (*(v27 + 160))(v26, v27) == 4 && (v29 = swift_getObjectType(), (v30 = swift_conformsToProtocol2()) != 0) && (*(v30 + 32))(v29, v30))
    {
      v32 = v31;
      v33 = swift_getObjectType();
      v34 = (*(v32 + 16))(v33, v32);
      swift_unknownObjectRelease();
      sub_10003982C(v34, v3 & 1);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      return v36;
    }

    else
    {
    }
  }

  return v4;
}

uint64_t sub_100037B20()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = sub_100037484(0);
    *(v0 + 112) = v1;
  }

  return v1;
}

double sub_100037B7C(void *a1, char a2)
{
  v5 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v6 = 0;
    v7 = [v5 initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
    v8 = 0.0;
  }

  else
  {
    v7 = [v5 initWithDuration:0 controlPoint1:0.14 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
    v8 = 0.3;
    v6 = 0x3FC5C28F5C28F5C3;
  }

  v9 = v7;
  [a1 setAlpha:v8];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = v2;
  v15[4] = sub_100039C08;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100007A08;
  v15[3] = &unk_1008B1880;
  v11 = _Block_copy(v15);
  v12 = a1;

  [v9 addAnimations:v11];

  _Block_release(v11);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  result = 0.0;
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *(v13 + 16) = v9;
  *(v13 + 24) = v6;
  return result;
}

void *sub_100037D24(void *a1, char a2)
{
  v5 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v6 = 0.15;
    v7 = 0.46;
    v8 = 0.8;
  }

  else
  {
    v6 = 0.36;
    v7 = 0.2;
    v8 = 0.21;
  }

  v9 = [v5 initWithDuration:0 controlPoint1:v6 controlPoint2:v7 animations:{0.0, v8, 1.0}];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = a2 & 1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = v2;
  v19[4] = sub_100039BE8;
  v19[5] = v10;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100007A08;
  v19[3] = &unk_1008B1808;
  v12 = _Block_copy(v19);
  v13 = v9;
  v14 = a1;

  [v13 addAnimations:v12];

  _Block_release(v12);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v15 = swift_allocObject();
  v15[6] = 0;
  v15[7] = 0;
  v15[2] = v13;
  v15[3] = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v11;
  *(v16 + 32) = v2;
  v15[4] = sub_100039BF8;
  v15[5] = v16;
  v17 = v14;
  return v15;
}

void *sub_100037EE0(uint64_t a1, char a2)
{
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.1 controlPoint2:0.0 animations:{0.0, 1.0, 1.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = v2;
  v12[4] = sub_100039C88;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100007A08;
  v12[3] = &unk_1008B1448;
  v7 = _Block_copy(v12);

  [v5 addAnimations:v7];
  _Block_release(v7);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = 0x3FB999999999999ALL;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a1;
  *(v9 + 32) = v2;
  v8[4] = sub_1000399E0;
  v8[5] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = v2;
  v8[6] = sub_1000399EC;
  v8[7] = v10;
  swift_bridgeObjectRetain_n();
  return v8;
}

uint64_t sub_1000380A0(void *a1, char a2, void *a3)
{
  v7 = 0.0;
  v8 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.17 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  if ((a2 & 1) == 0)
  {
    v7 = 0.1;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = v3;
  v22[4] = sub_100039A10;
  v22[5] = v9;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_100007A08;
  v22[3] = &unk_1008B14E8;
  v10 = _Block_copy(v22);
  v11 = v8;
  v12 = a1;
  v13 = a3;

  [v11 addAnimations:v10];

  _Block_release(v10);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v7;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v12;
  *(v15 + 32) = v13;
  *(v15 + 40) = v3;
  *(v14 + 32) = sub_100039A20;
  *(v14 + 40) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = v13;
  *(v16 + 32) = v12;
  *(v14 + 48) = sub_100039A30;
  *(v14 + 56) = v16;
  v17 = v12;
  v18 = v13;
  v19 = v17;
  v20 = v18;
  return v14;
}

uint64_t sub_1000382E8(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v8 = *(v6 + 32);
      if (v8)
      {
        v9 = *(v6 + 40);

        v8(v10);

        sub_10001F63C(v8, v9);
      }

      else
      {
      }

      ++v5;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v6 = *(v3 + 8 * v5 + 32);

    v7 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
}

uint64_t sub_10003842C(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      [*(v5 + 16) startAnimationAfterDelay:*(v5 + 24)];

      ++v4;
      if (v6 == i)
      {
        goto LABEL_14;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
}

void sub_10003852C(void *a1, char a2)
{
  if (a2)
  {
    v3 = 50.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = [objc_opt_self() effectWithBlurRadius:v3];
  [a1 _setEffect:v4];
}

void sub_1000385C0(void *a1, char a2)
{
  if (a2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 50.0;
  }

  v4 = [objc_opt_self() effectWithBlurRadius:v3];
  [a1 _setEffect:v4];
}

void sub_1000386AC(char a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      for (j = 0; ; ++j)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a2 + 8 * j + 32);
        }

        v6 = v5;
        v7 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v5 setAlpha:0.0];

        if (v7 == i)
        {
          return;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }
  }
}

void sub_100038788(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      v4 = 0;
      if (a2)
      {
        v5 = 1.0;
      }

      else
      {
        v5 = 0.0;
      }

      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        [v6 setAlpha:v5];

        ++v4;
        if (v8 == v3)
        {
          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v9 = a2;
      v10 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v9;
      v3 = v10;
    }

    while (v10);
  }
}

void sub_100038880(id a1, char a2, id a3)
{
  if (a2)
  {
    if ([a3 userInterfaceIdiom] == 1)
    {
      v5 = 32.0;
    }

    else
    {
      [a3 displayCornerRadius];
    }

    [a1 _setContinuousCornerRadius:v5];
  }

  else
  {
    [a1 _setContinuousCornerRadius:20.0];
    if (UITraitCollection.isSizeClassRegular.getter())
    {
      v6 = [a1 layer];
      [v6 setMaskedCorners:15];
    }
  }
}

void sub_10003897C(char a1, id a2, void *a3)
{
  if (a1)
  {
    [a2 _setContinuousCornerRadius:20.0];
    [a2 setClipsToBounds:1];
    if ([a3 horizontalSizeClass] != 2)
    {
      return;
    }

    v5 = 3;
    goto LABEL_11;
  }

  [a2 _continuousCornerRadius];
  if (v6 == 0.0)
  {
    if ([a3 userInterfaceIdiom] == 1)
    {
      v7 = 32.0;
    }

    else
    {
      [a3 displayCornerRadius];
    }

    [a2 _setContinuousCornerRadius:v7];
    [a2 setClipsToBounds:1];
  }

  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v5 = 15;
LABEL_11:
    v8 = [a2 layer];
    [v8 setMaskedCorners:v5];
  }
}

void sub_100038AC0(char a1, uint64_t a2)
{
  if (a1)
  {
    if (!a2)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = Strong;
    v4 = 1;
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v3 = v5;
    v4 = 0;
  }

  v6 = v3;
  sub_100308F0C(v4);
}

id sub_100038B64(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
  if (v5)
  {
    v6 = 1.0;
    if (a3)
    {
      v6 = 0.0;
    }

    [v5 setAlpha:v6];
  }

  if (a3)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [*(a1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView) setAlpha:v7];
  v8 = *(a1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v8)
  {
    if (a3)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    [v8 setAlpha:v9];
  }

  v10 = *(a1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer);

  return [v10 setAlpha:v7];
}

id sub_100038C3C(id result, uint64_t a2)
{
  if (!result)
  {
    v19 = v3;
    v20 = v2;
    v9 = *(a2 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
    if (v9)
    {
      v10 = v9;
      [v10 alpha];
      [v10 setHidden:v11 == 0.0];
    }

    v12 = *(a2 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView);
    [v12 alpha];
    [v12 setHidden:v13 == 0.0];
    v14 = *(a2 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v14)
    {
      v15 = v14;
      [v15 alpha];
      [v15 setHidden:v16 == 0.0];
    }

    v17 = *(a2 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer);
    [v17 alpha];

    return [v17 setHidden:v18 == 0.0];
  }

  return result;
}

id sub_100038D4C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView;
  v6 = *(a1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_topLabelsView);
  if (v6)
  {
    v7 = 0.0;
    if (a3)
    {
      v7 = 1.0;
    }

    [v6 setAlpha:v7];
    v8 = *(a1 + v5);
    if (v8)
    {
      [v8 setHidden:0];
    }
  }

  v9 = *(a1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView);
  if (a3)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  [*(a1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_labelsView) setAlpha:v10];
  [v9 setHidden:0];
  v11 = OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer;
  v12 = *(a1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v12)
  {
    v13 = (a3 & 1) != 0 ? 1.0 : 0.0;
    [v12 setAlpha:v13];
    v14 = *(a1 + v11);
    if (v14)
    {
      [v14 setHidden:0];
    }
  }

  v15 = *(a1 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_lockupContainer);
  [v15 setAlpha:v10];

  return [v15 setHidden:0];
}

id *sub_100038E80()
{

  sub_10001F64C((v0 + 10));

  return v0;
}

uint64_t sub_100038EF0()
{
  sub_100038E80();

  return swift_deallocClassInstance();
}

void *sub_100038F6C(void *a1, char a2)
{
  v4 = objc_allocWithZone(UIViewPropertyAnimator);
  if (a2)
  {
    v5 = 1.0;
    v6 = [v4 initWithDuration:0 controlPoint1:0.15 controlPoint2:0.46 animations:{0.0, 0.8, 1.0}];
    v7 = 0.9;
  }

  else
  {
    v7 = 1.0;
    v6 = [v4 initWithDuration:0 controlPoint1:0.36 controlPoint2:0.2 animations:{0.0, 0.21, 1.0}];
    v5 = 0.9;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v7;
  v16[4] = sub_100039C5C;
  v16[5] = v8;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 1107296256;
  v16[2] = sub_100007A08;
  v16[3] = &unk_1008B13D0;
  v9 = _Block_copy(v16);
  v10 = v6;
  v11 = a1;

  [v10 addAnimations:v9];

  _Block_release(v9);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v12 = swift_allocObject();
  v12[6] = 0;
  v12[7] = 0;
  v12[2] = v10;
  v12[3] = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v5;
  v12[4] = sub_1000399C0;
  v12[5] = v13;
  v14 = v11;
  return v12;
}

uint64_t sub_100039148(void *a1, void *a2, char a3)
{
  v6 = 0.0;
  v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  if ((a3 & 1) == 0)
  {
    v6 = 0.1;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a2;
  *(v8 + 32) = a1;
  v17[4] = sub_100039A90;
  v17[5] = v8;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100007A08;
  v17[3] = &unk_1008B1588;
  v9 = _Block_copy(v17);
  v10 = v7;
  v11 = a2;
  v12 = a1;

  [v10 addAnimations:v9];

  _Block_release(v9);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 16) = v10;
  *(v13 + 24) = v6;
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = v11;
  *(v13 + 32) = sub_100039AF8;
  *(v13 + 40) = v14;
  v15 = v11;
  return v13;
}

double sub_1000392F4(uint64_t a1, uint64_t a2, char a3)
{
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v6 = 0.62;
  }

  else
  {
    v6 = 0.61;
  }

  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v7 = 0.8;
  }

  else
  {
    v7 = 0.84;
  }

  v8 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 dampingRatio:v6 animations:v7];
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v13[4] = sub_100039B1C;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100007A08;
  v13[3] = &unk_1008B1600;
  v10 = _Block_copy(v13);
  swift_unknownObjectRetain();

  [v8 addAnimations:v10];
  _Block_release(v10);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v11 = swift_allocObject();
  result = 0.0;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 16) = v8;
  *(v11 + 24) = 0;
  return result;
}

uint64_t sub_100039464(void *a1, uint64_t a2, char a3)
{
  v6 = 0.0;
  v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.2 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v15[4] = sub_100039B28;
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100007A08;
  v15[3] = &unk_1008B1650;
  v9 = _Block_copy(v15);
  v10 = a1;

  [v7 addAnimations:v9];
  _Block_release(v9);
  if (a3)
  {
    v6 = 0.3;
  }

  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v11 = swift_allocObject();
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v10;
  *(v12 + 32) = a2;
  *(v11 + 32) = sub_100039B5C;
  *(v11 + 40) = v12;
  v13 = v10;
  return v11;
}

void *sub_100039604(void *a1, uint64_t a2, char a3)
{
  v6 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.09 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v21 = sub_100039B80;
  v22 = v7;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_100007A08;
  v20 = &unk_1008B16C8;
  v8 = _Block_copy(&v17);
  v9 = a1;

  [v6 addAnimations:v8];
  _Block_release(v8);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  v21 = sub_100039B8C;
  v22 = v10;
  v17 = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_10007FFE8;
  v20 = &unk_1008B1718;
  v11 = _Block_copy(&v17);
  v12 = v9;

  [v6 addCompletion:v11];
  _Block_release(v11);
  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v13 = swift_allocObject();
  v13[6] = 0;
  v13[7] = 0;
  v13[2] = v6;
  v13[3] = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  v13[4] = sub_100039B94;
  v13[5] = v14;
  v15 = v12;
  return v13;
}

uint64_t sub_10003982C(void *a1, char a2)
{
  v4 = 0.1;
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.1 controlPoint2:0.5 animations:{0.0, 0.5, 1.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v13[4] = sub_100039BA0;
  v13[5] = v6;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100007A08;
  v13[3] = &unk_1008B1790;
  v7 = _Block_copy(v13);
  v8 = a1;

  [v5 addAnimations:v7];
  _Block_release(v7);
  if ((a2 & 1) == 0)
  {
    v4 = 0.0;
  }

  type metadata accessor for TodayTransitionCompanionAnimations.CompanionAnimation();
  v9 = swift_allocObject();
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = a2;
  *(v9 + 32) = sub_100039BC4;
  *(v9 + 40) = v10;
  v11 = v8;
  return v9;
}