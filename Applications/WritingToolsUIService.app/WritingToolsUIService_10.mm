void sub_1001215B4(uint64_t a1)
{
  if (!qword_1002629C8)
  {
    sub_100003E34(&qword_1002629D0, &qword_1001D96E8);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_1002629C8);
    }
  }
}

void sub_100121618(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool, &protocol witness table for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10012168C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 72);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10012175C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 72) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10012180C(uint64_t a1)
{
  sub_100121AC4(319, &qword_10025DE18, type metadata accessor for CompositionModel, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_100121AC4(319, &qword_1002629C0, type metadata accessor for PresentationModel, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_100121AC4(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_100121A74(319, &qword_10025DE40, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_100121618(319, &unk_1002629E8, &type metadata accessor for FocusState.Binding);
          if (v5 <= 0x3F)
          {
            sub_100121AC4(319, &unk_100262AA0, &type metadata accessor for FBKEvaluationController, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_100121AC4(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
              if (v7 <= 0x3F)
              {
                sub_100121A74(319, &qword_10025B4B0, &type metadata for String, &type metadata accessor for State);
                if (v8 <= 0x3F)
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

void sub_100121A74(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_100121AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 sub_100121B38(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_100121B6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_100121BB4(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100121C34()
{
  result = qword_100262AE8;
  if (!qword_100262AE8)
  {
    sub_100003E34(&qword_1002627F8, &unk_1001D9458);
    sub_100003E34(&qword_1002627E0, &qword_1001D9408);
    sub_100003E34(&qword_1002627D8, &qword_1001D9400);
    sub_100003E34(&qword_1002627D0, &qword_1001D93F8);
    sub_100007120(&qword_1002627F0, &qword_1002627D0, &qword_1001D93F8, &protocol conformance descriptor for ZStack<A>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1001208D0(&qword_10025A930, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262AE8);
  }

  return result;
}

unint64_t sub_100121E04()
{
  result = qword_100262AF8;
  if (!qword_100262AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262AF8);
  }

  return result;
}

uint64_t sub_100121EAC()
{
  v1 = (type metadata accessor for CompositionConfirmView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[12];

  v6 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100122020(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100122088(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for CompositionConfirmView(0);
  v5 = *(v2 + 16);

  return sub_100113D68(a1, a2, v5);
}

unint64_t sub_100122114()
{
  result = qword_100262B90;
  if (!qword_100262B90)
  {
    sub_100003E34(&qword_100262B88, &qword_1001D9AB8);
    sub_100007120(&qword_100262B98, &unk_100262BA0, &qword_1001D9AC0, &protocol conformance descriptor for TupleToolbarContent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262B90);
  }

  return result;
}

unint64_t sub_1001221C4()
{
  result = qword_100262BC0;
  if (!qword_100262BC0)
  {
    sub_100003E34(&qword_100262B28, &qword_1001D9A60);
    sub_100003E34(&qword_100262B18, &qword_1001D9A50);
    sub_100003E34(&qword_100262B10, &qword_1001D9A48);
    sub_100003E34(&qword_100262B80, &qword_1001D9AB0);
    sub_100003E34(&qword_100262B08, &qword_1001D9A40);
    sub_100007120(&qword_100262B78, &qword_100262B08, &qword_1001D9A40, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100003E34(&qword_100262B88, &qword_1001D9AB8);
    sub_100122114();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10006B3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262BC0);
  }

  return result;
}

uint64_t sub_100122438()
{
  v1 = (type metadata accessor for CompositionConfirmView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v5 + v1[12];

  v7 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v8 = type metadata accessor for NavigationPath();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_1001225D0(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for CompositionConfirmView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_1001226A4()
{
  result = qword_100262C88;
  if (!qword_100262C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262C88);
  }

  return result;
}

uint64_t sub_100122730()
{
  v1 = (type metadata accessor for CompositionConfirmView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[12];

  v6 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1001228C8()
{
  result = qword_100262CB8;
  if (!qword_100262CB8)
  {
    sub_100003E34(&qword_100262CB0, &qword_1001D9D90);
    sub_100007120(&qword_100262CC0, &qword_100262CC8, &qword_1001D9D98, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262CB8);
  }

  return result;
}

unint64_t sub_100122980()
{
  result = qword_100262CD8;
  if (!qword_100262CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262CD8);
  }

  return result;
}

unint64_t sub_1001229D4()
{
  result = qword_100262CE0;
  if (!qword_100262CE0)
  {
    sub_100003E34(&qword_100262C10, &qword_1001D9B28);
    sub_100122A8C();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262CE0);
  }

  return result;
}

unint64_t sub_100122A8C()
{
  result = qword_100262CE8;
  if (!qword_100262CE8)
  {
    sub_100003E34(&qword_100262CD0, &qword_1001D9DA0);
    sub_100007120(&qword_100262CF0, &qword_100262CF8, &qword_1001D9DA8, &protocol conformance descriptor for Button<A>);
    sub_100063A9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262CE8);
  }

  return result;
}

uint64_t sub_100122C00()
{
  v1 = (type metadata accessor for CompositionConfirmView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v5 + v1[12];

  v7 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v8 = type metadata accessor for NavigationPath();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100122D8C(uint64_t a1)
{
  v4 = *(type metadata accessor for CompositionConfirmView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002B2A0;

  return sub_10010F25C(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100122ED4()
{
  v2 = *(type metadata accessor for CompositionIndexView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002B2A0;

  return sub_10010E058(v0 + v3);
}

uint64_t sub_100122FA0()
{
  v1 = type metadata accessor for CompositionIndexView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_100122EC8(*(v5 + 48), *(v5 + 56), *(v5 + 64));
  v6 = *(v1 + 32);
  sub_10000341C(&qword_1002628E0, &qword_1001D95E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 44);

  v9 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v10 = type metadata accessor for NavigationPath();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_1001231A8()
{
  result = qword_100262D50;
  if (!qword_100262D50)
  {
    sub_100003E34(&qword_100262D10, &qword_1001D9E10);
    sub_100007120(&qword_100262D58, &qword_100262D60, &qword_1001D9E60, &protocol conformance descriptor for VStack<A>);
    sub_1001208D0(&qword_10025A930, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262D50);
  }

  return result;
}

uint64_t sub_100123290()
{
  type metadata accessor for CompositionIndexView(0);
  sub_10010AB74();
  sub_100094238();
}

uint64_t sub_100123308(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    sub_1001208D0(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier, &unk_1001DAD20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001233BC()
{
  result = qword_100262D78;
  if (!qword_100262D78)
  {
    sub_100003E34(&qword_100262D20, &qword_1001D9E20);
    sub_100007120(&qword_100262D80, &qword_100262D18, &qword_1001D9E18, &protocol conformance descriptor for SubscriptionView<A, B>);
    sub_10006B3B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262D78);
  }

  return result;
}

uint64_t sub_1001234A0(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

unint64_t sub_1001234B4()
{
  result = qword_100262DB8;
  if (!qword_100262DB8)
  {
    sub_100003E34(&qword_100262DB0, &qword_1001D9E90);
    sub_100123538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262DB8);
  }

  return result;
}

unint64_t sub_100123538()
{
  result = qword_100262DC0;
  if (!qword_100262DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262DC0);
  }

  return result;
}

unint64_t sub_10012358C()
{
  result = qword_100262DC8;
  if (!qword_100262DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262DC8);
  }

  return result;
}

uint64_t sub_1001235E0(uint64_t a1, char a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1001234A0(a1, a2);
  }
}

unint64_t sub_1001235EC()
{
  result = qword_100262DD8;
  if (!qword_100262DD8)
  {
    sub_100003E34(&qword_100262DD0, &qword_1001D9E98);
    sub_1001234B4();
    sub_10012358C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262DD8);
  }

  return result;
}

uint64_t sub_100123678(uint64_t result, uint64_t a2)
{
  if (a2 != 0xFF)
  {
  }

  return v2;
}

uint64_t sub_10012368C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100123678(a1, a2);
  }
}

unint64_t sub_1001236E8()
{
  result = qword_100262E38;
  if (!qword_100262E38)
  {
    sub_100003E34(&qword_100262E30, &qword_1001D9F70);
    sub_1001237A0();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262E38);
  }

  return result;
}

unint64_t sub_1001237A0()
{
  result = qword_100262E40;
  if (!qword_100262E40)
  {
    sub_100003E34(&qword_100262E48, &qword_1001D9F78);
    sub_10004882C();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262E40);
  }

  return result;
}

unint64_t sub_100123858()
{
  result = qword_100262E60;
  if (!qword_100262E60)
  {
    sub_100003E34(&qword_100262E20, &qword_1001D9F00);
    sub_100003E34(&qword_10025C768, &unk_1001D9F80);
    sub_10004882C();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262E60);
  }

  return result;
}

uint64_t sub_100123958(uint64_t a1)
{
  v4 = *(type metadata accessor for CompositionIndexView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002B2A0;

  return sub_10010BB78(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100123A88()
{
  v1 = type metadata accessor for CompositionIndexView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  sub_100122EC8(*(v5 + 48), *(v5 + 56), *(v5 + 64));
  v6 = *(v1 + 32);
  sub_10000341C(&qword_1002628E0, &qword_1001D95E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ScenePhase();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v5 + *(v1 + 44);

  v9 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v10 = type metadata accessor for NavigationPath();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100123C84(uint64_t a1)
{
  v4 = *(type metadata accessor for CompositionIndexView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002B2A0;

  return sub_10010B808(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_100123DD0()
{
  result = qword_100262E88;
  if (!qword_100262E88)
  {
    sub_100003E34(&qword_100262E78, &qword_1001DA048);
    sub_100007120(&qword_100262E90, &qword_100262E70, &qword_1001DA040, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262E88);
  }

  return result;
}

unint64_t sub_100123E98()
{
  result = qword_100262F98;
  if (!qword_100262F98)
  {
    sub_100003E34(&qword_100262F90, &qword_1001DA118);
    sub_10011D39C();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262F98);
  }

  return result;
}

uint64_t sub_100123F5C(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 192, 7);
}

unint64_t sub_100123FFC()
{
  result = qword_100262FA8;
  if (!qword_100262FA8)
  {
    sub_100003E34(&qword_10025E2D0, &qword_1001D56C0);
    sub_1001208D0(&qword_100262FB0, &type metadata accessor for PhotosPickerItem, &protocol conformance descriptor for PhotosPickerItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100262FA8);
  }

  return result;
}

uint64_t sub_1001240B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_10011B598(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100124174(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10002B2A0;

  return sub_1001206F0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_100124250(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002B2A0;

  return sub_10017A2A0(a1, a2, v6);
}

uint64_t sub_100124308()
{
  v1 = type metadata accessor for PhotosPickerItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1001243EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PhotosPickerItem() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002B2A0;

  return sub_10011E928(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_100124530(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_100124568(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100028688;

  return sub_10011F29C(a1, v4);
}

unint64_t sub_100124620()
{
  result = qword_100263030;
  if (!qword_100263030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263030);
  }

  return result;
}

uint64_t sub_100124674(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_100124680(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_10012468C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_100124734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[26];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_10011AFA0(a1, v4, v5, (v1 + 4), v6);
}

unint64_t sub_1001247F4()
{
  result = qword_100263040;
  if (!qword_100263040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263040);
  }

  return result;
}

unint64_t sub_10012486C()
{
  result = qword_100263048;
  if (!qword_100263048)
  {
    sub_100003E34(&qword_100262B60, &qword_1001D9A98);
    sub_1001248F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263048);
  }

  return result;
}

unint64_t sub_1001248F8()
{
  result = qword_100263050;
  if (!qword_100263050)
  {
    sub_100003E34(&qword_100262B58, &qword_1001D9A90);
    sub_100003E34(&qword_100262B48, &qword_1001D9A80);
    sub_100003E34(&qword_100262B40, &qword_1001D9A78);
    sub_100003E34(&qword_100262B38, &qword_1001D9A70);
    sub_100003E34(&qword_100262B30, &qword_1001D9A68);
    sub_100123308(&qword_100262BB8, &qword_100262B30, &qword_1001D9A68, sub_1001221C4);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263050);
  }

  return result;
}

unint64_t sub_100124ABC()
{
  result = qword_100263058;
  if (!qword_100263058)
  {
    sub_100003E34(&unk_100263060, qword_1001DA2E8);
    sub_100003E34(&qword_100262D38, &qword_1001D9E38);
    sub_100003E34(&qword_100262D30, &qword_1001D9E30);
    sub_100003E34(&qword_100262D28, &qword_1001D9E28);
    sub_100123308(&qword_100262D70, &qword_100262D28, &qword_1001D9E28, sub_1001233BC);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263058);
  }

  return result;
}

uint64_t sub_100124C38()
{
  sub_100003E34(&qword_100262E78, &qword_1001DA048);
  sub_100123DD0();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100124D00()
{
  result = qword_100263098;
  if (!qword_100263098)
  {
    sub_100003E34(&qword_100263088, &qword_1001DA3A8);
    sub_100124DB8();
    sub_100007120(&qword_1002600D8, &unk_100262F30, &unk_1001D5700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263098);
  }

  return result;
}

unint64_t sub_100124DB8()
{
  result = qword_1002630A0;
  if (!qword_1002630A0)
  {
    sub_100003E34(&qword_1002630A8, &qword_1001DA3B8);
    sub_100124E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002630A0);
  }

  return result;
}

unint64_t sub_100124E44()
{
  result = qword_1002630B0;
  if (!qword_1002630B0)
  {
    sub_100003E34(&qword_1002630B8, &qword_1001DA3C0);
    sub_100124ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002630B0);
  }

  return result;
}

unint64_t sub_100124ED0()
{
  result = qword_1002630C0;
  if (!qword_1002630C0)
  {
    sub_100003E34(&qword_1002630C8, &qword_1001DA3C8);
    sub_100007120(&qword_1002630D0, &qword_1002630D8, &unk_1001DA3D0, &protocol conformance descriptor for HStack<A>);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002630C0);
  }

  return result;
}

unint64_t sub_100124FB4()
{
  result = qword_1002630F0;
  if (!qword_1002630F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002630F0);
  }

  return result;
}

uint64_t sub_100125024()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

unint64_t sub_100125080()
{
  result = qword_100263110;
  if (!qword_100263110)
  {
    sub_100003E34(&unk_100263100, &unk_1001DA408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263110);
  }

  return result;
}

uint64_t sub_1001250FC(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 25, 7);
}

uint64_t sub_100125134@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100117C38(*a1, 0, 0, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

unint64_t sub_100125190()
{
  result = qword_100263128;
  if (!qword_100263128)
  {
    sub_100003E34(&qword_100263078, &qword_1001DA398);
    sub_100007120(&qword_100263130, &qword_100263070, &qword_1001DA390, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263128);
  }

  return result;
}

uint64_t sub_100125248()
{
  sub_100003E34(&qword_100263080, &qword_1001DA3A0);
  sub_100007120(&qword_1002630E8, &qword_100263080, &qword_1001DA3A0, &protocol conformance descriptor for Menu<A, B>);
  sub_100124FB4();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100125314()
{
  result = qword_100263150;
  if (!qword_100263150)
  {
    sub_100003E34(&qword_100263138, &qword_1001DA488);
    sub_1001208D0(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100007120(&unk_100263160, &qword_100263148, &qword_1001DA498, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263150);
  }

  return result;
}

unint64_t sub_100125454(char a1)
{
  result = 7169887;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
    case 5:
    case 8:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x696D732E65636166;
      break;
    case 10:
      result = 0x7361636665697262;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
    case 13:
    case 14:
    case 15:
      result = 0;
      break;
    case 16:
      result = 0x6C69636E6570;
      break;
    case 17:
      result = 0xD000000000000038;
      break;
    case 18:
      result = 0x642E6E6F2E636F64;
      break;
    case 19:
      result = 0x7065722E74786574;
      break;
    case 20:
      result = 0xD000000000000013;
      break;
    case 21:
      result = 0x6B72616D78;
      break;
    case 22:
      result = 0x53636F445F63614DLL;
      break;
    case 23:
      result = 0x736E692E74786574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001256BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100125700(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Gradient.ColorSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorScheme();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for ColorScheme.light(_:), v6);
  v10 = static ColorScheme.== infix(_:_:)();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    static Color.accentColor.getter();
    v11 = static Color.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  sub_1000081B0(0, &qword_100262510, UIColor_ptr);

  v12 = UIColor.init(_:)();
  [v12 alphaComponent];
  if (v13 >= 0.5)
  {

LABEL_6:
    static Color.black.getter();
    static Gradient.ColorSpace.perceptual.getter();
    Color.mix(with:by:in:)();

    (*(v3 + 8))(v5, v2);
    v15 = Color.opacity(_:)();

    return v15;
  }

  v14 = [v12 colorWithAlphaComponent:v13 * 1.4];
  v15 = Color.init(uiColor:)();

  return v15;
}

Swift::Int sub_1001259AC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100125A18(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t sub_100125A84()
{
  result = qword_100263170;
  if (!qword_100263170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263170);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WTIcon(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WTIcon(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100125C5C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100125D2C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100125DF8(uint64_t a1)
{
  sub_10013235C(319, qword_10025D910, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_10012661C(319, &qword_1002631F0, &type metadata for Bool, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100125F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100125FE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001260B0(uint64_t a1)
{
  sub_10012661C(319, &qword_100263290, &type metadata for Color, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10013235C(319, &unk_100263298, type metadata accessor for CGSize, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_10013235C(319, qword_10025D910, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10012661C(319, &qword_1002631F0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100126238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
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
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10012631C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100126408(uint64_t a1)
{
  sub_10013235C(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_10012661C(319, qword_100262780, &type metadata for Bool, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_10013235C(319, &unk_100263350, type metadata accessor for CGSize, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_10012661C(319, &qword_10025DE40, &type metadata for Bool, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_1001322F8(319, qword_100263360, &qword_100262BB0, &unk_1001D0280, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_1001322F8(319, &qword_10025B470, &unk_10025D690, &qword_1001D2750, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10012661C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_10012666C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100126680(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1001266DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_10012676C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001267F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100126894(uint64_t a1)
{
  sub_10013235C(319, qword_10025D910, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for InputDashboardButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for InputDashboardButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100126A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v60 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v59 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000341C(&qword_100263BD0, &qword_1001DB6B8);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v55 - v8;
  v10 = sub_10000341C(&qword_100263BD8, &qword_1001DB6C0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v56 = &v55 - v12;
  v13 = sub_10000341C(&qword_100263BE0, &qword_1001DB6C8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v57 = &v55 - v15;
  v16 = static Alignment.center.getter();
  v18 = v17;
  v19 = *(v7 + 56);
  *&v9[v19] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v9 = 1;
  *(v9 + 1) = v16;
  *(v9 + 2) = v18;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  v9[40] = 1;
  v20 = &v9[*(v7 + 52)];
  v55 = v2;
  sub_100126E5C(v2, v58, v20);
  LOBYTE(v7) = static Edge.Set.bottom.getter();
  type metadata accessor for IconTitleLabelStyle(0);
  sub_10011F024(v5);
  DynamicTypeSize.isAccessibilitySize.getter();
  v21 = *(v59 + 8);
  v21(v5, v3);
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v9;
  v31 = v56;
  sub_10002A894(v30, v56, &qword_100263BD0, &qword_1001DB6B8);
  v32 = v31 + *(v11 + 44);
  *v32 = v7;
  *(v32 + 8) = v23;
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29;
  *(v32 + 40) = 0;
  LOBYTE(v7) = static Edge.Set.top.getter();
  sub_10011F024(v5);
  DynamicTypeSize.isAccessibilitySize.getter();
  v21(v5, v3);
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v57;
  sub_10002A894(v31, v57, &qword_100263BD8, &qword_1001DB6C0);
  v42 = v41 + *(v14 + 44);
  *v42 = v7;
  *(v42 + 8) = v34;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  LOBYTE(v7) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v41;
  v52 = v60;
  sub_10002A894(v51, v60, &qword_100263BE0, &qword_1001DB6C8);
  result = sub_10000341C(&qword_100263BE8, &qword_1001DB6D0);
  v54 = v52 + *(result + 36);
  *v54 = v7;
  *(v54 + 8) = v44;
  *(v54 + 16) = v46;
  *(v54 + 24) = v48;
  *(v54 + 32) = v50;
  *(v54 + 40) = 0;
  return result;
}

uint64_t sub_100126E5C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v62 = a3;
  v57 = sub_10000341C(&qword_100263B40, &qword_1001DB630);
  v5 = __chkstk_darwin(v57);
  v61 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v49 - v7;
  v53 = type metadata accessor for Image.Scale();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10000341C(&qword_100263B18, &qword_1001DB608);
  v10 = __chkstk_darwin(v56);
  v59 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v49 - v12;
  v14 = type metadata accessor for DynamicTypeSize();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IconTitleLabelStyle(0);
  v18 = a1;
  sub_10011F024(v17);
  v19 = DynamicTypeSize.isAccessibilitySize.getter();
  v20 = *(v15 + 8);
  v52 = v14;
  v50 = v20;
  v20(v17, v14);
  v58 = a2;
  LabelStyleConfiguration.icon.getter();
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  v54 = (v19 & 1) == 0;
  v55 = v19;
  v21 = qword_100277170;
  *&v13[*(sub_10000341C(&qword_100263B20, &qword_1001DB610) + 36)] = v21;

  sub_10011F024(v17);
  v22 = v51;
  v23 = v53;
  (*(v51 + 104))(v9, enum case for Image.Scale.large(_:), v53);
  v24 = &v13[*(sub_10000341C(&qword_100263B28, &qword_1001DB618) + 36)];
  v25 = sub_10000341C(&qword_100263550, &qword_1001D1F30);
  sub_10014CB88(v9, v24 + *(v25 + 28));
  (*(v22 + 8))(v9, v23);
  v50(v17, v52);
  *v24 = swift_getKeyPath();
  v26 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v13[*(sub_10000341C(&unk_100263B30, &unk_1001DB620) + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = *(v18 + 2);
  v37 = *(v18 + 24);
  v66 = *v18;
  v67 = v36;
  v68 = v37;
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  Binding.projectedValue.getter();
  v38 = v64;
  v39 = v65;
  v40 = &v13[*(v56 + 36)];
  *v40 = v63;
  *(v40 + 2) = v38;
  v40[24] = v39;
  v41 = v60;
  LabelStyleConfiguration.title.getter();
  *(v41 + *(v57 + 36)) = v21;

  LODWORD(v58) = sub_100129E58(type metadata accessor for IconTitleLabelStyle);
  v42 = v59;
  sub_1000081F8(v13, v59, &qword_100263B18, &qword_1001DB608);
  v43 = v61;
  sub_1000081F8(v41, v61, &qword_100263B40, &qword_1001DB630);
  v44 = v62;
  *v62 = 0;
  v45 = v55;
  *(v44 + 8) = v54;
  *(v44 + 9) = v45 & 1;
  v46 = sub_10000341C(&qword_100263BF0, &qword_1001DB6D8);
  sub_1000081F8(v42, v44 + v46[12], &qword_100263B18, &qword_1001DB608);
  sub_1000081F8(v43, v44 + v46[16], &qword_100263B40, &qword_1001DB630);
  v47 = v44 + v46[20];
  *v47 = 0;
  v47[8] = 0;
  v47[9] = (v58 & 1) == 0;
  sub_10000F500(v41, &qword_100263B40, &qword_1001DB630);
  sub_10000F500(v13, &qword_100263B18, &qword_1001DB608);
  sub_10000F500(v43, &qword_100263B40, &qword_1001DB630);
  return sub_10000F500(v42, &qword_100263B18, &qword_1001DB608);
}

uint64_t sub_100127440@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = type metadata accessor for ColorScheme();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v3 = (&v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_10000341C(&qword_1002636D0, &qword_1001DB0A8);
  __chkstk_darwin(v35);
  v5 = &v32 - v4;
  v6 = sub_10000341C(&qword_1002636D8, &qword_1001DB0B0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10000341C(&qword_1002636E0, &qword_1001DB0B8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  ButtonStyleConfiguration.label.getter();
  v12 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v14 = &v8[*(v6 + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  static Font.Weight.bold.getter();
  sub_100131CC0();
  View.fontWeight(_:)();
  sub_10000F500(v8, &qword_1002636D8, &qword_1001DB0B0);
  if (qword_10025A7D0 != -1)
  {
    swift_once();
  }

  v15 = qword_100277180;
  *&v11[*(sub_10000341C(&qword_1002636F0, &qword_1001DB0C0) + 36)] = v15;

  LOBYTE(v15) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v16 = &v11[*(v9 + 36)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    sub_10011F04C(v3);
    if (qword_10025A7E8 != -1)
    {
      swift_once();
    }

    v21 = sub_100125700(qword_100277198, v3);
    (*(v33 + 8))(v3, v34);
  }

  else
  {
    if (qword_10025A7E8 != -1)
    {
      swift_once();
    }

    v21 = qword_100277198;
  }

  v22 = &v5[*(v35 + 36)];
  *v22 = 0;
  v23 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v22[v23] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  *v5 = v21;
  *(v5 + 4) = 256;
  v24 = static Alignment.center.getter();
  v26 = v25;
  v27 = sub_10000341C(&qword_1002636F8, &qword_1001DB0C8);
  v28 = v36;
  v29 = v36 + *(v27 + 36);
  sub_10002A894(v5, v29, &qword_1002636D0, &qword_1001DB0A8);
  v30 = (v29 + *(sub_10000341C(&qword_100263700, &qword_1001DB0D0) + 36));
  *v30 = v24;
  v30[1] = v26;
  return sub_10002A894(v11, v28, &qword_1002636E0, &qword_1001DB0B8);
}

uint64_t sub_10012788C@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100260C08, &qword_1001D5F90);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = sub_10000341C(&qword_100263790, &qword_1001DB128);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  ButtonStyleConfiguration.label.getter();
  v11 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v12 = &v7[*(v5 + 44)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  if ((a1 & 0x100) != 0)
  {
    v17 = static Color.primary.getter();
  }

  else
  {
    v17 = static Color.accentColor.getter();
  }

  v18 = v17;
  sub_10002A894(v7, v10, &qword_100260C08, &qword_1001D5F90);
  *&v10[*(v8 + 36)] = v18;
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = a1 & 1;
  sub_10002A894(v10, a2, &qword_100263790, &qword_1001DB128);
  result = sub_10000341C(&qword_100263798, &qword_1001DB160);
  v22 = (a2 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = sub_10002AAC0;
  v22[2] = v20;
  return result;
}

uint64_t sub_100127A5C@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_10012788C(v2 | *v1, a1);
}

uint64_t sub_100127AA0@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000341C(&qword_100263790, &qword_1001DB128);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v43 = sub_10000341C(&qword_100263D58, &qword_1001DB910);
  __chkstk_darwin(v43);
  v9 = &v42 - v8;
  v42 = sub_10000341C(&qword_100263D60, &qword_1001DB918);
  __chkstk_darwin(v42);
  v11 = &v42 - v10;
  ButtonStyleConfiguration.label.getter();
  v12 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v7[*(sub_10000341C(&qword_100260C08, &qword_1001D5F90) + 36)];
  *v21 = v12;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  if (qword_10025A7B8 != -1)
  {
    swift_once();
  }

  *&v7[*(v5 + 36)] = qword_100277168;

  v22 = ButtonStyleConfiguration.isPressed.getter();
  v23 = static Color.accentColor.getter();
  v24 = v44;
  if (v22)
  {
    sub_10011F04C(v4);
    v25 = sub_100125700(v23, v4);

    (*(v2 + 8))(v4, v1);
    v23 = v25;
  }

  v26 = static Edge.Set.all.getter();
  sub_10002A894(v7, v9, &qword_100263790, &qword_1001DB128);
  v27 = &v9[*(v43 + 36)];
  *v27 = v23;
  v27[8] = v26;
  v28 = &v11[*(v42 + 36)];
  v29 = *(type metadata accessor for RoundedRectangle() + 20);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = type metadata accessor for RoundedCornerStyle();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  __asm { FMOV            V0.2D, #6.0 }

  *v28 = _Q0;
  *&v28[*(sub_10000341C(&qword_100263D68, &qword_1001DB920) + 36)] = 256;
  sub_10002A894(v9, v11, &qword_100263D58, &qword_1001DB910);
  LOBYTE(v29) = *(v24 + *(type metadata accessor for InputDashboardQuestionnaireButtonStyle(0) + 20));
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v29;
  v39 = v45;
  sub_10002A894(v11, v45, &qword_100263D60, &qword_1001DB918);
  result = sub_10000341C(&qword_100263D70, &qword_1001DB928);
  v41 = (v39 + *(result + 36));
  *v41 = KeyPath;
  v41[1] = sub_100035DEC;
  v41[2] = v38;
  return result;
}

uint64_t sub_100127ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000341C(&qword_100263708, &qword_1001DB0D8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  v10 = sub_10000341C(&qword_100263710, &qword_1001DB0E0);
  __chkstk_darwin(v10);
  v12 = v20 - v11;
  KeyPath = swift_getKeyPath();
  v14 = sub_10000341C(&qword_100263718, &qword_1001DB0E8);
  (*(*(v14 - 8) + 16))(v9, a1, v14);
  v15 = &v9[*(sub_10000341C(&qword_100263720, &unk_1001DB0F0) + 36)];
  *v15 = KeyPath;
  v15[8] = 1;
  v16 = static Font.title2.getter();
  v17 = swift_getKeyPath();
  v18 = &v9[*(v7 + 36)];
  *v18 = v17;
  v18[1] = v16;
  static Font.Weight.semibold.getter();
  sub_100131DA8();
  View.fontWeight(_:)();
  sub_10000F500(v9, &qword_100263708, &qword_1001DB0D8);
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  *&v12[*(v10 + 36)] = qword_100277170;

  static AccessibilityTraits.isHeader.getter();
  sub_100131F44();
  View.accessibility(addTraits:)();
  (*(v4 + 8))(v6, v3);
  return sub_10000F500(v12, &qword_100263710, &qword_1001DB0E0);
}

uint64_t sub_1001281C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v41 = type metadata accessor for ParagraphTypesetting();
  v2 = *(v41 - 8);
  __chkstk_darwin(v41);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = sub_10000341C(&qword_100263660, &qword_1001DB018);
  __chkstk_darwin(v8);
  v10 = &v39 - v9;
  v42 = sub_10000341C(&qword_100263668, &qword_1001DB020);
  v11 = *(v42 - 8);
  __chkstk_darwin(v42);
  v13 = &v39 - v12;
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = static Font.system(size:weight:design:)();
  sub_10000F500(v7, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v17 = sub_10000341C(&qword_100263670, &qword_1001DB058);
  (*(*(v17 - 8) + 16))(v10, v40, v17);
  v18 = &v10[*(sub_10000341C(&qword_100263678, &qword_1001DB060) + 36)];
  *v18 = KeyPath;
  v18[1] = v15;
  if (qword_10025A7D0 != -1)
  {
    swift_once();
  }

  v19 = qword_100277180;
  v20 = swift_getKeyPath();
  v21 = &v10[*(sub_10000341C(&qword_100263680, &qword_1001DB068) + 36)];
  *v21 = v20;
  v21[1] = v19;
  v22 = swift_getKeyPath();
  v23 = &v10[*(v8 + 36)];
  *v23 = v22;
  v23[8] = 1;

  static ParagraphTypesetting.balanced.getter();
  sub_100131A6C();
  View.paragraphTypesetting(_:isEnabled:)();
  (*(v2 + 8))(v4, v41);
  sub_10000F500(v10, &qword_100263660, &qword_1001DB018);
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  v25 = static Edge.Set.top.getter();
  *(inited + 32) = v25;
  v26 = static Edge.Set.bottom.getter();
  *(inited + 33) = v26;
  v27 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v25)
  {
    v27 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v26)
  {
    v27 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v43;
  (*(v11 + 32))(v43, v13, v42);
  result = sub_10000341C(&qword_1002636C8, &qword_1001DB0A0);
  v38 = v36 + *(result + 36);
  *v38 = v27;
  *(v38 + 8) = v29;
  *(v38 + 16) = v31;
  *(v38 + 24) = v33;
  *(v38 + 32) = v35;
  *(v38 + 40) = 0;
  return result;
}

double sub_100128688@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.all.getter();
  v5 = sub_10000341C(&qword_1002634C8, &qword_1001DAE58);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(sub_10000341C(&qword_1002634D0, &qword_1001DAE60) + 36);
  *v6 = v4;
  __asm { FMOV            V0.2D, #16.0 }

  *(v6 + 8) = _Q0;
  result = 0.0;
  *(v6 + 24) = xmmword_1001DA4C0;
  *(v6 + 40) = 0;
  return result;
}

uint64_t sub_10012873C()
{
  v3[3] = &type metadata for SwiftUI;
  v3[4] = sub_100131370();
  v0 = isFeatureEnabled(_:)();
  result = sub_10000F4B4(v3);
  v2 = 12.0;
  if (v0)
  {
    v2 = 25.0;
  }

  qword_100277160 = *&v2;
  return result;
}

uint64_t sub_1001287A0()
{
  result = Color.init(_:bundle:)();
  qword_100277168 = result;
  return result;
}

uint64_t sub_100128814(double a1, uint64_t a2, uint64_t *a3)
{
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  v4 = Color.opacity(_:)();

  *a3 = v4;
  return result;
}

uint64_t sub_1001288C8()
{
  if (qword_10025A7D8 != -1)
  {
    swift_once();
  }

  qword_100277198 = qword_100277188;
}

uint64_t sub_100128940(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

uint64_t sub_100128988(uint64_t a1)
{
  result = static Color.white.getter();
  qword_1002771A8 = result;
  return result;
}

void sub_1001289A8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  byte_1002771B0 = v1 == 6;
}

uint64_t sub_100128A0C()
{
  v0 = type metadata accessor for UIPromptBackgroundView.FillStyle();
  sub_10002B2EC(v0, qword_1002771B8);
  v1 = sub_10000F34C(v0, qword_1002771B8);
  sub_1000081B0(0, &qword_100262510, UIColor_ptr);
  if (qword_10025A7E8 != -1)
  {
    swift_once();
  }

  *v1 = UIColor.init(_:)();
  v2 = enum case for UIPromptBackgroundView.FillStyle.solid(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100128B04@<X0>(char *a1@<X8>)
{
  v29 = type metadata accessor for LabelStyleConfiguration.Icon();
  v26 = *(v29 - 8);
  v2 = v26;
  v3 = __chkstk_darwin(v29);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v25 = &v25 - v5;
  v7 = type metadata accessor for LabelStyleConfiguration.Title();
  v27 = *(v7 - 8);
  v8 = v27;
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  LabelStyleConfiguration.title.getter();
  LabelStyleConfiguration.icon.getter();
  v14 = *(v8 + 16);
  v14(v11, v13, v7);
  v30 = 1;
  v15 = *(v2 + 16);
  v16 = v28;
  v17 = v6;
  v18 = v29;
  v15(v28, v17, v29);
  v14(a1, v11, v7);
  v19 = sub_10000341C(&qword_100263F78, &qword_1001DBC48);
  v20 = &a1[*(v19 + 48)];
  v21 = v30;
  *v20 = 0;
  v20[8] = v21;
  v15(&a1[*(v19 + 64)], v16, v18);
  v22 = *(v26 + 8);
  v22(v25, v18);
  v23 = *(v27 + 8);
  v23(v13, v7);
  v22(v16, v18);
  return (v23)(v11, v7);
}

__n128 sub_100128DA8@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_10000341C(&qword_100263F60, &qword_1001DBC30);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = *v1;
  v7 = v1[16];
  *v5 = static VerticalAlignment.top.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v8 = sub_10000341C(&qword_100263F68, &qword_1001DBC38);
  sub_100128B04(&v5[*(v8 + 44)]);
  v9 = 0uLL;
  v10 = 0uLL;
  if ((v7 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v10 + 1) = v11;
    v9.n128_u64[1] = v12;
  }

  v15 = v10;
  v16 = v9;
  sub_10002A894(v5, a1, &qword_100263F60, &qword_1001DBC30);
  v13 = a1 + *(sub_10000341C(&qword_100263F70, &qword_1001DBC40) + 36);
  *v13 = v6;
  result = v16;
  *(v13 + 24) = v15;
  *(v13 + 8) = result;
  *(v13 + 40) = v7;
  return result;
}

uint64_t sub_100128EE4@<X0>(uint64_t a2@<X8>)
{
  v32 = a2;
  v2 = sub_10000341C(&qword_100263E58, &qword_1001DBAD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v31 - v3;
  v5 = sub_10000341C(&qword_100263E60, &qword_1001DBAD8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = sub_10000341C(&qword_100263E68, &qword_1001DBAE0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v13 = &v4[*(sub_10000341C(&qword_100263E70, &qword_1001DBAE8) + 44)];
  LabelStyleConfiguration.title.getter();
  v14 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v16 = &v13[*(sub_10000341C(&qword_100263E78, &qword_1001DBAF0) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  LOBYTE(v14) = static Edge.Set.trailing.getter();
  v17 = &v13[*(sub_10000341C(&qword_100263E80, &qword_1001DBAF8) + 36)];
  *v17 = v14;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  v17[40] = 1;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v4, v8, &qword_100263E58, &qword_1001DBAD0);
  v18 = &v8[*(v6 + 44)];
  v19 = v38;
  *(v18 + 4) = v37;
  *(v18 + 5) = v19;
  *(v18 + 6) = v39;
  v20 = v34;
  *v18 = v33;
  *(v18 + 1) = v20;
  v21 = v36;
  *(v18 + 2) = v35;
  *(v18 + 3) = v21;
  LOBYTE(v4) = static Edge.Set.all.getter();
  sub_10002A894(v8, v12, &qword_100263E60, &qword_1001DBAD8);
  v22 = &v12[*(v10 + 44)];
  *v22 = v4;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  v23 = static Alignment.center.getter();
  v25 = v24;
  v26 = sub_10000341C(&qword_100263E88, &qword_1001DBB00);
  v27 = v32;
  v28 = v32 + *(v26 + 36);
  sub_100129200(v28);
  v29 = (v28 + *(sub_10000341C(&qword_100263E90, &qword_1001DBB08) + 36));
  *v29 = v23;
  v29[1] = v25;
  return sub_10002A894(v12, v27, &qword_100263E68, &qword_1001DBAE0);
}

__n128 sub_100129200@<Q0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v35 = type metadata accessor for LabelStyleConfiguration.Icon();
  v1 = *(v35 - 8);
  __chkstk_darwin(v35);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000341C(&qword_100263E98, &qword_1001DBB10);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v34 = sub_10000341C(&qword_100263EA0, &qword_1001DBB18);
  __chkstk_darwin(v34);
  v8 = &v33 - v7;
  v9 = sub_10000341C(&qword_100263EA8, &qword_1001DBB20);
  __chkstk_darwin(v9 - 8);
  v11 = (&v33 - v10);
  *v11 = static Alignment.center.getter();
  v11[1] = v12;
  LabelStyleConfiguration.icon.getter();
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  v14 = static Edge.Set.top.getter();
  *(inited + 32) = v14;
  v15 = static Edge.Set.trailing.getter();
  *(inited + 33) = v15;
  v16 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v15)
  {
    v16 = Edge.Set.init(rawValue:)();
  }

  v17 = *(sub_10000341C(&qword_100263EB0, &qword_1001DBB28) + 44);
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v1 + 32))(v6, v3, v35);
  v26 = &v6[*(v4 + 36)];
  *v26 = v16;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  if (qword_10025A7D0 != -1)
  {
    swift_once();
  }

  v27 = qword_100277180;
  sub_10002A894(v6, v8, &qword_100263E98, &qword_1001DBB10);
  *&v8[*(v34 + 36)] = v27;
  sub_10002A894(v8, v11 + v17, &qword_100263EA0, &qword_1001DBB18);

  static Alignment.topTrailing.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v28 = v36;
  sub_10002A894(v11, v36, &qword_100263EA8, &qword_1001DBB20);
  v29 = v28 + *(sub_10000341C(&qword_100263EB8, &unk_1001DBB30) + 36);
  v30 = v42;
  *(v29 + 64) = v41;
  *(v29 + 80) = v30;
  *(v29 + 96) = v43;
  v31 = v38;
  *v29 = v37;
  *(v29 + 16) = v31;
  result = v40;
  *(v29 + 32) = v39;
  *(v29 + 48) = result;
  return result;
}

double sub_100129638@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_10000341C(&qword_100263F20, &qword_1001DBB98);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_10000341C(&qword_100263F28, &qword_1001DBBA0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v10 = sub_10000341C(&qword_100263F30, &qword_1001DBBA8);
  sub_100129834(&v5[*(v10 + 44)]);
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v5, v9, &qword_100263F20, &qword_1001DBB98);
  v11 = &v9[*(v7 + 44)];
  v12 = v18[5];
  *(v11 + 4) = v18[4];
  *(v11 + 5) = v12;
  *(v11 + 6) = v18[6];
  v13 = v18[1];
  *v11 = v18[0];
  *(v11 + 1) = v13;
  v14 = v18[3];
  *(v11 + 2) = v18[2];
  *(v11 + 3) = v14;
  v15 = static Edge.Set.all.getter();
  sub_10002A894(v9, a2, &qword_100263F28, &qword_1001DBBA0);
  v16 = a2 + *(sub_10000341C(&qword_100263F38, &qword_1001DBBB0) + 36);
  *v16 = v15;
  result = 0.0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 1;
  return result;
}

uint64_t sub_100129834@<X0>(char *a1@<X8>)
{
  v22 = a1;
  v1 = sub_10000341C(&qword_100263B20, &qword_1001DB610);
  v2 = __chkstk_darwin(v1);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = type metadata accessor for LabelStyleConfiguration.Title();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  LabelStyleConfiguration.title.getter();
  LabelStyleConfiguration.icon.getter();
  if (qword_10025A7D0 != -1)
  {
    swift_once();
  }

  *&v5[*(v1 + 36)] = qword_100277180;
  v13 = *(v7 + 16);
  v13(v10, v12, v6);
  v24 = 1;
  v14 = v23;
  sub_1000081F8(v5, v23, &qword_100263B20, &qword_1001DB610);
  v15 = v22;
  v13(v22, v10, v6);
  v16 = sub_10000341C(&qword_100263F40, &qword_1001DBBB8);
  v17 = &v15[*(v16 + 48)];
  v18 = v24;
  *v17 = 0;
  v17[8] = v18;
  sub_1000081F8(v14, &v15[*(v16 + 64)], &qword_100263B20, &qword_1001DB610);

  sub_10000F500(v5, &qword_100263B20, &qword_1001DB610);
  v19 = *(v7 + 8);
  v19(v12, v6);
  sub_10000F500(v14, &qword_100263B20, &qword_1001DB610);
  return (v19)(v10, v6);
}

uint64_t sub_100129AF4@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for LabelStyleConfiguration.Title();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  v7 = sub_10000341C(&qword_100263540, &qword_1001DAEF8);
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v29 - v12;
  LabelStyleConfiguration.icon.getter();
  v14 = &v13[*(sub_10000341C(&qword_100263548, &unk_1001DAF00) + 36)];
  v15 = *(sub_10000341C(&qword_100263550, &qword_1001D1F30) + 28);
  v16 = enum case for Image.Scale.large(_:);
  v17 = type metadata accessor for Image.Scale();
  (*(*(v17 - 8) + 104))(v14 + v15, v16, v17);
  *v14 = swift_getKeyPath();
  LOBYTE(v16) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v18 = &v13[*(v8 + 44)];
  *v18 = v16;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v29 = v6;
  LabelStyleConfiguration.title.getter();
  v30 = v11;
  sub_1000081F8(v13, v11, &qword_100263540, &qword_1001DAEF8);
  v23 = *(v2 + 16);
  v24 = v31;
  v23(v31, v6, v1);
  v25 = v32;
  sub_1000081F8(v11, v32, &qword_100263540, &qword_1001DAEF8);
  v26 = sub_10000341C(&qword_100263558, &qword_1001DAF40);
  v23((v25 + *(v26 + 48)), v24, v1);
  v27 = *(v2 + 8);
  v27(v29, v1);
  sub_10000F500(v13, &qword_100263540, &qword_1001DAEF8);
  v27(v24, v1);
  return sub_10000F500(v30, &qword_100263540, &qword_1001DAEF8);
}

uint64_t sub_100129E00@<X0>(uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = sub_10000341C(&qword_100263538, &qword_1001DAEF0);
  return sub_100129AF4(a2 + *(v3 + 44));
}

uint64_t sub_100129E58(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for EnvironmentValues();
  v17 = *(v3 - 8);
  v18 = v3;
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for DynamicTypeSize();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1(0);
  sub_1000081F8(v1 + *(v13 + 20), v8, &unk_10025B1F0, &qword_1001CE0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v5, v18);
  }

  v15 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v10 + 8))(v12, v9);
  return v15 & 1;
}

uint64_t sub_10012A0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v60 = a2;
  v3 = type metadata accessor for DynamicTypeSize();
  v59 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10000341C(&qword_100263AE0, &qword_1001DB5A0);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v55 - v8;
  v10 = sub_10000341C(&qword_100263AE8, &qword_1001DB5A8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v56 = &v55 - v12;
  v13 = sub_10000341C(&unk_100263AF0, &qword_1001DB5B0);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v57 = &v55 - v15;
  v16 = static Alignment.center.getter();
  v18 = v17;
  v19 = *(v7 + 56);
  *&v9[v19] = swift_getKeyPath();
  sub_10000341C(&unk_10025B1F0, &qword_1001CE0D0);
  swift_storeEnumTagMultiPayload();
  *v9 = 1;
  *(v9 + 1) = v16;
  *(v9 + 2) = v18;
  *(v9 + 3) = 0;
  *(v9 + 4) = 0;
  v9[40] = 1;
  v20 = &v9[*(v7 + 52)];
  v55 = v2;
  sub_10012A4C8(v2, v58, v20);
  LOBYTE(v7) = static Edge.Set.bottom.getter();
  type metadata accessor for SmallIconTitleLabelStyle(0);
  sub_10011F024(v5);
  DynamicTypeSize.isAccessibilitySize.getter();
  v21 = *(v59 + 8);
  v21(v5, v3);
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v9;
  v31 = v56;
  sub_10002A894(v30, v56, &qword_100263AE0, &qword_1001DB5A0);
  v32 = v31 + *(v11 + 44);
  *v32 = v7;
  *(v32 + 8) = v23;
  *(v32 + 16) = v25;
  *(v32 + 24) = v27;
  *(v32 + 32) = v29;
  *(v32 + 40) = 0;
  LOBYTE(v7) = static Edge.Set.top.getter();
  sub_10011F024(v5);
  DynamicTypeSize.isAccessibilitySize.getter();
  v21(v5, v3);
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v57;
  sub_10002A894(v31, v57, &qword_100263AE8, &qword_1001DB5A8);
  v42 = v41 + *(v14 + 44);
  *v42 = v7;
  *(v42 + 8) = v34;
  *(v42 + 16) = v36;
  *(v42 + 24) = v38;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  LOBYTE(v7) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v41;
  v52 = v60;
  sub_10002A894(v51, v60, &unk_100263AF0, &qword_1001DB5B0);
  result = sub_10000341C(&qword_100263B00, &qword_1001DB5F0);
  v54 = v52 + *(result + 36);
  *v54 = v7;
  *(v54 + 8) = v44;
  *(v54 + 16) = v46;
  *(v54 + 24) = v48;
  *(v54 + 32) = v50;
  *(v54 + 40) = 0;
  return result;
}

uint64_t sub_10012A4C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v70 = a3;
  v71 = a2;
  v66 = sub_10000341C(&qword_100263B08, &qword_1001DB5F8);
  __chkstk_darwin(v66);
  v65 = &v58 - v4;
  v64 = sub_10000341C(&qword_100263B10, &qword_1001DB600);
  v5 = __chkstk_darwin(v64);
  v69 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v58 - v7;
  v8 = type metadata accessor for Image.Scale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10000341C(&qword_100263B18, &qword_1001DB608);
  v12 = __chkstk_darwin(v60);
  v67 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v58 - v14;
  v16 = type metadata accessor for DynamicTypeSize();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SmallIconTitleLabelStyle(0);
  v63 = a1;
  sub_10011F024(v19);
  v20 = DynamicTypeSize.isAccessibilitySize.getter();
  v21 = *(v17 + 8);
  v59 = v16;
  v58 = v21;
  v21(v19, v16);
  v22 = v15;
  LabelStyleConfiguration.icon.getter();
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  v62 = v20;
  v61 = (v20 & 1) == 0;
  v23 = qword_100277170;
  *&v22[*(sub_10000341C(&qword_100263B20, &qword_1001DB610) + 36)] = v23;
  v24 = v22;

  v25 = v63;
  sub_10011F024(v19);
  (*(v9 + 104))(v11, enum case for Image.Scale.medium(_:), v8);
  v26 = (v24 + *(sub_10000341C(&qword_100263B28, &qword_1001DB618) + 36));
  v27 = sub_10000341C(&qword_100263550, &qword_1001D1F30);
  sub_10014CB88(v11, v26 + *(v27 + 28));
  (*(v9 + 8))(v11, v8);
  v58(v19, v59);
  *v26 = swift_getKeyPath();
  v28 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v24 + *(sub_10000341C(&unk_100263B30, &unk_1001DB620) + 36);
  *v37 = v28;
  *(v37 + 8) = v30;
  *(v37 + 16) = v32;
  *(v37 + 24) = v34;
  *(v37 + 32) = v36;
  *(v37 + 40) = 0;
  v38 = *(v25 + 2);
  v39 = *(v25 + 24);
  v75 = *v25;
  v76 = v38;
  v77 = v39;
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  Binding.projectedValue.getter();
  v40 = v73;
  v41 = v74;
  v42 = v24 + *(v60 + 36);
  *v42 = v72;
  *(v42 + 16) = v40;
  *(v42 + 24) = v41;
  v43 = v65;
  LabelStyleConfiguration.title.getter();
  *(v43 + *(sub_10000341C(&qword_100263B40, &qword_1001DB630) + 36)) = v23;
  *(v43 + *(sub_10000341C(&qword_100263B48, &qword_1001DB638) + 36)) = 257;

  v44 = static Font.caption.getter();
  KeyPath = swift_getKeyPath();
  v46 = (v43 + *(v66 + 36));
  *v46 = KeyPath;
  v46[1] = v44;
  static Font.Weight.medium.getter();
  sub_100133C5C();
  v47 = v68;
  View.fontWeight(_:)();
  sub_10000F500(v43, &qword_100263B08, &qword_1001DB5F8);
  v48 = swift_getKeyPath();
  v49 = v47 + *(v64 + 36);
  *v49 = v48;
  *(v49 + 8) = 1;
  *(v49 + 16) = 0;
  v50 = sub_100129E58(type metadata accessor for SmallIconTitleLabelStyle);
  v51 = v24;
  v52 = v67;
  sub_1000081F8(v24, v67, &qword_100263B18, &qword_1001DB608);
  v53 = v69;
  sub_100133E90(v47, v69);
  v54 = v70;
  *v70 = 0;
  *(v54 + 8) = v61;
  *(v54 + 9) = v62 & 1;
  v55 = sub_10000341C(&qword_100263B70, &qword_1001DB670);
  sub_1000081F8(v52, v54 + v55[12], &qword_100263B18, &qword_1001DB608);
  sub_100133E90(v53, v54 + v55[16]);
  v56 = v54 + v55[20];
  *v56 = 0;
  v56[8] = 0;
  v56[9] = (v50 & 1) == 0;
  sub_10000F500(v47, &qword_100263B10, &qword_1001DB600);
  sub_10000F500(v51, &qword_100263B18, &qword_1001DB608);
  sub_10000F500(v53, &qword_100263B10, &qword_1001DB600);
  return sub_10000F500(v52, &qword_100263B18, &qword_1001DB608);
}

uint64_t sub_10012ABC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = static Color.clear.getter();
  v15 = *a2;
  (*(v7 + 16))(&v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v10 = (*(v7 + 80) + 49) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v12 = *(a2 + 1);
  *(v11 + 16) = *a2;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(a2 + 32);
  (*(v7 + 32))(v11 + v10, &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  *a3 = v9;
  a3[1] = sub_100134184;
  a3[2] = v11;
  a3[3] = 0;
  a3[4] = 0;
  sub_100063D8C(&v15, v14);
}

uint64_t sub_10012AD3C(__int128 *a1)
{
  GeometryProxy.size.getter();
  sub_10000341C(&qword_100263BC8, &qword_1001DB6B0);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10012ADA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v14 = *v2;
  v6 = swift_allocObject();
  *(v6 + 16) = v14;
  *(v6 + 24) = v5;
  *(v6 + 32) = *(v2 + 1);
  *(v6 + 48) = *(v2 + 32);
  sub_100063D8C(&v14, &v13);

  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = sub_10000341C(&qword_100263BB8, &qword_1001DB6A0);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  result = sub_10000341C(&qword_100263BC0, &qword_1001DB6A8);
  v12 = (a2 + *(result + 36));
  *v12 = sub_1001340B0;
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v9;
  return result;
}

uint64_t sub_10012AEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v66 = sub_10000341C(&qword_100263600, &qword_1001DAFB0);
  __chkstk_darwin(v66);
  v68 = &v58 - v4;
  v5 = type metadata accessor for PrimaryButtonStyle(0);
  __chkstk_darwin(v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_100263608, &qword_1001DAFB8);
  __chkstk_darwin(v8);
  v10 = &v58 - v9;
  v67 = sub_10000341C(&qword_100263610, &qword_1001DAFC0);
  v64 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v58 - v11;
  v65 = sub_10000341C(&qword_100263618, &qword_1001DAFC8);
  __chkstk_darwin(v65);
  v14 = *(v2 + 12);
  if (v2[1])
  {
    v72 = *(v2 + 4);
    v73 = v14;
    sub_10000341C(&qword_100263620, &qword_1001DAFD0);
    State.projectedValue.getter();
    v61 = v69;
    v15 = v70;
    v16 = v71;
    v17 = sub_10000341C(&qword_100263628, &qword_1001DAFD8);
    (*(*(v17 - 8) + 16))(v10, a1, v17);
    v18 = &v10[*(v8 + 36)];
    *v18 = v61;
    *(v18 + 1) = v15;
    v18[32] = v16;
    v19 = *v2;
    v20 = *(v2 + 12);
    v69 = *(v2 + 4);
    v70 = v20;
    State.wrappedValue.getter();
    v21 = v72;
    v22 = v8;
    v23 = v73;
    v24 = *(v2 + 3);
    KeyPath = swift_getKeyPath();
    *v7 = v19;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0x4008000000000000;
    *(v7 + 24) = v21;
    v7[40] = v23;
    v7[41] = v24;
    v26 = *(v5 + 40);
    *&v7[v26] = swift_getKeyPath();
    sub_10000341C(&qword_100262940, &unk_1001D0560);
    swift_storeEnumTagMultiPayload();
    v27 = &v7[*(v5 + 44)];
    *v27 = KeyPath;
    v27[8] = 0;
    v28 = sub_1001318F0();
    v29 = sub_10013124C(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle, &unk_1001DABD8);
    v30 = v63;
    View.buttonStyle<A>(_:)();
    sub_1001319FC(v7, type metadata accessor for PrimaryButtonStyle);
    sub_10000F500(v10, &qword_100263608, &qword_1001DAFB8);
    v31 = v64;
    v32 = v67;
    (*(v64 + 16))(v68, v30, v67);
    swift_storeEnumTagMultiPayload();
    *&v69 = v22;
    *(&v69 + 1) = v5;
    *&v70 = v28;
    *(&v70 + 1) = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v34 = sub_1000492B0();
    *&v69 = v32;
    *(&v69 + 1) = &type metadata for HorizontalIconTitleLabelStyle;
    *&v70 = OpaqueTypeConformance2;
    *(&v70 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v31 + 8))(v30, v32);
  }

  else
  {
    v72 = *(v2 + 4);
    v73 = v14;
    v60 = &v58 - v12;
    *&v61 = v13;
    sub_10000341C(&qword_100263620, &qword_1001DAFD0);
    State.projectedValue.getter();
    v58 = v69;
    v36 = v70;
    v59 = v8;
    v37 = v71;
    v38 = sub_10000341C(&qword_100263628, &qword_1001DAFD8);
    (*(*(v38 - 8) + 16))(v10, a1, v38);
    v39 = &v10[*(v8 + 36)];
    *v39 = v58;
    *(v39 + 1) = v36;
    v39[32] = v37;
    v40 = *v2;
    v41 = *(v2 + 12);
    v69 = *(v2 + 4);
    v70 = v41;
    State.wrappedValue.getter();
    v42 = v72;
    v43 = v73;
    v44 = *(v2 + 3);
    v45 = swift_getKeyPath();
    *v7 = v40;
    *(v7 + 1) = 0;
    *(v7 + 2) = 0x4008000000000000;
    *(v7 + 24) = v42;
    v7[40] = v43;
    v7[41] = v44;
    v46 = *(v5 + 40);
    *&v7[v46] = swift_getKeyPath();
    sub_10000341C(&qword_100262940, &unk_1001D0560);
    swift_storeEnumTagMultiPayload();
    v47 = &v7[*(v5 + 44)];
    *v47 = v45;
    v47[8] = 0;
    v48 = sub_1001318F0();
    v49 = sub_10013124C(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle, &unk_1001DABD8);
    v50 = v63;
    v51 = v59;
    View.buttonStyle<A>(_:)();
    sub_1001319FC(v7, type metadata accessor for PrimaryButtonStyle);
    sub_10000F500(v10, &qword_100263608, &qword_1001DAFB8);
    *&v69 = v51;
    *(&v69 + 1) = v5;
    *&v70 = v48;
    *(&v70 + 1) = v49;
    v52 = swift_getOpaqueTypeConformance2();
    v53 = sub_1000492B0();
    v54 = v60;
    v55 = v67;
    View.labelStyle<A>(_:)();
    (*(v64 + 8))(v50, v55);
    v56 = v61;
    v57 = v65;
    (*(v61 + 16))(v68, v54, v65);
    swift_storeEnumTagMultiPayload();
    *&v69 = v55;
    *(&v69 + 1) = &type metadata for HorizontalIconTitleLabelStyle;
    *&v70 = v52;
    *(&v70 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v56 + 8))(v54, v57);
  }
}

uint64_t sub_10012B6C8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for PrimaryButtonStyle(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000611E0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10012B820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v92 = a2;
  v94 = type metadata accessor for AutomaticHoverEffect();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ColorScheme();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = (&v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v78);
  v88 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  __chkstk_darwin(v87);
  v90 = &v73 - v8;
  v86 = sub_10000341C(&unk_10025E1E0, &qword_1001D39A0);
  __chkstk_darwin(v86);
  v89 = &v73 - v9;
  v10 = type metadata accessor for ButtonStyleConfiguration.Label();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000341C(&qword_1002634F0, &qword_1001DAE80);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v73 - v16;
  v18 = sub_10000341C(&qword_1002634F8, &qword_1001DAE88);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v73 - v20;
  v76 = sub_10000341C(&qword_100263570, &qword_1001DAF48);
  __chkstk_darwin(v76);
  v83 = &v73 - v22;
  v79 = sub_10000341C(&qword_100263578, &qword_1001DAF50);
  __chkstk_darwin(v79);
  v82 = &v73 - v23;
  v81 = sub_10000341C(&qword_100263580, &qword_1001DAF58);
  __chkstk_darwin(v81);
  v80 = &v73 - v24;
  v84 = sub_10000341C(&unk_100263588, &qword_1001DAF60);
  __chkstk_darwin(v84);
  v85 = &v73 - v25;
  v77 = a1;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v11 + 32))(v17, v13, v10);
  v26 = &v17[*(v15 + 44)];
  v27 = v101;
  *(v26 + 4) = v100;
  *(v26 + 5) = v27;
  *(v26 + 6) = v102;
  v28 = v97;
  *v26 = v96;
  *(v26 + 1) = v28;
  v29 = v99;
  *(v26 + 2) = v98;
  *(v26 + 3) = v29;
  LOBYTE(a1) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_10002A894(v17, v21, &qword_1002634F0, &qword_1001DAE80);
  v38 = &v21[*(v19 + 44)];
  *v38 = a1;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = *(v3 + 1);
  if (v39)
  {
    v40 = static Color.accentColor.getter();
  }

  else
  {
    if (qword_10025A7C0 != -1)
    {
      swift_once();
    }

    v40 = qword_100277170;
  }

  KeyPath = swift_getKeyPath();
  v42 = v83;
  sub_10002A894(v21, v83, &qword_1002634F8, &qword_1001DAE88);
  v43 = (v42 + *(v76 + 36));
  *v43 = KeyPath;
  v43[1] = v40;
  v95[3] = &type metadata for SwiftUI;
  v95[4] = sub_100131370();
  v44 = isFeatureEnabled(_:)();
  sub_10000F4B4(v95);
  if ((v44 & 1) != 0 && (*(v3 + 40) & 1) == 0 && *(v3 + 41) == 1)
  {
    v45 = *(v3 + 32) * 0.5;
    v46 = v88;
  }

  else
  {
    v46 = v88;
    if (qword_10025A7B0 != -1)
    {
      swift_once();
    }

    v45 = *&qword_100277160;
  }

  v47 = *(v78 + 20);
  v48 = enum case for RoundedCornerStyle.continuous(_:);
  v49 = type metadata accessor for RoundedCornerStyle();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = v45;
  v46[1] = v45;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    if (v39)
    {
      static Color.accentColor.getter();
      v50 = Color.opacity(_:)();
    }

    else
    {
      v50 = *(v3 + 8);
      if (!v50)
      {
        if (qword_10025A7E8 != -1)
        {
          swift_once();
        }

        v50 = qword_100277198;
      }
    }

    type metadata accessor for PrimaryButtonStyle(0);
    v52 = v73;
    sub_10011F04C(v73);
    v51 = sub_100125700(v50, v52);

    (*(v74 + 8))(v52, v75);
  }

  else if (v39)
  {
    static Color.accentColor.getter();
    v51 = Color.opacity(_:)();
  }

  else
  {
    v51 = *(v3 + 8);
    if (!v51)
    {
      if (qword_10025A7E8 != -1)
      {
        swift_once();
      }

      v51 = qword_100277198;
    }
  }

  v53 = v90;
  sub_1001312E0(v46, v90, &type metadata accessor for RoundedRectangle);
  v54 = v87;
  *(v53 + *(v87 + 52)) = v51;
  *(v53 + *(v54 + 56)) = 256;
  v55 = v89;
  v56 = &v89[*(v86 + 36)];
  *v56 = 0;
  v57 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v56[v57] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  sub_10002A894(v53, v55, &unk_100263560, &unk_1001D1590);
  v58 = static Alignment.center.getter();
  v60 = v59;
  v61 = v82;
  v62 = &v82[*(v79 + 36)];
  sub_10002A894(v55, v62, &unk_10025E1E0, &qword_1001D39A0);
  v63 = (v62 + *(sub_10000341C(&unk_10025E1F0, &unk_1001D39E0) + 36));
  *v63 = v58;
  v63[1] = v60;
  sub_10002A894(v42, v61, &qword_100263570, &qword_1001DAF48);
  if (sub_10012B6C8())
  {
    v64 = 1.0;
  }

  else
  {
    v64 = 0.3;
  }

  v65 = v61;
  v66 = v80;
  sub_10002A894(v65, v80, &qword_100263578, &qword_1001DAF50);
  *(v66 + *(v81 + 36)) = v64;
  v67 = ButtonStyleConfiguration.isPressed.getter();
  v68 = v85;
  sub_10002A894(v66, v85, &qword_100263580, &qword_1001DAF58);
  v69 = v68 + *(v84 + 36);
  *v69 = 0;
  *(v69 + 8) = v67 & 1;
  v70 = v91;
  static CustomHoverEffect<>.automatic.getter();
  sub_100131588();
  sub_10013124C(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v71 = v94;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v93 + 8))(v70, v71);
  return sub_10000F500(v68, &unk_100263588, &qword_1001DAF60);
}

uint64_t sub_10012C3C4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v61 = a3;
  v57 = sub_10000341C(&qword_100263DD0, &qword_1001DBA58);
  __chkstk_darwin(v57);
  v58 = (&v49 - v4);
  v56 = sub_10000341C(&qword_100263DD8, &qword_1001DBA60);
  __chkstk_darwin(v56);
  v59 = &v49 - v5;
  v55 = type metadata accessor for ButtonStyleConfiguration.Label();
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_1002634F0, &qword_1001DAE80);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v50 = &v49 - v10;
  v11 = sub_10000341C(&qword_1002634F8, &qword_1001DAE88);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v49 - v13;
  v51 = sub_10000341C(&qword_100263DE0, &qword_1001DBA68);
  __chkstk_darwin(v51);
  v16 = &v49 - v15;
  v54 = sub_10000341C(&qword_100263DE8, &qword_1001DBA70);
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v49 = &v49 - v17;
  v18 = sub_10000341C(&qword_100263DF0, &qword_1001DBA78);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v60 = a1;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v22 = v50;
  (*(v53 + 32))(v50, v7, v55);
  v23 = &v22[*(v9 + 44)];
  v24 = v22;
  v25 = v67;
  *(v23 + 4) = v66;
  *(v23 + 5) = v25;
  *(v23 + 6) = v68;
  v26 = v63;
  *v23 = v62;
  *(v23 + 1) = v26;
  v27 = v65;
  *(v23 + 2) = v64;
  *(v23 + 3) = v27;
  LOBYTE(v22) = static Edge.Set.all.getter();
  sub_10002A894(v24, v14, &qword_1002634F0, &qword_1001DAE80);
  v28 = &v14[*(v12 + 44)];
  *v28 = v22;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  v29 = static Color.white.getter();
  sub_10002A894(v14, v16, &qword_1002634F8, &qword_1001DAE88);
  *&v16[*(v51 + 36)] = v29;
  static Font.Weight.semibold.getter();
  sub_100135120();
  v30 = v49;
  View.fontWeight(_:)();
  sub_10000F500(v16, &qword_100263DE0, &qword_1001DBA68);
  KeyPath = swift_getKeyPath();
  (*(v52 + 32))(v21, v30, v54);
  v32 = &v21[*(v19 + 44)];
  *v32 = KeyPath;
  v32[8] = 1;
  if (qword_10025A7B0 != -1)
  {
    swift_once();
  }

  v33 = qword_100277160;
  v34 = *(type metadata accessor for RoundedRectangle() + 20);
  v35 = enum case for RoundedCornerStyle.continuous(_:);
  v36 = type metadata accessor for RoundedCornerStyle();
  v37 = v58;
  (*(*(v36 - 8) + 104))(v58 + v34, v35, v36);
  *v37 = v33;
  v37[1] = v33;
  v38 = v57;
  TintShapeStyle.init()();
  *(v37 + *(v38 + 56)) = 256;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    v39 = 0.8;
  }

  else
  {
    v39 = 1.0;
  }

  v40 = v59;
  sub_10002A894(v37, v59, &qword_100263DD0, &qword_1001DBA58);
  *(v40 + *(v56 + 36)) = v39;
  v41 = static Alignment.center.getter();
  v43 = v42;
  v44 = sub_10000341C(&qword_100263E00, &qword_1001DBA80);
  v45 = v61;
  v46 = v61 + *(v44 + 36);
  sub_10002A894(v40, v46, &qword_100263DD8, &qword_1001DBA60);
  v47 = (v46 + *(sub_10000341C(&qword_100263E08, &qword_1001DBA88) + 36));
  *v47 = v41;
  v47[1] = v43;
  return sub_10002A894(v21, v45, &qword_100263DF0, &qword_1001DBA78);
}

uint64_t sub_10012CA84()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for UnevenCornerPrimaryButtonStyle(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000611E0(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_10012CBE4@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v64 = type metadata accessor for ColorScheme();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = (&v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = type metadata accessor for UnevenRoundedRectangle();
  __chkstk_darwin(v65);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10000341C(&qword_1002634E0, &qword_1001DAE70);
  __chkstk_darwin(v72);
  v5 = &v62 - v4;
  v71 = sub_10000341C(&qword_1002634E8, &qword_1001DAE78);
  __chkstk_darwin(v71);
  v73 = &v62 - v6;
  v7 = type metadata accessor for ButtonStyleConfiguration.Label();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000341C(&qword_1002634F0, &qword_1001DAE80);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v62 - v13;
  v15 = sub_10000341C(&qword_1002634F8, &qword_1001DAE88);
  __chkstk_darwin(v15);
  v70 = &v62 - v16;
  v66 = sub_10000341C(&qword_100263500, &qword_1001DAE90);
  __chkstk_darwin(v66);
  v69 = &v62 - v17;
  v68 = sub_10000341C(&qword_100263508, &qword_1001DAE98);
  __chkstk_darwin(v68);
  v67 = &v62 - v18;
  ButtonStyleConfiguration.label.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v8 + 32))(v14, v10, v7);
  v19 = &v14[*(v12 + 44)];
  v20 = v81;
  *(v19 + 4) = v80;
  *(v19 + 5) = v20;
  *(v19 + 6) = v82;
  v21 = v77;
  *v19 = v76;
  *(v19 + 1) = v21;
  v22 = v79;
  *(v19 + 2) = v78;
  *(v19 + 3) = v22;
  sub_10000341C(&unk_100263510, &qword_1001DAEA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9E0;
  LOBYTE(v7) = static Edge.Set.leading.getter();
  *(inited + 32) = v7;
  v24 = static Edge.Set.trailing.getter();
  *(inited + 33) = v24;
  v25 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v7)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v24)
  {
    v25 = Edge.Set.init(rawValue:)();
  }

  v26 = v70;
  EdgeInsets.init(_all:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_10002A894(v14, v26, &qword_1002634F0, &qword_1001DAE80);
  v35 = v26 + *(v15 + 36);
  *v35 = v25;
  *(v35 + 8) = v28;
  *(v35 + 16) = v30;
  *(v35 + 24) = v32;
  *(v35 + 32) = v34;
  *(v35 + 40) = 0;
  v36 = v74;
  if (*v74 == 1 && qword_10025A7B0 != -1)
  {
    swift_once();
  }

  if (v36[1] == 1 && qword_10025A7B0 != -1)
  {
    swift_once();
  }

  v37 = *(v65 + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(&v3[v37], v38, v39);
  RectangleCornerRadii.init(topLeft:topRight:bottomRight:bottomLeft:)();
  *v3 = v40;
  *(v3 + 1) = v41;
  *(v3 + 2) = v42;
  *(v3 + 3) = v43;
  if (ButtonStyleConfiguration.isPressed.getter())
  {
    type metadata accessor for UnevenCornerPrimaryButtonStyle(0);
    v44 = v62;
    sub_10011F04C(v62);
    if (qword_10025A7E8 != -1)
    {
      swift_once();
    }

    v45 = sub_100125700(qword_100277198, v44);
    (*(v63 + 8))(v44, v64);
  }

  else
  {
    if (qword_10025A7E8 != -1)
    {
      swift_once();
    }

    v45 = qword_100277198;
  }

  sub_1001312E0(v3, v5, &type metadata accessor for UnevenRoundedRectangle);
  v46 = v72;
  *&v5[*(v72 + 52)] = v45;
  *&v5[*(v46 + 56)] = 256;
  v47 = v73;
  v48 = &v73[*(v71 + 36)];
  *v48 = 0;
  v49 = *(type metadata accessor for CommonUIBlendModifier(0) + 20);
  *&v48[v49] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  sub_10002A894(v5, v47, &qword_1002634E0, &qword_1001DAE70);
  v50 = static Alignment.center.getter();
  v52 = v51;
  v53 = v69;
  v54 = &v69[*(v66 + 36)];
  sub_10002A894(v47, v54, &qword_1002634E8, &qword_1001DAE78);
  v55 = (v54 + *(sub_10000341C(&qword_100263520, &qword_1001DAEE0) + 36));
  *v55 = v50;
  v55[1] = v52;
  sub_10002A894(v26, v53, &qword_1002634F8, &qword_1001DAE88);
  if (sub_10012CA84())
  {
    v56 = 1.0;
  }

  else
  {
    v56 = 0.3;
  }

  v57 = v67;
  sub_10002A894(v53, v67, &qword_100263500, &qword_1001DAE90);
  *(v57 + *(v68 + 36)) = v56;
  v58 = ButtonStyleConfiguration.isPressed.getter();
  v59 = v75;
  sub_10002A894(v57, v75, &qword_100263508, &qword_1001DAE98);
  result = sub_10000341C(&qword_100263528, &qword_1001DAEE8);
  v61 = v59 + *(result + 36);
  *v61 = 0;
  *(v61 + 8) = v58 & 1;
  return result;
}

uint64_t sub_10012D520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27[1] = a2;
  v3 = sub_10000341C(&qword_100263B78, &qword_1001DB678);
  __chkstk_darwin(v3);
  v5 = v27 - v4;
  v6 = sub_10000341C(&qword_100263B80, &qword_1001DB680);
  __chkstk_darwin(v6);
  v8 = v27 - v7;
  v9 = sub_10000341C(&qword_100263B88, &qword_1001DB688);
  v10 = __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v27 - v13;
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 6)
  {
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v17 = sub_10000341C(&qword_100263B90, &qword_1001DB690);
    (*(*(v17 - 8) + 16))(v8, a1, v17);
    v18 = &v8[*(v6 + 36)];
    v19 = v33;
    *(v18 + 4) = v32;
    *(v18 + 5) = v19;
    *(v18 + 6) = v34;
    v20 = v29;
    *v18 = v28;
    *(v18 + 1) = v20;
    v21 = v31;
    *(v18 + 2) = v30;
    *(v18 + 3) = v21;
    v22 = static Font.title3.getter();
    KeyPath = swift_getKeyPath();
    sub_10002A894(v8, v12, &qword_100263B80, &qword_1001DB680);
    v24 = &v12[*(v9 + 36)];
    *v24 = KeyPath;
    v24[1] = v22;
    sub_10002A894(v12, v14, &qword_100263B88, &qword_1001DB688);
    sub_1000081F8(v14, v5, &qword_100263B88, &qword_1001DB688);
    swift_storeEnumTagMultiPayload();
    sub_100133F00();
    sub_100007120(&qword_100263BA8, &qword_100263B90, &qword_1001DB690, &protocol conformance descriptor for _ViewModifier_Content<A>);
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v14, &qword_100263B88, &qword_1001DB688);
  }

  else
  {
    v26 = sub_10000341C(&qword_100263B90, &qword_1001DB690);
    (*(*(v26 - 8) + 16))(v5, a1, v26);
    swift_storeEnumTagMultiPayload();
    sub_100133F00();
    sub_100007120(&qword_100263BA8, &qword_100263B90, &qword_1001DB690, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10012D930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = type metadata accessor for PreferredContentSizeModifier(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = v7;
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationPath();
  v10 = *(v9 - 8);
  v47 = v9;
  v48 = v10;
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000341C(&qword_100263468, &qword_1001DADD8);
  v43 = v13;
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  v16 = sub_10000341C(&qword_100263470, &qword_1001DADE0);
  v17 = *(v16 - 8);
  v49 = v16;
  v50 = v17;
  __chkstk_darwin(v16);
  v52 = &v40 - v18;
  v19 = sub_10000341C(&qword_100263478, &unk_1001DADE8);
  (*(*(v19 - 8) + 16))(v15, a1, v19);
  *&v15[*(v13 + 36)] = 256;
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v44 = v2;
  Binding.wrappedValue.getter();
  sub_100130728(v2, v8);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v45 = type metadata accessor for PreferredContentSizeModifier;
  sub_1001312E0(v8, v21 + v20, type metadata accessor for PreferredContentSizeModifier);
  v42 = sub_1001307A8();
  v41 = sub_10013124C(&qword_10025B3E0, &type metadata accessor for NavigationPath, &protocol conformance descriptor for NavigationPath);
  v22 = v43;
  v23 = v47;
  View.onChange<A>(of:initial:_:)();

  (*(v48 + 8))(v12, v23);
  sub_10000F500(v15, &qword_100263468, &qword_1001DADD8);
  v24 = v44;
  v25 = v44 + *(v5 + 40);
  v26 = *v25;
  v27 = *(v25 + 8);
  LOBYTE(v25) = *(v25 + 16);
  v53 = v26;
  v54 = v27;
  LOBYTE(v55) = v25;
  sub_10000341C(&qword_100262800, &qword_1001D9490);
  Binding.wrappedValue.getter();
  sub_100130728(v24, v8);
  v28 = swift_allocObject();
  v29 = v45;
  sub_1001312E0(v8, v28 + v20, v45);
  v53 = v22;
  v54 = v23;
  v55 = v42;
  v56 = v41;
  swift_getOpaqueTypeConformance2();
  v31 = v51;
  v30 = v52;
  v32 = v49;
  View.onChange<A>(of:initial:_:)();

  (*(v50 + 8))(v30, v32);
  sub_100130728(v24, v8);
  v33 = swift_allocObject();
  sub_1001312E0(v8, v33 + v20, v29);
  v34 = (v31 + *(sub_10000341C(&qword_100263490, &qword_1001DADF8) + 36));
  *v34 = sub_10012E374;
  v34[1] = 0;
  v34[2] = sub_100130A84;
  v34[3] = v33;
  sub_100130728(v24, v8);
  v35 = swift_allocObject();
  sub_1001312E0(v8, v35 + v20, v29);
  v36 = (v31 + *(sub_10000341C(&qword_100263498, &qword_1001DAE00) + 36));
  *v36 = sub_100130AF4;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  sub_100130728(v24, v8);
  v37 = swift_allocObject();
  sub_1001312E0(v8, v37 + v20, v29);
  result = sub_10000341C(&unk_1002634A0, &unk_1001DAE08);
  v39 = (v31 + *(result + 36));
  *v39 = 0;
  v39[1] = 0;
  v39[2] = sub_100130B0C;
  v39[3] = v37;
  return result;
}

void *sub_10012DF3C(uint64_t a1)
{
  v2 = type metadata accessor for PreferredContentSizeModifier(0);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NavigationPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + v2[12];
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v31 = v10;
  LOBYTE(v32) = v11;
  v33 = v12;
  sub_10000341C(&unk_1002634B0, &qword_1001DAE18);
  result = State.wrappedValue.getter();
  if ((v30 & 1) == 0)
  {
    v14 = v29;
    sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    Binding.wrappedValue.getter();
    v15 = NavigationPath.count.getter();
    result = (*(v6 + 8))(v8, v5);
    if (v15 < v14)
    {
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_10000F34C(v16, qword_100276FF8);
      sub_100130728(a1, v4);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        v21 = &v4[v2[9]];
        v22 = *v21;
        v23 = v21[1];

        sub_1001319FC(v4, type metadata accessor for PreferredContentSizeModifier);
        v24 = sub_10002510C(v22, v23, &v31);

        *(v19 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v17, v18, "navigating back %s", v19, 0xCu);
        sub_10000F4B4(v20);
      }

      else
      {

        sub_1001319FC(v4, type metadata accessor for PreferredContentSizeModifier);
      }

      v25 = (a1 + v2[13]);
      v26 = *v25;
      v27 = *(v25 + 1);
      LOBYTE(v31) = v26;
      v32 = v27;
      LOBYTE(v29) = 1;
      sub_10000341C(&unk_1002640F0, &qword_1001D3490);
      return State.wrappedValue.setter();
    }
  }

  return result;
}

void *sub_10012E290(uint64_t a1)
{
  type metadata accessor for PreferredContentSizeModifier(0);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  result = State.wrappedValue.getter();
  if (v3 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = result;
      sub_10000341C(&qword_100262800, &qword_1001D9490);
      Binding.wrappedValue.getter();
      [v2 setFeedbackHiddenDetentEnabled:v3];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10012E374(void *a2@<X8>)
{
  GeometryProxy.size.getter();
  *a2 = v3;
  a2[1] = v4;
}

void *sub_10012E3A0(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for PreferredContentSizeModifier(0);
  __chkstk_darwin(v4);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a1;
  v12 = a1[1];
  if (*(a2 + 8) == 1)
  {
    v13 = [objc_opt_self() currentTraitCollection];
    v14 = [v13 userInterfaceIdiom];

    v15 = 70.0;
    if (v14 == 6)
    {
      v15 = 92.0;
    }

    if (v14 == 1)
    {
      v15 = 50.0;
    }

    v12 = v12 + v15;
  }

  v16 = (a2 + v4[10]);
  v17 = *(v16 + 2);
  v43 = *v16;
  v44 = v17;
  v41 = v11;
  v42 = v12;
  sub_10000341C(&qword_1002634C0, &qword_1001DAE28);
  State.wrappedValue.setter();
  v18 = a2 + v4[14];
  v19 = *v18;
  v20 = *(v18 + 8);

  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v19, 0);
    (*(v8 + 8))(v10, v7);
    v19 = v43;
  }

  if (v19)
  {
    if (*(v19 + 64) == v11 && *(v19 + 72) == v12)
    {
      *(v19 + 64) = v11;
      *(v19 + 72) = v12;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v40[-32] = v19;
      *&v40[-24] = v11;
      *&v40[-16] = v12;
      *&v43 = v19;
      sub_10013124C(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v24 = (a2 + v4[11]);
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v43) = v25;
  *(&v43 + 1) = v26;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  result = State.wrappedValue.getter();
  if (LOBYTE(v41) == 1)
  {
    v28 = (a2 + v4[13]);
    v29 = *v28;
    v30 = *(v28 + 1);
    LOBYTE(v43) = v29;
    *(&v43 + 1) = v30;
    result = State.wrappedValue.getter();
    if ((LOBYTE(v41) & 1) == 0)
    {
      if (qword_10025A730 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_10000F34C(v31, qword_100276FF8);
      sub_100130728(a2, v6);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v43 = v35;
        *v34 = 134218242;
        *(v34 + 4) = v12;
        *(v34 + 12) = 2080;
        v36 = &v6[v4[9]];
        v37 = *v36;
        v38 = v36[1];

        sub_1001319FC(v6, type metadata accessor for PreferredContentSizeModifier);
        v39 = sub_10002510C(v37, v38, &v43);

        *(v34 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v32, v33, "onGeometryChange  preferredContentSizeChanged %f from %s", v34, 0x16u);
        sub_10000F4B4(v35);
      }

      else
      {

        sub_1001319FC(v6, type metadata accessor for PreferredContentSizeModifier);
      }

      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        [result preferredContentSizeChanged:{v11, v12}];
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_10012E910(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v58 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for DispatchQoS();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PreferredContentSizeModifier(0);
  v50 = *(v5 - 8);
  __chkstk_darwin(v5);
  v51 = v6;
  v52 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchTimeInterval();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v54 = *(v8 - 8);
  v55 = v8;
  v9 = __chkstk_darwin(v8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v53 = &v44 - v11;
  v12 = type metadata accessor for NavigationPath();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v19 = *(v5 + 48);
  v62 = a1;
  v20 = a1 + v19;
  v21 = *v20;
  v22 = *(v20 + 8);
  v23 = *(v20 + 16);
  aBlock = *v20;
  LOBYTE(v64) = v22;
  v65 = v23;
  sub_10000341C(&unk_1002634B0, &qword_1001DAE18);
  State.wrappedValue.getter();
  if (v70 == 1)
  {
    sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    Binding.wrappedValue.getter();
    v24 = NavigationPath.count.getter();
    (*(v13 + 8))(v18, v12);
    aBlock = v21;
    LOBYTE(v64) = v22;
    v65 = v23;
    v69 = v24;
    v70 = 0;
    State.wrappedValue.setter();
  }

  aBlock = v21;
  LOBYTE(v64) = v22;
  v65 = v23;
  State.wrappedValue.getter();
  v25 = v69;
  v26 = v70;
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v27 = v62;
  Binding.wrappedValue.getter();
  v28 = NavigationPath.count.getter();
  result = (*(v13 + 8))(v16, v12);
  if ((v26 & 1) == 0 && v25 == v28)
  {
    sub_1000081B0(0, &qword_10025D5D0, OS_dispatch_queue_ptr);
    v45 = static OS_dispatch_queue.main.getter();
    v30 = v46;
    static DispatchTime.now()();
    v31 = v47;
    *v47 = 200;
    v32 = v48;
    v33 = v49;
    (*(v48 + 104))(v31, enum case for DispatchTimeInterval.milliseconds(_:), v49);
    v34 = v53;
    + infix(_:_:)();
    (*(v32 + 8))(v31, v33);
    v35 = v55;
    v54 = *(v54 + 8);
    (v54)(v30, v55);
    v36 = v52;
    sub_100130728(v27, v52);
    v37 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v38 = swift_allocObject();
    sub_1001312E0(v36, v38 + v37, type metadata accessor for PreferredContentSizeModifier);
    v67 = sub_10013121C;
    v68 = v38;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_1001256BC;
    v66 = &unk_10024F6D0;
    v39 = _Block_copy(&aBlock);

    v40 = v56;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10013124C(&unk_100262460, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000341C(&unk_10025D5E0, &qword_1001DAE20);
    sub_100007120(&qword_100262470, &unk_10025D5E0, &qword_1001DAE20, &protocol conformance descriptor for [A]);
    v41 = v58;
    v42 = v61;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v43 = v45;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v39);

    (*(v60 + 8))(v41, v42);
    (*(v57 + 8))(v40, v59);
    return (v54)(v34, v35);
  }

  return result;
}

void *sub_10012F098(uint64_t a1)
{
  v2 = type metadata accessor for PreferredContentSizeModifier(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v36 - v7;
  v9 = (a1 + *(v6 + 44));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v40) = v10;
  *(&v40 + 1) = v11;
  LOBYTE(v38) = 1;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.setter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong enableSmallDetent:*(a1 + 9)];
    swift_unknownObjectRelease();
  }

  v13 = type metadata accessor for FeedbackFeatureFlags();
  v42 = v13;
  v43 = sub_10013124C(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags, &protocol conformance descriptor for FeedbackFeatureFlags);
  v14 = sub_10002DB6C(&v40);
  (*(*(v13 - 8) + 104))(v14, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v13);
  LOBYTE(v13) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v40);
  if (v13)
  {
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      if ([v15 respondsToSelector:"setFeedbackHiddenDetentEnabled:"])
      {
        v17 = (a1 + v2[8]);
        v18 = *v17;
        v19 = v17[1];
        LOBYTE(v17) = *(v17 + 16);
        *&v40 = v18;
        *(&v40 + 1) = v19;
        LOBYTE(v41) = v17;
        sub_10000341C(&qword_100262800, &qword_1001D9490);
        Binding.wrappedValue.getter();
        [v16 setFeedbackHiddenDetentEnabled:LOBYTE(v38)];
      }

      swift_unknownObjectRelease();
    }
  }

  if (qword_10025A730 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000F34C(v20, qword_100276FF8);
  sub_100130728(a1, v8);
  sub_100130728(a1, v5);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v37 = v24;
    *v23 = 134218242;
    v25 = &v8[v2[10]];
    v26 = *(v25 + 2);
    v40 = *v25;
    v41 = v26;
    sub_10000341C(&qword_1002634C0, &qword_1001DAE28);
    State.wrappedValue.getter();
    v27 = v39;
    sub_1001319FC(v8, type metadata accessor for PreferredContentSizeModifier);
    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    v28 = &v5[v2[9]];
    v29 = *v28;
    v30 = v28[1];

    sub_1001319FC(v5, type metadata accessor for PreferredContentSizeModifier);
    v31 = sub_10002510C(v29, v30, &v37);

    *(v23 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v21, v22, " onAppear  preferredContentSizeChanged%f from %s", v23, 0x16u);
    sub_10000F4B4(v24);
  }

  else
  {

    sub_1001319FC(v5, type metadata accessor for PreferredContentSizeModifier);
    sub_1001319FC(v8, type metadata accessor for PreferredContentSizeModifier);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v33 = result;
    v34 = (a1 + v2[10]);
    v35 = *(v34 + 2);
    v40 = *v34;
    v41 = v35;
    sub_10000341C(&qword_1002634C0, &qword_1001DAE28);
    State.wrappedValue.getter();
    [v33 preferredContentSizeChanged:{v38, v39}];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10012F518(uint64_t a1)
{
  v2 = type metadata accessor for PreferredContentSizeModifier(0);
  __chkstk_darwin(v2);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10025A730 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F34C(v5, qword_100276FF8);
  sub_100130728(a1, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315138;
    v10 = &v4[*(v2 + 36)];
    v11 = *v10;
    v12 = v10[1];

    sub_1001319FC(v4, type metadata accessor for PreferredContentSizeModifier);
    v13 = sub_10002510C(v11, v12, v19);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "onDisappear %s", v8, 0xCu);
    sub_10000F4B4(v9);
  }

  else
  {

    sub_1001319FC(v4, type metadata accessor for PreferredContentSizeModifier);
  }

  v14 = (a1 + *(v2 + 44));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v19[0]) = v15;
  v19[1] = v16;
  v18[15] = 0;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  return State.wrappedValue.setter();
}

uint64_t sub_10012F758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100263450, &qword_1001DADC0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = (a2 + *(sub_10000341C(&qword_100263458, &qword_1001DADC8) + 44));
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v9(v8, v7, v4);
  v10 = &v8[*(sub_10000341C(&qword_100263460, &qword_1001DADD0) + 48)];
  *v10 = 0;
  v10[8] = 1;
  *(v10 + 2) = 0x3FF0000000000000;
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10012F8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v3 = sub_10000341C(&qword_100263E10, &qword_1001DBA90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - v5;
  v7 = sub_10000341C(&qword_100263E18, &qword_1001DBA98);
  __chkstk_darwin(v7);
  v9 = &v42 - v8;
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v9[*(sub_10000341C(&qword_100263E20, &qword_1001DBAA0) + 44)];
  v11 = *(v4 + 16);
  v11(v6, v43, v3);
  v11(v10, v6, v3);
  v12 = &v10[*(sub_10000341C(&qword_100263E28, &qword_1001DBAA8) + 48)];
  *v12 = 0;
  v12[8] = 1;
  (*(v4 + 8))(v6, v3);
  static Font.Weight.semibold.getter();
  sub_100007120(&qword_100263E30, &qword_100263E18, &qword_1001DBA98, &protocol conformance descriptor for HStack<A>);
  View.fontWeight(_:)();
  sub_10000F500(v9, &qword_100263E18, &qword_1001DBA98);
  if (qword_10025A7C0 != -1)
  {
    swift_once();
  }

  v13 = qword_100277170;
  *(a2 + *(sub_10000341C(&qword_100263E38, &qword_1001DBAB0) + 36)) = v13;

  LOBYTE(v13) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = a2 + *(sub_10000341C(&qword_100263E40, &qword_1001DBAB8) + 36);
  *v22 = v13;
  *(v22 + 8) = v15;
  *(v22 + 16) = v17;
  *(v22 + 24) = v19;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  LOBYTE(v13) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = a2 + *(sub_10000341C(&qword_100263E48, &qword_1001DBAC0) + 36);
  *v31 = v13;
  *(v31 + 8) = v24;
  *(v31 + 16) = v26;
  *(v31 + 24) = v28;
  *(v31 + 32) = v30;
  *(v31 + 40) = 0;
  LOBYTE(v13) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  result = sub_10000341C(&qword_100263E50, &qword_1001DBAC8);
  v41 = a2 + *(result + 36);
  *v41 = v13;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_10012FC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = type metadata accessor for BlendMode();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2 == 1)
  {
    (*(v13 + 104))(v15, enum case for BlendMode.normal(_:), v12);
  }

  else
  {
    v23 = a1;
    type metadata accessor for CommonUIBlendModifier(0);
    sub_10011F04C(v11);
    (*(v6 + 104))(v9, enum case for ColorScheme.dark(_:), v5);
    v16 = static ColorScheme.== infix(_:_:)();
    v17 = *(v6 + 8);
    v17(v9, v5);
    v17(v11, v5);
    if (v16)
    {
      v18 = &enum case for BlendMode.plusLighter(_:);
    }

    else
    {
      v18 = &enum case for BlendMode.plusDarker(_:);
    }

    (*(v13 + 104))(v15, *v18, v12);
    a1 = v23;
  }

  v19 = sub_10000341C(&qword_100263BF8, &qword_1001DB6E0);
  (*(v13 + 32))(a2 + *(v19 + 36), v15, v12);
  v20 = sub_10000341C(&qword_100263C00, &qword_1001DB6E8);
  return (*(*(v20 - 8) + 16))(a2, a1, v20);
}

uint64_t sub_10012FF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100263BB0, &qword_1001DB698);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10012FF9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&unk_1002637B0, &qword_1001D8498);
  __chkstk_darwin(v2);
  v4 = &v18 - v3;
  v5 = enum case for DynamicTypeSize.accessibility1(_:);
  v6 = type metadata accessor for DynamicTypeSize();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  sub_10013124C(&qword_100261E90, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_10000341C(&qword_1002637C0, &qword_1001DB180);
    sub_100007120(&qword_1002637C8, &qword_1002637C0, &qword_1001DB180, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&qword_1002637D0, &unk_1002637B0, &qword_1001D8498, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_10000F500(v4, &unk_1002637B0, &qword_1001D8498);
    v8 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    result = sub_10000341C(&qword_1002637D8, &qword_1001DB188);
    v17 = a1 + *(result + 36);
    *v17 = v8;
    *(v17 + 8) = v10;
    *(v17 + 16) = v12;
    *(v17 + 24) = v14;
    *(v17 + 32) = v16;
    *(v17 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100130208@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v6 = sub_10000341C(a2, a3);
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_100130278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_10000341C(&qword_1002637A0, &qword_1001DB168);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  result = sub_10000341C(&qword_1002637A8, &unk_1001DB170);
  v15 = a2 + *(result + 36);
  *v15 = v4;
  *(v15 + 8) = v6;
  *(v15 + 16) = v8;
  *(v15 + 24) = v10;
  *(v15 + 32) = v12;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_100130348(uint64_t a1)
{
  v2 = sub_10000341C(&qword_100263760, &qword_1001DB108);
  __chkstk_darwin(v2);
  v4 = &v17 - v3;
  v5 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_10000341C(&qword_100263768, &qword_1001DB110);
  (*(*(v14 - 8) + 16))(v4, a1, v14);
  v15 = &v4[*(v2 + 36)];
  *v15 = v5;
  *(v15 + 1) = v7;
  *(v15 + 2) = v9;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  v15[40] = 0;
  sub_100132038();
  View.bold(_:)();
  return sub_10000F500(v4, &qword_100263760, &qword_1001DB108);
}

uint64_t sub_1001304A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v6 = sub_10000341C(&qword_1002637E0, &qword_1001DB190);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_10000341C(&unk_1002637E8, &qword_1001DB198);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v4;
  return result;
}

uint64_t sub_100130728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreferredContentSizeModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001307A8()
{
  result = qword_100263480;
  if (!qword_100263480)
  {
    sub_100003E34(&qword_100263468, &qword_1001DADD8);
    sub_100007120(&qword_100263488, &qword_100263478, &unk_1001DADE8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263480);
  }

  return result;
}

uint64_t sub_100130860()
{
  v1 = (type metadata accessor for PreferredContentSizeModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectWeakDestroy();
  v5 = v0 + v3 + v1[9];

  v6 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v7 = type metadata accessor for NavigationPath();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  j__swift_release(*(v0 + v3 + v1[16]), *(v0 + v3 + v1[16] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100130A10(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PreferredContentSizeModifier(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void *sub_100130A84(double *a1)
{
  v3 = *(type metadata accessor for PreferredContentSizeModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10012E3A0(a1, v4);
}

uint64_t sub_100130B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Font.Design();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = static Font.system(size:weight:design:)();
  sub_10000F500(v6, &qword_10025C5D0, &qword_1001D15A0);
  KeyPath = swift_getKeyPath();
  v10 = sub_10000341C(&qword_100263D48, &qword_1001DB900);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  result = sub_10000341C(&qword_100263D50, &qword_1001DB908);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v8;
  return result;
}

uint64_t sub_100130CA4@<X0>(char a1@<W1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v24[1] = a2;
  v24[0] = sub_10000341C(&qword_100263D20, &qword_1001DB8E0);
  __chkstk_darwin(v24[0]);
  v6 = v24 - v5;
  v7 = type metadata accessor for PrimaryButtonStyle(0);
  __chkstk_darwin(v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000341C(&qword_100263D28, &qword_1001DB8E8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - v12;
  if (a1)
  {
    v14 = static Color.clear.getter();
    KeyPath = swift_getKeyPath();
    *v9 = 0;
    *(v9 + 1) = v14;
    *(v9 + 2) = a3;
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    *(v9 + 20) = 1;
    v16 = *(v7 + 40);
    *&v9[v16] = swift_getKeyPath();
    sub_10000341C(&qword_100262940, &unk_1001D0560);
    swift_storeEnumTagMultiPayload();
    v17 = &v9[*(v7 + 44)];
    *v17 = KeyPath;
  }

  else
  {
    v21 = swift_getKeyPath();
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = a3;
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    *(v9 + 20) = 1;
    v22 = *(v7 + 40);
    *&v9[v22] = swift_getKeyPath();
    sub_10000341C(&qword_100262940, &unk_1001D0560);
    swift_storeEnumTagMultiPayload();
    v17 = &v9[*(v7 + 44)];
    *v17 = v21;
  }

  v17[8] = 0;
  v18 = sub_10000341C(&qword_100263D30, &qword_1001DB8F0);
  v19 = sub_100007120(&qword_100263D38, &qword_100263D30, &qword_1001DB8F0, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v20 = sub_10013124C(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle, &unk_1001DABD8);
  View.buttonStyle<A>(_:)();
  sub_1001319FC(v9, type metadata accessor for PrimaryButtonStyle);
  (*(v11 + 16))(v6, v13, v10);
  swift_storeEnumTagMultiPayload();
  v24[2] = v18;
  v24[3] = v7;
  v24[4] = v19;
  v24[5] = v20;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v11 + 8))(v13, v10);
}

__n128 sub_10013114C@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10013124C(&qword_10025A910, type metadata accessor for PresentationModel, &protocol conformance descriptor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = v3[4];
  *a2 = result;
  return result;
}

uint64_t sub_100131234(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10013124C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001312E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100131370()
{
  result = qword_100263530;
  if (!qword_100263530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263530);
  }

  return result;
}

uint64_t sub_1001313C4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100131464(uint64_t a1)
{
  v2 = type metadata accessor for Image.Scale();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.imageScale.setter();
}

uint64_t sub_100131530@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100131588()
{
  result = qword_100263598;
  if (!qword_100263598)
  {
    sub_100003E34(&unk_100263588, &qword_1001DAF60);
    sub_100131640();
    sub_100007120(&qword_1002635E8, &qword_1002635F0, &qword_1001DAFA8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263598);
  }

  return result;
}

unint64_t sub_100131640()
{
  result = qword_1002635A0;
  if (!qword_1002635A0)
  {
    sub_100003E34(&qword_100263580, &qword_1001DAF58);
    sub_1001316CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002635A0);
  }

  return result;
}

unint64_t sub_1001316CC()
{
  result = qword_1002635A8;
  if (!qword_1002635A8)
  {
    sub_100003E34(&qword_100263578, &qword_1001DAF50);
    sub_100131784();
    sub_100007120(&qword_1002635E0, &unk_10025E1F0, &unk_1001D39E0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002635A8);
  }

  return result;
}

unint64_t sub_100131784()
{
  result = qword_1002635B0;
  if (!qword_1002635B0)
  {
    sub_100003E34(&qword_100263570, &qword_1001DAF48);
    sub_10013183C();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002635B0);
  }

  return result;
}

unint64_t sub_10013183C()
{
  result = qword_1002635B8;
  if (!qword_1002635B8)
  {
    sub_100003E34(&qword_1002634F8, &qword_1001DAE88);
    sub_100133750(&unk_1002635C0, &qword_1002634F0, &qword_1001DAE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002635B8);
  }

  return result;
}

unint64_t sub_1001318F0()
{
  result = qword_100263630;
  if (!qword_100263630)
  {
    sub_100003E34(&qword_100263608, &qword_1001DAFB8);
    sub_100007120(&qword_100263638, &qword_100263628, &qword_1001DAFD8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1001319A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263630);
  }

  return result;
}

unint64_t sub_1001319A8()
{
  result = qword_100263640;
  if (!qword_100263640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263640);
  }

  return result;
}

uint64_t sub_1001319FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100131A6C()
{
  result = qword_100263688;
  if (!qword_100263688)
  {
    sub_100003E34(&qword_100263660, &qword_1001DB018);
    sub_100131B24();
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263688);
  }

  return result;
}

unint64_t sub_100131B24()
{
  result = qword_100263690;
  if (!qword_100263690)
  {
    sub_100003E34(&qword_100263680, &qword_1001DB068);
    sub_100131BDC();
    sub_100007120(&unk_1002635D0, &qword_10025CA90, &qword_1001DAFA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263690);
  }

  return result;
}

unint64_t sub_100131BDC()
{
  result = qword_100263698;
  if (!qword_100263698)
  {
    sub_100003E34(&qword_100263678, &qword_1001DB060);
    sub_100007120(&unk_1002636A0, &qword_100263670, &qword_1001DB058, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263698);
  }

  return result;
}

unint64_t sub_100131CC0()
{
  result = qword_1002636E8;
  if (!qword_1002636E8)
  {
    sub_100003E34(&qword_1002636D8, &qword_1001DB0B0);
    sub_10013124C(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002636E8);
  }

  return result;
}

unint64_t sub_100131DA8()
{
  result = qword_100263728;
  if (!qword_100263728)
  {
    sub_100003E34(&qword_100263708, &qword_1001DB0D8);
    sub_100131E60();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263728);
  }

  return result;
}

unint64_t sub_100131E60()
{
  result = qword_100263730;
  if (!qword_100263730)
  {
    sub_100003E34(&qword_100263720, &unk_1001DB0F0);
    sub_100007120(&qword_100263738, &qword_100263718, &qword_1001DB0E8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263730);
  }

  return result;
}

unint64_t sub_100131F44()
{
  result = qword_100263740;
  if (!qword_100263740)
  {
    sub_100003E34(&qword_100263710, &qword_1001DB0E0);
    sub_100003E34(&qword_100263708, &qword_1001DB0D8);
    sub_100131DA8();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263740);
  }

  return result;
}

unint64_t sub_100132038()
{
  result = qword_100263770;
  if (!qword_100263770)
  {
    sub_100003E34(&qword_100263760, &qword_1001DB108);
    sub_100007120(&qword_100263778, &qword_100263768, &qword_1001DB110, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263770);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SwiftUI(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SwiftUI(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 sub_1001321F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10013220C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100132254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001322F8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100003E34(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10013235C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1001323D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001324A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_10025B3F0, &qword_1001CFD60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100132578(uint64_t a1)
{
  sub_1001322F8(319, &unk_100263860, &unk_10025B1D0, &qword_1001D31D0, &type metadata accessor for Binding);
  if (v1 <= 0x3F)
  {
    sub_10013235C(319, &qword_10025B480, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10013267C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_10013274C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001327F8(uint64_t a1)
{
  sub_10013235C(319, qword_10025D910, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1001328FC()
{
  result = qword_1002639C0;
  if (!qword_1002639C0)
  {
    sub_100003E34(&unk_1002634A0, &unk_1001DAE08);
    sub_100132988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002639C0);
  }

  return result;
}

unint64_t sub_100132988()
{
  result = qword_1002639C8;
  if (!qword_1002639C8)
  {
    sub_100003E34(&qword_100263498, &qword_1001DAE00);
    sub_100132A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002639C8);
  }

  return result;
}

unint64_t sub_100132A14()
{
  result = qword_1002639D0;
  if (!qword_1002639D0)
  {
    sub_100003E34(&qword_100263490, &qword_1001DADF8);
    sub_100003E34(&qword_100263470, &qword_1001DADE0);
    sub_100003E34(&qword_100263468, &qword_1001DADD8);
    type metadata accessor for NavigationPath();
    sub_1001307A8();
    sub_10013124C(&qword_10025B3E0, &type metadata accessor for NavigationPath, &protocol conformance descriptor for NavigationPath);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&qword_1002639D8, &qword_1002639E0, &qword_1001DB2C8, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002639D0);
  }

  return result;
}

unint64_t sub_100132BA8()
{
  result = qword_1002639E8;
  if (!qword_1002639E8)
  {
    sub_100003E34(&qword_1002634D0, &qword_1001DAE60);
    sub_100007120(&qword_1002639F0, &qword_1002634C8, &qword_1001DAE58, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002639E8);
  }

  return result;
}

unint64_t sub_100132CA8()
{
  result = qword_100263A00;
  if (!qword_100263A00)
  {
    sub_100003E34(&qword_100263528, &qword_1001DAEE8);
    sub_100132D60();
    sub_100007120(&qword_1002635E8, &qword_1002635F0, &qword_1001DAFA8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A00);
  }

  return result;
}

unint64_t sub_100132D60()
{
  result = qword_100263A08;
  if (!qword_100263A08)
  {
    sub_100003E34(&qword_100263508, &qword_1001DAE98);
    sub_100132DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A08);
  }

  return result;
}

unint64_t sub_100132DEC()
{
  result = qword_100263A10;
  if (!qword_100263A10)
  {
    sub_100003E34(&qword_100263500, &qword_1001DAE90);
    sub_10013183C();
    sub_100007120(&qword_100263A18, &qword_100263520, &qword_1001DAEE0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A10);
  }

  return result;
}

uint64_t sub_100132EE8()
{
  sub_100003E34(&unk_100263588, &qword_1001DAF60);
  type metadata accessor for AutomaticHoverEffect();
  sub_100131588();
  sub_10013124C(&qword_1002635F8, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100132FA0()
{
  result = qword_100263A30;
  if (!qword_100263A30)
  {
    sub_100003E34(&qword_100263A38, &qword_1001DB2D8);
    sub_100003E34(&qword_100263610, &qword_1001DAFC0);
    sub_100003E34(&qword_100263608, &qword_1001DAFB8);
    type metadata accessor for PrimaryButtonStyle(255);
    sub_1001318F0();
    sub_10013124C(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle, &unk_1001DABD8);
    swift_getOpaqueTypeConformance2();
    sub_1000492B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A30);
  }

  return result;
}

unint64_t sub_10013310C()
{
  result = qword_100263A40;
  if (!qword_100263A40)
  {
    sub_100003E34(&qword_1002636C8, &qword_1001DB0A0);
    sub_100003E34(&qword_100263660, &qword_1001DB018);
    sub_100131A6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A40);
  }

  return result;
}

unint64_t sub_1001331D8()
{
  result = qword_100263A48;
  if (!qword_100263A48)
  {
    sub_100003E34(&qword_1002636F8, &qword_1001DB0C8);
    sub_100133290();
    sub_100007120(&qword_100263A60, &qword_100263700, &qword_1001DB0D0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A48);
  }

  return result;
}

unint64_t sub_100133290()
{
  result = qword_100263A50;
  if (!qword_100263A50)
  {
    sub_100003E34(&qword_1002636E0, &qword_1001DB0B8);
    sub_10013331C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A50);
  }

  return result;
}

unint64_t sub_10013331C()
{
  result = qword_100263A58;
  if (!qword_100263A58)
  {
    sub_100003E34(&qword_1002636F0, &qword_1001DB0C0);
    sub_100003E34(&qword_1002636D8, &qword_1001DB0B0);
    sub_100131CC0();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A58);
  }

  return result;
}

unint64_t sub_100133414()
{
  result = qword_100263A68;
  if (!qword_100263A68)
  {
    sub_100003E34(&unk_100263A70, qword_1001DB2E0);
    sub_100131F44();
    sub_10013124C(&qword_10025DAA0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A68);
  }

  return result;
}

uint64_t sub_100133514()
{
  sub_100003E34(&qword_100263760, &qword_1001DB108);
  sub_100132038();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1001335C0()
{
  result = qword_100263A90;
  if (!qword_100263A90)
  {
    sub_100003E34(&qword_100263798, &qword_1001DB160);
    sub_100133678();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A90);
  }

  return result;
}

unint64_t sub_100133678()
{
  result = qword_100263A98;
  if (!qword_100263A98)
  {
    sub_100003E34(&qword_100263790, &qword_1001DB128);
    sub_100133750(&qword_100263AA0, &qword_100260C08, &qword_1001D5F90);
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263A98);
  }

  return result;
}

uint64_t sub_100133750(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    sub_10013124C(&qword_10025DC18, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001337FC()
{
  result = qword_100263AA8;
  if (!qword_100263AA8)
  {
    sub_100003E34(&qword_1002637A8, &unk_1001DB170);
    sub_100007120(&qword_100263AB0, &qword_1002637A0, &qword_1001DB168, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AA8);
  }

  return result;
}

unint64_t sub_1001338B8()
{
  result = qword_100263AB8;
  if (!qword_100263AB8)
  {
    sub_100003E34(&qword_1002637D8, &qword_1001DB188);
    sub_100003E34(&qword_1002637C0, &qword_1001DB180);
    sub_100003E34(&unk_1002637B0, &qword_1001D8498);
    sub_100007120(&qword_1002637C8, &qword_1002637C0, &qword_1001DB180, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&qword_1002637D0, &unk_1002637B0, &qword_1001D8498, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AB8);
  }

  return result;
}

unint64_t sub_100133A18()
{
  result = qword_100263AC0;
  if (!qword_100263AC0)
  {
    sub_100003E34(&unk_1002637E8, &qword_1001DB198);
    sub_100007120(&qword_100263AC8, &qword_1002637E0, &qword_1001DB190, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AC0);
  }

  return result;
}

unint64_t sub_100133B00()
{
  result = qword_100263AD0;
  if (!qword_100263AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AD0);
  }

  return result;
}

unint64_t sub_100133B74()
{
  result = qword_100263AD8;
  if (!qword_100263AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263AD8);
  }

  return result;
}

unint64_t sub_100133C5C()
{
  result = qword_100263B50;
  if (!qword_100263B50)
  {
    sub_100003E34(&qword_100263B08, &qword_1001DB5F8);
    sub_100133D14();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263B50);
  }

  return result;
}

unint64_t sub_100133D14()
{
  result = qword_100263B58;
  if (!qword_100263B58)
  {
    sub_100003E34(&qword_100263B48, &qword_1001DB638);
    sub_100133DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263B58);
  }

  return result;
}

unint64_t sub_100133DA0()
{
  result = qword_100263B60;
  if (!qword_100263B60)
  {
    sub_100003E34(&qword_100263B40, &qword_1001DB630);
    sub_10013124C(&qword_100263B68, &type metadata accessor for LabelStyleConfiguration.Title, &protocol conformance descriptor for LabelStyleConfiguration.Title);
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263B60);
  }

  return result;
}

uint64_t sub_100133E90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100263B10, &qword_1001DB600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100133F00()
{
  result = qword_100263B98;
  if (!qword_100263B98)
  {
    sub_100003E34(&qword_100263B88, &qword_1001DB688);
    sub_100133FB8();
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263B98);
  }

  return result;
}

unint64_t sub_100133FB8()
{
  result = qword_100263BA0;
  if (!qword_100263BA0)
  {
    sub_100003E34(&qword_100263B80, &qword_1001DB680);
    sub_100007120(&qword_100263BA8, &qword_100263B90, &qword_1001DB690, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263BA0);
  }

  return result;
}

uint64_t sub_100134070(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 49, 7);
}

uint64_t sub_1001340B8()
{
  v1 = type metadata accessor for GeometryProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100134184()
{
  type metadata accessor for GeometryProxy();

  return sub_10012AD3C((v0 + 16));
}

uint64_t getEnumTagSinglePayload for RewritingViewButtonViewModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RewritingViewButtonViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001342C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1001343B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_10025D8A0, &unk_1001D2B90);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_100134494(uint64_t a1)
{
  sub_10013235C(319, qword_10025D910, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10013453C()
{
  result = qword_100263C98;
  if (!qword_100263C98)
  {
    sub_100003E34(&qword_100263B00, &qword_1001DB5F0);
    sub_1001345C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263C98);
  }

  return result;
}

unint64_t sub_1001345C8()
{
  result = qword_100263CA0;
  if (!qword_100263CA0)
  {
    sub_100003E34(&unk_100263AF0, &qword_1001DB5B0);
    sub_100134654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CA0);
  }

  return result;
}

unint64_t sub_100134654()
{
  result = qword_100263CA8;
  if (!qword_100263CA8)
  {
    sub_100003E34(&qword_100263AE8, &qword_1001DB5A8);
    sub_100007120(&qword_100263CB0, &qword_100263AE0, &qword_1001DB5A0, &unk_1001DCEDC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CA8);
  }

  return result;
}

unint64_t sub_100134710()
{
  result = qword_100263CB8;
  if (!qword_100263CB8)
  {
    sub_100003E34(&qword_100263CC0, &qword_1001DB7A8);
    sub_100133F00();
    sub_100007120(&qword_100263BA8, &qword_100263B90, &qword_1001DB690, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CB8);
  }

  return result;
}

unint64_t sub_100134810()
{
  result = qword_100263CD0;
  if (!qword_100263CD0)
  {
    sub_100003E34(&qword_100263BC0, &qword_1001DB6A8);
    sub_100007120(&qword_100263CD8, &qword_100263BB8, &qword_1001DB6A0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&qword_100263CE0, &qword_100263CE8, &qword_1001DB7B0, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CD0);
  }

  return result;
}

unint64_t sub_1001348F8()
{
  result = qword_100263CF0;
  if (!qword_100263CF0)
  {
    sub_100003E34(&qword_100263BE8, &qword_1001DB6D0);
    sub_100134984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CF0);
  }

  return result;
}

unint64_t sub_100134984()
{
  result = qword_100263CF8;
  if (!qword_100263CF8)
  {
    sub_100003E34(&qword_100263BE0, &qword_1001DB6C8);
    sub_100134A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263CF8);
  }

  return result;
}

unint64_t sub_100134A10()
{
  result = qword_100263D00;
  if (!qword_100263D00)
  {
    sub_100003E34(&qword_100263BD8, &qword_1001DB6C0);
    sub_100007120(&qword_100263D08, &qword_100263BD0, &qword_1001DB6B8, &unk_1001DCEDC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263D00);
  }

  return result;
}

unint64_t sub_100134ACC()
{
  result = qword_100263D10;
  if (!qword_100263D10)
  {
    sub_100003E34(&qword_100263BF8, &qword_1001DB6E0);
    sub_100007120(&qword_100263D18, &qword_100263C00, &qword_1001DB6E8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263D10);
  }

  return result;
}

unint64_t sub_100134C30()
{
  result = qword_100263D78;
  if (!qword_100263D78)
  {
    sub_100003E34(&qword_100263D80, &qword_1001DB988);
    sub_100003E34(&qword_100263D30, &qword_1001DB8F0);
    type metadata accessor for PrimaryButtonStyle(255);
    sub_100007120(&qword_100263D38, &qword_100263D30, &qword_1001DB8F0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_10013124C(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle, &unk_1001DABD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263D78);
  }

  return result;
}

unint64_t sub_100134DBC()
{
  result = qword_100263D90;
  if (!qword_100263D90)
  {
    sub_100003E34(&qword_100263D50, &qword_1001DB908);
    sub_100007120(&qword_100263D98, &qword_100263D48, &qword_1001DB900, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100007120(&unk_10025DCA0, &unk_1002636B0, &unk_1001D16F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263D90);
  }

  return result;
}

unint64_t sub_100134EA4()
{
  result = qword_100263DA0;
  if (!qword_100263DA0)
  {
    sub_100003E34(&qword_100263D70, &qword_1001DB928);
    sub_100134F5C();
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263DA0);
  }

  return result;
}

unint64_t sub_100134F5C()
{
  result = qword_100263DA8;
  if (!qword_100263DA8)
  {
    sub_100003E34(&qword_100263D60, &qword_1001DB918);
    sub_100135014();
    sub_100007120(&qword_100263DC8, &qword_100263D68, &qword_1001DB920, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263DA8);
  }

  return result;
}

unint64_t sub_100135014()
{
  result = qword_100263DB0;
  if (!qword_100263DB0)
  {
    sub_100003E34(&qword_100263D58, &qword_1001DB910);
    sub_100133678();
    sub_100007120(&qword_100264120, &qword_100263DC0, &qword_1001DB990, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263DB0);
  }

  return result;
}

unint64_t sub_100135120()
{
  result = qword_100263DF8;
  if (!qword_100263DF8)
  {
    sub_100003E34(&qword_100263DE0, &qword_1001DBA68);
    sub_10013183C();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263DF8);
  }

  return result;
}

unint64_t sub_1001351EC()
{
  result = qword_100263EC0;
  if (!qword_100263EC0)
  {
    sub_100003E34(&qword_100263E00, &qword_1001DBA80);
    sub_1001352A4();
    sub_100007120(&qword_100263ED0, &qword_100263E08, &qword_1001DBA88, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EC0);
  }

  return result;
}

unint64_t sub_1001352A4()
{
  result = qword_100263EC8;
  if (!qword_100263EC8)
  {
    sub_100003E34(&qword_100263DF0, &qword_1001DBA78);
    sub_100003E34(&qword_100263DE0, &qword_1001DBA68);
    sub_100135120();
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DC90, &qword_1002636C0, &qword_1001D3140, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EC8);
  }

  return result;
}

unint64_t sub_10013539C()
{
  result = qword_100263ED8;
  if (!qword_100263ED8)
  {
    sub_100003E34(&qword_100263E50, &qword_1001DBAC8);
    sub_100135428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263ED8);
  }

  return result;
}

unint64_t sub_100135428()
{
  result = qword_100263EE0;
  if (!qword_100263EE0)
  {
    sub_100003E34(&qword_100263E48, &qword_1001DBAC0);
    sub_1001354B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EE0);
  }

  return result;
}

unint64_t sub_1001354B4()
{
  result = qword_100263EE8;
  if (!qword_100263EE8)
  {
    sub_100003E34(&qword_100263E40, &qword_1001DBAB8);
    sub_100135540();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EE8);
  }

  return result;
}

unint64_t sub_100135540()
{
  result = qword_100263EF0;
  if (!qword_100263EF0)
  {
    sub_100003E34(&qword_100263E38, &qword_1001DBAB0);
    sub_100003E34(&qword_100263E18, &qword_1001DBA98);
    sub_100007120(&qword_100263E30, &qword_100263E18, &qword_1001DBA98, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    sub_100007120(&unk_10025DB20, &qword_100263750, &qword_1001D1700, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EF0);
  }

  return result;
}

unint64_t sub_10013566C()
{
  result = qword_100263EF8;
  if (!qword_100263EF8)
  {
    sub_100003E34(&qword_100263E88, &qword_1001DBB00);
    sub_100135724();
    sub_100007120(&qword_100263F18, &qword_100263E90, &qword_1001DBB08, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263EF8);
  }

  return result;
}

unint64_t sub_100135724()
{
  result = qword_100263F00;
  if (!qword_100263F00)
  {
    sub_100003E34(&qword_100263E68, &qword_1001DBAE0);
    sub_1001357B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263F00);
  }

  return result;
}

unint64_t sub_1001357B0()
{
  result = qword_100263F08;
  if (!qword_100263F08)
  {
    sub_100003E34(&qword_100263E60, &qword_1001DBAD8);
    sub_100007120(&qword_100263F10, &qword_100263E58, &qword_1001DBAD0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263F08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TitleImageLabelStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TitleImageLabelStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 17) = v3;
  return result;
}

unint64_t sub_1001358E4()
{
  result = qword_100263F48;
  if (!qword_100263F48)
  {
    sub_100003E34(&qword_100263F38, &qword_1001DBBB0);
    sub_100135970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263F48);
  }

  return result;
}

unint64_t sub_100135970()
{
  result = qword_100263F50;
  if (!qword_100263F50)
  {
    sub_100003E34(&qword_100263F28, &qword_1001DBBA0);
    sub_100007120(&qword_100263F58, &qword_100263F20, &qword_1001DBB98, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263F50);
  }

  return result;
}

unint64_t sub_100135A48()
{
  result = qword_100263F80;
  if (!qword_100263F80)
  {
    sub_100003E34(&qword_100263F70, &qword_1001DBC40);
    sub_100007120(&qword_100263F88, &qword_100263F60, &qword_1001DBC30, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263F80);
  }

  return result;
}

uint64_t sub_100135B2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100135B74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100135BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000081F8(a3, v22 - v9, &unk_10025B5D0, &qword_1001D05A0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10000F500(v10, &unk_10025B5D0, &qword_1001D05A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100135E9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&qword_100263F98, &qword_1001DBD50);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v46 - v7;
  v49 = sub_10000341C(&qword_100263FA0, &qword_1001DBD58);
  v9 = __chkstk_darwin(v49);
  v52 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v51 = &v46 - v14;
  v15 = sub_10000341C(&qword_100263FA8, &qword_1001DBD60);
  v16 = __chkstk_darwin(v15 - 8);
  v50 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v46 - v18;
  *v19 = static VerticalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = sub_10000341C(&qword_100263FB0, &unk_1001DBD68);
  sub_1001365A0(a1, &v19[*(v20 + 44)]);
  v21 = *a1;
  v58 = *(a1 + 8);
  v22 = a1[2];
  v55 = *(a1 + 2);
  v56 = v22;
  v57 = v21;
  v23 = swift_allocObject();
  v24 = *(a1 + 1);
  v23[1] = *a1;
  v23[2] = v24;
  v25 = *(a1 + 3);
  v23[3] = *(a1 + 2);
  v23[4] = v25;
  v26 = v57;
  v27 = v58;

  sub_10004CC28(&v55, v54);

  sub_1000081F8(&v57, v54, &unk_10025E1A0, &qword_1001D1FA0);
  sub_100063D8C(&v56, v54);
  sub_10000341C(&qword_100263FB8, &qword_1001DBD78);
  sub_100007120(&qword_100263FC0, &qword_100263FB8, &qword_1001DBD78, &protocol conformance descriptor for HStack<A>);
  Button.init(action:label:)();
  v28 = &v8[*(v6 + 44)];
  *v28 = 0x4008000000000000;
  v28[8] = 0;

  v29 = v26;
  if ((v27 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v31 = v46;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v57, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v47 + 8))(v31, v48);
    v29 = v54[0];
  }

  swift_getKeyPath();
  v54[0] = v29;
  sub_100137BE8(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = *(v29 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v32 == 1)
  {
    v33 = 1;
  }

  else
  {

    if ((v27 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v35 = v46;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_10000F500(&v57, &unk_10025E1A0, &qword_1001D1FA0);
      (*(v47 + 8))(v35, v48);
      v26 = v54[0];
    }

    swift_getKeyPath();
    v54[0] = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v36 = *(v26 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

    v33 = v36 == 2;
  }

  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  sub_10002A894(v8, v13, &qword_100263F98, &qword_1001DBD50);
  v39 = &v13[*(v49 + 36)];
  *v39 = KeyPath;
  v39[1] = sub_10002AAC0;
  v39[2] = v38;
  v40 = v51;
  sub_10002A894(v13, v51, &qword_100263FA0, &qword_1001DBD58);
  v41 = v50;
  sub_1000081F8(v19, v50, &qword_100263FA8, &qword_1001DBD60);
  v42 = v52;
  sub_1000081F8(v40, v52, &qword_100263FA0, &qword_1001DBD58);
  v43 = v53;
  sub_1000081F8(v41, v53, &qword_100263FA8, &qword_1001DBD60);
  v44 = sub_10000341C(&qword_100263FC8, &unk_1001DBDD8);
  sub_1000081F8(v42, v43 + *(v44 + 48), &qword_100263FA0, &qword_1001DBD58);
  sub_10000F500(v40, &qword_100263FA0, &qword_1001DBD58);
  sub_10000F500(v19, &qword_100263FA8, &qword_1001DBD60);
  sub_10000F500(v42, &qword_100263FA0, &qword_1001DBD58);
  return sub_10000F500(v41, &qword_100263FA8, &qword_1001DBD60);
}

uint64_t sub_1001365A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v136 = type metadata accessor for EnvironmentValues();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v128 = &v107 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for UnevenCornerPrimaryButtonStyle(0);
  __chkstk_darwin(v142);
  v107 = (&v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = type metadata accessor for IconOnlyLabelStyle();
  v5 = *(v141 - 8);
  __chkstk_darwin(v141);
  v7 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&qword_100263FD0, &qword_1001DBDE8);
  v146 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v107 - v9;
  v140 = sub_10000341C(&qword_100263FD8, &qword_1001DBDF0);
  v145 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v107 - v11;
  v131 = sub_10000341C(&qword_100263FE0, &qword_1001DBDF8);
  v147 = *(v131 - 8);
  v12 = __chkstk_darwin(v131);
  v129 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v137 = &v107 - v14;
  v143 = sub_10000341C(&qword_100263FE8, &qword_1001DBE00);
  v15 = __chkstk_darwin(v143);
  v133 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v132 = &v107 - v18;
  v19 = __chkstk_darwin(v17);
  v127 = &v107 - v20;
  v21 = __chkstk_darwin(v19);
  v130 = &v107 - v22;
  v23 = __chkstk_darwin(v21);
  v120 = &v107 - v24;
  __chkstk_darwin(v23);
  v144 = &v107 - v25;
  v26 = *a1;
  v153 = *(a1 + 8);
  v27 = a1[2];
  v28 = a1[3];
  v150 = *(a1 + 2);
  v151 = v27;
  v152 = v26;
  v29 = a1[7];
  v30 = swift_allocObject();
  v31 = *(a1 + 1);
  v30[1] = *a1;
  v30[2] = v31;
  v32 = *(a1 + 2);
  v33 = *(a1 + 3);
  v108 = a1;
  v30[3] = v32;
  v30[4] = v33;
  v34 = v152;
  v138 = v153;
  v121 = v28;

  sub_10004CC28(&v150, v149);
  v122 = v29;

  sub_1000081F8(&v152, v149, &unk_10025E1A0, &qword_1001D1FA0);
  sub_100063D8C(&v151, v149);
  v35 = sub_10000341C(&qword_100263FF0, &unk_1001DBE08);
  v36 = sub_100137B20();
  v119 = v35;
  v118 = v36;
  Button.init(action:label:)();
  IconOnlyLabelStyle.init()();
  v37 = sub_100007120(&qword_100264000, &qword_100263FD0, &qword_1001DBDE8, &protocol conformance descriptor for Button<A>);
  v38 = sub_100137BE8(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v39 = v139;
  v40 = v141;
  View.labelStyle<A>(_:)();
  v41 = *(v5 + 8);
  v125 = v7;
  v42 = v40;
  v126 = v5 + 8;
  v115 = v41;
  v41(v7, v40);
  v43 = *(v146 + 8);
  v123 = v10;
  v44 = v8;
  v146 += 8;
  v114 = v43;
  v43(v10, v8);
  v45 = v34;
  KeyPath = swift_getKeyPath();
  v47 = v107;
  *v107 = 1;
  v48 = v142;
  v49 = *(v142 + 24);
  *(v47 + v49) = swift_getKeyPath();
  v113 = sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v50 = v47 + *(v48 + 28);
  *v50 = KeyPath;
  *(v50 + 8) = 0;
  v124 = v44;
  v149[0] = v44;
  v149[1] = v42;
  v51 = v135;
  v52 = v136;
  v117 = v37;
  v149[2] = v37;
  v149[3] = v38;
  v116 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_100137BE8(&qword_10025C9F0, type metadata accessor for UnevenCornerPrimaryButtonStyle, &unk_1001DAC48);
  v55 = v140;
  v112 = OpaqueTypeConformance2;
  v111 = v54;
  v56 = v39;
  v57 = v47;
  View.buttonStyle<A>(_:)();
  sub_100137C30(v47);
  v58 = *(v145 + 8);
  v145 += 8;
  v110 = v58;
  v58(v56, v55);

  v148 = v45;
  if ((v138 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v60 = v128;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v152, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v51 + 8))(v60, v52);
    v45 = v149[0];
  }

  swift_getKeyPath();
  v149[0] = v45;
  v61 = sub_100137BE8(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v62 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  v63 = *(v45 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state) == 1;
  v109 = v61;
  if (v63 || (swift_getKeyPath(), v149[0] = v45, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v45 + v62) == 2))
  {

    v64 = 1;
  }

  else
  {
    v65 = sub_1000757A8();

    v64 = !v65;
  }

  v66 = v131;
  v67 = swift_getKeyPath();
  v68 = swift_allocObject();
  *(v68 + 16) = v64 & 1;
  v69 = *(v147 + 32);
  v70 = v120;
  v147 += 32;
  v69(v120, v137, v66);
  v71 = v144;
  v72 = (v70 + *(v143 + 36));
  *v72 = v67;
  v72[1] = sub_100035DEC;
  v72[2] = v68;
  sub_100137C9C(v70, v71);
  v73 = swift_allocObject();
  v74 = v108;
  v75 = *(v108 + 1);
  v73[1] = *v108;
  v73[2] = v75;
  v76 = *(v74 + 3);
  v73[3] = *(v74 + 2);
  v73[4] = v76;

  sub_10004CC28(&v150, v149);

  sub_1000081F8(&v152, v149, &unk_10025E1A0, &qword_1001D1FA0);
  sub_100063D8C(&v151, v149);
  v77 = v123;
  Button.init(action:label:)();
  v78 = v125;
  IconOnlyLabelStyle.init()();
  v79 = v139;
  v80 = v124;
  v81 = v141;
  View.labelStyle<A>(_:)();
  v115(v78, v81);
  v114(v77, v80);
  v82 = swift_getKeyPath();
  *v57 = 256;
  v83 = v142;
  v84 = *(v142 + 24);
  *(v57 + v84) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v85 = v57 + *(v83 + 28);
  *v85 = v82;
  v85[8] = 0;
  v86 = v129;
  v87 = v140;
  View.buttonStyle<A>(_:)();
  sub_100137C30(v57);
  v110(v79, v87);

  if ((v138 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v88 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v89 = v128;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v152, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v135 + 8))(v89, v136);
    v148 = v149[0];
  }

  swift_getKeyPath();
  v90 = v148;
  v149[0] = v148;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v91 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state;
  if (*(v90 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state) == 1 || (swift_getKeyPath(), v92 = v148, v149[0] = v148, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v92 + v91) == 2))
  {

    v93 = 1;
  }

  else
  {
    v94 = sub_1000759BC();

    v93 = v94 ^ 1;
  }

  v95 = swift_getKeyPath();
  v96 = swift_allocObject();
  *(v96 + 16) = v93 & 1;
  v97 = v127;
  v69(v127, v86, v66);
  v98 = (v97 + *(v143 + 36));
  *v98 = v95;
  v98[1] = sub_100035DEC;
  v98[2] = v96;
  v99 = v130;
  sub_100137C9C(v97, v130);
  v100 = v144;
  v101 = v132;
  sub_1000081F8(v144, v132, &qword_100263FE8, &qword_1001DBE00);
  v102 = v133;
  sub_1000081F8(v99, v133, &qword_100263FE8, &qword_1001DBE00);
  v103 = v134;
  sub_1000081F8(v101, v134, &qword_100263FE8, &qword_1001DBE00);
  v104 = sub_10000341C(&qword_100264008, &unk_1001DBE80);
  v105 = v103 + *(v104 + 48);
  *v105 = 0x3FF0000000000000;
  *(v105 + 8) = 0;
  sub_1000081F8(v102, v103 + *(v104 + 64), &qword_100263FE8, &qword_1001DBE00);
  sub_10000F500(v99, &qword_100263FE8, &qword_1001DBE00);
  sub_10000F500(v100, &qword_100263FE8, &qword_1001DBE00);
  sub_10000F500(v102, &qword_100263FE8, &qword_1001DBE00);
  return sub_10000F500(v101, &qword_100263FE8, &qword_1001DBE00);
}

double sub_1001374BC@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  v2 = static Edge.Set.all.getter();
  v3 = a1 + *(sub_10000341C(&qword_100263FF0, &unk_1001DBE08) + 36);
  *v3 = v2;
  result = 0.0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_100137554(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 8);
  v12 = *a1;
  v20 = v12;
  v13 = v21;

  if ((v13 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v20, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v9 + 8))(v11, v8);
    v12 = v19[1];
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  type metadata accessor for MainActor();

  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = &protocol witness table for MainActor;
  v17[4] = v12;
  sub_100135BF0(0, 0, v7, a3, v17);
}

double sub_1001377B4@<D0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  v2 = static Edge.Set.all.getter();
  v3 = a1 + *(sub_10000341C(&qword_100263FF0, &unk_1001DBE08) + 36);
  *v3 = v2;
  result = 0.0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_100137844(uint64_t a1)
{
  v1 = *(a1 + 48);
  sub_10000341C(&unk_10025F820, &qword_1001D50A0);
  Binding.wrappedValue.getter();
  v1();
}

__n128 sub_1001378B8@<Q0>(uint64_t a2@<X8>)
{
  v3 = static VerticalAlignment.center.getter();
  sub_100137954(v6);
  *&v5[55] = v6[3];
  *&v5[39] = v6[2];
  *&v5[23] = v6[1];
  *&v5[7] = v6[0];
  *(a2 + 33) = *&v5[16];
  result = *&v5[32];
  *(a2 + 49) = *&v5[32];
  *(a2 + 65) = *&v5[48];
  v5[71] = v7;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 81) = *&v5[64];
  *(a2 + 17) = *v5;
  return result;
}

uint64_t sub_100137954@<X0>(uint64_t a1@<X8>)
{
  sub_100125454(8);
  v2 = Image.init(_internalSystemName:)();
  LocalizedStringKey.init(stringLiteral:)();
  v3 = Text.init(_:tableName:bundle:comment:)();
  v5 = v4;
  v7 = v6 & 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6 & 1;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;

  sub_100007D98(v3, v5, v7);

  sub_10002A984(v3, v5, v7);
}

uint64_t sub_100137A60@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v5 = v2[3];
  v8[2] = v2[2];
  v8[3] = v5;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_10000341C(&qword_100263F90, &qword_1001DBD48);
  return sub_100135E9C(v8, a2 + *(v6 + 44));
}

unint64_t sub_100137B20()
{
  result = qword_100263FF8;
  if (!qword_100263FF8)
  {
    sub_100003E34(&qword_100263FF0, &unk_1001DBE08);
    sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20, &protocol conformance descriptor for Label<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100263FF8);
  }

  return result;
}

uint64_t sub_100137BE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100137C30(uint64_t a1)
{
  v2 = type metadata accessor for UnevenCornerPrimaryButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100137C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100263FE8, &qword_1001DBE00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100137D0C(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 80, 7);
}

uint64_t sub_100137DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100028688;

  return sub_100077DFC(a1, v4, v5, v6);
}

uint64_t sub_100137E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002B2A0;

  return sub_100075BC8(a1, v4, v5, v6);
}

uint64_t sub_100137F60(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10013A2F4(&qword_100264030, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10013A2F4(&qword_100264038, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_100138178(Swift::UInt a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_100138244(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_10013A2F4(&qword_10025FEA0, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_10013A2F4(&qword_100264028, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10013845C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100138554()
{
  v118 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v115 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10000341C(&qword_100264020, &qword_1001DBEA8);
  __chkstk_darwin(v1 - 8);
  v140 = &v115 - v2;
  v3 = sub_10000341C(&unk_100264040, &qword_1001DBEB0);
  v4 = __chkstk_darwin(v3 - 8);
  v126 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v141 = &v115 - v6;
  v7 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v143 = *(v7 - 8);
  v144 = v7;
  v8 = __chkstk_darwin(v7);
  v142 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v119 = &v115 - v11;
  v12 = __chkstk_darwin(v10);
  v115 = &v115 - v13;
  __chkstk_darwin(v12);
  v120 = &v115 - v14;
  v122 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v121 = *(v122 - 8);
  v15 = __chkstk_darwin(v122);
  v123 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v127 = &v115 - v17;
  v18 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v145 = *(v18 - 8);
  v146 = v18;
  __chkstk_darwin(v18);
  v20 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for GenerativeModelsAvailability();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v131 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v115 - v33;
  v35 = *(v22 + 104);
  v130 = enum case for GenerativeModelsAvailability.LanguageOption.any(_:);
  v138 = v22 + 104;
  v139 = v21;
  v129 = v35;
  v35(v24);
  v136 = v24;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  v36 = *(v26 + 8);
  v133 = v28;
  v137 = v25;
  v135 = v26 + 8;
  v128 = v36;
  v36(v28, v25);
  GenerativeModelsAvailability.availability.getter();
  v37 = *(v30 + 8);
  v38 = v34;
  v39 = v146;
  v134 = v29;
  v132 = v30 + 8;
  (v37)(v38, v29);
  v40 = v145;
  v41 = *(v145 + 88);
  v125 = v145 + 88;
  v124 = v41;
  v42 = v41(v20, v39);
  if (v42 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    (*(v40 + 96))(v20, v39);
    v43 = v121;
    v44 = v127;
    v45 = v122;
    (*(v121 + 32))(v127, v20, v122);
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_10000F34C(v46, qword_100276EF0);
    v47 = v123;
    (*(v43 + 16))(v123, v44, v45);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v147 = v51;
      *v50 = 136315138;
      sub_10013A2F4(&qword_10025FEA8, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v47;
      v54 = v37;
      v56 = v55;
      v57 = *(v43 + 8);
      v57(v53, v45);
      v58 = sub_10002510C(v52, v56, &v147);
      v37 = v54;

      *(v50 + 4) = v58;
      _os_log_impl(&_mh_execute_header, v48, v49, "isComposeModelsAvailable: restricted, info = %s", v50, 0xCu);
      sub_10000F4B4(v51);

      v57(v127, v45);
    }

    else
    {

      v75 = *(v43 + 8);
      v75(v47, v45);
      v75(v44, v45);
    }

    v76 = 0;
    v77 = v142;
    v59 = v143;
    v78 = v140;
    v60 = v145;
  }

  else
  {
    v59 = v143;
    if (v42 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      v60 = v40;
      (*(v40 + 96))(v20, v39);
      v61 = v120;
      (*(v59 + 32))(v120, v20, v144);
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v127 = v37;
      v62 = type metadata accessor for Logger();
      sub_10000F34C(v62, qword_100276EF0);
      v63 = v115;
      (*(v59 + 16))(v115, v61, v144);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v123 = v66;
        v67 = swift_slowAlloc();
        v147 = v67;
        *v66 = 136315138;
        sub_10013A2F4(&qword_10025FE98, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo);
        v68 = v144;
        v69 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v70;
        v72 = *(v143 + 8);
        v72(v63, v68);
        v73 = sub_10002510C(v69, v71, &v147);

        v74 = v123;
        *(v123 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v64, v65, "isComposeModelsAvailable: unavailable, info = %s", v74, 0xCu);
        sub_10000F4B4(v67);
        v60 = v40;

        v72(v120, v68);
        v59 = v143;
      }

      else
      {

        v79 = *(v59 + 8);
        v80 = v144;
        v79(v63, v144);
        v79(v61, v80);
      }

      v76 = 0;
      v77 = v142;
      v78 = v140;
      v37 = v127;
    }

    else
    {
      v60 = v40;
      if (v42 == enum case for GenerativeModelsAvailability.Availability.available(_:))
      {
        v76 = 1;
        v77 = v142;
      }

      else
      {
        v77 = v142;
        if (qword_10025A6D8 != -1)
        {
          swift_once();
        }

        v81 = type metadata accessor for Logger();
        sub_10000F34C(v81, qword_100276EF0);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v82, v83))
        {
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&_mh_execute_header, v82, v83, "isComposeModelsAvailable: @unknown default", v84, 2u);
        }

        (*(v40 + 8))(v20, v146);
        v76 = 0;
      }

      v78 = v140;
    }
  }

  v129(v136, v130, v139);
  v85 = v133;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  v86 = v131;
  static GenerativeModelsAvailability.current(parameters:)();
  v128(v85, v137);
  GenerativeModelsAvailability.partner.getter();
  (v37)(v86, v134);
  v87 = type metadata accessor for GenerativeModelsAvailability.Partner();
  v88 = *(v87 - 8);
  if ((*(v88 + 48))(v78, 1, v87) == 1)
  {
    sub_10000F500(v78, &qword_100264020, &qword_1001DBEA8);
    v89 = v141;
    (*(v60 + 56))(v141, 1, 1, v146);
    sub_10000F500(v89, &unk_100264040, &qword_1001DBEB0);
  }

  else
  {
    v90 = v141;
    GenerativeModelsAvailability.Partner.availability.getter();
    (*(v88 + 8))(v78, v87);
    v91 = v146;
    (*(v60 + 56))(v90, 0, 1, v146);
    v92 = v126;
    sub_10013A448(v90, v126);
    if (v124(v92, v91) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v60 + 96))(v92, v91);
      v93 = v119;
      (*(v59 + 32))(v119, v92, v144);
      v94 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
      v95 = v117;
      v96 = v116;
      v97 = v118;
      (*(v117 + 104))(v116, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDoesNotAllowUserLocaleRegion(_:), v118);
      v98 = sub_100137F60(v96, v94);

      (*(v95 + 8))(v96, v97);
      if (v98)
      {
        if (qword_10025A6D8 != -1)
        {
          swift_once();
        }

        v99 = type metadata accessor for Logger();
        sub_10000F34C(v99, qword_100276EF0);
        (*(v59 + 16))(v77, v93, v144);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = v93;
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v147 = v104;
          *v103 = 136315138;
          sub_10013A2F4(&qword_10025FE98, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo);
          v105 = v144;
          v106 = dispatch thunk of CustomStringConvertible.description.getter();
          v107 = v77;
          v109 = v108;
          v110 = *(v59 + 8);
          v110(v107, v105);
          v111 = sub_10002510C(v106, v109, &v147);

          *(v103 + 4) = v111;
          _os_log_impl(&_mh_execute_header, v100, v101, "isComposeModelsAvailable: partner unavailable,  setting available to false, info = %s", v103, 0xCu);
          sub_10000F4B4(v104);

          v110(v102, v105);
        }

        else
        {

          v112 = *(v59 + 8);
          v113 = v144;
          v112(v77, v144);
          v112(v93, v113);
        }

        return 0;
      }

      else
      {
        (*(v59 + 8))(v93, v144);
      }
    }

    else
    {
      (*(v60 + 8))(v92, v91);
    }
  }

  return v76;
}

uint64_t sub_1001395F8()
{
  v88 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v82 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v83 = *(v85 - 8);
  v1 = __chkstk_darwin(v85);
  v82 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v84 = &v82 - v3;
  v4 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin(v4);
  v93 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v6 = *(v109 - 8);
  __chkstk_darwin(v109);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GenerativeModelsAvailability();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v100 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v82 - v17;
  v19 = sub_10000341C(&qword_100264020, &qword_1001DBEA8);
  v20 = __chkstk_darwin(v19 - 8);
  v101 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v82 - v22;
  v24 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v107 = *(v24 - 8);
  v108 = v24;
  v25 = __chkstk_darwin(v24);
  v96 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v82 - v27;
  v92 = type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo();
  v90 = *(v92 - 8);
  v29 = __chkstk_darwin(v92);
  v89 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v91 = &v82 - v31;
  v32 = *(v6 + 104);
  v99 = enum case for GenerativeModelsAvailability.LanguageOption.any(_:);
  v106 = v6 + 104;
  v98 = v32;
  v32(v8);
  v104 = v8;
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  static GenerativeModelsAvailability.current(parameters:)();
  v33 = *(v10 + 8);
  v105 = v9;
  v103 = v10 + 8;
  v97 = v33;
  v33(v12, v9);
  GenerativeModelsAvailability.partner.getter();
  v34 = *(v14 + 8);
  v102 = v13;
  v34(v18, v13);
  v35 = type metadata accessor for GenerativeModelsAvailability.Partner();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  if (v37(v23, 1, v35) == 1)
  {
    v38 = v108;
    sub_10000F500(v23, &qword_100264020, &qword_1001DBEA8);
  }

  else
  {
    GenerativeModelsAvailability.Partner.availability.getter();
    (*(v36 + 8))(v23, v35);
    v40 = v107;
    v39 = v108;
    if ((*(v107 + 88))(v28, v108) == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
    {
      (*(v40 + 96))(v28, v39);
      v41 = v90;
      v42 = v91;
      v43 = v28;
      v44 = v92;
      (*(v90 + 32))(v91, v43, v92);
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_10000F34C(v45, qword_100276EF0);
      v46 = v89;
      (*(v41 + 16))(v89, v42, v44);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v110[0] = v50;
        *v49 = 136315138;
        sub_10013A2F4(&qword_10025FEA8, &type metadata accessor for GenerativeModelsAvailability.Availability.RestrictedInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.RestrictedInfo);
        v51 = dispatch thunk of CustomStringConvertible.description.getter();
        v52 = v46;
        v54 = v53;
        v55 = *(v41 + 8);
        v55(v52, v44);
        v56 = sub_10002510C(v51, v54, v110);

        *(v49 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v47, v48, "isComposeDisabled: partner restricted, info = %s", v49, 0xCu);
        sub_10000F4B4(v50);
      }

      else
      {

        v55 = *(v41 + 8);
        v55(v46, v44);
      }

      v75 = GenerativeModelsAvailability.Availability.RestrictedInfo.reasons.getter();
      v77 = v93;
      v76 = v94;
      v78 = v95;
      (*(v94 + 104))(v93, enum case for GenerativeModelsAvailability.Availability.RestrictedInfo.RestrictedReason.useCaseDoesNotAllowCurrentIPCountryCode(_:), v95);
      v79 = sub_100138244(v77, v75);
      goto LABEL_22;
    }

    v57 = v28;
    v38 = v39;
    (*(v40 + 8))(v57, v39);
  }

  v98(v104, v99, v109);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:language:)();
  v58 = v100;
  static GenerativeModelsAvailability.current(parameters:)();
  v97(v12, v105);
  v59 = v101;
  GenerativeModelsAvailability.partner.getter();
  v34(v58, v102);
  if (v37(v59, 1, v35) != 1)
  {
    v60 = v96;
    GenerativeModelsAvailability.Partner.availability.getter();
    (*(v36 + 8))(v59, v35);
    v61 = v107;
    if ((*(v107 + 88))(v60, v38) != enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
    {
      (*(v61 + 8))(v60, v38);
      goto LABEL_17;
    }

    (*(v61 + 96))(v60, v38);
    v62 = v83;
    v42 = v84;
    v44 = v85;
    (*(v83 + 32))(v84, v60, v85);
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000F34C(v63, qword_100276EF0);
    v64 = v82;
    (*(v62 + 16))(v82, v42, v44);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v110[0] = v68;
      *v67 = 136315138;
      sub_10013A2F4(&qword_10025FE98, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v64;
      v72 = v71;
      v55 = *(v62 + 8);
      v55(v70, v44);
      v73 = sub_10002510C(v69, v72, v110);

      *(v67 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v65, v66, "isComposeDisabled: partner unavailable, info = %s", v67, 0xCu);
      sub_10000F4B4(v68);
    }

    else
    {

      v55 = *(v62 + 8);
      v55(v64, v44);
    }

    v80 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    v76 = v87;
    v77 = v86;
    v78 = v88;
    (*(v87 + 104))(v86, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.useCaseDoesNotAllowCurrentIPCountryCode(_:), v88);
    v79 = sub_100137F60(v77, v80);
LABEL_22:
    v74 = v79;

    (*(v76 + 8))(v77, v78);
    v55(v42, v44);
    return v74 & 1;
  }

  sub_10000F500(v59, &qword_100264020, &qword_1001DBEA8);
LABEL_17:
  v74 = 0;
  return v74 & 1;
}

uint64_t sub_10013A2F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10013A33C()
{
  v0 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001395F8();
  result = 0;
  if (v1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v3._countAndFlagsBits = 0;
    v3._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v3);
    v4._countAndFlagsBits = sub_1000971C0();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v4);

    v5._object = 0x80000001001E74C0;
    v5._countAndFlagsBits = 0x1000000000000022;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v5);
    LocalizedStringKey.init(stringInterpolation:)();
    return Text.init(_:tableName:bundle:comment:)();
  }

  return result;
}

uint64_t sub_10013A448(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&unk_100264040, &qword_1001DBEB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_10013A4B8(uint64_t a1, void *a2)
{
  sub_10000341C(&qword_100264138, &unk_1001DC0F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001CF9D0;
  v4 = type metadata accessor for TextActivityItemWithIcon();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon_text] = a2;
  v13.receiver = v5;
  v13.super_class = v4;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v13, "init");
  *(v3 + 56) = v4;
  *(v3 + 32) = v7;
  v8 = objc_allocWithZone(UIActivityViewController);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithActivityItems:isa applicationActivities:{0, v13.receiver, v13.super_class}];

  type metadata accessor for ActivityType(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;
  [v10 setExcludedActivityTypes:v11];

  return v10;
}

uint64_t sub_10013A638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10013AEF4();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10013A69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10013AEF4();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10013A700(uint64_t a1)
{
  sub_10013AEF4();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_10013A728@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_10000341C(&qword_100264130, &qword_1001D3668);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001CF9D0;
  *(v4 + 32) = UIActivityTypeCopyToPasteboard;
  v5 = v3;
  v6 = UIActivityTypeCopyToPasteboard;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(&v15);
  v7 = v15;
  v8 = v17;
  v9 = v19;
  v10 = v20;
  v22 = v16;
  v21 = v18;
  static Color.white.getter();
  v11 = Color.opacity(_:)();

  result = static Edge.Set.all.getter();
  v13 = v22;
  v14 = v21;
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  *(a2 + 24) = v13;
  *(a2 + 32) = v8;
  *(a2 + 40) = v14;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = result;
  return result;
}

uint64_t sub_10013A854()
{
  v1 = *v0;
  v7 = *(v0 + 24);
  v8 = v7;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  *&v7 = *(v0 + 8);
  BYTE8(v7) = *(v0 + 16);
  v2 = swift_allocObject();
  v3 = *(v0 + 8);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v0 + 16);
  *(v2 + 33) = *(v0 + 17);
  *(v2 + 48) = *(v0 + 32);
  *(v2 + 56) = *(v0 + 40);
  v4 = v1;
  sub_1000081F8(&v7, &v6, &unk_10025E1A0, &qword_1001D1FA0);
  sub_1000081F8(&v8, &v6, &unk_1002640F0, &qword_1001D3490);
  sub_10000341C(&qword_100264100, &qword_1001DC0E0);
  sub_10013AF98();
  View.sheet<A>(isPresented:onDismiss:content:)();
}

id sub_10013AB98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextActivityItemWithIcon();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10013AC04()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_opt_self() systemGrayColor];
    v4 = [v2 imageWithTintColor:v3];

    v5 = [objc_allocWithZone(NSItemProvider) initWithObject:v4];
    v6 = [objc_allocWithZone(LPLinkMetadata) init];
    [v6 setIconProvider:v5];
    v7 = [*(v0 + OBJC_IVAR____TtC21WritingToolsUIServiceP33_E63BB40D993FB2662B0FF812EE2C15EF24TextActivityItemWithIcon_text) string];
    if (!v7)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = String._bridgeToObjectiveC()();
    }

    [v6 setSummary:v7];
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_10013AD80(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10013AD9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10013ADE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10013AE40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10013AE88(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_10013AEF4()
{
  result = qword_1002640E8;
  if (!qword_1002640E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002640E8);
  }

  return result;
}

uint64_t sub_10013AF48()
{

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_10013AF98()
{
  result = qword_100264108;
  if (!qword_100264108)
  {
    sub_100003E34(&qword_100264100, &qword_1001DC0E0);
    sub_10013B024();
    sub_10013B0B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264108);
  }

  return result;
}

unint64_t sub_10013B024()
{
  result = qword_100264110;
  if (!qword_100264110)
  {
    sub_100003E34(&qword_100264118, &qword_1001DC0E8);
    sub_10006BC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264110);
  }

  return result;
}

unint64_t sub_10013B0B0()
{
  result = qword_100264120;
  if (!qword_100264120)
  {
    sub_100003E34(&qword_100263DC0, &qword_1001DB990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264120);
  }

  return result;
}

uint64_t sub_10013B114()
{
  sub_100003E34(&qword_100264100, &qword_1001DC0E0);
  sub_10013AF98();
  return swift_getOpaqueTypeConformance2();
}

uint64_t getEnumTagSinglePayload for WritingTools(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WritingTools(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10013B2E0()
{
  result = qword_100264140;
  if (!qword_100264140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264140);
  }

  return result;
}

const char *sub_10013B334(char a1)
{
  result = "Panel_iOS";
  switch(a1)
  {
    case 1:
      result = "Panel_iPadOS";
      break;
    case 2:
      result = "Panel_macOS";
      break;
    case 3:
      result = "OpenEndedAdjustmentV2_FollowUp";
      break;
    case 4:
      result = "Montara";
      break;
    case 5:
      result = "Montara_PersonalInfoSearch";
      break;
    case 6:
      result = "Montara_PromptEntryView";
      break;
    case 7:
      result = "Montara_SlotFill";
      break;
    case 8:
      result = "Montara_PopoverAdjustment";
      break;
    case 9:
      result = "Montara_Streaming";
      break;
    case 10:
      result = "Montara_FullScreen_SceneHosting";
      break;
    case 11:
      result = "CustomQuestionnaireEntry";
      break;
    case 12:
      result = "AlternateQuestionnaire_macOS";
      break;
    case 13:
      result = "AlternateQuestionnaire_iPadOS";
      break;
    case 14:
      result = "FeedbackFCSBehavior";
      break;
    case 15:
      result = "Formatting_v2";
      break;
    case 16:
      result = "Panel_visionOS";
      break;
    case 17:
      result = "NativeRedesign_visionOS";
      break;
    default:
      return result;
  }

  return result;
}

__n128 sub_10013B530(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10013B554(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_10013B59C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10013B61C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 8);
  v5 = *v0;
  v10 = *v0;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v10, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_10013B778@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100264158, &qword_1001DC2B0);
  v5 = v4 - 8;
  v6 = __chkstk_darwin(v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v39 = static VerticalAlignment.center.getter();
  v41 = 1;
  sub_10013BC6C(&v54);
  v48 = v55[5];
  v49[0] = v55[6];
  *(v49 + 9) = *(&v55[6] + 9);
  v44 = v55[1];
  v45 = v55[2];
  v46 = v55[3];
  v47 = v55[4];
  v42 = v54;
  v43 = v55[0];
  v50[5] = v55[4];
  v50[6] = v55[5];
  v51[0] = v55[6];
  *(v51 + 9) = *(&v55[6] + 9);
  v50[2] = v55[1];
  v50[3] = v55[2];
  v50[4] = v55[3];
  v50[0] = v54;
  v50[1] = v55[0];
  sub_1000081F8(&v42, &v52, &qword_100264160, &qword_1001DC2B8);
  sub_10000F500(v50, &qword_100264160, &qword_1001DC2B8);
  *(&v40[5] + 7) = v47;
  *(&v40[6] + 7) = v48;
  *(&v40[7] + 7) = v49[0];
  v40[8] = *(v49 + 9);
  *(&v40[1] + 7) = v43;
  *(&v40[2] + 7) = v44;
  *(&v40[3] + 7) = v45;
  *(&v40[4] + 7) = v46;
  *(v40 + 7) = v42;
  v11 = v41;
  *v10 = static HorizontalAlignment.center.getter();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v12 = sub_10000341C(&qword_100264168, &qword_1001DC2C0);
  sub_10013C06C(a1, &v10[*(v12 + 44)]);
  v13 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v10[*(sub_10000341C(&qword_100264170, &qword_1001DC2C8) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = swift_allocObject();
  v24 = a1[3];
  v23[3] = a1[2];
  v23[4] = v24;
  *(v23 + 73) = *(a1 + 57);
  v25 = a1[1];
  v23[1] = *a1;
  v23[2] = v25;
  v26 = &v10[*(sub_10000341C(&qword_100264178, &qword_1001DC2D0) + 36)];
  *v26 = sub_10013DF84;
  v26[1] = v23;
  v26[2] = 0;
  v26[3] = 0;
  v27 = swift_allocObject();
  v28 = a1[3];
  v27[3] = a1[2];
  v27[4] = v28;
  *(v27 + 73) = *(a1 + 57);
  v29 = a1[1];
  v27[1] = *a1;
  v27[2] = v29;
  v30 = &v10[*(v5 + 44)];
  *v30 = 0;
  *(v30 + 1) = 0;
  *(v30 + 2) = sub_10013DFA4;
  *(v30 + 3) = v27;
  sub_1000081F8(v10, v8, &qword_100264158, &qword_1001DC2B0);
  *&v53[33] = v40[2];
  *&v53[17] = v40[1];
  *&v53[81] = v40[5];
  *&v53[97] = v40[6];
  *&v53[113] = v40[7];
  *&v53[129] = v40[8];
  *&v53[49] = v40[3];
  v31 = v39;
  v52 = v39;
  v53[0] = v11;
  *&v53[65] = v40[4];
  *&v53[1] = v40[0];
  v32 = *&v53[128];
  *(a2 + 128) = *&v53[112];
  *(a2 + 144) = v32;
  *(a2 + 160) = v53[144];
  v33 = *&v53[64];
  *(a2 + 64) = *&v53[48];
  *(a2 + 80) = v33;
  v34 = *&v53[96];
  *(a2 + 96) = *&v53[80];
  *(a2 + 112) = v34;
  v35 = *v53;
  *a2 = v52;
  *(a2 + 16) = v35;
  v36 = *&v53[32];
  *(a2 + 32) = *&v53[16];
  *(a2 + 48) = v36;
  v37 = sub_10000341C(&qword_100264180, &qword_1001DC2D8);
  sub_1000081F8(v8, a2 + *(v37 + 48), &qword_100264158, &qword_1001DC2B0);
  sub_10013DFC4(a1, &v54);
  sub_10013DFC4(a1, &v54);
  sub_1000081F8(&v52, &v54, &qword_100264188, &unk_1001DC2E0);
  sub_10000F500(v10, &qword_100264158, &qword_1001DC2B0);
  sub_10000F500(v8, &qword_100264158, &qword_1001DC2B0);
  *(&v55[5] + 1) = v40[5];
  *(&v55[6] + 1) = v40[6];
  *(&v55[7] + 1) = v40[7];
  *(&v55[8] + 1) = v40[8];
  *(&v55[1] + 1) = v40[1];
  *(&v55[2] + 1) = v40[2];
  *(&v55[3] + 1) = v40[3];
  *(&v55[4] + 1) = v40[4];
  v54 = v31;
  LOBYTE(v55[0]) = v11;
  *(v55 + 1) = v40[0];
  return sub_10000F500(&v54, &qword_100264188, &unk_1001DC2E0);
}

uint64_t sub_10013BC6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000341C(&qword_10025C5D0, &qword_1001D15A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v6);
  v7._countAndFlagsBits = sub_1000971C0();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v7);

  v8._object = 0x80000001001E77C0;
  v8._countAndFlagsBits = 0xD000000000000021;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v8);
  LocalizedStringKey.init(stringInterpolation:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v13 = v12;
  static Font.Weight.bold.getter();
  v14 = type metadata accessor for Font.Design();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  static Font.system(size:weight:design:)();
  sub_10000F500(v4, &qword_10025C5D0, &qword_1001D15A0);
  v15 = Text.font(_:)();
  v45 = v16;
  v46 = v15;
  v18 = v17;
  v20 = v19;

  sub_10002A984(v9, v11, v13 & 1);

  LOBYTE(v9) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v62[0]) = v18 & 1;
  LOBYTE(v52) = 0;
  v29 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v31 = v45;
  v30 = v46;
  *&v52 = v46;
  *(&v52 + 1) = v45;
  LOBYTE(v53) = v18 & 1;
  *(&v53 + 1) = *v49;
  DWORD1(v53) = *&v49[3];
  *(&v53 + 1) = v20;
  LOBYTE(v54) = v9;
  DWORD1(v54) = *&v48[3];
  v32 = *v48;
  *(&v54 + 1) = *v48;
  *(&v54 + 1) = v22;
  *&v55 = v24;
  *(&v55 + 1) = v26;
  *&v56 = v28;
  BYTE8(v56) = 0;
  HIDWORD(v56) = *&v51[3];
  *(&v56 + 9) = *v51;
  LOBYTE(v57) = v29;
  DWORD1(v57) = *&v50[3];
  *(&v57 + 1) = *v50;
  *(&v57 + 1) = v33;
  *&v58[0] = v34;
  *(&v58[0] + 1) = v35;
  *&v58[1] = v36;
  BYTE8(v58[1]) = 0;
  v58[5] = v55;
  v58[4] = v54;
  v58[3] = v53;
  v58[2] = v52;
  *(v61 + 9) = *(v58 + 9);
  v60 = v57;
  v61[0] = v58[0];
  v59 = v56;
  v47[128] = 1;
  v37 = v52;
  v38 = v53;
  v39 = v55;
  *(a1 + 32) = v54;
  *(a1 + 48) = v39;
  *a1 = v37;
  *(a1 + 16) = v38;
  v40 = v59;
  v41 = v60;
  v42 = v61[1];
  *(a1 + 96) = v61[0];
  *(a1 + 112) = v42;
  *(a1 + 64) = v40;
  *(a1 + 80) = v41;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  v62[0] = v30;
  v62[1] = v31;
  v63 = v18 & 1;
  *&v64[3] = *&v49[3];
  *v64 = *v49;
  v65 = v20;
  v66 = v9;
  *&v67[3] = *&v48[3];
  *v67 = v32;
  v68 = v22;
  v69 = v24;
  v70 = v26;
  v71 = v28;
  v72 = 0;
  *&v73[3] = *&v51[3];
  *v73 = *v51;
  v74 = v29;
  *&v75[3] = *&v50[3];
  *v75 = *v50;
  v76 = v33;
  v77 = v34;
  v78 = v35;
  v79 = v36;
  v80 = 0;
  sub_1000081F8(&v52, v47, &qword_100264240, &unk_1001D1980);
  return sub_10000F500(v62, &qword_100264240, &unk_1001D1980);
}

uint64_t sub_10013C06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v57 = type metadata accessor for PrimaryButtonStyle(0);
  __chkstk_darwin(v57);
  v4 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10000341C(&qword_100264190, &qword_1001DC320);
  __chkstk_darwin(v60);
  v54 = (v53 - v5);
  v61 = sub_10000341C(&qword_100264198, &qword_1001DC328);
  v59 = *(v61 - 8);
  v6 = __chkstk_darwin(v61);
  v58 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = v53 - v8;
  v9 = sub_10000341C(&qword_1002641A0, &qword_1001DC330);
  v10 = v9 - 8;
  v11 = __chkstk_darwin(v9);
  v55 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v53 - v13;
  *v14 = static HorizontalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v53[2] = *(sub_10000341C(&qword_1002641A8, qword_1001DC338) + 44);
  v63 = *(a1 + 16);
  v64 = *(a1 + 32);
  sub_10000341C(&unk_1002641B0, &unk_1001D3B00);
  Binding.wrappedValue.getter();
  v15 = *(v65 + 16);

  v65 = 0;
  v66 = v15;
  v53[1] = swift_getKeyPath();
  v16 = swift_allocObject();
  v17 = *(a1 + 48);
  v16[3] = *(a1 + 32);
  v16[4] = v17;
  *(v16 + 73) = *(a1 + 57);
  v18 = *(a1 + 16);
  v16[1] = *a1;
  v16[2] = v18;
  sub_10013DFC4(a1, &v63);
  sub_10000341C(&qword_10025E290, &qword_1001D3B28);
  sub_10000341C(&unk_1002641C0, &unk_1001DC370);
  sub_10006FFA8();
  sub_100007120(&qword_1002641D8, &unk_1002641C0, &unk_1001DC370, &protocol conformance descriptor for TupleView<A>);
  ForEach<>.init(_:id:content:)();
  v19 = &v14[*(v10 + 44)];
  v20 = v14;
  v53[0] = v14;
  v21 = *(type metadata accessor for RoundedRectangle() + 20);
  v22 = enum case for RoundedCornerStyle.continuous(_:);
  v23 = type metadata accessor for RoundedCornerStyle();
  (*(*(v23 - 8) + 104))(&v19[v21], v22, v23);
  __asm { FMOV            V0.2D, #10.0 }

  *v19 = _Q0;
  v29 = [objc_opt_self() tertiarySystemFillColor];
  v30 = Color.init(_:)();
  v31 = sub_10000341C(&unk_100263560, &unk_1001D1590);
  *&v19[*(v31 + 52)] = v30;
  *&v19[*(v31 + 56)] = 256;
  v32 = static Alignment.center.getter();
  v34 = v33;
  v35 = &v19[*(sub_10000341C(&qword_10025C5C8, &qword_1001DC380) + 36)];
  *v35 = v32;
  v35[1] = v34;
  v36 = static VerticalAlignment.center.getter();
  v37 = v54;
  *v54 = v36;
  *(v37 + 8) = 0;
  *(v37 + 16) = 1;
  v38 = sub_10000341C(&unk_1002641E0, &qword_1001DC388);
  sub_10013CEA0(a1, v37 + *(v38 + 44));
  KeyPath = swift_getKeyPath();
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0x4008000000000000;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 20) = 1;
  v40 = v57;
  v41 = *(v57 + 40);
  *&v4[v41] = swift_getKeyPath();
  sub_10000341C(&qword_100262940, &unk_1001D0560);
  swift_storeEnumTagMultiPayload();
  v42 = &v4[*(v40 + 44)];
  *v42 = KeyPath;
  v42[8] = 0;
  sub_100007120(&unk_1002641F0, &qword_100264190, &qword_1001DC320, &protocol conformance descriptor for HStack<A>);
  sub_10006FC50(&qword_10025C9B8, type metadata accessor for PrimaryButtonStyle, &unk_1001DABD8);
  v43 = v56;
  View.buttonStyle<A>(_:)();
  sub_10006FC98(v4);
  sub_10000F500(v37, &qword_100264190, &qword_1001DC320);
  v44 = v55;
  sub_1000081F8(v20, v55, &qword_1002641A0, &qword_1001DC330);
  v45 = v58;
  v46 = v59;
  v47 = *(v59 + 16);
  v48 = v61;
  v47(v58, v43, v61);
  v49 = v62;
  sub_1000081F8(v44, v62, &qword_1002641A0, &qword_1001DC330);
  v50 = sub_10000341C(&qword_100264200, &qword_1001DC3F8);
  v47((v49 + *(v50 + 48)), v45, v48);
  v51 = *(v46 + 8);
  v51(v43, v48);
  sub_10000F500(v53[0], &qword_1002641A0, &qword_1001DC330);
  v51(v45, v48);
  return sub_10000F500(v44, &qword_1002641A0, &qword_1001DC330);
}

uint64_t sub_10013C72C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for Divider();
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000341C(&unk_100264220, &qword_1001D7E50);
  v9 = __chkstk_darwin(v8 - 8);
  v54 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = &v45 - v11;
  v56 = *a1;
  v12 = v56;
  v108 = *(a2 + 16);
  v109 = *(a2 + 32);
  v79[0] = *(a2 + 16);
  *&v79[1] = *(a2 + 32);
  sub_10000341C(&unk_1002641B0, &unk_1001D3B00);
  Binding.projectedValue.getter();
  v106 = v69[0];
  v107 = *&v69[1];
  *&v69[0] = v12;
  sub_100007120(&qword_10025E2B8, &qword_10025E2C0, &unk_1001DC4C0, &protocol conformance descriptor for [A]);
  Binding<A>.subscript.getter();
  v112 = v79[2];
  v113 = v79[3];
  v114 = v79[4];
  v110 = v79[0];
  v111 = v79[1];

  v13 = *(a2 + 56);
  v69[0] = *(a2 + 40);
  v69[1] = v13;
  LOBYTE(v69[2]) = *(a2 + 72);
  sub_10000341C(&qword_10025E2C8, &unk_1001D3B40);
  FocusState.projectedValue.getter();
  v68 = v103;
  v52 = v104;
  v53 = v102;
  LOBYTE(a2) = v105;
  type metadata accessor for CompositionModel(0);
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  v49 = Environment.init<A>(_:)();
  LOBYTE(a1) = v14;
  v102 = 0;
  v103 = 0xE000000000000000;
  State.init(wrappedValue:)();
  v66 = *(&v69[0] + 1);
  v67 = *&v69[0];
  v65 = *&v69[1];
  LOBYTE(v102) = 0;
  State.init(wrappedValue:)();
  v63 = LOBYTE(v69[0]);
  v64 = *(&v69[0] + 1);
  LOBYTE(v102) = 0;
  State.init(wrappedValue:)();
  v61 = LOBYTE(v69[0]);
  v62 = *(&v69[0] + 1);
  v102 = _swiftEmptyArrayStorage;
  sub_10000341C(&qword_10025E2D0, &qword_1001D56C0);
  State.init(wrappedValue:)();
  v59 = *(&v69[0] + 1);
  v60 = *&v69[0];
  LOBYTE(v102) = 0;
  State.init(wrappedValue:)();
  v57 = LOBYTE(v69[0]);
  v58 = *(&v69[0] + 1);
  v102 = 0;
  sub_10000341C(&qword_10025E2D8, &qword_1001D3B50);
  State.init(wrappedValue:)();
  *(&v120[1] + 7) = v111;
  *(&v120[2] + 7) = v112;
  *(&v120[3] + 7) = v113;
  *(&v120[4] + 7) = v114;
  v55 = *(&v69[0] + 1);
  v15 = *&v69[0];
  LOBYTE(v102) = a1 & 1;
  *(v120 + 7) = v110;
  v116 = a2;
  v79[0] = v108;
  *&v79[1] = v109;
  Binding.wrappedValue.getter();
  v16 = *(*&v69[0] + 16);

  if (v56 >= v16 - 1)
  {
    v22 = 1;
    v19 = v48;
    v24 = v50;
    v23 = v51;
  }

  else
  {
    v17 = v46;
    Divider.init()();
    v18 = v50;
    v19 = v48;
    v20 = v17;
    v21 = v51;
    (*(v50 + 32))(v48, v20, v51);
    v22 = 0;
    v23 = v21;
    v24 = v18;
  }

  (*(v24 + 56))(v19, v22, 1, v23);
  v25 = v102;
  LODWORD(v50) = v102;
  v26 = v116;
  LODWORD(v51) = v116;
  v27 = v54;
  sub_1000081F8(v19, v54, &unk_100264220, &qword_1001D7E50);
  v28 = v49;
  *&v69[0] = v49;
  BYTE8(v69[0]) = v25;
  *(&v69[2] + 9) = v120[2];
  *(&v69[3] + 9) = v120[3];
  *(&v69[4] + 9) = v120[4];
  *(v69 + 9) = v120[0];
  *(&v69[1] + 9) = v120[1];
  *(&v69[5] + 1) = *(&v120[4] + 15);
  *&v70 = v67;
  *(&v70 + 1) = v66;
  *&v71 = v65;
  BYTE8(v71) = v63;
  *(&v71 + 9) = *v119;
  HIDWORD(v71) = *&v119[3];
  *&v72 = v64;
  BYTE8(v72) = v61;
  *(&v72 + 9) = *v118;
  HIDWORD(v72) = *&v118[3];
  *&v73 = v62;
  *(&v73 + 1) = v60;
  *&v74 = v59;
  BYTE8(v74) = v57;
  HIDWORD(v74) = *&v117[3];
  *(&v74 + 9) = *v117;
  *&v75 = v58;
  *(&v75 + 1) = v15;
  v47 = v15;
  v29 = v52;
  v30 = v53;
  *&v76 = v55;
  *(&v76 + 1) = v53;
  *&v77 = v68;
  *(&v77 + 1) = v52;
  LOBYTE(v78) = v26;
  DWORD1(v78) = *&v115[3];
  *(&v78 + 1) = *v115;
  v31 = v56;
  *(&v78 + 1) = v56;
  v32 = v69[1];
  *a3 = v69[0];
  a3[1] = v32;
  v33 = v69[2];
  v34 = v69[3];
  v35 = v69[5];
  a3[4] = v69[4];
  a3[5] = v35;
  a3[2] = v33;
  a3[3] = v34;
  v36 = v70;
  v37 = v71;
  v38 = v73;
  a3[8] = v72;
  a3[9] = v38;
  a3[6] = v36;
  a3[7] = v37;
  v39 = v74;
  v40 = v75;
  v41 = v78;
  a3[13] = v77;
  a3[14] = v41;
  v42 = v76;
  a3[11] = v40;
  a3[12] = v42;
  a3[10] = v39;
  v43 = sub_10000341C(&unk_100264230, &qword_1001DC4D0);
  sub_1000081F8(v27, a3 + *(v43 + 48), &unk_100264220, &qword_1001D7E50);
  sub_1000700F8(v69, v79);
  sub_10000F500(v19, &unk_100264220, &qword_1001D7E50);
  sub_10000F500(v27, &unk_100264220, &qword_1001D7E50);
  *&v79[0] = v28;
  BYTE8(v79[0]) = v50;
  *(&v79[2] + 9) = v120[2];
  *(&v79[3] + 9) = v120[3];
  *(&v79[4] + 9) = v120[4];
  *(v79 + 9) = v120[0];
  *(&v79[1] + 9) = v120[1];
  *(&v79[5] + 1) = *(&v120[4] + 15);
  v80 = v67;
  v81 = v66;
  v82 = v65;
  v83 = v63;
  *v84 = *v119;
  *&v84[3] = *&v119[3];
  v85 = v64;
  v86 = v61;
  *v87 = *v118;
  *&v87[3] = *&v118[3];
  v88 = v62;
  v89 = v60;
  v90 = v59;
  v91 = v57;
  *&v92[3] = *&v117[3];
  *v92 = *v117;
  v93 = v58;
  v94 = v47;
  v95 = v55;
  v96 = v30;
  v97 = v68;
  v98 = v29;
  v99 = v51;
  *&v100[3] = *&v115[3];
  *v100 = *v115;
  v101 = v31;
  return sub_100070154(v79);
}

uint64_t sub_10013CEA0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  __chkstk_darwin(v3);
  v6 = &v33 - v5;
  v35 = sub_10000341C(&qword_10025E1B0, &qword_1001D3970) - 8;
  v7 = __chkstk_darwin(v35);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = sub_10000341C(&qword_100264208, &qword_1001DC400);
  v12 = v11 - 8;
  v13 = __chkstk_darwin(v11);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  v17 = swift_allocObject();
  v18 = a1[3];
  v17[3] = a1[2];
  v17[4] = v18;
  *(v17 + 73) = *(a1 + 57);
  v19 = a1[1];
  v17[1] = *a1;
  v17[2] = v19;
  sub_10013DFC4(a1, v40);
  Button<>.init(_:action:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v41);
  v20 = &v16[*(v12 + 44)];
  v21 = v41[1];
  *v20 = v41[0];
  *(v20 + 1) = v21;
  *(v20 + 2) = v41[2];
  LocalizedStringKey.init(stringLiteral:)();
  v22 = swift_allocObject();
  v23 = a1[3];
  v22[3] = a1[2];
  v22[4] = v23;
  *(v22 + 73) = *(a1 + 57);
  v24 = a1[1];
  v22[1] = *a1;
  v22[2] = v24;
  sub_10013DFC4(a1, v40);
  Button<>.init(_:action:)();
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0, &protocol conformance descriptor for Button<A>);
  v25 = v36;
  View.bold(_:)();
  (*(v37 + 8))(v6, v25);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)(v40);
  v26 = &v10[*(v35 + 44)];
  v27 = v40[1];
  *v26 = v40[0];
  *(v26 + 1) = v27;
  *(v26 + 2) = v40[2];
  v28 = v34;
  sub_1000081F8(v16, v34, &qword_100264208, &qword_1001DC400);
  v29 = v38;
  sub_1000081F8(v10, v38, &qword_10025E1B0, &qword_1001D3970);
  v30 = v39;
  sub_1000081F8(v28, v39, &qword_100264208, &qword_1001DC400);
  v31 = sub_10000341C(&qword_100264218, &unk_1001DC408);
  sub_1000081F8(v29, v30 + *(v31 + 48), &qword_10025E1B0, &qword_1001D3970);
  sub_10000F500(v10, &qword_10025E1B0, &qword_1001D3970);
  sub_10000F500(v16, &qword_100264208, &qword_1001DC400);
  sub_10000F500(v29, &qword_10025E1B0, &qword_1001D3970);
  return sub_10000F500(v28, &qword_100264208, &qword_1001DC400);
}

uint64_t sub_10013D33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v6;
  v4[24] = v5;

  return _swift_task_switch(sub_10013D3D4, v6, v5);
}

uint64_t sub_10013D3D4()
{
  v1 = sub_10013B61C();
  swift_getKeyPath();
  v0[18] = v1;
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v1 + v2, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);

  if (v0[5])
  {
    sub_100028458((v0 + 2), (v0 + 7));
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v0 + 7, v0[10]);
    v3 = sub_10013B61C();
    swift_getKeyPath();
    v0[20] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v5 = *(v3 + v4);

    sub_10000B7B0(0, v5);

    sub_10000F4B4(v0 + 7);
  }

  else
  {
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v6 = sub_10013B61C();
  swift_getKeyPath();
  v0[19] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v7)
  {
    if (v7 == 1)
    {
      v0[25] = sub_10013B61C();
      v8 = swift_task_alloc();
      v0[26] = v8;
      *v8 = v0;
      v8[1] = sub_10013D768;

      return sub_1000905CC(1);
    }

    else
    {

      v11 = v0[1];

      return v11();
    }
  }

  else
  {
    v0[27] = sub_10013B61C();
    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_10006F700;

    return sub_100091570(1);
  }
}

uint64_t sub_10013D768()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_10007038C, v3, v2);
}

uint64_t sub_10013D8AC(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  sub_10013DFC4(a1, v14);
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  v11 = a1[3];
  *(v10 + 64) = a1[2];
  *(v10 + 80) = v11;
  *(v10 + 89) = *(a1 + 57);
  v12 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v12;
  sub_10015C9C8(0, 0, v7, a3, v10);
}

uint64_t sub_10013D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  type metadata accessor for MainActor();
  v4[22] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[23] = v6;
  v4[24] = v5;

  return _swift_task_switch(sub_10013DA80, v6, v5);
}

uint64_t sub_10013DA80()
{
  v1 = sub_10013B61C();
  swift_getKeyPath();
  v0[18] = v1;
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__analyticsInstance;
  swift_beginAccess();
  sub_1000081F8(v1 + v2, (v0 + 2), &unk_10025B1C0, &unk_1001CFA90);

  if (v0[5])
  {
    sub_100028458((v0 + 2), (v0 + 7));
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
    sub_100027874(v0 + 7, v0[10]);
    v3 = sub_10013B61C();
    swift_getKeyPath();
    v0[20] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
    swift_beginAccess();
    v5 = *(v3 + v4);

    sub_10000B7B0(1, v5);

    sub_10000F4B4(v0 + 7);
  }

  else
  {
    sub_10000F500((v0 + 2), &unk_10025B1C0, &unk_1001CFA90);
  }

  v6 = sub_10013B61C();
  swift_getKeyPath();
  v0[19] = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state);

  if (v7)
  {
    if (v7 == 1)
    {
      v0[25] = sub_10013B61C();
      v8 = swift_task_alloc();
      v0[26] = v8;
      *v8 = v0;
      v8[1] = sub_10006F55C;

      return sub_1000905CC(0);
    }

    else
    {

      v11 = v0[1];

      return v11();
    }
  }

  else
  {
    v0[27] = sub_10013B61C();
    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_10006F700;

    return sub_100091570(0);
  }
}

uint64_t sub_10013DE14(uint64_t a1, char a2)
{
  sub_10013B61C();
  swift_getKeyPath();
  sub_10006FC50(&qword_10025B210, type metadata accessor for CompositionModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    if ([Strong respondsToSelector:"setIsHostingControllerHeightConstraintActive:"])
    {
      [Strong setIsHostingControllerHeightConstraintActive:a2 & 1];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10013DF10@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[3];
  v8[2] = v2[2];
  v9[0] = v4;
  *(v9 + 9) = *(v2 + 57);
  v5 = v2[1];
  v8[0] = *v2;
  v8[1] = v5;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = sub_10000341C(&qword_100264150, &qword_1001DC2A8);
  return sub_10013B778(v8, a2 + *(v6 + 44));
}

uint64_t sub_10013E054(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 89, 7);
}

uint64_t sub_10013E0E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100028688;

  return sub_10013D9E8(a1, v4, v5, v1 + 32);
}

uint64_t sub_10013E1B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_10013E210(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_10013D33C(a1, v4, v5, v1 + 32);
}

uint64_t sub_10013E31C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x80000001001E7830;
  v3._countAndFlagsBits = 0xD00000000000002ALL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v3);
  v4._countAndFlagsBits = sub_1000971C0();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v4);

  v5._countAndFlagsBits = 46;
  v5._object = 0xE100000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v5);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10013E4BC(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10013E584@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState);
  return result;
}

uint64_t sub_10013E65C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_10013E79C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t property wrapper backing initializer of RewritingView.feedbackController(uint64_t a1)
{
  type metadata accessor for FBKEvaluationController();
  State.init(wrappedValue:)();
  return v2;
}

uint64_t sub_10013E918@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 48);
  result = sub_100037954();
  if (result)
  {
    v5 = 0;
  }

  else
  {
    swift_getKeyPath();
    sub_100149490(&unk_10025B870, type metadata accessor for RewritingModel, &protocol conformance descriptor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService14RewritingModel__handoffState) ^ 1;
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t sub_10013E9E4()
{
  v1 = v0;
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    j__swift_release(v6, 0);
    (*(v3 + 8))(v5, v2);
    v6 = v16;
  }

  if (v6)
  {
    v9 = sub_10016FEDC();

    v10 = (v1 + *(type metadata accessor for RewritingView(0) + 44));
    v11 = *v10;
    v12 = *(v10 + 1);
    LOBYTE(v10) = v10[16];
    LOBYTE(v16) = v11;
    v17 = v12;
    v18 = v10;
    sub_10000341C(&qword_10025B3E8, &qword_1001E1010);
    FocusState.wrappedValue.getter();
    v13 = v15[7] & v9;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}